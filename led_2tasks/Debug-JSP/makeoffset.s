	.file	"makeoffset.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.global	BIT_LB_TCB_enatex
	.data
	.align	2
	.type	BIT_LB_TCB_enatex, %object
	.size	BIT_LB_TCB_enatex, 32
BIT_LB_TCB_enatex:
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	0
	.byte	4
	.space	1
	.word	0
	.word	0
	.word	0
	.word	0
	.global	BIT_REF_1
	.type	BIT_REF_1, %object
	.size	BIT_REF_1, 1
BIT_REF_1:
	.byte	18
	.global	BIT_REF_2
	.align	1
	.type	BIT_REF_2, %object
	.size	BIT_REF_2, 2
BIT_REF_2:
	.short	4660
	.global	BIT_REF_4
	.align	2
	.type	BIT_REF_4, %object
	.size	BIT_REF_4, 4
BIT_REF_4:
	.word	305419896
	.text
	.align	2
	.global	makeoffset
	.type	makeoffset, %function
makeoffset:
.LFB35:
.LM1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
.LM2:
	OFFSET_DEF TCB_texptn = #16
.LM3:
	OFFSET_DEF TCB_sp = #24
.LM4:
	OFFSET_DEF TCB_pc = #28
	mov	pc, lr
.LFE35:
	.size	makeoffset, .-makeoffset
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
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
	.ascii	"makeoffset.c\000"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.byte	0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x4
	.byte	0xb
	.byte	0x4f
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
	.4byte	0x5ff
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.ascii	"GNU C 3.4.3 (TOPPERS special)\000"
	.byte	0x1
	.ascii	"C:/Users/slpl/ECLIPS~1/CONFIG~1/ORGECL~1.OSG/bundle"
	.ascii	"s/228/1/CP8283~1/config//armv4/makeoffset.c\000"
	.ascii	"C:\\Users\\slpl\\workspace-pizza\\led_2tasks\\Debug"
	.ascii	"-JSP\000"
	.byte	0x2
	.ascii	"long int\000"
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.ascii	"size_t\000"
	.byte	0x1
	.byte	0xd5
	.4byte	0xe3
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
	.byte	0x3
	.ascii	"UB\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x10a
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
	.byte	0x3
	.ascii	"UH\000"
	.byte	0x2
	.byte	0x67
	.4byte	0x13a
	.byte	0x2
	.ascii	"short unsigned int\000"
	.byte	0x2
	.byte	0x7
	.byte	0x3
	.ascii	"UW\000"
	.byte	0x2
	.byte	0x6c
	.4byte	0x15a
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
	.4byte	0x19f
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.ascii	"FP\000"
	.byte	0x2
	.byte	0x76
	.4byte	0x1ab
	.byte	0x6
	.byte	0x4
	.4byte	0x1b1
	.byte	0x7
	.4byte	0x1b8
	.byte	0x8
	.byte	0x0
	.byte	0x3
	.ascii	"INT\000"
	.byte	0x2
	.byte	0x78
	.4byte	0xea
	.byte	0x3
	.ascii	"UINT\000"
	.byte	0x2
	.byte	0x79
	.4byte	0x15a
	.byte	0x3
	.ascii	"ER\000"
	.byte	0x2
	.byte	0x7e
	.4byte	0x1b8
	.byte	0x3
	.ascii	"ATR\000"
	.byte	0x2
	.byte	0x80
	.4byte	0x1c3
	.byte	0x3
	.ascii	"SIZE\000"
	.byte	0x2
	.byte	0x84
	.4byte	0xd5
	.byte	0x3
	.ascii	"SYSTIM\000"
	.byte	0x2
	.byte	0x88
	.4byte	0x150
	.byte	0x3
	.ascii	"VP_INT\000"
	.byte	0x2
	.byte	0x8d
	.4byte	0x195
	.byte	0x4
	.4byte	.LASF0
	.byte	0x4
	.byte	0x7
	.byte	0x3
	.ascii	"TEXPTN\000"
	.byte	0x6
	.byte	0x65
	.4byte	0x1c3
	.byte	0x9
	.4byte	0x257
	.ascii	"task_context_block\000"
	.byte	0x8
	.byte	0x7
	.byte	0x53
	.byte	0xa
	.ascii	"sp\000"
	.byte	0x7
	.byte	0x54
	.4byte	0x195
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"pc\000"
	.byte	0x7
	.byte	0x55
	.4byte	0x1a1
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x3
	.ascii	"CTXB\000"
	.byte	0x7
	.byte	0x56
	.4byte	0x221
	.byte	0x9
	.4byte	0x290
	.ascii	"queue\000"
	.byte	0x8
	.byte	0x8
	.byte	0x38
	.byte	0xa
	.ascii	"next\000"
	.byte	0x8
	.byte	0x39
	.4byte	0x290
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"prev\000"
	.byte	0x8
	.byte	0x3a
	.4byte	0x290
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x6
	.byte	0x4
	.4byte	0x263
	.byte	0x3
	.ascii	"QUEUE\000"
	.byte	0x8
	.byte	0x3b
	.4byte	0x263
	.byte	0x3
	.ascii	"CBACK\000"
	.byte	0x9
	.byte	0x40
	.4byte	0x2b0
	.byte	0x6
	.byte	0x4
	.4byte	0x2b6
	.byte	0xb
	.4byte	0x2c2
	.byte	0x1
	.byte	0xc
	.4byte	0x195
	.byte	0x0
	.byte	0x9
	.4byte	0x30d
	.ascii	"time_event_block\000"
	.byte	0xc
	.byte	0x9
	.byte	0x42
	.byte	0xa
	.ascii	"index\000"
	.byte	0x9
	.byte	0x43
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"callback\000"
	.byte	0x9
	.byte	0x44
	.4byte	0x2a3
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii	"arg\000"
	.byte	0x9
	.byte	0x45
	.4byte	0x195
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x0
	.byte	0x3
	.ascii	"TMEVTB\000"
	.byte	0x9
	.byte	0x46
	.4byte	0x2c2
	.byte	0x6
	.byte	0x4
	.4byte	0x30d
	.byte	0xd
	.4byte	0x359
	.ascii	"waiting_information\000"
	.byte	0x4
	.byte	0xa
	.byte	0x82
	.byte	0xe
	.ascii	"wercd\000"
	.byte	0xa
	.byte	0x83
	.4byte	0x1cf
	.byte	0xe
	.ascii	"tmevtb\000"
	.byte	0xa
	.byte	0x84
	.4byte	0x31b
	.byte	0x0
	.byte	0x3
	.ascii	"WINFO\000"
	.byte	0xa
	.byte	0x85
	.4byte	0x321
	.byte	0x9
	.4byte	0x40d
	.ascii	"task_initialization_block\000"
	.byte	0x20
	.byte	0xa
	.byte	0x94
	.byte	0xa
	.ascii	"tskatr\000"
	.byte	0xa
	.byte	0x95
	.4byte	0x1d9
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"exinf\000"
	.byte	0xa
	.byte	0x96
	.4byte	0x1fe
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii	"task\000"
	.byte	0xa
	.byte	0x97
	.4byte	0x1a1
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii	"ipriority\000"
	.byte	0xa
	.byte	0x98
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xa
	.ascii	"stksz\000"
	.byte	0xa
	.byte	0x99
	.4byte	0x1e4
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xa
	.ascii	"stk\000"
	.byte	0xa
	.byte	0x9a
	.4byte	0x195
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0xa
	.ascii	"texatr\000"
	.byte	0xa
	.byte	0x9c
	.4byte	0x1d9
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0xa
	.ascii	"texrtn\000"
	.byte	0xa
	.byte	0x9d
	.4byte	0x1a1
	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0x0
	.byte	0x3
	.ascii	"TINIB\000"
	.byte	0xa
	.byte	0x9e
	.4byte	0x366
	.byte	0x9
	.4byte	0x4f3
	.ascii	"task_control_block\000"
	.byte	0x20
	.byte	0xa
	.byte	0xb7
	.byte	0xa
	.ascii	"task_queue\000"
	.byte	0xa
	.byte	0xb8
	.4byte	0x296
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii	"tinib\000"
	.byte	0xa
	.byte	0xb9
	.4byte	0x4f3
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xf
	.ascii	"tstat\000"
	.byte	0xa
	.byte	0xbb
	.4byte	0x15a
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
	.4byte	0x15a
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
	.4byte	0x15a
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
	.4byte	0x15a
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
	.4byte	0x15a
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
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xa
	.ascii	"winfo\000"
	.byte	0xa
	.byte	0xc3
	.4byte	0x4fe
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0xa
	.ascii	"tskctxb\000"
	.byte	0xa
	.byte	0xc4
	.4byte	0x257
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x0
	.byte	0x6
	.byte	0x4
	.4byte	0x4f9
	.byte	0x10
	.4byte	0x40d
	.byte	0x6
	.byte	0x4
	.4byte	0x359
	.byte	0x3
	.ascii	"TCB\000"
	.byte	0xa
	.byte	0xc5
	.4byte	0x41a
	.byte	0x11
	.byte	0x1
	.ascii	"makeoffset\000"
	.byte	0xb
	.byte	0x3c
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5d
	.byte	0x12
	.ascii	"_kernel_interrupt_count\000"
	.byte	0x7
	.byte	0x5b
	.4byte	0x150
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.4byte	0x559
	.4byte	0x559
	.byte	0x14
	.4byte	0x20c
	.byte	0x7
	.byte	0x0
	.byte	0x6
	.byte	0x4
	.4byte	0x150
	.byte	0x12
	.ascii	"_kernel_arm_vector_add\000"
	.byte	0x7
	.byte	0xa7
	.4byte	0x549
	.byte	0x1
	.byte	0x1
	.byte	0x12
	.ascii	"_kernel_next_time\000"
	.byte	0x9
	.byte	0x65
	.4byte	0x1f0
	.byte	0x1
	.byte	0x1
	.byte	0x15
	.ascii	"BIT_REF_4\000"
	.byte	0xb
	.byte	0x42
	.4byte	0x150
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	BIT_REF_4
	.byte	0x15
	.ascii	"BIT_REF_2\000"
	.byte	0xb
	.byte	0x43
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	BIT_REF_2
	.byte	0x15
	.ascii	"BIT_REF_1\000"
	.byte	0xb
	.byte	0x44
	.4byte	0x100
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	BIT_REF_1
	.byte	0x15
	.ascii	"BIT_LB_TCB_enatex\000"
	.byte	0xb
	.byte	0x47
	.4byte	0x504
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	BIT_LB_TCB_enatex
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
	.byte	0x15
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
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x5d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x603
	.4byte	0x50f
	.ascii	"makeoffset\000"
	.4byte	0x59a
	.ascii	"BIT_REF_4\000"
	.4byte	0x5b2
	.ascii	"BIT_REF_2\000"
	.4byte	0x5ca
	.ascii	"BIT_REF_1\000"
	.4byte	0x5e2
	.ascii	"BIT_LB_TCB_enatex\000"
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
