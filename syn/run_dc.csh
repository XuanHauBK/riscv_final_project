#!/bin/csh -f

# setenv PATH /tools/synopsys/dc/Q-2019.12-SP4/linux64/syn/bin:$PATH
# setenv SYNOPSYS /tools/synopsys/dc/Q-2019.12-SP4
reset
rm -f reports/*
rm -f results/*
set PRJ_DIR=../../trunk

set LIB_DIR=/data2/projects/libraries/tsmc28hpcp/7t/dti_tm28hpcp_l30_stdcells_7t_rev1p0p1/db
set LIB_FILE=dti_tm28hpcp_l30_stdcells_7t_ssg_0p81v_neg40c_rev0p0p1.db

echo $PRJ_DIR
set LIB=rev0p0p1

set DFT=0

rm -f ./work .alib-52
set TOP=dti_riscv
# set TOP=dti_convert_burst
sed -i "s|.*set *TOP_LEVEL_MODULE.*|set TOP_LEVEL_MODULE  ${TOP}|g" ./dc_scripts/syn.tcl
sed -i "s|.*set *PROJECT_DIR.*|set PROJECT_DIR       ${PRJ_DIR}|g" ./dc_scripts/syn.tcl
sed -i "s|.*set *SCRIPT_DIR.*|set SCRIPT_DIR        ${PRJ_DIR}/syn/dc_scripts|g" ./dc_scripts/syn.tcl
sed -i "s|.*set *DFT_INSERT.*|set DFT_INSERT        ${DFT}|g" ./dc_scripts/syn.tcl
# sed -i "s|.*set *SRAM_OR_FF.*|set SRAM_OR_FF        ${SRAM_OR_FF}|g" ./dc_scripts/syn_core.tcl
# sed -i "s|.*set *RTL_SOURCE.*|set RTL_SOURCE         \o44{PROJECT_DIR}/obf/hdl_obf_kname|g" ./dc_scripts/syn_ahb2axi.tcl
# sed -i "s|.*set *RTL_SOURCE.*|set RTL_SOURCE         \o44{PROJECT_DIR}/hdl|g" ./dc_scripts/syn_ahb2axi.tcl
# sed -i "s|.*set *DTI_LIB.*|set DTI_LIB         \o44{PROJECT_DIR}/dti_lib|g" ./dc_scripts/syn_ahb2axi.tcl
# sed -i "s|.*set *REG_BLK.*|set REG_BLK         \o44{PROJECT_DIR}/libs/ahb2axi_reg_blk/hdl|g" ./dc_scripts/syn_ahb2axi.tcl
sed -i "s|.*set *INCLUDE_SOURCE.*|set INCLUDE_SOURCE     \o44{PROJECT_DIR}/inc|g" ./dc_scripts/syn.tcl
sed -i "s|.*set *TOP_MODULE_FILE.*|set TOP_MODULE_FILE    \o44{RTL_SOURCE}/\o44{TOP_LEVEL_MODULE}.v|g" ./dc_scripts/syn.tcl
# sed -i "s|.*set *ADDITIONAL_SEARCH_PATH.*|set ADDITIONAL_SEARCH_PATH    \o42${LIB_DIR} \\|g" ./dc_scripts/syn_ahb2axi.tcl
# sed -i "s|.*set *SRAM_LIB.*|set SRAM_LIB                 \o42 ${SRAM_FILES}\o42|g" ./dc_scripts/syn_core.tcl
sed -i "s|.*set *TARGET_LIBRARY_FILES.*|set TARGET_LIBRARY_FILES       ${LIB_FILE}|g" ./dc_scripts/syn.tcl
sed -i "s|.*set *LIB\s+*.*|set LIB                        ${LIB}|g" ./dc_scripts/syn.tcl
# sed -i "s|.*set *CLOCK_PERIOD_AXI.*|set CLOCK_PERIOD_AXI          ${CLOCK_PERIOD_AXI}|g" ./dc_scripts/tconstraints.sdc
# sed -i "s|.*set *CLOCK_PERIOD_AHB.*|set CLOCK_PERIOD_AHB          ${CLOCK_PERIOD_AHB}|g" ./dc_scripts/tconstraints.sdc

dc_shell -f dc_scripts/syn.tcl -output_log_file $TOP.rpt 

