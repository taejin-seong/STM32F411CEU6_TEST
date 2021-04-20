/*
 * button.c
 *
 *  Created on: 2021. 3. 26.
 *      Author: sungt
 */


#include "button.h"
#include "cli.h"


typedef struct
{
	GPIO_TypeDef	*port;
	uint32_t		 pin;
	GPIO_PinState	 on_state;

}button_tbi_t;


button_tbi_t button_tbi[BUTTON_MAX_CH] =
		{
			{GPIOA, GPIO_PIN_0, GPIO_PIN_RESET},
		};


#ifdef _USE_HW_CLI
static void cliButton(cli_args_t *arg);
#endif /* _USE_HW_CLI */





bool buttonInit(void)
{

	bool ret = true;

	GPIO_InitTypeDef GPIO_InitStruct = {0};

	/* GPIO Ports Clock Enable */
	__HAL_RCC_GPIOA_CLK_ENABLE();


	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_PULLUP;

	for (int i=0; i<BUTTON_MAX_CH; i++)
	{
		GPIO_InitStruct.Pin = button_tbi[i].pin;
		HAL_GPIO_Init(button_tbi[i].port, &GPIO_InitStruct);
	}

#ifdef _USE_HW_CLI
	cliAdd("button", cliButton);
#endif /* _USE_HW_CLI */
	return ret;

}


bool buttonGetPressed(uint8_t ch)
{
	bool ret = false;


	if(ch >= BUTTON_MAX_CH)
	{
		return false;
	}


	if(HAL_GPIO_ReadPin(button_tbi[ch].port, button_tbi[ch].pin) == button_tbi[ch].on_state)
	{
		ret = true;
	}


	return ret;
}




#ifdef _USE_HW_CLI

void cliButton(cli_args_t *args)
{
	bool ret = false;

	if(args->argc == 1 && args -> isStr(0, "show") == true)
	{
		while(cliKeepLoop())
		{
			for (int i = 0; i < BUTTON_MAX_CH; i++)
			{
				cliPrintf("%d", buttonGetPressed(i));
			}
			cliPrintf("\n");
			delay(100);
		}

		ret =true;
	}

	if(ret != true)
	{
		cliPrintf("button show\n");
	}
}


#endif /* _USE_HW_CLI */

