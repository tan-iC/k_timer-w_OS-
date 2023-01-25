/* Configured with [-s tmpfile1 -c -obj -cpu armv4 -system at91sam7s ] */

#include "kernel_cfg.h"
#include "kernel_id.h"

#if TKERNEL_PRVER >= 0x1040
#define CFG_INTHDR_ENTRY(inthdr) INTHDR_ENTRY(inthdr)
#define CFG_EXCHDR_ENTRY(exchdr) EXCHDR_ENTRY(exchdr)
#define CFG_INT_ENTRY(inthdr) INT_ENTRY(inthdr)
#define CFG_EXC_ENTRY(exchdr) EXC_ENTRY(exchdr)
#else
#error "This configuration file has no compatibility with TOPPERS/JSP rel 1.3 or earlier."
#endif

#ifndef __EMPTY_LABEL
#define __EMPTY_LABEL(x,y) x y[0]
#endif

#if TKERNEL_PRID != 0x0001u /* TOPPERS/JSP */
#error "You can not use this configuration file without TOPPERS/JSP"
#endif

	/* User specified include files*/
#include "k_timer2.h"
#include "device.h"
#include "hw_timer.h"
#include "timer.h"
#include "hw_serial.h"
#include "serial.h"
#include "logtask.h"
#include "monitor.h"


	/* Object initializer [task] */

#define TNUM_TSKID 6

const ID _kernel_tmax_tskid = (TMIN_TSKID + TNUM_TSKID - 1);

static __STK_UNIT __stack_LED_TASK[__TCOUNT_STK_UNIT(386)];
static __STK_UNIT __stack_SW_TASK[__TCOUNT_STK_UNIT(386)];
static __STK_UNIT __stack_LED1_TASK[__TCOUNT_STK_UNIT(386)];
static __STK_UNIT __stack_LED4_TASK[__TCOUNT_STK_UNIT(386)];
static __STK_UNIT __stack_LOGTASK[__TCOUNT_STK_UNIT(LOGTASK_STACK_SIZE)];
static __STK_UNIT __stack_MONTASK[__TCOUNT_STK_UNIT(MONITOR_STACK_SIZE)];

const TINIB _kernel_tinib_table[TNUM_TSKID] = {
	{TA_HLNG | TA_ACT, (VP_INT)(( VP_INT ) 0), (FP)(led_task), INT_PRIORITY(8), __TROUND_STK_UNIT(386), __stack_LED_TASK, TA_NULL, (FP)(NULL)},
	{TA_HLNG | TA_ACT, (VP_INT)(( VP_INT ) 0), (FP)(sw_task), INT_PRIORITY(8), __TROUND_STK_UNIT(386), __stack_SW_TASK, TA_NULL, (FP)(NULL)},
	{TA_HLNG | TA_ACT, (VP_INT)(( VP_INT ) 1), (FP)(led_task), INT_PRIORITY(8), __TROUND_STK_UNIT(386), __stack_LED1_TASK, TA_NULL, (FP)(NULL)},
	{TA_HLNG | TA_ACT, (VP_INT)(( VP_INT ) 4), (FP)(led_task), INT_PRIORITY(8), __TROUND_STK_UNIT(386), __stack_LED4_TASK, TA_NULL, (FP)(NULL)},
	{TA_HLNG | TA_ACT, (VP_INT)(( VP_INT ) 1), (FP)(logtask), INT_PRIORITY(LOGTASK_PRIORITY), __TROUND_STK_UNIT(LOGTASK_STACK_SIZE), __stack_LOGTASK, TA_NULL, (FP)(NULL)},
	{TA_HLNG | TA_ACT, (VP_INT)(( VP_INT ) MONITOR_PORTID), (FP)(monitor), INT_PRIORITY(MONITOR_PRIORITY), __TROUND_STK_UNIT(MONITOR_STACK_SIZE), __stack_MONTASK, TA_NULL, (FP)(NULL)}
};

const ID _kernel_torder_table[TNUM_TSKID] = {1,2,3,4,5,6};

TCB _kernel_tcb_table[TNUM_TSKID];


	/* Object initializer [semaphore] */

#define TNUM_SEMID 5

const ID _kernel_tmax_semid = (TMIN_SEMID + TNUM_SEMID - 1);

const SEMINIB _kernel_seminib_table[TNUM_SEMID] = {
	{TA_TFIFO, 1, 1},
	{TA_TPRI, 0, 1},
	{TA_TPRI, 1, 1},
	{TA_TPRI, 0, 1},
	{TA_TPRI, 1, 1}
};

SEMCB _kernel_semcb_table[TNUM_SEMID];


	/* Object initializer [eventflag] */

#define TNUM_FLGID 1

const ID _kernel_tmax_flgid = (TMIN_FLGID + TNUM_FLGID - 1);

const FLGINIB _kernel_flginib_table[TNUM_FLGID] = {
	{( TA_TFIFO | TA_CLR ), 0}
};

FLGCB _kernel_flgcb_table[TNUM_FLGID];


	/* Object initializer [dataqueue] */

#define TNUM_DTQID 0

const ID _kernel_tmax_dtqid = (TMIN_DTQID + TNUM_DTQID - 1);

__EMPTY_LABEL(const DTQINIB, _kernel_dtqinib_table);
__EMPTY_LABEL(DTQCB, _kernel_dtqcb_table);


	/* Object initializer [mailbox] */

#define TNUM_MBXID 0

const ID _kernel_tmax_mbxid = (TMIN_MBXID + TNUM_MBXID - 1);

__EMPTY_LABEL(const MBXINIB, _kernel_mbxinib_table);
__EMPTY_LABEL(MBXCB, _kernel_mbxcb_table);


	/* Object initializer [mempfix] */

#define TNUM_MPFID 0

const ID _kernel_tmax_mpfid = (TMIN_MPFID + TNUM_MPFID - 1);

__EMPTY_LABEL(const MPFINIB, _kernel_mpfinib_table);
__EMPTY_LABEL(MPFCB, _kernel_mpfcb_table);


	/* Object initializer [cyclic] */

#define TNUM_CYCID 1

const ID _kernel_tmax_cycid = (TMIN_CYCID + TNUM_CYCID - 1);

const CYCINIB _kernel_cycinib_table[TNUM_CYCID] = {
	{TA_HLNG | TA_STA,( VP_INT ) 0,(FP)(rot_cyc_handler),1,0}
};

CYCCB _kernel_cyccb_table[TNUM_CYCID];


	/* Object initializer [interrupt] */

#define TNUM_INHNO 3

const UINT _kernel_tnum_inhno = TNUM_INHNO;

CFG_INTHDR_ENTRY(timer_handler);
CFG_INTHDR_ENTRY(int_timer2);
CFG_INTHDR_ENTRY(uart_isr1);

const INHINIB _kernel_inhinib_table[TNUM_INHNO] = {
	{12,TA_HLNG,(FP)CFG_INT_ENTRY(timer_handler)},
	{INHNO_SIO,TA_HLNG,(FP)CFG_INT_ENTRY(int_timer2)},
	{INHNO_SIO2,TA_HLNG,(FP)CFG_INT_ENTRY(uart_isr1)}
};


	/* Object initializer [exception] */

#define TNUM_EXCNO 0

const UINT _kernel_tnum_excno = TNUM_EXCNO;

__EMPTY_LABEL(const EXCINIB, _kernel_excinib_table);
	/* Initialization handler */

void
_kernel_call_inirtn(void)
{
	led_init( (VP_INT)(0) );
	switch_dip_init( (VP_INT)(0) );
	state_init( (VP_INT)(0) );
	timer_initialize( (VP_INT)(0) );
	serial_initialize( (VP_INT)(0) );
}

void
_kernel_call_terrtn(void)
{
	timer_terminate( (VP_INT)(0) );
}

	/* Object initialization routine */

void
_kernel_object_initialize(void)
{
	_kernel_task_initialize();
	_kernel_semaphore_initialize();
	_kernel_eventflag_initialize();
	_kernel_cyclic_initialize();
	_kernel_interrupt_initialize();
}

TMEVTN   _kernel_tmevt_heap[TNUM_TSKID + TNUM_CYCID];

	/* Variables for kernel checker */
const UW _checker_magic_number = 0x01234567;

