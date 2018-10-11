//--------------------------------------------------------------------
// Created by Microsemi SmartDesign Fri Aug 03 09:20:08 2018
// Parameters for COREABC
//--------------------------------------------------------------------


parameter ABCCODE = "// UART to SPI Bridge
// 2018-08-02 MSCC, CRU


DEF APB_UART 0
DEF APB_SPI  1

// UART Registers

DEF UART_TXDATA 0x0
DEF UART_RXDATA 0x4
DEF UART_CTRL1  0x8
DEF UART_CTRL2  0xC
DEF UART_STATUS 0x10
DEF UART_CTRL3  0x14

// 80MHz / (16 * 115200) - 1 = #42
DEF BAUD_VALUE 0x2A


// CoreSPI Registers (HB0089 Rev 6.0)
DEF CONTROL     0x00
DEF INTCLEAR    0x04
DEF RXDATA      0x08
DEF TXDATA      0x0C
DEF INTMASK     0x10
DEF INTRAW      0x14
DEF CONTROL2    0x18
DEF COMMAND     0x1C
DEF STAT        0x20
DEF SSEL        0x24
DEF TXDATA_LAST 0x28
DEF CLK_DIN     0x2C

$main

// initialize UART
// 115200 Baud, 8-bit DATA, no Parity

 APBWRT DAT8 APB_UART UART_CTRL1 BAUD_VALUE
 APBWRT DAT8 APB_UART UART_CTRL2 0x01

 APBWRT DAT8 APB_UART UART_TXDATA 'T'
 APBWRT DAT8 APB_UART UART_TXDATA 'E'
 APBWRT DAT8 APB_UART UART_TXDATA 'S'
 APBWRT DAT8 APB_UART UART_TXDATA 'T'


 HALT";
parameter ACT_CALIBRATIONDATA = 1;
parameter APB_AWIDTH = 8;
parameter APB_DWIDTH = 32;
parameter APB_SDEPTH = 2;
parameter CODEHEXDUMP = "";
parameter CODEHEXDUMP2 = "";
parameter DEBUG = 1;
parameter EN_ACM = 0;
parameter EN_ADD = 1;
parameter EN_ALURAM = 0;
parameter EN_AND = 1;
parameter EN_CALL = 1;
parameter EN_DATAM = 2;
parameter EN_INC = 1;
parameter EN_INDIRECT = 0;
parameter EN_INT = 0;
parameter EN_IOREAD = 1;
parameter EN_IOWRT = 1;
parameter EN_MULT = 0;
parameter EN_OR = 1;
parameter EN_PUSH = 1;
parameter EN_RAM = 1;
parameter EN_SHL = 1;
parameter EN_SHR = 1;
parameter EN_XOR = 1;
parameter FAMILY = 26;
parameter HDL_license = "U";
parameter ICWIDTH = 5;
parameter IFWIDTH = 0;
parameter IIWIDTH = 1;
parameter IMEM_APB_ACCESS = 0;
parameter INITWIDTH = 11;
parameter INSMODE = 0;
parameter IOWIDTH = 1;
parameter ISRADDR = 1;
parameter MAX_NVMDWIDTH = 32;
parameter STWIDTH = 4;
parameter TESTBENCH = "User";
parameter TESTMODE = 0;
parameter UNIQ_STRING = "Controller_Controller_0";
parameter UNIQ_STRING_LENGTH = 23;
parameter VERILOGCODE = "";
parameter VERILOGVARS = "";
parameter VHDLCODE = "";
parameter VHDLVARS = "";
parameter ZRWIDTH = 0;
