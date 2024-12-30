`include "dti_global_defines.svh"
module transmitter #(
  parameter DATA_WIDTH  = `CFG_DATA_WIDTH
)
(
  input                                clk,
  input                                reset_n,
  input   wire                         clken,
  input   wire                         cts_n,
  input   wire    [DATA_WIDTH-1:0]     tx_data,
  input   wire    [1:0]                cfg_data_bit_num,
  input   wire                         cfg_stop_bit_num,
  input   wire                         cfg_parity_en,
  input   wire                         cfg_parity_type,
  input   wire                         ctrl_start_tx,
  input   wire                         host_read_stt_tx_done,
  output  wire                         ctrl_reg_update,
  output  logic                        stt_tx_done,
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
logic  [2:0]   data_bit_width;
logic  [1:0]   stop_bit_width;

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always_comb 
begin : next_state_block_proc
  case(current_state)
    STATE_IDLE: begin
      if (ctrl_start_tx & !cts_n & clken) begin
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
        if (bitpos_data == data_bit_width) begin
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
        if (bitpos_stop == stop_bit_width) begin
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
     tx = tx_data[bitpos_data];
   end
   STATE_STOP: begin
     if (cfg_parity_en) begin
       tx = |tx_data[7:0];
     end
     else begin
       tx = 1'b1;
     end
   end
 endcase
end

// Config UART Frame
always_comb 
begin
  case(cfg_data_bit_num)
    2'b00:   data_bit_width = 3'd4;
    2'b01:   data_bit_width = 3'd5;
    2'b10:   data_bit_width = 3'd6;
    2'b11:   data_bit_width = 3'd7;
    default: data_bit_width = 3'd7;
  endcase
end

always_comb
begin
  case({cfg_parity_en, cfg_stop_bit_num})
    2'b00:   stop_bit_width = 2'd0;
    2'b01:   stop_bit_width = 2'd1;
    2'b10:   stop_bit_width = 2'd1;
    2'b11:   stop_bit_width = 2'd2;
    default: stop_bit_width = 2'd0;
  endcase
end

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    stt_tx_done <= 1'b1;
  end 
  else begin
    if (clken && (current_state == STATE_STOP) && (bitpos_stop == stop_bit_width)) begin
      stt_tx_done <= 1'b1;
    end
    else if (host_read_stt_tx_done) begin
      stt_tx_done <= 1'b0;
    end
    else begin
      stt_tx_done <= stt_tx_done;
    end
  end
end

assign ctrl_reg_update = (current_state == STATE_START);

endmodule