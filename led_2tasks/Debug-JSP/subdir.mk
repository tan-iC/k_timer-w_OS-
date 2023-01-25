################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../device.c \
../led_2tasks.c 

OBJS += \
./device.o \
./led_2tasks.o 

C_DEPS += \
./device.d \
./led_2tasks.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c ../kernel_id.h
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	arm-elf-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


