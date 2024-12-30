module dti_fifo_async_sf_w1rm_tb;
  parameter WR_DATA_WIDTH = 8;
  parameter RD_DATA_WIDTH = 128;
  parameter DATA_WIDTH    = 21;
  parameter DEPTH         = 32;
  parameter SRAM_OR_FF    = 0;

  logic                          wr_req;  //input  
  logic  [WR_DATA_WIDTH-1:0]     wr_din;  //input  
  logic                          wr_error;  //output 
  logic                          wr_full;  //output 
  logic  [floor_log2(DEPTH)-1:0] wr_prog_full_lvl;  //input  
  logic                          wr_prog_full;  //output 
  logic                          wr_empty_synced;  //output 
  logic                          wr_empty;  //output 
  logic  [floor_log2(DEPTH)-1:0] wr_prog_empty_lvl;  //input  
  logic                          wr_prog_empty;  //output 
  logic                          wr_clk;  //input  
  logic                          wr_reset_n;  //input  
  logic                          rd_req;  //input  
  logic  [RD_DATA_WIDTH-1:0]     rd_dout;  //output 
  logic                          rd_error;  //output 
  logic                          rd_empty;  //output 
  logic  [floor_log2(DEPTH)-1:0] rd_prog_empty_lvl;  //input  
  logic                          rd_prog_empty;  //output 
  logic                          rd_full_synced;  //output 
  logic                          rd_full;  //output 
  logic  [floor_log2(DEPTH)-1:0] rd_prog_full_lvl;  //input  
  logic                          rd_prog_full;  //output 
  logic                          rd_clk;  //input  
  logic                          rd_reset_n;  //input  
  logic  [1:0]                   pop_mode;  //output
   
  function automatic integer floor_log2 (input integer value_int_i);
    begin: floor_log2_func
        integer ceil_log2; // temporary variable

        for (ceil_log2 = 0; (1 << ceil_log2) < value_int_i; ceil_log2 = ceil_log2 + 1)
            floor_log2 = ceil_log2;

        if ((1 << ceil_log2) == value_int_i)
            floor_log2 = ceil_log2;
        else
            floor_log2 = ceil_log2 - 1;
    end /*floor_log2_func*/
    endfunction

    dti_fifo_async_sf_w1rm #(.WR_DATA_WIDTH(WR_DATA_WIDTH), .RD_DATA_WIDTH(RD_DATA_WIDTH), .DEPTH(DEPTH))
                           dti_fifo_async_sf_w1rm (
                            .pop_mode         (pop_mode),
                            .rd_req           (rd_req),
                            .wr_req           (wr_req),
                            .rd_full          (rd_full),
                            .rd_error         (rd_error),
                            .wr_empty         (wr_empty),
                            .wr_error         (wr_error),
                            .rd_prog_full     (rd_prog_full),
                            .wr_prog_full     (wr_prog_full),
                            .rd_prog_empty    (rd_prog_empty),
                            .wr_prog_empty    (wr_prog_empty),
                            .rd_prog_full_lvl (rd_prog_full_lvl),
                            .wr_prog_full_lvl (wr_prog_full_lvl),
                            .rd_prog_empty_lvl(rd_prog_empty_lvl),
                            .wr_prog_empty_lvl(wr_prog_empty_lvl),
                            .wr_din           (wr_din),
                            .rd_full_synced   (rd_full_synced),
                            .wr_empty_synced  (wr_empty_synced),
                            .rd_dout          (rd_dout),
                            .wr_full          (wr_full),
                            .rd_empty         (rd_empty),
                            .wr_reset_n       (wr_reset_n),
                            .wr_clk           (wr_clk),
                            .rd_clk           (rd_clk),
                            .rd_reset_n       (rd_reset_n));

  initial begin
    wr_clk = 1;
    rd_clk = 1;
    wr_reset_n = 1;
    rd_reset_n = 1;
    wr_req = 0;
    wr_din = 0;
    #2;
    wr_reset_n = 0;
    rd_reset_n = 0;
    #10;
    wr_reset_n = 1;
    rd_reset_n = 1;
  end

  always #5 wr_clk = ~wr_clk;
  always #5 rd_clk = ~rd_clk;


  task push_fifo(logic [4:0] opcode, int num_byte);
    wr_din = {3'b0, opcode};
    @(posedge wr_clk);

    repeat(num_byte-1) begin
      while(wr_full || ~wr_req)
        @(posedge wr_clk);

      wr_din = $urandom_range(0, 1 << 8);
      @(posedge wr_clk);
    end
  endtask

  initial begin
    #12;
    @(posedge wr_clk);
    wr_req = 1;

    push_fifo('b10010, 8);
    push_fifo('b11011, 16);
    push_fifo('b10010, 8);
    // push_fifo('b10010, 8);

    wr_req = 0;

    repeat(10)
      @(posedge wr_clk);
    $finish;
  end

  // assign rd_req = !rd_empty;
  assign rd_req = 0;

  // initial begin
  //   rd_req = 0;
  //   #101;
  //   rd_req = 1;
  //   #10;
  //   rd_req = 0;
  // end

    
endmodule