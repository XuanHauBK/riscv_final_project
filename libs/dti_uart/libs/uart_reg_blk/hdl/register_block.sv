//-----------------------------------------------------------------------------
//    Copyright (C) 2016 by Dolphin Technology
//    All right reserved.
//    
//    Copyright Notification
//    No part may be reproduced except as authorized by written permission.
//    
//    File: ../hdl/register_block.sv
//    Project: dti_uart
//    Author: hautx0
//    Created: Sep 23rd 2024
//    Description:
//       Register Block Top Module
//    
//    History:
//    Date ------------ By ------------ Change Description
//------------------------------------------------------------------------------
module register_block ( 
  output wire [7:0]     tx_data,
  output wire [1:0]     cfg_data_bit_num,
  output wire           cfg_stop_bit_num,
  output wire           cfg_parity_en,
  output wire           cfg_parity_type,
  output wire           ctrl_start_tx,
  input                 ctrl_reg_update,
  input        [7:0]    rx_data,
  input                 stt_tx_done,
  input                 stt_rx_done,
  output wire           boost_cfg_boost_en,
  output wire           tx_done,
// APB Bridge
  input                 apb_presetn,
  input                 apb_pclk,
  input        [11:0]   apb_paddr,
  input                 apb_psel,
  input                 apb_penable,
  input                 apb_pwrite,
  input        [31:0]   apb_pwdata,
  output logic          apb_pready,
  output logic [31:0]   apb_prdata,
  output logic          apb_pslverr,
// Global Signals
  input                 clk,
  input                 reset
);

//-------------------------------------------------------------------------
// Internal Signals
//-------------------------------------------------------------------------
  wire         [11:0]   waddr;
  wire         [11:0]   raddr;
  wire         [31:0]   wdata;
  wire         [31:0]   rdata;
  wire                  wr_en;
  wire                  rd_en;
  wire                  wack;
  wire                  rack;
  wire                  waddrerr;
  wire                  raddrerr;

//-------------------------------------------------------------------------
// Module Instances
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------
// Module rb_regs Instance
//-------------------------------------------------------------------------
  rb_regs
  rb_regs ( 
    .tx_data                           (tx_data                            ),
    .cfg_data_bit_num                  (cfg_data_bit_num                   ),
    .cfg_stop_bit_num                  (cfg_stop_bit_num                   ),
    .cfg_parity_en                     (cfg_parity_en                      ),
    .cfg_parity_type                   (cfg_parity_type                    ),
    .ctrl_reg_update                   (ctrl_reg_update                    ),
    .ctrl_start_tx                     (ctrl_start_tx                      ),
    .rx_data                           (rx_data                            ),
    .stt_tx_done                       (stt_tx_done                        ),
    .stt_rx_done                       (stt_rx_done                        ),
    .boost_cfg_boost_en                (boost_cfg_boost_en                 ),
    .tx_done                           (tx_done                            ),
    .clk                               (clk                                ),
    .reset                             (reset                              ),
    .waddr                             (waddr                              ),
    .raddr                             (raddr                              ),
    .wdata                             (wdata                              ),
    .rdata                             (rdata                              ),
    .wr_en                             (wr_en                              ),
    .rd_en                             (rd_en                              ),
    .wack                              (wack                               ),
    .rack                              (rack                               ),
    .waddrerr                          (waddrerr                           ),
    .raddrerr                          (raddrerr                           )
  ); 
//-------------------------------------------------------------------------
// Module rb_apb_bridge Instance
//-------------------------------------------------------------------------
  rb_apb_bridge
  rb_apb_bridge ( 
    .apb_presetn                       (apb_presetn                        ),
    .apb_pclk                          (apb_pclk                           ),
    .apb_paddr                         (apb_paddr                          ),
    .apb_psel                          (apb_psel                           ),
    .apb_penable                       (apb_penable                        ),
    .apb_pwrite                        (apb_pwrite                         ),
    .apb_pwdata                        (apb_pwdata                         ),
    .apb_pready                        (apb_pready                         ),
    .apb_prdata                        (apb_prdata                         ),
    .apb_pslverr                       (apb_pslverr                        ),
    .rd_en                             (rd_en                              ),
    .raddr                             (raddr                              ),
    .rdata                             (rdata                              ),
    .rack                              (rack                               ),
    .raddrerr                          (raddrerr                           ),
    .wr_en                             (wr_en                              ),
    .waddr                             (waddr                              ),
    .wdata                             (wdata                              ),
    .wack                              (wack                               ),
    .waddrerr                          (waddrerr                           )
  ); 

endmodule