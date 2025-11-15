	.file	"sbi_main.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/chen/Workspace/riscv/stacktraceHW" "sbi/sbi_main.c"
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
	.file 2 "include/uart.h"
	.file 3 "include/printk.h"
	.file 4 "sbi/sbi_trap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ab
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x4
	.byte	0x23
	.byte	0x6
	.4byte	0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x4
	.byte	0x21
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x3
	.byte	0x6
	.byte	0x5
	.4byte	0x61
	.4byte	0x61
	.uleb128 0x3
	.4byte	0x68
	.uleb128 0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	0x74
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xd
	.4byte	0x6d
	.uleb128 0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.4byte	0x8a
	.uleb128 0x3
	.4byte	0x6d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x3
	.4byte	0x9b
	.byte	0
	.uleb128 0x7
	.4byte	0xa0
	.uleb128 0xe
	.4byte	0xab
	.uleb128 0x3
	.4byte	0x6d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF11
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.string	"val"
	.byte	0x17
	.byte	0x10
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0xfd
	.uleb128 0x1
	.string	"__v"
	.byte	0x21
	.byte	0x22
	.4byte	0x2e
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.4byte	0x121
	.uleb128 0x1
	.string	"__v"
	.byte	0x24
	.byte	0x13
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x145
	.uleb128 0x1
	.string	"__v"
	.byte	0x29
	.byte	0x13
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0x169
	.uleb128 0x1
	.string	"__v"
	.byte	0x2b
	.byte	0x13
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0x18d
	.uleb128 0x1
	.string	"__v"
	.byte	0x2d
	.byte	0x13
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x10
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.uleb128 0x1
	.string	"__v"
	.byte	0x2f
	.byte	0x13
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF4:
	.string	"putchar"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"init_printk_done"
.LASF9:
	.string	"delegate_traps"
.LASF7:
	.string	"uart_init"
.LASF3:
	.string	"char"
.LASF11:
	.string	"sbi_main"
.LASF8:
	.string	"GNU C17 13.3.0 -mcmodel=medany -mabi=lp64 -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF10:
	.string	"printk"
.LASF6:
	.string	"sbi_trap_init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chen/Workspace/riscv/stacktraceHW"
.LASF0:
	.string	"sbi/sbi_main.c"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
