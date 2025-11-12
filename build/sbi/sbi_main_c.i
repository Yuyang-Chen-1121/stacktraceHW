# 1 "sbi/sbi_main.c"
# 1 "/home/rlk/rlk/BIG/trial2/benos//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "sbi/sbi_main.c"
# 1 "include/asm/csr.h" 1
# 2 "sbi/sbi_main.c" 2

# 1 "include/uart.h" 1



void uart_init ( void );
char uart_recv ( void );
void uart_send ( char c );
void uart_send_string(char* str);
void putchar(char c);
char uart_get( void );
# 4 "sbi/sbi_main.c" 2
# 1 "sbi/sbi_trap_regs.h" 1
# 13 "sbi/sbi_trap_regs.h"
struct sbi_trap_regs {

 unsigned long mepc;
 unsigned long ra;
 unsigned long sp;
 unsigned long gp;
 unsigned long tp;
 unsigned long t0;
 unsigned long t1;
 unsigned long t2;
 unsigned long s0;
 unsigned long s1;
 unsigned long a0;
 unsigned long a1;
 unsigned long a2;
 unsigned long a3;
 unsigned long a4;
 unsigned long a5;
 unsigned long a6;
 unsigned long a7;
 unsigned long s2;
 unsigned long s3;
 unsigned long s4;
 unsigned long s5;
 unsigned long s6;
 unsigned long s7;
 unsigned long s8;
 unsigned long s9;
 unsigned long s10;
 unsigned long s11;
 unsigned long t3;
 unsigned long t4;
 unsigned long t5;
 unsigned long t6;

 unsigned long mstatus;
};
# 5 "sbi/sbi_main.c" 2
# 1 "sbi/sbi_trap.h" 1
# 33 "sbi/sbi_trap.h"
void sbi_trap_init(void);
void sbi_trap_handler(struct sbi_trap_regs *regs);
void delegate_traps();
# 6 "sbi/sbi_main.c" 2
# 1 "include/printk.h" 1



void init_printk_done(void (*fn)(char c));

int printk(const char *fmt, ...);

struct pt_regs;
void print_symbol(unsigned long addr);
void panic(void);
void dump_stack(void);
# 7 "sbi/sbi_main.c" 2
# 21 "sbi/sbi_main.c"
void sbi_main(void)
{
 unsigned long val;

 uart_init();

 init_printk_done(putchar);
 printk("	                                            ___   ___\n""    //   ) )                    //   ) )  //   ) )    / /\n" "   //___/ /   ___       __     ((        //___/ /    / /\n""  / __  (   //___) ) //   ) )    \\      / __  (     / /\n"" //    ) ) //       //   / /       ) ) //    ) )   / /\n" "//____/ / ((____   //   / / ((___ / / //____/ / __/ /___\n");

 sbi_trap_init();


 val = ({ register unsigned long __v; __asm__ __volatile__ ("csrr %0, " "mstatus" : "=r" (__v) : : "memory"); __v; });
 val = (((val) & ~((3UL << 11))) | (((1UL)) * (((3UL << 11)) & ~(((3UL << 11))-1))));
 val = (((val) & ~(0x00000080UL)) | ((0) * ((0x00000080UL) & ~((0x00000080UL)-1))));
 ({ unsigned long __v = (unsigned long)(val); __asm__ __volatile__ ("csrw " "mstatus" ", %0" : : "rK" (__v) : "memory"); });

 delegate_traps();


 ({ unsigned long __v = (unsigned long)(0x80200000); __asm__ __volatile__ ("csrw " "mepc" ", %0" : : "rK" (__v) : "memory"); });

 ({ unsigned long __v = (unsigned long)(0x80200000); __asm__ __volatile__ ("csrw " "stvec" ", %0" : : "rK" (__v) : "memory"); });

 ({ unsigned long __v = (unsigned long)(0); __asm__ __volatile__ ("csrw " "sie" ", %0" : : "rK" (__v) : "memory"); });

 ({ unsigned long __v = (unsigned long)(0); __asm__ __volatile__ ("csrw " "satp" ", %0" : : "rK" (__v) : "memory"); });


 asm volatile("mret");
}
