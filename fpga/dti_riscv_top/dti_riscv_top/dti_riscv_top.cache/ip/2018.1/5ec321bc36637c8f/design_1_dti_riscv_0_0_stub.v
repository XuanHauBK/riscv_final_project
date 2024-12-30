// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Dec 16 23:29:16 2024
// Host        : dt22-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dti_riscv_0_0_stub.v
// Design      : design_1_dti_riscv_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dti_riscv,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(apb_pclk, apb_presetn, boost_en, clk, clk_uart, 
  cts_n, gpio_i, reset_n, rx, rx_boost, gpio_o, rts_n, rts_n_boost, test_context_out, tx)
/* synthesis syn_black_box black_box_pad_pin="apb_pclk,apb_presetn,boost_en,clk,clk_uart,cts_n,gpio_i[15:0],reset_n,rx,rx_boost,gpio_o[15:0],rts_n,rts_n_boost,test_context_out[39:0],tx" */;
  input apb_pclk;
  input apb_presetn;
  input boost_en;
  input clk;
  input clk_uart;
  input cts_n;
  input [15:0]gpio_i;
  input reset_n;
  input rx;
  input rx_boost;
  output [15:0]gpio_o;
  output rts_n;
  output rts_n_boost;
  output [39:0]test_context_out;
  output tx;
endmodule
