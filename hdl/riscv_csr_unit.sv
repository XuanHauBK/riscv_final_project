
`include "dti_global_defines.svh"
module riscv_csr_unit #(
  parameter PROCESSOR_ID     = 32,
  parameter MTIME_DIVIDER    = 5,
  parameter TIME_DIVIDER     = 5
)
(
  input            clk,
  input            reset_n,

  // IRQ signals
  input   wire    [7:0]       irq,

  // Count retired instruction
  input   wire                count_instruction,

  // Test interface
  output  logic   [39:0]      test_context_out,

  // Read port
  input   wire    [11:0]      read_address,
  output  logic   [31:0]      read_data_out,

  // Write port
  input   wire    [11:0]      write_address,
  input   wire    [31:0]      write_data_in,
  input   wire    [1:0]       write_mode,

  // Exception context write port
  input   wire    [39:0]      exception_context,
  input   wire                exception_context_write,

  // Interrupt
  output  logic               software_interrupt_out,
  output  logic               timer_interrupt_out,

  // Register needed for exception handling, always read
  output  logic   [31:0]      mie_out,
  output  logic   [31:0]      mtvec_out,
  output  logic               ie_out,
  output  logic               ie1_out
);

`include "dti_global_parameters.svh"

// Timer clock
logic            timer_clk;
logic   [2:0]    timer_clk_counter;

// Counter
logic   [63:0]   counter_time;
logic   [63:0]   counter_cycle;
logic   [63:0]   counter_incr;

// Machine time counter
logic   [2:0]    mtime_clock_counter;
logic   [31:0]   counter_mtime;
logic   [31:0]   mtime_compare;

// Machine-mode register
logic   [5:0]    mcause;
logic   [31:0]   mbadaddr;
logic   [31:0]   mscratch;
logic   [31:0]   mepc;
logic   [31:0]   mtvec;
logic   [31:0]   mie;

// Interrupt enable bit
logic            ie;
logic            ie1;

logic   [39:0]   test_register;

// Interrupt
logic            timer_interrupt;
logic            software_interrupt;

assign software_interrupt_out = software_interrupt;
assign timer_interrupt_out = timer_interrupt;
assign ie_out = ie;
assign ie1_out = ie1;
assign mie_out = mie;
assign test_context_out = test_register;

always_ff @(posedge clk or negedge reset_n) 
begin 
  if(~reset_n) begin
    timer_clk <= 0;
    timer_clk_counter <= 0;
  end else begin
    if (timer_clk_counter == TIME_DIVIDER - 1) begin
      timer_clk_counter <= 0;
      timer_clk <= ~timer_clk;
    end
    else begin
      timer_clk_counter <= timer_clk_counter + 1;
    end
  end
end

always_ff @(posedge clk or negedge reset_n) 
begin 
  if(~reset_n) begin
    mtime_clock_counter <= 0;
    counter_mtime <= 0;
  end else begin
    if (mtime_clock_counter == MTIME_DIVIDER -1) begin
      mtime_clock_counter <= 0;
      counter_mtime <= counter_mtime + 1;
    end
    else begin
      mtime_clock_counter <= mtime_clock_counter + 1;
    end
  end
end

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    timer_interrupt <= 0;
  end else begin
    if (write_mode != CSR_WRITE_NONE & write_address == CSR_MTIMECMP) begin
      timer_interrupt <= 1'b0;
    end
    else if (counter_mtime == mtime_compare) begin
      timer_interrupt <= 1'b1;
    end
  end
end

always_ff @(posedge clk or negedge reset_n) 
begin
  if(~reset_n) begin
    software_interrupt <= 0;
    mtvec <= 0;
    mepc <= 0;
    mie <= 0;
    ie <= 0;
    ie1 <= 0;
    test_register <= 0;
  end else begin
    if (exception_context_write) begin
      ie <= exception_context[0];
      ie1 <= exception_context[1];
      mcause <= exception_context[7:2];
      mbadaddr <= exception_context[39:8];
    end
  end
end

riscv_counter timer_counter (
           .clk      (clk),
           .reset_n  (reset_n),
           .increment(1'b1),
           .count    (counter_time));

riscv_counter cycle_counter (
           .clk      (clk),
           .reset_n  (reset_n),
           .increment(1'b1),
           .count    (counter_cycle));

riscv_counter incr_counter (
           .clk      (clk),
           .reset_n  (reset_n),
           .increment(count_instruction),
           .count    (counter_incr));

endmodule


