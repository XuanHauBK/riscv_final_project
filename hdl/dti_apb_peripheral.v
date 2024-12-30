//------------------------------------------------------------------------------------------------------------------
//    Copyright (C) 2024 by Dolphin Technology
//    All right reserved.
//
//    Copyright Notification
//    No part may be reproduced except as authorized by written permission.
//
//    Module: dti_riscv_lib.dti_apb_peripheral
//    Company: Dolphin Technology
//    Project: 
//    Author: hautx0
//    Date: 17:57:20 - 06/09/24
//----------------------------------------------------------------------------------------------------------------
`include "dti_global_defines.svh"
module dti_apb_peripheral #(
  parameter APB_DATA_WIDTH = `CFG_APB_DATA_WIDTH,
  parameter APB_ADDR_WIDTH = `CFG_APB_ADDR_WIDTH,
  parameter GPIO_NUM       = `CFG_GPIO_NUM
)
( 
  // Port Declarations
  input   wire    [APB_ADDR_WIDTH - 1:0]  apb_paddr, 
  input   wire                            apb_pclk, 
  input   wire                            apb_penable, 
  input   wire                            apb_presetn, 
  input   wire                            apb_psel, 
  input   wire    [APB_DATA_WIDTH - 1:0]  apb_pwdata, 
  input   wire                            apb_pwrite, 
  input   wire                            clk_uart, 
  input   wire                            cts_n, 
  input   wire    [GPIO_NUM - 1:0]        gpio_i, 
  input   wire                            reset_n, 
  input   wire                            rx, 
  output  wire    [APB_DATA_WIDTH - 1:0]  apb_prdata, 
  output  wire                            apb_pready, 
  output  wire                            apb_pslverr, 
  output  wire    [GPIO_NUM - 1:0]        gpio_o, 
  output  wire                            irq, 
  output  wire                            rts_n, 
  output  wire                            tx
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wire  [APB_DATA_WIDTH - 1:0] apb_prdata_gpio;
wire  [APB_DATA_WIDTH - 1:0] apb_prdata_timer;
wire  [APB_DATA_WIDTH - 1:0] apb_prdata_uart;
wire                         apb_pready_gpio;
wire                         apb_pready_timer;
wire                         apb_pready_uart;
wire                         apb_pslverr_gpio;
wire                         apb_pslverr_timer;
wire                         apb_pslverr_uart;


// Instances 
apb_gpio apb_gpio( 
  .apb_presetn (apb_presetn), 
  .apb_pclk    (apb_pclk), 
  .apb_paddr   (apb_paddr), 
  .apb_psel    (apb_psel), 
  .apb_penable (apb_penable), 
  .apb_pwrite  (apb_pwrite), 
  .apb_pwdata  (apb_pwdata), 
  .apb_pready  (apb_pready_gpio), 
  .apb_prdata  (apb_prdata_gpio), 
  .apb_pslverr (apb_pslverr_gpio), 
  .gpio_i      (gpio_i), 
  .gpio_o      (gpio_o)
); 

apb_timer apb_timer( 
  .apb_presetn (apb_presetn), 
  .apb_pclk    (apb_pclk), 
  .apb_paddr   (apb_paddr), 
  .apb_psel    (apb_psel), 
  .apb_penable (apb_penable), 
  .apb_pwrite  (apb_pwrite), 
  .apb_pwdata  (apb_pwdata), 
  .apb_pready  (apb_pready_timer), 
  .apb_prdata  (apb_prdata_timer), 
  .apb_pslverr (apb_pslverr_timer), 
  .irq         (irq)
); 

apb_uart apb_uart( 
  .apb_presetn (apb_presetn), 
  .apb_pclk    (apb_pclk), 
  .apb_paddr   (apb_paddr), 
  .apb_psel    (apb_psel), 
  .apb_penable (apb_penable), 
  .apb_pwrite  (apb_pwrite), 
  .apb_pwdata  (apb_pwdata), 
  .apb_pready  (apb_pready_uart), 
  .apb_prdata  (apb_prdata_uart), 
  .apb_pslverr (apb_pslverr_uart), 
  .clk         (clk_uart), 
  .reset_n     (reset_n), 
  .cts_n       (cts_n), 
  .tx          (tx), 
  .rx          (rx), 
  .rts_n       (rts_n)
); 

// HDL Embedded Text Block 1 eb1
// eb1 1                                        
assign apb_pready = apb_pready_uart || apb_pready_gpio || apb_pready_timer;
assign apb_pslverr = apb_pslverr_uart || apb_pslverr_gpio || apb_pslverr_timer;
assign apb_prdata = apb_prdata_uart || apb_prdata_gpio || apb_prdata_timer;

endmodule // dti_apb_peripheral

