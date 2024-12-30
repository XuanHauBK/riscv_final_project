# port_bridge
read_file ../../hdl/dti_riscv.v

parse_files +incdir+../../hdl \
            +incdir+../../inc \
            +incdir+../../libs/apb_uart/hdl \
            +incdir+../../libs/apb_gpio/hdl \
            +incdir+../../libs/apb_timer/hdl \
            +incdir+../../libs/dti_lib/dti_fifo/dti_bicnt_dwn \
            +incdir+../../libs/dti_lib/dti_fifo/dti_bin_to_gray \
            +incdir+../../libs/dti_lib/dti_fifo/dti_cdc_data_sync_gf \
            +incdir+../../libs/dti_lib/dti_fifo/dti_fifo_async_sf \
            +incdir+../../libs/dti_lib/dti_fifo/dti_gray_to_bin \
            +libext+.v+.sv+.vh
link_design

write_design -flatten -munge -topmodule dti_riscv -out dti_riscv -outdir ../hdl_obf
write_design -flatten        -topmodule dti_riscv -out dti_riscv -outdir ../hdl_obf_kname

report_blackbox -topmodule dti_riscv -blackbox
