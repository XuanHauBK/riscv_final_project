`include "dti_global_defines.svh"
module riscv_counter #(
  parameter COUNTER_WIDTH   = 64,
  parameter COUNTER_STEP    = 1
)
(
  input                                 clk,
  input                                 reset_n,
  input   wire                          increment,
  output  logic   [COUNTER_WIDTH-1:0]   count
);

logic [COUNTER_WIDTH-1:0]   current_count;

assign count = current_count;

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    current_count <= 0;
  end else begin
    if (increment) begin
      current_count <= current_count + COUNTER_STEP;
    end
  end
end

endmodule