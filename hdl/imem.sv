`include "dti_global_defines.svh"
module imem #(
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH,
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH,
  parameter INST_CMD_COUNT  = 100
)
(
  input                                      clk,
  input                                      reset_n,
  input    wire                              boost_en,
  input    wire     [INST_DATA_WIDTH-1:0]    rx_boost_inst_data_in,
  input    wire                              rx_boost_inst_wr_req,
  input    wire     [INST_ADDR_WIDTH-1:0]    imem_address, 
  input    wire                              imem_req, 
  output   logic                             imem_ack, 
  output   logic    [INST_DATA_WIDTH-1:0]    imem_data_in
);

`include "dti_global_parameters.svh"

logic  [INST_CMD_COUNT-1:0][INST_DATA_WIDTH-1:0] instruction_memory;
logic  [$clog2(INST_CMD_COUNT-1)-1:0]            index_inst;
logic                                            boost_en_tmp;
logic                                            boost_en_trigger;

always_ff @(posedge clk or negedge reset_n) begin 
  if(~reset_n) begin
    boost_en_tmp <= 0;
  end else begin
    boost_en_tmp <= boost_en;
  end
end

assign boost_en_trigger = (boost_en_tmp ^ boost_en) & boost_en;

always_ff @(posedge clk or negedge reset_n) begin 
  if(~reset_n) begin
    index_inst <= 0;
    instruction_memory <= 0;
  end else begin
    if (boost_en_trigger) begin
      index_inst <= 0;
      instruction_memory <= 0;
    end
    else if (rx_boost_inst_wr_req) begin
      index_inst <= index_inst + 1;
      instruction_memory[index_inst] <= rx_boost_inst_data_in;
    end
  end
end

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    imem_ack <= 0;
    imem_data_in <= 0;
  end else begin
    if (imem_req) begin
      if ((imem_address>>2) < index_inst) begin
        imem_ack <= 1'b1;
        imem_data_in <= instruction_memory[imem_address>>2];
      end
      else begin
        imem_ack <= 1'b0;
        imem_data_in <= 0;
      end
    end
    else begin
      imem_ack <= 1'b0;
    end
  end
end

`ifdef DEBUG
typedef enum logic [6:0] {
  OP_LUI                = 7'b0110111,
  OP_AUIPC              = 7'b0010111,
  OP_JAL                = 7'b1101111,
  OP_JALR               = 7'b1100111,
  OP_BRANCH             = 7'b1100011,
  OP_LOAD               = 7'b0000011,
  OP_STORE              = 7'b0100011,
  OP_OPER_IMM           = 7'b0010011,
  OP_OPER_REG           = 7'b0110011,
  OP_FENCE              = 7'b0001111,
  OP_SYSTEM             = 7'b1110011,
  OP_INVALID            = 7'b0000000
} opcode_t;

typedef enum logic [6:0] {
  LUI            ,
  AUIPC          ,
  JAL            ,
  JALR           ,
  BEQ            ,
  BNE            ,
  BLT            ,
  BGE            ,
  BLTU           ,
  BGEU           ,
  LB             ,
  LH             ,
  LW             ,
  LBU            ,
  LHU            ,
  SB             ,
  SH             ,
  SW             ,
  ADDI           ,
  SLTI           ,
  SLTIU          ,
  XORI           ,
  ORI            ,
  ANDI           ,
  SLLI           ,
  SRLI           ,
  SRAI           ,
  ADD            ,
  SUB            ,
  SLL            ,
  SLT            ,
  SLTU           ,
  XOR            ,
  SRL            ,
  SRA            ,
  OR             ,
  AND            ,
  FENCE          ,
  FENCE_TSO      ,
  PAUSE          ,
  ECALL          ,
  EBREAK         ,
  INVALID        
} instruction_t;

opcode_t opcode;
instruction_t inst;

always_comb begin
  case(imem_data_in[6:0])
    OPCODE_LUI     : opcode = OP_LUI     ;
    OPCODE_AUIPC   : opcode = OP_AUIPC   ;
    OPCODE_JAL     : opcode = OP_JAL     ;
    OPCODE_JALR    : opcode = OP_JALR    ;
    OPCODE_BRANCH  : opcode = OP_BRANCH  ;
    OPCODE_LOAD    : opcode = OP_LOAD    ;
    OPCODE_STORE   : opcode = OP_STORE   ;
    OPCODE_OPER_IMM: opcode = OP_OPER_IMM;
    OPCODE_OPER_REG: opcode = OP_OPER_REG;
    OPCODE_FENCE   : opcode = OP_FENCE   ;
    OPCODE_SYSTEM  : opcode = OP_SYSTEM  ;
    default        : opcode = OP_INVALID ;
  endcase
end

always_comb begin
  case (imem_data_in[6:0])
    OPCODE_LUI     : begin
      inst = LUI;
    end
    OPCODE_AUIPC   : begin
      inst = AUIPC;
    end
    OPCODE_JAL     : begin
      inst = JAL;
    end
    OPCODE_JALR    : begin
      inst = JALR;
    end
    OPCODE_BRANCH  : begin
      case (imem_data_in[14:12])
        FUN3_BEQ  : inst = BEQ ;
        FUN3_BNE  : inst = BNE ;
        FUN3_BLT  : inst = BLT ;
        FUN3_BGE  : inst = BGE ;
        FUN3_BLTU : inst = BLTU;
        FUN3_BGEU : inst = BGEU;
      endcase
    end
    OPCODE_LOAD    : begin
      case (imem_data_in[14:12])
        FUN3_LB   : inst = LB ;
        FUN3_LH   : inst = LH ;
        FUN3_LW   : inst = LW ;
        FUN3_LBU  : inst = LBU;
        FUN3_LHU  : inst = LHU;
      endcase
    end
    OPCODE_STORE   : begin
      case (imem_data_in[14:12]) 
        FUN3_SB   : inst = SB;
        FUN3_SH   : inst = SH;
        FUN3_SW   : inst = SW;
      endcase
    end
    OPCODE_OPER_IMM: begin
      case(imem_data_in[14:12]) 
        FUN3_ADDI : inst = ADDI ;
        FUN3_SLTI : inst = SLTI ;
        FUN3_SLTIU: inst = SLTIU;
        FUN3_XORI : inst = XORI ;
        FUN3_ORI  : inst = ORI  ;
        FUN3_ANDI : inst = ANDI ;
        FUN3_SLLI : inst = SLLI ;
        FUN3_SRLI : begin
          if (imem_data_in[31:25] == 7'b0000000) begin
            inst = SRLI;
          end
          else begin
            inst = SRAI;
          end
        end
      endcase
    end
    OPCODE_OPER_REG: begin
      case(imem_data_in[14:12])
        FUN3_ADD : begin
          if (imem_data_in[31:25] == 7'b0000000) begin
            inst = ADD;
          end
          else begin
            inst = SUB;
          end
        end
        FUN3_SLL : inst = SLL ;
        FUN3_SLT : inst = SLT ;
        FUN3_SLTU: inst = SLTU;
        FUN3_XOR : inst = XOR ;
        FUN3_SRL : begin
          if (imem_data_in[31:25] == 7'b0000000) begin
            inst = SRL;
          end
          else begin
            inst = SRA;
          end
        end
        FUN3_OR  : inst = OR  ;
        FUN3_AND : inst = AND ;
      endcase
    end
    OPCODE_FENCE   : begin
      inst = FENCE;
    end
    OPCODE_SYSTEM  : begin
      inst = ECALL;
    end
    default        : begin
      inst = INVALID;
    end
  endcase
end
`endif

endmodule