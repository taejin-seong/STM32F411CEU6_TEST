/*
 * sd.h
 *
 *  Created on: 2021. 4. 2.
 *      Author: sungt
 */

#ifndef SRC_HW_COMMON_HW_INCLUDE_SD_H_
#define SRC_HW_COMMON_HW_INCLUDE_SD_H_

#include "hw_def.h"

#ifdef _USE_HW_SD


typedef struct
{
  uint32_t card_type;                    /*!< Specifies the card Type                         */
  uint32_t card_version;                 /*!< Specifies the card version                      */
  uint32_t card_class;                   /*!< Specifies the class of the card class           */
  uint32_t rel_card_Add;                 /*!< Specifies the Relative Card Address             */
  uint32_t block_numbers;                /*!< Specifies the Card Capacity in blocks           */
  uint32_t block_size;                   /*!< Specifies one block size in bytes               */
  uint32_t log_block_numbers;            /*!< Specifies the Card logical Capacity in blocks   */
  uint32_t log_block_size;               /*!< Specifies logical block size in bytes           */
  uint32_t card_size;
} sd_info_t;



bool sdInit(void);
bool sdDeInit(void);
bool sdIsInit(void);
bool sdIsDetected(void);
bool sdGetInfo(sd_info_t *p_info);
bool sdIsBusy(void);
bool sdIsReady(uint32_t timeout);

bool sdReadBlocks(uint32_t block_addr, uint8_t *p_data, uint32_t num_of_blocks, uint32_t timeout_ms);
bool sdWriteBlocks(uint32_t block_addr, uint8_t *p_data, uint32_t num_of_blocks, uint32_t timeout_ms);
bool sdEraseBlocks(uint32_t start_addr, uint32_t end_addr);


#endif /* _USE_HW_SD */

#endif /* SRC_HW_COMMON_HW_INCLUDE_SD_H_ */
