
module dti_riscv (apb_pclk,apb_presetn,boost_en,clk,clk_uart,cts_n,gpio_i,reset_n,rx,rx_boost,gpio_o,rts_n,rts_n_boost,test_context_out,tx);
input   apb_pclk ;
input   apb_presetn ;
input   boost_en ;
input   clk ;
input   clk_uart ;
input   cts_n ;
input  [15:0] gpio_i ;
input   reset_n ;
input   rx ;
input   rx_boost ;
output  [15:0] gpio_o ;
output   rts_n ;
output   rts_n_boost ;
output  [39:0] test_context_out ;
output   tx ;
wire  [31:0] apb_paddr ;
wire   apb_penable ;
wire  [31:0] apb_prdata ;
wire   apb_pready ;
wire   apb_psel ;
wire   apb_pslverr ;
wire  [31:0] apb_pwdata ;
wire   apb_pwrite ;
wire  [31:0] dmem_address ;
wire  [31:0] dmem_data_in ;
wire  [1:0] dmem_data_size ;
wire   dmem_read_ack ;
wire   dmem_read_req ;
wire   dmem_write_ack ;
wire   dmem_write_req ;
wire   imem_ack ;
wire  [31:0] imem_address ;
wire  [31:0] imem_data_in ;
wire   imem_req ;
wire  [7:0] irq ;
wire  [31:0] mem_data_in ;
wire  [31:0] rx_boost_inst_data_in ;
wire   rx_boost_inst_wr_req ;
wire  [31:0] \dti_riscv/dti_apb_adapter/apb_prdata  ;
wire   \dti_riscv/dti_apb_adapter/apb_pready  ;
wire   \dti_riscv/dti_apb_adapter/apb_pslverr  ;
wire   \dti_riscv/dti_apb_adapter/clk  ;
wire  [31:0] \dti_riscv/dti_apb_adapter/mem_address  ;
wire  [31:0] \dti_riscv/dti_apb_adapter/mem_data_in  ;
wire  [1:0] \dti_riscv/dti_apb_adapter/mem_data_size  ;
wire   \dti_riscv/dti_apb_adapter/mem_read_req  ;
wire   \dti_riscv/dti_apb_adapter/mem_write_req  ;
wire   \dti_riscv/dti_apb_adapter/reset_n  ;
logic  [31:0] \dti_riscv/dti_apb_adapter/apb_paddr  ;
logic   \dti_riscv/dti_apb_adapter/apb_penable  ;
logic   \dti_riscv/dti_apb_adapter/apb_psel  ;
logic  [31:0] \dti_riscv/dti_apb_adapter/apb_pwdata  ;
logic   \dti_riscv/dti_apb_adapter/apb_pwrite  ;
logic  [31:0] \dti_riscv/dti_apb_adapter/mem_data_out  ;
wire   \dti_riscv/dti_apb_adapter/mem_read_ack  ;
wire   \dti_riscv/dti_apb_adapter/mem_write_ack  ;
logic  [31:0] \dti_riscv/dti_apb_adapter/apb_paddr_cld  ;
logic   \dti_riscv/dti_apb_adapter/apb_penable_cld  ;
logic   \dti_riscv/dti_apb_adapter/apb_psel_cld  ;
logic  [31:0] \dti_riscv/dti_apb_adapter/apb_pwdata_cld  ;
logic   \dti_riscv/dti_apb_adapter/apb_pwrite_cld  ;
logic  [31:0] \dti_riscv/dti_apb_adapter/mem_data_out_cld  ;
logic  [31:0] \dti_riscv/dti_apb_adapter/mem_data  ;
logic  [1:0] \dti_riscv/dti_apb_adapter/current_state  ;
logic  [1:0] \dti_riscv/dti_apb_adapter/next_state  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_paddr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pclk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_penable  ;
wire   \dti_riscv/dti_apb_peripheral/apb_presetn  ;
wire   \dti_riscv/dti_apb_peripheral/apb_psel  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_pwdata  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pwrite  ;
wire   \dti_riscv/dti_apb_peripheral/clk_uart  ;
wire   \dti_riscv/dti_apb_peripheral/cts_n  ;
wire  [15:0] \dti_riscv/dti_apb_peripheral/gpio_i  ;
wire   \dti_riscv/dti_apb_peripheral/reset_n  ;
wire   \dti_riscv/dti_apb_peripheral/rx  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_prdata  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pready  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pslverr  ;
wire  [15:0] \dti_riscv/dti_apb_peripheral/gpio_o  ;
wire   \dti_riscv/dti_apb_peripheral/irq  ;
wire   \dti_riscv/dti_apb_peripheral/rts_n  ;
wire   \dti_riscv/dti_apb_peripheral/tx  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_prdata_gpio  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_prdata_timer  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_prdata_uart  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pready_gpio  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pready_timer  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pready_uart  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pslverr_gpio  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pslverr_timer  ;
wire   \dti_riscv/dti_apb_peripheral/apb_pslverr_uart  ;
wire   \dti_riscv/dti_apb_peripheral/apb_gpio/apb_presetn  ;
wire   \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pclk  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_gpio/apb_paddr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_gpio/apb_psel  ;
wire   \dti_riscv/dti_apb_peripheral/apb_gpio/apb_penable  ;
wire   \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwrite  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwdata  ;
wire   \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pready  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_gpio/apb_prdata  ;
wire   \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pslverr  ;
wire  [15:0] \dti_riscv/dti_apb_peripheral/apb_gpio/gpio_i  ;
wire  [15:0] \dti_riscv/dti_apb_peripheral/apb_gpio/gpio_o  ;
logic  [15:0] \dti_riscv/dti_apb_peripheral/apb_gpio/data_gpio  ;
logic   \dti_riscv/dti_apb_peripheral/apb_gpio/wack  ;
logic   \dti_riscv/dti_apb_peripheral/apb_gpio/rack  ;
logic   \dti_riscv/dti_apb_peripheral/apb_gpio/waddrerr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_gpio/raddrerr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_gpio/apb_gpio_enable  ;
wire   \dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn  ;
wire   \dti_riscv/dti_apb_peripheral/apb_timer/apb_pclk  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_timer/apb_paddr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_timer/apb_psel  ;
wire   \dti_riscv/dti_apb_peripheral/apb_timer/apb_penable  ;
wire   \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwdata  ;
wire   \dti_riscv/dti_apb_peripheral/apb_timer/apb_pready  ;
logic  [31:0] \dti_riscv/dti_apb_peripheral/apb_timer/apb_prdata  ;
wire   \dti_riscv/dti_apb_peripheral/apb_timer/apb_pslverr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_timer/irq  ;
logic   \dti_riscv/dti_apb_peripheral/apb_timer/wack  ;
logic   \dti_riscv/dti_apb_peripheral/apb_timer/rack  ;
logic   \dti_riscv/dti_apb_peripheral/apb_timer/waddrerr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_timer/raddrerr  ;
logic  [31:0] \dti_riscv/dti_apb_peripheral/apb_timer/counter  ;
logic  [31:0] \dti_riscv/dti_apb_peripheral/apb_timer/compare  ;
logic   \dti_riscv/dti_apb_peripheral/apb_timer/ctrl_run  ;
logic   \dti_riscv/dti_apb_peripheral/apb_timer/clear_counter  ;
logic   \dti_riscv/dti_apb_peripheral/apb_timer/clear_counter_update  ;
logic   \dti_riscv/dti_apb_peripheral/apb_timer/apb_timer_enable  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_presetn  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_pclk  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_paddr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_psel  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_penable  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_pwrite  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_pwdata  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_pready  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_prdata  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_pslverr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/reset_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/cts_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/tx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/rx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/rts_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/rxclk_en  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/txclk_en  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_data_out  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_rd_req  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_empty  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_full  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_data_in  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_wr_req  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/reset_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rxclk_en  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/txclk_en  ;
logic  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rx_acc  ;
logic  [8:0] \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/tx_acc  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/reset_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/cts_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_empty  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_data_out  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_rd_req  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx  ;
logic  [1:0] \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/current_state  ;
logic  [1:0] \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  ;
logic  [2:0] \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_data  ;
logic  [1:0] \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_stop  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/stt_tx_done  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/receiver/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/receiver/reset_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/receiver/clken  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_full  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rts_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_wr_req  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_data_in  ;
logic  [1:0] \dti_riscv/dti_apb_peripheral/apb_uart/receiver/current_state  ;
logic  [1:0] \dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state  ;
logic  [3:0] \dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  ;
logic  [3:0] \dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_data  ;
logic  [1:0] \dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_stop  ;
logic  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/receiver/scratch  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_presetn  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pclk  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_paddr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_psel  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_penable  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite  ;
wire  [31:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwdata  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pready  ;
logic  [31:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_prdata  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pslverr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/reset_n  ;
logic  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_data_out  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_rd_req  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_empty  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_data_in  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_wr_req  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_full  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_empty  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_full  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_error  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_wr_req  ;
logic  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/rdata  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_rd_req  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_empty  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_error  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/wack  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/rack  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/waddrerr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/raddrerr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_uart_enable  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_req  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_din  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_error  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_full  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_prog_full_lvl  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_prog_full  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_empty_synced  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_empty  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_prog_empty_lvl  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_prog_empty  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_reset_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_req  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_dout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_error  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_empty  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_prog_empty_lvl  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_prog_empty  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_full_synced  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_full  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_prog_full_lvl  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_prog_full  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_reset_n  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_rd_addr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_bin_rd_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_rd_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_rd_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_wr_ptr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_incr_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_wr_addr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_bin_wr_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_wr_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_wr_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_rd_ptr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_incr_ptr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/req  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_local_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full_lvl  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty_lvl  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_local_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_synced_ptr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_2  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/incr_ptr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/error  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_synced_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/elem_num  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_2_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/error_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/gin  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/incr_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/addr  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/gray_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/gray_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_ptr_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/reset_n  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/dti_bin_to_gray_inst/bin  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/dti_bin_to_gray_inst/gout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/clk_src  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/clk_dest  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/reset_n  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/din_src  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/dout_dest  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/ff_chain_reg0  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/ff_chain_reg1  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/din_src_ff  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/clk_src  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/clk_dest  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/reset_n  ;
wire  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/din_src  ;
wire  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/dout_dest  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/ff_chain_reg0  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/ff_chain_reg1  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/din_src_ff  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/req  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_local_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full_lvl  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty_lvl  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_local_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_synced_ptr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_2  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/incr_ptr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/error  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_synced_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/elem_num  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_2_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/error_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/gin  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/incr_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/addr  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/gray_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/gray_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_ptr_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/reset_n  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/dti_bin_to_gray_inst/bin  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/dti_bin_to_gray_inst/gout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/clk_src  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/clk_dest  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/reset_n  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/din_src  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/dout_dest  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/ff_chain_reg0  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/ff_chain_reg1  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/din_src_ff  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/clk_src  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/clk_dest  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/reset_n  ;
wire  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/din_src  ;
wire  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/dout_dest  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/ff_chain_reg0  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/ff_chain_reg1  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/din_src_ff  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/rd_dout  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/rd_addr  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_din  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_addr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_en  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_reset_n  ;
logic  [31:0][7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/ff_mem_array  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_req  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_din  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_error  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_full  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_prog_full_lvl  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_prog_full  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_empty_synced  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_empty  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_prog_empty_lvl  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_prog_empty  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_reset_n  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_req  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_dout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_error  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_empty  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_prog_empty_lvl  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_prog_empty  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_full_synced  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_full  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_prog_full_lvl  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_prog_full  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_reset_n  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_rd_addr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_bin_rd_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_rd_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_rd_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_wr_ptr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_incr_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_wr_addr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_bin_wr_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_wr_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_wr_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_rd_ptr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_incr_ptr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/req  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_local_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full_lvl  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty_lvl  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_local_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_synced_ptr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_2  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/incr_ptr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/error  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_synced_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/elem_num  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_2_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/error_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/gin  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/incr_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/addr  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/gray_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/gray_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_ptr_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/reset_n  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/dti_bin_to_gray_inst/bin  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/dti_bin_to_gray_inst/gout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/clk_src  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/clk_dest  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/reset_n  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/din_src  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/dout_dest  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/ff_chain_reg0  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/ff_chain_reg1  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/din_src_ff  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/clk_src  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/clk_dest  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/reset_n  ;
wire  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/din_src  ;
wire  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/dout_dest  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/ff_chain_reg0  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/ff_chain_reg1  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/din_src_ff  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/req  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_local_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full_lvl  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty_lvl  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_local_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_synced_ptr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_2  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/incr_ptr  ;
logic   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/error  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_synced_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/elem_num  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_2_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/error_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/gin  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/incr_ptr  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/addr  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/gray_ptr  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/gray_ptr_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_ptr_nx  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/reset_n  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt_nx  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/dti_bin_to_gray_inst/bin  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/dti_bin_to_gray_inst/gout  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/clk_src  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/clk_dest  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/reset_n  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/din_src  ;
wire  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/dout_dest  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/ff_chain_reg0  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/ff_chain_reg1  ;
logic  [5:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/din_src_ff  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/clk_src  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/clk_dest  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/reset_n  ;
wire  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/din_src  ;
wire  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/dout_dest  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/ff_chain_reg0  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/ff_chain_reg1  ;
logic  [0:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/din_src_ff  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/rd_dout  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/rd_addr  ;
wire  [7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_din  ;
wire  [4:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_addr  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_clk  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_en  ;
wire   \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_reset_n  ;
logic  [31:0][7:0] \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/ff_mem_array  ;
wire   \dti_riscv/dti_boost_inst/clk  ;
wire   \dti_riscv/dti_boost_inst/reset_n  ;
wire   \dti_riscv/dti_boost_inst/rx  ;
wire   \dti_riscv/dti_boost_inst/rts_n  ;
wire  [31:0] \dti_riscv/dti_boost_inst/rx_boost_inst_data_in  ;
logic   \dti_riscv/dti_boost_inst/rx_boost_inst_wr_req  ;
logic  [4:0] \dti_riscv/dti_boost_inst/rx_acc  ;
logic   \dti_riscv/dti_boost_inst/clken  ;
logic  [1:0] \dti_riscv/dti_boost_inst/current_state  ;
logic  [1:0] \dti_riscv/dti_boost_inst/next_state  ;
logic  [3:0] \dti_riscv/dti_boost_inst/sample  ;
logic  [3:0] \dti_riscv/dti_boost_inst/bitpos_data  ;
logic  [1:0] \dti_riscv/dti_boost_inst/bitpos_stop  ;
logic  [7:0] \dti_riscv/dti_boost_inst/scratch  ;
logic   \dti_riscv/dti_boost_inst/stt_rx_done  ;
logic  [31:0] \dti_riscv/dti_boost_inst/instruction_data  ;
logic  [1:0] \dti_riscv/dti_boost_inst/count_req  ;
wire   \dti_riscv/dti_riscv_core/boost_en  ;
wire   \dti_riscv/dti_riscv_core/clk  ;
wire  [31:0] \dti_riscv/dti_riscv_core/dmem_data_in  ;
wire   \dti_riscv/dti_riscv_core/dmem_read_ack  ;
wire   \dti_riscv/dti_riscv_core/dmem_write_ack  ;
wire   \dti_riscv/dti_riscv_core/imem_ack  ;
wire  [31:0] \dti_riscv/dti_riscv_core/imem_data_in  ;
wire  [7:0] \dti_riscv/dti_riscv_core/irq  ;
wire   \dti_riscv/dti_riscv_core/reset_n  ;
wire  [31:0] \dti_riscv/dti_riscv_core/dmem_address  ;
wire  [31:0] \dti_riscv/dti_riscv_core/dmem_data_out  ;
wire  [1:0] \dti_riscv/dti_riscv_core/dmem_data_size  ;
wire   \dti_riscv/dti_riscv_core/dmem_read_req  ;
wire   \dti_riscv/dti_riscv_core/dmem_write_req  ;
wire  [31:0] \dti_riscv/dti_riscv_core/imem_address  ;
wire   \dti_riscv/dti_riscv_core/imem_req  ;
wire  [39:0] \dti_riscv/dti_riscv_core/test_context_out  ;
wire  [3:0] \dti_riscv/dti_riscv_core/alu_op_id  ;
wire  [2:0] \dti_riscv/dti_riscv_core/alu_x_src_id  ;
wire  [2:0] \dti_riscv/dti_riscv_core/alu_y_src_id  ;
wire  [2:0] \dti_riscv/dti_riscv_core/branch_ex  ;
wire  [2:0] \dti_riscv/dti_riscv_core/branch_id  ;
wire   \dti_riscv/dti_riscv_core/branch_taken  ;
wire  [31:0] \dti_riscv/dti_riscv_core/branch_target  ;
wire   \dti_riscv/dti_riscv_core/count_inst_id  ;
wire   \dti_riscv/dti_riscv_core/count_instruction_ex  ;
wire   \dti_riscv/dti_riscv_core/count_instruction_mem  ;
wire   \dti_riscv/dti_riscv_core/count_instruction_wb  ;
wire  [11:0] \dti_riscv/dti_riscv_core/csr_addr_ex  ;
wire  [11:0] \dti_riscv/dti_riscv_core/csr_addr_id  ;
wire  [11:0] \dti_riscv/dti_riscv_core/csr_addr_in  ;
wire  [11:0] \dti_riscv/dti_riscv_core/csr_addr_mem  ;
wire  [11:0] \dti_riscv/dti_riscv_core/csr_addr_wb  ;
wire  [31:0] \dti_riscv/dti_riscv_core/csr_data_ex  ;
wire  [31:0] \dti_riscv/dti_riscv_core/csr_data_mem  ;
wire  [31:0] \dti_riscv/dti_riscv_core/csr_data_wb  ;
wire   \dti_riscv/dti_riscv_core/csr_use_imm_id  ;
wire   \dti_riscv/dti_riscv_core/csr_use_immediate_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/csr_value_ex  ;
wire  [31:0] \dti_riscv/dti_riscv_core/csr_value_in  ;
wire  [1:0] \dti_riscv/dti_riscv_core/csr_write_ex  ;
wire  [1:0] \dti_riscv/dti_riscv_core/csr_write_id  ;
wire  [1:0] \dti_riscv/dti_riscv_core/csr_write_mem  ;
wire  [1:0] \dti_riscv/dti_riscv_core/csr_write_wb  ;
wire  [2:0] \dti_riscv/dti_riscv_core/decode_exception_cause_id  ;
wire   \dti_riscv/dti_riscv_core/decode_exception_id  ;
wire  [31:0] \dti_riscv/dti_riscv_core/dmem_address_ex  ;
logic  [31:0] \dti_riscv/dti_riscv_core/dmem_address_p  ;
wire  [31:0] \dti_riscv/dti_riscv_core/dmem_data_out_ex  ;
logic  [31:0] \dti_riscv/dti_riscv_core/dmem_data_out_p  ;
wire  [1:0] \dti_riscv/dti_riscv_core/dmem_data_size_ex  ;
logic  [1:0] \dti_riscv/dti_riscv_core/dmem_data_size_p  ;
wire   \dti_riscv/dti_riscv_core/dmem_read_req_ex  ;
logic   \dti_riscv/dti_riscv_core/dmem_read_req_p  ;
wire   \dti_riscv/dti_riscv_core/dmem_write_req_ex  ;
logic   \dti_riscv/dti_riscv_core/dmem_write_req_p  ;
wire  [31:0] \dti_riscv/dti_riscv_core/evec  ;
wire  [39:0] \dti_riscv/dti_riscv_core/exception_context_ex  ;
wire  [39:0] \dti_riscv/dti_riscv_core/exception_context_mem  ;
wire  [39:0] \dti_riscv/dti_riscv_core/exception_context_wb  ;
wire   \dti_riscv/dti_riscv_core/exception_mem  ;
wire   \dti_riscv/dti_riscv_core/exception_taken  ;
wire  [31:0] \dti_riscv/dti_riscv_core/exception_target  ;
wire   \dti_riscv/dti_riscv_core/exception_wb  ;
wire   \dti_riscv/dti_riscv_core/flush  ;
wire  [2:0] \dti_riscv/dti_riscv_core/funct3_id  ;
wire   \dti_riscv/dti_riscv_core/hazard_detected  ;
wire   \dti_riscv/dti_riscv_core/ie  ;
wire   \dti_riscv/dti_riscv_core/ie1  ;
wire   \dti_riscv/dti_riscv_core/ie1_in  ;
wire   \dti_riscv/dti_riscv_core/ie_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/immediate_id  ;
wire  [31:0] \dti_riscv/dti_riscv_core/inst_address  ;
wire  [31:0] \dti_riscv/dti_riscv_core/inst_data  ;
wire   \dti_riscv/dti_riscv_core/inst_ready  ;
wire  [2:0] \dti_riscv/dti_riscv_core/mem_op_ex  ;
wire  [2:0] \dti_riscv/dti_riscv_core/mem_op_id  ;
wire  [2:0] \dti_riscv/dti_riscv_core/mem_op_mem  ;
wire  [1:0] \dti_riscv/dti_riscv_core/mem_size_ex  ;
wire  [1:0] \dti_riscv/dti_riscv_core/mem_size_id  ;
wire  [31:0] \dti_riscv/dti_riscv_core/mie  ;
wire  [31:0] \dti_riscv/dti_riscv_core/mie_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/mtvec  ;
wire  [31:0] \dti_riscv/dti_riscv_core/mtvec_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/pc_ex  ;
wire  [31:0] \dti_riscv/dti_riscv_core/pc_id  ;
wire  [4:0] \dti_riscv/dti_riscv_core/rd_addr_ex  ;
wire  [4:0] \dti_riscv/dti_riscv_core/rd_addr_id  ;
wire  [4:0] \dti_riscv/dti_riscv_core/rd_addr_mem  ;
wire  [4:0] \dti_riscv/dti_riscv_core/rd_addr_wb  ;
wire  [31:0] \dti_riscv/dti_riscv_core/rd_data_ex  ;
wire  [31:0] \dti_riscv/dti_riscv_core/rd_data_mem  ;
wire  [31:0] \dti_riscv/dti_riscv_core/rd_data_wb  ;
wire   \dti_riscv/dti_riscv_core/rd_write_ex  ;
wire   \dti_riscv/dti_riscv_core/rd_write_id  ;
wire   \dti_riscv/dti_riscv_core/rd_write_mem  ;
wire   \dti_riscv/dti_riscv_core/rd_write_wb  ;
wire  [11:0] \dti_riscv/dti_riscv_core/read_address_csr  ;
logic  [11:0] \dti_riscv/dti_riscv_core/read_address_csr_p  ;
wire  [31:0] \dti_riscv/dti_riscv_core/read_data_csr  ;
wire  [4:0] \dti_riscv/dti_riscv_core/rs1_addr_id  ;
wire  [4:0] \dti_riscv/dti_riscv_core/rs1_address  ;
logic  [4:0] \dti_riscv/dti_riscv_core/rs1_address_p  ;
wire  [31:0] \dti_riscv/dti_riscv_core/rs1_data  ;
wire  [4:0] \dti_riscv/dti_riscv_core/rs2_addr_id  ;
wire  [4:0] \dti_riscv/dti_riscv_core/rs2_address  ;
logic  [4:0] \dti_riscv/dti_riscv_core/rs2_address_p  ;
wire  [31:0] \dti_riscv/dti_riscv_core/rs2_data  ;
wire  [4:0] \dti_riscv/dti_riscv_core/shamt_id  ;
wire   \dti_riscv/dti_riscv_core/software_interrupt  ;
wire   \dti_riscv/dti_riscv_core/stall  ;
wire   \dti_riscv/dti_riscv_core/stall_mem  ;
wire   \dti_riscv/dti_riscv_core/timer_interrupt  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n  ;
wire  [7:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/irq  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/count_instruction  ;
logic  [39:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/test_context_out  ;
wire  [11:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/read_address  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/read_data_out  ;
wire  [11:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/write_address  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/write_data_in  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/write_mode  ;
wire  [39:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context_write  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/software_interrupt_out  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_interrupt_out  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mie_out  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mtvec_out  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/ie_out  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/ie1_out  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk_counter  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/counter_time  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/counter_cycle  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/counter_incr  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mtime_clock_counter  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/counter_mtime  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mtime_compare  ;
logic  [5:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mcause  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mbadaddr  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mscratch  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mepc  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mtvec  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/mie  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/ie  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/ie1  ;
logic  [39:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/test_register  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_interrupt  ;
logic   \dti_riscv/dti_riscv_core/riscv_csr_unit/software_interrupt  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/reset_n  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/increment  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/count  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/current_count  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/reset_n  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/increment  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/count  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/current_count  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/reset_n  ;
wire   \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/increment  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/count  ;
logic  [63:0] \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/current_count  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/reset_n  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/flush  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/stall  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_decode/inst_data  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_decode/inst_address  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/inst_ready  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/inst_count  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_decode/rs1_addr  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_decode/rs2_addr  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_decode/rd_addr  ;
logic  [11:0] \dti_riscv/dti_riscv_core/riscv_decode/csr_addr  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_decode/shamt  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/funct3  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_decode/immediate  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/rd_write  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/branch  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/alu_x_src  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/alu_y_src  ;
wire  [3:0] \dti_riscv/dti_riscv_core/riscv_decode/alu_op  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/mem_op  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_decode/mem_size  ;
logic   \dti_riscv/dti_riscv_core/riscv_decode/count_inst  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_decode/pc  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_decode/csr_write  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/csr_use_imm  ;
wire   \dti_riscv/dti_riscv_core/riscv_decode/decode_exception  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/decode_exception_cause  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_decode/instruction  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_decode/immediate_value  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/immediate  ;
wire  [6:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/opcode  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct3  ;
wire  [6:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct7  ;
wire  [11:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct12  ;
logic   \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  ;
logic   \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/decode_exception  ;
logic  [5:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/decode_exception_cause  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_write  ;
logic   \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_imm  ;
logic  [3:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_x_src  ;
logic  [3:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_y_src  ;
logic  [3:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_op  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  ;
logic   \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  ;
logic  [5:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_op_temp  ;
wire  [6:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/opcode  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct3  ;
wire  [7:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct7  ;
logic  [3:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  ;
logic  [3:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/reset_n  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/stall  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/flush  ;
wire  [7:0] \dti_riscv/dti_riscv_core/riscv_execute/irq  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/timer_interrupt  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/software_interrupt  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/dmem_address  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/dmem_data_out  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/dmem_data_size  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/dmem_read_req  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/dmem_write_req  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/rs1_addr_in  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/rs2_addr_in  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/rd_addr_in  ;
logic  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/rd_addr_out  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/rs1_data_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/rs2_data_in  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/rd_data_out  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/shamt_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/immediate_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pc_in  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pc_out  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/funct3_in  ;
wire  [11:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_addr_in  ;
logic  [11:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_addr_out  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_write_in  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_write_out  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_value_in  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_value_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/csr_use_immediate_in  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_src_in  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_src_in  ;
wire  [3:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_op_in  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/rd_write_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/rd_write_out  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/branch_in  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/branch_out  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_op_in  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_op_out  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_size_in  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_size_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/count_instruction_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/count_instruction_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/ie_in  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/ie1_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/mie_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/mtvec_in  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/mtvec_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/decode_exception_in  ;
wire  [5:0] \dti_riscv/dti_riscv_core/riscv_execute/decode_exception_cause_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/exception_out  ;
logic  [39:0] \dti_riscv/dti_riscv_core/riscv_execute/exception_context_out  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/jump_out  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/jump_target_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/mem_rd_write  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_rd_addr  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_rd_value  ;
wire  [11:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_csr_addr  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_csr_write  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/mem_exception  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/wb_rd_write  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/wb_rd_addr  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/wb_rd_value  ;
wire  [11:0] \dti_riscv/dti_riscv_core/riscv_execute/wb_csr_addr  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/wb_csr_write  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/wb_exception  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_mem_op  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/hazard_detected  ;
logic  [3:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_op  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_src  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_src  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_result  ;
logic  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/rs1_addr  ;
logic  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/rs2_addr  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/rs1_data  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/rs2_data  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_op  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/mem_size  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pc  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/immediate  ;
logic  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/shamt  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/funct3  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/rs1_forwarded  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/rs2_forwarded  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/branch  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/branch_condition  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/do_jump  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/jump_target  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/mie  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/mtvec  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_write  ;
logic  [11:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_addr  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/csr_use_immediate  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/csr_value  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/decode_exception  ;
logic  [5:0] \dti_riscv/dti_riscv_core/riscv_execute/decode_exception_cause  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/exception_taken  ;
logic  [5:0] \dti_riscv/dti_riscv_core/riscv_execute/exception_cause  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/exception_addr  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/data_misaligned  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/instr_misaligned  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/irq_asserted  ;
logic  [3:0] \dti_riscv/dti_riscv_core/riscv_execute/irq_asserted_num  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/load_hazard_detected  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/csr_hazard_detected  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/source  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/register_value  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/immediate_value  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/shamt_value  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/pc_value  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/csr_value  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/source  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/register_value  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/immediate_value  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/shamt_value  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/pc_value  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/csr_value  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/funct3  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2  ;
logic   \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y  ;
wire  [3:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/operation  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/x  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/y  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/immediate  ;
wire   \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/use_immediate  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/write_mode  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/result  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/y_temp  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/reset_n  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/boost_en  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_fetch/imem_data_in  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/imem_ack  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_fetch/imem_address  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/imem_req  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/stall  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/flush  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/branch  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/exception  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_fetch/branch_target  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_fetch/evec  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_fetch/inst_data  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_fetch/inst_address  ;
wire   \dti_riscv/dti_riscv_core/riscv_fetch/inst_ready  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_fetch/pc  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_fetch/pc_next  ;
logic   \dti_riscv/dti_riscv_core/riscv_fetch/cancel_fetch  ;
wire   \dti_riscv/dti_riscv_core/riscv_memory/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_memory/reset_n  ;
wire   \dti_riscv/dti_riscv_core/riscv_memory/stall  ;
wire   \dti_riscv/dti_riscv_core/riscv_memory/dmem_read_ack  ;
wire   \dti_riscv/dti_riscv_core/riscv_memory/dmem_write_ack  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_memory/dmem_data_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_memory/pc  ;
wire   \dti_riscv/dti_riscv_core/riscv_memory/rd_write_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_memory/rd_data_in  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_memory/rd_addr_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_memory/rd_write_out  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_memory/rd_data_out  ;
logic  [4:0] \dti_riscv/dti_riscv_core/riscv_memory/rd_addr_out  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_memory/branch  ;
wire  [2:0] \dti_riscv/dti_riscv_core/riscv_memory/mem_op_in  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_memory/mem_size_in  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_memory/mem_op_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_memory/count_instruction_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_memory/count_instruction_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_memory/exception_in  ;
wire  [39:0] \dti_riscv/dti_riscv_core/riscv_memory/exception_context_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_memory/exception_out  ;
logic  [39:0] \dti_riscv/dti_riscv_core/riscv_memory/exception_context_out  ;
wire  [11:0] \dti_riscv/dti_riscv_core/riscv_memory/csr_addr_in  ;
logic  [11:0] \dti_riscv/dti_riscv_core/riscv_memory/csr_addr_out  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_memory/csr_write_in  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_memory/csr_write_out  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_memory/csr_data_in  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_memory/csr_data_out  ;
logic  [2:0] \dti_riscv/dti_riscv_core/riscv_memory/mem_op  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_memory/mem_size  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_memory/rd_data  ;
wire   \dti_riscv/dti_riscv_core/riscv_register_file/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_register_file/reset_n  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_register_file/rs1_addr  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_register_file/rs1_data  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_register_file/rs2_addr  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_register_file/rs2_data  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_register_file/rd_addr  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_register_file/rd_data  ;
wire   \dti_riscv/dti_riscv_core/riscv_register_file/rd_write  ;
logic  [31:0][31:0] \dti_riscv/dti_riscv_core/riscv_register_file/regfile  ;
logic  [4:0] \dti_riscv/dti_riscv_core/riscv_register_file/rs1_addr_temp  ;
logic  [4:0] \dti_riscv/dti_riscv_core/riscv_register_file/rs2_addr_temp  ;
wire   \dti_riscv/dti_riscv_core/riscv_writeback/clk  ;
wire   \dti_riscv/dti_riscv_core/riscv_writeback/reset_n  ;
wire   \dti_riscv/dti_riscv_core/riscv_writeback/count_instruction_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_writeback/count_instruction_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_writeback/exception_in  ;
wire  [39:0] \dti_riscv/dti_riscv_core/riscv_writeback/exception_context_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_writeback/exception_out  ;
logic  [39:0] \dti_riscv/dti_riscv_core/riscv_writeback/exception_context_out  ;
wire  [11:0] \dti_riscv/dti_riscv_core/riscv_writeback/csr_addr_in  ;
logic  [11:0] \dti_riscv/dti_riscv_core/riscv_writeback/csr_addr_out  ;
wire  [1:0] \dti_riscv/dti_riscv_core/riscv_writeback/csr_write_in  ;
logic  [1:0] \dti_riscv/dti_riscv_core/riscv_writeback/csr_write_out  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_writeback/csr_data_in  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_writeback/csr_data_out  ;
wire   \dti_riscv/dti_riscv_core/riscv_writeback/rd_write_in  ;
wire  [31:0] \dti_riscv/dti_riscv_core/riscv_writeback/rd_data_in  ;
wire  [4:0] \dti_riscv/dti_riscv_core/riscv_writeback/rd_addr_in  ;
logic   \dti_riscv/dti_riscv_core/riscv_writeback/rd_write_out  ;
logic  [31:0] \dti_riscv/dti_riscv_core/riscv_writeback/rd_data_out  ;
logic  [4:0] \dti_riscv/dti_riscv_core/riscv_writeback/rd_addr_out  ;
wire   \dti_riscv/imem/clk  ;
wire   \dti_riscv/imem/reset_n  ;
wire   \dti_riscv/imem/boost_en  ;
wire  [31:0] \dti_riscv/imem/rx_boost_inst_data_in  ;
wire   \dti_riscv/imem/rx_boost_inst_wr_req  ;
wire  [31:0] \dti_riscv/imem/imem_address  ;
wire   \dti_riscv/imem/imem_req  ;
logic   \dti_riscv/imem/imem_ack  ;
logic  [31:0] \dti_riscv/imem/imem_data_in  ;
logic  [99:0][31:0] \dti_riscv/imem/instruction_memory  ;
logic  [6:0] \dti_riscv/imem/index_inst  ;
logic   \dti_riscv/imem/boost_en_tmp  ;
logic   \dti_riscv/imem/boost_en_trigger  ;


assign \dti_riscv/dti_apb_adapter/apb_prdata  = apb_prdata;
assign \dti_riscv/dti_apb_adapter/apb_pready  = apb_pready;
assign \dti_riscv/dti_apb_adapter/apb_pslverr  = apb_pslverr;
assign \dti_riscv/dti_apb_adapter/clk  = clk;
assign \dti_riscv/dti_apb_adapter/mem_address  = dmem_address;
assign \dti_riscv/dti_apb_adapter/mem_data_in  = mem_data_in;
assign \dti_riscv/dti_apb_adapter/mem_data_size  = dmem_data_size;
assign \dti_riscv/dti_apb_adapter/mem_read_req  = dmem_read_req;
assign \dti_riscv/dti_apb_adapter/mem_write_req  = dmem_write_req;
assign \dti_riscv/dti_apb_adapter/reset_n  = reset_n;
assign apb_paddr = \dti_riscv/dti_apb_adapter/apb_paddr ;
assign apb_penable = \dti_riscv/dti_apb_adapter/apb_penable ;
assign apb_psel = \dti_riscv/dti_apb_adapter/apb_psel ;
assign apb_pwdata = \dti_riscv/dti_apb_adapter/apb_pwdata ;
assign apb_pwrite = \dti_riscv/dti_apb_adapter/apb_pwrite ;
assign dmem_data_in = \dti_riscv/dti_apb_adapter/mem_data_out ;
assign dmem_read_ack = \dti_riscv/dti_apb_adapter/mem_read_ack ;
assign dmem_write_ack = \dti_riscv/dti_apb_adapter/mem_write_ack ;

assign \dti_riscv/dti_apb_peripheral/apb_paddr  = apb_paddr;
assign \dti_riscv/dti_apb_peripheral/apb_pclk  = apb_pclk;
assign \dti_riscv/dti_apb_peripheral/apb_penable  = apb_penable;
assign \dti_riscv/dti_apb_peripheral/apb_presetn  = apb_presetn;
assign \dti_riscv/dti_apb_peripheral/apb_psel  = apb_psel;
assign \dti_riscv/dti_apb_peripheral/apb_pwdata  = apb_pwdata;
assign \dti_riscv/dti_apb_peripheral/apb_pwrite  = apb_pwrite;
assign \dti_riscv/dti_apb_peripheral/clk_uart  = clk_uart;
assign \dti_riscv/dti_apb_peripheral/cts_n  = cts_n;
assign \dti_riscv/dti_apb_peripheral/gpio_i  = gpio_i;
assign \dti_riscv/dti_apb_peripheral/reset_n  = reset_n;
assign \dti_riscv/dti_apb_peripheral/rx  = rx;
assign apb_prdata = \dti_riscv/dti_apb_peripheral/apb_prdata ;
assign apb_pready = \dti_riscv/dti_apb_peripheral/apb_pready ;
assign apb_pslverr = \dti_riscv/dti_apb_peripheral/apb_pslverr ;
assign gpio_o = \dti_riscv/dti_apb_peripheral/gpio_o ;
assign irq = \dti_riscv/dti_apb_peripheral/irq ;
assign rts_n = \dti_riscv/dti_apb_peripheral/rts_n ;
assign tx = \dti_riscv/dti_apb_peripheral/tx ;

assign \dti_riscv/dti_boost_inst/clk  = clk;
assign \dti_riscv/dti_boost_inst/reset_n  = reset_n;
assign \dti_riscv/dti_boost_inst/rx  = rx_boost;
assign rts_n_boost = \dti_riscv/dti_boost_inst/rts_n ;
assign rx_boost_inst_data_in = \dti_riscv/dti_boost_inst/rx_boost_inst_data_in ;
assign rx_boost_inst_wr_req = \dti_riscv/dti_boost_inst/rx_boost_inst_wr_req ;

assign \dti_riscv/dti_riscv_core/boost_en  = boost_en;
assign \dti_riscv/dti_riscv_core/clk  = clk;
assign \dti_riscv/dti_riscv_core/dmem_data_in  = dmem_data_in;
assign \dti_riscv/dti_riscv_core/dmem_read_ack  = dmem_read_ack;
assign \dti_riscv/dti_riscv_core/dmem_write_ack  = dmem_write_ack;
assign \dti_riscv/dti_riscv_core/imem_ack  = imem_ack;
assign \dti_riscv/dti_riscv_core/imem_data_in  = imem_data_in;
assign \dti_riscv/dti_riscv_core/irq  = irq;
assign \dti_riscv/dti_riscv_core/reset_n  = reset_n;
assign dmem_address = \dti_riscv/dti_riscv_core/dmem_address ;
assign mem_data_in = \dti_riscv/dti_riscv_core/dmem_data_out ;
assign dmem_data_size = \dti_riscv/dti_riscv_core/dmem_data_size ;
assign dmem_read_req = \dti_riscv/dti_riscv_core/dmem_read_req ;
assign dmem_write_req = \dti_riscv/dti_riscv_core/dmem_write_req ;
assign imem_address = \dti_riscv/dti_riscv_core/imem_address ;
assign imem_req = \dti_riscv/dti_riscv_core/imem_req ;
assign test_context_out = \dti_riscv/dti_riscv_core/test_context_out ;

assign \dti_riscv/imem/clk  = clk;
assign \dti_riscv/imem/reset_n  = reset_n;
assign \dti_riscv/imem/boost_en  = boost_en;
assign \dti_riscv/imem/rx_boost_inst_data_in  = rx_boost_inst_data_in;
assign \dti_riscv/imem/rx_boost_inst_wr_req  = rx_boost_inst_wr_req;
assign \dti_riscv/imem/imem_address  = imem_address;
assign \dti_riscv/imem/imem_req  = imem_req;
assign imem_ack = \dti_riscv/imem/imem_ack ;
assign imem_data_in = \dti_riscv/imem/imem_data_in ;
assign \dti_riscv/dti_apb_adapter/mem_write_ack  = (((\dti_riscv/dti_apb_adapter/current_state  == 2'd2) & \dti_riscv/dti_apb_adapter/apb_pready ) & \dti_riscv/dti_apb_adapter/apb_pwrite );
assign \dti_riscv/dti_apb_adapter/mem_read_ack  = (((\dti_riscv/dti_apb_adapter/current_state  == 2'd2) & \dti_riscv/dti_apb_adapter/apb_pready ) & (!\dti_riscv/dti_apb_adapter/apb_pwrite ));

always @(*)
begin
case (\dti_riscv/dti_apb_adapter/mem_data_size )
2'b00: begin
\dti_riscv/dti_apb_adapter/mem_data  = {{24'b000000000000000000000000,\dti_riscv/dti_apb_adapter/mem_data_in }};
end
2'b01: begin
\dti_riscv/dti_apb_adapter/mem_data  = {{16'b0000000000000000,\dti_riscv/dti_apb_adapter/mem_data_in }};
end
2'b10: begin
\dti_riscv/dti_apb_adapter/mem_data  = \dti_riscv/dti_apb_adapter/mem_data_in ;
end
default: begin
\dti_riscv/dti_apb_adapter/mem_data  = \dti_riscv/dti_apb_adapter/mem_data_in ;
end
endcase
end


always @(*)
begin: next_state_block_proc_5
case (\dti_riscv/dti_apb_adapter/current_state )
2'd0: begin
if ((\dti_riscv/dti_apb_adapter/mem_write_req  || \dti_riscv/dti_apb_adapter/mem_read_req ))
\dti_riscv/dti_apb_adapter/next_state  = 2'd1;
else
\dti_riscv/dti_apb_adapter/next_state  = 2'd0;
end
2'd1: begin
if (\dti_riscv/dti_apb_adapter/apb_psel_cld )
\dti_riscv/dti_apb_adapter/next_state  = 2'd2;
else
\dti_riscv/dti_apb_adapter/next_state  = 2'd1;
end
2'd2: begin
if ((\dti_riscv/dti_apb_adapter/apb_pready  & (\dti_riscv/dti_apb_adapter/mem_write_req  || \dti_riscv/dti_apb_adapter/mem_read_req )))
\dti_riscv/dti_apb_adapter/next_state  = 2'd1;
else
if (\dti_riscv/dti_apb_adapter/apb_pready )
\dti_riscv/dti_apb_adapter/next_state  = 2'd0;
else
\dti_riscv/dti_apb_adapter/next_state  = 2'd2;
end
default: \dti_riscv/dti_apb_adapter/next_state  = 2'd0;
endcase
end


always @( posedge \dti_riscv/dti_apb_adapter/clk  or negedge \dti_riscv/dti_apb_adapter/reset_n  )
begin: clocked_block_proc_9
if ((!\dti_riscv/dti_apb_adapter/reset_n ))
begin
\dti_riscv/dti_apb_adapter/current_state  <= 2'd0;
\dti_riscv/dti_apb_adapter/apb_paddr_cld  <= 0;
\dti_riscv/dti_apb_adapter/apb_penable_cld  <= 0;
\dti_riscv/dti_apb_adapter/apb_psel_cld  <= 0;
\dti_riscv/dti_apb_adapter/apb_pwdata_cld  <= 0;
\dti_riscv/dti_apb_adapter/apb_pwrite_cld  <= 0;
\dti_riscv/dti_apb_adapter/mem_data_out_cld  <= 0;
end
else
begin
\dti_riscv/dti_apb_adapter/current_state  <= \dti_riscv/dti_apb_adapter/next_state ;
case (\dti_riscv/dti_apb_adapter/current_state )
2'd0: begin
if ((\dti_riscv/dti_apb_adapter/mem_write_req  || \dti_riscv/dti_apb_adapter/mem_read_req ))
begin
\dti_riscv/dti_apb_adapter/apb_psel_cld  <= 1'b1;
\dti_riscv/dti_apb_adapter/apb_paddr_cld  <= \dti_riscv/dti_apb_adapter/mem_address ;
\dti_riscv/dti_apb_adapter/apb_pwrite_cld  <= \dti_riscv/dti_apb_adapter/mem_write_req ;
if (\dti_riscv/dti_apb_adapter/mem_write_req )
begin
\dti_riscv/dti_apb_adapter/apb_pwdata_cld  <= \dti_riscv/dti_apb_adapter/mem_data ;
end
end
end
2'd1: begin
if (\dti_riscv/dti_apb_adapter/apb_psel_cld )
\dti_riscv/dti_apb_adapter/apb_penable_cld  <= 1'b1;
end
2'd2: begin
if ((\dti_riscv/dti_apb_adapter/apb_pready  & (\dti_riscv/dti_apb_adapter/mem_write_req  || \dti_riscv/dti_apb_adapter/mem_read_req )))
begin
\dti_riscv/dti_apb_adapter/apb_psel_cld  <= 1'b1;
\dti_riscv/dti_apb_adapter/apb_paddr_cld  <= \dti_riscv/dti_apb_adapter/mem_address ;
\dti_riscv/dti_apb_adapter/apb_pwrite_cld  <= \dti_riscv/dti_apb_adapter/mem_write_req ;
if (\dti_riscv/dti_apb_adapter/mem_write_req )
begin
\dti_riscv/dti_apb_adapter/apb_pwdata_cld  <= \dti_riscv/dti_apb_adapter/mem_data ;
end
\dti_riscv/dti_apb_adapter/apb_penable_cld  <= 1'b0;
if ((!\dti_riscv/dti_apb_adapter/apb_pwrite_cld ))
begin
\dti_riscv/dti_apb_adapter/mem_data_out_cld  <= \dti_riscv/dti_apb_adapter/apb_prdata ;
end
end
else
if (\dti_riscv/dti_apb_adapter/apb_pready )
begin
\dti_riscv/dti_apb_adapter/apb_penable_cld  <= 1'b0;
\dti_riscv/dti_apb_adapter/apb_psel_cld  <= 1'b0;
\dti_riscv/dti_apb_adapter/apb_pwrite_cld  <= 0;
end
end
default: begin
\dti_riscv/dti_apb_adapter/apb_penable_cld  <= 1'b0;
\dti_riscv/dti_apb_adapter/apb_psel_cld  <= 1'b0;
end
endcase
end
end


always @(*)
begin: clocked_output_proc_22
\dti_riscv/dti_apb_adapter/apb_paddr  = \dti_riscv/dti_apb_adapter/apb_paddr_cld ;
\dti_riscv/dti_apb_adapter/apb_penable  = \dti_riscv/dti_apb_adapter/apb_penable_cld ;
\dti_riscv/dti_apb_adapter/apb_psel  = \dti_riscv/dti_apb_adapter/apb_psel_cld ;
\dti_riscv/dti_apb_adapter/apb_pwdata  = \dti_riscv/dti_apb_adapter/apb_pwdata_cld ;
\dti_riscv/dti_apb_adapter/apb_pwrite  = \dti_riscv/dti_apb_adapter/apb_pwrite_cld ;
\dti_riscv/dti_apb_adapter/mem_data_out  = \dti_riscv/dti_apb_adapter/mem_data_out_cld ;
end

assign \dti_riscv/dti_apb_peripheral/apb_pready  = ((\dti_riscv/dti_apb_peripheral/apb_pready_uart  || \dti_riscv/dti_apb_peripheral/apb_pready_gpio ) || \dti_riscv/dti_apb_peripheral/apb_pready_timer );
assign \dti_riscv/dti_apb_peripheral/apb_pslverr  = ((\dti_riscv/dti_apb_peripheral/apb_pslverr_uart  || \dti_riscv/dti_apb_peripheral/apb_pslverr_gpio ) || \dti_riscv/dti_apb_peripheral/apb_pslverr_timer );
assign \dti_riscv/dti_apb_peripheral/apb_prdata  = (((|\dti_riscv/dti_apb_peripheral/apb_prdata_uart ) || (|\dti_riscv/dti_apb_peripheral/apb_prdata_gpio )) || (|\dti_riscv/dti_apb_peripheral/apb_prdata_timer ));

assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_presetn  = \dti_riscv/dti_apb_peripheral/apb_presetn ;
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pclk  = \dti_riscv/dti_apb_peripheral/apb_pclk ;
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_paddr  = \dti_riscv/dti_apb_peripheral/apb_paddr ;
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_psel  = \dti_riscv/dti_apb_peripheral/apb_psel ;
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_penable  = \dti_riscv/dti_apb_peripheral/apb_penable ;
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwrite  = \dti_riscv/dti_apb_peripheral/apb_pwrite ;
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwdata  = \dti_riscv/dti_apb_peripheral/apb_pwdata ;
assign \dti_riscv/dti_apb_peripheral/apb_pready_gpio  = \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pready ;
assign \dti_riscv/dti_apb_peripheral/apb_prdata_gpio  = \dti_riscv/dti_apb_peripheral/apb_gpio/apb_prdata ;
assign \dti_riscv/dti_apb_peripheral/apb_pslverr_gpio  = \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pslverr ;
assign \dti_riscv/dti_apb_peripheral/apb_gpio/gpio_i  = \dti_riscv/dti_apb_peripheral/gpio_i ;
assign \dti_riscv/dti_apb_peripheral/gpio_o  = \dti_riscv/dti_apb_peripheral/apb_gpio/gpio_o ;

assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn  = \dti_riscv/dti_apb_peripheral/apb_presetn ;
assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_pclk  = \dti_riscv/dti_apb_peripheral/apb_pclk ;
assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_paddr  = \dti_riscv/dti_apb_peripheral/apb_paddr ;
assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_psel  = \dti_riscv/dti_apb_peripheral/apb_psel ;
assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_penable  = \dti_riscv/dti_apb_peripheral/apb_penable ;
assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite  = \dti_riscv/dti_apb_peripheral/apb_pwrite ;
assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwdata  = \dti_riscv/dti_apb_peripheral/apb_pwdata ;
assign \dti_riscv/dti_apb_peripheral/apb_pready_timer  = \dti_riscv/dti_apb_peripheral/apb_timer/apb_pready ;
assign \dti_riscv/dti_apb_peripheral/apb_prdata_timer  = \dti_riscv/dti_apb_peripheral/apb_timer/apb_prdata ;
assign \dti_riscv/dti_apb_peripheral/apb_pslverr_timer  = \dti_riscv/dti_apb_peripheral/apb_timer/apb_pslverr ;
assign \dti_riscv/dti_apb_peripheral/irq  = \dti_riscv/dti_apb_peripheral/apb_timer/irq ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_presetn  = \dti_riscv/dti_apb_peripheral/apb_presetn ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_pclk  = \dti_riscv/dti_apb_peripheral/apb_pclk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_paddr  = \dti_riscv/dti_apb_peripheral/apb_paddr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_psel  = \dti_riscv/dti_apb_peripheral/apb_psel ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_penable  = \dti_riscv/dti_apb_peripheral/apb_penable ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_pwrite  = \dti_riscv/dti_apb_peripheral/apb_pwrite ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_pwdata  = \dti_riscv/dti_apb_peripheral/apb_pwdata ;
assign \dti_riscv/dti_apb_peripheral/apb_pready_uart  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_pready ;
assign \dti_riscv/dti_apb_peripheral/apb_prdata_uart  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_prdata ;
assign \dti_riscv/dti_apb_peripheral/apb_pslverr_uart  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_pslverr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/clk  = \dti_riscv/dti_apb_peripheral/clk_uart ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/reset_n  = \dti_riscv/dti_apb_peripheral/reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/cts_n  = \dti_riscv/dti_apb_peripheral/cts_n ;
assign \dti_riscv/dti_apb_peripheral/tx  = \dti_riscv/dti_apb_peripheral/apb_uart/tx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/rx  = \dti_riscv/dti_apb_peripheral/rx ;
assign \dti_riscv/dti_apb_peripheral/rts_n  = \dti_riscv/dti_apb_peripheral/apb_uart/rts_n ;
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_gpio_enable  = ((\dti_riscv/dti_apb_peripheral/apb_gpio/apb_paddr  >= 1000) & (\dti_riscv/dti_apb_peripheral/apb_gpio/apb_paddr  <= 1999));

always @( posedge \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_gpio/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_gpio/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/wack  <= 0;
\dti_riscv/dti_apb_peripheral/apb_gpio/waddrerr  <= 1'b0;
end
else
begin
if ((((\dti_riscv/dti_apb_peripheral/apb_gpio/apb_psel  & \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_gpio/apb_penable ) & \dti_riscv/dti_apb_peripheral/apb_gpio/apb_gpio_enable ))
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/wack  <= 1'b1;
\dti_riscv/dti_apb_peripheral/apb_gpio/waddrerr  <= 1'b0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/wack  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_gpio/waddrerr  <= 1'b0;
end
end
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_gpio/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_gpio/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/rack  <= 0;
\dti_riscv/dti_apb_peripheral/apb_gpio/raddrerr  <= 1'b0;
end
else
begin
if ((((\dti_riscv/dti_apb_peripheral/apb_gpio/apb_psel  & (!\dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwrite )) & \dti_riscv/dti_apb_peripheral/apb_gpio/apb_penable ) & \dti_riscv/dti_apb_peripheral/apb_gpio/apb_gpio_enable ))
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/rack  <= 1'b1;
\dti_riscv/dti_apb_peripheral/apb_gpio/raddrerr  <= 1'b0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/rack  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_gpio/raddrerr  <= 1'b0;
end
end
end

assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_prdata  = (\dti_riscv/dti_apb_peripheral/apb_gpio/apb_pready  ? \dti_riscv/dti_apb_peripheral/apb_gpio/gpio_i  : 0);
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pready  = ((\dti_riscv/dti_apb_peripheral/apb_gpio/apb_psel  == 1'b1) ? ((\dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwrite  & \dti_riscv/dti_apb_peripheral/apb_gpio/wack ) | ((~\dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_gpio/rack )) : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pslverr  = ((\dti_riscv/dti_apb_peripheral/apb_gpio/apb_psel  == 1'b1) ? ((\dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwrite  & \dti_riscv/dti_apb_peripheral/apb_gpio/waddrerr ) | ((~\dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_gpio/raddrerr )) : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_gpio/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_gpio/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/data_gpio  <= 0;
end
else
begin
if (\dti_riscv/dti_apb_peripheral/apb_gpio/apb_pready )
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/data_gpio  <= \dti_riscv/dti_apb_peripheral/apb_gpio/apb_pwdata ;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_gpio/data_gpio  <= \dti_riscv/dti_apb_peripheral/apb_gpio/data_gpio ;
end
end
end

assign \dti_riscv/dti_apb_peripheral/apb_gpio/gpio_o  = \dti_riscv/dti_apb_peripheral/apb_gpio/data_gpio ;
assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_timer_enable  = ((\dti_riscv/dti_apb_peripheral/apb_timer/apb_paddr  >= 2000) & (\dti_riscv/dti_apb_peripheral/apb_timer/apb_paddr  <= 2999));
assign \dti_riscv/dti_apb_peripheral/apb_timer/irq  = ((\dti_riscv/dti_apb_peripheral/apb_timer/counter  == \dti_riscv/dti_apb_peripheral/apb_timer/compare ) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_timer/clear_counter_update  = (\dti_riscv/dti_apb_peripheral/apb_timer/clear_counter  ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_timer/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/wack  <= 0;
\dti_riscv/dti_apb_peripheral/apb_timer/waddrerr  <= 1'b0;
end
else
begin
if ((((\dti_riscv/dti_apb_peripheral/apb_timer/apb_psel  & \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_timer/apb_penable ) & \dti_riscv/dti_apb_peripheral/apb_timer/apb_timer_enable ))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/wack  <= 1'b1;
\dti_riscv/dti_apb_peripheral/apb_timer/waddrerr  <= 1'b0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_timer/wack  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_timer/waddrerr  <= 1'b0;
end
end
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_timer/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/rack  <= 0;
\dti_riscv/dti_apb_peripheral/apb_timer/raddrerr  <= 1'b0;
end
else
begin
if ((((\dti_riscv/dti_apb_peripheral/apb_timer/apb_psel  & (!\dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite )) & \dti_riscv/dti_apb_peripheral/apb_timer/apb_penable ) & \dti_riscv/dti_apb_peripheral/apb_timer/apb_timer_enable ))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/rack  <= 1'b1;
\dti_riscv/dti_apb_peripheral/apb_timer/raddrerr  <= 1'b0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_timer/rack  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_timer/raddrerr  <= 1'b0;
end
end
end

assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_pready  = ((\dti_riscv/dti_apb_peripheral/apb_timer/apb_psel  == 1'b1) ? ((\dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite  & \dti_riscv/dti_apb_peripheral/apb_timer/wack ) | ((~\dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_timer/rack )) : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_timer/apb_pslverr  = ((\dti_riscv/dti_apb_peripheral/apb_timer/apb_psel  == 1'b1) ? ((\dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite  & \dti_riscv/dti_apb_peripheral/apb_timer/waddrerr ) | ((~\dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_timer/raddrerr )) : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_timer/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/counter  <= 0;
end
else
begin
if (\dti_riscv/dti_apb_peripheral/apb_timer/clear_counter )
begin
\dti_riscv/dti_apb_peripheral/apb_timer/counter  <= 0;
end
else
if ((\dti_riscv/dti_apb_peripheral/apb_timer/ctrl_run  && (\dti_riscv/dti_apb_peripheral/apb_timer/counter  != \dti_riscv/dti_apb_peripheral/apb_timer/compare )))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/counter  <= (\dti_riscv/dti_apb_peripheral/apb_timer/counter  + 1);
end
end
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_timer/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_timer/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/ctrl_run  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_timer/clear_counter  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_timer/compare  <= 4294967295;
end
else
begin
case (\dti_riscv/dti_apb_peripheral/apb_timer/apb_paddr )
2004: begin
if ((\dti_riscv/dti_apb_peripheral/apb_timer/apb_pready  & \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite ))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/ctrl_run  <= \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwdata [0];
\dti_riscv/dti_apb_peripheral/apb_timer/clear_counter  <= \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwdata [1];
end
else
if (\dti_riscv/dti_apb_peripheral/apb_timer/clear_counter_update )
begin
\dti_riscv/dti_apb_peripheral/apb_timer/clear_counter  <= 1'b0;
end
end
2008: begin
if ((\dti_riscv/dti_apb_peripheral/apb_timer/apb_pready  & \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite ))
begin
\dti_riscv/dti_apb_peripheral/apb_timer/compare  <= \dti_riscv/dti_apb_peripheral/apb_timer/apb_pwdata ;
end
end
default: begin
\dti_riscv/dti_apb_peripheral/apb_timer/ctrl_run  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_timer/clear_counter  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_timer/compare  <= 4294967295;
end
endcase
end
end


always @(*)
begin
if ((\dti_riscv/dti_apb_peripheral/apb_timer/apb_pready  & (!\dti_riscv/dti_apb_peripheral/apb_timer/apb_pwrite )))
begin
case (\dti_riscv/dti_apb_peripheral/apb_timer/apb_paddr )
2004: \dti_riscv/dti_apb_peripheral/apb_timer/apb_prdata  = {{31'b0000000000000000000000000000000,\dti_riscv/dti_apb_peripheral/apb_timer/ctrl_run }};
2008: \dti_riscv/dti_apb_peripheral/apb_timer/apb_prdata  = \dti_riscv/dti_apb_peripheral/apb_timer/compare ;
default: \dti_riscv/dti_apb_peripheral/apb_timer/apb_prdata  = 0;
endcase
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_timer/apb_prdata  = 0;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_timer/irq  = (\dti_riscv/dti_apb_peripheral/apb_timer/counter  == \dti_riscv/dti_apb_peripheral/apb_timer/compare );

assign \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/rxclk_en  = \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rxclk_en ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/txclk_en  = \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/txclk_en ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/cts_n  = \dti_riscv/dti_apb_peripheral/apb_uart/cts_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken  = \dti_riscv/dti_apb_peripheral/apb_uart/txclk_en ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/tx  = \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_data_out  = \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_data_out ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_rd_req  = \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_rd_req ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/receiver/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/receiver/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/receiver/clken  = \dti_riscv/dti_apb_peripheral/apb_uart/rxclk_en ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/rts_n  = \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rts_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx  = \dti_riscv/dti_apb_peripheral/apb_uart/rx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_full  = \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_wr_req  = \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_wr_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_data_in  = \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_data_in ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pclk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_pclk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_presetn  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_presetn ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_prdata  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_prdata ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwdata  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_pwdata ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_pslverr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pslverr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_paddr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_paddr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_pready  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pready ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_penable  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_penable ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_psel  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_psel ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_pwrite ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_data_out  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_data_out ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_rd_req  = \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_rd_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/fifo_write_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_data_in  = \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_data_in ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_wr_req  = \dti_riscv/dti_apb_peripheral/apb_uart/fifo_read_wr_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rxclk_en  = (\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rx_acc  == 0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/txclk_en  = (\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/tx_acc  == 0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/reset_n  )
begin: block_clocked_rx_acc_65
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rx_acc  <= 0;
end
else
begin
if ((\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rx_acc  == 27))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rx_acc  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rx_acc  <= (\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/rx_acc  + 1);
end
end
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/reset_n  )
begin: block_clocked_tx_acc_70
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/tx_acc  <= 0;
end
else
begin
if ((\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/tx_acc  == 434))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/tx_acc  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/tx_acc  <= (\dti_riscv/dti_apb_peripheral/apb_uart/baudrate_gen/tx_acc  + 1);
end
end
end


always @(*)
begin: next_state_block_proc_75
case (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/current_state )
2'b00: begin
if ((((!\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_empty ) & (!\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/cts_n )) & \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b01;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b00;
end
end
2'b01: begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b10;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b01;
end
end
2'b10: begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken )
begin
if ((\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_data  == (8 - 1)))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b11;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b10;
end
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b10;
end
end
2'b11: begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken )
begin
if ((\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_stop  == ((1 + 0) - 1)))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b00;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b11;
end
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b11;
end
end
default: \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state  = 2'b00;
endcase
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/reset_n  )
begin: clocked_block_proc_92
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/current_state  <= 2'b00;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/current_state  <= \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/next_state ;
case (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/current_state )
2'b00: begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_data  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_stop  <= 0;
end
2'b01: begin
end
2'b10: begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_data  <= (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_data  + 1);
end
end
2'b11: begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_stop  <= (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_stop  + 1);
end
end
endcase
end
end


always @(*)
begin
case (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/current_state )
2'b00: begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx  = 1'b1;
end
2'b01: begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx  = 1'b0;
end
2'b10: begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx  = \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_data_out [\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_data ];
end
2'b11: begin
if (0)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx  = (^\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_data_out [7:0]);
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx  = 1'b1;
end
end
endcase
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/reset_n  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/stt_tx_done  <= 1'b0;
end
else
begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/stt_tx_done )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/stt_tx_done  <= 1'b0;
end
else
if (((\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/clken  && (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/current_state  == 2'b11)) && (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/bitpos_stop  == ((1 + 0) - 1))))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/stt_tx_done  <= 1'b1;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/stt_tx_done  <= \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/stt_tx_done ;
end
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_rd_req  = (\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/stt_tx_done  & (!\dti_riscv/dti_apb_peripheral/apb_uart/transmitter/tx_data_fifo_empty ));

always @(*)
begin: next_state_block_proc_114
case (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/current_state )
2'b00: begin
if ((\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  == 15))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state  = 2'b01;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state  = 2'b00;
end
end
2'b01: begin
if (((\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  == 15) && (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_data  == 8)))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state  = 2'b10;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state  = 2'b01;
end
end
2'b10: begin
if (((\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  == 15) && (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_stop  == (1 + 0))))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state  = 2'b00;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state  = 2'b10;
end
end
default: \dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state  = 2'b00;
endcase
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/receiver/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/receiver/reset_n  )
begin: clocked_block_proc_124
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/receiver/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/current_state  <= 2'b00;
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_data  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_stop  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/scratch  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/current_state  <= \dti_riscv/dti_apb_peripheral/apb_uart/receiver/next_state ;
case (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/current_state )
2'b00: begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_data  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_stop  <= 0;
if (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/clken )
begin
if (((!\dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx ) || (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  != 0)))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  <= (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  + 1);
end
else
if ((\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  == 15))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  <= 0;
end
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  <= \dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample ;
end
end
2'b01: begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/clken )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  <= (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  + 1);
if ((\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  == 8))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_data  <= (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_data  + 1);
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/scratch [\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_data ] <= \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx ;
end
end
end
2'b10: begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/clken )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  <= (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  + 1);
if ((\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  == 8))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_stop  <= (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_stop  + 1);
end
end
else
if ((\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  == 15))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  <= 0;
end
end
endcase
end
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/receiver/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/receiver/reset_n  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/receiver/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done  <= 0;
end
else
begin
if (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done  <= 1'b0;
end
else
if ((((\dti_riscv/dti_apb_peripheral/apb_uart/receiver/current_state  == 2'b10) & (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/bitpos_stop  == (1 + 0))) & (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/sample  == 15)))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done  <= 1'b1;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done  <= \dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done ;
end
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_wr_req  = \dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_data_in  = \dti_riscv/dti_apb_peripheral/apb_uart/receiver/scratch ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rts_n  = (\dti_riscv/dti_apb_peripheral/apb_uart/receiver/stt_rx_done  || \dti_riscv/dti_apb_peripheral/apb_uart/receiver/rx_data_fifo_full );
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_uart_enable  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_paddr  >= 0) & (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_paddr  <= 999));

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/wack  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/waddrerr  <= 1'b0;
end
else
begin
if ((((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_psel  & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_penable ) & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_uart_enable ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/wack  <= 1'b1;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/waddrerr  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_error ;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/wack  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/waddrerr  <= 1'b0;
end
end
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pclk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_presetn  )
begin
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_presetn ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/rack  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/raddrerr  <= 1'b0;
end
else
begin
if ((((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_psel  & (!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite )) & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_penable ) & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_uart_enable ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/rack  <= 1'b1;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/raddrerr  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_error ;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/rack  <= 1'b0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/raddrerr  <= 1'b0;
end
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_prdata  = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pready  ? {{24'b000000000000000000000000,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/rdata }} : 0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pready  = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_psel  ? ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite  & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/wack ) | ((~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/rack )) : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pslverr  = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_psel  ? ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite  & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/waddrerr ) | ((~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite ) & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/raddrerr )) : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_wr_req  = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pready  & \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite );
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_rd_req  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pready  & (~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwrite )) & (!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_empty ));

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pclk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_presetn ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_din  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pwdata [7:0];
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_req  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_wr_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_error  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_error ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_data_out  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_dout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_req  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_rd_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_write_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_empty ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_din  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_data_in ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_req  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_wr_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/rdata  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_dout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_pclk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/apb_presetn ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_req  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_rd_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/fifo_read_error  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_error ;

function integer   floor_log2_2;
input integer   value_int_i ;
begin: floor_log2_func_155
integer   ceil_log2 ;
begin

for (ceil_log2 = 0 ;((1 << ceil_log2) < value_int_i) ;ceil_log2 = (ceil_log2 + 1))
floor_log2_2 = ceil_log2;

end
if (((1 << ceil_log2) == value_int_i))
floor_log2_2 = ceil_log2;
else
floor_log2_2 = (ceil_log2 - 1);
end
endfunction


assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/req  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_local_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_bin_rd_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full_lvl  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_prog_full_lvl ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_prog_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty_lvl  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_prog_empty_lvl ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_prog_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_local_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_rd_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_synced_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_wr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_2 ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_incr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_error  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/error ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_reset_n ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/incr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_rd_addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/addr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_rd_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/gray_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_rd_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/gray_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_bin_rd_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_reset_n ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/clk_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/clk_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/din_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_wr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_wr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/dout_dest ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/clk_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/clk_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/din_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_full_synced  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/dout_dest ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/req  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_local_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_bin_wr_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full_lvl  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_prog_full_lvl ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_prog_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty_lvl  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_prog_empty_lvl ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_prog_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_local_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_wr_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_synced_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_rd_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_2 ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_incr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_error  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/error ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_reset_n ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/incr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_wr_addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/addr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_wr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/gray_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_wr_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/gray_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_bin_wr_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_reset_n ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/clk_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/clk_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/din_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_gray_rd_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_gray_rd_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/dout_dest ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/clk_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/clk_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/din_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_empty_synced  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/dout_dest ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_dout  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/rd_dout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/rd_addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_rd_addr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_din  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_din ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_wr_addr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_en  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_reset_n ;

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n  )
begin: PROG_FULL_STATE_PROC_157
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full  <= 1'b0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full_nx ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n  )
begin: PROG_EMPTY_STATE_PROC_158
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty  <= 1'b1;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/elem_num  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_local_ptr [5] == \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_synced_ptr [5]) ? (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_synced_ptr [4:0] - \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_local_ptr [4:0]) : ({{1'b1,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_synced_ptr [4:0]}} - {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_local_ptr [4:0]}}));
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/elem_num  > {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_full_lvl }}) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/elem_num  < {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/prog_empty_lvl }}) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n  )
begin: PEAK_STATE_PROC_159
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state  <= (0 ? 1'b0 : 1'b1);
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_local_ptr  == \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_synced_ptr ) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n  )
begin: ERROR_PROC_160
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/error  <= 1'b0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/error  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/error_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/error_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state  && \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/req ) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/incr_ptr  = (((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state ) && \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/req ) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n  )
begin: PEAK_STATE_2_PROC_161
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_2  <= (0 ? 1'b1 : 1'b0);
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_2  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_2_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/peak_state_2_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_local_ptr  == {{(~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_synced_ptr [5:4]),\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_synced_ptr [3:0]}}) ? 1'b1 : 1'b0);

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/gin  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/gray_synced_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/bin_synced_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [(6 - 1)] = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/gin [(6 - 1)];
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [4] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [(4 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/gin [4]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [3] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [(3 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/gin [3]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [2] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [(2 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/gin [2]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [1] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [(1 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/gin [1]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [0] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/bout [(0 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_ctrl/dti_gray_to_bin_inst/gin [0]);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/reset_n  )
begin: BIN_CNT_PROC_162
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt  <= 0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt_nx  = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt  + {{({{(5){{1'b0}}}}),\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/incr_ptr }});

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/reset_n  )
begin: GRAY_PTR_PROC_163
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/gray_ptr  <= 0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/gray_ptr  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/gray_ptr_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt [4:0];

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/dti_bin_to_gray_inst/bin  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/bin_cnt_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/gray_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/dti_bin_to_gray_inst/gout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/dti_bin_to_gray_inst/gout  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/dti_bin_to_gray_inst/bin  >> 1'b1) ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_addr_ptr_gen/dti_bin_to_gray_inst/bin );

always @(*)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/din_src_ff  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/din_src ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/clk_dest  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/reset_n  )
begin: FIRST_STAGE_PROC_165
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/ff_chain_reg0  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/ff_chain_reg1  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/ff_chain_reg0  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/din_src_ff ;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/ff_chain_reg1  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/ff_chain_reg0 ;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/dout_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_ptr/ff_chain_reg1 ;

always @(*)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/din_src_ff  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/din_src ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/clk_dest  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/reset_n  )
begin: FIRST_STAGE_PROC_169
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/ff_chain_reg0  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/ff_chain_reg1  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/ff_chain_reg0  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/din_src_ff ;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/ff_chain_reg1  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/ff_chain_reg0 ;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/dout_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/rd_sync_wr_full_state/ff_chain_reg1 ;

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n  )
begin: PROG_FULL_STATE_PROC_172
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full  <= 1'b0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full_nx ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n  )
begin: PROG_EMPTY_STATE_PROC_173
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty  <= 1'b1;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/elem_num  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_local_ptr [5] == \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_synced_ptr [5]) ? (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_local_ptr [4:0] - \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_synced_ptr [4:0]) : ({{1'b1,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_local_ptr [4:0]}} - {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_synced_ptr [4:0]}}));
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/elem_num  > {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_full_lvl }}) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/elem_num  < {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/prog_empty_lvl }}) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n  )
begin: PEAK_STATE_PROC_174
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state  <= (1 ? 1'b0 : 1'b1);
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_local_ptr  == {{(~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_synced_ptr [5:4]),\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_synced_ptr [3:0]}}) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n  )
begin: ERROR_PROC_175
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/error  <= 1'b0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/error  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/error_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/error_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state  && \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/req ) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/incr_ptr  = (((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state ) && \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/req ) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n  )
begin: PEAK_STATE_2_PROC_176
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_2  <= (1 ? 1'b1 : 1'b0);
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_2  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_2_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/peak_state_2_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_local_ptr  == \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_synced_ptr ) ? 1'b1 : 1'b0);

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/gin  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/gray_synced_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/bin_synced_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [(6 - 1)] = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/gin [(6 - 1)];
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [4] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [(4 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/gin [4]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [3] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [(3 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/gin [3]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [2] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [(2 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/gin [2]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [1] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [(1 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/gin [1]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [0] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/bout [(0 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_ctrl/dti_gray_to_bin_inst/gin [0]);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/reset_n  )
begin: BIN_CNT_PROC_177
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt  <= 0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt_nx  = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt  + {{({{(5){{1'b0}}}}),\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/incr_ptr }});

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/reset_n  )
begin: GRAY_PTR_PROC_178
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/gray_ptr  <= 0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/gray_ptr  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/gray_ptr_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt [4:0];

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/dti_bin_to_gray_inst/bin  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/bin_cnt_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/gray_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/dti_bin_to_gray_inst/gout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/dti_bin_to_gray_inst/gout  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/dti_bin_to_gray_inst/bin  >> 1'b1) ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_addr_ptr_gen/dti_bin_to_gray_inst/bin );

always @(*)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/din_src_ff  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/din_src ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/clk_dest  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/reset_n  )
begin: FIRST_STAGE_PROC_180
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/ff_chain_reg0  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/ff_chain_reg1  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/ff_chain_reg0  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/din_src_ff ;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/ff_chain_reg1  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/ff_chain_reg0 ;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/dout_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_ptr/ff_chain_reg1 ;

always @(*)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/din_src_ff  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/din_src ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/clk_dest  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/reset_n  )
begin: FIRST_STAGE_PROC_184
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/ff_chain_reg0  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/ff_chain_reg1  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/ff_chain_reg0  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/din_src_ff ;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/ff_chain_reg1  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/ff_chain_reg0 ;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/dout_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/wr_sync_rd_empty_state/ff_chain_reg1 ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/rd_dout  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/ff_mem_array [\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/rd_addr ];

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_reset_n  )
begin: FF_MEM_ARRAY_PROC_187
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/ff_mem_array  <= 0;
end
else
if (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_en )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/ff_mem_array [\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_addr ] <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_write/mem_array/wr_din ;
end
end


assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/req  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_local_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_bin_rd_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full_lvl  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_prog_full_lvl ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_prog_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty_lvl  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_prog_empty_lvl ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_prog_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_local_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_rd_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_synced_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_wr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_2 ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_incr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_error  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/error ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_reset_n ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/incr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_rd_addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/addr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_rd_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/gray_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_rd_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/gray_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_bin_rd_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_reset_n ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/clk_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/clk_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/din_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_wr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_wr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/dout_dest ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/clk_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/clk_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/din_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_full_synced  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/dout_dest ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/req  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_req ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_local_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_bin_wr_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full_lvl  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_prog_full_lvl ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_prog_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty_lvl  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_prog_empty_lvl ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_prog_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_local_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_wr_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_synced_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_rd_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_full  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_empty  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_2 ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_incr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_error  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/error ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_reset_n ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/incr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_wr_addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/addr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_wr_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/gray_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_wr_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/gray_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_bin_wr_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_ptr_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_reset_n ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/clk_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/clk_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/din_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_gray_rd_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_gray_rd_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/dout_dest ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/clk_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/clk_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_reset_n ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/din_src  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_empty ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_empty_synced  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/dout_dest ;

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_dout  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/rd_dout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/rd_addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_rd_addr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_din  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_din ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_wr_addr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_en  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_incr_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_clk  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_clk ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_reset_n  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_reset_n ;

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n  )
begin: PROG_FULL_STATE_PROC_190
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full  <= 1'b0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full_nx ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n  )
begin: PROG_EMPTY_STATE_PROC_191
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty  <= 1'b1;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/elem_num  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_local_ptr [5] == \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_synced_ptr [5]) ? (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_synced_ptr [4:0] - \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_local_ptr [4:0]) : ({{1'b1,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_synced_ptr [4:0]}} - {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_local_ptr [4:0]}}));
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/elem_num  > {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_full_lvl }}) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/elem_num  < {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/prog_empty_lvl }}) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n  )
begin: PEAK_STATE_PROC_192
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state  <= (0 ? 1'b0 : 1'b1);
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_local_ptr  == \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_synced_ptr ) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n  )
begin: ERROR_PROC_193
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/error  <= 1'b0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/error  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/error_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/error_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state  && \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/req ) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/incr_ptr  = (((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state ) && \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/req ) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n  )
begin: PEAK_STATE_2_PROC_194
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_2  <= (0 ? 1'b1 : 1'b0);
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_2  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_2_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/peak_state_2_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_local_ptr  == {{(~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_synced_ptr [5:4]),\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_synced_ptr [3:0]}}) ? 1'b1 : 1'b0);

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/gin  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/gray_synced_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/bin_synced_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [(6 - 1)] = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/gin [(6 - 1)];
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [4] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [(4 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/gin [4]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [3] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [(3 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/gin [3]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [2] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [(2 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/gin [2]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [1] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [(1 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/gin [1]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [0] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/bout [(0 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_ctrl/dti_gray_to_bin_inst/gin [0]);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/reset_n  )
begin: BIN_CNT_PROC_195
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt  <= 0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt_nx  = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt  + {{({{(5){{1'b0}}}}),\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/incr_ptr }});

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/reset_n  )
begin: GRAY_PTR_PROC_196
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/gray_ptr  <= 0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/gray_ptr  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/gray_ptr_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt [4:0];

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/dti_bin_to_gray_inst/bin  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/bin_cnt_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/gray_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/dti_bin_to_gray_inst/gout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/dti_bin_to_gray_inst/gout  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/dti_bin_to_gray_inst/bin  >> 1'b1) ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_addr_ptr_gen/dti_bin_to_gray_inst/bin );

always @(*)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/din_src_ff  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/din_src ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/clk_dest  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/reset_n  )
begin: FIRST_STAGE_PROC_198
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/ff_chain_reg0  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/ff_chain_reg1  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/ff_chain_reg0  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/din_src_ff ;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/ff_chain_reg1  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/ff_chain_reg0 ;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/dout_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_ptr/ff_chain_reg1 ;

always @(*)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/din_src_ff  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/din_src ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/clk_dest  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/reset_n  )
begin: FIRST_STAGE_PROC_202
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/ff_chain_reg0  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/ff_chain_reg1  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/ff_chain_reg0  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/din_src_ff ;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/ff_chain_reg1  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/ff_chain_reg0 ;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/dout_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/rd_sync_wr_full_state/ff_chain_reg1 ;

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n  )
begin: PROG_FULL_STATE_PROC_205
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full  <= 1'b0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full_nx ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n  )
begin: PROG_EMPTY_STATE_PROC_206
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty  <= 1'b1;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/elem_num  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_local_ptr [5] == \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_synced_ptr [5]) ? (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_local_ptr [4:0] - \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_synced_ptr [4:0]) : ({{1'b1,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_local_ptr [4:0]}} - {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_synced_ptr [4:0]}}));
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/elem_num  > {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_full_lvl }}) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/elem_num  < {{1'b0,\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/prog_empty_lvl }}) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n  )
begin: PEAK_STATE_PROC_207
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state  <= (1 ? 1'b0 : 1'b1);
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_local_ptr  == {{(~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_synced_ptr [5:4]),\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_synced_ptr [3:0]}}) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n  )
begin: ERROR_PROC_208
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/error  <= 1'b0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/error  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/error_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/error_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state  && \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/req ) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/incr_ptr  = (((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state ) && \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/req ) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n  )
begin: PEAK_STATE_2_PROC_209
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_2  <= (1 ? 1'b1 : 1'b0);
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_2  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_2_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/peak_state_2_nx  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_local_ptr  == \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_synced_ptr ) ? 1'b1 : 1'b0);

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/gin  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/gray_synced_ptr ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/bin_synced_ptr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [(6 - 1)] = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/gin [(6 - 1)];
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [4] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [(4 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/gin [4]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [3] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [(3 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/gin [3]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [2] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [(2 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/gin [2]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [1] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [(1 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/gin [1]);
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [0] = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/bout [(0 + 1)] ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_ctrl/dti_gray_to_bin_inst/gin [0]);

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/reset_n  )
begin: BIN_CNT_PROC_210
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt  <= 0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt_nx  = (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt  + {{({{(5){{1'b0}}}}),\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/incr_ptr }});

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/reset_n  )
begin: GRAY_PTR_PROC_211
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/reset_n ))
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/gray_ptr  <= 0;
else
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/gray_ptr  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/gray_ptr_nx ;
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/addr  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt [4:0];

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/dti_bin_to_gray_inst/bin  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/bin_cnt_nx ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/gray_ptr_nx  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/dti_bin_to_gray_inst/gout ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/dti_bin_to_gray_inst/gout  = ((\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/dti_bin_to_gray_inst/bin  >> 1'b1) ^ \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_addr_ptr_gen/dti_bin_to_gray_inst/bin );

always @(*)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/din_src_ff  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/din_src ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/clk_dest  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/reset_n  )
begin: FIRST_STAGE_PROC_213
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/ff_chain_reg0  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/ff_chain_reg1  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/ff_chain_reg0  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/din_src_ff ;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/ff_chain_reg1  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/ff_chain_reg0 ;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/dout_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_ptr/ff_chain_reg1 ;

always @(*)
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/din_src_ff  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/din_src ;
end


always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/clk_dest  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/reset_n  )
begin: FIRST_STAGE_PROC_217
if ((!\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/ff_chain_reg0  <= 0;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/ff_chain_reg1  <= 0;
end
else
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/ff_chain_reg0  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/din_src_ff ;
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/ff_chain_reg1  <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/ff_chain_reg0 ;
end
end

assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/dout_dest  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/wr_sync_rd_empty_state/ff_chain_reg1 ;
assign \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/rd_dout  = \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/ff_mem_array [\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/rd_addr ];

always @( posedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_clk  or negedge \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_reset_n  )
begin: FF_MEM_ARRAY_PROC_220
if ((~\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_reset_n ))
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/ff_mem_array  <= 0;
end
else
if (\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_en )
begin
\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/ff_mem_array [\dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_addr ] <= \dti_riscv/dti_apb_peripheral/apb_uart/apb_interface/dti_fifo_async_sf_read/mem_array/wr_din ;
end
end

assign \dti_riscv/dti_boost_inst/clken  = (~(|\dti_riscv/dti_boost_inst/rx_acc ));
assign \dti_riscv/dti_boost_inst/rts_n  = 1'b0;

always @( posedge \dti_riscv/dti_boost_inst/clk  or negedge \dti_riscv/dti_boost_inst/reset_n  )
begin
if ((~\dti_riscv/dti_boost_inst/reset_n ))
begin
\dti_riscv/dti_boost_inst/rx_acc  <= 0;
end
else
begin
if ((\dti_riscv/dti_boost_inst/rx_acc  == 27))
begin
\dti_riscv/dti_boost_inst/rx_acc  <= 0;
end
else
begin
\dti_riscv/dti_boost_inst/rx_acc  <= (\dti_riscv/dti_boost_inst/rx_acc  + 1);
end
end
end


always @(*)
begin: next_state_block_proc_228
case (\dti_riscv/dti_boost_inst/current_state )
2'b00: begin
if ((\dti_riscv/dti_boost_inst/sample  == 15))
begin
\dti_riscv/dti_boost_inst/next_state  = 2'b01;
end
else
begin
\dti_riscv/dti_boost_inst/next_state  = 2'b00;
end
end
2'b01: begin
if (((\dti_riscv/dti_boost_inst/sample  == 15) & (\dti_riscv/dti_boost_inst/bitpos_data  == 8)))
begin
\dti_riscv/dti_boost_inst/next_state  = 2'b10;
end
else
begin
\dti_riscv/dti_boost_inst/next_state  = 2'b01;
end
end
2'b10: begin
if (((\dti_riscv/dti_boost_inst/sample  == 15) & (\dti_riscv/dti_boost_inst/bitpos_stop  == (1 + 0))))
begin
\dti_riscv/dti_boost_inst/next_state  = 2'b00;
end
else
begin
\dti_riscv/dti_boost_inst/next_state  = 2'b10;
end
end
default: \dti_riscv/dti_boost_inst/next_state  = 2'b00;
endcase
end


always @( posedge \dti_riscv/dti_boost_inst/clk  or negedge \dti_riscv/dti_boost_inst/reset_n  )
begin: clocked_block_proc_238
if ((~\dti_riscv/dti_boost_inst/reset_n ))
begin
\dti_riscv/dti_boost_inst/current_state  <= 2'b00;
\dti_riscv/dti_boost_inst/sample  <= 0;
\dti_riscv/dti_boost_inst/bitpos_data  <= 0;
\dti_riscv/dti_boost_inst/bitpos_stop  <= 0;
\dti_riscv/dti_boost_inst/scratch  <= 0;
end
else
begin
\dti_riscv/dti_boost_inst/current_state  <= \dti_riscv/dti_boost_inst/next_state ;
case (\dti_riscv/dti_boost_inst/current_state )
2'b00: begin
\dti_riscv/dti_boost_inst/bitpos_data  <= 0;
\dti_riscv/dti_boost_inst/bitpos_stop  <= 0;
if (\dti_riscv/dti_boost_inst/clken )
begin
if (((!\dti_riscv/dti_boost_inst/rx ) | (|\dti_riscv/dti_boost_inst/sample )))
begin
\dti_riscv/dti_boost_inst/sample  <= (\dti_riscv/dti_boost_inst/sample  + 1);
end
else
if ((\dti_riscv/dti_boost_inst/sample  == 15))
begin
\dti_riscv/dti_boost_inst/sample  <= 0;
end
end
else
begin
\dti_riscv/dti_boost_inst/sample  <= \dti_riscv/dti_boost_inst/sample ;
end
end
2'b01: begin
if (\dti_riscv/dti_boost_inst/clken )
begin
\dti_riscv/dti_boost_inst/sample  <= (\dti_riscv/dti_boost_inst/sample  + 1);
if ((\dti_riscv/dti_boost_inst/sample  == 8))
begin
\dti_riscv/dti_boost_inst/bitpos_data  <= (\dti_riscv/dti_boost_inst/bitpos_data  + 1);
\dti_riscv/dti_boost_inst/scratch [\dti_riscv/dti_boost_inst/bitpos_data ] <= \dti_riscv/dti_boost_inst/rx ;
end
end
end
2'b10: begin
if (\dti_riscv/dti_boost_inst/clken )
begin
\dti_riscv/dti_boost_inst/sample  <= (\dti_riscv/dti_boost_inst/sample  + 1);
if ((\dti_riscv/dti_boost_inst/sample  == 8))
begin
\dti_riscv/dti_boost_inst/bitpos_stop  <= (\dti_riscv/dti_boost_inst/bitpos_stop  + 1);
end
end
else
if ((\dti_riscv/dti_boost_inst/sample  == 15))
begin
\dti_riscv/dti_boost_inst/sample  <= 0;
end
end
endcase
end
end

assign \dti_riscv/dti_boost_inst/stt_rx_done  = ((\dti_riscv/dti_boost_inst/next_state  == 2'b00) & (\dti_riscv/dti_boost_inst/current_state  == 2'b10));

always @( posedge \dti_riscv/dti_boost_inst/clk  or negedge \dti_riscv/dti_boost_inst/reset_n  )
begin
if ((~\dti_riscv/dti_boost_inst/reset_n ))
begin
\dti_riscv/dti_boost_inst/instruction_data  <= 0;
\dti_riscv/dti_boost_inst/count_req  <= 0;
end
else
begin
if (\dti_riscv/dti_boost_inst/stt_rx_done )
begin
\dti_riscv/dti_boost_inst/instruction_data  <= {{\dti_riscv/dti_boost_inst/scratch ,\dti_riscv/dti_boost_inst/instruction_data [31:8]}};
\dti_riscv/dti_boost_inst/count_req  <= (\dti_riscv/dti_boost_inst/count_req  + 1);
end
end
end

assign \dti_riscv/dti_boost_inst/rx_boost_inst_data_in  = \dti_riscv/dti_boost_inst/instruction_data ;

always @( posedge \dti_riscv/dti_boost_inst/clk  or negedge \dti_riscv/dti_boost_inst/reset_n  )
begin
if ((~\dti_riscv/dti_boost_inst/reset_n ))
begin
\dti_riscv/dti_boost_inst/rx_boost_inst_wr_req  <= 0;
end
else
begin
if ((\dti_riscv/dti_boost_inst/stt_rx_done  & (\dti_riscv/dti_boost_inst/count_req  == 3)))
begin
\dti_riscv/dti_boost_inst/rx_boost_inst_wr_req  <= 1'b1;
end
else
begin
\dti_riscv/dti_boost_inst/rx_boost_inst_wr_req  <= 1'b0;
end
end
end

assign \dti_riscv/dti_riscv_core/stall_mem  = ((((\dti_riscv/dti_riscv_core/mem_op_mem  == 3'b010) || (\dti_riscv/dti_riscv_core/mem_op_mem  == 3'b011)) & (!\dti_riscv/dti_riscv_core/dmem_read_ack )) || ((\dti_riscv/dti_riscv_core/mem_op_mem  == 3'b100) & (!\dti_riscv/dti_riscv_core/dmem_write_ack )));
assign \dti_riscv/dti_riscv_core/flush  = ((\dti_riscv/dti_riscv_core/branch_taken  || \dti_riscv/dti_riscv_core/exception_taken ) & (!\dti_riscv/dti_riscv_core/stall ));
assign \dti_riscv/dti_riscv_core/stall  = (\dti_riscv/dti_riscv_core/hazard_detected  || \dti_riscv/dti_riscv_core/stall_mem );
assign \dti_riscv/dti_riscv_core/read_address_csr  = ((!\dti_riscv/dti_riscv_core/stall ) ? \dti_riscv/dti_riscv_core/csr_addr_id  : \dti_riscv/dti_riscv_core/read_address_csr_p );

always @( posedge \dti_riscv/dti_riscv_core/clk  or negedge \dti_riscv/dti_riscv_core/reset_n  )
begin
if (\dti_riscv/dti_riscv_core/reset_n )
begin
\dti_riscv/dti_riscv_core/read_address_csr_p  <= 0;
end
else
begin
if ((!\dti_riscv/dti_riscv_core/stall ))
begin
\dti_riscv/dti_riscv_core/read_address_csr_p  <= \dti_riscv/dti_riscv_core/csr_addr_id ;
end
end
end

assign \dti_riscv/dti_riscv_core/rs1_address  = ((!\dti_riscv/dti_riscv_core/stall ) ? \dti_riscv/dti_riscv_core/rs1_addr_id  : \dti_riscv/dti_riscv_core/rs1_address_p );
assign \dti_riscv/dti_riscv_core/rs2_address  = ((!\dti_riscv/dti_riscv_core/stall ) ? \dti_riscv/dti_riscv_core/rs2_addr_id  : \dti_riscv/dti_riscv_core/rs2_address_p );

always @( posedge \dti_riscv/dti_riscv_core/clk  or negedge \dti_riscv/dti_riscv_core/reset_n  )
begin
if (\dti_riscv/dti_riscv_core/reset_n )
begin
\dti_riscv/dti_riscv_core/rs1_address_p  <= 0;
\dti_riscv/dti_riscv_core/rs2_address_p  <= 0;
end
else
begin
if ((!\dti_riscv/dti_riscv_core/stall ))
begin
\dti_riscv/dti_riscv_core/rs1_address_p  <= \dti_riscv/dti_riscv_core/rs1_addr_id ;
\dti_riscv/dti_riscv_core/rs2_address_p  <= \dti_riscv/dti_riscv_core/rs2_addr_id ;
end
end
end

assign \dti_riscv/dti_riscv_core/dmem_address  = ((!\dti_riscv/dti_riscv_core/stall_mem ) ? \dti_riscv/dti_riscv_core/dmem_address_ex  : \dti_riscv/dti_riscv_core/dmem_address_p );
assign \dti_riscv/dti_riscv_core/dmem_data_size  = ((!\dti_riscv/dti_riscv_core/stall_mem ) ? \dti_riscv/dti_riscv_core/dmem_data_size_ex  : \dti_riscv/dti_riscv_core/dmem_data_size_p );
assign \dti_riscv/dti_riscv_core/dmem_data_out  = ((!\dti_riscv/dti_riscv_core/stall_mem ) ? \dti_riscv/dti_riscv_core/dmem_data_out_ex  : \dti_riscv/dti_riscv_core/dmem_data_out_p );
assign \dti_riscv/dti_riscv_core/dmem_read_req  = ((!\dti_riscv/dti_riscv_core/stall_mem ) ? \dti_riscv/dti_riscv_core/dmem_read_req_ex  : \dti_riscv/dti_riscv_core/dmem_read_req_p );
assign \dti_riscv/dti_riscv_core/dmem_write_req  = ((!\dti_riscv/dti_riscv_core/stall_mem ) ? \dti_riscv/dti_riscv_core/dmem_write_req_ex  : \dti_riscv/dti_riscv_core/dmem_write_req_p );

always @( posedge \dti_riscv/dti_riscv_core/clk  or negedge \dti_riscv/dti_riscv_core/reset_n  )
begin
if (\dti_riscv/dti_riscv_core/reset_n )
begin
\dti_riscv/dti_riscv_core/dmem_address_p  <= 0;
\dti_riscv/dti_riscv_core/dmem_data_size_p  <= 0;
\dti_riscv/dti_riscv_core/dmem_data_out_p  <= 0;
\dti_riscv/dti_riscv_core/dmem_read_req_p  <= 0;
\dti_riscv/dti_riscv_core/dmem_write_req_p  <= 0;
end
else
begin
if ((!\dti_riscv/dti_riscv_core/stall_mem ))
begin
\dti_riscv/dti_riscv_core/dmem_address_p  <= \dti_riscv/dti_riscv_core/dmem_address_ex ;
\dti_riscv/dti_riscv_core/dmem_data_size_p  <= \dti_riscv/dti_riscv_core/dmem_data_size_ex ;
\dti_riscv/dti_riscv_core/dmem_data_out_p  <= \dti_riscv/dti_riscv_core/dmem_data_out_ex ;
\dti_riscv/dti_riscv_core/dmem_read_req_p  <= \dti_riscv/dti_riscv_core/dmem_read_req_ex ;
\dti_riscv/dti_riscv_core/dmem_write_req_p  <= \dti_riscv/dti_riscv_core/dmem_write_req_ex ;
end
end
end


assign \dti_riscv/dti_riscv_core/riscv_csr_unit/clk  = \dti_riscv/dti_riscv_core/clk ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n  = \dti_riscv/dti_riscv_core/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/irq  = \dti_riscv/dti_riscv_core/irq ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/count_instruction  = \dti_riscv/dti_riscv_core/count_instruction_wb ;
assign \dti_riscv/dti_riscv_core/test_context_out  = \dti_riscv/dti_riscv_core/riscv_csr_unit/test_context_out ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/read_address  = \dti_riscv/dti_riscv_core/read_address_csr ;
assign \dti_riscv/dti_riscv_core/read_data_csr  = \dti_riscv/dti_riscv_core/riscv_csr_unit/read_data_out ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/write_address  = \dti_riscv/dti_riscv_core/csr_addr_wb ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/write_data_in  = \dti_riscv/dti_riscv_core/csr_data_wb ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/write_mode  = \dti_riscv/dti_riscv_core/csr_write_wb ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context  = \dti_riscv/dti_riscv_core/exception_context_wb ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context_write  = \dti_riscv/dti_riscv_core/exception_wb ;
assign \dti_riscv/dti_riscv_core/software_interrupt  = \dti_riscv/dti_riscv_core/riscv_csr_unit/software_interrupt_out ;
assign \dti_riscv/dti_riscv_core/timer_interrupt  = \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_interrupt_out ;
assign \dti_riscv/dti_riscv_core/mie  = \dti_riscv/dti_riscv_core/riscv_csr_unit/mie_out ;
assign \dti_riscv/dti_riscv_core/mtvec  = \dti_riscv/dti_riscv_core/riscv_csr_unit/mtvec_out ;
assign \dti_riscv/dti_riscv_core/ie  = \dti_riscv/dti_riscv_core/riscv_csr_unit/ie_out ;
assign \dti_riscv/dti_riscv_core/ie1  = \dti_riscv/dti_riscv_core/riscv_csr_unit/ie1_out ;

assign \dti_riscv/dti_riscv_core/riscv_decode/clk  = \dti_riscv/dti_riscv_core/clk ;
assign \dti_riscv/dti_riscv_core/riscv_decode/reset_n  = \dti_riscv/dti_riscv_core/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_decode/flush  = \dti_riscv/dti_riscv_core/flush ;
assign \dti_riscv/dti_riscv_core/riscv_decode/stall  = \dti_riscv/dti_riscv_core/stall ;
assign \dti_riscv/dti_riscv_core/riscv_decode/inst_data  = \dti_riscv/dti_riscv_core/inst_data ;
assign \dti_riscv/dti_riscv_core/riscv_decode/inst_address  = \dti_riscv/dti_riscv_core/inst_address ;
assign \dti_riscv/dti_riscv_core/riscv_decode/inst_ready  = \dti_riscv/dti_riscv_core/inst_ready ;
assign \dti_riscv/dti_riscv_core/riscv_decode/inst_count  = \dti_riscv/dti_riscv_core/inst_ready ;
assign \dti_riscv/dti_riscv_core/rs1_addr_id  = \dti_riscv/dti_riscv_core/riscv_decode/rs1_addr ;
assign \dti_riscv/dti_riscv_core/rs2_addr_id  = \dti_riscv/dti_riscv_core/riscv_decode/rs2_addr ;
assign \dti_riscv/dti_riscv_core/rd_addr_id  = \dti_riscv/dti_riscv_core/riscv_decode/rd_addr ;
assign \dti_riscv/dti_riscv_core/csr_addr_id  = \dti_riscv/dti_riscv_core/riscv_decode/csr_addr ;
assign \dti_riscv/dti_riscv_core/shamt_id  = \dti_riscv/dti_riscv_core/riscv_decode/shamt ;
assign \dti_riscv/dti_riscv_core/funct3_id  = \dti_riscv/dti_riscv_core/riscv_decode/funct3 ;
assign \dti_riscv/dti_riscv_core/immediate_id  = \dti_riscv/dti_riscv_core/riscv_decode/immediate ;
assign \dti_riscv/dti_riscv_core/rd_write_id  = \dti_riscv/dti_riscv_core/riscv_decode/rd_write ;
assign \dti_riscv/dti_riscv_core/branch_id  = \dti_riscv/dti_riscv_core/riscv_decode/branch ;
assign \dti_riscv/dti_riscv_core/alu_x_src_id  = \dti_riscv/dti_riscv_core/riscv_decode/alu_x_src ;
assign \dti_riscv/dti_riscv_core/alu_y_src_id  = \dti_riscv/dti_riscv_core/riscv_decode/alu_y_src ;
assign \dti_riscv/dti_riscv_core/alu_op_id  = \dti_riscv/dti_riscv_core/riscv_decode/alu_op ;
assign \dti_riscv/dti_riscv_core/mem_op_id  = \dti_riscv/dti_riscv_core/riscv_decode/mem_op ;
assign \dti_riscv/dti_riscv_core/mem_size_id  = \dti_riscv/dti_riscv_core/riscv_decode/mem_size ;
assign \dti_riscv/dti_riscv_core/count_inst_id  = \dti_riscv/dti_riscv_core/riscv_decode/count_inst ;
assign \dti_riscv/dti_riscv_core/pc_id  = \dti_riscv/dti_riscv_core/riscv_decode/pc ;
assign \dti_riscv/dti_riscv_core/csr_write_id  = \dti_riscv/dti_riscv_core/riscv_decode/csr_write ;
assign \dti_riscv/dti_riscv_core/csr_use_imm_id  = \dti_riscv/dti_riscv_core/riscv_decode/csr_use_imm ;
assign \dti_riscv/dti_riscv_core/decode_exception_id  = \dti_riscv/dti_riscv_core/riscv_decode/decode_exception ;
assign \dti_riscv/dti_riscv_core/decode_exception_cause_id  = \dti_riscv/dti_riscv_core/riscv_decode/decode_exception_cause ;

assign \dti_riscv/dti_riscv_core/riscv_execute/clk  = \dti_riscv/dti_riscv_core/clk ;
assign \dti_riscv/dti_riscv_core/riscv_execute/reset_n  = \dti_riscv/dti_riscv_core/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_execute/stall  = \dti_riscv/dti_riscv_core/stall ;
assign \dti_riscv/dti_riscv_core/riscv_execute/flush  = \dti_riscv/dti_riscv_core/flush ;
assign \dti_riscv/dti_riscv_core/riscv_execute/irq  = \dti_riscv/dti_riscv_core/irq ;
assign \dti_riscv/dti_riscv_core/riscv_execute/timer_interrupt  = \dti_riscv/dti_riscv_core/timer_interrupt ;
assign \dti_riscv/dti_riscv_core/riscv_execute/software_interrupt  = \dti_riscv/dti_riscv_core/software_interrupt ;
assign \dti_riscv/dti_riscv_core/dmem_address_ex  = \dti_riscv/dti_riscv_core/riscv_execute/dmem_address ;
assign \dti_riscv/dti_riscv_core/dmem_data_out_ex  = \dti_riscv/dti_riscv_core/riscv_execute/dmem_data_out ;
assign \dti_riscv/dti_riscv_core/dmem_data_size_ex  = \dti_riscv/dti_riscv_core/riscv_execute/dmem_data_size ;
assign \dti_riscv/dti_riscv_core/dmem_read_req_ex  = \dti_riscv/dti_riscv_core/riscv_execute/dmem_read_req ;
assign \dti_riscv/dti_riscv_core/dmem_write_req_ex  = \dti_riscv/dti_riscv_core/riscv_execute/dmem_write_req ;
assign \dti_riscv/dti_riscv_core/riscv_execute/rs1_addr_in  = \dti_riscv/dti_riscv_core/rs1_address ;
assign \dti_riscv/dti_riscv_core/riscv_execute/rs2_addr_in  = \dti_riscv/dti_riscv_core/rs2_address ;
assign \dti_riscv/dti_riscv_core/riscv_execute/rd_addr_in  = \dti_riscv/dti_riscv_core/rd_addr_id ;
assign \dti_riscv/dti_riscv_core/rd_addr_ex  = \dti_riscv/dti_riscv_core/riscv_execute/rd_addr_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/rs1_data_in  = \dti_riscv/dti_riscv_core/rs1_data ;
assign \dti_riscv/dti_riscv_core/riscv_execute/rs2_data_in  = \dti_riscv/dti_riscv_core/rs2_data ;
assign \dti_riscv/dti_riscv_core/rd_data_ex  = \dti_riscv/dti_riscv_core/riscv_execute/rd_data_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/shamt_in  = \dti_riscv/dti_riscv_core/shamt_id ;
assign \dti_riscv/dti_riscv_core/riscv_execute/immediate_in  = \dti_riscv/dti_riscv_core/immediate_id ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pc_in  = \dti_riscv/dti_riscv_core/pc_id ;
assign \dti_riscv/dti_riscv_core/pc_ex  = \dti_riscv/dti_riscv_core/riscv_execute/pc_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/funct3_in  = \dti_riscv/dti_riscv_core/funct3_id ;
assign \dti_riscv/dti_riscv_core/riscv_execute/csr_addr_in  = \dti_riscv/dti_riscv_core/csr_addr_in ;
assign \dti_riscv/dti_riscv_core/csr_addr_ex  = \dti_riscv/dti_riscv_core/riscv_execute/csr_addr_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/csr_write_in  = \dti_riscv/dti_riscv_core/csr_write_id ;
assign \dti_riscv/dti_riscv_core/csr_write_ex  = \dti_riscv/dti_riscv_core/riscv_execute/csr_write_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/csr_value_in  = \dti_riscv/dti_riscv_core/csr_value_in ;
assign \dti_riscv/dti_riscv_core/csr_value_ex  = \dti_riscv/dti_riscv_core/riscv_execute/csr_value_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/csr_use_immediate_in  = \dti_riscv/dti_riscv_core/csr_use_immediate_in ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_x_src_in  = \dti_riscv/dti_riscv_core/alu_x_src_id ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_y_src_in  = \dti_riscv/dti_riscv_core/alu_y_src_id ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_op_in  = \dti_riscv/dti_riscv_core/alu_op_id ;
assign \dti_riscv/dti_riscv_core/riscv_execute/rd_write_in  = \dti_riscv/dti_riscv_core/rd_write_id ;
assign \dti_riscv/dti_riscv_core/rd_write_ex  = \dti_riscv/dti_riscv_core/riscv_execute/rd_write_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/branch_in  = \dti_riscv/dti_riscv_core/branch_id ;
assign \dti_riscv/dti_riscv_core/branch_ex  = \dti_riscv/dti_riscv_core/riscv_execute/branch_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_op_in  = \dti_riscv/dti_riscv_core/mem_op_id ;
assign \dti_riscv/dti_riscv_core/mem_op_ex  = \dti_riscv/dti_riscv_core/riscv_execute/mem_op_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_size_in  = \dti_riscv/dti_riscv_core/mem_size_id ;
assign \dti_riscv/dti_riscv_core/mem_size_ex  = \dti_riscv/dti_riscv_core/riscv_execute/mem_size_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/count_instruction_in  = \dti_riscv/dti_riscv_core/count_inst_id ;
assign \dti_riscv/dti_riscv_core/count_instruction_ex  = \dti_riscv/dti_riscv_core/riscv_execute/count_instruction_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/ie_in  = \dti_riscv/dti_riscv_core/ie_in ;
assign \dti_riscv/dti_riscv_core/riscv_execute/ie1_in  = \dti_riscv/dti_riscv_core/ie1_in ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mie_in  = \dti_riscv/dti_riscv_core/mie_in ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mtvec_in  = \dti_riscv/dti_riscv_core/mtvec_in ;
assign \dti_riscv/dti_riscv_core/exception_target  = \dti_riscv/dti_riscv_core/riscv_execute/mtvec_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/decode_exception_in  = \dti_riscv/dti_riscv_core/decode_exception_id ;
assign \dti_riscv/dti_riscv_core/riscv_execute/decode_exception_cause_in  = (\dti_riscv/dti_riscv_core/decode_exception_cause_id );
assign \dti_riscv/dti_riscv_core/exception_taken  = \dti_riscv/dti_riscv_core/riscv_execute/exception_out ;
assign \dti_riscv/dti_riscv_core/exception_context_ex  = \dti_riscv/dti_riscv_core/riscv_execute/exception_context_out ;
assign \dti_riscv/dti_riscv_core/branch_taken  = \dti_riscv/dti_riscv_core/riscv_execute/jump_out ;
assign \dti_riscv/dti_riscv_core/branch_target  = \dti_riscv/dti_riscv_core/riscv_execute/jump_target_out ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_rd_write  = \dti_riscv/dti_riscv_core/rd_write_mem ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_rd_addr  = \dti_riscv/dti_riscv_core/rd_addr_mem ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_rd_value  = \dti_riscv/dti_riscv_core/rd_data_mem ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_csr_addr  = \dti_riscv/dti_riscv_core/csr_addr_mem ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_csr_write  = \dti_riscv/dti_riscv_core/csr_write_mem ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_exception  = \dti_riscv/dti_riscv_core/exception_mem ;
assign \dti_riscv/dti_riscv_core/riscv_execute/wb_rd_write  = \dti_riscv/dti_riscv_core/rd_write_wb ;
assign \dti_riscv/dti_riscv_core/riscv_execute/wb_rd_addr  = \dti_riscv/dti_riscv_core/rd_addr_wb ;
assign \dti_riscv/dti_riscv_core/riscv_execute/wb_rd_value  = \dti_riscv/dti_riscv_core/rd_data_wb ;
assign \dti_riscv/dti_riscv_core/riscv_execute/wb_csr_addr  = \dti_riscv/dti_riscv_core/csr_addr_wb ;
assign \dti_riscv/dti_riscv_core/riscv_execute/wb_csr_write  = \dti_riscv/dti_riscv_core/csr_write_wb ;
assign \dti_riscv/dti_riscv_core/riscv_execute/wb_exception  = \dti_riscv/dti_riscv_core/exception_wb ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_mem_op  = \dti_riscv/dti_riscv_core/mem_op_mem ;
assign \dti_riscv/dti_riscv_core/hazard_detected  = \dti_riscv/dti_riscv_core/riscv_execute/hazard_detected ;

assign \dti_riscv/dti_riscv_core/riscv_fetch/clk  = \dti_riscv/dti_riscv_core/clk ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/reset_n  = \dti_riscv/dti_riscv_core/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/boost_en  = \dti_riscv/dti_riscv_core/boost_en ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/imem_data_in  = \dti_riscv/dti_riscv_core/imem_data_in ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/imem_ack  = \dti_riscv/dti_riscv_core/imem_ack ;
assign \dti_riscv/dti_riscv_core/imem_address  = \dti_riscv/dti_riscv_core/riscv_fetch/imem_address ;
assign \dti_riscv/dti_riscv_core/imem_req  = \dti_riscv/dti_riscv_core/riscv_fetch/imem_req ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/stall  = \dti_riscv/dti_riscv_core/stall ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/flush  = \dti_riscv/dti_riscv_core/flush ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/branch  = \dti_riscv/dti_riscv_core/branch_taken ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/exception  = \dti_riscv/dti_riscv_core/exception_taken ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/branch_target  = \dti_riscv/dti_riscv_core/branch_target ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/evec  = \dti_riscv/dti_riscv_core/evec ;
assign \dti_riscv/dti_riscv_core/inst_data  = \dti_riscv/dti_riscv_core/riscv_fetch/inst_data ;
assign \dti_riscv/dti_riscv_core/inst_address  = \dti_riscv/dti_riscv_core/riscv_fetch/inst_address ;
assign \dti_riscv/dti_riscv_core/inst_ready  = \dti_riscv/dti_riscv_core/riscv_fetch/inst_ready ;

assign \dti_riscv/dti_riscv_core/riscv_memory/clk  = \dti_riscv/dti_riscv_core/clk ;
assign \dti_riscv/dti_riscv_core/riscv_memory/reset_n  = \dti_riscv/dti_riscv_core/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_memory/stall  = \dti_riscv/dti_riscv_core/stall_mem ;
assign \dti_riscv/dti_riscv_core/riscv_memory/dmem_read_ack  = \dti_riscv/dti_riscv_core/dmem_read_ack ;
assign \dti_riscv/dti_riscv_core/riscv_memory/dmem_write_ack  = \dti_riscv/dti_riscv_core/dmem_write_ack ;
assign \dti_riscv/dti_riscv_core/riscv_memory/dmem_data_in  = \dti_riscv/dti_riscv_core/dmem_data_in ;
assign \dti_riscv/dti_riscv_core/riscv_memory/pc  = \dti_riscv/dti_riscv_core/pc_ex ;
assign \dti_riscv/dti_riscv_core/riscv_memory/rd_write_in  = \dti_riscv/dti_riscv_core/rd_write_ex ;
assign \dti_riscv/dti_riscv_core/riscv_memory/rd_data_in  = \dti_riscv/dti_riscv_core/rd_data_ex ;
assign \dti_riscv/dti_riscv_core/riscv_memory/rd_addr_in  = \dti_riscv/dti_riscv_core/rd_addr_ex ;
assign \dti_riscv/dti_riscv_core/rd_write_mem  = \dti_riscv/dti_riscv_core/riscv_memory/rd_write_out ;
assign \dti_riscv/dti_riscv_core/rd_data_mem  = \dti_riscv/dti_riscv_core/riscv_memory/rd_data_out ;
assign \dti_riscv/dti_riscv_core/rd_addr_mem  = \dti_riscv/dti_riscv_core/riscv_memory/rd_addr_out ;
assign \dti_riscv/dti_riscv_core/riscv_memory/branch  = \dti_riscv/dti_riscv_core/branch_ex ;
assign \dti_riscv/dti_riscv_core/riscv_memory/mem_op_in  = \dti_riscv/dti_riscv_core/mem_op_ex ;
assign \dti_riscv/dti_riscv_core/riscv_memory/mem_size_in  = \dti_riscv/dti_riscv_core/mem_size_ex ;
assign \dti_riscv/dti_riscv_core/mem_op_mem  = \dti_riscv/dti_riscv_core/riscv_memory/mem_op_out ;
assign \dti_riscv/dti_riscv_core/riscv_memory/count_instruction_in  = \dti_riscv/dti_riscv_core/count_instruction_ex ;
assign \dti_riscv/dti_riscv_core/count_instruction_mem  = \dti_riscv/dti_riscv_core/riscv_memory/count_instruction_out ;
assign \dti_riscv/dti_riscv_core/riscv_memory/exception_in  = \dti_riscv/dti_riscv_core/exception_taken ;
assign \dti_riscv/dti_riscv_core/riscv_memory/exception_context_in  = \dti_riscv/dti_riscv_core/exception_context_ex ;
assign \dti_riscv/dti_riscv_core/exception_mem  = \dti_riscv/dti_riscv_core/riscv_memory/exception_out ;
assign \dti_riscv/dti_riscv_core/exception_context_mem  = \dti_riscv/dti_riscv_core/riscv_memory/exception_context_out ;
assign \dti_riscv/dti_riscv_core/riscv_memory/csr_addr_in  = \dti_riscv/dti_riscv_core/csr_addr_ex ;
assign \dti_riscv/dti_riscv_core/csr_addr_mem  = \dti_riscv/dti_riscv_core/riscv_memory/csr_addr_out ;
assign \dti_riscv/dti_riscv_core/riscv_memory/csr_write_in  = \dti_riscv/dti_riscv_core/csr_write_ex ;
assign \dti_riscv/dti_riscv_core/csr_write_mem  = \dti_riscv/dti_riscv_core/riscv_memory/csr_write_out ;
assign \dti_riscv/dti_riscv_core/riscv_memory/csr_data_in  = \dti_riscv/dti_riscv_core/csr_data_ex ;
assign \dti_riscv/dti_riscv_core/csr_data_mem  = \dti_riscv/dti_riscv_core/riscv_memory/csr_data_out ;

assign \dti_riscv/dti_riscv_core/riscv_register_file/clk  = \dti_riscv/dti_riscv_core/clk ;
assign \dti_riscv/dti_riscv_core/riscv_register_file/reset_n  = \dti_riscv/dti_riscv_core/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_register_file/rs1_addr  = \dti_riscv/dti_riscv_core/rs1_address ;
assign \dti_riscv/dti_riscv_core/rs1_data  = \dti_riscv/dti_riscv_core/riscv_register_file/rs1_data ;
assign \dti_riscv/dti_riscv_core/riscv_register_file/rs2_addr  = \dti_riscv/dti_riscv_core/rs2_address ;
assign \dti_riscv/dti_riscv_core/rs2_data  = \dti_riscv/dti_riscv_core/riscv_register_file/rs2_data ;
assign \dti_riscv/dti_riscv_core/riscv_register_file/rd_addr  = \dti_riscv/dti_riscv_core/rd_addr_wb ;
assign \dti_riscv/dti_riscv_core/riscv_register_file/rd_data  = \dti_riscv/dti_riscv_core/rd_data_wb ;
assign \dti_riscv/dti_riscv_core/riscv_register_file/rd_write  = \dti_riscv/dti_riscv_core/rd_write_wb ;

assign \dti_riscv/dti_riscv_core/riscv_writeback/clk  = \dti_riscv/dti_riscv_core/clk ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/reset_n  = \dti_riscv/dti_riscv_core/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/count_instruction_in  = \dti_riscv/dti_riscv_core/count_instruction_mem ;
assign \dti_riscv/dti_riscv_core/count_instruction_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/count_instruction_out ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/exception_in  = \dti_riscv/dti_riscv_core/exception_mem ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/exception_context_in  = \dti_riscv/dti_riscv_core/exception_context_mem ;
assign \dti_riscv/dti_riscv_core/exception_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/exception_out ;
assign \dti_riscv/dti_riscv_core/exception_context_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/exception_context_out ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/csr_addr_in  = \dti_riscv/dti_riscv_core/csr_addr_mem ;
assign \dti_riscv/dti_riscv_core/csr_addr_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/csr_addr_out ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/csr_write_in  = \dti_riscv/dti_riscv_core/csr_write_mem ;
assign \dti_riscv/dti_riscv_core/csr_write_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/csr_write_out ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/csr_data_in  = \dti_riscv/dti_riscv_core/csr_data_mem ;
assign \dti_riscv/dti_riscv_core/csr_data_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/csr_data_out ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/rd_write_in  = \dti_riscv/dti_riscv_core/rd_write_mem ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/rd_data_in  = \dti_riscv/dti_riscv_core/rd_data_mem ;
assign \dti_riscv/dti_riscv_core/riscv_writeback/rd_addr_in  = \dti_riscv/dti_riscv_core/rd_addr_mem ;
assign \dti_riscv/dti_riscv_core/rd_write_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/rd_write_out ;
assign \dti_riscv/dti_riscv_core/rd_data_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/rd_data_out ;
assign \dti_riscv/dti_riscv_core/rd_addr_wb  = \dti_riscv/dti_riscv_core/riscv_writeback/rd_addr_out ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/software_interrupt_out  = \dti_riscv/dti_riscv_core/riscv_csr_unit/software_interrupt ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_interrupt_out  = \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_interrupt ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/ie_out  = \dti_riscv/dti_riscv_core/riscv_csr_unit/ie ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/ie1_out  = \dti_riscv/dti_riscv_core/riscv_csr_unit/ie1 ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/mie_out  = \dti_riscv/dti_riscv_core/riscv_csr_unit/mie ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/test_context_out  = \dti_riscv/dti_riscv_core/riscv_csr_unit/test_register ;

always @( posedge \dti_riscv/dti_riscv_core/riscv_csr_unit/clk  or negedge \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk_counter  <= 0;
end
else
begin
if ((\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk_counter  == (5 - 1)))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk_counter  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk  <= (~\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk );
end
else
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk_counter  <= (\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_clk_counter  + 1);
end
end
end


always @( posedge \dti_riscv/dti_riscv_core/riscv_csr_unit/clk  or negedge \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/mtime_clock_counter  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/counter_mtime  <= 0;
end
else
begin
if ((\dti_riscv/dti_riscv_core/riscv_csr_unit/mtime_clock_counter  == (5 - 1)))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/mtime_clock_counter  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/counter_mtime  <= (\dti_riscv/dti_riscv_core/riscv_csr_unit/counter_mtime  + 1);
end
else
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/mtime_clock_counter  <= (\dti_riscv/dti_riscv_core/riscv_csr_unit/mtime_clock_counter  + 1);
end
end
end


always @( posedge \dti_riscv/dti_riscv_core/riscv_csr_unit/clk  or negedge \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_interrupt  <= 0;
end
else
begin
if (((\dti_riscv/dti_riscv_core/riscv_csr_unit/write_mode  != 2'b00) & (\dti_riscv/dti_riscv_core/riscv_csr_unit/write_address  == 801)))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_interrupt  <= 1'b0;
end
else
if ((\dti_riscv/dti_riscv_core/riscv_csr_unit/counter_mtime  == \dti_riscv/dti_riscv_core/riscv_csr_unit/mtime_compare ))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_interrupt  <= 1'b1;
end
end
end


always @( posedge \dti_riscv/dti_riscv_core/riscv_csr_unit/clk  or negedge \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/software_interrupt  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/mtvec  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/mepc  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/mie  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/ie  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/ie1  <= 0;
\dti_riscv/dti_riscv_core/riscv_csr_unit/test_register  <= 0;
end
else
begin
if (\dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context_write )
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/ie  <= \dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context [0];
\dti_riscv/dti_riscv_core/riscv_csr_unit/ie1  <= \dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context [1];
\dti_riscv/dti_riscv_core/riscv_csr_unit/mcause  <= \dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context [7:2];
\dti_riscv/dti_riscv_core/riscv_csr_unit/mbadaddr  <= \dti_riscv/dti_riscv_core/riscv_csr_unit/exception_context [39:8];
end
end
end


assign \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/clk  = \dti_riscv/dti_riscv_core/riscv_csr_unit/clk ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/reset_n  = \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/increment  = 1'b1;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/counter_time  = \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/count ;

assign \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/clk  = \dti_riscv/dti_riscv_core/riscv_csr_unit/clk ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/reset_n  = \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/increment  = 1'b1;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/counter_cycle  = \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/count ;

assign \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/clk  = \dti_riscv/dti_riscv_core/riscv_csr_unit/clk ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/reset_n  = \dti_riscv/dti_riscv_core/riscv_csr_unit/reset_n ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/increment  = \dti_riscv/dti_riscv_core/riscv_csr_unit/count_instruction ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/counter_incr  = \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/count ;
assign \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/count  = \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/current_count ;

always @( posedge \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/clk  or negedge \dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/current_count  <= 0;
end
else
begin
if (\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/increment )
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/current_count  <= (\dti_riscv/dti_riscv_core/riscv_csr_unit/timer_counter/current_count  + 1);
end
end
end

assign \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/count  = \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/current_count ;

always @( posedge \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/clk  or negedge \dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/current_count  <= 0;
end
else
begin
if (\dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/increment )
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/current_count  <= (\dti_riscv/dti_riscv_core/riscv_csr_unit/cycle_counter/current_count  + 1);
end
end
end

assign \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/count  = \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/current_count ;

always @( posedge \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/clk  or negedge \dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/current_count  <= 0;
end
else
begin
if (\dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/increment )
begin
\dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/current_count  <= (\dti_riscv/dti_riscv_core/riscv_csr_unit/incr_counter/current_count  + 1);
end
end
end


always @( posedge \dti_riscv/dti_riscv_core/riscv_decode/clk  or negedge \dti_riscv/dti_riscv_core/riscv_decode/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_decode/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_decode/instruction  <= 0;
\dti_riscv/dti_riscv_core/riscv_decode/pc  <= 0;
\dti_riscv/dti_riscv_core/riscv_decode/count_inst  <= 0;
end
else
begin
if (\dti_riscv/dti_riscv_core/riscv_decode/stall )
begin
\dti_riscv/dti_riscv_core/riscv_decode/count_inst  <= 0;
end
else
if ((\dti_riscv/dti_riscv_core/riscv_decode/flush  || (!\dti_riscv/dti_riscv_core/riscv_decode/inst_ready )))
begin
\dti_riscv/dti_riscv_core/riscv_decode/instruction  <= 0;
\dti_riscv/dti_riscv_core/riscv_decode/count_inst  <= 0;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_decode/instruction  <= \dti_riscv/dti_riscv_core/riscv_decode/inst_data ;
\dti_riscv/dti_riscv_core/riscv_decode/count_inst  <= \dti_riscv/dti_riscv_core/riscv_decode/inst_count ;
\dti_riscv/dti_riscv_core/riscv_decode/pc  <= \dti_riscv/dti_riscv_core/riscv_decode/inst_address ;
end
end
end

assign \dti_riscv/dti_riscv_core/riscv_decode/rs1_addr  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [19:15];
assign \dti_riscv/dti_riscv_core/riscv_decode/rs2_addr  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [24:20];
assign \dti_riscv/dti_riscv_core/riscv_decode/rd_addr  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [11:7];
assign \dti_riscv/dti_riscv_core/riscv_decode/shamt  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [24:20];
assign \dti_riscv/dti_riscv_core/riscv_decode/funct3  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [14:12];
assign \dti_riscv/dti_riscv_core/riscv_decode/immediate  = \dti_riscv/dti_riscv_core/riscv_decode/immediate_value ;

always @(*)
begin
if ((\dti_riscv/dti_riscv_core/riscv_decode/immediate_value [11:0] == 770))
begin
\dti_riscv/dti_riscv_core/riscv_decode/csr_addr  = 833;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_decode/csr_addr  = \dti_riscv/dti_riscv_core/riscv_decode/immediate_value [11:0];
end
end


assign \dti_riscv/dti_riscv_core/riscv_decode/immediate_value  = \dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/immediate ;
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction  = \dti_riscv/dti_riscv_core/riscv_decode/instruction ;

assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/opcode  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [6:0];
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct3  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [14:12];
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct7  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [31:25];
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct12  = \dti_riscv/dti_riscv_core/riscv_decode/instruction [31:20];
assign \dti_riscv/dti_riscv_core/riscv_decode/rd_write  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write ;
assign \dti_riscv/dti_riscv_core/riscv_decode/branch  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch ;
assign \dti_riscv/dti_riscv_core/riscv_decode/alu_x_src  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_x_src ;
assign \dti_riscv/dti_riscv_core/riscv_decode/alu_y_src  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_y_src ;
assign \dti_riscv/dti_riscv_core/riscv_decode/alu_op  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_op ;
assign \dti_riscv/dti_riscv_core/riscv_decode/mem_op  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op ;
assign \dti_riscv/dti_riscv_core/riscv_decode/mem_size  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size ;
assign \dti_riscv/dti_riscv_core/riscv_decode/decode_exception  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/decode_exception ;
assign \dti_riscv/dti_riscv_core/riscv_decode/decode_exception_cause  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/decode_exception_cause ;
assign \dti_riscv/dti_riscv_core/riscv_decode/csr_write  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_write ;
assign \dti_riscv/dti_riscv_core/riscv_decode/csr_use_imm  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_imm ;

always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [6:2])
5'b01101, 5'b00101: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/immediate  = {{\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [31:12],12'b000000000000}};
end
5'b11011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/immediate  = {{({{(12){{\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [31]}}}}),\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [19:12],\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [20],\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [30:21],1'b0}};
end
5'b11001, 5'b00000, 5'b00100, 5'b11100: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/immediate  = {{({{(21){{\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [31]}}}}),\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [30:20]}};
end
5'b11000: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/immediate  = {{({{(20){{\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [31]}}}}),\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [7],\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [30:25],\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [11:8],1'b0}};
end
5'b01000: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/immediate  = {{({{(21){{\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [31]}}}}),\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [30:25],\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/instruction [11:7]}};
end
default: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_imm_decoder/immediate  = 0;
end
endcase
end

assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_imm  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct3 [2];
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_op  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_op_temp ;
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/decode_exception  = (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  || (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_op_temp  == 4'b1111));
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/decode_exception_cause  = ((\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_op_temp  != 4'b1111) ? \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  : 6'b000010);

always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/opcode )
7'b0110111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b1;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
7'b0010111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b1;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
7'b1101111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b1;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b001;
end
7'b1100111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b1;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b010;
end
7'b1100011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b011;
end
7'b0000011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b1;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
7'b0100011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
7'b0010011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b1;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
7'b0110011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b1;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
7'b0001111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
7'b1110011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b011111;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
default: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/rd_write  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception  = 1'b0;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/exception_cause  = 6'b000010;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/branch  = 3'b000;
end
endcase
end


always @(*)
begin
if ((\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/opcode  == 7'b1110011))
begin
case (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct3 )
3'b001, 3'b101: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_write  = 2'b11;
end
3'b010, 3'b110: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_write  = 2'b01;
end
3'b011, 3'b111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_write  = 2'b10;
end
default: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_write  = 2'b00;
end
endcase
end
else
begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/csr_write  = 2'b00;
end
end


always @(*)
begin
if ((\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/opcode  == 7'b0000011))
begin
case (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct3 )
3'b000: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b010;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b00;
end
3'b001: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b010;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b01;
end
3'b010: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b010;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b00;
end
3'b100: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b011;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b00;
end
3'b101: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b011;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b01;
end
default: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b001;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b10;
end
endcase
end
else
if ((\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/opcode  == 7'b0100011))
begin
case (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct3 )
3'b000: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b100;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b00;
end
3'b001: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b100;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b01;
end
3'b010: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b100;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b10;
end
default: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b001;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b10;
end
endcase
end
else
begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_op  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/mem_size  = 2'b10;
end
end


assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/opcode  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/opcode ;
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct3  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct3 ;
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct7  = (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/funct7 );
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_x_src  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src ;
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_y_src  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src ;
assign \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/alu_op_temp  = \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op ;

always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/opcode )
7'b0110111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
7'b0010111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
7'b1101111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
7'b1100111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
7'b1100011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
7'b0000011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
7'b0100011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
7'b0010011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
if (((\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct3  == 3'b001) | (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct3  == 3'b101)))
begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b010;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b001;
end
case (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct3 )
3'b000: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0101;
3'b010: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0011;
3'b011: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0100;
3'b100: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0010;
3'b110: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0001;
3'b111: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0000;
3'b001: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1000;
3'b101: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = ((\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct7  == 7'b0000000) ? 4'b0111 : 4'b1001);
endcase
end
7'b0110011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
case (\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct3 )
3'b000: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = ((\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct7  == 7'b0000000) ? 4'b0101 : 4'b0110);
3'b001: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1000;
3'b010: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0011;
3'b011: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0100;
3'b100: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0010;
3'b101: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = ((\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/funct7  == 7'b0000000) ? 4'b0111 : 4'b1001);
3'b110: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0001;
3'b111: \dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b0000;
endcase
end
7'b0001111: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
7'b1110011: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
default: begin
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_x_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_y_src  = 3'b000;
\dti_riscv/dti_riscv_core/riscv_decode/pp_control_unit/riscv_alu_control_decode/alu_op  = 4'b1111;
end
endcase
end

assign \dti_riscv/dti_riscv_core/riscv_execute/csr_value  = \dti_riscv/dti_riscv_core/riscv_execute/csr_value_in ;
assign \dti_riscv/dti_riscv_core/riscv_execute/rd_data_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_result ;
assign \dti_riscv/dti_riscv_core/riscv_execute/branch_out  = \dti_riscv/dti_riscv_core/riscv_execute/branch ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_op_out  = \dti_riscv/dti_riscv_core/riscv_execute/mem_op ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mem_size_out  = \dti_riscv/dti_riscv_core/riscv_execute/mem_size ;
assign \dti_riscv/dti_riscv_core/riscv_execute/csr_write_out  = \dti_riscv/dti_riscv_core/riscv_execute/csr_write ;
assign \dti_riscv/dti_riscv_core/riscv_execute/csr_addr_out  = \dti_riscv/dti_riscv_core/riscv_execute/csr_addr ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pc_out  = \dti_riscv/dti_riscv_core/riscv_execute/pc ;
assign \dti_riscv/dti_riscv_core/riscv_execute/hazard_detected  = (\dti_riscv/dti_riscv_core/riscv_execute/load_hazard_detected  || \dti_riscv/dti_riscv_core/riscv_execute/csr_hazard_detected );
assign \dti_riscv/dti_riscv_core/riscv_execute/exception_out  = \dti_riscv/dti_riscv_core/riscv_execute/exception_taken ;
assign \dti_riscv/dti_riscv_core/riscv_execute/exception_context_out  = {{\dti_riscv/dti_riscv_core/riscv_execute/ie_in ,\dti_riscv/dti_riscv_core/riscv_execute/ie1_in ,\dti_riscv/dti_riscv_core/riscv_execute/exception_cause ,\dti_riscv/dti_riscv_core/riscv_execute/exception_addr }};
assign \dti_riscv/dti_riscv_core/riscv_execute/do_jump  = ((((\dti_riscv/dti_riscv_core/riscv_execute/branch  == 3'b001) || (\dti_riscv/dti_riscv_core/riscv_execute/branch  == 3'b010)) || ((\dti_riscv/dti_riscv_core/riscv_execute/branch  == 3'b011) && \dti_riscv/dti_riscv_core/riscv_execute/branch_condition )) || ((\dti_riscv/dti_riscv_core/riscv_execute/branch  == 3'b100) && (!\dti_riscv/dti_riscv_core/riscv_execute/stall )));
assign \dti_riscv/dti_riscv_core/riscv_execute/jump_out  = \dti_riscv/dti_riscv_core/riscv_execute/do_jump ;
assign \dti_riscv/dti_riscv_core/riscv_execute/jump_target_out  = \dti_riscv/dti_riscv_core/riscv_execute/jump_target ;
assign \dti_riscv/dti_riscv_core/riscv_execute/mtvec_out  = \dti_riscv/dti_riscv_core/riscv_execute/mtvec ;
assign \dti_riscv/dti_riscv_core/riscv_execute/exception_taken  = ((!\dti_riscv/dti_riscv_core/riscv_execute/stall ) && (\dti_riscv/dti_riscv_core/riscv_execute/decode_exception  || (\dti_riscv/dti_riscv_core/riscv_execute/exception_cause  != 6'b011111)));
assign \dti_riscv/dti_riscv_core/riscv_execute/exception_cause  = 6'b011111;
assign \dti_riscv/dti_riscv_core/riscv_execute/irq_asserted  = ((\dti_riscv/dti_riscv_core/riscv_execute/ie_in  == 1'b1) & ((|\dti_riscv/dti_riscv_core/riscv_execute/irq ) && (\dti_riscv/dti_riscv_core/riscv_execute/mie [31:24] != 0)));
assign \dti_riscv/dti_riscv_core/riscv_execute/rs1_data  = \dti_riscv/dti_riscv_core/riscv_execute/rs1_data_in ;
assign \dti_riscv/dti_riscv_core/riscv_execute/rs2_data  = \dti_riscv/dti_riscv_core/riscv_execute/rs2_data_in ;
assign \dti_riscv/dti_riscv_core/riscv_execute/dmem_address  = ((((\dti_riscv/dti_riscv_core/riscv_execute/mem_op  != 3'b000) && (\dti_riscv/dti_riscv_core/riscv_execute/mem_op  != 3'b001)) && (!\dti_riscv/dti_riscv_core/riscv_execute/exception_taken )) ? \dti_riscv/dti_riscv_core/riscv_execute/alu_result  : 0);
assign \dti_riscv/dti_riscv_core/riscv_execute/dmem_data_out  = \dti_riscv/dti_riscv_core/riscv_execute/rs2_forwarded ;
assign \dti_riscv/dti_riscv_core/riscv_execute/dmem_write_req  = (((\dti_riscv/dti_riscv_core/riscv_execute/mem_op  == 3'b100) && (!\dti_riscv/dti_riscv_core/riscv_execute/exception_taken )) ? 1'b1 : 1'b0);
assign \dti_riscv/dti_riscv_core/riscv_execute/dmem_read_req  = (((\dti_riscv/dti_riscv_core/riscv_execute/mem_op  == 3'b010) || ((\dti_riscv/dti_riscv_core/riscv_execute/mem_op  == 3'b011) && (!\dti_riscv/dti_riscv_core/riscv_execute/exception_taken ))) ? 1'b1 : 1'b0);

always @( posedge \dti_riscv/dti_riscv_core/riscv_execute/clk  or negedge \dti_riscv/dti_riscv_core/riscv_execute/reset_n  )
begin
if ((!\dti_riscv/dti_riscv_core/riscv_execute/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_execute/rd_write_out  <= 0;
\dti_riscv/dti_riscv_core/riscv_execute/branch  <= 3'b000;
\dti_riscv/dti_riscv_core/riscv_execute/csr_write  <= 2'b00;
\dti_riscv/dti_riscv_core/riscv_execute/decode_exception  <= 1'b0;
\dti_riscv/dti_riscv_core/riscv_execute/count_instruction_out  <= 1'b0;
\dti_riscv/dti_riscv_core/riscv_execute/mem_op  <= 0;
\dti_riscv/dti_riscv_core/riscv_execute/pc  <= 0;
\dti_riscv/dti_riscv_core/riscv_execute/mem_size  <= 0;
\dti_riscv/dti_riscv_core/riscv_execute/decode_exception_cause  <= 0;
end
else
begin
if (\dti_riscv/dti_riscv_core/riscv_execute/flush )
begin
\dti_riscv/dti_riscv_core/riscv_execute/rd_write_out  <= 0;
\dti_riscv/dti_riscv_core/riscv_execute/branch  <= 3'b000;
\dti_riscv/dti_riscv_core/riscv_execute/csr_write  <= 2'b00;
\dti_riscv/dti_riscv_core/riscv_execute/decode_exception  <= 1'b0;
\dti_riscv/dti_riscv_core/riscv_execute/count_instruction_out  <= 1'b0;
end
else
if ((!\dti_riscv/dti_riscv_core/riscv_execute/stall ))
begin
\dti_riscv/dti_riscv_core/riscv_execute/pc  <= \dti_riscv/dti_riscv_core/riscv_execute/pc_in ;
\dti_riscv/dti_riscv_core/riscv_execute/count_instruction_out  <= \dti_riscv/dti_riscv_core/riscv_execute/count_instruction_in ;
\dti_riscv/dti_riscv_core/riscv_execute/rd_write_out  <= \dti_riscv/dti_riscv_core/riscv_execute/rd_write_in ;
\dti_riscv/dti_riscv_core/riscv_execute/rd_addr_out  <= \dti_riscv/dti_riscv_core/riscv_execute/rd_addr_in ;
\dti_riscv/dti_riscv_core/riscv_execute/rs1_addr  <= \dti_riscv/dti_riscv_core/riscv_execute/rs1_addr_in ;
\dti_riscv/dti_riscv_core/riscv_execute/rs2_addr  <= \dti_riscv/dti_riscv_core/riscv_execute/rs2_addr_in ;
\dti_riscv/dti_riscv_core/riscv_execute/alu_op  <= \dti_riscv/dti_riscv_core/riscv_execute/alu_op_in ;
\dti_riscv/dti_riscv_core/riscv_execute/alu_x_src  <= \dti_riscv/dti_riscv_core/riscv_execute/alu_x_src_in ;
\dti_riscv/dti_riscv_core/riscv_execute/alu_y_src  <= \dti_riscv/dti_riscv_core/riscv_execute/alu_y_src_in ;
\dti_riscv/dti_riscv_core/riscv_execute/branch  <= \dti_riscv/dti_riscv_core/riscv_execute/branch_in ;
\dti_riscv/dti_riscv_core/riscv_execute/mem_op  <= \dti_riscv/dti_riscv_core/riscv_execute/mem_op_in ;
\dti_riscv/dti_riscv_core/riscv_execute/mem_size  <= \dti_riscv/dti_riscv_core/riscv_execute/mem_size_in ;
\dti_riscv/dti_riscv_core/riscv_execute/immediate  <= \dti_riscv/dti_riscv_core/riscv_execute/immediate_in ;
\dti_riscv/dti_riscv_core/riscv_execute/shamt  <= \dti_riscv/dti_riscv_core/riscv_execute/shamt_in ;
\dti_riscv/dti_riscv_core/riscv_execute/funct3  <= \dti_riscv/dti_riscv_core/riscv_execute/funct3_in ;
\dti_riscv/dti_riscv_core/riscv_execute/csr_write  <= \dti_riscv/dti_riscv_core/riscv_execute/csr_write_in ;
\dti_riscv/dti_riscv_core/riscv_execute/csr_addr  <= \dti_riscv/dti_riscv_core/riscv_execute/csr_addr_in ;
\dti_riscv/dti_riscv_core/riscv_execute/csr_use_immediate  <= \dti_riscv/dti_riscv_core/riscv_execute/csr_use_immediate_in ;
\dti_riscv/dti_riscv_core/riscv_execute/mtvec  <= \dti_riscv/dti_riscv_core/riscv_execute/mtvec_in ;
\dti_riscv/dti_riscv_core/riscv_execute/mie  <= \dti_riscv/dti_riscv_core/riscv_execute/mie_in ;
\dti_riscv/dti_riscv_core/riscv_execute/decode_exception  <= \dti_riscv/dti_riscv_core/riscv_execute/decode_exception_in ;
\dti_riscv/dti_riscv_core/riscv_execute/decode_exception_cause  <= \dti_riscv/dti_riscv_core/riscv_execute/decode_exception_cause_in ;
end
else
if (\dti_riscv/dti_riscv_core/riscv_execute/stall )
begin
\dti_riscv/dti_riscv_core/riscv_execute/csr_write  <= 2'b00;
end
end
end


always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_execute/mem_size )
2'b00: begin
\dti_riscv/dti_riscv_core/riscv_execute/dmem_data_size  = 2'b01;
end
2'b01: begin
\dti_riscv/dti_riscv_core/riscv_execute/dmem_data_size  = 2'b10;
end
2'b10: begin
\dti_riscv/dti_riscv_core/riscv_execute/dmem_data_size  = 2'b00;
end
default: begin
\dti_riscv/dti_riscv_core/riscv_execute/dmem_data_size  = 2'b11;
end
endcase
end


always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_execute/mem_size )
2'b01: begin
if ((\dti_riscv/dti_riscv_core/riscv_execute/alu_result [0] != 1'b0))
begin
\dti_riscv/dti_riscv_core/riscv_execute/data_misaligned  = 1'b1;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/data_misaligned  = 1'b0;
end
end
2'b10: begin
if ((\dti_riscv/dti_riscv_core/riscv_execute/alu_result [1:0] != 2'b00))
begin
\dti_riscv/dti_riscv_core/riscv_execute/data_misaligned  = 1'b1;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/data_misaligned  = 1'b0;
end
end
default: begin
\dti_riscv/dti_riscv_core/riscv_execute/data_misaligned  = 1'b0;
end
endcase
end


always @(*)
begin
if (((\dti_riscv/dti_riscv_core/riscv_execute/jump_target [1:0] != 2'b00) && \dti_riscv/dti_riscv_core/riscv_execute/do_jump ))
begin
\dti_riscv/dti_riscv_core/riscv_execute/instr_misaligned  = 1'b1;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/instr_misaligned  = 1'b0;
end
end


always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_execute/branch )
3'b001, 3'b011: begin
\dti_riscv/dti_riscv_core/riscv_execute/jump_target  = (\dti_riscv/dti_riscv_core/riscv_execute/pc  + \dti_riscv/dti_riscv_core/riscv_execute/immediate );
end
3'b010: begin
\dti_riscv/dti_riscv_core/riscv_execute/jump_target  = (\dti_riscv/dti_riscv_core/riscv_execute/rs1_forwarded  + \dti_riscv/dti_riscv_core/riscv_execute/immediate );
end
3'b100: begin
\dti_riscv/dti_riscv_core/riscv_execute/jump_target  = \dti_riscv/dti_riscv_core/riscv_execute/csr_value ;
end
default: begin
\dti_riscv/dti_riscv_core/riscv_execute/jump_target  = 0;
end
endcase
end


always @(*)
begin
if (((\dti_riscv/dti_riscv_core/riscv_execute/mem_rd_write  && (\dti_riscv/dti_riscv_core/riscv_execute/mem_rd_addr  == \dti_riscv/dti_riscv_core/riscv_execute/rs1_addr )) && (\dti_riscv/dti_riscv_core/riscv_execute/mem_rd_addr  != 0)))
begin
\dti_riscv/dti_riscv_core/riscv_execute/rs1_forwarded  = \dti_riscv/dti_riscv_core/riscv_execute/mem_rd_value ;
end
else
if (((\dti_riscv/dti_riscv_core/riscv_execute/wb_rd_write  && (\dti_riscv/dti_riscv_core/riscv_execute/wb_rd_addr  == \dti_riscv/dti_riscv_core/riscv_execute/rs1_addr )) && (\dti_riscv/dti_riscv_core/riscv_execute/wb_rd_addr  != 0)))
begin
\dti_riscv/dti_riscv_core/riscv_execute/rs1_forwarded  = \dti_riscv/dti_riscv_core/riscv_execute/wb_rd_value ;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/rs1_forwarded  = \dti_riscv/dti_riscv_core/riscv_execute/rs1_data ;
end
end


always @(*)
begin
if (((\dti_riscv/dti_riscv_core/riscv_execute/mem_rd_write  && (\dti_riscv/dti_riscv_core/riscv_execute/mem_rd_addr  == \dti_riscv/dti_riscv_core/riscv_execute/rs2_addr )) && (\dti_riscv/dti_riscv_core/riscv_execute/mem_rd_addr  != 0)))
begin
\dti_riscv/dti_riscv_core/riscv_execute/rs2_forwarded  = \dti_riscv/dti_riscv_core/riscv_execute/mem_rd_value ;
end
else
if (((\dti_riscv/dti_riscv_core/riscv_execute/wb_rd_write  && (\dti_riscv/dti_riscv_core/riscv_execute/wb_rd_addr  == \dti_riscv/dti_riscv_core/riscv_execute/rs2_addr )) && (\dti_riscv/dti_riscv_core/riscv_execute/wb_rd_addr  != 0)))
begin
\dti_riscv/dti_riscv_core/riscv_execute/rs2_forwarded  = \dti_riscv/dti_riscv_core/riscv_execute/wb_rd_value ;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/rs2_forwarded  = \dti_riscv/dti_riscv_core/riscv_execute/rs2_data ;
end
end


always @(*)
begin
if (((((\dti_riscv/dti_riscv_core/riscv_execute/mem_csr_write  != 2'b00) || (\dti_riscv/dti_riscv_core/riscv_execute/wb_csr_write  != 2'b00)) || \dti_riscv/dti_riscv_core/riscv_execute/mem_exception ) || \dti_riscv/dti_riscv_core/riscv_execute/wb_exception ))
begin
\dti_riscv/dti_riscv_core/riscv_execute/csr_hazard_detected  = 1'b1;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/csr_hazard_detected  = 1'b0;
end
end


always @(*)
begin
if ((((\dti_riscv/dti_riscv_core/riscv_execute/mem_mem_op  == 3'b010) || (\dti_riscv/dti_riscv_core/riscv_execute/mem_mem_op  == 3'b011)) && ((((\dti_riscv/dti_riscv_core/riscv_execute/alu_x_src  == 3'b000) && (\dti_riscv/dti_riscv_core/riscv_execute/mem_rd_addr  == \dti_riscv/dti_riscv_core/riscv_execute/rs1_addr )) && (\dti_riscv/dti_riscv_core/riscv_execute/rs1_addr  != 0)) || (((\dti_riscv/dti_riscv_core/riscv_execute/alu_y_src  == 3'b000) && (\dti_riscv/dti_riscv_core/riscv_execute/mem_rd_addr  == \dti_riscv/dti_riscv_core/riscv_execute/rs2_addr )) && (\dti_riscv/dti_riscv_core/riscv_execute/rs2_addr  != 0)))))
begin
\dti_riscv/dti_riscv_core/riscv_execute/load_hazard_detected  = 1'b1;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/load_hazard_detected  = 1'b0;
end
end


assign \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/source  = \dti_riscv/dti_riscv_core/riscv_execute/alu_x_src ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/register_value  = \dti_riscv/dti_riscv_core/riscv_execute/rs1_forwarded ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/immediate_value  = \dti_riscv/dti_riscv_core/riscv_execute/immediate ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/shamt_value  = \dti_riscv/dti_riscv_core/riscv_execute/shamt ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/pc_value  = \dti_riscv/dti_riscv_core/riscv_execute/pc ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/csr_value  = \dti_riscv/dti_riscv_core/riscv_execute/csr_value ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_x  = \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out ;

assign \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/source  = \dti_riscv/dti_riscv_core/riscv_execute/alu_y_src ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/register_value  = \dti_riscv/dti_riscv_core/riscv_execute/rs2_forwarded ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/immediate_value  = \dti_riscv/dti_riscv_core/riscv_execute/immediate ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/shamt_value  = \dti_riscv/dti_riscv_core/riscv_execute/shamt ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/pc_value  = \dti_riscv/dti_riscv_core/riscv_execute/pc ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/csr_value  = \dti_riscv/dti_riscv_core/riscv_execute/csr_value ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_y  = \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out ;

assign \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/funct3  = \dti_riscv/dti_riscv_core/riscv_execute/funct3 ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1  = \dti_riscv/dti_riscv_core/riscv_execute/rs1_forwarded ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2  = \dti_riscv/dti_riscv_core/riscv_execute/rs2_forwarded ;
assign \dti_riscv/dti_riscv_core/riscv_execute/branch_condition  = \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result ;

assign \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  = \dti_riscv/dti_riscv_core/riscv_execute/alu_x ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y  = \dti_riscv/dti_riscv_core/riscv_execute/alu_y ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/operation  = \dti_riscv/dti_riscv_core/riscv_execute/alu_op ;
assign \dti_riscv/dti_riscv_core/riscv_execute/alu_result  = \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result ;

assign \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/x  = \dti_riscv/dti_riscv_core/riscv_execute/csr_value ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/y  = \dti_riscv/dti_riscv_core/riscv_execute/rs1_forwarded ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/immediate  = \dti_riscv/dti_riscv_core/riscv_execute/rs1_addr ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/use_immediate  = \dti_riscv/dti_riscv_core/riscv_execute/csr_use_immediate ;
assign \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/write_mode  = \dti_riscv/dti_riscv_core/riscv_execute/csr_write ;
assign \dti_riscv/dti_riscv_core/riscv_execute/csr_value_out  = \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/result ;

always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/source )
3'b000: \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/register_value ;
3'b001: \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/immediate_value ;
3'b010: \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out  = {{({{(27){{1'b0}}}}),\dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/shamt_value }};
3'b011: \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/pc_value ;
3'b100: \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out  = (\dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/pc_value  + 4);
3'b111: \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/csr_value ;
3'b101: \dti_riscv/dti_riscv_core/riscv_execute/alu_x_mux/value_out  = 0;
endcase
end


always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/source )
3'b000: \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/register_value ;
3'b001: \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/immediate_value ;
3'b010: \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out  = {{({{(27){{1'b0}}}}),\dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/shamt_value }};
3'b011: \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/pc_value ;
3'b100: \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out  = (\dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/pc_value  + 4);
3'b111: \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out  = \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/csr_value ;
3'b101: \dti_riscv/dti_riscv_core/riscv_execute/alu_y_mux/value_out  = 0;
endcase
end


always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/funct3 )
3'b000: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1  == \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 );
end
3'b001: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1  != \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 );
end
3'b100: begin
if ((\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1 [31] == \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 [31]))
begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1 [30:0] < \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 [30:0]);
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1 [31];
end
end
3'b101: begin
if ((\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1 [31] == \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 [31]))
begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 [30:0] <= \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 [30:0]);
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 [31];
end
end
3'b110: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1  < \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 );
end
3'b111: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs1  >= \dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/rs2 );
end
default: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_comparator/result  = 1'b0;
end
endcase
end


always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/operation )
4'b0000: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  & \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y );
end
4'b0001: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  | \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y );
end
4'b0010: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  ^ \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y );
end
4'b0011: begin
if (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x [(31 == \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y [31])])
begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = ((\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  < \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y ) ? 1'b1 : 1'b0);
end
else
begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x [31];
end
end
4'b0100: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = ((\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  < \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y ) ? 1'b1 : 1'b0);
end
4'b0101: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  + \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y );
end
4'b0110: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  - \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y );
end
4'b0111: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  >> \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y [4:0]);
end
4'b1000: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/x  << \dti_riscv/dti_riscv_core/riscv_execute/pp_alu/y [4:0]);
end
4'b1001: begin
end
default: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_alu/result  = 0;
end
endcase
end

assign \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/y_temp  = ((!\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/use_immediate ) ? \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/y  : {{\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/immediate ,27'b000000000000000000000000000}});

always @(*)
begin
case (\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/write_mode )
2'b00: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/result  = \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/x ;
end
2'b01: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/x  | \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/y_temp );
end
2'b10: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/result  = (\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/x  & (~\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/y_temp ));
end
2'b11: begin
\dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/result  = \dti_riscv/dti_riscv_core/riscv_execute/pp_csr_alu/y_temp ;
end
endcase
end

assign \dti_riscv/dti_riscv_core/riscv_fetch/imem_address  = ((!\dti_riscv/dti_riscv_core/riscv_fetch/cancel_fetch ) ? \dti_riscv/dti_riscv_core/riscv_fetch/pc_next  : \dti_riscv/dti_riscv_core/riscv_fetch/pc );
assign \dti_riscv/dti_riscv_core/riscv_fetch/inst_data  = \dti_riscv/dti_riscv_core/riscv_fetch/imem_data_in ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/inst_ready  = ((\dti_riscv/dti_riscv_core/riscv_fetch/imem_ack  && (!\dti_riscv/dti_riscv_core/riscv_fetch/stall )) && (!\dti_riscv/dti_riscv_core/riscv_fetch/cancel_fetch ));
assign \dti_riscv/dti_riscv_core/riscv_fetch/inst_address  = \dti_riscv/dti_riscv_core/riscv_fetch/pc ;
assign \dti_riscv/dti_riscv_core/riscv_fetch/imem_req  = (\dti_riscv/dti_riscv_core/riscv_fetch/reset_n  & (!\dti_riscv/dti_riscv_core/riscv_fetch/boost_en ));

always @( posedge \dti_riscv/dti_riscv_core/riscv_fetch/clk  or negedge \dti_riscv/dti_riscv_core/riscv_fetch/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_fetch/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_fetch/pc  <= 0;
\dti_riscv/dti_riscv_core/riscv_fetch/cancel_fetch  <= 0;
end
else
begin
if (((\dti_riscv/dti_riscv_core/riscv_fetch/exception  || \dti_riscv/dti_riscv_core/riscv_fetch/branch ) && (!\dti_riscv/dti_riscv_core/riscv_fetch/imem_ack )))
begin
\dti_riscv/dti_riscv_core/riscv_fetch/cancel_fetch  <= 1'b1;
\dti_riscv/dti_riscv_core/riscv_fetch/pc  <= \dti_riscv/dti_riscv_core/riscv_fetch/pc_next ;
end
else
if ((\dti_riscv/dti_riscv_core/riscv_fetch/cancel_fetch  && \dti_riscv/dti_riscv_core/riscv_fetch/imem_ack ))
begin
\dti_riscv/dti_riscv_core/riscv_fetch/cancel_fetch  <= 1'b0;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_fetch/pc  <= \dti_riscv/dti_riscv_core/riscv_fetch/pc_next ;
end
end
end


always @(*)
begin
if (\dti_riscv/dti_riscv_core/riscv_fetch/exception )
begin
\dti_riscv/dti_riscv_core/riscv_fetch/pc_next  = \dti_riscv/dti_riscv_core/riscv_fetch/evec ;
end
else
if (\dti_riscv/dti_riscv_core/riscv_fetch/branch )
begin
\dti_riscv/dti_riscv_core/riscv_fetch/pc_next  = \dti_riscv/dti_riscv_core/riscv_fetch/branch_target ;
end
else
if (((\dti_riscv/dti_riscv_core/riscv_fetch/imem_ack  & (!\dti_riscv/dti_riscv_core/riscv_fetch/stall )) & (!\dti_riscv/dti_riscv_core/riscv_fetch/cancel_fetch )))
begin
\dti_riscv/dti_riscv_core/riscv_fetch/pc_next  = (\dti_riscv/dti_riscv_core/riscv_fetch/pc  + 4);
end
else
begin
\dti_riscv/dti_riscv_core/riscv_fetch/pc_next  = \dti_riscv/dti_riscv_core/riscv_fetch/pc ;
end
end

assign \dti_riscv/dti_riscv_core/riscv_memory/mem_op_out  = \dti_riscv/dti_riscv_core/riscv_memory/mem_op ;

always @( posedge \dti_riscv/dti_riscv_core/riscv_memory/clk  or negedge \dti_riscv/dti_riscv_core/riscv_memory/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_memory/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_memory/rd_write_out  <= 0;
\dti_riscv/dti_riscv_core/riscv_memory/csr_write_out  <= 2'b00;
\dti_riscv/dti_riscv_core/riscv_memory/count_instruction_out  <= 0;
\dti_riscv/dti_riscv_core/riscv_memory/mem_op  <= 3'b000;
end
else
begin
if ((!\dti_riscv/dti_riscv_core/riscv_memory/stall ))
begin
\dti_riscv/dti_riscv_core/riscv_memory/mem_size  <= \dti_riscv/dti_riscv_core/riscv_memory/mem_size_in ;
\dti_riscv/dti_riscv_core/riscv_memory/rd_data  <= \dti_riscv/dti_riscv_core/riscv_memory/rd_data_in ;
\dti_riscv/dti_riscv_core/riscv_memory/rd_addr_out  <= \dti_riscv/dti_riscv_core/riscv_memory/rd_addr_in ;
if (\dti_riscv/dti_riscv_core/riscv_memory/exception_in )
begin
\dti_riscv/dti_riscv_core/riscv_memory/mem_op  <= 3'b000;
\dti_riscv/dti_riscv_core/riscv_memory/rd_write_out  <= 1'b0;
\dti_riscv/dti_riscv_core/riscv_memory/csr_write_out  <= 2'b11;
\dti_riscv/dti_riscv_core/riscv_memory/csr_addr_out  <= 833;
\dti_riscv/dti_riscv_core/riscv_memory/csr_data_out  <= \dti_riscv/dti_riscv_core/riscv_memory/pc ;
\dti_riscv/dti_riscv_core/riscv_memory/count_instruction_out  <= 1'b0;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_memory/mem_op  <= \dti_riscv/dti_riscv_core/riscv_memory/mem_op_in ;
\dti_riscv/dti_riscv_core/riscv_memory/rd_write_out  <= \dti_riscv/dti_riscv_core/riscv_memory/rd_write_in ;
\dti_riscv/dti_riscv_core/riscv_memory/csr_write_out  <= \dti_riscv/dti_riscv_core/riscv_memory/csr_write_in ;
\dti_riscv/dti_riscv_core/riscv_memory/csr_addr_out  <= \dti_riscv/dti_riscv_core/riscv_memory/csr_addr_in ;
\dti_riscv/dti_riscv_core/riscv_memory/csr_data_out  <= \dti_riscv/dti_riscv_core/riscv_memory/csr_data_in ;
\dti_riscv/dti_riscv_core/riscv_memory/count_instruction_out  <= \dti_riscv/dti_riscv_core/riscv_memory/count_instruction_in ;
end
end
end
end


always @( posedge \dti_riscv/dti_riscv_core/riscv_memory/clk  or negedge \dti_riscv/dti_riscv_core/riscv_memory/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_memory/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_memory/exception_out  <= 0;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_memory/exception_out  <= (\dti_riscv/dti_riscv_core/riscv_memory/exception_in  || (\dti_riscv/dti_riscv_core/riscv_memory/branch  == 3'b100));
if (\dti_riscv/dti_riscv_core/riscv_memory/exception_in )
begin
\dti_riscv/dti_riscv_core/riscv_memory/exception_context_out  <= \dti_riscv/dti_riscv_core/riscv_memory/exception_context_in ;
end
end
end


always @(*)
begin
if (((\dti_riscv/dti_riscv_core/riscv_memory/mem_op  == 3'b010) || (\dti_riscv/dti_riscv_core/riscv_memory/mem_op  == 3'b011)))
begin
case (\dti_riscv/dti_riscv_core/riscv_memory/mem_size )
2'b00: begin
if ((\dti_riscv/dti_riscv_core/riscv_memory/mem_op  == 3'b011))
begin
\dti_riscv/dti_riscv_core/riscv_memory/rd_data_out  = {{\dti_riscv/dti_riscv_core/riscv_memory/dmem_data_in [7:0],24'b000000000000000000000000}};
end
else
begin
\dti_riscv/dti_riscv_core/riscv_memory/rd_data_out  = {{\dti_riscv/dti_riscv_core/riscv_memory/dmem_data_in [7:0],24'b000000000000000000000000}};
end
end
2'b01: begin
if ((\dti_riscv/dti_riscv_core/riscv_memory/mem_op  == 3'b011))
begin
\dti_riscv/dti_riscv_core/riscv_memory/rd_data_out  = {{\dti_riscv/dti_riscv_core/riscv_memory/dmem_data_in [15:0],16'b0000000000000000}};
end
else
begin
\dti_riscv/dti_riscv_core/riscv_memory/rd_data_out  = {{\dti_riscv/dti_riscv_core/riscv_memory/dmem_data_in [15:0],16'b0000000000000000}};
end
end
2'b10: begin
\dti_riscv/dti_riscv_core/riscv_memory/rd_data_out  = \dti_riscv/dti_riscv_core/riscv_memory/dmem_data_in ;
end
endcase
end
else
begin
\dti_riscv/dti_riscv_core/riscv_memory/rd_data_out  = \dti_riscv/dti_riscv_core/riscv_memory/rd_data ;
end
end


always @( posedge \dti_riscv/dti_riscv_core/riscv_register_file/clk  or negedge \dti_riscv/dti_riscv_core/riscv_register_file/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_register_file/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_register_file/regfile  <= 0;
end
else
begin
if ((\dti_riscv/dti_riscv_core/riscv_register_file/rd_write  && (\dti_riscv/dti_riscv_core/riscv_register_file/rd_addr  != 0)))
begin
\dti_riscv/dti_riscv_core/riscv_register_file/regfile [\dti_riscv/dti_riscv_core/riscv_register_file/rd_addr ] <= \dti_riscv/dti_riscv_core/riscv_register_file/rd_data ;
end
\dti_riscv/dti_riscv_core/riscv_register_file/rs1_addr_temp  <= \dti_riscv/dti_riscv_core/riscv_register_file/rs1_addr ;
\dti_riscv/dti_riscv_core/riscv_register_file/rs2_addr_temp  <= \dti_riscv/dti_riscv_core/riscv_register_file/rs2_addr ;
end
end

assign \dti_riscv/dti_riscv_core/riscv_register_file/rs1_data  = \dti_riscv/dti_riscv_core/riscv_register_file/regfile [\dti_riscv/dti_riscv_core/riscv_register_file/rs1_addr_temp ];
assign \dti_riscv/dti_riscv_core/riscv_register_file/rs2_data  = \dti_riscv/dti_riscv_core/riscv_register_file/regfile [\dti_riscv/dti_riscv_core/riscv_register_file/rs2_addr_temp ];

always @( posedge \dti_riscv/dti_riscv_core/riscv_writeback/clk  or negedge \dti_riscv/dti_riscv_core/riscv_writeback/reset_n  )
begin
if ((~\dti_riscv/dti_riscv_core/riscv_writeback/reset_n ))
begin
\dti_riscv/dti_riscv_core/riscv_writeback/rd_write_out  <= 0;
\dti_riscv/dti_riscv_core/riscv_writeback/exception_out  <= 0;
\dti_riscv/dti_riscv_core/riscv_writeback/count_instruction_out  <= 0;
end
else
begin
\dti_riscv/dti_riscv_core/riscv_writeback/count_instruction_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/count_instruction_in ;
\dti_riscv/dti_riscv_core/riscv_writeback/rd_data_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/rd_data_in ;
\dti_riscv/dti_riscv_core/riscv_writeback/rd_write_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/rd_write_in ;
\dti_riscv/dti_riscv_core/riscv_writeback/rd_addr_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/rd_addr_in ;
\dti_riscv/dti_riscv_core/riscv_writeback/exception_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/exception_in ;
\dti_riscv/dti_riscv_core/riscv_writeback/exception_context_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/exception_context_in ;
\dti_riscv/dti_riscv_core/riscv_writeback/csr_write_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/csr_write_in ;
\dti_riscv/dti_riscv_core/riscv_writeback/csr_data_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/csr_data_in ;
\dti_riscv/dti_riscv_core/riscv_writeback/csr_addr_out  <= \dti_riscv/dti_riscv_core/riscv_writeback/csr_addr_in ;
end
end


always @( posedge \dti_riscv/imem/clk  or negedge \dti_riscv/imem/reset_n  )
begin
if ((~\dti_riscv/imem/reset_n ))
begin
\dti_riscv/imem/boost_en_tmp  <= 0;
end
else
begin
\dti_riscv/imem/boost_en_tmp  <= \dti_riscv/imem/boost_en ;
end
end

assign \dti_riscv/imem/boost_en_trigger  = ((\dti_riscv/imem/boost_en_tmp  ^ \dti_riscv/imem/boost_en ) & \dti_riscv/imem/boost_en );

always @( posedge \dti_riscv/imem/clk  or negedge \dti_riscv/imem/reset_n  )
begin
if ((~\dti_riscv/imem/reset_n ))
begin
\dti_riscv/imem/index_inst  <= 0;
\dti_riscv/imem/instruction_memory  <= 0;
end
else
begin
if (\dti_riscv/imem/boost_en_trigger )
begin
\dti_riscv/imem/index_inst  <= 0;
\dti_riscv/imem/instruction_memory  <= 0;
end
else
if (\dti_riscv/imem/rx_boost_inst_wr_req )
begin
\dti_riscv/imem/index_inst  <= (\dti_riscv/imem/index_inst  + 1);
\dti_riscv/imem/instruction_memory [\dti_riscv/imem/index_inst ] <= \dti_riscv/imem/rx_boost_inst_data_in ;
end
end
end


always @( posedge \dti_riscv/imem/clk  or negedge \dti_riscv/imem/reset_n  )
begin
if ((~\dti_riscv/imem/reset_n ))
begin
\dti_riscv/imem/imem_ack  <= 0;
\dti_riscv/imem/imem_data_in  <= 0;
end
else
begin
if (\dti_riscv/imem/imem_req )
begin
if (((\dti_riscv/imem/imem_address  >> 2) < \dti_riscv/imem/index_inst ))
begin
\dti_riscv/imem/imem_ack  <= 1'b1;
\dti_riscv/imem/imem_data_in  <= \dti_riscv/imem/instruction_memory [(\dti_riscv/imem/imem_address  >> 2)];
end
else
begin
\dti_riscv/imem/imem_ack  <= 1'b0;
\dti_riscv/imem/imem_data_in  <= 0;
end
end
else
begin
\dti_riscv/imem/imem_ack  <= 1'b0;
end
end
end


endmodule