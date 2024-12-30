//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Wed May 22 11:45:06 2024
//Host        : dt68-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target design_uart_wrapper.bd
//Design      : design_uart_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_uart_wrapper
   (clk_in1,
    cts_n_0,
    resetn,
    rts_n_0,
    rx_0,
    tx_0,
    usb_uart_ctsn,
    usb_uart_rtsn,
    usb_uart_rxd,
    usb_uart_txd);
  input clk_in1;
  input cts_n_0;
  input resetn;
  output rts_n_0;
  input rx_0;
  output tx_0;
  input usb_uart_ctsn;
  output usb_uart_rtsn;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire clk_in1;
  wire cts_n_0;
  wire resetn;
  wire rts_n_0;
  wire rx_0;
  wire tx_0;
  wire usb_uart_ctsn;
  wire usb_uart_rtsn;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_uart design_uart_i
       (.clk_in1(clk_in1),
        .cts_n_0(cts_n_0),
        .resetn(resetn),
        .rts_n_0(rts_n_0),
        .rx_0(rx_0),
        .tx_0(tx_0),
        .usb_uart_ctsn(usb_uart_ctsn),
        .usb_uart_rtsn(usb_uart_rtsn),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
