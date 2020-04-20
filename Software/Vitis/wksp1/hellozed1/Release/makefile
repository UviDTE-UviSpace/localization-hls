################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
hellozed1.elf.size \


# All Target
all: hellozed1.elf secondary-outputs

# Tool invocations
hellozed1.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v7 Linux gcc linker'
	arm-linux-gnueabihf-gcc -L"/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/usr/lib" -L"/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/lib" -L/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/lib -L/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/usr/lib -o "hellozed1.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

hellozed1.elf.size: hellozed1.elf
	@echo 'Invoking: ARM v7 Linux Print Size'
	arm-linux-gnueabihf-size hellozed1.elf  |tee "hellozed1.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) hellozed1.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents

-include ../makefile.targets
