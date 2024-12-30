/*-----------------------------------------------------------------------------
*     Copyright (C) 2024 by Dolphin Technology
*     All right reserved.
*
*     Copyright Notification
*     No part may be reproduced except as authorized by written permission.
*
*     Created Date         : May 27 2024
*     File Name            : apb_interface
*     Project              : dti_apb_uart
*     Author               : hautx0
*     @Last Modified by    : hautx0
*     @Last Modified Time  : May 27 2024
*-----------------------------------------------------------------------------
*/
`include "dti_global_defines.svh"
module apb_interface #(
  parameter  APB_DATA_WIDTH = `CFG_APB_DATA_WIDTH,
  parameter  APB_ADDR_WIDTH = `CFG_APB_ADDR_WIDTH,
  parameter  DATA_WIDTH     = `CFG_DATA_WIDTH
)
(
  //AMBA APB SIGNALS
  input                             apb_presetn,
  input                             apb_pclk,
  input        [APB_ADDR_WIDTH-1:0] apb_paddr,
  input                             apb_psel,
  input                             apb_penable,
  input                             apb_pwrite,
  input        [APB_DATA_WIDTH-1:0] apb_pwdata,
  output logic                      apb_pready,
  output logic [APB_DATA_WIDTH-1:0] apb_prdata,
  output logic                      apb_pslverr,
  // FIFO SIGNALS
  input                             clk,
  input                             reset_n,
  output logic [DATA_WIDTH-1:0]     fifo_write_data_out,
  input  logic                      fifo_write_rd_req,
  output logic                      fifo_write_empty,
  input  wire  [DATA_WIDTH-1:0]     fifo_read_data_in,
  input  wire                       fifo_read_wr_req,
  output wire                       fifo_read_full
);

logic                             fifo_empty;
logic                             fifo_write_full;
logic                             fifo_write_error;
logic                             fifo_write_wr_req;
logic   [DATA_WIDTH-1:0]          rdata;
logic                             fifo_read_rd_req;
logic                             fifo_read_empty;
logic                             fifo_read_error;
logic                             wack;
logic                             rack;
logic                             waddrerr;
logic                             raddrerr;
logic                             apb_uart_enable;

assign apb_uart_enable = (apb_paddr >= `CFG_ADDR_UART_MIN) & (apb_paddr <= `CFG_ADDR_UART_MAX);

always_ff @(posedge apb_pclk or negedge apb_presetn) 
begin
  if(~apb_presetn) begin
    wack     <= 0;
    waddrerr <= 1'b0;
  end 
  else begin
    if (apb_psel & apb_pwrite & apb_penable & apb_uart_enable) begin
      wack     <= 1'b1;
      waddrerr <= fifo_write_error;
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
    if (apb_psel & !apb_pwrite & apb_penable & apb_uart_enable) begin
      rack     <= 1'b1;
      raddrerr <= fifo_read_error;
    end
    else begin
      rack     <= 1'b0;
      raddrerr <= 1'b0;
    end
  end
end

// APB 
assign apb_prdata = apb_pready ? {24'b0, rdata} : 0;
assign apb_pready = apb_psel ? (apb_pwrite & wack) | ((~apb_pwrite) & rack) : 1'b0;
assign apb_pslverr= apb_psel ? (apb_pwrite & waddrerr) | ((~ apb_pwrite) & raddrerr) : 1'b0;

// FIFO Write 
assign fifo_write_wr_req = apb_pready & apb_pwrite;

// FIFO Read 
assign fifo_read_rd_req = apb_pready & (~apb_pwrite) & (!fifo_read_empty);

dti_fifo_async_sf #(
  .DATA_WIDTH(DATA_WIDTH),
  .DEPTH     (32)
)dti_fifo_async_sf_write (
  .wr_clk           (apb_pclk           ),
  .wr_reset_n       (apb_presetn        ),
  .wr_din           (apb_pwdata[7:0]    ),
  .wr_req           (fifo_write_wr_req  ),
  .wr_empty         (                   ),
  .wr_full          (fifo_write_full    ),
  .wr_error         (fifo_write_error   ),
  .wr_prog_full     (                   ),
  .wr_prog_empty    (                   ),
  .wr_empty_synced  (                   ),
  .wr_prog_full_lvl (                   ),
  .wr_prog_empty_lvl(                   ),
  .rd_dout          (fifo_write_data_out),
  .rd_clk           (clk                ),
  .rd_reset_n       (reset_n            ),
  .rd_req           (fifo_write_rd_req  ),
  .rd_full          (                   ),
  .rd_empty         (fifo_write_empty   ),
  .rd_error         (                   ),
  .rd_prog_full     (                   ),
  .rd_prog_empty    (                   ),
  .rd_full_synced   (                   ),
  .rd_prog_full_lvl (                   ),
  .rd_prog_empty_lvl(                   )
);

dti_fifo_async_sf #(
  .DATA_WIDTH(DATA_WIDTH),
  .DEPTH     (32)
)dti_fifo_async_sf_read (
  .wr_clk           (clk                ),
  .wr_reset_n       (reset_n            ),
  .wr_din           (fifo_read_data_in  ),
  .wr_req           (fifo_read_wr_req   ),
  .wr_empty         (                   ),
  .wr_full          (fifo_read_full     ),
  .wr_error         (                   ),
  .wr_prog_full     (                   ),
  .wr_prog_empty    (                   ),
  .wr_empty_synced  (                   ),
  .wr_prog_full_lvl (                   ),
  .wr_prog_empty_lvl(                   ),
  .rd_dout          (rdata              ),
  .rd_clk           (apb_pclk           ),
  .rd_reset_n       (apb_presetn        ),
  .rd_req           (fifo_read_rd_req   ),
  .rd_full          (                   ),
  .rd_empty         (fifo_read_empty    ),
  .rd_error         (fifo_read_error    ),
  .rd_prog_full     (                   ),
  .rd_prog_empty    (                   ),
  .rd_full_synced   (                   ),
  .rd_prog_full_lvl (                   ),
  .rd_prog_empty_lvl(                   )
);


endmodule





