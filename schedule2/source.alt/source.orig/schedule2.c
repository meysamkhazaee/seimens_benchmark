#include <stdio.h>
#include "schedule2.h"

FILE* file_name = NULL;

static struct process * current_job;
static int next_pid = 0;

int
enqueue(prio, new_process)
int prio;
struct process *new_process;
{
    int status;
    fprintf(file_name,"P14,");
    if(status = put_end(prio, new_process)) 
    {
        fprintf(file_name,"P15,");
        return(status); /* Error */
    }
    fprintf(file_name,"P16,");
    return(reschedule(prio));
}

struct queue
{
    int length;
    struct process *head;
};

static struct queue prio_queue[MAXPRIO + 1]; /* blocked queue is [0] */

main(argc, argv) /* n3, n2, n1 : # of processes at prio3 ... */
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
    int command, prio;
    float ratio;
    int nprocs, status, pid;
    struct process *process;
    if(argc != MAXPRIO + 1)
    {
        fprintf(file_name,"P2,");
        exit_here(BADNOARGS);
    }
    fprintf(file_name,"P3,");
    for(prio = MAXPRIO; prio > 0; prio--)
    {
        fprintf(file_name,"P4,");
        if((nprocs = atoi(argv[MAXPRIO + 1 - prio])) < 0)
        {
            fprintf(file_name,"P5,");
            exit_here(BADARG);
        }
        fprintf(file_name,"P6,"); 
        for(; nprocs > 0; nprocs--)
        {
            fprintf(file_name,"P7,");
            if(status = new_job(prio))
            {
                fprintf(file_name,"P8,");
                exit_here(status);
            } 
        }
    }
    /* while there are commands, schedule it */
    fprintf(file_name,"P9,");
    while((status = get_command(&command, &prio, &ratio)) > 0)
    {
        fprintf(file_name,"P10,");
	    schedule(command, prio, ratio);
    }
    fprintf(file_name,"P11,");
    if(status < 0)
    {
        fprintf(file_name,"P12,");
        exit_here(status); /* Real bad error */
    }
    fprintf(file_name,"P13,"); 
    exit_here(OK);
}

int 
get_command(command, prio, ratio)
int *command, *prio;
float *ratio;
{
    int status = OK;
    char buf[CMDSIZE];
    fprintf(file_name,"P17,");
    if(fgets(buf, CMDSIZE, stdin))
    {
        *prio = *command = -1; *ratio =-1.0;
        sscanf(buf, "%d", command);
        fprintf(file_name,"P18,");
        switch(*command)
        {
            case NEW_JOB :
                fprintf(file_name,"P19,");
                sscanf(buf, "%*s%d", prio);
                break;
            case UNBLOCK :
                fprintf(file_name,"P20,");
                sscanf(buf, "%*s%f", ratio);
                break;
            case UPGRADE_PRIO :
                fprintf(file_name,"P21,");
                sscanf(buf, "%*s%d%f", prio, ratio);
                break;
        }
	 /* Find end of  line of input if no EOF */
        fprintf(file_name,"P22,");
	    while(buf[strlen(buf)-1] != '\n' && fgets(buf, CMDSIZE, stdin));
        fprintf(file_name,"P23,");
	    return(TRUE);
    }
    else
    {
        fprintf(file_name,"P24,");
        return(FALSE);
    } 
}

exit_here(status)
int status;
{
    fprintf(file_name,"P25,");
    exit(abs(status));
}


int 
new_job(prio) /* allocate new pid and process block. Stick at end */
int prio;
{
    fprintf(file_name,"P26,");
    int pid, status = OK;
    struct process *new_process;
    pid = next_pid++;
    new_process = (struct process *) malloc(sizeof(struct process));
    if(!new_process)
    {
        fprintf(file_name,"P27,");
        status = MALLOC_ERR;
    } 
    else
    {
        fprintf(file_name,"P28,");
        new_process->pid = pid;
        new_process->priority = prio;
        new_process->next = (struct process *) 0;
        status = enqueue(prio, new_process);
        if(status)
        {
            fprintf(file_name,"P29,");
            free(new_process); /* Return process block */
        }
    }
    fprintf(file_name,"P30,");
    if(status)
    {
        fprintf(file_name,"P31,");
        next_pid--; /* Unsuccess. Restore pid */
    }
    fprintf(file_name,"P32,"); 
    return(status);
}

int upgrade_prio(prio, ratio) /* increment priority at ratio in queue */
int prio;
float ratio;
{
    int status;
    struct process * job;
    fprintf(file_name,"P33,");
    if(prio < 1 || prio > MAXLOPRIO)
    {
        fprintf(file_name,"P34,");
        return(BADPRIO);
    }
    fprintf(file_name,"P35,"); 
    if((status = get_process(prio, ratio, &job)) <= 0) 
    {
        fprintf(file_name,"P36,");
        return(status);
    }
    fprintf(file_name,"P37,");
    /* We found a job in that queue. Upgrade it */
    job->priority = prio + 1;
    return(enqueue(prio + 1, job));
}

int
block() /* Put current job in blocked queue */
{
    fprintf(file_name,"P38,");
    struct process * job;
    job = get_current();
    if(job)
    {
        fprintf(file_name,"P39,");
        current_job = (struct process *)0; /* remove it */
        return(enqueue(BLOCKPRIO, job)); /* put into blocked queue */
    }
    fprintf(file_name,"P40,");
    return(OK);
}

int
unblock(ratio) /* Restore job @ ratio in blocked queue to its queue */
float ratio;
{
    fprintf(file_name,"P41,");
    int status;
    struct process * job;
    if((status = get_process(BLOCKPRIO, ratio, &job)) <= 0)
    {
        fprintf(file_name,"P42,");
        return(status);
    } 
    fprintf(file_name,"P43,");
    /* We found a blocked process. Put it where it belongs. */
    return(enqueue(job->priority, job));
}

int
quantum_expire() /* put current job at end of its queue */
{
    fprintf(file_name,"P44,");
    struct process * job;
    job = get_current();
    if(job)
    {
        fprintf(file_name,"P45,");
        current_job = (struct process *)0; /* remove it */
        return(enqueue(job->priority, job));
    }
    fprintf(file_name,"P46,");
    return(OK);
}

int
finish() /* Get current job, print it, and zap it. */
{
    fprintf(file_name,"P47,");
    struct process * job;
    job = get_current();
    if(job)
    {
        fprintf(file_name,"P48,");
        current_job = (struct process *)0;
        reschedule(0);
        fprintf(stdout, " %d", job->pid);
        free(job);
        return(FALSE);
    }
    else
    {
        fprintf(file_name,"P49,");
        return(TRUE);
    } 
}

int
flush() /* Get all jobs in priority queues & zap them */
{
    fprintf(file_name,"P50,");
    while(!finish());
    fprintf(file_name,"P51,");
    fprintf(stdout, "\n");
    return(OK);
}

struct process * 
get_current() /* If no current process, get it. Return it */
{
    int prio;
    fprintf(file_name,"P52,");
    if(!current_job)
    {
        fprintf(file_name,"P53,");
        for(prio = MAXPRIO; prio > 0; prio--)
        { /* find head of highest queue with a process */
            fprintf(file_name,"P54,");
            if(get_process(prio, 0.0, &current_job) > 0)
            {
                fprintf(file_name,"P55,");
                break;
            } 
        }
    }
    fprintf(file_name,"P56,");
    return(current_job);
}

int
reschedule(prio) /* Put highest priority job into current_job */
int prio;
{
    fprintf(file_name,"P57,");
    if(current_job && prio > current_job->priority)
    {
        fprintf(file_name,"P58,");
        put_end(current_job->priority, current_job);
        current_job = (struct process *)0;
    }
    fprintf(file_name,"P59,");
    get_current(); /* Reschedule */
    return(OK);
}

int 
schedule(command, prio, ratio)
int command, prio;
float ratio;
{
    fprintf(file_name,"P60,");
    int status = OK;
    switch(command)
    {
        case NEW_JOB :
            fprintf(file_name,"P61,");
            status = new_job(prio);
            break;
        case QUANTUM_EXPIRE :
            fprintf(file_name,"P62,");
            status = quantum_expire();
            break;
        case UPGRADE_PRIO :
            fprintf(file_name,"P63,");
            status = upgrade_prio(prio, ratio);
            break;
        case BLOCK :
            fprintf(file_name,"P64,");
            status = block();
            break;
        case UNBLOCK :
            fprintf(file_name,"P65,");
            status = unblock(ratio);
            break;
        case FINISH :
            fprintf(file_name,"P66,");
            finish();
            fprintf(stdout, "\n");
            break;
        case FLUSH :
            fprintf(file_name,"P67,");
            status = flush();
            break;
        default:
            fprintf(file_name,"P68,");
            status = NO_COMMAND;
    }
    fprintf(file_name,"P69,");
    return(status);
}


int 
put_end(prio, process) /* Put process at end of queue */
int prio;
struct process *process;
{
    fprintf(file_name,"P70,");
    struct process **next;
    if(prio > MAXPRIO || prio < 0)
    {
        fprintf(file_name,"P71,");
        return(BADPRIO); /* Somebody goofed */
    } 
     /* find end of queue */
    fprintf(file_name,"P72,");
    for(next = &prio_queue[prio].head; *next; next = &(*next)->next);
    fprintf(file_name,"P73,");
    *next = process;
    prio_queue[prio].length++;
    return(OK);
}

int 
get_process(prio, ratio, job)
int prio;
float ratio;
struct process ** job;
{
    fprintf(file_name,"P74,");
    int length, index;
    struct process **next;
    if(prio > MAXPRIO || prio < 0)
    {
        fprintf(file_name,"P75,");
        return(BADPRIO); /* Somebody goofed */
    } 
    fprintf(file_name,"P76,");
    if(ratio < 0.0 || ratio > 1.0)
    {
        fprintf(file_name,"P77,");
        return(BADRATIO); /* Somebody else goofed */
    }
    fprintf(file_name,"P78,"); 
    length = prio_queue[prio].length;
    index = ratio * length;
    index = index >= length ? length -1 : index; /* If ratio == 1.0 */
    for(next = &prio_queue[prio].head; index && *next; index--)
    {
        fprintf(file_name,"P79,");
        next = &(*next)->next; /* Count up to it */
    }
    fprintf(file_name,"P80,");
    *job = *next;
    if(*job)
    {
        fprintf(file_name,"P81,");
        *next = (*next)->next; /* Mend the chain */
        (*job)->next = (struct process *) 0; /* break this link */
        prio_queue[prio].length--;
	    return(TRUE);
    }
    else
    {
        fprintf(file_name,"P82,");
        return(FALSE);
    } 
}
