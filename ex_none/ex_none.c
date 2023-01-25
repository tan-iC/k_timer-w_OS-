/*
 * Without Exclusive Access Control
 */

#include <t_services.h>
#include "kernel_id.h"
#include "ex_none.h"

#define DELAY_LOOP 0x400000L

/*
 * Busy wait function
 */ 
void
busy_wait(void){
    long i;
    for(i = 0; i < DELAY_LOOP; i++);    
}

/*
 * Common variable
 */
int count = 0;

/*
 * Output task
 */ 
void
task(VP_INT exinf){	
    int local_count = 0;

    for (;;) {
    	
    	wai_sem(SID1);
        
        
        syslog_3(LOG_NOTICE, "Task %d : count = %d, local_count = %d", exinf, count++, local_count++);
        busy_wait();
        syslog_3(LOG_NOTICE, "Task %d : count = %d, local_count = %d", exinf, count++, local_count++);
        busy_wait();
        syslog_3(LOG_NOTICE, "Task %d : count = %d, local_count = %d", exinf, count++, local_count++);
		busy_wait();
		
		sig_sem(SID1);
		
		
    }
}

/*
 * Cyclic handler (with DEFAULT_PRIORITY queue)
 */ 
void
rot_cyc_handler(void){
    irot_rdq(DEFAULT_PRIORITY);
}
