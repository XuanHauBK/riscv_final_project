/*-----------------------------------------------------------------------------
*     Copyright (C) 2024 by Dolphin Technology
*     All right reserved.
*
*     Copyright Notification
*     No part may be reproduced except as authorized by written permission.
*
*     Created Date         : May 27 2024
*     File Name            : apb_timer
*     Project              : dti_apb_timer
*     Author               : hautx0
*     @Last Modified by    : hautx0
*     @Last Modified Time  : May 27 2024
*-----------------------------------------------------------------------------
*/
`include "dti_global_defines.svh"
module apb_timer #(
  parameter  APB_DATA_WIDTH  = 32,
  parameter  APB_ADDR_WIDTH  = 32
)
(
  input                                  apb_presetn,
  input                                  apb_pclk,
  input   wire    [APB_ADDR_WIDTH-1:0]   apb_paddr,
  input   wire                           apb_psel,
  input   wire                           apb_penable,
  input   wire                           apb_pwrite,
  input   wire    [APB_DATA_WIDTH-1:0]   apb_pwdata,
  output  wire                           apb_pready,
  output  logic   [APB_DATA_WIDTH-1:0]   apb_prdata,
  output  wire                           apb_pslverr,
  output  wire                           irq
);

 // @brief Simple timer module for generating periodic interrupts.

 // The following registers are defined:
 // |---------|------------------|
 // | Address | Description      |
 // |---------|------------------|
 // | 0x04    | Control register |
 // | 0x08    | Compare register |
 // |---------|------------------|

 // The bits for the control register are:
 // - 0: Run - set to '1' to enable the counter.
 // - 1: Clear - set to '1' to clear the counter after a compare interrupt or to reset it.

logic                      wack;
logic                      rack;
logic                      waddrerr;
logic                      raddrerr;
logic   [31:0]             counter;
logic   [31:0]             compare;
logic                      ctrl_run;
logic                      clear_counter;
logic                      clear_counter_update;
logic                      apb_timer_enable;

assign apb_timer_enable = (apb_paddr >= `CFG_ADDR_TIMER_MIN) & (apb_paddr <= `CFG_ADDR_TIMER_MAX);

assign irq = (counter == compare) ? 1'b1 : 1'b0;
assign clear_counter_update = clear_counter ? 1'b1 : 1'b0;

always_ff @(posedge apb_pclk or negedge apb_presetn) 
begin
  if(~apb_presetn) begin
    wack     <= 0;
    waddrerr <= 1'b0;
  end 
  else begin
    if (apb_psel & apb_pwrite & apb_penable & apb_timer_enable) begin
      wack     <= 1'b1;
      waddrerr <= 1'b0;
    end
    else begin
      wack     <= 1'b0;
      waddrerr <= 1'b0;
    end
  end
end

always_ff @(posedge apb_pclk or negedge apb_presetn) 
begin
  if(~apb_presetn) begin
    rack     <= 0;
    raddrerr <= 1'b0;
  end 
  else begin
    if (apb_psel & !apb_pwrite & apb_penable & apb_timer_enable) begin
      rack     <= 1'b1;
      raddrerr <= 1'b0;
    end
    else begin
      rack     <= 1'b0;
      raddrerr <= 1'b0;
    end
  end
end

// APB 
assign apb_pready = (apb_psel == 1'b1) ? (apb_pwrite & wack) | ((~apb_pwrite) & rack) : 1'b0;
assign apb_pslverr= (apb_psel == 1'b1) ? (apb_pwrite & waddrerr) | ((~ apb_pwrite) & raddrerr) : 1'b0;

always_ff @(posedge apb_pclk or negedge apb_presetn) 
begin
  if(~apb_presetn) begin
    counter <= 0;
  end else begin
    if (clear_counter) begin
      counter <= 0;
    end
    else if (ctrl_run && (counter != compare)) begin
      counter <= counter + 1;
    end
  end
end

always_ff @(posedge apb_pclk or negedge apb_presetn) 
begin
  if(~apb_presetn) begin
    ctrl_run <= 1'b0;
    clear_counter <= 1'b0;
    compare <= 32'hffff_ffff;
  end else begin
    case (apb_paddr) 
      `CFG_REG_TIMER_CONTROL: begin
        if (apb_pready & apb_pwrite) begin
          ctrl_run <= apb_pwdata[0];
          clear_counter <= apb_pwdata[1];
        end
        else if (clear_counter_update) begin
          clear_counter <= 1'b0;
        end
      end
      `CFG_REG_TIMER_COMPARE: begin
        if (apb_pready & apb_pwrite) begin
          compare <= apb_pwdata;
        end
      end
      default: begin
        ctrl_run <= 1'b0;
        clear_counter <= 1'b0;
        compare <= 32'hffff_ffff;
      end
    endcase
  end
end

always_comb begin
  if (apb_pready & !apb_pwrite) begin
    case (apb_paddr)
      `CFG_REG_TIMER_CONTROL: apb_prdata = {31'b0, ctrl_run};
      `CFG_REG_TIMER_COMPARE: apb_prdata = compare;
      default: apb_prdata = 0; 
    endcase
  end
  else begin
    apb_prdata = 0;
  end
end
assign irq = (counter == compare);

endmodule