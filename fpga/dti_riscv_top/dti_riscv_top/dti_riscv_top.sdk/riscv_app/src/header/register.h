//-----------------------------------------------------------------------------
//    Copyright (C) 2024 by Dolphin Technology
//    Created: 14:21:11  Apr 23rd 2024
//------------------------------------------------------------------------------
/***************************** Include Files ****************************************/ 
#include "define.h"
/***************************** Constant Definitions *********************************/ 

#define ADDR_REG_TX             (UART_APB_BASEADDR + 0x000)
#define ADDR_REG_CFG            (UART_APB_BASEADDR + 0x004)
#define ADDR_REG_CTRL           (UART_APB_BASEADDR + 0x008)
#define ADDR_REG_RX             (UART_APB_BASEADDR + 0x00C)
#define ADDR_REG_STT            (UART_APB_BASEADDR + 0x010)
#define ADDR_REG_BOOST_CFG      (UART_APB_BASEADDR + 0x014)

/**************************** Type Definitions *******************************/
#define _RO volatile const // Read-Only register
#define _RW volatile // Read-Write register
// Register field type
typedef struct RegField {
  u8 offset;
  u32 mask;
  volatile u32 value;
} RegField;
typedef struct reg_tx { 
u32 data_u; 
RegField data;
//  (Reserved for Future Use)
} reg_tx_t;
typedef struct reg_cfg { 
u32 data_u; 
RegField data_bit_num;
RegField stop_bit_num;
RegField parity_en;
RegField parity_type;
//  (Reserved for Future Use)
} reg_cfg_t;
typedef struct reg_ctrl { 
u32 data_u; 
RegField start_tx;
//  (Reserved for Future Use)
} reg_ctrl_t;
typedef struct reg_rx { 
u32 data_u; 
RegField data;
//  (Reserved for Future Use)
} reg_rx_t;
typedef struct reg_stt { 
u32 data_u; 
RegField tx_done;
RegField rx_done;
//  (Reserved for Future Use)
} reg_stt_t;
typedef struct reg_boost_cfg {
u32 data_u;
RegField boost_en;
} reg_boost_cfg_t;

/************************** Variable Definitions *****************************/
extern reg_tx_t reg_tx;
extern reg_cfg_t reg_cfg;
extern reg_ctrl_t reg_ctrl;
extern reg_rx_t reg_rx;
extern reg_stt_t reg_stt;
extern reg_boost_cfg_t reg_boost_cfg;

/************************** Function Prototypes ******************************/
void read_reg(u32 addr, u32 *data);
void write_reg(u32 addr, u32 data);
void get_field(RegField *field, u32 data);

void set_field_tx(RegField *field, u32 value);
void set_field_cfg(RegField *field, u32 value);
void set_field_ctrl(RegField *field, u32 value);
void set_field_rx(RegField *field, u32 value);
void set_field_stt(RegField *field, u32 value);
void set_field_boost_cfg(RegField *field, u32 value);



void get_field_tx(RegField *field);
void get_field_cfg(RegField *field);
void get_field_ctrl(RegField *field);
void get_field_rx(RegField *field);
void get_field_stt(RegField *field);
void get_field_boost_cfg(RegField *field);



void write_reg_tx();
void write_reg_cfg();
void write_reg_ctrl();
void write_reg_rx();
void write_reg_stt();
void write_reg_boost_cfg();



void read_reg_tx();
void read_reg_cfg();
void read_reg_ctrl();
void read_reg_rx();
void read_reg_stt();
void read_reg_boost_cfg();

void initFieldOffset();
void initFieldMask();
void initFieldValue();
void initRegisters();
