	.file	"trap.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	3
.LC0:
	.string	"Kernel panic\n"
	.text
	.align	2
	.globl	panic
	.type	panic, @function
panic:
.LFB1:
	.file 1 "src/trap.c"
	.loc 1 15 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 16 2
	lla	a0,.LC0
	call	printk
.L2:
	.loc 1 17 7 discriminator 1
	j	.L2
	.cfi_endproc
.LFE1:
	.size	panic, .-panic
	.section	.rodata
	.align	3
.LC1:
	.string	"sepc: %016lx ra : %016lx sp : %016lx\n"
	.align	3
.LC2:
	.string	" gp : %016lx tp : %016lx t0 : %016lx\n"
	.align	3
.LC3:
	.string	" t1 : %016lx t2 : %016lx t3 : %016lx\n"
	.align	3
.LC4:
	.string	" s1 : %016lx a0 : %016lx a1 : %016lx\n"
	.align	3
.LC5:
	.string	" a2 : %016lx a3 : %016lx a4 : %016lx\n"
	.align	3
.LC6:
	.string	" a5 : %016lx a6 : %016lx a7 : %016lx\n"
	.align	3
.LC7:
	.string	" s2 : %016lx s3 : %016lx s4 : %016lx\n"
	.align	3
.LC8:
	.string	" s5 : %016lx s6 : %016lx s7 : %016lx\n"
	.align	3
.LC9:
	.string	" s8 : %016lx s9 : %016lx s10: %016lx\n"
	.align	3
.LC10:
	.string	" s11: %016lx t3 : %016lx t4: %016lx\n"
	.align	3
.LC11:
	.string	" t5 : %016lx t6 : %016lx\n"
	.text
	.align	2
	.globl	show_regs
	.type	show_regs, @function
show_regs:
.LFB2:
	.loc 1 22 1
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
	.loc 1 23 2
	ld	a5,-24(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	ld	a2,8(a5)
	ld	a5,-24(s0)
	ld	a5,16(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC1
	call	printk
	.loc 1 25 2
	ld	a5,-24(s0)
	ld	a4,24(a5)
	ld	a5,-24(s0)
	ld	a2,32(a5)
	ld	a5,-24(s0)
	ld	a5,40(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC2
	call	printk
	.loc 1 27 2
	ld	a5,-24(s0)
	ld	a4,48(a5)
	ld	a5,-24(s0)
	ld	a2,56(a5)
	ld	a5,-24(s0)
	ld	a5,64(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC3
	call	printk
	.loc 1 29 2
	ld	a5,-24(s0)
	ld	a4,72(a5)
	ld	a5,-24(s0)
	ld	a2,80(a5)
	ld	a5,-24(s0)
	ld	a5,88(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC4
	call	printk
	.loc 1 31 2
	ld	a5,-24(s0)
	ld	a4,96(a5)
	ld	a5,-24(s0)
	ld	a2,104(a5)
	ld	a5,-24(s0)
	ld	a5,112(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC5
	call	printk
	.loc 1 33 2
	ld	a5,-24(s0)
	ld	a4,120(a5)
	ld	a5,-24(s0)
	ld	a2,128(a5)
	ld	a5,-24(s0)
	ld	a5,136(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC6
	call	printk
	.loc 1 35 2
	ld	a5,-24(s0)
	ld	a4,144(a5)
	ld	a5,-24(s0)
	ld	a2,152(a5)
	ld	a5,-24(s0)
	ld	a5,160(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC7
	call	printk
	.loc 1 37 2
	ld	a5,-24(s0)
	ld	a4,168(a5)
	ld	a5,-24(s0)
	ld	a2,176(a5)
	ld	a5,-24(s0)
	ld	a5,184(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC8
	call	printk
	.loc 1 39 2
	ld	a5,-24(s0)
	ld	a4,192(a5)
	ld	a5,-24(s0)
	ld	a2,200(a5)
	ld	a5,-24(s0)
	ld	a5,208(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC9
	call	printk
	.loc 1 41 2
	ld	a5,-24(s0)
	ld	a4,216(a5)
	ld	a5,-24(s0)
	ld	a2,224(a5)
	ld	a5,-24(s0)
	ld	a5,232(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC10
	call	printk
	.loc 1 43 2
	ld	a5,-24(s0)
	ld	a4,240(a5)
	ld	a5,-24(s0)
	ld	a5,248(a5)
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC11
	call	printk
	.loc 1 45 1
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
.LFE2:
	.size	show_regs, .-show_regs
	.section	.rodata
	.align	3
.LC12:
	.string	"Oops - %s\n"
	.align	3
.LC13:
	.string	"sstatus:0x%016lx  sbadaddr:0x%016lx  scause:0x%016lx\n"
	.text
	.align	2
	.type	do_trap_error, @function
do_trap_error:
.LFB3:
	.loc 1 48 1
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
	sd	a1,-32(s0)
	.loc 1 49 2
	ld	a1,-32(s0)
	lla	a0,.LC12
	call	printk
	.loc 1 51 2
	ld	a0,-24(s0)
	call	show_regs
	.loc 1 52 2
	ld	a5,-24(s0)
	ld	a4,256(a5)
	ld	a5,-24(s0)
	ld	a2,264(a5)
	ld	a5,-24(s0)
	ld	a5,272(a5)
	mv	a3,a5
	mv	a1,a4
	lla	a0,.LC13
	call	printk
	.loc 1 54 2
	call	dump_stack
	.loc 1 55 2
	call	panic
	.loc 1 56 1
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
	.size	do_trap_error, .-do_trap_error
	.align	2
	.globl	do_trap_unknown
	.type	do_trap_unknown, @function
do_trap_unknown:
.LFB4:
	.loc 1 65 60
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
	sd	a1,-32(s0)
	.loc 1 65 62
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 65 95
	li	a5,0
	.loc 1 65 28
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
.LFE4:
	.size	do_trap_unknown, .-do_trap_unknown
	.align	2
	.globl	do_trap_insn_misaligned
	.type	do_trap_insn_misaligned, @function
do_trap_insn_misaligned:
.LFB5:
	.loc 1 66 68
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
	sd	a1,-32(s0)
	.loc 1 66 70
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 66 103
	li	a5,0
	.loc 1 66 36
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
.LFE5:
	.size	do_trap_insn_misaligned, .-do_trap_insn_misaligned
	.align	2
	.globl	do_trap_insn_fault
	.type	do_trap_insn_fault, @function
do_trap_insn_fault:
.LFB6:
	.loc 1 67 63
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
	sd	a1,-32(s0)
	.loc 1 67 65
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 67 98
	li	a5,0
	.loc 1 67 31
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
	.size	do_trap_insn_fault, .-do_trap_insn_fault
	.align	2
	.globl	do_trap_insn_illegal
	.type	do_trap_insn_illegal, @function
do_trap_insn_illegal:
.LFB7:
	.loc 1 68 65
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
	sd	a1,-32(s0)
	.loc 1 68 67
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 68 100
	li	a5,0
	.loc 1 68 33
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
	.size	do_trap_insn_illegal, .-do_trap_insn_illegal
	.align	2
	.globl	do_trap_load_misaligned
	.type	do_trap_load_misaligned, @function
do_trap_load_misaligned:
.LFB8:
	.loc 1 69 68
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
	sd	a1,-32(s0)
	.loc 1 69 70
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 69 103
	li	a5,0
	.loc 1 69 36
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
.LFE8:
	.size	do_trap_load_misaligned, .-do_trap_load_misaligned
	.align	2
	.globl	do_trap_load_fault
	.type	do_trap_load_fault, @function
do_trap_load_fault:
.LFB9:
	.loc 1 70 63
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
	sd	a1,-32(s0)
	.loc 1 70 65
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 70 98
	li	a5,0
	.loc 1 70 31
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
.LFE9:
	.size	do_trap_load_fault, .-do_trap_load_fault
	.align	2
	.globl	do_trap_store_misaligned
	.type	do_trap_store_misaligned, @function
do_trap_store_misaligned:
.LFB10:
	.loc 1 71 69
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
	sd	a1,-32(s0)
	.loc 1 71 71
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 71 104
	li	a5,0
	.loc 1 71 37
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
.LFE10:
	.size	do_trap_store_misaligned, .-do_trap_store_misaligned
	.align	2
	.globl	do_trap_store_fault
	.type	do_trap_store_fault, @function
do_trap_store_fault:
.LFB11:
	.loc 1 72 64
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
	sd	a1,-32(s0)
	.loc 1 72 66
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 72 99
	li	a5,0
	.loc 1 72 32
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
.LFE11:
	.size	do_trap_store_fault, .-do_trap_store_fault
	.align	2
	.globl	do_trap_ecall_u
	.type	do_trap_ecall_u, @function
do_trap_ecall_u:
.LFB12:
	.loc 1 73 60
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
	sd	a1,-32(s0)
	.loc 1 73 62
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 73 95
	li	a5,0
	.loc 1 73 28
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
.LFE12:
	.size	do_trap_ecall_u, .-do_trap_ecall_u
	.align	2
	.globl	do_trap_ecall_s
	.type	do_trap_ecall_s, @function
do_trap_ecall_s:
.LFB13:
	.loc 1 74 60
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
	sd	a1,-32(s0)
	.loc 1 74 62
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 74 95
	li	a5,0
	.loc 1 74 28
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
.LFE13:
	.size	do_trap_ecall_s, .-do_trap_ecall_s
	.align	2
	.globl	do_trap_break
	.type	do_trap_break, @function
do_trap_break:
.LFB14:
	.loc 1 75 58
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
	sd	a1,-32(s0)
	.loc 1 75 60
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 75 93
	li	a5,0
	.loc 1 75 26
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
.LFE14:
	.size	do_trap_break, .-do_trap_break
	.align	2
	.globl	do_page_fault
	.type	do_page_fault, @function
do_page_fault:
.LFB15:
	.loc 1 76 58
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
	sd	a1,-32(s0)
	.loc 1 76 60
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	do_trap_error
	.loc 1 76 93
	li	a5,0
	.loc 1 76 26
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
.LFE15:
	.size	do_page_fault, .-do_page_fault
	.section	.rodata
	.align	3
.LC14:
	.string	"Instruction address misaligned"
	.align	3
.LC15:
	.string	"Instruction access fault"
	.align	3
.LC16:
	.string	"Illegal instruction"
	.align	3
.LC17:
	.string	"Breakpoint"
	.align	3
.LC18:
	.string	"Load address misaligned"
	.align	3
.LC19:
	.string	"Load access fault"
	.align	3
.LC20:
	.string	"Store/AMO address misaligned"
	.align	3
.LC21:
	.string	"Store/AMO access fault"
	.align	3
.LC22:
	.string	"Environment call from U-mode"
	.align	3
.LC23:
	.string	"Environment call from S-mode"
	.align	3
.LC24:
	.string	"unknown 10"
	.align	3
.LC25:
	.string	"unknown 11"
	.align	3
.LC26:
	.string	"Instruction page fault"
	.align	3
.LC27:
	.string	"Load page fault"
	.align	3
.LC28:
	.string	"unknown 14"
	.align	3
.LC29:
	.string	"Store/AMO page fault"
	.align	3
	.type	fault_info, @object
	.size	fault_info, 256
fault_info:
	.dword	do_trap_insn_misaligned
	.dword	.LC14
	.dword	do_trap_insn_fault
	.dword	.LC15
	.dword	do_trap_insn_illegal
	.dword	.LC16
	.dword	do_trap_break
	.dword	.LC17
	.dword	do_trap_load_misaligned
	.dword	.LC18
	.dword	do_trap_load_fault
	.dword	.LC19
	.dword	do_trap_store_misaligned
	.dword	.LC20
	.dword	do_trap_store_fault
	.dword	.LC21
	.dword	do_trap_ecall_u
	.dword	.LC22
	.dword	do_trap_ecall_s
	.dword	.LC23
	.dword	do_trap_unknown
	.dword	.LC24
	.dword	do_trap_unknown
	.dword	.LC25
	.dword	do_page_fault
	.dword	.LC26
	.dword	do_page_fault
	.dword	.LC27
	.dword	do_trap_unknown
	.dword	.LC28
	.dword	do_page_fault
	.dword	.LC29
	.text
	.align	2
	.type	ec_to_fault_info, @function
ec_to_fault_info:
.LFB16:
	.loc 1 98 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 1 99 30
	lwu	a5,-20(s0)
	andi	a5,a5,15
	.loc 1 99 20
	slli	a4,a5,4
	lla	a5,fault_info
	add	a5,a4,a5
	.loc 1 100 1
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	ec_to_fault_info, .-ec_to_fault_info
	.section	.rodata
	.align	3
.LC30:
	.string	"%s, scause:0x%lx\n"
	.text
	.align	2
	.globl	do_exception
	.type	do_exception, @function
do_exception:
.LFB17:
	.loc 1 103 1
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
	sd	a1,-48(s0)
	.loc 1 106 2
	ld	a2,-48(s0)
	lla	a1,__func__.1635
	lla	a0,.LC30
	call	printk
	.loc 1 108 6
	ld	a5,-48(s0)
	.loc 1 108 5
	bltz	a5,.L31
	.loc 1 111 9
	ld	a5,-48(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	ec_to_fault_info
	sd	a0,-24(s0)
	.loc 1 113 11
	ld	a5,-24(s0)
	ld	a4,0(a5)
	.loc 1 113 8
	ld	a5,-24(s0)
	ld	a5,8(a5)
	mv	a1,a5
	ld	a0,-40(s0)
	jalr	a4
.LVL0:
.L31:
	.loc 1 116 1
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	do_exception, .-do_exception
	.section	.rodata
	.align	3
.LC31:
	.string	"stvec=0x%x, 0x%x\n"
	.text
	.align	2
	.globl	trap_init
	.type	trap_init, @function
trap_init:
.LFB18:
	.loc 1 119 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
.LBB2:
	.loc 1 120 19
	sd	zero,-24(s0)
	.loc 1 120 45
	ld	a5,-24(s0)
#APP
# 120 "src/trap.c" 1
	csrw sscratch, a5
# 0 "" 2
#NO_APP
.LBE2:
.LBB3:
	.loc 1 122 19
	lla	a5,do_exception_vector
	sd	a5,-32(s0)
	.loc 1 122 63
	ld	a5,-32(s0)
#APP
# 122 "src/trap.c" 1
	csrw stvec, a5
# 0 "" 2
#NO_APP
.LBE3:
.LBB4:
	.loc 1 123 62
#APP
# 123 "src/trap.c" 1
	csrr a5, stvec
# 0 "" 2
#NO_APP
	mv	ra,a5
	.loc 1 123 132
	mv	a5,ra
.LBE4:
	.loc 1 123 2
	lla	a2,do_exception_vector
	mv	a1,a5
	lla	a0,.LC31
	call	printk
.LBB5:
	.loc 1 125 19
	li	a5,-1
	sd	a5,-40(s0)
	.loc 1 125 46
	ld	a5,-40(s0)
#APP
# 125 "src/trap.c" 1
	csrw sie, a5
# 0 "" 2
#NO_APP
.LBE5:
	.loc 1 126 1
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
.LFE18:
	.size	trap_init, .-trap_init
	.section	.rodata
	.align	3
	.type	__func__.1635, @object
	.size	__func__.1635, 13
__func__.1635:
	.string	"do_exception"
	.text
.Letext0:
	.file 2 "include/asm/ptregs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x792
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF10
	.2byte	0x120
	.byte	0x2
	.byte	0xd
	.byte	0x8
	.4byte	0x1f7
	.byte	0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0xf
	.byte	0x10
	.4byte	0x1f7
	.byte	0
	.byte	0x4
	.string	"ra"
	.byte	0x2
	.byte	0x10
	.byte	0x10
	.4byte	0x1f7
	.byte	0x8
	.byte	0x4
	.string	"sp"
	.byte	0x2
	.byte	0x11
	.byte	0x10
	.4byte	0x1f7
	.byte	0x10
	.byte	0x4
	.string	"gp"
	.byte	0x2
	.byte	0x12
	.byte	0x10
	.4byte	0x1f7
	.byte	0x18
	.byte	0x4
	.string	"tp"
	.byte	0x2
	.byte	0x13
	.byte	0x10
	.4byte	0x1f7
	.byte	0x20
	.byte	0x4
	.string	"t0"
	.byte	0x2
	.byte	0x14
	.byte	0x10
	.4byte	0x1f7
	.byte	0x28
	.byte	0x4
	.string	"t1"
	.byte	0x2
	.byte	0x15
	.byte	0x10
	.4byte	0x1f7
	.byte	0x30
	.byte	0x4
	.string	"t2"
	.byte	0x2
	.byte	0x16
	.byte	0x10
	.4byte	0x1f7
	.byte	0x38
	.byte	0x4
	.string	"s0"
	.byte	0x2
	.byte	0x17
	.byte	0x10
	.4byte	0x1f7
	.byte	0x40
	.byte	0x4
	.string	"s1"
	.byte	0x2
	.byte	0x18
	.byte	0x10
	.4byte	0x1f7
	.byte	0x48
	.byte	0x4
	.string	"a0"
	.byte	0x2
	.byte	0x19
	.byte	0x10
	.4byte	0x1f7
	.byte	0x50
	.byte	0x4
	.string	"a1"
	.byte	0x2
	.byte	0x1a
	.byte	0x10
	.4byte	0x1f7
	.byte	0x58
	.byte	0x4
	.string	"a2"
	.byte	0x2
	.byte	0x1b
	.byte	0x10
	.4byte	0x1f7
	.byte	0x60
	.byte	0x4
	.string	"a3"
	.byte	0x2
	.byte	0x1c
	.byte	0x10
	.4byte	0x1f7
	.byte	0x68
	.byte	0x4
	.string	"a4"
	.byte	0x2
	.byte	0x1d
	.byte	0x10
	.4byte	0x1f7
	.byte	0x70
	.byte	0x4
	.string	"a5"
	.byte	0x2
	.byte	0x1e
	.byte	0x10
	.4byte	0x1f7
	.byte	0x78
	.byte	0x4
	.string	"a6"
	.byte	0x2
	.byte	0x1f
	.byte	0x10
	.4byte	0x1f7
	.byte	0x80
	.byte	0x4
	.string	"a7"
	.byte	0x2
	.byte	0x20
	.byte	0x10
	.4byte	0x1f7
	.byte	0x88
	.byte	0x4
	.string	"s2"
	.byte	0x2
	.byte	0x21
	.byte	0x10
	.4byte	0x1f7
	.byte	0x90
	.byte	0x4
	.string	"s3"
	.byte	0x2
	.byte	0x22
	.byte	0x10
	.4byte	0x1f7
	.byte	0x98
	.byte	0x4
	.string	"s4"
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.4byte	0x1f7
	.byte	0xa0
	.byte	0x4
	.string	"s5"
	.byte	0x2
	.byte	0x24
	.byte	0x10
	.4byte	0x1f7
	.byte	0xa8
	.byte	0x4
	.string	"s6"
	.byte	0x2
	.byte	0x25
	.byte	0x10
	.4byte	0x1f7
	.byte	0xb0
	.byte	0x4
	.string	"s7"
	.byte	0x2
	.byte	0x26
	.byte	0x10
	.4byte	0x1f7
	.byte	0xb8
	.byte	0x4
	.string	"s8"
	.byte	0x2
	.byte	0x27
	.byte	0x10
	.4byte	0x1f7
	.byte	0xc0
	.byte	0x4
	.string	"s9"
	.byte	0x2
	.byte	0x28
	.byte	0x10
	.4byte	0x1f7
	.byte	0xc8
	.byte	0x4
	.string	"s10"
	.byte	0x2
	.byte	0x29
	.byte	0x10
	.4byte	0x1f7
	.byte	0xd0
	.byte	0x4
	.string	"s11"
	.byte	0x2
	.byte	0x2a
	.byte	0x10
	.4byte	0x1f7
	.byte	0xd8
	.byte	0x4
	.string	"t3"
	.byte	0x2
	.byte	0x2b
	.byte	0x10
	.4byte	0x1f7
	.byte	0xe0
	.byte	0x4
	.string	"t4"
	.byte	0x2
	.byte	0x2c
	.byte	0x10
	.4byte	0x1f7
	.byte	0xe8
	.byte	0x4
	.string	"t5"
	.byte	0x2
	.byte	0x2d
	.byte	0x10
	.4byte	0x1f7
	.byte	0xf0
	.byte	0x4
	.string	"t6"
	.byte	0x2
	.byte	0x2e
	.byte	0x10
	.4byte	0x1f7
	.byte	0xf8
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x30
	.byte	0x10
	.4byte	0x1f7
	.2byte	0x100
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x31
	.byte	0x10
	.4byte	0x1f7
	.2byte	0x108
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x32
	.byte	0x10
	.4byte	0x1f7
	.2byte	0x110
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x34
	.byte	0x10
	.4byte	0x1f7
	.2byte	0x118
	.byte	0
	.byte	0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF5
	.byte	0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF9
	.byte	0x7
	.4byte	.LASF11
	.byte	0x10
	.byte	0x1
	.byte	0x9
	.byte	0x8
	.4byte	0x241
	.byte	0x4
	.string	"fn"
	.byte	0x1
	.byte	0xa
	.byte	0x8
	.4byte	0x279
	.byte	0
	.byte	0x3
	.4byte	.LASF12
	.byte	0x1
	.byte	0xb
	.byte	0xe
	.4byte	0x267
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	0x21a
	.byte	0x9
	.4byte	0x25a
	.4byte	0x25a
	.byte	0xa
	.4byte	0x261
	.byte	0xa
	.4byte	0x267
	.byte	0
	.byte	0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xc
	.byte	0x8
	.4byte	0x2d
	.byte	0xc
	.byte	0x8
	.4byte	0x274
	.byte	0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.4byte	0x26d
	.byte	0xc
	.byte	0x8
	.4byte	0x246
	.byte	0xd
	.4byte	0x241
	.4byte	0x28f
	.byte	0xe
	.4byte	0x1f7
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	0x27f
	.byte	0xf
	.4byte	.LASF11
	.byte	0x1
	.byte	0x4e
	.byte	0x20
	.4byte	0x28f
	.byte	0x9
	.byte	0x3
	.8byte	fault_info
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x76
	.byte	0x6
	.8byte	.LFB18
	.8byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x358
	.byte	0x11
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x2ed
	.byte	0x12
	.string	"__v"
	.byte	0x1
	.byte	0x78
	.byte	0x13
	.4byte	0x1f7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x11
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.4byte	0x312
	.byte	0x12
	.string	"__v"
	.byte	0x1
	.byte	0x7a
	.byte	0x13
	.4byte	0x1f7
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x11
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x336
	.byte	0x12
	.string	"__v"
	.byte	0x1
	.byte	0x7b
	.byte	0x39
	.4byte	0x1f7
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0x13
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.byte	0x12
	.string	"__v"
	.byte	0x1
	.byte	0x7d
	.byte	0x13
	.4byte	0x1f7
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF15
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.8byte	.LFB17
	.8byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b7
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x66
	.byte	0x23
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.4byte	.LASF3
	.byte	0x1
	.byte	0x66
	.byte	0x37
	.4byte	0x1f7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x12
	.string	"inf"
	.byte	0x1
	.byte	0x68
	.byte	0x1b
	.4byte	0x3b7
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF33
	.4byte	0x3cd
	.byte	0x9
	.byte	0x3
	.8byte	__func__.1635
	.byte	0
	.byte	0xc
	.byte	0x8
	.4byte	0x241
	.byte	0xd
	.4byte	0x274
	.4byte	0x3cd
	.byte	0xe
	.4byte	0x1f7
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x3bd
	.byte	0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x61
	.byte	0x28
	.4byte	0x3b7
	.8byte	.LFB16
	.8byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x404
	.byte	0x14
	.4byte	.LASF3
	.byte	0x1
	.byte	0x61
	.byte	0x46
	.4byte	0x20c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x17
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4c
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB15
	.8byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x445
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4c
	.byte	0x23
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x4c
	.byte	0x35
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB14
	.8byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x486
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4b
	.byte	0x23
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x4b
	.byte	0x35
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB13
	.8byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c7
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4a
	.byte	0x25
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x4a
	.byte	0x37
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x49
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB12
	.8byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x508
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x49
	.byte	0x25
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x49
	.byte	0x37
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF21
	.byte	0x1
	.byte	0x48
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB11
	.8byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x549
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x48
	.byte	0x29
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x48
	.byte	0x3b
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF22
	.byte	0x1
	.byte	0x47
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB10
	.8byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x58a
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x47
	.byte	0x2e
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x47
	.byte	0x40
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF23
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB9
	.8byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x5cb
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x46
	.byte	0x28
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x46
	.byte	0x3a
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF24
	.byte	0x1
	.byte	0x45
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB8
	.8byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x60c
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x45
	.byte	0x2d
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x45
	.byte	0x3f
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF25
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x64d
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x44
	.byte	0x2a
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x44
	.byte	0x3c
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF26
	.byte	0x1
	.byte	0x43
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x68e
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x43
	.byte	0x28
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x43
	.byte	0x3a
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF27
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x6cf
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x42
	.byte	0x2d
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x42
	.byte	0x3f
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF28
	.byte	0x1
	.byte	0x41
	.byte	0x5
	.4byte	0x25a
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x710
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x41
	.byte	0x25
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x41
	.byte	0x37
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x19
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x74d
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2f
	.byte	0x2b
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"str"
	.byte	0x1
	.byte	0x2f
	.byte	0x3d
	.4byte	0x267
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x77b
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x15
	.byte	0x20
	.4byte	0x261
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
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
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
.LASF31:
	.string	"src/trap.c"
.LASF14:
	.string	"trap_init"
.LASF15:
	.string	"do_exception"
.LASF29:
	.string	"show_regs"
.LASF2:
	.string	"sbadaddr"
.LASF3:
	.string	"scause"
.LASF33:
	.string	"__func__"
.LASF22:
	.string	"do_trap_store_misaligned"
.LASF11:
	.string	"fault_info"
.LASF6:
	.string	"unsigned char"
.LASF19:
	.string	"do_trap_ecall_s"
.LASF20:
	.string	"do_trap_ecall_u"
.LASF5:
	.string	"long unsigned int"
.LASF10:
	.string	"pt_regs"
.LASF1:
	.string	"sstatus"
.LASF21:
	.string	"do_trap_store_fault"
.LASF30:
	.string	"GNU C17 9.3.0 -mcmodel=medany -mabi=lp64 -march=rv64imafd -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF23:
	.string	"do_trap_load_fault"
.LASF0:
	.string	"sepc"
.LASF35:
	.string	"do_trap_error"
.LASF24:
	.string	"do_trap_load_misaligned"
.LASF27:
	.string	"do_trap_insn_misaligned"
.LASF36:
	.string	"panic"
.LASF17:
	.string	"do_page_fault"
.LASF12:
	.string	"name"
.LASF28:
	.string	"do_trap_unknown"
.LASF8:
	.string	"unsigned int"
.LASF16:
	.string	"regs"
.LASF13:
	.string	"char"
.LASF4:
	.string	"orig_a0"
.LASF7:
	.string	"short unsigned int"
.LASF34:
	.string	"ec_to_fault_info"
.LASF9:
	.string	"_Bool"
.LASF25:
	.string	"do_trap_insn_illegal"
.LASF32:
	.string	"/home/rlk/rlk/BIG/trial2/benos"
.LASF18:
	.string	"do_trap_break"
.LASF26:
	.string	"do_trap_insn_fault"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
