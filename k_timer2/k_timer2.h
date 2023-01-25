#define STACK_SIZE       386  /* Task Stack Size */
#define DEFAULT_PRIORITY   8  /* Task Priority */
#define CPUEXC1		4		/* Load Error Execution */
#define RAISE_CPU_EXCEPTION	(*((volatile int *) 0xFFFFFEC1))

#define SW_SCAN_INTERVAL 10


/* additional */
#define ROT_INTERVAL 1


#ifndef _MACRO_ONLY
extern void led_task(VP_INT exinf);
extern void sw_task(VP_INT exinf);
extern void sw_cyc_handler(void);
extern void state_init(VP_INT exinf);

/* additional */
extern void timer_task(VP_INT exinf);
extern void state_task(VP_INT exinf);
void rot_cyc_handler(void);

#endif /* _MACRO_ONLY */
