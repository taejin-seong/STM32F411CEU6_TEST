/*
 * def.h
 *
 *  Created on: Dec 6, 2020
 *      Author: baram
 */

#ifndef SRC_COMMON_DEF_H_
#define SRC_COMMON_DEF_H_


#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdarg.h>
#include <string.h>
#include <stdlib.h>


#define _DEF_LED1           	0
#define _DEF_LED2           	1
#define _DEF_LED3           	2
#define _DEF_LED4           	3

#define _DEF_UART1          	0
#define _DEF_UART2          	1
#define _DEF_UART3          	2
#define _DEF_UART4          	3

#define _DEF_BUTTON1			0
#define _DEF_BUTTON2			1
#define _DEF_BUTTON3			2
#define _DEF_BUTTON4			3

#define	_DEF_SPI1				0
#define	_DEF_SPI2				1
#define	_DEF_SPI3				2
#define	_DEF_SPI4				3

#define _DEF_INPUT				0
#define _DEF_INPUT_PULLUP		1
#define _DEF_INPUT_PULLDOWN		2
#define _DEF_OUTPUT				3
#define _DEF_OUTPUT_PULLUP		4
#define _DEF_OUTPUT_PULLDWON	5

#define _DEF_LOW				0
#define _DEF_HIGH				1





#define constrain(amt,low,high) ((amt)<(low)?(low):((amt)>(high)?(high):(amt)))

#ifndef max
#define max(a,b) (((a) > (b)) ? (a) : (b))
#define min(a,b) (((a) < (b)) ? (a) : (b))
#endif


#ifndef map
#define map(value, in_min, in_max, out_min, out_max) ((value - in_min) * (out_max - out_min) / (in_max - in_min) + out_min)
#endif



#endif /* SRC_COMMON_DEF_H_ */
