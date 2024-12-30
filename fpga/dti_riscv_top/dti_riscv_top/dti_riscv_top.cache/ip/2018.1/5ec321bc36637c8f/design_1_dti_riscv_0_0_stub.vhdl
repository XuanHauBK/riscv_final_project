-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Mon Dec 16 23:29:17 2024
-- Host        : dt22-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dti_riscv_0_0_stub.vhdl
-- Design      : design_1_dti_riscv_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    apb_pclk : in STD_LOGIC;
    apb_presetn : in STD_LOGIC;
    boost_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_uart : in STD_LOGIC;
    cts_n : in STD_LOGIC;
    gpio_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_n : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_boost : in STD_LOGIC;
    gpio_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rts_n : out STD_LOGIC;
    rts_n_boost : out STD_LOGIC;
    test_context_out : out STD_LOGIC_VECTOR ( 39 downto 0 );
    tx : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "apb_pclk,apb_presetn,boost_en,clk,clk_uart,cts_n,gpio_i[15:0],reset_n,rx,rx_boost,gpio_o[15:0],rts_n,rts_n_boost,test_context_out[39:0],tx";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dti_riscv,Vivado 2018.1";
begin
end;
