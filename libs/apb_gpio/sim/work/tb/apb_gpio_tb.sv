`timescale 1ns/1ns
module apb_gpio_tb;
  parameter  GPIO_NUM        = 16;
  parameter  APB_DATA_WIDTH  = 16;
  parameter  APB_ADDR_WIDTH  = 12;

  logic                           apb_presetn;
  logic                           apb_pclk;
  logic    [APB_ADDR_WIDTH-1:0]   apb_paddr;
  logic                           apb_psel;
  logic                           apb_penable;
  logic                           apb_pwrite;
  logic    [APB_DATA_WIDTH-1:0]   apb_pwdata;
  logic                           apb_pready;
  logic    [APB_DATA_WIDTH-1:0]   apb_prdata;
  logic                           apb_pslverr;
  logic    [GPIO_NUM-1:0]         gpio_i;
  logic    [GPIO_NUM-1:0]         gpio_o;

apb_gpio apb_gpio (
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
         .gpio_i(gpio_i),
         .gpio_o(gpio_o));

initial begin
    apb_pclk = 1;
    apb_presetn = 0;
    apb_psel = 0;
    apb_penable = 0;
    #2;
    apb_presetn = 0;
    #10;
    apb_presetn = 1;
  end

  always #5 apb_pclk = ~apb_pclk;

  task write(logic [11:0] addr, logic [15:0] data);
    @(posedge apb_pclk);
    apb_psel    = 0;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = '0;
    apb_pwdata  = '0;
    @(posedge apb_pclk);
    apb_psel    = 1;
    apb_penable = 0;
    apb_pwrite  = 1;
    apb_paddr   = addr;
    apb_pwdata  = data;
    @(posedge apb_pclk);
    apb_psel    = 1;
    apb_penable = 1;
    apb_pwrite  = 1;
    @(posedge apb_pclk);
    while (apb_pready == 0) begin
      @(posedge apb_pclk);
    end
    apb_psel    = 0;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = '0;
    apb_pwdata  = '0;
  endtask 

  task read(logic [11:0] addr);
    @(posedge apb_pclk);
    apb_psel    = 0;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = '0;
    apb_pwdata  = '0;
    @(posedge apb_pclk);
    apb_psel    = 1;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = addr;
    @(posedge apb_pclk);
    apb_psel    = 1;
    apb_penable = 1;
    apb_pwrite  = 0;
    @(posedge apb_pclk);
    while (apb_pready == 0) begin
      @(posedge apb_pclk);
    end
    apb_psel    = 0;
    apb_penable = 0;
    apb_pwrite  = 0;
    apb_paddr   = '0;
  endtask 
  
  logic  [APB_DATA_WIDTH-1:0] data_ran;
  initial begin
    #100;
    repeat(10) begin
      data_ran = $random();
      write('d200, data_ran);
      repeat(2) begin
        @(posedge apb_pclk);
      end
    end
    #100;
    $finish();
  end

endmodule