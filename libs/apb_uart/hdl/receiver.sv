/*-----------------------------------------------------------------------------
*     Copyright (C) 2024 by Dolphin Technology
*     All right reserved.
*
*     Copyright Notification
*     No part may be reproduced except as authorized by written permission.
*
*     Created Date         : May 27 2024
*     File Name            : receiver
*     Project              : dti_apb_uart
*     Author               : hautx0
*     @Last Modified by    : hautx0
*     @Last Modified Time  : May 27 2024
*-----------------------------------------------------------------------------
*/
`include "dti_global_defines.svh"
module receiver #(
  parameter DATA_WIDTH      = `CFG_DATA_WIDTH,
  parameter DATA_BIT_WIDTH  = 8,
  parameter STOP_BIT_WIDTH  = 1,
  parameter PARITY_EN       = 0
)
(
  input                                 clk,
  input                                 reset_n,
  input   wire                          rx,
  input   wire                          clken,
  input   wire                          rx_data_fifo_full,
  output  wire                          rts_n,
  output  wire                          rx_data_fifo_wr_req,
  output  wire    [DATA_WIDTH-1:0]      rx_data_fifo_data_in
);

// State encoding
parameter 
          RX_STATE_START = 2'b00,
          RX_STATE_DATA  = 2'b01,
          RX_STATE_STOP  = 2'b10;

logic  [1:0]   current_state, next_state;
logic  [3:0]   sample;
logic  [3:0]   bitpos_data;
logic  [1:0]   bitpos_stop;
logic  [7:0]   scratch;
logic          stt_rx_done;

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always_comb 
begin : next_state_block_proc
  case(current_state)
    RX_STATE_START: begin
      if (sample == 'd15) begin
        next_state = RX_STATE_DATA;
      end
      else begin
        next_state = RX_STATE_START;
      end
    end 
    RX_STATE_DATA: begin
      if ((sample == 'd15) && (bitpos_data == DATA_BIT_WIDTH)) begin
        next_state = RX_STATE_STOP;
      end
      else begin
        next_state = RX_STATE_DATA;
      end
    end 
    RX_STATE_STOP: begin
      if ((sample == 'd15) && (bitpos_stop == (STOP_BIT_WIDTH+PARITY_EN))) begin
        next_state = RX_STATE_START;
      end
      else begin
        next_state = RX_STATE_STOP;
      end
    end 
    default: 
      next_state = RX_STATE_START;
  endcase
end

//-----------------------------------------------------------------
// Clocked Block for machine csm
//-----------------------------------------------------------------
always_ff @(posedge clk or negedge reset_n) 
begin : clocked_block_proc
  if(~reset_n) begin
    current_state <= RX_STATE_START;
    sample <= 0;
    bitpos_data <= 0;
    bitpos_stop <= 0;
    scratch <= 0;
  end 
  else begin
    current_state <= next_state;
    case(current_state) 
      RX_STATE_START: begin
        bitpos_data <= 0;
        bitpos_stop <= 0;
        if (clken) begin
          if (!rx || (sample != 0)) begin
            sample <= sample + 1;
          end
          else if (sample == 'd15) begin
            sample <= 0;
          end
        end
        else begin
          sample <= sample;
        end
      end
      RX_STATE_DATA: begin
        if (clken) begin
          sample <= sample + 1;
          if (sample == 'd8) begin
            bitpos_data <= bitpos_data + 1;
            scratch[bitpos_data] <= rx;
          end
        end
      end
      RX_STATE_STOP: begin
        if (clken) begin
          sample <= sample + 1;
          if (sample == 'd8) begin
            bitpos_stop <= bitpos_stop + 1;
          end
        end
        else if (sample == 'd15) begin
          sample <= 0;
        end
      end
    endcase
  end
end

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    stt_rx_done <= 0;
  end 
  else begin
    if (stt_rx_done) begin
      stt_rx_done <= 1'b0;
    end
    else if ((current_state == RX_STATE_STOP) & (bitpos_stop == (STOP_BIT_WIDTH+PARITY_EN)) & (sample == 'd15)) begin
      stt_rx_done <= 1'b1;
    end
    else begin
      stt_rx_done <= stt_rx_done;
    end
  end
end

assign rx_data_fifo_wr_req = stt_rx_done;
assign rx_data_fifo_data_in = scratch;
assign rts_n = stt_rx_done || rx_data_fifo_full;

endmodule