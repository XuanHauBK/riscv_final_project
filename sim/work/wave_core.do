onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/clk
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/reset_n
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/imem_ack
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/imem_address
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/imem_req
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/imem_data_in
add wave -noupdate -expand -group pp_fetch /test/imem/opcode
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/stall
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/flush
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/branch
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/exception
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/branch_target
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/evec
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/inst_data
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/inst_address
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/inst_ready
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/pc
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/pc_next
add wave -noupdate -expand -group pp_fetch /test/dti_riscv_core/pp_fetch/cancel_fetch
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/clk
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/reset_n
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/flush
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/stall
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/inst_data
add wave -noupdate -expand -group pp_decode -radix unsigned /test/dti_riscv_core/pp_decode/inst_address
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/inst_ready
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/inst_count
add wave -noupdate -expand -group pp_decode -radix binary /test/dti_riscv_core/pp_decode/instruction
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/rs1_addr
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/rs2_addr
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/rd_addr
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/csr_addr
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/shamt
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/funct3
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/immediate
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/rd_write
add wave -noupdate -expand -group pp_decode -radix binary /test/dti_riscv_core/pp_decode/branch
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/alu_x_src
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/alu_y_src
add wave -noupdate -expand -group pp_decode -radix binary /test/dti_riscv_core/pp_decode/alu_op
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/mem_op
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/mem_size
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/count_inst
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/pc
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/csr_write
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/csr_use_imm
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/decode_exception
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/decode_exception_cause
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/instruction
add wave -noupdate -expand -group pp_decode /test/dti_riscv_core/pp_decode/immediate_value
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/clk
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/reset_n
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/stall
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/flush
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/branch_condition
add wave -noupdate -expand -group pp_execute -radix binary /test/dti_riscv_core/pp_execute/branch_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/branch
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/do_jump
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/irq
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/timer_interrupt
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/software_interrupt
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/dmem_address
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/dmem_data_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/dmem_data_size
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/dmem_read_req
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/dmem_write_req
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs1_addr_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs2_addr_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rd_addr_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rd_addr_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs1_data_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs2_data_in
add wave -noupdate -expand -group pp_execute -radix unsigned /test/dti_riscv_core/pp_execute/rd_data_out
add wave -noupdate -expand -group pp_execute -radix unsigned /test/dti_riscv_core/pp_execute/alu_result
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/shamt_in
add wave -noupdate -expand -group pp_execute -radix unsigned /test/dti_riscv_core/pp_execute/immediate_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/pc_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/pc_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/funct3_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_addr_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_addr_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_write_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_write_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_value_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_value_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_use_immediate_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/alu_x_src_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/alu_y_src_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/alu_op_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rd_write_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rd_write_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/branch_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/branch_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_op_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_op_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_size_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_size_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/count_instruction_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/count_instruction_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/ie_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/ie1_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mie_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mtvec_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mtvec_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/decode_exception_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/decode_exception
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/exception_cause
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/decode_exception_cause_in
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/exception_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/exception_context_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/jump_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/jump_target_out
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_rd_write
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_rd_addr
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_rd_value
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_csr_addr
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_csr_write
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_exception
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/wb_rd_write
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/wb_rd_addr
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/wb_rd_value
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/wb_csr_addr
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/wb_csr_write
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/wb_exception
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_mem_op
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/hazard_detected
add wave -noupdate -expand -group pp_execute -radix binary /test/dti_riscv_core/pp_execute/alu_op
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/alu_x_src
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/alu_y_src
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/alu_x
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/alu_y
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/alu_result
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs1_addr
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs2_addr
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs1_data
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs2_data
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_op
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mem_size
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/pc
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/immediate
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/shamt
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/funct3
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs1_forwarded
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/rs2_forwarded
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/branch
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/branch_condition
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/do_jump
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/jump_target
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mie
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/mtvec
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_write
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_addr
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_use_immediate
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_value
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/decode_exception_cause
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/exception_taken
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/exception_cause
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/exception_addr
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/data_misaligned
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/instr_misaligned
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/irq_asserted
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/irq_asserted_num
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/load_hazard_detected
add wave -noupdate -expand -group pp_execute /test/dti_riscv_core/pp_execute/csr_hazard_detected
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/clk
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/reset_n
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/mem_op_out
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/stall
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/exception_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/dmem_read_ack
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/dmem_write_ack
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/dmem_data_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/pc
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/rd_write_in
add wave -noupdate -expand -group pp_memory -radix unsigned /test/dti_riscv_core/pp_memory/rd_data_in
add wave -noupdate -expand -group pp_memory -radix unsigned /test/dti_riscv_core/pp_memory/rd_addr_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/rd_write_out
add wave -noupdate -expand -group pp_memory -radix unsigned /test/dti_riscv_core/pp_memory/rd_data_out
add wave -noupdate -expand -group pp_memory -radix unsigned /test/dti_riscv_core/pp_memory/rd_addr_out
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/branch
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/mem_op_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/mem_size_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/count_instruction_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/count_instruction_out
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/exception_context_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/exception_out
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/exception_context_out
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/csr_addr_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/csr_addr_out
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/csr_write_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/csr_write_out
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/csr_data_in
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/csr_data_out
add wave -noupdate -expand -group pp_memory -radix binary /test/dti_riscv_core/pp_memory/mem_op
add wave -noupdate -expand -group pp_memory -radix binary /test/dti_riscv_core/pp_memory/mem_size
add wave -noupdate -expand -group pp_memory /test/dti_riscv_core/pp_memory/rd_data
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/clk
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/reset_n
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/count_instruction_in
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/count_instruction_out
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/exception_in
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/exception_context_in
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/exception_out
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/exception_context_out
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/csr_addr_in
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/csr_addr_out
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/csr_write_in
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/csr_write_out
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/csr_data_in
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/csr_data_out
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/rd_write_in
add wave -noupdate -expand -group pp_writeback -radix unsigned /test/dti_riscv_core/pp_writeback/rd_data_in
add wave -noupdate -expand -group pp_writeback -radix unsigned /test/dti_riscv_core/pp_writeback/rd_addr_in
add wave -noupdate -expand -group pp_writeback /test/dti_riscv_core/pp_writeback/rd_write_out
add wave -noupdate -expand -group pp_writeback -radix unsigned /test/dti_riscv_core/pp_writeback/rd_data_out
add wave -noupdate -expand -group pp_writeback -radix unsigned /test/dti_riscv_core/pp_writeback/rd_addr_out
add wave -noupdate -expand -group regfile /test/dti_riscv_core/pp_register_file/clk
add wave -noupdate -expand -group regfile /test/dti_riscv_core/pp_register_file/reset_n
add wave -noupdate -expand -group regfile -radix unsigned /test/dti_riscv_core/pp_register_file/rs1_addr
add wave -noupdate -expand -group regfile /test/dti_riscv_core/pp_register_file/rs1_data
add wave -noupdate -expand -group regfile -radix unsigned /test/dti_riscv_core/pp_register_file/rs2_addr
add wave -noupdate -expand -group regfile /test/dti_riscv_core/pp_register_file/rs2_data
add wave -noupdate -expand -group regfile -radix unsigned /test/dti_riscv_core/pp_register_file/rd_addr
add wave -noupdate -expand -group regfile -radix unsigned /test/dti_riscv_core/pp_register_file/rd_data
add wave -noupdate -expand -group regfile /test/dti_riscv_core/pp_register_file/rd_write
add wave -noupdate -expand -group regfile -childformat {{{/test/dti_riscv_core/pp_register_file/regfile[28]} -radix unsigned}} -expand -subitemconfig {{/test/dti_riscv_core/pp_register_file/regfile[28]} {-radix unsigned}} /test/dti_riscv_core/pp_register_file/regfile
add wave -noupdate -group debug /test/dti_riscv_core/stall_mem
add wave -noupdate -group debug /test/dti_riscv_core/dmem_read_ack
add wave -noupdate -group debug /test/dti_riscv_core/branch_taken
add wave -noupdate -group debug /test/dti_riscv_core/pp_execute/decode_exception_in
add wave -noupdate -group debug /test/dti_riscv_core/pp_execute/decode_exception
add wave -noupdate -group debug /test/dti_riscv_core/pp_execute/flush
add wave -noupdate -group debug /test/dti_riscv_core/exception_taken
add wave -noupdate -group debug /test/dti_riscv_core/mem_op_mem
add wave -noupdate -group debug /test/dti_riscv_core/hazard_detected
add wave -noupdate -expand -group pp_alu /test/dti_riscv_core/pp_execute/pp_alu/x
add wave -noupdate -expand -group pp_alu /test/dti_riscv_core/pp_execute/pp_alu/y
add wave -noupdate -expand -group pp_alu /test/dti_riscv_core/pp_execute/pp_alu/operation
add wave -noupdate -expand -group pp_alu /test/dti_riscv_core/pp_execute/pp_alu/result
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/alu_x_mux/source
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/alu_x_mux/register_value
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/rs1_data_in
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/rs1_forwarded
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/alu_x_mux/immediate_value
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/alu_x_mux/shamt_value
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/alu_x_mux/pc_value
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/alu_x_mux/csr_value
add wave -noupdate -expand -group pp_alu_mux /test/dti_riscv_core/pp_execute/alu_x_mux/value_out
add wave -noupdate -expand -group {alu y mux} /test/dti_riscv_core/pp_execute/alu_y_mux/source
add wave -noupdate -expand -group {alu y mux} /test/dti_riscv_core/pp_execute/alu_y_mux/register_value
add wave -noupdate -expand -group {alu y mux} /test/dti_riscv_core/pp_execute/alu_y_mux/immediate_value
add wave -noupdate -expand -group {alu y mux} /test/dti_riscv_core/pp_execute/alu_y_mux/shamt_value
add wave -noupdate -expand -group {alu y mux} /test/dti_riscv_core/pp_execute/alu_y_mux/pc_value
add wave -noupdate -expand -group {alu y mux} /test/dti_riscv_core/pp_execute/alu_y_mux/csr_value
add wave -noupdate -expand -group {alu y mux} /test/dti_riscv_core/pp_execute/alu_y_mux/value_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {275 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 176
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {565 ns}
