# port_bridge
read_file ../../hdl/dti_uart.sv

parse_files +incdir+../../hdl \
            +incdir+../../inc \
            +incdir+../../libs/uart_reg_blk/hdl \
            +libext+.v+.sv+.vh
link_design

write_design -flatten -munge -topmodule dti_uart -out dti_uart -outdir ../hdl_obf
write_design -flatten        -topmodule dti_uart -out dti_uart -outdir ../hdl_obf_kname

report_blackbox -topmodule dti_uart -blackbox
