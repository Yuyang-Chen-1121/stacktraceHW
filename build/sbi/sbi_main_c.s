	.file	"sbi_main.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	3
.LC0:
	.ascii	"\t                                            ___   ___\n   "
	.ascii	" //   ) )               "
	.string	"     //   ) )  //   ) )    / /\n   //___/ /   ___       __     ((        //___/ /    / /\n  / __  (   //___) ) //   ) )    \\      / __  (     / /\n //    ) ) //       //   / /       ) ) //    ) )   / /\n//____/ / ((____   //   / / ((___ / / //____/ / __/ /___\n"
	.text
	.align	2
	.globl	sbi_main
	.type	sbi_main, @function
sbi_main:
.LFB0:
	.file 1 "sbi/sbi_main.c"
	.loc 1 22 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 25 2
	call	uart_init
	.loc 1 27 2
	lla	a0,putchar
	call	init_printk_done
	.loc 1 28 2
	lla	a0,.LC0
	call	printk
	.loc 1 30 2
	call	sbi_trap_init
.LBB2:
	.loc 1 33 39
#APP
# 33 "sbi/sbi_main.c" 1
	csrr a5, mstatus
# 0 "" 2
#NO_APP
	mv	ra,a5
	.loc 1 33 111
	mv	a5,ra
.LBE2:
	.loc 1 33 6
	sd	a5,-24(s0)
	.loc 1 34 16
	ld	a4,-24(s0)
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	.loc 1 34 6
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sd	a5,-24(s0)
	.loc 1 35 6
	ld	a5,-24(s0)
	andi	a5,a5,-129
	sd	a5,-24(s0)
.LBB3:
	.loc 1 36 19
	ld	a5,-24(s0)
	sd	a5,-32(s0)
	.loc 1 36 47
	ld	a5,-32(s0)
#APP
# 36 "sbi/sbi_main.c" 1
	csrw mstatus, a5
# 0 "" 2
#NO_APP
.LBE3:
	.loc 1 38 2
	call	delegate_traps
.LBB4:
	.loc 1 41 19
	li	a5,1025
	slli	a5,a5,21
	sd	a5,-40(s0)
	.loc 1 41 54
	ld	a5,-40(s0)
#APP
# 41 "sbi/sbi_main.c" 1
	csrw mepc, a5
# 0 "" 2
#NO_APP
.LBE4:
.LBB5:
	.loc 1 43 19
	li	a5,1025
	slli	a5,a5,21
	sd	a5,-48(s0)
	.loc 1 43 54
	ld	a5,-48(s0)
#APP
# 43 "sbi/sbi_main.c" 1
	csrw stvec, a5
# 0 "" 2
#NO_APP
.LBE5:
.LBB6:
	.loc 1 45 19
	sd	zero,-56(s0)
	.loc 1 45 45
	ld	a5,-56(s0)
#APP
# 45 "sbi/sbi_main.c" 1
	csrw sie, a5
# 0 "" 2
#NO_APP
.LBE6:
.LBB7:
	.loc 1 47 19
	sd	zero,-64(s0)
	.loc 1 47 45
	ld	a5,-64(s0)
#APP
# 47 "sbi/sbi_main.c" 1
	csrw satp, a5
# 0 "" 2
#NO_APP
.LBE7:
	.loc 1 50 2
#APP
# 50 "sbi/sbi_main.c" 1
	mret
# 0 "" 2
	.loc 1 51 1
#NO_APP
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sbi_main, .-sbi_main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x134
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF0
	.byte	0xc
	.4byte	.LASF1
	.4byte	.LASF2
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF4
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x4
	.string	"val"
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.4byte	0x2d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x5
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x81
	.byte	0x4
	.string	"__v"
	.byte	0x1
	.byte	0x21
	.byte	0x22
	.4byte	0x2d
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0x5
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.4byte	0xa6
	.byte	0x4
	.string	"__v"
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.4byte	0x2d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x5
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0xcb
	.byte	0x4
	.string	"__v"
	.byte	0x1
	.byte	0x29
	.byte	0x13
	.4byte	0x2d
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x5
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0xf0
	.byte	0x4
	.string	"__v"
	.byte	0x1
	.byte	0x2b
	.byte	0x13
	.4byte	0x2d
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x5
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0x115
	.byte	0x4
	.string	"__v"
	.byte	0x1
	.byte	0x2d
	.byte	0x13
	.4byte	0x2d
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x6
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.byte	0x4
	.string	"__v"
	.byte	0x1
	.byte	0x2f
	.byte	0x13
	.4byte	0x2d
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long unsigned int"
.LASF4:
	.string	"sbi_main"
.LASF2:
	.string	"/home/rlk/rlk/BIG/trial2/benos"
.LASF1:
	.string	"sbi/sbi_main.c"
.LASF0:
	.string	"GNU C17 9.3.0 -mcmodel=medany -mabi=lp64 -march=rv64imafd -g -O0 -fno-PIE -fno-omit-frame-pointer"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
