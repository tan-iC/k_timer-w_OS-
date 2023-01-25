#ifndef DEVICE_H_
#define DEVICE_H_

/*
 * 
 * External declaration of device operation functions
 *
 */

/*
 * LED connection bit
 */
#define LED1		(1<<0)	/* PA0 */
#define LED2		(1<<1)	/* PA1 */
#define LED3		(1<<2)	/* PA2 */
#define LED4		(1<<3)	/* PA3 */
#define LED_MASK	(LED1 | LED2 | LED3 | LED4)

#ifndef _MACRO_ONLY

/*
 *  Initialize LED connector port
 */ 
extern void _led_init(VP_INT exinf);

/*
 *  Write LED connector port
 */ 
extern void led_out(unsigned char led_data);

#endif /* _MACRO_ONLY */


/*
 * DIP switch connection bit
 */
#define DSW1		(1<<14)	/* PA14 */
#define DSW2		(1<<13)	/* PA13 */
#define DSW3		(1<<12)	/* PA12 */
#define DSW4		(1<<11)	/* PA11 */
#define DSW_MASK	(DSW1|DSW2|DSW3|DSW4)

#ifndef _MACRO_ONLY

/*
 * Initialize DIP switch connector port
 */
extern void switch_dip_init(VP_INT exinf);


/*
 * Read DIP switch state
 */
extern unsigned int switch_dip_sense(void);

#endif /* _MACRO_ONLY */


/*
 * PUSH switch connection bit
 */
#define PSW1		(1<<4)	/* PA4 */
#define PSW2		(1<<5)	/* PA5 */
#define PSW_MASK	(PSW1|PSW2)

#ifndef _MACRO_ONLY

/*
 * Initialize PUSH switch connector port
 */
extern void switch_push_init(VP_INT exinf);

/*
 * Read PUSH switch state
 */
extern unsigned int switch_push_sense(void);

#endif /* _MACRO_ONLY */


/*
 * Macro of LED and switch state
 */
#define ON              1     /* LED or switch ON state             */
#define OFF             0     /* LED or switch OFF state            */


#ifndef _MACRO_ONLY
/*
 * Separate setting and read functions for LED and switch
 */
extern void set_led1_state(unsigned char state);
extern void set_led2_state(unsigned char state);
extern void set_led3_state(unsigned char state);
extern void set_led4_state(unsigned char state);
extern unsigned char get_dsw1_state(void);
extern unsigned char get_dsw2_state(void);
extern unsigned char get_dsw3_state(void);
extern unsigned char get_dsw4_state(void);
extern unsigned char get_psw1_state(void);
extern unsigned char get_psw2_state(void);
#endif /* _MACRO_ONLY */

/*
 *  Vector number of I/O interrupt handler
 */
#define SW_INHNO  IRQ_PIOA_PID

#endif /*DEVICE_H_*/
