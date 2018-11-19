################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c 

OBJS += \
./main.o 

C_DEPS += \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python\hal" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python\riscv_hal" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python\drivers\xmodem" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python\drivers\CoreGPIO" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python\drivers\CoreUARTapb" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python\drivers\CoreSPI" -I"C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python\drivers\mt25ql01gbbb" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


