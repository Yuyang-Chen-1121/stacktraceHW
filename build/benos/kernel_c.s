	.file	"kernel.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/chen/Workspace/riscv/stacktraceHW" "src/kernel.c"
	.align	2
	.type	sbi_putchar, @function
sbi_putchar:
.LFB2:
	.file 1 "include/asm/sbi.h"
	.loc 1 37 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
.LBB2:
	.loc 1 38 44
	lbu	a5,-17(s0)
	.loc 1 38 28
	mv	a0,a5
	.loc 1 38 87
	li	a1,0
	.loc 1 38 146
	li	a2,0
	.loc 1 38 205
	li	a7,1
	.loc 1 38 243
#APP
# 38 "include/asm/sbi.h" 1
	ecall
# 0 "" 2
#NO_APP
.LBE2:
	.loc 1 39 1
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	sbi_putchar, .-sbi_putchar
	.align	2
	.type	trigger_access_fault, @function
trigger_access_fault:
.LFB4:
	.file 2 "src/kernel.c"
	.loc 2 13 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 14 5
	call	trigger_load_access_fault
	.loc 2 15 1
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
.LFE4:
	.size	trigger_access_fault, .-trigger_access_fault
	.align	2
	.type	test_fault, @function
test_fault:
.LFB5:
	.loc 2 17 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 18 5
	call	trigger_access_fault
	.loc 2 19 1
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
.LFE5:
	.size	test_fault, .-test_fault
	.section	.rodata
	.align	3
.LC0:
	.string	"[func_level3] called with a=%d, b=%d, c=%d\n"
	.text
	.align	2
	.type	func_level3, @function
func_level3:
.LFB6:
	.loc 2 21 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a5,-20(s0)
	mv	a5,a3
	sw	a5,-24(s0)
	mv	a5,a4
	sw	a5,-28(s0)
	.loc 2 22 5
	lw	a3,-28(s0)
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC0
	call	printk
	.loc 2 23 5
	call	dump_stack
	.loc 2 24 14
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	.loc 2 24 18
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	.loc 2 25 1
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func_level3, .-func_level3
	.section	.rodata
	.align	3
.LC1:
	.string	"[func_level2] calling func_level3\n"
	.text
	.align	2
	.type	func_level2, @function
func_level2:
.LFB7:
	.loc 2 28 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	.loc 2 29 5
	lla	a0,.LC1
	call	printk
	.loc 2 30 12
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a3,a5
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	func_level3
	mv	a5,a0
	.loc 2 31 1
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	func_level2, .-func_level2
	.section	.rodata
	.align	3
.LC2:
	.string	"[func_level1] calling func_level2\n"
	.text
	.align	2
	.type	func_level1, @function
func_level1:
.LFB8:
	.loc 2 34 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 35 5
	lla	a0,.LC2
	call	printk
	.loc 2 36 12
	li	a1,5
	li	a0,3
	call	func_level2
	mv	a5,a0
	.loc 2 37 1
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	func_level1, .-func_level1
	.align	2
	.globl	uart_get
	.type	uart_get, @function
uart_get:
.LFB9:
	.loc 2 40 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB3:
	.loc 2 41 30
	li	a5,268435456
	addi	a5,a5,5
	.loc 2 41 23
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 2 41 80
	.loc 2 41 122
	lbu	a5,-17(s0)
.LBE3:
	.loc 2 41 130
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	.loc 2 41 5
	beq	a5,zero,.L11
.LBB4:
	.loc 2 42 34
	li	a5,268435456
	.loc 2 42 27
	lbu	a5,0(a5)
	sb	a5,-18(s0)
	.loc 2 42 84
	.loc 2 42 126
	lbu	a5,-18(s0)
.LBE4:
	.loc 2 42 11
	j	.L12
.L11:
	.loc 2 44 10
	li	a5,255
.L12:
	.loc 2 45 1
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	uart_get, .-uart_get
	.section	.rodata
	.align	3
.LC3:
	.string	"Init done\n"
	.align	3
.LC4:
	.string	"[kernel_main] func_level1 result = %d\n"
	.text
	.align	2
	.globl	kernel_main
	.type	kernel_main, @function
kernel_main:
.LFB10:
	.loc 2 47 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 48 5
	lla	a0,sbi_putchar
	call	init_printk_done
	.loc 2 50 5
	call	trap_init
	.loc 2 51 5
	lla	a0,.LC3
	call	printk
	.loc 2 53 13
	call	func_level1
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 2 54 5
	lw	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC4
	call	printk
	.loc 2 56 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 2 57 11
	j	.L14
.L15:
	.loc 2 58 20
	call	uart_get
	mv	a5,a0
	.loc 2 58 18 discriminator 1
	sw	a5,-20(s0)
.L14:
	.loc 2 57 21
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,52
	bne	a4,a5,.L15
	.loc 2 61 5
	call	test_fault
.L16:
	.loc 2 63 11
	nop
	j	.L16
	.cfi_endproc
.LFE10:
	.size	kernel_main, .-kernel_main
.Letext0:
	.file 3 "include/printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x29c
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x3
	.byte	0x4
	.byte	0x6
	.4byte	0x69
	.uleb128 0x4
	.4byte	0x69
	.byte	0
	.uleb128 0x6
	.4byte	0x6e
	.uleb128 0xd
	.4byte	0x79
	.uleb128 0x4
	.4byte	0x79
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0xe
	.4byte	0x79
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x3
	.byte	0x6
	.byte	0x5
	.4byte	0xa2
	.4byte	0xa2
	.uleb128 0x4
	.4byte	0xa9
	.uleb128 0x7
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.4byte	0x80
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x2
	.byte	0xa
	.byte	0xd
	.4byte	0xbc
	.uleb128 0x7
	.byte	0
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x2
	.byte	0x2e
	.byte	0x6
	.8byte	.LFB10
	.8byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7
	.uleb128 0x1
	.string	"r"
	.byte	0x2
	.byte	0x35
	.byte	0x9
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF10
	.byte	0x2
	.byte	0x38
	.byte	0x9
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x2
	.byte	0x27
	.byte	0x6
	.4byte	0x79
	.8byte	.LFB9
	.8byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160
	.uleb128 0x15
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.4byte	0x13e
	.uleb128 0x1
	.string	"__v"
	.byte	0x2
	.byte	0x29
	.byte	0x17
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x8
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.uleb128 0x1
	.string	"__v"
	.byte	0x2
	.byte	0x2a
	.byte	0x1b
	.4byte	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x2
	.byte	0x21
	.byte	0xc
	.4byte	0xa2
	.8byte	.LFB8
	.8byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1b
	.4byte	0xa2
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b9
	.uleb128 0x3
	.string	"x"
	.byte	0x2
	.byte	0x1b
	.byte	0x1c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"y"
	.byte	0x2
	.byte	0x1b
	.byte	0x23
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x14
	.4byte	0xa2
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x201
	.uleb128 0x3
	.string	"a"
	.byte	0x2
	.byte	0x14
	.byte	0x1c
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"b"
	.byte	0x2
	.byte	0x14
	.byte	0x23
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"c"
	.byte	0x2
	.byte	0x14
	.byte	0x2a
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x10
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0xc
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0x24
	.byte	0x25
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x8
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.uleb128 0x1
	.string	"a0"
	.byte	0x1
	.byte	0x26
	.byte	0x1c
	.4byte	0x43
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.string	"a1"
	.byte	0x1
	.byte	0x26
	.byte	0x57
	.4byte	0x43
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.string	"a2"
	.byte	0x1
	.byte	0x26
	.byte	0x92
	.4byte	0x43
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.string	"a7"
	.byte	0x1
	.byte	0x26
	.byte	0xcd
	.4byte	0x43
	.uleb128 0x1
	.byte	0x61
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x14
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x7a
	.uleb128 0x19
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
.LASF18:
	.string	"trigger_load_access_fault"
.LASF21:
	.string	"func_level1"
.LASF8:
	.string	"trap_init"
.LASF12:
	.string	"func_level3"
.LASF16:
	.string	"init_printk_done"
.LASF11:
	.string	"func_level2"
.LASF5:
	.string	"long unsigned int"
.LASF22:
	.string	"sbi_putchar"
.LASF10:
	.string	"tempchar"
.LASF2:
	.string	"unsigned char"
.LASF15:
	.string	"GNU C17 13.3.0 -mcmodel=medany -mabi=lp64 -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF6:
	.string	"_Bool"
.LASF19:
	.string	"kernel_main"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"test_fault"
.LASF9:
	.string	"dump_stack"
.LASF20:
	.string	"uart_get"
.LASF17:
	.string	"printk"
.LASF14:
	.string	"trigger_access_fault"
.LASF7:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/kernel.c"
.LASF1:
	.string	"/home/chen/Workspace/riscv/stacktraceHW"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
