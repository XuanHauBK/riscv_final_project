
module dti_fifo_async_ctrl #(
    parameter ADDR_WIDTH    = 4,   // address width of the compared pointer
    parameter WD_OR_RD = 1         // indicate whether this module is instantiated as a read-controller or write-controller, the peak_state detect is for write-full or read-empty
) (
    input                           req,       // read/write request

    input      [(ADDR_WIDTH+1)-1:0] bin_local_ptr, // (ADDR_WIDTH+1)-bit binary-encoded address pointer for testing programmable full/empty condition
    input      [ ADDR_WIDTH   -1:0] prog_full_lvl, // (ADDR_WIDTH+1)-bit binary-encoded address pointer for testing programmable full/empty condition
    output reg                      prog_full,     // Allow the pointer to increse: read pointer: the queue is not empty, write pointer: the queue is not full
    input      [ ADDR_WIDTH   -1:0] prog_empty_lvl,// (ADDR_WIDTH+1)-bit binary-encoded address pointer for testing programmable full/empty condition
    output reg                      prog_empty,    // Allow the pointer to increse: read pointer: the queue is not empty, write pointer: the queue is not full

    input      [(ADDR_WIDTH+1)-1:0] gray_local_ptr,   // (ADDR_WIDTH+1)-bit gray-encoded address pointer for testing full/empty condition
    input      [(ADDR_WIDTH+1)-1:0] gray_synced_ptr,   // (ADDR_WIDTH+1)-bit gray-encoded address pointer for testing full/empty condition
    output reg                      peak_state,  // Allow the pointer to increse: read pointer: the queue is not empty, write pointer: the queue is not full
    output reg                      peak_state_2,// Allow the pointer to increse: read pointer: the queue is not empty, write pointer: the queue is not full

    output                          incr_ptr,  // increate read/write pointer
    output reg                      error,     // read/write error


    input                           clk,       // Input rising-edge clock
    input                           reset_n    // Asynchronous active-low reset
);
    wire [(ADDR_WIDTH+1)-1:0] bin_synced_ptr;        // (ADDR_WIDTH+1)-bit binary-encoded address pointer for testing programmable full/empty condition
    wire [(ADDR_WIDTH+1)-1:0] elem_num;        // (ADDR_WIDTH+1)-bit binary-encoded address pointer diff
    wire                      prog_full_nx;    // programmable full state detected indicator
    wire                      prog_empty_nx;   // programmable empty state detected indicator
    wire                      peak_state_nx;   // peak_state detected indicator
    wire                      peak_state_2_nx; // peak_state detected indicator
    wire                      error_nx;        // error detected indicator

    //--------------------------------------------------------------------------
    // programmable peak state detect comparator
    always @(posedge clk or negedge reset_n) begin: PROG_FULL_STATE_PROC
        if (!reset_n)
            prog_full <= 1'b0;
        else
            prog_full <= prog_full_nx;
    end /*PROG_FULL_STATE_PROC*/

    always @(posedge clk or negedge reset_n) begin: PROG_EMPTY_STATE_PROC
        if (!reset_n)
            prog_empty <= 1'b1;
        else
            prog_empty <= prog_empty_nx;
    end /*PROG_EMPTY_STATE_PROC*/

    //--------------------------------------------------------------------------
    // calculate the number of elements
    dti_gray_to_bin #(
        .WIDTH(ADDR_WIDTH+1)
    ) dti_gray_to_bin_inst (
        .gin  (gray_synced_ptr),
        .bout (bin_synced_ptr)
    );

    generate if (WD_OR_RD) begin: WRITE_CALC_ELEMENT_NUM_PROC
        assign elem_num = (bin_local_ptr[ADDR_WIDTH] == bin_synced_ptr[ADDR_WIDTH])
                                    ? (      bin_local_ptr[ADDR_WIDTH-1:0]  - bin_synced_ptr[ADDR_WIDTH-1:0])
                          //          : ({1'b1,bin_local_ptr[ADDR_WIDTH-1:0]} - bin_synced_ptr[ADDR_WIDTH-1:0]);
                                    : ({1'b1,bin_local_ptr[ADDR_WIDTH-1:0]} - {1'b0,bin_synced_ptr[ADDR_WIDTH-1:0]});  // edited by huylq0 20_4_27

    end /*WRITE_CALC_ELEMENT_NUM_PROC*/
    else begin: READ_CALC_ELEMENT_NUM_PROC
        assign elem_num = (bin_local_ptr[ADDR_WIDTH] == bin_synced_ptr[ADDR_WIDTH])
                                    ? (      bin_synced_ptr[ADDR_WIDTH-1:0]  - bin_local_ptr[ADDR_WIDTH-1:0])
                            //        : ({1'b1,bin_synced_ptr[ADDR_WIDTH-1:0]} - bin_local_ptr[ADDR_WIDTH-1:0]);
                                    : ({1'b1,bin_synced_ptr[ADDR_WIDTH-1:0]} - {1'b0,bin_local_ptr[ADDR_WIDTH-1:0]});  // edited by huylq0 20_4_27

    end /*READ_CALC_ELEMENT_NUM_PROC*/
    endgenerate
    //--------------------------------------------------------------------------
    // programmable nearly full:
    //          active:     nearly_full_level <= elem_num <= DEPTH
    //          inactive:                  0  <= elem_num <  nearly_full_level
    assign prog_full_nx = (elem_num >  {1'b0, prog_full_lvl}) ? 1'b1 : 1'b0;
    // programmable nearly empty:
    //          active:                    0  <= elem_num <  nearly_empty_level
    //          inactive:  nearly_empty_level <  elem_num <= DEPTH
    assign prog_empty_nx = (elem_num <  {1'b0, prog_empty_lvl}) ? 1'b1 : 1'b0;

    //--------------------------------------------------------------------------
    // peak_state detect comparator
    always @(posedge clk or negedge reset_n) begin: PEAK_STATE_PROC
        if (!reset_n)
            peak_state <= (WD_OR_RD) ? 1'b0 : 1'b1;
        else
            peak_state <= peak_state_nx;
    end /*PEAK_STATE_PROC*/

    generate if (WD_OR_RD) begin: WRITE_FULL_DETECT_PROC
        assign peak_state_nx = (gray_local_ptr == {~gray_synced_ptr[ADDR_WIDTH:ADDR_WIDTH-1],gray_synced_ptr[ADDR_WIDTH-2:0]})
                                    ? 1'b1
                                    : 1'b0;
    end /*WRITE_FULL_DETECT_PROC*/
    else begin: READ_EMPTY_DETECT_PROC
        assign peak_state_nx = (gray_local_ptr == gray_synced_ptr)
                                    ? 1'b1
                                    : 1'b0;
    end /*READ_EMPTY_DETECT_PROC*/
    endgenerate

    //--------------------------------------------------------------------------
    // error detect
    always @(posedge clk or negedge reset_n) begin: ERROR_PROC
        if (!reset_n)
            error <= 1'b0;
        else
            error <= error_nx;
    end /*ERROR_PROC*/

    assign error_nx = (peak_state  && req) ? 1'b1 : 1'b0;

    //--------------------------------------------------------------------------
    // generate grant request
    assign incr_ptr = (!peak_state && req) ? 1'b1 : 1'b0;









    //--------------------------------------------------------------------------
    // generate additional flag: read_full and write_empty
    always @(posedge clk or negedge reset_n) begin: PEAK_STATE_2_PROC
        if (!reset_n)
            peak_state_2 <= (WD_OR_RD) ? 1'b1 : 1'b0;
        else
            peak_state_2 <= peak_state_2_nx;
    end /*PEAK_STATE_2_PROC*/

    generate if (WD_OR_RD) begin: WRITE_EMPTY_DETECT_PROC
        assign peak_state_2_nx = (gray_local_ptr == gray_synced_ptr)
                                    ? 1'b1
                                    : 1'b0;
    end /*WRITE_EMPTY_DETECT_PROC*/
    else begin: READ_FULL_DETECT_PROC
        assign peak_state_2_nx = (gray_local_ptr == {~gray_synced_ptr[ADDR_WIDTH:ADDR_WIDTH-1],gray_synced_ptr[ADDR_WIDTH-2:0]})
                                    ? 1'b1
                                    : 1'b0;
    end /*READ_FULL_DETECT_PROC*/
    endgenerate

endmodule /*dti_fifo_async_ctrl*/

