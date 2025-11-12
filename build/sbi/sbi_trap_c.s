	.file	"sbi_trap.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	3
.LC0:
	.string	"sbi panic\n"
	.text
	.align	2
	.globl	sbi_panic
	.type	sbi_panic, @function
sbi_panic:
.LFB3:
	.file 1 "sbi/sbi_trap.c"
	.loc 1 10 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 11 2
	lla	a0,.LC0
	call	printk
.L2:
	.loc 1 12 7 discriminator 1
	j	.L2
	.cfi_endproc
.LFE3:
	.size	sbi_panic, .-sbi_panic
	.section	.rodata
	.align	3
.LC1:
	.string	"%s: %s (error %d)\n"
	.align	3
.LC2:
	.string	"mcause: %016lx  mtval: %016lx \n"
	.align	3
.LC3:
	.string	"mepc: %016lx mstatus : %016lx\n"
	.align	3
.LC4:
	.string	" gp : %016lx tp : %016lx t0 : %016lx\n"
	.align	3
.LC5:
	.string	" t1 : %016lx t2 : %016lx t3 : %016lx\n"
	.align	3
.LC6:
	.string	" s1 : %016lx a0 : %016lx a1 : %016lx\n"
	.align	3
.LC7:
	.string	" a2 : %016lx a3 : %016lx a4 : %016lx\n"
	.align	3
.LC8:
	.string	" a5 : %016lx a6 : %016lx a7 : %016lx\n"
	.align	3
.LC9:
	.string	" s2 : %016lx s3 : %016lx s4 : %016lx\n"
	.align	3
.LC10:
	.string	" s5 : %016lx s6 : %016lx s7 : %016lx\n"
	.align	3
.LC11:
	.string	" s8 : %016lx s9 : %016lx s10: %016lx\n"
	.align	3
.LC12:
	.string	" s11: %016lx t3 : %016lx t4: %016lx\n"
	.align	3
.LC13:
	.string	" t5 : %016lx t6 : %016lx sp: %016lx\n"
	.align	3
.LC14:
	.string	" ra: %016lx\n"
	.text
	.align	2
	.type	sbi_trap_error, @function
sbi_trap_error:
.LFB4:
	.loc 1 17 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	mv	a5,a2
	sw	a5,-36(s0)
	.loc 1 18 2
	lw	a5,-36(s0)
	mv	a3,a5
	ld	a2,-32(s0)
	lla	a1,__func__.1592
	lla	a0,.LC1
	call	printk
.LBB2:
	.loc 1 20 37
#APP
# 20 "sbi/sbi_trap.c" 1
	csrr a5, mcause
# 0 "" 2
#NO_APP
	mv	ra,a5
	.loc 1 20 108
	mv	a4,ra
.LBE2:
.LBB3:
	.loc 1 20 148
#APP
# 20 "sbi/sbi_trap.c" 1
	csrr a5, mtval
# 0 "" 2
#NO_APP
	mv	ra,a5
	.loc 1 20 218
	mv	a5,ra
.LBE3:
	.loc 1 19 2
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC2
	call	printk
	.loc 1 22 2
	ld	a5,-24(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	ld	a5,256(a5)
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC3
	call	printk
	.loc 1 24 2
	ld	a5,-24(s0)
	ld	a4,24(a5)
	ld	a5,-24(s0)
	ld	a2,32(a5)
	ld	a5,-24(s0)
	ld	a5,40(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC4
	call	printk
	.loc 1 26 2
	ld	a5,-24(s0)
	ld	a4,48(a5)
	ld	a5,-24(s0)
	ld	a2,56(a5)
	ld	a5,-24(s0)
	ld	a5,64(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC5
	call	printk
	.loc 1 28 2
	ld	a5,-24(s0)
	ld	a4,72(a5)
	ld	a5,-24(s0)
	ld	a2,80(a5)
	ld	a5,-24(s0)
	ld	a5,88(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC6
	call	printk
	.loc 1 30 2
	ld	a5,-24(s0)
	ld	a4,96(a5)
	ld	a5,-24(s0)
	ld	a2,104(a5)
	ld	a5,-24(s0)
	ld	a5,112(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC7
	call	printk
	.loc 1 32 2
	ld	a5,-24(s0)
	ld	a4,120(a5)
	ld	a5,-24(s0)
	ld	a2,128(a5)
	ld	a5,-24(s0)
	ld	a5,136(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC8
	call	printk
	.loc 1 34 2
	ld	a5,-24(s0)
	ld	a4,144(a5)
	ld	a5,-24(s0)
	ld	a2,152(a5)
	ld	a5,-24(s0)
	ld	a5,160(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC9
	call	printk
	.loc 1 36 2
	ld	a5,-24(s0)
	ld	a4,168(a5)
	ld	a5,-24(s0)
	ld	a2,176(a5)
	ld	a5,-24(s0)
	ld	a5,184(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC10
	call	printk
	.loc 1 38 2
	ld	a5,-24(s0)
	ld	a4,192(a5)
	ld	a5,-24(s0)
	ld	a2,200(a5)
	ld	a5,-24(s0)
	ld	a5,208(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC11
	call	printk
	.loc 1 40 2
	ld	a5,-24(s0)
	ld	a4,216(a5)
	ld	a5,-24(s0)
	ld	a2,224(a5)
	ld	a5,-24(s0)
	ld	a5,232(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC12
	call	printk
	.loc 1 42 2
	ld	a5,-24(s0)
	ld	a4,240(a5)
	ld	a5,-24(s0)
	ld	a2,248(a5)
	ld	a5,-24(s0)
	ld	a5,16(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC13
	call	printk
	.loc 1 44 2
	ld	a5,-24(s0)
	ld	a5,8(a5)
	mv	a1,a5
	lla	a0,.LC14
	call	printk
	.loc 1 47 2
	call	sbi_panic
	.loc 1 48 1
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
.LFE4:
	.size	sbi_trap_error, .-sbi_trap_error
	.align	2
	.type	sbi_ecall_handle, @function
sbi_ecall_handle:
.LFB5:
	.loc 1 51 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-48(s0)
	sw	a5,-36(s0)
	.loc 1 52 6
	sw	zero,-20(s0)
	.loc 1 54 2
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L5
	.loc 1 56 15
	ld	a5,-48(s0)
	ld	a5,80(a5)
	.loc 1 56 3
	andi	a5,a5,0xff
	mv	a0,a5
	call	putchar
	.loc 1 57 7
	sw	zero,-20(s0)
	.loc 1 58 3
	nop
.L5:
	.loc 1 62 5
	lw	a5,-20(s0)
	sext.w	a5,a5
	bnez	a5,.L6
	.loc 1 63 14
	ld	a5,-48(s0)
	ld	a5,0(a5)
	addi	a4,a5,4
	ld	a5,-48(s0)
	sd	a4,0(a5)
.L6:
	.loc 1 65 9
	lw	a5,-20(s0)
	.loc 1 66 1
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	sbi_ecall_handle, .-sbi_ecall_handle
	.section	.rodata
	.align	3
.LC15:
	.string	"trap handler failed"
	.align	3
.LC16:
	.string	"ecall handler failed"
	.align	3
.LC17:
	.string	"load store access failed"
	.text
	.align	2
	.globl	sbi_trap_handler
	.type	sbi_trap_handler, @function
sbi_trap_handler:
.LFB6:
	.loc 1 69 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
.LBB4:
	.loc 1 70 56
#APP
# 70 "sbi/sbi_trap.c" 1
	csrr a5, mcause
# 0 "" 2
#NO_APP
	mv	s1,a5
	.loc 1 70 127
	mv	a5,s1
.LBE4:
	.loc 1 70 16
	sd	a5,-56(s0)
	.loc 1 71 16
	ld	a5,-72(s0)
	ld	a5,136(a5)
	sd	a5,-64(s0)
	.loc 1 72 6
	li	a5,-5
	sw	a5,-36(s0)
	.loc 1 73 14
	lla	a5,.LC15
	sd	a5,-48(s0)
	.loc 1 75 2
	ld	a4,-56(s0)
	li	a5,9
	beq	a4,a5,.L9
	ld	a4,-56(s0)
	li	a5,9
	bgtu	a4,a5,.L14
	ld	a4,-56(s0)
	li	a5,5
	beq	a4,a5,.L11
	ld	a4,-56(s0)
	li	a5,7
	beq	a4,a5,.L11
	.loc 1 85 3
	j	.L14
.L9:
	.loc 1 77 8
	ld	a5,-64(s0)
	sext.w	a5,a5
	ld	a1,-72(s0)
	mv	a0,a5
	call	sbi_ecall_handle
	mv	a5,a0
	sw	a5,-36(s0)
	.loc 1 78 7
	lla	a5,.LC16
	sd	a5,-48(s0)
	.loc 1 79 3
	j	.L12
.L11:
	.loc 1 82 7
	lla	a5,.LC17
	sd	a5,-48(s0)
	.loc 1 83 3
	j	.L12
.L14:
	.loc 1 85 3
	nop
.L12:
	.loc 1 88 5
	lw	a5,-36(s0)
	sext.w	a5,a5
	beqz	a5,.L15
	.loc 1 89 3
	lw	a5,-36(s0)
	mv	a2,a5
	ld	a1,-48(s0)
	ld	a0,-72(s0)
	call	sbi_trap_error
.L15:
	.loc 1 91 1
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	sbi_trap_handler, .-sbi_trap_handler
	.align	2
	.globl	delegate_traps
	.type	delegate_traps, @function
delegate_traps:
.LFB7:
	.loc 1 94 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 98 13
	li	a5,546
	sd	a5,-24(s0)
	.loc 1 99 13
	li	a5,45056
	addi	a5,a5,425
	sd	a5,-32(s0)
.LBB5:
	.loc 1 104 20
	ld	a5,-24(s0)
	sd	a5,-40(s0)
	.loc 1 104 55
	ld	a5,-40(s0)
#APP
# 104 "sbi/sbi_trap.c" 1
	csrw mideleg, a5
# 0 "" 2
#NO_APP
.LBE5:
.LBB6:
	.loc 1 105 20
	ld	a5,-32(s0)
	sd	a5,-48(s0)
	.loc 1 105 55
	ld	a5,-48(s0)
#APP
# 105 "sbi/sbi_trap.c" 1
	csrw medeleg, a5
# 0 "" 2
#NO_APP
.LBE6:
	.loc 1 106 1
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	delegate_traps, .-delegate_traps
	.align	2
	.globl	sbi_trap_init
	.type	sbi_trap_init, @function
sbi_trap_init:
.LFB8:
	.loc 1 111 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB7:
	.loc 1 113 19
	lla	a5,sbi_exception_vector
	sd	a5,-24(s0)
	.loc 1 113 64
	ld	a5,-24(s0)
#APP
# 113 "sbi/sbi_trap.c" 1
	csrw mtvec, a5
# 0 "" 2
#NO_APP
.LBE7:
.LBB8:
	.loc 1 115 19
	sd	zero,-32(s0)
	.loc 1 115 45
	ld	a5,-32(s0)
#APP
# 115 "sbi/sbi_trap.c" 1
	csrw mie, a5
# 0 "" 2
#NO_APP
.LBE8:
	.loc 1 116 1
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	sbi_trap_init, .-sbi_trap_init
	.section	.rodata
	.align	3
	.type	__func__.1592, @object
	.size	__func__.1592, 15
__func__.1592:
	.string	"sbi_trap_error"
	.text
.Letext0:
	.file 2 "sbi/sbi_trap_regs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x489
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF13
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF15
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF16
	.2byte	0x108
	.byte	0x2
	.byte	0xd
	.byte	0x8
	.4byte	0x1cd
	.byte	0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0xf
	.byte	0x10
	.4byte	0x1cd
	.byte	0
	.byte	0x4
	.string	"ra"
	.byte	0x2
	.byte	0x10
	.byte	0x10
	.4byte	0x1cd
	.byte	0x8
	.byte	0x4
	.string	"sp"
	.byte	0x2
	.byte	0x11
	.byte	0x10
	.4byte	0x1cd
	.byte	0x10
	.byte	0x4
	.string	"gp"
	.byte	0x2
	.byte	0x12
	.byte	0x10
	.4byte	0x1cd
	.byte	0x18
	.byte	0x4
	.string	"tp"
	.byte	0x2
	.byte	0x13
	.byte	0x10
	.4byte	0x1cd
	.byte	0x20
	.byte	0x4
	.string	"t0"
	.byte	0x2
	.byte	0x14
	.byte	0x10
	.4byte	0x1cd
	.byte	0x28
	.byte	0x4
	.string	"t1"
	.byte	0x2
	.byte	0x15
	.byte	0x10
	.4byte	0x1cd
	.byte	0x30
	.byte	0x4
	.string	"t2"
	.byte	0x2
	.byte	0x16
	.byte	0x10
	.4byte	0x1cd
	.byte	0x38
	.byte	0x4
	.string	"s0"
	.byte	0x2
	.byte	0x17
	.byte	0x10
	.4byte	0x1cd
	.byte	0x40
	.byte	0x4
	.string	"s1"
	.byte	0x2
	.byte	0x18
	.byte	0x10
	.4byte	0x1cd
	.byte	0x48
	.byte	0x4
	.string	"a0"
	.byte	0x2
	.byte	0x19
	.byte	0x10
	.4byte	0x1cd
	.byte	0x50
	.byte	0x4
	.string	"a1"
	.byte	0x2
	.byte	0x1a
	.byte	0x10
	.4byte	0x1cd
	.byte	0x58
	.byte	0x4
	.string	"a2"
	.byte	0x2
	.byte	0x1b
	.byte	0x10
	.4byte	0x1cd
	.byte	0x60
	.byte	0x4
	.string	"a3"
	.byte	0x2
	.byte	0x1c
	.byte	0x10
	.4byte	0x1cd
	.byte	0x68
	.byte	0x4
	.string	"a4"
	.byte	0x2
	.byte	0x1d
	.byte	0x10
	.4byte	0x1cd
	.byte	0x70
	.byte	0x4
	.string	"a5"
	.byte	0x2
	.byte	0x1e
	.byte	0x10
	.4byte	0x1cd
	.byte	0x78
	.byte	0x4
	.string	"a6"
	.byte	0x2
	.byte	0x1f
	.byte	0x10
	.4byte	0x1cd
	.byte	0x80
	.byte	0x4
	.string	"a7"
	.byte	0x2
	.byte	0x20
	.byte	0x10
	.4byte	0x1cd
	.byte	0x88
	.byte	0x4
	.string	"s2"
	.byte	0x2
	.byte	0x21
	.byte	0x10
	.4byte	0x1cd
	.byte	0x90
	.byte	0x4
	.string	"s3"
	.byte	0x2
	.byte	0x22
	.byte	0x10
	.4byte	0x1cd
	.byte	0x98
	.byte	0x4
	.string	"s4"
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.4byte	0x1cd
	.byte	0xa0
	.byte	0x4
	.string	"s5"
	.byte	0x2
	.byte	0x24
	.byte	0x10
	.4byte	0x1cd
	.byte	0xa8
	.byte	0x4
	.string	"s6"
	.byte	0x2
	.byte	0x25
	.byte	0x10
	.4byte	0x1cd
	.byte	0xb0
	.byte	0x4
	.string	"s7"
	.byte	0x2
	.byte	0x26
	.byte	0x10
	.4byte	0x1cd
	.byte	0xb8
	.byte	0x4
	.string	"s8"
	.byte	0x2
	.byte	0x27
	.byte	0x10
	.4byte	0x1cd
	.byte	0xc0
	.byte	0x4
	.string	"s9"
	.byte	0x2
	.byte	0x28
	.byte	0x10
	.4byte	0x1cd
	.byte	0xc8
	.byte	0x4
	.string	"s10"
	.byte	0x2
	.byte	0x29
	.byte	0x10
	.4byte	0x1cd
	.byte	0xd0
	.byte	0x4
	.string	"s11"
	.byte	0x2
	.byte	0x2a
	.byte	0x10
	.4byte	0x1cd
	.byte	0xd8
	.byte	0x4
	.string	"t3"
	.byte	0x2
	.byte	0x2b
	.byte	0x10
	.4byte	0x1cd
	.byte	0xe0
	.byte	0x4
	.string	"t4"
	.byte	0x2
	.byte	0x2c
	.byte	0x10
	.4byte	0x1cd
	.byte	0xe8
	.byte	0x4
	.string	"t5"
	.byte	0x2
	.byte	0x2d
	.byte	0x10
	.4byte	0x1cd
	.byte	0xf0
	.byte	0x4
	.string	"t6"
	.byte	0x2
	.byte	0x2e
	.byte	0x10
	.4byte	0x1cd
	.byte	0xf8
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x30
	.byte	0x10
	.4byte	0x1cd
	.2byte	0x100
	.byte	0
	.byte	0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.8byte	.LFB8
	.8byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x239
	.byte	0x8
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.4byte	0x217
	.byte	0x9
	.string	"__v"
	.byte	0x1
	.byte	0x71
	.byte	0x13
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xa
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.byte	0x9
	.string	"__v"
	.byte	0x1
	.byte	0x73
	.byte	0x13
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x2bc
	.byte	0xb
	.4byte	.LASF4
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xb
	.4byte	.LASF5
	.byte	0x1
	.byte	0x60
	.byte	0x10
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x8
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0x29a
	.byte	0x9
	.string	"__v"
	.byte	0x1
	.byte	0x68
	.byte	0x14
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0xa
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.byte	0x9
	.string	"__v"
	.byte	0x1
	.byte	0x69
	.byte	0x14
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF6
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x346
	.byte	0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x44
	.byte	0x2d
	.4byte	0x346
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0xb
	.4byte	.LASF7
	.byte	0x1
	.byte	0x46
	.byte	0x10
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xb
	.4byte	.LASF8
	.byte	0x1
	.byte	0x47
	.byte	0x10
	.4byte	0x1cd
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x9
	.string	"rc"
	.byte	0x1
	.byte	0x48
	.byte	0x6
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x9
	.string	"msg"
	.byte	0x1
	.byte	0x49
	.byte	0xe
	.4byte	0x353
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xa
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.byte	0x9
	.string	"__v"
	.byte	0x1
	.byte	0x46
	.byte	0x33
	.4byte	0x1cd
	.byte	0x1
	.byte	0x59
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x8
	.4byte	0x2d
	.byte	0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xe
	.byte	0x8
	.4byte	0x360
	.byte	0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0x10
	.4byte	0x359
	.byte	0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.4byte	0x34c
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b4
	.byte	0x12
	.string	"id"
	.byte	0x1
	.byte	0x32
	.byte	0x2a
	.4byte	0x3b4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x32
	.byte	0x44
	.4byte	0x346
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x9
	.string	"ret"
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x45d
	.byte	0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x10
	.byte	0x32
	.4byte	0x346
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.string	"msg"
	.byte	0x1
	.byte	0x10
	.byte	0x44
	.4byte	0x353
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x12
	.string	"rc"
	.byte	0x1
	.byte	0x10
	.byte	0x4d
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.4byte	.LASF19
	.4byte	0x46d
	.byte	0x9
	.byte	0x3
	.8byte	__func__.1592
	.byte	0x8
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x43c
	.byte	0x9
	.string	"__v"
	.byte	0x1
	.byte	0x14
	.byte	0x20
	.4byte	0x1cd
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0xa
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.byte	0x9
	.string	"__v"
	.byte	0x1
	.byte	0x14
	.byte	0x8f
	.4byte	0x1cd
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	0x360
	.4byte	0x46d
	.byte	0x16
	.4byte	0x1cd
	.byte	0xe
	.byte	0
	.byte	0x10
	.4byte	0x45d
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
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
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x3
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
	.byte	0x4
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
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
.LASF17:
	.string	"sbi_ecall_handle"
.LASF3:
	.string	"delegate_traps"
.LASF19:
	.string	"__func__"
.LASF8:
	.string	"ecall_id"
.LASF9:
	.string	"long unsigned int"
.LASF7:
	.string	"mcause"
.LASF4:
	.string	"interrupts"
.LASF16:
	.string	"sbi_trap_regs"
.LASF5:
	.string	"exceptions"
.LASF13:
	.string	"GNU C17 9.3.0 -mcmodel=medany -mabi=lp64 -march=rv64imafd -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF0:
	.string	"mepc"
.LASF2:
	.string	"sbi_trap_init"
.LASF18:
	.string	"sbi_trap_error"
.LASF10:
	.string	"char"
.LASF12:
	.string	"unsigned int"
.LASF11:
	.string	"regs"
.LASF6:
	.string	"sbi_trap_handler"
.LASF1:
	.string	"mstatus"
.LASF20:
	.string	"sbi_panic"
.LASF15:
	.string	"/home/rlk/rlk/BIG/trial2/benos"
.LASF14:
	.string	"sbi/sbi_trap.c"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
