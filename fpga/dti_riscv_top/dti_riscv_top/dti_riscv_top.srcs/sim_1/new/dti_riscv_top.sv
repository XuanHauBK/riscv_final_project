`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2024 10:03:12 AM
// Design Name: 
// Module Name: dti_riscv_top
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


module dti_riscv_top;

 logic clk=0;
 logic ctsn;
 logic [15:0]gpio_in;
 logic [15:0]gpio_out;
 logic resetn;
 logic rtsn;
 logic rx;
 logic tx;
 logic clk_uart;
 logic uart_rx_break;
 logic uart_rx_valid;
 logic [7:0]  uart_rx_data;
 logic tx_debug;
 logic uart_rx_break_debug;
 logic uart_rx_valid_debug;
 logic [7:0]  uart_rx_data_debug;

 assign clk_uart = design_1_wrapper.design_1_i.clk_wiz_0_clk_uart;
 assign tx_debug = design_1_wrapper.design_1_i.dti_uart_0_tx;

design_1_wrapper design_1_wrapper(
   .rtsn    (rtsn),
   .ctsn    (ctsn),
   .tx      (tx),
   .rx      (rx),
   .gpio_out(gpio_out),
   .clk_in1 (clk),
   .resetn  (resetn),
   .gpio_in (gpio_in)
);

uart_rx rx_model (
   .clk          (clk_uart),
   .resetn       (resetn),
   .uart_rxd     (tx),
   .uart_rx_en   (1'b1),
   .uart_rx_break(uart_rx_break),
   .uart_rx_valid(uart_rx_valid),
   .uart_rx_data (uart_rx_data)
);

uart_rx rx_debug (
  .clk          (clk_uart),
  .resetn       (resetn),
  .uart_rxd     (tx_debug),
  .uart_rx_en   (1'b1),
  .uart_rx_break(uart_rx_break_debug),
  .uart_rx_valid(uart_rx_valid_debug),
  .uart_rx_data (uart_rx_data_debug)
);

  always #5 clk = ~clk;
  initial begin
    resetn = 1'b0;
    ctsn   = 1'b0;

    repeat (3) @(posedge clk);
    resetn = 1'b1;

    repeat(1000000) @(posedge clk);
    $finish;
  end


endmodule
