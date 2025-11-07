#include "uart.h"
#include "type.h"
#include "memset.h"
#include "printk.h"

extern void dump_stack(void);

/*
 * (0) 如果 BenOS 没有提供 uart_getc，这里自定义一个简单版本
 *     读取UART RX寄存器直到有数据
 */
static inline int uart_getc(void)
{
    /* 根据 BenOS 的 uart.c 驱动定义调整寄存器地址 */
    volatile unsigned int *UART_LSR = (unsigned int *)0x10000005; // Line Status Register
    volatile unsigned int *UART_RBR = (unsigned int *)0x10000000; // Receiver Buffer Register

    // 等待 Data Ready (LSR bit0 = 1)
    while (((*UART_LSR) & 0x01) == 0)
        ;

    return (int)(*UART_RBR & 0xFF);
}

/* ---------------- 三层函数嵌套 ---------------- */

static int func_level3(int a, int b, int c)
{
    printk(">>> [func_level3] Dump normal stacktrace here:\n");
    dump_stack();
    return a + b + c;
}

static int func_level2(int x, int y)
{
    printk(">>> [func_level2] called, x=%d, y=%d\n", x, y);
    int z = x + y;
    int r = func_level3(x, y, z);
    printk("<<< [func_level2] return %d\n", r);
    return r;
}

static int func_level1(void)
{
    printk(">>> [func_level1] called\n");
    int a = 1;
    int b = 2;
    int r = func_level2(a, b);
    printk("<<< [func_level1] return %d\n", r);
    return r;
}

/* ---------------- 等待按键并触发异常 ---------------- */

static void wait_key_and_trigger_exception(void)
{
    printk("\n[EXCEPTION TEST] Press 'e' then ENTER to trigger an exception.\n");

    while (1) {
        int ch = uart_getc();  // 使用我们刚刚自定义的函数

        if (ch == 'e' || ch == 'E') {
            printk(">>> [EXCEPTION TEST] Illegal instruction will be executed.\n");
            asm volatile (".word 0x00000000"); // 非法指令
        } else {
            printk("[EXCEPTION TEST] Got '%c', waiting for 'e'...\n", ch);
        }
    }
}

void kernel_main(void)
{
    uart_init();
    init_printk_done();
    printk("===== BenOS Stacktrace Experiment =====\n");

    int r = func_level1();
    printk("[kernel_main] func_level1 result = %d\n", r);

    wait_key_and_trigger_exception();

    while (1)
        ;
}

