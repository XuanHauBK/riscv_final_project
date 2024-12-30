/*-----------------------------------------------------------------------------
*     Copyright (C) 2024 by Dolphin Technology
*     All right reserved.
*
*     Copyright Notification
*     No part may be reproduced except as authorized by written permission.
*
*     Created Date         : May 27 2024
*     File Name            : apb_gpio
*     Project              : dti_apb_gpio
*     Author               : hautx0
*     @Last Modified by    : hautx0
*     @Last Modified Time  : May 27 2024
*-----------------------------------------------------------------------------
*/
`include "dti_global_defines.svh"
module apb_gpio #(
  parameter  GPIO_NUM        = `CFG_GPIO_NUM,
  parameter  APB_DATA_WIDTH  = `CFG_APB_DATA_WIDTH,
  parameter  APB_ADDR_WIDTH  = 32
)
(
  input                                  apb_presetn,
  input                                  apb_pclk,
  input   wire    [APB_ADDR_WIDTH-1:0]   apb_paddr,
  input   wire                           apb_psel,
  input   wire                           apb_penable,
  input   wire                           apb_pwrite,
  input   wire    [APB_DATA_WIDTH-1:0]   apb_pwdata,
  output  wire                           apb_pready,
  output  wire    [APB_DATA_WIDTH-1:0]   apb_prdata,
  output  wire                           apb_pslverr,
  input   wire    [GPIO_NUM-1:0]         gpio_i,
  output  wire    [GPIO_NUM-1:0]         gpio_o
);

logic   [GPIO_NUM-1:0]     data_gpio;
logic                      wack;
logic                      rack;
logic                      waddrerr;
logic                      raddrerr;
logic                      apb_gpio_enable;

assign apb_gpio_enable = (apb_paddr >= `CFG_ADDR_GPIO_MIN) & (apb_paddr <= `CFG_ADDR_GPIO_MAX);

always_ff @(posedge apb_pclk or negedge apb_presetn) 
begin
  if(~apb_presetn) begin
    wack     <= 0;
    waddrerr <= 1'b0;
  end 
  else begin
    if (apb_psel & apb_pwrite & apb_penable & apb_gpio_enable) begin
      wack     <= 1'b1;
      waddrerr <= 1'b0;
    end
    else begin
      wack     <= 1'b0;
      waddrerr <= 1'b0;
    end
  end
end

always_ff @(posedge apb_pclk or negedge apb_presetn) 
begin
  if(~apb_presetn) begin
    rack     <= 0;
    raddrerr <= 1'b0;
  end 
  else begin
    if (apb_psel & !apb_pwrite & apb_penable & apb_gpio_enable) begin
      rack     <= 1'b1;
      raddrerr <= 1'b0;
    end
    else begin
      rack     <= 1'b0;
      raddrerr <= 1'b0;
    end
  end
end

// APB 
assign apb_prdata = (apb_pready) ? gpio_i : 0;
assign apb_pready = (apb_psel == 1'b1) ? (apb_pwrite & wack) | ((~apb_pwrite) & rack) : 1'b0;
assign apb_pslverr= (apb_psel == 1'b1) ? (apb_pwrite & waddrerr) | ((~ apb_pwrite) & raddrerr) : 1'b0;

always_ff @(posedge apb_pclk or negedge apb_presetn) 
begin
  if(~apb_presetn) begin
    data_gpio <= 0;
  end else begin
    if (apb_pready) begin
      data_gpio <= apb_pwdata;
    end
    else begin
      data_gpio <= data_gpio;
    end
  end
end

assign gpio_o = data_gpio;

endmodule