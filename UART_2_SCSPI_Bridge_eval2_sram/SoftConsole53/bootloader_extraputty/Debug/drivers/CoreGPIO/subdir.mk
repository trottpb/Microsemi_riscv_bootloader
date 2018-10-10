################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreGPIO/core_gpio.c 

OBJS += \
./drivers/CoreGPIO/core_gpio.o 

C_DEPS += \
./drivers/CoreGPIO/core_gpio.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreGPIO/%.o: ../drivers/CoreGPIO/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\SoftConsole53\bootloader_extraputty" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\SoftConsole53\bootloader_extraputty\hal" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\SoftConsole53\bootloader_extraputty\riscv_hal" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\SoftConsole53\bootloader_extraputty\drivers\ymodem" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\SoftConsole53\bootloader_extraputty\drivers\CoreGPIO" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\SoftConsole53\bootloader_extraputty\drivers\CoreUARTapb" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\SoftConsole53\bootloader_extraputty\drivers\CoreSPI" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\SoftConsole53\bootloader_extraputty\drivers\mt25ql01gbbb" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


