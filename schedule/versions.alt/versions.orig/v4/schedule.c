#include <stdio.h>
#include <signal.h>

#define NULL 0

#define NEW_JOB        1
#define UPGRADE_PRIO   2 
#define BLOCK          3
#define UNBLOCK        4  
#define QUANTUM_EXPIRE 5
#define FINISH         6
#define FLUSH          7

#define MAXPRIO 3

// Signal handler for SIGSEGV 
// add by mshadow
void segfault_handler(int sig) {
    exit(sig);  // Exit the program
}

FILE* file_name = NULL;

typedef struct _job {
    struct  _job *next, *prev; /* Next and Previous in job list. */
    int          val  ;         /* Id-value of program. */
    short        priority;     /* Its priority. */
} Ele, *Ele_Ptr;

typedef struct list		/* doubly linked list */
{
    Ele *first;
    Ele *last;
    int    mem_count;		/* member count */
} List;

Ele* new_ele(new_num) 
int new_num;
{
    fprintf(file_name,"P20,");	
    Ele *ele;
    ele =(Ele *)malloc(sizeof(Ele));
    ele->next = NULL;
    ele->prev = NULL;
    ele->val  = new_num;
    return ele;
}

List *new_list()
{
    fprintf(file_name,"P21,");
    List *list;
    list = (List *)malloc(sizeof(List));
    list->first = NULL;
    list->last  = NULL;
    list->mem_count = 0;
    return (list);
}

List *append_ele(a_list, a_ele)
List *a_list;
Ele  *a_ele;
{
    fprintf(file_name,"P22,");
    if (!a_list)
    {
        fprintf(file_name,"P23,");
        a_list = new_list();	/* make list without compare function */
    }

    a_ele->prev = a_list->last;	/* insert at the tail */
    fprintf(file_name,"P24,");
    if (a_list->last)
    {
        fprintf(file_name,"P25,");
        a_list->last->next = a_ele;
    }
    else
    {
        fprintf(file_name,"P26,");
        a_list->first = a_ele;
    }
    fprintf(file_name,"P27,");
    a_list->last = a_ele;
    a_ele->next = NULL;
    a_list->mem_count++;
    return (a_list);
}

Ele *find_nth(f_list, n)
List *f_list;
int   n;
{
    Ele *f_ele;
    int i;
    fprintf(file_name,"P28,");
    if (!f_list)
    {
        fprintf(file_name,"P29,");
        return NULL;
    }

    f_ele = f_list->first;
    fprintf(file_name,"P30,");
    for (i=1; f_ele && (i<n); i++)
    {
        fprintf(file_name,"P31,");
        f_ele = f_ele->next;
    }
    fprintf(file_name,"P32,");
    return f_ele;
}

List *del_ele(d_list, d_ele)
List *d_list;
Ele  *d_ele;
{
    fprintf(file_name,"P33,");
    if (!d_list || !d_ele)
    {
        fprintf(file_name,"P34,");
        return (NULL);
    }
    
    fprintf(file_name,"P35,");
    if (d_ele->next)
    {
        fprintf(file_name,"P36,");
        d_ele->next->prev = d_ele->prev;
    }
    else
    {
        fprintf(file_name,"P37,");
        d_list->last = d_ele->prev;
    }

    fprintf(file_name,"P38,");
    if (d_ele->prev)
    {
        fprintf(file_name,"P39,");
        d_ele->prev->next = d_ele->next;
    }
    else
    {
        fprintf(file_name,"P40,");
        d_list->first = d_ele->next;
    }
    fprintf(file_name,"P41,");
    /* KEEP d_ele's data & pointers intact!! */
    d_list->mem_count--;
    return (d_list);
}

void free_ele(ptr)
Ele *ptr;
{
    fprintf(file_name,"P42,");
    free(ptr);
}

int alloc_proc_num;
int num_processes;
Ele* cur_proc;
List *prio_queue[MAXPRIO+1]; 	/* 0th element unused */
List *block_queue;

void
finish_process()
{
    schedule();
    fprintf(file_name,"P43,");
    if (cur_proc)
    {
        fprintf(file_name,"P44,");
        fprintf(stdout, "%d ", cur_proc->val);
        free_ele(cur_proc);
        num_processes--;
    }
}

void
finish_all_processes()
{
    int i;
    int total;
    total = num_processes;
    fprintf(file_name,"P45,");
    for (i=0; i<total; i++)
    {
        fprintf(file_name,"P46,");
        finish_process();
    }
}

schedule()
{
    int i;
    cur_proc = NULL;
    fprintf(file_name,"P47,");
    for (i=MAXPRIO; i > 0; i--)
    {
        fprintf(file_name,"P48,");
        if (prio_queue[i]->mem_count > 0)
        {
            fprintf(file_name,"P49,");
            cur_proc = prio_queue[i]->first;
            prio_queue[i] = del_ele(prio_queue[i], cur_proc);
            return;
        }
    }
}

void
upgrade_process_prio(prio, ratio)
int prio;
float ratio;
{
    int count;
    int n;
    Ele *proc;
    List *src_queue, *dest_queue;
    fprintf(file_name,"P50,");
    if (prio >= MAXPRIO)
    {
        fprintf(file_name,"P51,");
        return;
    }
	    
    src_queue = prio_queue[prio];
    dest_queue = prio_queue[prio+1];
    count = src_queue->mem_count;

    fprintf(file_name,"P52,");
    if (count > 1) /* off by one */ 
    {
        n = (int) (count*ratio + 1);
        proc = find_nth(src_queue, n);
        fprintf(file_name,"P53,");
        if (proc) 
        {
            fprintf(file_name,"P54,");
            src_queue = del_ele(src_queue, proc);
            /* append to appropriate prio queue */
            proc->priority = prio;
            dest_queue = append_ele(dest_queue, proc);
        }
    }
}

void
unblock_process(ratio)
float ratio;
{
    int count;
    int n;
    Ele *proc;
    int prio;
    fprintf(file_name,"P55,");
    if (block_queue)
    {
        count = block_queue->mem_count;
        n = (int) (count*ratio + 1);
        proc = find_nth(block_queue, n);
        fprintf(file_name,"P56,");
        if (proc) 
        {
            fprintf(file_name,"P57,");
            block_queue = del_ele(block_queue, proc);
            /* append to appropriate prio queue */
            prio = proc->priority;
            prio_queue[prio] = append_ele(prio_queue[prio], proc);
        }
    }
}

void quantum_expire()
{
    int prio;
    schedule();
    fprintf(file_name,"P58,");
    if (cur_proc)
    {
        fprintf(file_name,"P59,");
        prio = cur_proc->priority;
        prio_queue[prio] = append_ele(prio_queue[prio], cur_proc);
    }	
}
	
void
block_process()
{
    schedule();
    fprintf(file_name,"P60,");
    if (cur_proc)
    {
        fprintf(file_name,"P61,");
	    block_queue = append_ele(block_queue, cur_proc);
    }
}

Ele * new_process(prio)
int prio;
{
    fprintf(file_name,"P62,");
    Ele *proc;
    proc = new_ele(alloc_proc_num++);
    proc->priority = prio;
    num_processes++;
    return proc;
}

void add_process(prio)
int prio;
{
    fprintf(file_name,"P63,");
    Ele *proc;
    proc = new_process(prio);
    prio_queue[prio] = append_ele(prio_queue[prio], proc);
}

void init_prio_queue(prio, num_proc)
int prio;
int num_proc;
{
    List *queue;
    Ele  *proc;
    int i;   
    queue = new_list();
    fprintf(file_name,"P64,");
    for (i=0; i<num_proc; i++)
    {
        fprintf(file_name,"P65,");
        proc = new_process(prio);
        queue = append_ele(queue, proc);
    }
    fprintf(file_name,"P66,");
    prio_queue[prio] = queue;
}

void initialize()
{
    fprintf(file_name,"P67,");
    alloc_proc_num = 0;
    num_processes = 0;
}
				
/* test driver */
main(argc, argv)
int argc;
char *argv[];
{
    signal(SIGSEGV, segfault_handler);
    file_name=fopen("v4.txt","a+"); 
    if(!file_name)
    {	
        printf("File could not be opened! \n");
        fclose(file_name);
        exit(0);
    }

    int command;
    int prio;
    float ratio;
    int status;

    fprintf(file_name,"\nP1,");
    if (argc < (MAXPRIO+1))
    {
        fprintf(file_name,"P2,");
        fprintf(stdout, "incorrect usage\n");
        return;
    }

    initialize();
    fprintf(file_name,"P3,");
    for (prio=MAXPRIO; prio >= 1; prio--)
    {
        fprintf(file_name,"P4,");
	    init_prio_queue(prio, atoi(argv[prio]));
    }

    fprintf(file_name,"P5,");
    for (status = fscanf(stdin, "%d", &command);
	 ((status!=EOF) && status);
	 status = fscanf(stdin, "%d", &command))
    {
        fprintf(file_name,"P6,");
        switch(command)
        {
            case FINISH:
                fprintf(file_name,"P7,");
                finish_process();
                break;
            case BLOCK:
                fprintf(file_name,"P8,");
                block_process();
                break;
            case QUANTUM_EXPIRE:
                fprintf(file_name,"P9,");
                quantum_expire();
                break;
            case UNBLOCK:
                fprintf(file_name,"P10,");
                fscanf(stdin, "%f", &ratio);
                unblock_process(ratio);
                break;
            case UPGRADE_PRIO:
                fscanf(stdin, "%d", &prio);
                fscanf(stdin, "%f", &ratio);
                fprintf(file_name,"P11,");
                if (prio > MAXPRIO || prio <= 0) 
                {
                    fprintf(file_name,"P12,");
                    fprintf(stdout, "** invalid priority\n");
                    return;
                }
                else
                {
                    fprintf(file_name,"P13,");
                    upgrade_process_prio(prio, ratio);
                }
                fprintf(file_name,"P14,");
                break;
            case NEW_JOB:
                fscanf(stdin, "%d", &prio);
                fprintf(file_name,"P15,");
                if (prio > MAXPRIO || prio <= 0) 
                {
                    fprintf(file_name,"P16,");
                    fprintf(stdout, "** invalid priority\n");
                    return;
                }
                else 
                {
                    fprintf(file_name,"P17,");
                    add_process(prio);
                }
                fprintf(file_name,"P18,");
                break;
            case FLUSH:
                fprintf(file_name,"P19,");
                finish_all_processes();
                break;
        }
    }
}