/*
 * seq_apb.h
 *
 *  Created on: Apr 23, 2024
 *      Author: hautx0
 */

#ifndef SRC_HEADER_SEQ_APB_H_
#define SRC_HEADER_SEQ_APB_H_

/***************************** Include Files *********************************/

#include "register.h"

/************************** Constant Definitions *****************************/

/**************************** Type Definitions *******************************/

/************************** Variable Definitions *****************************/

/************************** Function Prototypes ******************************/
void setFrameConfig();
void writeData();
void readData();
void writeReadData();

#endif/* SRC_HEADER_SEQ_APB_H_ */