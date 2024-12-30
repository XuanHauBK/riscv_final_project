`timescale 1ns/1ns
`include "dti_global_defines.svh"
module pp_fetch_tb;
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH;
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH;
  parameter PC_WIDTH        = `CFG_PC_WIDTH;

  logic                               clk;
  logic                               reset_n;
  logic    [INST_DATA_WIDTH-1:0]      imem_data_in;
  logic                               imem_ack;
  logic    [INST_ADDR_WIDTH-1:0]      imem_address;
  logic                               imem_req;
  logic                               stall;
  logic                               flush;
  logic                               branch;
  logic                               exception;
  logic    [31:0]                     branch_target;
  logic    [31:0]                     evec;
  logic    [INST_DATA_WIDTH-1:0]      inst_data;
  logic    [INST_ADDR_WIDTH-1:0]      inst_address;
  logic                               inst_ready;

  pp_fetch pp_fetch(
          .clk(clk),
          .reset_n(reset_n),
          .imem_data_in(imem_data_in),
          .imem_ack(imem_ack),
          .imem_address(imem_address),
          .imem_req(imem_req),
          .stall(stall),
          .flush(flush),
          .branch(branch),
          .exception(exception),
          .branch_target(branch_target),
          .evec(evec),
          .inst_data(inst_data),
          .inst_address(inst_address),
          .inst_ready(inst_ready)
          );

  initial begin
    clk = 1;
    #2;
    reset_n = 0;
    #10;
    reset_n = 1;
  end

  always #5 clk = ~clk;

  initial begin
    #100;
    $finish();
  end

endmodule
