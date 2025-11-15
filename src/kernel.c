#include "uart.h"
#include "type.h"
#include "memset.h"
#include "printk.h"
#include "asm/csr.h"
#include "io.h"
#include "asm/sbi.h"
#include "asm/uart.h"
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
	if (readb(UART_LSR) & UART_LSR_DR)
		return readb(UART_DAT);
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
