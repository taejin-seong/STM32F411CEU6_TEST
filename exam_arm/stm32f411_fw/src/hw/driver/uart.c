/*
 * uart.c
 *
 *  Created on: 2020. 12. 8.
 *      Author: baram
 */


#include "uart.h"
#include "cdc.h"
#include "qbuffer.h"

#ifdef _USE_HW_UART

//#define _USE_UART1	   // USB
#define _USE_UART2  // 실제 물리적인 UART

static bool is_open[UART_MAX_CH];


#ifdef _USE_UART2  // 실제 물리적인 UART
static qbuffer_t qbuffer[UART_MAX_CH];
static uint8_t rx_buf[256];


UART_HandleTypeDef huart1;
DMA_HandleTypeDef  hdma_usart1_rx;
#endif


bool uartInit(void)
{
  for (int i=0; i<UART_MAX_CH; i++)
  {
    is_open[i] = false;
  }


  return true;
}

bool uartOpen(uint8_t ch, uint32_t baud)
{
  bool ret = false;


  switch(ch)
  {
    case _DEF_UART1:
      is_open[ch] = true;
      ret = true;
      break;

    case _DEF_UART2:
	  #ifdef _USE_UART2
      huart1.Instance         = USART1;
      huart1.Init.BaudRate    = baud;
      huart1.Init.WordLength  = UART_WORDLENGTH_8B;
      huart1.Init.StopBits    = UART_STOPBITS_1;
      huart1.Init.Parity      = UART_PARITY_NONE;
      huart1.Init.Mode        = UART_MODE_TX_RX;
      huart1.Init.HwFlowCtl   = UART_HWCONTROL_NONE;
      huart1.Init.OverSampling= UART_OVERSAMPLING_16;

      HAL_UART_DeInit(&huart1);

      qbufferCreate(&qbuffer[ch], &rx_buf[0], 256);

      __HAL_RCC_DMA1_CLK_ENABLE();
      HAL_NVIC_SetPriority(DMA2_Stream2_IRQn, 0, 0);
      HAL_NVIC_EnableIRQ(DMA2_Stream2_IRQn);


      if (HAL_UART_Init(&huart1) != HAL_OK)
      {
        ret = false;
      }
      else
      {
        ret = true;
        is_open[ch] = true;

        if(HAL_UART_Receive_DMA(&huart1, (uint8_t *)&rx_buf[0], 256) != HAL_OK)
        {
          ret = false;
        }

        qbuffer[ch].in  = qbuffer[ch].len - hdma_usart1_rx.Instance->NDTR;
        qbuffer[ch].out = qbuffer[ch].in;
      }
	  #endif
      break;
  }

  return ret;
}

uint32_t uartAvailable(uint8_t ch)
{
  uint32_t ret = 0;

  switch(ch)
  {
    case _DEF_UART1:
      ret = cdcAvailable();
      break;

    case _DEF_UART2:
	  #ifdef _USE_UART2
      qbuffer[ch].in = (qbuffer[ch].len - hdma_usart1_rx.Instance->NDTR);
      ret = qbufferAvailable(&qbuffer[ch]);
	  #endif
      break;
  }

  return ret;
}

uint8_t uartRead(uint8_t ch)
{
  uint8_t ret = 0;

  switch(ch)
  {
    case _DEF_UART1:
      ret = cdcRead();
      break;

    case _DEF_UART2:
	  #ifdef _USE_UART2
      qbufferRead(&qbuffer[_DEF_UART2], &ret, 1);
	  #endif
      break;
  }

  return ret;
}

uint32_t uartWrite(uint8_t ch, uint8_t *p_data, uint32_t length)
{
  uint32_t ret = 0;
  HAL_StatusTypeDef status;


  switch(ch)
  {
    case _DEF_UART1:
      ret = cdcWrite(p_data, length);
      break;

    case _DEF_UART2:
	  #ifdef _USE_UART2
      status = HAL_UART_Transmit(&huart1, p_data, length, 100);
      if (status == HAL_OK)
      {
        ret = length;
      }
	  #endif
      break;
  }

  return ret;
}

uint32_t uartPrintf(uint8_t ch, char *fmt, ...)
{
  char buf[256];
  va_list args;
  int len;
  uint32_t ret;

  va_start(args, fmt);
  len = vsnprintf(buf, 256, fmt, args);

  ret = uartWrite(ch, (uint8_t *)buf, len);

  va_end(args);


  return ret;
}

uint32_t uartGetBaud(uint8_t ch)
{
  uint32_t ret = 0;


  switch(ch)
  {
    case _DEF_UART1:
      ret = cdcGetBaud();
      break;

    case _DEF_UART2:
	  #ifdef _USE_UART2
      ret = huart1.Init.BaudRate;
	  #endif
      break;
  }

  return ret;
}


#ifdef _USE_UART2

void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart)
{
  if (huart->Instance == USART1)
  {
  }
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
#if 0
  if (huart->Instance == USART1)
  {
    qbufferWrite(&qbuffer[_DEF_UART2], &rx_data[_DEF_UART2], 1);

    HAL_UART_Receive_IT(&huart1, (uint8_t *)&rx_data[_DEF_UART2], 1);
  }
#endif
}






void HAL_UART_MspInit(UART_HandleTypeDef* uartHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(uartHandle->Instance==USART1)
  {
  /* USER CODE BEGIN USART1_MspInit 0 */

  /* USER CODE END USART1_MspInit 0 */
    /* USART1 clock enable */
    __HAL_RCC_USART1_CLK_ENABLE();

    __HAL_RCC_GPIOA_CLK_ENABLE();
    /**USART1 GPIO Configuration
    PA10     ------> USART1_RX
    PA15     ------> USART1_TX
    */
    GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_15;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF7_USART1;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* USER CODE BEGIN USART1_MspInit 1 */

  /* USER CODE END USART1_MspInit 1 */
  }
}

void HAL_UART_MspDeInit(UART_HandleTypeDef* uartHandle)
{

  if(uartHandle->Instance==USART1)
  {
  /* USER CODE BEGIN USART1_MspDeInit 0 */

  /* USER CODE END USART1_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_USART1_CLK_DISABLE();

    /**USART1 GPIO Configuration
    PA10     ------> USART1_RX
    PA15     ------> USART1_TX
    */
    HAL_GPIO_DeInit(GPIOA, GPIO_PIN_10|GPIO_PIN_15);

  /* USER CODE BEGIN USART1_MspDeInit 1 */

  /* USER CODE END USART1_MspDeInit 1 */
  }
}

void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}



#endif

#endif
