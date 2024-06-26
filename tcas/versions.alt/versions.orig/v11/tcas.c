#include <stdio.h>

#define OLEV       600		/* in feets/minute */
#define MAXALTDIFF 600		/* max altitude difference in feet */
#define MINSEP     300          /* min separation in feet */
#define NOZCROSS   100		/* in feet */
				/* variables */

FILE* file_name = NULL;
typedef int bool;

int Cur_Vertical_Sep;
bool High_Confidence;
bool Two_of_Three_Reports_Valid;

int Own_Tracked_Alt;
int Own_Tracked_Alt_Rate;
int Other_Tracked_Alt;

int Alt_Layer_Value;		/* 0, 1, 2, 3 */
int Positive_RA_Alt_Thresh[4];

int Up_Separation;
int Down_Separation;

int Other_RAC;			/* NO_INTENT, DO_NOT_CLIMB, DO_NOT_DESCEND */
#define NO_INTENT 0
#define DO_NOT_CLIMB 1
#define DO_NOT_DESCEND 2

int Other_Capability;		/* TCAS_TA, OTHER */
#define TCAS_TA 1
#define OTHER 2

int Climb_Inhibit;		/* true/false */

#define UNRESOLVED 0
#define UPWARD_RA 1
#define DOWNWARD_RA 2

void initialize()
{
    fprintf(file_name,"P4,");
    Positive_RA_Alt_Thresh[0] = 400;
    Positive_RA_Alt_Thresh[1] = 500;
    Positive_RA_Alt_Thresh[2] = 640;
    Positive_RA_Alt_Thresh[3] = 740;
}

int ALIM ()
{
    fprintf(file_name,"P5,");
    return Positive_RA_Alt_Thresh[Alt_Layer_Value];
}

int Inhibit_Biased_Climb ()
{
    fprintf(file_name,"P6,");
    return (Climb_Inhibit ? Up_Separation + NOZCROSS : Up_Separation);
}

bool Non_Crossing_Biased_Climb()
{
    fprintf(file_name,"P7,");
    int upward_preferred;
    int upward_crossing_situation;
    bool result;

    upward_preferred = Inhibit_Biased_Climb() > Down_Separation;
    fprintf(file_name,"P8,");
    if (upward_preferred)
    {
        fprintf(file_name,"P9,");
	    result = !(Own_Below_Threat()) || ((Own_Below_Threat()) && (!(Down_Separation >= ALIM())));
    }
    else
    {	
        fprintf(file_name,"P10,");
	    result = Own_Above_Threat() && (Cur_Vertical_Sep >= MINSEP) && (Up_Separation >= ALIM());
    }
    fprintf(file_name,"P11,");
    return result;
}

bool Non_Crossing_Biased_Descend()
{
    fprintf(file_name,"P12,");
    int upward_preferred;
    int upward_crossing_situation;
    bool result;

    upward_preferred = Inhibit_Biased_Climb() > Down_Separation;
    fprintf(file_name,"P13,");
    if (upward_preferred)
    {
        fprintf(file_name,"P14,");
	    result = Own_Below_Threat() && (Cur_Vertical_Sep >= MINSEP) && (Down_Separation >= ALIM());
    }
    else
    {
        fprintf(file_name,"P15,");
	    result = !(Own_Above_Threat()) || ((Own_Above_Threat()) && (Up_Separation >= ALIM()));
    }
    fprintf(file_name,"P16,");
    return result;
}

bool Own_Below_Threat()
{
    fprintf(file_name,"P17,");
    return (Own_Tracked_Alt <= Other_Tracked_Alt);
}

bool Own_Above_Threat()
{
    fprintf(file_name,"P18,");
    return (Other_Tracked_Alt <= Own_Tracked_Alt);
}

int alt_sep_test()
{
    fprintf(file_name,"P19,");
    bool enabled, tcas_equipped, intent_not_known;
    bool need_upward_RA, need_downward_RA;
    int alt_sep;

    enabled = High_Confidence && (Own_Tracked_Alt_Rate <= OLEV) && (Cur_Vertical_Sep > MAXALTDIFF);
    tcas_equipped = Other_Capability == TCAS_TA;
    intent_not_known = Two_of_Three_Reports_Valid && Other_RAC == NO_INTENT;
    
    alt_sep = UNRESOLVED;
    fprintf(file_name,"P20,");
    if (enabled && ((tcas_equipped && intent_not_known) || !tcas_equipped))
    {
        fprintf(file_name,"P21,");
        need_upward_RA = Non_Crossing_Biased_Climb() && Own_Below_Threat();
        need_downward_RA = Non_Crossing_Biased_Descend() && Own_Above_Threat();
        fprintf(file_name,"P22,");
		if (need_upward_RA)
		{
            fprintf(file_name,"P23,");
        /* unreachable: requires Own_Below_Threat and Own_Above_Threat
           to both be true - that requires Own_Tracked_Alt < Other_Tracked_Alt
           and Other_Tracked_Alt < Own_Tracked_Alt, which isn't possible */
	    	alt_sep = UPWARD_RA;
		}
        else if (need_downward_RA)
        {
            fprintf(file_name,"P25,");
            alt_sep = DOWNWARD_RA;
        }
        else
        {
            fprintf(file_name,"P26,");
            alt_sep = UNRESOLVED;
        }    
    }
    fprintf(file_name,"P27,");
    return alt_sep;
}

main(argc, argv)
int argc;
char *argv[];
{
    file_name=fopen("v12.txt","a+"); 
    if(!file_name)
    {	
        printf("File could not be opened! \n");
        fclose(file_name);
        exit(0);
    }

    fprintf(file_name,"\nP1,");
    if(argc < 13)
    {
        fprintf(file_name,"P2,");
        fprintf(stdout, "Error: Command line arguments are\n");
        fprintf(stdout, "Cur_Vertical_Sep, High_Confidence, Two_of_Three_Reports_Valid\n");
        fprintf(stdout, "Own_Tracked_Alt, Own_Tracked_Alt_Rate, Other_Tracked_Alt\n");
        fprintf(stdout, "Alt_Layer_Value, Up_Separation, Down_Separation\n");
        fprintf(stdout, "Other_RAC, Other_Capability, Climb_Inhibit\n");
        exit(1);
    }
    fprintf(file_name,"P3,");
    initialize();
    Cur_Vertical_Sep = atoi(argv[1]);
    High_Confidence = atoi(argv[2]);
    Two_of_Three_Reports_Valid = atoi(argv[3]);
    Own_Tracked_Alt = atoi(argv[4]);
    Own_Tracked_Alt_Rate = atoi(argv[5]);
    Other_Tracked_Alt = atoi(argv[6]);
    Alt_Layer_Value = atoi(argv[7]);
    Up_Separation = atoi(argv[8]);
    Down_Separation = atoi(argv[9]);
    Other_RAC = atoi(argv[10]);
    Other_Capability = atoi(argv[11]);
    Climb_Inhibit = atoi(argv[12]);

    fprintf(stdout, "%d\n", alt_sep_test());
    exit(0);
}
