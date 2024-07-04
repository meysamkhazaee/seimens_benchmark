/*  -*- Last-Edit:  Mon Dec  7 10:31:51 1992 by Tarak S. Goradia; -*- */

extern void	exit();
# include <stdio.h>

void	Caseerror();

typedef char	bool;
# define false 0
# define true  1
# define NULL 0

# define MAXSTR 100
# define MAXPAT MAXSTR

# define ENDSTR  '\0'
# define ESCAPE  '@'
# define CLOSURE '*'
# define BOL     '%'
# define EOL     '$'
# define ANY     '?'
# define CCL     '['
# define CCLEND  ']'
# define NEGATE  '^'
# define NCCL    '!'
# define LITCHAR 'c'
# define DITTO   -1
# define DASH    '-'

# define TAB     9
# define NEWLINE 10

# define CLOSIZE 1
FILE* file_name = NULL;

typedef char	character;
typedef char string[MAXSTR];

bool
get_line(s, maxsize)
char *s;
int	maxsize;
{
	fprintf(file_name,"P11,");
    char *result;
    result = fgets(s, maxsize, stdin);
    return (result != NULL);
}

int
addstr(c, outset, j, maxset)
char c;
char *outset;
int	*j;
int	maxset;
{
    bool result;
	fprintf(file_name,"P12,");
    if (*j >= maxset)
	{
		fprintf(file_name,"P13,");
		result = false;
	}
    else 
	{
		fprintf(file_name,"P14,");
		outset[*j] = c;
		*j = *j + 1;
		result = true;
    }
	fprintf(file_name,"P15,");
    return result;
}

char
esc(s, i)
char *s;
int	*i;
{
    char result;
	fprintf(file_name,"P16,");
    if (s[*i] != ESCAPE)
	{
		fprintf(file_name,"P17,");
		result = s[*i];
	}
    else if (s[*i + 1] == ENDSTR)
	{
		fprintf(file_name,"P18,");
	    result = NEWLINE; /* constant mutation ESCAPE; */
	}
	else 
	{
	    *i = *i + 1;
	    fprintf(file_name,"P19,");
		if (s[*i] == 'n')
		{
			fprintf(file_name,"P20,");
			result = NEWLINE;
		}
	    else if (s[*i] == 't')
		{
			fprintf(file_name,"P21,");
			result = TAB;
		}
		else
		{
			fprintf(file_name,"P22,");
			result = s[*i];
		}  
	}
	fprintf(file_name,"P23,");
    return result;
}

void change();

void
dodash(delim, src, i, dest, j, maxset)
char delim;
char *src;
int	*i;
char *dest;
int	*j;
int	maxset;
{
    int	k;
    bool junk;
    char escjunk;
	fprintf(file_name,"P24,");
    while ((src[*i] != delim) && (src[*i] != ENDSTR)) 
    {
		fprintf(file_name,"P25,");
		if (src[*i - 1] == ESCAPE) 
		{
			fprintf(file_name,"P26,");
			escjunk = esc(src, i);
			junk = addstr(escjunk, dest, j, maxset);
		} 
		else if (src[*i] != DASH)
		{
			fprintf(file_name,"P27,");
			junk = addstr(src[*i], dest, j, maxset);
		}
		else if (*j <= 1 || src[*i + 1] == ENDSTR)
		{
			fprintf(file_name,"P28,");
			junk = addstr(DASH, dest, j, maxset);
		}
		else if ((isalnum(src[*i - 1])) && (isalnum(src[*i + 1])) && (src[*i - 1] <= src[*i + 1]))
		{
			fprintf(file_name,"P29,");
			for (k = src[*i-1]+1; k<=src[*i+1]; k++) 
			{
				fprintf(file_name,"P30,");
				junk = addstr(k, dest, j, maxset);
			}
			fprintf(file_name,"P31,");	
			*i = *i + 1;	
		} 
		else
		{
			fprintf(file_name,"P32,");
			junk = addstr(DASH, dest, j, maxset);
		}	
		fprintf(file_name,"P33,");
		(*i) = (*i) + 1;
    }
}

bool
getccl(arg, i, pat, j)
char *arg;
int	*i;
char *pat;
int	*j;
{
    int	jstart;
    bool junk;
    *i = *i + 1;
	fprintf(file_name,"P34,");
    if (arg[*i] == NEGATE) 
	{
		fprintf(file_name,"P35,");
		junk = addstr(NCCL, pat, j, MAXPAT);
		*i = *i + 1;
    } 
	else
	{
		fprintf(file_name,"P36,");
		junk = addstr(CCL, pat, j, MAXPAT);
	}
	fprintf(file_name,"P37,");
    jstart = *j;
    junk = addstr(0, pat, j, MAXPAT);
    dodash(CCLEND, arg, i, pat, j, MAXPAT);
    pat[jstart] = *j - jstart - 1;
    return (arg[*i] == CCLEND);
}

void
stclose(pat, j, lastj)
char *pat;
int	*j;
int	lastj;
{
    int	jt;
    int	jp;
    bool junk;
	fprintf(file_name,"P38,");
    for (jp = *j - 1; jp >= lastj ; jp--) 
    {
		fprintf(file_name,"P39,");
		jt = jp + CLOSIZE;
		junk = addstr(pat[jp], pat, &jt, MAXPAT);
    }
	fprintf(file_name,"P40,");
    *j = *j + CLOSIZE;
    pat[lastj] = CLOSURE;
}

bool in_set_2(c)
char c;
{
	fprintf(file_name,"P41,");
  	return (c == BOL || c == EOL || c == CLOSURE);
}      

bool in_pat_set(c)
char c;
{
	fprintf(file_name,"P42,");
  	return (c == LITCHAR || c == BOL || c == EOL || c == ANY || c == CCL || c == NCCL || c == CLOSURE);
}      

int
makepat(arg, start, delim, pat)
char	*arg;
int	start;
char	delim;
char	*pat;
{
    int	result;
    int	i, j, lastj, lj;
    bool done, junk;
    bool getres;
    char escjunk;

    j = 0;
    i = start;
    lastj = 0;
    done = false;
	fprintf(file_name,"P43,");
    while ((!done) && (arg[i] != delim) && (arg[i] != ENDSTR)) 
	{
		lj = j;
		fprintf(file_name,"P44,");
		if ((arg[i] == ANY))
		{
			fprintf(file_name,"P45,");
			junk = addstr(ANY, pat, &j, MAXPAT);
		}
		else if ((arg[i] == BOL) && (i == start))
		{
			fprintf(file_name,"P46,");
			junk = addstr(BOL, pat, &j, MAXPAT);
		}
		else if ((arg[i] == EOL) && (arg[i+1] == delim))
		{
			fprintf(file_name,"P47,");
			junk = addstr(EOL, pat, &j, MAXPAT);
		}
		else if ((arg[i] == CCL)) 
		{
			fprintf(file_name,"P48,");
			getres = getccl(arg, &i, pat, &j);
			done = (bool)(getres == false);
		} 
		else if ((arg[i] == CLOSURE) && (i > start)) 
		{
			fprintf(file_name,"P49,");
			lj = lastj;
			if (in_set_2(pat[lj]))
			{
				fprintf(file_name,"P50,");
				done = true;
			}	
			else
			{
				fprintf(file_name,"P51,");
				stclose(pat, &j, lastj);
			}
		} 
		else 
		{
			fprintf(file_name,"P52,");
			junk = addstr(LITCHAR, pat, &j, MAXPAT);
			escjunk = esc(arg, &i);
			junk = addstr(escjunk, pat, &j, MAXPAT);
		}
		
		lastj = lj;
		fprintf(file_name,"P53,");
		if ((!done))
		{
			fprintf(file_name,"P54,");
			i = i + 1;
		}
    }	
    junk = addstr(ENDSTR, pat, &j, MAXPAT);
    fprintf(file_name,"P55,");
	if ((done) || (arg[i] != delim))
	{
		fprintf(file_name,"P56,");
		result = 0;
	}
    else if ((!junk))
	{
		fprintf(file_name,"P57,");
		result = 0;
	}
	else
	{
		fprintf(file_name,"P58,");
		result = i;
	}
	fprintf(file_name,"P59,");
    return result;
}

int
getpat(arg, pat)
char* arg;
char* pat;
{
	fprintf(file_name,"P60,");
    int	makeres;
    makeres = makepat(arg, 0, ENDSTR, pat);
    return (makeres > 0);
}

int
makesub(arg, from, delim, sub)
char* arg;
int	from;
character delim;
char*	sub;
{
    int  result;
    int	i, j;
    bool	junk;
    character	escjunk;

    j = 0;
    i = from;

	fprintf(file_name,"P61,");
    while ((arg[i] != delim) && (arg[i] != ENDSTR)) 
	{
		fprintf(file_name,"P62,");
		if ((arg[i] == (unsigned)('&')))
		{
			fprintf(file_name,"P63,");
			junk = addstr(DITTO, sub, &j, MAXPAT);
		}
		else 
		{
			fprintf(file_name,"P64,");
			escjunk = esc(arg, &i);
			junk = addstr(escjunk, sub, &j, MAXPAT);
		}
		fprintf(file_name,"P65,");
		i = i + 1;
    }
	fprintf(file_name,"P66,");
    if (arg[i] != delim)
	{
		fprintf(file_name,"P67,");
		result = 0;
	}
    else 
	{
		junk = addstr(ENDSTR, &(*sub), &j, MAXPAT);
		fprintf(file_name,"P68,");
		if ((!junk))
		{
			fprintf(file_name,"P69,");
			result = 0;
		}
		else
		{
			fprintf(file_name,"P70,");
			result = i;
		}	
    }
	fprintf(file_name,"P71,");	
    return result;
}

bool
getsub(arg, sub)
char* arg;
char* sub;
{
	fprintf(file_name,"P72,");
    int	makeres;
    makeres = makesub(arg, 0, ENDSTR, sub);
    return (makeres > 0);
}

void subline();

bool
locate(c, pat, offset)
character c;
char* pat;
int	offset;
{
    int	i;
    bool flag;
    flag = false;
    i = offset + pat[offset];

    fprintf(file_name,"P73,");
	while ((i > offset))
    {
		fprintf(file_name,"P74,");
		if (c == pat[i]) 
		{
			fprintf(file_name,"P75,");
			flag = true;
			i = offset;
		} 
		else
		{
			fprintf(file_name,"P76,");
			i = i - 1;
		}
    }

	fprintf(file_name,"P77,");
    return flag;
}

bool
omatch(lin, i, pat, j)
char* lin;
int	*i;
char* pat;
int	j;
{
    char advance;
    bool result;
    advance = -1;

	fprintf(file_name,"P78,");
    if ((lin[*i] == ENDSTR))
	{
		fprintf(file_name,"P79,");
		result = false;
	}
    else 
    {
		fprintf(file_name,"P80,");
		if (!in_pat_set(pat[j]))
		{
			fprintf(file_name,"P81,");
			(void)fprintf(stdout, "in omatch: can't happen\n");
			abort();	
		} 
		else
		{
			fprintf(file_name,"P82,");
			switch (pat[j]) 
			{			
				case LITCHAR:
					fprintf(file_name,"P83,");
					if (lin[*i] == pat[j + 1])
					{
						fprintf(file_name,"P84,");
						advance = 1;
					}
					fprintf(file_name,"P85,");
					break ;	
				case BOL:
					fprintf(file_name,"P86,");
					if (*i == 0)
					{
						fprintf(file_name,"P87,");
						advance = 0;
					}
					fprintf(file_name,"P88,");
					break ;
				case ANY:
				    fprintf(file_name,"P89,");
					if (lin[*i] != NEWLINE)
					{
						fprintf(file_name,"P90,");
						advance = 1;
					}
					fprintf(file_name,"P91,");
					break ;
				case EOL:
				 	fprintf(file_name,"P92,");
					if (lin[*i] == NEWLINE)
					{
						fprintf(file_name,"P93,");
						advance = 0;
					}
					fprintf(file_name,"P94,");	
					break ;
				case CCL:
					fprintf(file_name,"P95,");
					if (locate(lin[*i], pat, j + 1))
					{
						fprintf(file_name,"P96,");
						advance = 1;
					}
					fprintf(file_name,"P97,");
					break ;
				case NCCL:
					fprintf(file_name,"P98,");
					if ((lin[*i] != NEWLINE) && (!locate(lin[*i], pat, j+1)))
					{
						fprintf(file_name,"P99,");
						advance = 1;	
					}
					fprintf(file_name,"P100,");
					break;
				default:
					fprintf(file_name,"P101,");
					Caseerror(pat[j]);
			};
		}	
    }
    if ((advance >= 0)) 
    {
		fprintf(file_name,"P102,");
		*i = *i + advance;
		result = true;
    } 
	else
	{
		fprintf(file_name,"P103,");
		result = false;
	}
	fprintf(file_name,"P104,");
    return result;
}


patsize(pat, n)
char*	pat;
int	n;
{
    int size;
	fprintf(file_name,"P105,");
    if (!in_pat_set(pat[n])) 
	{
		fprintf(file_name,"P106,");
		(void)fprintf(stdout, "in patsize: can't happen\n");
		abort();
    } 
	else
	{
		fprintf(file_name,"P107,");
		switch (pat[n]) 
		{
		case LITCHAR: 
			fprintf(file_name,"P108,");
			size = 2; 
			break;
			
		case BOL:  
		case EOL:  
		case ANY:
			fprintf(file_name,"P109,");
			size = 1;
			break;
		case CCL:  
		case NCCL:
			fprintf(file_name,"P110,");
			size = pat[n + 1] + 2;
			break ;
		case CLOSURE:
			fprintf(file_name,"P111,");
			size = CLOSIZE;
			break ;
		default:
			fprintf(file_name,"P112,");
			Caseerror(pat[n]);
		}
	}

    return size;
}

int
amatch(lin, offset, pat, j)
char*	lin;
int	offset;
char*	pat;
int	j;
{
    int	i, k;
    bool result, done;
    done = false;

	fprintf(file_name,"P113,");
    while ((!done) && (pat[j] != ENDSTR))
	{
		fprintf(file_name,"P114,");
		if ((pat[j] == CLOSURE)) 
		{
			j = j + patsize(pat, j);
			i = offset;
			fprintf(file_name,"P115,");
			while ((!done) && (lin[i] != ENDSTR)) 
			{
				result = omatch(lin, &i, pat, j);
				fprintf(file_name,"P115,");
				if (!result)
				{
					fprintf(file_name,"P117,");
					done = true;
				}		
			}
			done = false;
			fprintf(file_name,"P118,");
			while ((!done) && (i >= offset)) 
			{
				k = amatch(lin, i, pat, j + patsize(pat, j));
				fprintf(file_name,"P119,");
				if ((k >= 0))
				{
					fprintf(file_name,"P120,");
					done = true;
				}
				else
				{
					fprintf(file_name,"P121,");
					i = i - 1;
				}	
			}
			fprintf(file_name,"P122,");
			offset = k;
			done = true;
		} 
		else 
		{
			result = omatch(lin, &offset, pat, j);
			fprintf(file_name,"P123,");
			if ((!result)) 
			{
				fprintf(file_name,"P124,");
				offset = -1;
				done = true;
			}
			else
			{
				fprintf(file_name,"P125,");
				j = j + patsize(pat, j);
			}
		}
	}
	fprintf(file_name,"P126,");
	return offset;
}

void
putsub(lin, s1, s2, sub)
char* lin;
int	s1, s2;
char* sub;
{
    int	i;
    int	j;
    i = 0;
	fprintf(file_name,"P127,");
    while ((sub[i] != ENDSTR)) 
	{
		fprintf(file_name,"P128,");
		if ((sub[i] == DITTO))
		{
			fprintf(file_name,"P129,");
			for (j = s1; j < s2; j++) 
		    {
				fprintf(file_name,"P130,");
				fputc(lin[j],stdout);
		    }
		}
		else	
		{
			fprintf(file_name,"P131,");
		    fputc(sub[i],stdout);
		}
		fprintf(file_name,"P132,");
		i = i + 1;
    }
}

void
subline(lin, pat, sub)
char *lin;
char *pat;
char *sub;
{	
	int	i, lastm, m;
	lastm = -1;
	i = 0;
	fprintf(file_name,"P133,");
	while ((lin[i] != ENDSTR)) 
	{
	    m = amatch(lin, i, pat, 0);
	    fprintf(file_name,"P134,");
		if ((m >= 0) && (lastm != m)) 
		{
			fprintf(file_name,"P135,");
			putsub(lin, i, m, sub);
			lastm = m;
	    }
		fprintf(file_name,"P136,");
	    if ((m == -1) || (m == i))
		{
			fprintf(file_name,"P137,");
			fputc(lin[i],stdout);
			i = i + 1;
	    } 
		else
		{
			fprintf(file_name,"P138,");
			i = m;
		}
	}
}

void
change(pat, sub)
char *pat, *sub;
{
    string  line;
    bool result;
    result = get_line(line, MAXSTR);
	
    fprintf(file_name,"P139,");
	while ((result)) 
	{
		fprintf(file_name,"P140,");
		subline(line, pat, sub);
		result = get_line(line, MAXSTR);
    }
}

main(argc, argv)
int	argc;
char	*argv[];
{
	file_name=fopen("v17.txt","a+"); 
    if(!file_name)
    {	
        printf("File could not be opened! \n");
        fclose(file_name);
        exit(0);
    }
	string pat, sub;
	bool result;

	fprintf(file_name,"\nP1,");
	if (argc < 2) 
	{
		fprintf(file_name,"P2,");
		(void)fprintf(stdout, "usage: change from [to]\n");
		exit(1);
	};
	
	result = getpat(argv[1], pat);
	fprintf(file_name,"P3,");
	if (!result)
	{
		fprintf(file_name,"P4,");
		(void)fprintf(stdout, "change: illegal \"from\" pattern\n");
		exit(2);
	}

	fprintf(file_name,"P5,");
	if (argc >= 3)
	{
		result = getsub(argv[2], sub);
		fprintf(file_name,"P6,");
		if (!result)
		{	
			fprintf(file_name,"P7,");
			(void)fprintf(stdout, "change: illegal \"to\" string\n");
			exit(3);
		}
	} 
	else
	{
		fprintf(file_name,"P8,");
		sub[0] = '\0';
	}

	fprintf(file_name,"P9,");
	change(pat, sub);
	return 0;
}

void
Caseerror(n)
int	n;
{
	fprintf(file_name,"P10,");
	(void)fprintf(stdout, "Missing case limb: line %d\n", n);
	exit(4);
}
