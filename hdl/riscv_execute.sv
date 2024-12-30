
`include "dti_global_defines.svh"
module riscv_execute #(
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH,
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH,
  parameter PC_WIDTH        = `CFG_PC_WIDTH,
  parameter REG_ADDR_WIDTH  = `CFG_REG_ADDR_WIDTH,
  parameter CSR_ADDR_WIDTH  = `CFG_CSR_ADDR_WIDTH
)
(
  // GLobal signal
  input                                      clk,
  input                                      reset_n,

  input   wire                               stall,
  input   wire                               flush,

  //Interrupt inputs
  input   wire    [7:0]                      irq,
  input   wire                               timer_interrupt,
  input   wire                               software_interrupt,

  // Data memory outputs
  output  logic   [INST_ADDR_WIDTH-1:0]      dmem_address,
  output  logic   [INST_DATA_WIDTH-1:0]      dmem_data_out,
  output  logic   [1:0]                      dmem_data_size,
  output  logic                              dmem_read_req,
  output  logic                              dmem_write_req,

  // Register address
  input   wire    [REG_ADDR_WIDTH-1:0]       rs1_addr_in,
  input   wire    [REG_ADDR_WIDTH-1:0]       rs2_addr_in,
  input   wire    [REG_ADDR_WIDTH-1:0]       rd_addr_in,
  output  logic   [REG_ADDR_WIDTH-1:0]       rd_addr_out,

  // Register value
  input   wire    [31:0]                     rs1_data_in,
  input   wire    [31:0]                     rs2_data_in,
  output  logic   [31:0]                     rd_data_out,

  // Constant value
  input   wire    [4:0]                      shamt_in,
  input   wire    [31:0]                     immediate_in,

  // Instruction address
  input   wire    [31:0]                     pc_in,
  output  logic   [31:0]                     pc_out,

  // funct3 value from the instruction, used to choose which comparison
  input   wire    [2:0]                      funct3_in,

  // CSR signals
  input   wire    [11:0]                     csr_addr_in,
  output  logic   [11:0]                     csr_addr_out,
  input   wire    [1:0]                      csr_write_in,
  output  logic   [1:0]                      csr_write_out,
  input   wire    [31:0]                     csr_value_in,
  output  logic   [31:0]                     csr_value_out,
  input   wire                               csr_use_immediate_in,

  // Control signals
  input  wire     [2:0]                      alu_x_src_in,
  input  wire     [2:0]                      alu_y_src_in,
  input  wire     [3:0]                      alu_op_in,
  input  wire                                rd_write_in,
  output logic                               rd_write_out,
  input  wire     [2:0]                      branch_in,
  output logic    [2:0]                      branch_out,

  // Memory control signal
  input  wire     [2:0]                      mem_op_in,
  output logic    [2:0]                      mem_op_out,
  input  wire     [1:0]                      mem_size_in,
  output logic    [1:0]                      mem_size_out,

  // Whether the instruction should be counted
  input  wire                                count_instruction_in,
  output logic                               count_instruction_out,

  // Exception control register
  input  wire                                ie_in,
  input  wire                                ie1_in,
  input  wire     [31:0]                     mie_in,
  input  wire     [31:0]                     mtvec_in,
  output logic    [31:0]                     mtvec_out,

  // Exception signals
  input  wire                                decode_exception_in,
  input  wire     [5:0]                      decode_exception_cause_in,

  // Exception output
  output logic                               exception_out,
  output logic    [39:0]                     exception_context_out,

  // Control output
  output logic                               jump_out,
  output logic    [31:0]                     jump_target_out,

  // Input to the forwarding logic from the MEM stage
  input  wire                                mem_rd_write,
  input  wire     [REG_ADDR_WIDTH-1:0]       mem_rd_addr,
  input  wire     [31:0]                     mem_rd_value,
  input  wire     [11:0]                     mem_csr_addr,
  input  wire     [1:0]                      mem_csr_write,
  input  wire                                mem_exception,

   // Input to the forwarding logic from the WB stage
  input  wire                                wb_rd_write,
  input  wire     [REG_ADDR_WIDTH-1:0]       wb_rd_addr,
  input  wire     [31:0]                     wb_rd_value,
  input  wire     [11:0]                     wb_csr_addr,
  input  wire     [1:0]                      wb_csr_write,
  input  wire                                wb_exception,

  //Hazard detection unit signals:
  input  wire     [2:0]                      mem_mem_op,
  output logic                               hazard_detected
);

`include "dti_global_parameters.svh"

logic   [3:0]                     alu_op;
logic   [2:0]                     alu_x_src;
logic   [2:0]                     alu_y_src;
logic   [31:0]                    alu_x;
logic   [31:0]                    alu_y;
logic   [31:0]                    alu_result;
logic   [REG_ADDR_WIDTH-1:0]      rs1_addr;
logic   [REG_ADDR_WIDTH-1:0]      rs2_addr;
logic   [31:0]                    rs1_data;
logic   [31:0]                    rs2_data;
logic   [2:0]                     mem_op;
logic   [1:0]                     mem_size;
logic   [PC_WIDTH-1:0]            pc;
logic   [31:0]                    immediate;
logic   [4:0]                     shamt;
logic   [2:0]                     funct3;
logic   [31:0]                    rs1_forwarded;
logic   [31:0]                    rs2_forwarded;
logic   [2:0]                     branch;
logic                             branch_condition;
logic                             do_jump;
logic   [31:0]                    jump_target;
logic   [31:0]                    mie;
logic   [31:0]                    mtvec;
logic   [1:0]                     csr_write;
logic   [11:0]                    csr_addr;
logic                             csr_use_immediate;
logic   [31:0]                    csr_value;
logic                             decode_exception;
logic   [5:0]                     decode_exception_cause;
logic                             exception_taken;
logic   [5:0]                     exception_cause;
logic   [31:0]                    exception_addr;
logic                             data_misaligned;
logic                             instr_misaligned;
logic                             irq_asserted;
logic   [3:0]                     irq_asserted_num;
logic                             load_hazard_detected;
logic                             csr_hazard_detected;

// assign signal
assign csr_value = csr_value_in;
assign rd_data_out = alu_result;
assign branch_out = branch;
assign mem_op_out = mem_op;
assign mem_size_out = mem_size;
assign csr_write_out = csr_write;
assign csr_addr_out = csr_addr;
assign pc_out = pc;
assign hazard_detected = load_hazard_detected || csr_hazard_detected;
assign exception_out = exception_taken;
assign exception_context_out = {ie_in, ie1_in, exception_cause, exception_addr};
assign do_jump = ((branch == BRANCH_JUMP) || (branch == BRANCH_JUMP_INDIRECT)) || ((branch == BRANCH_CONDITIONAL) && branch_condition) || ((branch == BRANCH_SRET) && !stall);
assign jump_out = do_jump;
assign jump_target_out = jump_target;
assign mtvec_out = mtvec;
assign exception_taken = !stall && (decode_exception || (exception_cause != CSR_CAUSE_NONE));
assign exception_cause = CSR_CAUSE_NONE;
assign irq_asserted = (ie_in == 1'b1) & (irq && (mie[31:24] != 'h00));
assign rs1_data = rs1_data_in;
assign rs2_data = rs2_data_in;
assign dmem_address = (mem_op != MEMORY_TYPE_NONE  && mem_op != MEMORY_TYPE_INVALID && !exception_taken) ? alu_result : 0;
assign dmem_data_out = rs2_forwarded;
assign dmem_write_req = ((mem_op == MEMORY_TYPE_STORE) && !exception_taken) ? 1'b1 : 1'b0;
assign dmem_read_req = ((mem_op == MEMORY_TYPE_LOAD) || (mem_op == MEMORY_TYPE_LOAD_UNSIGNED) && !exception_taken) ? 1'b1 : 1'b0;

always_ff @(posedge clk or negedge reset_n) 
begin 
  if(!reset_n) begin
    rd_write_out <= 0;
    branch <= BRANCH_NONE;
    csr_write <= CSR_WRITE_NONE;
    decode_exception <= 1'b0;
    count_instruction_out <= 1'b0;
    mem_op <= 0;
    pc <= 0;
    mem_size <= 0;
    decode_exception_cause <= 0;
  end else begin
    if (flush) begin
      rd_write_out <= 0;
      branch <= BRANCH_NONE;
      csr_write <= CSR_WRITE_NONE;
      decode_exception <= 1'b0;
      count_instruction_out <= 1'b0;
    end
    else if (!stall) begin
      pc <= pc_in;
      count_instruction_out <= count_instruction_in;
      rd_write_out <= rd_write_in;
      rd_addr_out <= rd_addr_in;
      rs1_addr <= rs1_addr_in;
      rs2_addr <= rs2_addr_in;
      alu_op <= alu_op_in;
      alu_x_src <= alu_x_src_in;
      alu_y_src <= alu_y_src_in;
      branch <= branch_in;
      mem_op <= mem_op_in;
      mem_size <= mem_size_in;
      immediate <= immediate_in;
      shamt <= shamt_in;
      funct3 <= funct3_in;
      csr_write <= csr_write_in;
      csr_addr <= csr_addr_in;
      csr_use_immediate <= csr_use_immediate_in;
      mtvec <= mtvec_in;
      mie <= mie_in;
      decode_exception <= decode_exception_in;
      decode_exception_cause <= decode_exception_cause_in;
    end 
    else if (stall) begin
      csr_write <= CSR_WRITE_NONE;
    end
  end
end

// Set data size
always_comb begin
  case(mem_size) 
    MEMOP_SIZE_BYTE : begin
      dmem_data_size = 2'b01;
    end
    MEMOP_SIZE_HALFWORD : begin
      dmem_data_size = 2'b10;
    end
    MEMOP_SIZE_WORD : begin
      dmem_data_size = 2'b00;
    end
    default: begin
      dmem_data_size = 2'b11;
    end
  endcase
end

// IRQ NUM

// Data misaligned check
always_comb begin
  case(mem_size) 
    MEMOP_SIZE_HALFWORD : begin
      if (alu_result[0] != 1'b0) begin
        data_misaligned = 1'b1;
      end
      else begin
        data_misaligned = 1'b0;
      end
    end
    MEMOP_SIZE_WORD: begin
      if (alu_result[1:0] != 2'b00) begin
        data_misaligned = 1'b1;
      end
      else begin
        data_misaligned = 1'b0;
      end
    end
    default: begin
      data_misaligned = 1'b0;
    end
  endcase
end

// Instruction misaligned check
always_comb begin
  if (jump_target[1:0] != 2'b00 && do_jump) begin
    instr_misaligned = 1'b1;
  end
  else begin
    instr_misaligned = 1'b0;
  end
end

// Find exception cause
// always_comb begin
//   if (irq_asserted) begin
//     exception_cause = CSR_CAUSE_IRQ_BASE + irq_asserted_num;
//   end
//   else if ()
// end

// Calculate jump target
always_comb begin
  case (branch) 
    BRANCH_JUMP,
    BRANCH_CONDITIONAL : begin
      jump_target = pc + immediate;
    end
    BRANCH_JUMP_INDIRECT : begin
      jump_target = rs1_forwarded + immediate;
    end
    BRANCH_SRET : begin
      jump_target = csr_value;
    end
    default : begin
      jump_target = 0;
    end
  endcase
end

riscv_alu_mux alu_x_mux (
          .source         (alu_x_src),
          .register_value (rs1_forwarded),
          .immediate_value(immediate),
          .shamt_value    (shamt),
          .pc_value       (pc),
          .csr_value      (csr_value),
          .value_out      (alu_x));

riscv_alu_mux alu_y_mux (
          .source         (alu_y_src),
          .register_value (rs2_forwarded),
          .immediate_value(immediate),
          .shamt_value    (shamt),
          .pc_value       (pc),
          .csr_value      (csr_value),
          .value_out      (alu_y));

// rs1_forwarded
always_comb begin
  if (mem_rd_write && mem_rd_addr == rs1_addr && mem_rd_addr != 0) begin
    rs1_forwarded = mem_rd_value;
  end
  else if (wb_rd_write && wb_rd_addr == rs1_addr && wb_rd_addr != 0) begin
    rs1_forwarded = wb_rd_value;
  end
  else begin
    rs1_forwarded = rs1_data;
  end
end

// rs2_forwarded
always_comb begin
  if (mem_rd_write && mem_rd_addr == rs2_addr && mem_rd_addr != 0) begin
    rs2_forwarded = mem_rd_value;
  end
  else if (wb_rd_write && wb_rd_addr == rs2_addr && wb_rd_addr != 0) begin
    rs2_forwarded = wb_rd_value;
  end
  else begin
    rs2_forwarded = rs2_data;
  end
end

// Detected csr hazard
always_comb begin
  if (mem_csr_write != CSR_WRITE_NONE || wb_csr_write != CSR_WRITE_NONE || mem_exception || wb_exception) begin
    csr_hazard_detected = 1'b1;
  end
  else begin
    csr_hazard_detected = 1'b0;
  end
end

// Detected load hazard
always_comb begin
  if (((mem_mem_op == MEMORY_TYPE_LOAD) || (mem_mem_op == MEMORY_TYPE_LOAD_UNSIGNED)) && ((alu_x_src == ALU_SRC_REG && mem_rd_addr == rs1_addr && rs1_addr != 0) || (alu_y_src == ALU_SRC_REG && mem_rd_addr == rs2_addr && rs2_addr != 0))) begin
    load_hazard_detected = 1'b1;
  end
  else begin
    load_hazard_detected = 1'b0;
  end
end

// Branch comparator
riscv_comparator pp_comparator (
              .funct3(funct3          ),
              .rs1   (rs1_forwarded   ),
              .rs2   (rs2_forwarded   ),
              .result(branch_condition));

riscv_alu pp_alu (
       .x        (alu_x     ),
       .y        (alu_y     ),
       .operation(alu_op    ),
       .result   (alu_result));

riscv_csr_alu pp_csr_alu (
           .x            (csr_value        ),
           .y            (rs1_forwarded    ),
           .immediate    (rs1_addr         ),
           .use_immediate(csr_use_immediate),
           .write_mode   (csr_write        ),
           .result       (csr_value_out    ));

endmodule
 

