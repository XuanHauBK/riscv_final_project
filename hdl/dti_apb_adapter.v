//------------------------------------------------------------------------------------------------------------------
//    Copyright (C) 2024 by Dolphin Technology
//    All right reserved.
//
//    Copyright Notification
//    No part may be reproduced except as authorized by written permission.
//
//    Module: dti_riscv_lib.dti_apb_adapter
//    Company: Dolphin Technology
//    Project: 
//    Author: hautx0
//    Date: 15:43:31 - 06/07/24
//----------------------------------------------------------------------------------------------------------------
`include "dti_global_defines.svh"
module dti_apb_adapter( 
  // Port Declarations
  input   wire    [31:0]  apb_prdata, 
  input   wire            apb_pready, 
  input   wire            apb_pslverr, 
  input   wire            clk, 
  input   wire    [31:0]  mem_address, 
  input   wire    [31:0]  mem_data_in, 
  input   wire    [1:0]   mem_data_size, 
  input   wire            mem_read_req, 
  input   wire            mem_write_req, 
  input   wire            reset_n, 
  output  reg     [31:0]  apb_paddr, 
  output  reg             apb_penable, 
  output  reg             apb_psel, 
  output  reg     [31:0]  apb_pwdata, 
  output  reg             apb_pwrite, 
  output  reg     [31:0]  mem_data_out, 
  output  wire            mem_read_ack, 
  output  wire            mem_write_ack
);

`include "dti_global_parameters.svh"
// Internal Declarations


// Declare any pre-registered internal signals
reg [31:0] apb_paddr_cld;
reg        apb_penable_cld;
reg        apb_psel_cld;
reg [31:0] apb_pwdata_cld;
reg        apb_pwrite_cld;
reg [31:0] mem_data_out_cld;

// Module Declarations
reg [31:0] mem_data;  

// State encoding
parameter 
          ST_IDLE   = 2'd0,
          ST_SETUP  = 2'd1,
          ST_ACCESS = 2'd2;

reg [1:0] current_state, next_state;

assign mem_write_ack = (current_state == ST_ACCESS) & apb_pready & apb_pwrite;
assign mem_read_ack = (current_state == ST_ACCESS) & apb_pready & (!apb_pwrite);

always @ (*) begin
  case(mem_data_size)
    2'b00: begin
      mem_data = {24'b0, mem_data_in};
    end
    2'b01: begin
     mem_data = {16'b0, mem_data_in};
    end
    2'b10: begin
     mem_data = mem_data_in;
    end
    default: begin
      mem_data = mem_data_in;
    end
  endcase
end

//-----------------------------------------------------------------
// Next State Block for machine csm
//-----------------------------------------------------------------
always @ *
begin : next_state_block_proc
  case (current_state) 
    ST_IDLE: begin
      if (mem_write_req || mem_read_req)
        next_state = ST_SETUP;
      else
        next_state = ST_IDLE;
    end
    ST_SETUP: begin
      if (apb_psel_cld)
        next_state = ST_ACCESS;
      else
        next_state = ST_SETUP;
    end
    ST_ACCESS: begin
      if (apb_pready & (mem_write_req || mem_read_req))
        next_state = ST_SETUP;
      else if (apb_pready)
        next_state = ST_IDLE;
      else
        next_state = ST_ACCESS;
    end
    default: 
      next_state = ST_IDLE;
  endcase
end // Next State Block

//-----------------------------------------------------------------
// Clocked Block for machine csm
//-----------------------------------------------------------------
always @(
  posedge clk, 
  negedge reset_n
) 
begin : clocked_block_proc
  if (!reset_n) begin
    current_state <= ST_IDLE;
    // Reset Values
    apb_paddr_cld <= 0;
    apb_penable_cld <= 0;
    apb_psel_cld <= 0;
    apb_pwdata_cld <= 0;
    apb_pwrite_cld <= 0;
    mem_data_out_cld <= 0;
  end
  else 
  begin
    current_state <= next_state;

    // Combined Actions
    case (current_state) 
      ST_IDLE: begin
        if (mem_write_req || mem_read_req) begin
          apb_psel_cld <= 1'b1;
          apb_paddr_cld <= mem_address;
          apb_pwrite_cld <= mem_write_req;
          if (mem_write_req) begin
            apb_pwdata_cld <= mem_data; 
          end
        end
      end
      ST_SETUP: begin
        if (apb_psel_cld)
          apb_penable_cld <= 1'b1;
      end
      ST_ACCESS: begin
        if (apb_pready & (mem_write_req || mem_read_req)) begin
          apb_psel_cld <= 1'b1;
          apb_paddr_cld <= mem_address;
          apb_pwrite_cld <= mem_write_req;
          if (mem_write_req) begin
            apb_pwdata_cld <= mem_data; 
          end
          apb_penable_cld <= 1'b0;
          if (!apb_pwrite_cld) begin
            mem_data_out_cld <= apb_prdata;
          end
        end
        else if (apb_pready) begin
          apb_penable_cld <= 1'b0;
          apb_psel_cld <= 1'b0;
          apb_pwrite_cld <= 0;
        end
      end
      default: begin
        apb_penable_cld <= 1'b0;
        apb_psel_cld <= 1'b0;
      end
    endcase
  end
end // Clocked Block

// Concurrent Statements
// Clocked output assignments
always @ *
begin : clocked_output_proc
  apb_paddr = apb_paddr_cld;
  apb_penable = apb_penable_cld;
  apb_psel = apb_psel_cld;
  apb_pwdata = apb_pwdata_cld;
  apb_pwrite = apb_pwrite_cld;
  mem_data_out = mem_data_out_cld;
end
endmodule // dti_apb_adapter
