 
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include "tokens.h"
#define TRUE 1
#define FALSE 0

FILE* file_name = NULL;

main(argc,argv)
int argc;
char *argv[3];
{
  file_name=fopen("v9.txt","a+"); 
  if(!file_name)
  {	
      printf("File could not be opened! \n");
      fclose(file_name);
      exit(0);
  }

  char *fname;
  token tok;
  token_stream tp;
  fprintf(file_name,"\nP1,");
  if(argc==1)                  /* if not given filename,take as '""' */
  {
    fprintf(file_name,"P2,");
    fname= (char *) malloc(sizeof(char));
    *fname = '\0';
  }
  else if(argc==2)
  {
    fprintf(file_name,"P3,");
    fname= argv[1];
  }
  else
  { 
    fprintf(file_name,"P4,");
    fprintf(stdout, "Error!,please give the token stream\n");
    exit(0);
  }
  tp=open_token_stream(fname);  /* open token stream */
  tok=get_token(tp);
  fprintf(file_name,"P5,");
  while (is_eof_token(tok) ==FALSE) /* take one token each time until eof */
  {
    fprintf(file_name,"P6,");
    print_token(tok);
    tok=get_token(tp);
  }
  fprintf(file_name,"P7,");
  print_token(tok); /* print eof signal */
  exit(0);
}

character_stream open_character_stream(fname)
char *fname;
{ 
  character_stream fp;
  fprintf(file_name,"P8,");
  if(fname == NULL)
  {
    fprintf(file_name,"P9,");
    fp=stdin;
  }
  else if ((fp=fopen(fname,"r"))== NULL)
  {
    fprintf(file_name,"P10,");
    fprintf(stdout, "The file %s doesn't exists\n",fname);
    exit(0);
  }
  fprintf(file_name,"P11,");
  return(fp);
}

char get_char(fp)
character_stream fp;
{
  fprintf(file_name,"P12,");
  char ch;
  ch=getc(fp);
  return(ch);
}

char unget_char(ch,fp)
character_stream fp;
char ch;
{
  char c;
  c=ungetc(ch,fp);
  fprintf(file_name,"P13,");
  if(c ==EOF)
  {
    fprintf(file_name,"P14,");
    return(c);
  }
  else
  {
    fprintf(file_name,"P15,");
    return(c);
  }
}

char buffer[81];  /* fixed array length MONI */ /* to store the token temporar */
static int is_spec_symbol();
static int is_token_end();
static unget_error();
static int is_keyword();
static int is_identifier();
static int is_num_constant();
static int is_char_constant();
static int is_str_constant();
static int is_comment();
static void print_spec_symbol();

token_stream open_token_stream(fname)
char *fname;
{
  token_stream fp;
  fprintf(file_name,"P16,");
  if(strcmp(fname,"")==0)
  {
    fprintf(file_name,"P17,");
    fp=open_character_stream(NULL);
  }
  else
  {
    fprintf(file_name,"P18,");
    fp=open_character_stream(fname);
  }
  fprintf(file_name,"P19,");
  return(fp);
}

token get_token(tp)
token_stream tp;
{
  int i=0,j;
  int id=0;
  char ch,ch1[2];
  fprintf(file_name,"P20,");
  for (j=0;j<=80;j++)          /* initial the buffer   */
  {
    fprintf(file_name,"P21,");
    buffer[j]='\0';
  }
  ch1[0]='\0';
  ch1[1]='\0';
  ch=get_char(tp);
  fprintf(file_name,"P22,");
  while(ch==' '||ch=='\n')      /* strip all blanks until meet characters */
  {
    fprintf(file_name,"P23,");
    ch=get_char(tp);
  }
  buffer[i]=ch;
  fprintf(file_name,"P24,");
  if(is_eof_token(buffer)==TRUE)
  {
    fprintf(file_name,"P25,");
    return(buffer);
  }
  fprintf(file_name,"P26,");
  if(is_spec_symbol(buffer)==TRUE)
  {
    fprintf(file_name,"P27,");
    return(buffer); 
  }
  fprintf(file_name,"P28,");
  if(ch =='"')
  {
    fprintf(file_name,"P29,");
    id=1;    /* prepare for string */
  }
  fprintf(file_name,"P30,");
  if(ch ==59)
  {
    fprintf(file_name,"P31,");
    id=2;    /* prepare for comment */
  }
  ch=get_char(tp);
  fprintf(file_name,"P32,");
  while (is_token_end(id,ch) == FALSE)/* until meet the end character */
  {
    fprintf(file_name,"P33,");
    i++;
    buffer[i]=ch;
    ch=get_char(tp);
  }
  ch1[0]=ch;                        /* hold the end charcater          */
  fprintf(file_name,"P34,");
  if(is_eof_token(ch1)==TRUE)       /* if end character is eof token    */
  {
    ch=unget_char(ch,tp);        /* then put back eof on token_stream */
    fprintf(file_name,"P35,");
    if(ch==EOF)
    {
      fprintf(file_name,"P36,");
      unget_error(tp);
    }
    fprintf(file_name,"P37,");
    return(buffer);
  }
  fprintf(file_name,"P38,");
  if(is_spec_symbol(ch1)==TRUE)     /* if end character is special_symbol */
  {
    ch=unget_char(ch,tp);        /* then put back this character       */
    fprintf(file_name,"P39,"); 
    if(ch==EOF)
    {
      fprintf(file_name,"P40,");
      unget_error(tp);
    }
    fprintf(file_name,"P41,");
    return(buffer);
  }
  fprintf(file_name,"P42,");
  if(id==1)                  /* if end character is " and is string */
  { 
    fprintf(file_name,"P43,");
    i++;                     /* case,hold the second " in buffer    */
    buffer[i]=ch;
    return(buffer); 
  }
  fprintf(file_name,"P44,");
  if(id==0 && ch==59)
  { 
    ch=unget_char(ch,tp);       /* then put back this character         */
    fprintf(file_name,"P45,");
    if(ch==EOF)
    {
      fprintf(file_name,"P46,");
      unget_error(tp);
    }
    fprintf(file_name,"P47,");
    return(buffer); 
  }
  fprintf(file_name,"P48,");
  return(buffer);                   /* return nomal case token             */
}

static int is_token_end(str_com_id,ch)
char ch;
int str_com_id;
{
  char ch1[2];  /* fixed array declaration MONI */
  ch1[0]=ch;
  ch1[1]='\0';
  fprintf(file_name,"P49,");
  if(is_eof_token(ch1)==TRUE)
  {
    fprintf(file_name,"P50,");
    return(TRUE); /* is eof token? */
  }
  fprintf(file_name,"P51,");
  if(str_com_id==1)          /* is string token */
  {
    fprintf(file_name,"P52,"); 
    if(ch=='"' | ch=='\n')   /* for string until meet another " */
    {
      fprintf(file_name,"P53,");
      return(TRUE);
    }  
    else
    {
      fprintf(file_name,"P54,");
      return(FALSE);
    }  
  }
  fprintf(file_name,"P55,");
  if(str_com_id==2)    /* is comment token */
  { 
    fprintf(file_name,"P56,");
    if(ch=='\n' || ch == '\t')     /* for comment until meet end of line */
    {
      fprintf(file_name,"P57,");
      return(TRUE);
    }
    else
    {
      fprintf(file_name,"P58,");
      return(FALSE);
    }
  }
  fprintf(file_name,"P59,");
  if(is_spec_symbol(ch1)==TRUE)
  {
    fprintf(file_name,"P60,");
    return(TRUE); /* is special_symbol? */
  }
  fprintf(file_name,"P61,");
  if(ch ==' ' || ch=='\n' || ch==59) 
  {
    fprintf(file_name,"P62,");
    return(TRUE); 
  }
  fprintf(file_name,"P63,");
  return(FALSE);               
}

static int token_type(tok)
token tok;
{
  fprintf(file_name,"P64,");
  if(is_keyword(tok))
  {
    fprintf(file_name,"P65,");
    return(keyword);
  }
  fprintf(file_name,"P66,");
  if(is_spec_symbol(tok))
  {
    fprintf(file_name,"P67,");
    return(spec_symbol);
  }
  fprintf(file_name,"P68,");
  if(is_identifier(tok))
  {
    fprintf(file_name,"P69,");
    return(identifier);
  }
  fprintf(file_name,"P70,");
  if(is_num_constant(tok))
  {
    fprintf(file_name,"P71,");
    return(num_constant);
  }
  fprintf(file_name,"P72,");
  if(is_str_constant(tok))
  {
    fprintf(file_name,"P73,");
    return(str_constant);
  }
  fprintf(file_name,"P74,");
  if(is_char_constant(tok))
  {
    fprintf(file_name,"P75,");
    return(char_constant);
  }
  fprintf(file_name,"P76,");
  if(is_comment(tok))
  {
    fprintf(file_name,"P77,");
    return(comment);
  }
  fprintf(file_name,"P78,");
  if(is_eof_token(tok))
  {
    fprintf(file_name,"P79,");
    return(end);
  }
  fprintf(file_name,"P80,");
  return(error);
}


int print_token(tok)
token tok;
{
  int type;
  type=token_type(tok);
  fprintf(file_name,"P81,");
  if(type==error)
  {
    fprintf(file_name,"P82,");
    fprintf(stdout, "error,\"%s\".\n",tok);
  }
  fprintf(file_name,"P83,");
  if(type==keyword)
  {
    fprintf(file_name,"P84,");
    fprintf(stdout, "keyword,\"%s\".\n",tok);
  }
  fprintf(file_name,"P85,");
  if(type==spec_symbol)
  {
    fprintf(file_name,"P86,");
    print_spec_symbol(tok);
  }
  fprintf(file_name,"P87,");
  if(type==identifier)
  {
    fprintf(file_name,"P88,");
    fprintf(stdout, "identifier,\"%s\".\n",tok);
  }
  fprintf(file_name,"P89,");
  if(type==num_constant)
  {
    fprintf(file_name,"P90,");
    fprintf(stdout, "numeric,%s.\n",tok);
  }
  fprintf(file_name,"P91,");
  if(type==str_constant)
  {
    fprintf(file_name,"P92,");
    fprintf(stdout, "string,%s.\n",tok);
  }
  fprintf(file_name,"P93,");
  if(type==char_constant)
  {
    fprintf(file_name,"P94,");
    tok=tok+1;
    fprintf(stdout, "character,\"%s\".\n",tok);
  }
  fprintf(file_name,"P95,");
  if(type==end)
  {
    fprintf(file_name,"P96,");
    fprintf(stdout, "eof.\n");
  }
}

int is_eof_token(tok)
token tok;
{ 
  fprintf(file_name,"P97,");
  if( *tok==EOF)
  {
    fprintf(file_name,"P98,");
    return(TRUE);  
  }
  else
  {
    fprintf(file_name,"P99,");
    return(FALSE);
  }
}

static int is_comment(ident)
token ident;
{
  fprintf(file_name,"P100,");
  if( (*ident) ==59 )   /* the char is 59   */
  {
    fprintf(file_name,"P101,");
    return(TRUE);
  }
  else
  {
    fprintf(file_name,"P102,");
    return(FALSE);
  }
}

static int is_keyword(str)
    token  str;
{ 
  fprintf(file_name,"P103,");
  if (!strcmp(str,"and") || !strcmp(str,"or") || !strcmp(str,"if") || 
  	  !strcmp(str,"xor")||!strcmp(str,"lambda")||!strcmp(str,"=>"))
  {
    fprintf(file_name,"P104,");
    return(TRUE);
  }
  else
  {
    fprintf(file_name,"P105,");
    return(FALSE);
  }
}

static int is_char_constant(str)
    token str;
{
  fprintf(file_name,"P106,");
  if ((*str)=='#' && isalpha(*(str+1)))
  {
    fprintf(file_name,"P107,");
    return(TRUE);
  } 
  else
  {
    fprintf(file_name,"P108,");
    return(FALSE);
  }
}

static int is_num_constant(str)
    token  str;
{
  int i=1;
  fprintf(file_name,"P109,");
  if ( isdigit(*str)) 
  {
    fprintf(file_name,"P110,");
    while ( *(str+i) != '\0' )   /* until meet token end sign */
    {
      fprintf(file_name,"P111,");
      if(isdigit(*(str+i)))
      {
        fprintf(file_name,"P112,");
        i++;
      }
      else
      {
        fprintf(file_name,"P113,");
        return(FALSE);
      }
    }                         /* end WHILE */
    fprintf(file_name,"P114,");
    return(TRUE);
  }
  else
  {
    fprintf(file_name,"P115,");
    return(FALSE);               /* other return FALSE */
  }
}

static int is_str_constant(str)
    token str;
{
  int i=1;
  fprintf(file_name,"P116,");
  if ( *str =='"')
  {
    fprintf(file_name,"P117,"); 
    while (*(str+i)!='\0')  /* until meet the token end sign */
    {
      fprintf(file_name,"P118,");
      if(*(str+i)=='"')
      {
        fprintf(file_name,"P119,");
        return(TRUE);        /* meet the second '"'           */
      }
      else
      {
        fprintf(file_name,"P120,");
        i++;
      }     
    }               /* end WHILE */
    fprintf(file_name,"P121,");
    return(FALSE);
  }
  else
  {
    fprintf(file_name,"P122,");
    return(FALSE);       /* other return FALSE */
  }
}

static int is_identifier(str)
    token  str;
{
  int i=1;
  fprintf(file_name,"P123,");
  if ( isalpha( *str) ) 
  {
    fprintf(file_name,"P124,");
    while(  *(str+i) !='\0' )   /* unti meet the end token sign */
    {
      fprintf(file_name,"P125,");
      if(isalpha(*(str+i)) || isdigit(*(str+i)))
      {
        fprintf(file_name,"P126,");
        i++;
      } 
      else
      {
        fprintf(file_name,"P127,");
        return(FALSE);
      }
    }      /* end WHILE */
    fprintf(file_name,"P128,");
    return(TRUE);
  }
  else
  {
    fprintf(file_name,"P129,");
    return(FALSE);
  }
}

static unget_error(fp)
character_stream *fp;
{
  fprintf(file_name,"P130,");
  fprintf(stdout,"It can not get charcter\n");
}

static void print_spec_symbol(str)
token str;
{
  fprintf(file_name,"P131,");
  if (!strcmp(str,"("))
  {
    fprintf(file_name,"P132,");
    fprintf(stdout, "%s\n","lparen.");
    return;
  }
  fprintf(file_name,"P133,"); 
  if (!strcmp(str,")"))
  {
    fprintf(file_name,"P134,");
    fprintf(stdout, "%s\n","rparen.");
    return;
  }
  fprintf(file_name,"P135,");
  if (!strcmp(str,"["))
  {
    fprintf(file_name,"P136,");
    fprintf(stdout, "%s\n","lsquare.");
    return;
  }
  fprintf(file_name,"P137,");
  if (!strcmp(str,"]"))
  {
    fprintf(file_name,"P138,");
    fprintf(stdout, "%s\n","rsquare.");
    return;
  }
  fprintf(file_name,"P139,");
  if (!strcmp(str,"'"))
  {
    fprintf(file_name,"P140,");
    fprintf(stdout, "%s\n","quote.");
    return;
  }
  fprintf(file_name,"P141,");
  if (!strcmp(str,"`"))
  {
    fprintf(file_name,"P142,");
    fprintf(stdout, "%s\n","bquote.");
    return;
  }
  fprintf(file_name,"P143,");
  fprintf(stdout, "%s\n","comma.");
}

static int is_spec_symbol(str)
    token str;
{
  fprintf(file_name,"P144,");
  if (!strcmp(str,"("))
  {
    fprintf(file_name,"P145,");  
    return(TRUE);
  }
  fprintf(file_name,"P146,");
  if (!strcmp(str,")"))
  {
    fprintf(file_name,"P147,");
    return(TRUE);
  }
  fprintf(file_name,"P148,");
  if (!strcmp(str,"["))
  {
    fprintf(file_name,"P149,");
    return(TRUE);
  }
  fprintf(file_name,"P150,");
  if (!strcmp(str,"]"))
  {
    fprintf(file_name,"P151,");
    return(TRUE);
  }
  fprintf(file_name,"P152,");
  if (!strcmp(str,"'"))
  {
    fprintf(file_name,"P153,");
    return(TRUE);
  }
  fprintf(file_name,"P154,");
  if (!strcmp(str,"`"))
  {
    fprintf(file_name,"P155,");
    return(TRUE);
  }
  fprintf(file_name,"P156,");
  if (!strcmp(str,","))
  {
    fprintf(file_name,"P157,");
    return(TRUE);
  }
  fprintf(file_name,"P158,");
  return(FALSE);     /* others return FALSE */
}