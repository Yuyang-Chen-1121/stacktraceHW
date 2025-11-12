# 1 "sbi/sbi_trap.c"
# 1 "/home/rlk/rlk/BIG/trial2/benos//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "sbi/sbi_trap.c"
# 1 "include/asm/sbi.h" 1
# 31 "include/asm/sbi.h"
static inline void sbi_set_timer(unsigned long stime_value)
{
 ({ register unsigned long a0 asm ("a0") = (unsigned long)(stime_value); register unsigned long a1 asm ("a1") = (unsigned long)(0); register unsigned long a2 asm ("a2") = (unsigned long)(0); register unsigned long a7 asm ("a7") = (unsigned long)(0); asm volatile ("ecall" : "+r" (a0) : "r" (a1), "r" (a2), "r" (a7) : "memory"); a0; });
}

static inline void sbi_putchar(char c)
{
 ({ register unsigned long a0 asm ("a0") = (unsigned long)(c); register unsigned long a1 asm ("a1") = (unsigned long)(0); register unsigned long a2 asm ("a2") = (unsigned long)(0); register unsigned long a7 asm ("a7") = (unsigned long)(0x1); asm volatile ("ecall" : "+r" (a0) : "r" (a1), "r" (a2), "r" (a7) : "memory"); a0; });
}

static inline void sbi_put_string(char *str)
{
 int i;

 for (i = 0; str[i] != '\0'; i++)
  sbi_putchar((char) str[i]);
}
# 2 "sbi/sbi_trap.c" 2
# 1 "include/asm/csr.h" 1
# 3 "sbi/sbi_trap.c" 2
# 1 "include/uart.h" 1



void uart_init ( void );
char uart_recv ( void );
void uart_send ( char c );
void uart_send_string(char* str);
void putchar(char c);
char uart_get( void );
# 4 "sbi/sbi_trap.c" 2
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
# 5 "sbi/sbi_trap.c" 2
# 1 "sbi/sbi_trap.h" 1
# 33 "sbi/sbi_trap.h"
void sbi_trap_init(void);
void sbi_trap_handler(struct sbi_trap_regs *regs);
void delegate_traps();
# 6 "sbi/sbi_trap.c" 2
# 1 "sbi/sbi_error.h" 1
# 7 "sbi/sbi_trap.c" 2
# 1 "include/printk.h" 1



void init_printk_done(void (*fn)(char c));

int printk(const char *fmt, ...);

struct pt_regs;
void print_symbol(unsigned long addr);
void panic(void);
void dump_stack(void);
# 8 "sbi/sbi_trap.c" 2

void sbi_panic()
{
 printk("sbi panic\n");
 while(1)
  ;
}

static void sbi_trap_error(struct sbi_trap_regs *regs, const char *msg, int rc)
{
 printk("%s: %s (error %d)\n", __func__, msg, rc);
 printk("mcause: %016lx  mtval: %016lx \n",
     ({ register unsigned long __v; __asm__ __volatile__ ("csrr %0, " "mcause" : "=r" (__v) : : "memory"); __v; }), ({ register unsigned long __v; __asm__ __volatile__ ("csrr %0, " "mtval" : "=r" (__v) : : "memory"); __v; }));

 printk("mepc: %016lx mstatus : %016lx\n",
  regs->mepc, regs->mstatus);
 printk(" gp : %016lx tp : %016lx t0 : %016lx\n",
  regs->gp, regs->tp, regs->t0);
 printk(" t1 : %016lx t2 : %016lx t3 : %016lx\n",
  regs->t1, regs->t2, regs->s0);
 printk(" s1 : %016lx a0 : %016lx a1 : %016lx\n",
  regs->s1, regs->a0, regs->a1);
 printk(" a2 : %016lx a3 : %016lx a4 : %016lx\n",
  regs->a2, regs->a3, regs->a4);
 printk(" a5 : %016lx a6 : %016lx a7 : %016lx\n",
  regs->a5, regs->a6, regs->a7);
 printk(" s2 : %016lx s3 : %016lx s4 : %016lx\n",
  regs->s2, regs->s3, regs->s4);
 printk(" s5 : %016lx s6 : %016lx s7 : %016lx\n",
  regs->s5, regs->s6, regs->s7);
 printk(" s8 : %016lx s9 : %016lx s10: %016lx\n",
  regs->s8, regs->s9, regs->s10);
 printk(" s11: %016lx t3 : %016lx t4: %016lx\n",
  regs->s11, regs->t3, regs->t4);
 printk(" t5 : %016lx t6 : %016lx sp: %016lx\n",
  regs->t5, regs->t6, regs->sp);
 printk(" ra: %016lx\n",
  regs->ra);

 sbi_panic();
}

static int sbi_ecall_handle(unsigned int id, struct sbi_trap_regs *regs)
{
 int ret = 0;

 switch (id) {
 case 0x1:
  putchar(regs->a0);
  ret = 0;
  break;
 }


 if (!ret)
  regs->mepc += 4;

 return ret;
}

void sbi_trap_handler(struct sbi_trap_regs *regs)
{
 unsigned long mcause = ({ register unsigned long __v; __asm__ __volatile__ ("csrr %0, " "mcause" : "=r" (__v) : : "memory"); __v; });
 unsigned long ecall_id = regs->a7;
 int rc = -5;
 const char *msg = "trap handler failed";

 switch (mcause) {
 case 0x9:
  rc = sbi_ecall_handle(ecall_id, regs);
  msg = "ecall handler failed";
  break;
 case 0x5:
 case 0x7:
  msg = "load store access failed";
  break;
 default:
  break;
 }

 if (rc) {
  sbi_trap_error(regs, msg, rc);
 }
}

void delegate_traps(void)
{
 unsigned long interrupts;
 unsigned long exceptions;

 interrupts = (1UL << 1) | (1UL << 5) | (1UL << 9);
 exceptions = (1UL << 0x0) | (1UL << 0xc) |
                         (1UL << 0x3) | (1UL << 0xd) |
                         (1UL << 0xf) | (1UL << 0x8) |
    (1UL << 0x5) | (1UL << 0x7);

  ({ unsigned long __v = (unsigned long)(interrupts); __asm__ __volatile__ ("csrw " "mideleg" ", %0" : : "rK" (__v) : "memory"); });
  ({ unsigned long __v = (unsigned long)(exceptions); __asm__ __volatile__ ("csrw " "medeleg" ", %0" : : "rK" (__v) : "memory"); });
}

extern void sbi_exception_vector(void);

void sbi_trap_init(void)
{

 ({ unsigned long __v = (unsigned long)(sbi_exception_vector); __asm__ __volatile__ ("csrw " "mtvec" ", %0" : : "rK" (__v) : "memory"); });

 ({ unsigned long __v = (unsigned long)(0); __asm__ __volatile__ ("csrw " "mie" ", %0" : : "rK" (__v) : "memory"); });
}
