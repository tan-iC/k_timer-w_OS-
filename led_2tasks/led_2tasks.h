/*
 *  LED light-up program via two tasks
 *
 */

#define STACK_SIZE         386  /* Task stack size */
#define DEFAULT_PRIORITY     8  /* Task priority */
  
#ifndef _MACRO_ONLY
extern void led1_task(VP_INT exinf);
extern void led3_task(VP_INT exinf);
//
//
//
extern void led_init(VP_INT exinf);
extern void led_task(VP_INT exinf);
//
//
//
#endif /* _MACRO_ONLY */
