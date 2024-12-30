`timescale 1ns/1ns
`include "dti_global_defines.svh"
module imem_tb;
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH;
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH;
  parameter INST_CMD_COUNT  = 10;

  logic                             clk;
  logic                             reset_n;
  logic    [INST_ADDR_WIDTH - 1:0]  imem_address;
  logic                             imem_req;
  logic                             imem_ack;
  logic    [INST_DATA_WIDTH - 1:0]  imem_data_in;

  imem imem (
       .clk(clk),
       .reset_n(reset_n),
       .imem_address(imem_address),
       .imem_req(imem_req),
       .imem_ack(imem_ack),
       .imem_data_in(imem_data_in));

  initial begin
    clk = 1;
    #2;
    reset_n = 0;
    #10;
    reset_n = 1;
  end

  always #5 clk = ~clk;

  initial begin
    imem_req = 1'b0;
    #10;
    @(posedge clk);
    imem_req = 1'b1;
    imem_address = 'd0;
    @(posedge clk);
    imem_address = 'd1;
    @(posedge clk);
    imem_address = 'd2;
    @(posedge clk);
    imem_address = 'd3;
    @(posedge clk);
    imem_address = 'd4;
    @(posedge clk);
    imem_address = 'd5;
    @(posedge clk);
    imem_address = 'd6;
    @(posedge clk);
    imem_address = 'd7;
    @(posedge clk);
    imem_req = 1'b0;
    #10;
    $finish();
  end

endmodule