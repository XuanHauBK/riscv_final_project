`timescale 1ns/1ns
`include "dti_global_defines.svh"
module test;

  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH;
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH;
  parameter PC_WIDTH        = `CFG_PC_WIDTH;
  parameter REG_ADDR_WIDTH  = `CFG_REG_ADDR_WIDTH;
  parameter CSR_ADDR_WIDTH  = `CFG_CSR_ADDR_WIDTH;

  logic                             clk;
  logic    [31:0]                   dmem_data_in;
  logic                             dmem_read_ack;
  logic                             dmem_write_ack;
  logic                             imem_ack;
  logic    [INST_DATA_WIDTH - 1:0]  imem_data_in;
  logic    [7:0]                    irq;
  logic                             reset_n;
  logic    [INST_ADDR_WIDTH - 1:0]  dmem_address;
  logic    [INST_DATA_WIDTH - 1:0]  dmem_data_out;
  logic    [1:0]                    dmem_data_size;
  logic                             dmem_read_req;
  logic                             dmem_write_req;
  logic    [INST_ADDR_WIDTH - 1:0]  imem_address;
  logic                             imem_req;
  logic    [39:0]                   test_context_out;

  dti_riscv_core dti_riscv_core(
                 .clk(clk),
                 .dmem_data_in(dmem_data_in),
                 .dmem_read_ack(dmem_read_ack),
                 .dmem_write_ack(dmem_write_ack),
                 .imem_ack(imem_ack),
                 .imem_data_in(imem_data_in),
                 .irq(irq),
                 .reset_n(reset_n),
                 .dmem_address(dmem_address),
                 .dmem_data_out(dmem_data_out),
                 .dmem_data_size(dmem_data_size),
                 .dmem_read_req(dmem_read_req),
                 .dmem_write_req(dmem_write_req),
                 .imem_address(imem_address),
                 .imem_req(imem_req),
                 .test_context_out(test_context_out));

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
    irq = 0;
    dmem_read_ack = 0;
    dmem_write_ack = 0;
    dmem_data_in = 0;
    #500;
    $finish();
  end

endmodule