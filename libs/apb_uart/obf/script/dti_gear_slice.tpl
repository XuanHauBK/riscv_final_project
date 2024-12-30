# dti_gear_slice
read_file ../../libs/dti_tm28hpcp_phy/dti_tm28hpcp_phy_lib/phy_ctl_blk_lib/hdl/dti_gear_slice.sv

parse_files +incdir+../../libs/dti_tm28hpcp_phy/dti_tm28hpcp_phy_lib/phy_ctl_blk_lib/hdl \
            +incdir+../../inc \
            +libext+.v+.sv
link_design

write_design -flatten -munge -topmodule dti_gear_slice -out dti_gear_slice -outdir ../hdl_obf
write_design -flatten        -topmodule dti_gear_slice -out dti_gear_slice -outdir ../hdl_obf_kname

report_blackbox -topmodule dti_gear_slice -blackbox
