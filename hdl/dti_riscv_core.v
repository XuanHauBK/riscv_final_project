//------------------------------------------------------------------------------------------------------------------
//    Copyright (C) 2024 by Dolphin Technology
//    All right reserved.
//
//    Copyright Notification
//    No part may be reproduced except as authorized by written permission.
//
//    Module: dti_riscv_lib.dti_riscv_core
//    Company: Dolphin Technology
//    Project: 
//    Author: hautx0
//    Date: 11:13:37 - 12/16/24
//----------------------------------------------------------------------------------------------------------------
`include "dti_global_defines.svh"
module dti_riscv_core #(
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH,
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH,
  parameter PC_WIDTH        = `CFG_PC_WIDTH,
  parameter REG_ADDR_WIDTH  = `CFG_REG_ADDR_WIDTH,
  parameter CSR_ADDR_WIDTH  = `CFG_CSR_ADDR_WIDTH
)
( 
  // Port Declarations
  input   wire                             boost_en, 
  input   wire                             clk, 
  input   wire    [31:0]                   dmem_data_in, 
  input   wire                             dmem_read_ack, 
  input   wire                             dmem_write_ack, 
  input   wire                             imem_ack, 
  input   wire    [INST_DATA_WIDTH - 1:0]  imem_data_in, 
  input   wire    [7:0]                    irq, 
  input   wire                             reset_n, 
  output  wire    [INST_ADDR_WIDTH - 1:0]  dmem_address, 
  output  wire    [INST_DATA_WIDTH - 1:0]  dmem_data_out, 
  output  wire    [1:0]                    dmem_data_size, 
  output  wire                             dmem_read_req, 
  output  wire                             dmem_write_req, 
  output  wire    [INST_ADDR_WIDTH - 1:0]  imem_address, 
  output  wire                             imem_req, 
  output  wire    [39:0]                   test_context_out
);

`include "dti_global_parameters.svh"
// Internal Declarations


// Local declarations

// Internal signal declarations
wire  [3:0]                   alu_op_id;
wire  [2:0]                   alu_x_src_id;
wire  [2:0]                   alu_y_src_id;
wire  [2:0]                   branch_ex;
wire  [2:0]                   branch_id;
wire                          branch_taken;
wire  [31:0]                  branch_target;
wire                          count_inst_id;
wire                          count_instruction_ex;
wire                          count_instruction_mem;
wire                          count_instruction_wb;
wire  [11:0]                  csr_addr_ex;
wire  [CSR_ADDR_WIDTH - 1:0]  csr_addr_id;
wire  [11:0]                  csr_addr_in;
wire  [11:0]                  csr_addr_mem;
wire  [11:0]                  csr_addr_wb;
wire  [31:0]                  csr_data_ex;
wire  [31:0]                  csr_data_mem;
wire  [31:0]                  csr_data_wb;
wire                          csr_use_imm_id;
wire                          csr_use_immediate_in;
wire  [31:0]                  csr_value_ex;
wire  [31:0]                  csr_value_in;
wire  [1:0]                   csr_write_ex;
wire  [1:0]                   csr_write_id;
wire  [1:0]                   csr_write_mem;
wire  [1:0]                   csr_write_wb;
wire  [2:0]                   decode_exception_cause_id;
wire                          decode_exception_id;
wire  [INST_ADDR_WIDTH - 1:0] dmem_address_ex;
reg   [INST_ADDR_WIDTH - 1:0] dmem_address_p;
wire  [INST_DATA_WIDTH - 1:0] dmem_data_out_ex;
reg   [INST_DATA_WIDTH - 1:0] dmem_data_out_p;
wire  [1:0]                   dmem_data_size_ex;
reg   [1:0]                   dmem_data_size_p;
wire                          dmem_read_req_ex;
reg                           dmem_read_req_p;
wire                          dmem_write_req_ex;
reg                           dmem_write_req_p;
wire  [31:0]                  evec;
wire  [39:0]                  exception_context_ex;
wire  [39:0]                  exception_context_mem;
wire  [39:0]                  exception_context_wb;
wire                          exception_mem;
wire                          exception_taken;
wire  [31:0]                  exception_target;
wire                          exception_wb;
wire                          flush;
wire  [2:0]                   funct3_id;
wire                          hazard_detected;
wire                          ie;
wire                          ie1;
wire                          ie1_in;
wire                          ie_in;
wire  [INST_DATA_WIDTH - 1:0] immediate_id;
wire  [INST_ADDR_WIDTH - 1:0] inst_address;
wire  [INST_DATA_WIDTH - 1:0] inst_data;
wire                          inst_ready;
wire  [2:0]                   mem_op_ex;
wire  [2:0]                   mem_op_id;
wire  [2:0]                   mem_op_mem;
wire  [1:0]                   mem_size_ex;
wire  [1:0]                   mem_size_id;
wire  [31:0]                  mie;
wire  [31:0]                  mie_in;
wire  [31:0]                  mtvec;
wire  [31:0]                  mtvec_in;
wire  [31:0]                  pc_ex;
wire  [31:0]                  pc_id;
wire  [REG_ADDR_WIDTH - 1:0]  rd_addr_ex;
wire  [4:0]                   rd_addr_id;
wire  [REG_ADDR_WIDTH - 1:0]  rd_addr_mem;
wire  [REG_ADDR_WIDTH - 1:0]  rd_addr_wb;
wire  [31:0]                  rd_data_ex;
wire  [31:0]                  rd_data_mem;
wire  [31:0]                  rd_data_wb;
wire                          rd_write_ex;
wire                          rd_write_id;
wire                          rd_write_mem;
wire                          rd_write_wb;
wire  [11:0]                  read_address_csr;
reg   [CSR_ADDR_WIDTH - 1:0]  read_address_csr_p;
wire  [31:0]                  read_data_csr;
wire  [4:0]                   rs1_addr_id;
wire  [4:0]                   rs1_address;
reg   [4:0]                   rs1_address_p;
wire  [31:0]                  rs1_data;
wire  [4:0]                   rs2_addr_id;
wire  [4:0]                   rs2_address;
reg   [4:0]                   rs2_address_p;
wire  [31:0]                  rs2_data;
wire  [4:0]                   shamt_id;
wire                          software_interrupt;
wire                          stall;
wire                          stall_mem;
wire                          timer_interrupt;


// Instances 
riscv_csr_unit riscv_csr_unit( 
  .clk                     (clk), 
  .reset_n                 (reset_n), 
  .irq                     (irq), 
  .count_instruction       (count_instruction_wb), 
  .test_context_out        (test_context_out), 
  .read_address            (read_address_csr), 
  .read_data_out           (read_data_csr), 
  .write_address           (csr_addr_wb), 
  .write_data_in           (csr_data_wb), 
  .write_mode              (csr_write_wb), 
  .exception_context       (exception_context_wb), 
  .exception_context_write (exception_wb), 
  .software_interrupt_out  (software_interrupt), 
  .timer_interrupt_out     (timer_interrupt), 
  .mie_out                 (mie), 
  .mtvec_out               (mtvec), 
  .ie_out                  (ie), 
  .ie1_out                 (ie1)
); 

riscv_decode riscv_decode( 
  .clk                    (clk), 
  .reset_n                (reset_n), 
  .flush                  (flush), 
  .stall                  (stall), 
  .inst_data              (inst_data), 
  .inst_address           (inst_address), 
  .inst_ready             (inst_ready), 
  .inst_count             (inst_ready), 
  .rs1_addr               (rs1_addr_id), 
  .rs2_addr               (rs2_addr_id), 
  .rd_addr                (rd_addr_id), 
  .csr_addr               (csr_addr_id), 
  .shamt                  (shamt_id), 
  .funct3                 (funct3_id), 
  .immediate              (immediate_id), 
  .rd_write               (rd_write_id), 
  .branch                 (branch_id), 
  .alu_x_src              (alu_x_src_id), 
  .alu_y_src              (alu_y_src_id), 
  .alu_op                 (alu_op_id), 
  .mem_op                 (mem_op_id), 
  .mem_size               (mem_size_id), 
  .count_inst             (count_inst_id), 
  .pc                     (pc_id), 
  .csr_write              (csr_write_id), 
  .csr_use_imm            (csr_use_imm_id), 
  .decode_exception       (decode_exception_id), 
  .decode_exception_cause (decode_exception_cause_id)
); 

riscv_execute riscv_execute( 
  .clk                       (clk), 
  .reset_n                   (reset_n), 
  .stall                     (stall), 
  .flush                     (flush), 
  .irq                       (irq), 
  .timer_interrupt           (timer_interrupt), 
  .software_interrupt        (software_interrupt), 
  .dmem_address              (dmem_address_ex), 
  .dmem_data_out             (dmem_data_out_ex), 
  .dmem_data_size            (dmem_data_size_ex), 
  .dmem_read_req             (dmem_read_req_ex), 
  .dmem_write_req            (dmem_write_req_ex), 
  .rs1_addr_in               (rs1_address), 
  .rs2_addr_in               (rs2_address), 
  .rd_addr_in                (rd_addr_id), 
  .rd_addr_out               (rd_addr_ex), 
  .rs1_data_in               (rs1_data), 
  .rs2_data_in               (rs2_data), 
  .rd_data_out               (rd_data_ex), 
  .shamt_in                  (shamt_id), 
  .immediate_in              (immediate_id), 
  .pc_in                     (pc_id), 
  .pc_out                    (pc_ex), 
  .funct3_in                 (funct3_id), 
  .csr_addr_in               (csr_addr_in), 
  .csr_addr_out              (csr_addr_ex), 
  .csr_write_in              (csr_write_id), 
  .csr_write_out             (csr_write_ex), 
  .csr_value_in              (csr_value_in), 
  .csr_value_out             (csr_value_ex), 
  .csr_use_immediate_in      (csr_use_immediate_in), 
  .alu_x_src_in              (alu_x_src_id), 
  .alu_y_src_in              (alu_y_src_id), 
  .alu_op_in                 (alu_op_id), 
  .rd_write_in               (rd_write_id), 
  .rd_write_out              (rd_write_ex), 
  .branch_in                 (branch_id), 
  .branch_out                (branch_ex), 
  .mem_op_in                 (mem_op_id), 
  .mem_op_out                (mem_op_ex), 
  .mem_size_in               (mem_size_id), 
  .mem_size_out              (mem_size_ex), 
  .count_instruction_in      (count_inst_id), 
  .count_instruction_out     (count_instruction_ex), 
  .ie_in                     (ie_in), 
  .ie1_in                    (ie1_in), 
  .mie_in                    (mie_in), 
  .mtvec_in                  (mtvec_in), 
  .mtvec_out                 (exception_target), 
  .decode_exception_in       (decode_exception_id), 
  .decode_exception_cause_in (decode_exception_cause_id), 
  .exception_out             (exception_taken), 
  .exception_context_out     (exception_context_ex), 
  .jump_out                  (branch_taken), 
  .jump_target_out           (branch_target), 
  .mem_rd_write              (rd_write_mem), 
  .mem_rd_addr               (rd_addr_mem), 
  .mem_rd_value              (rd_data_mem), 
  .mem_csr_addr              (csr_addr_mem), 
  .mem_csr_write             (csr_write_mem), 
  .mem_exception             (exception_mem), 
  .wb_rd_write               (rd_write_wb), 
  .wb_rd_addr                (rd_addr_wb), 
  .wb_rd_value               (rd_data_wb), 
  .wb_csr_addr               (csr_addr_wb), 
  .wb_csr_write              (csr_write_wb), 
  .wb_exception              (exception_wb), 
  .mem_mem_op                (mem_op_mem), 
  .hazard_detected           (hazard_detected)
); 

riscv_fetch riscv_fetch( 
  .clk           (clk), 
  .reset_n       (reset_n), 
  .boost_en      (boost_en), 
  .imem_data_in  (imem_data_in), 
  .imem_ack      (imem_ack), 
  .imem_address  (imem_address), 
  .imem_req      (imem_req), 
  .stall         (stall), 
  .flush         (flush), 
  .branch        (branch_taken), 
  .exception     (exception_taken), 
  .branch_target (branch_target), 
  .evec          (evec), 
  .inst_data     (inst_data), 
  .inst_address  (inst_address), 
  .inst_ready    (inst_ready)
); 

riscv_memory riscv_memory( 
  .clk                   (clk), 
  .reset_n               (reset_n), 
  .stall                 (stall_mem), 
  .dmem_read_ack         (dmem_read_ack), 
  .dmem_write_ack        (dmem_write_ack), 
  .dmem_data_in          (dmem_data_in), 
  .pc                    (pc_ex), 
  .rd_write_in           (rd_write_ex), 
  .rd_data_in            (rd_data_ex), 
  .rd_addr_in            (rd_addr_ex), 
  .rd_write_out          (rd_write_mem), 
  .rd_data_out           (rd_data_mem), 
  .rd_addr_out           (rd_addr_mem), 
  .branch                (branch_ex), 
  .mem_op_in             (mem_op_ex), 
  .mem_size_in           (mem_size_ex), 
  .mem_op_out            (mem_op_mem), 
  .count_instruction_in  (count_instruction_ex), 
  .count_instruction_out (count_instruction_mem), 
  .exception_in          (exception_taken), 
  .exception_context_in  (exception_context_ex), 
  .exception_out         (exception_mem), 
  .exception_context_out (exception_context_mem), 
  .csr_addr_in           (csr_addr_ex), 
  .csr_addr_out          (csr_addr_mem), 
  .csr_write_in          (csr_write_ex), 
  .csr_write_out         (csr_write_mem), 
  .csr_data_in           (csr_data_ex), 
  .csr_data_out          (csr_data_mem)
); 

riscv_register_file riscv_register_file( 
  .clk      (clk), 
  .reset_n  (reset_n), 
  .rs1_addr (rs1_address), 
  .rs1_data (rs1_data), 
  .rs2_addr (rs2_address), 
  .rs2_data (rs2_data), 
  .rd_addr  (rd_addr_wb), 
  .rd_data  (rd_data_wb), 
  .rd_write (rd_write_wb)
); 

riscv_writeback riscv_writeback( 
  .clk                   (clk), 
  .reset_n               (reset_n), 
  .count_instruction_in  (count_instruction_mem), 
  .count_instruction_out (count_instruction_wb), 
  .exception_in          (exception_mem), 
  .exception_context_in  (exception_context_mem), 
  .exception_out         (exception_wb), 
  .exception_context_out (exception_context_wb), 
  .csr_addr_in           (csr_addr_mem), 
  .csr_addr_out          (csr_addr_wb), 
  .csr_write_in          (csr_write_mem), 
  .csr_write_out         (csr_write_wb), 
  .csr_data_in           (csr_data_mem), 
  .csr_data_out          (csr_data_wb), 
  .rd_write_in           (rd_write_mem), 
  .rd_data_in            (rd_data_mem), 
  .rd_addr_in            (rd_addr_mem), 
  .rd_write_out          (rd_write_wb), 
  .rd_data_out           (rd_data_wb), 
  .rd_addr_out           (rd_addr_wb)
); 

// HDL Embedded Text Block 1 eb1
// eb1 1                                        
assign stall_mem = (((mem_op_mem == MEMORY_TYPE_LOAD) || (mem_op_mem == MEMORY_TYPE_LOAD_UNSIGNED)) & !dmem_read_ack) ||
                   ((mem_op_mem == MEMORY_TYPE_STORE) & !dmem_write_ack);

assign flush = (branch_taken || exception_taken) & (!stall);

assign stall = hazard_detected || stall_mem;

assign read_address_csr = (!stall) ? csr_addr_id : read_address_csr_p;

always @(posedge clk, negedge reset_n) begin
  if (reset_n) begin
    read_address_csr_p <= 0;
  end
  else begin
    if (!stall) begin
      read_address_csr_p <= csr_addr_id;
    end
  end
end

assign rs1_address = (!stall) ? rs1_addr_id : rs1_address_p;
assign rs2_address = (!stall) ? rs2_addr_id : rs2_address_p;

always @(posedge clk, negedge reset_n) begin
  if (reset_n) begin
    rs1_address_p <= 0;
    rs2_address_p <= 0;
  end
  else begin
    if (!stall) begin
      rs1_address_p <= rs1_addr_id;
      rs2_address_p <= rs2_addr_id;
    end
  end
end

// HDL Embedded Text Block 2 eb2
// eb2 2                                        
assign dmem_address = (!stall_mem) ? dmem_address_ex : dmem_address_p;
assign dmem_data_size = (!stall_mem) ? dmem_data_size_ex : dmem_data_size_p;
assign dmem_data_out = (!stall_mem) ? dmem_data_out_ex : dmem_data_out_p;
assign dmem_read_req = (!stall_mem) ? dmem_read_req_ex : dmem_read_req_p;
assign dmem_write_req = (!stall_mem) ? dmem_write_req_ex : dmem_write_req_p;

always @(posedge clk, negedge reset_n) begin
  if (reset_n) begin
    dmem_address_p <= 0;
    dmem_data_size_p <= 0;
    dmem_data_out_p <= 0;
    dmem_read_req_p <= 0;
    dmem_write_req_p <= 0;
  end
  else begin
    if (!stall_mem) begin
      dmem_address_p <= dmem_address_ex;
      dmem_data_size_p <= dmem_data_size_ex;
      dmem_data_out_p <= dmem_data_out_ex;
      dmem_read_req_p <= dmem_read_req_ex;
      dmem_write_req_p <= dmem_write_req_ex;
    end
  end
end

endmodule // dti_riscv_core

