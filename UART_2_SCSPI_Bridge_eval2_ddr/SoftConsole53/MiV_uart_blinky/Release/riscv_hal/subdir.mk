################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../riscv_hal/init.c \
../riscv_hal/riscv_hal.c \
../riscv_hal/riscv_hal_stubs.c \
../riscv_hal/syscall.c 

S_UPPER_SRCS += \
../riscv_hal/entry.S 

OBJS += \
./riscv_hal/entry.o \
./riscv_hal/init.o \
./riscv_hal/riscv_hal.o \
./riscv_hal/riscv_hal_stubs.o \
./riscv_hal/syscall.o 

S_UPPER_DEPS += \
./riscv_hal/entry.d 

C_DEPS += \
./riscv_hal/init.d \
./riscv_hal/riscv_hal.d \
./riscv_hal/riscv_hal_stubs.d \
./riscv_hal/syscall.d 


# Each subdirectory must supply rules for building sources it contributes
riscv_hal/%.o: ../riscv_hal/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross Assembler'
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

riscv_hal/%.o: ../riscv_hal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\drivers\CoreGPIO" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\drivers\CoreSPI" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\drivers\CoreUARTapb" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\hal" -I"C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\SoftConsole53\MiV_uart_blinky\riscv_hal" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


