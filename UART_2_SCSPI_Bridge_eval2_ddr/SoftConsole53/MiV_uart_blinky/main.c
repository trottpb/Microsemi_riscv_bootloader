/*******************************************************************************
 * (c) Copyright 2016-2017 Microsemi SoC Products Group. All rights reserved.
 *
 * This simple example demonstrates how to use the CoreUARTapb driver and
 * CoreGPIO driver. This example application prints Hello World! on Serial
 * Terminal program and blinks LEDs on PolarFire Evaluation Kit.
 *
 */
#include "riscv_hal.h"
#include "core_uart_apb.h"
#include "core_gpio.h"
#include "sample_hw_platform.h"
#include "hw_reg_access.h"


/*
 * Delay loop down counter load value.
 */
#define DELAY_LOAD_VALUE     0x00800000


/******************************************************************************
 * Instruction message. This message will be transmitted over the UART to
 * HyperTerminal when the program starts.
 *****************************************************************************/

uint8_t testmsg[] = {"\r\n\r\nHello World!\0"};
uint8_t testmsg2[] = {"\r\n\r\nStill counting\0"};

/*-----------------------------------------------------------------------------
 * UART instance data.
 */
UART_instance_t g_uart;

/*-----------------------------------------------------------------------------
 * GPIO instance data.
 */
gpio_instance_t g_gpio_out;


/*-----------------------------------------------------------------------------
 * main
 */
int main()
{
    volatile int32_t delay_count = 0;
	uint32_t gpio_pattern;

    /**************************************************************************
     * Initialize the CoreGPIO driver with the base address of the CoreGPIO
     * instance to use and the initial state of the outputs.
     *************************************************************************/
    GPIO_init(&g_gpio_out, COREGPIO_OUT_BASE_ADDR, GPIO_APB_32_BITS_BUS);

    /**************************************************************************
     * Configure the GPIOs.
     *************************************************************************/
    GPIO_config( &g_gpio_out, GPIO_0, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio_out, GPIO_1, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio_out, GPIO_2, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio_out, GPIO_3, GPIO_OUTPUT_MODE );


    /**************************************************************************
     * Initialize CoreUARTapb with its base address, baud value, and line
     * configuration.
     *************************************************************************/
    UART_init(&g_uart,
    		  COREUARTAPB0_BASE_ADDR,
			  BAUD_VALUE_115200,
			  (DATA_8_BITS | NO_PARITY));

    /**************************************************************************
     * Send the instructions message.
     *************************************************************************/
    UART_polled_tx_string(&g_uart, (const uint8_t *)&testmsg);

    /*
     * Set initial delay used to blink the LED.
     */
    delay_count = DELAY_LOAD_VALUE;
	gpio_pattern = 0x00000000;

    /*
     * Infinite loop.
     */
    for(;;)
    {
    	/*
    	 * Decrement delay counter.
    	 */
    	--delay_count;

    	/*
    	 * Check if delay expired.
    	 */
    	if ( delay_count <= 0 )
    	{
    		/*
    		 * Reload delay counter.
    		 */
    		delay_count = DELAY_LOAD_VALUE;

    		/*
    		 * Toggle GPIO output pattern by doing an exclusive OR of all
    		 * pattern bits with ones.
    		 */
    		gpio_pattern++;
    		GPIO_set_outputs( &g_gpio_out, gpio_pattern );
    		if (gpio_pattern >= 0x0000000f)
    		{
    			gpio_pattern = 0x00000000;
    		    UART_polled_tx_string(&g_uart, (const uint8_t *)&testmsg2);
    		}
    	}
    }


    return 0;

}

