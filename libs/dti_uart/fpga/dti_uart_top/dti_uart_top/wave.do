onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/clk
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/reset_n
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/pclk
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/presetn
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/psel
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/penable
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/inst/register_block/rb_regs/tx_wen
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/inst/register_block/rb_regs/cfg_wen
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/inst/ctrl_start_tx
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/pwrite
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/paddr
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/pstrb
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/pwdata
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/rx
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/cts_n
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/pready
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/pslverr
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/prdata
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/tx
add wave -noupdate -expand -group apb_uart /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/rts_n
add wave -noupdate /dti_uart_top/rx_model/uart_rx_data
add wave -noupdate /dti_uart_top/uart_rx_valid
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/Clk
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/Reset
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_AWADDR
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_AWPROT
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_AWVALID
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_AWREADY
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_WDATA
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_WSTRB
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_WVALID
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_WREADY
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_BRESP
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_BVALID
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_BREADY
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_ARADDR
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_ARPROT
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_ARVALID
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_ARREADY
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_RDATA
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_RRESP
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_RVALID
add wave -noupdate -expand -group axi_micr /dti_uart_top/design_uart_wrapper/design_uart_i/microblaze_0/M_AXI_DP_RREADY
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/ACLK
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/ARESETN
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_ACLK
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_ARESETN
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_araddr
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_arready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_arvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_awaddr
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_awready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_awvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_bready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_bresp
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_bvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_rdata
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_rready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_rresp
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_rvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_wdata
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_wready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_wstrb
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M00_AXI_wvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_ACLK
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_ARESETN
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_araddr
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_arready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_arvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_awaddr
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_awready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_awvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_bready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_bresp
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_bvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_rdata
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_rready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_rresp
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_rvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_wdata
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_wready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/M01_AXI_wvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_ACLK
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_ARESETN
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_araddr
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_arprot
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_arready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_arvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_awaddr
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_awprot
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_awready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_awvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_bready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_bresp
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_bvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_rdata
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_rready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_rresp
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_rvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_wdata
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_wready
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_wstrb
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/design_uart_wrapper/design_uart_i/axi_interconnect_0/S00_AXI_wvalid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/uart_rx_valid
add wave -noupdate -expand -group axi_interconnect /dti_uart_top/uart_rx_data
add wave -noupdate /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/inst/stt_rx_done
add wave -noupdate /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/inst/rx_data
add wave -noupdate /dti_uart_top/design_uart_wrapper/design_uart_i/dti_uart_0/inst/prdata
add wave -noupdate /dti_uart_top/tx_model/uart_tx_en
add wave -noupdate /dti_uart_top/tx_model/uart_tx_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5425205000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {4297458019 ps} {6823318 ns}
