######################################################################
#
# File name : dti_riscv_top_compile.do
# Created on: Thu Dec 19 23:04:41 +07 2024
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -64 -incr -sv -L xil_defaultlib -work xil_defaultlib  "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ipshared/1a8f/dti_riscv_dti_riscv/dti_riscv_dti_riscv.srcs/sources_1/imports/dti_riscv_lib/dti_riscv.sv" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_dti_riscv_0_0/sim/design_1_dti_riscv_0_0.sv" \

vcom -64 -93 -work xil_defaultlib  \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_axi_apb_bridge_0_0/sim/design_1_axi_apb_bridge_0_0.vhd" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_mdm_0_0/sim/design_1_mdm_0_0.vhd" \

vlog -64 -incr -work xil_defaultlib  "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -64 -93 -work xil_defaultlib  \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/sim/design_1_rst_clk_wiz_0_100M_0.vhd" \

vlog -64 -incr -sv -L xil_defaultlib -work xil_defaultlib  "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ipshared/16bd/dti_uart_dti_uart/dti_uart_dti_uart.srcs/sources_1/imports/dti_riscv_lib/dti_uart.sv" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_dti_uart_0_1/sim/design_1_dti_uart_0_1.sv" \

vlog -64 -incr -work xil_defaultlib  "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -64 -93 -work xil_defaultlib  \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -64 -incr -work xil_defaultlib  "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/sim/design_1.v" \
"../../../../dti_riscv_top.ip_user_files/bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../../dti_riscv_top.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v" \

vlog -64 -incr -sv -L xil_defaultlib -work xil_defaultlib  "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_riscv_top.srcs/sim_1/new/dti_riscv_top.sv" \

vlog -64 -incr -work xil_defaultlib  "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_riscv_top.srcs/sim_1/imports/libs/uart_rx.v" \

# compile glbl module
vlog -work xil_defaultlib "glbl.v"

