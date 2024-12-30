`include "dti_global_defines.svh"
module riscv_comparator(
  input   wire    [2:0]      funct3,
  input   wire    [31:0]     rs1,
  input   wire    [31:0]     rs2,
  output  logic              result
);

`include "dti_global_parameters.svh"

always_comb begin
  case(funct3)
    3'b000: begin
      result = (rs1 == rs2);
    end
    3'b001: begin
      result = (rs1 != rs2);
    end
    3'b100: begin
      if (rs1[31] == rs2[31]) begin
        result = (rs1[30:0] < rs2[30:0]);
      end
      else begin
        result = rs1[31];
      end
    end
    3'b101: begin
      if (rs1[31] == rs2[31]) begin
        result = (rs2[30:0] <= rs2[30:0]);
      end
      else begin
        result = rs2[31];
      end
    end
    3'b110: begin
      result = (rs1 < rs2);
    end
    3'b111: begin
      result = (rs1 >= rs2);
    end
    default: begin
      result = 1'b0;
    end
  endcase
end

endmodule