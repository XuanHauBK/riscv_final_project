`include "dti_global_defines.svh"
module baudrate_gen #(
  parameter  BAUDRATE   = `CFG_BAUDRATE,
  parameter  FREQ_FPGA  = `CFG_FREQ_FPGA
)
(
  input           clk,       // System clock signal
  input           reset_n,   // System asynchronous reset, active LOW
  output  wire    rxclk_en,  // rx enable
  output  wire    txclk_en   // tx enable
);

parameter RX_ACC_MAX   = FREQ_FPGA / (BAUDRATE * 16);
parameter TX_ACC_MAX   = FREQ_FPGA / BAUDRATE       ;
parameter RX_ACC_WIDTH = $clog2(RX_ACC_MAX)         ;
parameter TX_ACC_WIDTH = $clog2(TX_ACC_MAX)         ;

logic  [RX_ACC_WIDTH - 1:0] rx_acc;
logic  [TX_ACC_WIDTH - 1:0] tx_acc;

assign rxclk_en = (rx_acc == 0);
assign txclk_en = (tx_acc == 0);

always_ff @(posedge clk or negedge reset_n) 
begin : block_clocked_rx_acc
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

always_ff @(posedge clk or negedge reset_n) 
begin : block_clocked_tx_acc
  if(~reset_n) begin
    tx_acc <= 0;
  end 
  else begin
    if (tx_acc == TX_ACC_MAX) begin
      tx_acc <= 0;
    end
    else begin
      tx_acc <= tx_acc + 1;
    end
  end
end

endmodule