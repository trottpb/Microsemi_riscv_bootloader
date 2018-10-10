################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hal/hal_irq.c 

S_UPPER_SRCS += \
../hal/hw_reg_access.S 

OBJS += \
./hal/hal_irq.o \
./hal/hw_reg_access.o 

S_UPPER_DEPS += \
./hal/hw_reg_access.d 

C_DEPS += \
./hal/hal_irq.d 


# Each subdirectory must supply rules for building sources it contributes
hal/%.o: ../hal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\SoftConsole53\bootloader_extraputty" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\SoftConsole53\bootloader_extraputty\hal" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\SoftConsole53\bootloader_extraputty\riscv_hal" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\SoftConsole53\bootloader_extraputty\drivers\ymodem" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\SoftConsole53\bootloader_extraputty\drivers\CoreGPIO" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\SoftConsole53\bootloader_extraputty\drivers\CoreUARTapb" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\SoftConsole53\bootloader_extraputty\drivers\CoreSPI" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\SoftConsole53\bootloader_extraputty\drivers\mt25ql01gbbb" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

hal/%.o: ../hal/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross Assembler'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


