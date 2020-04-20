################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/main.cpp 

OBJS += \
./src/main.o 

CPP_DEPS += \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux g++ compiler'
	arm-linux-gnueabihf-g++ -Wall -O2 -I"/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/usr/include" -c -fmessage-length=0 -MT"$@" --sysroot=/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi -I/home/gilles/PetaTesting/wksp1/zed1/export/zed1/sw/zed1/linux_domain/sysroot/cortexa9t2hf-neon-xilinx-linux-gnueabi/usr/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


