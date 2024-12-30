// Config UART
`define  CFG_BAUDRATE               115200
`define  CFG_DATA_WIDTH             8

// Config APB
`define  CFG_APB_ADDR_WIDTH         12
`define  CFG_APB_DATA_WIDTH         32
`define  CFG_APB_STRB_WIDTH         `CFG_APB_DATA_WIDTH/8

// Config Frequency FPGA
`define  CFG_FREQ_FPGA              50000000