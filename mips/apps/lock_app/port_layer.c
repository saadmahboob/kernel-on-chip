#include "port_layer.h"
#include "koc_lock.h"
#include "plasoc_int.h"
#include "plasoc_gpio.h"
#include "plasoc_uart.h"

#define HW_LOCK_BASE_ADDRESS		(0x20000000)
#define HW_INT_BASE_ADDRESS		(0x20010000)
#define HW_GPIO_BASE_ADDRESS		(0x20030000)
#define HW_UART_BASE_ADDRESS	(0x20040000)
#define INT_TIMER_ID			(0)
#define INT_GPIO_ID			(1)
#define INT_UART_ID				(2)
#define INT_MASK			((1<<INT_GPIO_ID)|(1<<INT_UART_ID))
#define CPUINT_SIGNAL_ID	(KOC_CPU_SIGNAL_INT_ID)
#define CPUINT_INT_ID		(1)
#define CPUINT_MASK			((1<<CPUINT_SIGNAL_ID)|(1<<CPUINT_INT_ID))
#define UART_FIFO_DEPTH			(512)

koc_lock lock_obj;
plasoc_int int_obj;
plasoc_gpio gpio_obj;
plasoc_uart uart_obj;

volatile unsigned char uart_fifo[UART_FIFO_DEPTH];
volatile unsigned uart_in_ptr = 0;
volatile unsigned uart_out_ptr = 0;

/* Define the CPU's service routine such that it calls the
 interrupt controller's service method. */
void int_isr(void* param)
{
	(void) param;
	plasoc_int_service_interrupts(&int_obj);
}

/* Service the uart input. */
void uart_isr(void* ptr)
{
	unsigned byte;
	unsigned next_uart_in_ptr;
	
	byte = plasoc_uart_get_in(&uart_obj);
	next_uart_in_ptr = (uart_in_ptr+1)%UART_FIFO_DEPTH;
	if (next_uart_in_ptr!=uart_out_ptr)
	{
		uart_fifo[uart_in_ptr] = (unsigned char)byte;
		uart_in_ptr = next_uart_in_ptr;
	}
}

void putc_port(void* p, char c)
{
	while (!plasoc_uart_get_status_out_avail(&uart_obj));
	plasoc_uart_set_out(&uart_obj,(unsigned)c);
}

void initialize()
{
	{
		koc_lock_setup(&lock_obj,HW_LOCK_BASE_ADDRESS);
		plasoc_uart_setup(&uart_obj,HW_UART_BASE_ADDRESS);
		plasoc_gpio_setup(&gpio_obj,HW_GPIO_BASE_ADDRESS);
	}
	
	{
		plasoc_int_setup(&int_obj,HW_INT_BASE_ADDRESS);
		plasoc_int_attach_isr(&int_obj,INT_UART_ID,uart_isr,0);
		plasoc_int_attach_isr(cpuint(),CPUINT_INT_ID,int_isr,0);
	}
	
	{
		plasoc_int_enable(&int_obj,INT_UART_ID);
		plasoc_int_enable(cpuint(),CPUINT_INT_ID);
		
		l1_cache_flush_range((unsigned)&lock_obj,sizeof(lock_obj));
		l1_cache_flush_range((unsigned)&uart_obj,sizeof(uart_obj));
		l1_cache_flush_range((unsigned)&gpio_obj,sizeof(gpio_obj));
		l1_cache_flush_range((unsigned)&int_obj,sizeof(int_obj));

		OS_AsmInterruptInitFlush();
		OS_AsmInterruptEnable(1);
	}
}

void cpuinitialize()
{
	l1_cache_invalidate_range((unsigned)&lock_obj,sizeof(lock_obj));
	l1_cache_invalidate_range((unsigned)&uart_obj,sizeof(uart_obj));
	l1_cache_invalidate_range((unsigned)&gpio_obj,sizeof(gpio_obj));
	l1_cache_invalidate_range((unsigned)&int_obj,sizeof(int_obj));
	
	init_printf(0,putc_port);
	
	OS_AsmInterruptInitInvalidate();
	OS_AsmInterruptEnable(1);
}

void cleanup()
{
	OS_AsmInterruptEnable(0);
	plasoc_int_disable(&int_obj,INT_UART_ID);
	plasoc_int_disable(cpuint(),CPUINT_INT_ID);
}

void setbyte(unsigned byte)
{
	while (!plasoc_uart_get_status_out_avail(&uart_obj));
	plasoc_uart_set_out(&uart_obj,byte);
}

unsigned getbyte()
{
	unsigned byte;

	while (1)
	{
		OS_AsmInterruptEnable(0);
		if (uart_in_ptr!=uart_out_ptr)
		{
			byte = (unsigned)uart_fifo[uart_out_ptr];
			uart_out_ptr = (uart_out_ptr+1)%UART_FIFO_DEPTH;
			OS_AsmInterruptEnable(1);
			break;
		}
		OS_AsmInterruptEnable(1);
	}
	
	return byte;
}

void setword(unsigned word)
{
	unsigned each_byte;
	for (each_byte=0;each_byte<4;each_byte++)
	{
		setbyte(word&0xff);
		word >>= 8;
	}	
}

unsigned getword()
{
	unsigned each_byte;
	unsigned word = 0;
	for (each_byte=0;each_byte<sizeof(unsigned);each_byte++)
		word = word|(getbyte()<<(each_byte*8));
	return word;
}

void setout(unsigned value)
{
	plasoc_gpio_set_data_out(&gpio_obj,value);
}

void blocklock()
{
	while (koc_lock_take(&lock_obj)==0)
		continue;
}

void givelock()
{
	koc_lock_give(&lock_obj);
}
