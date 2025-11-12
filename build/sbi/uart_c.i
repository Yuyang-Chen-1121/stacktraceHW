# 1 "sbi/uart.c"
# 1 "/home/rlk/rlk/BIG/trial2/benos//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "sbi/uart.c"
# 1 "include/asm/uart.h" 1
# 2 "sbi/uart.c" 2
# 1 "include/io.h" 1
# 33 "include/io.h"
static inline void delay(unsigned int n)
{
 while(n--)
  ;
}
# 3 "sbi/uart.c" 2

void uart_send(char c)
{
 while((({ unsigned char __v = (*(volatile unsigned char *)((0x10000000 +0x05))); __asm__ __volatile__ ("" : : : "memory"); __v; }) & 0x40) == 0)
  ;

 ({ unsigned char __v = c; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x00)) = (__v));});
}

void uart_send_string(char *str)
{
 int i;

 for (i = 0; str[i] != '\0'; i++)
  uart_send((char) str[i]);
}

void putchar(char c)
{
       if (c == '\n')
               uart_send('\r');
       uart_send(c);
}

char uart_get(void)
{
 if (({ unsigned char __v = (*(volatile unsigned char *)((0x10000000 +0x05))); __asm__ __volatile__ ("" : : : "memory"); __v; }) & 0x01)
  return ({ unsigned char __v = (*(volatile unsigned char *)((0x10000000 +0x00))); __asm__ __volatile__ ("" : : : "memory"); __v; });
 else
  return -1;
}

static unsigned int uart16550_clock = 1843200;


void uart_init(void)
{
 unsigned int divisor = uart16550_clock / (16 * 115200);


 ({ unsigned char __v = 0; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x01)) = (__v));});


 ({ unsigned char __v = 0x80; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x03)) = (__v));});
 ({ unsigned char __v = (unsigned char)divisor; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x00)) = (__v));});
 ({ unsigned char __v = (unsigned char)(divisor >> 8); __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x01)) = (__v));});


 ({ unsigned char __v = 0x3; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x03)) = (__v));});


 ({ unsigned char __v = 0xc7; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x02)) = (__v));});



 ({ unsigned char __v = 0x1; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x01)) = (__v));});
}
