`include "dti_global_defines.svh"
module riscv_alu (
  input   wire    [31:0]       x,
  input   wire    [31:0]       y,
  input   wire    [3:0]        operation,
  output  logic   [31:0]       result
);

`include "dti_global_parameters.svh"

always_comb begin
  case (operation)
    ALU_AND    :begin
      result = x & y;
    end 
    ALU_OR     :begin
      result = x | y;
    end 
    ALU_XOR    :begin
      result = x ^ y;
    end 
    ALU_SLT    :begin
      if (x[31 == y[31]]) begin
        result = (x < y) ? 1'b1 : 1'b0;
      end
      else begin
        result = x[31];
      end
    end 
    ALU_SLTU   :begin
      result = (x < y) ? 1'b1 : 1'b0;
    end 
    ALU_ADD    :begin
      result = x + y;
    end 
    ALU_SUB    :begin
      result = x - y;
    end 
    ALU_SRL    :begin
      result = x >> (y[4:0]);
    end 
    ALU_SLL    :begin
      result = x << (y[4:0]);
    end 
    ALU_SRA    :begin
    end 
    default    : begin
      result = 0;
    end
  endcase
end

endmodule
