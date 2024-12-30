// Verilog RTL code for the FIFO buffer memory array
module dti_fifo_async_2port_mem_wrap 
#(
    parameter DATA_WIDTH = 8,  // Memory data word width
    parameter ADDR_WIDTH = 4,  // Number of mem address bits
    parameter DEPTH      = 16, // Number of storage elements
    parameter SRAM_OR_FF = 1   // Number of storage elements
) (
    output  [DATA_WIDTH-1:0] rd_dout,   // read-out data bus, synchronized into read-clock-domain
    input   [ADDR_WIDTH-1:0] rd_addr,   // read addres bus, synchronized into read-clock-domain
//    input                    rd_clk,    // rising edge clock from read-clock-domain

    input   [DATA_WIDTH-1:0] wr_din,    // write in data bus, synchronized into write-clock-domain
    input   [ADDR_WIDTH-1:0] wr_addr,   // read addres bus, synchronized into write-clock-domain
    input                    wr_clk,    // rising edge clock from read-clock-domain
    input                    wr_en,     // write-full error protection signal,
    input                    wr_reset_n // async reset, active low
);

    //--------------------------------------------------------------------------
    // Instantiate memories - Using Flip Flop
    //--------------------------------------------------------------------------
    localparam USABLE_DEPTH = (1 << ADDR_WIDTH);          // number of storage elements (number of stored words) inside the queue

    logic [USABLE_DEPTH-1:0][DATA_WIDTH-1:0] ff_mem_array; // flip-flop-based memory array storing data words

    // read from flip-flop memory
    assign rd_dout = ff_mem_array[rd_addr];

    // write into flip-flop memory
    always_ff @(posedge wr_clk, negedge wr_reset_n) begin: FF_MEM_ARRAY_PROC
      if (~wr_reset_n) begin
        ff_mem_array <= 0;
      end
      else if (wr_en) begin
        ff_mem_array[wr_addr] <= wr_din;
      end
    end /*FF_MEM_ARRAY_PROC*/

endmodule /*dti_fifo_async_2port_mem_wrap*/

