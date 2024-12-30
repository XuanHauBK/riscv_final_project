`include "dti_global_defines.svh"

module dti_uart_tb ();
  logic                             clk = 0;
  logic                             reset_n;
  
  // APB signals
  logic                             pclk;
  logic                             presetn;
  logic                             psel;
  logic                             penable;
  logic                             pwrite;
  logic   [`CFG_APB_ADDR_WIDTH-1:0] paddr;
  logic   [`CFG_APB_STRB_WIDTH-1:0] pstrb;
  logic   [`CFG_APB_DATA_WIDTH-1:0] pwdata;
  logic   [`CFG_APB_DATA_WIDTH-1:0] prdata;
  logic                             pready;
  logic                             pslverr;
  
  // UART signals
  logic                             rx;
  logic                             cts_n;
  logic                             tx;
  logic                             rts_n;

  // Model signals
  logic       uart_txd;   
  logic       uart_tx_busy;
  logic       uart_tx_en   = 0;
  logic [7:0] uart_tx_data = 0;

  logic       uart_rxd;
  logic       uart_rx_en   = 0;
  logic       uart_rx_break;
  logic       uart_rx_valid;
  logic [7:0] uart_rx_data;

  // Internal signals
  logic [`CFG_APB_DATA_WIDTH-1:0] rdata;
  logic [`CFG_APB_DATA_WIDTH-1:0] rdata_rx_opr;
  logic [7:0] tx_data ;
  logic [7:0] tx_data_model;

  // Clock generator
  always #5 clk = ~clk;
  
  // Signals Assignment  
  assign pclk         = clk;
  assign presetn      = reset_n;
  assign uart_rxd     = tx;
  assign rx           = uart_txd;

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

  // DUT Instance
  dti_uart #(
  ) dut (
    .clk    (clk),
    .reset_n(reset_n),
    .penable(penable),
    .paddr  (paddr),
    .pwdata (pwdata),
    .psel   (psel),
    .pwrite (pwrite),
    .pclk   (pclk),
    .pready (pready),
    .presetn(presetn),
    .rx     (rx),
    .tx     (tx),
    .cts_n  (cts_n),
    .pstrb  (pstrb),
    .rts_n  (rts_n),
    .prdata (prdata),
    .pslverr(pslverr)
  );

  // Model
  uart_tx tx_model (
    .clk         (clk),
    .resetn      (reset_n),
    .uart_txd    (uart_txd),
    .uart_tx_busy(uart_tx_busy),
    .uart_tx_en  (uart_tx_en),
    .uart_tx_data(uart_tx_data)
  );

  uart_rx rx_model (
    .clk          (clk),
    .resetn       (reset_n),
    .uart_rxd     (uart_rxd),
    .uart_rx_en   (uart_rx_en),
    .uart_rx_break(uart_rx_break),
    .uart_rx_valid(uart_rx_valid),
    .uart_rx_data (uart_rx_data)
  );

  // Tasks implementing tests
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

      // Drive signals to model
      @(posedge clk) begin
        uart_rx_en    = 1'b1;
      end
  
      // Wait for TX transmission done
      while (1) begin
        apb_read_reg('h010, rdata);
        if (rdata[0]) begin
          uart_rx_en = 1'b0;
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

  task rx_operation();
    repeat (20) @(posedge clk);
    repeat (100) begin
      while (1) begin
        @(posedge clk) begin
          // Check if rts_n is asserted
          if (~rts_n) begin
            // Drive stimulus to DUT (RX side)
            tx_data_model = $urandom_range(0,2**8-1);
            uart_tx_en   <= 1'b1;
            uart_tx_data <= tx_data_model;
          end
        end

        @(posedge clk) begin
          uart_tx_en   <= 1'b0;
        end
        
        // Wait for TX transmission of model done
        while (1) begin
          apb_read_reg('h010, rdata_rx_opr);
          
          // Check if RX operation is done (register field rx_done is HIGH)
          if (rdata_rx_opr[1]) begin
            // Read RX data in register field rx_data
            apb_read_reg('h00C, rdata_rx_opr);

            // Compare result
            if (rdata_rx_opr == tx_data_model) begin
              $display("[%0t] RX TRUE", $time());
            end
            else begin
              $display("[%0t] RX FALSE", $time());
            end
            break;
          end
        end
        break;
      end
    end
  endtask : rx_operation

  initial begin
    reset_n = 1'b0;
    penable = 1'b0;
    paddr   =  'b0;
    pwdata  =  'b0;
    psel    =  'b0;
    pwrite  =  'b0;
    pstrb   =  '1;
    cts_n   = 1'b0;

    repeat (3) @(posedge clk);
    reset_n = 1'b1;

    // Run tests
    tx_operation();
    rx_operation();

    repeat(100) @(posedge clk);
    $finish;
  end

endmodule : dti_uart_tb