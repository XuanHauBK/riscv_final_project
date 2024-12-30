
`include "dti_global_defines.svh"
module riscv_control_unit #(
)
(
  input   wire    [6:0]       opcode,
  input   wire    [2:0]       funct3,
  input   wire    [6:0]       funct7,
  input   wire    [11:0]      funct12,

  // Control signals
  output  logic               rd_write,
  output  logic   [2:0]       branch,

  // Exception signals
  output  logic               decode_exception,
  output  logic   [5:0]       decode_exception_cause,

  // Control register signals
  output  logic   [1:0]       csr_write,
  output  logic               csr_imm,

  // Sources f operands to the ALU
  output  logic   [3:0]       alu_x_src,
  output  logic   [3:0]       alu_y_src,

  // ALU Operation
  output  logic   [3:0]       alu_op,

  // Memory transaction parameter
  output  logic   [2:0]       mem_op,
  output  logic   [1:0]       mem_size
);

`include "dti_global_parameters.svh"

logic               exception;
logic    [5:0]      exception_cause;
logic    [2:0]      alu_op_temp;

assign csr_imm = funct3[2];
assign alu_op = alu_op_temp;

assign decode_exception = exception || (alu_op_temp == ALU_INVALID);
assign decode_exception_cause = (alu_op_temp != ALU_INVALID) ? exception_cause : CSR_CAUSE_INVALID_INSTR;

riscv_alu_control_decode riscv_alu_control_decode (
                      .opcode   (opcode     ),
                      .funct3   (funct3     ),
                      .funct7   (funct7     ),
                      .alu_x_src(alu_x_src  ),
                      .alu_y_src(alu_y_src  ),
                      .alu_op   (alu_op_temp));

always_comb begin
  case (opcode) 
    OPCODE_LUI     : begin  // Load upper immediate
      rd_write        = 1'b1                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_NONE            ;
    end
    OPCODE_AUIPC   : begin // Add upper immediate to PC
      rd_write        = 1'b1                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_NONE            ;
    end
    OPCODE_JAL     : begin // Jump and Link
      rd_write        = 1'b1                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_JUMP            ;
    end
    OPCODE_JALR    : begin // Jump and Link register
      rd_write        = 1'b1                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_JUMP_INDIRECT   ;
    end
    OPCODE_BRANCH  : begin // Branch operation
      rd_write        = 1'b0                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_CONDITIONAL     ;
    end
    OPCODE_LOAD    : begin // Load instruction
      rd_write        = 1'b1                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_NONE            ;
    end
    OPCODE_STORE   : begin // Store instruction
      rd_write        = 1'b0                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_NONE            ;
    end
    OPCODE_OPER_IMM: begin // Register-Immediate operations
      rd_write        = 1'b1                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_NONE            ;
    end
    OPCODE_OPER_REG: begin // Register-Register operations
      rd_write        = 1'b1                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_NONE            ;
    end
    OPCODE_FENCE   : begin // Fence instructions
      rd_write        = 1'b0                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_NONE            ;
    end
    OPCODE_SYSTEM  : begin // System instructions
      rd_write        = 1'b0                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_NONE         ;
      branch          = BRANCH_NONE            ;
    end
    default        : begin
      rd_write        = 1'b0                   ;
      // exception       = 1'b1                   ;
      exception       = 1'b0                   ;
      exception_cause = CSR_CAUSE_INVALID_INSTR;
      branch          = BRANCH_NONE            ;
    end
  endcase
end

always_comb begin
  if (opcode == OPCODE_SYSTEM) begin
    case (funct3)
      3'b001,
      3'b101  : begin
        csr_write = CSR_WRITE_REPLACE;
      end
      3'b010,
      3'b110  : begin
        csr_write = CSR_WRITE_SET    ;
      end
      3'b011,
      3'b111  : begin
        csr_write = CSR_WRITE_CLEAR  ;
      end
      default : begin
        csr_write = CSR_WRITE_NONE   ;
      end
    endcase
  end
  else begin
    csr_write = CSR_WRITE_NONE;
  end
end

always_comb begin
  if (opcode == OPCODE_LOAD) begin
    case(funct3)
      FUN3_LB : begin
        mem_op = MEMORY_TYPE_LOAD;
        mem_size = MEMOP_SIZE_BYTE;
      end
      FUN3_LH : begin
        mem_op = MEMORY_TYPE_LOAD;
        mem_size = MEMOP_SIZE_HALFWORD;
      end
      FUN3_LW : begin
        mem_op = MEMORY_TYPE_LOAD;
        mem_size = MEMOP_SIZE_BYTE;
      end
      FUN3_LBU : begin
        mem_op = MEMORY_TYPE_LOAD_UNSIGNED;
        mem_size = MEMOP_SIZE_BYTE;
      end
      FUN3_LHU : begin
        mem_op = MEMORY_TYPE_LOAD_UNSIGNED;
        mem_size = MEMOP_SIZE_HALFWORD;
      end
      default : begin
        mem_op = MEMORY_TYPE_INVALID;
        mem_size = MEMOP_SIZE_WORD;
      end
    endcase
  end
  else if (opcode == OPCODE_STORE) begin
     case(funct3)
      FUN3_SB : begin
        mem_op = MEMORY_TYPE_STORE;
        mem_size = MEMOP_SIZE_BYTE;
      end
      FUN3_SH : begin
        mem_op = MEMORY_TYPE_STORE;
        mem_size = MEMOP_SIZE_HALFWORD;
      end
      FUN3_SW : begin
        mem_op = MEMORY_TYPE_STORE;
        mem_size = MEMOP_SIZE_WORD;
      end
      default : begin
        mem_op = MEMORY_TYPE_INVALID;
        mem_size = MEMOP_SIZE_WORD;
      end
    endcase
  end
  else begin
    mem_op = MEMORY_TYPE_NONE;
    mem_size = MEMOP_SIZE_WORD;
  end
end

endmodule