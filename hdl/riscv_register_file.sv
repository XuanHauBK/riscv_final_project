`include "dti_global_defines.svh"
module riscv_register_file(
  input                     clk,
  input                     reset_n,
  input   wire    [4:0]     rs1_addr,
  output  wire    [31:0]    rs1_data,
  input   wire    [4:0]     rs2_addr,
  output  wire    [31:0]    rs2_data,
  input   wire    [4:0]     rd_addr,
  input   wire    [31:0]    rd_data,
  input   wire              rd_write
);

`include "dti_global_parameters.svh"

logic   [31:0][31:0]    regfile;
logic   [4:0]           rs1_addr_temp;
logic   [4:0]           rs2_addr_temp;

always_ff @(posedge clk or negedge reset_n) 
begin 
  if(~reset_n) begin
    regfile <= 0;
  end 
  else begin
    if (rd_write && (rd_addr != 0)) begin
      regfile[rd_addr] <= rd_data;
    end
    rs1_addr_temp <= rs1_addr;
    rs2_addr_temp <= rs2_addr;
  end
end

assign rs1_data = regfile[rs1_addr_temp];
assign rs2_data = regfile[rs2_addr_temp];

endmodule