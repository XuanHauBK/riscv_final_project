`timescale 1ns/1ns
`include "dti_global_defines.svh"
module dti_riscv_tb;

  parameter INST_ADDR_WIDTH = `CFG_INST_ADDR_WIDTH;
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH;
  parameter PC_WIDTH        = `CFG_PC_WIDTH;
  parameter REG_ADDR_WIDTH  = `CFG_REG_ADDR_WIDTH;
  parameter CSR_ADDR_WIDTH  = `CFG_CSR_ADDR_WIDTH;
  parameter GPIO_NUM        = `CFG_GPIO_NUM;
  parameter  APB_DATA_WIDTH = `CFG_APB_DATA_WIDTH;
  parameter  APB_ADDR_WIDTH = `CFG_APB_ADDR_WIDTH;
  parameter  APB_STRB_WIDTH = `CFG_APB_STRB_WIDTH;

  logic                      apb_pclk;
  logic                      apb_presetn;
  logic                      boost_en;
  logic                      rts_n_boost;
  logic                      clk = 0;
  logic                      clk_uart;
  logic                      cts_n = 0;
  logic    [GPIO_NUM - 1:0]  gpio_i;
  logic                      reset_n;
  logic                      rx;
  logic                      rx_boost;
  logic    [GPIO_NUM - 1:0]  gpio_o;
  logic                      rts_n;
  logic    [39:0]            test_context_out;
  logic                      tx;

  logic                              pclk;
  logic                              presetn;
  logic                              psel;
  logic                              penable;
  logic                              pwrite;
  logic    [APB_ADDR_WIDTH-1:0]      paddr;
  logic    [APB_STRB_WIDTH-1:0]      pstrb;
  logic    [APB_DATA_WIDTH-1:0]      pwdata;
  logic                              pready;
  logic                              pslverr;
  logic    [APB_DATA_WIDTH-1:0]      prdata;

  dti_riscv dti_riscv (
           .apb_pclk        (apb_pclk),
           .apb_presetn     (apb_presetn),
           .boost_en        (boost_en),
           .clk             (clk),
           .clk_uart        (clk_uart),
           .cts_n           (cts_n),
           .gpio_i          (gpio_i),
           .reset_n         (reset_n),
           .rx              (rx),
           .rx_boost        (rx_boost),
           .rts_n_boost     (rts_n_boost),
           .gpio_o          (gpio_o),
           .rts_n           (rts_n),
           .test_context_out(test_context_out),
           .tx              (tx));

  dti_uart dti_uart (
                 .clk    (clk),
                 .reset_n(reset_n),
                 .pclk   (pclk),
                 .presetn(presetn),
                 .psel   (psel),
                 .penable(penable),
                 .pwrite (pwrite),
                 .paddr  (paddr),
                 .pstrb  (pstrb),
                 .pwdata (pwdata),
                 .boost_en(boost_en),
                 .rx     (),
                 .rts_n  (),
                 .tx     (rx_boost),
                 .cts_n  (rts_n_boost),
                 .pslverr(pslverr),
                 .pready (pready),
                 .prdata (prdata));
  
  assign pclk = clk;
  assign apb_pclk = clk;
  assign clk_uart = clk;
  assign apb_presetn = reset_n;
  assign presetn = reset_n;

  always #5 clk = ~clk;
  
    // Internal signals
  logic  [7:0] tx_data;
  logic  [7:0] uart_rx_data;
  logic [`CFG_APB_DATA_WIDTH-1:0] rdata;
  logic [3:0][7:0]  instruction_data;
  logic [31:0] instruction_data_unpacked;

  assign uart_rx_data = dti_riscv.dti_boost_inst.scratch;
  
  // Tasks implemeting test
  task apb_write_reg( logic [`CFG_APB_ADDR_WIDTH-1:0] waddr,
                      logic [`CFG_APB_DATA_WIDTH-1:0] wdata);
    // Setup phase
    @(posedge clk) begin
      psel    <= 1'b1;
      pwrite  <= 1'b1;
      penable <= 1'b0;
      paddr   <= waddr;
      pwdata  <= wdata;
    end

    // Access phase
    @(posedge clk) begin
      penable <= 1'b1;
    end

    while (1) begin
      @(posedge clk) begin
        if (pready) begin
          psel    <= 1'b0;
          pwrite  <= 1'b0;
          penable <= 1'b0;
          pwdata  <=  'b0;
          paddr   <=  'b0;
          break;
        end
      end
    end
  endtask : apb_write_reg

  task automatic apb_read_reg(  logic [`CFG_APB_ADDR_WIDTH-1:0] raddr,
                                ref logic [`CFG_APB_DATA_WIDTH-1:0] rdata);
    // Setup phase
    @(posedge clk) begin
      psel    <= 1'b1;
      pwrite  <= 1'b0;
      penable <= 1'b0;
      pwdata  <=  'b0;
      paddr   <= raddr;
    end

    // Access phase
    @(posedge clk) begin
      penable <= 1'b1;
    end

    while (1) begin
      @(posedge clk) begin
        if (pready) begin
          psel    <= 1'b0;
          pwrite  <= 1'b0;
          penable <= 1'b0;
          pwdata  <=  'b0;
          paddr   <=  'b0;
          rdata    = prdata;
          break;
        end
      end
    end
  endtask : apb_read_reg

  // function int count_lines(string file_inst);
  //   integer file_handle;
  //   string line;
  //   static int line_count = 0;

  //   // Open file
  //   file_handle = $fopen(file_inst,"r");

  //   // Count line
  //   while($fgetc(line, file_handle)) begin
  //     line_count++;
  //   end

  //   // Close
  //   $fclose(file_handle);

  //   count_lines = line_count;
  // endfunction

  int file_inst;
  string line;

  task tx_operation();
    file_inst = $fopen("../../script/gen_instruction_set/result.txt", "r");
    while ($fgets(line, file_inst)) begin
      $display("Read line: %s", line);
      instruction_data_unpacked = line.atohex();
      instruction_data = instruction_data_unpacked;
      for (int i = 0; i < 4; i++) begin
        while(1) begin
          apb_read_reg('h010, rdata);
          if (rdata[0]) begin
            // Configure UART frame
            apb_write_reg('d4, 'd3);

            // Load TX data
            tx_data = instruction_data[i];
            apb_write_reg('d0, tx_data);

            // Start TX
            apb_write_reg('d8, 'd1);
            break;
          end
        end

        // Wait for TX transmission done
        while (1) begin
          apb_read_reg('h010, rdata);
          if (rdata[0]) begin
            break;
          end
        end

        // Compare result
        if (tx_data == uart_rx_data) begin
          $display("[%0t] TX TRUE", $time());
        end
        else begin
          $display("[%0t] TX FALSE", $time());
        end
      end
    end
  endtask : tx_operation

  initial begin
    reset_n = 1'b0;
    penable = 1'b0;
    paddr   =  'b0;
    pwdata  =  'b0;
    psel    =  'b0;
    pwrite  =  'b0;
    pstrb   =  '1;
    repeat (3) @(posedge clk);
    reset_n = 1'b1;

    // Run tests
    apb_write_reg('h014, 'd1);
    tx_operation();
    while(1) begin
      apb_read_reg('h010, rdata);
      if (rdata[0]) begin
        break;
      end
    end
    apb_write_reg('h014, 0);
    repeat(100000) @(posedge clk);
    $finish;
  end

endmodule