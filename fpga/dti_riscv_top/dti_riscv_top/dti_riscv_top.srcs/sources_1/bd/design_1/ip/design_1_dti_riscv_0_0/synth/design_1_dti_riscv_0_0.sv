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


// IP VLNV: user.org:user:dti_riscv:1.0
// IP Revision: 2

(* X_CORE_INFO = "dti_riscv,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "design_1_dti_riscv_0_0,dti_riscv,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_dti_riscv_0_0 (
  apb_pclk,
  apb_presetn,
  boost_en,
  clk,
  clk_uart,
  cts_n,
  gpio_i,
  reset_n,
  rx,
  rx_boost,
  gpio_o,
  rts_n,
  rts_n_boost,
  test_context_out,
  tx
);

input wire apb_pclk;
input wire apb_presetn;
input wire boost_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire clk_uart;
input wire cts_n;
input wire [15 : 0] gpio_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
input wire rx;
input wire rx_boost;
output wire [15 : 0] gpio_o;
output wire rts_n;
output wire rts_n_boost;
output wire [39 : 0] test_context_out;
output wire tx;

  dti_riscv inst (
    .apb_pclk(apb_pclk),
    .apb_presetn(apb_presetn),
    .boost_en(boost_en),
    .clk(clk),
    .clk_uart(clk_uart),
    .cts_n(cts_n),
    .gpio_i(gpio_i),
    .reset_n(reset_n),
    .rx(rx),
    .rx_boost(rx_boost),
    .gpio_o(gpio_o),
    .rts_n(rts_n),
    .rts_n_boost(rts_n_boost),
    .test_context_out(test_context_out),
    .tx(tx)
  );
endmodule
