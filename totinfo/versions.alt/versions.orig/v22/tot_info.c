#include	<ctype.h>
#include	<stdio.h>

#include	"std.h"

#include	"chisq.h"
#include	"gamma.h"

FILE* file_name = NULL;

#define	MAXLINE	256


#ifndef MAXTBL
#define	MAXTBL	1000
#endif

static char	line[MAXLINE];
static long	f[MAXTBL];	
static int	r;		
static int	c;		

#define	x(i,j)	f[(i)*c+(j)]

#define	COMMENT	'#'


#ifndef NULL
#define NULL 0
#endif

int
main(argc, argv)
int	argc;
char *argv[];
{
	file_name=fopen("v22.txt","a+"); 
    if(!file_name)
    {	
        printf("File could not be opened! \n");
        fclose(file_name);
        exit(0);
    }

	char	*p;		/* input line scan location */
	int	i;		/* row index */
	int	j;		/* column index */
	double		info;		/* computed information measure */
	int		infodf;		/* degrees of freedom for information */
	double		totinfo = 0.0;	/* accumulated information */
	int		totdf;	/* accumulated degrees of freedom */
 
    totdf = 0;
	fprintf(file_name,"\nP1,");
	while ( fgets( line, MAXLINE, stdin ) != NULL )	/* start new table */
	{
		fprintf(file_name,"P53,");
		for ( p = line; *p != '\0' && isspace( (int)*p ); ++p );

		fprintf(file_name,"P54,");
		if ( *p == '\0' )
		{
			fprintf(file_name,"P55,");
			continue;	/* skip blank line */
		}

		fprintf(file_name,"P56,");
		if ( *p == COMMENT )
		{		/* copy comment through */
			fprintf(file_name,"P57,");
			(void)fputs( line, stdout );
			continue;
		}

		fprintf(file_name,"P58,");
		if ( sscanf( p, "%d %d\n", &r, &c ) != 2 )
		{
			fprintf(file_name,"P59,");
			(void)fputs( "* invalid row/column line *\n", stdout );
			return EXIT_FAILURE;
		}

		fprintf(file_name,"P60,");
		if ( r * c > MAXTBL )
		{
			fprintf(file_name,"P61,");
			(void)fputs( "* table too large *\n", stdout );
			return EXIT_FAILURE;
		}

		fprintf(file_name,"P62,");
		for ( i = 0; i < r; ++i )
		{
			fprintf(file_name,"P63,");
			for ( j = 0; j < c; ++j )
			{
				fprintf(file_name,"P64,");
				if ( scanf( " %ld", &x(i,j) ) != 1 )
				{
					fprintf(file_name,"P65,");
					(void)fputs( "* EOF in table *\n", stdout);
					return EXIT_FAILURE;
				}
			}
		}

		fprintf(file_name,"P66,");
		info = InfoTbl( r, c, f, &infodf );

		fprintf(file_name,"P67,");
		if ( info >= 0.0 )
		{
			fprintf(file_name,"P68,");
			(void)printf( "2info = %5.2f\tdf = %2d\tq = %7.4f\n", info, infodf, QChiSq( info, infodf ));
			totinfo += info;
			totdf += infodf;
		}
		else
		{
			fprintf(file_name,"P69,");
			(void)fputs( info < -3.5 ? "out of memory\n": info < -2.5 ? "table too small\n": info < -1.5 ? "negative freq\n": "table all zeros\n", stdout);
		}
	}

	fprintf(file_name,"P2,");
	if ( totdf <= 0 )
	{
		fprintf(file_name,"P3,");
		(void)fputs( "\n*** no information accumulated ***\n", stdout );
		return EXIT_FAILURE;
	}

	fprintf(file_name,"P4,");
	(void)printf( "\ntotal 2info = %5.2f\tdf = %2d\tq = %7.4f\n", totinfo, totdf, QChiSq( totinfo, totdf ));
	return EXIT_SUCCESS;
}


#include <math.h>
#include <stdio.h>

#include "std.h"

double
LGamma( x )
double x;
{
	static const double	cof[6] =
	{
		76.18009173,	-86.50532033,	24.01409822,
		-1.231739516,	0.120858003e-2,	-0.536382e-5
	};
	double tmp, ser;
	int	j;

	fprintf(file_name,"P5,");
	if ( --x < 0.0 )	/* use reflection formula for accuracy */
	{
		fprintf(file_name,"P6,");
		double	pix = PI * x;
		return log( pix / sin( pix ) ) - LGamma( 1.0 - x );
	}

	tmp = x + 5.5;
	tmp -= (x + 0.5) * log( tmp );
	ser = 1.0;

	fprintf(file_name,"P7,");
	for ( j = 0; j < 6; ++j )
	{
		fprintf(file_name,"P8,");
		ser += cof[j] / ++x;
	}
	
	fprintf(file_name,"P9,");
	return -tmp + log( 2.50662827465 * ser );
}

#define	ITMAX	100
#define	EPS	3.0e-7

static double
gser( a, x )
double a, x;
{
	double ap, del, sum;
	int	n;

	fprintf(file_name,"P10,");
	if ( x <= 0.0 )
	{
		fprintf(file_name,"P11,");
		return 0.0;
	}
		
	del = sum = 1.0 / (ap = a);

	fprintf(file_name,"P12,");
	for ( n = 1; n <= ITMAX; ++n )
	{
		sum += del *= x / ++ap;
		fprintf(file_name,"P13,");
		if ( Abs( del ) < Abs( sum ) * EPS )
		{
			fprintf(file_name,"P14,");
			return sum * exp( -x + a * log( x ) - LGamma( a ) );
		}
	}
}

static double
gcf( a, x )
double	a, x;
{
	int	n;
	double	gold = 0.0, fac = 1.0, b1 = 1.0, b0 = 0.0, a0 = 1.0, a1 = x;

	fprintf(file_name,"P15,");
	for ( n = 1; n <= ITMAX; ++n )
	{
		double	anf;
		double	an = (double)n;
		double	ana = an - a;

		a0 = (a1 + a0 * ana) * fac;
		b0 = (b1 + b0 * ana) * fac;
		anf = an * fac;
		b1 = x * b0 + anf * b1;
		a1 = x * a0 + anf * a1;

		fprintf(file_name,"P16,");
		if (a1 != 0.0)
		{		/* renormalize */
			double	g = b1 * (fac = 1.0 / a1);
			gold = g - gold;
			fprintf(file_name,"P17,");
			if ( Abs( gold ) < EPS * Abs( g ) )
			{
				fprintf(file_name,"P18,");
				return exp( -x + a * log( x ) - LGamma( a ) ) * g;
			}
			fprintf(file_name,"P19,");
			gold = g;
		}
	}
}

double
QGamma( a, x )
double a, x;
{
	fprintf(file_name,"P20,");
	return x < a + 1.0 ? 1.0 - gser( a, x ) : gcf( a, x );
}

double
QChiSq( chisq, df )
double	chisq;
int	df;
{
	fprintf(file_name,"P21,");
	return QGamma( (double)df / 2.0, chisq / 2.0 );
}

#include	<math.h>		/* for log() */
#if __STDC__
#include	<stdlib.h>		/* malloc, free */

#include	"std.h"
#else
#include	"std.h"

extern pointer	malloc();
extern void	free();
#endif

#ifndef NULL
#define NULL 0
#endif

#define	x(i,j)	f[(i)*c+(j)]		/* convenient way to access freqs */

double
InfoTbl( r, c, f, pdf )
int		r;		/* # rows in table */
int		c;		/* # columns in table */
const long	*f;		/* -> r*c frequency tallies */
int		*pdf;		/* -> return # d.f. for chi-square */
{
	int	i;		/* row index */
	int	j;		/* column index */
	double		N;		/* (double)n */
	double		info;		/* accumulates information measure */
	double		*xi;		/* row sums */
	double		*xj;		/* col sums */
	int		rdf = r - 1;	/* row degrees of freedom */
	int		cdf = c - 1;	/* column degrees of freedom */

	fprintf(file_name,"P22,");
	if ( rdf <= 0 || cdf <= 0 )
	{
		fprintf(file_name,"P23,");
		info = -3.0;
		goto ret3;
	}

	*pdf = rdf * cdf;		/* total degrees of freedom */
	fprintf(file_name,"P24,");
	if ( (xi = (double *)malloc( r * sizeof(double) )) == NULL )
	{
		fprintf(file_name,"P25,");
		info = -4.0;
		goto ret3;
	}

	fprintf(file_name,"P26,");
	if ( (xj = (double *)malloc( c * sizeof(double) )) == NULL )
	{
		fprintf(file_name,"P27,");
		info = -4.0;
		goto ret2;
	}

	N = 0.0;
	fprintf(file_name,"P28,");
	for ( i = 0; i < r; ++i )
	{
		double	sum = 0.0;	/* accumulator */
		fprintf(file_name,"P29,");
		for ( j = 0; j < c; ++j )
		{
			long	k = x(i,j);

			fprintf(file_name,"P30,");
			if ( k < 0L )
			{
				fprintf(file_name,"P31,");
				info = -2.0;
				goto ret1;
			}
			fprintf(file_name,"P32,");
			sum += (double)k;
		}
		fprintf(file_name,"P33,");
		N += xi[i] = sum;
	}
	fprintf(file_name,"P34,");
	if ( N <= 1.0 )
	{
		fprintf(file_name,"P35,");
		info = -1.0;
		goto ret1;
	}

	fprintf(file_name,"P36,");
	for ( j = 0; j < c; ++j )
	{
		double	sum = 0.0;	/* accumulator */
		fprintf(file_name,"P37,");
		for ( i = 0; i < r; ++i )
		{
			fprintf(file_name,"P38,");
			sum += (double)x(i,j);
		}
		fprintf(file_name,"P39,");
		xj[j] = sum;
	}

	info = N * log( N );					/* part 1 */
	fprintf(file_name,"P40,");
	for ( i = 0; i < r; ++i )
	{
		double	pi = xi[i];	/* row sum */
		fprintf(file_name,"P41,");
		if ( pi > 0.0 )
		{
			fprintf(file_name,"P42,");
			info -= pi * log( pi );			/* part 2 */
		}
		
		fprintf(file_name,"P43,");
		for ( j = 0; j < c; ++j )
		{
			double	pij = (double)x(i,j);
			fprintf(file_name,"P44,");
			if ( pij > 0.0 )
			{
				fprintf(file_name,"P45,");
				info += pij * log( pij );	/* part 3 */
			}
		}
	}
	
	fprintf(file_name,"P46,");
	for ( j = 0; j < c; ++j )
	{
		double	pj = xj[j];	/* column sum */
		fprintf(file_name,"P47,");
		if ( pj > 0.0 )
		{
			fprintf(file_name,"P48,");
			info -= pj * log( pj );			/* part 4 */
		}
	}

	fprintf(file_name,"P49,");
	info *= 2.0;			/* for comparability with chi-square */

    ret1:
		fprintf(file_name,"P50,");
		free( (pointer)xj );
    ret2:
		fprintf(file_name,"P51,");
		free( (pointer)xi );
    ret3:
		fprintf(file_name,"P52,");
		return info;
}