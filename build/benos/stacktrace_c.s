	.file	"stacktrace.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.type	kernel_text, @function
kernel_text:
.LFB0:
	.file 1 "src/stacktrace.c"
	.loc 1 11 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	.loc 1 12 14
	lla	a5,_text
	.loc 1 12 5
	ld	a4,-24(s0)
	bltu	a4,a5,.L2
	.loc 1 13 13 discriminator 1
	lla	a5,_etext
	.loc 1 12 35 discriminator 1
	ld	a4,-24(s0)
	bgeu	a4,a5,.L2
	.loc 1 14 10
	li	a5,1
	j	.L3
.L2:
	.loc 1 16 9
	li	a5,0
.L3:
	.loc 1 17 1
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	kernel_text, .-kernel_text
	.section	.rodata
	.align	3
.LC0:
	.string	"[0x%016lx - 0x%016lx]  size 0x%04lx  pc 0x%016lx\n"
	.text
	.align	2
	.type	walk_stackframe, @function
walk_stackframe:
.LFB1:
	.loc 1 20 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 26 5
	sd	sp,-24(s0)
	.loc 1 27 5
	lla	a5,walk_stackframe
	sd	a5,-40(s0)
	.loc 1 28 22
	mv	a5,s0
	.loc 1 28 5
	sd	a5,-32(s0)
.L8:
	.loc 1 31 8
	ld	a0,-40(s0)
	call	kernel_text
	mv	a5,a0
	.loc 1 31 6
	beqz	a5,.L10
	.loc 1 35 7
	ld	a5,-24(s0)
	addi	a5,a5,16
	sd	a5,-48(s0)
	.loc 1 36 6
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L11
	.loc 1 36 23 discriminator 1
	ld	a5,-32(s0)
	andi	a5,a5,15
	.loc 1 36 17 discriminator 1
	bnez	a5,.L11
	.loc 1 43 36
	ld	a5,-32(s0)
	addi	a5,a5,-16
	.loc 1 43 9
	sd	a5,-56(s0)
	.loc 1 44 6
	ld	a5,-32(s0)
	sd	a5,-24(s0)
	.loc 1 45 6
	ld	a5,-56(s0)
	ld	a5,0(a5)
	sd	a5,-32(s0)
	.loc 1 47 13
	ld	a5,-56(s0)
	ld	a5,8(a5)
	.loc 1 47 6
	addi	a5,a5,-4
	sd	a5,-40(s0)
	.loc 1 49 7
	ld	a0,-40(s0)
	call	kernel_text
	mv	a5,a0
	.loc 1 49 6
	beqz	a5,.L8
	.loc 1 51 4
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	sub	a5,a4,a5
	ld	a4,-40(s0)
	mv	a3,a5
	ld	a2,-32(s0)
	ld	a1,-24(s0)
	lla	a0,.LC0
	call	printk
	.loc 1 31 6
	j	.L8
.L10:
	.loc 1 32 4
	nop
.L11:
	.loc 1 53 1
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
.LFE1:
	.size	walk_stackframe, .-walk_stackframe
	.section	.rodata
	.align	3
.LC1:
	.string	"Call Frame:\n"
	.text
	.align	2
	.globl	dump_stack
	.type	dump_stack, @function
dump_stack:
.LFB2:
	.loc 1 56 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 57 2
	lla	a0,.LC1
	call	printk
	.loc 1 58 2
	call	walk_stackframe
	.loc 1 59 1
	nop
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	dump_stack, .-dump_stack
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x172
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
	.4byte	.LASF14
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.4byte	0x42
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF15
	.byte	0x10
	.byte	0x1
	.byte	0x4
	.byte	0x8
	.4byte	0x7d
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.4byte	0x42
	.byte	0
	.byte	0x5
	.4byte	.LASF6
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.4byte	0x42
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x88
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x8
	.4byte	.LASF8
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	0x7d
	.byte	0x8
	.4byte	.LASF9
	.byte	0x1
	.byte	0x9
	.byte	0x16
	.4byte	0x7d
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x136
	.byte	0xb
	.string	"sp"
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xb
	.string	"fp"
	.byte	0x1
	.byte	0x15
	.byte	0x14
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xb
	.string	"pc"
	.byte	0x1
	.byte	0x15
	.byte	0x18
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xc
	.4byte	.LASF10
	.byte	0x1
	.byte	0x16
	.byte	0x15
	.4byte	0x136
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xb
	.string	"low"
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xc
	.4byte	.LASF11
	.byte	0x1
	.byte	0x19
	.byte	0x1f
	.4byte	0x49
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0xd
	.byte	0x8
	.4byte	0x55
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa
	.byte	0xc
	.4byte	0x16e
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x16e
	.byte	0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xa
	.byte	0x26
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x2e
	.byte	0
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
	.byte	0xa
	.byte	0x2e
	.byte	0x1
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
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
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
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
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
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
	.byte	0x10
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
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
.LASF12:
	.string	"GNU C17 9.3.0 -mcmodel=medany -mabi=lp64 -march=rv64imafd -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF2:
	.string	"unsigned int"
.LASF17:
	.string	"walk_stackframe"
.LASF3:
	.string	"long unsigned int"
.LASF4:
	.string	"_Bool"
.LASF19:
	.string	"addr"
.LASF5:
	.string	"s_fp"
.LASF9:
	.string	"_etext"
.LASF18:
	.string	"kernel_text"
.LASF0:
	.string	"unsigned char"
.LASF7:
	.string	"char"
.LASF11:
	.string	"current_sp"
.LASF15:
	.string	"stackframe"
.LASF14:
	.string	"/home/rlk/rlk/BIG/trial2/benos"
.LASF13:
	.string	"src/stacktrace.c"
.LASF1:
	.string	"short unsigned int"
.LASF10:
	.string	"frame"
.LASF16:
	.string	"dump_stack"
.LASF8:
	.string	"_text"
.LASF6:
	.string	"s_ra"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
