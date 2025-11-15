# 0 "src/kernel.c"
# 1 "/home/chen/Workspace/riscv/stacktraceHW//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "src/kernel.c"
# 1 "include/uart.h" 1



void uart_init ( void );
char uart_recv ( void );
void uart_send ( char c );
void uart_send_string(char* str);
void putchar(char c);
char uart_get( void );
# 2 "src/kernel.c" 2
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
# 3 "src/kernel.c" 2
# 1 "include/memset.h" 1
# 1 "include/type.h" 1
# 2 "include/memset.h" 2

void *memset(void *s, int c, size_t count);
# 4 "src/kernel.c" 2
# 1 "include/printk.h" 1



void init_printk_done(void (*fn)(char c));

int printk(const char *fmt, ...);

struct pt_regs;
void print_symbol(unsigned long addr);
void panic(void);
void dump_stack(void);
# 5 "src/kernel.c" 2
# 1 "include/asm/csr.h" 1
# 6 "src/kernel.c" 2
# 1 "include/io.h" 1
# 33 "include/io.h"
static inline void delay(unsigned int n)
{
 while(n--)
  ;
}
# 7 "src/kernel.c" 2
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
# 8 "src/kernel.c" 2
# 1 "include/asm/uart.h" 1
# 9 "src/kernel.c" 2
extern void trap_init(void);
extern void trigger_load_access_fault();
extern void dump_stack(void);
static void trigger_access_fault(void)
{
    trigger_load_access_fault();
}
static void test_fault(void)
{
    trigger_access_fault();
}
static int func_level3(int a, int b, int c)
{
    printk("[func_level3] called with a=%d, b=%d, c=%d\n", a, b, c);
    dump_stack();
    return a + b + c;
}

static int func_level2(int x, int y)
{
    printk("[func_level2] calling func_level3\n");
    return func_level3(x, y, x + y);
}

static int func_level1(void)
{
    printk("[func_level1] calling func_level2\n");
    return func_level2(3, 5);
}

char uart_get(void)
{
 if (({ unsigned char __v = (*(volatile unsigned char *)((0x10000000 +0x05))); __asm__ __volatile__ ("" : : : "memory"); __v; }) & 0x01)
  return ({ unsigned char __v = (*(volatile unsigned char *)((0x10000000 +0x00))); __asm__ __volatile__ ("" : : : "memory"); __v; });
 else
  return -1;
}
void kernel_main(void)
{
    init_printk_done(sbi_putchar);

    trap_init();
    printk("Init done\n");

    int r = func_level1();
    printk("[kernel_main] func_level1 result = %d\n", r);

    int tempchar = -1;
    while (tempchar != 52) {
        tempchar = uart_get();
    }

    test_fault();

    while (1) {
        ;
    }
}
