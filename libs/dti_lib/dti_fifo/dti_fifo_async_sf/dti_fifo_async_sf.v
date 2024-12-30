module dti_fifo_async_sf #(
    parameter DATA_WIDTH = 21, // Width dimension in bits of data words stored in queue
    parameter DEPTH      = 8,  // The number of memory elements used in the queue
    parameter SRAM_OR_FF = 0   // The number of memory elements used in the queue
) (
    //--------------------------------------------------------------------------
    // write-clock-domain interface
    //--------------------------------------------------------------------------
    input                          wr_req,           // Data source from write-clock-domain sends a request to write data into queue.
    input  [DATA_WIDTH-1:0]        wr_din,           // Data words from write-clock-domain are written into memory array inside the queue via this bus.
    output                         wr_error,         // Notify the data source from write-clock-domain that the write attempt at previous cycle was failed

    output                         wr_full,          // Status of the queue in which the queue is full filled by data words
    input  [floor_log2(DEPTH)-1:0] wr_prog_full_lvl, // The user-specified runtime-changable level of full state
    output                         wr_prog_full,     // when the number of stored elements in the queue is greater than a specified specified

    output                         wr_empty_synced,  // Status of the queue in which the queue is empty,
    output                         wr_empty,         // Status of the queue in which the queue is empty,
    input  [floor_log2(DEPTH)-1:0] wr_prog_empty_lvl,// The user-specified runtime-changable level of empty state
    output                         wr_prog_empty,    // when the number of stored elements in the queue is less than a specified specified


    input                          wr_clk,     // Input clock from write-clock domain
    input                          wr_reset_n, // Asynchronous active-low reset input from write-clock domain.

    //--------------------------------------------------------------------------
    // read-clock-domain interface
    //--------------------------------------------------------------------------
    input                          rd_req,            // Data reader from read-clock-domain sends a request to read data from queue
    output [DATA_WIDTH-1:0]        rd_dout,           // Data words are read out from queue to the Data reader via this bus
    output                         rd_error,          // Notify the data reader from read-clock-domain that the read attempt at previous cycle was failed

    output                         rd_empty,          // Status of the queue in which the queue is empty, no any data words to read
    input  [floor_log2(DEPTH)-1:0] rd_prog_empty_lvl, // The user-specified runtime-changable level of empty state
    output                         rd_prog_empty,     // when the number of stored elements in the queue is less than a specified level specified

    output                         rd_full_synced,    // Status of the queue in which the queue is full,
    output                         rd_full,           // Status of the queue in which the queue is full,
    input  [floor_log2(DEPTH)-1:0] rd_prog_full_lvl,  // The user-specified runtime-changable level of full state
    output                         rd_prog_full,      // when the number of stored elements in the queue is greater than a specified level specified


    input                          rd_clk,     // Input clock from read-clock domain
    input                          rd_reset_n  // Asynchronous active-low reset input from read-clock domain


    //--------------------------------------------------------------------------
    // setuphold violation
    //--------------------------------------------------------------------------
`ifdef DTI_CDC_DATA_SYNC_SIM
    ,
    input [1 : 0]                  random_delay  // 00, 11 normal
                                                 // 01 too soon
                                                 // 10 too late
`endif /*DTI_CDC_DATA_SYNC_SIM*/
);
    //--------------------------------------------------------------------------
    // Definitions of local parameters, functions and tasks.
    //--------------------------------------------------------------------------
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
    //--------------------------------------------------------------------------
    localparam ADDR_WIDTH = floor_log2(DEPTH);  // bus-width of the address bus for accessing into memory

    //--------------------------------------------------------------------------
    // Internal signals definitions
    //--------------------------------------------------------------------------
    wire [ADDR_WIDTH-1:0] rd_rd_addr;           // read address in binary-encoded form from read-clock-domain
    wire [ADDR_WIDTH  :0] rd_bin_rd_ptr_nx;     // read address in binary-encoded form form read-clock-domain
    wire [ADDR_WIDTH  :0] rd_gray_rd_ptr_nx;    // read address in gray-encoded form form read-clock-domain, it's converted from rd_rd_addr
    wire [ADDR_WIDTH  :0] rd_gray_rd_ptr;       // read address in gray-encoded form form read-clock-domain, it's output from gray-flipflop
    wire [ADDR_WIDTH  :0] rd_gray_wr_ptr;       // write address in gray-encoded form, synchronized from write-clock-domain into read-clock-domain
    wire                  rd_incr_ptr;          // increase the read address pointer

    wire [ADDR_WIDTH-1:0] wr_wr_addr;           // write address in binary-encoded form from write-clock-domain
    wire [ADDR_WIDTH  :0] wr_bin_wr_ptr_nx;     // write address in binary-encoded form form write-clock-domain, it's converted from wr_wr_addr
    wire [ADDR_WIDTH  :0] wr_gray_wr_ptr_nx;    // write address in gray-encoded form form write-clock-domain, it's converted from wr_wr_addr
    wire [ADDR_WIDTH  :0] wr_gray_wr_ptr;       // write address in gray-encoded form form write-clock-domain, it's output from gray-flipflop
    wire [ADDR_WIDTH  :0] wr_gray_rd_ptr;       // read address in gray-encoded form, synchronized from read-clock-domain into write-clock-domain
    wire                  wr_incr_ptr;          // increase the write address pointer

    //--------------------------------------------------------------------------
    // Read clock domain sub-designs
    //--------------------------------------------------------------------------
    // detecting read-empty state
    dti_fifo_async_ctrl #(
        .ADDR_WIDTH    (ADDR_WIDTH),
        .WD_OR_RD      (0)
    ) rd_ctrl (
        .req       (rd_req),

        .bin_local_ptr  (rd_bin_rd_ptr_nx),
        .prog_full_lvl  (rd_prog_full_lvl),
        .prog_full      (rd_prog_full),
        .prog_empty_lvl (rd_prog_empty_lvl),
        .prog_empty     (rd_prog_empty),

        .gray_local_ptr    (rd_gray_rd_ptr_nx),
        .gray_synced_ptr   (rd_gray_wr_ptr),
        .peak_state  (rd_empty),
        .peak_state_2(rd_full),

        .incr_ptr  (rd_incr_ptr),
        .error     (rd_error),

        .clk     (rd_clk),
        .reset_n (rd_reset_n)
    );

    // generate read address pointer for accessing memory and for detecting empty-error condition
    dti_fifo_async_addr_ptr_gen #(
        .ADDR_WIDTH(ADDR_WIDTH)
    ) rd_addr_ptr_gen (
        .incr_ptr (rd_incr_ptr),

        .addr        (rd_rd_addr),
        .gray_ptr    (rd_gray_rd_ptr),
        .gray_ptr_nx (rd_gray_rd_ptr_nx),
        .bin_ptr_nx  (rd_bin_rd_ptr_nx),

        .clk     (rd_clk),
        .reset_n (rd_reset_n)
    );

    // synchronize write-pointer into read-clock-domain
    // dti_cdc_data_sync_cypre #(
    //     .DATA_WIDTH (ADDR_WIDTH+1)
    // ) rd_sync_wr_ptr (
    //     .presync_din (wr_gray_wr_ptr),
    //     .synced_dout (rd_gray_wr_ptr),

    //     .clk         (rd_clk),
    //     .reset_n     (rd_reset_n)
    // );
    dti_cdc_data_sync_gf
    #(
      .DATA_WIDTH     (ADDR_WIDTH+1),
      .SRC_SYNC       (0)
    )
    rd_sync_wr_ptr
    (
      .clk_src        (wr_clk          ),
      .clk_dest       (rd_clk          ),
      .reset_n        (rd_reset_n      ),
      .din_src        (wr_gray_wr_ptr  ),
      .dout_dest      (rd_gray_wr_ptr  )
    );
    // synchronize write-full state into read-clock-domain
    // dti_cdc_data_sync_cypre #(
    //     .DATA_WIDTH (1)
    // ) rd_sync_wr_full_state (
    //     .presync_din (wr_full),
    //     .synced_dout (rd_full_synced),

    //     .clk         (rd_clk),
    //     .reset_n     (rd_reset_n)
    // );

    dti_cdc_data_sync_gf
    #(
      .DATA_WIDTH     (1),
      .SRC_SYNC       (0)
    )
    rd_sync_wr_full_state
    (
      .clk_src        (wr_clk          ),
      .clk_dest       (rd_clk          ),
      .reset_n        (rd_reset_n      ),
      .din_src        (wr_full         ),
      .dout_dest      (rd_full_synced  )
    );


    //--------------------------------------------------------------------------
    // Write clock domain sub-designs
    //--------------------------------------------------------------------------
    // detecting write-full error
    dti_fifo_async_ctrl #(
        .ADDR_WIDTH    (ADDR_WIDTH),
        .WD_OR_RD      (1)
    ) wr_ctrl (
        .req       (wr_req),

        .bin_local_ptr (wr_bin_wr_ptr_nx),
        .prog_full_lvl (wr_prog_full_lvl),
        .prog_full     (wr_prog_full),
        .prog_empty_lvl(wr_prog_empty_lvl),
        .prog_empty    (wr_prog_empty),

        .gray_local_ptr  (wr_gray_wr_ptr_nx),
        .gray_synced_ptr (wr_gray_rd_ptr),
        .peak_state  (wr_full),
        .peak_state_2(wr_empty),

        .incr_ptr  (wr_incr_ptr),
        .error     (wr_error),

        .clk     (wr_clk),
        .reset_n (wr_reset_n)
    );

    // generate write address pointer for accessing memory and for detecting full-error condition
    dti_fifo_async_addr_ptr_gen #(
        .ADDR_WIDTH(ADDR_WIDTH)
    ) wr_addr_ptr_gen (
        .incr_ptr (wr_incr_ptr),

        .addr        (wr_wr_addr),
        .gray_ptr    (wr_gray_wr_ptr),
        .gray_ptr_nx (wr_gray_wr_ptr_nx),
        .bin_ptr_nx  (wr_bin_wr_ptr_nx),

        .clk     (wr_clk),
        .reset_n (wr_reset_n)
    );

    // synchronize read-pointer into write-clock-domain
    // dti_cdc_data_sync_cypre #(
    //     .DATA_WIDTH (ADDR_WIDTH+1)
    // ) wr_sync_rd_ptr (
    //     .presync_din (rd_gray_rd_ptr),
    //     .synced_dout (wr_gray_rd_ptr),

    //     .clk     (wr_clk),
    //     .reset_n (wr_reset_n)
    // );
    dti_cdc_data_sync_gf
    #(
      .DATA_WIDTH     (ADDR_WIDTH+1),
      .SRC_SYNC       (0)
    )
    wr_sync_rd_ptr
    (
      .clk_src        (rd_clk          ),
      .clk_dest       (wr_clk          ),
      .reset_n        (wr_reset_n      ),
      .din_src        (rd_gray_rd_ptr  ),
      .dout_dest      (wr_gray_rd_ptr  )
    );
    // synchronize read-empty state into write-clock-domain
    // dti_cdc_data_sync_cypre #(
    //     .DATA_WIDTH (1)
    // ) wr_sync_rd_empty_state (
    //     .presync_din (rd_empty),
    //     .synced_dout (wr_empty_synced),

    //     .clk         (wr_clk),
    //     .reset_n     (wr_reset_n)
    // );
    dti_cdc_data_sync_gf
    #(
      .DATA_WIDTH     (1),
      .SRC_SYNC       (0)
    )
    wr_sync_rd_empty_state
    (
      .clk_src        (rd_clk          ),
      .clk_dest       (wr_clk          ),
      .reset_n        (wr_reset_n      ),
      .din_src        (rd_empty        ),
      .dout_dest      (wr_empty_synced )
    );
    //--------------------------------------------------------------------------
    // Internal memory
    //--------------------------------------------------------------------------
    // memory array store data words with write-error protect circuits
    // this wrapper selects the FF-based memory or physical-SRAM IP
    dti_fifo_async_2port_mem_wrap #(
        .DATA_WIDTH (DATA_WIDTH),
        .ADDR_WIDTH (ADDR_WIDTH),
        .DEPTH      (DEPTH),
        .SRAM_OR_FF (SRAM_OR_FF)
    ) mem_array (
        .rd_dout    (rd_dout),
        .rd_addr    (rd_rd_addr),
//        .rd_clk     (rd_clk),

        .wr_din     (wr_din),
        .wr_addr    (wr_wr_addr),
        .wr_en      (wr_incr_ptr),
        .wr_clk     (wr_clk),
        .wr_reset_n (wr_reset_n)
    );

endmodule /*dti_fifo_async_sf*/

