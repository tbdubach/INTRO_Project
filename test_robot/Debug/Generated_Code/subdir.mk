################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Generated_Code/Bit1.c \
../Generated_Code/Bit2.c \
../Generated_Code/BitIoLdd1.c \
../Generated_Code/BitIoLdd2.c \
../Generated_Code/Cpu.c \
../Generated_Code/KSDK1.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/Vectors.c \
../Generated_Code/WAIT1.c 

OBJS += \
./Generated_Code/Bit1.o \
./Generated_Code/Bit2.o \
./Generated_Code/BitIoLdd1.o \
./Generated_Code/BitIoLdd2.o \
./Generated_Code/Cpu.o \
./Generated_Code/KSDK1.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/Vectors.o \
./Generated_Code/WAIT1.o 

C_DEPS += \
./Generated_Code/Bit1.d \
./Generated_Code/Bit2.d \
./Generated_Code/BitIoLdd1.d \
./Generated_Code/BitIoLdd2.d \
./Generated_Code/Cpu.d \
./Generated_Code/KSDK1.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/Vectors.d \
./Generated_Code/WAIT1.d 


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/%.o: ../Generated_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:/Users/Tobias/Documents/_Sync/HSLU/INTRO/_Project/test_robot/Static_Code/PDD" -I"C:/Users/Tobias/Documents/_Sync/HSLU/INTRO/_Project/test_robot/Static_Code/IO_Map" -I"C:/Users/Tobias/Documents/_Sync/HSLU/INTRO/_Project/test_robot/Sources" -I"C:/Users/Tobias/Documents/_Sync/HSLU/INTRO/_Project/test_robot/Generated_Code" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


