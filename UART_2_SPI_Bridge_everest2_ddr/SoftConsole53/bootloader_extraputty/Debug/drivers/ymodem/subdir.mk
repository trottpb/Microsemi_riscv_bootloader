################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/ymodem/ymodem.c 

OBJS += \
./drivers/ymodem/ymodem.o 

C_DEPS += \
./drivers/ymodem/ymodem.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/ymodem/%.o: ../drivers/ymodem/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_extraputty" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_extraputty\hal" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_extraputty\riscv_hal" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_extraputty\drivers\ymodem" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_extraputty\drivers\CoreGPIO" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_extraputty\drivers\CoreUARTapb" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_extraputty\drivers\CoreSPI" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_extraputty\drivers\mt25ql01gbbb" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


