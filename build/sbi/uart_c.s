	.file	"uart.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/chen/Workspace/riscv/stacktraceHW" "sbi/uart.c"
	.align	2
	.globl	uart_send
	.type	uart_send, @function
uart_send:
.LFB1:
	.file 1 "sbi/uart.c"
	.loc 1 5 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 6 7
	nop
.L2:
.LBB2:
	.loc 1 6 33 discriminator 1
	li	a5,268435456
	addi	a5,a5,5
	.loc 1 6 26 discriminator 1
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 1 6 83 discriminator 1
	.loc 1 6 125 discriminator 1
	lbu	a5,-17(s0)
.LBE2:
	.loc 1 6 133 discriminator 1
	sext.w	a5,a5
	andi	a5,a5,64
	sext.w	a5,a5
	.loc 1 6 141 discriminator 1
	beq	a5,zero,.L2
.LBB3:
	.loc 1 9 19
	lbu	a5,-33(s0)
	sb	a5,-18(s0)
	.loc 1 9 28
	.loc 1 9 71
	li	a5,268435456
	.loc 1 9 119
	lbu	a4,-18(s0)
	sb	a4,0(a5)
.LBE3:
	.loc 1 10 1
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	uart_send, .-uart_send
	.align	2
	.globl	uart_send_string
	.type	uart_send_string, @function
uart_send_string:
.LFB2:
	.loc 1 13 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	.loc 1 16 9
	sw	zero,-20(s0)
	.loc 1 16 2
	j	.L4
.L5:
	.loc 1 17 23
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 17 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	uart_send
	.loc 1 16 31 discriminator 3
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L4:
	.loc 1 16 17 discriminator 1
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 16 21 discriminator 1
	bne	a5,zero,.L5
	.loc 1 18 1
	nop
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	uart_send_string, .-uart_send_string
	.align	2
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB3:
	.loc 1 21 1
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
	sb	a5,-17(s0)
	.loc 1 22 11
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,10
	bne	a4,a5,.L7
	.loc 1 23 16
	li	a0,13
	call	uart_send
.L7:
	.loc 1 24 8
	lbu	a5,-17(s0)
	mv	a0,a5
	call	uart_send
	.loc 1 25 1
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	putchar, .-putchar
	.section	.sdata,"aw"
	.align	2
	.type	uart16550_clock, @object
	.size	uart16550_clock, 4
uart16550_clock:
	.word	1843200
	.text
	.align	2
	.globl	uart_init
	.type	uart_init, @function
uart_init:
.LFB4:
	.loc 1 32 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 33 41
	lla	a5,uart16550_clock
	lw	a5,0(a5)
	.loc 1 33 15
	mv	a4,a5
	li	a5,1843200
	divuw	a5,a4,a5
	sw	a5,-20(s0)
.LBB4:
	.loc 1 36 19
	sb	zero,-21(s0)
	.loc 1 36 28
	.loc 1 36 71
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 36 119
	lbu	a4,-21(s0)
	sb	a4,0(a5)
.LBE4:
.LBB5:
	.loc 1 39 19
	li	a5,-128
	sb	a5,-22(s0)
	.loc 1 39 31
	.loc 1 39 74
	li	a5,268435456
	addi	a5,a5,3
	.loc 1 39 122
	lbu	a4,-22(s0)
	sb	a4,0(a5)
.LBE5:
.LBB6:
	.loc 1 40 19
	lw	a5,-20(s0)
	sb	a5,-23(s0)
	.loc 1 40 49
	.loc 1 40 92
	li	a5,268435456
	.loc 1 40 140
	lbu	a4,-23(s0)
	sb	a4,0(a5)
.LBE6:
.LBB7:
	.loc 1 41 49
	lw	a5,-20(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	.loc 1 41 19
	sb	a5,-24(s0)
	.loc 1 41 56
	.loc 1 41 99
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 41 147
	lbu	a4,-24(s0)
	sb	a4,0(a5)
.LBE7:
.LBB8:
	.loc 1 44 19
	li	a5,3
	sb	a5,-25(s0)
	.loc 1 44 30
	.loc 1 44 73
	li	a5,268435456
	addi	a5,a5,3
	.loc 1 44 121
	lbu	a4,-25(s0)
	sb	a4,0(a5)
.LBE8:
.LBB9:
	.loc 1 47 19
	li	a5,-57
	sb	a5,-26(s0)
	.loc 1 47 31
	.loc 1 47 74
	li	a5,268435456
	addi	a5,a5,2
	.loc 1 47 122
	lbu	a4,-26(s0)
	sb	a4,0(a5)
.LBE9:
.LBB10:
	.loc 1 51 19
	li	a5,1
	sb	a5,-27(s0)
	.loc 1 51 30
	.loc 1 51 73
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 51 121
	lbu	a4,-27(s0)
	sb	a4,0(a5)
.LBE10:
	.loc 1 52 1
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	uart_init, .-uart_init
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x252
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.4byte	.LASF2
	.byte	0x1c
	.byte	0x15
	.4byte	0x43
	.uleb128 0x9
	.byte	0x3
	.8byte	uart16550_clock
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x9
	.4byte	.LASF6
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f
	.uleb128 0x5
	.4byte	.LASF3
	.byte	0x21
	.byte	0xf
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x9a
	.uleb128 0x1
	.string	"__v"
	.byte	0x24
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x2
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0xbe
	.uleb128 0x1
	.string	"__v"
	.byte	0x27
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x2
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0xe2
	.uleb128 0x1
	.string	"__v"
	.byte	0x28
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x2
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.4byte	0x106
	.uleb128 0x1
	.string	"__v"
	.byte	0x29
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.4byte	0x12a
	.uleb128 0x1
	.string	"__v"
	.byte	0x2c
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x2
	.8byte	.LBB9
	.8byte	.LBE9-.LBB9
	.4byte	0x14e
	.uleb128 0x1
	.string	"__v"
	.byte	0x2f
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x6
	.8byte	.LBB10
	.8byte	.LBE10-.LBB10
	.uleb128 0x1
	.string	"__v"
	.byte	0x33
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x14
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f
	.uleb128 0x4
	.string	"c"
	.byte	0x14
	.byte	0x13
	.4byte	0x19f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0xc
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dd
	.uleb128 0x4
	.string	"str"
	.byte	0xc
	.byte	0x1d
	.4byte	0x1dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0xe
	.byte	0x6
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.4byte	0x19f
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"c"
	.byte	0x4
	.byte	0x15
	.4byte	0x19f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x234
	.uleb128 0x1
	.string	"__v"
	.byte	0x6
	.byte	0x1a
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x6
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.uleb128 0x1
	.string	"__v"
	.byte	0x9
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
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
	.uleb128 0x4
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
.LASF7:
	.string	"putchar"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"uart_init"
.LASF10:
	.string	"GNU C17 13.3.0 -mcmodel=medany -mabi=lp64 -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF2:
	.string	"uart16550_clock"
.LASF8:
	.string	"char"
.LASF5:
	.string	"unsigned char"
.LASF11:
	.string	"uart_send"
.LASF3:
	.string	"divisor"
.LASF9:
	.string	"uart_send_string"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chen/Workspace/riscv/stacktraceHW"
.LASF0:
	.string	"sbi/uart.c"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
