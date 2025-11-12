# 1 "src/trap.c"
# 1 "/home/rlk/rlk/BIG/trial2/benos//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "src/trap.c"
# 1 "include/asm/csr.h" 1
# 2 "src/trap.c" 2
# 1 "include/asm/ptregs.h" 1
# 13 "include/asm/ptregs.h"
struct pt_regs {

 unsigned long sepc;
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

 unsigned long sstatus;
 unsigned long sbadaddr;
 unsigned long scause;

 unsigned long orig_a0;
};
# 3 "src/trap.c" 2
# 1 "include/printk.h" 1



void init_printk_done(void (*fn)(char c));

int printk(const char *fmt, ...);

struct pt_regs;
void print_symbol(unsigned long addr);
void panic(void);
void dump_stack(void);
# 4 "src/trap.c" 2
# 1 "include/io.h" 1
# 33 "include/io.h"
static inline void delay(unsigned int n)
{
 while(n--)
  ;
}
# 5 "src/trap.c" 2
# 1 "include/type.h" 1



typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long u64;

typedef unsigned int size_t;

typedef _Bool bool;



enum {
 false = 0,
 true = 1
};
# 6 "src/trap.c" 2

extern void do_exception_vector(void);

struct fault_info {
 int (*fn)(struct pt_regs *regs, const char *name);
 const char *name;
};

void panic()
{
 printk("Kernel panic\n");
 while(1)
  ;
}

void show_regs(struct pt_regs *regs)
{
 printk("sepc: %016lx ra : %016lx sp : %016lx\n",
  regs->sepc, regs->ra, regs->sp);
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
 printk(" t5 : %016lx t6 : %016lx\n",
  regs->t5, regs->t6);
}

static void do_trap_error(struct pt_regs *regs, const char *str)
{
 printk("Oops - %s\n", str);

 show_regs(regs);
 printk("sstatus:0x%016lx  sbadaddr:0x%016lx  scause:0x%016lx\n",
   regs->sstatus, regs->sbadaddr, regs->scause);
 dump_stack();
 panic();
}
# 65 "src/trap.c"
int do_trap_unknown(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_insn_misaligned(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_insn_fault(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_insn_illegal(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_load_misaligned(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_load_fault(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_store_misaligned(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_store_fault(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_ecall_u(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_ecall_s(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_trap_break(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };
int do_page_fault(struct pt_regs *regs, const char *str) { do_trap_error(regs, str); return 0; };

static const struct fault_info fault_info[] = {
 {do_trap_insn_misaligned, "Instruction address misaligned"},
 {do_trap_insn_fault, "Instruction access fault"},
 {do_trap_insn_illegal, "Illegal instruction"},
 {do_trap_break, "Breakpoint"},
 {do_trap_load_misaligned, "Load address misaligned"},
 {do_trap_load_fault, "Load access fault"},
 {do_trap_store_misaligned, "Store/AMO address misaligned"},
 {do_trap_store_fault, "Store/AMO access fault"},
 {do_trap_ecall_u, "Environment call from U-mode"},
 {do_trap_ecall_s, "Environment call from S-mode"},
 {do_trap_unknown, "unknown 10"},
 {do_trap_unknown, "unknown 11"},
 {do_page_fault, "Instruction page fault"},
 {do_page_fault, "Load page fault"},
 {do_trap_unknown, "unknown 14"},
 {do_page_fault, "Store/AMO page fault"},
};

static inline const struct fault_info *ec_to_fault_info(unsigned int scause)
{
 return fault_info + (scause & (0xf));
}

void do_exception(struct pt_regs *regs, unsigned long scause)
{
 const struct fault_info *inf;

 printk("%s, scause:0x%lx\n", __func__, scause);

 if ((scause & (1UL << 63))) {

 } else {
  inf = ec_to_fault_info(scause);

  if (!inf->fn(regs, inf->name))
   return;
 }
}

void trap_init(void)
{
 ({ unsigned long __v = (unsigned long)(0); __asm__ __volatile__ ("csrw " "sscratch" ", %0" : : "rK" (__v) : "memory"); });

 ({ unsigned long __v = (unsigned long)(do_exception_vector); __asm__ __volatile__ ("csrw " "stvec" ", %0" : : "rK" (__v) : "memory"); });
 printk("stvec=0x%x, 0x%x\n", ({ register unsigned long __v; __asm__ __volatile__ ("csrr %0, " "stvec" : "=r" (__v) : : "memory"); __v; }), do_exception_vector);

 ({ unsigned long __v = (unsigned long)(-1); __asm__ __volatile__ ("csrw " "sie" ", %0" : : "rK" (__v) : "memory"); });
}
