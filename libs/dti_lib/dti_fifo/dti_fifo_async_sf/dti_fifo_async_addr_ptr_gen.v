
module dti_fifo_async_addr_ptr_gen #(
    parameter ADDR_WIDTH = 4   // bus-width of the output address
) (
    input                       incr_ptr,    // Allow the pointer increased

    output     [ADDR_WIDTH-1:0] addr,        // ADDR_WIDTH-bit binary-encoded address for accessing into to memory
    output reg [ADDR_WIDTH  :0] gray_ptr,    // (ADDR_WIDTH+1)-bit gray-encoded address pointer for testing full/empty condition
    output     [ADDR_WIDTH  :0] gray_ptr_nx, // (ADDR_WIDTH+1)-bit gray-encoded address pointer for testing full/empty condition
    output     [ADDR_WIDTH  :0] bin_ptr_nx, // (ADDR_WIDTH+1)-bit gray-encoded address pointer for testing full/empty condition

    input                       clk,      // Input rising-edge clock
    input                       reset_n   // Asynchronous active-low reset
);
    reg  [(ADDR_WIDTH+1)-1:0] bin_cnt;    // (ADDR_WIDTH+1)-bit binary-encoded counter
    wire [(ADDR_WIDTH+1)-1:0] bin_cnt_nx; // (ADDR_WIDTH+1)-bit binary-encoded counter

    //--------------------------------------------------------------------------
    // binary counter
    always @(posedge clk or negedge reset_n) begin: BIN_CNT_PROC
        if (!reset_n) 
            bin_cnt <= 'b0;
        else          
            bin_cnt <= bin_cnt_nx;
    end /*BIN_CNT_PROC*/

//    assign bin_cnt_nx = bin_cnt + incr_ptr;  
    assign bin_cnt_nx = bin_cnt + {{(ADDR_WIDTH){1'b0}},incr_ptr};  // edited by huylq0 20_4_27

    //--------------------------------------------------------------------------
    // convert binary-encoded counter to gray-encoded pointer
    always @(posedge clk or negedge reset_n) begin: GRAY_PTR_PROC
        if (!reset_n)
            gray_ptr <= 'b0;
        else          
            gray_ptr <= gray_ptr_nx;
    end /*GRAY_PTR_PROC*/

    dti_bin_to_gray #(
        .WIDTH(ADDR_WIDTH+1)
    ) dti_bin_to_gray_inst (
        .bin(bin_cnt_nx),
        .gout(gray_ptr_nx)
    );

    //--------------------------------------------------------------------------
    // generate output address for accessing into memory
    assign bin_ptr_nx = bin_cnt_nx;
    assign addr = bin_cnt[ADDR_WIDTH-1:0];

endmodule /*dti_fifo_async_addr_ptr_gen*/

