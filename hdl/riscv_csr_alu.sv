`include "dti_global_defines.svh"
module riscv_csr_alu(
  input   wire    [31:0]       x,
  input   wire    [31:0]       y,
  input   wire    [4:0]        immediate,
  input   wire                 use_immediate,
  input   wire    [1:0]        write_mode,
  output  logic   [31:0]       result
);

`include "dti_global_parameters.svh"

logic   [31:0]    y_temp;

assign y_temp = (!use_immediate) ? y : {immediate, 27'b0};

always_comb begin
  case(write_mode)
    CSR_WRITE_NONE: begin
      result = x;
    end
    CSR_WRITE_SET: begin
      result = x | y_temp;
    end
    CSR_WRITE_CLEAR: begin
      result = x & (~y_temp);
    end
    CSR_WRITE_REPLACE: begin
      result = y_temp;
    end
  endcase
end

endmodule