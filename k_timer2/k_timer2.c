/*
 *  Communication with event flags between two tasks 
 *
 */ 
#include <t_services.h>
#include "kernel_id.h"
#include "device.h"
#include "k_timer2.h"

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

void flgptn2led_data(FLGPTN);


/* LED delay time */
#define  LED1_DELAY	1000
#define  LED4_DELAY	250

/* state */
#define  OFF_STATE		0
#define  ACTIVE_STATE	1
#define  EXPIRED_STATE	2

/* LED process */
void led1_process();
void led4_process();
// void led2_process();


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

void flgptn2led_data(FLGPTN flgptn){
	
	if ((flgptn & SW1_ON) == SW1_ON){
		led_data |= LED1;
	}
	if ((flgptn & SW2_ON) == SW2_ON){
		led_data |= LED2;
	}
	if ((flgptn & SW3_ON) == SW3_ON){
		led_data |= LED3;
	}
	if ((flgptn & SW4_ON) == SW4_ON){
		led_data |= LED4;
	}
	if ((flgptn & SW1_OFF) == SW1_OFF){
		led_data &= ~LED1;
	}
	if ((flgptn & SW2_OFF) == SW2_OFF){
		led_data &= ~LED2;
	}
	if ((flgptn & SW3_OFF) == SW3_OFF){
		led_data &= ~LED3;
	}
	if ((flgptn & SW4_OFF) == SW4_OFF){
		led_data &= ~LED4;
	}
}

/*
 * LED1
 */
void
led1_process(){
    for (;;) {

        led_data &= ~LED1;
        led_out(led_data);
        dly_tsk(LED1_DELAY);
        
        led_data |=  LED1;
        led_out(led_data);
        dly_tsk(LED1_DELAY);
    }
}

/*
 * LED4
 */
void
led4_process(){
    for (;;) {

        led_data &= ~LED4;
        led_out(led_data);
        dly_tsk(LED4_DELAY);
        
        led_data |=  LED4;
        led_out(led_data);
        dly_tsk(LED4_DELAY);
    }
}

/*
 * LED light-up task
 */ 
void
led_task(VP_INT exinf){
    FLGPTN   flgptn;
    
    for (;;) {
		
		/* Wait for flags and set LEDs */
		if (exinf == 0){
			/* sw_flg_tsk */


			/* flag */
			wai_flg(SW_FLG, SW_EV_MASK, TWF_ORW, &flgptn);
			
			/* flgptn -> led_data */
			flgptn2led_data(flgptn);
		}
		else if(exinf == 1){
			/* led1_task */

			/* */
			led1_process();

		}
		else if(exinf == 4){
			/* led4_task */

			/* */
			led4_process();

		}
		led_out(led_data);
    }
}



/*
 *  Switch status read task
 */ 
void
sw_task(VP_INT exinf){
    FLGPTN   flgptn;
	unsigned int tmp;

	for (;;) {
		flgptn = 0;
		tmp = switch_dip_sense();
		if ((sw_state & DSW1) != (tmp & DSW1)){
			if((tmp & DSW1) == DSW1){
			flgptn |= SW1_ON;
			}
			else{
			flgptn |= SW1_OFF;
			}
		}
		if ((sw_state & DSW2) != (tmp & DSW2)){
			if((tmp & DSW2) == DSW2){
			flgptn |= SW2_ON;
			}
			else{
			flgptn |= SW2_OFF;
			}
		}
		if ((sw_state & DSW3) != (tmp & DSW3)){
			if((tmp & DSW3) == DSW3){
			flgptn |= SW3_ON;
			}
			else{
			flgptn |= SW3_OFF;
			}
		}
		if ((sw_state & DSW4) != (tmp & DSW4)){
			if((tmp & DSW4) == DSW4){
			flgptn |= SW4_ON;
			}
			else{
			flgptn |= SW4_OFF;
			}
		}

		if (flgptn != 0) {
			/* flag */
			set_flg(SW_FLG, flgptn);
			sw_state = tmp;
		}
		dly_tsk(SW_SCAN_INTERVAL);
	}    
}


/*
 * Cyclic handler (with DEFAULT_PRIORITY queue)
 */ 
void
rot_cyc_handler(void){
    irot_rdq(DEFAULT_PRIORITY);
}
