# dynamo_mux
read_file ../../hdl/dynamo_mux.sv

parse_files +incdir+../../hdl \
            +incdir+../../inc \
            +libext+.v+.sv
link_design

write_design -flatten -munge -topmodule dynamo_mux -out dynamo_mux -outdir ../hdl_obf
write_design -flatten        -topmodule dynamo_mux -out dynamo_mux -outdir ../hdl_obf_kname

report_blackbox -topmodule dynamo_mux -blackbox
