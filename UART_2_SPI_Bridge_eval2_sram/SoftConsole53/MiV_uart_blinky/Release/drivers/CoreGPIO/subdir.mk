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
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_sram\SoftConsole53\MiV_uart_blinky\drivers\CoreGPIO" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_sram\SoftConsole53\MiV_uart_blinky\drivers\CoreSPI" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_sram\SoftConsole53\MiV_uart_blinky\drivers\CoreUARTapb" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_sram\SoftConsole53\MiV_uart_blinky\hal" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_sram\SoftConsole53\MiV_uart_blinky\riscv_hal" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


