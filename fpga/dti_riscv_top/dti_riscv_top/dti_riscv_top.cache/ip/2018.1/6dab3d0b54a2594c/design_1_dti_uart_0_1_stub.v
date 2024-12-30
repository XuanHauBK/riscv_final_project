// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Dec 16 23:26:33 2024
// Host        : dt22-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dti_uart_0_1_stub.v
// Design      : design_1_dti_uart_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dti_uart,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset_n, pclk, presetn, psel, penable, pwrite, 
  paddr, pstrb, pwdata, rx, cts_n, pready, pslverr, prdata, boost_en, tx, rts_n)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,pclk,presetn,psel,penable,pwrite,paddr[11:0],pstrb[3:0],pwdata[31:0],rx,cts_n,pready,pslverr,prdata[31:0],boost_en,tx,rts_n" */;
  input clk;
  input reset_n;
  input pclk;
  input presetn;
  input psel;
  input penable;
  input pwrite;
  input [11:0]paddr;
  input [3:0]pstrb;
  input [31:0]pwdata;
  input rx;
  input cts_n;
  output pready;
  output pslverr;
  output [31:0]prdata;
  output boost_en;
  output tx;
  output rts_n;
endmodule
