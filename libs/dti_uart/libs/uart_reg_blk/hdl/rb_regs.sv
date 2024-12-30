//-----------------------------------------------------------------------------
//    Copyright (C) 2016 by Dolphin Technology
//    All right reserved.
//    
//    Copyright Notification
//    No part may be reproduced except as authorized by written permission.
//    
//    File: ../hdl/rb_regs.sv
//    Project: dti_uart
//    Author: hautx0
//    Created: Sep 23rd 2024
//    Description:
//       Register File
//    
//    History:
//    Date ------------ By ------------ Change Description
//------------------------------------------------------------------------------
module rb_regs ( 
  output logic [7:0]    tx_data,                             // Parallel data from the host which is converted to serial data sent to peripheral device
  output logic [1:0]    cfg_data_bit_num,                    // The number of data bits
  output logic          cfg_stop_bit_num,                    // The number of stop bits
  output logic          cfg_parity_en,                       // Parity enable
  output logic          cfg_parity_type,                     // Parity type select
  input                 ctrl_reg_update,                     // Ctrl register update
  output logic          ctrl_start_tx,                       // Set to start converting parallel data received from the host to serial data sent to peripheral device
  input        [7:0]    rx_data,                             // Parallel data archived after serial-to-parallel conversion on data received on peripheral device
  input                 stt_tx_done,                         // Set to indicate that previous parallel-to-serial conversion on data received from the host is completed
  input                 stt_rx_done,                         // Set to indicate that previous serial-to-parallel conversion on data received on peripheral device is completed
  output logic          boost_cfg_boost_en,                  // Set to indicate boost program to imem
  output wire           tx_done,                             // Interrupt
// Global Signals
  input                 clk,                                 // System Clock
  input                 reset,                               // Synchronous Reset, Active LOW
// Read Write Control Signals
  input        [11:0]   waddr,                               // Write Address
  input        [11:0]   raddr,                               // Read Address
  input        [31:0]   wdata,                               // Write Data
  output logic [31:0]   rdata,                               // Read Data
  input                 wr_en,                               // Write Enable
  input                 rd_en,                               // Read Enable
  output logic          wack,                                // Write ACK
  output logic          rack,                                // Read ACK
  output logic          waddrerr,                            // Write Address Decode Status
  output logic          raddrerr                            // Read Address Decode Status
);
//-----------------------------------------------------------------------------
// Internal Signals
//-----------------------------------------------------------------------------
// Enable Signals
  wire                  tx_ren;
  wire                  tx_wen;
  wire                  cfg_ren;
  wire                  cfg_wen;
  wire                  ctrl_ren;
  wire                  ctrl_wen;
  wire                  rx_ren;
  wire                  stt_ren;
  wire                  boost_cfg_ren;
  wire                  boost_cfg_wen;
// Internal Registers
  logic        [7:0]    rx_data_reg;
  logic                 stt_tx_done_reg;
  logic                 stt_rx_done_reg;
// Read Data Mux
  wire         [31:0]   mux_tx;
  wire         [31:0]   mux_cfg;
  wire         [31:0]   mux_ctrl;
  wire         [31:0]   mux_rx;
  wire         [31:0]   mux_stt;
  wire         [31:0]   mux_boost_cfg;

//-----------------------------------------------------------------------------
// Read - Write Enable
//-----------------------------------------------------------------------------
  assign tx_ren              = rd_en & (raddr == 32'h000);
  assign tx_wen              = wr_en & (waddr == 32'h000);
  assign cfg_ren             = rd_en & (raddr == 32'h004);
  assign cfg_wen             = wr_en & (waddr == 32'h004);
  assign ctrl_ren            = rd_en & (raddr == 32'h008);
  assign ctrl_wen            = wr_en & (waddr == 32'h008);
  assign rx_ren              = rd_en & (raddr == 32'h00C);
  assign stt_ren             = rd_en & (raddr == 32'h010);
  assign boost_cfg_ren       = rd_en & (raddr == 32'h014);
  assign boost_cfg_wen       = wr_en & (waddr == 32'h014);
  wire waddrerr_nxt;
  assign waddrerr_nxt = ~|{
                            tx_wen,
                            cfg_wen,
                            ctrl_wen,
                            boost_cfg_wen
                          };

  always_ff @(posedge clk) begin : WRITE_ADDR_DECODE_STATUS_PROC
    if (!reset) begin
      wack     <= 1'b0;
      waddrerr <= 1'b0;
    end
    else begin
       if (wr_en) begin
         wack     <= 1'b1;
         waddrerr <= waddrerr_nxt;
       end
       else begin
         wack     <= 1'b0;
         waddrerr <= 1'b0;
       end
    end
  end

  always_comb begin : READ_ADDR_DECODE_STATUS_PROC
    if (!rd_en) begin
      rack     = 1'b0;
      raddrerr = 1'b0;
    end
    else begin
      rack     = 1'b1;
      raddrerr = ~|{
                    tx_ren,
                    cfg_ren,
                    ctrl_ren,
                    rx_ren,
                    stt_ren,
                    boost_cfg_ren
                  };
    end
  end

//-----------------------------------------------------------------------------
// Register       : tx
// Description    : TX data register
// Address        : 0x00
// SW Access      : RW
// Fields:
//   [7:0]        : data (SW Access: RW, HW Access: RO)
//   [31:8]       : rfu (Reserved for Future Use)
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//   Field        : data
//   Description  : Parallel data from the host which is converted to serial data sent to peripheral device
//   Offset       : 0
//   Width        : 8
//   SW Access    : RW
//   HW Access    : RO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : TX_DATA_PROC
    if (!reset) begin
      tx_data <= 8'b0;
    end
    else if (tx_wen) begin
      tx_data <= wdata[7:0];
    end
  end
//-----------------------------------------------------------------------------
//   Field        : rfu
//   Description  : Reserved for Future Use
//   Offset       : 8
//   Width        : 24
//   SW Access    : NA
//   HW Access    : NA
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Register       : cfg
// Description    : RX data register
// Address        : 0x04
// SW Access      : RW
// Fields:
//   [1:0]        : data_bit_num (SW Access: RW, HW Access: RO)
//   [2]          : stop_bit_num (SW Access: RW, HW Access: RO)
//   [3]          : parity_en (SW Access: RW, HW Access: RO)
//   [4]          : parity_type (SW Access: RW, HW Access: RO)
//   [31:5]       : rfu (Reserved for Future Use)
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//   Field        : data_bit_num
//   Description  : The number of data bits
//   Offset       : 0
//   Width        : 2
//   SW Access    : RW
//   HW Access    : RO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : CFG_DATA_BIT_NUM_PROC
    if (!reset) begin
      cfg_data_bit_num <= 2'b0;
    end
    else if (cfg_wen) begin
      cfg_data_bit_num <= wdata[1:0];
    end
  end
//-----------------------------------------------------------------------------
//   Field        : stop_bit_num
//   Description  : The number of stop bits
//   Offset       : 2
//   Width        : 1
//   SW Access    : RW
//   HW Access    : RO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : CFG_STOP_BIT_NUM_PROC
    if (!reset) begin
      cfg_stop_bit_num <= 1'b0;
    end
    else if (cfg_wen) begin
      cfg_stop_bit_num <= wdata[2];
    end
  end
//-----------------------------------------------------------------------------
//   Field        : parity_en
//   Description  : Parity enable
//   Offset       : 3
//   Width        : 1
//   SW Access    : RW
//   HW Access    : RO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : CFG_PARITY_EN_PROC
    if (!reset) begin
      cfg_parity_en <= 1'b0;
    end
    else if (cfg_wen) begin
      cfg_parity_en <= wdata[3];
    end
  end
//-----------------------------------------------------------------------------
//   Field        : parity_type
//   Description  : Parity type select
//   Offset       : 4
//   Width        : 1
//   SW Access    : RW
//   HW Access    : RO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : CFG_PARITY_TYPE_PROC
    if (!reset) begin
      cfg_parity_type <= 1'b0;
    end
    else if (cfg_wen) begin
      cfg_parity_type <= wdata[4];
    end
  end
//-----------------------------------------------------------------------------
//   Field        : rfu
//   Description  : Reserved for Future Use
//   Offset       : 5
//   Width        : 27
//   SW Access    : NA
//   HW Access    : NA
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Register       : ctrl
// Description    : Operation control registerr
// Address        : 0x08
// SW Access      : RW
// Fields:
//   [0]          : start_tx (SW Access: RW, HW Access: RW)
//   [31:1]       : rfu (Reserved for Future Use)
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//   Field        : start_tx
//   Description  : Set to start converting parallel data received from the host to serial data sent to peripheral device
//   Offset       : 0
//   Width        : 1
//   SW Access    : RW
//   HW Access    : RW
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : CTRL_START_TX_PROC
    if (!reset) begin
      ctrl_start_tx <= 1'b0;
    end
    else if (ctrl_wen) begin
      ctrl_start_tx <= wdata[0];
    end
    else if (ctrl_reg_update) begin
      ctrl_start_tx <= 0;
    end
  end
//-----------------------------------------------------------------------------
//   Field        : rfu
//   Description  : Reserved for Future Use
//   Offset       : 1
//   Width        : 31
//   SW Access    : NA
//   HW Access    : NA
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Register       : rx
// Description    : RX data register
// Address        : 0x0C
// SW Access      : RO
// Fields:
//   [7:0]        : data (SW Access: RO, HW Access: WO)
//   [31:8]       : rfu (Reserved for Future Use)
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//   Field        : data
//   Description  : Parallel data archived after serial-to-parallel conversion on data received on peripheral device
//   Offset       : 0
//   Width        : 8
//   SW Access    : RO
//   HW Access    : WO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : RX_DATA_PROC
    if (!reset) begin
      rx_data_reg <= 8'b0;
    end
    else begin
      rx_data_reg <= rx_data;
    end
  end
//-----------------------------------------------------------------------------
//   Field        : rfu
//   Description  : Reserved for Future Use
//   Offset       : 8
//   Width        : 24
//   SW Access    : NA
//   HW Access    : NA
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Register       : stt
// Description    : Operation status register
// Address        : 0x10
// SW Access      : RO
// Fields:
//   [0]          : tx_done (SW Access: RO, HW Access: WO)
//   [1]          : rx_done (SW Access: RO, HW Access: WO)
//   [31:2]       : rfu (Reserved for Future Use)
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//   Field        : tx_done
//   Description  : Set to indicate that previous parallel-to-serial conversion on data received from the host is completed
//   Offset       : 0
//   Width        : 1
//   SW Access    : RO
//   HW Access    : WO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : STT_TX_DONE_PROC
    if (!reset) begin
      stt_tx_done_reg <= 1'b1;
    end
    else begin
      stt_tx_done_reg <= stt_tx_done;
    end
  end
//-----------------------------------------------------------------------------
//   Field        : rx_done
//   Description  : Set to indicate that previous serial-to-parallel conversion on data received on peripheral device is completed
//   Offset       : 1
//   Width        : 1
//   SW Access    : RO
//   HW Access    : WO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : STT_RX_DONE_PROC
    if (!reset) begin
      stt_rx_done_reg <= 1'b0;
    end
    else begin
      stt_rx_done_reg <= stt_rx_done;
    end
  end
//-----------------------------------------------------------------------------
//   Field        : rfu
//   Description  : Reserved for Future Use
//   Offset       : 2
//   Width        : 30
//   SW Access    : NA
//   HW Access    : NA
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Register       : boost_cfg
// Description    : Operation status boost
// Address        : 0x14
// SW Access      : RW
// Fields:
//   [0]          : boost_en (SW Access: RW, HW Access: RO)
//   [31:1]       : rfu (Reserved for Future Use)
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//   Field        : boost_en
//   Description  : Set to indicate boost program to imem
//   Offset       : 0
//   Width        : 1
//   SW Access    : RW
//   HW Access    : RO
//-----------------------------------------------------------------------------
  always_ff @(posedge clk) begin : BOOST_CFG_BOOST_EN_PROC
    if (!reset) begin
      boost_cfg_boost_en <= 1'b0;
    end
    else if (boost_cfg_wen) begin
      boost_cfg_boost_en <= wdata[0];
    end
  end
//-----------------------------------------------------------------------------
//   Field        : rfu
//   Description  : Reserved for Future Use
//   Offset       : 1
//   Width        : 31
//   SW Access    : NA
//   HW Access    : NA
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
// Read Data Mux
//-----------------------------------------------------------------------------
// mux_tx
  assign mux_tx[7:0]               = tx_data;
  assign mux_tx[31:8]              = wdata[31:8];
// mux_cfg
  assign mux_cfg[1:0]              = cfg_data_bit_num;
  assign mux_cfg[2]                = cfg_stop_bit_num;
  assign mux_cfg[3]                = cfg_parity_en;
  assign mux_cfg[4]                = cfg_parity_type;
  assign mux_cfg[31:5]             = wdata[31:5];
// mux_ctrl
  assign mux_ctrl[0]               = ctrl_start_tx;
  assign mux_ctrl[31:1]            = wdata[31:1];
// mux_rx
  assign mux_rx[7:0]               = rx_data_reg;
  assign mux_rx[31:8]              = wdata[31:8];
// mux_stt
  assign mux_stt[0]                = stt_tx_done_reg;
  assign mux_stt[1]                = stt_rx_done_reg;
  assign mux_stt[31:2]             = wdata[31:2];
// mux_boost_cfg
  assign mux_boost_cfg[0]          = boost_cfg_boost_en;
  assign mux_boost_cfg[31:1]       = wdata[31:1];

  always_comb begin : READ_DATA_PROC
    rdata = 0;
    case (1'b1)
      tx_ren           : rdata = mux_tx;
      cfg_ren          : rdata = mux_cfg;
      ctrl_ren         : rdata = mux_ctrl;
      rx_ren           : rdata = mux_rx;
      stt_ren          : rdata = mux_stt;
      boost_cfg_ren    : rdata = mux_boost_cfg;
      default          : rdata = 0;
    endcase
  end

//-----------------------------------------------------------------------------
// Interrupt Signals
//-----------------------------------------------------------------------------
  assign tx_done             = stt_tx_done_reg;

endmodule