PolarFire Debug-SPI-Flash-Tool Instructions
2018-08-08 MSCC, CRU

Description

!!! This tool should only be used for debugging purposes, the official tool for SPI Flash programming is the Libero Software !!!

The proprietary Debug-SPI-Flash-Tool tool can be used to execute device-id/erase/read/write operations on configuration SPI flash devices currently not supported by the Libero Software. 
A UART-to-SPI flash client running an a Mi-V Soft CPU is required to be flashed on the FPGA Board. 
The Host (PC) side uses Phython scripts to exchange commands and binary data with the UART-to-SPI flash client in the FPGA.

For adapting the UART-to-SPI driver Mi-V code to support a different (non Micron) SPI flash device, at least the SPI command opcodes would have to be adapted (in case they differ).

See "\drivers\mt25gl01gbbb\" directory, files "mt25ql01gbbb.h", "mt25ql01gbbb.c":

SPI Command opcodes -> refer to beginning of mt25ql01gbbb.c

Particular SPI device could require adaptations in the following functions as well:

void FLASH_read_device_id(...)
void FLASH_read(...)
void FLASH_global_unprotect( void )
void FLASH_erase_4k_block(...)
void FLASH_program(...)

Please report any Debug-SPI-Flash-Tool issues to: christian.rudel@microchip.com

-----------------------------------------------------------------------------------------------------------
Test Environment
-----------------------------------------------------------------------------------------------------------

- HP Laptop with Windows 10 Enterprise OS
- Microsemi Evaluation Board, Rev-C
- Libero SoC PolarFire 2.2
- SoftConsole 5.2 (for debug purposes)

-----------------------------------------------------------------------------------------------------------
Installation
-----------------------------------------------------------------------------------------------------------

Un-zip "Evalkit_DebugCfgSPI_FlashTool_Release1.zip":

resulting directory structure:

UART_2_SPI_Bridge\
<Libero 2.2> directory & project file
\programmingfile\TOP.stp -> for FPGA board programming
\tools\flashtool	-> Host Side (PC) Phyton scripts & Examples

FPGA Board: 
- Flash FPGA with bitstream contained in Libero Project

PC:
- Install Python 3.7.0 (already contains Package Installer pip):

https://www.python.org/downloads/release/python-370/

- Install additional xmodem & pyserial packages,
  as described in \tools\flashtool\Addon_Python_Packages\readme.txt

-----------------------------------------------------------------------------------------------------------
Usage Instructions
-----------------------------------------------------------------------------------------------------------

Attention: 
Adjust the serial com port used for Mi-V communication in the example batchfiles (com5) to match your PC.

The Debug-SPI-Flash-Tool supports the following four operations:

- Read SPI Device ID Registers
- Erase/Read/Program, in multiples of 4096Byte chunks

LED States:
- One LED will alternate during the selected operation
- All four LEDs will alternate on Error conditions
- All four LEDs will be constant-on after successful operation

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
1.) Read SPI Device Identification Registers

Example: "SPI_READ_DEVICE_ID.bat"

Expected output (Micron Flash MT25QL01GBBB):

Manufacturer-ID: 0x20
Device-ID: 0xba
Device-Capacity: 0x21

refer to Micron Device Datasheet for details (Table 19: Device ID Data)
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
2.) Read SPI Flash

Example: "SPI_READ_1MByte_0x400.bat"
python ./scripts/flash_read_chunks.py com5 0x00000400 256 outfile.bin

Syntax: flash_read_chunks.py <com-port> <start-address> <chunks> <output-file>

- reads 256 * 4kByte = 1MByte from SPI Flash, starting from address 0x400

Note: The <output-file> will be stored in "file_output" directory
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
3.) Erase SPI Flash (required before Program operation)

Example: "SPI_ERASE_1MByte_0x0.bat",
python ./scripts/flash_erase_chunks.py com5 0x00000000 256

- erases 256 * 4KByte = 1MByte, starting from address 0

Syntax: flash_erase_chunks.py <com-port> <start-address> <chunks>

- wait for the LED indicator on the FPGA board to stop alternating and all four LEDs to be ON (success)

Note: start-address for erase needs to be on 4KByte Boundary (will be masked with 0xFFFF0000)
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
4.) Program SPI Flash

Example: "SPI_PROGRAM_1MByte_0x400.bat"
python ./scripts/flash_write_chunks.py com5 0x00000400 ./init_data/test1MByte.bin

Syntax: flash_write_chunks.py <com-port> <start-address> <output-file>

- programs 1MByte testfile into SPI Flash, starting from address 0x400
- make sure to erase >1MByte portion of the flash before programming, 
  otherwise data will not be programmed correctly

-----------------------------------------------------------------------------------------------------------
Expected Performance
-----------------------------------------------------------------------------------------------------------

SIZE		ERASE	PROGRAM	READ
128kByte	<1s		17s		19s
1MByte		2s		2m16s	1m30S
8MByte		1m		18m3s	18m37s

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------
