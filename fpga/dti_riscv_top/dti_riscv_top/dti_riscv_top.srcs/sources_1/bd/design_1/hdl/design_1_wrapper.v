//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Tue Dec 17 11:42:11 2024
//Host        : dt22-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_in1,
    ctsn,
    gpio_in,
    gpio_out,
    resetn,
    rtsn,
    rx,
    tx);
  input clk_in1;
  input ctsn;
  input [15:0]gpio_in;
  output [15:0]gpio_out;
  input resetn;
  output rtsn;
  input rx;
  output tx;

  wire clk_in1;
  wire ctsn;
  wire [15:0]gpio_in;
  wire [15:0]gpio_out;
  wire resetn;
  wire rtsn;
  wire rx;
  wire tx;

  design_1 design_1_i
       (.clk_in1(clk_in1),
        .ctsn(ctsn),
        .gpio_in(gpio_in),
        .gpio_out(gpio_out),
        .resetn(resetn),
        .rtsn(rtsn),
        .rx(rx),
        .tx(tx));
endmodule
