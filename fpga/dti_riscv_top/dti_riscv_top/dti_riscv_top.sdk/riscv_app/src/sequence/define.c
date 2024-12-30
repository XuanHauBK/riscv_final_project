/*
 * defines.c
 *
 *  Created on: Mar 08, 2018
 *      Author: hungd
 */

/***************************** Include Files **********************************/
#include "../header/define.h"

/************************** Variable Definitions ******************************/
u32 TOTAL_FAIL = 0;


/************************** Function Definitions ******************************/
// Set the baud rate and number of stop bits
void setupUart() {
#ifdef XPAR_UARTNS550_0_BASEADDR

#endif
}

// Sent out a string to UART
void printUart(char *c) {
  while (*c) {
#ifdef XPAR_UARTNS550_0_BASEADDR

#endif
#ifdef XPAR_UARTLITE_0_BASEADDR

#endif
    c++;
  }
}

// Print information
void iPrint(const char8 *char1, ...) {
        xil_printf(char1);
}

// get one bit of byte @data at @offset
u8 get_bit(u8 data, u8 offset) {
  return (data >> offset) & 0x01;
}

// Get bits of a byte @data from @offset to @offset+length
u8 get_bits(u8 data, u8 offset, u8 length) {
  // return (data >> offset) & ((u8) pow(2, length) - 1);
}

// Check if a @value is existing in an @array
// @size: size of array
int isExisting(u8 array[], u8 size, u8 value) {
  for (int i = 0; i < size; i++) {
    if (array[i] == value) {
      return 1;
    }
  }
  return 0;
}
