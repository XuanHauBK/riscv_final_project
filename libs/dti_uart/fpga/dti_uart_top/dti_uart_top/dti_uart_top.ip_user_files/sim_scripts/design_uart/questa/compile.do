vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -sv -L xil_defaultlib "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_uart/ipshared/dti_uart_lib/dti_uart.sv" \
"../../../bd/design_uart/ip/design_uart_dti_uart_0_0/sim/design_uart_dti_uart_0_0.sv" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_microblaze_0_0/sim/design_uart_microblaze_0_0.vhd" \
"../../../bd/design_uart/ip/design_uart_mdm_1_0/sim/design_uart_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_uart/ip/design_uart_clk_wiz_1_0/design_uart_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_uart/ip/design_uart_clk_wiz_1_0/design_uart_clk_wiz_1_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_rst_clk_wiz_1_100M_0/sim/design_uart_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/design_uart/ip/design_uart_axi_apb_bridge_0_0/sim/design_uart_axi_apb_bridge_0_0.vhd" \
"../../../bd/design_uart/ip/design_uart_dlmb_v10_0/sim/design_uart_dlmb_v10_0.vhd" \
"../../../bd/design_uart/ip/design_uart_ilmb_v10_0/sim/design_uart_ilmb_v10_0.vhd" \
"../../../bd/design_uart/ip/design_uart_dlmb_bram_if_cntlr_0/sim/design_uart_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_uart/ip/design_uart_ilmb_bram_if_cntlr_0/sim/design_uart_ilmb_bram_if_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_uart/ip/design_uart_lmb_bram_0/sim/design_uart_lmb_bram_0.v" \
"../../../bd/design_uart/sim/design_uart.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_axi_uart16550_0_0/sim/design_uart_axi_uart16550_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_uart/ip/design_uart_xbar_0/sim/design_uart_xbar_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

