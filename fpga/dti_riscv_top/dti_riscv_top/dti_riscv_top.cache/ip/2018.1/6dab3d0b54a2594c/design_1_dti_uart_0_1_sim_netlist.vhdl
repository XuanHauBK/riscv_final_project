-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Mon Dec 16 23:26:33 2024
-- Host        : dt22-linux running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_dti_uart_0_1_sim_netlist.vhdl
-- Design      : design_1_dti_uart_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart is
  port (
    rts_n : out STD_LOGIC;
    boost_en : out STD_LOGIC;
    prdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pready : out STD_LOGIC;
    \dti_uart/transmitter/stt_tx_done_reg_0\ : out STD_LOGIC;
    tx : out STD_LOGIC;
    pslverr : out STD_LOGIC;
    clk : in STD_LOGIC;
    pwdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    paddr_5_sp_1 : in STD_LOGIC;
    paddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \paddr[5]_0\ : in STD_LOGIC;
    \paddr[5]_1\ : in STD_LOGIC;
    \paddr[5]_2\ : in STD_LOGIC;
    pwrite_0 : in STD_LOGIC;
    psel : in STD_LOGIC;
    pwrite : in STD_LOGIC;
    penable : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    rx : in STD_LOGIC;
    cts_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dti_uart is
  signal \bitpos_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \bitpos_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitpos_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \bitpos_stop[1]_i_2_n_0\ : STD_LOGIC;
  signal boost_cfg_boost_en_i_1_n_0 : STD_LOGIC;
  signal boost_cfg_boost_en_i_2_n_0 : STD_LOGIC;
  signal boost_cfg_boost_en_i_4_n_0 : STD_LOGIC;
  signal \^boost_en\ : STD_LOGIC;
  signal ctrl_start_tx_i_1_n_0 : STD_LOGIC;
  signal ctrl_start_tx_i_2_n_0 : STD_LOGIC;
  signal \current_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \current_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \dti_uart/baudrate_gen/rx_acc\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dti_uart/baudrate_gen/tx_acc\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dti_uart/baudrate_gen/tx_acc_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dti_uart/receiver/bitpos_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \dti_uart/receiver/bitpos_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \dti_uart/receiver/bitpos_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \dti_uart/receiver/bitpos_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \dti_uart/receiver/bitpos_stop[0]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/bitpos_stop[1]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/bitpos_stop_reg_n_0_[0]\ : STD_LOGIC;
  signal \dti_uart/receiver/bitpos_stop_reg_n_0_[1]\ : STD_LOGIC;
  signal \dti_uart/receiver/current_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dti_uart/receiver/current_state\ : signal is "yes";
  signal \dti_uart/receiver/next_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dti_uart/receiver/sample\ : STD_LOGIC;
  signal \dti_uart/receiver/sample_reg_n_0_[0]\ : STD_LOGIC;
  signal \dti_uart/receiver/sample_reg_n_0_[1]\ : STD_LOGIC;
  signal \dti_uart/receiver/sample_reg_n_0_[2]\ : STD_LOGIC;
  signal \dti_uart/receiver/sample_reg_n_0_[3]\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch[0]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch[1]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch[2]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch[3]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch[4]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch[5]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch[6]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch[7]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch_reg_n_0_[0]\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch_reg_n_0_[1]\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch_reg_n_0_[2]\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch_reg_n_0_[3]\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch_reg_n_0_[4]\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch_reg_n_0_[5]\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch_reg_n_0_[6]\ : STD_LOGIC;
  signal \dti_uart/receiver/scratch_reg_n_0_[7]\ : STD_LOGIC;
  signal \dti_uart/register_block/rb_apb_bridge/wr_en\ : STD_LOGIC;
  signal \dti_uart/register_block/rb_regs/boost_cfg_wen\ : STD_LOGIC;
  signal \dti_uart/register_block/rb_regs/cfg_data_bit_num\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dti_uart/register_block/rb_regs/cfg_parity_type\ : STD_LOGIC;
  signal \dti_uart/register_block/rb_regs/cfg_wen\ : STD_LOGIC;
  signal \dti_uart/register_block/rb_regs/mux_ctrl\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \dti_uart/register_block/rb_regs/mux_tx\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dti_uart/register_block/rb_regs/rx_data_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dti_uart/register_block/rb_regs/stt_rx_done_reg\ : STD_LOGIC;
  signal \dti_uart/register_block/rb_regs/stt_tx_done_reg\ : STD_LOGIC;
  signal \dti_uart/register_block/rb_regs/wack\ : STD_LOGIC;
  signal \dti_uart/register_block/rb_regs/waddrerr\ : STD_LOGIC;
  signal \dti_uart/transmitter/bitpos_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/transmitter/bitpos_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/transmitter/bitpos_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/transmitter/bitpos_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \dti_uart/transmitter/bitpos_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \dti_uart/transmitter/bitpos_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \dti_uart/transmitter/bitpos_stop\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dti_uart/transmitter/bitpos_stop[0]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/transmitter/bitpos_stop[1]_i_1_n_0\ : STD_LOGIC;
  signal \dti_uart/transmitter/current_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \dti_uart/transmitter/current_state\ : signal is "yes";
  signal \dti_uart/transmitter/next_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dti_uart/transmitter/stt_tx_done\ : STD_LOGIC;
  signal \dti_uart/transmitter/stt_tx_done0\ : STD_LOGIC;
  signal \^dti_uart/transmitter/stt_tx_done_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal paddr_5_sn_1 : STD_LOGIC;
  signal \prdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \prdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^rts_n\ : STD_LOGIC;
  signal \rx_acc[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_acc[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample[3]_i_2_n_0\ : STD_LOGIC;
  signal \sample[3]_i_3_n_0\ : STD_LOGIC;
  signal \sample[3]_i_4_n_0\ : STD_LOGIC;
  signal \sample[3]_i_5_n_0\ : STD_LOGIC;
  signal \scratch[4]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[5]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[6]_i_2_n_0\ : STD_LOGIC;
  signal \scratch[7]_i_2_n_0\ : STD_LOGIC;
  signal stt_rx_done_i_1_n_0 : STD_LOGIC;
  signal stt_rx_done_i_2_n_0 : STD_LOGIC;
  signal stt_rx_done_i_3_n_0 : STD_LOGIC;
  signal stt_tx_done_i_1_n_0 : STD_LOGIC;
  signal stt_tx_done_i_3_n_0 : STD_LOGIC;
  signal stt_tx_done_i_4_n_0 : STD_LOGIC;
  signal stt_tx_done_i_5_n_0 : STD_LOGIC;
  signal stt_tx_done_i_6_n_0 : STD_LOGIC;
  signal stt_tx_done_i_7_n_0 : STD_LOGIC;
  signal tx_INST_0_i_1_n_0 : STD_LOGIC;
  signal tx_INST_0_i_2_n_0 : STD_LOGIC;
  signal tx_INST_0_i_3_n_0 : STD_LOGIC;
  signal tx_INST_0_i_4_n_0 : STD_LOGIC;
  signal \tx_acc[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_acc[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_acc[8]_i_2_n_0\ : STD_LOGIC;
  signal \tx_acc[8]_i_3_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[7]_i_2_n_0\ : STD_LOGIC;
  signal waddrerr_i_1_n_0 : STD_LOGIC;
  signal waddrerr_i_2_n_0 : STD_LOGIC;
  signal waddrerr_i_3_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_dti_uart/receiver/current_state_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_dti_uart/receiver/current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_dti_uart/receiver/current_state_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00";
  attribute KEEP of \FSM_sequential_dti_uart/receiver/current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_dti_uart/transmitter/current_state_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:11,iSTATE2:00";
  attribute KEEP of \FSM_sequential_dti_uart/transmitter/current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_dti_uart/transmitter/current_state_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:11,iSTATE2:00";
  attribute KEEP of \FSM_sequential_dti_uart/transmitter/current_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_state[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \prdata[7]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pready_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rx_acc[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rx_acc[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rx_acc[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rx_acc[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rx_acc[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of stt_tx_done_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of stt_tx_done_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tx_acc[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_acc[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_acc[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_acc[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_acc[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_acc[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of wack_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of waddrerr_i_3 : label is "soft_lutpair8";
begin
  boost_en <= \^boost_en\;
  \dti_uart/transmitter/stt_tx_done_reg_0\ <= \^dti_uart/transmitter/stt_tx_done_reg_0\;
  paddr_5_sn_1 <= paddr_5_sp_1;
  rts_n <= \^rts_n\;
\FSM_sequential_dti_uart/receiver/current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/next_state\(0),
      Q => \dti_uart/receiver/current_state\(0)
    );
\FSM_sequential_dti_uart/receiver/current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/next_state\(1),
      Q => \dti_uart/receiver/current_state\(1)
    );
\FSM_sequential_dti_uart/transmitter/current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/transmitter/next_state\(0),
      Q => \dti_uart/transmitter/current_state\(0)
    );
\FSM_sequential_dti_uart/transmitter/current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/transmitter/next_state\(1),
      Q => \dti_uart/transmitter/current_state\(1)
    );
\bitpos_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(0),
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      O => \bitpos_data[0]_i_1_n_0\
    );
\bitpos_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(0),
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      O => \bitpos_data[1]_i_1_n_0\
    );
\bitpos_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(0),
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\,
      I3 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      O => \bitpos_data[2]_i_1_n_0\
    );
\bitpos_data[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => \current_state[0]_i_5_n_0\,
      I1 => \dti_uart/transmitter/current_state\(1),
      I2 => reset_n,
      I3 => \dti_uart/transmitter/current_state\(0),
      O => \bitpos_data[2]_i_2_n_0\
    );
\bitpos_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(1),
      I1 => \bitpos_stop[1]_i_2_n_0\,
      I2 => \dti_uart/receiver/current_state\(0),
      O => \bitpos_data[3]_i_1_n_0\
    );
\bitpos_data[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      I3 => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\,
      I4 => \dti_uart/receiver/current_state\(0),
      O => \bitpos_data[3]_i_2_n_0\
    );
\bitpos_stop[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \sample[3]_i_3_n_0\,
      I1 => \dti_uart/receiver/sample_reg_n_0_[3]\,
      I2 => \dti_uart/receiver/sample_reg_n_0_[2]\,
      I3 => \dti_uart/receiver/sample_reg_n_0_[1]\,
      I4 => \dti_uart/receiver/sample_reg_n_0_[0]\,
      O => \bitpos_stop[1]_i_2_n_0\
    );
boost_cfg_boost_en_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => boost_cfg_boost_en_i_1_n_0
    );
boost_cfg_boost_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pwdata(0),
      I1 => \dti_uart/register_block/rb_regs/boost_cfg_wen\,
      I2 => \^boost_en\,
      O => boost_cfg_boost_en_i_2_n_0
    );
boost_cfg_boost_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => boost_cfg_boost_en_i_4_n_0,
      I1 => paddr(2),
      I2 => pwrite,
      I3 => penable,
      I4 => psel,
      I5 => stt_tx_done_i_5_n_0,
      O => \dti_uart/register_block/rb_regs/boost_cfg_wen\
    );
boost_cfg_boost_en_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^dti_uart/transmitter/stt_tx_done_reg_0\,
      I1 => paddr(6),
      I2 => paddr(9),
      I3 => paddr(8),
      I4 => paddr(4),
      I5 => paddr(3),
      O => boost_cfg_boost_en_i_4_n_0
    );
\cfg_data_bit_num[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => paddr(2),
      I1 => \tx_data[7]_i_2_n_0\,
      O => \dti_uart/register_block/rb_regs/cfg_wen\
    );
ctrl_start_tx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFAA00AA"
    )
        port map (
      I0 => pwdata(0),
      I1 => \dti_uart/transmitter/current_state\(1),
      I2 => \dti_uart/transmitter/current_state\(0),
      I3 => ctrl_start_tx_i_2_n_0,
      I4 => \dti_uart/register_block/rb_regs/mux_ctrl\(0),
      O => ctrl_start_tx_i_1_n_0
    );
ctrl_start_tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => paddr(3),
      I1 => paddr(2),
      I2 => stt_tx_done_i_6_n_0,
      I3 => waddrerr_i_3_n_0,
      I4 => paddr(1),
      I5 => paddr(0),
      O => ctrl_start_tx_i_2_n_0
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000F02222"
    )
        port map (
      I0 => \current_state[0]_i_2__0_n_0\,
      I1 => \current_state[0]_i_3__0_n_0\,
      I2 => \dti_uart/transmitter/current_state\(1),
      I3 => \current_state[0]_i_4_n_0\,
      I4 => \dti_uart/transmitter/current_state\(0),
      I5 => \current_state[0]_i_5_n_0\,
      O => \dti_uart/transmitter/next_state\(0)
    );
\current_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C07"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \dti_uart/receiver/current_state\(0),
      I2 => \dti_uart/receiver/current_state\(1),
      I3 => \current_state[0]_i_3_n_0\,
      O => \dti_uart/receiver/next_state\(0)
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000400402000"
    )
        port map (
      I0 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I2 => \dti_uart/register_block/rb_regs/cfg_data_bit_num\(0),
      I3 => \dti_uart/register_block/rb_regs/cfg_data_bit_num\(1),
      I4 => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\,
      I5 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      O => \current_state[0]_i_2_n_0\
    );
\current_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"90000090FFFFFFFF"
    )
        port map (
      I0 => \dti_uart/transmitter/bitpos_data_reg_n_0_[0]\,
      I1 => \dti_uart/register_block/rb_regs/cfg_data_bit_num\(0),
      I2 => \dti_uart/transmitter/bitpos_data_reg_n_0_[2]\,
      I3 => \dti_uart/register_block/rb_regs/cfg_data_bit_num\(1),
      I4 => \dti_uart/transmitter/bitpos_data_reg_n_0_[1]\,
      I5 => \dti_uart/transmitter/current_state\(1),
      O => \current_state[0]_i_2__0_n_0\
    );
\current_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \dti_uart/receiver/sample_reg_n_0_[2]\,
      I1 => \dti_uart/receiver/sample_reg_n_0_[0]\,
      I2 => \dti_uart/receiver/sample_reg_n_0_[1]\,
      I3 => \dti_uart/receiver/sample_reg_n_0_[3]\,
      O => \current_state[0]_i_3_n_0\
    );
\current_state[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \dti_uart/transmitter/current_state\(1),
      I1 => cts_n,
      I2 => \dti_uart/register_block/rb_regs/mux_ctrl\(0),
      O => \current_state[0]_i_3__0_n_0\
    );
\current_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4029"
    )
        port map (
      I0 => \dti_uart/transmitter/bitpos_stop\(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => \dti_uart/transmitter/bitpos_stop\(1),
      O => \current_state[0]_i_4_n_0\
    );
\current_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(4),
      I1 => \dti_uart/baudrate_gen/tx_acc\(6),
      I2 => \dti_uart/baudrate_gen/tx_acc\(7),
      I3 => \current_state[0]_i_6_n_0\,
      O => \current_state[0]_i_5_n_0\
    );
\current_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(1),
      I1 => \dti_uart/baudrate_gen/tx_acc\(0),
      I2 => \dti_uart/baudrate_gen/tx_acc\(5),
      I3 => \dti_uart/baudrate_gen/tx_acc\(8),
      I4 => \dti_uart/baudrate_gen/tx_acc\(2),
      I5 => \dti_uart/baudrate_gen/tx_acc\(3),
      O => \current_state[0]_i_6_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB7EFFFFFFFF0000"
    )
        port map (
      I0 => \dti_uart/transmitter/bitpos_stop\(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \dti_uart/transmitter/bitpos_stop\(0),
      I4 => \current_state[1]_i_2_n_0\,
      I5 => \dti_uart/transmitter/current_state\(1),
      O => \dti_uart/transmitter/next_state\(1)
    );
\current_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"05C0"
    )
        port map (
      I0 => stt_rx_done_i_2_n_0,
      I1 => \current_state[1]_i_2__0_n_0\,
      I2 => \dti_uart/receiver/current_state\(0),
      I3 => \dti_uart/receiver/current_state\(1),
      O => \dti_uart/receiver/next_state\(1)
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \dti_uart/transmitter/current_state\(0),
      I1 => \current_state[0]_i_5_n_0\,
      O => \current_state[1]_i_2_n_0\
    );
\current_state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \current_state[0]_i_2_n_0\,
      I1 => \dti_uart/receiver/sample_reg_n_0_[3]\,
      I2 => \dti_uart/receiver/sample_reg_n_0_[1]\,
      I3 => \dti_uart/receiver/sample_reg_n_0_[0]\,
      I4 => \dti_uart/receiver/sample_reg_n_0_[2]\,
      O => \current_state[1]_i_2__0_n_0\
    );
\dti_uart/baudrate_gen/rx_acc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \rx_acc[0]_i_1_n_0\,
      Q => \dti_uart/baudrate_gen/rx_acc\(0)
    );
\dti_uart/baudrate_gen/rx_acc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \rx_acc[1]_i_1_n_0\,
      Q => \dti_uart/baudrate_gen/rx_acc\(1)
    );
\dti_uart/baudrate_gen/rx_acc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \rx_acc[2]_i_1_n_0\,
      Q => \dti_uart/baudrate_gen/rx_acc\(2)
    );
\dti_uart/baudrate_gen/rx_acc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \rx_acc[3]_i_1_n_0\,
      Q => \dti_uart/baudrate_gen/rx_acc\(3)
    );
\dti_uart/baudrate_gen/rx_acc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \rx_acc[4]_i_1_n_0\,
      Q => \dti_uart/baudrate_gen/rx_acc\(4)
    );
\dti_uart/baudrate_gen/tx_acc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(0),
      Q => \dti_uart/baudrate_gen/tx_acc\(0)
    );
\dti_uart/baudrate_gen/tx_acc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(1),
      Q => \dti_uart/baudrate_gen/tx_acc\(1)
    );
\dti_uart/baudrate_gen/tx_acc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(2),
      Q => \dti_uart/baudrate_gen/tx_acc\(2)
    );
\dti_uart/baudrate_gen/tx_acc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(3),
      Q => \dti_uart/baudrate_gen/tx_acc\(3)
    );
\dti_uart/baudrate_gen/tx_acc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(4),
      Q => \dti_uart/baudrate_gen/tx_acc\(4)
    );
\dti_uart/baudrate_gen/tx_acc_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(5),
      Q => \dti_uart/baudrate_gen/tx_acc\(5)
    );
\dti_uart/baudrate_gen/tx_acc_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(6),
      Q => \dti_uart/baudrate_gen/tx_acc\(6)
    );
\dti_uart/baudrate_gen/tx_acc_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(7),
      Q => \dti_uart/baudrate_gen/tx_acc\(7)
    );
\dti_uart/baudrate_gen/tx_acc_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/baudrate_gen/tx_acc_0\(8),
      Q => \dti_uart/baudrate_gen/tx_acc\(8)
    );
\dti_uart/receiver/bitpos_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bitpos_data[3]_i_1_n_0\,
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \bitpos_data[0]_i_1_n_0\,
      Q => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\
    );
\dti_uart/receiver/bitpos_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bitpos_data[3]_i_1_n_0\,
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \bitpos_data[1]_i_1_n_0\,
      Q => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\
    );
\dti_uart/receiver/bitpos_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bitpos_data[3]_i_1_n_0\,
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \bitpos_data[2]_i_1_n_0\,
      Q => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\
    );
\dti_uart/receiver/bitpos_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \bitpos_data[3]_i_1_n_0\,
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \bitpos_data[3]_i_2_n_0\,
      Q => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\
    );
\dti_uart/receiver/bitpos_stop[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA40"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(0),
      I1 => \bitpos_stop[1]_i_2_n_0\,
      I2 => \dti_uart/receiver/current_state\(1),
      I3 => \dti_uart/receiver/bitpos_stop_reg_n_0_[0]\,
      O => \dti_uart/receiver/bitpos_stop[0]_i_1_n_0\
    );
\dti_uart/receiver/bitpos_stop[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFCC2000"
    )
        port map (
      I0 => \dti_uart/receiver/bitpos_stop_reg_n_0_[0]\,
      I1 => \dti_uart/receiver/current_state\(0),
      I2 => \bitpos_stop[1]_i_2_n_0\,
      I3 => \dti_uart/receiver/current_state\(1),
      I4 => \dti_uart/receiver/bitpos_stop_reg_n_0_[1]\,
      O => \dti_uart/receiver/bitpos_stop[1]_i_1_n_0\
    );
\dti_uart/receiver/bitpos_stop_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/bitpos_stop[0]_i_1_n_0\,
      Q => \dti_uart/receiver/bitpos_stop_reg_n_0_[0]\
    );
\dti_uart/receiver/bitpos_stop_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/bitpos_stop[1]_i_1_n_0\,
      Q => \dti_uart/receiver/bitpos_stop_reg_n_0_[1]\
    );
\dti_uart/receiver/sample_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \dti_uart/receiver/sample\,
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \sample[0]_i_1_n_0\,
      Q => \dti_uart/receiver/sample_reg_n_0_[0]\
    );
\dti_uart/receiver/sample_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \dti_uart/receiver/sample\,
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \sample[1]_i_1_n_0\,
      Q => \dti_uart/receiver/sample_reg_n_0_[1]\
    );
\dti_uart/receiver/sample_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \dti_uart/receiver/sample\,
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \sample[2]_i_1_n_0\,
      Q => \dti_uart/receiver/sample_reg_n_0_[2]\
    );
\dti_uart/receiver/sample_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \dti_uart/receiver/sample\,
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \sample[3]_i_2_n_0\,
      Q => \dti_uart/receiver/sample_reg_n_0_[3]\
    );
\dti_uart/receiver/scratch[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx,
      I1 => \scratch[4]_i_2_n_0\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I3 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I4 => \dti_uart/receiver/scratch_reg_n_0_[0]\,
      O => \dti_uart/receiver/scratch[0]_i_1_n_0\
    );
\dti_uart/receiver/scratch[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx,
      I1 => \scratch[5]_i_2_n_0\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I3 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I4 => \dti_uart/receiver/scratch_reg_n_0_[1]\,
      O => \dti_uart/receiver/scratch[1]_i_1_n_0\
    );
\dti_uart/receiver/scratch[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx,
      I1 => \scratch[6]_i_2_n_0\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I3 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I4 => \dti_uart/receiver/scratch_reg_n_0_[2]\,
      O => \dti_uart/receiver/scratch[2]_i_1_n_0\
    );
\dti_uart/receiver/scratch[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx,
      I1 => \scratch[7]_i_2_n_0\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I3 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I4 => \dti_uart/receiver/scratch_reg_n_0_[3]\,
      O => \dti_uart/receiver/scratch[3]_i_1_n_0\
    );
\dti_uart/receiver/scratch[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => rx,
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I3 => \scratch[4]_i_2_n_0\,
      I4 => \dti_uart/receiver/scratch_reg_n_0_[4]\,
      O => \dti_uart/receiver/scratch[4]_i_1_n_0\
    );
\dti_uart/receiver/scratch[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => rx,
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I3 => \scratch[5]_i_2_n_0\,
      I4 => \dti_uart/receiver/scratch_reg_n_0_[5]\,
      O => \dti_uart/receiver/scratch[5]_i_1_n_0\
    );
\dti_uart/receiver/scratch[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => rx,
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I3 => \scratch[6]_i_2_n_0\,
      I4 => \dti_uart/receiver/scratch_reg_n_0_[6]\,
      O => \dti_uart/receiver/scratch[6]_i_1_n_0\
    );
\dti_uart/receiver/scratch[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => rx,
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[3]\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[2]\,
      I3 => \scratch[7]_i_2_n_0\,
      I4 => \dti_uart/receiver/scratch_reg_n_0_[7]\,
      O => \dti_uart/receiver/scratch[7]_i_1_n_0\
    );
\dti_uart/receiver/scratch_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/scratch[0]_i_1_n_0\,
      Q => \dti_uart/receiver/scratch_reg_n_0_[0]\
    );
\dti_uart/receiver/scratch_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/scratch[1]_i_1_n_0\,
      Q => \dti_uart/receiver/scratch_reg_n_0_[1]\
    );
\dti_uart/receiver/scratch_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/scratch[2]_i_1_n_0\,
      Q => \dti_uart/receiver/scratch_reg_n_0_[2]\
    );
\dti_uart/receiver/scratch_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/scratch[3]_i_1_n_0\,
      Q => \dti_uart/receiver/scratch_reg_n_0_[3]\
    );
\dti_uart/receiver/scratch_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/scratch[4]_i_1_n_0\,
      Q => \dti_uart/receiver/scratch_reg_n_0_[4]\
    );
\dti_uart/receiver/scratch_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/scratch[5]_i_1_n_0\,
      Q => \dti_uart/receiver/scratch_reg_n_0_[5]\
    );
\dti_uart/receiver/scratch_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/scratch[6]_i_1_n_0\,
      Q => \dti_uart/receiver/scratch_reg_n_0_[6]\
    );
\dti_uart/receiver/scratch_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => \dti_uart/receiver/scratch[7]_i_1_n_0\,
      Q => \dti_uart/receiver/scratch_reg_n_0_[7]\
    );
\dti_uart/receiver/stt_rx_done_reg\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => boost_cfg_boost_en_i_1_n_0,
      D => stt_rx_done_i_1_n_0,
      Q => \^rts_n\
    );
\dti_uart/register_block/rb_regs/boost_cfg_boost_en_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => boost_cfg_boost_en_i_2_n_0,
      Q => \^boost_en\,
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/cfg_data_bit_num_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dti_uart/register_block/rb_regs/cfg_wen\,
      D => pwdata(0),
      Q => \dti_uart/register_block/rb_regs/cfg_data_bit_num\(0),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/cfg_data_bit_num_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dti_uart/register_block/rb_regs/cfg_wen\,
      D => pwdata(1),
      Q => \dti_uart/register_block/rb_regs/cfg_data_bit_num\(1),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/cfg_parity_en_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dti_uart/register_block/rb_regs/cfg_wen\,
      D => pwdata(3),
      Q => p_0_in(1),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/cfg_parity_type_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dti_uart/register_block/rb_regs/cfg_wen\,
      D => pwdata(4),
      Q => \dti_uart/register_block/rb_regs/cfg_parity_type\,
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/cfg_stop_bit_num_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dti_uart/register_block/rb_regs/cfg_wen\,
      D => pwdata(2),
      Q => p_0_in(0),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/ctrl_start_tx_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ctrl_start_tx_i_1_n_0,
      Q => \dti_uart/register_block/rb_regs/mux_ctrl\(0),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/rx_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/receiver/scratch_reg_n_0_[0]\,
      Q => \dti_uart/register_block/rb_regs/rx_data_reg\(0),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/rx_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/receiver/scratch_reg_n_0_[1]\,
      Q => \dti_uart/register_block/rb_regs/rx_data_reg\(1),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/rx_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/receiver/scratch_reg_n_0_[2]\,
      Q => \dti_uart/register_block/rb_regs/rx_data_reg\(2),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/rx_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/receiver/scratch_reg_n_0_[3]\,
      Q => \dti_uart/register_block/rb_regs/rx_data_reg\(3),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/rx_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/receiver/scratch_reg_n_0_[4]\,
      Q => \dti_uart/register_block/rb_regs/rx_data_reg\(4),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/rx_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/receiver/scratch_reg_n_0_[5]\,
      Q => \dti_uart/register_block/rb_regs/rx_data_reg\(5),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/rx_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/receiver/scratch_reg_n_0_[6]\,
      Q => \dti_uart/register_block/rb_regs/rx_data_reg\(6),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/rx_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/receiver/scratch_reg_n_0_[7]\,
      Q => \dti_uart/register_block/rb_regs/rx_data_reg\(7),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/stt_rx_done_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^rts_n\,
      Q => \dti_uart/register_block/rb_regs/stt_rx_done_reg\,
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/stt_tx_done_reg_reg\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/transmitter/stt_tx_done\,
      Q => \dti_uart/register_block/rb_regs/stt_tx_done_reg\,
      S => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => pwdata(0),
      Q => \dti_uart/register_block/rb_regs/mux_tx\(0),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => pwdata(1),
      Q => \dti_uart/register_block/rb_regs/mux_tx\(1),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => pwdata(2),
      Q => \dti_uart/register_block/rb_regs/mux_tx\(2),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => pwdata(3),
      Q => \dti_uart/register_block/rb_regs/mux_tx\(3),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => pwdata(4),
      Q => \dti_uart/register_block/rb_regs/mux_tx\(4),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => pwdata(5),
      Q => \dti_uart/register_block/rb_regs/mux_tx\(5),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => pwdata(6),
      Q => \dti_uart/register_block/rb_regs/mux_tx\(6),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_data[7]_i_1_n_0\,
      D => pwdata(7),
      Q => \dti_uart/register_block/rb_regs/mux_tx\(7),
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/wack_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/register_block/rb_apb_bridge/wr_en\,
      Q => \dti_uart/register_block/rb_regs/wack\,
      R => boost_cfg_boost_en_i_1_n_0
    );
\dti_uart/register_block/rb_regs/waddrerr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => waddrerr_i_1_n_0,
      Q => \dti_uart/register_block/rb_regs/waddrerr\,
      R => '0'
    );
\dti_uart/transmitter/bitpos_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \dti_uart/transmitter/current_state\(1),
      I1 => \bitpos_data[2]_i_2_n_0\,
      I2 => \dti_uart/transmitter/bitpos_data_reg_n_0_[0]\,
      O => \dti_uart/transmitter/bitpos_data[0]_i_1_n_0\
    );
\dti_uart/transmitter/bitpos_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => \dti_uart/transmitter/bitpos_data_reg_n_0_[0]\,
      I1 => \dti_uart/transmitter/current_state\(1),
      I2 => \bitpos_data[2]_i_2_n_0\,
      I3 => \dti_uart/transmitter/bitpos_data_reg_n_0_[1]\,
      O => \dti_uart/transmitter/bitpos_data[1]_i_1_n_0\
    );
\dti_uart/transmitter/bitpos_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \dti_uart/transmitter/current_state\(1),
      I1 => \dti_uart/transmitter/bitpos_data_reg_n_0_[0]\,
      I2 => \dti_uart/transmitter/bitpos_data_reg_n_0_[1]\,
      I3 => \bitpos_data[2]_i_2_n_0\,
      I4 => \dti_uart/transmitter/bitpos_data_reg_n_0_[2]\,
      O => \dti_uart/transmitter/bitpos_data[2]_i_1_n_0\
    );
\dti_uart/transmitter/bitpos_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/transmitter/bitpos_data[0]_i_1_n_0\,
      Q => \dti_uart/transmitter/bitpos_data_reg_n_0_[0]\,
      R => '0'
    );
\dti_uart/transmitter/bitpos_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/transmitter/bitpos_data[1]_i_1_n_0\,
      Q => \dti_uart/transmitter/bitpos_data_reg_n_0_[1]\,
      R => '0'
    );
\dti_uart/transmitter/bitpos_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/transmitter/bitpos_data[2]_i_1_n_0\,
      Q => \dti_uart/transmitter/bitpos_data_reg_n_0_[2]\,
      R => '0'
    );
\dti_uart/transmitter/bitpos_stop[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F38800"
    )
        port map (
      I0 => \current_state[1]_i_2_n_0\,
      I1 => reset_n,
      I2 => \dti_uart/transmitter/current_state\(0),
      I3 => \dti_uart/transmitter/current_state\(1),
      I4 => \dti_uart/transmitter/bitpos_stop\(0),
      O => \dti_uart/transmitter/bitpos_stop[0]_i_1_n_0\
    );
\dti_uart/transmitter/bitpos_stop[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FFF0F80800000"
    )
        port map (
      I0 => \dti_uart/transmitter/bitpos_stop\(0),
      I1 => \current_state[1]_i_2_n_0\,
      I2 => reset_n,
      I3 => \dti_uart/transmitter/current_state\(0),
      I4 => \dti_uart/transmitter/current_state\(1),
      I5 => \dti_uart/transmitter/bitpos_stop\(1),
      O => \dti_uart/transmitter/bitpos_stop[1]_i_1_n_0\
    );
\dti_uart/transmitter/bitpos_stop_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/transmitter/bitpos_stop[0]_i_1_n_0\,
      Q => \dti_uart/transmitter/bitpos_stop\(0),
      R => '0'
    );
\dti_uart/transmitter/bitpos_stop_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dti_uart/transmitter/bitpos_stop[1]_i_1_n_0\,
      Q => \dti_uart/transmitter/bitpos_stop\(1),
      R => '0'
    );
\dti_uart/transmitter/stt_tx_done_reg\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => stt_tx_done_i_1_n_0,
      PRE => boost_cfg_boost_en_i_1_n_0,
      Q => \dti_uart/transmitter/stt_tx_done\
    );
\prdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \prdata[0]_INST_0_i_1_n_0\,
      I1 => \prdata[0]_INST_0_i_2_n_0\,
      O => prdata(0)
    );
\prdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A00FC000A000C"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/cfg_data_bit_num\(0),
      I1 => \dti_uart/register_block/rb_regs/mux_tx\(0),
      I2 => paddr(3),
      I3 => paddr_5_sn_1,
      I4 => paddr(2),
      I5 => \dti_uart/register_block/rb_regs/mux_ctrl\(0),
      O => \prdata[0]_INST_0_i_1_n_0\
    );
\prdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0C0A0CFFFF0A0C"
    )
        port map (
      I0 => \^boost_en\,
      I1 => \dti_uart/register_block/rb_regs/stt_tx_done_reg\,
      I2 => \paddr[5]_2\,
      I3 => paddr(2),
      I4 => \dti_uart/register_block/rb_regs/rx_data_reg\(0),
      I5 => pwrite_0,
      O => \prdata[0]_INST_0_i_2_n_0\
    );
\prdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \prdata[1]_INST_0_i_1_n_0\,
      I1 => \prdata[1]_INST_0_i_2_n_0\,
      O => prdata(1)
    );
\prdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A00FC000A000C"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/cfg_data_bit_num\(1),
      I1 => \dti_uart/register_block/rb_regs/mux_tx\(1),
      I2 => paddr(3),
      I3 => paddr_5_sn_1,
      I4 => paddr(2),
      I5 => pwdata(1),
      O => \prdata[1]_INST_0_i_1_n_0\
    );
\prdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0C0A0CFFFF0A0C"
    )
        port map (
      I0 => pwdata(1),
      I1 => \dti_uart/register_block/rb_regs/stt_rx_done_reg\,
      I2 => \paddr[5]_2\,
      I3 => paddr(2),
      I4 => \dti_uart/register_block/rb_regs/rx_data_reg\(1),
      I5 => pwrite_0,
      O => \prdata[1]_INST_0_i_2_n_0\
    );
\prdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22F2"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/mux_tx\(2),
      I1 => \paddr[5]_0\,
      I2 => p_0_in(0),
      I3 => \paddr[5]_1\,
      I4 => \prdata[2]_INST_0_i_1_n_0\,
      O => prdata(2)
    );
\prdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3F33330A000000"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/rx_data_reg\(2),
      I1 => \paddr[5]_2\,
      I2 => paddr_5_sn_1,
      I3 => paddr(2),
      I4 => paddr(3),
      I5 => pwdata(2),
      O => \prdata[2]_INST_0_i_1_n_0\
    );
\prdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22F2"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/mux_tx\(3),
      I1 => \paddr[5]_0\,
      I2 => p_0_in(1),
      I3 => \paddr[5]_1\,
      I4 => \prdata[3]_INST_0_i_1_n_0\,
      O => prdata(3)
    );
\prdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3F33330A000000"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/rx_data_reg\(3),
      I1 => \paddr[5]_2\,
      I2 => paddr_5_sn_1,
      I3 => paddr(2),
      I4 => paddr(3),
      I5 => pwdata(3),
      O => \prdata[3]_INST_0_i_1_n_0\
    );
\prdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22F2"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/cfg_parity_type\,
      I1 => \paddr[5]_1\,
      I2 => \dti_uart/register_block/rb_regs/mux_tx\(4),
      I3 => \paddr[5]_0\,
      I4 => \prdata[4]_INST_0_i_3_n_0\,
      O => prdata(4)
    );
\prdata[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444FC4444444C44"
    )
        port map (
      I0 => \paddr[5]_2\,
      I1 => pwdata(4),
      I2 => paddr(2),
      I3 => paddr(3),
      I4 => paddr_5_sn_1,
      I5 => \dti_uart/register_block/rb_regs/rx_data_reg\(4),
      O => \prdata[4]_INST_0_i_3_n_0\
    );
\prdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCEECCEECCFC"
    )
        port map (
      I0 => pwdata(5),
      I1 => \prdata[5]_INST_0_i_1_n_0\,
      I2 => \dti_uart/register_block/rb_regs/mux_tx\(5),
      I3 => paddr_5_sn_1,
      I4 => paddr(2),
      I5 => paddr(3),
      O => prdata(5)
    );
\prdata[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => pwrite_0,
      I1 => \dti_uart/register_block/rb_regs/rx_data_reg\(5),
      I2 => \paddr[5]_2\,
      I3 => pwdata(5),
      O => \prdata[5]_INST_0_i_1_n_0\
    );
\prdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCEECCEECCFC"
    )
        port map (
      I0 => pwdata(6),
      I1 => \prdata[6]_INST_0_i_1_n_0\,
      I2 => \dti_uart/register_block/rb_regs/mux_tx\(6),
      I3 => paddr_5_sn_1,
      I4 => paddr(2),
      I5 => paddr(3),
      O => prdata(6)
    );
\prdata[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => pwrite_0,
      I1 => \dti_uart/register_block/rb_regs/rx_data_reg\(6),
      I2 => \paddr[5]_2\,
      I3 => pwdata(6),
      O => \prdata[6]_INST_0_i_1_n_0\
    );
\prdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14FF0000"
    )
        port map (
      I0 => paddr_5_sn_1,
      I1 => paddr(2),
      I2 => paddr(3),
      I3 => \paddr[5]_2\,
      I4 => pwdata(7),
      I5 => \prdata[7]_INST_0_i_1_n_0\,
      O => prdata(7)
    );
\prdata[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08030800"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/rx_data_reg\(7),
      I1 => paddr(2),
      I2 => paddr_5_sn_1,
      I3 => paddr(3),
      I4 => \dti_uart/register_block/rb_regs/mux_tx\(7),
      O => \prdata[7]_INST_0_i_1_n_0\
    );
pready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => psel,
      I1 => \dti_uart/register_block/rb_regs/wack\,
      I2 => pwrite,
      I3 => penable,
      O => pready
    );
pslverr_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808F00000000000"
    )
        port map (
      I0 => paddr_5_sn_1,
      I1 => \paddr[5]_2\,
      I2 => pwrite,
      I3 => \dti_uart/register_block/rb_regs/waddrerr\,
      I4 => penable,
      I5 => psel,
      O => pslverr
    );
pslverr_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => paddr(10),
      I1 => paddr(7),
      I2 => paddr(11),
      I3 => paddr(5),
      O => \^dti_uart/transmitter/stt_tx_done_reg_0\
    );
\rx_acc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/rx_acc\(0),
      O => \rx_acc[0]_i_1_n_0\
    );
\rx_acc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/rx_acc\(1),
      I1 => \dti_uart/baudrate_gen/rx_acc\(0),
      O => \rx_acc[1]_i_1_n_0\
    );
\rx_acc[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF7000"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/rx_acc\(3),
      I1 => \dti_uart/baudrate_gen/rx_acc\(4),
      I2 => \dti_uart/baudrate_gen/rx_acc\(1),
      I3 => \dti_uart/baudrate_gen/rx_acc\(0),
      I4 => \dti_uart/baudrate_gen/rx_acc\(2),
      O => \rx_acc[2]_i_1_n_0\
    );
\rx_acc[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F7FC000"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/rx_acc\(4),
      I1 => \dti_uart/baudrate_gen/rx_acc\(0),
      I2 => \dti_uart/baudrate_gen/rx_acc\(1),
      I3 => \dti_uart/baudrate_gen/rx_acc\(2),
      I4 => \dti_uart/baudrate_gen/rx_acc\(3),
      O => \rx_acc[3]_i_1_n_0\
    );
\rx_acc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFF8000"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/rx_acc\(3),
      I1 => \dti_uart/baudrate_gen/rx_acc\(2),
      I2 => \dti_uart/baudrate_gen/rx_acc\(1),
      I3 => \dti_uart/baudrate_gen/rx_acc\(0),
      I4 => \dti_uart/baudrate_gen/rx_acc\(4),
      O => \rx_acc[4]_i_1_n_0\
    );
\sample[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(1),
      I1 => \dti_uart/receiver/current_state\(0),
      I2 => \sample[3]_i_3_n_0\,
      I3 => \dti_uart/receiver/sample_reg_n_0_[0]\,
      O => \sample[0]_i_1_n_0\
    );
\sample[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00575700"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(1),
      I1 => \dti_uart/receiver/current_state\(0),
      I2 => \sample[3]_i_3_n_0\,
      I3 => \dti_uart/receiver/sample_reg_n_0_[0]\,
      I4 => \dti_uart/receiver/sample_reg_n_0_[1]\,
      O => \sample[1]_i_1_n_0\
    );
\sample[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057575757000000"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(1),
      I1 => \dti_uart/receiver/current_state\(0),
      I2 => \sample[3]_i_3_n_0\,
      I3 => \dti_uart/receiver/sample_reg_n_0_[0]\,
      I4 => \dti_uart/receiver/sample_reg_n_0_[1]\,
      I5 => \dti_uart/receiver/sample_reg_n_0_[2]\,
      O => \sample[2]_i_1_n_0\
    );
\sample[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03700373"
    )
        port map (
      I0 => \current_state[0]_i_3_n_0\,
      I1 => \sample[3]_i_3_n_0\,
      I2 => \dti_uart/receiver/current_state\(1),
      I3 => \dti_uart/receiver/current_state\(0),
      I4 => \sample[3]_i_4_n_0\,
      O => \dti_uart/receiver/sample\
    );
\sample[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \sample[3]_i_5_n_0\,
      I1 => \dti_uart/receiver/sample_reg_n_0_[1]\,
      I2 => \dti_uart/receiver/sample_reg_n_0_[0]\,
      I3 => \dti_uart/receiver/sample_reg_n_0_[2]\,
      I4 => \dti_uart/receiver/sample_reg_n_0_[3]\,
      O => \sample[3]_i_2_n_0\
    );
\sample[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/rx_acc\(4),
      I1 => \dti_uart/baudrate_gen/rx_acc\(2),
      I2 => \dti_uart/baudrate_gen/rx_acc\(3),
      I3 => \dti_uart/baudrate_gen/rx_acc\(0),
      I4 => \dti_uart/baudrate_gen/rx_acc\(1),
      O => \sample[3]_i_3_n_0\
    );
\sample[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \dti_uart/receiver/sample_reg_n_0_[3]\,
      I1 => rx,
      I2 => \dti_uart/receiver/sample_reg_n_0_[0]\,
      I3 => \dti_uart/receiver/sample_reg_n_0_[1]\,
      I4 => \dti_uart/receiver/sample_reg_n_0_[2]\,
      O => \sample[3]_i_4_n_0\
    );
\sample[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \sample[3]_i_3_n_0\,
      I1 => \dti_uart/receiver/current_state\(0),
      I2 => \dti_uart/receiver/current_state\(1),
      O => \sample[3]_i_5_n_0\
    );
\scratch[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      I1 => \dti_uart/receiver/current_state\(0),
      I2 => \dti_uart/receiver/current_state\(1),
      I3 => \bitpos_stop[1]_i_2_n_0\,
      I4 => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\,
      O => \scratch[4]_i_2_n_0\
    );
\scratch[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \dti_uart/receiver/current_state\(0),
      I1 => \dti_uart/receiver/current_state\(1),
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      I3 => \bitpos_stop[1]_i_2_n_0\,
      I4 => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\,
      O => \scratch[5]_i_2_n_0\
    );
\scratch[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \bitpos_stop[1]_i_2_n_0\,
      I1 => \dti_uart/receiver/current_state\(1),
      I2 => \dti_uart/receiver/current_state\(0),
      I3 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      I4 => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\,
      O => \scratch[6]_i_2_n_0\
    );
\scratch[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \bitpos_stop[1]_i_2_n_0\,
      I1 => \dti_uart/receiver/bitpos_data_reg_n_0_[1]\,
      I2 => \dti_uart/receiver/bitpos_data_reg_n_0_[0]\,
      I3 => \dti_uart/receiver/current_state\(1),
      I4 => \dti_uart/receiver/current_state\(0),
      O => \scratch[7]_i_2_n_0\
    );
stt_rx_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0008"
    )
        port map (
      I0 => stt_rx_done_i_2_n_0,
      I1 => \dti_uart/receiver/current_state\(1),
      I2 => \dti_uart/receiver/current_state\(0),
      I3 => stt_rx_done_i_3_n_0,
      I4 => \^rts_n\,
      O => stt_rx_done_i_1_n_0
    );
stt_rx_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41100004"
    )
        port map (
      I0 => \current_state[0]_i_3_n_0\,
      I1 => \dti_uart/receiver/bitpos_stop_reg_n_0_[0]\,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \dti_uart/receiver/bitpos_stop_reg_n_0_[1]\,
      O => stt_rx_done_i_2_n_0
    );
stt_rx_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => stt_tx_done_i_6_n_0,
      I1 => paddr(2),
      I2 => paddr(3),
      I3 => \^rts_n\,
      I4 => stt_tx_done_i_5_n_0,
      I5 => stt_tx_done_i_3_n_0,
      O => stt_rx_done_i_3_n_0
    );
stt_tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFEAAFFAAFFAA"
    )
        port map (
      I0 => \dti_uart/transmitter/stt_tx_done0\,
      I1 => stt_tx_done_i_3_n_0,
      I2 => stt_tx_done_i_4_n_0,
      I3 => \dti_uart/transmitter/stt_tx_done\,
      I4 => stt_tx_done_i_5_n_0,
      I5 => stt_tx_done_i_6_n_0,
      O => stt_tx_done_i_1_n_0
    );
stt_tx_done_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \current_state[0]_i_5_n_0\,
      I1 => \dti_uart/transmitter/current_state\(0),
      I2 => stt_tx_done_i_7_n_0,
      O => \dti_uart/transmitter/stt_tx_done0\
    );
stt_tx_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => penable,
      I1 => pwrite,
      I2 => \dti_uart/register_block/rb_regs/wack\,
      I3 => psel,
      O => stt_tx_done_i_3_n_0
    );
stt_tx_done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      O => stt_tx_done_i_4_n_0
    );
stt_tx_done_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => paddr(0),
      I1 => paddr(1),
      O => stt_tx_done_i_5_n_0
    );
stt_tx_done_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => paddr(4),
      I1 => \^dti_uart/transmitter/stt_tx_done_reg_0\,
      I2 => paddr(6),
      I3 => paddr(9),
      I4 => paddr(8),
      O => stt_tx_done_i_6_n_0
    );
stt_tx_done_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDF7FFD"
    )
        port map (
      I0 => \dti_uart/transmitter/current_state\(1),
      I1 => \dti_uart/transmitter/bitpos_stop\(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \dti_uart/transmitter/bitpos_stop\(0),
      O => stt_tx_done_i_7_n_0
    );
tx_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7733443374337433"
    )
        port map (
      I0 => tx_INST_0_i_1_n_0,
      I1 => \dti_uart/transmitter/current_state\(0),
      I2 => tx_INST_0_i_2_n_0,
      I3 => \dti_uart/transmitter/current_state\(1),
      I4 => tx_INST_0_i_3_n_0,
      I5 => \dti_uart/transmitter/bitpos_data_reg_n_0_[2]\,
      O => tx
    );
tx_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => p_0_in(1),
      I1 => tx_INST_0_i_4_n_0,
      I2 => \dti_uart/register_block/rb_regs/mux_tx\(7),
      I3 => \dti_uart/register_block/rb_regs/mux_tx\(6),
      I4 => \dti_uart/register_block/rb_regs/mux_tx\(5),
      I5 => \dti_uart/register_block/rb_regs/mux_tx\(4),
      O => tx_INST_0_i_1_n_0
    );
tx_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/mux_tx\(3),
      I1 => \dti_uart/register_block/rb_regs/mux_tx\(2),
      I2 => \dti_uart/transmitter/bitpos_data_reg_n_0_[1]\,
      I3 => \dti_uart/register_block/rb_regs/mux_tx\(1),
      I4 => \dti_uart/transmitter/bitpos_data_reg_n_0_[0]\,
      I5 => \dti_uart/register_block/rb_regs/mux_tx\(0),
      O => tx_INST_0_i_2_n_0
    );
tx_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/mux_tx\(7),
      I1 => \dti_uart/register_block/rb_regs/mux_tx\(6),
      I2 => \dti_uart/transmitter/bitpos_data_reg_n_0_[1]\,
      I3 => \dti_uart/register_block/rb_regs/mux_tx\(5),
      I4 => \dti_uart/transmitter/bitpos_data_reg_n_0_[0]\,
      I5 => \dti_uart/register_block/rb_regs/mux_tx\(4),
      O => tx_INST_0_i_3_n_0
    );
tx_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \dti_uart/register_block/rb_regs/mux_tx\(1),
      I1 => \dti_uart/register_block/rb_regs/mux_tx\(0),
      I2 => \dti_uart/register_block/rb_regs/mux_tx\(3),
      I3 => \dti_uart/register_block/rb_regs/mux_tx\(2),
      O => tx_INST_0_i_4_n_0
    );
\tx_acc[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEFF"
    )
        port map (
      I0 => \tx_acc[0]_i_2_n_0\,
      I1 => \dti_uart/baudrate_gen/tx_acc\(3),
      I2 => \dti_uart/baudrate_gen/tx_acc\(2),
      I3 => \dti_uart/baudrate_gen/tx_acc\(4),
      I4 => \dti_uart/baudrate_gen/tx_acc\(6),
      I5 => \dti_uart/baudrate_gen/tx_acc\(0),
      O => \dti_uart/baudrate_gen/tx_acc_0\(0)
    );
\tx_acc[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(5),
      I1 => \dti_uart/baudrate_gen/tx_acc\(1),
      I2 => \dti_uart/baudrate_gen/tx_acc\(8),
      I3 => \dti_uart/baudrate_gen/tx_acc\(7),
      O => \tx_acc[0]_i_2_n_0\
    );
\tx_acc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \tx_acc[8]_i_3_n_0\,
      I1 => \dti_uart/baudrate_gen/tx_acc\(0),
      I2 => \dti_uart/baudrate_gen/tx_acc\(1),
      O => \dti_uart/baudrate_gen/tx_acc_0\(1)
    );
\tx_acc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(2),
      I1 => \dti_uart/baudrate_gen/tx_acc\(0),
      I2 => \dti_uart/baudrate_gen/tx_acc\(1),
      O => \dti_uart/baudrate_gen/tx_acc_0\(2)
    );
\tx_acc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(3),
      I1 => \dti_uart/baudrate_gen/tx_acc\(1),
      I2 => \dti_uart/baudrate_gen/tx_acc\(0),
      I3 => \dti_uart/baudrate_gen/tx_acc\(2),
      O => \dti_uart/baudrate_gen/tx_acc_0\(3)
    );
\tx_acc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \tx_acc[8]_i_3_n_0\,
      I1 => \dti_uart/baudrate_gen/tx_acc\(2),
      I2 => \dti_uart/baudrate_gen/tx_acc\(0),
      I3 => \dti_uart/baudrate_gen/tx_acc\(1),
      I4 => \dti_uart/baudrate_gen/tx_acc\(3),
      I5 => \dti_uart/baudrate_gen/tx_acc\(4),
      O => \dti_uart/baudrate_gen/tx_acc_0\(4)
    );
\tx_acc[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \tx_acc[8]_i_3_n_0\,
      I1 => \tx_acc[7]_i_2_n_0\,
      I2 => \dti_uart/baudrate_gen/tx_acc\(4),
      I3 => \dti_uart/baudrate_gen/tx_acc\(5),
      O => \dti_uart/baudrate_gen/tx_acc_0\(5)
    );
\tx_acc[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(4),
      I1 => \tx_acc[7]_i_2_n_0\,
      I2 => \dti_uart/baudrate_gen/tx_acc\(5),
      I3 => \dti_uart/baudrate_gen/tx_acc\(6),
      O => \dti_uart/baudrate_gen/tx_acc_0\(6)
    );
\tx_acc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \tx_acc[8]_i_3_n_0\,
      I1 => \dti_uart/baudrate_gen/tx_acc\(6),
      I2 => \dti_uart/baudrate_gen/tx_acc\(5),
      I3 => \tx_acc[7]_i_2_n_0\,
      I4 => \dti_uart/baudrate_gen/tx_acc\(4),
      I5 => \dti_uart/baudrate_gen/tx_acc\(7),
      O => \dti_uart/baudrate_gen/tx_acc_0\(7)
    );
\tx_acc[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(2),
      I1 => \dti_uart/baudrate_gen/tx_acc\(0),
      I2 => \dti_uart/baudrate_gen/tx_acc\(1),
      I3 => \dti_uart/baudrate_gen/tx_acc\(3),
      O => \tx_acc[7]_i_2_n_0\
    );
\tx_acc[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \tx_acc[8]_i_2_n_0\,
      I1 => \dti_uart/baudrate_gen/tx_acc\(7),
      I2 => \dti_uart/baudrate_gen/tx_acc\(8),
      I3 => \tx_acc[8]_i_3_n_0\,
      O => \dti_uart/baudrate_gen/tx_acc_0\(8)
    );
\tx_acc[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(6),
      I1 => \dti_uart/baudrate_gen/tx_acc\(5),
      I2 => \tx_acc[7]_i_2_n_0\,
      I3 => \dti_uart/baudrate_gen/tx_acc\(4),
      O => \tx_acc[8]_i_2_n_0\
    );
\tx_acc[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \dti_uart/baudrate_gen/tx_acc\(0),
      I1 => \tx_acc[0]_i_2_n_0\,
      I2 => \dti_uart/baudrate_gen/tx_acc\(3),
      I3 => \dti_uart/baudrate_gen/tx_acc\(2),
      I4 => \dti_uart/baudrate_gen/tx_acc\(4),
      I5 => \dti_uart/baudrate_gen/tx_acc\(6),
      O => \tx_acc[8]_i_3_n_0\
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => paddr(2),
      I1 => \tx_data[7]_i_2_n_0\,
      O => \tx_data[7]_i_1_n_0\
    );
\tx_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => paddr(3),
      I1 => stt_tx_done_i_6_n_0,
      I2 => pwrite,
      I3 => penable,
      I4 => psel,
      I5 => stt_tx_done_i_5_n_0,
      O => \tx_data[7]_i_2_n_0\
    );
wack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pwrite,
      I1 => penable,
      I2 => psel,
      O => \dti_uart/register_block/rb_apb_bridge/wr_en\
    );
waddrerr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F800"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      I2 => waddrerr_i_2_n_0,
      I3 => reset_n,
      I4 => waddrerr_i_3_n_0,
      I5 => \dti_uart/register_block/rb_regs/boost_cfg_wen\,
      O => waddrerr_i_1_n_0
    );
waddrerr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => paddr(0),
      I1 => paddr(1),
      I2 => psel,
      I3 => penable,
      I4 => pwrite,
      I5 => stt_tx_done_i_6_n_0,
      O => waddrerr_i_2_n_0
    );
waddrerr_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => psel,
      I1 => penable,
      I2 => pwrite,
      O => waddrerr_i_3_n_0
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
    boost_en : out STD_LOGIC;
    tx : out STD_LOGIC;
    rts_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_dti_uart_0_1,dti_uart,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dti_uart,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal inst_n_11 : STD_LOGIC;
  signal \prdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \prdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \prdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal pslverr_INST_0_i_1_n_0 : STD_LOGIC;
  signal pslverr_INST_0_i_2_n_0 : STD_LOGIC;
  signal pslverr_INST_0_i_3_n_0 : STD_LOGIC;
  signal pslverr_INST_0_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \prdata[4]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \prdata[4]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
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
      boost_en => boost_en,
      clk => clk,
      cts_n => cts_n,
      \dti_uart/transmitter/stt_tx_done_reg_0\ => inst_n_11,
      paddr(11 downto 0) => paddr(11 downto 0),
      \paddr[5]_0\ => \prdata[4]_INST_0_i_2_n_0\,
      \paddr[5]_1\ => \prdata[4]_INST_0_i_1_n_0\,
      \paddr[5]_2\ => pslverr_INST_0_i_2_n_0,
      paddr_5_sp_1 => pslverr_INST_0_i_1_n_0,
      penable => penable,
      prdata(7 downto 0) => prdata(7 downto 0),
      pready => pready,
      psel => psel,
      pslverr => pslverr,
      pwdata(7 downto 0) => pwdata(7 downto 0),
      pwrite => pwrite,
      pwrite_0 => \prdata[6]_INST_0_i_2_n_0\,
      reset_n => reset_n,
      rts_n => rts_n,
      rx => rx,
      tx => tx
    );
\prdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(10),
      O => prdata(10)
    );
\prdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(11),
      O => prdata(11)
    );
\prdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(12),
      O => prdata(12)
    );
\prdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(13),
      O => prdata(13)
    );
\prdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(14),
      O => prdata(14)
    );
\prdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(15),
      O => prdata(15)
    );
\prdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(16),
      O => prdata(16)
    );
\prdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(17),
      O => prdata(17)
    );
\prdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(18),
      O => prdata(18)
    );
\prdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(19),
      O => prdata(19)
    );
\prdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(20),
      O => prdata(20)
    );
\prdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(21),
      O => prdata(21)
    );
\prdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(22),
      O => prdata(22)
    );
\prdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(23),
      O => prdata(23)
    );
\prdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(24),
      O => prdata(24)
    );
\prdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(25),
      O => prdata(25)
    );
\prdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(26),
      O => prdata(26)
    );
\prdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(27),
      O => prdata(27)
    );
\prdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(28),
      O => prdata(28)
    );
\prdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(29),
      O => prdata(29)
    );
\prdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(30),
      O => prdata(30)
    );
\prdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(31),
      O => prdata(31)
    );
\prdata[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => paddr(3),
      I2 => paddr(2),
      O => \prdata[4]_INST_0_i_1_n_0\
    );
\prdata[4]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => paddr(2),
      I1 => pslverr_INST_0_i_1_n_0,
      I2 => paddr(3),
      O => \prdata[4]_INST_0_i_2_n_0\
    );
\prdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => paddr(2),
      I1 => paddr(3),
      I2 => paddr(4),
      I3 => inst_n_11,
      I4 => pslverr_INST_0_i_5_n_0,
      I5 => pslverr_INST_0_i_3_n_0,
      O => \prdata[6]_INST_0_i_2_n_0\
    );
\prdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(8),
      O => prdata(8)
    );
\prdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => pslverr_INST_0_i_1_n_0,
      I1 => pslverr_INST_0_i_2_n_0,
      I2 => pwdata(9),
      O => prdata(9)
    );
pslverr_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pslverr_INST_0_i_3_n_0,
      I1 => paddr(8),
      I2 => paddr(9),
      I3 => paddr(6),
      I4 => inst_n_11,
      I5 => paddr(4),
      O => pslverr_INST_0_i_1_n_0
    );
pslverr_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => pslverr_INST_0_i_3_n_0,
      I1 => paddr(3),
      I2 => paddr(4),
      I3 => pslverr_INST_0_i_5_n_0,
      I4 => inst_n_11,
      O => pslverr_INST_0_i_2_n_0
    );
pslverr_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => paddr(1),
      I1 => paddr(0),
      I2 => penable,
      I3 => psel,
      I4 => pwrite,
      O => pslverr_INST_0_i_3_n_0
    );
pslverr_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => paddr(6),
      I1 => paddr(9),
      I2 => paddr(8),
      O => pslverr_INST_0_i_5_n_0
    );
end STRUCTURE;
