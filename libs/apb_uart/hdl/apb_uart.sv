/*-----------------------------------------------------------------------------
*     Copyright (C) 2024 by Dolphin Technology
*     All right reserved.
*
*     Copyright Notification
*     No part may be reproduced except as authorized by written permission.
*
*     Created Date         : May 27 2024
*     File Name            : apb_uart
*     Project              : dti_apb_uart
*     Author               : hautx0
*     @Last Modified by    : hautx0
*     @Last Modified Time  : May 27 2024
*-----------------------------------------------------------------------------
*/
`include "dti_global_defines.svh"
module apb_uart #(
  parameter  DATA_WIDTH      = `CFG_DATA_WIDTH,
  parameter  APB_DATA_WIDTH  = `CFG_APB_DATA_WIDTH,
  parameter  APB_ADDR_WIDTH  = `CFG_APB_ADDR_WIDTH
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
  input                                  clk,
  input                                  reset_n,
  input   wire                           cts_n,
  output  wire                           tx,
  input   wire                           rx,
  output  wire                           rts_n
);

wire                             rxclk_en;
wire                             txclk_en;
wire   [DATA_WIDTH-1:0]          fifo_write_data_out;
wire                             fifo_write_rd_req;
wire                             fifo_write_empty;
wire                             fifo_read_full;
wire   [DATA_WIDTH-1:0]          fifo_read_data_in;
wire                             fifo_read_wr_req;


baudrate_gen baudrate_gen (
             .clk     (clk     ),
             .reset_n (reset_n ),
             .rxclk_en(rxclk_en),
             .txclk_en(txclk_en));

transmitter transmitter (
            .clk                  (clk                ),
            .reset_n              (reset_n            ),
            .cts_n                (cts_n              ),
            .clken                (txclk_en           ),
            .tx                   (tx                 ),
            .tx_data_fifo_empty   (fifo_write_empty   ),
            .tx_data_fifo_data_out(fifo_write_data_out),
            .tx_data_fifo_rd_req  (fifo_write_rd_req  ));

receiver receiver (
         .clk                 (clk              ),
         .reset_n             (reset_n          ),
         .clken               (rxclk_en         ),
         .rts_n               (rts_n            ),
         .rx                  (rx               ),
         .rx_data_fifo_full   (fifo_read_full   ),
         .rx_data_fifo_wr_req (fifo_read_wr_req ),
         .rx_data_fifo_data_in(fifo_read_data_in));

apb_interface apb_interface (
              .clk                (clk                ),
              .apb_pclk           (apb_pclk           ),
              .reset_n            (reset_n            ),
              .apb_presetn        (apb_presetn        ),
              .apb_prdata         (apb_prdata         ),
              .apb_pwdata         (apb_pwdata         ),
              .apb_pslverr        (apb_pslverr        ),
              .apb_paddr          (apb_paddr          ),
              .apb_pready         (apb_pready         ),
              .apb_penable        (apb_penable        ),
              .apb_psel           (apb_psel           ),
              .apb_pwrite         (apb_pwrite         ),
              .fifo_write_data_out(fifo_write_data_out),
              .fifo_write_rd_req  (fifo_write_rd_req  ),
              .fifo_write_empty   (fifo_write_empty   ),
              .fifo_read_full     (fifo_read_full     ),
              .fifo_read_data_in  (fifo_read_data_in  ),
              .fifo_read_wr_req   (fifo_read_wr_req   ));

endmodule