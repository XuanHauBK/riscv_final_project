`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 03:12:34 PM
// Design Name: 
// Module Name: dti_uart_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dti_uart_top;

  logic                             clk = 0;
  logic                             reset_n;

   // UART signals
  logic                             rx;
  logic                             cts_n;
  logic                             tx;
  logic                             rts_n;

  // Model signals
  logic       uart_txd;   
  logic       uart_tx_busy;
  logic       uart_tx_en   = 0;
  logic [7:0] uart_tx_data = 0;

  logic       uart_rxd;
  logic       uart_rx_en   = 0;
  logic       uart_rx_break;
  logic       uart_rx_valid;
  logic [7:0] uart_rx_data;
  logic       clk_uart;

  logic [11:0][7:0] data_write = '{'h48, 'h65, 'h6C, 'h6C, 'h6F, 'h20, 'h57, 'h6F, 'h72, 'h6C, 'h64, 'h5C};

assign clk_uart = design_uart_wrapper.design_uart_i.clk_wiz_1_clk_uart;

  // Clock generator
  always #5 clk = ~clk;

  // Signals Assignment  
  assign presetn      = reset_n;
  assign uart_rxd     = tx;
  assign rx           = uart_txd;


  design_uart_wrapper design_uart_wrapper (
    .clk_in1(clk),
    .cts_n_0(cts_n),
    .resetn (reset_n),
    .rts_n_0(rts_n),
    .rx_0   (rx),
    .tx_0   (tx) );

   // Model
  uart_tx tx_model (
    .clk         (clk_uart),
    .resetn      (reset_n),
    .uart_txd    (uart_txd),
    .uart_tx_busy(uart_tx_busy),
    .uart_tx_en  (uart_tx_en),
    .uart_tx_data(uart_tx_data)
  );

  uart_rx rx_model (
    .clk          (clk_uart),
    .resetn       (reset_n),
    .uart_rxd     (tx),
    .uart_rx_en   (1'b1),
    .uart_rx_break(uart_rx_break),
    .uart_rx_valid(uart_rx_valid),
    .uart_rx_data (uart_rx_data)
  );

  // Tasks implementing tests
  initial begin
    reset_n = 1'b0;
    cts_n   = 1'b0;

    repeat (3) @(posedge clk);
    reset_n = 1'b1;

    repeat(1000000) @(posedge clk);
    $finish;
  end

  initial begin
    repeat(100) @(posedge clk);
    while(uart_rx_data != 'h64) begin
      @(posedge clk);
    end
    repeat(10000) @(posedge clk);
    for (int i = 0; i < 12; i++) begin
      @(posedge clk);
      uart_tx_en = 1'b1;
      uart_tx_data = data_write[11-i];
      @(posedge clk);
      uart_tx_en = 1'b0;
      repeat(10000) @(posedge clk);
      while(rts_n) begin
         @(posedge clk);
         $display("test");
      end
    end
  end

//  initial begin
//     forever begin
//        if (uart_rx_valid) begin
//           $display("%0d", uart_rx_data);
//        end
//     end
//  end

endmodule
