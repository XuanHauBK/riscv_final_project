// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Apr 24 16:35:19 2024
// Host        : dt68-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_uart_dti_uart_0_0_sim_netlist.v
// Design      : design_uart_dti_uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_gen
   (\bitpos_stop_reg[1] ,
    \bitpos_data_reg[2] ,
    \sample_reg[1] ,
    stt_tx_done_reg,
    out,
    \FSM_sequential_current_state_reg[1] ,
    wack_reg,
    \paddr[1] ,
    stt_tx_done,
    \paddr[3] ,
    \paddr[8] ,
    clk,
    SR);
  output \bitpos_stop_reg[1] ;
  output \bitpos_data_reg[2] ;
  output \sample_reg[1] ;
  output stt_tx_done_reg;
  input [0:0]out;
  input \FSM_sequential_current_state_reg[1] ;
  input wack_reg;
  input \paddr[1] ;
  input stt_tx_done;
  input \paddr[3] ;
  input \paddr[8] ;
  input clk;
  input [0:0]SR;

  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [0:0]SR;
  wire \bitpos_data_reg[2] ;
  wire \bitpos_stop_reg[1] ;
  wire clk;
  wire [0:0]out;
  wire \paddr[1] ;
  wire \paddr[3] ;
  wire \paddr[8] ;
  wire [4:0]rx_acc;
  wire \rx_acc[0]_i_1_n_0 ;
  wire \rx_acc[1]_i_1_n_0 ;
  wire \rx_acc[2]_i_1_n_0 ;
  wire \rx_acc[3]_i_1_n_0 ;
  wire \rx_acc[4]_i_1_n_0 ;
  wire \sample_reg[1] ;
  wire stt_tx_done;
  wire stt_tx_done_reg;
  wire \transmitter/stt_tx_done0 ;
  wire [8:0]tx_acc;
  wire \tx_acc[0]_i_2_n_0 ;
  wire \tx_acc[7]_i_2_n_0 ;
  wire \tx_acc[8]_i_2_n_0 ;
  wire \tx_acc[8]_i_3_n_0 ;
  wire [8:0]tx_acc_0;
  wire wack_reg;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_current_state[0]_i_6 
       (.I0(tx_acc[4]),
        .I1(tx_acc[6]),
        .I2(tx_acc[7]),
        .I3(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(\bitpos_data_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(out),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(tx_acc[7]),
        .I3(tx_acc[6]),
        .I4(tx_acc[4]),
        .O(\bitpos_stop_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(tx_acc[3]),
        .I1(tx_acc[2]),
        .I2(tx_acc[5]),
        .I3(tx_acc[8]),
        .I4(tx_acc[0]),
        .I5(tx_acc[1]),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_acc[0]_i_1 
       (.I0(rx_acc[0]),
        .O(\rx_acc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_acc[1]_i_1 
       (.I0(rx_acc[1]),
        .I1(rx_acc[0]),
        .O(\rx_acc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0FFF7000)) 
    \rx_acc[2]_i_1 
       (.I0(rx_acc[3]),
        .I1(rx_acc[4]),
        .I2(rx_acc[1]),
        .I3(rx_acc[0]),
        .I4(rx_acc[2]),
        .O(\rx_acc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3F7FC000)) 
    \rx_acc[3]_i_1 
       (.I0(rx_acc[4]),
        .I1(rx_acc[0]),
        .I2(rx_acc[1]),
        .I3(rx_acc[2]),
        .I4(rx_acc[3]),
        .O(\rx_acc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5FFF8000)) 
    \rx_acc[4]_i_1 
       (.I0(rx_acc[3]),
        .I1(rx_acc[2]),
        .I2(rx_acc[1]),
        .I3(rx_acc[0]),
        .I4(rx_acc[4]),
        .O(\rx_acc[4]_i_1_n_0 ));
  FDCE \rx_acc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\rx_acc[0]_i_1_n_0 ),
        .Q(rx_acc[0]));
  FDCE \rx_acc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\rx_acc[1]_i_1_n_0 ),
        .Q(rx_acc[1]));
  FDCE \rx_acc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\rx_acc[2]_i_1_n_0 ),
        .Q(rx_acc[2]));
  FDCE \rx_acc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\rx_acc[3]_i_1_n_0 ),
        .Q(rx_acc[3]));
  FDCE \rx_acc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\rx_acc[4]_i_1_n_0 ),
        .Q(rx_acc[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample[3]_i_3 
       (.I0(rx_acc[4]),
        .I1(rx_acc[2]),
        .I2(rx_acc[3]),
        .I3(rx_acc[0]),
        .I4(rx_acc[1]),
        .O(\sample_reg[1] ));
  LUT6 #(
    .INIT(64'hFFAAFEAAFFAAFFAA)) 
    stt_tx_done_i_1
       (.I0(\transmitter/stt_tx_done0 ),
        .I1(wack_reg),
        .I2(\paddr[1] ),
        .I3(stt_tx_done),
        .I4(\paddr[3] ),
        .I5(\paddr[8] ),
        .O(stt_tx_done_reg));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    stt_tx_done_i_2
       (.I0(tx_acc[4]),
        .I1(tx_acc[6]),
        .I2(tx_acc[7]),
        .I3(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I4(out),
        .I5(\FSM_sequential_current_state_reg[1] ),
        .O(\transmitter/stt_tx_done0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEFF)) 
    \tx_acc[0]_i_1 
       (.I0(\tx_acc[0]_i_2_n_0 ),
        .I1(tx_acc[3]),
        .I2(tx_acc[2]),
        .I3(tx_acc[4]),
        .I4(tx_acc[6]),
        .I5(tx_acc[0]),
        .O(tx_acc_0[0]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tx_acc[0]_i_2 
       (.I0(tx_acc[5]),
        .I1(tx_acc[1]),
        .I2(tx_acc[8]),
        .I3(tx_acc[7]),
        .O(\tx_acc[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tx_acc[1]_i_1 
       (.I0(\tx_acc[8]_i_3_n_0 ),
        .I1(tx_acc[0]),
        .I2(tx_acc[1]),
        .O(tx_acc_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \tx_acc[2]_i_1 
       (.I0(tx_acc[2]),
        .I1(tx_acc[0]),
        .I2(tx_acc[1]),
        .O(tx_acc_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tx_acc[3]_i_1 
       (.I0(tx_acc[3]),
        .I1(tx_acc[1]),
        .I2(tx_acc[0]),
        .I3(tx_acc[2]),
        .O(tx_acc_0[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \tx_acc[4]_i_1 
       (.I0(\tx_acc[8]_i_3_n_0 ),
        .I1(tx_acc[2]),
        .I2(tx_acc[0]),
        .I3(tx_acc[1]),
        .I4(tx_acc[3]),
        .I5(tx_acc[4]),
        .O(tx_acc_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \tx_acc[5]_i_1 
       (.I0(\tx_acc[8]_i_3_n_0 ),
        .I1(\tx_acc[7]_i_2_n_0 ),
        .I2(tx_acc[4]),
        .I3(tx_acc[5]),
        .O(tx_acc_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \tx_acc[6]_i_1 
       (.I0(tx_acc[4]),
        .I1(\tx_acc[7]_i_2_n_0 ),
        .I2(tx_acc[5]),
        .I3(tx_acc[6]),
        .O(tx_acc_0[6]));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \tx_acc[7]_i_1 
       (.I0(\tx_acc[8]_i_3_n_0 ),
        .I1(tx_acc[6]),
        .I2(tx_acc[5]),
        .I3(\tx_acc[7]_i_2_n_0 ),
        .I4(tx_acc[4]),
        .I5(tx_acc[7]),
        .O(tx_acc_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tx_acc[7]_i_2 
       (.I0(tx_acc[2]),
        .I1(tx_acc[0]),
        .I2(tx_acc[1]),
        .I3(tx_acc[3]),
        .O(\tx_acc[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \tx_acc[8]_i_1 
       (.I0(\tx_acc[8]_i_2_n_0 ),
        .I1(tx_acc[7]),
        .I2(tx_acc[8]),
        .I3(\tx_acc[8]_i_3_n_0 ),
        .O(tx_acc_0[8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \tx_acc[8]_i_2 
       (.I0(tx_acc[6]),
        .I1(tx_acc[5]),
        .I2(\tx_acc[7]_i_2_n_0 ),
        .I3(tx_acc[4]),
        .O(\tx_acc[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \tx_acc[8]_i_3 
       (.I0(tx_acc[0]),
        .I1(\tx_acc[0]_i_2_n_0 ),
        .I2(tx_acc[3]),
        .I3(tx_acc[2]),
        .I4(tx_acc[4]),
        .I5(tx_acc[6]),
        .O(\tx_acc[8]_i_3_n_0 ));
  FDCE \tx_acc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[0]),
        .Q(tx_acc[0]));
  FDCE \tx_acc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[1]),
        .Q(tx_acc[1]));
  FDCE \tx_acc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[2]),
        .Q(tx_acc[2]));
  FDCE \tx_acc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[3]),
        .Q(tx_acc[3]));
  FDCE \tx_acc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[4]),
        .Q(tx_acc[4]));
  FDCE \tx_acc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[5]),
        .Q(tx_acc[5]));
  FDCE \tx_acc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[6]),
        .Q(tx_acc[6]));
  FDCE \tx_acc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[7]),
        .Q(tx_acc[7]));
  FDCE \tx_acc_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(tx_acc_0[8]),
        .Q(tx_acc[8]));
endmodule

(* CHECK_LICENSE_TYPE = "design_uart_dti_uart_0_0,dti_uart,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "dti_uart,Vivado 2018.1" *) 
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
    tx,
    rts_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input clk;
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
  output tx;
  output rts_n;

  wire clk;
  wire cts_n;
  wire inst_n_10;
  wire inst_n_9;
  wire [11:0]paddr;
  wire penable;
  wire [31:0]prdata;
  wire \prdata[1]_INST_0_i_3_n_0 ;
  wire \prdata[1]_INST_0_i_4_n_0 ;
  wire \prdata[2]_INST_0_i_1_n_0 ;
  wire \prdata[3]_INST_0_i_1_n_0 ;
  wire \prdata[4]_INST_0_i_1_n_0 ;
  wire \prdata[7]_INST_0_i_1_n_0 ;
  wire \prdata[7]_INST_0_i_2_n_0 ;
  wire \prdata[7]_INST_0_i_4_n_0 ;
  wire \prdata[7]_INST_0_i_5_n_0 ;
  wire pready;
  wire psel;
  wire pslverr;
  wire pslverr_INST_0_i_1_n_0;
  wire pslverr_INST_0_i_4_n_0;
  wire [31:0]pwdata;
  wire pwrite;
  wire reset_n;
  wire rts_n;
  wire rx;
  wire tx;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart inst
       (.clk(clk),
        .cts_n(cts_n),
        .paddr(paddr),
        .\paddr[0]_0 (\prdata[7]_INST_0_i_5_n_0 ),
        .\paddr[0]_1 (\prdata[2]_INST_0_i_1_n_0 ),
        .\paddr[0]_2 (\prdata[3]_INST_0_i_1_n_0 ),
        .\paddr[0]_3 (\prdata[4]_INST_0_i_1_n_0 ),
        .paddr_0_sp_1(\prdata[1]_INST_0_i_3_n_0 ),
        .paddr_1_sp_1(\prdata[1]_INST_0_i_4_n_0 ),
        .penable(penable),
        .prdata(prdata[7:0]),
        .pready(pready),
        .psel(psel),
        .pslverr(pslverr),
        .pwdata(pwdata[7:0]),
        .pwrite(pwrite),
        .pwrite_0(pslverr_INST_0_i_4_n_0),
        .pwrite_1(\prdata[7]_INST_0_i_2_n_0 ),
        .pwrite_2(\prdata[7]_INST_0_i_4_n_0 ),
        .pwrite_3(\prdata[7]_INST_0_i_1_n_0 ),
        .pwrite_4(pslverr_INST_0_i_1_n_0),
        .reset_n(reset_n),
        .rts_n(rts_n),
        .rx(rx),
        .tx(tx),
        .\tx_data_reg[0] (inst_n_9),
        .waddrerr_reg(inst_n_10));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[10]_INST_0 
       (.I0(pwdata[10]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[11]_INST_0 
       (.I0(pwdata[11]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[12]_INST_0 
       (.I0(pwdata[12]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[12]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[13]_INST_0 
       (.I0(pwdata[13]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[14]_INST_0 
       (.I0(pwdata[14]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[15]_INST_0 
       (.I0(pwdata[15]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[16]_INST_0 
       (.I0(pwdata[16]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[16]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[17]_INST_0 
       (.I0(pwdata[17]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[18]_INST_0 
       (.I0(pwdata[18]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[19]_INST_0 
       (.I0(pwdata[19]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[19]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \prdata[1]_INST_0_i_3 
       (.I0(pwdata[1]),
        .I1(paddr[4]),
        .I2(pslverr_INST_0_i_4_n_0),
        .I3(\prdata[7]_INST_0_i_5_n_0 ),
        .I4(paddr[2]),
        .I5(paddr[3]),
        .O(\prdata[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300000004)) 
    \prdata[1]_INST_0_i_4 
       (.I0(paddr[2]),
        .I1(paddr[4]),
        .I2(pslverr_INST_0_i_4_n_0),
        .I3(inst_n_9),
        .I4(inst_n_10),
        .I5(paddr[3]),
        .O(\prdata[1]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[20]_INST_0 
       (.I0(pwdata[20]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[20]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[21]_INST_0 
       (.I0(pwdata[21]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[21]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[22]_INST_0 
       (.I0(pwdata[22]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[22]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[23]_INST_0 
       (.I0(pwdata[23]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[24]_INST_0 
       (.I0(pwdata[24]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[24]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[25]_INST_0 
       (.I0(pwdata[25]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[25]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[26]_INST_0 
       (.I0(pwdata[26]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[26]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[27]_INST_0 
       (.I0(pwdata[27]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[27]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[28]_INST_0 
       (.I0(pwdata[28]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[28]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[29]_INST_0 
       (.I0(pwdata[29]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[29]));
  LUT6 #(
    .INIT(64'h0000000000020200)) 
    \prdata[2]_INST_0_i_1 
       (.I0(pwdata[2]),
        .I1(pslverr_INST_0_i_4_n_0),
        .I2(\prdata[7]_INST_0_i_5_n_0 ),
        .I3(paddr[4]),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[30]_INST_0 
       (.I0(pwdata[30]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[31]_INST_0 
       (.I0(pwdata[31]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[31]));
  LUT6 #(
    .INIT(64'h0000000000020200)) 
    \prdata[3]_INST_0_i_1 
       (.I0(pwdata[3]),
        .I1(pslverr_INST_0_i_4_n_0),
        .I2(\prdata[7]_INST_0_i_5_n_0 ),
        .I3(paddr[4]),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020200)) 
    \prdata[4]_INST_0_i_1 
       (.I0(pwdata[4]),
        .I1(pslverr_INST_0_i_4_n_0),
        .I2(\prdata[7]_INST_0_i_5_n_0 ),
        .I3(paddr[4]),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEB)) 
    \prdata[7]_INST_0_i_1 
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .I2(paddr[4]),
        .I3(inst_n_10),
        .I4(inst_n_9),
        .I5(pslverr_INST_0_i_4_n_0),
        .O(\prdata[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \prdata[7]_INST_0_i_2 
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .I2(inst_n_10),
        .I3(inst_n_9),
        .I4(pslverr_INST_0_i_4_n_0),
        .I5(paddr[4]),
        .O(\prdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \prdata[7]_INST_0_i_4 
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .I2(inst_n_10),
        .I3(inst_n_9),
        .I4(pslverr_INST_0_i_4_n_0),
        .I5(paddr[4]),
        .O(\prdata[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \prdata[7]_INST_0_i_5 
       (.I0(paddr[8]),
        .I1(paddr[9]),
        .I2(paddr[11]),
        .I3(paddr[10]),
        .I4(paddr[1]),
        .I5(paddr[0]),
        .O(\prdata[7]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[8]_INST_0 
       (.I0(pwdata[8]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \prdata[9]_INST_0 
       (.I0(pwdata[9]),
        .I1(pslverr_INST_0_i_1_n_0),
        .O(prdata[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    pslverr_INST_0_i_1
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .I2(paddr[4]),
        .I3(inst_n_10),
        .I4(inst_n_9),
        .I5(pslverr_INST_0_i_4_n_0),
        .O(pslverr_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    pslverr_INST_0_i_4
       (.I0(paddr[5]),
        .I1(paddr[6]),
        .I2(paddr[7]),
        .I3(penable),
        .I4(psel),
        .I5(pwrite),
        .O(pslverr_INST_0_i_4_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart
   (rts_n,
    prdata,
    \tx_data_reg[0] ,
    waddrerr_reg,
    pslverr,
    pready,
    tx,
    pwdata,
    clk,
    reset_n,
    paddr_1_sp_1,
    paddr,
    pwrite_0,
    paddr_0_sp_1,
    \paddr[0]_0 ,
    \paddr[0]_1 ,
    pwrite_1,
    pwrite_2,
    \paddr[0]_2 ,
    \paddr[0]_3 ,
    pwrite_3,
    pwrite,
    penable,
    psel,
    pwrite_4,
    cts_n,
    rx);
  output rts_n;
  output [7:0]prdata;
  output \tx_data_reg[0] ;
  output waddrerr_reg;
  output pslverr;
  output pready;
  output tx;
  input [7:0]pwdata;
  input clk;
  input reset_n;
  input paddr_1_sp_1;
  input [11:0]paddr;
  input pwrite_0;
  input paddr_0_sp_1;
  input \paddr[0]_0 ;
  input \paddr[0]_1 ;
  input pwrite_1;
  input pwrite_2;
  input \paddr[0]_2 ;
  input \paddr[0]_3 ;
  input pwrite_3;
  input pwrite;
  input penable;
  input psel;
  input pwrite_4;
  input cts_n;
  input rx;

  wire baudrate_gen_n_0;
  wire baudrate_gen_n_1;
  wire baudrate_gen_n_2;
  wire baudrate_gen_n_3;
  wire [1:0]cfg_data_bit_num;
  wire cfg_parity_en;
  wire cfg_stop_bit_num;
  wire clk;
  wire ctrl_start_tx;
  wire cts_n;
  wire [11:0]paddr;
  wire \paddr[0]_0 ;
  wire \paddr[0]_1 ;
  wire \paddr[0]_2 ;
  wire \paddr[0]_3 ;
  wire paddr_0_sn_1;
  wire paddr_1_sn_1;
  wire penable;
  wire [7:0]prdata;
  wire pready;
  wire psel;
  wire pslverr;
  wire [7:0]pwdata;
  wire pwrite;
  wire pwrite_0;
  wire pwrite_1;
  wire pwrite_2;
  wire pwrite_3;
  wire pwrite_4;
  wire receiver_n_1;
  wire receiver_n_2;
  wire receiver_n_3;
  wire receiver_n_4;
  wire receiver_n_5;
  wire receiver_n_6;
  wire receiver_n_7;
  wire receiver_n_8;
  wire receiver_n_9;
  wire register_block_n_1;
  wire register_block_n_17;
  wire register_block_n_18;
  wire register_block_n_19;
  wire register_block_n_21;
  wire reset_n;
  wire rts_n;
  wire rx;
  wire stt_tx_done;
  wire transmitter_n_0;
  wire transmitter_n_1;
  wire transmitter_n_3;
  wire transmitter_n_4;
  wire transmitter_n_5;
  wire transmitter_n_6;
  wire transmitter_n_7;
  wire tx;
  wire \tx_data_reg[0] ;
  wire waddrerr_reg;

  assign paddr_0_sn_1 = paddr_0_sp_1;
  assign paddr_1_sn_1 = paddr_1_sp_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_gen baudrate_gen
       (.\FSM_sequential_current_state_reg[1] (transmitter_n_3),
        .SR(register_block_n_1),
        .\bitpos_data_reg[2] (baudrate_gen_n_1),
        .\bitpos_stop_reg[1] (baudrate_gen_n_0),
        .clk(clk),
        .out(transmitter_n_1),
        .\paddr[1] (waddrerr_reg),
        .\paddr[3] (register_block_n_19),
        .\paddr[8] (register_block_n_18),
        .\sample_reg[1] (baudrate_gen_n_2),
        .stt_tx_done(stt_tx_done),
        .stt_tx_done_reg(baudrate_gen_n_3),
        .wack_reg(register_block_n_21));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver receiver
       (.D({receiver_n_2,receiver_n_3,receiver_n_4,receiver_n_5,receiver_n_6,receiver_n_7,receiver_n_8,receiver_n_9}),
        .Q(cfg_data_bit_num),
        .SR(register_block_n_1),
        .cfg_parity_en(cfg_parity_en),
        .cfg_stop_bit_num(cfg_stop_bit_num),
        .clk(clk),
        .paddr(paddr[7:0]),
        .\paddr[8] (\tx_data_reg[0] ),
        .rts_n(rts_n),
        .rx(rx),
        .\rx_acc_reg[4] (baudrate_gen_n_2),
        .stt_rx_done_reg_0(receiver_n_1),
        .wack_reg(register_block_n_21));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_block register_block
       (.D({receiver_n_2,receiver_n_3,receiver_n_4,receiver_n_5,receiver_n_6,receiver_n_7,receiver_n_8,receiver_n_9}),
        .\FSM_sequential_current_state_reg[1] (transmitter_n_7),
        .Q(cfg_data_bit_num),
        .SR(register_block_n_1),
        .\bitpos_data_reg[0] (transmitter_n_6),
        .\bitpos_data_reg[1] (transmitter_n_5),
        .\bitpos_data_reg[2] (transmitter_n_4),
        .cfg_parity_en(cfg_parity_en),
        .cfg_stop_bit_num(cfg_stop_bit_num),
        .clk(clk),
        .ctrl_start_tx(ctrl_start_tx),
        .ctrl_start_tx_reg(register_block_n_19),
        .out({transmitter_n_0,transmitter_n_1}),
        .paddr(paddr),
        .\paddr[0]_0 (\paddr[0]_0 ),
        .\paddr[0]_1 (\paddr[0]_1 ),
        .\paddr[0]_2 (\paddr[0]_2 ),
        .\paddr[0]_3 (\paddr[0]_3 ),
        .paddr_0_sp_1(paddr_0_sn_1),
        .paddr_1_sp_1(paddr_1_sn_1),
        .paddr_5_sp_1(receiver_n_1),
        .penable(penable),
        .prdata(prdata),
        .pready(pready),
        .psel(psel),
        .pslverr(pslverr),
        .pwdata(pwdata),
        .pwrite(pwrite),
        .pwrite_0(pwrite_0),
        .pwrite_1(pwrite_1),
        .pwrite_2(pwrite_2),
        .pwrite_3(pwrite_3),
        .pwrite_4(pwrite_4),
        .reset_n(reset_n),
        .stt_rx_done_reg(rts_n),
        .stt_tx_done(stt_tx_done),
        .stt_tx_done_reg(register_block_n_21),
        .tx(tx),
        .\tx_data_reg[0] (\tx_data_reg[0] ),
        .\tx_data_reg[0]_0 (register_block_n_17),
        .waddrerr_reg(waddrerr_reg),
        .waddrerr_reg_0(register_block_n_18));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter transmitter
       (.\FSM_sequential_current_state_reg[0]_0 (baudrate_gen_n_0),
        .Q(cfg_data_bit_num),
        .SR(register_block_n_1),
        .\bitpos_data_reg[2]_0 (transmitter_n_4),
        .\bitpos_data_reg[2]_1 (transmitter_n_5),
        .\bitpos_data_reg[2]_2 (transmitter_n_6),
        .cfg_parity_en(cfg_parity_en),
        .cfg_stop_bit_num(cfg_stop_bit_num),
        .clk(clk),
        .ctrl_start_tx(ctrl_start_tx),
        .ctrl_start_tx_reg(transmitter_n_7),
        .cts_n(cts_n),
        .out({transmitter_n_0,transmitter_n_1}),
        .\paddr[3] (register_block_n_19),
        .\paddr[8] (register_block_n_17),
        .pwdata(pwdata[0]),
        .reset_n(reset_n),
        .stt_tx_done(stt_tx_done),
        .stt_tx_done_reg_0(transmitter_n_3),
        .stt_tx_done_reg_1(baudrate_gen_n_3),
        .\tx_acc_reg[4] (baudrate_gen_n_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rb_regs
   (cfg_stop_bit_num,
    stt_rx_done_reg_reg_0,
    cfg_parity_en,
    ctrl_start_tx,
    prdata,
    \tx_data_reg[0]_0 ,
    waddrerr_reg_0,
    Q,
    pslverr,
    \tx_data_reg[0]_1 ,
    waddrerr_reg_1,
    ctrl_start_tx_reg_0,
    pready,
    stt_tx_done_reg_0,
    tx,
    pwdata,
    clk,
    stt_tx_done,
    stt_rx_done_reg_0,
    \FSM_sequential_current_state_reg[1] ,
    reset_n,
    paddr_1_sp_1,
    paddr,
    pwrite_0,
    paddr_0_sp_1,
    \paddr[0]_0 ,
    \paddr[0]_1 ,
    pwrite_1,
    pwrite_2,
    \paddr[0]_2 ,
    \paddr[0]_3 ,
    pwrite_3,
    pwrite,
    penable,
    psel,
    pwrite_4,
    paddr_5_sp_1,
    out,
    \bitpos_data_reg[2] ,
    \bitpos_data_reg[1] ,
    \bitpos_data_reg[0] ,
    D);
  output cfg_stop_bit_num;
  output stt_rx_done_reg_reg_0;
  output cfg_parity_en;
  output ctrl_start_tx;
  output [7:0]prdata;
  output \tx_data_reg[0]_0 ;
  output waddrerr_reg_0;
  output [1:0]Q;
  output pslverr;
  output \tx_data_reg[0]_1 ;
  output waddrerr_reg_1;
  output ctrl_start_tx_reg_0;
  output pready;
  output stt_tx_done_reg_0;
  output tx;
  input [7:0]pwdata;
  input clk;
  input stt_tx_done;
  input stt_rx_done_reg_0;
  input \FSM_sequential_current_state_reg[1] ;
  input reset_n;
  input paddr_1_sp_1;
  input [11:0]paddr;
  input pwrite_0;
  input paddr_0_sp_1;
  input \paddr[0]_0 ;
  input \paddr[0]_1 ;
  input pwrite_1;
  input pwrite_2;
  input \paddr[0]_2 ;
  input \paddr[0]_3 ;
  input pwrite_3;
  input pwrite;
  input penable;
  input psel;
  input pwrite_4;
  input paddr_5_sp_1;
  input [1:0]out;
  input \bitpos_data_reg[2] ;
  input \bitpos_data_reg[1] ;
  input \bitpos_data_reg[0] ;
  input [7:0]D;

  wire [7:0]D;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]Q;
  wire \bitpos_data_reg[0] ;
  wire \bitpos_data_reg[1] ;
  wire \bitpos_data_reg[2] ;
  wire cfg_parity_en;
  wire cfg_parity_type;
  wire cfg_stop_bit_num;
  wire cfg_wen;
  wire clk;
  wire ctrl_start_tx;
  wire ctrl_start_tx_reg_0;
  wire [1:0]out;
  wire [11:0]paddr;
  wire \paddr[0]_0 ;
  wire \paddr[0]_1 ;
  wire \paddr[0]_2 ;
  wire \paddr[0]_3 ;
  wire paddr_0_sn_1;
  wire paddr_1_sn_1;
  wire paddr_5_sn_1;
  wire penable;
  wire [7:0]prdata;
  wire \prdata[0]_INST_0_i_1_n_0 ;
  wire \prdata[0]_INST_0_i_2_n_0 ;
  wire \prdata[0]_INST_0_i_3_n_0 ;
  wire \prdata[0]_INST_0_i_4_n_0 ;
  wire \prdata[0]_INST_0_i_5_n_0 ;
  wire \prdata[1]_INST_0_i_1_n_0 ;
  wire \prdata[1]_INST_0_i_2_n_0 ;
  wire \prdata[1]_INST_0_i_5_n_0 ;
  wire \prdata[1]_INST_0_i_6_n_0 ;
  wire \prdata[2]_INST_0_i_2_n_0 ;
  wire \prdata[3]_INST_0_i_2_n_0 ;
  wire \prdata[4]_INST_0_i_2_n_0 ;
  wire \prdata[5]_INST_0_i_1_n_0 ;
  wire \prdata[6]_INST_0_i_1_n_0 ;
  wire \prdata[7]_INST_0_i_3_n_0 ;
  wire pready;
  wire psel;
  wire pslverr;
  wire [7:0]pwdata;
  wire pwrite;
  wire pwrite_0;
  wire pwrite_1;
  wire pwrite_2;
  wire pwrite_3;
  wire pwrite_4;
  wire reset_n;
  wire [7:0]rx_data_reg;
  wire stt_rx_done_reg;
  wire stt_rx_done_reg_0;
  wire stt_rx_done_reg_reg_0;
  wire stt_tx_done;
  wire stt_tx_done_reg;
  wire stt_tx_done_reg_0;
  wire tx;
  wire tx_INST_0_i_1_n_0;
  wire tx_INST_0_i_2_n_0;
  wire tx_INST_0_i_3_n_0;
  wire tx_INST_0_i_4_n_0;
  wire [7:0]tx_data;
  wire \tx_data_reg[0]_0 ;
  wire \tx_data_reg[0]_1 ;
  wire tx_wen;
  wire wack;
  wire waddrerr;
  wire waddrerr_i_1_n_0;
  wire waddrerr_i_2_n_0;
  wire waddrerr_reg_0;
  wire waddrerr_reg_1;
  wire wr_en;

  assign paddr_0_sn_1 = paddr_0_sp_1;
  assign paddr_1_sn_1 = paddr_1_sp_1;
  assign paddr_5_sn_1 = paddr_5_sp_1;
  LUT3 #(
    .INIT(8'h04)) 
    \cfg_data_bit_num[1]_i_1 
       (.I0(paddr[3]),
        .I1(paddr[2]),
        .I2(\tx_data_reg[0]_1 ),
        .O(cfg_wen));
  FDRE \cfg_data_bit_num_reg[0] 
       (.C(clk),
        .CE(cfg_wen),
        .D(pwdata[0]),
        .Q(Q[0]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \cfg_data_bit_num_reg[1] 
       (.C(clk),
        .CE(cfg_wen),
        .D(pwdata[1]),
        .Q(Q[1]),
        .R(stt_rx_done_reg_reg_0));
  FDRE cfg_parity_en_reg
       (.C(clk),
        .CE(cfg_wen),
        .D(pwdata[3]),
        .Q(cfg_parity_en),
        .R(stt_rx_done_reg_reg_0));
  FDRE cfg_parity_type_reg
       (.C(clk),
        .CE(cfg_wen),
        .D(pwdata[4]),
        .Q(cfg_parity_type),
        .R(stt_rx_done_reg_reg_0));
  FDRE cfg_stop_bit_num_reg
       (.C(clk),
        .CE(cfg_wen),
        .D(pwdata[2]),
        .Q(cfg_stop_bit_num),
        .R(stt_rx_done_reg_reg_0));
  FDRE ctrl_start_tx_reg
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state_reg[1] ),
        .Q(ctrl_start_tx),
        .R(stt_rx_done_reg_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD00)) 
    \prdata[0]_INST_0 
       (.I0(\prdata[0]_INST_0_i_1_n_0 ),
        .I1(\prdata[0]_INST_0_i_2_n_0 ),
        .I2(\prdata[0]_INST_0_i_3_n_0 ),
        .I3(paddr_1_sn_1),
        .I4(\prdata[0]_INST_0_i_4_n_0 ),
        .I5(\prdata[0]_INST_0_i_5_n_0 ),
        .O(prdata[0]));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \prdata[0]_INST_0_i_1 
       (.I0(paddr[4]),
        .I1(pwrite_0),
        .I2(\tx_data_reg[0]_0 ),
        .I3(waddrerr_reg_0),
        .I4(paddr[3]),
        .I5(stt_tx_done_reg),
        .O(\prdata[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \prdata[0]_INST_0_i_2 
       (.I0(ctrl_start_tx),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[2]),
        .I5(paddr[3]),
        .O(\prdata[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \prdata[0]_INST_0_i_3 
       (.I0(rx_data_reg[0]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \prdata[0]_INST_0_i_4 
       (.I0(tx_data[0]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \prdata[0]_INST_0_i_5 
       (.I0(Q[0]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD00)) 
    \prdata[1]_INST_0 
       (.I0(\prdata[1]_INST_0_i_1_n_0 ),
        .I1(\prdata[1]_INST_0_i_2_n_0 ),
        .I2(paddr_0_sn_1),
        .I3(paddr_1_sn_1),
        .I4(\prdata[1]_INST_0_i_5_n_0 ),
        .I5(\prdata[1]_INST_0_i_6_n_0 ),
        .O(prdata[1]));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \prdata[1]_INST_0_i_1 
       (.I0(paddr[4]),
        .I1(pwrite_0),
        .I2(\tx_data_reg[0]_0 ),
        .I3(waddrerr_reg_0),
        .I4(paddr[3]),
        .I5(stt_rx_done_reg),
        .O(\prdata[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \prdata[1]_INST_0_i_2 
       (.I0(rx_data_reg[1]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \prdata[1]_INST_0_i_5 
       (.I0(tx_data[1]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \prdata[1]_INST_0_i_6 
       (.I0(Q[1]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \prdata[2]_INST_0 
       (.I0(\paddr[0]_1 ),
        .I1(rx_data_reg[2]),
        .I2(pwrite_1),
        .I3(\prdata[2]_INST_0_i_2_n_0 ),
        .I4(cfg_stop_bit_num),
        .I5(pwrite_2),
        .O(prdata[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \prdata[2]_INST_0_i_2 
       (.I0(tx_data[2]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \prdata[3]_INST_0 
       (.I0(\paddr[0]_2 ),
        .I1(rx_data_reg[3]),
        .I2(pwrite_1),
        .I3(\prdata[3]_INST_0_i_2_n_0 ),
        .I4(cfg_parity_en),
        .I5(pwrite_2),
        .O(prdata[3]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \prdata[3]_INST_0_i_2 
       (.I0(tx_data[3]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \prdata[4]_INST_0 
       (.I0(\paddr[0]_3 ),
        .I1(rx_data_reg[4]),
        .I2(pwrite_1),
        .I3(\prdata[4]_INST_0_i_2_n_0 ),
        .I4(cfg_parity_type),
        .I5(pwrite_2),
        .O(prdata[4]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \prdata[4]_INST_0_i_2 
       (.I0(tx_data[4]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DFF0CFFFFFF0C)) 
    \prdata[5]_INST_0 
       (.I0(pwrite_3),
        .I1(rx_data_reg[5]),
        .I2(pwrite_1),
        .I3(\prdata[5]_INST_0_i_1_n_0 ),
        .I4(pwdata[5]),
        .I5(pwrite_2),
        .O(prdata[5]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \prdata[5]_INST_0_i_1 
       (.I0(tx_data[5]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5D0CFF0C)) 
    \prdata[6]_INST_0 
       (.I0(pwrite_3),
        .I1(rx_data_reg[6]),
        .I2(pwrite_1),
        .I3(pwdata[6]),
        .I4(pwrite_2),
        .I5(\prdata[6]_INST_0_i_1_n_0 ),
        .O(prdata[6]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \prdata[6]_INST_0_i_1 
       (.I0(tx_data[6]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DFF0CFFFFFF0C)) 
    \prdata[7]_INST_0 
       (.I0(pwrite_3),
        .I1(rx_data_reg[7]),
        .I2(pwrite_1),
        .I3(\prdata[7]_INST_0_i_3_n_0 ),
        .I4(pwdata[7]),
        .I5(pwrite_2),
        .O(prdata[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \prdata[7]_INST_0_i_3 
       (.I0(tx_data[7]),
        .I1(paddr[4]),
        .I2(pwrite_0),
        .I3(\paddr[0]_0 ),
        .I4(paddr[3]),
        .I5(paddr[2]),
        .O(\prdata[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8A80)) 
    pready_INST_0
       (.I0(psel),
        .I1(wack),
        .I2(pwrite),
        .I3(penable),
        .O(pready));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hD8008800)) 
    pslverr_INST_0
       (.I0(pwrite),
        .I1(waddrerr),
        .I2(penable),
        .I3(psel),
        .I4(pwrite_4),
        .O(pslverr));
  LUT2 #(
    .INIT(4'hE)) 
    pslverr_INST_0_i_2
       (.I0(paddr[0]),
        .I1(paddr[1]),
        .O(waddrerr_reg_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pslverr_INST_0_i_3
       (.I0(paddr[10]),
        .I1(paddr[11]),
        .I2(paddr[9]),
        .I3(paddr[8]),
        .O(\tx_data_reg[0]_0 ));
  FDRE \rx_data_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(rx_data_reg[0]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \rx_data_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(rx_data_reg[1]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \rx_data_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(rx_data_reg[2]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \rx_data_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(rx_data_reg[3]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \rx_data_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(rx_data_reg[4]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \rx_data_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(rx_data_reg[5]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \rx_data_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(rx_data_reg[6]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \rx_data_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(rx_data_reg[7]),
        .R(stt_rx_done_reg_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    stt_rx_done_i_2
       (.I0(reset_n),
        .O(stt_rx_done_reg_reg_0));
  FDRE stt_rx_done_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(stt_rx_done_reg_0),
        .Q(stt_rx_done_reg),
        .R(stt_rx_done_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1DFF)) 
    stt_tx_done_i_3
       (.I0(penable),
        .I1(pwrite),
        .I2(wack),
        .I3(psel),
        .O(stt_tx_done_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    stt_tx_done_i_4
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .O(ctrl_start_tx_reg_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    stt_tx_done_i_5
       (.I0(\tx_data_reg[0]_0 ),
        .I1(paddr[4]),
        .I2(paddr[5]),
        .I3(paddr[6]),
        .I4(paddr[7]),
        .O(waddrerr_reg_1));
  FDSE stt_tx_done_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(stt_tx_done),
        .Q(stt_tx_done_reg),
        .S(stt_rx_done_reg_reg_0));
  LUT6 #(
    .INIT(64'h7733743344337433)) 
    tx_INST_0
       (.I0(tx_INST_0_i_1_n_0),
        .I1(out[0]),
        .I2(tx_INST_0_i_2_n_0),
        .I3(out[1]),
        .I4(\bitpos_data_reg[2] ),
        .I5(tx_INST_0_i_3_n_0),
        .O(tx));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    tx_INST_0_i_1
       (.I0(cfg_parity_en),
        .I1(tx_INST_0_i_4_n_0),
        .I2(tx_data[7]),
        .I3(tx_data[6]),
        .I4(tx_data[5]),
        .I5(tx_data[4]),
        .O(tx_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_INST_0_i_2
       (.I0(tx_data[3]),
        .I1(tx_data[2]),
        .I2(\bitpos_data_reg[1] ),
        .I3(tx_data[1]),
        .I4(\bitpos_data_reg[0] ),
        .I5(tx_data[0]),
        .O(tx_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_INST_0_i_3
       (.I0(tx_data[7]),
        .I1(tx_data[6]),
        .I2(\bitpos_data_reg[1] ),
        .I3(tx_data[5]),
        .I4(\bitpos_data_reg[0] ),
        .I5(tx_data[4]),
        .O(tx_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tx_INST_0_i_4
       (.I0(tx_data[1]),
        .I1(tx_data[0]),
        .I2(tx_data[3]),
        .I3(tx_data[2]),
        .O(tx_INST_0_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    \tx_data[7]_i_1 
       (.I0(paddr[3]),
        .I1(\tx_data_reg[0]_1 ),
        .I2(paddr[2]),
        .O(tx_wen));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tx_data[7]_i_2 
       (.I0(waddrerr_i_2_n_0),
        .I1(paddr[0]),
        .I2(paddr[1]),
        .I3(paddr_5_sn_1),
        .I4(paddr[4]),
        .I5(\tx_data_reg[0]_0 ),
        .O(\tx_data_reg[0]_1 ));
  FDRE \tx_data_reg[0] 
       (.C(clk),
        .CE(tx_wen),
        .D(pwdata[0]),
        .Q(tx_data[0]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \tx_data_reg[1] 
       (.C(clk),
        .CE(tx_wen),
        .D(pwdata[1]),
        .Q(tx_data[1]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \tx_data_reg[2] 
       (.C(clk),
        .CE(tx_wen),
        .D(pwdata[2]),
        .Q(tx_data[2]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \tx_data_reg[3] 
       (.C(clk),
        .CE(tx_wen),
        .D(pwdata[3]),
        .Q(tx_data[3]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \tx_data_reg[4] 
       (.C(clk),
        .CE(tx_wen),
        .D(pwdata[4]),
        .Q(tx_data[4]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \tx_data_reg[5] 
       (.C(clk),
        .CE(tx_wen),
        .D(pwdata[5]),
        .Q(tx_data[5]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \tx_data_reg[6] 
       (.C(clk),
        .CE(tx_wen),
        .D(pwdata[6]),
        .Q(tx_data[6]),
        .R(stt_rx_done_reg_reg_0));
  FDRE \tx_data_reg[7] 
       (.C(clk),
        .CE(tx_wen),
        .D(pwdata[7]),
        .Q(tx_data[7]),
        .R(stt_rx_done_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    wack_i_1
       (.I0(pwrite),
        .I1(penable),
        .I2(psel),
        .O(wr_en));
  FDRE wack_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_en),
        .Q(wack),
        .R(stt_rx_done_reg_reg_0));
  LUT6 #(
    .INIT(64'h0000FF8F00000000)) 
    waddrerr_i_1
       (.I0(paddr[3]),
        .I1(paddr[2]),
        .I2(waddrerr_reg_1),
        .I3(waddrerr_reg_0),
        .I4(waddrerr_i_2_n_0),
        .I5(reset_n),
        .O(waddrerr_i_1_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    waddrerr_i_2
       (.I0(psel),
        .I1(penable),
        .I2(pwrite),
        .O(waddrerr_i_2_n_0));
  FDRE waddrerr_reg
       (.C(clk),
        .CE(1'b1),
        .D(waddrerr_i_1_n_0),
        .Q(waddrerr),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver
   (rts_n,
    stt_rx_done_reg_0,
    D,
    clk,
    SR,
    paddr,
    \paddr[8] ,
    wack_reg,
    cfg_stop_bit_num,
    cfg_parity_en,
    \rx_acc_reg[4] ,
    rx,
    Q);
  output rts_n;
  output stt_rx_done_reg_0;
  output [7:0]D;
  input clk;
  input [0:0]SR;
  input [7:0]paddr;
  input \paddr[8] ;
  input wack_reg;
  input cfg_stop_bit_num;
  input cfg_parity_en;
  input \rx_acc_reg[4] ;
  input rx;
  input [1:0]Q;

  wire [7:0]D;
  wire \FSM_sequential_current_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3__0_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2__0_n_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \bitpos_data[0]_i_1_n_0 ;
  wire \bitpos_data[1]_i_1_n_0 ;
  wire \bitpos_data[2]_i_1_n_0 ;
  wire \bitpos_data[3]_i_1_n_0 ;
  wire \bitpos_data[3]_i_2_n_0 ;
  wire \bitpos_data_reg_n_0_[0] ;
  wire \bitpos_data_reg_n_0_[1] ;
  wire \bitpos_data_reg_n_0_[2] ;
  wire \bitpos_data_reg_n_0_[3] ;
  wire \bitpos_stop[0]_i_1_n_0 ;
  wire \bitpos_stop[1]_i_1_n_0 ;
  wire \bitpos_stop[1]_i_2_n_0 ;
  wire \bitpos_stop_reg_n_0_[0] ;
  wire \bitpos_stop_reg_n_0_[1] ;
  wire cfg_parity_en;
  wire cfg_stop_bit_num;
  wire clk;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state;
  wire [1:0]next_state;
  wire [7:0]paddr;
  wire \paddr[8] ;
  wire rts_n;
  wire rx;
  wire \rx_acc_reg[4] ;
  wire sample;
  wire \sample[0]_i_1_n_0 ;
  wire \sample[1]_i_1_n_0 ;
  wire \sample[2]_i_1_n_0 ;
  wire \sample[3]_i_2_n_0 ;
  wire \sample[3]_i_4_n_0 ;
  wire \sample[3]_i_5_n_0 ;
  wire \sample_reg_n_0_[0] ;
  wire \sample_reg_n_0_[1] ;
  wire \sample_reg_n_0_[2] ;
  wire \sample_reg_n_0_[3] ;
  wire \scratch[0]_i_1_n_0 ;
  wire \scratch[1]_i_1_n_0 ;
  wire \scratch[2]_i_1_n_0 ;
  wire \scratch[3]_i_1_n_0 ;
  wire \scratch[3]_i_2_n_0 ;
  wire \scratch[4]_i_1_n_0 ;
  wire \scratch[5]_i_1_n_0 ;
  wire \scratch[5]_i_2_n_0 ;
  wire \scratch[5]_i_3_n_0 ;
  wire \scratch[5]_i_4_n_0 ;
  wire \scratch[6]_i_1_n_0 ;
  wire \scratch[7]_i_1_n_0 ;
  wire \scratch[7]_i_2_n_0 ;
  wire \scratch[7]_i_3_n_0 ;
  wire stt_rx_done_i_1_n_0;
  wire stt_rx_done_i_3_n_0;
  wire stt_rx_done_i_4_n_0;
  wire stt_rx_done_i_6_n_0;
  wire stt_rx_done_reg_0;
  wire wack_reg;

  LUT4 #(
    .INIT(16'h0C07)) 
    \FSM_sequential_current_state[0]_i_1__0 
       (.I0(\FSM_sequential_current_state[0]_i_2__0_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\FSM_sequential_current_state[0]_i_3__0_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h0400000400402000)) 
    \FSM_sequential_current_state[0]_i_2__0 
       (.I0(\bitpos_data_reg_n_0_[3] ),
        .I1(\bitpos_data_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\bitpos_data_reg_n_0_[1] ),
        .I5(\bitpos_data_reg_n_0_[0] ),
        .O(\FSM_sequential_current_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_current_state[0]_i_3__0 
       (.I0(\sample_reg_n_0_[2] ),
        .I1(\sample_reg_n_0_[0] ),
        .I2(\sample_reg_n_0_[1] ),
        .I3(\sample_reg_n_0_[3] ),
        .O(\FSM_sequential_current_state[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h05C0)) 
    \FSM_sequential_current_state[1]_i_1__0 
       (.I0(stt_rx_done_i_3_n_0),
        .I1(\FSM_sequential_current_state[1]_i_2__0_n_0 ),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_current_state[1]_i_2__0 
       (.I0(\FSM_sequential_current_state[0]_i_2__0_n_0 ),
        .I1(\sample_reg_n_0_[3] ),
        .I2(\sample_reg_n_0_[1] ),
        .I3(\sample_reg_n_0_[0] ),
        .I4(\sample_reg_n_0_[2] ),
        .O(\FSM_sequential_current_state[1]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(next_state[1]),
        .Q(current_state[1]));
  LUT3 #(
    .INIT(8'h04)) 
    \bitpos_data[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\bitpos_data_reg_n_0_[0] ),
        .O(\bitpos_data[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \bitpos_data[1]_i_1 
       (.I0(current_state[0]),
        .I1(\bitpos_data_reg_n_0_[1] ),
        .I2(\bitpos_data_reg_n_0_[0] ),
        .O(\bitpos_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \bitpos_data[2]_i_1 
       (.I0(current_state[0]),
        .I1(\bitpos_data_reg_n_0_[0] ),
        .I2(\bitpos_data_reg_n_0_[1] ),
        .I3(\bitpos_data_reg_n_0_[2] ),
        .O(\bitpos_data[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \bitpos_data[3]_i_1 
       (.I0(current_state[1]),
        .I1(\bitpos_stop[1]_i_2_n_0 ),
        .I2(current_state[0]),
        .O(\bitpos_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \bitpos_data[3]_i_2 
       (.I0(\bitpos_data_reg_n_0_[3] ),
        .I1(\bitpos_data_reg_n_0_[2] ),
        .I2(\bitpos_data_reg_n_0_[0] ),
        .I3(\bitpos_data_reg_n_0_[1] ),
        .I4(current_state[0]),
        .O(\bitpos_data[3]_i_2_n_0 ));
  FDCE \bitpos_data_reg[0] 
       (.C(clk),
        .CE(\bitpos_data[3]_i_1_n_0 ),
        .CLR(SR),
        .D(\bitpos_data[0]_i_1_n_0 ),
        .Q(\bitpos_data_reg_n_0_[0] ));
  FDCE \bitpos_data_reg[1] 
       (.C(clk),
        .CE(\bitpos_data[3]_i_1_n_0 ),
        .CLR(SR),
        .D(\bitpos_data[1]_i_1_n_0 ),
        .Q(\bitpos_data_reg_n_0_[1] ));
  FDCE \bitpos_data_reg[2] 
       (.C(clk),
        .CE(\bitpos_data[3]_i_1_n_0 ),
        .CLR(SR),
        .D(\bitpos_data[2]_i_1_n_0 ),
        .Q(\bitpos_data_reg_n_0_[2] ));
  FDCE \bitpos_data_reg[3] 
       (.C(clk),
        .CE(\bitpos_data[3]_i_1_n_0 ),
        .CLR(SR),
        .D(\bitpos_data[3]_i_2_n_0 ),
        .Q(\bitpos_data_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'hBA40)) 
    \bitpos_stop[0]_i_1 
       (.I0(current_state[0]),
        .I1(\bitpos_stop[1]_i_2_n_0 ),
        .I2(current_state[1]),
        .I3(\bitpos_stop_reg_n_0_[0] ),
        .O(\bitpos_stop[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFCC2000)) 
    \bitpos_stop[1]_i_1 
       (.I0(\bitpos_stop_reg_n_0_[0] ),
        .I1(current_state[0]),
        .I2(\bitpos_stop[1]_i_2_n_0 ),
        .I3(current_state[1]),
        .I4(\bitpos_stop_reg_n_0_[1] ),
        .O(\bitpos_stop[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \bitpos_stop[1]_i_2 
       (.I0(\rx_acc_reg[4] ),
        .I1(\sample_reg_n_0_[3] ),
        .I2(\sample_reg_n_0_[2] ),
        .I3(\sample_reg_n_0_[1] ),
        .I4(\sample_reg_n_0_[0] ),
        .O(\bitpos_stop[1]_i_2_n_0 ));
  FDCE \bitpos_stop_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\bitpos_stop[0]_i_1_n_0 ),
        .Q(\bitpos_stop_reg_n_0_[0] ));
  FDCE \bitpos_stop_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\bitpos_stop[1]_i_1_n_0 ),
        .Q(\bitpos_stop_reg_n_0_[1] ));
  LUT4 #(
    .INIT(16'h0057)) 
    \sample[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\rx_acc_reg[4] ),
        .I3(\sample_reg_n_0_[0] ),
        .O(\sample[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00575700)) 
    \sample[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\rx_acc_reg[4] ),
        .I3(\sample_reg_n_0_[0] ),
        .I4(\sample_reg_n_0_[1] ),
        .O(\sample[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0057575757000000)) 
    \sample[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\rx_acc_reg[4] ),
        .I3(\sample_reg_n_0_[0] ),
        .I4(\sample_reg_n_0_[1] ),
        .I5(\sample_reg_n_0_[2] ),
        .O(\sample[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03700373)) 
    \sample[3]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_3__0_n_0 ),
        .I1(\rx_acc_reg[4] ),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(\sample[3]_i_4_n_0 ),
        .O(sample));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \sample[3]_i_2 
       (.I0(\sample[3]_i_5_n_0 ),
        .I1(\sample_reg_n_0_[1] ),
        .I2(\sample_reg_n_0_[0] ),
        .I3(\sample_reg_n_0_[2] ),
        .I4(\sample_reg_n_0_[3] ),
        .O(\sample[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \sample[3]_i_4 
       (.I0(\sample_reg_n_0_[3] ),
        .I1(rx),
        .I2(\sample_reg_n_0_[0] ),
        .I3(\sample_reg_n_0_[1] ),
        .I4(\sample_reg_n_0_[2] ),
        .O(\sample[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \sample[3]_i_5 
       (.I0(\rx_acc_reg[4] ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\sample[3]_i_5_n_0 ));
  FDCE \sample_reg[0] 
       (.C(clk),
        .CE(sample),
        .CLR(SR),
        .D(\sample[0]_i_1_n_0 ),
        .Q(\sample_reg_n_0_[0] ));
  FDCE \sample_reg[1] 
       (.C(clk),
        .CE(sample),
        .CLR(SR),
        .D(\sample[1]_i_1_n_0 ),
        .Q(\sample_reg_n_0_[1] ));
  FDCE \sample_reg[2] 
       (.C(clk),
        .CE(sample),
        .CLR(SR),
        .D(\sample[2]_i_1_n_0 ),
        .Q(\sample_reg_n_0_[2] ));
  FDCE \sample_reg[3] 
       (.C(clk),
        .CE(sample),
        .CLR(SR),
        .D(\sample[3]_i_2_n_0 ),
        .Q(\sample_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \scratch[0]_i_1 
       (.I0(rx),
        .I1(\bitpos_data_reg_n_0_[1] ),
        .I2(\bitpos_stop[1]_i_2_n_0 ),
        .I3(\bitpos_data[0]_i_1_n_0 ),
        .I4(\scratch[3]_i_2_n_0 ),
        .I5(D[0]),
        .O(\scratch[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \scratch[1]_i_1 
       (.I0(rx),
        .I1(\scratch[5]_i_2_n_0 ),
        .I2(\bitpos_data_reg_n_0_[3] ),
        .I3(\bitpos_data_reg_n_0_[2] ),
        .I4(D[1]),
        .O(\scratch[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \scratch[2]_i_1 
       (.I0(rx),
        .I1(\bitpos_data_reg_n_0_[1] ),
        .I2(\bitpos_data[0]_i_1_n_0 ),
        .I3(\bitpos_stop[1]_i_2_n_0 ),
        .I4(\scratch[3]_i_2_n_0 ),
        .I5(D[2]),
        .O(\scratch[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \scratch[3]_i_1 
       (.I0(rx),
        .I1(\scratch[7]_i_3_n_0 ),
        .I2(\bitpos_data_reg_n_0_[1] ),
        .I3(\bitpos_stop[1]_i_2_n_0 ),
        .I4(\scratch[3]_i_2_n_0 ),
        .I5(D[3]),
        .O(\scratch[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \scratch[3]_i_2 
       (.I0(\bitpos_data_reg_n_0_[2] ),
        .I1(\bitpos_data_reg_n_0_[3] ),
        .O(\scratch[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \scratch[4]_i_1 
       (.I0(rx),
        .I1(\scratch[7]_i_2_n_0 ),
        .I2(\bitpos_data_reg_n_0_[1] ),
        .I3(\bitpos_stop[1]_i_2_n_0 ),
        .I4(\bitpos_data[0]_i_1_n_0 ),
        .I5(D[4]),
        .O(\scratch[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \scratch[5]_i_1 
       (.I0(rx),
        .I1(\bitpos_data_reg_n_0_[3] ),
        .I2(\bitpos_data_reg_n_0_[2] ),
        .I3(\scratch[5]_i_2_n_0 ),
        .I4(D[5]),
        .O(\scratch[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \scratch[5]_i_2 
       (.I0(\scratch[5]_i_3_n_0 ),
        .I1(\bitpos_data_reg_n_0_[0] ),
        .I2(\rx_acc_reg[4] ),
        .I3(\sample_reg_n_0_[3] ),
        .I4(\scratch[5]_i_4_n_0 ),
        .I5(\bitpos_data_reg_n_0_[1] ),
        .O(\scratch[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \scratch[5]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(\scratch[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \scratch[5]_i_4 
       (.I0(\sample_reg_n_0_[2] ),
        .I1(\sample_reg_n_0_[1] ),
        .I2(\sample_reg_n_0_[0] ),
        .O(\scratch[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \scratch[6]_i_1 
       (.I0(rx),
        .I1(\scratch[7]_i_2_n_0 ),
        .I2(\bitpos_data_reg_n_0_[1] ),
        .I3(\bitpos_data[0]_i_1_n_0 ),
        .I4(\bitpos_stop[1]_i_2_n_0 ),
        .I5(D[6]),
        .O(\scratch[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \scratch[7]_i_1 
       (.I0(rx),
        .I1(\scratch[7]_i_2_n_0 ),
        .I2(\scratch[7]_i_3_n_0 ),
        .I3(\bitpos_data_reg_n_0_[1] ),
        .I4(\bitpos_stop[1]_i_2_n_0 ),
        .I5(D[7]),
        .O(\scratch[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scratch[7]_i_2 
       (.I0(\bitpos_data_reg_n_0_[2] ),
        .I1(\bitpos_data_reg_n_0_[3] ),
        .O(\scratch[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \scratch[7]_i_3 
       (.I0(\bitpos_data_reg_n_0_[0] ),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\scratch[7]_i_3_n_0 ));
  FDCE \scratch_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\scratch[0]_i_1_n_0 ),
        .Q(D[0]));
  FDCE \scratch_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\scratch[1]_i_1_n_0 ),
        .Q(D[1]));
  FDCE \scratch_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\scratch[2]_i_1_n_0 ),
        .Q(D[2]));
  FDCE \scratch_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\scratch[3]_i_1_n_0 ),
        .Q(D[3]));
  FDCE \scratch_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\scratch[4]_i_1_n_0 ),
        .Q(D[4]));
  FDCE \scratch_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\scratch[5]_i_1_n_0 ),
        .Q(D[5]));
  FDCE \scratch_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\scratch[6]_i_1_n_0 ),
        .Q(D[6]));
  FDCE \scratch_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(\scratch[7]_i_1_n_0 ),
        .Q(D[7]));
  LUT5 #(
    .INIT(32'h00FF0008)) 
    stt_rx_done_i_1
       (.I0(stt_rx_done_i_3_n_0),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(stt_rx_done_i_4_n_0),
        .I4(rts_n),
        .O(stt_rx_done_i_1_n_0));
  LUT5 #(
    .INIT(32'h41100004)) 
    stt_rx_done_i_3
       (.I0(\FSM_sequential_current_state[0]_i_3__0_n_0 ),
        .I1(\bitpos_stop_reg_n_0_[0] ),
        .I2(cfg_stop_bit_num),
        .I3(cfg_parity_en),
        .I4(\bitpos_stop_reg_n_0_[1] ),
        .O(stt_rx_done_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    stt_rx_done_i_4
       (.I0(stt_rx_done_reg_0),
        .I1(paddr[4]),
        .I2(\paddr[8] ),
        .I3(stt_rx_done_i_6_n_0),
        .I4(wack_reg),
        .O(stt_rx_done_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    stt_rx_done_i_5
       (.I0(paddr[7]),
        .I1(paddr[6]),
        .I2(paddr[5]),
        .O(stt_rx_done_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    stt_rx_done_i_6
       (.I0(paddr[2]),
        .I1(paddr[3]),
        .I2(rts_n),
        .I3(paddr[0]),
        .I4(paddr[1]),
        .O(stt_rx_done_i_6_n_0));
  FDCE stt_rx_done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(stt_rx_done_i_1_n_0),
        .Q(rts_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_block
   (cfg_stop_bit_num,
    SR,
    cfg_parity_en,
    ctrl_start_tx,
    prdata,
    \tx_data_reg[0] ,
    waddrerr_reg,
    Q,
    pslverr,
    \tx_data_reg[0]_0 ,
    waddrerr_reg_0,
    ctrl_start_tx_reg,
    pready,
    stt_tx_done_reg,
    tx,
    pwdata,
    clk,
    stt_tx_done,
    stt_rx_done_reg,
    \FSM_sequential_current_state_reg[1] ,
    reset_n,
    paddr_1_sp_1,
    paddr,
    pwrite_0,
    paddr_0_sp_1,
    \paddr[0]_0 ,
    \paddr[0]_1 ,
    pwrite_1,
    pwrite_2,
    \paddr[0]_2 ,
    \paddr[0]_3 ,
    pwrite_3,
    pwrite,
    penable,
    psel,
    pwrite_4,
    paddr_5_sp_1,
    out,
    \bitpos_data_reg[2] ,
    \bitpos_data_reg[1] ,
    \bitpos_data_reg[0] ,
    D);
  output cfg_stop_bit_num;
  output [0:0]SR;
  output cfg_parity_en;
  output ctrl_start_tx;
  output [7:0]prdata;
  output \tx_data_reg[0] ;
  output waddrerr_reg;
  output [1:0]Q;
  output pslverr;
  output \tx_data_reg[0]_0 ;
  output waddrerr_reg_0;
  output ctrl_start_tx_reg;
  output pready;
  output stt_tx_done_reg;
  output tx;
  input [7:0]pwdata;
  input clk;
  input stt_tx_done;
  input stt_rx_done_reg;
  input \FSM_sequential_current_state_reg[1] ;
  input reset_n;
  input paddr_1_sp_1;
  input [11:0]paddr;
  input pwrite_0;
  input paddr_0_sp_1;
  input \paddr[0]_0 ;
  input \paddr[0]_1 ;
  input pwrite_1;
  input pwrite_2;
  input \paddr[0]_2 ;
  input \paddr[0]_3 ;
  input pwrite_3;
  input pwrite;
  input penable;
  input psel;
  input pwrite_4;
  input paddr_5_sp_1;
  input [1:0]out;
  input \bitpos_data_reg[2] ;
  input \bitpos_data_reg[1] ;
  input \bitpos_data_reg[0] ;
  input [7:0]D;

  wire [7:0]D;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \bitpos_data_reg[0] ;
  wire \bitpos_data_reg[1] ;
  wire \bitpos_data_reg[2] ;
  wire cfg_parity_en;
  wire cfg_stop_bit_num;
  wire clk;
  wire ctrl_start_tx;
  wire ctrl_start_tx_reg;
  wire [1:0]out;
  wire [11:0]paddr;
  wire \paddr[0]_0 ;
  wire \paddr[0]_1 ;
  wire \paddr[0]_2 ;
  wire \paddr[0]_3 ;
  wire paddr_0_sn_1;
  wire paddr_1_sn_1;
  wire paddr_5_sn_1;
  wire penable;
  wire [7:0]prdata;
  wire pready;
  wire psel;
  wire pslverr;
  wire [7:0]pwdata;
  wire pwrite;
  wire pwrite_0;
  wire pwrite_1;
  wire pwrite_2;
  wire pwrite_3;
  wire pwrite_4;
  wire reset_n;
  wire stt_rx_done_reg;
  wire stt_tx_done;
  wire stt_tx_done_reg;
  wire tx;
  wire \tx_data_reg[0] ;
  wire \tx_data_reg[0]_0 ;
  wire waddrerr_reg;
  wire waddrerr_reg_0;

  assign paddr_0_sn_1 = paddr_0_sp_1;
  assign paddr_1_sn_1 = paddr_1_sp_1;
  assign paddr_5_sn_1 = paddr_5_sp_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rb_regs rb_regs
       (.D(D),
        .\FSM_sequential_current_state_reg[1] (\FSM_sequential_current_state_reg[1] ),
        .Q(Q),
        .\bitpos_data_reg[0] (\bitpos_data_reg[0] ),
        .\bitpos_data_reg[1] (\bitpos_data_reg[1] ),
        .\bitpos_data_reg[2] (\bitpos_data_reg[2] ),
        .cfg_parity_en(cfg_parity_en),
        .cfg_stop_bit_num(cfg_stop_bit_num),
        .clk(clk),
        .ctrl_start_tx(ctrl_start_tx),
        .ctrl_start_tx_reg_0(ctrl_start_tx_reg),
        .out(out),
        .paddr(paddr),
        .\paddr[0]_0 (\paddr[0]_0 ),
        .\paddr[0]_1 (\paddr[0]_1 ),
        .\paddr[0]_2 (\paddr[0]_2 ),
        .\paddr[0]_3 (\paddr[0]_3 ),
        .paddr_0_sp_1(paddr_0_sn_1),
        .paddr_1_sp_1(paddr_1_sn_1),
        .paddr_5_sp_1(paddr_5_sn_1),
        .penable(penable),
        .prdata(prdata),
        .pready(pready),
        .psel(psel),
        .pslverr(pslverr),
        .pwdata(pwdata),
        .pwrite(pwrite),
        .pwrite_0(pwrite_0),
        .pwrite_1(pwrite_1),
        .pwrite_2(pwrite_2),
        .pwrite_3(pwrite_3),
        .pwrite_4(pwrite_4),
        .reset_n(reset_n),
        .stt_rx_done_reg_0(stt_rx_done_reg),
        .stt_rx_done_reg_reg_0(SR),
        .stt_tx_done(stt_tx_done),
        .stt_tx_done_reg_0(stt_tx_done_reg),
        .tx(tx),
        .\tx_data_reg[0]_0 (\tx_data_reg[0] ),
        .\tx_data_reg[0]_1 (\tx_data_reg[0]_0 ),
        .waddrerr_reg_0(waddrerr_reg),
        .waddrerr_reg_1(waddrerr_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter
   (out,
    stt_tx_done,
    stt_tx_done_reg_0,
    \bitpos_data_reg[2]_0 ,
    \bitpos_data_reg[2]_1 ,
    \bitpos_data_reg[2]_2 ,
    ctrl_start_tx_reg,
    stt_tx_done_reg_1,
    clk,
    SR,
    \tx_acc_reg[4] ,
    cfg_stop_bit_num,
    cfg_parity_en,
    \FSM_sequential_current_state_reg[0]_0 ,
    reset_n,
    Q,
    cts_n,
    ctrl_start_tx,
    pwdata,
    \paddr[8] ,
    \paddr[3] );
  output [1:0]out;
  output stt_tx_done;
  output stt_tx_done_reg_0;
  output \bitpos_data_reg[2]_0 ;
  output \bitpos_data_reg[2]_1 ;
  output \bitpos_data_reg[2]_2 ;
  output ctrl_start_tx_reg;
  input stt_tx_done_reg_1;
  input clk;
  input [0:0]SR;
  input \tx_acc_reg[4] ;
  input cfg_stop_bit_num;
  input cfg_parity_en;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input reset_n;
  input [1:0]Q;
  input cts_n;
  input ctrl_start_tx;
  input [0:0]pwdata;
  input \paddr[8] ;
  input \paddr[3] ;

  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[0]_i_5_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \bitpos_data[0]_i_1_n_0 ;
  wire \bitpos_data[1]_i_1_n_0 ;
  wire \bitpos_data[2]_i_1_n_0 ;
  wire \bitpos_data[2]_i_2_n_0 ;
  wire \bitpos_data_reg[2]_0 ;
  wire \bitpos_data_reg[2]_1 ;
  wire \bitpos_data_reg[2]_2 ;
  wire \bitpos_stop[0]_i_1_n_0 ;
  wire \bitpos_stop[1]_i_1_n_0 ;
  wire \bitpos_stop_reg_n_0_[0] ;
  wire \bitpos_stop_reg_n_0_[1] ;
  wire cfg_parity_en;
  wire cfg_stop_bit_num;
  wire clk;
  wire ctrl_start_tx;
  wire ctrl_start_tx_reg;
  wire cts_n;
  wire [1:0]next_state;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire \paddr[3] ;
  wire \paddr[8] ;
  wire [0:0]pwdata;
  wire reset_n;
  wire stt_tx_done;
  wire stt_tx_done_reg_0;
  wire stt_tx_done_reg_1;
  wire \tx_acc_reg[4] ;

  LUT6 #(
    .INIT(64'hF200F2F2F0F0F0F0)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_current_state[0]_i_4_n_0 ),
        .I3(\FSM_sequential_current_state[0]_i_5_n_0 ),
        .I4(out[0]),
        .I5(\tx_acc_reg[4] ),
        .O(next_state[0]));
  LUT4 #(
    .INIT(16'h8008)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\bitpos_data_reg[2]_0 ),
        .I1(out[1]),
        .I2(Q[1]),
        .I3(\bitpos_data_reg[2]_1 ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(\bitpos_data_reg[2]_2 ),
        .I1(Q[0]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(out[0]),
        .I1(cts_n),
        .I2(ctrl_start_tx),
        .I3(out[1]),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA88A2AA8)) 
    \FSM_sequential_current_state[0]_i_5 
       (.I0(out[1]),
        .I1(\bitpos_stop_reg_n_0_[1] ),
        .I2(cfg_stop_bit_num),
        .I3(cfg_parity_en),
        .I4(\bitpos_stop_reg_n_0_[0] ),
        .O(\FSM_sequential_current_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEB7EFFFFFFFF0000)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\bitpos_stop_reg_n_0_[1] ),
        .I1(cfg_stop_bit_num),
        .I2(cfg_parity_en),
        .I3(\bitpos_stop_reg_n_0_[0] ),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(out[1]),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:11,iSTATE2:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(next_state[0]),
        .Q(out[0]));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:10,iSTATE1:11,iSTATE2:00" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(SR),
        .D(next_state[1]),
        .Q(out[1]));
  LUT5 #(
    .INIT(32'hFF2F0080)) 
    \bitpos_data[0]_i_1 
       (.I0(out[1]),
        .I1(\tx_acc_reg[4] ),
        .I2(reset_n),
        .I3(out[0]),
        .I4(\bitpos_data_reg[2]_2 ),
        .O(\bitpos_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4CFF00008000)) 
    \bitpos_data[1]_i_1 
       (.I0(\bitpos_data_reg[2]_2 ),
        .I1(out[1]),
        .I2(\tx_acc_reg[4] ),
        .I3(reset_n),
        .I4(out[0]),
        .I5(\bitpos_data_reg[2]_1 ),
        .O(\bitpos_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF70F000008000)) 
    \bitpos_data[2]_i_1 
       (.I0(\bitpos_data_reg[2]_2 ),
        .I1(\bitpos_data_reg[2]_1 ),
        .I2(out[1]),
        .I3(\tx_acc_reg[4] ),
        .I4(\bitpos_data[2]_i_2_n_0 ),
        .I5(\bitpos_data_reg[2]_0 ),
        .O(\bitpos_data[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bitpos_data[2]_i_2 
       (.I0(out[0]),
        .I1(reset_n),
        .O(\bitpos_data[2]_i_2_n_0 ));
  FDRE \bitpos_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bitpos_data[0]_i_1_n_0 ),
        .Q(\bitpos_data_reg[2]_2 ),
        .R(1'b0));
  FDRE \bitpos_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bitpos_data[1]_i_1_n_0 ),
        .Q(\bitpos_data_reg[2]_1 ),
        .R(1'b0));
  FDRE \bitpos_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bitpos_data[2]_i_1_n_0 ),
        .Q(\bitpos_data_reg[2]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h77F38800)) 
    \bitpos_stop[0]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(reset_n),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\bitpos_stop_reg_n_0_[0] ),
        .O(\bitpos_stop[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FFF0F80800000)) 
    \bitpos_stop[1]_i_1 
       (.I0(\bitpos_stop_reg_n_0_[0] ),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(reset_n),
        .I3(out[0]),
        .I4(out[1]),
        .I5(\bitpos_stop_reg_n_0_[1] ),
        .O(\bitpos_stop[1]_i_1_n_0 ));
  FDRE \bitpos_stop_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bitpos_stop[0]_i_1_n_0 ),
        .Q(\bitpos_stop_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bitpos_stop_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bitpos_stop[1]_i_1_n_0 ),
        .Q(\bitpos_stop_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFCFCFAA000000AA)) 
    ctrl_start_tx_i_1
       (.I0(pwdata),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\paddr[8] ),
        .I4(\paddr[3] ),
        .I5(ctrl_start_tx),
        .O(ctrl_start_tx_reg));
  LUT5 #(
    .INIT(32'hFDDF7FFD)) 
    stt_tx_done_i_6
       (.I0(out[1]),
        .I1(\bitpos_stop_reg_n_0_[1] ),
        .I2(cfg_stop_bit_num),
        .I3(cfg_parity_en),
        .I4(\bitpos_stop_reg_n_0_[0] ),
        .O(stt_tx_done_reg_0));
  FDPE stt_tx_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(stt_tx_done_reg_1),
        .PRE(SR),
        .Q(stt_tx_done));
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
