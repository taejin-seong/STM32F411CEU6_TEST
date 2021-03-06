/*
 * hw.c
 *
 *  Created on: Dec 6, 2020
 *      Author: baram
 */


#include "hw.h"





void hwInit(void)
{
  bspInit();

  cliInit(); /* 다른 모듈 보다 가장 위에서 초기화 해줘야함 */
  ledInit();
  usbInit();
  uartInit();
  MX_USART1_UART_Init();
  buttonInit();
  gpioInit();
  flashInit();
  MX_SPI1_Init();
  spiInit();
  NRF24L01_Init();

  if (sdInit() == true)
  {
	 fatfsInit();
  }

  if (buttonGetPressed(_DEF_BUTTON1) == true && sdIsDetected() == true)
  {
	  usbBegin(USB_MSC_MODE);
  }
  else
  {
	  usbBegin(USB_CDC_MODE);
  }

  lcdInit();
}
