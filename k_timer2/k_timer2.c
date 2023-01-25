/*
 *  Communication with event flags between two tasks 
 *
 */ 
#include <t_services.h>
#include "kernel_id.h"
#include "device.h"
#include "k_timer2.h"

/*
 * switch
 */
/* Bit assignment for events */ 
#define  DSW1_ON	0x01
#define  DSW1_OFF	0x02
#define  PSW1_ON	0x04
#define  PSW1_OFF	0x08
#define  SW_EV_MASK	0xff 

/* switch state */
unsigned int dsw_state;
unsigned int psw_state;

/*
 * LED
 */
/* time about LED */
#define  LED1_DELAY	1000
#define  LED4_DELAY	250
#define  LED4_INTERVAL	2000

/* count of LED4 blink */
#define  BLINK_ACTIVE	4
#define  BLINK_EXPIRED	60

/* LED state data */
unsigned char led_data;

/* LED process */
void led1_process();
void led2_process();
void led4_process();

/*
 * timer
 */
/* state (3 types) */
#define  OFF_STATE		0
#define  ACTIVE_STATE	1
#define  EXPIRED_STATE	2
unsigned char timer_state = 0;

/* time */
#define	TIMER_INTERVAL	1000
#define BASE_TIME		10
unsigned long time_left = 0;
void timer_process();




/*
 * Initialization routine
 */ 
void
state_init(VP_INT exinf){
    led_data = 0;   
    dsw_state = switch_dip_sense();
    
    if((dsw_state & DSW1) == DSW1){
        led_data |= LED1;
    }
    if((dsw_state & DSW2) == DSW2){
        led_data |= LED2;
    }
    if((dsw_state & DSW3) == DSW3){
        led_data |= LED3;
    }
    if((dsw_state & DSW4) == DSW4){
        led_data |= LED4;
    }    
    
    led_out(led_data);
}


/*
 * LED1
 */
void
led1_process(){
    for (;;) {
        led_data |=  LED1;
        led_out(led_data);
        dly_tsk(LED1_DELAY);

        led_data &= ~LED1;
        led_out(led_data);
        dly_tsk(LED1_DELAY);        
    }
}

/*
 * LED2
 */
void
led2_process(){
	/* LED2 */
	if (timer_state == ACTIVE_STATE){
		if ((led_data & LED2) != LED2){
			/* LED2 : OFF -> ON */
			led_data |= LED2;
			led_out(led_data);
		}
		else{
			/* LED2 : ON -> OFF */
			led_data &= ~LED2;
			led_out(led_data);			
		}
	}
}

/*
 * LED4
 */
void led4_blink(unsigned int cnt){
	/* blink LED4 ${cnt} times */
	unsigned int i;
	for(i = 0; i < cnt; i++){
        led_data |=  LED4;
        led_out(led_data);
        dly_tsk(LED4_DELAY);
		led_data &= ~LED4;
		led_out(led_data);
		dly_tsk(LED4_DELAY);
	}
}


void
led4_process(){
    for (;;) {
		if (timer_state == ACTIVE_STATE){
			/* blink (ACTIVE_STATE) */
			led4_blink(BLINK_ACTIVE/2);
			dly_tsk(LED4_INTERVAL);
		}
		else if (timer_state == EXPIRED_STATE){
			/* blink (EXPIRED_STATE) */
			led4_blink(BLINK_EXPIRED/2);
			timer_state = OFF_STATE;
		}
    }
}


/*
 * led_task : LED1_TASK, LED4_TASK
 * (LED light-up task)
 */ 
void
led_task(VP_INT exinf){
    
    for (;;) {
		if(exinf == (VP_INT) 1){
			/* led1_task */
			led1_process();
		}
		else if(exinf == (VP_INT) 4){
			/* led4_task */
			led4_process();
		}
		led_out(led_data);
    }
}



/*
 * sw_task : SW_TASK
 * (Switch status read task)
 */ 
void
sw_task(VP_INT exinf){
    FLGPTN   flgptn;
	unsigned int tmp_dsw;
	unsigned int tmp_psw;

	for (;;) {
		flgptn = 0;

		/* DSW */
		tmp_dsw = switch_dip_sense();
		if ((dsw_state & DSW1) != (tmp_dsw & DSW1)){
			if((tmp_dsw & DSW1) == DSW1){
				flgptn |= DSW1_ON;
			}
			else{
				flgptn |= DSW1_OFF;
			}
		}

		/* PSW */
		tmp_psw = switch_push_sense();
		if ((psw_state & PSW1) != (tmp_psw & PSW1)){
			if((tmp_psw & PSW1) == PSW1){
				flgptn |= PSW1_ON;
			}
			else{
				flgptn |= PSW1_OFF;
			}
		}

		if (flgptn != 0) {
			dsw_state = tmp_dsw;
			psw_state = tmp_psw;

			/* flag */
			set_flg(SW_FLG, flgptn);			
		}
		dly_tsk(SW_SCAN_INTERVAL);
	}
}


/*
 * timer process
 */
void
timer_process(){
	/* timer */
	if (time_left > 0){
		time_left -= TIMER_INTERVAL;
		if (time_left == 0){
			timer_state = EXPIRED_STATE;
		}
	}
}

/*
 * timer task : TIMER_TASK
 * (ONLY ACTIVE_STATE)
 */
void
timer_task(VP_INT exinf){
	for (;;){
		if (timer_state == ACTIVE_STATE){
			timer_process();
			dly_tsk(TIMER_INTERVAL);
		}
	}
}

/*
 * state task : STATE_TASK
 * (receive SW_FLG, then work)
 */
void
state_task(VP_INT exinf){
	/* control timer state */
    FLGPTN   flgptn;
    
    for (;;) {
		/* flag */
		wai_flg(SW_FLG, SW_EV_MASK, TWF_ORW, &flgptn);

		/* DSW1 */
		if ((flgptn & DSW1_ON) == DSW1_ON){
			/* DSW1 : OFF -> ON */
			if (timer_state == OFF_STATE){
				/* OFF_STATE -> ACTIVE_STATE */
				timer_state = ACTIVE_STATE;
				time_left = BASE_TIME * TIMER_INTERVAL;
			}
		}
		else if ((flgptn & DSW1_OFF) == DSW1_OFF){
			/* DSW1 : ON -> OFF*/
			if (timer_state == ACTIVE_STATE){
				/* ACTIVE_STATE -> OFF_STATE */
				timer_state = OFF_STATE;
				time_left = 0;
			}
		}

		/* PSW1 */
		if ((flgptn & PSW1_ON) == PSW1_ON){
			/* PSW1 : OFF -> ON */
			led2_process();
		}
		else if ((flgptn & PSW1_OFF) == PSW1_OFF){
			/* PSW1 : ON -> OFF*/
			led2_process();
			time_left += BASE_TIME * TIMER_INTERVAL;
		}
    }
}

/*
 * Cyclic handler (with DEFAULT_PRIORITY queue)
 */ 
void
rot_cyc_handler(void){
    irot_rdq(DEFAULT_PRIORITY);
}
