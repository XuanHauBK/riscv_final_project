
`include "dti_global_defines.svh"
module dti_boost_inst #(
  parameter BAUDRATE        = `CFG_BAUDRATE,
  parameter FREQ_FPGA       = `CFG_FREQ_FPGA,
  parameter DATA_WIDTH      = `CFG_DATA_WIDTH,
  parameter DATA_BIT_WIDTH  = 8,
  parameter STOP_BIT_WIDTH  = 1,
  parameter PARITY_EN       = 0,
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH
)
(
  input                                     clk,
  input                                     reset_n,
  input   wire                              rx,
  output  wire                              rts_n,
  output  wire    [INST_DATA_WIDTH-1:0]     rx_boost_inst_data_in,
  output  logic                             rx_boost_inst_wr_req
);

// parameter baudrate gen
parameter RX_ACC_MAX   = FREQ_FPGA / (BAUDRATE * 16);
parameter RX_ACC_WIDTH = $clog2(RX_ACC_MAX)         ;

logic  [RX_ACC_WIDTH - 1:0] rx_acc;
logic                       clken;

assign clken = ~|rx_acc;
assign rts_n = 1'b0;

always_ff @(posedge clk or negedge reset_n) begin 
  if(~reset_n) begin
    rx_acc <= 0;
  end 
  else begin
    if (rx_acc == RX_ACC_MAX) begin
      rx_acc <= 0;
    end
    else begin
      rx_acc <= rx_acc + 1;
    end
  end
end

// State encoding
parameter 
          RX_STATE_START = 2'b00,
          RX_STATE_DATA  = 2'b01,
          RX_STATE_STOP  = 2'b10;

logic  [1:0]                   current_state, next_state;
logic  [3:0]                   sample;
logic  [3:0]                   bitpos_data;
logic  [1:0]                   bitpos_stop;
logic  [7:0]                   scratch;
logic                          stt_rx_done;
logic  [INST_DATA_WIDTH-1:0]   instruction_data;
logic  [1:0]                   count_req;

//-----------------------------------------------------------------
// Next State Block for machine fsm
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
      if ((sample == 'd15) & (bitpos_data == DATA_BIT_WIDTH)) begin
        next_state = RX_STATE_STOP;
      end
      else begin
        next_state = RX_STATE_DATA;
      end
    end
    RX_STATE_STOP: begin
      if ((sample == 'd15) &  (bitpos_stop == (STOP_BIT_WIDTH + PARITY_EN))) begin
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
// Clocked Block for machine fsm
//-----------------------------------------------------------------
always_ff @(posedge clk or negedge reset_n) 
begin : clocked_block_proc
  if(~reset_n) begin
    current_state <= RX_STATE_START;
    sample <= 0;
    bitpos_data <= 0;
    bitpos_stop <= 0;
    scratch <= 0;
  end else begin
    current_state <= next_state;
    case(current_state)
      RX_STATE_START: begin
        bitpos_data <= 0;
        bitpos_stop <= 0;
        if (clken) begin
          if (!rx | (|sample)) begin
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

assign stt_rx_done = (next_state == RX_STATE_START) & (current_state == RX_STATE_STOP);
always_ff @(posedge clk or negedge reset_n) begin
  if(~reset_n) begin
    instruction_data <= 0;
    count_req <= 0;
  end else begin
    if (stt_rx_done) begin
      instruction_data <= {scratch, instruction_data[INST_DATA_WIDTH-1:DATA_WIDTH]};
      count_req <= count_req + 1;
    end
  end
end

assign rx_boost_inst_data_in = instruction_data;

always_ff @(posedge clk or negedge reset_n) begin 
  if(~reset_n) begin
    rx_boost_inst_wr_req <= 0;
  end else begin
    if (stt_rx_done & (count_req == 'd3)) begin
      rx_boost_inst_wr_req <= 1'b1;
    end
    else begin
      rx_boost_inst_wr_req <= 1'b0;
    end
  end
end


endmodule