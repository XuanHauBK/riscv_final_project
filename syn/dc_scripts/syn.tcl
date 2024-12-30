################################################################################
# User-defined Project Path
################################################################################
set TOP_LEVEL_MODULE  dti_riscv
set PROJECT_DIR       ../../trunk
set SCRIPT_DIR        ../../trunk/syn/dc_scripts
set DTI_LIB_DIR       ${PROJECT_DIR}/libs
# set REG_BLK           ${PROJECT_DIR}/libs/axi2ahb_reg_blk/hdl

################################################################################
# RTL Source code
################################################################################
set DTI_LIB           "${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_bin_to_gray \
                      ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_bicnt_dwn \
                      ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_cdc_data_sync_gf \
                      ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_gray_to_bin \
                      ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_fifo_async_sf \
                      ${DTI_LIB_DIR}/apb_gpio/hdl \
                      ${DTI_LIB_DIR}/apb_timer/hdl \
                      ${DTI_LIB_DIR}/apb_uart/hdl";
set RTL_SOURCE        ${PROJECT_DIR}/hdl

set INCLUDE_SOURCE     ${PROJECT_DIR}/inc
set TOP_MODULE_FILE    ${RTL_SOURCE}/${TOP_LEVEL_MODULE}.v

################################################################################
# User-defined variables for logical library setup in dc_setup.tcl
################################################################################
set ADDITIONAL_SEARCH_PATH    "/data2/projects/libraries/tsmc28hpcp/7t/dti_tm28hpcp_l30_stdcells_7t_rev1p0p1/db \
                               $RTL_SOURCE \
                               $DTI_LIB \
                               $INCLUDE_SOURCE \
                               $SCRIPT_DIR";

set TARGET_LIBRARY_FILES       dti_tm28hpcp_l30_stdcells_7t_ssg_0p81v_neg40c_rev0p0p1.db
set SYMBOL_LIBRARY_FILES       sc.sdb
set LIB                        rev0p0p1

# set TECH_FILE     /data/projects/libraries/tech_file/tsmcn28_10lm5X2Y2RRDL.tf
# set MW_REF_LIB    /data/projects/libraries/mw_lib/mw_lib_28hpm
# set MW_DESIGN_LIB mw_${TOP_LEVEL_MODULE}
# set TLUPLUS_MAX_FILE /data/projects/libraries/tech_file/RC_TLUplus_cln28hpm_1p10m+alrdl_5x2y2z_rcworst/cln28hpm_1p10m+alrdl_5x2y2z_rcworst.tluplus
# set TLUPLUS_MIN_FILE /data/projects/libraries/tech_file/RC_TLUplus_cln28hpm_1p10m+alrdl_5x2y2z_rcbest/cln28hpm_1p10m+alrdl_5x2y2z_rcbest.tluplus

################################################################################
# Clock Information
################################################################################
# 1600 MHz -  0.625
# 1066 MHz -  0.938
#  800 MHz -  1.250
#  700 MHz -  1.428
#  533 MHz -  1.875
#  400 MHz -  2.500
#  200 MHz -  5.000
#  100 MHz - 10.000

# set CLOCK_PERIOD_DTI_WB            1
# set HALF_PERIOD_DTI_WB             [expr {$CLOCK_PERIOD_DTI_WB/2}]
# set MARGIN_DTI_APB                 [expr {$CLOCK_PERIOD_DTI_WB*0.20}]
# set CLOCK_PERIOD_DTI_APB           1.2
# set HALF_PERIOD_DTI_APB            [expr {$CLOCK_PERIOD_DTI_APB/2}]
# set MARGIN_DTI_APB                 [expr {$CLOCK_PERIOD_DTI_APB*0.20}]

################################################################################
# Input constrain files
################################################################################
# set DC_CONSTRAINTS_INPUT_FILE     tconstraints.tcl

################################################################################
# Reports
################################################################################

set DC_CHECK_LIBRARY_REPORT                           ${TOP_LEVEL_MODULE}_${LIB}_check_library.rpt

set DC_CONSISTENCY_CHECK_ENV_FILE                     ${TOP_LEVEL_MODULE}_${LIB}_compile_ultra.env
set DC_CHECK_DESIGN_REPORT                            ${TOP_LEVEL_MODULE}_${LIB}_check_design.rpt
set DC_ELARORATE_REPORT                               ${TOP_LEVEL_MODULE}_${LIB}_elaborate.rpt
set DC_FINAL_QOR_REPORT                               ${TOP_LEVEL_MODULE}_${LIB}_final_qor.rpt
set DC_FINAL_TIMING_REPORT                            ${TOP_LEVEL_MODULE}_${LIB}_final_timing.rpt
set DC_FINAL_AREA_REPORT                              ${TOP_LEVEL_MODULE}_${LIB}_final_area.rpt
set DC_FINAL_POWER_REPORT                             ${TOP_LEVEL_MODULE}_${LIB}_final_power.rpt
set DC_FINAL_CLOCK_GATING_REPORT                      ${TOP_LEVEL_MODULE}_${LIB}_final_clock_gating.rpt
set DC_FINAL_SELF_GATING_REPORT                       ${TOP_LEVEL_MODULE}_${LIB}_final_self_gating.rpt
set DC_FINAL_CONSTRAINTS_REPORT                       ${TOP_LEVEL_MODULE}_${LIB}_final_constraints.rpt
set DC_FINAL_FSM_REPORT                               ${TOP_LEVEL_MODULE}_${LIB}_final_fsm.rpt

set DC_TIMING_MAX_REPORT                              ${TOP_LEVEL_MODULE}_${LIB}_timing_max.rpt
set DC_TIMING_MIN_REPORT                              ${TOP_LEVEL_MODULE}_${LIB}_timing_min.rpt

################################################################################
# Output Files
################################################################################

set DC_FINAL_DDC_OUTPUT_FILE                          ${TOP_LEVEL_MODULE}_${LIB}_netlist.ddc
set DC_FINAL_VERILOG_OUTPUT_FILE                      ${TOP_LEVEL_MODULE}_${LIB}_netlist.v
set DC_FINAL_SDC_OUTPUT_FILE                          ${TOP_LEVEL_MODULE}_${LIB}_netlist.sdc
set DC_FINAL_SDF_OUTPUT_FILE                          ${TOP_LEVEL_MODULE}_${LIB}_netlist.sdf
######################################################################
# Report and Result Directories
######################################################################
set REPORTS_DIR reports
set RESULTS_DIR results

file mkdir $REPORTS_DIR
file mkdir $RESULTS_DIR

######################################################################
# Logical Library Settings
######################################################################
define_design_lib work -path ./work
set_app_var search_path       "$search_path $ADDITIONAL_SEARCH_PATH"
set_app_var synthetic_library [list dw_foundation.sldb]
set_app_var target_library    $TARGET_LIBRARY_FILES
set_app_var link_library      "* $target_library $synthetic_library "
set_app_var symbol_library    $SYMBOL_LIBRARY_FILES

# set_min_library $MAX_LIBRARY_FILES -min_version $MIN_LIBRARY_FILES

######################################################################
# FSM inferring Settings
######################################################################
set_app_var fsm_auto_inferring true
set_app_var hdlin_reporting_level comprehensive+fsm

######################################################################
# Naming Settings
######################################################################
set_app_var hdlin_keep_signal_name all
set_app_var hdlin_module_name_limit 128
set_app_var hdlin_shorten_long_module_name true
set_app_var report_default_significant_digits 5

set_app_var timing_enable_normalized_slack true
set compile_timing_high_effort true
set_app_var compile_advanced_fix_multiple_port_nets true
set_app_var hdlin_check_no_latch true
set_host_options -max_core 4
set_dp_smartgen_options -optimize_for speed

#-v ${RTL_SOURCE}/freechips.rocketchip.system.DefaultConfig.v
analyze -vcs "-sverilog \
              -y ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_bin_to_gray \
              -y ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_bicnt_dwn \
              -y ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_cdc_data_sync_gf \
              -y ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_gray_to_bin \
              -y ${DTI_LIB_DIR}/dti_lib/dti_fifo/dti_fifo_async_sf \
              -y ${DTI_LIB_DIR}/apb_gpio/hdl \
              -y ${DTI_LIB_DIR}/apb_timer/hdl \
              -y ${DTI_LIB_DIR}/apb_uart/hdl \
              -y $RTL_SOURCE \
              +incdir+$INCLUDE_SOURCE +libext+.v+.sv" ${TOP_MODULE_FILE}
elaborate ${TOP_LEVEL_MODULE} -lib work

# Compile Top module
current_design ${TOP_LEVEL_MODULE}

source -echo -verbose tconstraints.sdc

set_fix_multiple_port_nets -all [all_designs] -buffer_constants

set_fsm_encoding_style one_hot
set_fsm_minimize true

ungroup -all -flatten

check_design > ${REPORTS_DIR}/${TOP_LEVEL_MODULE}_${LIB}_check_design.rpt
link
write -format verilog -hierarchy -output ${RESULTS_DIR}/${TOP_LEVEL_MODULE}_${LIB}_GTECH.v

# set_implementation apparch "U1"

# compile_ultra 
# compile_ultra -no_autoungroup
compile_ultra -incremental

update_timing
check_timing > ${REPORTS_DIR}/${TOP_LEVEL_MODULE}_${LIB}_check_timing.rpt


#################################################################################
# Write out Design
#################################################################################
write_file -format ddc     -hierarchy -output ${RESULTS_DIR}/${DC_FINAL_DDC_OUTPUT_FILE}
write_file -format verilog -hierarchy -output ${RESULTS_DIR}/${DC_FINAL_VERILOG_OUTPUT_FILE}
write_sdf -significant_digits 5          ${RESULTS_DIR}/${DC_FINAL_SDF_OUTPUT_FILE}

################################################################################
# Generate Final Reports
#################################################################################
report_timing -nworst 1000 -sort_by slack                    > ${REPORTS_DIR}/${DC_FINAL_TIMING_REPORT}
report_constraint -all_violators                             > ${REPORTS_DIR}/${DC_FINAL_CONSTRAINTS_REPORT}
report_qor  -significant_digits 5                            > ${REPORTS_DIR}/${DC_FINAL_QOR_REPORT}
report_fsm                                                   > ${REPORTS_DIR}/${DC_FINAL_FSM_REPORT}
report_power -analysis_effort medium                         > ${REPORTS_DIR}/${TOP_LEVEL_MODULE}_${LIB}_final_power.rpt
report_power -analysis_effort medium -cell -verbose          > ${REPORTS_DIR}/${TOP_LEVEL_MODULE}_${LIB}_final_power_cell.rpt
report_reference                                             > ${REPORTS_DIR}/${TOP_LEVEL_MODULE}_${LIB}_final_ref.rpt
if {[shell_is_in_topographical_mode]} {
  report_area -physical -nosplit > ${REPORTS_DIR}/${DC_FINAL_AREA_REPORT}
} else {
  report_area -nosplit > ${REPORTS_DIR}/${DC_FINAL_AREA_REPORT}
}

puts "RM-Info: Completed script syn.tcl\n"
exit