	.file	"kallsyms.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/chen/Workspace/riscv/stacktraceHW" "src/kallsyms.c"
	.align	2
	.type	is_kernel, @function
is_kernel:
.LFB0:
	.file 1 "src/kallsyms.c"
	.loc 1 65 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	.loc 1 66 14
	lla	a5,_stext
	.loc 1 66 5
	ld	a4,-24(s0)
	bltu	a4,a5,.L2
	.loc 1 67 12
	lla	a5,_etext
	.loc 1 66 36 discriminator 1
	ld	a4,-24(s0)
	bgtu	a4,a5,.L2
	.loc 1 68 10
	li	a5,1
	j	.L3
.L2:
	.loc 1 70 10
	li	a5,0
.L3:
	.loc 1 71 1
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	is_kernel, .-is_kernel
	.align	2
	.type	get_symbol_offset, @function
get_symbol_offset:
.LFB1:
	.loc 1 74 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	.loc 1 78 45
	ld	a5,-40(s0)
	srli	a5,a5,8
	.loc 1 78 41
	lla	a4,kallsyms_markers
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 78 7
	slli	a4,a5,32
	srli	a4,a4,32
	lla	a5,kallsyms_names
	add	a5,a4,a5
	sd	a5,-24(s0)
	.loc 1 80 9
	sw	zero,-28(s0)
	.loc 1 80 2
	j	.L5
.L6:
	.loc 1 81 18
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 1 81 25
	addi	a5,a5,1
	.loc 1 81 8
	ld	a4,-24(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	.loc 1 80 33 discriminator 3
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L5:
	.loc 1 80 16 discriminator 1
	lw	a4,-28(s0)
	.loc 1 80 23 discriminator 1
	ld	a5,-40(s0)
	andi	a5,a5,255
	.loc 1 80 16 discriminator 1
	bltu	a4,a5,.L6
	.loc 1 83 14
	ld	a4,-24(s0)
	lla	a5,kallsyms_names
	sub	a5,a4,a5
	sext.w	a5,a5
	.loc 1 84 1
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	get_symbol_offset, .-get_symbol_offset
	.align	2
	.type	kallsyms_expand_symbol, @function
kallsyms_expand_symbol:
.LFB2:
	.loc 1 87 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-64(s0)
	sw	a5,-52(s0)
	.loc 1 88 11
	sw	zero,-24(s0)
	.loc 1 91 7
	lwu	a4,-52(s0)
	lla	a5,kallsyms_names
	add	a5,a4,a5
	sd	a5,-40(s0)
	.loc 1 92 8
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 92 6
	sw	a5,-20(s0)
	.loc 1 93 6
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
	.loc 1 95 6
	lw	a5,-20(s0)
	lw	a4,-52(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,1
	sw	a5,-52(s0)
	.loc 1 97 8
	j	.L9
.L14:
	.loc 1 98 53
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	.loc 1 98 52
	lla	a4,kallsyms_token_index
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	.loc 1 98 8
	lla	a5,kallsyms_token_table
	add	a5,a4,a5
	sd	a5,-32(s0)
	.loc 1 99 7
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
	.loc 1 100 6
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 102 9
	j	.L10
.L13:
	.loc 1 103 7
	lw	a5,-24(s0)
	sext.w	a5,a5
	beq	a5,zero,.L11
	.loc 1 104 15
	ld	a5,-32(s0)
	lbu	a4,0(a5)
	.loc 1 104 13
	ld	a5,-64(s0)
	sb	a4,0(a5)
	.loc 1 105 11
	ld	a5,-64(s0)
	addi	a5,a5,1
	sd	a5,-64(s0)
	j	.L12
.L11:
	.loc 1 107 19
	li	a5,1
	sw	a5,-24(s0)
.L12:
	.loc 1 108 8
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L10:
	.loc 1 102 10
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L13
.L9:
	.loc 1 97 9
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L14
	.loc 1 112 10
	ld	a5,-64(s0)
	sb	zero,0(a5)
	.loc 1 114 9
	lw	a5,-52(s0)
	.loc 1 115 1
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	kallsyms_expand_symbol, .-kallsyms_expand_symbol
	.align	2
	.globl	kallsyms_lookup
	.type	kallsyms_lookup, @function
kallsyms_lookup:
.LFB3:
	.loc 1 119 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	sd	a3,-96(s0)
	.loc 1 122 9
	ld	a5,-96(s0)
	addi	a5,a5,127
	.loc 1 122 18
	sb	zero,0(a5)
	.loc 1 123 13
	ld	a5,-96(s0)
	sb	zero,0(a5)
	.loc 1 125 6
	ld	a0,-72(s0)
	call	is_kernel
	mv	a5,a0
	.loc 1 125 5 discriminator 1
	beq	a5,zero,.L17
.LBB2:
	.loc 1 126 17
	sd	zero,-48(s0)
	.loc 1 129 7
	sd	zero,-32(s0)
	.loc 1 130 8
	lla	a5,kallsyms_num_syms
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-40(s0)
	.loc 1 132 9
	j	.L18
.L21:
	.loc 1 133 15
	ld	a4,-32(s0)
	ld	a5,-40(s0)
	add	a5,a4,a5
	.loc 1 133 8
	srli	a5,a5,1
	sd	a5,-56(s0)
	.loc 1 134 26
	lla	a4,kallsyms_addresses
	ld	a5,-56(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	.loc 1 134 7
	ld	a4,-72(s0)
	bltu	a4,a5,.L19
	.loc 1 135 9
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	j	.L18
.L19:
	.loc 1 137 10
	ld	a5,-56(s0)
	sd	a5,-40(s0)
.L18:
	.loc 1 132 15
	ld	a4,-40(s0)
	ld	a5,-32(s0)
	sub	a4,a4,a5
	.loc 1 132 21
	li	a5,1
	bgtu	a4,a5,.L21
	.loc 1 141 3
	ld	a0,-32(s0)
	call	get_symbol_offset
	mv	a5,a0
	sext.w	a5,a5
	.loc 1 141 3 is_stmt 0 discriminator 1
	ld	a1,-96(s0)
	mv	a0,a5
	call	kallsyms_expand_symbol
	.loc 1 144 10 is_stmt 1
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
	.loc 1 144 3
	j	.L22
.L25:
	.loc 1 145 26
	lla	a4,kallsyms_addresses
	ld	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	.loc 1 145 50
	lla	a3,kallsyms_addresses
	ld	a5,-32(s0)
	slli	a5,a5,3
	add	a5,a3,a5
	ld	a5,0(a5)
	.loc 1 145 7
	bleu	a4,a5,.L23
	.loc 1 146 16
	lla	a4,kallsyms_addresses
	ld	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-48(s0)
	.loc 1 147 5
	j	.L24
.L23:
	.loc 1 144 45 discriminator 2
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L22:
	.loc 1 144 23 discriminator 1
	lla	a5,kallsyms_num_syms
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a4,-24(s0)
	bltu	a4,a5,.L25
.L24:
	.loc 1 151 48
	lla	a4,kallsyms_addresses
	ld	a5,-32(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	.loc 1 151 28
	ld	a4,-48(s0)
	sub	a4,a4,a5
	.loc 1 151 15
	ld	a5,-80(s0)
	sd	a4,0(a5)
	.loc 1 152 38
	lla	a4,kallsyms_addresses
	ld	a5,-32(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	.loc 1 152 18
	ld	a4,-72(s0)
	sub	a4,a4,a5
	.loc 1 152 11
	ld	a5,-88(s0)
	sd	a4,0(a5)
	.loc 1 153 10
	ld	a5,-96(s0)
	j	.L26
.L17:
.LBE2:
	.loc 1 156 9
	li	a5,0
.L26:
	.loc 1 157 1
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	kallsyms_lookup, .-kallsyms_lookup
	.section	.rodata
	.align	3
.LC0:
	.string	"[<0x%016lx>] "
	.align	3
.LC1:
	.string	"%s+0x%lx/0x%lx\n"
	.text
	.align	2
	.globl	print_symbol
	.type	print_symbol, @function
print_symbol:
.LFB4:
	.loc 1 160 1
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sd	a0,-184(s0)
	.loc 1 165 9
	addi	a3,s0,-168
	addi	a4,s0,-32
	addi	a5,s0,-40
	mv	a2,a4
	mv	a1,a5
	ld	a0,-184(s0)
	call	kallsyms_lookup
	sd	a0,-24(s0)
	.loc 1 166 5
	ld	a5,-24(s0)
	bne	a5,zero,.L28
	.loc 1 167 3
	ld	a1,-184(s0)
	lla	a0,.LC0
	call	printk
	.loc 1 172 1
	j	.L30
.L28:
	.loc 1 169 3
	ld	a1,-184(s0)
	lla	a0,.LC0
	call	printk
	.loc 1 170 3
	ld	a5,-32(s0)
	ld	a4,-40(s0)
	mv	a3,a4
	mv	a2,a5
	ld	a1,-24(s0)
	lla	a0,.LC1
	call	printk
.L30:
	.loc 1 172 1
	nop
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	print_symbol, .-print_symbol
	.weak	kallsyms_addresses
	.weak	kallsyms_num_syms
	.weak	kallsyms_token_table
	.weak	kallsyms_token_index
	.weak	kallsyms_names
	.weak	kallsyms_markers
.Letext0:
	.file 2 "include/type.h"
	.file 3 "include/printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x351
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.string	"u8"
	.byte	0x4
	.byte	0x17
	.4byte	0x3d
	.uleb128 0xa
	.4byte	0x2e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x9
	.string	"u16"
	.byte	0x5
	.byte	0x18
	.4byte	0x4f
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	0x5d
	.4byte	0x76
	.uleb128 0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x30
	.byte	0x16
	.4byte	0x6b
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x33
	.byte	0x15
	.4byte	0x56
	.uleb128 0x5
	.4byte	0x2e
	.4byte	0x97
	.uleb128 0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x36
	.byte	0xb
	.4byte	0x8c
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x39
	.byte	0xb
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0x44
	.4byte	0xb8
	.uleb128 0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3a
	.byte	0xc
	.4byte	0xad
	.uleb128 0x5
	.4byte	0x56
	.4byte	0xce
	.uleb128 0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3c
	.byte	0x15
	.4byte	0xc3
	.uleb128 0x5
	.4byte	0xe4
	.4byte	0xe4
	.uleb128 0x6
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0xa
	.4byte	0xe4
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3e
	.byte	0xd
	.4byte	0xd9
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3e
	.byte	0x17
	.4byte	0xd9
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x3
	.byte	0x6
	.byte	0x5
	.4byte	0x11d
	.4byte	0x11d
	.uleb128 0xf
	.4byte	0x124
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.4byte	0xeb
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9f
	.byte	0x6
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x190
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x9f
	.byte	0x21
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xa1
	.byte	0xe
	.4byte	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xa2
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0xa2
	.byte	0x18
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xa3
	.byte	0x7
	.4byte	0x190
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x5
	.4byte	0xe4
	.4byte	0x1a0
	.uleb128 0x13
	.4byte	0x5d
	.byte	0x7f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.4byte	0x124
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x255
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x75
	.byte	0x2b
	.4byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x75
	.byte	0x40
	.4byte	0x255
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x76
	.byte	0x12
	.4byte	0x255
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x76
	.byte	0x20
	.4byte	0x25a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.string	"i"
	.byte	0x78
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"low"
	.byte	0x78
	.byte	0x13
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x78
	.byte	0x18
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"mid"
	.byte	0x78
	.byte	0x1e
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x7e
	.byte	0x11
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x5d
	.uleb128 0x7
	.4byte	0xe4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x56
	.4byte	0x56
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d4
	.uleb128 0xc
	.string	"off"
	.byte	0x56
	.byte	0x39
	.4byte	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x56
	.byte	0x44
	.4byte	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"len"
	.byte	0x58
	.byte	0x6
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x58
	.byte	0xb
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x59
	.byte	0x6
	.4byte	0x2d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x59
	.byte	0xd
	.4byte	0x2d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.4byte	0x2e
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x49
	.4byte	0x56
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x322
	.uleb128 0xc
	.string	"pos"
	.byte	0x49
	.byte	0x35
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x4b
	.byte	0xc
	.4byte	0x322
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"i"
	.byte	0x4c
	.byte	0x6
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x7
	.4byte	0x38
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x40
	.byte	0xc
	.4byte	0x11d
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x40
	.byte	0x24
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 21
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x7c
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
.LASF10:
	.string	"kallsyms_token_table"
.LASF14:
	.string	"_stext"
.LASF22:
	.string	"high"
.LASF19:
	.string	"namebuf"
.LASF7:
	.string	"kallsyms_addresses"
.LASF33:
	.string	"kallsyms_lookup"
.LASF28:
	.string	"kallsyms_expand_symbol"
.LASF20:
	.string	"addr"
.LASF27:
	.string	"data"
.LASF2:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF25:
	.string	"skipped_first"
.LASF32:
	.string	"print_symbol"
.LASF30:
	.string	"GNU C17 13.3.0 -mcmodel=medany -mabi=lp64 -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF4:
	.string	"unsigned int"
.LASF29:
	.string	"get_symbol_offset"
.LASF13:
	.string	"char"
.LASF24:
	.string	"result"
.LASF9:
	.string	"kallsyms_names"
.LASF12:
	.string	"kallsyms_markers"
.LASF16:
	.string	"name"
.LASF17:
	.string	"offset"
.LASF31:
	.string	"printk"
.LASF21:
	.string	"symbolsize"
.LASF23:
	.string	"symbol_end"
.LASF11:
	.string	"kallsyms_token_index"
.LASF8:
	.string	"kallsyms_num_syms"
.LASF26:
	.string	"tptr"
.LASF18:
	.string	"size"
.LASF6:
	.string	"_Bool"
.LASF15:
	.string	"_etext"
.LASF34:
	.string	"is_kernel"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/chen/Workspace/riscv/stacktraceHW"
.LASF0:
	.string	"src/kallsyms.c"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
