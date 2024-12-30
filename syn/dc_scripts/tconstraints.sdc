puts "DTI-Info: Running script tconstraints.tcl\n"

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


set clock_core                 clk
set clock_core_period          1
set clock_core_margin          [expr {$clock_core_period*0.20}]

set clock_apb                  apb_pclk
set clock_apb_period           1
set clock_apb_margin           [expr {$clock_apb_period*0.20}]

set clock_uart                 clk_uart
set clock_uart_period          1
set clock_uart_margin          [expr {$clock_uart_period*0.20}]

################ Uncertainty ############################################################
create_clock -period $clock_core_period $clock_core
set_clock_uncertainty $clock_core_margin $clock_core

create_clock -period $clock_apb_period $clock_apb
set_clock_uncertainty $clock_apb_margin $clock_apb

create_clock -period $clock_uart_period $clock_uart
set_clock_uncertainty $clock_uart_margin $clock_uart
########################################################################################

# Create real clock if clock port is found
set_input_delay \
       [expr {$clock_core_period*0.05}] \
       -clock $clock_core \
       [remove_from_collection \
                 [all_inputs] \
                 [get_ports {clk apb_pclk clk_uart}]]

set_output_delay \
       [expr {$clock_core_period*0.05}] \
       -clock $clock_core \
       [remove_from_collection \
                 [all_outputs] \
                 [get_ports {clk apb_pclk clk_uart}]]

set_false_path -from clk -to apb_pclk
set_false_path -from clk -to clk_uart
set_false_path -from apb_pclk -to clk
set_false_path -from apb_pclk -to clk_uart
set_false_path -from clk_uart -to clk
set_false_path -from clk_uart -to apb_pclk

set_dont_touch_network [get_ports clk]
set_dont_touch_network [get_ports apb_pclk]
set_dont_touch_network [get_ports clk_uart]

set_clock_groups -asynchronous -group clk -group apb_pclk -group clk_uart 

puts "RM-Info: Completed script tconstraints.sdc\n"