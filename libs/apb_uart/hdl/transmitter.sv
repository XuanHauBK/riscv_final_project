/*-----------------------------------------------------------------------------
*     Copyright (C) 2024 by Dolphin Technology
*     All right reserved.
*
*     Copyright Notification
*     No part may be reproduced except as authorized by written permission.
*
*     Created Date         : May 27 2024
*     File Name            : transmitter
*     Project              : dti_apb_uart
*     Author               : hautx0
*     @Last Modified by    : hautx0
*     @Last Modified Time  : May 27 2024
*-----------------------------------------------------------------------------
*/
`include "dti_global_defines.svh"
module transmitter #(
  parameter DATA_WIDTH      = `CFG_DATA_WIDTH,
  parameter DATA_BIT_WIDTH  = 8,
  parameter STOP_BIT_WIDTH  = 1,
  parameter PARITY_EN       = 0
)
(
  input                                clk,
  input                                reset_n,
  input   wire                         clken,
  input   wire                         cts_n,
  input   wire                         tx_data_fifo_empty,
  input   wire    [DATA_WIDTH-1:0]     tx_data_fifo_data_out,
  output  logic                        tx_data_fifo_rd_req,
  output  logic                        tx
);

// State encoding
parameter 
          STATE_IDLE  = 2'b00,
          STATE_START = 2'b01,
          STATE_DATA  = 2'b10,
          STATE_STOP  = 2'b11;

logic  [1:0]   current_state, next_state;
logic  [2:0]   bitpos_data;
logic  [1:0]   bitpos_stop;
logic          stt_tx_done;

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always_comb 
begin : next_state_block_proc
  case(current_state)
    STATE_IDLE: begin
      if (!tx_data_fifo_empty & !cts_n & clken) begin
        next_state = STATE_START;
      end
      else begin
        next_state = STATE_IDLE;
      end
    end 
    STATE_START: begin
      if (clken) begin
        next_state = STATE_DATA;
      end
      else begin
        next_state = STATE_START;
      end
    end 
    STATE_DATA: begin
      if (clken) begin
        if (bitpos_data == (DATA_BIT_WIDTH-1)) begin
          next_state = STATE_STOP;
        end
        else begin
          next_state = STATE_DATA;
        end
      end
      else begin
        next_state = STATE_DATA;
      end
    end 
    STATE_STOP: begin
      if (clken) begin
        if (bitpos_stop == (STOP_BIT_WIDTH+PARITY_EN-1)) begin
          next_state = STATE_IDLE;
        end
        else begin
          next_state = STATE_STOP;
        end
      end
      else begin
        next_state = STATE_STOP;
      end
    end 
    default: 
      next_state = STATE_IDLE;
  endcase
end

//-----------------------------------------------------------------
// Clocked Block for machine csm
//-----------------------------------------------------------------
always_ff @(posedge clk or negedge reset_n) 
begin : clocked_block_proc
  if(~reset_n) begin
    current_state <= STATE_IDLE;
  end 
  else begin
    current_state <= next_state;
    case(current_state) 
      STATE_IDLE: begin
        bitpos_data <= 0;
        bitpos_stop <= 0;
      end
      STATE_START: begin
      end
      STATE_DATA: begin
        if (clken) begin
          bitpos_data <= bitpos_data + 1;
        end
      end
      STATE_STOP: begin
        if (clken) begin
          bitpos_stop <= bitpos_stop + 1;
        end
      end
    endcase
  end
end

//-----------------------------------------------------------------
// Output Block for machine csm
//-----------------------------------------------------------------
always_comb
begin
  case(current_state) 
   STATE_IDLE: begin
     tx = 1'b1;
   end
   STATE_START: begin
     tx = 1'b0;
   end
   STATE_DATA: begin
     tx = tx_data_fifo_data_out[bitpos_data];
   end
   STATE_STOP: begin
     if (PARITY_EN) begin
       tx = ^tx_data_fifo_data_out[7:0];
     end
     else begin
       tx = 1'b1;
     end
   end
 endcase
end

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    stt_tx_done <= 1'b0;
  end 
  else begin
    if (stt_tx_done) begin
      stt_tx_done <= 1'b0;
    end
    else if (clken && (current_state == STATE_STOP) && (bitpos_stop == (STOP_BIT_WIDTH+PARITY_EN-1))) begin
      stt_tx_done <= 1'b1;
    end
    else begin
      stt_tx_done <= stt_tx_done;
    end
  end
end

assign tx_data_fifo_rd_req = stt_tx_done & (!tx_data_fifo_empty);

endmodule