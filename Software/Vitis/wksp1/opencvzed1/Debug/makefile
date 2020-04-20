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
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
opencvzed1.elf.size \


# All Target
all: opencvzed1.elf secondary-outputs

# Tool invocations
opencvzed1.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v7 Linux g++ linker'
	arm-linux-gnueabihf-g++ -L"/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/usr/lib" -L/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/lib -L/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/usr/lib -o "opencvzed1.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

opencvzed1.elf.size: opencvzed1.elf
	@echo 'Invoking: ARM v7 Linux Print Size'
	arm-linux-gnueabihf-size opencvzed1.elf  |tee "opencvzed1.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS)$(ELFSIZE) opencvzed1.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents

-include ../makefile.targets
