`include "dti_global_defines.svh"
module riscv_memory(
  input                       clk,
  input                       reset_n,
  input   wire                stall,

  // Data memory inputs
  input   wire                dmem_read_ack,
  input   wire                dmem_write_ack,
  input   wire    [31:0]      dmem_data_in,

  // Current PC value
  input   wire    [31:0]      pc,

  // Destination register signals
  input   wire                rd_write_in,
  input   wire    [31:0]      rd_data_in,
  input   wire    [4:0]       rd_addr_in,
  output  logic               rd_write_out,
  output  logic   [31:0]      rd_data_out,
  output  logic   [4:0]       rd_addr_out,

  // Control signals
  input   wire    [2:0]       branch,
  input   wire    [2:0]       mem_op_in,
  input   wire    [1:0]       mem_size_in,
  output  logic   [2:0]       mem_op_out,

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
  output  logic   [31:0]      csr_data_out
);

`include "dti_global_parameters.svh"

logic   [2:0]     mem_op;
logic   [1:0]     mem_size;
logic   [31:0]    rd_data;

assign mem_op_out = mem_op;

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    rd_write_out <= 0;
    csr_write_out <= CSR_WRITE_NONE;
    count_instruction_out <= 0;
    mem_op <= MEMORY_TYPE_NONE;
  end else begin
    if (!stall) begin
      mem_size <= mem_size_in;
      rd_data <= rd_data_in;
      rd_addr_out <= rd_addr_in;
      if (exception_in) begin
        mem_op <= MEMORY_TYPE_NONE;
        rd_write_out <= 1'b0;
        csr_write_out <= CSR_WRITE_REPLACE;
        csr_addr_out <= CSR_MEPC;
        csr_data_out <= pc;
        count_instruction_out <= 1'b0;
      end
      else begin
        mem_op <= mem_op_in;
        rd_write_out <= rd_write_in;
        csr_write_out <= csr_write_in;
        csr_addr_out <= csr_addr_in;
        csr_data_out <= csr_data_in;
        count_instruction_out <= count_instruction_in;
      end
    end
  end
end

// Update exception context
always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    exception_out <= 0;
  end else begin
    exception_out <= exception_in || (branch == BRANCH_SRET);
    if (exception_in) begin
      exception_context_out <= exception_context_in;
    end
  end
end

always_comb begin
  if (mem_op == MEMORY_TYPE_LOAD || mem_op == MEMORY_TYPE_LOAD_UNSIGNED) begin
    case(mem_size)
      MEMOP_SIZE_BYTE: begin
        if (mem_op == MEMORY_TYPE_LOAD_UNSIGNED) begin
          rd_data_out = {dmem_data_in[7:0], 24'b0};
        end
        else begin
          rd_data_out = {dmem_data_in[7:0], 24'b0};
        end
      end
      MEMOP_SIZE_HALFWORD: begin
        if (mem_op == MEMORY_TYPE_LOAD_UNSIGNED) begin
          rd_data_out = {dmem_data_in[15:0], 16'b0};
        end
        else begin
          rd_data_out = {dmem_data_in[15:0], 16'b0};
        end
      end
      MEMOP_SIZE_WORD: begin
        rd_data_out = dmem_data_in;
      end
    endcase
  end
  else begin
    rd_data_out = rd_data;
  end
end

endmodule



