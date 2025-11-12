# 1 "src/stacktrace.c"
# 1 "/home/rlk/rlk/BIG/trial2/benos//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "src/stacktrace.c"
# 1 "include/printk.h" 1



void init_printk_done(void (*fn)(char c));

int printk(const char *fmt, ...);

struct pt_regs;
void print_symbol(unsigned long addr);
void panic(void);
void dump_stack(void);
# 2 "src/stacktrace.c" 2
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
# 3 "src/stacktrace.c" 2

struct stackframe {
 unsigned long s_fp;
 unsigned long s_ra;
};

extern char _text[], _etext[];
static int kernel_text(unsigned long addr)
{
 if (addr >= (unsigned long)_text &&
     addr < (unsigned long)_etext)
  return 1;

 return 0;
}

static void walk_stackframe(void )
{
 unsigned long sp, fp, pc;
 struct stackframe *frame;
 unsigned long low;

 const register unsigned long current_sp __asm__ ("sp");
 sp = current_sp;
 pc = (unsigned long)walk_stackframe;
 fp = (unsigned long)__builtin_frame_address(0);

 while (1) {
  if (!kernel_text(pc))
   break;


  low = sp + sizeof(struct stackframe);
  if ((fp < low || fp & 0xf))
   break;





  frame = (struct stackframe *)(fp - 16);
  sp = fp;
  fp = frame->s_fp;

  pc = frame->s_ra - 4;

  if (kernel_text(pc))

   printk("[0x%016lx - 0x%016lx]  size 0x%04lx  pc 0x%016lx\n", sp, fp, fp-sp , pc );
 }
}

void dump_stack(void)
{
 printk("Call Frame:\n");
 walk_stackframe();
}
