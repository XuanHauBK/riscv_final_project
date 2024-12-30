-makelib ies_lib/xilinx_vip -sv \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/new_tools/tools/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_uart/ipshared/dti_uart_lib/dti_uart.sv" \
  "../../../bd/design_uart/ip/design_uart_dti_uart_0_0/sim/design_uart_dti_uart_0_0.sv" \
-endlib
-makelib ies_lib/microblaze_v10_0_6 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/6141/hdl/microblaze_v10_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_microblaze_0_0/sim/design_uart_microblaze_0_0.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mdm_v3_2_13 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/351e/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_mdm_1_0/sim/design_uart_mdm_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_clk_wiz_1_0/design_uart_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/design_uart/ip/design_uart_clk_wiz_1_0/design_uart_clk_wiz_1_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_rst_clk_wiz_1_100M_0/sim/design_uart_rst_clk_wiz_1_100M_0.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_apb_bridge_v3_0_14 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/2f3b/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_axi_apb_bridge_0_0/sim/design_uart_axi_apb_bridge_0_0.vhd" \
-endlib
-makelib ies_lib/lmb_v10_v3_0_9 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_dlmb_v10_0/sim/design_uart_dlmb_v10_0.vhd" \
  "../../../bd/design_uart/ip/design_uart_ilmb_v10_0/sim/design_uart_ilmb_v10_0.vhd" \
-endlib
-makelib ies_lib/lmb_bram_if_cntlr_v4_0_14 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_dlmb_bram_if_cntlr_0/sim/design_uart_dlmb_bram_if_cntlr_0.vhd" \
  "../../../bd/design_uart/ip/design_uart_ilmb_bram_if_cntlr_0/sim/design_uart_ilmb_bram_if_cntlr_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_lmb_bram_0/sim/design_uart_lmb_bram_0.v" \
  "../../../bd/design_uart/sim/design_uart.v" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_uart16550_v2_0_18 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ce7d/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_axi_uart16550_0_0/sim/design_uart_axi_uart16550_0_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_16 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_15 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_17 \
  "../../../../dti_uart_top.srcs/sources_1/bd/design_uart/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_uart/ip/design_uart_xbar_0/sim/design_uart_xbar_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

