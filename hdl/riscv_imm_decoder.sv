`include "dti_global_defines.svh"
module riscv_imm_decoder #(
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH
)
(
  input   wire    [INST_DATA_WIDTH-1:0]      instruction,
  output  logic   [INST_DATA_WIDTH-1:0]      immediate
);

`include "dti_global_parameters.svh"

always_comb begin
  case(instruction[6:2])
    5'b01101, 
    5'b00101 : begin
      immediate = {instruction[31:12], 12'b0};
    end
    5'b11011 : begin
      immediate = {{12{instruction[31]}}, instruction[19:12], instruction[20], instruction[30:21], 1'b0};
    end
    5'b11001,
    5'b00000,
    5'b00100,
    5'b11100 : begin
      immediate = {{21{instruction[31]}}, instruction[30:20]};
    end
    5'b11000 : begin
      immediate = {{20{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0};
    end
    5'b01000 : begin
      immediate = {{21{instruction[31]}}, instruction[30:25], instruction[11:7]};
    end
    default  : begin
      immediate = 0;
    end
  endcase
end

endmodule