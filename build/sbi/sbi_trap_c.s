	.file	"sbi_trap.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/chen/Workspace/riscv/stacktraceHW" "sbi/sbi_trap.c"
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
	.loc 1 12 7
	nop
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
	lla	a1,__func__.0
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
	bne	a5,zero,.L6
	.loc 1 63 7
	ld	a5,-48(s0)
	ld	a5,0(a5)
	.loc 1 63 14
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
	beq	a5,zero,.L15
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
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"sbi_trap_error"
	.text
.Letext0:
	.file 2 "sbi/sbi_trap_regs.h"
	.file 3 "include/uart.h"
	.file 4 "include/printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x45f
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.4byte	.LASF16
	.2byte	0x108
	.byte	0x2
	.byte	0xd
	.byte	0x8
	.4byte	0x190
	.uleb128 0xf
	.4byte	.LASF2
	.byte	0x2
	.byte	0xf
	.byte	0x10
	.4byte	0x190
	.byte	0
	.uleb128 0x1
	.string	"ra"
	.byte	0x10
	.4byte	0x190
	.byte	0x8
	.uleb128 0x1
	.string	"sp"
	.byte	0x11
	.4byte	0x190
	.byte	0x10
	.uleb128 0x1
	.string	"gp"
	.byte	0x12
	.4byte	0x190
	.byte	0x18
	.uleb128 0x1
	.string	"tp"
	.byte	0x13
	.4byte	0x190
	.byte	0x20
	.uleb128 0x1
	.string	"t0"
	.byte	0x14
	.4byte	0x190
	.byte	0x28
	.uleb128 0x1
	.string	"t1"
	.byte	0x15
	.4byte	0x190
	.byte	0x30
	.uleb128 0x1
	.string	"t2"
	.byte	0x16
	.4byte	0x190
	.byte	0x38
	.uleb128 0x1
	.string	"s0"
	.byte	0x17
	.4byte	0x190
	.byte	0x40
	.uleb128 0x1
	.string	"s1"
	.byte	0x18
	.4byte	0x190
	.byte	0x48
	.uleb128 0x1
	.string	"a0"
	.byte	0x19
	.4byte	0x190
	.byte	0x50
	.uleb128 0x1
	.string	"a1"
	.byte	0x1a
	.4byte	0x190
	.byte	0x58
	.uleb128 0x1
	.string	"a2"
	.byte	0x1b
	.4byte	0x190
	.byte	0x60
	.uleb128 0x1
	.string	"a3"
	.byte	0x1c
	.4byte	0x190
	.byte	0x68
	.uleb128 0x1
	.string	"a4"
	.byte	0x1d
	.4byte	0x190
	.byte	0x70
	.uleb128 0x1
	.string	"a5"
	.byte	0x1e
	.4byte	0x190
	.byte	0x78
	.uleb128 0x1
	.string	"a6"
	.byte	0x1f
	.4byte	0x190
	.byte	0x80
	.uleb128 0x1
	.string	"a7"
	.byte	0x20
	.4byte	0x190
	.byte	0x88
	.uleb128 0x1
	.string	"s2"
	.byte	0x21
	.4byte	0x190
	.byte	0x90
	.uleb128 0x1
	.string	"s3"
	.byte	0x22
	.4byte	0x190
	.byte	0x98
	.uleb128 0x1
	.string	"s4"
	.byte	0x23
	.4byte	0x190
	.byte	0xa0
	.uleb128 0x1
	.string	"s5"
	.byte	0x24
	.4byte	0x190
	.byte	0xa8
	.uleb128 0x1
	.string	"s6"
	.byte	0x25
	.4byte	0x190
	.byte	0xb0
	.uleb128 0x1
	.string	"s7"
	.byte	0x26
	.4byte	0x190
	.byte	0xb8
	.uleb128 0x1
	.string	"s8"
	.byte	0x27
	.4byte	0x190
	.byte	0xc0
	.uleb128 0x1
	.string	"s9"
	.byte	0x28
	.4byte	0x190
	.byte	0xc8
	.uleb128 0x1
	.string	"s10"
	.byte	0x29
	.4byte	0x190
	.byte	0xd0
	.uleb128 0x1
	.string	"s11"
	.byte	0x2a
	.4byte	0x190
	.byte	0xd8
	.uleb128 0x1
	.string	"t3"
	.byte	0x2b
	.4byte	0x190
	.byte	0xe0
	.uleb128 0x1
	.string	"t4"
	.byte	0x2c
	.4byte	0x190
	.byte	0xe8
	.uleb128 0x1
	.string	"t5"
	.byte	0x2d
	.4byte	0x190
	.byte	0xf0
	.uleb128 0x1
	.string	"t6"
	.byte	0x2e
	.4byte	0x190
	.byte	0xf8
	.uleb128 0x10
	.4byte	.LASF3
	.byte	0x2
	.byte	0x30
	.byte	0x10
	.4byte	0x190
	.2byte	0x100
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6c
	.byte	0xd
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x3
	.byte	0x8
	.byte	0x6
	.4byte	0x1b1
	.uleb128 0x9
	.4byte	0x1b1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0xa
	.4byte	0x1b1
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x4
	.byte	0x6
	.byte	0x5
	.4byte	0x1d4
	.4byte	0x1d4
	.uleb128 0x9
	.4byte	0x1db
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	0x1b8
	.uleb128 0xc
	.4byte	.LASF6
	.byte	0x6e
	.8byte	.LFB8
	.8byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x241
	.uleb128 0x6
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.4byte	0x220
	.uleb128 0x2
	.string	"__v"
	.byte	0x71
	.byte	0x13
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.uleb128 0x2
	.string	"__v"
	.byte	0x73
	.byte	0x13
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF7
	.byte	0x5d
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bc
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5f
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x60
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0x29b
	.uleb128 0x2
	.string	"__v"
	.byte	0x68
	.byte	0x14
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.uleb128 0x2
	.string	"__v"
	.byte	0x69
	.byte	0x14
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF10
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33e
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x44
	.byte	0x2d
	.4byte	0x33e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x46
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x47
	.4byte	0x190
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"rc"
	.byte	0x48
	.byte	0x6
	.4byte	0x1d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"msg"
	.byte	0x49
	.byte	0xe
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.uleb128 0x2
	.string	"__v"
	.byte	0x46
	.byte	0x33
	.4byte	0x190
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x2e
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x32
	.byte	0xc
	.4byte	0x1d4
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38f
	.uleb128 0x8
	.string	"id"
	.byte	0x32
	.byte	0x2a
	.4byte	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x32
	.byte	0x44
	.4byte	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"ret"
	.byte	0x34
	.byte	0x6
	.4byte	0x1d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x18
	.4byte	.LASF21
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x433
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x10
	.byte	0x32
	.4byte	0x33e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"msg"
	.byte	0x10
	.byte	0x44
	.4byte	0x1db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"rc"
	.byte	0x10
	.byte	0x4d
	.4byte	0x1d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF22
	.4byte	0x443
	.uleb128 0x9
	.byte	0x3
	.8byte	__func__.0
	.uleb128 0x6
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x413
	.uleb128 0x2
	.string	"__v"
	.byte	0x14
	.byte	0x20
	.4byte	0x190
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.uleb128 0x2
	.string	"__v"
	.byte	0x14
	.byte	0x8f
	.4byte	0x190
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	0x1b8
	.4byte	0x443
	.uleb128 0x1b
	.4byte	0x190
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.4byte	0x433
	.uleb128 0x1c
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xf
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
.LASF22:
	.string	"__func__"
.LASF13:
	.string	"regs"
.LASF7:
	.string	"delegate_traps"
.LASF21:
	.string	"sbi_trap_error"
.LASF12:
	.string	"ecall_id"
.LASF4:
	.string	"long unsigned int"
.LASF11:
	.string	"mcause"
.LASF8:
	.string	"interrupts"
.LASF16:
	.string	"sbi_trap_regs"
.LASF9:
	.string	"exceptions"
.LASF2:
	.string	"mepc"
.LASF18:
	.string	"putchar"
.LASF15:
	.string	"GNU C17 13.3.0 -mcmodel=medany -mabi=lp64 -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF6:
	.string	"sbi_trap_init"
.LASF23:
	.string	"sbi_panic"
.LASF20:
	.string	"sbi_ecall_handle"
.LASF5:
	.string	"char"
.LASF14:
	.string	"unsigned int"
.LASF10:
	.string	"sbi_trap_handler"
.LASF19:
	.string	"printk"
.LASF3:
	.string	"mstatus"
.LASF17:
	.string	"sbi_exception_vector"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"sbi/sbi_trap.c"
.LASF1:
	.string	"/home/chen/Workspace/riscv/stacktraceHW"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
