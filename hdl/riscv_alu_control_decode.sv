
`include "dti_global_defines.svh"
module riscv_alu_control_decode #(
  parameter OPCODE_WIDTH   = `CFG_OPCODE_WIDTH,
  parameter FUNCT3_WIDTH   = `CFG_FUNCT3_WIDTH,
  parameter FUNCT7_WIDTH   = `CFG_FUNCT7_WIDTH
)
(
  input   wire    [OPCODE_WIDTH-1:0]       opcode,
  input   wire    [FUNCT3_WIDTH-1:0]       funct3,
  input   wire    [FUNCT7_WIDTH:0]         funct7,
  output  logic   [3:0]                    alu_x_src,
  output  logic   [3:0]                    alu_y_src,
  output  logic   [2:0]                    alu_op
);

`include "dti_global_parameters.svh"

always_comb 
begin
  case (opcode)
    OPCODE_LUI   : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    OPCODE_AUIPC : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    OPCODE_JAL   : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    OPCODE_JALR  : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    OPCODE_BRANCH   : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    OPCODE_LOAD    : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    OPCODE_STORE    : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    OPCODE_OPER_IMM  : begin
      alu_x_src = ALU_SRC_REG;
      if ((funct3 == 3'b001) | (funct3 == 3'b101)) begin
        alu_y_src = ALU_SRC_SHAMT;
      end
      else begin
        alu_y_src = ALU_SRC_IMM;
      end
      case (funct3)
        FUN3_ADDI  : alu_op = ALU_ADD                                  ;
        FUN3_SLTI  : alu_op = ALU_SLT                                  ;
        FUN3_SLTIU : alu_op = ALU_SLTU                                 ;
        FUN3_XORI  : alu_op = ALU_XOR                                  ;
        FUN3_ORI   : alu_op = ALU_OR                                   ;
        FUN3_ANDI  : alu_op = ALU_AND                                  ;
        FUN3_SLLI  : alu_op = ALU_SLL                                  ;
        FUN3_SRLI  : alu_op = (funct7 == FUN7_SRLI) ? ALU_SRL : ALU_SRA;
      endcase
    end
    OPCODE_OPER_REG   : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      case (funct3)
        FUN3_ADD  : alu_op = (funct7 == FUN7_ADD) ? ALU_ADD : ALU_SUB;
        FUN3_SLL  : alu_op = ALU_SLL                                 ;
        FUN3_SLT  : alu_op = ALU_SLT                                 ;
        FUN3_SLTU : alu_op = ALU_SLTU                                ;
        FUN3_XOR  : alu_op = ALU_XOR                                 ;
        FUN3_SRL  : alu_op = (funct7 == FUN7_SRL) ? ALU_SRL : ALU_SRA;
        FUN3_OR   : alu_op = ALU_OR                                  ;
        FUN3_AND  : alu_op = ALU_AND                                 ;
      endcase
    end
    OPCODE_FENCE : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    OPCODE_SYSTEM : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
    default      : begin
      alu_x_src = ALU_SRC_REG;
      alu_y_src = ALU_SRC_REG;
      alu_op    = ALU_INVALID;
    end
  endcase
end

endmodule

