vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -sv -L xil_defaultlib "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/1a8f/dti_riscv_dti_riscv/dti_riscv_dti_riscv.srcs/sources_1/imports/dti_riscv_lib/dti_riscv.sv" \
"../../../bd/design_1/ip/design_1_dti_riscv_0_0/sim/design_1_dti_riscv_0_0.sv" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_apb_bridge_0_0/sim/design_1_axi_apb_bridge_0_0.vhd" \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \
"../../../bd/design_1/ip/design_1_mdm_0_0/sim/design_1_mdm_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_100M_0/sim/design_1_rst_clk_wiz_0_100M_0.vhd" \

vlog -work xil_defaultlib -64 -sv -L xil_defaultlib "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/16bd/dti_uart_dti_uart/dti_uart_dti_uart.srcs/sources_1/imports/dti_riscv_lib/dti_uart.sv" \
"../../../bd/design_1/ip/design_1_dti_uart_0_1/sim/design_1_dti_uart_0_1.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_riscv_top.srcs/sources_1/bd/design_1/ipshared/4903" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

