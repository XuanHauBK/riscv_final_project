
`include "dti_global_defines.svh"
module riscv_fetch #(
  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH,
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH,
  parameter PC_WIDTH        = `CFG_PC_WIDTH
)
(
  input                                      clk,
  input                                      reset_n,
  input                                      boost_en,

  // Instruction memory connections
  input   wire    [INST_DATA_WIDTH-1:0]      imem_data_in,
  input   wire                               imem_ack,
  output  wire    [INST_ADDR_WIDTH-1:0]      imem_address,
  output  wire                               imem_req,

  // Control input
  input   wire                               stall,
  input   wire                               flush,
  input   wire                               branch,
  input   wire                               exception,
  input   wire    [31:0]                     branch_target,
  input   wire    [31:0]                     evec,

  // Outputs to the instruction decode
  output  wire    [INST_DATA_WIDTH-1:0]      inst_data,
  output  wire    [INST_ADDR_WIDTH-1:0]      inst_address,
  output  wire                               inst_ready
);

`include "dti_global_parameters.svh"

logic   [PC_WIDTH-1:0]      pc;
logic   [PC_WIDTH-1:0]      pc_next;
logic                       cancel_fetch;

assign imem_address = (!cancel_fetch) ? pc_next : pc;
assign inst_data = imem_data_in;
assign inst_ready = imem_ack && (!stall) && (!cancel_fetch);
assign inst_address = pc;
assign imem_req = reset_n & !boost_en;

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    pc <= 0;
    cancel_fetch <= 0;
  end 
  else begin
    if ((exception || branch) && (!imem_ack)) begin
      cancel_fetch <= 1'b1;
      pc <= pc_next;
    end
    else if (cancel_fetch && imem_ack) begin
      cancel_fetch <= 1'b0;
    end
    else begin
      pc <= pc_next;
    end
  end
end

always_comb 
begin
  if (exception) begin
    pc_next = evec;
  end
  else if (branch) begin
    pc_next = branch_target;
  end
  else if (imem_ack & (!stall) & (!cancel_fetch)) begin
    pc_next = pc + 4;
  end
  else begin
    pc_next = pc;
  end
end

endmodule



