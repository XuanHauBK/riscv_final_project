
`include "dti_global_defines.svh"
module riscv_alu_mux #(
)
(
  input   wire    [2:0]       source,
  input   wire    [31:0]      register_value,
  input   wire    [31:0]      immediate_value,
  input   wire    [4:0]       shamt_value,
  input   wire    [31:0]      pc_value,
  input   wire    [31:0]      csr_value,
  output  logic   [31:0]      value_out
);

`include "dti_global_parameters.svh"

always_comb begin
  case (source) 
    ALU_SRC_REG    : value_out = register_value           ;
    ALU_SRC_IMM    : value_out = immediate_value          ;
    ALU_SRC_SHAMT  : value_out = {{27{1'b0}}, shamt_value};
    ALU_SRC_PC     : value_out = pc_value                 ;
    ALU_SRC_PC_NEXT: value_out = pc_value + 'd4           ;
    ALU_SRC_CSR    : value_out = csr_value                ;
    ALU_SRC_NULL   : value_out = 0                        ;
  endcase
end

endmodule