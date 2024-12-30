// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Dec 16 23:26:33 2024
// Host        : dt22-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dti_uart_0_1_sim_netlist.v
// Design      : design_1_dti_uart_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dti_uart_0_1,dti_uart,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "dti_uart,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
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
    rts_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW" *) input reset_n;
  input pclk;
  input presetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSEL" *) input psel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PENABLE" *) input penable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PWRITE" *) input pwrite;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PADDR" *) input [11:0]paddr;
  input [3:0]pstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PWDATA" *) input [31:0]pwdata;
  input rx;
  input cts_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PREADY" *) output pready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PSLVERR" *) output pslverr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:apb:1.0 APB PRDATA" *) output [31:0]prdata;
  output boost_en;
  output tx;
  output rts_n;

  wire boost_en;
  wire clk;
  wire cts_n;
  wire inst_n_11;
  wire [11:0]paddr;
  wire penable;
  wire [31:0]prdata;
  wire \prdata[4]_INST_0_i_1_n_0 ;
  wire \prdata[4]_INST_0_i_2_n_0 ;
  wire \prdata[6]_INST_0_i_2_n_0 ;
  wire pready;
  wire psel;
  wire pslverr;
  wire pslverr_INST_0_i_1_n_0;
  wire pslverr_INST_0_i_2_n_0;
  wire pslverr_INST_0_i_3_n_0;
  wire pslverr_INST_0_i_5_n_0;
  wire [31:0]pwdata;
  wire pwrite;
  wire reset_n;
  wire rts_n;
  wire rx;
  wire tx;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart inst
       (.boost_en(boost_en),
        .clk(clk),
        .cts_n(cts_n),
        .\dti_uart/transmitter/stt_tx_done_reg_0 (inst_n_11),
        .paddr(paddr),
        .\paddr[5]_0 (\prdata[4]_INST_0_i_2_n_0 ),
        .\paddr[5]_1 (\prdata[4]_INST_0_i_1_n_0 ),
        .\paddr[5]_2 (pslverr_INST_0_i_2_n_0),
        .paddr_5_sp_1(pslverr_INST_0_i_1_n_0),
        .penable(penable),
        .prdata(prdata[7:0]),
        .pready(pready),
        .psel(psel),
        .pslverr(pslverr),
        .pwdata(pwdata[7:0]),
        .pwrite(pwrite),
        .pwrite_0(\prdata[6]_INST_0_i_2_n_0 ),
        .reset_n(reset_n),
        .rts_n(rts_n),
        .rx(rx),
        .tx(tx));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[10]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[10]),
        .O(prdata[10]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[11]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[11]),
        .O(prdata[11]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[12]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[12]),
        .O(prdata[12]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[13]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[13]),
        .O(prdata[13]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[14]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[14]),
        .O(prdata[14]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[15]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[15]),
        .O(prdata[15]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[16]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[16]),
        .O(prdata[16]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[17]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[17]),
        .O(prdata[17]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[18]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[18]),
        .O(prdata[18]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[19]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[19]),
        .O(prdata[19]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[20]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[20]),
        .O(prdata[20]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[21]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[21]),
        .O(prdata[21]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[22]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[22]),
        .O(prdata[22]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[23]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[23]),
        .O(prdata[23]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[24]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[24]),
        .O(prdata[24]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[25]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[25]),
        .O(prdata[25]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[26]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[26]),
        .O(prdata[26]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[27]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[27]),
        .O(prdata[27]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[28]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[28]),
        .O(prdata[28]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[29]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[29]),
        .O(prdata[29]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[30]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[30]),
        .O(prdata[30]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[31]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[31]),
        .O(prdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \prdata[4]_INST_0_i_1 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(paddr[3]),
        .I2(paddr[2]),
        .O(\prdata[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \prdata[4]_INST_0_i_2 
       (.I0(paddr[2]),
        .I1(pslverr_INST_0_i_1_n_0),
        .I2(paddr[3]),
        .O(\prdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \prdata[6]_INST_0_i_2 
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .I2(paddr[4]),
        .I3(inst_n_11),
        .I4(pslverr_INST_0_i_5_n_0),
        .I5(pslverr_INST_0_i_3_n_0),
        .O(\prdata[6]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[8]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[8]),
        .O(prdata[8]));
  LUT3 #(
    .INIT(8'h70)) 
    \prdata[9]_INST_0 
       (.I0(pslverr_INST_0_i_1_n_0),
        .I1(pslverr_INST_0_i_2_n_0),
        .I2(pwdata[9]),
        .O(prdata[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pslverr_INST_0_i_1
       (.I0(pslverr_INST_0_i_3_n_0),
        .I1(paddr[8]),
        .I2(paddr[9]),
        .I3(paddr[6]),
        .I4(inst_n_11),
        .I5(paddr[4]),
        .O(pslverr_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    pslverr_INST_0_i_2
       (.I0(pslverr_INST_0_i_3_n_0),
        .I1(paddr[3]),
        .I2(paddr[4]),
        .I3(pslverr_INST_0_i_5_n_0),
        .I4(inst_n_11),
        .O(pslverr_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    pslverr_INST_0_i_3
       (.I0(paddr[1]),
        .I1(paddr[0]),
        .I2(penable),
        .I3(psel),
        .I4(pwrite),
        .O(pslverr_INST_0_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    pslverr_INST_0_i_5
       (.I0(paddr[6]),
        .I1(paddr[9]),
        .I2(paddr[8]),
        .O(pslverr_INST_0_i_5_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart
   (rts_n,
    boost_en,
    prdata,
    pready,
    \dti_uart/transmitter/stt_tx_done_reg_0 ,
    tx,
    pslverr,
    clk,
    pwdata,
    paddr_5_sp_1,
    paddr,
    \paddr[5]_0 ,
    \paddr[5]_1 ,
    \paddr[5]_2 ,
    pwrite_0,
    psel,
    pwrite,
    penable,
    reset_n,
    rx,
    cts_n);
  output rts_n;
  output boost_en;
  output [7:0]prdata;
  output pready;
  output \dti_uart/transmitter/stt_tx_done_reg_0 ;
  output tx;
  output pslverr;
  input clk;
  input [7:0]pwdata;
  input paddr_5_sp_1;
  input [11:0]paddr;
  input \paddr[5]_0 ;
  input \paddr[5]_1 ;
  input \paddr[5]_2 ;
  input pwrite_0;
  input psel;
  input pwrite;
  input penable;
  input reset_n;
  input rx;
  input cts_n;

  wire \bitpos_data[0]_i_1_n_0 ;
  wire \bitpos_data[1]_i_1_n_0 ;
  wire \bitpos_data[2]_i_1_n_0 ;
  wire \bitpos_data[2]_i_2_n_0 ;
  wire \bitpos_data[3]_i_1_n_0 ;
  wire \bitpos_data[3]_i_2_n_0 ;
  wire \bitpos_stop[1]_i_2_n_0 ;
  wire boost_cfg_boost_en_i_1_n_0;
  wire boost_cfg_boost_en_i_2_n_0;
  wire boost_cfg_boost_en_i_4_n_0;
  wire boost_en;
  wire clk;
  wire ctrl_start_tx_i_1_n_0;
  wire ctrl_start_tx_i_2_n_0;
  wire cts_n;
  wire \current_state[0]_i_2__0_n_0 ;
  wire \current_state[0]_i_2_n_0 ;
  wire \current_state[0]_i_3__0_n_0 ;
  wire \current_state[0]_i_3_n_0 ;
  wire \current_state[0]_i_4_n_0 ;
  wire \current_state[0]_i_5_n_0 ;
  wire \current_state[0]_i_6_n_0 ;
  wire \current_state[1]_i_2__0_n_0 ;
  wire \current_state[1]_i_2_n_0 ;
  wire [4:0]\dti_uart/baudrate_gen/rx_acc ;
  wire [8:0]\dti_uart/baudrate_gen/tx_acc ;
  wire [8:0]\dti_uart/baudrate_gen/tx_acc_0 ;
  wire \dti_uart/receiver/bitpos_data_reg_n_0_[0] ;
  wire \dti_uart/receiver/bitpos_data_reg_n_0_[1] ;
  wire \dti_uart/receiver/bitpos_data_reg_n_0_[2] ;
  wire \dti_uart/receiver/bitpos_data_reg_n_0_[3] ;
  wire \dti_uart/receiver/bitpos_stop[0]_i_1_n_0 ;
  wire \dti_uart/receiver/bitpos_stop[1]_i_1_n_0 ;
  wire \dti_uart/receiver/bitpos_stop_reg_n_0_[0] ;
  wire \dti_uart/receiver/bitpos_stop_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire [1:0]\dti_uart/receiver/current_state ;
  wire [1:0]\dti_uart/receiver/next_state ;
  wire \dti_uart/receiver/sample ;
  wire \dti_uart/receiver/sample_reg_n_0_[0] ;
  wire \dti_uart/receiver/sample_reg_n_0_[1] ;
  wire \dti_uart/receiver/sample_reg_n_0_[2] ;
  wire \dti_uart/receiver/sample_reg_n_0_[3] ;
  wire \dti_uart/receiver/scratch[0]_i_1_n_0 ;
  wire \dti_uart/receiver/scratch[1]_i_1_n_0 ;
  wire \dti_uart/receiver/scratch[2]_i_1_n_0 ;
  wire \dti_uart/receiver/scratch[3]_i_1_n_0 ;
  wire \dti_uart/receiver/scratch[4]_i_1_n_0 ;
  wire \dti_uart/receiver/scratch[5]_i_1_n_0 ;
  wire \dti_uart/receiver/scratch[6]_i_1_n_0 ;
  wire \dti_uart/receiver/scratch[7]_i_1_n_0 ;
  wire \dti_uart/receiver/scratch_reg_n_0_[0] ;
  wire \dti_uart/receiver/scratch_reg_n_0_[1] ;
  wire \dti_uart/receiver/scratch_reg_n_0_[2] ;
  wire \dti_uart/receiver/scratch_reg_n_0_[3] ;
  wire \dti_uart/receiver/scratch_reg_n_0_[4] ;
  wire \dti_uart/receiver/scratch_reg_n_0_[5] ;
  wire \dti_uart/receiver/scratch_reg_n_0_[6] ;
  wire \dti_uart/receiver/scratch_reg_n_0_[7] ;
  wire \dti_uart/register_block/rb_apb_bridge/wr_en ;
  wire \dti_uart/register_block/rb_regs/boost_cfg_wen ;
  wire [1:0]\dti_uart/register_block/rb_regs/cfg_data_bit_num ;
  wire \dti_uart/register_block/rb_regs/cfg_parity_type ;
  wire \dti_uart/register_block/rb_regs/cfg_wen ;
  wire [0:0]\dti_uart/register_block/rb_regs/mux_ctrl ;
  wire [7:0]\dti_uart/register_block/rb_regs/mux_tx ;
  wire [7:0]\dti_uart/register_block/rb_regs/rx_data_reg ;
  wire \dti_uart/register_block/rb_regs/stt_rx_done_reg ;
  wire \dti_uart/register_block/rb_regs/stt_tx_done_reg ;
  wire \dti_uart/register_block/rb_regs/wack ;
  wire \dti_uart/register_block/rb_regs/waddrerr ;
  wire \dti_uart/transmitter/bitpos_data[0]_i_1_n_0 ;
  wire \dti_uart/transmitter/bitpos_data[1]_i_1_n_0 ;
  wire \dti_uart/transmitter/bitpos_data[2]_i_1_n_0 ;
  wire \dti_uart/transmitter/bitpos_data_reg_n_0_[0] ;
  wire \dti_uart/transmitter/bitpos_data_reg_n_0_[1] ;
  wire \dti_uart/transmitter/bitpos_data_reg_n_0_[2] ;
  wire [1:0]\dti_uart/transmitter/bitpos_stop ;
  wire \dti_uart/transmitter/bitpos_stop[0]_i_1_n_0 ;
  wire \dti_uart/transmitter/bitpos_stop[1]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [1:0]\dti_uart/transmitter/current_state ;
  wire [1:0]\dti_uart/transmitter/next_state ;
  wire \dti_uart/transmitter/stt_tx_done ;
  wire \dti_uart/transmitter/stt_tx_done0 ;
  wire \dti_uart/transmitter/stt_tx_done_reg_0 ;
  wire [1:0]p_0_in;
  wire [11:0]paddr;
  wire \paddr[5]_0 ;
  wire \paddr[5]_1 ;
  wire \paddr[5]_2 ;
  wire paddr_5_sn_1;
  wire penable;
  wire [7:0]prdata;
  wire \prdata[0]_INST_0_i_1_n_0 ;
  wire \prdata[0]_INST_0_i_2_n_0 ;
  wire \prdata[1]_INST_0_i_1_n_0 ;
  wire \prdata[1]_INST_0_i_2_n_0 ;
  wire \prdata[2]_INST_0_i_1_n_0 ;
  wire \prdata[3]_INST_0_i_1_n_0 ;
  wire \prdata[4]_INST_0_i_3_n_0 ;
  wire \prdata[5]_INST_0_i_1_n_0 ;
  wire \prdata[6]_INST_0_i_1_n_0 ;
  wire \prdata[7]_INST_0_i_1_n_0 ;
  wire pready;
  wire psel;
  wire pslverr;
  wire [7:0]pwdata;
  wire pwrite;
  wire pwrite_0;
  wire reset_n;
  wire rts_n;
  wire rx;
  wire \rx_acc[0]_i_1_n_0 ;
  wire \rx_acc[1]_i_1_n_0 ;
  wire \rx_acc[2]_i_1_n_0 ;
  wire \rx_acc[3]_i_1_n_0 ;
  wire \rx_acc[4]_i_1_n_0 ;
  wire \sample[0]_i_1_n_0 ;
  wire \sample[1]_i_1_n_0 ;
  wire \sample[2]_i_1_n_0 ;
  wire \sample[3]_i_2_n_0 ;
  wire \sample[3]_i_3_n_0 ;
  wire \sample[3]_i_4_n_0 ;
  wire \sample[3]_i_5_n_0 ;
  wire \scratch[4]_i_2_n_0 ;
  wire \scratch[5]_i_2_n_0 ;
  wire \scratch[6]_i_2_n_0 ;
  wire \scratch[7]_i_2_n_0 ;
  wire stt_rx_done_i_1_n_0;
  wire stt_rx_done_i_2_n_0;
  wire stt_rx_done_i_3_n_0;
  wire stt_tx_done_i_1_n_0;
  wire stt_tx_done_i_3_n_0;
  wire stt_tx_done_i_4_n_0;
  wire stt_tx_done_i_5_n_0;
  wire stt_tx_done_i_6_n_0;
  wire stt_tx_done_i_7_n_0;
  wire tx;
  wire tx_INST_0_i_1_n_0;
  wire tx_INST_0_i_2_n_0;
  wire tx_INST_0_i_3_n_0;
  wire tx_INST_0_i_4_n_0;
  wire \tx_acc[0]_i_2_n_0 ;
  wire \tx_acc[7]_i_2_n_0 ;
  wire \tx_acc[8]_i_2_n_0 ;
  wire \tx_acc[8]_i_3_n_0 ;
  wire \tx_data[7]_i_1_n_0 ;
  wire \tx_data[7]_i_2_n_0 ;
  wire waddrerr_i_1_n_0;
  wire waddrerr_i_2_n_0;
  wire waddrerr_i_3_n_0;

  assign paddr_5_sn_1 = paddr_5_sp_1;
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_dti_uart/receiver/current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/next_state [0]),
        .Q(\dti_uart/receiver/current_state [0]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_dti_uart/receiver/current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/next_state [1]),
        .Q(\dti_uart/receiver/current_state [1]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:11,iSTATE2:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_dti_uart/transmitter/current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/transmitter/next_state [0]),
        .Q(\dti_uart/transmitter/current_state [0]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:11,iSTATE2:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_dti_uart/transmitter/current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/transmitter/next_state [1]),
        .Q(\dti_uart/transmitter/current_state [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \bitpos_data[0]_i_1 
       (.I0(\dti_uart/receiver/current_state [0]),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .O(\bitpos_data[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \bitpos_data[1]_i_1 
       (.I0(\dti_uart/receiver/current_state [0]),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .O(\bitpos_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \bitpos_data[2]_i_1 
       (.I0(\dti_uart/receiver/current_state [0]),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ),
        .I3(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .O(\bitpos_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0070)) 
    \bitpos_data[2]_i_2 
       (.I0(\current_state[0]_i_5_n_0 ),
        .I1(\dti_uart/transmitter/current_state [1]),
        .I2(reset_n),
        .I3(\dti_uart/transmitter/current_state [0]),
        .O(\bitpos_data[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \bitpos_data[3]_i_1 
       (.I0(\dti_uart/receiver/current_state [1]),
        .I1(\bitpos_stop[1]_i_2_n_0 ),
        .I2(\dti_uart/receiver/current_state [0]),
        .O(\bitpos_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \bitpos_data[3]_i_2 
       (.I0(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .I3(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ),
        .I4(\dti_uart/receiver/current_state [0]),
        .O(\bitpos_data[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \bitpos_stop[1]_i_2 
       (.I0(\sample[3]_i_3_n_0 ),
        .I1(\dti_uart/receiver/sample_reg_n_0_[3] ),
        .I2(\dti_uart/receiver/sample_reg_n_0_[2] ),
        .I3(\dti_uart/receiver/sample_reg_n_0_[1] ),
        .I4(\dti_uart/receiver/sample_reg_n_0_[0] ),
        .O(\bitpos_stop[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    boost_cfg_boost_en_i_1
       (.I0(reset_n),
        .O(boost_cfg_boost_en_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    boost_cfg_boost_en_i_2
       (.I0(pwdata[0]),
        .I1(\dti_uart/register_block/rb_regs/boost_cfg_wen ),
        .I2(boost_en),
        .O(boost_cfg_boost_en_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    boost_cfg_boost_en_i_3
       (.I0(boost_cfg_boost_en_i_4_n_0),
        .I1(paddr[2]),
        .I2(pwrite),
        .I3(penable),
        .I4(psel),
        .I5(stt_tx_done_i_5_n_0),
        .O(\dti_uart/register_block/rb_regs/boost_cfg_wen ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    boost_cfg_boost_en_i_4
       (.I0(\dti_uart/transmitter/stt_tx_done_reg_0 ),
        .I1(paddr[6]),
        .I2(paddr[9]),
        .I3(paddr[8]),
        .I4(paddr[4]),
        .I5(paddr[3]),
        .O(boost_cfg_boost_en_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \cfg_data_bit_num[1]_i_1 
       (.I0(paddr[2]),
        .I1(\tx_data[7]_i_2_n_0 ),
        .O(\dti_uart/register_block/rb_regs/cfg_wen ));
  LUT5 #(
    .INIT(32'hCFAA00AA)) 
    ctrl_start_tx_i_1
       (.I0(pwdata[0]),
        .I1(\dti_uart/transmitter/current_state [1]),
        .I2(\dti_uart/transmitter/current_state [0]),
        .I3(ctrl_start_tx_i_2_n_0),
        .I4(\dti_uart/register_block/rb_regs/mux_ctrl ),
        .O(ctrl_start_tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    ctrl_start_tx_i_2
       (.I0(paddr[3]),
        .I1(paddr[2]),
        .I2(stt_tx_done_i_6_n_0),
        .I3(waddrerr_i_3_n_0),
        .I4(paddr[1]),
        .I5(paddr[0]),
        .O(ctrl_start_tx_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF000000F02222)) 
    \current_state[0]_i_1 
       (.I0(\current_state[0]_i_2__0_n_0 ),
        .I1(\current_state[0]_i_3__0_n_0 ),
        .I2(\dti_uart/transmitter/current_state [1]),
        .I3(\current_state[0]_i_4_n_0 ),
        .I4(\dti_uart/transmitter/current_state [0]),
        .I5(\current_state[0]_i_5_n_0 ),
        .O(\dti_uart/transmitter/next_state [0]));
  LUT4 #(
    .INIT(16'h0C07)) 
    \current_state[0]_i_1__0 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\dti_uart/receiver/current_state [0]),
        .I2(\dti_uart/receiver/current_state [1]),
        .I3(\current_state[0]_i_3_n_0 ),
        .O(\dti_uart/receiver/next_state [0]));
  LUT6 #(
    .INIT(64'h0400000400402000)) 
    \current_state[0]_i_2 
       (.I0(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I2(\dti_uart/register_block/rb_regs/cfg_data_bit_num [0]),
        .I3(\dti_uart/register_block/rb_regs/cfg_data_bit_num [1]),
        .I4(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ),
        .I5(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .O(\current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h90000090FFFFFFFF)) 
    \current_state[0]_i_2__0 
       (.I0(\dti_uart/transmitter/bitpos_data_reg_n_0_[0] ),
        .I1(\dti_uart/register_block/rb_regs/cfg_data_bit_num [0]),
        .I2(\dti_uart/transmitter/bitpos_data_reg_n_0_[2] ),
        .I3(\dti_uart/register_block/rb_regs/cfg_data_bit_num [1]),
        .I4(\dti_uart/transmitter/bitpos_data_reg_n_0_[1] ),
        .I5(\dti_uart/transmitter/current_state [1]),
        .O(\current_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_state[0]_i_3 
       (.I0(\dti_uart/receiver/sample_reg_n_0_[2] ),
        .I1(\dti_uart/receiver/sample_reg_n_0_[0] ),
        .I2(\dti_uart/receiver/sample_reg_n_0_[1] ),
        .I3(\dti_uart/receiver/sample_reg_n_0_[3] ),
        .O(\current_state[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \current_state[0]_i_3__0 
       (.I0(\dti_uart/transmitter/current_state [1]),
        .I1(cts_n),
        .I2(\dti_uart/register_block/rb_regs/mux_ctrl ),
        .O(\current_state[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h4029)) 
    \current_state[0]_i_4 
       (.I0(\dti_uart/transmitter/bitpos_stop [0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\dti_uart/transmitter/bitpos_stop [1]),
        .O(\current_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \current_state[0]_i_5 
       (.I0(\dti_uart/baudrate_gen/tx_acc [4]),
        .I1(\dti_uart/baudrate_gen/tx_acc [6]),
        .I2(\dti_uart/baudrate_gen/tx_acc [7]),
        .I3(\current_state[0]_i_6_n_0 ),
        .O(\current_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_state[0]_i_6 
       (.I0(\dti_uart/baudrate_gen/tx_acc [1]),
        .I1(\dti_uart/baudrate_gen/tx_acc [0]),
        .I2(\dti_uart/baudrate_gen/tx_acc [5]),
        .I3(\dti_uart/baudrate_gen/tx_acc [8]),
        .I4(\dti_uart/baudrate_gen/tx_acc [2]),
        .I5(\dti_uart/baudrate_gen/tx_acc [3]),
        .O(\current_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEB7EFFFFFFFF0000)) 
    \current_state[1]_i_1 
       (.I0(\dti_uart/transmitter/bitpos_stop [1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\dti_uart/transmitter/bitpos_stop [0]),
        .I4(\current_state[1]_i_2_n_0 ),
        .I5(\dti_uart/transmitter/current_state [1]),
        .O(\dti_uart/transmitter/next_state [1]));
  LUT4 #(
    .INIT(16'h05C0)) 
    \current_state[1]_i_1__0 
       (.I0(stt_rx_done_i_2_n_0),
        .I1(\current_state[1]_i_2__0_n_0 ),
        .I2(\dti_uart/receiver/current_state [0]),
        .I3(\dti_uart/receiver/current_state [1]),
        .O(\dti_uart/receiver/next_state [1]));
  LUT2 #(
    .INIT(4'h2)) 
    \current_state[1]_i_2 
       (.I0(\dti_uart/transmitter/current_state [0]),
        .I1(\current_state[0]_i_5_n_0 ),
        .O(\current_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_state[1]_i_2__0 
       (.I0(\current_state[0]_i_2_n_0 ),
        .I1(\dti_uart/receiver/sample_reg_n_0_[3] ),
        .I2(\dti_uart/receiver/sample_reg_n_0_[1] ),
        .I3(\dti_uart/receiver/sample_reg_n_0_[0] ),
        .I4(\dti_uart/receiver/sample_reg_n_0_[2] ),
        .O(\current_state[1]_i_2__0_n_0 ));
  FDCE \dti_uart/baudrate_gen/rx_acc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\rx_acc[0]_i_1_n_0 ),
        .Q(\dti_uart/baudrate_gen/rx_acc [0]));
  FDCE \dti_uart/baudrate_gen/rx_acc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\rx_acc[1]_i_1_n_0 ),
        .Q(\dti_uart/baudrate_gen/rx_acc [1]));
  FDCE \dti_uart/baudrate_gen/rx_acc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\rx_acc[2]_i_1_n_0 ),
        .Q(\dti_uart/baudrate_gen/rx_acc [2]));
  FDCE \dti_uart/baudrate_gen/rx_acc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\rx_acc[3]_i_1_n_0 ),
        .Q(\dti_uart/baudrate_gen/rx_acc [3]));
  FDCE \dti_uart/baudrate_gen/rx_acc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\rx_acc[4]_i_1_n_0 ),
        .Q(\dti_uart/baudrate_gen/rx_acc [4]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [0]),
        .Q(\dti_uart/baudrate_gen/tx_acc [0]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [1]),
        .Q(\dti_uart/baudrate_gen/tx_acc [1]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [2]),
        .Q(\dti_uart/baudrate_gen/tx_acc [2]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [3]),
        .Q(\dti_uart/baudrate_gen/tx_acc [3]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [4]),
        .Q(\dti_uart/baudrate_gen/tx_acc [4]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [5]),
        .Q(\dti_uart/baudrate_gen/tx_acc [5]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [6]),
        .Q(\dti_uart/baudrate_gen/tx_acc [6]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [7]),
        .Q(\dti_uart/baudrate_gen/tx_acc [7]));
  FDCE \dti_uart/baudrate_gen/tx_acc_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/baudrate_gen/tx_acc_0 [8]),
        .Q(\dti_uart/baudrate_gen/tx_acc [8]));
  FDCE \dti_uart/receiver/bitpos_data_reg[0] 
       (.C(clk),
        .CE(\bitpos_data[3]_i_1_n_0 ),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\bitpos_data[0]_i_1_n_0 ),
        .Q(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ));
  FDCE \dti_uart/receiver/bitpos_data_reg[1] 
       (.C(clk),
        .CE(\bitpos_data[3]_i_1_n_0 ),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\bitpos_data[1]_i_1_n_0 ),
        .Q(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ));
  FDCE \dti_uart/receiver/bitpos_data_reg[2] 
       (.C(clk),
        .CE(\bitpos_data[3]_i_1_n_0 ),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\bitpos_data[2]_i_1_n_0 ),
        .Q(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ));
  FDCE \dti_uart/receiver/bitpos_data_reg[3] 
       (.C(clk),
        .CE(\bitpos_data[3]_i_1_n_0 ),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\bitpos_data[3]_i_2_n_0 ),
        .Q(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'hBA40)) 
    \dti_uart/receiver/bitpos_stop[0]_i_1 
       (.I0(\dti_uart/receiver/current_state [0]),
        .I1(\bitpos_stop[1]_i_2_n_0 ),
        .I2(\dti_uart/receiver/current_state [1]),
        .I3(\dti_uart/receiver/bitpos_stop_reg_n_0_[0] ),
        .O(\dti_uart/receiver/bitpos_stop[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCC2000)) 
    \dti_uart/receiver/bitpos_stop[1]_i_1 
       (.I0(\dti_uart/receiver/bitpos_stop_reg_n_0_[0] ),
        .I1(\dti_uart/receiver/current_state [0]),
        .I2(\bitpos_stop[1]_i_2_n_0 ),
        .I3(\dti_uart/receiver/current_state [1]),
        .I4(\dti_uart/receiver/bitpos_stop_reg_n_0_[1] ),
        .O(\dti_uart/receiver/bitpos_stop[1]_i_1_n_0 ));
  FDCE \dti_uart/receiver/bitpos_stop_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/bitpos_stop[0]_i_1_n_0 ),
        .Q(\dti_uart/receiver/bitpos_stop_reg_n_0_[0] ));
  FDCE \dti_uart/receiver/bitpos_stop_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/bitpos_stop[1]_i_1_n_0 ),
        .Q(\dti_uart/receiver/bitpos_stop_reg_n_0_[1] ));
  FDCE \dti_uart/receiver/sample_reg[0] 
       (.C(clk),
        .CE(\dti_uart/receiver/sample ),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\sample[0]_i_1_n_0 ),
        .Q(\dti_uart/receiver/sample_reg_n_0_[0] ));
  FDCE \dti_uart/receiver/sample_reg[1] 
       (.C(clk),
        .CE(\dti_uart/receiver/sample ),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\sample[1]_i_1_n_0 ),
        .Q(\dti_uart/receiver/sample_reg_n_0_[1] ));
  FDCE \dti_uart/receiver/sample_reg[2] 
       (.C(clk),
        .CE(\dti_uart/receiver/sample ),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\sample[2]_i_1_n_0 ),
        .Q(\dti_uart/receiver/sample_reg_n_0_[2] ));
  FDCE \dti_uart/receiver/sample_reg[3] 
       (.C(clk),
        .CE(\dti_uart/receiver/sample ),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\sample[3]_i_2_n_0 ),
        .Q(\dti_uart/receiver/sample_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \dti_uart/receiver/scratch[0]_i_1 
       (.I0(rx),
        .I1(\scratch[4]_i_2_n_0 ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I3(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I4(\dti_uart/receiver/scratch_reg_n_0_[0] ),
        .O(\dti_uart/receiver/scratch[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \dti_uart/receiver/scratch[1]_i_1 
       (.I0(rx),
        .I1(\scratch[5]_i_2_n_0 ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I3(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I4(\dti_uart/receiver/scratch_reg_n_0_[1] ),
        .O(\dti_uart/receiver/scratch[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \dti_uart/receiver/scratch[2]_i_1 
       (.I0(rx),
        .I1(\scratch[6]_i_2_n_0 ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I3(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I4(\dti_uart/receiver/scratch_reg_n_0_[2] ),
        .O(\dti_uart/receiver/scratch[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \dti_uart/receiver/scratch[3]_i_1 
       (.I0(rx),
        .I1(\scratch[7]_i_2_n_0 ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I3(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I4(\dti_uart/receiver/scratch_reg_n_0_[3] ),
        .O(\dti_uart/receiver/scratch[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \dti_uart/receiver/scratch[4]_i_1 
       (.I0(rx),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I3(\scratch[4]_i_2_n_0 ),
        .I4(\dti_uart/receiver/scratch_reg_n_0_[4] ),
        .O(\dti_uart/receiver/scratch[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \dti_uart/receiver/scratch[5]_i_1 
       (.I0(rx),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I3(\scratch[5]_i_2_n_0 ),
        .I4(\dti_uart/receiver/scratch_reg_n_0_[5] ),
        .O(\dti_uart/receiver/scratch[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \dti_uart/receiver/scratch[6]_i_1 
       (.I0(rx),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I3(\scratch[6]_i_2_n_0 ),
        .I4(\dti_uart/receiver/scratch_reg_n_0_[6] ),
        .O(\dti_uart/receiver/scratch[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \dti_uart/receiver/scratch[7]_i_1 
       (.I0(rx),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[3] ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[2] ),
        .I3(\scratch[7]_i_2_n_0 ),
        .I4(\dti_uart/receiver/scratch_reg_n_0_[7] ),
        .O(\dti_uart/receiver/scratch[7]_i_1_n_0 ));
  FDCE \dti_uart/receiver/scratch_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/scratch[0]_i_1_n_0 ),
        .Q(\dti_uart/receiver/scratch_reg_n_0_[0] ));
  FDCE \dti_uart/receiver/scratch_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/scratch[1]_i_1_n_0 ),
        .Q(\dti_uart/receiver/scratch_reg_n_0_[1] ));
  FDCE \dti_uart/receiver/scratch_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/scratch[2]_i_1_n_0 ),
        .Q(\dti_uart/receiver/scratch_reg_n_0_[2] ));
  FDCE \dti_uart/receiver/scratch_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/scratch[3]_i_1_n_0 ),
        .Q(\dti_uart/receiver/scratch_reg_n_0_[3] ));
  FDCE \dti_uart/receiver/scratch_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/scratch[4]_i_1_n_0 ),
        .Q(\dti_uart/receiver/scratch_reg_n_0_[4] ));
  FDCE \dti_uart/receiver/scratch_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/scratch[5]_i_1_n_0 ),
        .Q(\dti_uart/receiver/scratch_reg_n_0_[5] ));
  FDCE \dti_uart/receiver/scratch_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/scratch[6]_i_1_n_0 ),
        .Q(\dti_uart/receiver/scratch_reg_n_0_[6] ));
  FDCE \dti_uart/receiver/scratch_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(\dti_uart/receiver/scratch[7]_i_1_n_0 ),
        .Q(\dti_uart/receiver/scratch_reg_n_0_[7] ));
  FDCE \dti_uart/receiver/stt_rx_done_reg 
       (.C(clk),
        .CE(1'b1),
        .CLR(boost_cfg_boost_en_i_1_n_0),
        .D(stt_rx_done_i_1_n_0),
        .Q(rts_n));
  FDRE \dti_uart/register_block/rb_regs/boost_cfg_boost_en_reg 
       (.C(clk),
        .CE(1'b1),
        .D(boost_cfg_boost_en_i_2_n_0),
        .Q(boost_en),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/cfg_data_bit_num_reg[0] 
       (.C(clk),
        .CE(\dti_uart/register_block/rb_regs/cfg_wen ),
        .D(pwdata[0]),
        .Q(\dti_uart/register_block/rb_regs/cfg_data_bit_num [0]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/cfg_data_bit_num_reg[1] 
       (.C(clk),
        .CE(\dti_uart/register_block/rb_regs/cfg_wen ),
        .D(pwdata[1]),
        .Q(\dti_uart/register_block/rb_regs/cfg_data_bit_num [1]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/cfg_parity_en_reg 
       (.C(clk),
        .CE(\dti_uart/register_block/rb_regs/cfg_wen ),
        .D(pwdata[3]),
        .Q(p_0_in[1]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/cfg_parity_type_reg 
       (.C(clk),
        .CE(\dti_uart/register_block/rb_regs/cfg_wen ),
        .D(pwdata[4]),
        .Q(\dti_uart/register_block/rb_regs/cfg_parity_type ),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/cfg_stop_bit_num_reg 
       (.C(clk),
        .CE(\dti_uart/register_block/rb_regs/cfg_wen ),
        .D(pwdata[2]),
        .Q(p_0_in[0]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/ctrl_start_tx_reg 
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_start_tx_i_1_n_0),
        .Q(\dti_uart/register_block/rb_regs/mux_ctrl ),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/rx_data_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/receiver/scratch_reg_n_0_[0] ),
        .Q(\dti_uart/register_block/rb_regs/rx_data_reg [0]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/rx_data_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/receiver/scratch_reg_n_0_[1] ),
        .Q(\dti_uart/register_block/rb_regs/rx_data_reg [1]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/rx_data_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/receiver/scratch_reg_n_0_[2] ),
        .Q(\dti_uart/register_block/rb_regs/rx_data_reg [2]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/rx_data_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/receiver/scratch_reg_n_0_[3] ),
        .Q(\dti_uart/register_block/rb_regs/rx_data_reg [3]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/rx_data_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/receiver/scratch_reg_n_0_[4] ),
        .Q(\dti_uart/register_block/rb_regs/rx_data_reg [4]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/rx_data_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/receiver/scratch_reg_n_0_[5] ),
        .Q(\dti_uart/register_block/rb_regs/rx_data_reg [5]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/rx_data_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/receiver/scratch_reg_n_0_[6] ),
        .Q(\dti_uart/register_block/rb_regs/rx_data_reg [6]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/rx_data_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/receiver/scratch_reg_n_0_[7] ),
        .Q(\dti_uart/register_block/rb_regs/rx_data_reg [7]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/stt_rx_done_reg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rts_n),
        .Q(\dti_uart/register_block/rb_regs/stt_rx_done_reg ),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDSE \dti_uart/register_block/rb_regs/stt_tx_done_reg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/transmitter/stt_tx_done ),
        .Q(\dti_uart/register_block/rb_regs/stt_tx_done_reg ),
        .S(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/tx_data_reg[0] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(pwdata[0]),
        .Q(\dti_uart/register_block/rb_regs/mux_tx [0]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/tx_data_reg[1] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(pwdata[1]),
        .Q(\dti_uart/register_block/rb_regs/mux_tx [1]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/tx_data_reg[2] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(pwdata[2]),
        .Q(\dti_uart/register_block/rb_regs/mux_tx [2]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/tx_data_reg[3] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(pwdata[3]),
        .Q(\dti_uart/register_block/rb_regs/mux_tx [3]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/tx_data_reg[4] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(pwdata[4]),
        .Q(\dti_uart/register_block/rb_regs/mux_tx [4]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/tx_data_reg[5] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(pwdata[5]),
        .Q(\dti_uart/register_block/rb_regs/mux_tx [5]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/tx_data_reg[6] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(pwdata[6]),
        .Q(\dti_uart/register_block/rb_regs/mux_tx [6]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/tx_data_reg[7] 
       (.C(clk),
        .CE(\tx_data[7]_i_1_n_0 ),
        .D(pwdata[7]),
        .Q(\dti_uart/register_block/rb_regs/mux_tx [7]),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/wack_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/register_block/rb_apb_bridge/wr_en ),
        .Q(\dti_uart/register_block/rb_regs/wack ),
        .R(boost_cfg_boost_en_i_1_n_0));
  FDRE \dti_uart/register_block/rb_regs/waddrerr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(waddrerr_i_1_n_0),
        .Q(\dti_uart/register_block/rb_regs/waddrerr ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h38)) 
    \dti_uart/transmitter/bitpos_data[0]_i_1 
       (.I0(\dti_uart/transmitter/current_state [1]),
        .I1(\bitpos_data[2]_i_2_n_0 ),
        .I2(\dti_uart/transmitter/bitpos_data_reg_n_0_[0] ),
        .O(\dti_uart/transmitter/bitpos_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \dti_uart/transmitter/bitpos_data[1]_i_1 
       (.I0(\dti_uart/transmitter/bitpos_data_reg_n_0_[0] ),
        .I1(\dti_uart/transmitter/current_state [1]),
        .I2(\bitpos_data[2]_i_2_n_0 ),
        .I3(\dti_uart/transmitter/bitpos_data_reg_n_0_[1] ),
        .O(\dti_uart/transmitter/bitpos_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \dti_uart/transmitter/bitpos_data[2]_i_1 
       (.I0(\dti_uart/transmitter/current_state [1]),
        .I1(\dti_uart/transmitter/bitpos_data_reg_n_0_[0] ),
        .I2(\dti_uart/transmitter/bitpos_data_reg_n_0_[1] ),
        .I3(\bitpos_data[2]_i_2_n_0 ),
        .I4(\dti_uart/transmitter/bitpos_data_reg_n_0_[2] ),
        .O(\dti_uart/transmitter/bitpos_data[2]_i_1_n_0 ));
  FDRE \dti_uart/transmitter/bitpos_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/transmitter/bitpos_data[0]_i_1_n_0 ),
        .Q(\dti_uart/transmitter/bitpos_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dti_uart/transmitter/bitpos_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/transmitter/bitpos_data[1]_i_1_n_0 ),
        .Q(\dti_uart/transmitter/bitpos_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dti_uart/transmitter/bitpos_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/transmitter/bitpos_data[2]_i_1_n_0 ),
        .Q(\dti_uart/transmitter/bitpos_data_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h77F38800)) 
    \dti_uart/transmitter/bitpos_stop[0]_i_1 
       (.I0(\current_state[1]_i_2_n_0 ),
        .I1(reset_n),
        .I2(\dti_uart/transmitter/current_state [0]),
        .I3(\dti_uart/transmitter/current_state [1]),
        .I4(\dti_uart/transmitter/bitpos_stop [0]),
        .O(\dti_uart/transmitter/bitpos_stop[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFF0F80800000)) 
    \dti_uart/transmitter/bitpos_stop[1]_i_1 
       (.I0(\dti_uart/transmitter/bitpos_stop [0]),
        .I1(\current_state[1]_i_2_n_0 ),
        .I2(reset_n),
        .I3(\dti_uart/transmitter/current_state [0]),
        .I4(\dti_uart/transmitter/current_state [1]),
        .I5(\dti_uart/transmitter/bitpos_stop [1]),
        .O(\dti_uart/transmitter/bitpos_stop[1]_i_1_n_0 ));
  FDRE \dti_uart/transmitter/bitpos_stop_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/transmitter/bitpos_stop[0]_i_1_n_0 ),
        .Q(\dti_uart/transmitter/bitpos_stop [0]),
        .R(1'b0));
  FDRE \dti_uart/transmitter/bitpos_stop_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\dti_uart/transmitter/bitpos_stop[1]_i_1_n_0 ),
        .Q(\dti_uart/transmitter/bitpos_stop [1]),
        .R(1'b0));
  FDPE \dti_uart/transmitter/stt_tx_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(stt_tx_done_i_1_n_0),
        .PRE(boost_cfg_boost_en_i_1_n_0),
        .Q(\dti_uart/transmitter/stt_tx_done ));
  LUT2 #(
    .INIT(4'hE)) 
    \prdata[0]_INST_0 
       (.I0(\prdata[0]_INST_0_i_1_n_0 ),
        .I1(\prdata[0]_INST_0_i_2_n_0 ),
        .O(prdata[0]));
  LUT6 #(
    .INIT(64'h000A00FC000A000C)) 
    \prdata[0]_INST_0_i_1 
       (.I0(\dti_uart/register_block/rb_regs/cfg_data_bit_num [0]),
        .I1(\dti_uart/register_block/rb_regs/mux_tx [0]),
        .I2(paddr[3]),
        .I3(paddr_5_sn_1),
        .I4(paddr[2]),
        .I5(\dti_uart/register_block/rb_regs/mux_ctrl ),
        .O(\prdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0C0A0CFFFF0A0C)) 
    \prdata[0]_INST_0_i_2 
       (.I0(boost_en),
        .I1(\dti_uart/register_block/rb_regs/stt_tx_done_reg ),
        .I2(\paddr[5]_2 ),
        .I3(paddr[2]),
        .I4(\dti_uart/register_block/rb_regs/rx_data_reg [0]),
        .I5(pwrite_0),
        .O(\prdata[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \prdata[1]_INST_0 
       (.I0(\prdata[1]_INST_0_i_1_n_0 ),
        .I1(\prdata[1]_INST_0_i_2_n_0 ),
        .O(prdata[1]));
  LUT6 #(
    .INIT(64'h000A00FC000A000C)) 
    \prdata[1]_INST_0_i_1 
       (.I0(\dti_uart/register_block/rb_regs/cfg_data_bit_num [1]),
        .I1(\dti_uart/register_block/rb_regs/mux_tx [1]),
        .I2(paddr[3]),
        .I3(paddr_5_sn_1),
        .I4(paddr[2]),
        .I5(pwdata[1]),
        .O(\prdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0C0A0CFFFF0A0C)) 
    \prdata[1]_INST_0_i_2 
       (.I0(pwdata[1]),
        .I1(\dti_uart/register_block/rb_regs/stt_rx_done_reg ),
        .I2(\paddr[5]_2 ),
        .I3(paddr[2]),
        .I4(\dti_uart/register_block/rb_regs/rx_data_reg [1]),
        .I5(pwrite_0),
        .O(\prdata[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \prdata[2]_INST_0 
       (.I0(\dti_uart/register_block/rb_regs/mux_tx [2]),
        .I1(\paddr[5]_0 ),
        .I2(p_0_in[0]),
        .I3(\paddr[5]_1 ),
        .I4(\prdata[2]_INST_0_i_1_n_0 ),
        .O(prdata[2]));
  LUT6 #(
    .INIT(64'h3B3F33330A000000)) 
    \prdata[2]_INST_0_i_1 
       (.I0(\dti_uart/register_block/rb_regs/rx_data_reg [2]),
        .I1(\paddr[5]_2 ),
        .I2(paddr_5_sn_1),
        .I3(paddr[2]),
        .I4(paddr[3]),
        .I5(pwdata[2]),
        .O(\prdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \prdata[3]_INST_0 
       (.I0(\dti_uart/register_block/rb_regs/mux_tx [3]),
        .I1(\paddr[5]_0 ),
        .I2(p_0_in[1]),
        .I3(\paddr[5]_1 ),
        .I4(\prdata[3]_INST_0_i_1_n_0 ),
        .O(prdata[3]));
  LUT6 #(
    .INIT(64'h3B3F33330A000000)) 
    \prdata[3]_INST_0_i_1 
       (.I0(\dti_uart/register_block/rb_regs/rx_data_reg [3]),
        .I1(\paddr[5]_2 ),
        .I2(paddr_5_sn_1),
        .I3(paddr[2]),
        .I4(paddr[3]),
        .I5(pwdata[3]),
        .O(\prdata[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF22F2)) 
    \prdata[4]_INST_0 
       (.I0(\dti_uart/register_block/rb_regs/cfg_parity_type ),
        .I1(\paddr[5]_1 ),
        .I2(\dti_uart/register_block/rb_regs/mux_tx [4]),
        .I3(\paddr[5]_0 ),
        .I4(\prdata[4]_INST_0_i_3_n_0 ),
        .O(prdata[4]));
  LUT6 #(
    .INIT(64'h4444FC4444444C44)) 
    \prdata[4]_INST_0_i_3 
       (.I0(\paddr[5]_2 ),
        .I1(pwdata[4]),
        .I2(paddr[2]),
        .I3(paddr[3]),
        .I4(paddr_5_sn_1),
        .I5(\dti_uart/register_block/rb_regs/rx_data_reg [4]),
        .O(\prdata[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCEECCEECCFC)) 
    \prdata[5]_INST_0 
       (.I0(pwdata[5]),
        .I1(\prdata[5]_INST_0_i_1_n_0 ),
        .I2(\dti_uart/register_block/rb_regs/mux_tx [5]),
        .I3(paddr_5_sn_1),
        .I4(paddr[2]),
        .I5(paddr[3]),
        .O(prdata[5]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \prdata[5]_INST_0_i_1 
       (.I0(pwrite_0),
        .I1(\dti_uart/register_block/rb_regs/rx_data_reg [5]),
        .I2(\paddr[5]_2 ),
        .I3(pwdata[5]),
        .O(\prdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCEECCEECCFC)) 
    \prdata[6]_INST_0 
       (.I0(pwdata[6]),
        .I1(\prdata[6]_INST_0_i_1_n_0 ),
        .I2(\dti_uart/register_block/rb_regs/mux_tx [6]),
        .I3(paddr_5_sn_1),
        .I4(paddr[2]),
        .I5(paddr[3]),
        .O(prdata[6]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \prdata[6]_INST_0_i_1 
       (.I0(pwrite_0),
        .I1(\dti_uart/register_block/rb_regs/rx_data_reg [6]),
        .I2(\paddr[5]_2 ),
        .I3(pwdata[6]),
        .O(\prdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14FF0000)) 
    \prdata[7]_INST_0 
       (.I0(paddr_5_sn_1),
        .I1(paddr[2]),
        .I2(paddr[3]),
        .I3(\paddr[5]_2 ),
        .I4(pwdata[7]),
        .I5(\prdata[7]_INST_0_i_1_n_0 ),
        .O(prdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08030800)) 
    \prdata[7]_INST_0_i_1 
       (.I0(\dti_uart/register_block/rb_regs/rx_data_reg [7]),
        .I1(paddr[2]),
        .I2(paddr_5_sn_1),
        .I3(paddr[3]),
        .I4(\dti_uart/register_block/rb_regs/mux_tx [7]),
        .O(\prdata[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8A80)) 
    pready_INST_0
       (.I0(psel),
        .I1(\dti_uart/register_block/rb_regs/wack ),
        .I2(pwrite),
        .I3(penable),
        .O(pready));
  LUT6 #(
    .INIT(64'hF808F00000000000)) 
    pslverr_INST_0
       (.I0(paddr_5_sn_1),
        .I1(\paddr[5]_2 ),
        .I2(pwrite),
        .I3(\dti_uart/register_block/rb_regs/waddrerr ),
        .I4(penable),
        .I5(psel),
        .O(pslverr));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pslverr_INST_0_i_4
       (.I0(paddr[10]),
        .I1(paddr[7]),
        .I2(paddr[11]),
        .I3(paddr[5]),
        .O(\dti_uart/transmitter/stt_tx_done_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_acc[0]_i_1 
       (.I0(\dti_uart/baudrate_gen/rx_acc [0]),
        .O(\rx_acc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_acc[1]_i_1 
       (.I0(\dti_uart/baudrate_gen/rx_acc [1]),
        .I1(\dti_uart/baudrate_gen/rx_acc [0]),
        .O(\rx_acc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0FFF7000)) 
    \rx_acc[2]_i_1 
       (.I0(\dti_uart/baudrate_gen/rx_acc [3]),
        .I1(\dti_uart/baudrate_gen/rx_acc [4]),
        .I2(\dti_uart/baudrate_gen/rx_acc [1]),
        .I3(\dti_uart/baudrate_gen/rx_acc [0]),
        .I4(\dti_uart/baudrate_gen/rx_acc [2]),
        .O(\rx_acc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3F7FC000)) 
    \rx_acc[3]_i_1 
       (.I0(\dti_uart/baudrate_gen/rx_acc [4]),
        .I1(\dti_uart/baudrate_gen/rx_acc [0]),
        .I2(\dti_uart/baudrate_gen/rx_acc [1]),
        .I3(\dti_uart/baudrate_gen/rx_acc [2]),
        .I4(\dti_uart/baudrate_gen/rx_acc [3]),
        .O(\rx_acc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h5FFF8000)) 
    \rx_acc[4]_i_1 
       (.I0(\dti_uart/baudrate_gen/rx_acc [3]),
        .I1(\dti_uart/baudrate_gen/rx_acc [2]),
        .I2(\dti_uart/baudrate_gen/rx_acc [1]),
        .I3(\dti_uart/baudrate_gen/rx_acc [0]),
        .I4(\dti_uart/baudrate_gen/rx_acc [4]),
        .O(\rx_acc[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0057)) 
    \sample[0]_i_1 
       (.I0(\dti_uart/receiver/current_state [1]),
        .I1(\dti_uart/receiver/current_state [0]),
        .I2(\sample[3]_i_3_n_0 ),
        .I3(\dti_uart/receiver/sample_reg_n_0_[0] ),
        .O(\sample[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00575700)) 
    \sample[1]_i_1 
       (.I0(\dti_uart/receiver/current_state [1]),
        .I1(\dti_uart/receiver/current_state [0]),
        .I2(\sample[3]_i_3_n_0 ),
        .I3(\dti_uart/receiver/sample_reg_n_0_[0] ),
        .I4(\dti_uart/receiver/sample_reg_n_0_[1] ),
        .O(\sample[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0057575757000000)) 
    \sample[2]_i_1 
       (.I0(\dti_uart/receiver/current_state [1]),
        .I1(\dti_uart/receiver/current_state [0]),
        .I2(\sample[3]_i_3_n_0 ),
        .I3(\dti_uart/receiver/sample_reg_n_0_[0] ),
        .I4(\dti_uart/receiver/sample_reg_n_0_[1] ),
        .I5(\dti_uart/receiver/sample_reg_n_0_[2] ),
        .O(\sample[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03700373)) 
    \sample[3]_i_1 
       (.I0(\current_state[0]_i_3_n_0 ),
        .I1(\sample[3]_i_3_n_0 ),
        .I2(\dti_uart/receiver/current_state [1]),
        .I3(\dti_uart/receiver/current_state [0]),
        .I4(\sample[3]_i_4_n_0 ),
        .O(\dti_uart/receiver/sample ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \sample[3]_i_2 
       (.I0(\sample[3]_i_5_n_0 ),
        .I1(\dti_uart/receiver/sample_reg_n_0_[1] ),
        .I2(\dti_uart/receiver/sample_reg_n_0_[0] ),
        .I3(\dti_uart/receiver/sample_reg_n_0_[2] ),
        .I4(\dti_uart/receiver/sample_reg_n_0_[3] ),
        .O(\sample[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample[3]_i_3 
       (.I0(\dti_uart/baudrate_gen/rx_acc [4]),
        .I1(\dti_uart/baudrate_gen/rx_acc [2]),
        .I2(\dti_uart/baudrate_gen/rx_acc [3]),
        .I3(\dti_uart/baudrate_gen/rx_acc [0]),
        .I4(\dti_uart/baudrate_gen/rx_acc [1]),
        .O(\sample[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \sample[3]_i_4 
       (.I0(\dti_uart/receiver/sample_reg_n_0_[3] ),
        .I1(rx),
        .I2(\dti_uart/receiver/sample_reg_n_0_[0] ),
        .I3(\dti_uart/receiver/sample_reg_n_0_[1] ),
        .I4(\dti_uart/receiver/sample_reg_n_0_[2] ),
        .O(\sample[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \sample[3]_i_5 
       (.I0(\sample[3]_i_3_n_0 ),
        .I1(\dti_uart/receiver/current_state [0]),
        .I2(\dti_uart/receiver/current_state [1]),
        .O(\sample[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \scratch[4]_i_2 
       (.I0(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .I1(\dti_uart/receiver/current_state [0]),
        .I2(\dti_uart/receiver/current_state [1]),
        .I3(\bitpos_stop[1]_i_2_n_0 ),
        .I4(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ),
        .O(\scratch[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \scratch[5]_i_2 
       (.I0(\dti_uart/receiver/current_state [0]),
        .I1(\dti_uart/receiver/current_state [1]),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .I3(\bitpos_stop[1]_i_2_n_0 ),
        .I4(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ),
        .O(\scratch[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \scratch[6]_i_2 
       (.I0(\bitpos_stop[1]_i_2_n_0 ),
        .I1(\dti_uart/receiver/current_state [1]),
        .I2(\dti_uart/receiver/current_state [0]),
        .I3(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .I4(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ),
        .O(\scratch[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \scratch[7]_i_2 
       (.I0(\bitpos_stop[1]_i_2_n_0 ),
        .I1(\dti_uart/receiver/bitpos_data_reg_n_0_[1] ),
        .I2(\dti_uart/receiver/bitpos_data_reg_n_0_[0] ),
        .I3(\dti_uart/receiver/current_state [1]),
        .I4(\dti_uart/receiver/current_state [0]),
        .O(\scratch[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0008)) 
    stt_rx_done_i_1
       (.I0(stt_rx_done_i_2_n_0),
        .I1(\dti_uart/receiver/current_state [1]),
        .I2(\dti_uart/receiver/current_state [0]),
        .I3(stt_rx_done_i_3_n_0),
        .I4(rts_n),
        .O(stt_rx_done_i_1_n_0));
  LUT5 #(
    .INIT(32'h41100004)) 
    stt_rx_done_i_2
       (.I0(\current_state[0]_i_3_n_0 ),
        .I1(\dti_uart/receiver/bitpos_stop_reg_n_0_[0] ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\dti_uart/receiver/bitpos_stop_reg_n_0_[1] ),
        .O(stt_rx_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    stt_rx_done_i_3
       (.I0(stt_tx_done_i_6_n_0),
        .I1(paddr[2]),
        .I2(paddr[3]),
        .I3(rts_n),
        .I4(stt_tx_done_i_5_n_0),
        .I5(stt_tx_done_i_3_n_0),
        .O(stt_rx_done_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFAAFEAAFFAAFFAA)) 
    stt_tx_done_i_1
       (.I0(\dti_uart/transmitter/stt_tx_done0 ),
        .I1(stt_tx_done_i_3_n_0),
        .I2(stt_tx_done_i_4_n_0),
        .I3(\dti_uart/transmitter/stt_tx_done ),
        .I4(stt_tx_done_i_5_n_0),
        .I5(stt_tx_done_i_6_n_0),
        .O(stt_tx_done_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    stt_tx_done_i_2
       (.I0(\current_state[0]_i_5_n_0 ),
        .I1(\dti_uart/transmitter/current_state [0]),
        .I2(stt_tx_done_i_7_n_0),
        .O(\dti_uart/transmitter/stt_tx_done0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1DFF)) 
    stt_tx_done_i_3
       (.I0(penable),
        .I1(pwrite),
        .I2(\dti_uart/register_block/rb_regs/wack ),
        .I3(psel),
        .O(stt_tx_done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    stt_tx_done_i_4
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .O(stt_tx_done_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    stt_tx_done_i_5
       (.I0(paddr[0]),
        .I1(paddr[1]),
        .O(stt_tx_done_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    stt_tx_done_i_6
       (.I0(paddr[4]),
        .I1(\dti_uart/transmitter/stt_tx_done_reg_0 ),
        .I2(paddr[6]),
        .I3(paddr[9]),
        .I4(paddr[8]),
        .O(stt_tx_done_i_6_n_0));
  LUT5 #(
    .INIT(32'hFDDF7FFD)) 
    stt_tx_done_i_7
       (.I0(\dti_uart/transmitter/current_state [1]),
        .I1(\dti_uart/transmitter/bitpos_stop [1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\dti_uart/transmitter/bitpos_stop [0]),
        .O(stt_tx_done_i_7_n_0));
  LUT6 #(
    .INIT(64'h7733443374337433)) 
    tx_INST_0
       (.I0(tx_INST_0_i_1_n_0),
        .I1(\dti_uart/transmitter/current_state [0]),
        .I2(tx_INST_0_i_2_n_0),
        .I3(\dti_uart/transmitter/current_state [1]),
        .I4(tx_INST_0_i_3_n_0),
        .I5(\dti_uart/transmitter/bitpos_data_reg_n_0_[2] ),
        .O(tx));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    tx_INST_0_i_1
       (.I0(p_0_in[1]),
        .I1(tx_INST_0_i_4_n_0),
        .I2(\dti_uart/register_block/rb_regs/mux_tx [7]),
        .I3(\dti_uart/register_block/rb_regs/mux_tx [6]),
        .I4(\dti_uart/register_block/rb_regs/mux_tx [5]),
        .I5(\dti_uart/register_block/rb_regs/mux_tx [4]),
        .O(tx_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_INST_0_i_2
       (.I0(\dti_uart/register_block/rb_regs/mux_tx [3]),
        .I1(\dti_uart/register_block/rb_regs/mux_tx [2]),
        .I2(\dti_uart/transmitter/bitpos_data_reg_n_0_[1] ),
        .I3(\dti_uart/register_block/rb_regs/mux_tx [1]),
        .I4(\dti_uart/transmitter/bitpos_data_reg_n_0_[0] ),
        .I5(\dti_uart/register_block/rb_regs/mux_tx [0]),
        .O(tx_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_INST_0_i_3
       (.I0(\dti_uart/register_block/rb_regs/mux_tx [7]),
        .I1(\dti_uart/register_block/rb_regs/mux_tx [6]),
        .I2(\dti_uart/transmitter/bitpos_data_reg_n_0_[1] ),
        .I3(\dti_uart/register_block/rb_regs/mux_tx [5]),
        .I4(\dti_uart/transmitter/bitpos_data_reg_n_0_[0] ),
        .I5(\dti_uart/register_block/rb_regs/mux_tx [4]),
        .O(tx_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tx_INST_0_i_4
       (.I0(\dti_uart/register_block/rb_regs/mux_tx [1]),
        .I1(\dti_uart/register_block/rb_regs/mux_tx [0]),
        .I2(\dti_uart/register_block/rb_regs/mux_tx [3]),
        .I3(\dti_uart/register_block/rb_regs/mux_tx [2]),
        .O(tx_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFEFF)) 
    \tx_acc[0]_i_1 
       (.I0(\tx_acc[0]_i_2_n_0 ),
        .I1(\dti_uart/baudrate_gen/tx_acc [3]),
        .I2(\dti_uart/baudrate_gen/tx_acc [2]),
        .I3(\dti_uart/baudrate_gen/tx_acc [4]),
        .I4(\dti_uart/baudrate_gen/tx_acc [6]),
        .I5(\dti_uart/baudrate_gen/tx_acc [0]),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [0]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tx_acc[0]_i_2 
       (.I0(\dti_uart/baudrate_gen/tx_acc [5]),
        .I1(\dti_uart/baudrate_gen/tx_acc [1]),
        .I2(\dti_uart/baudrate_gen/tx_acc [8]),
        .I3(\dti_uart/baudrate_gen/tx_acc [7]),
        .O(\tx_acc[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tx_acc[1]_i_1 
       (.I0(\tx_acc[8]_i_3_n_0 ),
        .I1(\dti_uart/baudrate_gen/tx_acc [0]),
        .I2(\dti_uart/baudrate_gen/tx_acc [1]),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tx_acc[2]_i_1 
       (.I0(\dti_uart/baudrate_gen/tx_acc [2]),
        .I1(\dti_uart/baudrate_gen/tx_acc [0]),
        .I2(\dti_uart/baudrate_gen/tx_acc [1]),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tx_acc[3]_i_1 
       (.I0(\dti_uart/baudrate_gen/tx_acc [3]),
        .I1(\dti_uart/baudrate_gen/tx_acc [1]),
        .I2(\dti_uart/baudrate_gen/tx_acc [0]),
        .I3(\dti_uart/baudrate_gen/tx_acc [2]),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \tx_acc[4]_i_1 
       (.I0(\tx_acc[8]_i_3_n_0 ),
        .I1(\dti_uart/baudrate_gen/tx_acc [2]),
        .I2(\dti_uart/baudrate_gen/tx_acc [0]),
        .I3(\dti_uart/baudrate_gen/tx_acc [1]),
        .I4(\dti_uart/baudrate_gen/tx_acc [3]),
        .I5(\dti_uart/baudrate_gen/tx_acc [4]),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \tx_acc[5]_i_1 
       (.I0(\tx_acc[8]_i_3_n_0 ),
        .I1(\tx_acc[7]_i_2_n_0 ),
        .I2(\dti_uart/baudrate_gen/tx_acc [4]),
        .I3(\dti_uart/baudrate_gen/tx_acc [5]),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \tx_acc[6]_i_1 
       (.I0(\dti_uart/baudrate_gen/tx_acc [4]),
        .I1(\tx_acc[7]_i_2_n_0 ),
        .I2(\dti_uart/baudrate_gen/tx_acc [5]),
        .I3(\dti_uart/baudrate_gen/tx_acc [6]),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [6]));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \tx_acc[7]_i_1 
       (.I0(\tx_acc[8]_i_3_n_0 ),
        .I1(\dti_uart/baudrate_gen/tx_acc [6]),
        .I2(\dti_uart/baudrate_gen/tx_acc [5]),
        .I3(\tx_acc[7]_i_2_n_0 ),
        .I4(\dti_uart/baudrate_gen/tx_acc [4]),
        .I5(\dti_uart/baudrate_gen/tx_acc [7]),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tx_acc[7]_i_2 
       (.I0(\dti_uart/baudrate_gen/tx_acc [2]),
        .I1(\dti_uart/baudrate_gen/tx_acc [0]),
        .I2(\dti_uart/baudrate_gen/tx_acc [1]),
        .I3(\dti_uart/baudrate_gen/tx_acc [3]),
        .O(\tx_acc[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \tx_acc[8]_i_1 
       (.I0(\tx_acc[8]_i_2_n_0 ),
        .I1(\dti_uart/baudrate_gen/tx_acc [7]),
        .I2(\dti_uart/baudrate_gen/tx_acc [8]),
        .I3(\tx_acc[8]_i_3_n_0 ),
        .O(\dti_uart/baudrate_gen/tx_acc_0 [8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \tx_acc[8]_i_2 
       (.I0(\dti_uart/baudrate_gen/tx_acc [6]),
        .I1(\dti_uart/baudrate_gen/tx_acc [5]),
        .I2(\tx_acc[7]_i_2_n_0 ),
        .I3(\dti_uart/baudrate_gen/tx_acc [4]),
        .O(\tx_acc[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \tx_acc[8]_i_3 
       (.I0(\dti_uart/baudrate_gen/tx_acc [0]),
        .I1(\tx_acc[0]_i_2_n_0 ),
        .I2(\dti_uart/baudrate_gen/tx_acc [3]),
        .I3(\dti_uart/baudrate_gen/tx_acc [2]),
        .I4(\dti_uart/baudrate_gen/tx_acc [4]),
        .I5(\dti_uart/baudrate_gen/tx_acc [6]),
        .O(\tx_acc[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_data[7]_i_1 
       (.I0(paddr[2]),
        .I1(\tx_data[7]_i_2_n_0 ),
        .O(\tx_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \tx_data[7]_i_2 
       (.I0(paddr[3]),
        .I1(stt_tx_done_i_6_n_0),
        .I2(pwrite),
        .I3(penable),
        .I4(psel),
        .I5(stt_tx_done_i_5_n_0),
        .O(\tx_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    wack_i_1
       (.I0(pwrite),
        .I1(penable),
        .I2(psel),
        .O(\dti_uart/register_block/rb_apb_bridge/wr_en ));
  LUT6 #(
    .INIT(64'h000000000000F800)) 
    waddrerr_i_1
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .I2(waddrerr_i_2_n_0),
        .I3(reset_n),
        .I4(waddrerr_i_3_n_0),
        .I5(\dti_uart/register_block/rb_regs/boost_cfg_wen ),
        .O(waddrerr_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    waddrerr_i_2
       (.I0(paddr[0]),
        .I1(paddr[1]),
        .I2(psel),
        .I3(penable),
        .I4(pwrite),
        .I5(stt_tx_done_i_6_n_0),
        .O(waddrerr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    waddrerr_i_3
       (.I0(psel),
        .I1(penable),
        .I2(pwrite),
        .O(waddrerr_i_3_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
