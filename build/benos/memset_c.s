	.file	"memset.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/chen/Workspace/riscv/stacktraceHW" "src/memset.c"
	.align	2
	.type	__memset_16bytes_inline_asm, @function
__memset_16bytes_inline_asm:
.LFB0:
	.file 1 "src/memset.c"
	.loc 1 7 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	.loc 1 8 6
	sw	zero,-20(s0)
	.loc 1 10 2
	ld	a2,-48(s0)
	ld	a5,-40(s0)
	lw	a4,-52(s0)
	mv	a0,a4
	lw	a4,-20(s0)
	mv	a1,a4
	mv	a3,a5
	mv	a4,a0
	mv	a5,a1
#APP
# 10 "src/memset.c" 1
	1: sd a2, (a3)
sd a2, 8(a3)
addi a5, a5, 16
blt a5, a4, 1b
# 0 "" 2
#NO_APP
	sd	a3,-40(s0)
	sw	a4,-52(s0)
	sw	a5,-20(s0)
	.loc 1 19 1
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	__memset_16bytes_inline_asm, .-__memset_16bytes_inline_asm
	.align	2
	.type	__memset_1bytes, @function
__memset_1bytes:
.LFB1:
	.loc 1 22 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a2
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	.loc 1 23 8
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	.loc 1 25 8
	j	.L3
.L4:
	.loc 1 26 6
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	.loc 1 26 9
	lw	a4,-44(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
.L3:
	.loc 1 25 14
	lw	a5,-48(s0)
	addiw	a4,a5,-1
	sw	a4,-48(s0)
	.loc 1 25 9
	bne	a5,zero,.L4
	.loc 1 27 9
	ld	a5,-40(s0)
	.loc 1 28 1
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	__memset_1bytes, .-__memset_1bytes
	.align	2
	.type	__memset, @function
__memset:
.LFB2:
	.loc 1 31 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	mv	a5,a1
	mv	a4,a2
	sw	a5,-76(s0)
	mv	a5,a4
	sw	a5,-80(s0)
	.loc 1 32 8
	ld	a5,-72(s0)
	sd	a5,-24(s0)
	.loc 1 33 16
	li	a5,16
	sd	a5,-48(s0)
	.loc 1 34 15
	lw	a5,-80(s0)
	sw	a5,-28(s0)
	.loc 1 36 16
	ld	a5,-24(s0)
	sd	a5,-56(s0)
	.loc 1 37 16
	sd	zero,-40(s0)
	.loc 1 42 9
	sw	zero,-32(s0)
	.loc 1 42 2
	j	.L7
.L8:
	.loc 1 43 31
	lw	a5,-76(s0)
	andi	a5,a5,255
	.loc 1 43 45
	lw	a4,-32(s0)
	slliw	a4,a4,3
	sext.w	a4,a4
	.loc 1 43 39
	sll	a5,a5,a4
	.loc 1 43 8
	ld	a4,-40(s0)
	or	a5,a4,a5
	sd	a5,-40(s0)
	.loc 1 42 22 discriminator 3
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L7:
	.loc 1 42 16 discriminator 1
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L8
	.loc 1 46 23
	ld	a5,-48(s0)
	addi	a4,a5,-1
	.loc 1 46 14
	ld	a5,-56(s0)
	and	a5,a4,a5
	.loc 1 46 5
	beq	a5,zero,.L9
	.loc 1 47 27
	ld	a5,-48(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	.loc 1 47 18
	ld	a5,-56(s0)
	sext.w	a5,a5
	.loc 1 47 8
	and	a5,a4,a5
	sw	a5,-60(s0)
	.loc 1 48 16
	ld	a5,-48(s0)
	sext.w	a5,a5
	.loc 1 48 8
	lw	a4,-60(s0)
	subw	a5,a5,a4
	sw	a5,-60(s0)
	.loc 1 49 3
	lw	a4,-60(s0)
	lw	a5,-76(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-24(s0)
	call	__memset_1bytes
	.loc 1 50 9
	lwu	a5,-60(s0)
	.loc 1 50 5
	ld	a4,-24(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	.loc 1 51 8
	lw	a5,-80(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	subw	a5,a4,a5
	sw	a5,-28(s0)
.L9:
	.loc 1 55 11
	lwu	a5,-28(s0)
	.loc 1 55 5
	ld	a4,-48(s0)
	bgeu	a4,a5,.L10
	.loc 1 56 12
	lwu	a4,-28(s0)
	ld	a5,-48(s0)
	divu	a5,a4,a5
	.loc 1 56 5
	sw	a5,-64(s0)
	.loc 1 57 15
	lwu	a4,-28(s0)
	ld	a5,-48(s0)
	remu	a5,a4,a5
	.loc 1 57 8
	sw	a5,-28(s0)
	.loc 1 62 3
	lw	a5,-64(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	mv	a2,a5
	ld	a1,-40(s0)
	ld	a0,-24(s0)
	call	__memset_16bytes_inline_asm
	.loc 1 65 6
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L10
	.loc 1 66 26
	lw	a5,-64(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	mv	a4,a5
	.loc 1 66 22
	ld	a5,-24(s0)
	add	a5,a5,a4
	.loc 1 66 4
	lw	a3,-28(s0)
	lw	a4,-76(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	__memset_1bytes
.L10:
	.loc 1 69 9
	ld	a5,-72(s0)
	.loc 1 70 1
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	__memset, .-__memset
	.align	2
	.globl	memset
	.type	memset, @function
memset:
.LFB3:
	.loc 1 73 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	mv	a4,a2
	sw	a5,-28(s0)
	mv	a5,a4
	sw	a5,-32(s0)
	.loc 1 74 9
	lw	a4,-32(s0)
	lw	a5,-28(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-24(s0)
	call	__memset
	mv	a5,a0
	.loc 1 75 1
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
.LFE3:
	.size	memset, .-memset
.Letext0:
	.file 2 "include/type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x214
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x6
	.4byte	.LASF16
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
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x2
	.byte	0x9
	.byte	0x16
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF6
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x48
	.byte	0x7
	.4byte	0xa6
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6
	.uleb128 0x1
	.string	"s"
	.byte	0x48
	.byte	0x14
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"c"
	.byte	0x48
	.byte	0x1b
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x48
	.byte	0x25
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1e
	.byte	0xe
	.4byte	0xa6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165
	.uleb128 0x1
	.string	"s"
	.byte	0x1e
	.byte	0x1d
	.4byte	0x165
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"c"
	.byte	0x1e
	.byte	0x24
	.4byte	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x1e
	.byte	0x2e
	.4byte	0x4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.string	"p"
	.byte	0x20
	.byte	0x8
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x21
	.byte	0x10
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x22
	.byte	0x9
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x22
	.byte	0xf
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"n"
	.byte	0x23
	.byte	0x6
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"i"
	.byte	0x23
	.byte	0x9
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x24
	.byte	0x10
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x25
	.byte	0x10
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.4byte	0x16b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.4byte	0xa6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c8
	.uleb128 0x1
	.string	"s"
	.byte	0x15
	.byte	0x24
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"c"
	.byte	0x15
	.byte	0x2b
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x15
	.byte	0x35
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"xs"
	.byte	0x17
	.byte	0x8
	.4byte	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5
	.byte	0xd
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.string	"p"
	.byte	0x5
	.byte	0x2f
	.4byte	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"val"
	.byte	0x5
	.byte	0x40
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x6
	.byte	0x7
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"i"
	.byte	0x8
	.byte	0x6
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x16
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
.LASF14:
	.string	"__memset"
.LASF10:
	.string	"left"
.LASF17:
	.string	"size_t"
.LASF11:
	.string	"address"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"data"
.LASF2:
	.string	"unsigned char"
.LASF16:
	.string	"GNU C17 13.3.0 -mcmodel=medany -mabi=lp64 -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF7:
	.string	"count"
.LASF8:
	.string	"align"
.LASF6:
	.string	"_Bool"
.LASF15:
	.string	"__memset_1bytes"
.LASF19:
	.string	"__memset_16bytes_inline_asm"
.LASF3:
	.string	"short unsigned int"
.LASF9:
	.string	"size"
.LASF18:
	.string	"memset"
.LASF13:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"src/memset.c"
.LASF1:
	.string	"/home/chen/Workspace/riscv/stacktraceHW"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
