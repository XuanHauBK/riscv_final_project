`include "dti_global_defines.svh"
module receiver #(
  parameter DATA_WIDTH  = `CFG_DATA_WIDTH 
)
(
  input                                 clk,
  input                                 reset_n,
  input   wire                          rx,
  input   wire                          clken,
  input   wire                          host_read_stt_rx_done,
  input   wire    [1:0]                 cfg_data_bit_num,
  input   wire                          cfg_stop_bit_num,
  input   wire                          cfg_parity_en,
  input   wire                          cfg_parity_type,
  output  wire                          rts_n,
  output  logic                         stt_rx_done,
  output  wire    [DATA_WIDTH-1:0]      rx_data
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
logic  [3:0]   data_bit_width;
logic  [1:0]   stop_bit_width;
logic  [7:0]   scratch;

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
      if ((sample == 'd15) && (bitpos_data == data_bit_width)) begin
        next_state = RX_STATE_STOP;
      end
      else begin
        next_state = RX_STATE_DATA;
      end
    end 
    RX_STATE_STOP: begin
      if ((sample == 'd15) && (bitpos_stop == stop_bit_width)) begin
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

// Config UART Frame
always_comb 
begin
  case(cfg_data_bit_num)
    2'b00:   data_bit_width = 4'd5;
    2'b01:   data_bit_width = 4'd6;
    2'b10:   data_bit_width = 4'd7;
    2'b11:   data_bit_width = 4'd8;
    default: data_bit_width = 4'd8;
  endcase
end

always_comb
begin
  case({cfg_parity_en, cfg_stop_bit_num})
    2'b00:   stop_bit_width = 2'd1;
    2'b01:   stop_bit_width = 2'd2;
    2'b10:   stop_bit_width = 2'd2;
    2'b11:   stop_bit_width = 2'd3;
    default: stop_bit_width = 2'd1;
  endcase
end

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    stt_rx_done <= 0;
  end 
  else begin
    if (host_read_stt_rx_done) begin
      stt_rx_done <= 1'b0;
    end
    else if ((current_state == RX_STATE_STOP) & (bitpos_stop == stop_bit_width) & (sample == 'd15)) begin
      stt_rx_done <= 1'b1;
    end
    else begin
      stt_rx_done <= stt_rx_done;
    end
  end
end

assign rts_n = stt_rx_done;
assign rx_data = scratch;

endmodule