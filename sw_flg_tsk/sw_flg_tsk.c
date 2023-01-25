/*
 *  Communication with event flags between two tasks 
 *
 */ 
#include <t_services.h>
#include "kernel_id.h"
#include "device.h"
#include "sw_flg_tsk.h"

/*
 * Bit assignment for events
 */ 
#define  SW1_ON      0x01
#define  SW1_OFF     0x02
#define  SW2_ON      0x04
#define  SW2_OFF     0x08
#define  SW3_ON      0x10
#define  SW3_OFF     0x20
#define  SW4_ON      0x40
#define  SW4_OFF     0x80
#define  SW_EV_MASK  0xff 


unsigned char led_data;
unsigned int sw_state;


/*
 * Initialization routine
 */ 
void
state_init(VP_INT exinf){
    led_data = 0;   
    sw_state = switch_dip_sense();
    
    if((sw_state & DSW1) == DSW1){
        led_data |= LED1;
    }
    if((sw_state & DSW2) == DSW2){
        led_data |= LED2;
    }
    if((sw_state & DSW3) == DSW3){
        led_data |= LED3;
    }
    if((sw_state & DSW4) == DSW4){
        led_data |= LED4;
    }    
    
    led_out(led_data);
}


/*
 * LED light-up task
 */ 
void
led_task(VP_INT exinf){
    FLGPTN   flgptn;
    
    for (;;) {
		
		/* Need to write your code */
		/* Wait for flags and set LEDs */

    }
}


/*
 *  Switch status read task
 */ 
void
sw_task(VP_INT exinf){
    FLGPTN   flgptn;

    for (;;) {

		/* Need to write your code */
		/* Read switch status and set flags */

        dly_tsk(SW_SCAN_INTERVAL);
    }
    
}
