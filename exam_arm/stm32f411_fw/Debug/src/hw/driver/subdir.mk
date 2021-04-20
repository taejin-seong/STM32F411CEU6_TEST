################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hw/driver/button.c \
../src/hw/driver/cdc.c \
../src/hw/driver/cli.c \
../src/hw/driver/fatfs.c \
../src/hw/driver/flash.c \
../src/hw/driver/gpio.c \
../src/hw/driver/lcd.c \
../src/hw/driver/led.c \
../src/hw/driver/reset.c \
../src/hw/driver/rtc.c \
../src/hw/driver/sd.c \
../src/hw/driver/spi.c \
../src/hw/driver/uart.c \
../src/hw/driver/usb.c 

OBJS += \
./src/hw/driver/button.o \
./src/hw/driver/cdc.o \
./src/hw/driver/cli.o \
./src/hw/driver/fatfs.o \
./src/hw/driver/flash.o \
./src/hw/driver/gpio.o \
./src/hw/driver/lcd.o \
./src/hw/driver/led.o \
./src/hw/driver/reset.o \
./src/hw/driver/rtc.o \
./src/hw/driver/sd.o \
./src/hw/driver/spi.o \
./src/hw/driver/uart.o \
./src/hw/driver/usb.o 

C_DEPS += \
./src/hw/driver/button.d \
./src/hw/driver/cdc.d \
./src/hw/driver/cli.d \
./src/hw/driver/fatfs.d \
./src/hw/driver/flash.d \
./src/hw/driver/gpio.d \
./src/hw/driver/lcd.d \
./src/hw/driver/led.d \
./src/hw/driver/reset.d \
./src/hw/driver/rtc.d \
./src/hw/driver/sd.d \
./src/hw/driver/spi.d \
./src/hw/driver/uart.d \
./src/hw/driver/usb.d 


# Each subdirectory must supply rules for building sources it contributes
src/hw/driver/button.o: ../src/hw/driver/button.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/button.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/cdc.o: ../src/hw/driver/cdc.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/cdc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/cli.o: ../src/hw/driver/cli.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/cli.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/fatfs.o: ../src/hw/driver/fatfs.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/fatfs.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/flash.o: ../src/hw/driver/flash.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/gpio.o: ../src/hw/driver/gpio.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/gpio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/lcd.o: ../src/hw/driver/lcd.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/lcd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/led.o: ../src/hw/driver/led.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/led.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/reset.o: ../src/hw/driver/reset.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/reset.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/rtc.o: ../src/hw/driver/rtc.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/rtc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/sd.o: ../src/hw/driver/sd.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/sd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/spi.o: ../src/hw/driver/spi.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/spi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/uart.o: ../src/hw/driver/uart.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/uart.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/hw/driver/usb.o: ../src/hw/driver/usb.c src/hw/driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F411xE -c -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/ap" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/bsp" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/common/hw/include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/CMSIS/Include" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/cube_f411/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/lib/FatFs/src" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/fatfs" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/core" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_cdc" -I"C:/STM32 Coding files/exam_fw411/exam_arm/stm32f411_fw/src/hw/driver/usb/usb_msc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/hw/driver/usb.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

