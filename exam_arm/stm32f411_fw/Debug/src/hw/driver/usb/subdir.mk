################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hw/driver/usb/usbd_conf.c 

OBJS += \
./src/hw/driver/usb/usbd_conf.o 

C_DEPS += \
./src/hw/driver/usb/usbd_conf.d 


# Each subdirectory must supply rules for building sources it contributes
src/hw/driver/usb/usbd_conf.o: ../src/hw/driver/usb/usbd_conf.c src/hw/driver/usb/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/usb/usbd_conf.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

