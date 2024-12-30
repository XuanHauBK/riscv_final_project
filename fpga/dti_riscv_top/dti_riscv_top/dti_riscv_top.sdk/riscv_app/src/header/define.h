/*
 * define.h
 *
 *  Created on: Mar 08, 2018
 *      Author: hungd
 */

#ifndef SRC_HEADER_DEFINES_H_
#define SRC_HEADER_DEFINES_H_

/***************************** Include Files *********************************/

#include "microblaze_sleep.h"
#include "xparameters.h"
#include "xil_printf.h"
#ifdef XPAR_INTC_0_BASEADDR
#include "xintc.h"
#endif
#include "xbram.h"
#ifdef XPAR_UARTNS550_0_BASEADDR
#include "xuartns550_l.h"
#endif
#ifdef XPAR_UARTLITE_0_BASEADDR
#include "xuartlite_l.h"
#endif
#include <math.h>



#define MC_AXI4_BASEADDR            0x10000000//XPAR_DYNAMO_CORE_0_BASEADDR//0x1000000
// External BRAM
#define BRAM0_BASEADDR             XPAR_BRAM_0_BASEADDR// 0x1000000 //gen by platform EX: XPAR_BRAM_0_BASEADDR
#define BRAM1_BASEADDR             XPAR_BRAM_1_BASEADDR// 0x1800000 //gen by platform EX: XPAR_BRAM_1_BASEADDR

// Soft Reset
//#define SW_RESET_BASEADDR       XPAR_DTI_AXI_SW_RESET_0_BASEADDR

// Interrupt Controller
#define INTC_BASEADDR               XPAR_INTC_0_BASEADDR//0x1000000 //gen by platform EX: XPAR_INTC_0_BASEADDR
#define INTC_DEVICE_ID              XPAR_INTC_0_DEVICE_ID//0x1800000 //gen by platform EX: XPAR_INTC_0_DEVICE_ID

// Central DMA
//#define CDMA_BASEADDR         XPAR_AXI_CDMA_0_BASEADDR//0x1000000 //gen by platform Ex: XPAR_AXI_CDMA_0_BASEADDR
//#define CDMA_DEVICE_ID        XPAR_AXI_CDMA_0_DEVICE_ID//0x1800000 //gen by platform Ex: XPAR_AXI_CDMA_0_DEVICE_ID

// DTI Memory Controller
//#ifdef XPAR_DYNAMO_CORE_0_BASEADDR
//  #define MC_AXI4_BASEADDR          0x1000000 //gen by platform EX: XPAR_DYNAMO_CORE_0_BASEADDR
//#endif
#ifdef XPAR_DYNAMO_XCORE_0_BASEADDR
  #define MC_AXI4_BASEADDR          XPAR_DYNAMO_XCORE_0_BASEADDR//0x1000000 //gen by platform EX: XPAR_DYNAMO_XCORE_0_BASEADDR
#endif
#define UART_APB_BASEADDR           0x80000000//0x44A10000-this is apb
#define INTC_MC_ERROR             XPAR_MICROBLAZE_0_AXI_INTC_DYNAMO_CORE_0_INT_GC_FSM_INTR//0x1000000 //gen by platform EX: XPAR_MICROBLAZE_0_AXI_INTC_DYNAMO_CORE_0_INT_GC_FSM_INTR

/************************** Testbench defines ********************************/
#define BRAM0       0
#define BRAM1       1
#define BRAM0_DEPTH     16384//1048576 //4M //262144-1M// BRAM0 full threshold (unit: 32 bits)
#define BRAM1_DEPTH     16384//1048576 //4M //262144-1M// BRAM1 full threshold (unit: 32 bits)

/************************** Type Definitions *********************************/
typedef u8 bool;
#define    true     1
#define    false  0

/************************** Variable Definitions *****************************/
extern u32 TOTAL_FAIL;


/************************** Function Prototypes ******************************/
// Report
void iPrint(const char8 *char1, ...); // print in both SIM and REAL mode
//void wPrint(const char8 *char1, ...); // print warning messages
//void ePrint(const char8 *char1, ...); // print error messages
//void sPrint(const char8 *char1, ...); // print in SIM mode but do not print in REAL mode
//void rPrint(const char8 *char1, ...); // print in REAL mode but do not print in SIM mode

// Others
u8 get_bit(u8 data, u8 offset);
u8 get_bits(u8 data, u8 offset, u8 length);
int isExisting(u8 array[], u8 size, u8 value);

void setupUart();
void setupGpio();
void printUart(char *c);
void writeLed(u32 data, u32 timeout);
void pulseLed(u32 timeout);
void playLEDs();

#endif /* SRC_HEADER_DEFINES_H_ */
