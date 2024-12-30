set_property SRC_FILE_INFO {cfile:/new_data6/workspace/hautx0/Intern_SIP_08_04_2024/sip_2024_apr/dti_uart/fpga/dti_uart_top/dti_uart_top/dti_uart_top.srcs/sources_1/bd/design_uart/ip/design_uart_clk_wiz_1_0/design_uart_clk_wiz_1_0.xdc rfile:../../../dti_uart_top.srcs/sources_1/bd/design_uart/ip/design_uart_clk_wiz_1_0/design_uart_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:design_uart_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/new_data6/workspace/hautx0/Intern_SIP_08_04_2024/sip_2024_apr/dti_uart/fpga/dti_uart_top/dti_uart_top/dti_uart_top.srcs/constrs_1/new/pin_io.xdc rfile:../../../dti_uart_top.srcs/constrs_1/new/pin_io.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk_in1 }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
set_property src_info {type:XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { resetn }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { cts_n_0 }]; #IO_L23N_T3_35 Sch=jc[1]
set_property src_info {type:XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { rts_n_0 }]; #IO_L19N_T3_VREF_35 Sch=jc[2]
set_property src_info {type:XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { rx_0 }]; #IO_L22N_T3_35 Sch=jc[3]
set_property src_info {type:XDC file:2 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { tx_0 }]; #IO_L19P_T3_35 Sch=jc[4]
