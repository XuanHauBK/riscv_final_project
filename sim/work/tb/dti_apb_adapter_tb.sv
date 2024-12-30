`timescale 1ns/1ns
`include "dti_global_defines.svh"
module dti_apb_adapter_tb;

  logic    [31:0]  apb_prdata;
  logic            apb_pready;
  logic            apb_pslverr;
  logic            clk;
  logic    [31:0]  mem_address;
  logic    [31:0]  mem_data_in;
  logic    [1:0]   mem_data_size;
  logic            mem_read_req;
  logic            mem_write_req;
  logic            reset_n;
  logic    [31:0]  apb_paddr;
  logic            apb_penable;
  logic            apb_psel;
  logic    [31:0]  apb_pwdata;
  logic            apb_pwrite;
  logic    [31:0]  mem_data_out;
  logic            mem_read_ack;
  logic            mem_write_ack;

  dti_apb_adapter dti_apb_adapter(
                 .apb_prdata(apb_prdata),
                 .apb_pready(apb_pready),
                 .apb_pslverr(apb_pslverr),
                 .clk(clk),
                 .mem_address(mem_address),
                 .mem_data_in(mem_data_in),
                 .mem_data_size(mem_data_size),
                 .mem_read_req(mem_read_req),
                 .mem_write_req(mem_write_req),
                 .reset_n(reset_n),
                 .apb_paddr(apb_paddr),
                 .apb_penable(apb_penable),
                 .apb_psel(apb_psel),
                 .apb_pwdata(apb_pwdata),
                 .apb_pwrite(apb_pwrite),
                 .mem_data_out(mem_data_out),
                 .mem_read_ack(mem_read_ack),
                 .mem_write_ack(mem_write_ack));

  initial begin
    clk = 1;
    #2;
    reset_n = 0;
    #10;
    reset_n = 1;
  end

  always #5 clk = ~clk;

  initial begin
    mem_data_in = 0;
    mem_address = 0;
    mem_data_size = 0;
    mem_write_req = 0;
    mem_read_req = 0;
    apb_pready = 0;
    apb_prdata = 0;
    apb_pslverr = 0;
    #100;
    @(posedge clk);
    mem_data_in = 8'hab;
    mem_address = 'h100;
    mem_data_size = 2'b01;
    mem_write_req = 1'b1;
    @(posedge clk);
    mem_write_req = 1'b0;
    mem_data_in = 0;
    mem_address = 0;
    wait(apb_penable);
    apb_pready = 1'b1;
    @(posedge clk);
    apb_pready = 1'b0;
    #100;
    $finish();
  end

endmodule