/*
 * button.h
 *
 *  Created on: 2021. 3. 26.
 *      Author: sungt
 */

#ifndef SRC_COMMON_HW_INCLUDE_BUTTON_H_
#define SRC_COMMON_HW_INCLUDE_BUTTON_H_


#include "hw_def.h"


#ifdef _USE_HW_BUTTON


#define BUTTON_MAX_CH			HW_BUTTON_MAX_CH



bool buttonInit(void);
bool buttonGetPressed(uint8_t ch);







#endif /* _USE_HW_BUTTON */

#endif /* SRC_COMMON_HW_INCLUDE_BUTTON_H_ */
