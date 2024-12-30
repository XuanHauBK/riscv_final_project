################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/sequence/define.c \
../src/sequence/register.c \
../src/sequence/seq_apb.c 

OBJS += \
./src/sequence/define.o \
./src/sequence/register.o \
./src/sequence/seq_apb.o 

C_DEPS += \
./src/sequence/define.d \
./src/sequence/register.d \
./src/sequence/seq_apb.d 


# Each subdirectory must supply rules for building sources it contributes
src/sequence/%.o: ../src/sequence/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../riscv_app_bsp/microblaze_0/include -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


