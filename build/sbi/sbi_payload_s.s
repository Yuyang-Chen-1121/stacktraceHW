# 0 "sbi/sbi_payload.S"
# 1 "/home/chen/Workspace/riscv/stacktraceHW//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "sbi/sbi_payload.S"

 .section .payload, "ax", %progbits
 .globl payload_bin
payload_bin:
 .incbin "benos.bin"
