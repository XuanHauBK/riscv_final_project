`include "dti_global_defines.svh"
module riscv_writeback(
  input                       clk,
  input                       reset_n,

  // Count instruction
  input   wire                count_instruction_in,
  output  logic               count_instruction_out,

  // Exception signals
  input   wire                exception_in,
  input   wire    [39:0]      exception_context_in,
  output  logic               exception_out,
  output  logic   [39:0]      exception_context_out,

  // CRS signals
  input   wire    [11:0]      csr_addr_in,
  output  logic   [11:0]      csr_addr_out,
  input   wire    [1:0]       csr_write_in,
  output  logic   [1:0]       csr_write_out,
  input   wire    [31:0]      csr_data_in,
  output  logic   [31:0]      csr_data_out,

  // Destination register signals
  input   wire                rd_write_in,
  input   wire    [31:0]      rd_data_in,
  input   wire    [4:0]       rd_addr_in,
  output  logic               rd_write_out,
  output  logic   [31:0]      rd_data_out,
  output  logic   [4:0]       rd_addr_out
);

`include "dti_global_parameters.svh"

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    rd_write_out <= 0;
    exception_out <= 0;
    count_instruction_out <= 0;
  end else begin
    count_instruction_out <= count_instruction_in;
    rd_data_out <= rd_data_in;
    rd_write_out <= rd_write_in;
    rd_addr_out <= rd_addr_in;
    exception_out <= exception_in;
    exception_context_out <= exception_context_in;
    csr_write_out <= csr_write_in;
    csr_data_out <= csr_data_in;
    csr_addr_out <= csr_addr_in;
  end
end

endmodule