 
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
  file_name=fopen("v0.txt","a+"); 
  if(!file_name)
  {	
      printf("File could not be opened! \n");
      fclose(file_name);
      exit(0);
  }
	fprintf(file_name,"\nP1,");

  char *fname;
  token tok;
  token_stream tp;
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
  fprintf(file_name,"P5,");
  tp=open_token_stream(fname);  /* open token stream */
  tok=get_token(tp);
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
  if(fname == NULL)
  {
    fprintf(file_name,"P8,");
    fp=stdin;
  }
  else if ((fp=fopen(fname,"r"))== NULL)
  {
    fprintf(file_name,"P9,");
    fprintf(stdout, "The file %s doesn't exists\n",fname);
    exit(0);
  }
  fprintf(file_name,"P10,");
  return(fp);
}

char get_char(fp)
character_stream fp;
{
  fprintf(file_name,"P11,");
  char ch;
  ch=getc(fp);
  return(ch);
}

char unget_char(ch,fp)
character_stream fp;
char ch;
{
  fprintf(file_name,"P12,");
  char c;
  c=ungetc(ch,fp);
  if(c ==EOF)
  {
    fprintf(file_name,"P13,");
    return(c);
  }
  else
  {
    fprintf(file_name,"P14,");
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
  if(strcmp(fname,"")==0)
  {
    fp=open_character_stream(NULL);
    fprintf(file_name,"P15,");
  }
  else
  {
    fp=open_character_stream(fname);
    fprintf(file_name,"P16,");
  }
  fprintf(file_name,"P17,");
  return(fp);
}

token get_token(tp)
token_stream tp;
{
  fprintf(file_name,"P18,");
  int i=0,j;
  int id=0;
  char ch,ch1[2];
  for (j=0;j<=80;j++)          /* initial the buffer   */
  {
    fprintf(file_name,"P19,");
    buffer[j]='\0';
  }
  fprintf(file_name,"P20,");
  ch1[0]='\0';
  ch1[1]='\0';
  ch=get_char(tp);
  while(ch==' '||ch=='\n')      /* strip all blanks until meet characters */
  {
    fprintf(file_name,"P21,");
    ch=get_char(tp);
  }
  fprintf(file_name,"P22,");
  buffer[i]=ch;
  if(is_eof_token(buffer)==TRUE)
  {
    fprintf(file_name,"P23,");
    return(buffer);
  }
  if(is_spec_symbol(buffer)==TRUE)
  {
    fprintf(file_name,"P24,");
    return(buffer); 
  }
  if(ch =='"')
  {
    fprintf(file_name,"P25,");
    id=1;    /* prepare for string */
  }
  if(ch ==59)
  {
    fprintf(file_name,"P26,");
    id=2;    /* prepare for comment */
  }
  fprintf(file_name,"P27,");
  ch=get_char(tp);
  while (is_token_end(id,ch) == FALSE)/* until meet the end character */
  {
    fprintf(file_name,"P28,");
    i++;
    buffer[i]=ch;
    ch=get_char(tp);
  }
  fprintf(file_name,"P29,");
  ch1[0]=ch;                        /* hold the end charcater          */
  if(is_eof_token(ch1)==TRUE)       /* if end character is eof token    */
  {
    fprintf(file_name,"P30,");
    ch=unget_char(ch,tp);        /* then put back eof on token_stream */
    if(ch==EOF)
    {
      fprintf(file_name,"P31,");
      unget_error(tp);
    }
    fprintf(file_name,"P32,");
    return(buffer);
  }
  if(is_spec_symbol(ch1)==TRUE)     /* if end character is special_symbol */
  {
    fprintf(file_name,"P33,"); 
    ch=unget_char(ch,tp);        /* then put back this character       */
    if(ch==EOF)
    {
      fprintf(file_name,"P34,");
      unget_error(tp);
    }
    fprintf(file_name,"P35,");
    return(buffer);
  }
  if(id==1)                  /* if end character is " and is string */
  { 
    fprintf(file_name,"P36,");
    i++;                     /* case,hold the second " in buffer    */
    buffer[i]=ch;
    return(buffer); 
  }
  if(id==0 && ch==59)
  { 
    fprintf(file_name,"P37,");
    ch=unget_char(ch,tp);       /* then put back this character         */
/*       if(ch==EOF)        */
	  unget_error(tp);
    return(buffer); 
  }
  fprintf(file_name,"P40,");
  return(buffer);                   /* return nomal case token             */
}

static int is_token_end(str_com_id,ch)
char ch;
int str_com_id;
{
  fprintf(file_name,"P41,");
  char ch1[2];  /* fixed array declaration MONI */
  ch1[0]=ch;
  ch1[1]='\0';
  if(is_eof_token(ch1)==TRUE)
  {
    fprintf(file_name,"P42,");
    return(TRUE); /* is eof token? */
  }
  if(str_com_id==1)          /* is string token */
  { 
    if(ch=='"' | ch=='\n')   /* for string until meet another " */
    {
      fprintf(file_name,"P43,");
      return(TRUE);
    }  
    else
    {
      fprintf(file_name,"P44,");
      return(FALSE);
    }  
  }

  if(str_com_id==2)    /* is comment token */
  { 
    if(ch=='\n')     /* for comment until meet end of line */
    {
      fprintf(file_name,"P45,");
      return(TRUE);
    }
    else
    {
      fprintf(file_name,"P46,");
      return(FALSE);
    }
  }

  if(is_spec_symbol(ch1)==TRUE)
  {
    fprintf(file_name,"P47,");
    return(TRUE); /* is special_symbol? */
  }
   
  if(ch ==' ' || ch=='\n' || ch==59) 
  {
    fprintf(file_name,"P48,");
    return(TRUE); 
  }
  fprintf(file_name,"P49,");
                              /* others until meet blank or tab or 59 */
  return(FALSE);               /* other case,return FALSE */
}

static int token_type(tok)
token tok;
{ 
  if(is_keyword(tok))
  {
    fprintf(file_name,"P50,");
    return(keyword);
  }
  if(is_spec_symbol(tok))
  {
    fprintf(file_name,"P51,");
    return(spec_symbol);
  }
  if(is_identifier(tok))
  {
    fprintf(file_name,"P52,");
    return(identifier);
  }
  if(is_num_constant(tok))
  {
    fprintf(file_name,"P53,");
    return(num_constant);
  }
  if(is_str_constant(tok))
  {
    fprintf(file_name,"P54,");
    return(str_constant);
  }
  if(is_char_constant(tok))
  {
    fprintf(file_name,"P55,");
    return(char_constant);
  }
  if(is_comment(tok))
  {
    fprintf(file_name,"P56,");
    return(comment);
  }
  if(is_eof_token(tok))
  {
    fprintf(file_name,"P57,");
    return(end);
  }
  fprintf(file_name,"P58,");
  return(error);                    /* else look as error token */
}


int print_token(tok)
token tok;
{
  fprintf(file_name,"P59,");
  int type;
  type=token_type(tok);
  if(type==error)
  {
    fprintf(file_name,"P60,");
    fprintf(stdout, "error,\"%s\".\n",tok);
  } 
  if(type==keyword)
  {
    fprintf(file_name,"P61,");
    fprintf(stdout, "keyword,\"%s\".\n",tok);
  }
  if(type==spec_symbol)
  {
    fprintf(file_name,"P62,");
    print_spec_symbol(tok);
  }
  if(type==identifier)
  {
    fprintf(file_name,"P63,");
    fprintf(stdout, "identifier,\"%s\".\n",tok);
  }
  if(type==num_constant)
  {
    fprintf(file_name,"P64,");
    fprintf(stdout, "numeric,%s.\n",tok);
  }
  if(type==str_constant)
  {
    fprintf(file_name,"P65,");
    fprintf(stdout, "string,%s.\n",tok);
  }
  if(type==char_constant)
  {
    fprintf(file_name,"P66,");
    tok=tok+1;
    fprintf(stdout, "character,\"%s\".\n",tok);
  }
  if(type==end)
  {
    fprintf(file_name,"P67,");
    fprintf(stdout, "eof.\n");
  }
}

int is_eof_token(tok)
token tok;
{ 
  if( *tok==EOF)
  {
    fprintf(file_name,"P68,");
    return(TRUE);  
  }
  else
  {
    fprintf(file_name,"P69,");
    return(FALSE);
  }
    
}

static int is_comment(ident)
token ident;
{
  if( (*ident) ==59 )   /* the char is 59   */
  {
    fprintf(file_name,"P70,");
    return(TRUE);
  }
    
  else
  {
    fprintf(file_name,"P71,");
    return(FALSE);
  }

}

static int is_keyword(str)
    token  str;
{ 
  if (!strcmp(str,"and") || !strcmp(str,"or") || !strcmp(str,"if") || 
  	  !strcmp(str,"xor")||!strcmp(str,"lambda")||!strcmp(str,"=>"))
  {
    fprintf(file_name,"P72,");
    return(TRUE);
  }
    
  else
  {
    fprintf(file_name,"P73,");
    return(FALSE);
  }
    
}

static int is_char_constant(str)
    token str;
{
  if ((*str)=='#' && isalpha(*(str+1)))
  {
    fprintf(file_name,"P74,");
    return(TRUE);
  } 
  else
  {
    fprintf(file_name,"P75,");
    return(FALSE);
  }
}

static int is_num_constant(str)
    token  str;
{
  fprintf(file_name,"P76,");
  int i=1;
  if ( isdigit(*str)) 
  {
    fprintf(file_name,"P77,");
    while ( *(str+i) != '\0' )   /* until meet token end sign */
    {
      if(isdigit(*(str+i)))
      {
        fprintf(file_name,"P78,");
        i++;
      }
        
      else
      {
        fprintf(file_name,"P79,");
        return(FALSE);
      }
    }                         /* end WHILE */
    fprintf(file_name,"P80,");
    return(TRUE);
  }
  else
  {
    fprintf(file_name,"P81,");
    return(FALSE);               /* other return FALSE */
  }
   
}

static int is_str_constant(str)
    token str;
{
  fprintf(file_name,"P82,");
  int i=1;
  if ( *str =='"')
  { 
    while (*(str+i)!='\0')  /* until meet the token end sign */
    {
      if(*(str+i)=='"')
      {
        fprintf(file_name,"P83,");
        return(TRUE);        /* meet the second '"'           */
      }
      else
      {
        fprintf(file_name,"P84,");
        i++;
      }     
    }               /* end WHILE */
    fprintf(file_name,"P85,");
    return(FALSE);
  }
  else
  {
    fprintf(file_name,"P86,");
    return(FALSE);       /* other return FALSE */
  }
}

static int is_identifier(str)
    token  str;
{
  fprintf(file_name,"P87,");
  int i=1;
  if ( isalpha( *str) ) 
  {
    while(  *(str+i) !='\0' )   /* unti meet the end token sign */
    {
      if(isalpha(*(str+i)) || isdigit(*(str+i)))
      {
        fprintf(file_name,"P88,");
        i++;
      } 
      else
      {
        fprintf(file_name,"P89,");
        return(FALSE);
      }
    }      /* end WHILE */
    fprintf(file_name,"P90,");
    return(TRUE);
  }
  else
  {
    fprintf(file_name,"P91,");
    return(FALSE);
  }
}

static unget_error(fp)
character_stream *fp;
{
  fprintf(file_name,"P92,");
  fprintf(stdout,"It can not get charcter\n");
}

static void print_spec_symbol(str)
token str;
{
  if (!strcmp(str,"("))
  {
    fprintf(file_name,"P93,");
    fprintf(stdout, "%s\n","lparen.");
    return;
  } 
  if (!strcmp(str,")"))
  {
    fprintf(file_name,"P94,");
    fprintf(stdout, "%s\n","rparen.");
    return;
  }
  if (!strcmp(str,"["))
  {
    fprintf(file_name,"P95,");
    fprintf(stdout, "%s\n","lsquare.");
    return;
  }
  if (!strcmp(str,"]"))
  {
    fprintf(file_name,"P96,");
    fprintf(stdout, "%s\n","rsquare.");
    return;
  }
  if (!strcmp(str,"'"))
  {
    fprintf(file_name,"P97,");
    fprintf(stdout, "%s\n","quote.");
    return;
  }
  if (!strcmp(str,"`"))
  {
    fprintf(file_name,"P98,");
    fprintf(stdout, "%s\n","bquote.");
    return;
  }
  fprintf(file_name,"P99,");
  fprintf(stdout, "%s\n","comma.");
}

static int is_spec_symbol(str)
    token str;
{
  if (!strcmp(str,"("))
  {
    fprintf(file_name,"P100,");  
    return(TRUE);
  }
  if (!strcmp(str,")"))
  {
    fprintf(file_name,"P101,");
    return(TRUE);
  }
  if (!strcmp(str,"["))
  {
    fprintf(file_name,"P102,");
    return(TRUE);
  }
  if (!strcmp(str,"]"))
  {
    fprintf(file_name,"P103,");
    return(TRUE);
  }
  if (!strcmp(str,"'"))
  {
    fprintf(file_name,"P104,");
    return(TRUE);
  }
  if (!strcmp(str,"`"))
  {
    fprintf(file_name,"P105,");
    return(TRUE);
  }
  if (!strcmp(str,","))
  {
    fprintf(file_name,"P106,");
    return(TRUE);
  }
  fprintf(file_name,"P107,");
  return(FALSE);     /* others return FALSE */
}


