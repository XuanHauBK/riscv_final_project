// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:dti_uart:1.0
// IP Revision: 2

(* X_CORE_INFO = "dti_uart,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "design_1_dti_uart_0_1,dti_uart,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_dti_uart_0_1 (
  clk,
  reset_n,
  pclk,
  presetn,
  psel,
  penable,
  pwrite,
  paddr,
  pstrb,
  pwdata,
  rx,
  cts_n,
  pready,
  pslverr,
  prdata,
  boost_en,
  tx,
  rts_n
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
input wire pclk;
input wire presetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSEL" *)
input wire psel;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PENABLE" *)
input wire penable;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PWRITE" *)
input wire pwrite;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PADDR" *)
input wire [11 : 0] paddr;
input wire [3 : 0] pstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PWDATA" *)
input wire [31 : 0] pwdata;
input wire rx;
input wire cts_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PREADY" *)
output wire pready;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSLVERR" *)
output wire pslverr;
(* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PRDATA" *)
output wire [31 : 0] prdata;
output wire boost_en;
output wire tx;
output wire rts_n;

  dti_uart inst (
    .clk(clk),
    .reset_n(reset_n),
    .pclk(pclk),
    .presetn(presetn),
    .psel(psel),
    .penable(penable),
    .pwrite(pwrite),
    .paddr(paddr),
    .pstrb(pstrb),
    .pwdata(pwdata),
    .rx(rx),
    .cts_n(cts_n),
    .pready(pready),
    .pslverr(pslverr),
    .prdata(prdata),
    .boost_en(boost_en),
    .tx(tx),
    .rts_n(rts_n)
  );
endmodule
