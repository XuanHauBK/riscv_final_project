
// ALU Operation
parameter ALU_AND                   = 4'b0000   ;
parameter ALU_OR                    = 4'b0001   ;
parameter ALU_XOR                   = 4'b0010   ;
parameter ALU_SLT                   = 4'b0011   ;
parameter ALU_SLTU                  = 4'b0100   ;
parameter ALU_ADD                   = 4'b0101   ;
parameter ALU_SUB                   = 4'b0110   ;
parameter ALU_SRL                   = 4'b0111   ;
parameter ALU_SLL                   = 4'b1000   ;
parameter ALU_SRA                   = 4'b1001   ;
parameter ALU_NOP                   = 4'b1010   ;
parameter ALU_INVALID               = 4'b1111   ;

// Type of branch
parameter BRANCH_NONE               = 3'b000    ;
parameter BRANCH_JUMP               = 3'b001    ;
parameter BRANCH_JUMP_INDIRECT      = 3'b010    ;
parameter BRANCH_CONDITIONAL        = 3'b011    ;
parameter BRANCH_SRET               = 3'b100    ;

// Source of an ALU operand
parameter ALU_SRC_REG               = 3'b000    ;
parameter ALU_SRC_IMM               = 3'b001    ;
parameter ALU_SRC_SHAMT             = 3'b010    ;
parameter ALU_SRC_PC                = 3'b011    ;
parameter ALU_SRC_PC_NEXT           = 3'b100    ;
parameter ALU_SRC_NULL              = 3'b101    ;
parameter ALU_SRC_CSR               = 3'b111    ;

// Type of memory operations
parameter MEMORY_TYPE_NONE          = 3'b000    ;
parameter MEMORY_TYPE_INVALID       = 3'b001    ;
parameter MEMORY_TYPE_LOAD          = 3'b010    ;
parameter MEMORY_TYPE_LOAD_UNSIGNED = 3'b011    ;
parameter MEMORY_TYPE_STORE         = 3'b100    ;

// Size of a memoru operation
parameter MEMOP_SIZE_BYTE           = 2'b00     ;
parameter MEMOP_SIZE_HALFWORD       = 2'b01     ;
parameter MEMOP_SIZE_WORD           = 2'b10     ;

// opcode
parameter OPCODE_LUI                = 7'b0110111;
parameter OPCODE_AUIPC              = 7'b0010111;
parameter OPCODE_JAL                = 7'b1101111;
parameter OPCODE_JALR               = 7'b1100111;
parameter OPCODE_BRANCH             = 7'b1100011;
parameter OPCODE_LOAD               = 7'b0000011;
parameter OPCODE_STORE              = 7'b0100011;
parameter OPCODE_OPER_IMM           = 7'b0010011;
parameter OPCODE_OPER_REG           = 7'b0110011;
parameter OPCODE_FENCE              = 7'b0001111;
parameter OPCODE_SYSTEM             = 7'b1110011;
// parameter OPCODE_LUI                = 7'b0110111;
// parameter OPCODE_AUIPC              = 7'b0010111;
// parameter OPCODE_JAL                = 7'b1101111;
// parameter OPCODE_JALR               = 7'b1100111;
// parameter OPCODE_BEQ                = 7'b1100011;
// parameter OPCODE_BNE                = 7'b1100011;
// parameter OPCODE_BLT                = 7'b1100011;
// parameter OPCODE_BGE                = 7'b1100011;
// parameter OPCODE_BLTU               = 7'b1100011;
// parameter OPCODE_BGEU               = 7'b1100011;
// parameter OPCODE_LB                 = 7'b0000011;
// parameter OPCODE_LH                 = 7'b0000011;
// parameter OPCODE_LW                 = 7'b0000011;
// parameter OPCODE_LBU                = 7'b0000011;
// parameter OPCODE_LHU                = 7'b0000011;
// parameter OPCODE_SB                 = 7'b0100011;
// parameter OPCODE_SH                 = 7'b0100011;
// parameter OPCODE_SW                 = 7'b0100011;
// parameter OPCODE_ADDI               = 7'b0010011;
// parameter OPCODE_SLTI               = 7'b0010011;
// parameter OPCODE_SLTIU              = 7'b0010011;
// parameter OPCODE_XORI               = 7'b0010011;
// parameter OPCODE_ORI                = 7'b0010011;
// parameter OPCODE_ANDI               = 7'b0010011;
// parameter OPCODE_SLLI               = 7'b0010011;
// parameter OPCODE_SRLI               = 7'b0010011;
// parameter OPCODE_SRAI               = 7'b0010011;
// parameter OPCODE_ADD                = 7'b0110011;
// parameter OPCODE_SUB                = 7'b0110011;
// parameter OPCODE_SLL                = 7'b0110011;
// parameter OPCODE_SLT                = 7'b0110011;
// parameter OPCODE_SLTU               = 7'b0110011;
// parameter OPCODE_XOR                = 7'b0110011;
// parameter OPCODE_SRL                = 7'b0110011;
// parameter OPCODE_SRA                = 7'b0110011;
// parameter OPCODE_OR                 = 7'b0110011;
// parameter OPCODE_AND                = 7'b0110011;
// parameter OPCODE_FENCE              = 7'b0001111;
// parameter OPCODE_FENCE_TSO          = 7'b0001111;
// parameter OPCODE_PAUSE              = 7'b0001111;
// parameter OPCODE_ECALL              = 7'b1110011;
// parameter OPCODE_EBREAK             = 7'b1110011;

// Fun3
parameter FUN3_JALR                 = 3'b000    ;
parameter FUN3_BEQ                  = 3'b000    ;
parameter FUN3_BNE                  = 3'b001    ;
parameter FUN3_BLT                  = 3'b100    ;
parameter FUN3_BGE                  = 3'b101    ;
parameter FUN3_BLTU                 = 3'b110    ;
parameter FUN3_BGEU                 = 3'b111    ;

parameter FUN3_LB                   = 3'b000    ;
parameter FUN3_LH                   = 3'b001    ;
parameter FUN3_LW                   = 3'b010    ;
parameter FUN3_LBU                  = 3'b100    ;
parameter FUN3_LHU                  = 3'b101    ;

parameter FUN3_SB                   = 3'b000    ;
parameter FUN3_SH                   = 3'b001    ;
parameter FUN3_SW                   = 3'b010    ;

parameter FUN3_ADDI                 = 3'b000    ;
parameter FUN3_SLTI                 = 3'b010    ;
parameter FUN3_SLTIU                = 3'b011    ;
parameter FUN3_XORI                 = 3'b100    ;
parameter FUN3_ORI                  = 3'b110    ;
parameter FUN3_ANDI                 = 3'b111    ;
parameter FUN3_SLLI                 = 3'b001    ;
parameter FUN3_SRLI                 = 3'b101    ;
parameter FUN3_SRAI                 = 3'b101    ;

parameter FUN3_ADD                  = 3'b000    ;
parameter FUN3_SUB                  = 3'b000    ;
parameter FUN3_SLL                  = 3'b001    ;
parameter FUN3_SLT                  = 3'b010    ;
parameter FUN3_SLTU                 = 3'b011    ;
parameter FUN3_XOR                  = 3'b100    ;
parameter FUN3_SRL                  = 3'b101    ;
parameter FUN3_SRA                  = 3'b101    ;
parameter FUN3_OR                   = 3'b110    ;
parameter FUN3_AND                  = 3'b111    ;

//Fun7
parameter FUN7_SLLI                 = 7'b0000000;
parameter FUN7_SRLI                 = 7'b0000000;
parameter FUN7_SRAI                 = 7'b0100000;
parameter FUN7_ADD                  = 7'b0000000;
parameter FUN7_SUB                  = 7'b0100000;
parameter FUN7_SLL                  = 7'b0000000;
parameter FUN7_SLT                  = 7'b0000000;
parameter FUN7_SLTU                 = 7'b0000000;
parameter FUN7_XOR                  = 7'b0000000;
parameter FUN7_SRL                  = 7'b0000000;
parameter FUN7_SRA                  = 7'b0100000;
parameter FUN7_OR                   = 7'b0000000;
parameter FUN7_AND                  = 7'b0000000;

// Exception cause values
parameter CSR_CAUSE_INSTR_MISALIGN  = 6'b000000 ;
parameter CSR_CAUSE_INSTR_FETCH     = 6'b000001 ;
parameter CSR_CAUSE_INVALID_INSTR   = 6'b000010 ;
parameter CSR_CAUSE_BREAKPOINT      = 6'b000011 ;
parameter CSR_CAUSE_LOAD_MISALIGN   = 6'b000100 ;
parameter CSR_CAUSE_LOAD_ERROR      = 6'b000101 ;
parameter CSR_CAUSE_STORE_MISALIGN  = 6'b000110 ;
parameter CSR_CAUSE_STORE_ERROR     = 6'b000111 ;
parameter CSR_CAUSE_ECALL           = 6'b001011 ;
parameter CSR_CAUSE_NONE            = 6'b011111 ;
parameter CSR_CAUSE_SOFTWARE_INT    = 6'b100000 ;
parameter CSR_CAUSE_TIMER_INT       = 6'b100001 ;
parameter CSR_CAUSE_IRQ_BASE        = 6'b110000 ;

// Control/Status register write mode
parameter CSR_WRITE_NONE            = 2'b00     ;
parameter CSR_WRITE_SET             = 2'b01     ;
parameter CSR_WRITE_CLEAR           = 2'b10     ;
parameter CSR_WRITE_REPLACE         = 2'b11     ;

// Control register IDs, specified in the immediate field of csr* instructions:
parameter CSR_CYCLE                 = 12'hc00   ;
parameter CSR_CYCLEH                = 12'hc80   ;
parameter CSR_TIME                  = 12'hc01   ;
parameter CSR_TIMEH                 = 12'hc81   ;
parameter CSR_INSTRET               = 12'hc02   ;
parameter CSR_INSTRETH              = 12'hc82   ;
parameter CSR_MVENDORID             = 12'hf11   ;
parameter CSR_MARCHID               = 12'hf12   ;
parameter CSR_MIMPID                = 12'hf13   ;
parameter CSR_MHARTID               = 12'hf14   ;
parameter CSR_MSTATUS               = 12'h300   ;
parameter CSR_MISA                  = 12'h301   ;
parameter CSR_MTVEC                 = 12'h305   ;
parameter CSR_MTDELEG               = 12'h302   ;
parameter CSR_MIE                   = 12'h304   ;
parameter CSR_MTIMECMP              = 12'h321   ;
parameter CSR_MTIME                 = 12'h701   ;
parameter CSR_MSCRATCH              = 12'h340   ;
parameter CSR_MEPC                  = 12'h341   ;
parameter CSR_MCAUSE                = 12'h342   ;
parameter CSR_MBADADDR              = 12'h343   ;
parameter CSR_MIP                   = 12'h344   ;
parameter CSR_TEST                  = 12'hbf0   ;
parameter CSR_EPC_MRET              = 12'h302   ;


