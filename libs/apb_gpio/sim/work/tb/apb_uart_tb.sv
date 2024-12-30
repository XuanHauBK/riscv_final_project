`timescale 1ns/1ns
`include "dti_global_defines.svh"
module apb_uart_tb;
  parameter  DATA_WIDTH      = `CFG_DATA_WIDTH;
  parameter  APB_DATA_WIDTH  = `CFG_APB_DATA_WIDTH;
  parameter  APB_ADDR_WIDTH  = `CFG_APB_ADDR_WIDTH;

  logic                            apb_presetn;
  logic                            apb_pclk;
  logic     [APB_ADDR_WIDTH-1:0]   apb_paddr;
  logic                            apb_psel;
  logic                            apb_penable;
  logic                            apb_pwrite;
  logic     [APB_DATA_WIDTH-1:0]   apb_pwdata;
  logic                            apb_pready;
  logic     [APB_DATA_WIDTH-1:0]   apb_prdata;
  logic                            apb_pslverr;
  logic                            clk;
  logic                            reset_n;
  logic                            cts_n;
  logic                            tx;
  logic                            rx;
  logic                            rts_n;

  apb_uart apb_uart (
           .apb_presetn(apb_presetn),
           .apb_pclk(apb_pclk),
           .apb_paddr(apb_paddr),
           .apb_psel(apb_psel),
           .apb_penable(apb_penable),
           .apb_pwrite(apb_pwrite),
           .apb_pwdata(apb_pwdata),
           .apb_pready(apb_pready),
           .apb_prdata(apb_prdata),
           .apb_pslverr(apb_pslverr),
           .clk(clk),
           .reset_n(reset_n),
           .cts_n(cts_n),
           .tx(tx),
           .rx(rx),
           .rts_n(rts_n));

  assign apb_pclk = clk;
  assign apb_presetn = reset_n;

  initial begin
    clk = 1;
    cts_n = 0;
    rx = 1;
    apb_psel = 0;
    apb_penable = 0;
    #2;
    reset_n = 0;
    #10;
    reset_n = 1;
  end

  always #5 clk = ~clk;

  task write(logic [11:0] addr, logic [7:0] data);
    @(posedge clk);
    apb_psel    = 0;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = '0;
    apb_pwdata  = '0;
    @(posedge clk);
    apb_psel    = 1;
    apb_penable = 0;
    apb_pwrite  = 1;
    apb_paddr   = addr;
    apb_pwdata  = data;
    @(posedge clk);
    apb_psel    = 1;
    apb_penable = 1;
    apb_pwrite  = 1;
    @(posedge clk);
    while (apb_pready == 0) begin
      @(posedge clk);
    end
    apb_psel    = 0;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = '0;
    apb_pwdata  = '0;
  endtask 

  task read(logic [11:0] addr);
    @(posedge clk);
    apb_psel    = 0;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = '0;
    apb_pwdata  = '0;
    @(posedge clk);
    apb_psel    = 1;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = addr;
    @(posedge clk);
    apb_psel    = 1;
    apb_penable = 1;
    apb_pwrite  = 0;
    @(posedge clk);
    while (apb_pready == 0) begin
      @(posedge clk);
    end
    apb_psel    = 0;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = '0;
  endtask 

  initial begin
    #100;
    write('d20, 'hab);
    #100000;
    $finish;
  end

endmodule