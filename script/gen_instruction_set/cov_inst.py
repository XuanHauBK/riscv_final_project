# from riscv_assembler.convert import AssemblyConverter as AC
# instantiate object, by default outputs to a file in nibbles, not in hexademicals
# convert = AC(output_mode = 'f', nibble_mode = False, hex_mode = True)

# Convert a whole .s file to text file
# convert("test.s", "result.txt")

# Convert a string of assembly to binary file
# cnv_str = "add x1 x0 x0\nadd x2 x0 x1"
# convert(cnv_str, "result.bin")

# Convert a string and print output with no nibbles
# convert.output_mode = 'p'
# convert.nibble_mode = False
# convert.convert(cnv_str)

# Convert a string and save to array
# convert.output_mode = 'a'
# result = convert(cnv_str)

imem_file = """`include "dti_global_defines.svh"
module imemv2 #(
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH,
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH,
  parameter INST_CMD_COUNT  = 100
)
(
  input                                      clk,
  input                                      reset_n,
  input     wire    [INST_ADDR_WIDTH - 1:0]  imem_address, 
  input     wire                             imem_req, 
  output   logic                             imem_ack, 
  output   logic    [INST_DATA_WIDTH - 1:0]  imem_data_in
);

`include "dti_global_parameters.svh"

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


wire [INST_CMD_COUNT-1:0][INST_DATA_WIDTH-1:0] instruction_memory;
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

// always_comb begin
//   if (imem_req) begin
//     if (imem_address <= INST_CMD_COUNT) begin
//       imem_data_in = instruction_memory[imem_address];
//       imem_ack = 1'b1;
//     end
//     else begin
//       imem_data_in = 0;
//       imem_ack = 1'b0;
//     end
//   end
//   else begin
//     imem_data_in = 0;
//     imem_ack = 1'b0;
//   end
// end
always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    imem_ack <= 0;
    imem_data_in <= 0;
  end else begin
    if (imem_req) begin
      if (instruction_memory[imem_address>>2] != 0) begin
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

"""

def write_file(file_imem):
  with open (file_imem, 'w') as f:
    f.write(imem_file)

def update_file(file_inst, file_imem):
  with open (file_inst, 'r') as f_inst:
    new_values = [int(line.strip(), 16) for line in f_inst.readlines()]
    count_line = len(new_values)
    # print(count_line)

  # Generate verilog assignment statements
  verilog_lines = []
  for i, new_values in enumerate(new_values):
    assignment_line = f"assign instruction_memory[{i}] = 32'h{new_values:08x};\n"
    verilog_lines.append(assignment_line)
  with open(file_imem, 'a') as f_imem:
    f_imem.writelines(verilog_lines)
    f_imem.writelines('''
genvar i;
generate
''')
    f_imem.writelines(f"  for (i = {count_line} ; i < INST_CMD_COUNT; i = i + 1) begin")
    f_imem.writelines('''
    assign instruction_memory[i] = 0;
  end
endgenerate
''')
    f_imem.writelines("\n")
    f_imem.writelines("endmodule")


write_file("imem.sv")
update_file("result.txt", "imem.sv")
