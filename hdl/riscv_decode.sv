
`include "dti_global_defines.svh"
module riscv_decode #(
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH,
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH,
  parameter PC_WIDTH        = `CFG_PC_WIDTH,
  parameter REG_ADDR_WIDTH  = `CFG_REG_ADDR_WIDTH,
  parameter CSR_ADDR_WIDTH  = `CFG_CSR_ADDR_WIDTH
)
(
  input                                      clk,
  input                                      reset_n,

  input   wire                               flush,
  input   wire                               stall,

  // Instruction input
  input   wire    [INST_DATA_WIDTH-1:0]      inst_data,
  input   wire    [INST_ADDR_WIDTH-1:0]      inst_address,
  input   wire                               inst_ready,
  input   wire                               inst_count,

  // Register address
  output  wire    [REG_ADDR_WIDTH-1:0]       rs1_addr,
  output  wire    [REG_ADDR_WIDTH-1:0]       rs2_addr,
  output  wire    [REG_ADDR_WIDTH-1:0]       rd_addr,
  output  logic    [CSR_ADDR_WIDTH-1:0]      csr_addr,

  // Shamt value for shift oprations
  output  wire    [4:0]                      shamt,
  output  wire    [2:0]                      funct3,

  // Immediate value for immediate instruction
  output  wire    [INST_DATA_WIDTH-1:0]      immediate,

  // Control signal
  output  wire                               rd_write,
  output  wire    [2:0]                      branch,
  output  wire    [2:0]                      alu_x_src,
  output  wire    [2:0]                      alu_y_src,
  output  wire    [3:0]                      alu_op,
  output  wire    [2:0]                      mem_op,
  output  wire    [1:0]                      mem_size,
  output  logic                              count_inst,

  // Instruction address
  output  logic    [PC_WIDTH-1:0]            pc,

  // CSR control signals
  output  wire    [1:0]                      csr_write,
  output  wire                               csr_use_imm,

  // Exception output signals
  output  wire                               decode_exception,
  output  wire    [2:0]                      decode_exception_cause 
);

`include "dti_global_parameters.svh"

logic   [INST_DATA_WIDTH-1:0]      instruction;
logic   [INST_DATA_WIDTH-1:0]      immediate_value;

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    instruction <= 0;
    pc <= 0;
    count_inst <= 0;
  end 
  else begin
    if (stall) begin
      count_inst <= 0;
    end
    else if (flush || (!inst_ready)) begin
      instruction <= 0;
      count_inst <= 0;
    end
    else begin
      instruction <= inst_data;
      count_inst <= inst_count;
      pc <= inst_address;
    end
  end
end

assign rs1_addr = instruction[19:15];
assign rs2_addr = instruction[24:20];
assign rd_addr  = instruction[11:7 ];
assign shamt    = instruction[24:20];
assign funct3   = instruction[14:12];

riscv_imm_decoder pp_imm_decoder (
               .immediate  (immediate_value),
               .instruction(instruction    ));

assign immediate = immediate_value;

always_comb begin
  if (immediate_value[11:0] == CSR_EPC_MRET) begin
    csr_addr = CSR_MEPC;
  end
  else begin
    csr_addr = immediate_value[11:0];
  end
end

riscv_control_unit pp_control_unit (
                .opcode                (instruction[6:0]      ),
                .funct3                (instruction[14:12]    ),
                .funct7                (instruction[31:25]    ),
                .funct12               (instruction[31:20]    ),
                .rd_write              (rd_write              ),
                .branch                (branch                ),
                .alu_x_src             (alu_x_src             ),
                .alu_y_src             (alu_y_src             ),
                .alu_op                (alu_op                ),
                .mem_op                (mem_op                ),
                .mem_size              (mem_size              ),
                .decode_exception      (decode_exception      ),
                .decode_exception_cause(decode_exception_cause),
                .csr_write             (csr_write             ),
                .csr_imm               (csr_use_imm           ));

endmodule


