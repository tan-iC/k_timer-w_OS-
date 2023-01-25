#include <sil.h>
#include "device.h"
#include "at91sam7s.h"
/*
 * LED connector port
 */
/*
 * Initialize LED connector port
 */ 
void
led_init(VP_INT exinf){

	/* PIO Enable Register */
	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_PER), LED_MASK);
    
	/* Output Enable Register */
	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_OER), LED_MASK);

    /* Initial state is lights off */
	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_CODR), LED_MASK);
}


/*
 *  Write LED connector port
 */ 
void
led_out(unsigned char led_data){
	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_CODR), LED_MASK);
	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_SODR), led_data & LED_MASK);
}


/*
 * DIP switch connector port
*/
/*
 * Initialize DIP switch connector port
 */
void
switch_dip_init(VP_INT exinf){

	/* Enable PIO Clocks. */
	sil_wrw_lem((VP)(TADR_PMC_BASE+TOFF_PMC_PCER), (1<<IRQ_PIOA_PID));

    /* Set to input port */
	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_ODR), DSW_MASK);

	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_PER), DSW_MASK);
}


/*
 * Read DIP switch state
 */
unsigned int
switch_dip_sense(void){
    return ((~sil_rew_mem((VP)(TADR_PIO_BASE+TOFF_PIO_PDSR)) & DSW_MASK));
}


/*
 * PUSH switch connector port
 */
/*
 * Initialize PUSH switch connector port
 */
void
switch_push_init(VP_INT exinf){

	/* Enable PIO Clocks. */
	sil_wrw_lem((VP)(TADR_PMC_BASE+TOFF_PMC_PCER), (1<<IRQ_PIOA_PID));

    /* Set to input port */
	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_ODR), PSW_MASK);

	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_PER), PSW_MASK);

	sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_IER), PSW_MASK);
}


/*
 * Read PUSH switch state
 */
unsigned int
switch_push_sense(void){
	return ((~sil_rew_mem((VP)(TADR_PIO_BASE+TOFF_PIO_PDSR)) & PSW_MASK));
}

/*
 * Separate setting and read functions for LED and switch
 */

/*
 *  LED1 light up control
 */
void 
set_led1_state(unsigned char state){     
	if (state == ON) {
		sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_SODR), LED1);
	} else {
		sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_CODR), LED1);
	}
}


/*
 *  LED2 light up control
 */
void 
set_led2_state(unsigned char state){
	if (state == ON) {
		sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_SODR), LED2);
	} else {
		sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_CODR), LED2);
	}
}


/*
 *  LED3 light up control
 */
void 
set_led3_state(unsigned char state){
	if (state == ON) {
		sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_SODR), LED3);
	} else {
		sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_CODR), LED3);
	}
}


/*
 *  LED4 light up control
 */
void 
set_led4_state(unsigned char state){
	if (state == ON) {
		sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_SODR), LED4);
	} else {
		sil_wrw_lem((VP)(TADR_PIO_BASE+TOFF_PIO_CODR), LED4);
	}
}


/*
 *  Get DIP SW1 state
 */
unsigned char
get_dsw1_state(void){
    return ((switch_dip_sense() & DSW1) == DSW1)? ON : OFF;
}


/*
 *  Get DIP SW2 state
 */
unsigned char
get_dsw2_state(void){
    return ((switch_dip_sense() & DSW2) == DSW2)? ON : OFF;
}


/*
 *  Get DIP SW3 state
 */
unsigned char
get_dsw3_state(void){
    return ((switch_dip_sense() & DSW3) == DSW3)? ON : OFF;
}


/*
 *  Get DIP SW4 state
 */
unsigned char
get_dsw4_state(void){
    return ((switch_dip_sense() & DSW4) == DSW4)? ON : OFF;
}


/*
 *  Get PUSH SW1 state
 */
unsigned char
get_psw1_state(void){
    return ((switch_push_sense() & PSW1) == PSW1)? ON : OFF;
}


/*
 *  Get PUSH SW2 state
 */
unsigned char
get_psw2_state(void){
    return ((switch_push_sense() & PSW2) == PSW2)? ON : OFF;
}
