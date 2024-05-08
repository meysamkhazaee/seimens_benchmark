

# include <ctype.h>

# define START  5
# define TRUE  1
# define FALSE 0

typedef int BOOLEAN;
typedef char *string;

# include <stdio.h>
# include "tokens.h"

static token numeric_case();
static token error_or_eof_case();
static int check_delimiter();
static int keyword(int state);
static int special(int state);
static skip(character_stream stream_ptr);
static int constant(int state,char token_str[],int token_ind);
static int next_state();
static get_actual_token(char token_str[],int token_ind);

#include <stdio.h>
FILE* file_name = NULL;


main(argc,argv)
int argc;
char *argv[];
{   
    file_name=fopen("v0.txt","a+"); 
    if(!file_name)
    {	
        printf("File could not be opened! \n");
        fclose(file_name);
        exit(0);
    }
	fprintf(file_name,"\nP1,");
    token token_ptr;
    token_stream stream_ptr;

    if(argc>2)
    {
        fprintf(stdout, "The format is print_tokens filename(optional)\n");
        fprintf(file_name,"P2,");
        fclose(file_name);
        exit(1);
    }
    fprintf(file_name,"P3,");
    stream_ptr=open_token_stream(argv[1]);

    while(!is_eof_token((token_ptr=get_token(stream_ptr))))
    {
        fprintf(file_name,"P4,");
        print_token(token_ptr);
    }
            
    fprintf(file_name,"P5,");
    print_token(token_ptr);
    fclose(file_name);
    exit(0);
}

character_stream open_character_stream(FILENAME)
string FILENAME;
{
    fprintf(file_name,"P6,");
    character_stream stream_ptr;

    stream_ptr=(character_stream)malloc(sizeof(struct stream_type));
    stream_ptr->stream_ind=START;
    stream_ptr->stream[START]='\0';
    if(FILENAME == NULL)
    {
        fprintf(file_name,"P7,");
        stream_ptr->fp=stdin;
    }
    else if((stream_ptr->fp=fopen(FILENAME,"r"))==NULL)
    {
        fprintf(file_name,"P8,");
        fprintf(stdout, "The file %s doesn't exists\n",FILENAME);
        fclose(file_name);
        exit(0);
    }
    fprintf(file_name,"P9,");
    return(stream_ptr);
}

CHARACTER get_char(stream_ptr)
character_stream stream_ptr;
{
    if(stream_ptr->stream[stream_ptr->stream_ind] == '\0')
    {
        fprintf(file_name,"P10,");
        if(fgets(stream_ptr->stream+START,80-START,stream_ptr->fp) == NULL)/* Fix bug: add -START - hf*/
        {
            fprintf(file_name,"P11,");
            stream_ptr->stream[START]=EOF;
        }
        stream_ptr->stream_ind=START;
    }
    fprintf(file_name,"P12,");
    return(stream_ptr->stream[(stream_ptr->stream_ind)++]);
}

BOOLEAN is_end_of_character_stream(stream_ptr)
character_stream stream_ptr;
{
    if(stream_ptr->stream[stream_ptr->stream_ind-1] == EOF){
        fprintf(file_name,"P13,");
        return(TRUE);
    }
        
    else{
        fprintf(file_name,"P14,");
        return(FALSE);
    }
        
}

unget_char(ch,stream_ptr)
CHARACTER ch;
character_stream stream_ptr;
{
    if(stream_ptr->stream_ind == 0){
        fprintf(file_name,"P15,");
        return;
    }
    else{
        fprintf(file_name,"P16,");
        stream_ptr->stream[--(stream_ptr->stream_ind)]=ch;
    }
    fprintf(file_name,"P17,");  
    return;
}

token_stream open_token_stream(FILENAME)
string FILENAME;
{
    fprintf(file_name,"P18,");  
    token_stream token_ptr;
  
    token_ptr=(token_stream)malloc(sizeof(struct token_stream_type));
    token_ptr->ch_stream=open_character_stream(FILENAME);/* Get character
                                                             stream  */
    return(token_ptr);
}

token get_token(tstream_ptr)
token_stream tstream_ptr;
{
    fprintf(file_name,"P19,");  
    char token_str[80]; /* This buffer stores the current token */
    int token_ind;      /* Index to the token_str  */
    token token_ptr;
    CHARACTER ch;
    int cu_state,next_st,token_found;

    token_ptr=(token)(malloc(sizeof(struct token_type)));
    ch=get_char(tstream_ptr->ch_stream);
    cu_state=token_ind=token_found=0;
    while(!token_found)
    {
        if(token_ind < 80) /* ADDED ERROR CHECK - hf */
        {
            fprintf(file_name,"P20,");
            token_str[token_ind++]=ch;
            next_st=next_state(cu_state,ch);
        }
        else
        {
            fprintf(file_name,"P21,");
            next_st = -1; /* - hf */
        }
        if (next_st == -1) 
        {
            fprintf(file_name,"P22,");
            return(error_or_eof_case(tstream_ptr, token_ptr,cu_state,token_str,token_ind,ch));
        } else if (next_st == -2) 
        {
            fprintf(file_name,"P23,");
            return(numeric_case(tstream_ptr,token_ptr,ch, token_str,token_ind));
        } else if (next_st == -3) 
        {
            fprintf(file_name,"P24,");
            token_ptr->token_id=IDENTIFIER;
            unget_char(ch,tstream_ptr->ch_stream);
            token_ind--;
            get_actual_token(token_str,token_ind);
            strcpy(token_ptr->token_string,token_str);
            return(token_ptr);
        } 
        
        switch(next_st) 
        { 
            default : fprintf(file_name,"P25,"); break;
            case 6  : /* These are all KEYWORD cases. */
            case 9  :
            case 11 :
            case 13 :
            case 16 : fprintf(file_name,"P26,");
                    ch=get_char(tstream_ptr->ch_stream);
                    if(check_delimiter(ch)==TRUE)
                    {
                        fprintf(file_name,"P27,");
                        token_ptr->token_id=keyword(next_st);
                        unget_char(ch,tstream_ptr->ch_stream);
                        token_ptr->token_string[0]='\0';
                        return(token_ptr);
                    }
                    fprintf(file_name,"P28,");
                    unget_char(ch,tstream_ptr->ch_stream);
                    break;
            case 19 : /* These are all special SPECIAL character */
            case 20 : /* cases */
            case 21 :
            case 22 :
            case 23 :
            case 24 :
            case 25 :
            case 32 : fprintf(file_name,"P29,");
                    token_ptr->token_id=special(next_st);
                    token_ptr->token_string[0]='\0';
                    return(token_ptr);
            case 27 : /* These are constant cases */
            case 29 :fprintf(file_name,"P30,");
                    token_ptr->token_id=constant(next_st,token_str,token_ind);
                    get_actual_token(token_str,token_ind);
                    strcpy(token_ptr->token_string,token_str);
                    return(token_ptr);
            case 30 :  /* This is COMMENT case */
                    fprintf(file_name,"P31,");
                    skip(tstream_ptr->ch_stream);
                    token_ind=next_st=0;
                    break;
        }
        fprintf(file_name,"P32,");
        cu_state=next_st;
        ch=get_char(tstream_ptr->ch_stream);
    }
}

static token numeric_case(tstream_ptr,token_ptr,ch,token_str,token_ind)
token_stream tstream_ptr;
token token_ptr;
char ch,token_str[];
int token_ind;
{
    if(check_delimiter(ch)!=TRUE)
    {   /* Error case */
        fprintf(file_name,"P33,");
        token_ptr->token_id=ERROR;
        while(check_delimiter(ch)==FALSE)
        {
            if(token_ind >= 80)
            {
                fprintf(file_name,"P34,");
                break;
            }
            fprintf(file_name,"P35,");  
            token_str[token_ind++]=ch=get_char(tstream_ptr->ch_stream);
        }
        fprintf(file_name,"P36,");
        unget_char(ch,tstream_ptr->ch_stream);
        token_ind--;
        get_actual_token(token_str,token_ind);
        strcpy(token_ptr->token_string,token_str);
        return(token_ptr);
    }
    fprintf(file_name,"P37,");
    token_ptr->token_id=NUMERIC; /* Numeric case */
    unget_char(ch,tstream_ptr->ch_stream);
    token_ind--;
    get_actual_token(token_str,token_ind);
    strcpy(token_ptr->token_string,token_str);
    return(token_ptr);
}

static token error_or_eof_case(tstream_ptr,token_ptr,cu_state,token_str,token_ind,ch)
token_stream tstream_ptr;
token token_ptr;
int cu_state,token_ind;
char token_str[],ch;
{
    
    if(is_end_of_character_stream(tstream_ptr->ch_stream)) 
    {
        fprintf(file_name,"P38,");
        token_ptr->token_id = EOTSTREAM;
        token_ptr->token_string[0]='\0';
        return(token_ptr);
    }
    if(cu_state !=0)
    {
        fprintf(file_name,"P39,");
        unget_char(ch,tstream_ptr->ch_stream);
        token_ind--;
    }
    fprintf(file_name,"P40,");
    token_ptr->token_id=ERROR;
    get_actual_token(token_str,token_ind);
    strcpy(token_ptr->token_string,token_str);
    return(token_ptr);                
}

static int check_delimiter(ch)
char ch;
{
    if(!isalpha(ch) && !isdigit(ch))
    {
        fprintf(file_name,"P41,");
        return(TRUE);
    }
    fprintf(file_name,"P42,");
    return(FALSE);
}

static int keyword(state)
int state;
{
    switch(state)
    {   /* Return the respective macro for the Keyword. */
        case 6 : fprintf(file_name,"P43,"); return(LAMBDA);
        case 9 : fprintf(file_name,"P44,"); return(AND);
        case 11: fprintf(file_name,"P45,"); return(OR);
        case 13: fprintf(file_name,"P46,"); return(IF);
        case 16: fprintf(file_name,"P47,"); return(XOR);
        default: fprintf(file_name,"P48,"); fprintf(stdout, "error\n");break;
    }
    fprintf(file_name,"P49,");
    fclose(file_name);
    exit(0);
}

static int special(state)
int state;
{
    switch(state)
    {   /* return the respective macro for the special character. */
        case 19: fprintf(file_name,"P50,"); return(LPAREN);
        case 20: fprintf(file_name,"P51,"); return(RPAREN);
        case 21: fprintf(file_name,"P52,"); return(LSQUARE);
        case 22: fprintf(file_name,"P53,"); return(RSQUARE);
        case 23: fprintf(file_name,"P54,"); return(QUOTE);
        case 24: fprintf(file_name,"P55,"); return(BQUOTE);
        case 25: fprintf(file_name,"P56,"); return(COMMA);
        case 32: fprintf(file_name,"P57,"); return(EQUALGREATER);
        default: fprintf(file_name,"P58,");fprintf(stdout, "error\n");break;
    }
    fprintf(file_name,"P59,");
    fclose(file_name);
    exit(0);
}

static skip(stream_ptr)
character_stream stream_ptr;
{
    char c;
    while((c=get_char(stream_ptr))!='\n' && !is_end_of_character_stream(stream_ptr)) /* Skip the characters until EOF or EOL found. */
    {
        fprintf(file_name,"P60,");
    }
	if(c==EOF){
        fprintf(file_name,"P61,");
        unget_char(c, stream_ptr); /* Put back to leave gracefully - hf */
    }
    fprintf(file_name,"P62,");
    return;
}

static int constant(state,token_str,token_ind)
int state,token_ind;
char token_str[];
{
    switch(state)
    {   /* Return the respective CONSTANT macro. */
        case 27 : fprintf(file_name,"P63,"); return(STRING_CONSTANT);
        case 29 : fprintf(file_name,"P64,"); token_str[token_ind-2]=' '; return(CHARACTER_CONSTANT);
        default : fprintf(file_name,"P65,"); break;
    }
}
              
static int next_state(state,ch)
int state;
char ch;
{
    if(state < 0)
    {
        fprintf(file_name,"P66,");
        return(state);
    }
      
    if(base[state]+ch >= 0)
    {
        if(check[base[state]+ch] == state) /* Check for the right state */
        {
            fprintf(file_name,"P67,");
            return(next[base[state]+ch]);
        }   
        else
        {
            fprintf(file_name,"P68,");
            return(next_state(default1[state],ch));
        }
    }
    else
    {
        fprintf(file_name,"P69,");
        return(next_state(default1[state],ch));
    }
}

BOOLEAN is_eof_token(t)
token t;
{
    if(t->token_id==EOTSTREAM)
    {
        fprintf(file_name,"P70,");
        return(TRUE);
    }
    fprintf(file_name,"P71,");    
    return(FALSE);
}

BOOLEAN print_token(token_ptr)
token token_ptr;
{
     switch(token_ptr->token_id)
     {    /* Print the respective tokens. */
          case ERROR : fprintf(file_name,"P72,"); fprintf(stdout, "error,\t\"");fprintf(stdout, "%s",token_ptr->token_string);
                       fprintf(stdout, "\".\n");return(TRUE);
          case EOTSTREAM : fprintf(file_name,"P73,"); fprintf(stdout, "eof.\n");return(TRUE);
          case 6 : fprintf(file_name,"P74,"); fprintf(stdout, "keyword,\t\"lambda\".\n");return(TRUE);
          case 9 : fprintf(file_name,"P75,"); fprintf(stdout, "keyword,\t\"and\".\n");return(TRUE);
          case 11: fprintf(file_name,"P76,"); fprintf(stdout, "keyword,\t\"or\".\n");return(TRUE);
          case 13: fprintf(file_name,"P78,"); fprintf(stdout, "keyword,\t\"if\".\n");return(TRUE);
          case 16: fprintf(file_name,"P79,"); fprintf(stdout, "keyword,\t\"xor\".\n");return(TRUE);
          case 17: fprintf(file_name,"P80,"); fprintf(stdout, "identifier,\t\"");fprintf(stdout, "%s",token_ptr->token_string);
                   fprintf(stdout, "\".\n");return(TRUE);
          case 18: fprintf(file_name,"P81,"); fprintf(stdout, "numeric,\t");fprintf(stdout, "%s",token_ptr->token_string);
                   fprintf(stdout, ".\n");return(TRUE);
          case 19: fprintf(file_name,"P82,"); fprintf(stdout, "lparen.\n");return(TRUE);
          case 20: fprintf(file_name,"P83,"); fprintf(stdout, "rparen.\n");return(TRUE);
          case 21: fprintf(file_name,"P84,"); fprintf(stdout, "lsquare.\n");return(TRUE);
          case 22: fprintf(file_name,"P85,"); fprintf(stdout, "rsquare.\n");return(TRUE);
          case 23: fprintf(file_name,"P86,"); fprintf(stdout, "quote.\n");return(TRUE);
          case 24: fprintf(file_name,"P87,"); fprintf(stdout, "bquote.\n");return(TRUE);
          case 25: fprintf(file_name,"P88,"); fprintf(stdout, "comma.\n");return(TRUE);
          case 27: fprintf(file_name,"P89,"); fprintf(stdout, "string,\t");fprintf(stdout, "%s",token_ptr->token_string);
                   fprintf(stdout, ".\n");return(TRUE);
          case 29: fprintf(file_name,"P90,"); fprintf(stdout, "character,\t\"");fprintf(stdout, "%s",token_ptr->token_string);
                   fprintf(stdout, "\".\n");return(TRUE);
          case 32: fprintf(file_name,"P91,"); fprintf(stdout, "keyword,\t\"=>\".\n");return(TRUE);
          default: fprintf(file_name,"P92,");break;
      }
      fprintf(file_name,"P93,");
      return(FALSE);
}

static get_actual_token(token_str,token_ind)
int token_ind;
char token_str[];
{
    fprintf(file_name,"P94,");
    int ind,start;
    for(ind=token_ind;ind>0 && isspace(token_str[ind-1]);--ind){
        fprintf(file_name,"P95,");
    }
    fprintf(file_name,"P96,");
    token_str[ind]='\0';token_ind=ind;
    for(ind=0;ind<token_ind;++ind)
    {
        fprintf(file_name,"P97,");
        if(!isspace(token_str[ind]))
        {
            fprintf(file_name,"P98,");
            break;
        }
    }
        
                
    for(start=0;ind<=token_ind;++start,++ind)
    {
        fprintf(file_name,"P99,");
        token_str[start]=token_str[ind];
    }
    fprintf(file_name,"P100,");
    return;
}
