//-----------------------------------------------------------------------------
//    Copyright (C) 2019 by Dolphin Technology
//    Created: 14:21:11  Apr 23rd 2024
//------------------------------------------------------------------------------
/***************************** Include Files ****************************************/ 
#include "../header/register.h"

/************************** Variable Definitions *****************************/
reg_tx_t reg_tx;
reg_cfg_t reg_cfg;
reg_ctrl_t reg_ctrl;
reg_rx_t reg_rx;
reg_stt_t reg_stt;
reg_boost_cfg_t reg_boost_cfg;

/************************** Function Definitions ******************************/
//Read from a register by address
void read_reg(u32 addr, u32 *data_u) {
  *data_u = Xil_In32(addr);
//OR: *data_u = *addr;
}

// Write to a register by address
void write_reg(u32 addr, u32 data_u) {
  Xil_Out32(addr, data_u);
//OR: *data_u = *addr;
}

void get_field(RegField *field, u32 data_u) {
  field->value = (data_u & field->mask) >> field->offset;
}

void set_field_tx(RegField *field, u32 value) { 
  field->value = value; 
  reg_tx.data_u = (reg_tx.data_u & ~field->mask) 
    | (field->value << field->offset); 
} 
void set_field_cfg(RegField *field, u32 value) { 
  field->value = value; 
  reg_cfg.data_u = (reg_cfg.data_u & ~field->mask) 
    | (field->value << field->offset); 
} 
void set_field_ctrl(RegField *field, u32 value) { 
  field->value = value; 
  reg_ctrl.data_u = (reg_ctrl.data_u & ~field->mask) 
    | (field->value << field->offset); 
} 
void set_field_rx(RegField *field, u32 value) { 
  field->value = value; 
  reg_rx.data_u = (reg_rx.data_u & ~field->mask) 
    | (field->value << field->offset); 
} 
void set_field_stt(RegField *field, u32 value) { 
  field->value = value; 
  reg_stt.data_u = (reg_stt.data_u & ~field->mask) 
    | (field->value << field->offset); 
} 
void set_field_boost_cfg(RegField *field, u32 value) {
  field->value = value;
  reg_boost_cfg.data_u = (reg_boost_cfg.data_u & ~field->mask)
    | (field->value << field->offset);
}



/** void Get value of a field in register functions ***************************** 
*  Do: - Extract value of a field base on its mask and offset 
*       - Return its value 
*/ 
void get_field_tx(RegField *field) { 
  field->value = (reg_tx.data_u & field->mask) >> field->offset; 
} 
void get_field_cfg(RegField *field) { 
  field->value = (reg_cfg.data_u & field->mask) >> field->offset; 
} 
void get_field_ctrl(RegField *field) { 
  field->value = (reg_ctrl.data_u & field->mask) >> field->offset; 
} 
void get_field_rx(RegField *field) { 
  field->value = (reg_rx.data_u & field->mask) >> field->offset; 
} 
void get_field_stt(RegField *field) { 
  field->value = (reg_stt.data_u & field->mask) >> field->offset; 
} 
void get_field_boost_cfg(RegField *field) {
  field->value = (reg_boost_cfg.data_u & field->mask) >> field->offset;
}



/** Write to registers functions *********************************** 
 * Do: Write content of register data to hardware 
* Note: Call these methods after set register fields 
*/ 
void write_reg_tx() { 
  write_reg(ADDR_REG_TX, reg_tx.data_u);
} 
void write_reg_cfg() { 
  write_reg(ADDR_REG_CFG, reg_cfg.data_u);
} 
void write_reg_ctrl() { 
  write_reg(ADDR_REG_CTRL, reg_ctrl.data_u);
} 
void write_reg_rx() { 
  write_reg(ADDR_REG_RX, reg_rx.data_u);
} 
void write_reg_stt() { 
  write_reg(ADDR_REG_STT, reg_stt.data_u);
} 
void write_reg_boost_cfg() {
  write_reg(ADDR_REG_BOOST_CFG, reg_boost_cfg.data_u);
}



/** Read from registers functions ***************************************** 
 * Do: Read register content from hardware and update it fields 
* Note: All its fields are ready to use after call these methods 
*/ 
void read_reg_tx() { 
  read_reg(ADDR_REG_TX, &reg_tx.data_u);
  get_field_tx(&reg_tx.data); 
} 
void read_reg_cfg() { 
  read_reg(ADDR_REG_CFG, &reg_cfg.data_u);
  get_field_cfg(&reg_cfg.data_bit_num); 
  get_field_cfg(&reg_cfg.stop_bit_num); 
  get_field_cfg(&reg_cfg.parity_en); 
  get_field_cfg(&reg_cfg.parity_type); 
} 
void read_reg_ctrl() { 
  read_reg(ADDR_REG_CTRL, &reg_ctrl.data_u);
  get_field_ctrl(&reg_ctrl.start_tx); 
} 
void read_reg_rx() { 
  read_reg(ADDR_REG_RX, &reg_rx.data_u);
  get_field_rx(&reg_rx.data); 
} 
void read_reg_stt() { 
  read_reg(ADDR_REG_STT, &reg_stt.data_u);
  get_field_stt(&reg_stt.tx_done); 
  get_field_stt(&reg_stt.rx_done); 
} 
void read_reg_boost_cfg() {
  read_reg(ADDR_REG_BOOST_CFG, &reg_boost_cfg.data_u);
  get_field_boost_cfg(&reg_boost_cfg.boost_en);
}


void initFieldOffset() { 
reg_tx.data.offset =  0; 
reg_cfg.data_bit_num.offset =  0; 
reg_cfg.stop_bit_num.offset =  2; 
reg_cfg.parity_en.offset =  3; 
reg_cfg.parity_type.offset =  4; 
reg_ctrl.start_tx.offset =  0; 
reg_rx.data.offset =  0; 
reg_stt.tx_done.offset =  0; 
reg_stt.rx_done.offset =  1; 
reg_boost_cfg.boost_en.offset = 0;
}


// Initialize fields mask 
void initFieldMask() { 
  reg_tx.data.mask = 0xff; 
  reg_cfg.data_bit_num.mask = 0x3; 
  reg_cfg.stop_bit_num.mask = 0x4; 
  reg_cfg.parity_en.mask = 0x8; 
  reg_cfg.parity_type.mask = 0x10; 
  reg_ctrl.start_tx.mask = 0x1; 
  reg_rx.data.mask = 0xff; 
  reg_stt.tx_done.mask = 0x1; 
  reg_stt.rx_done.mask = 0x2; 
  reg_boost_cfg.boost_en.mask = 0x1;
} 


// Initialize fields value 
void initFieldValue() { 
  set_field_tx(&reg_tx.data, 0x0); 
  set_field_cfg(&reg_cfg.data_bit_num, 0x0); 
  set_field_cfg(&reg_cfg.stop_bit_num, 0x0); 
  set_field_cfg(&reg_cfg.parity_en, 0x0); 
  set_field_cfg(&reg_cfg.parity_type, 0x0); 
  set_field_ctrl(&reg_ctrl.start_tx, 0x0); 
  set_field_rx(&reg_rx.data, 0x0); 
  set_field_stt(&reg_stt.tx_done, 0x1); 
  set_field_stt(&reg_stt.rx_done, 0x0); 
  set_field_boost_cfg(&reg_boost_cfg.boost_en, 0x0);
} 
