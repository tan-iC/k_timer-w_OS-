	.file	"kernel_chk.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	checker_function
	.type	checker_function, %function
checker_function:
.LFB36:
.LM1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
.LM2:
	sTMAX_TPRI,(#16),(0)@
.LM3:
	sTMIN_TPRI,(#1),(0)@
.LM4:
	sTMAX_MPRI,(#16),(0)@
.LM5:
	sTMIN_MPRI,(#1),(0)@
.LM6:
	sTMAX_RELTIM,(#2147483647),(0)@
.LM7:
	squeue::next,(#4),(#0)@
.LM8:
	squeue::prev,(#4),(#4)@
.LM9:
	dtask_3,LOGTASK@
.LM10:
	dtask_4,MONTASK@
.LM11:
	dtask_1,TASK1@
.LM12:
	dtask_2,TASK2@
.LM13:
	s_kernel_tmax_tskid,(#4),(0)@
.LM14:
	s_kernel_tinib_table,(#32),(0)@
.LM15:
	stask_initialization_block::tskatr,(#4),(#0)@
.LM16:
	stask_initialization_block::exinf,(#4),(#4)@
.LM17:
	stask_initialization_block::task,(#4),(#8)@
.LM18:
	stask_initialization_block::ipriority,(#4),(#12)@
.LM19:
	stask_initialization_block::stksz,(#4),(#16)@
.LM20:
	stask_initialization_block::stk,(#4),(#20)@
.LM21:
	stask_initialization_block::texatr,(#4),(#24)@
.LM22:
	stask_initialization_block::texrtn,(#4),(#28)@
.LM23:
	dsemaphore_2,SERIAL_RCV_SEM1@
.LM24:
	dsemaphore_4,SERIAL_RCV_SEM2@
.LM25:
	dsemaphore_3,SERIAL_SND_SEM1@
.LM26:
	dsemaphore_5,SERIAL_SND_SEM2@
.LM27:
	dsemaphore_1,SID1@
.LM28:
	s_kernel_tmax_semid,(#4),(0)@
.LM29:
	s_kernel_seminib_table,(#12),(0)@
.LM30:
	ssemaphore_initialization_block::sematr,(#4),(#0)@
.LM31:
	ssemaphore_initialization_block::isemcnt,(#4),(#4)@
.LM32:
	ssemaphore_initialization_block::maxsem,(#4),(#8)@
.LM33:
	s_kernel_tmax_flgid,(#4),(0)@
.LM34:
	s_kernel_flginib_table,(#8),(0)@
.LM35:
	seventflag_initialization_block::flgatr,(#4),(#0)@
.LM36:
	seventflag_initialization_block::iflgptn,(#4),(#4)@
.LM37:
	s_kernel_tmax_dtqid,(#4),(0)@
.LM38:
	s_kernel_dtqinib_table,(#12),(0)@
.LM39:
	sdataqueue_initialization_block::dtqatr,(#4),(#0)@
.LM40:
	sdataqueue_initialization_block::dtqcnt,(#4),(#4)@
.LM41:
	sdataqueue_initialization_block::dtq,(#4),(#8)@
.LM42:
	s_kernel_tmax_mbxid,(#4),(0)@
.LM43:
	s_kernel_mbxinib_table,(#8),(0)@
.LM44:
	smailbox_initialization_block::mbxatr,(#4),(#0)@
.LM45:
	smailbox_initialization_block::maxmpri,(#4),(#4)@
.LM46:
	s_kernel_tmax_mpfid,(#4),(0)@
.LM47:
	s_kernel_mpfinib_table,(#16),(0)@
.LM48:
	sfixed_memorypool_initialization_block::mpfatr,(#4),(#0)@
.LM49:
	sfixed_memorypool_initialization_block::blksz,(#4),(#4)@
.LM50:
	sfixed_memorypool_initialization_block::mpf,(#4),(#8)@
.LM51:
	sfixed_memorypool_initialization_block::limit,(#4),(#12)@
.LM52:
	dcyclic_1,ROT_CYC_HANDLER@
.LM53:
	s_kernel_tmax_cycid,(#4),(0)@
.LM54:
	s_kernel_cycinib_table,(#20),(0)@
.LM55:
	scyclic_handler_initialization_block::cycatr,(#4),(#0)@
.LM56:
	scyclic_handler_initialization_block::exinf,(#4),(#4)@
.LM57:
	scyclic_handler_initialization_block::cychdr,(#4),(#8)@
.LM58:
	scyclic_handler_initialization_block::cyctim,(#4),(#12)@
.LM59:
	scyclic_handler_initialization_block::cycphs,(#4),(#16)@
.LM60:
	dinterrupt_0,12@
.LM61:
	dinterrupt_1,INHNO_SIO@
.LM62:
	dinterrupt_2,INHNO_SIO2@
.LM63:
	s_kernel_tnum_inhno,(#4),(0)@
.LM64:
	s_kernel_inhinib_table,(#12),(0)@
.LM65:
	sinterrupt_handler_initialization_block::inhno,(#4),(#0)@
.LM66:
	sinterrupt_handler_initialization_block::inhatr,(#4),(#4)@
.LM67:
	sinterrupt_handler_initialization_block::inthdr,(#4),(#8)@
.LM68:
	s_kernel_tnum_excno,(#4),(0)@
.LM69:
	s_kernel_excinib_table,(#12),(0)@
.LM70:
	scpu_exception_handler_initialization_block::excno,(#4),(#0)@
.LM71:
	scpu_exception_handler_initialization_block::excatr,(#4),(#4)@
.LM72:
	scpu_exception_handler_initialization_block::exchdr,(#4),(#8)@
	mov	pc, lr
.LFE36:
	.size	checker_function, .-checker_function
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.byte	0xc
	.byte	0xd
	.byte	0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	2
.LEFDE0:
	.text
.Letext0:
	.section	.debug_line
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"C:/Users/slpl/ECLIPS~1/CONFIG~1/ORGECL~1.OSG/bundle"
	.ascii	"s/228/1/CP8283~1/config//armv4"
	.byte	0
	.ascii	"C:/Users/slpl/ECLIPS~1/CONFIG~1/ORGECL~1.OSG/bundle"
	.ascii	"s/245/1/CP8283~1/jsp//include"
	.byte	0
	.ascii	"C:/Users/slpl/ECLIPS~1/CONFIG~1/ORGECL~1.OSG/bundle"
	.ascii	"s/245/1/CP8283~1/jsp//kernel"
	.byte	0
	.ascii	"c:/progra~2/monami~1/pizzaf~1.2/plugins/jppizz~1.2/"
	.ascii	"pizza/bin/../lib/gcc/arm-elf/3.4.3/include"
	.byte	0
	.byte	0x0
	.ascii	"stddef.h\000"
	.byte	0x4
	.byte	0x0
	.byte	0x0
	.ascii	"itron.h\000"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii	"at91sam7s/sys_defs.h\000"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.ascii	"cpu_defs.h\000"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.ascii	"t_syslog.h\000"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii	"kernel.h\000"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii	"cpu_config.h\000"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.ascii	"queue.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"time_event.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"task.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"semaphore.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"eventflag.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"dataqueue.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"mailbox.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"mempfix.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"cyclic.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"../kernel/exception.h\000"
	.byte	0x2
	.byte	0x0
	.byte	0x0
	.ascii	"interrupt.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"wait.h\000"
	.byte	0x3
	.byte	0x0
	.byte	0x0
	.ascii	"kernel_chk.c\000"
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x4
	.byte	0x14
	.byte	0x2e
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x16
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM47
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM48
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM54
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM59
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM66
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x19
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x15
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.byte	0x1
	.byte	0x1
.LELT0:
	.section	.debug_info
	.4byte	0x553
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.ascii	"GNU C 3.4.3 (TOPPERS special)\000"
	.byte	0x1
	.ascii	"kernel_chk.c\000"
	.ascii	"C:\\Users\\slpl\\workspace-pizza\\ex_none\\Debug-JS"
	.ascii	"P\000"
	.byte	0x2
	.ascii	"long int\000"
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.ascii	"size_t\000"
	.byte	0x1
	.byte	0xd5
	.4byte	0x8e
	.byte	0x4
	.4byte	.LASF0
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.ascii	"signed char\000"
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.ascii	"unsigned char\000"
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.ascii	"char\000"
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.ascii	"short int\000"
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.ascii	"short unsigned int\000"
	.byte	0x2
	.byte	0x7
	.byte	0x3
	.ascii	"UW\000"
	.byte	0x2
	.byte	0x6c
	.4byte	0xf1
	.byte	0x2
	.ascii	"unsigned int\000"
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.ascii	"long long int\000"
	.byte	0x8
	.byte	0x5
	.byte	0x2
	.ascii	"long long unsigned int\000"
	.byte	0x8
	.byte	0x7
	.byte	0x3
	.ascii	"VP\000"
	.byte	0x2
	.byte	0x75
	.4byte	0x136
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.ascii	"FP\000"
	.byte	0x2
	.byte	0x76
	.4byte	0x142
	.byte	0x6
	.byte	0x4
	.4byte	0x148
	.byte	0x7
	.4byte	0x14f
	.byte	0x8
	.byte	0x0
	.byte	0x3
	.ascii	"INT\000"
	.byte	0x2
	.byte	0x78
	.4byte	0x95
	.byte	0x3
	.ascii	"UINT\000"
	.byte	0x2
	.byte	0x79
	.4byte	0xf1
	.byte	0x3
	.ascii	"ER\000"
	.byte	0x2
	.byte	0x7e
	.4byte	0x14f
	.byte	0x3
	.ascii	"ATR\000"
	.byte	0x2
	.byte	0x80
	.4byte	0x15a
	.byte	0x3
	.ascii	"SIZE\000"
	.byte	0x2
	.byte	0x84
	.4byte	0x80
	.byte	0x3
	.ascii	"SYSTIM\000"
	.byte	0x2
	.byte	0x88
	.4byte	0xe7
	.byte	0x3
	.ascii	"VP_INT\000"
	.byte	0x2
	.byte	0x8d
	.4byte	0x12c
	.byte	0x4
	.4byte	.LASF0
	.byte	0x4
	.byte	0x7
	.byte	0x3
	.ascii	"TEXPTN\000"
	.byte	0x6
	.byte	0x65
	.4byte	0x15a
	.byte	0x9
	.4byte	0x1ee
	.ascii	"task_context_block\000"
	.byte	0x8
	.byte	0x7
	.byte	0x53
	.byte	0xa
	.ascii	"sp\000"
	.byte	0x7
	.byte	0x54
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"pc\000"
	.byte	0x7
	.byte	0x55
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x3
	.ascii	"CTXB\000"
	.byte	0x7
	.byte	0x56
	.4byte	0x1b8
	.byte	0x9
	.4byte	0x227
	.ascii	"queue\000"
	.byte	0x8
	.byte	0x8
	.byte	0x38
	.byte	0xa
	.ascii	"next\000"
	.byte	0x8
	.byte	0x39
	.4byte	0x227
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"prev\000"
	.byte	0x8
	.byte	0x3a
	.4byte	0x227
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x6
	.byte	0x4
	.4byte	0x1fa
	.byte	0x3
	.ascii	"QUEUE\000"
	.byte	0x8
	.byte	0x3b
	.4byte	0x1fa
	.byte	0x3
	.ascii	"CBACK\000"
	.byte	0x9
	.byte	0x40
	.4byte	0x247
	.byte	0x6
	.byte	0x4
	.4byte	0x24d
	.byte	0xb
	.4byte	0x259
	.byte	0x1
	.byte	0xc
	.4byte	0x12c
	.byte	0x0
	.byte	0x9
	.4byte	0x2a4
	.ascii	"time_event_block\000"
	.byte	0xc
	.byte	0x9
	.byte	0x42
	.byte	0xa
	.ascii	"index\000"
	.byte	0x9
	.byte	0x43
	.4byte	0x15a
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"callback\000"
	.byte	0x9
	.byte	0x44
	.4byte	0x23a
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii	"arg\000"
	.byte	0x9
	.byte	0x45
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x0
	.byte	0x3
	.ascii	"TMEVTB\000"
	.byte	0x9
	.byte	0x46
	.4byte	0x259
	.byte	0x6
	.byte	0x4
	.4byte	0x2a4
	.byte	0xd
	.4byte	0x2f0
	.ascii	"waiting_information\000"
	.byte	0x4
	.byte	0xa
	.byte	0x82
	.byte	0xe
	.ascii	"wercd\000"
	.byte	0xa
	.byte	0x83
	.4byte	0x166
	.byte	0xe
	.ascii	"tmevtb\000"
	.byte	0xa
	.byte	0x84
	.4byte	0x2b2
	.byte	0x0
	.byte	0x3
	.ascii	"WINFO\000"
	.byte	0xa
	.byte	0x85
	.4byte	0x2b8
	.byte	0x9
	.4byte	0x3a4
	.ascii	"task_initialization_block\000"
	.byte	0x20
	.byte	0xa
	.byte	0x94
	.byte	0xa
	.ascii	"tskatr\000"
	.byte	0xa
	.byte	0x95
	.4byte	0x170
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"exinf\000"
	.byte	0xa
	.byte	0x96
	.4byte	0x195
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii	"task\000"
	.byte	0xa
	.byte	0x97
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii	"ipriority\000"
	.byte	0xa
	.byte	0x98
	.4byte	0x15a
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xa
	.ascii	"stksz\000"
	.byte	0xa
	.byte	0x99
	.4byte	0x17b
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xa
	.ascii	"stk\000"
	.byte	0xa
	.byte	0x9a
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0xa
	.ascii	"texatr\000"
	.byte	0xa
	.byte	0x9c
	.4byte	0x170
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0xa
	.ascii	"texrtn\000"
	.byte	0xa
	.byte	0x9d
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0x0
	.byte	0x3
	.ascii	"TINIB\000"
	.byte	0xa
	.byte	0x9e
	.4byte	0x2fd
	.byte	0x9
	.4byte	0x48a
	.ascii	"task_control_block\000"
	.byte	0x20
	.byte	0xa
	.byte	0xb7
	.byte	0xa
	.ascii	"task_queue\000"
	.byte	0xa
	.byte	0xb8
	.4byte	0x22d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"tinib\000"
	.byte	0xa
	.byte	0xb9
	.4byte	0x48a
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xf
	.ascii	"tstat\000"
	.byte	0xa
	.byte	0xbb
	.4byte	0xf1
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xf
	.ascii	"priority\000"
	.byte	0xa
	.byte	0xbc
	.4byte	0xf1
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xf
	.ascii	"actcnt\000"
	.byte	0xa
	.byte	0xbe
	.4byte	0xf1
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xf
	.ascii	"wupcnt\000"
	.byte	0xa
	.byte	0xbf
	.4byte	0xf1
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xf
	.ascii	"enatex\000"
	.byte	0xa
	.byte	0xc0
	.4byte	0xf1
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xa
	.ascii	"texptn\000"
	.byte	0xa
	.byte	0xc2
	.4byte	0x1aa
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xa
	.ascii	"winfo\000"
	.byte	0xa
	.byte	0xc3
	.4byte	0x495
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0xa
	.ascii	"tskctxb\000"
	.byte	0xa
	.byte	0xc4
	.4byte	0x1ee
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x0
	.byte	0x6
	.byte	0x4
	.4byte	0x490
	.byte	0x10
	.4byte	0x3a4
	.byte	0x6
	.byte	0x4
	.4byte	0x2f0
	.byte	0x3
	.ascii	"TCB\000"
	.byte	0xa
	.byte	0xc5
	.4byte	0x3b1
	.byte	0x11
	.byte	0x1
	.ascii	"checker_function\000"
	.byte	0x14
	.byte	0x1b
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5d
	.byte	0x12
	.ascii	"_kernel_interrupt_count\000"
	.byte	0x7
	.byte	0x5b
	.4byte	0xe7
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.4byte	0x4f7
	.4byte	0x4f7
	.byte	0x14
	.4byte	0x1a3
	.byte	0x7
	.byte	0x0
	.byte	0x6
	.byte	0x4
	.4byte	0xe7
	.byte	0x12
	.ascii	"_kernel_arm_vector_add\000"
	.byte	0x7
	.byte	0xa7
	.4byte	0x4e7
	.byte	0x1
	.byte	0x1
	.byte	0x12
	.ascii	"_kernel_next_time\000"
	.byte	0x9
	.byte	0x65
	.4byte	0x187
	.byte	0x1
	.byte	0x1
	.byte	0x12
	.ascii	"_kernel_runtsk\000"
	.byte	0xa
	.byte	0xd0
	.4byte	0x550
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x4
	.4byte	0x49b
	.byte	0x0
	.section	.debug_abbrev
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0x12
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x0
	.byte	0x0
	.byte	0x2
	.byte	0x24
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x4
	.byte	0x24
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x6
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x7
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0xa
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x27
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0xc
	.byte	0x5
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0xe
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xf
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x10
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x11
	.byte	0x2e
	.byte	0x0
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x12
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x14
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x23
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x557
	.4byte	0x4a6
	.ascii	"checker_function\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"",%progbits
.LASF0:
	.ascii	"long unsigned int\000"
	.ident	"GCC: (GNU) 3.4.3 (TOPPERS special)"
