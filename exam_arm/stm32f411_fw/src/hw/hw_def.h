/*
 * hw_def.h
 *
 *  Created on: Dec 6, 2020
 *      Author: baram
 */

#ifndef SRC_HW_HW_DEF_H_
#define SRC_HW_HW_DEF_H_


#include "def.h"
#include "bsp.h"



#define _USE_HW_SD
#define _USE_HW_FATFS
#define _USE_HW_FLASH

#define _USE_HW_LED
#define      HW_LED_MAX_CH          1

#define _USE_HW_UART
#define		 HW_UART_MAX_CH		    1

#define _USE_HW_CLI
#define 	 HW_CLI_CMD_LIST_MAX	16 /* 16개의 커맨드 사용 			 */
#define 	 HW_CLI_CMD_NAME_MAX	16 /* 16byte의 커맨드 이름의 길이 사용  */
#define 	 HW_CLI_LINE_HIS_MAX	4  /* 4개의 명령어 히스토리 사용		 */
#define 	 HW_CLI_LINE_BUF_MAX	64 /* 32개의 라인 버퍼 사용		 */

#define _USE_HW_BUTTON
#define		 HW_BUTTON_MAX_CH		1

#define	_USE_HW_GPIO
#define 	 HW_GPIO_MAX_CH			4

#define _USE_HW_CDC
#define _USE_HW_USB
#define      HW_USE_CDC             1
#define      HW_USE_MSC             1

#define _USE_HW_SPI
#define      HW_SPI_MAX_CH			1

#define _USE_HW_LCD
#define _USE_HW_ST7735
#define      HW_LCD_WIDTH           160
#define      HW_LCD_HEIGHT          80

#define _USE_HW_NRF24L01

#define _PIN_GPIO_SDCARD_DETECT		0




#endif /* SRC_HW_HW_DEF_H_ */
