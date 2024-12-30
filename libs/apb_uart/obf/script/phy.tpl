read_file ../../libs/dti_tm28hpcp_phy/dti_tm28hpcp_phy_lib/hdl/dti_tm28hpcp_phy.v
parse_files +incdir+../../libs/dti_tm28hpcp_phy/dti_tm28hpcp_phy_lib/hdl/base_verilog \
            +incdir+../../libs/dti_tm28hpcp_phy/dti_tm28hpcp_phy_lib/hdl/misc \
            +incdir+../../libs/dti_tm28hpcp_phy/dti_tm28hpcp_phy_lib/hdl \
            +incdir+../../inc \
            +libext+.v+.sv
link_design

write_design -flatten -munge -topmodule dti_tm28hpcp_phy -out dti_tm28hpcp_phy -outdir ../hdl_obf
write_design       -topmodule dti_tm28hpcp_phy -out dti_tm28hpcp_phy -outdir ../hdl_obf_kname

report_blackbox -topmodule dti_tm28hpcp_phy.v -blackbox
