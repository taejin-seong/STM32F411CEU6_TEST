################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lib/FatFs/src/diskio.c \
../src/lib/FatFs/src/ff.c \
../src/lib/FatFs/src/ff_gen_drv.c 

OBJS += \
./src/lib/FatFs/src/diskio.o \
./src/lib/FatFs/src/ff.o \
./src/lib/FatFs/src/ff_gen_drv.o 

C_DEPS += \
./src/lib/FatFs/src/diskio.d \
./src/lib/FatFs/src/ff.d \
./src/lib/FatFs/src/ff_gen_drv.d 


# Each subdirectory must supply rules for building sources it contributes
src/lib/FatFs/src/diskio.o: ../src/lib/FatFs/src/diskio.c src/lib/FatFs/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/FatFs/src/diskio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/lib/FatFs/src/ff.o: ../src/lib/FatFs/src/ff.c src/lib/FatFs/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/FatFs/src/ff.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/lib/FatFs/src/ff_gen_drv.o: ../src/lib/FatFs/src/ff_gen_drv.c src/lib/FatFs/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/lib/FatFs/src/ff_gen_drv.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

