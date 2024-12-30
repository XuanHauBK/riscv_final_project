-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed Apr 24 16:35:19 2024
-- Host        : dt68-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_uart_dti_uart_0_0_sim_netlist.vhdl
-- Design      : design_uart_dti_uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_gen is
  port (
    \bitpos_stop_reg[1]\ : out STD_LOGIC;
    \bitpos_data_reg[2]\ : out STD_LOGIC;
    \sample_reg[1]\ : out STD_LOGIC;
    stt_tx_done_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    wack_reg : in STD_LOGIC;
    \paddr[1]\ : in STD_LOGIC;
    stt_tx_done : in STD_LOGIC;
    \paddr[3]\ : in STD_LOGIC;
    \paddr[8]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_gen is
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal rx_acc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rx_acc[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[4]_i_1_n_0\ : STD_LOGIC;
  signal \transmitter/stt_tx_done0\ : STD_LOGIC;
  signal tx_acc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \tx_acc[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_acc[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_acc[8]_i_2_n_0\ : STD_LOGIC;
  signal \tx_acc[8]_i_3_n_0\ : STD_LOGIC;
  signal tx_acc_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rx_acc[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rx_acc[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rx_acc[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rx_acc[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rx_acc[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tx_acc[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_acc[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_acc[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_acc[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_acc[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_acc[7]_i_2\ : label is "soft_lutpair4";
begin
\FSM_sequential_current_state[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => tx_acc(4),
      I1 => tx_acc(6),
      I2 => tx_acc(7),
      I3 => \FSM_sequential_current_state[1]_i_3_n_0\,
      O => \bitpos_data_reg[2]\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \out\(0),
      I1 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I2 => tx_acc(7),
      I3 => tx_acc(6),
      I4 => tx_acc(4),
      O => \bitpos_stop_reg[1]\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => tx_acc(3),
      I1 => tx_acc(2),
      I2 => tx_acc(5),
      I3 => tx_acc(8),
      I4 => tx_acc(0),
      I5 => tx_acc(1),
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\rx_acc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_acc(0),
      O => \rx_acc[0]_i_1_n_0\
    );
\rx_acc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rx_acc(1),
      I1 => rx_acc(0),
      O => \rx_acc[1]_i_1_n_0\
    );
\rx_acc[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF7000"
    )
        port map (
      I0 => rx_acc(3),
      I1 => rx_acc(4),
      I2 => rx_acc(1),
      I3 => rx_acc(0),
      I4 => rx_acc(2),
      O => \rx_acc[2]_i_1_n_0\
    );
\rx_acc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F7FC000"
    )
        port map (
      I0 => rx_acc(4),
      I1 => rx_acc(0),
      I2 => rx_acc(1),
      I3 => rx_acc(2),
      I4 => rx_acc(3),
      O => \rx_acc[3]_i_1_n_0\
    );
\rx_acc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFF8000"
    )
        port map (
      I0 => rx_acc(3),
      I1 => rx_acc(2),
      I2 => rx_acc(1),
      I3 => rx_acc(0),
      I4 => rx_acc(4),
      O => \rx_acc[4]_i_1_n_0\
    );
\rx_acc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \rx_acc[0]_i_1_n_0\,
      Q => rx_acc(0)
    );
\rx_acc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \rx_acc[1]_i_1_n_0\,
      Q => rx_acc(1)
    );
\rx_acc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \rx_acc[2]_i_1_n_0\,
      Q => rx_acc(2)
    );
\rx_acc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \rx_acc[3]_i_1_n_0\,
      Q => rx_acc(3)
    );
\rx_acc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \rx_acc[4]_i_1_n_0\,
      Q => rx_acc(4)
    );
\sample[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rx_acc(4),
      I1 => rx_acc(2),
      I2 => rx_acc(3),
      I3 => rx_acc(0),
      I4 => rx_acc(1),
      O => \sample_reg[1]\
    );
stt_tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFEAAFFAAFFAA"
    )
        port map (
      I0 => \transmitter/stt_tx_done0\,
      I1 => wack_reg,
      I2 => \paddr[1]\,
      I3 => stt_tx_done,
      I4 => \paddr[3]\,
      I5 => \paddr[8]\,
      O => stt_tx_done_reg
    );
stt_tx_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => tx_acc(4),
      I1 => tx_acc(6),
      I2 => tx_acc(7),
      I3 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I4 => \out\(0),
      I5 => \FSM_sequential_current_state_reg[1]\,
      O => \transmitter/stt_tx_done0\
    );
\tx_acc[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEFF"
    )
        port map (
      I0 => \tx_acc[0]_i_2_n_0\,
      I1 => tx_acc(3),
      I2 => tx_acc(2),
      I3 => tx_acc(4),
      I4 => tx_acc(6),
      I5 => tx_acc(0),
      O => tx_acc_0(0)
    );
\tx_acc[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => tx_acc(5),
      I1 => tx_acc(1),
      I2 => tx_acc(8),
      I3 => tx_acc(7),
      O => \tx_acc[0]_i_2_n_0\
    );
\tx_acc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \tx_acc[8]_i_3_n_0\,
      I1 => tx_acc(0),
      I2 => tx_acc(1),
      O => tx_acc_0(1)
    );
\tx_acc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => tx_acc(2),
      I1 => tx_acc(0),
      I2 => tx_acc(1),
      O => tx_acc_0(2)
    );
\tx_acc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => tx_acc(3),
      I1 => tx_acc(1),
      I2 => tx_acc(0),
      I3 => tx_acc(2),
      O => tx_acc_0(3)
    );
\tx_acc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \tx_acc[8]_i_3_n_0\,
      I1 => tx_acc(2),
      I2 => tx_acc(0),
      I3 => tx_acc(1),
      I4 => tx_acc(3),
      I5 => tx_acc(4),
      O => tx_acc_0(4)
    );
\tx_acc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \tx_acc[8]_i_3_n_0\,
      I1 => \tx_acc[7]_i_2_n_0\,
      I2 => tx_acc(4),
      I3 => tx_acc(5),
      O => tx_acc_0(5)
    );
\tx_acc[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => tx_acc(4),
      I1 => \tx_acc[7]_i_2_n_0\,
      I2 => tx_acc(5),
      I3 => tx_acc(6),
      O => tx_acc_0(6)
    );
\tx_acc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \tx_acc[8]_i_3_n_0\,
      I1 => tx_acc(6),
      I2 => tx_acc(5),
      I3 => \tx_acc[7]_i_2_n_0\,
      I4 => tx_acc(4),
      I5 => tx_acc(7),
      O => tx_acc_0(7)
    );
\tx_acc[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => tx_acc(2),
      I1 => tx_acc(0),
      I2 => tx_acc(1),
      I3 => tx_acc(3),
      O => \tx_acc[7]_i_2_n_0\
    );
\tx_acc[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \tx_acc[8]_i_2_n_0\,
      I1 => tx_acc(7),
      I2 => tx_acc(8),
      I3 => \tx_acc[8]_i_3_n_0\,
      O => tx_acc_0(8)
    );
\tx_acc[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => tx_acc(6),
      I1 => tx_acc(5),
      I2 => \tx_acc[7]_i_2_n_0\,
      I3 => tx_acc(4),
      O => \tx_acc[8]_i_2_n_0\
    );
\tx_acc[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => tx_acc(0),
      I1 => \tx_acc[0]_i_2_n_0\,
      I2 => tx_acc(3),
      I3 => tx_acc(2),
      I4 => tx_acc(4),
      I5 => tx_acc(6),
      O => \tx_acc[8]_i_3_n_0\
    );
\tx_acc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(0),
      Q => tx_acc(0)
    );
\tx_acc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(1),
      Q => tx_acc(1)
    );
\tx_acc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(2),
      Q => tx_acc(2)
    );
\tx_acc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(3),
      Q => tx_acc(3)
    );
\tx_acc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(4),
      Q => tx_acc(4)
    );
\tx_acc_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(5),
      Q => tx_acc(5)
    );
\tx_acc_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(6),
      Q => tx_acc(6)
    );
\tx_acc_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(7),
      Q => tx_acc(7)
    );
\tx_acc_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => tx_acc_0(8),
      Q => tx_acc(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rb_regs is
  port (
    cfg_stop_bit_num : out STD_LOGIC;
    stt_rx_done_reg_reg_0 : out STD_LOGIC;
    cfg_parity_en : out STD_LOGIC;
    ctrl_start_tx : out STD_LOGIC;
    prdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \tx_data_reg[0]_0\ : out STD_LOGIC;
    waddrerr_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pslverr : out STD_LOGIC;
    \tx_data_reg[0]_1\ : out STD_LOGIC;
    waddrerr_reg_1 : out STD_LOGIC;
    ctrl_start_tx_reg_0 : out STD_LOGIC;
    pready : out STD_LOGIC;
    stt_tx_done_reg_0 : out STD_LOGIC;
    tx : out STD_LOGIC;
    pwdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    stt_tx_done : in STD_LOGIC;
    stt_rx_done_reg_0 : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    paddr_1_sp_1 : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pwrite_0 : in STD_LOGIC;
    paddr_0_sp_1 : in STD_LOGIC;
    \paddr[0]_0\ : in STD_LOGIC;
    \paddr[0]_1\ : in STD_LOGIC;
    pwrite_1 : in STD_LOGIC;
    pwrite_2 : in STD_LOGIC;
    \paddr[0]_2\ : in STD_LOGIC;
    \paddr[0]_3\ : in STD_LOGIC;
    pwrite_3 : in STD_LOGIC;
    pwrite : in STD_LOGIC;
    penable : in STD_LOGIC;
    psel : in STD_LOGIC;
    pwrite_4 : in STD_LOGIC;
    paddr_5_sp_1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bitpos_data_reg[2]\ : in STD_LOGIC;
    \bitpos_data_reg[1]\ : in STD_LOGIC;
    \bitpos_data_reg[0]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rb_regs;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rb_regs is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^cfg_parity_en\ : STD_LOGIC;
  signal cfg_parity_type : STD_LOGIC;
  signal \^cfg_stop_bit_num\ : STD_LOGIC;
  signal cfg_wen : STD_LOGIC;
  signal \^ctrl_start_tx\ : STD_LOGIC;
  signal paddr_0_sn_1 : STD_LOGIC;
  signal paddr_1_sn_1 : STD_LOGIC;
  signal paddr_5_sn_1 : STD_LOGIC;
  signal \prdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \prdata[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \prdata[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \prdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \prdata[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \prdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal rx_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal stt_rx_done_reg : STD_LOGIC;
  signal \^stt_rx_done_reg_reg_0\ : STD_LOGIC;
  signal stt_tx_done_reg : STD_LOGIC;
  signal tx_INST_0_i_1_n_0 : STD_LOGIC;
  signal tx_INST_0_i_2_n_0 : STD_LOGIC;
  signal tx_INST_0_i_3_n_0 : STD_LOGIC;
  signal tx_INST_0_i_4_n_0 : STD_LOGIC;
  signal tx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^tx_data_reg[0]_0\ : STD_LOGIC;
  signal \^tx_data_reg[0]_1\ : STD_LOGIC;
  signal tx_wen : STD_LOGIC;
  signal wack : STD_LOGIC;
  signal waddrerr : STD_LOGIC;
  signal waddrerr_i_1_n_0 : STD_LOGIC;
  signal waddrerr_i_2_n_0 : STD_LOGIC;
  signal \^waddrerr_reg_0\ : STD_LOGIC;
  signal \^waddrerr_reg_1\ : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of pready_INST_0 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of pslverr_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of stt_tx_done_i_3 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of wack_i_1 : label is "soft_lutpair11";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  cfg_parity_en <= \^cfg_parity_en\;
  cfg_stop_bit_num <= \^cfg_stop_bit_num\;
  ctrl_start_tx <= \^ctrl_start_tx\;
  paddr_0_sn_1 <= paddr_0_sp_1;
  paddr_1_sn_1 <= paddr_1_sp_1;
  paddr_5_sn_1 <= paddr_5_sp_1;
  stt_rx_done_reg_reg_0 <= \^stt_rx_done_reg_reg_0\;
  \tx_data_reg[0]_0\ <= \^tx_data_reg[0]_0\;
  \tx_data_reg[0]_1\ <= \^tx_data_reg[0]_1\;
  waddrerr_reg_0 <= \^waddrerr_reg_0\;
  waddrerr_reg_1 <= \^waddrerr_reg_1\;
\cfg_data_bit_num[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => paddr(3),
      I1 => paddr(2),
      I2 => \^tx_data_reg[0]_1\,
      O => cfg_wen
    );
\cfg_data_bit_num_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cfg_wen,
      D => pwdata(0),
      Q => \^q\(0),
      R => \^stt_rx_done_reg_reg_0\
    );
\cfg_data_bit_num_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cfg_wen,
      D => pwdata(1),
      Q => \^q\(1),
      R => \^stt_rx_done_reg_reg_0\
    );
cfg_parity_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cfg_wen,
      D => pwdata(3),
      Q => \^cfg_parity_en\,
      R => \^stt_rx_done_reg_reg_0\
    );
cfg_parity_type_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cfg_wen,
      D => pwdata(4),
      Q => cfg_parity_type,
      R => \^stt_rx_done_reg_reg_0\
    );
cfg_stop_bit_num_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cfg_wen,
      D => pwdata(2),
      Q => \^cfg_stop_bit_num\,
      R => \^stt_rx_done_reg_reg_0\
    );
ctrl_start_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state_reg[1]\,
      Q => \^ctrl_start_tx\,
      R => \^stt_rx_done_reg_reg_0\
    );
\prdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFD00"
    )
        port map (
      I0 => \prdata[0]_INST_0_i_1_n_0\,
      I1 => \prdata[0]_INST_0_i_2_n_0\,
      I2 => \prdata[0]_INST_0_i_3_n_0\,
      I3 => paddr_1_sn_1,
      I4 => \prdata[0]_INST_0_i_4_n_0\,
      I5 => \prdata[0]_INST_0_i_5_n_0\,
      O => prdata(0)
    );
\prdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => paddr(4),
      I1 => pwrite_0,
      I2 => \^tx_data_reg[0]_0\,
      I3 => \^waddrerr_reg_0\,
      I4 => paddr(3),
      I5 => stt_tx_done_reg,
      O => \prdata[0]_INST_0_i_1_n_0\
    );
\prdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^ctrl_start_tx\,
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(2),
      I5 => paddr(3),
      O => \prdata[0]_INST_0_i_2_n_0\
    );
\prdata[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => rx_data_reg(0),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[0]_INST_0_i_3_n_0\
    );
\prdata[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => tx_data(0),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[0]_INST_0_i_4_n_0\
    );
\prdata[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[0]_INST_0_i_5_n_0\
    );
\prdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFD00"
    )
        port map (
      I0 => \prdata[1]_INST_0_i_1_n_0\,
      I1 => \prdata[1]_INST_0_i_2_n_0\,
      I2 => paddr_0_sn_1,
      I3 => paddr_1_sn_1,
      I4 => \prdata[1]_INST_0_i_5_n_0\,
      I5 => \prdata[1]_INST_0_i_6_n_0\,
      O => prdata(1)
    );
\prdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => paddr(4),
      I1 => pwrite_0,
      I2 => \^tx_data_reg[0]_0\,
      I3 => \^waddrerr_reg_0\,
      I4 => paddr(3),
      I5 => stt_rx_done_reg,
      O => \prdata[1]_INST_0_i_1_n_0\
    );
\prdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => rx_data_reg(1),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[1]_INST_0_i_2_n_0\
    );
\prdata[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => tx_data(1),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[1]_INST_0_i_5_n_0\
    );
\prdata[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[1]_INST_0_i_6_n_0\
    );
\prdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \paddr[0]_1\,
      I1 => rx_data_reg(2),
      I2 => pwrite_1,
      I3 => \prdata[2]_INST_0_i_2_n_0\,
      I4 => \^cfg_stop_bit_num\,
      I5 => pwrite_2,
      O => prdata(2)
    );
\prdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => tx_data(2),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[2]_INST_0_i_2_n_0\
    );
\prdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \paddr[0]_2\,
      I1 => rx_data_reg(3),
      I2 => pwrite_1,
      I3 => \prdata[3]_INST_0_i_2_n_0\,
      I4 => \^cfg_parity_en\,
      I5 => pwrite_2,
      O => prdata(3)
    );
\prdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => tx_data(3),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[3]_INST_0_i_2_n_0\
    );
\prdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \paddr[0]_3\,
      I1 => rx_data_reg(4),
      I2 => pwrite_1,
      I3 => \prdata[4]_INST_0_i_2_n_0\,
      I4 => cfg_parity_type,
      I5 => pwrite_2,
      O => prdata(4)
    );
\prdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => tx_data(4),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[4]_INST_0_i_2_n_0\
    );
\prdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5DFF0CFFFFFF0C"
    )
        port map (
      I0 => pwrite_3,
      I1 => rx_data_reg(5),
      I2 => pwrite_1,
      I3 => \prdata[5]_INST_0_i_1_n_0\,
      I4 => pwdata(5),
      I5 => pwrite_2,
      O => prdata(5)
    );
\prdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => tx_data(5),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[5]_INST_0_i_1_n_0\
    );
\prdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5D0CFF0C"
    )
        port map (
      I0 => pwrite_3,
      I1 => rx_data_reg(6),
      I2 => pwrite_1,
      I3 => pwdata(6),
      I4 => pwrite_2,
      I5 => \prdata[6]_INST_0_i_1_n_0\,
      O => prdata(6)
    );
\prdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => tx_data(6),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[6]_INST_0_i_1_n_0\
    );
\prdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5DFF0CFFFFFF0C"
    )
        port map (
      I0 => pwrite_3,
      I1 => rx_data_reg(7),
      I2 => pwrite_1,
      I3 => \prdata[7]_INST_0_i_3_n_0\,
      I4 => pwdata(7),
      I5 => pwrite_2,
      O => prdata(7)
    );
\prdata[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => tx_data(7),
      I1 => paddr(4),
      I2 => pwrite_0,
      I3 => \paddr[0]_0\,
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[7]_INST_0_i_3_n_0\
    );
pready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => psel,
      I1 => wack,
      I2 => pwrite,
      I3 => penable,
      O => pready
    );
pslverr_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8008800"
    )
        port map (
      I0 => pwrite,
      I1 => waddrerr,
      I2 => penable,
      I3 => psel,
      I4 => pwrite_4,
      O => pslverr
    );
pslverr_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => paddr(0),
      I1 => paddr(1),
      O => \^waddrerr_reg_0\
    );
pslverr_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => paddr(10),
      I1 => paddr(11),
      I2 => paddr(9),
      I3 => paddr(8),
      O => \^tx_data_reg[0]_0\
    );
\rx_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => rx_data_reg(0),
      R => \^stt_rx_done_reg_reg_0\
    );
\rx_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => rx_data_reg(1),
      R => \^stt_rx_done_reg_reg_0\
    );
\rx_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => rx_data_reg(2),
      R => \^stt_rx_done_reg_reg_0\
    );
\rx_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => rx_data_reg(3),
      R => \^stt_rx_done_reg_reg_0\
    );
\rx_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => rx_data_reg(4),
      R => \^stt_rx_done_reg_reg_0\
    );
\rx_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => rx_data_reg(5),
      R => \^stt_rx_done_reg_reg_0\
    );
\rx_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => rx_data_reg(6),
      R => \^stt_rx_done_reg_reg_0\
    );
\rx_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => rx_data_reg(7),
      R => \^stt_rx_done_reg_reg_0\
    );
stt_rx_done_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^stt_rx_done_reg_reg_0\
    );
stt_rx_done_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => stt_rx_done_reg_0,
      Q => stt_rx_done_reg,
      R => \^stt_rx_done_reg_reg_0\
    );
stt_tx_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => penable,
      I1 => pwrite,
      I2 => wack,
      I3 => psel,
      O => stt_tx_done_reg_0
    );
stt_tx_done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      O => ctrl_start_tx_reg_0
    );
stt_tx_done_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^tx_data_reg[0]_0\,
      I1 => paddr(4),
      I2 => paddr(5),
      I3 => paddr(6),
      I4 => paddr(7),
      O => \^waddrerr_reg_1\
    );
stt_tx_done_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => stt_tx_done,
      Q => stt_tx_done_reg,
      S => \^stt_rx_done_reg_reg_0\
    );
tx_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7733743344337433"
    )
        port map (
      I0 => tx_INST_0_i_1_n_0,
      I1 => \out\(0),
      I2 => tx_INST_0_i_2_n_0,
      I3 => \out\(1),
      I4 => \bitpos_data_reg[2]\,
      I5 => tx_INST_0_i_3_n_0,
      O => tx
    );
tx_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^cfg_parity_en\,
      I1 => tx_INST_0_i_4_n_0,
      I2 => tx_data(7),
      I3 => tx_data(6),
      I4 => tx_data(5),
      I5 => tx_data(4),
      O => tx_INST_0_i_1_n_0
    );
tx_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_data(3),
      I1 => tx_data(2),
      I2 => \bitpos_data_reg[1]\,
      I3 => tx_data(1),
      I4 => \bitpos_data_reg[0]\,
      I5 => tx_data(0),
      O => tx_INST_0_i_2_n_0
    );
tx_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_data(7),
      I1 => tx_data(6),
      I2 => \bitpos_data_reg[1]\,
      I3 => tx_data(5),
      I4 => \bitpos_data_reg[0]\,
      I5 => tx_data(4),
      O => tx_INST_0_i_3_n_0
    );
tx_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tx_data(1),
      I1 => tx_data(0),
      I2 => tx_data(3),
      I3 => tx_data(2),
      O => tx_INST_0_i_4_n_0
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => paddr(3),
      I1 => \^tx_data_reg[0]_1\,
      I2 => paddr(2),
      O => tx_wen
    );
\tx_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => waddrerr_i_2_n_0,
      I1 => paddr(0),
      I2 => paddr(1),
      I3 => paddr_5_sn_1,
      I4 => paddr(4),
      I5 => \^tx_data_reg[0]_0\,
      O => \^tx_data_reg[0]_1\
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_wen,
      D => pwdata(0),
      Q => tx_data(0),
      R => \^stt_rx_done_reg_reg_0\
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_wen,
      D => pwdata(1),
      Q => tx_data(1),
      R => \^stt_rx_done_reg_reg_0\
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_wen,
      D => pwdata(2),
      Q => tx_data(2),
      R => \^stt_rx_done_reg_reg_0\
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_wen,
      D => pwdata(3),
      Q => tx_data(3),
      R => \^stt_rx_done_reg_reg_0\
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_wen,
      D => pwdata(4),
      Q => tx_data(4),
      R => \^stt_rx_done_reg_reg_0\
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_wen,
      D => pwdata(5),
      Q => tx_data(5),
      R => \^stt_rx_done_reg_reg_0\
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_wen,
      D => pwdata(6),
      Q => tx_data(6),
      R => \^stt_rx_done_reg_reg_0\
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_wen,
      D => pwdata(7),
      Q => tx_data(7),
      R => \^stt_rx_done_reg_reg_0\
    );
wack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pwrite,
      I1 => penable,
      I2 => psel,
      O => wr_en
    );
wack_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_en,
      Q => wack,
      R => \^stt_rx_done_reg_reg_0\
    );
waddrerr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF8F00000000"
    )
        port map (
      I0 => paddr(3),
      I1 => paddr(2),
      I2 => \^waddrerr_reg_1\,
      I3 => \^waddrerr_reg_0\,
      I4 => waddrerr_i_2_n_0,
      I5 => reset_n,
      O => waddrerr_i_1_n_0
    );
waddrerr_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => psel,
      I1 => penable,
      I2 => pwrite,
      O => waddrerr_i_2_n_0
    );
waddrerr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waddrerr_i_1_n_0,
      Q => waddrerr,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver is
  port (
    rts_n : out STD_LOGIC;
    stt_rx_done_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    paddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \paddr[8]\ : in STD_LOGIC;
    wack_reg : in STD_LOGIC;
    cfg_stop_bit_num : in STD_LOGIC;
    cfg_parity_en : in STD_LOGIC;
    \rx_acc_reg[4]\ : in STD_LOGIC;
    rx : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FSM_sequential_current_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \bitpos_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \bitpos_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitpos_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitpos_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \bitpos_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \bitpos_stop[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_stop[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_stop[1]_i_2_n_0\ : STD_LOGIC;
  signal \bitpos_stop_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitpos_stop_reg_n_0_[1]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rts_n\ : STD_LOGIC;
  signal sample : STD_LOGIC;
  signal \sample[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample[3]_i_2_n_0\ : STD_LOGIC;
  signal \sample[3]_i_4_n_0\ : STD_LOGIC;
  signal \sample[3]_i_5_n_0\ : STD_LOGIC;
  signal \sample_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_reg_n_0_[2]\ : STD_LOGIC;
  signal \sample_reg_n_0_[3]\ : STD_LOGIC;
  signal \scratch[0]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[1]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[2]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[3]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[3]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[4]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[5]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[5]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[5]_i_3_n_0\ : STD_LOGIC;
  signal \scratch[5]_i_4_n_0\ : STD_LOGIC;
  signal \scratch[6]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[7]_i_1_n_0\ : STD_LOGIC;
  signal \scratch[7]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[7]_i_3_n_0\ : STD_LOGIC;
  signal stt_rx_done_i_1_n_0 : STD_LOGIC;
  signal stt_rx_done_i_3_n_0 : STD_LOGIC;
  signal stt_rx_done_i_4_n_0 : STD_LOGIC;
  signal stt_rx_done_i_6_n_0 : STD_LOGIC;
  signal \^stt_rx_done_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_3__0\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \bitpos_stop[1]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sample[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \scratch[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \scratch[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \scratch[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \scratch[5]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \scratch[7]_i_2\ : label is "soft_lutpair9";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  rts_n <= \^rts_n\;
  stt_rx_done_reg_0 <= \^stt_rx_done_reg_0\;
\FSM_sequential_current_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C07"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2__0_n_0\,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \FSM_sequential_current_state[0]_i_3__0_n_0\,
      O => next_state(0)
    );
\FSM_sequential_current_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000400402000"
    )
        port map (
      I0 => \bitpos_data_reg_n_0_[3]\,
      I1 => \bitpos_data_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \bitpos_data_reg_n_0_[1]\,
      I5 => \bitpos_data_reg_n_0_[0]\,
      O => \FSM_sequential_current_state[0]_i_2__0_n_0\
    );
\FSM_sequential_current_state[0]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sample_reg_n_0_[2]\,
      I1 => \sample_reg_n_0_[0]\,
      I2 => \sample_reg_n_0_[1]\,
      I3 => \sample_reg_n_0_[3]\,
      O => \FSM_sequential_current_state[0]_i_3__0_n_0\
    );
\FSM_sequential_current_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"05C0"
    )
        port map (
      I0 => stt_rx_done_i_3_n_0,
      I1 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      I2 => current_state(0),
      I3 => current_state(1),
      O => next_state(1)
    );
\FSM_sequential_current_state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2__0_n_0\,
      I1 => \sample_reg_n_0_[3]\,
      I2 => \sample_reg_n_0_[1]\,
      I3 => \sample_reg_n_0_[0]\,
      I4 => \sample_reg_n_0_[2]\,
      O => \FSM_sequential_current_state[1]_i_2__0_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => next_state(1),
      Q => current_state(1)
    );
\bitpos_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => \bitpos_data_reg_n_0_[0]\,
      O => \bitpos_data[0]_i_1_n_0\
    );
\bitpos_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => current_state(0),
      I1 => \bitpos_data_reg_n_0_[1]\,
      I2 => \bitpos_data_reg_n_0_[0]\,
      O => \bitpos_data[1]_i_1_n_0\
    );
\bitpos_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => current_state(0),
      I1 => \bitpos_data_reg_n_0_[0]\,
      I2 => \bitpos_data_reg_n_0_[1]\,
      I3 => \bitpos_data_reg_n_0_[2]\,
      O => \bitpos_data[2]_i_1_n_0\
    );
\bitpos_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => current_state(1),
      I1 => \bitpos_stop[1]_i_2_n_0\,
      I2 => current_state(0),
      O => \bitpos_data[3]_i_1_n_0\
    );
\bitpos_data[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \bitpos_data_reg_n_0_[3]\,
      I1 => \bitpos_data_reg_n_0_[2]\,
      I2 => \bitpos_data_reg_n_0_[0]\,
      I3 => \bitpos_data_reg_n_0_[1]\,
      I4 => current_state(0),
      O => \bitpos_data[3]_i_2_n_0\
    );
\bitpos_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bitpos_data[3]_i_1_n_0\,
      CLR => SR(0),
      D => \bitpos_data[0]_i_1_n_0\,
      Q => \bitpos_data_reg_n_0_[0]\
    );
\bitpos_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bitpos_data[3]_i_1_n_0\,
      CLR => SR(0),
      D => \bitpos_data[1]_i_1_n_0\,
      Q => \bitpos_data_reg_n_0_[1]\
    );
\bitpos_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bitpos_data[3]_i_1_n_0\,
      CLR => SR(0),
      D => \bitpos_data[2]_i_1_n_0\,
      Q => \bitpos_data_reg_n_0_[2]\
    );
\bitpos_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bitpos_data[3]_i_1_n_0\,
      CLR => SR(0),
      D => \bitpos_data[3]_i_2_n_0\,
      Q => \bitpos_data_reg_n_0_[3]\
    );
\bitpos_stop[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA40"
    )
        port map (
      I0 => current_state(0),
      I1 => \bitpos_stop[1]_i_2_n_0\,
      I2 => current_state(1),
      I3 => \bitpos_stop_reg_n_0_[0]\,
      O => \bitpos_stop[0]_i_1_n_0\
    );
\bitpos_stop[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCC2000"
    )
        port map (
      I0 => \bitpos_stop_reg_n_0_[0]\,
      I1 => current_state(0),
      I2 => \bitpos_stop[1]_i_2_n_0\,
      I3 => current_state(1),
      I4 => \bitpos_stop_reg_n_0_[1]\,
      O => \bitpos_stop[1]_i_1_n_0\
    );
\bitpos_stop[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \rx_acc_reg[4]\,
      I1 => \sample_reg_n_0_[3]\,
      I2 => \sample_reg_n_0_[2]\,
      I3 => \sample_reg_n_0_[1]\,
      I4 => \sample_reg_n_0_[0]\,
      O => \bitpos_stop[1]_i_2_n_0\
    );
\bitpos_stop_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \bitpos_stop[0]_i_1_n_0\,
      Q => \bitpos_stop_reg_n_0_[0]\
    );
\bitpos_stop_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \bitpos_stop[1]_i_1_n_0\,
      Q => \bitpos_stop_reg_n_0_[1]\
    );
\sample[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => \rx_acc_reg[4]\,
      I3 => \sample_reg_n_0_[0]\,
      O => \sample[0]_i_1_n_0\
    );
\sample[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00575700"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => \rx_acc_reg[4]\,
      I3 => \sample_reg_n_0_[0]\,
      I4 => \sample_reg_n_0_[1]\,
      O => \sample[1]_i_1_n_0\
    );
\sample[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057575757000000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => \rx_acc_reg[4]\,
      I3 => \sample_reg_n_0_[0]\,
      I4 => \sample_reg_n_0_[1]\,
      I5 => \sample_reg_n_0_[2]\,
      O => \sample[2]_i_1_n_0\
    );
\sample[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03700373"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_3__0_n_0\,
      I1 => \rx_acc_reg[4]\,
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => \sample[3]_i_4_n_0\,
      O => sample
    );
\sample[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \sample[3]_i_5_n_0\,
      I1 => \sample_reg_n_0_[1]\,
      I2 => \sample_reg_n_0_[0]\,
      I3 => \sample_reg_n_0_[2]\,
      I4 => \sample_reg_n_0_[3]\,
      O => \sample[3]_i_2_n_0\
    );
\sample[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \sample_reg_n_0_[3]\,
      I1 => rx,
      I2 => \sample_reg_n_0_[0]\,
      I3 => \sample_reg_n_0_[1]\,
      I4 => \sample_reg_n_0_[2]\,
      O => \sample[3]_i_4_n_0\
    );
\sample[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \rx_acc_reg[4]\,
      I1 => current_state(0),
      I2 => current_state(1),
      O => \sample[3]_i_5_n_0\
    );
\sample_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sample,
      CLR => SR(0),
      D => \sample[0]_i_1_n_0\,
      Q => \sample_reg_n_0_[0]\
    );
\sample_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sample,
      CLR => SR(0),
      D => \sample[1]_i_1_n_0\,
      Q => \sample_reg_n_0_[1]\
    );
\sample_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sample,
      CLR => SR(0),
      D => \sample[2]_i_1_n_0\,
      Q => \sample_reg_n_0_[2]\
    );
\sample_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sample,
      CLR => SR(0),
      D => \sample[3]_i_2_n_0\,
      Q => \sample_reg_n_0_[3]\
    );
\scratch[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => rx,
      I1 => \bitpos_data_reg_n_0_[1]\,
      I2 => \bitpos_stop[1]_i_2_n_0\,
      I3 => \bitpos_data[0]_i_1_n_0\,
      I4 => \scratch[3]_i_2_n_0\,
      I5 => \^d\(0),
      O => \scratch[0]_i_1_n_0\
    );
\scratch[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx,
      I1 => \scratch[5]_i_2_n_0\,
      I2 => \bitpos_data_reg_n_0_[3]\,
      I3 => \bitpos_data_reg_n_0_[2]\,
      I4 => \^d\(1),
      O => \scratch[1]_i_1_n_0\
    );
\scratch[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => rx,
      I1 => \bitpos_data_reg_n_0_[1]\,
      I2 => \bitpos_data[0]_i_1_n_0\,
      I3 => \bitpos_stop[1]_i_2_n_0\,
      I4 => \scratch[3]_i_2_n_0\,
      I5 => \^d\(2),
      O => \scratch[2]_i_1_n_0\
    );
\scratch[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => rx,
      I1 => \scratch[7]_i_3_n_0\,
      I2 => \bitpos_data_reg_n_0_[1]\,
      I3 => \bitpos_stop[1]_i_2_n_0\,
      I4 => \scratch[3]_i_2_n_0\,
      I5 => \^d\(3),
      O => \scratch[3]_i_1_n_0\
    );
\scratch[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bitpos_data_reg_n_0_[2]\,
      I1 => \bitpos_data_reg_n_0_[3]\,
      O => \scratch[3]_i_2_n_0\
    );
\scratch[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => rx,
      I1 => \scratch[7]_i_2_n_0\,
      I2 => \bitpos_data_reg_n_0_[1]\,
      I3 => \bitpos_stop[1]_i_2_n_0\,
      I4 => \bitpos_data[0]_i_1_n_0\,
      I5 => \^d\(4),
      O => \scratch[4]_i_1_n_0\
    );
\scratch[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => rx,
      I1 => \bitpos_data_reg_n_0_[3]\,
      I2 => \bitpos_data_reg_n_0_[2]\,
      I3 => \scratch[5]_i_2_n_0\,
      I4 => \^d\(5),
      O => \scratch[5]_i_1_n_0\
    );
\scratch[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \scratch[5]_i_3_n_0\,
      I1 => \bitpos_data_reg_n_0_[0]\,
      I2 => \rx_acc_reg[4]\,
      I3 => \sample_reg_n_0_[3]\,
      I4 => \scratch[5]_i_4_n_0\,
      I5 => \bitpos_data_reg_n_0_[1]\,
      O => \scratch[5]_i_2_n_0\
    );
\scratch[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => \scratch[5]_i_3_n_0\
    );
\scratch[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \sample_reg_n_0_[2]\,
      I1 => \sample_reg_n_0_[1]\,
      I2 => \sample_reg_n_0_[0]\,
      O => \scratch[5]_i_4_n_0\
    );
\scratch[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => rx,
      I1 => \scratch[7]_i_2_n_0\,
      I2 => \bitpos_data_reg_n_0_[1]\,
      I3 => \bitpos_data[0]_i_1_n_0\,
      I4 => \bitpos_stop[1]_i_2_n_0\,
      I5 => \^d\(6),
      O => \scratch[6]_i_1_n_0\
    );
\scratch[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => rx,
      I1 => \scratch[7]_i_2_n_0\,
      I2 => \scratch[7]_i_3_n_0\,
      I3 => \bitpos_data_reg_n_0_[1]\,
      I4 => \bitpos_stop[1]_i_2_n_0\,
      I5 => \^d\(7),
      O => \scratch[7]_i_1_n_0\
    );
\scratch[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bitpos_data_reg_n_0_[2]\,
      I1 => \bitpos_data_reg_n_0_[3]\,
      O => \scratch[7]_i_2_n_0\
    );
\scratch[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \bitpos_data_reg_n_0_[0]\,
      I1 => current_state(1),
      I2 => current_state(0),
      O => \scratch[7]_i_3_n_0\
    );
\scratch_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \scratch[0]_i_1_n_0\,
      Q => \^d\(0)
    );
\scratch_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \scratch[1]_i_1_n_0\,
      Q => \^d\(1)
    );
\scratch_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \scratch[2]_i_1_n_0\,
      Q => \^d\(2)
    );
\scratch_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \scratch[3]_i_1_n_0\,
      Q => \^d\(3)
    );
\scratch_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \scratch[4]_i_1_n_0\,
      Q => \^d\(4)
    );
\scratch_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \scratch[5]_i_1_n_0\,
      Q => \^d\(5)
    );
\scratch_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \scratch[6]_i_1_n_0\,
      Q => \^d\(6)
    );
\scratch_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => \scratch[7]_i_1_n_0\,
      Q => \^d\(7)
    );
stt_rx_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0008"
    )
        port map (
      I0 => stt_rx_done_i_3_n_0,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => stt_rx_done_i_4_n_0,
      I4 => \^rts_n\,
      O => stt_rx_done_i_1_n_0
    );
stt_rx_done_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41100004"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_3__0_n_0\,
      I1 => \bitpos_stop_reg_n_0_[0]\,
      I2 => cfg_stop_bit_num,
      I3 => cfg_parity_en,
      I4 => \bitpos_stop_reg_n_0_[1]\,
      O => stt_rx_done_i_3_n_0
    );
stt_rx_done_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^stt_rx_done_reg_0\,
      I1 => paddr(4),
      I2 => \paddr[8]\,
      I3 => stt_rx_done_i_6_n_0,
      I4 => wack_reg,
      O => stt_rx_done_i_4_n_0
    );
stt_rx_done_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => paddr(7),
      I1 => paddr(6),
      I2 => paddr(5),
      O => \^stt_rx_done_reg_0\
    );
stt_rx_done_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      I2 => \^rts_n\,
      I3 => paddr(0),
      I4 => paddr(1),
      O => stt_rx_done_i_6_n_0
    );
stt_rx_done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => stt_rx_done_i_1_n_0,
      Q => \^rts_n\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    stt_tx_done : out STD_LOGIC;
    stt_tx_done_reg_0 : out STD_LOGIC;
    \bitpos_data_reg[2]_0\ : out STD_LOGIC;
    \bitpos_data_reg[2]_1\ : out STD_LOGIC;
    \bitpos_data_reg[2]_2\ : out STD_LOGIC;
    ctrl_start_tx_reg : out STD_LOGIC;
    stt_tx_done_reg_1 : in STD_LOGIC;
    clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_acc_reg[4]\ : in STD_LOGIC;
    cfg_stop_bit_num : in STD_LOGIC;
    cfg_parity_en : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cts_n : in STD_LOGIC;
    ctrl_start_tx : in STD_LOGIC;
    pwdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \paddr[8]\ : in STD_LOGIC;
    \paddr[3]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter is
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \bitpos_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \^bitpos_data_reg[2]_0\ : STD_LOGIC;
  signal \^bitpos_data_reg[2]_1\ : STD_LOGIC;
  signal \^bitpos_data_reg[2]_2\ : STD_LOGIC;
  signal \bitpos_stop[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_stop[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_stop_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitpos_stop_reg_n_0_[1]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:11,iSTATE2:00";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:11,iSTATE2:00";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
begin
  \bitpos_data_reg[2]_0\ <= \^bitpos_data_reg[2]_0\;
  \bitpos_data_reg[2]_1\ <= \^bitpos_data_reg[2]_1\;
  \bitpos_data_reg[2]_2\ <= \^bitpos_data_reg[2]_2\;
  \out\(1 downto 0) <= \^out\(1 downto 0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200F2F2F0F0F0F0"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_current_state[0]_i_4_n_0\,
      I3 => \FSM_sequential_current_state[0]_i_5_n_0\,
      I4 => \^out\(0),
      I5 => \tx_acc_reg[4]\,
      O => next_state(0)
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => \^bitpos_data_reg[2]_0\,
      I1 => \^out\(1),
      I2 => Q(1),
      I3 => \^bitpos_data_reg[2]_1\,
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bitpos_data_reg[2]_2\,
      I1 => Q(0),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => \^out\(0),
      I1 => cts_n,
      I2 => ctrl_start_tx,
      I3 => \^out\(1),
      O => \FSM_sequential_current_state[0]_i_4_n_0\
    );
\FSM_sequential_current_state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A88A2AA8"
    )
        port map (
      I0 => \^out\(1),
      I1 => \bitpos_stop_reg_n_0_[1]\,
      I2 => cfg_stop_bit_num,
      I3 => cfg_parity_en,
      I4 => \bitpos_stop_reg_n_0_[0]\,
      O => \FSM_sequential_current_state[0]_i_5_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB7EFFFFFFFF0000"
    )
        port map (
      I0 => \bitpos_stop_reg_n_0_[1]\,
      I1 => cfg_stop_bit_num,
      I2 => cfg_parity_en,
      I3 => \bitpos_stop_reg_n_0_[0]\,
      I4 => \FSM_sequential_current_state_reg[0]_0\,
      I5 => \^out\(1),
      O => next_state(1)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => next_state(0),
      Q => \^out\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => SR(0),
      D => next_state(1),
      Q => \^out\(1)
    );
\bitpos_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F0080"
    )
        port map (
      I0 => \^out\(1),
      I1 => \tx_acc_reg[4]\,
      I2 => reset_n,
      I3 => \^out\(0),
      I4 => \^bitpos_data_reg[2]_2\,
      O => \bitpos_data[0]_i_1_n_0\
    );
\bitpos_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4CFF00008000"
    )
        port map (
      I0 => \^bitpos_data_reg[2]_2\,
      I1 => \^out\(1),
      I2 => \tx_acc_reg[4]\,
      I3 => reset_n,
      I4 => \^out\(0),
      I5 => \^bitpos_data_reg[2]_1\,
      O => \bitpos_data[1]_i_1_n_0\
    );
\bitpos_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF70F000008000"
    )
        port map (
      I0 => \^bitpos_data_reg[2]_2\,
      I1 => \^bitpos_data_reg[2]_1\,
      I2 => \^out\(1),
      I3 => \tx_acc_reg[4]\,
      I4 => \bitpos_data[2]_i_2_n_0\,
      I5 => \^bitpos_data_reg[2]_0\,
      O => \bitpos_data[2]_i_1_n_0\
    );
\bitpos_data[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^out\(0),
      I1 => reset_n,
      O => \bitpos_data[2]_i_2_n_0\
    );
\bitpos_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bitpos_data[0]_i_1_n_0\,
      Q => \^bitpos_data_reg[2]_2\,
      R => '0'
    );
\bitpos_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bitpos_data[1]_i_1_n_0\,
      Q => \^bitpos_data_reg[2]_1\,
      R => '0'
    );
\bitpos_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bitpos_data[2]_i_1_n_0\,
      Q => \^bitpos_data_reg[2]_0\,
      R => '0'
    );
\bitpos_stop[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F38800"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_0\,
      I1 => reset_n,
      I2 => \^out\(0),
      I3 => \^out\(1),
      I4 => \bitpos_stop_reg_n_0_[0]\,
      O => \bitpos_stop[0]_i_1_n_0\
    );
\bitpos_stop[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FFF0F80800000"
    )
        port map (
      I0 => \bitpos_stop_reg_n_0_[0]\,
      I1 => \FSM_sequential_current_state_reg[0]_0\,
      I2 => reset_n,
      I3 => \^out\(0),
      I4 => \^out\(1),
      I5 => \bitpos_stop_reg_n_0_[1]\,
      O => \bitpos_stop[1]_i_1_n_0\
    );
\bitpos_stop_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bitpos_stop[0]_i_1_n_0\,
      Q => \bitpos_stop_reg_n_0_[0]\,
      R => '0'
    );
\bitpos_stop_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bitpos_stop[1]_i_1_n_0\,
      Q => \bitpos_stop_reg_n_0_[1]\,
      R => '0'
    );
ctrl_start_tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCFAA000000AA"
    )
        port map (
      I0 => pwdata(0),
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \paddr[8]\,
      I4 => \paddr[3]\,
      I5 => ctrl_start_tx,
      O => ctrl_start_tx_reg
    );
stt_tx_done_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDF7FFD"
    )
        port map (
      I0 => \^out\(1),
      I1 => \bitpos_stop_reg_n_0_[1]\,
      I2 => cfg_stop_bit_num,
      I3 => cfg_parity_en,
      I4 => \bitpos_stop_reg_n_0_[0]\,
      O => stt_tx_done_reg_0
    );
stt_tx_done_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => stt_tx_done_reg_1,
      PRE => SR(0),
      Q => stt_tx_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_block is
  port (
    cfg_stop_bit_num : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    cfg_parity_en : out STD_LOGIC;
    ctrl_start_tx : out STD_LOGIC;
    prdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \tx_data_reg[0]\ : out STD_LOGIC;
    waddrerr_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pslverr : out STD_LOGIC;
    \tx_data_reg[0]_0\ : out STD_LOGIC;
    waddrerr_reg_0 : out STD_LOGIC;
    ctrl_start_tx_reg : out STD_LOGIC;
    pready : out STD_LOGIC;
    stt_tx_done_reg : out STD_LOGIC;
    tx : out STD_LOGIC;
    pwdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    stt_tx_done : in STD_LOGIC;
    stt_rx_done_reg : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    paddr_1_sp_1 : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pwrite_0 : in STD_LOGIC;
    paddr_0_sp_1 : in STD_LOGIC;
    \paddr[0]_0\ : in STD_LOGIC;
    \paddr[0]_1\ : in STD_LOGIC;
    pwrite_1 : in STD_LOGIC;
    pwrite_2 : in STD_LOGIC;
    \paddr[0]_2\ : in STD_LOGIC;
    \paddr[0]_3\ : in STD_LOGIC;
    pwrite_3 : in STD_LOGIC;
    pwrite : in STD_LOGIC;
    penable : in STD_LOGIC;
    psel : in STD_LOGIC;
    pwrite_4 : in STD_LOGIC;
    paddr_5_sp_1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bitpos_data_reg[2]\ : in STD_LOGIC;
    \bitpos_data_reg[1]\ : in STD_LOGIC;
    \bitpos_data_reg[0]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_block is
  signal paddr_0_sn_1 : STD_LOGIC;
  signal paddr_1_sn_1 : STD_LOGIC;
  signal paddr_5_sn_1 : STD_LOGIC;
begin
  paddr_0_sn_1 <= paddr_0_sp_1;
  paddr_1_sn_1 <= paddr_1_sp_1;
  paddr_5_sn_1 <= paddr_5_sp_1;
rb_regs: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rb_regs
     port map (
      D(7 downto 0) => D(7 downto 0),
      \FSM_sequential_current_state_reg[1]\ => \FSM_sequential_current_state_reg[1]\,
      Q(1 downto 0) => Q(1 downto 0),
      \bitpos_data_reg[0]\ => \bitpos_data_reg[0]\,
      \bitpos_data_reg[1]\ => \bitpos_data_reg[1]\,
      \bitpos_data_reg[2]\ => \bitpos_data_reg[2]\,
      cfg_parity_en => cfg_parity_en,
      cfg_stop_bit_num => cfg_stop_bit_num,
      clk => clk,
      ctrl_start_tx => ctrl_start_tx,
      ctrl_start_tx_reg_0 => ctrl_start_tx_reg,
      \out\(1 downto 0) => \out\(1 downto 0),
      paddr(11 downto 0) => paddr(11 downto 0),
      \paddr[0]_0\ => \paddr[0]_0\,
      \paddr[0]_1\ => \paddr[0]_1\,
      \paddr[0]_2\ => \paddr[0]_2\,
      \paddr[0]_3\ => \paddr[0]_3\,
      paddr_0_sp_1 => paddr_0_sn_1,
      paddr_1_sp_1 => paddr_1_sn_1,
      paddr_5_sp_1 => paddr_5_sn_1,
      penable => penable,
      prdata(7 downto 0) => prdata(7 downto 0),
      pready => pready,
      psel => psel,
      pslverr => pslverr,
      pwdata(7 downto 0) => pwdata(7 downto 0),
      pwrite => pwrite,
      pwrite_0 => pwrite_0,
      pwrite_1 => pwrite_1,
      pwrite_2 => pwrite_2,
      pwrite_3 => pwrite_3,
      pwrite_4 => pwrite_4,
      reset_n => reset_n,
      stt_rx_done_reg_0 => stt_rx_done_reg,
      stt_rx_done_reg_reg_0 => SR(0),
      stt_tx_done => stt_tx_done,
      stt_tx_done_reg_0 => stt_tx_done_reg,
      tx => tx,
      \tx_data_reg[0]_0\ => \tx_data_reg[0]\,
      \tx_data_reg[0]_1\ => \tx_data_reg[0]_0\,
      waddrerr_reg_0 => waddrerr_reg,
      waddrerr_reg_1 => waddrerr_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart is
  port (
    rts_n : out STD_LOGIC;
    prdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \tx_data_reg[0]\ : out STD_LOGIC;
    waddrerr_reg : out STD_LOGIC;
    pslverr : out STD_LOGIC;
    pready : out STD_LOGIC;
    tx : out STD_LOGIC;
    pwdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    paddr_1_sp_1 : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pwrite_0 : in STD_LOGIC;
    paddr_0_sp_1 : in STD_LOGIC;
    \paddr[0]_0\ : in STD_LOGIC;
    \paddr[0]_1\ : in STD_LOGIC;
    pwrite_1 : in STD_LOGIC;
    pwrite_2 : in STD_LOGIC;
    \paddr[0]_2\ : in STD_LOGIC;
    \paddr[0]_3\ : in STD_LOGIC;
    pwrite_3 : in STD_LOGIC;
    pwrite : in STD_LOGIC;
    penable : in STD_LOGIC;
    psel : in STD_LOGIC;
    pwrite_4 : in STD_LOGIC;
    cts_n : in STD_LOGIC;
    rx : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart is
  signal baudrate_gen_n_0 : STD_LOGIC;
  signal baudrate_gen_n_1 : STD_LOGIC;
  signal baudrate_gen_n_2 : STD_LOGIC;
  signal baudrate_gen_n_3 : STD_LOGIC;
  signal cfg_data_bit_num : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cfg_parity_en : STD_LOGIC;
  signal cfg_stop_bit_num : STD_LOGIC;
  signal ctrl_start_tx : STD_LOGIC;
  signal paddr_0_sn_1 : STD_LOGIC;
  signal paddr_1_sn_1 : STD_LOGIC;
  signal receiver_n_1 : STD_LOGIC;
  signal receiver_n_2 : STD_LOGIC;
  signal receiver_n_3 : STD_LOGIC;
  signal receiver_n_4 : STD_LOGIC;
  signal receiver_n_5 : STD_LOGIC;
  signal receiver_n_6 : STD_LOGIC;
  signal receiver_n_7 : STD_LOGIC;
  signal receiver_n_8 : STD_LOGIC;
  signal receiver_n_9 : STD_LOGIC;
  signal register_block_n_1 : STD_LOGIC;
  signal register_block_n_17 : STD_LOGIC;
  signal register_block_n_18 : STD_LOGIC;
  signal register_block_n_19 : STD_LOGIC;
  signal register_block_n_21 : STD_LOGIC;
  signal \^rts_n\ : STD_LOGIC;
  signal stt_tx_done : STD_LOGIC;
  signal transmitter_n_0 : STD_LOGIC;
  signal transmitter_n_1 : STD_LOGIC;
  signal transmitter_n_3 : STD_LOGIC;
  signal transmitter_n_4 : STD_LOGIC;
  signal transmitter_n_5 : STD_LOGIC;
  signal transmitter_n_6 : STD_LOGIC;
  signal transmitter_n_7 : STD_LOGIC;
  signal \^tx_data_reg[0]\ : STD_LOGIC;
  signal \^waddrerr_reg\ : STD_LOGIC;
begin
  paddr_0_sn_1 <= paddr_0_sp_1;
  paddr_1_sn_1 <= paddr_1_sp_1;
  rts_n <= \^rts_n\;
  \tx_data_reg[0]\ <= \^tx_data_reg[0]\;
  waddrerr_reg <= \^waddrerr_reg\;
baudrate_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_baudrate_gen
     port map (
      \FSM_sequential_current_state_reg[1]\ => transmitter_n_3,
      SR(0) => register_block_n_1,
      \bitpos_data_reg[2]\ => baudrate_gen_n_1,
      \bitpos_stop_reg[1]\ => baudrate_gen_n_0,
      clk => clk,
      \out\(0) => transmitter_n_1,
      \paddr[1]\ => \^waddrerr_reg\,
      \paddr[3]\ => register_block_n_19,
      \paddr[8]\ => register_block_n_18,
      \sample_reg[1]\ => baudrate_gen_n_2,
      stt_tx_done => stt_tx_done,
      stt_tx_done_reg => baudrate_gen_n_3,
      wack_reg => register_block_n_21
    );
receiver: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_receiver
     port map (
      D(7) => receiver_n_2,
      D(6) => receiver_n_3,
      D(5) => receiver_n_4,
      D(4) => receiver_n_5,
      D(3) => receiver_n_6,
      D(2) => receiver_n_7,
      D(1) => receiver_n_8,
      D(0) => receiver_n_9,
      Q(1 downto 0) => cfg_data_bit_num(1 downto 0),
      SR(0) => register_block_n_1,
      cfg_parity_en => cfg_parity_en,
      cfg_stop_bit_num => cfg_stop_bit_num,
      clk => clk,
      paddr(7 downto 0) => paddr(7 downto 0),
      \paddr[8]\ => \^tx_data_reg[0]\,
      rts_n => \^rts_n\,
      rx => rx,
      \rx_acc_reg[4]\ => baudrate_gen_n_2,
      stt_rx_done_reg_0 => receiver_n_1,
      wack_reg => register_block_n_21
    );
register_block: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_block
     port map (
      D(7) => receiver_n_2,
      D(6) => receiver_n_3,
      D(5) => receiver_n_4,
      D(4) => receiver_n_5,
      D(3) => receiver_n_6,
      D(2) => receiver_n_7,
      D(1) => receiver_n_8,
      D(0) => receiver_n_9,
      \FSM_sequential_current_state_reg[1]\ => transmitter_n_7,
      Q(1 downto 0) => cfg_data_bit_num(1 downto 0),
      SR(0) => register_block_n_1,
      \bitpos_data_reg[0]\ => transmitter_n_6,
      \bitpos_data_reg[1]\ => transmitter_n_5,
      \bitpos_data_reg[2]\ => transmitter_n_4,
      cfg_parity_en => cfg_parity_en,
      cfg_stop_bit_num => cfg_stop_bit_num,
      clk => clk,
      ctrl_start_tx => ctrl_start_tx,
      ctrl_start_tx_reg => register_block_n_19,
      \out\(1) => transmitter_n_0,
      \out\(0) => transmitter_n_1,
      paddr(11 downto 0) => paddr(11 downto 0),
      \paddr[0]_0\ => \paddr[0]_0\,
      \paddr[0]_1\ => \paddr[0]_1\,
      \paddr[0]_2\ => \paddr[0]_2\,
      \paddr[0]_3\ => \paddr[0]_3\,
      paddr_0_sp_1 => paddr_0_sn_1,
      paddr_1_sp_1 => paddr_1_sn_1,
      paddr_5_sp_1 => receiver_n_1,
      penable => penable,
      prdata(7 downto 0) => prdata(7 downto 0),
      pready => pready,
      psel => psel,
      pslverr => pslverr,
      pwdata(7 downto 0) => pwdata(7 downto 0),
      pwrite => pwrite,
      pwrite_0 => pwrite_0,
      pwrite_1 => pwrite_1,
      pwrite_2 => pwrite_2,
      pwrite_3 => pwrite_3,
      pwrite_4 => pwrite_4,
      reset_n => reset_n,
      stt_rx_done_reg => \^rts_n\,
      stt_tx_done => stt_tx_done,
      stt_tx_done_reg => register_block_n_21,
      tx => tx,
      \tx_data_reg[0]\ => \^tx_data_reg[0]\,
      \tx_data_reg[0]_0\ => register_block_n_17,
      waddrerr_reg => \^waddrerr_reg\,
      waddrerr_reg_0 => register_block_n_18
    );
transmitter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_transmitter
     port map (
      \FSM_sequential_current_state_reg[0]_0\ => baudrate_gen_n_0,
      Q(1 downto 0) => cfg_data_bit_num(1 downto 0),
      SR(0) => register_block_n_1,
      \bitpos_data_reg[2]_0\ => transmitter_n_4,
      \bitpos_data_reg[2]_1\ => transmitter_n_5,
      \bitpos_data_reg[2]_2\ => transmitter_n_6,
      cfg_parity_en => cfg_parity_en,
      cfg_stop_bit_num => cfg_stop_bit_num,
      clk => clk,
      ctrl_start_tx => ctrl_start_tx,
      ctrl_start_tx_reg => transmitter_n_7,
      cts_n => cts_n,
      \out\(1) => transmitter_n_0,
      \out\(0) => transmitter_n_1,
      \paddr[3]\ => register_block_n_19,
      \paddr[8]\ => register_block_n_17,
      pwdata(0) => pwdata(0),
      reset_n => reset_n,
      stt_tx_done => stt_tx_done,
      stt_tx_done_reg_0 => transmitter_n_3,
      stt_tx_done_reg_1 => baudrate_gen_n_3,
      \tx_acc_reg[4]\ => baudrate_gen_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
    tx : out STD_LOGIC;
    rts_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_uart_dti_uart_0_0,dti_uart,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dti_uart,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal inst_n_10 : STD_LOGIC;
  signal inst_n_9 : STD_LOGIC;
  signal \prdata[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \prdata[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \prdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \prdata[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal pslverr_INST_0_i_1_n_0 : STD_LOGIC;
  signal pslverr_INST_0_i_4_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1";
  attribute X_INTERFACE_INFO of penable : signal is "xilinx.com:interface:apb:1.0 APB PENABLE";
  attribute X_INTERFACE_INFO of pready : signal is "xilinx.com:interface:apb:1.0 APB PREADY";
  attribute X_INTERFACE_INFO of psel : signal is "xilinx.com:interface:apb:1.0 APB PSEL";
  attribute X_INTERFACE_INFO of pslverr : signal is "xilinx.com:interface:apb:1.0 APB PSLVERR";
  attribute X_INTERFACE_INFO of pwrite : signal is "xilinx.com:interface:apb:1.0 APB PWRITE";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of paddr : signal is "xilinx.com:interface:apb:1.0 APB PADDR";
  attribute X_INTERFACE_INFO of prdata : signal is "xilinx.com:interface:apb:1.0 APB PRDATA";
  attribute X_INTERFACE_INFO of pwdata : signal is "xilinx.com:interface:apb:1.0 APB PWDATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart
     port map (
      clk => clk,
      cts_n => cts_n,
      paddr(11 downto 0) => paddr(11 downto 0),
      \paddr[0]_0\ => \prdata[7]_INST_0_i_5_n_0\,
      \paddr[0]_1\ => \prdata[2]_INST_0_i_1_n_0\,
      \paddr[0]_2\ => \prdata[3]_INST_0_i_1_n_0\,
      \paddr[0]_3\ => \prdata[4]_INST_0_i_1_n_0\,
      paddr_0_sp_1 => \prdata[1]_INST_0_i_3_n_0\,
      paddr_1_sp_1 => \prdata[1]_INST_0_i_4_n_0\,
      penable => penable,
      prdata(7 downto 0) => prdata(7 downto 0),
      pready => pready,
      psel => psel,
      pslverr => pslverr,
      pwdata(7 downto 0) => pwdata(7 downto 0),
      pwrite => pwrite,
      pwrite_0 => pslverr_INST_0_i_4_n_0,
      pwrite_1 => \prdata[7]_INST_0_i_2_n_0\,
      pwrite_2 => \prdata[7]_INST_0_i_4_n_0\,
      pwrite_3 => \prdata[7]_INST_0_i_1_n_0\,
      pwrite_4 => pslverr_INST_0_i_1_n_0,
      reset_n => reset_n,
      rts_n => rts_n,
      rx => rx,
      tx => tx,
      \tx_data_reg[0]\ => inst_n_9,
      waddrerr_reg => inst_n_10
    );
\prdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(10),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(10)
    );
\prdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(11),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(11)
    );
\prdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(12),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(12)
    );
\prdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(13),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(13)
    );
\prdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(14),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(14)
    );
\prdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(15),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(15)
    );
\prdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(16),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(16)
    );
\prdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(17),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(17)
    );
\prdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(18),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(18)
    );
\prdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(19),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(19)
    );
\prdata[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => pwdata(1),
      I1 => paddr(4),
      I2 => pslverr_INST_0_i_4_n_0,
      I3 => \prdata[7]_INST_0_i_5_n_0\,
      I4 => paddr(2),
      I5 => paddr(3),
      O => \prdata[1]_INST_0_i_3_n_0\
    );
\prdata[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000300000004"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(4),
      I2 => pslverr_INST_0_i_4_n_0,
      I3 => inst_n_9,
      I4 => inst_n_10,
      I5 => paddr(3),
      O => \prdata[1]_INST_0_i_4_n_0\
    );
\prdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(20),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(20)
    );
\prdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(21),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(21)
    );
\prdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(22),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(22)
    );
\prdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(23),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(23)
    );
\prdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(24),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(24)
    );
\prdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(25),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(25)
    );
\prdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(26),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(26)
    );
\prdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(27),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(27)
    );
\prdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(28),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(28)
    );
\prdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(29),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(29)
    );
\prdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020200"
    )
        port map (
      I0 => pwdata(2),
      I1 => pslverr_INST_0_i_4_n_0,
      I2 => \prdata[7]_INST_0_i_5_n_0\,
      I3 => paddr(4),
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[2]_INST_0_i_1_n_0\
    );
\prdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(30),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(30)
    );
\prdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(31),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(31)
    );
\prdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020200"
    )
        port map (
      I0 => pwdata(3),
      I1 => pslverr_INST_0_i_4_n_0,
      I2 => \prdata[7]_INST_0_i_5_n_0\,
      I3 => paddr(4),
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[3]_INST_0_i_1_n_0\
    );
\prdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020200"
    )
        port map (
      I0 => pwdata(4),
      I1 => pslverr_INST_0_i_4_n_0,
      I2 => \prdata[7]_INST_0_i_5_n_0\,
      I3 => paddr(4),
      I4 => paddr(3),
      I5 => paddr(2),
      O => \prdata[4]_INST_0_i_1_n_0\
    );
\prdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEB"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      I2 => paddr(4),
      I3 => inst_n_10,
      I4 => inst_n_9,
      I5 => pslverr_INST_0_i_4_n_0,
      O => \prdata[7]_INST_0_i_1_n_0\
    );
\prdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      I2 => inst_n_10,
      I3 => inst_n_9,
      I4 => pslverr_INST_0_i_4_n_0,
      I5 => paddr(4),
      O => \prdata[7]_INST_0_i_2_n_0\
    );
\prdata[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      I2 => inst_n_10,
      I3 => inst_n_9,
      I4 => pslverr_INST_0_i_4_n_0,
      I5 => paddr(4),
      O => \prdata[7]_INST_0_i_4_n_0\
    );
\prdata[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => paddr(8),
      I1 => paddr(9),
      I2 => paddr(11),
      I3 => paddr(10),
      I4 => paddr(1),
      I5 => paddr(0),
      O => \prdata[7]_INST_0_i_5_n_0\
    );
\prdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(8),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(8)
    );
\prdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwdata(9),
      I1 => pslverr_INST_0_i_1_n_0,
      O => prdata(9)
    );
pslverr_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      I2 => paddr(4),
      I3 => inst_n_10,
      I4 => inst_n_9,
      I5 => pslverr_INST_0_i_4_n_0,
      O => pslverr_INST_0_i_1_n_0
    );
pslverr_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => paddr(5),
      I1 => paddr(6),
      I2 => paddr(7),
      I3 => penable,
      I4 => psel,
      I5 => pwrite,
      O => pslverr_INST_0_i_4_n_0
    );
end STRUCTURE;
