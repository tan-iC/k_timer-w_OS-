/*
 *  LED light-up program via two tasks
 *
 */

#include <t_services.h>
#include "kernel_id.h"
#include "device.h"

#define DELAY_LOOP 0x80000L

#define DELAY_LED1 1000
#define DELAY_LED3 250


/*
 * Busy loop function
 */ 
void
busy_wait(void){
    long i;
    for(i = 0; i < DELAY_LOOP; i++);    
}

unsigned char led_data= 0;

///*
// * LED1 light on/off task
// */ 
//void
//led1_task(VP_INT exinf){
//    
//    led_init(0);
//	unsigned int dly = 1000;
//    for (;;) {
//        led_data &= ~LED1;
//        led_out(led_data);
////        busy_wait();
//		dly_tsk(dly);
//        
//        led_data |= LED1;
//        led_out(led_data);
////        busy_wait();
//		dly_tsk(dly);
//    }
//}
//
///*
// * LED3 light on/off task
// */ 
//void
//led3_task(VP_INT exinf){
//    unsigned int dly = 250;
//    for (;;) {
//        led_data &= ~LED3;
//        led_out(led_data);
////        busy_wait();
//        dly_tsk(dly);
//        led_data |=  LED3;
//        led_out(led_data);
////        busy_wait();
//		dly_tsk(dly);
//    }
//}

/*
 * LED light on/off task
 */ 
void
led_task(VP_INT exinf){
    unsigned int led_bit;
    unsigned int dly;
    
    // exinf = 0 -> led1
    if (exinf == 0){
    	led_bit = LED1;
    	dly = DELAY_LED1;
    }
    // exinf = 1 -> led3
    else {
    	led_bit = LED3;
    	dly = DELAY_LED3;
    }
    
    for (;;) {
        led_data &= ~led_bit;
        led_out(led_data);
        dly_tsk(dly);
        
        led_data |=  led_bit;
        led_out(led_data);
        dly_tsk(dly);
    }
}
