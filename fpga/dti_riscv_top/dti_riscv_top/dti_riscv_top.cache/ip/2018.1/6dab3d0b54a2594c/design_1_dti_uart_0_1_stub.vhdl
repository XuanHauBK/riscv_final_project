-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Mon Dec 16 23:26:33 2024
-- Host        : dt22-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dti_uart_0_1_stub.vhdl
-- Design      : design_1_dti_uart_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    pclk : in STD_LOGIC;
    presetn : in STD_LOGIC;
    psel : in STD_LOGIC;
    penable : in STD_LOGIC;
    pwrite : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rx : in STD_LOGIC;
    cts_n : in STD_LOGIC;
    pready : out STD_LOGIC;
    pslverr : out STD_LOGIC;
    prdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    boost_en : out STD_LOGIC;
    tx : out STD_LOGIC;
    rts_n : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,pclk,presetn,psel,penable,pwrite,paddr[11:0],pstrb[3:0],pwdata[31:0],rx,cts_n,pready,pslverr,prdata[31:0],boost_en,tx,rts_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dti_uart,Vivado 2018.1";
begin
end;