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
#include <stdlib.h>
#include <string.h>
#include "stdio.h"
#include "hal.h"
#include "riscv_hal.h"
#include "hw_platform.h"
#include "drivers/ymodem/ymodem.h"
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

#define BUFFER_TX_SIZE 1024
#define MAX_RX_DATA_SIZE    256

// byte size of transfers to / from SPI Flash
// only 4096 supported (as 4K Erase is used in Mi-V SPI Flash code)
#define TRANSFER_CHUNK_SIZE 4096
#define APPLICATION_SIZE 4194304 // set to 4M

// LED definitions to indicate cmd/operation states
#define CMD_I_LED 0x01
#define CMD_E_LED 0x02
#define CMD_R_LED 0x04
#define CMD_W_LED 0x08

/******************************************************************************
 * Timer load value. This value is calculated to result in the timer timing
 * out after after 1 second with a system clock of 24MHz and the timer
 * prescaler set to divide by 1024.
 *****************************************************************************/
#define TIMER_LOAD_VALUE    23437

/*
* Static global variables
*/
static uint8_t g_tx_buf[BUFFER_TX_SIZE];

static uint8_t g_flash_buf[TRANSFER_CHUNK_SIZE];

volatile uint32_t g_10ms_count;
volatile uint32_t g_state;
static int32_t g_delay_count;

/******************************************************************************
 * Function declarations
 *****************************************************************************/

void read_device_id(void);
void erase_flash_chunks(void);
void xmodem_flash_read(void);
void xmodem_flash_write2(void);
void flash_write(uint32_t file_size);
void application_write(void);
static void Bootloader_JumpToApplication(uint32_t stack_location, uint32_t reset_vector);
static uint32_t rx_app_file(uint8_t *dest_address);

void FATAL_ERROR(void);
void led_blink(uint8_t led_mask);
void led_invert(uint8_t led_mask);

extern void usart_serial_getchar(UART_instance_t *g_uart_ptr, uint8_t *buffer_ptr);
extern void usart_serial_putchar(UART_instance_t *g_uart_ptr, uint8_t outbyte);

/******************************************************************************
 * Instruction message. This message will be transmitted over the UART to
 * HyperTerminal when the program starts.
 *****************************************************************************/
const uint8_t g_greeting_msg[] =
"\r\n\r\n\
===============================================================================\r\n\
                    Microsemi RISC-V Boot Loader v1\r\n\
===============================================================================\r\n\
 The RISC-V processor has this bootloader running from address 0x7000000 after \r\n\
 reset. This boot loader provides the following features:\r\n\
    - Reads the SPI flash device ID\r\n\
    - Erases part of the SPI flash\r\n\
    - Programs the SPI flash with a program passed to it via the YMODEM \r\n\
    - protocol \r\n\
    - Reads part of the SPI flash and returns it via the YMODEM protocol \r\n\
    - Copies the SPI flash into memory at 0x80000000 and jumps to start \r\n\
      executing that code.\r\n\
";

const uint8_t g_instructions_msg[] =
"\r\n\r\n\
-------------------------------------------------------------------------------\r\n\
 Type 0 to show this menu\n\r\
 Type i read the SPI flash device ID\n\r\
 Type e erase part of the SPI flash \n\r\
 Type c copy image into memory using YMODEM \n\r\
 Type w write to part of the SPI flash \n\r\
 Type a copy the application from SPI flash into memory\n\r\
 Type j jump to memory and execute new program\n\r\
";

const uint8_t g_device_id_msg[] =
"\r\n\
-------------------------------------------------------------------------------\r\n\
 The manufacturers ID of the MACRONIX SPI flash device on the Everest board is \r\n\
 0xC2. The device ID is 0x25 and the density is 0x3b.\r\n\
 These are the values that should be returned when read.\r\n\
";

const uint8_t g_erase_msg[] =
"\r\n\
-------------------------------------------------------------------------------\r\n\
 Part of the SPI Flash will be erased in 4K chunks. You will also be asked for \r\n\
 the start of the address within the Flash device.\r\n\
";

const uint8_t g_program_msg[] =
"\r\n\
-------------------------------------------------------------------------------\r\n\
 The SPI flash will now be programmed with the image loaded into memory.  \r\n\
";

const uint8_t g_load_msg[] =
"\r\n\
-------------------------------------------------------------------------------\r\n\
 The memory will now be loaded with the image stored in SPI flash.  \r\n\
 Note it is loaded in 4K chunks regardless of the image size.  \r\n\
";

const uint8_t g_program_chunks_msg[] =
"\r\n\
 Enter the number of 4K chunks to be programmed: ";

const uint8_t g_manuf_id_msg[] =
"\r\n\
 Manufacturer-ID: ";

const uint8_t g_dev_id_msg[] =
"\r\n\
 Device-ID: ";

const uint8_t g_cap_id_msg[] =
"\r\n\
 Device-Capacity: ";

const uint8_t g_erase_chunks_msg[] =
"\r\n\
 Enter the number of 4K chunks to be erased: ";

const uint8_t g_erase_address_msg[] =
"\r\n\
 Enter the start SPI address (4 hex values): 0x";

const uint8_t g_load_executable_msg[] =
"\r\n\
-------------------------------------------------------------------------------\r\n\
 Loading application from SPI flash into DDR memory.\r\n";

const uint8_t g_run_executable_msg[] =
"\r\n\
-------------------------------------------------------------------------------\r\n\
 Executing application in DDR memory.\r\n\
-------------------------------------------------------------------------------\r\n\
 \r\n";

const uint8_t g_newline_msg[] =
"\r\n";

const uint8_t g_led_flash_msg[] =
" Wait for the led to stop flashing on the board before continuing!\r\n";

const uint8_t g_led_on_msg[] =
" Wait for all the leds to be back on before continuing!\r\n";

uint8_t rx_data[MAX_RX_DATA_SIZE];
uint8_t rx_rec[MAX_RX_DATA_SIZE];
int ind;
uint8_t flag;

/******************************************************************************
 * CoreUART Receiver Interrupt Service Routine
 *
 * When a receive interrupt is flagged the UART receive register is read and the
 * ASCII character is placed into a receive string.
 * After being echoed back to the terminal through the HAL call UART_send further
 * received values will be added to the string on subsequent interrupts.
 * Once a "carriage return" is received, a flag is set and the receive string is
 * complete.
 *****************************************************************************/
uint8_t External_1_IRQHandler (void)
{
	size_t rx_size;

	rx_size = UART_get_rx( &g_uart, rx_data, 1 );

	if (rx_size > 0)
	{
		rx_rec[ind] = rx_data[0];
		rx_rec[ind+1] = 0;
    	UART_send (&g_uart, rx_data, 1 );
		ind++;
		if (rx_data[0] == '\r' )
		{
    		UART_send (&g_uart, g_newline_msg, sizeof(g_newline_msg) );
 			flag = 1;
			ind = 0;
		}
	}
}

/******************************************************************************
 * main function.
 *****************************************************************************/ 
int main( void )
{
	uint8_t c_char;
    size_t temp;
	size_t rx_size;
   	static uint32_t file_size = 0;
    static uint32_t readback_size = (126 * 1024) /*FLASH_BYTE_SIZE*/;

	// Initialize RISC-V platform level interrupt controller
	PLIC_init();

	// Initialize CoreUARTapb with its base address, baud value, and line
    // configuration.
	UART_init( &g_uart, COREUARTAPB0_BASE_ADDR, BAUD_VALUE_115200, (DATA_8_BITS | NO_PARITY) );

	// Initialize the CoreGPIO driver with the base address of the CoreGPIO
	// instance to use and the initial state of the outputs.

	UART_polled_tx_string( &g_uart, g_greeting_msg);

    /**************************************************************************
     * Set up the system tick timer
     *************************************************************************/
    SysTick_Config(SYS_CLK_FREQ / 100);

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

    PLIC_SetPriority(External_1_IRQn, 1);

    /*Enable Uart Interrupt*/
    PLIC_EnableIRQ(External_1_IRQn);

    HAL_enable_interrupts();

    // Flash Driver Initialization
    FLASH_init();

    // check for command byte from PC
    // e.g. : 'i'	-> return SPI Flash Manufacturer & Device ID
    // e.g. : 'e'	-> erase complete SPI Flash
    // e.g. : 'r'	-> program SPI Flash
    // e.g. : 'w'	-> read SPI Flash
    //
    // 1Gbit SPI Flash = 128MByte
    flag = 0;
    c_char = 0;
    UART_polled_tx_string( &g_uart, g_instructions_msg);

    while (1)
    {
    	c_char = rx_rec[0];
        if (flag == 1)
        {
          switch (c_char)
          {
          	  case '0':
          		  GPIO_set_outputs( &g_gpio0, CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);
        		  UART_polled_tx_string( &g_uart, g_instructions_msg);
              	  rx_rec[0] = 0;
         		  c_char = 0;
          		  flag = 0;
          		  break;
         	  case 'i' :
          		  GPIO_set_outputs( &g_gpio0, CMD_E_LED );
          		  read_device_id();
              	  rx_rec[0] = 0;
         		  c_char = 0;
          		  flag = 0;
          		  break;
         	  case 'e' :
         		  GPIO_set_outputs( &g_gpio0, CMD_E_LED );
         		  erase_flash_chunks();
         	      rx_rec[0] = 0;
         		  c_char = 0;
          		  flag = 0;
         		  break;
          	  case 'c' :
          		  GPIO_set_outputs( &g_gpio0, CMD_R_LED );
          	      PLIC_DisableIRQ(External_1_IRQn);
              	  file_size = rx_app_file((uint8_t *)DDR3_base_address);
         	      PLIC_EnableIRQ(External_1_IRQn);
              	  rx_rec[0] = 0;
         		  c_char = 0;
          		  flag = 0;
          		  break;
          	  case 'w' :
          		  GPIO_set_outputs( &g_gpio0, CMD_W_LED );
          		  flash_write(file_size);
              	  rx_rec[0] = 0;
          		  c_char = 0;
          		  flag = 0;
          		  break;
          	  case 'a' :
          		  application_write();
              	  rx_rec[0] = 0;
          		  c_char = 0;
          		  flag = 0;
          		  break;
          	  case 'j' :
          		  Bootloader_JumpToApplication((uint32_t)0x80000000, (uint32_t)0x80000004);
          		  break;
          	  default:
          		  GPIO_set_outputs( &g_gpio0, CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);
         	      UART_polled_tx_string( &g_uart, g_instructions_msg);
             	  rx_rec[0] = 0;
          		  c_char = 0;
          		  flag = 0;
          		  break;
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

	uint8_t rx_data[MAX_RX_DATA_SIZE];
	size_t rx_size;
    UART_polled_tx_string( &g_uart, g_erase_msg);

	flag = 0;
	// receive number of chunks to erase
    UART_polled_tx_string( &g_uart, g_erase_chunks_msg);
    while( flag == 0)
    {
    	byte3 = 0;
    	byte2 = 0;
    	byte1 = 0;
    	byte0 = 0;
    }
    byte3 = rx_rec[0] - 0x30;
    byte2 = rx_rec[1] - 0x30;
    byte1 = rx_rec[2] - 0x30;
    byte0 = rx_rec[3] - 0x30;

    // combine to 32 Bit value
    if (rx_rec[3] == '\r')
    {
    	erase_chunks = byte3*100 + byte2*10 + byte1;
    }
    else if (rx_rec[2]== '\r')
    {
    	erase_chunks = byte3*10 + byte2;
    }
    else if (rx_rec[1] == '\r')
    {
    	erase_chunks = byte3;
    }
    else
    {
    erase_chunks = byte3*1000 + byte2*100 + byte1*10 + byte0;
    }

	// receive start address
	flag = 0;
    UART_polled_tx_string( &g_uart, g_erase_address_msg);
    while( flag == 0)
    {
    	byte3 = 0;
    	byte2 = 0;
    	byte1 = 0;
    	byte0 = 0;
    }
    byte3 = rx_rec[0] - 0x30;
    byte2 = rx_rec[1] - 0x30;
    byte1 = rx_rec[2] - 0x30;
    byte0 = rx_rec[3] - 0x30;

    	// combine to 32 Bit value
    spi_flash_address = byte3*1000 + byte2*100 + byte1*10 + byte0;

	// global chip erase seems not to work properly
	// use 4k erase instead
	UART_polled_tx_string( &g_uart, g_led_flash_msg);

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
	UART_polled_tx_string( &g_uart, g_device_id_msg);

    // read SPI Flash Manufacturer ID, Device ID, Device Capacity
    FLASH_read_device_id(&manufacturer_id, &device_id, &device_capacity);

	UART_polled_tx_string( &g_uart, g_manuf_id_msg);
	send_hex_byte(manufacturer_id);
	UART_polled_tx_string( &g_uart, g_dev_id_msg);
	send_hex_byte(device_id);
	UART_polled_tx_string( &g_uart, g_cap_id_msg);
	send_hex_byte(device_capacity);
	UART_polled_tx_string( &g_uart, g_newline_msg);

    // set all LEDs (high active) -> Success
	GPIO_set_outputs( &g_gpio0, CMD_I_LED|CMD_E_LED|CMD_R_LED|CMD_W_LED);
}


void flash_write(uint32_t file_size)
{
	uint8_t byte0;
	uint8_t byte1;
	uint8_t byte2;
	uint8_t byte3;
	uint32_t chunks;
	uint32_t spi_flash_address;
	uint32_t i;

	uint8_t rx_data[MAX_RX_DATA_SIZE];
	size_t rx_size;
    UART_polled_tx_string( &g_uart, g_program_msg);

	flag = 0;
	// receive number of chunks to erase

	// receive start address
	flag = 0;
    UART_polled_tx_string( &g_uart, g_erase_address_msg);
    while( flag == 0)
    {
    	byte3 = 0;
    	byte2 = 0;
    	byte1 = 0;
    	byte0 = 0;
    }
    byte3 = rx_rec[0] - 0x30;
    byte2 = rx_rec[1] - 0x30;
    byte1 = rx_rec[2] - 0x30;
    byte0 = rx_rec[3] - 0x30;

    	// combine to 32 Bit value
    spi_flash_address = byte3*1000 + byte2*100 + byte1*10 + byte0;

	// global chip erase seems not to work properly
	// use 4k erase instead
	UART_polled_tx_string( &g_uart, g_led_on_msg);

	FLASH_global_unprotect();

	FLASH_program(spi_flash_address, (uint8_t *)DDR3_base_address, file_size);

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
	flag = 0;
    UART_polled_tx_string( &g_uart, g_program_chunks_msg);
    while( flag == 0)
    {
    	byte3 = 0;
    	byte2 = 0;
    	byte1 = 0;
    	byte0 = 0;
    }
    byte3 = rx_rec[0] - 0x30;
    byte2 = rx_rec[1] - 0x30;
    byte1 = rx_rec[2] - 0x30;
    byte0 = rx_rec[3] - 0x30;

    // combine to 32 Bit value
    if (rx_rec[3] == '\r')
    {
    	expected_chunks = byte3*100 + byte2*10 + byte1;
    }
    else if (rx_rec[2]== '\r')
    {
    	expected_chunks = byte3*10 + byte2;
    }
    else if (rx_rec[1] == '\r')
    {
    	expected_chunks = byte3;
    }
    else
    {
    	expected_chunks = byte3*1000 + byte2*100 + byte1*10 + byte0;
    }

//	expected_chunks = 2; // needs to be modified if the image is greater that 8K
	address = DDR3_base_address;
	//	spi_flash_address = 0;
    // receive start address
	flag = 0;
	UART_polled_tx_string( &g_uart, g_erase_address_msg);
	while( flag == 0)
	  {
	    byte3 = 0;
	    byte2 = 0;
	    byte1 = 0;
	    byte0 = 0;
	  }
	 byte3 = rx_rec[0] - 0x30;
	 byte2 = rx_rec[1] - 0x30;
	 byte1 = rx_rec[2] - 0x30;
	 byte0 = rx_rec[3] - 0x30;

	 // combine to 32 Bit value
	spi_flash_address = byte3*1000 + byte2*100 + byte1*10 + byte0;
    UART_polled_tx_string( &g_uart, g_load_msg);

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

void send_hex_byte(unsigned char d)
{
unsigned char t;
uint8_t rx_res[2];

t=d>>4;
t+='0';
if (t>=(10+'0'))
{
t+=('A'-10-'0');
}
rx_res[0] = t;
t=d&0x0F;
t+='0';
if (t>=(10+'0'))
{
t+=('A'-10-'0');
}
rx_res[1] = t;
UART_send (&g_uart, rx_res, 2 );

}

/*
 * Put image received via ymodem into memory
 */
static uint32_t rx_app_file(uint8_t *dest_address)
{
	uint32_t received;
    uint8_t *g_bin_base = (uint8_t *)dest_address;
    uint32_t g_rx_size = 1024 * 1024 * 8;

    UART_polled_tx_string( &g_uart, "\r\n-------------------------------------------------------------------------------\r\n" );
    UART_polled_tx_string( &g_uart, " Starting YModem file transfer \r\n" );
    UART_polled_tx_string( &g_uart, " Please select file and initiate transfer on host computer.\r\n" );

    received = ymodem_receive(g_bin_base, g_rx_size);

    return received;
}

/*------------------------------------------------------------------------------
 * Count the number of elapsed milliseconds (SysTick_Handler is called every
 * 10mS so the resolution will be 10ms). Rolls over every 49 days or so...
 *
 * Should be safe to read g_10ms_count from elsewhere.
 */
void SysTick_Handler( void )
{
    uint32_t gpio_pattern;
    static uint8_t count;
    /*
     * Toggle GPIO output pattern by doing an exclusive OR of all
     * pattern bits with ones.
     */
    if(count++>=50)
    {
        gpio_pattern = GPIO_get_outputs( &g_gpio0 );
        gpio_pattern ^= 0x00000001;
        GPIO_set_outputs( &g_gpio0, gpio_pattern );
        count=0;
    }

    g_10ms_count += 10;

     /*
      * For neatness, if we roll over, reset cleanly back to 0 so the count
      * always goes up in proper 10s.
      */
    if(g_10ms_count < 10)
        g_10ms_count = 0;
}
