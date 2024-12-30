// Sequences

// Include Paths
// +incdir+../../inc
+incdir+../libs
-y ../libs/
-v ../libs/uart_tx.v
-v ../libs/uart_rx.v

-sv
-timescale "1fs/1fs"
-incr
// -hazards

+libext+.v                       // Verilog wrapper files
+libext+.vh                      // Verilog wrapper files
+libext+.sv                      // System Verilog wrapper files
+libext+.svh                     // System Verilog wrapper files

// Top testbench module
../tb/dti_uart_tb.sv
