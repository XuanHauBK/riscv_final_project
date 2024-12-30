# dti_phy_ctl_blk 
read_file ../../libs/dti_tm28hpcp_phy/dti_tm28hpcp_phy_lib/phy_ctl_blk_lib/hdl/dti_phy_ctl_blk.v

parse_files +incdir+../../libs/dti_tm28hpcp_phy/dti_tm28hpcp_phy_lib/phy_ctl_blk_lib/hdl \
            +incdir+../../libs/dti_lib/hdl/dti_bictr_rcnto_up \
            +incdir+../../inc \
            +libext+.v+.sv
link_design

write_design -flatten -munge -topmodule dti_phy_ctl_blk -out dti_phy_ctl_blk -outdir ../hdl_obf
write_design -flatten        -topmodule dti_phy_ctl_blk -out dti_phy_ctl_blk -outdir ../hdl_obf_kname

report_blackbox -topmodule dti_phy_ctl_blk -blackbox
