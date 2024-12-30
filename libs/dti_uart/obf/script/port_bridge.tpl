# port_bridge
read_file ../../libs/port_bridge/hdl/port_bridge.v

parse_files +incdir+../../libs/port_bridge/hdl \
            +incdir+../../inc \
            +incdir+../../libs/dti_lib/hdl/dti_arb_fcfs \
            +incdir+../../libs/dti_lib/hdl/dti_arb_pri_mask \
            +incdir+../../libs/dti_lib/hdl/dti_bicnt_dwn \
            +incdir+../../libs/dti_lib/hdl/dti_bictr_rcnto_up \
            +incdir+../../libs/dti_lib/hdl/dti_bin_to_gray \
            +incdir+../../libs/dti_lib/hdl/dti_cdc_data_sync \
            +incdir+../../libs/dti_lib/hdl/dti_crc \
            +incdir+../../libs/dti_lib/hdl/dti_dwncnt \
            +incdir+../../libs/dti_lib/hdl/dti_ecc \
            +incdir+../../libs/dti_lib/hdl/dti_fifo_async_sf \
            +incdir+../../libs/dti_lib/hdl/dti_fifoctl_s1_df \
            +incdir+../../libs/dti_lib/hdl/dti_fifo_s1_sf \
            +incdir+../../libs/dti_lib/hdl/dti_fifo_s1_sf_r \
            +incdir+../../libs/dti_lib/hdl/dti_first_one_detect \
            +incdir+../../libs/dti_lib/hdl/dti_first_zero_detect \
            +incdir+../../libs/dti_lib/hdl/dti_gray_to_bin \
            +incdir+../../libs/dti_lib/hdl/dti_lfsr_rcnto_reload_up \
            +incdir+../../libs/dti_lib/hdl/dti_lfsr_rcnto_up \
            +incdir+../../libs/dti_lib/hdl/dti_mux_any_onehot \
            +incdir+../../libs/dti_lib/hdl/dti_mux_onehot \
            +incdir+../../libs/dti_lib/hdl/dti_one_counter_onehot \
            +incdir+../../libs/dti_lib/hdl/dti_onehot_to_binary \
            +incdir+../../libs/dti_lib/hdl/dti_parity \
            +incdir+../../libs/dti_lib/hdl/dti_ram_r_w_s_dff \
            +incdir+../../libs/dti_lib/hdl/dti_rd_dbi \
            +incdir+../../libs/dti_lib/hdl/dti_shift_reg \
            +incdir+../../libs/dti_lib/hdl/dti_wr_dbi \
            +incdir+../../libs/dti_lib/hdl/dti_fifo_async_sf_apb \
            +incdir+../../libs/dolphinware_ip/hdl/ \
            +libext+.v+.sv
link_design

write_design -flatten -munge -topmodule port_bridge -out port_bridge -outdir ../hdl_obf
write_design -flatten        -topmodule port_bridge -out port_bridge -outdir ../hdl_obf_kname

report_blackbox -topmodule port_bridge -blackbox
