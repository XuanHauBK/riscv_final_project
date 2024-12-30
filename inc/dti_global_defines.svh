
`define CFG_INST_ADDR_WIDTH       32
`define CFG_INST_DATA_WIDTH       32
`define CFG_PC_WIDTH              32

`define CFG_REG_ADDR_WIDTH        5
`define CFG_CSR_ADDR_WIDTH        12

`define CFG_OPCODE_WIDTH          7
`define CFG_FUNCT3_WIDTH          3
`define CFG_FUNCT7_WIDTH          7

// Config UART
`define  CFG_BAUDRATE               115200
`define  CFG_DATA_WIDTH             8

// Config APB
`define  CFG_APB_ADDR_WIDTH         32
`define  CFG_APB_DATA_WIDTH         32
`define  CFG_APB_STRB_WIDTH         `CFG_APB_DATA_WIDTH/8

// Config Frequency FPGA
`define  CFG_FREQ_FPGA              50000000

// Address space
`define  CFG_ADDR_UART_MIN          0
`define  CFG_ADDR_UART_MAX          999

`define  CFG_ADDR_GPIO_MIN          1000
`define  CFG_ADDR_GPIO_MAX          1999

`define  CFG_ADDR_TIMER_MIN         2000
`define  CFG_ADDR_TIMER_MAX         2999 

// Each register address for the peripherals
`define  CFG_REG_TIMER_CONTROL      2004
`define  CFG_REG_TIMER_COMPARE      2008

// Config GPIO
`define  CFG_GPIO_NUM               16

// Debug
// `define DEBUG