################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreUARTapb/core_uart_apb.c 

OBJS += \
./drivers/CoreUARTapb/core_uart_apb.o 

C_DEPS += \
./drivers/CoreUARTapb/core_uart_apb.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreUARTapb/%.o: ../drivers/CoreUARTapb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\drivers\CoreGPIO" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\drivers\CoreSPI" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\drivers\CoreUARTapb" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\hal" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\riscv_hal" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


