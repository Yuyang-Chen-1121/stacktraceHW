	.file	"stacktrace.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/chen/Workspace/riscv/stacktraceHW" "src/stacktrace.c"
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
	.loc 1 13 13
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
	.loc 1 28 5 discriminator 1
	sd	a5,-32(s0)
.L8:
	.loc 1 31 8
	ld	a0,-40(s0)
	call	kernel_text
	mv	a5,a0
	.loc 1 31 6 discriminator 1
	beq	a5,zero,.L10
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
	bne	a5,zero,.L11
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
	.loc 1 49 6 discriminator 1
	beq	a5,zero,.L8
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
	.file 2 "include/printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x181
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	0x43
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.4byte	.LASF6
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x10
	.byte	0x1
	.byte	0x4
	.byte	0x8
	.4byte	0x7a
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x5
	.4byte	0x43
	.byte	0
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x6
	.4byte	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x85
	.4byte	0x85
	.uleb128 0xb
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	0x85
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0xd
	.4byte	0x7a
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x16
	.4byte	0x7a
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x2
	.byte	0x6
	.byte	0x5
	.4byte	0xbc
	.4byte	0xbc
	.uleb128 0xd
	.4byte	0xc3
	.uleb128 0xe
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.4byte	0x8c
	.uleb128 0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x151
	.uleb128 0x2
	.string	"sp"
	.byte	0x15
	.byte	0x10
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"fp"
	.byte	0x15
	.byte	0x14
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.string	"pc"
	.byte	0x15
	.byte	0x18
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x16
	.byte	0x15
	.4byte	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"low"
	.byte	0x17
	.byte	0x10
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x19
	.byte	0x1f
	.4byte	0x4a
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x6
	.4byte	0x56
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa
	.byte	0xc
	.4byte	0xbc
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.byte	0x26
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.string	"unsigned int"
.LASF14:
	.string	"walk_stackframe"
.LASF5:
	.string	"long unsigned int"
.LASF8:
	.string	"s_ra"
.LASF20:
	.string	"addr"
.LASF7:
	.string	"s_fp"
.LASF11:
	.string	"_etext"
.LASF15:
	.string	"kernel_text"
.LASF2:
	.string	"unsigned char"
.LASF16:
	.string	"GNU C17 13.3.0 -mcmodel=medany -mabi=lp64 -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF13:
	.string	"current_sp"
.LASF17:
	.string	"stackframe"
.LASF6:
	.string	"_Bool"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"frame"
.LASF19:
	.string	"dump_stack"
.LASF10:
	.string	"_text"
.LASF18:
	.string	"printk"
.LASF9:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/stacktrace.c"
.LASF1:
	.string	"/home/chen/Workspace/riscv/stacktraceHW"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
