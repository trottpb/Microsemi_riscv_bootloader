/*******************************************************************************
 *(c) Copyright 2017-2018 Microsemi SoC Products Group.  All rights reserved.
 *
 * CoreGPIO based LED blinking example program.
 *
 *
 * 
 * SVN $Revision: <none> $
 * SVN $Date: <none> $
 */

#include "stdio.h"
#include "hal.h"
#include "riscv_hal.h"
#include "hw_platform.h"
#include "drivers/xmodem/xmodem.h"
#include "drivers/CoreGPIO/core_gpio.h"
#include "drivers/CoreUARTapb/core_uart_apb.h"
#include "drivers/CoreSPI/core_spi.h"
#include "drivers/mt25ql01gbbb/mt25ql01gbbb.h"

// Delay loop down counter load value.
#define DELAY_LOAD_VALUE     0x00080000

/******************************************************************************
 * GPIO instance data.
 *****************************************************************************/
gpio_instance_t g_gpio0;

/******************************************************************************
 * CoreUARTapb instance data.
 *****************************************************************************/
UART_instance_t g_uart;

/******************************************************************************
 * This message will be transmitted over the UART to HyperTerminal.
 *****************************************************************************/
uint8_t g_message[] =
"\r\nPF Mi-V UART to SPI Bridge\n\r";

#define BUFFER_TX_SIZE 1024

// byte size of transfers to / from SPI Flash
// only 4096 supported (as 4K Erase is used in Mi-V SPI Flash code)
#define TRANSFER_CHUNK_SIZE 4096
#define APPLICATION_SIZE 4194304 // set to 4M

// LED definitions to indicate cmd/operation states
#define CMD_I_LED 0x01
#define CMD_E_LED 0x02
#define CMD_R_LED 0x04
#define CMD_W_LED 0x08

/*
* Static global variables
*/
static uint8_t g_tx_buf[BUFFER_TX_SIZE];

static uint8_t g_flash_buf[TRANSFER_CHUNK_SIZE];


static int32_t g_delay_count;

/******************************************************************************
 * Function declarations
 *****************************************************************************/

void read_device_id(void);
void erase_flash_chunks(void);
void xmodem_flash_read(void);
void xmodem_flash_write(void);
void xmodem_flash_write2(void);
void application_write(void);
static void Bootloader_JumpToApplication(uint32_t stack_location, uint32_t reset_vector);

void FATAL_ERROR(void);
void led_blink(uint8_t led_mask);
void led_invert(uint8_t led_mask);

extern void usart_serial_getchar(UART_instance_t *g_uart_ptr, uint8_t *buffer_ptr);
extern void usart_serial_putchar(UART_instance_t *g_uart_ptr, uint8_t outbyte);

/******************************************************************************
 * main function.
 *****************************************************************************/ 
int main( void )
{
	uint8_t c_char;
    size_t temp;

	// Initialize RISC-V platform level interrupt controller
	PLIC_init();

	// Initialize CoreUARTapb with its base address, baud value, and line
    // configuration.
	UART_init( &g_uart, COREUARTAPB0_BASE_ADDR, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );

	// Initialize the CoreGPIO driver with the base address of the CoreGPIO
	// instance to use and the initial state of the outputs.

    GPIO_init(&g_gpio0, COREGPIO_IN_BASE_ADDR, GPIO_APB_32_BITS_BUS);
    
    // Disable interrupts in general.
    HAL_disable_interrupts();

	// Configure the GPIOs.
    GPIO_config( &g_gpio0, GPIO_0, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio0, GPIO_1, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio0, GPIO_2, GPIO_OUTPUT_MODE );
    GPIO_config( &g_gpio0, GPIO_3, GPIO_OUTPUT_MODE );

	// Set initial delay used to blink the LED.
    g_delay_count = DELAY_LOAD_VALUE;

    // Transmit UART message at startup
//    UART_polled_tx_string( &g_uart, g_message );


    // Flash Driver Initialization
    FLASH_init();

    // check for command byte from PC
    // e.g. : 'i'	-> return SPI Flash Manufacturer & Device ID
    // e.g. : 'e'	-> erase complete SPI Flash
    // e.g. : 'r'	-> program SPI Flash
    // e.g. : 'w'	-> read SPI Flash
    //
    // 1Gbit SPI Flash = 128MByte

    c_char = 0;

    while (1)
    {
    	temp = UART_get_rx(&g_uart, &c_char, 1);
        if (temp != 0)
        {
          switch (c_char)
          {
          	  case 'i' :
          		  GPIO_set_outputs( &g_gpio0, CMD_I_LED );
          		  read_device_id(); c_char = 0;
          		  break;
         	  case 'e' :
         		  GPIO_set_outputs( &g_gpio0, CMD_E_LED );
         		  erase_flash_chunks(); c_char = 0;
         		  break;
          	  case 'r' :
          		  GPIO_set_outputs( &g_gpio0, CMD_R_LED );
          		  xmodem_flash_read(); c_char = 0;
          		  break;
          	  case 'w' :
          		  GPIO_set_outputs( &g_gpio0, CMD_W_LED );
          		  xmodem_flash_write2(); c_char = 0;
          		  break;
          	  case 'a' :
          		  application_write();
          		  Bootloader_JumpToApplication((uint32_t)0x80000000, (uint32_t)0x80000004); c_char = 0;
          		  break;
          	  default: break;
          }

        }
    }
}

/******************************************************************************
 * indicate error during operation by flashing with all LEDs
 *****************************************************************************/

void FATAL_ERROR(void)
{
	while (1) led_blink(CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);		// endless loop, indicate failure
}


/******************************************************************************
 * erase flash device
 *****************************************************************************/

void erase_flash_chunks(void)
{
	uint8_t byte0;
	uint8_t byte1;
	uint8_t byte2;
	uint8_t byte3;
	uint32_t erase_chunks;
	uint32_t spi_flash_address;
	uint32_t i;

	// receive number of chunks to erase
	usart_serial_getchar(&g_uart, &byte3);
	usart_serial_getchar(&g_uart, &byte2);
	usart_serial_getchar(&g_uart, &byte1);
	usart_serial_getchar(&g_uart, &byte0);

	// combine to 32 Bit value
	erase_chunks = byte3<<24 | byte2<<16 | byte1<<8 | byte0;

	// receive start address
	usart_serial_getchar(&g_uart, &byte3);
	usart_serial_getchar(&g_uart, &byte2);
	usart_serial_getchar(&g_uart, &byte1);
	usart_serial_getchar(&g_uart, &byte0);

	// combine to 32 Bit value
	spi_flash_address =  byte3<<24 | byte2<<16 | byte1<<8 | byte0;

	// global chip erase seems not to work properly
	// use 4k erase instead

	FLASH_global_unprotect();

	for (i = 0; i < erase_chunks; i++)
	{
		// Erase SPI Flash chunk
		FLASH_erase_4k_block(spi_flash_address);
		spi_flash_address = spi_flash_address + TRANSFER_CHUNK_SIZE;
		led_invert(CMD_E_LED);		// alive indicator
	}

    // set all LEDs (high active) -> Success
	GPIO_set_outputs( &g_gpio0, CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);
}

/******************************************************************************
 * read Manufacturer & Device ID from SPI Flash and send to PC
 *****************************************************************************/

void read_device_id(void)
{
	uint8_t manufacturer_id;
	uint8_t device_id;
	uint8_t device_capacity;

    // read SPI Flash Manufacturer ID, Device ID, Device Capacity
    FLASH_read_device_id(&manufacturer_id, &device_id, &device_capacity);

    usart_serial_putchar(&g_uart, manufacturer_id);
    usart_serial_putchar(&g_uart, device_id);
    usart_serial_putchar(&g_uart, device_capacity);

    // set all LEDs (high active) -> Success
	GPIO_set_outputs( &g_gpio0, CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);

}

/******************************************************************************
 * receive data from PC with XMODEM protocol and write to Flash
 *****************************************************************************/

void xmodem_flash_write(void)
{
	uint8_t byte0;
	uint8_t byte1;
	uint8_t byte2;
	uint8_t byte3;
	uint32_t expected_filesize;
	uint32_t received_filesize;
	uint32_t chunks_total;
	uint32_t chunk_received_bytes;
	uint32_t i;
    uint32_t spi_flash_address;

	// receive filesize in bytes
	usart_serial_getchar(&g_uart, &byte3);
	usart_serial_getchar(&g_uart, &byte2);
	usart_serial_getchar(&g_uart, &byte1);
	usart_serial_getchar(&g_uart, &byte0);

	// combine to 32 Bit value
	expected_filesize = byte3<<24 | byte2<<16 | byte1<<8 | byte0;

	// receive start address
	usart_serial_getchar(&g_uart, &byte3);
	usart_serial_getchar(&g_uart, &byte2);
	usart_serial_getchar(&g_uart, &byte1);
	usart_serial_getchar(&g_uart, &byte0);

	// combine to 32 Bit value
	spi_flash_address =  byte3<<24 | byte2<<16 | byte1<<8 | byte0;


	FLASH_global_unprotect();

	received_filesize = 0;

	if (expected_filesize)
	{
		chunks_total = expected_filesize / TRANSFER_CHUNK_SIZE;

		for (i = 0; i < chunks_total; i++)
		{
			chunk_received_bytes = xmodem_receive_file(&g_uart, g_flash_buf);
			if (chunk_received_bytes != TRANSFER_CHUNK_SIZE) FATAL_ERROR();
			received_filesize = received_filesize + chunk_received_bytes;

			// program  buffer content into SPI Flash
//			FLASH_global_unprotect();
//			FLASH_erase_4k_block(spi_flash_address);
			FLASH_program(spi_flash_address, g_flash_buf, TRANSFER_CHUNK_SIZE);
			spi_flash_address = spi_flash_address + TRANSFER_CHUNK_SIZE;
			led_invert(CMD_W_LED);		// alive indicator

		}
	}

	if (received_filesize != expected_filesize) FATAL_ERROR();
	else
	// set all LEDs (high active) -> Success
	GPIO_set_outputs( &g_gpio0, CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);

}
void xmodem_flash_write2(void)
{
	uint8_t byte0;
	uint8_t byte1;
	uint8_t byte2;
	uint8_t byte3;
	uint32_t expected_filesize;
	uint32_t remaining_bytes;
	uint32_t received_filesize;
	uint32_t chunks_total;
	uint32_t chunk_received_bytes;
	uint32_t i;
    uint32_t spi_flash_address;

	// receive filesize in bytes
	usart_serial_getchar(&g_uart, &byte3);
	usart_serial_getchar(&g_uart, &byte2);
	usart_serial_getchar(&g_uart, &byte1);
	usart_serial_getchar(&g_uart, &byte0);

	// combine to 32 Bit value
	expected_filesize = byte3<<24 | byte2<<16 | byte1<<8 | byte0;

	// receive start address
	usart_serial_getchar(&g_uart, &byte3);
	usart_serial_getchar(&g_uart, &byte2);
	usart_serial_getchar(&g_uart, &byte1);
	usart_serial_getchar(&g_uart, &byte0);

	// combine to 32 Bit value
	spi_flash_address =  byte3<<24 | byte2<<16 | byte1<<8 | byte0;


	FLASH_global_unprotect();

	received_filesize = 0;
	remaining_bytes = expected_filesize;

	if (expected_filesize)
	{
		while (remaining_bytes > TRANSFER_CHUNK_SIZE)
		{
			chunk_received_bytes = xmodem_receive_file(&g_uart, g_flash_buf);
			remaining_bytes = remaining_bytes - TRANSFER_CHUNK_SIZE;
			received_filesize = received_filesize + chunk_received_bytes;

			FLASH_program(spi_flash_address, g_flash_buf, TRANSFER_CHUNK_SIZE);
			spi_flash_address = spi_flash_address + TRANSFER_CHUNK_SIZE;
			led_invert(CMD_W_LED);		// alive indicator
		}

		if (remaining_bytes != 0)
		{
			chunk_received_bytes = xmodem_receive_file(&g_uart, g_flash_buf);
			remaining_bytes = remaining_bytes - TRANSFER_CHUNK_SIZE;
			received_filesize = received_filesize + chunk_received_bytes;

			FLASH_program(spi_flash_address, g_flash_buf, TRANSFER_CHUNK_SIZE);
			led_invert(CMD_W_LED);		// alive indicator

		}
	}
	// set all LEDs (high active) -> Success
	GPIO_set_outputs( &g_gpio0, CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);

}

void application_write(void)
{
	uint32_t expected_chunks;
	uint32_t chunks_total;
	uint32_t chunk_received_bytes;
	uint32_t i,j;
    uint32_t spi_flash_address;
    uint32_t *address;
    uint8_t g_flash_buf2[TRANSFER_CHUNK_SIZE];
	uint8_t byte0;
	uint8_t byte1;
	uint8_t byte2;
	uint8_t byte3;
	uint32_t word;

	FLASH_global_unprotect();

	expected_chunks = 2;
	address = DDR3_base_address;
	spi_flash_address = 0;

	if (expected_chunks)
	{

		for (i = 0; i < expected_chunks; i++)
		{

			// read SPI Flash chunk into buffer
			FLASH_read(spi_flash_address, g_flash_buf2, TRANSFER_CHUNK_SIZE);
			// send to PC
			for (j=0; j < TRANSFER_CHUNK_SIZE/4;j++)
			{
				byte0 = g_flash_buf2[j*4];
				byte1 = g_flash_buf2[(j*4)+1];
				byte2 = g_flash_buf2[(j*4)+2];
				byte3 = g_flash_buf2[(j*4)+3];
				word = byte3<<24 | byte2<<16 | byte1<<8 | byte0;

				address[j] = word;
			}
			spi_flash_address = spi_flash_address + TRANSFER_CHUNK_SIZE;
			address = address + TRANSFER_CHUNK_SIZE;

		}
	}

}

/******************************************************************************
 *  Read Flash content and transfer to PC with XMODEM protocol
 *****************************************************************************/

void xmodem_flash_read(void)
{
	uint8_t byte0;
	uint8_t byte1;
	uint8_t byte2;
	uint8_t byte3;
	uint32_t expected_chunks;
	uint32_t received_filesize;
	uint32_t chunks_total;
	uint32_t chunk_received_bytes;
	uint32_t i;
    uint32_t spi_flash_address;

	// receive number of chunks to read
	usart_serial_getchar(&g_uart, &byte3);
	usart_serial_getchar(&g_uart, &byte2);
	usart_serial_getchar(&g_uart, &byte1);
	usart_serial_getchar(&g_uart, &byte0);

	// combine to 32 Bit value
	expected_chunks = byte3<<24 | byte2<<16 | byte1<<8 | byte0;

	// receive start address
	usart_serial_getchar(&g_uart, &byte3);
	usart_serial_getchar(&g_uart, &byte2);
	usart_serial_getchar(&g_uart, &byte1);
	usart_serial_getchar(&g_uart, &byte0);

	// combine to 32 Bit value
	spi_flash_address =  byte3<<24 | byte2<<16 | byte1<<8 | byte0;

	FLASH_global_unprotect();

	if (expected_chunks)
	{

		for (i = 0; i < expected_chunks; i++)
		{

			// read SPI Flash chunk into buffer
			FLASH_read(spi_flash_address, g_flash_buf, TRANSFER_CHUNK_SIZE);
			// send to PC
			xmodem_send_file(&g_uart, g_flash_buf, TRANSFER_CHUNK_SIZE);

			spi_flash_address = spi_flash_address + TRANSFER_CHUNK_SIZE;
			led_invert(CMD_R_LED);		// alive indicator

		}
	}

	// set all LEDs (high active) -> Success
	GPIO_set_outputs( &g_gpio0, CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);

}

/******************************************************************************
 * toggle LED with delay
 *****************************************************************************/

void led_blink(uint8_t led_mask)
{
	uint32_t gpio_pattern;

 	// Decrement delay counter.
   	--g_delay_count;

   	// Check if delay expired.
   	if ( g_delay_count <= 0 )
   	{
   		// Reload delay counter.
   		g_delay_count = DELAY_LOAD_VALUE;

   		led_invert(led_mask);
   	}
}


/******************************************************************************
 * invert specified LED state
 *****************************************************************************/

void led_invert(uint8_t led_mask)
{
	uint32_t gpio_pattern;

 	// Toggle GPIO output pattern by doing an exclusive OR of all
   	// pattern bits with ones.
   	gpio_pattern = GPIO_get_outputs( &g_gpio0 );
   	gpio_pattern ^= (uint32_t) led_mask;
   	GPIO_set_outputs( &g_gpio0, gpio_pattern );

}

static void Bootloader_JumpToApplication(uint32_t stack_location, uint32_t reset_vector)
{
    volatile int32_t delay_count = 0;
    delay_count = DELAY_LOAD_VALUE;

	/* Restore PLIC to known state: */
	__disable_irq();
	PLIC_init();

	for(delay_count = 0; delay_count <= DELAY_LOAD_VALUE; delay_count++)
	{
		led_invert(CMD_R_LED);		// alive indicator
	}
	/* Disable all interrupts: */
	write_csr(mie, 0);

	/* Start executing from the top of DDR memory: */
    __asm volatile("lui ra,0x80000");
    __asm volatile("addi ra, ra, 0x0");
    __asm volatile("ret");

    /*User application execution should now start and never return here.... */
}
