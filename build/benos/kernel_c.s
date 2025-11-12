	.file	"kernel.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
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
	.type	sbi_put_string, @function
sbi_put_string:
.LFB3:
	.loc 1 42 1
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
	.loc 1 45 9
	sw	zero,-20(s0)
	.loc 1 45 2
	j	.L3
.L4:
	.loc 1 46 25 discriminator 3
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 46 3 discriminator 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	sbi_putchar
	.loc 1 45 31 discriminator 3
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L3:
	.loc 1 45 17 discriminator 1
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 45 2 discriminator 1
	bnez	a5,.L4
	.loc 1 47 1
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
.LFE3:
	.size	sbi_put_string, .-sbi_put_string
	.section	.rodata
	.align	3
.LC0:
	.string	"<0x%lx> %s\n"
	.text
	.align	2
	.type	print_func_name, @function
print_func_name:
.LFB4:
	.file 2 "src/kernel.c"
	.loc 2 29 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	.loc 2 33 9
	sw	zero,-20(s0)
	.loc 2 33 2
	j	.L6
.L9:
	.loc 2 34 24
	lla	a4,func_addr
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	.loc 2 34 6
	ld	a4,-56(s0)
	beq	a4,a5,.L16
	.loc 2 33 34 discriminator 2
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L6:
	.loc 2 33 16 discriminator 1
	lw	a4,-20(s0)
	lla	a5,func_num_syms
	ld	a5,0(a5)
	.loc 2 33 2 discriminator 1
	bltu	a4,a5,.L9
	.loc 2 38 9
	li	a5,0
	j	.L10
.L16:
	.loc 2 35 4
	nop
.L8:
	.loc 2 41 7
	lla	a5,func_string
	sd	a5,-32(s0)
	.loc 2 43 8
	lw	a5,-20(s0)
	sext.w	a5,a5
	bnez	a5,.L11
	.loc 2 44 13
	ld	a5,-32(s0)
	sd	a5,-40(s0)
	.loc 2 45 6
	j	.L12
.L11:
	.loc 2 49 7
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	.loc 2 51 10
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	.loc 2 51 9
	bnez	a5,.L13
	.loc 2 52 8
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sw	a5,-20(s0)
.L13:
	.loc 2 54 9
	lw	a5,-20(s0)
	sext.w	a5,a5
	bnez	a5,.L11
	.loc 2 55 8
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	.loc 2 56 14
	ld	a5,-32(s0)
	sd	a5,-40(s0)
.L12:
	.loc 2 62 5
	ld	a2,-40(s0)
	ld	a1,-56(s0)
	lla	a0,.LC0
	call	printk
	.loc 2 64 12
	li	a5,0
.L10:
	.loc 2 65 1
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	print_func_name, .-print_func_name
	.align	2
	.type	my_memcpy_asm_test1, @function
my_memcpy_asm_test1:
.LFB5:
	.loc 2 75 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	.loc 2 76 16
	sd	zero,-24(s0)
	.loc 2 77 16
	ld	a4,-40(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	.loc 2 79 2
	ld	a2,-32(s0)
	ld	a3,-48(s0)
	ld	a4,-24(s0)
	ld	a5,-40(s0)
#APP
# 79 "src/kernel.c" 1
	1: ld a4, (a5)
sd a4, (a3)
addi a3, a3, 8
addi a5, a5, 8
blt a5, a2, 1b
# 0 "" 2
#NO_APP
	sd	a3,-48(s0)
	sd	a4,-24(s0)
	sd	a5,-40(s0)
	.loc 2 88 1
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	my_memcpy_asm_test1, .-my_memcpy_asm_test1
	.align	2
	.type	my_memcpy_asm_test2, @function
my_memcpy_asm_test2:
.LFB6:
	.loc 2 98 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	.loc 2 99 16
	sd	zero,-24(s0)
	.loc 2 100 16
	ld	a4,-40(s0)
	ld	a5,-56(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	.loc 2 102 2
	ld	a2,-32(s0)
	ld	a3,-48(s0)
	ld	a4,-24(s0)
	ld	a5,-40(s0)
#APP
# 102 "src/kernel.c" 1
	1: ld a4, (a5)
sd a4, (a3)
addi a3, a3, 8
addi a5, a5, 8
blt a5, a2, 1b
# 0 "" 2
#NO_APP
	sd	a3,-48(s0)
	sd	a4,-24(s0)
	sd	a5,-40(s0)
	.loc 2 111 1
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	my_memcpy_asm_test2, .-my_memcpy_asm_test2
	.align	2
	.type	my_asm_orr, @function
my_asm_orr:
.LFB7:
	.loc 2 127 60
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	.loc 2 127 76
	sd	zero,-24(s0)
	.loc 2 127 85
	ld	a3,-40(s0)
	ld	a4,-48(s0)
	ld	a5,-24(s0)
#APP
# 127 "src/kernel.c" 1
	ld a5, (a4)
 or a5, a5, a3
sd a5, (a4)

# 0 "" 2
#NO_APP
	sd	a4,-48(s0)
	sd	a5,-24(s0)
	.loc 2 127 1
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	my_asm_orr, .-my_asm_orr
	.align	2
	.type	my_asm_and, @function
my_asm_and:
.LFB8:
	.loc 2 128 60
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	.loc 2 128 76
	sd	zero,-24(s0)
	.loc 2 128 85
	ld	a3,-40(s0)
	ld	a4,-48(s0)
	ld	a5,-24(s0)
#APP
# 128 "src/kernel.c" 1
	ld a5, (a4)
 and a5, a5, a3
sd a5, (a4)

# 0 "" 2
#NO_APP
	sd	a4,-48(s0)
	sd	a5,-24(s0)
	.loc 2 128 1
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	my_asm_and, .-my_asm_and
	.align	2
	.type	my_asm_add, @function
my_asm_add:
.LFB9:
	.loc 2 129 60
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	.loc 2 129 76
	sd	zero,-24(s0)
	.loc 2 129 85
	ld	a3,-40(s0)
	ld	a4,-48(s0)
	ld	a5,-24(s0)
#APP
# 129 "src/kernel.c" 1
	ld a5, (a4)
 add a5, a5, a3
sd a5, (a4)

# 0 "" 2
#NO_APP
	sd	a4,-48(s0)
	sd	a5,-24(s0)
	.loc 2 129 1
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	my_asm_add, .-my_asm_add
	.section	.rodata
	.align	3
.LC1:
	.string	"test and: p=0x%x\n"
	.align	3
.LC2:
	.string	"test orr: p=0x%x\n"
	.align	3
.LC3:
	.string	"test add: p=0x%x\n"
	.text
	.align	2
	.type	my_ops_test, @function
my_ops_test:
.LFB10:
	.loc 2 132 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 135 4
	li	a5,15
	sd	a5,-24(s0)
	.loc 2 136 2
	addi	a5,s0,-24
	mv	a1,a5
	li	a0,2
	call	my_asm_and
	.loc 2 137 2
	ld	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC1
	call	printk
	.loc 2 139 4
	li	a5,128
	sd	a5,-24(s0)
	.loc 2 140 2
	addi	a5,s0,-24
	mv	a1,a5
	li	a0,3
	call	my_asm_orr
	.loc 2 141 2
	ld	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC2
	call	printk
	.loc 2 143 4
	li	a5,3
	sd	a5,-24(s0)
	.loc 2 144 2
	addi	a5,s0,-24
	mv	a1,a5
	li	a0,2
	call	my_asm_add
	.loc 2 145 2
	ld	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC3
	call	printk
	.loc 2 146 1
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
.LFE10:
	.size	my_ops_test, .-my_ops_test
	.section	.rodata
	.align	3
.LC4:
	.string	"sstatus =0x%x\n"
	.text
	.align	2
	.type	test_sysregs, @function
test_sysregs:
.LFB11:
	.loc 2 149 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB3:
	.loc 2 152 39
#APP
# 152 "src/kernel.c" 1
	csrr a5, sstatus
# 0 "" 2
#NO_APP
	mv	ra,a5
	.loc 2 152 111
	mv	a5,ra
.LBE3:
	.loc 2 152 6
	sd	a5,-24(s0)
	.loc 2 154 2
	ld	a1,-24(s0)
	lla	a0,.LC4
	call	printk
	.loc 2 155 1
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
.LFE11:
	.size	test_sysregs, .-test_sysregs
	.section	.rodata
	.align	3
.LC5:
	.string	"%s: a = %d\n"
	.text
	.align	2
	.type	test_asm_goto, @function
test_asm_goto:
.LFB12:
	.loc 2 158 1
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
	sw	a5,-20(s0)
	.loc 2 159 2
	lw	a5,-20(s0)
#APP
# 159 "src/kernel.c" 1
	addi a5, a5, -1
beqz a5, .L25

# 0 "" 2
	.loc 2 167 9
#NO_APP
	li	a5,0
	j	.L26
.L25:
	.loc 2 170 2
	lw	a5,-20(s0)
	mv	a2,a5
	lla	a1,__func__.1649
	lla	a0,.LC5
	call	printk
	.loc 2 171 9
	li	a5,1
.L26:
	.loc 2 172 1
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
	.size	test_asm_goto, .-test_asm_goto
	.section	.rodata
	.align	3
.LC6:
	.string	"asm_goto: return 1\n"
	.align	3
.LC7:
	.string	"asm_goto: b is not 1\n"
	.text
	.align	2
	.globl	inline_asm_test
	.type	inline_asm_test, @function
inline_asm_test:
.LFB13:
	.loc 2 175 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 176 2
	li	a2,32
	li	a5,134352896
	slli	a1,a5,4
	li	a5,1025
	slli	a0,a5,21
	call	my_memcpy_asm_test1
	.loc 2 177 2
	li	a2,32
	li	a5,134352896
	slli	a1,a5,4
	li	a5,1025
	slli	a0,a5,21
	call	my_memcpy_asm_test2
	.loc 2 180 2
	li	a2,48
	li	a1,85
	li	a5,134352896
	slli	a5,a5,4
	addi	a0,a5,2
	call	memset
	.loc 2 183 2
	call	my_ops_test
	.loc 2 186 2
	call	test_sysregs
	.loc 2 189 6
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 190 6
	lw	a5,-20(s0)
	mv	a0,a5
	call	test_asm_goto
	mv	a5,a0
	.loc 2 190 5
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L28
	.loc 2 191 3
	lla	a0,.LC6
	call	printk
.L28:
	.loc 2 193 6
	sw	zero,-24(s0)
	.loc 2 194 6
	lw	a5,-24(s0)
	mv	a0,a5
	call	test_asm_goto
	mv	a5,a0
	.loc 2 194 5
	bnez	a5,.L30
	.loc 2 195 3
	lla	a0,.LC7
	call	printk
.L30:
	.loc 2 196 1
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
.LFE13:
	.size	inline_asm_test, .-inline_asm_test
	.section	.rodata
	.align	3
.LC8:
	.string	"lab3-5: compare_and_return ok\n"
	.align	3
.LC9:
	.string	"lab3-7: branch test ok\n"
	.align	3
.LC10:
	.string	"lab5-5: macro_test_1 ok\n"
	.align	3
.LC11:
	.string	"lab5-5: macro_test_2 ok\n"
	.text
	.align	2
	.globl	asm_test
	.type	asm_test, @function
asm_test:
.LFB14:
	.loc 2 199 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 202 2
	call	load_store_test
	.loc 2 203 2
	call	shift_test
	.loc 2 204 2
	call	add_sub_test
	.loc 2 205 2
	call	branch_test
	.loc 2 207 2
	call	my_memcpy_test
	.loc 2 210 2
	li	a2,40
	li	a1,85
	li	a5,134352896
	slli	a5,a5,4
	addi	a0,a5,5
	call	memset
	.loc 2 213 9
	li	a1,9
	li	a0,10
	call	compare_and_return
	sd	a0,-24(s0)
	.loc 2 214 5
	ld	a5,-24(s0)
	bnez	a5,.L32
	.loc 2 215 3
	lla	a0,.LC8
	call	printk
.L32:
	.loc 2 217 9
	li	a1,10
	li	a0,9
	call	compare_and_return
	sd	a0,-32(s0)
	.loc 2 218 5
	ld	a4,-32(s0)
	li	a5,-1
	bne	a4,a5,.L33
	.loc 2 219 3
	lla	a0,.LC8
	call	printk
.L33:
	.loc 2 221 9
	li	a1,9
	li	a0,0
	call	sel_test
	sd	a0,-24(s0)
	.loc 2 222 9
	li	a1,2
	li	a0,5
	call	sel_test
	sd	a0,-32(s0)
	.loc 2 224 2
	call	bl_test
	.loc 2 225 2
	lla	a0,.LC9
	call	printk
	.loc 2 227 9
	li	a1,5
	li	a0,5
	call	macro_test_1
	sd	a0,-24(s0)
	.loc 2 228 5
	ld	a4,-24(s0)
	li	a5,10
	bne	a4,a5,.L34
	.loc 2 229 3
	lla	a0,.LC10
	call	printk
.L34:
	.loc 2 231 9
	li	a1,5
	li	a0,5
	call	macro_test_2
	sd	a0,-32(s0)
	.loc 2 232 5
	ld	a5,-32(s0)
	bnez	a5,.L36
	.loc 2 233 3
	lla	a0,.LC11
	call	printk
.L36:
	.loc 2 234 1
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
.LFE14:
	.size	asm_test, .-asm_test
	.align	2
	.type	trigger_access_fault, @function
trigger_access_fault:
.LFB15:
	.loc 2 237 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 238 2
	call	trigger_load_access_fault
	.loc 2 239 1
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
.LFE15:
	.size	trigger_access_fault, .-trigger_access_fault
	.align	2
	.type	test_fault, @function
test_fault:
.LFB16:
	.loc 2 242 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 243 2
	call	trigger_access_fault
	.loc 2 244 1
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
.LFE16:
	.size	test_fault, .-test_fault
	.section	.rodata
	.align	3
.LC12:
	.string	"BenOS image layout:\n"
	.align	3
.LC13:
	.string	"  .text.boot: 0x%08lx - 0x%08lx (%6ld B)\n"
	.align	3
.LC14:
	.string	"       .text: 0x%08lx - 0x%08lx (%6ld B)\n"
	.align	3
.LC15:
	.string	"     .rodata: 0x%08lx - 0x%08lx (%6ld B)\n"
	.align	3
.LC16:
	.string	"       .data: 0x%08lx - 0x%08lx (%6ld B)\n"
	.align	3
.LC17:
	.string	"        .bss: 0x%08lx - 0x%08lx (%6ld B)\n"
	.text
	.align	2
	.type	print_mem, @function
print_mem:
.LFB17:
	.loc 2 253 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 254 2
	lla	a0,.LC12
	call	printk
	.loc 2 255 2
	lla	a1,_text_boot
	lla	a2,_etext_boot
	.loc 2 257 32
	lla	a4,_etext_boot
	lla	a5,_text_boot
	sub	a5,a4,a5
	.loc 2 255 2
	mv	a3,a5
	lla	a0,.LC13
	call	printk
	.loc 2 258 2
	lla	a1,_text
	lla	a2,_etext
	.loc 2 260 27
	lla	a4,_etext
	lla	a5,_text
	sub	a5,a4,a5
	.loc 2 258 2
	mv	a3,a5
	lla	a0,.LC14
	call	printk
	.loc 2 261 2
	lla	a1,_rodata
	lla	a2,_erodata
	.loc 2 263 29
	lla	a4,_erodata
	lla	a5,_rodata
	sub	a5,a4,a5
	.loc 2 261 2
	mv	a3,a5
	lla	a0,.LC15
	call	printk
	.loc 2 264 2
	lla	a1,_data
	lla	a2,_edata
	.loc 2 266 27
	lla	a4,_edata
	lla	a5,_data
	sub	a5,a4,a5
	.loc 2 264 2
	mv	a3,a5
	lla	a0,.LC16
	call	printk
	.loc 2 267 2
	lla	a1,_bss
	lla	a2,_ebss
	.loc 2 269 26
	lla	a4,_ebss
	lla	a5,_bss
	sub	a5,a4,a5
	.loc 2 267 2
	mv	a3,a5
	lla	a0,.LC17
	call	printk
	.loc 2 270 1
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
.LFE17:
	.size	print_mem, .-print_mem
	.align	2
	.type	clean_bss, @function
clean_bss:
.LFB18:
	.loc 2 273 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 2 274 16
	lla	a5,_bss
	sd	a5,-24(s0)
	.loc 2 275 16
	lla	a5,_ebss
	sd	a5,-32(s0)
	.loc 2 276 22
	ld	a5,-32(s0)
	sext.w	a4,a5
	ld	a5,-24(s0)
	sext.w	a5,a5
	.loc 2 276 11
	subw	a5,a4,a5
	sw	a5,-36(s0)
	.loc 2 278 2
	ld	a5,-24(s0)
	lw	a4,-36(s0)
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	memset
	.loc 2 279 1
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
	.size	clean_bss, .-clean_bss
	.align	2
	.globl	uart_get
	.type	uart_get, @function
uart_get:
.LFB19:
	.loc 2 282 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB4:
	.loc 2 283 30
	li	a5,268435456
	addi	a5,a5,5
	.loc 2 283 23
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 2 283 80
	.loc 2 283 122
	lbu	a5,-17(s0)
.LBE4:
	.loc 2 283 130
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	.loc 2 283 5
	beqz	a5,.L42
.LBB5:
	.loc 2 284 34
	li	a5,268435456
	.loc 2 284 27
	lbu	a5,0(a5)
	sb	a5,-18(s0)
	.loc 2 284 84
	.loc 2 284 126
	lbu	a5,-18(s0)
.LBE5:
	.loc 2 284 11
	j	.L43
.L42:
	.loc 2 286 10
	li	a5,255
.L43:
	.loc 2 287 1
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	uart_get, .-uart_get
	.section	.rodata
	.align	3
.LC18:
	.string	">>> [func_level3] Dump normal stacktrace here:\n"
	.text
	.align	2
	.type	func_level3, @function
func_level3:
.LFB20:
	.loc 2 290 1
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
	.loc 2 291 5
	lla	a0,.LC18
	call	printk
	.loc 2 292 5
	call	dump_stack
	.loc 2 293 14
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	.loc 2 293 18
	lw	a4,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	.loc 2 294 1
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
.LFE20:
	.size	func_level3, .-func_level3
	.section	.rodata
	.align	3
.LC19:
	.string	">>> [func_level2] called, x=%d, y=%d\n"
	.align	3
.LC20:
	.string	"<<< [func_level2] return %d\n"
	.text
	.align	2
	.type	func_level2, @function
func_level2:
.LFB21:
	.loc 2 297 1
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
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	.loc 2 298 5
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC19
	call	printk
	.loc 2 299 9
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 300 13
	lw	a3,-20(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	func_level3
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 2 301 5
	lw	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC20
	call	printk
	.loc 2 302 12
	lw	a5,-24(s0)
	.loc 2 303 1
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
.LFE21:
	.size	func_level2, .-func_level2
	.section	.rodata
	.align	3
.LC21:
	.string	">>> [func_level1] called\n"
	.align	3
.LC22:
	.string	"<<< [func_level1] return %d\n"
	.text
	.align	2
	.type	func_level1, @function
func_level1:
.LFB22:
	.loc 2 306 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 307 5
	lla	a0,.LC21
	call	printk
	.loc 2 308 9
	li	a5,1
	sw	a5,-20(s0)
	.loc 2 309 9
	li	a5,2
	sw	a5,-24(s0)
	.loc 2 310 13
	lw	a4,-24(s0)
	lw	a5,-20(s0)
	mv	a1,a4
	mv	a0,a5
	call	func_level2
	mv	a5,a0
	sw	a5,-28(s0)
	.loc 2 311 5
	lw	a5,-28(s0)
	mv	a1,a5
	lla	a0,.LC22
	call	printk
	.loc 2 312 12
	lw	a5,-28(s0)
	.loc 2 313 1
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
.LFE22:
	.size	func_level1, .-func_level1
	.section	.rodata
	.align	3
.LC23:
	.string	"Welcome RISC-V!\r\n"
	.align	3
.LC24:
	.string	"printk init done\n"
	.align	3
.LC25:
	.string	"[kernel_main] func_level1 result = %d\n"
	.text
	.align	2
	.globl	kernel_main
	.type	kernel_main, @function
kernel_main:
.LFB23:
	.loc 2 317 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 318 2
	call	clean_bss
	.loc 2 319 2
	lla	a0,.LC23
	call	sbi_put_string
	.loc 2 320 2
	lla	a0,sbi_putchar
	call	init_printk_done
	.loc 2 321 2
	lla	a0,.LC24
	call	printk
	.loc 2 323 2
	call	trap_init
	.loc 2 325 2
	call	asm_test
	.loc 2 326 2
	call	inline_asm_test
	.loc 2 329 2
	li	a5,8392704
	addi	a0,a5,-1920
	call	print_func_name
	.loc 2 330 2
	li	a5,8392704
	addi	a0,a5,-1952
	call	print_func_name
	.loc 2 331 2
	li	a5,8392704
	addi	a0,a5,-2048
	call	print_func_name
	.loc 2 333 2
	call	print_mem
	.loc 2 335 13
	call	func_level1
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 2 336 5
	lw	a5,-24(s0)
	mv	a1,a5
	lla	a0,.LC25
	call	printk
	.loc 2 338 9
	li	a5,-1
	sw	a5,-20(s0)
	.loc 2 340 7
	j	.L51
.L52:
	.loc 2 341 18
	call	uart_get
	mv	a5,a0
	.loc 2 341 17
	sw	a5,-20(s0)
.L51:
	.loc 2 340 7
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,52
	bne	a4,a5,.L52
	.loc 2 344 2
	call	test_fault
.L53:
	.loc 2 346 8 discriminator 1
	j	.L53
	.cfi_endproc
.LFE23:
	.size	kernel_main, .-kernel_main
	.section	.rodata
	.align	3
	.type	__func__.1649, @object
	.size	__func__.1649, 14
__func__.1649:
	.string	"test_asm_goto"
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x788
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.LASF52
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
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF4
	.byte	0x3
	.4byte	0x42
	.4byte	0x5b
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x16
	.byte	0x16
	.4byte	0x50
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x17
	.byte	0x16
	.4byte	0x42
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x18
	.byte	0xd
	.4byte	0x7f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x6
	.4byte	0x7f
	.byte	0x3
	.4byte	0x7f
	.4byte	0x96
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0xf6
	.byte	0xd
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0xf6
	.byte	0x1b
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0xf7
	.byte	0xd
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0xf7
	.byte	0x16
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0xf8
	.byte	0xd
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0xf8
	.byte	0x18
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0xf9
	.byte	0xd
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF16
	.byte	0x2
	.byte	0xf9
	.byte	0x16
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF17
	.byte	0x2
	.byte	0xfa
	.byte	0xd
	.4byte	0x8b
	.byte	0x5
	.4byte	.LASF18
	.byte	0x2
	.byte	0xfa
	.byte	0x15
	.4byte	0x8b
	.byte	0x7
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x13c
	.byte	0x6
	.8byte	.LFB23
	.8byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x14c
	.byte	0x8
	.string	"r"
	.byte	0x2
	.2byte	0x14f
	.byte	0x9
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x9
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x152
	.byte	0x9
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xb
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x131
	.byte	0xc
	.4byte	0x14c
	.8byte	.LFB22
	.8byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a1
	.byte	0x8
	.string	"a"
	.byte	0x2
	.2byte	0x134
	.byte	0x9
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x8
	.string	"b"
	.byte	0x2
	.2byte	0x135
	.byte	0x9
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x8
	.string	"r"
	.byte	0x2
	.2byte	0x136
	.byte	0x9
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x128
	.byte	0xc
	.4byte	0x14c
	.8byte	.LFB21
	.8byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fd
	.byte	0xc
	.string	"x"
	.byte	0x2
	.2byte	0x128
	.byte	0x1c
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xc
	.string	"y"
	.byte	0x2
	.2byte	0x128
	.byte	0x23
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x8
	.string	"z"
	.byte	0x2
	.2byte	0x12b
	.byte	0x9
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x8
	.string	"r"
	.byte	0x2
	.2byte	0x12c
	.byte	0x9
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xb
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x121
	.byte	0xc
	.4byte	0x14c
	.8byte	.LFB20
	.8byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x24b
	.byte	0xc
	.string	"a"
	.byte	0x2
	.2byte	0x121
	.byte	0x1c
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xc
	.string	"b"
	.byte	0x2
	.2byte	0x121
	.byte	0x23
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xc
	.string	"c"
	.byte	0x2
	.2byte	0x121
	.byte	0x2a
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0xd
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x119
	.byte	0x6
	.4byte	0x7f
	.8byte	.LFB19
	.8byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b7
	.byte	0xe
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x294
	.byte	0x8
	.string	"__v"
	.byte	0x2
	.2byte	0x11b
	.byte	0x17
	.4byte	0x2d
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0xf
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.byte	0x8
	.string	"__v"
	.byte	0x2
	.2byte	0x11c
	.byte	0x1b
	.4byte	0x2d
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x110
	.byte	0xd
	.8byte	.LFB18
	.8byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x307
	.byte	0x9
	.4byte	.LASF23
	.byte	0x2
	.2byte	0x112
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x8
	.string	"end"
	.byte	0x2
	.2byte	0x113
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x9
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x114
	.byte	0xb
	.4byte	0x3b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x11
	.4byte	.LASF25
	.byte	0x2
	.byte	0xfc
	.byte	0xd
	.8byte	.LFB17
	.8byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF26
	.byte	0x2
	.byte	0xf1
	.byte	0xd
	.8byte	.LFB16
	.8byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF27
	.byte	0x2
	.byte	0xec
	.byte	0xd
	.8byte	.LFB15
	.8byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	.LASF29
	.byte	0x2
	.byte	0xc6
	.byte	0x6
	.8byte	.LFB14
	.8byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x392
	.byte	0x13
	.4byte	.LASF30
	.byte	0x2
	.byte	0xc8
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x13
	.4byte	.LASF31
	.byte	0x2
	.byte	0xc8
	.byte	0x16
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x12
	.4byte	.LASF32
	.byte	0x2
	.byte	0xae
	.byte	0x6
	.8byte	.LFB13
	.8byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x3cb
	.byte	0x14
	.string	"a"
	.byte	0x2
	.byte	0xbd
	.byte	0x6
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.string	"b"
	.byte	0x2
	.byte	0xc1
	.byte	0x6
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x15
	.4byte	.LASF33
	.byte	0x2
	.byte	0x9d
	.byte	0xc
	.4byte	0x14c
	.8byte	.LFB12
	.8byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x41e
	.byte	0x16
	.string	"a"
	.byte	0x2
	.byte	0x9d
	.byte	0x1e
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.4byte	.LASF46
	.byte	0x2
	.byte	0xa9
	.byte	0x1
	.8byte	.L25
	.byte	0x18
	.4byte	.LASF54
	.4byte	0x42e
	.byte	0x9
	.byte	0x3
	.8byte	__func__.1649
	.byte	0
	.byte	0x3
	.4byte	0x86
	.4byte	0x42e
	.byte	0x19
	.4byte	0x42
	.byte	0xd
	.byte	0
	.byte	0x6
	.4byte	0x41e
	.byte	0x1a
	.4byte	.LASF35
	.byte	0x2
	.byte	0x94
	.byte	0xd
	.8byte	.LFB11
	.8byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x481
	.byte	0x14
	.string	"val"
	.byte	0x2
	.byte	0x96
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xf
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.byte	0x14
	.string	"__v"
	.byte	0x2
	.byte	0x98
	.byte	0x22
	.4byte	0x42
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF36
	.byte	0x2
	.byte	0x83
	.byte	0xd
	.8byte	.LFB10
	.8byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ad
	.byte	0x14
	.string	"p"
	.byte	0x2
	.byte	0x85
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1b
	.4byte	.LASF37
	.byte	0x2
	.byte	0x81
	.byte	0x14
	.8byte	.LFB9
	.8byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f7
	.byte	0x1c
	.4byte	.LASF38
	.byte	0x2
	.byte	0x81
	.byte	0x2d
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x16
	.string	"p"
	.byte	0x2
	.byte	0x81
	.byte	0x39
	.4byte	0x4f7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x14
	.string	"tmp"
	.byte	0x2
	.byte	0x81
	.byte	0x4c
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1d
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF39
	.byte	0x2
	.byte	0x80
	.byte	0x14
	.8byte	.LFB8
	.8byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x543
	.byte	0x1c
	.4byte	.LASF38
	.byte	0x2
	.byte	0x80
	.byte	0x2d
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x16
	.string	"p"
	.byte	0x2
	.byte	0x80
	.byte	0x39
	.4byte	0x4f7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x14
	.string	"tmp"
	.byte	0x2
	.byte	0x80
	.byte	0x4c
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1b
	.4byte	.LASF40
	.byte	0x2
	.byte	0x7f
	.byte	0x14
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x58d
	.byte	0x1c
	.4byte	.LASF38
	.byte	0x2
	.byte	0x7f
	.byte	0x2d
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x16
	.string	"p"
	.byte	0x2
	.byte	0x7f
	.byte	0x39
	.4byte	0x4f7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x14
	.string	"tmp"
	.byte	0x2
	.byte	0x7f
	.byte	0x4c
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1b
	.4byte	.LASF41
	.byte	0x2
	.byte	0x60
	.byte	0xd
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f7
	.byte	0x16
	.string	"src"
	.byte	0x2
	.byte	0x60
	.byte	0x2f
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x16
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.byte	0x42
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x1c
	.4byte	.LASF24
	.byte	0x2
	.byte	0x61
	.byte	0x11
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x14
	.string	"tmp"
	.byte	0x2
	.byte	0x63
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.string	"end"
	.byte	0x2
	.byte	0x64
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x1b
	.4byte	.LASF42
	.byte	0x2
	.byte	0x49
	.byte	0xd
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x661
	.byte	0x16
	.string	"src"
	.byte	0x2
	.byte	0x49
	.byte	0x2f
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x16
	.string	"dst"
	.byte	0x2
	.byte	0x49
	.byte	0x42
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x1c
	.4byte	.LASF24
	.byte	0x2
	.byte	0x4a
	.byte	0x11
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x14
	.string	"tmp"
	.byte	0x2
	.byte	0x4c
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.string	"end"
	.byte	0x2
	.byte	0x4d
	.byte	0x10
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x15
	.4byte	.LASF43
	.byte	0x2
	.byte	0x1c
	.byte	0xc
	.4byte	0x14c
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x6dc
	.byte	0x1c
	.4byte	.LASF44
	.byte	0x2
	.byte	0x1c
	.byte	0x2a
	.4byte	0x42
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x14
	.string	"i"
	.byte	0x2
	.byte	0x1e
	.byte	0x6
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.string	"p"
	.byte	0x2
	.byte	0x1f
	.byte	0x8
	.4byte	0x6dc
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x13
	.4byte	.LASF45
	.byte	0x2
	.byte	0x1f
	.byte	0xc
	.4byte	0x6dc
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x17
	.4byte	.LASF47
	.byte	0x2
	.byte	0x28
	.byte	0x1
	.8byte	.L8
	.byte	0x17
	.4byte	.LASF48
	.byte	0x2
	.byte	0x3d
	.byte	0x1
	.8byte	.L12
	.byte	0
	.byte	0x1e
	.byte	0x8
	.4byte	0x7f
	.byte	0x1a
	.4byte	.LASF49
	.byte	0x1
	.byte	0x29
	.byte	0x14
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x71d
	.byte	0x16
	.string	"str"
	.byte	0x1
	.byte	0x29
	.byte	0x29
	.4byte	0x6dc
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1f
	.4byte	.LASF55
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.string	"c"
	.byte	0x1
	.byte	0x24
	.byte	0x25
	.4byte	0x7f
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0xf
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.byte	0x14
	.string	"a0"
	.byte	0x1
	.byte	0x26
	.byte	0x1c
	.4byte	0x42
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.string	"a1"
	.byte	0x1
	.byte	0x26
	.byte	0x57
	.4byte	0x42
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.string	"a2"
	.byte	0x1
	.byte	0x26
	.byte	0x92
	.4byte	0x42
	.byte	0x1
	.byte	0x5c
	.byte	0x14
	.string	"a7"
	.byte	0x1
	.byte	0x26
	.byte	0xcd
	.4byte	0x42
	.byte	0x1
	.byte	0x61
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x5
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
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x5
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x2e
	.byte	0
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0xa
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
.LASF25:
	.string	"print_mem"
.LASF18:
	.string	"_ebss"
.LASF42:
	.string	"my_memcpy_asm_test1"
.LASF33:
	.string	"test_asm_goto"
.LASF20:
	.string	"func_level1"
.LASF21:
	.string	"func_level2"
.LASF22:
	.string	"func_level3"
.LASF23:
	.string	"start"
.LASF17:
	.string	"_bss"
.LASF29:
	.string	"asm_test"
.LASF9:
	.string	"_text_boot"
.LASF54:
	.string	"__func__"
.LASF55:
	.string	"sbi_putchar"
.LASF5:
	.string	"func_addr"
.LASF0:
	.string	"unsigned char"
.LASF16:
	.string	"_edata"
.LASF39:
	.string	"my_asm_and"
.LASF3:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF14:
	.string	"_erodata"
.LASF31:
	.string	"val2"
.LASF19:
	.string	"tempchar"
.LASF40:
	.string	"my_asm_orr"
.LASF13:
	.string	"_rodata"
.LASF32:
	.string	"inline_asm_test"
.LASF36:
	.string	"my_ops_test"
.LASF50:
	.string	"GNU C17 9.3.0 -mcmodel=medany -mabi=lp64 -march=rv64imafd -g -O0 -fno-PIE -fno-omit-frame-pointer"
.LASF53:
	.string	"uart_get"
.LASF38:
	.string	"mask"
.LASF2:
	.string	"unsigned int"
.LASF49:
	.string	"sbi_put_string"
.LASF6:
	.string	"func_num_syms"
.LASF27:
	.string	"trigger_access_fault"
.LASF35:
	.string	"test_sysregs"
.LASF12:
	.string	"_etext"
.LASF45:
	.string	"string"
.LASF47:
	.string	"found"
.LASF8:
	.string	"char"
.LASF37:
	.string	"my_asm_add"
.LASF44:
	.string	"addr"
.LASF41:
	.string	"my_memcpy_asm_test2"
.LASF30:
	.string	"val1"
.LASF43:
	.string	"print_func_name"
.LASF34:
	.string	"clean_bss"
.LASF28:
	.string	"kernel_main"
.LASF15:
	.string	"_data"
.LASF7:
	.string	"func_string"
.LASF10:
	.string	"_etext_boot"
.LASF26:
	.string	"test_fault"
.LASF11:
	.string	"_text"
.LASF46:
	.string	"label"
.LASF24:
	.string	"size"
.LASF4:
	.string	"_Bool"
.LASF52:
	.string	"/home/rlk/rlk/BIG/trial2/benos"
.LASF51:
	.string	"src/kernel.c"
.LASF48:
	.string	"done"
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu1) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
