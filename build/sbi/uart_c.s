	.file	"uart.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
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
	.loc 1 6 7 discriminator 1
	beqz	a5,.L2
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
	.loc 1 17 23 discriminator 3
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 17 3 discriminator 3
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
	.loc 1 16 2 discriminator 1
	bnez	a5,.L5
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
	.align	2
	.globl	uart_get
	.type	uart_get, @function
uart_get:
.LFB4:
	.loc 1 28 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB4:
	.loc 1 29 30
	li	a5,268435456
	addi	a5,a5,5
	.loc 1 29 23
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 1 29 80
	.loc 1 29 122
	lbu	a5,-17(s0)
.LBE4:
	.loc 1 29 130
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	.loc 1 29 5
	beqz	a5,.L9
.LBB5:
	.loc 1 30 34
	li	a5,268435456
	.loc 1 30 27
	lbu	a5,0(a5)
	sb	a5,-18(s0)
	.loc 1 30 84
	.loc 1 30 126
	lbu	a5,-18(s0)
.LBE5:
	.loc 1 30 11
	j	.L10
.L9:
	.loc 1 32 10
	li	a5,255
.L10:
	.loc 1 33 1
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	uart_get, .-uart_get
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
.LFB5:
	.loc 1 39 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 40 41
	lla	a5,uart16550_clock
	lw	a5,0(a5)
	.loc 1 40 15
	mv	a4,a5
	li	a5,1843200
	divuw	a5,a4,a5
	sw	a5,-20(s0)
.LBB6:
	.loc 1 43 19
	sb	zero,-21(s0)
	.loc 1 43 28
	.loc 1 43 71
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 43 119
	lbu	a4,-21(s0)
	sb	a4,0(a5)
.LBE6:
.LBB7:
	.loc 1 46 19
	li	a5,-128
	sb	a5,-22(s0)
	.loc 1 46 31
	.loc 1 46 74
	li	a5,268435456
	addi	a5,a5,3
	.loc 1 46 122
	lbu	a4,-22(s0)
	sb	a4,0(a5)
.LBE7:
.LBB8:
	.loc 1 47 19
	lw	a5,-20(s0)
	sb	a5,-23(s0)
	.loc 1 47 49
	.loc 1 47 92
	li	a5,268435456
	.loc 1 47 140
	lbu	a4,-23(s0)
	sb	a4,0(a5)
.LBE8:
.LBB9:
	.loc 1 48 49
	lw	a5,-20(s0)
	srliw	a5,a5,8
	sext.w	a5,a5
	.loc 1 48 19
	sb	a5,-24(s0)
	.loc 1 48 56
	.loc 1 48 99
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 48 147
	lbu	a4,-24(s0)
	sb	a4,0(a5)
.LBE9:
.LBB10:
	.loc 1 51 19
	li	a5,3
	sb	a5,-25(s0)
	.loc 1 51 30
	.loc 1 51 73
	li	a5,268435456
	addi	a5,a5,3
	.loc 1 51 121
	lbu	a4,-25(s0)
	sb	a4,0(a5)
.LBE10:
.LBB11:
	.loc 1 54 19
	li	a5,-57
	sb	a5,-26(s0)
	.loc 1 54 31
	.loc 1 54 74
	li	a5,268435456
	addi	a5,a5,2
	.loc 1 54 122
	lbu	a4,-26(s0)
	sb	a4,0(a5)
.LBE11:
.LBB12:
	.loc 1 58 19
	li	a5,1
	sb	a5,-27(s0)
	.loc 1 58 30
	.loc 1 58 73
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 58 121
	lbu	a4,-27(s0)
	sb	a4,0(a5)
.LBE12:
	.loc 1 59 1
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	uart_init, .-uart_init
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2cd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF8
	.byte	0xc
	.4byte	.LASF9
	.4byte	.LASF10
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x23
	.byte	0x15
	.4byte	0x43
	.byte	0x9
	.byte	0x3
	.8byte	uart16550_clock
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF5
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x177
	.byte	0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x28
	.byte	0xf
	.4byte	0x43
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0x9c
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x2b
	.byte	0x13
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x5
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.4byte	0xc1
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x2e
	.byte	0x13
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x6a
	.byte	0
	.byte	0x5
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.4byte	0xe6
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x2f
	.byte	0x13
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x69
	.byte	0
	.byte	0x5
	.8byte	.LBB9
	.8byte	.LBE9-.LBB9
	.4byte	0x10b
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x5
	.8byte	.LBB10
	.8byte	.LBE10-.LBB10
	.4byte	0x130
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x33
	.byte	0x13
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0
	.byte	0x5
	.8byte	.LBB11
	.8byte	.LBE11-.LBB11
	.4byte	0x155
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x36
	.byte	0x13
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x66
	.byte	0
	.byte	0x7
	.8byte	.LBB12
	.8byte	.LBE12-.LBB12
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x3a
	.byte	0x13
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x65
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	0x1e7
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e7
	.byte	0x5
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x1c5
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x1d
	.byte	0x17
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x7
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x1e
	.byte	0x1b
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x9
	.4byte	.LASF6
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x21a
	.byte	0xa
	.string	"c"
	.byte	0x1
	.byte	0x14
	.byte	0x13
	.4byte	0x1e7
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x9
	.4byte	.LASF7
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x255
	.byte	0xa
	.string	"str"
	.byte	0x1
	.byte	0xc
	.byte	0x1d
	.4byte	0x255
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.string	"i"
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	0x25b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xb
	.byte	0x8
	.4byte	0x1e7
	.byte	0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.string	"c"
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.4byte	0x1e7
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x5
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x2ae
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x6
	.byte	0x1a
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x7
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.byte	0x6
	.string	"__v"
	.byte	0x1
	.byte	0x9
	.byte	0x13
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.byte	0x6e
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
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x7
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
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
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x97,0x42
	.byte	0x19
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
.LASF6:
	.string	"putchar"
.LASF9:
	.string	"sbi/uart.c"
.LASF2:
	.string	"unsigned int"
.LASF5:
	.string	"uart_init"
.LASF0:
	.string	"uart16550_clock"
.LASF10:
	.string	"/home/rlk/rlk/BIG/trial2/benos"
.LASF7:
	.string	"uart_send_string"
.LASF8:
	.string	"GNU C17 9.3.0 -mcmodel=medany -mabi=lp64 -march=rv64imafd -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF3:
	.string	"unsigned char"
.LASF1:
	.string	"divisor"
.LASF12:
	.string	"uart_send"
.LASF11:
	.string	"uart_get"
.LASF4:
	.string	"char"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
