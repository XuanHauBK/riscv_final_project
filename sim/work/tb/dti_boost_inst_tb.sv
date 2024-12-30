`timescale 1ns/1ns
`include "dti_global_defines.svh"
module dti_boost_inst_tb;
  parameter BAUDRATE        = `CFG_BAUDRATE;
  parameter FREQ_FPGA       = `CFG_FREQ_FPGA;
  parameter DATA_WIDTH      = `CFG_DATA_WIDTH;
  parameter DATA_BIT_WIDTH  = 8;
  parameter STOP_BIT_WIDTH  = 1;
  parameter PARITY_EN       = 0;
  parameter INST_DATA_WIDTH = `CFG_INST_DATA_WIDTH;
  parameter  APB_DATA_WIDTH = `CFG_APB_DATA_WIDTH;
  parameter  APB_ADDR_WIDTH = `CFG_APB_ADDR_WIDTH;
  parameter  APB_STRB_WIDTH = `CFG_APB_STRB_WIDTH;

  logic                              clk = 0;
  logic                              reset_n;
  logic                              rx;
  logic                              rts_n;
  logic    [INST_DATA_WIDTH-1:0]     rx_boost_inst_data_in;
  logic                              rx_boost_inst_wr_req;

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

  // Internal signals
  logic  [31:0] tx_data;
  logic  [7:0] uart_rx_data;
  logic [`CFG_APB_DATA_WIDTH-1:0] rdata;

  assign uart_rx_data = dti_boost_inst.scratch;

  dti_boost_inst dti_boost_inst(
                 .clk                  (clk),
                 .reset_n              (reset_n),
                 .rx                   (rx),
                 .rts_n                (rts_n),
                 .rx_boost_inst_data_in(rx_boost_inst_data_in),
                 .rx_boost_inst_wr_req (rx_boost_inst_wr_req));

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
                 .rx     (),
                 .rts_n  (),
                 .tx     (rx),
                 .cts_n  (rts_n),
                 .pslverr(pslverr),
                 .pready (pready),
                 .prdata (prdata));

  assign pclk = clk;
  assign presetn = reset_n;

  always #5 clk = ~clk;


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

  task tx_operation();
    repeat (100) begin
      while (1) begin
        apb_read_reg('h010, rdata);
        if (rdata[0]) begin
          // Configure UART frame
          apb_write_reg('d4,'d3);
          
          // Load TX data
          tx_data = $urandom_range(1,2**8-1);
          apb_write_reg('d0, tx_data);
          
          // Start TX
          apb_write_reg('d8,'d1);
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
  endtask : tx_operation

  // initial begin
  //   reset_n = 1'b0;
  //   penable = 1'b0;
  //   paddr   =  'b0;
  //   pwdata  =  'b0;
  //   psel    =  'b0;
  //   pwrite  =  'b0;
  //   pstrb   =  '1;
  //   repeat (3) @(posedge clk);
  //   reset_n = 1'b1;

  //   // Run tests
  //   apb_write_reg('h014, 'd1);
  //   tx_operation();
  //   apb_write_reg('h014, 0);
  //   repeat(100) @(posedge clk);
  //   $finish;
  // end

function int count_lines(string file_inst);
  integer file_handle;
  string line;
  static int line_count = 0;

  // Open file
  file_handle = $fopen(file_inst, "r");

  // Count line
  while ($fgets(line, file_handle)) begin
    line_count++;
  end

  // Close
  $fclose(file_handle);

  // count_lines = line_count;
endfunction


  int file_inst;
  string line;

  initial begin
    // Open the TXT file for reading
    file_inst = $fopen("../../script/gen_instruction_set/result.txt", "r");

    // Check if the file was opened successfully
    // if (file_inst == 0) begin
    //   $display("Error: Unable to open file result.txt");
    //   return;
    // end
    // display("size file: %d", file_inst);

    // Read lines from the file
     while ($fgets(line, file_inst)) begin
       // Process the read line (e.g., extract data, perform calculations)
        $display("Read line: %s", line);
        tx_data = line.atohex();
        $display("%0x", tx_data);
     end
    // $fgets(line, file_inst);
    // assign tx_data = logic'(line);
    // $display(tx_data);

    // Close the file
    $fclose(file_inst);
    #100;
    $finish;
  end

endmodule