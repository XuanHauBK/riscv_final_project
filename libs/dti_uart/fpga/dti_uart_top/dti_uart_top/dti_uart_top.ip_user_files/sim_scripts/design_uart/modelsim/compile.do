vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v10_0_6
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_13
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/axi_apb_bridge_v3_0_14
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_14
vlib modelsim_lib/msim/blk_mem_gen_v8_4_1
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uart16550_v2_0_18
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_16
vlib modelsim_lib/msim/fifo_generator_v13_2_2
vlib modelsim_lib/msim/axi_data_fifo_v2_1_15
vlib modelsim_lib/msim/axi_crossbar_v2_1_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v10_0_6 modelsim_lib/msim/microblaze_v10_0_6
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_13 modelsim_lib/msim/mdm_v3_2_13
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap axi_apb_bridge_v3_0_14 modelsim_lib/msim/axi_apb_bridge_v3_0_14
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_14 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_14
vmap blk_mem_gen_v8_4_1 modelsim_lib/msim/blk_mem_gen_v8_4_1
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uart16550_v2_0_18 modelsim_lib/msim/axi_uart16550_v2_0_18
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_16 modelsim_lib/msim/axi_register_slice_v2_1_16
vmap fifo_generator_v13_2_2 modelsim_lib/msim/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_15 modelsim_lib/msim/axi_data_fifo_v2_1_15
vmap axi_crossbar_v2_1_17 modelsim_lib/msim/axi_crossbar_v2_1_17

vlog -work xilinx_vip -64 -incr -sv -L xil_defaultlib "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L xil_defaultlib "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/new_tools/tools/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -sv -L xil_defaultlib "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_uart/ipshared/dti_uart_lib/dti_uart.sv" \
"../../../bd/design_uart/ip/design_uart_dti_uart_0_0/sim/design_uart_dti_uart_0_0.sv" \

vcom -work microblaze_v10_0_6 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/6141/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_microblaze_0_0/sim/design_uart_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_13 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/351e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_mdm_1_0/sim/design_uart_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_uart/ip/design_uart_clk_wiz_1_0/design_uart_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_uart/ip/design_uart_clk_wiz_1_0/design_uart_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_rst_clk_wiz_1_100M_0/sim/design_uart_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_apb_bridge_v3_0_14 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/2f3b/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_axi_apb_bridge_0_0/sim/design_uart_axi_apb_bridge_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_dlmb_v10_0/sim/design_uart_dlmb_v10_0.vhd" \
"../../../bd/design_uart/ip/design_uart_ilmb_v10_0/sim/design_uart_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_14 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_dlmb_bram_if_cntlr_0/sim/design_uart_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_uart/ip/design_uart_ilmb_bram_if_cntlr_0/sim/design_uart_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_uart/ip/design_uart_lmb_bram_0/sim/design_uart_lmb_bram_0.v" \
"../../../bd/design_uart/sim/design_uart.v" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uart16550_v2_0_18 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ce7d/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_uart/ip/design_uart_axi_uart16550_0_0/sim/design_uart_axi_uart16550_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_16 -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_15 -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_17 -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/4903" "+incdir+../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl" "+incdir+/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_uart/ip/design_uart_xbar_0/sim/design_uart_xbar_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
