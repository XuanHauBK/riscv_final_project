/*
 * seq_apb.c
 *
 *  Created on: Apr 23, 2024
 *      Author: hautx0
 */

/***************************** Include Files *********************************/
#include "../header/seq_apb.h"

/************************** Variable Definitions *****************************/

/************************** Function Prototypes ******************************/
// u8 data[]={0x48, 0x65, 0x6C, 0x6C, 0x6F, 0x20, 0x57, 0x6F, 0x72, 0x6C, 0x64};
u8 data[]={0x93, 0x80, 0x10, 0x00, 0x13, 0x01, 0x80, 0x04, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0x50, 0x06, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0xc0, 0x06, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0xc0, 0x06, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0xf0, 0x06, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0x00, 0x02, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0x70, 0x05, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0xf0, 0x06, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0x20, 0x07, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0xc0, 0x06, 0x23, 0xa2, 0x20, 0x00, 0x13, 0x01, 0x40, 0x06, 0x23, 0xa2, 0x20, 0x00};
u8 *data_u;


void setFrameConfig() {
  set_field_cfg(&reg_cfg.data_bit_num, 0x3);
  set_field_cfg(&reg_cfg.stop_bit_num, 0x0);
  set_field_cfg(&reg_cfg.parity_en, 0x0);
  set_field_cfg(&reg_cfg.parity_type, 0x0);
  write_reg_cfg();
}

void BoostEn() {
  set_field_boost_cfg(&reg_boost_cfg.boost_en, 0x1);
  write_reg_boost_cfg();
}

void BoostDisable() {
  set_field_boost_cfg(&reg_boost_cfg.boost_en, 0x0);
  write_reg_boost_cfg();
}

void writeData() {
  int i;
  for (i = 0; i < sizeof(data); i++) {
    set_field_tx(&reg_tx.data, data[i]);
    write_reg_tx();
    usleep(5);
    set_field_ctrl(&reg_ctrl.start_tx, 0x1);
    write_reg_ctrl();
    usleep(5);
    do {
      read_reg_stt();
      usleep(5);
    } while (!reg_stt.tx_done.value);
  }
}

void readData() {
  int i = 0;
  do {
    read_reg_stt();
    usleep(5);
    if (reg_stt.rx_done.value) {
      read_reg_rx();
      *(data_u + i) = reg_rx.data.value;
      i++;
    }
  } while (reg_rx.data.value != 0x5C);
}

void writeReadData() {
  int i = 0;
  while((*(data_u+i)) != 0x5C) {
    set_field_tx(&reg_tx.data, *(data_u +i));
    write_reg_tx();
    usleep(5);
    set_field_ctrl(&reg_ctrl.start_tx, 0x1);
    write_reg_ctrl();
    usleep(5);
    i++;
    do {
      read_reg_stt();
      usleep(5);
    } while (!reg_stt.tx_done.value);
  }
}
