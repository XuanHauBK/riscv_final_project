//------------------------------------------------------------------------------------------------------------------
//    Copyright (C) 2024 by Dolphin Technology
//    All right reserved.
//
//    Copyright Notification
//    No part may be reproduced except as authorized by written permission.
//
//    Module: dti_riscv_lib.dti_riscv
//    Company: Dolphin Technology
//    Project: 
//    Author: hautx0
//    Date: 22:33:13 - 09/23/24
//----------------------------------------------------------------------------------------------------------------
`include "dti_global_defines.svh"
module dti_riscv #(
  parameter CSR_ADDR_WIDTH  = `CFG_CSR_ADDR_WIDTH,
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH,
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH,
  parameter PC_WIDTH        = `CFG_PC_WIDTH,
  parameter REG_ADDR_WIDTH  = `CFG_REG_ADDR_WIDTH,
  parameter GPIO_NUM        = `CFG_GPIO_NUM
)
( 
  // Port Declarations
  input   wire                      apb_pclk, 
  input   wire                      apb_presetn, 
  input   wire                      boost_en, 
  input   wire                      clk, 
  input   wire                      clk_uart, 
  input   wire                      cts_n, 
  input   wire    [GPIO_NUM - 1:0]  gpio_i, 
  input   wire                      reset_n, 
  input   wire                      rx, 
  input   wire                      rx_boost, 
  output  wire    [GPIO_NUM - 1:0]  gpio_o, 
  output  wire                      rts_n, 
  output  wire                      rts_n_boost, 
  output  wire    [39:0]            test_context_out, 
  output  wire                      tx
);

`include "dti_global_parameters.svh"
// Internal Declarations


// Local declarations

// Internal signal declarations
wire  [31:0]                  apb_paddr;
wire                          apb_penable;
wire  [31:0]                  apb_prdata;
wire                          apb_pready;
wire                          apb_psel;
wire                          apb_pslverr;
wire  [31:0]                  apb_pwdata;
wire                          apb_pwrite;
wire  [INST_ADDR_WIDTH - 1:0] dmem_address;
wire  [31:0]                  dmem_data_in;
wire  [1:0]                   dmem_data_size;
wire                          dmem_read_ack;
wire                          dmem_read_req;
wire                          dmem_write_ack;
wire                          dmem_write_req;
wire                          imem_ack;
wire  [INST_ADDR_WIDTH - 1:0] imem_address;
wire  [INST_DATA_WIDTH - 1:0] imem_data_in;
wire                          imem_req;
wire  [7:0]                   irq;
wire  [31:0]                  mem_data_in;
wire  [INST_DATA_WIDTH-1:0]   rx_boost_inst_data_in;
wire                          rx_boost_inst_wr_req;


// Instances 
dti_apb_adapter dti_apb_adapter( 
  .apb_prdata    (apb_prdata), 
  .apb_pready    (apb_pready), 
  .apb_pslverr   (apb_pslverr), 
  .clk           (clk), 
  .mem_address   (dmem_address), 
  .mem_data_in   (mem_data_in), 
  .mem_data_size (dmem_data_size), 
  .mem_read_req  (dmem_read_req), 
  .mem_write_req (dmem_write_req), 
  .reset_n       (reset_n), 
  .apb_paddr     (apb_paddr), 
  .apb_penable   (apb_penable), 
  .apb_psel      (apb_psel), 
  .apb_pwdata    (apb_pwdata), 
  .apb_pwrite    (apb_pwrite), 
  .mem_data_out  (dmem_data_in), 
  .mem_read_ack  (dmem_read_ack), 
  .mem_write_ack (dmem_write_ack)
); 

dti_apb_peripheral dti_apb_peripheral( 
  .apb_paddr   (apb_paddr), 
  .apb_pclk    (apb_pclk), 
  .apb_penable (apb_penable), 
  .apb_presetn (apb_presetn), 
  .apb_psel    (apb_psel), 
  .apb_pwdata  (apb_pwdata), 
  .apb_pwrite  (apb_pwrite), 
  .clk_uart    (clk_uart), 
  .cts_n       (cts_n), 
  .gpio_i      (gpio_i), 
  .reset_n     (reset_n), 
  .rx          (rx), 
  .apb_prdata  (apb_prdata), 
  .apb_pready  (apb_pready), 
  .apb_pslverr (apb_pslverr), 
  .gpio_o      (gpio_o), 
  .irq         (irq), 
  .rts_n       (rts_n), 
  .tx          (tx)
); 

dti_boost_inst dti_boost_inst( 
  .clk                   (clk), 
  .reset_n               (reset_n), 
  .rx                    (rx_boost), 
  .rts_n                 (rts_n_boost), 
  .rx_boost_inst_data_in (rx_boost_inst_data_in), 
  .rx_boost_inst_wr_req  (rx_boost_inst_wr_req)
); 

dti_riscv_core dti_riscv_core( 
  .boost_en         (boost_en), 
  .clk              (clk), 
  .dmem_data_in     (dmem_data_in), 
  .dmem_read_ack    (dmem_read_ack), 
  .dmem_write_ack   (dmem_write_ack), 
  .imem_ack         (imem_ack), 
  .imem_data_in     (imem_data_in), 
  .irq              (irq), 
  .reset_n          (reset_n), 
  .dmem_address     (dmem_address), 
  .dmem_data_out    (mem_data_in), 
  .dmem_data_size   (dmem_data_size), 
  .dmem_read_req    (dmem_read_req), 
  .dmem_write_req   (dmem_write_req), 
  .imem_address     (imem_address), 
  .imem_req         (imem_req), 
  .test_context_out (test_context_out)
); 

imem imem( 
  .clk                   (clk), 
  .reset_n               (reset_n), 
  .boost_en              (boost_en), 
  .rx_boost_inst_data_in (rx_boost_inst_data_in), 
  .rx_boost_inst_wr_req  (rx_boost_inst_wr_req), 
  .imem_address          (imem_address), 
  .imem_req              (imem_req), 
  .imem_ack              (imem_ack), 
  .imem_data_in          (imem_data_in)
); 


endmodule // dti_riscv

