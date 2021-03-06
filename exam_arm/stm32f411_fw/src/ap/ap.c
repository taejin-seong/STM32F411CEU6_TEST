/*
 * ap.c
 *
 *  Created on: Dec 6, 2020
 *      Author: baram
 */


#include "ap.h"




void apInit(void)
{
//  cliOpen(_DEF_UART1, 115200);

	   // nRF24L01 수신 코드

	   while(NRF24L01_Check())
	  	{
	  		printf("NRF24L01 wireless module cannot be found by hardware\n");
	   		HAL_Delay(100);
	  	}

	  	printf("NRF24L01 wireless module hardware connection is normal\n");

	  	NRF24L01_RX_Mode();
	    printf("Enter data receiving mode\n")
;


}




void apMain(void)
{


	// nRF24L01 수신 코드 (받을 데이터 버퍼)
	uint8_t tmp_buf[256]; // 임시로 지정


  while(1)
  {
		//nRF24L01 수신 코드



		if(NRF24L01_RxPacket(tmp_buf)==0)
		{
		 // tmp_buf[32]=0;//Add string terminator
		  printf("NRF24L01 wireless module data received successfully: %s\n",tmp_buf);

		}
		else
		{
			printf("NRF24L01 wireless module data reception failed \n");
			HAL_Delay(100);
		}

		HAL_Delay(10);
//HAL_UART_Transmit(&huart1, tx_buf, sizeof(tx_buf), 10);

  }
}
