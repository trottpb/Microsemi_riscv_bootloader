################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include riscv_hal/subdir.mk
-include hal/subdir.mk
-include drivers/xmodem/subdir.mk
-include drivers/mt25ql01gbbb/subdir.mk
-include drivers/CoreUARTapb/subdir.mk
-include drivers/CoreSPI/subdir.mk
-include drivers/CoreGPIO/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
bootloader_python.hex \

SECONDARY_SIZE += \
bootloader_python.siz \


# All Target
all: bootloader_python.elf secondary-outputs

# Tool invocations
bootloader_python.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU RISC-V Cross C Linker'
	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -msmall-data-limit=8 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -T "C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_everest2_ddr\SoftConsole53\bootloader_python\riscv_hal\microsemi-riscv-ram7000.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"bootloader_python.map" --specs=nano.specs -o "bootloader_python.elf" $(OBJS) $(USER_OBJS) $(LIBS) $(LIST)
	@echo 'Finished building target: $@'
	@echo ' '

bootloader_python.hex: bootloader_python.elf
	@echo 'Invoking: GNU RISC-V Cross Create Flash Image'
	riscv64-unknown-elf-objcopy -O ihex "bootloader_python.elf"  "bootloader_python.hex"
	@echo 'Finished building: $@'
	@echo ' '

bootloader_python.siz: bootloader_python.elf
	@echo 'Invoking: GNU RISC-V Cross Print Size'
	riscv64-unknown-elf-size --format=berkeley "bootloader_python.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) bootloader_python.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
