# 0 "sbi/sbi_boot.S"
# 1 "/home/chen/Workspace/riscv/stacktraceHW//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "sbi/sbi_boot.S"
.section ".text.boot"

.globl _start
_start:

 csrw mie, zero


 la sp, stacks_start
 li t0, 4096
 add sp, sp, t0




 csrw mscratch, sp


 tail sbi_main

.section .data
.align 12
.global stacks_start
stacks_start:
 .skip 4096
