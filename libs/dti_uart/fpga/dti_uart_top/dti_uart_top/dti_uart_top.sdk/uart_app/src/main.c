#include "header/seq_apb.h"
#include "platform.h"
#include <stdio.h>

int main() {
  init_platform();
//  setupUart();
//  printf("\n*Start*\n");

  initFieldOffset();
  initFieldMask();
  initFieldValue();

  setFrameConfig();

  writeData();
  usleep(1000);
  readData();
  writeReadData();

  return 0;
}
