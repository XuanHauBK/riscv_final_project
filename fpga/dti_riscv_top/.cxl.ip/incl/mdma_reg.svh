//////////////////////////////////////////////////////////////////////////////
// be767e8644eee50b2645307571242b99d62eea726bb276dae1cba7a07fa60690
// Proprietary Note:
// XILINX CONFIDENTIAL
//
// Copyright 2017 Xilinx, Inc. All rights reserved.
// This file contains confidential and proprietary information of Xilinx, Inc.
// and is protected under U.S. and international copyright and other
// intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// US ExportControl: EAR 3E001
//
//       Owner:          cthyamag
//       Revision:       $Id: //depot/icm/proj/everest/7t_n1/rtl/ref_7t_n1_live/header.v#1 $
//                       $Author: cthyamag $
//                       $DateTime: 2016/07/08 17:50:57 $
//                       $Change: 7769758 $
//       Description:
//
//////////////////////////////////////////////////////////////////////////////

`ifndef MDMA_REG_SVH
    `define MDMA_REG_SVH

`include "mdma_defines.svh"
`include "qdma_defines.svh"

    typedef enum logic [3:0]{
        MDMA_TRQ_SEL_UNMAPPED=0,
        DMA_TRQ_SEL_GLBL1, 
        DMA_TRQ_SEL_GLBL2, 
        MDMA_TRQ_SEL_GLBL, 
        MDMA_TRQ_SEL_FMAP, 
        MDMA_TRQ_SEL_IRQ, 
        MDMA_TRQ_SEL_IND, 
        MDMA_TRQ_SEL_C2H, 
        MDMA_TRQ_SEL_H2C, 
        XDMA_TRQ_SEL_C2H_MM0, 
        XDMA_TRQ_SEL_C2H_MM1, 
        XDMA_TRQ_SEL_H2C_MM0, 
        XDMA_TRQ_SEL_H2C_MM1, 
        MDMA_TRQ_SEL_QUEUE
    } mdma_dmap_sel_e;

    // Global Register Space
    localparam DMA_CMN_GLBL1_START_A    = 32'h0;
    localparam DMA_CMN_GLBL1_SIZE       = 256;
    localparam DMA_CMN_GLBL1_ABITS      = $clog2(DMA_CMN_GLBL1_SIZE);

    localparam DMA_CMN_GLBL2_START_A    = DMA_CMN_GLBL1_START_A + DMA_CMN_GLBL1_SIZE;
    localparam DMA_CMN_GLBL2_SIZE       = 256;
    localparam DMA_CMN_GLBL2_ABITS      = $clog2(DMA_CMN_GLBL2_SIZE);

    localparam MDMA_CMN_GLBL_START_A    = DMA_CMN_GLBL2_START_A + DMA_CMN_GLBL2_SIZE;
    localparam MDMA_CMN_GLBL_SIZE       = 512;
    localparam MDMA_CMN_GLBL_ABITS      = $clog2(MDMA_CMN_GLBL_SIZE);

    // Function Mapping Ram
    localparam MDMA_CMN_FMAP_START_A    = MDMA_CMN_GLBL_START_A + MDMA_CMN_GLBL_SIZE;
    localparam MDMA_CMN_FMAP_SIZE       = 256 * 4; 
    localparam MDMA_CMN_FMAP_ABITS      = $clog2(MDMA_CMN_FMAP_SIZE);

    // Indirect Interface Registers
    localparam [31:0] MDMA_CMN_IND_START_A=MDMA_CMN_FMAP_START_A + MDMA_CMN_FMAP_SIZE;
    localparam [31:0] MDMA_CMN_IND_SIZE   =512;
    localparam [31:0] MDMA_CMN_IND_ABITS  =$clog2(MDMA_CMN_IND_SIZE);

    localparam MDMA_CMN_C2H_START_A       = MDMA_CMN_IND_START_A+MDMA_CMN_IND_SIZE;
    localparam MDMA_CMN_C2H_SIZE          = 512;
    localparam MDMA_CMN_C2H_ABITS         = $clog2(MDMA_CMN_C2H_SIZE);

    localparam MDMA_CMN_IRQ_START_A       = MDMA_CMN_C2H_START_A+MDMA_CMN_C2H_SIZE;
    localparam MDMA_CMN_IRQ_SIZE          = 512;

    localparam MDMA_CMN_H2C_START_A       = MDMA_CMN_IRQ_START_A+MDMA_CMN_IRQ_SIZE;
    localparam MDMA_CMN_H2C_SIZE          = 512;

    localparam XDMA_CMN_C2H_MM0_START_A    = MDMA_CMN_H2C_START_A+MDMA_CMN_H2C_SIZE;
    localparam XDMA_CMN_C2H_MM0_SIZE       = 256;

    localparam XDMA_CMN_C2H_MM1_START_A    = XDMA_CMN_C2H_MM0_START_A+XDMA_CMN_C2H_MM0_SIZE;
    localparam XDMA_CMN_C2H_MM1_SIZE       = 256;

    localparam XDMA_CMN_H2C_MM0_START_A    = XDMA_CMN_C2H_MM1_START_A+XDMA_CMN_C2H_MM1_SIZE;
    localparam XDMA_CMN_H2C_MM0_SIZE       = 256;

    localparam XDMA_CMN_H2C_MM1_START_A    = XDMA_CMN_H2C_MM0_START_A+XDMA_CMN_H2C_MM0_SIZE;
    localparam XDMA_CMN_H2C_MM1_SIZE       = 256;

    localparam XDMA_CMN_EXT_START_A          = 64*1024;
    localparam XDMA_CMN_EXT_SIZE             = 64*1024; 

    //localparam MDMA_CMN_MISC_START_A      = MDMA_CMN_H2C_START_A+MDMA_CMN_H2C_SIZE;
    //localparam MDMA_CMN_MISC_SIZE         = 512;

    //Applicable for both VF and PF
    //Depending on the requirement BAR size support only 4K
    //Queue address offset H2C - qid*16, C2H - qid*16+8 and WRB - qid*16+12

    // Direct mapped queue registers
    // 2k queues
    /// enum this
    //   0  RSV        - reserved
    //   1  H2C PIDX   - software descriptor ring producer index
    //   2  C2H PIDX   - software descriptor ring producer index
    //   3  C2H WRB    - software writeback ring consumer index

    //  QID encoded in trq.addr[19:4]
    //  Reg offset encoded in trq.addr[3:0]

    localparam MDMA_MSIX_START_A          = XDMA_CMN_H2C_MM1_START_A + XDMA_CMN_H2C_MM1_SIZE;      // Space for 32 vectors and PBA
    localparam MDMA_MSIX_SIZE             = 4096;      // Space for 32 vectors and PBA

    localparam MDMA_CMN_EXT_START_A          = MDMA_MSIX_START_A + MDMA_MSIX_SIZE;      
    localparam MDMA_CMN_EXT_SIZE             = 16384; 

    localparam MDMA_PF_QUEUE_START_A      = MDMA_CMN_EXT_START_A + MDMA_CMN_EXT_SIZE;

    localparam MDMA_VF_MSIX_START_A          = 0;
    localparam MDMA_VF_MSIX_SIZE             = 4096;

    localparam MDMA_VF_EXT_START_A          = MDMA_VF_MSIX_START_A + MDMA_VF_MSIX_SIZE;
    localparam MDMA_VF_EXT_SIZE             = 8192;

    localparam MDMA_VF_QUEUE_START_A      = MDMA_VF_EXT_START_A + MDMA_VF_EXT_SIZE;

    localparam MDMA_CMN_QUEUE_SIZE        = 16*2048;   // 16B * num_queues (2K queues)           = address space per pf
                                                       // 16B * num_queues + MDMA_VF_QUEUE_START = address space per vf

    localparam MDMA_PF_BAR_SIZE        = MDMA_PF_QUEUE_START_A + MDMA_CMN_QUEUE_SIZE;
    localparam MDMA_VF_BAR_SIZE        = MDMA_VF_QUEUE_START_A + MDMA_CMN_QUEUE_SIZE;

    localparam MDMA_REG_ADR_BITS          = 16;        // Support up to 64K of address space for all registers.
    localparam MDMA_UNIMP_REG_CMP         = 32'h0;

    localparam MDMA_MAX_PF=4;
    localparam MDMA_MAX_IND_AXS = MDMA_MAX_PF + 2;    

    `define    MDMA_MAX_CTXT_REG 4

    localparam MDMA_MAX_CTXT_REG= `MDMA_MAX_CTXT_REG;
    localparam MDMA_MAX_IND_SZ=16;

    localparam MDMA_REG_UNAMPPED_RDAT=32'h0;

    typedef logic [31:0] mdma_csr_data_t;
    localparam MDMA_CSR_DATA_SIZE = $bits(mdma_csr_data_t);

    //---------------------------------------------------------------------
    // Global register space.
    typedef logic [MDMA_CMN_GLBL_ABITS:2] mdma_glbl_csr_addr_t;

    typedef enum mdma_glbl_csr_addr_t {
        MDMA_GLBL_REG_A     = 'h0,
        MDMA_GLBL_RNG_SZ_A[16],         
        //MDMA_GLBL_STATUS_A[16],        
        //MDMA_GLBL_CONFIG_A[16],       
        MDMA_GLBL_SCRATCH_A,                     // Byte Offset: 0x100 Separate register for each PF
        MDMA_GLBL_ERR_STAT,
        MDMA_GLBL_ERR_MASK,
        MDMA_GLBL_DSC_CFG_A,
        MDMA_GLBL_DSC_ERR_STS_A,
        MDMA_GLBL_DSC_ERR_MSK_A,
        MDMA_GLBL_DSC_ERR_LOG0_A,
        MDMA_GLBL_DSC_ERR_LOG1_A,
        MDMA_GLBL_TRQ_ERR_STS_A,
        MDMA_GLBL_TRQ_ERR_MSK_A,
        MDMA_GLBL_TRQ_ERR_LOG_A,
        MDMA_GLBL_DSC_DBG_A
    } mdma_glbl_csr_addr_e;

    typedef struct packed {
        logic [23:0]        rsv;
        logic [3:0]         field1;
        logic [3:0]         field2;
    } mdma_glbl_eg_reg_t;

    typedef struct packed {
        logic   [31:0]          scratch;
    } mdma_glbl_scratch_t;

    typedef struct packed {
        logic  [15:0]       rsv;          // Reserved
        logic  [15:0]       rng_sz;       // Ring size (includes writeback location)
    } mdma_glbl_rng_sz_t;

    typedef struct packed {
        logic [$bits(mdma_csr_data_t)- MDMA_MAX_IND_AXS -1:0] rsvd;
        logic [MDMA_MAX_IND_AXS-1:0]                          ctxt_cmd_err;
    } mdma_ind_err_status_t;

    typedef struct packed {
        logic [31-10-MDMA_MAX_IND_AXS:0]  rsvd;                // 11-31
        logic                            err_bdg;              // 10
        logic [MDMA_MAX_IND_AXS-1:0]     ind_ctxt_cmd_err;     // 9
        logic                            err_c2h_st;           // 8
        logic                            err_c2h_mm_1;         // 7
        logic                            err_c2h_mm_0;         // 6
        logic                            err_h2c_mm_1;         // 5
        logic                            err_h2c_mm_0;         // 4
        logic                            err_trq;              // 3
        logic                            err_dsc;              // 2
        logic                            err_ram_dbe;          // 1
        logic                            err_ram_sbe;          // 0
    } mdma_glbl_err_t;

    typedef struct packed {
        logic               vld;
        logic  [1:0]        rsv;
        logic  [11:0]       qid;
        logic               sel;
        logic  [15:0]       cidx;
    } mdma_glbl_dsc_err_log0_t;

    typedef struct packed {
        logic  [31:9]       rsv;
        logic  [3:0]        sub;  // Error subtype for dsc use errors
        logic  [4:0]        err;
    } mdma_glbl_dsc_err_log1_t;

    // DSC Engine Error Status
    typedef struct packed {
        logic  [31:0]       sts;
    } mdma_glbl_dsc_err_sts_t;

    // DSC Engine Error Mask 
    typedef struct packed {
        logic  [31:0]       msk;
    } mdma_glbl_dsc_err_msk_t;

    // TRQ Access Error Status
    //typedef struct packed {
        //logic [31:8]       rsv;
        //logic  [7:0]       sts;
    //} mdma_trq_err_sts_t;

    //typedef struct packed {
        //logic [31:8]       rsv;
        //logic  [7:0]       msk;
    //} mdma_trq_err_msk_t;

    // TRQ Access Error Log
    typedef struct packed {
        logic [3:0]        rsv;
        mdma_dmap_sel_e    sel;
        logic [7:0]        fnc;
        logic [15:0]       adr;
    } mdma_trq_err_log_t;

    typedef struct packed {
        logic  [31:10]       rsv1;         // Reserved
        logic               unc_ovr_cor;  // Uncorrectable log overwrite correctable
        logic               ctxt_fer_dis; // Log both dsc and dma error bit in context, not just first
        logic               rsv0;
        logic               wb_all;        // All dsc get writeback
        logic  [2:0]        max_dsc_fetch; // Max nuber of descriptors to fetch in one request.  8 * 2^val // Max value is 6
        logic  [2:0]        wb_acc_int;    // Writeback interval.  Interval in descriptors = 2^(val+1)   // Disable via queue context
    } mdma_glbl_dsc_cfg_t;

    //// Struct of global registers to be passed around
    typedef struct packed {
        mdma_glbl_rng_sz_t  [15:0] reg_rng_sz;
        mdma_glbl_scratch_t [3:0]  reg_scratch;
    } mdma_glbl_reg_t;


    //---------------------------------------------------------------------
    // Direct Mapped Queue Registers Space

    typedef enum logic [3:0]{
        MDMA_DMAP_SEL_INT_CIDX=0 , MDMA_DMAP_SEL_H2C_DSC_PIDX=4, MDMA_DMAP_SEL_C2H_DSC_PIDX=8, MDMA_DMAP_SEL_WRB_CIDX=12
    } mdma_dmapq_sel_e;

    typedef struct packed {
        logic   [14:0]          rsv;
        logic                   irq_arm;
        logic   [15:0]          pidx;
    } mdma_dmapq_dsc_pidx_t;

    typedef struct packed {
        logic [1:0]                 pad;
        // Overrides threshold if sw_cidx == pidx. Applicable only for trig_mode == WRB_TRIG_CNT
        logic                       trig_last;
        logic                       en_int;
        logic                       en_stat_desc;
        mdma_c2h_wrb_trig_mode_e    trig_mode;
        mdma_wrb_timer_th_ix_t      timer_ix;
        mdma_wrb_cnt_th_ix_t        cnt_ix;
        mdma_qidx_t                 sw_cidx;
    } mdma_dyn_wrb_ptr_upd_t;

    //---------------------------------------------------------------------
    // Indirect context register space.

    typedef logic [MDMA_CMN_C2H_ABITS:2] mdma_c2h_csr_addr_t;
    typedef enum mdma_c2h_csr_addr_t {
        MDMA_IND_CONTROL_A=0, MDMA_IND_CTXT_DATA_A[`MDMA_MAX_CTXT_REG], MDMA_IND_CTXT_MASK_A[`MDMA_MAX_CTXT_REG], MDMA_IND_CTXT_CMD_A
    } mdma_ind_csr_addr_e;

    typedef enum logic [1:0] {
        MDMA_CTXT_CMD_CLR=0, MDMA_CTXT_CMD_WR, MDMA_CTXT_CMD_RD, MDMA_CTXT_CMD_INV
    } mdma_ind_ctxt_cmd_e;

    typedef enum logic [3:0]{
        MDMA_CTXT_SEL_DSC_SW_C2H, MDMA_CTXT_SEL_DSC_SW_H2C,
        MDMA_CTXT_SEL_DSC_HW_C2H, MDMA_CTXT_SEL_DSC_HW_H2C,         // NO DATA MASKING/RMW support
        MDMA_CTXT_SEL_DSC_CR_C2H, MDMA_CTXT_SEL_DSC_CR_H2C,         // NO DATA MASKING/RMW support
        MDMA_CTXT_SEL_WRB, MDMA_CTXT_SEL_PFTCH, MDMA_CTXT_SEL_INT_COAL,
        MDMA_CTXT_SEL_PASID_RAM_LOW, MDMA_CTXT_SEL_PASID_RAM_HIGH,
        MDMA_CTXT_SEL_TIMER
    } mdma_ind_ctxt_sel_e;

    typedef struct packed {
        logic [$bits(mdma_csr_data_t)-$bits(mdma_qid_t)-$bits(mdma_ind_ctxt_cmd_e)-$bits(mdma_ind_ctxt_sel_e)-1 -1 :0] pad;
        mdma_qid_t              qid;
        mdma_ind_ctxt_cmd_e     op;
        mdma_ind_ctxt_sel_e     sel;
        // Writes will be dropped when busy=1.
        logic                   busy;
    } mdma_ind_ctxt_cmd_t;

    typedef struct packed {
        mdma_csr_data_t [MDMA_MAX_CTXT_REG-1:0]     data;
        mdma_csr_data_t [MDMA_MAX_CTXT_REG-1:0]     mask;
        mdma_ind_ctxt_cmd_t                         cmd;
        logic                                       valid;
    } mdma_ctxt_rqif_t;

    typedef struct packed {
        mdma_csr_data_t [MDMA_MAX_CTXT_REG-1:0]     data;
        logic                                       valid;
    } mdma_ctxt_cpif_t;

    // Indirect Registers
    typedef struct packed {
        logic   [15:0]          crd_rcv;
    } mdma_dsc_crd_rcv_t;

    typedef struct packed {
        logic   [3:0]           rsv;
        logic                   evt_pnd;        // Event pending  set if ctxt needs to be analyzed again later to check for freed resource (irq_fifo_fl, imm wbk full....?)
        logic                   fetch_pnd;      // Fetch pending set when dscf fetch initiated, clear when rcp evt is processed.
        logic                   idl_stp_b;      // Queue invalid and no descriptors pending
        logic                   dsc_pnd;        // Descriptors pending      set when dscf fetch initiated, clear when wbc cidx == pidx
        logic   [7:0]           wb_acc;         // Writeback accumulation count
        logic   [15:0]          crd_use;        
        logic   [15:0]          cidx;
    } mdma_dsc_hw_ctxt_t;
  
    typedef struct packed {
        logic   [63:0]          dsc_base;
    } mdma_ind_dsc_base_t;

    typedef struct packed {
        logic   [1:0]           rsv1;
        logic                   irq_req;     // Interrupt required to be sent (waiting for arm)
        logic                   err_wb_sent;
        logic   [1:0]           err;         //  bit[1] dma error, bit[0] dsc error
        logic                   irq_no_last; // No interrupt was sent and pidx/cidx was idle due to already pending irq  // 1 VAR-RO
    } mdma_ind_dsc_sts_t;

    typedef struct packed {
        logic   [2:0]           port_id;   // Traffic manager port id which owns this queue       // 3
        logic                   irq_en;    // Send interrupt on writeback/irq check        // 1
        logic                   wbk_en;    // Send writeback on writeback/irq check        // 1
        logic                   mm_chn;    // If 32B descriptor which MM channel to use    // 1
        logic                   byp;       // Send to descriptor bypass out                // 1
        logic   [1:0]           dsc_sz;    // Descriptor size.  0: 8B, 1:16B; 2:32B; 3:rsv // 2
        logic   [3:0]           rng_sz;    // Ring size select                             // 4
        logic   [7:0]           fnc;       // Function                                     // 8
        logic                   wbi_acc_en; // Write back/Interrupt after accumulation      // 1
        logic                   wbi_chk;    // Writeback/Interrupt after pending check      // 1
        logic                   fcrd_en;   // Enable fetch credits                         // 1
        logic                   qen;       // queue enable                                 // 1
    } mdma_ind_dsc_ctl_t;

   typedef struct packed {
        logic [15:0]            crd_rcv;
   } mdma_ind_crd_t; 

   typedef struct packed {
        mdma_ind_dsc_base_t     dsc_base;
        mdma_ind_dsc_sts_t      sts;
        mdma_ind_dsc_ctl_t      ctl;
        mdma_dmapq_dsc_pidx_t   pidx;
   } mdma_ind_dsc_t; 

    //---------------------------------------------------------------------
    // Indirect C2H register space.
    `define MDMA_MAX_TRIG_TIMER_VAL 16
    `define MDMA_MAX_TRIG_CNT_VAL   16
    `define MDMA_MAX_BUF_SIZE_VAL   16
    localparam MDMA_MAX_TRIG_TIMER_VAL = `MDMA_MAX_TRIG_TIMER_VAL; // (VCS bug) (1 << $bits(mdma_wrb_timer_th_ix_t));
    localparam MDMA_MAX_TRIG_CNT_VAL   = `MDMA_MAX_TRIG_CNT_VAL;   // (VCS bug) (1 << $bits(mdma_wrb_timer_th_ix_t));
    localparam MDMA_MAX_BUF_SIZE_VAL = `MDMA_MAX_BUF_SIZE_VAL;
    localparam MDMA_MAX_QID2VEC_MAP_VAL = 5;

    typedef logic [MDMA_CMN_IND_ABITS:2] mdma_ind_csr_addr_t;
    typedef enum mdma_c2h_csr_addr_t {
        MDMA_C2H_TIMER_CNT[`MDMA_MAX_TRIG_TIMER_VAL], MDMA_C2H_CNT_TH[`MDMA_MAX_TRIG_CNT_VAL], MDMA_C2H_QID2VEC_MAP_QID, MDMA_C2H_QID2VEC_MAP, MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED, MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED, MDMA_C2H_STAT_DESC_RSP_PKT_ACCEPTED, MDMA_C2H_STAT_AXIS_PKG_CMP, MDMA_C2H_STAT_DESC_RSP_ACCEPTED, MDMA_C2H_STAT_DESC_RSP_CMP, MDMA_C2H_STAT_WRQ_OUT, MDMA_C2H_STAT_WPL_REN_ACCEPTED, MDMA_C2H_STAT_TOTAL_WRQ_LEN, MDMA_C2H_STAT_TOTAL_WPL_LEN, MDMA_C2H_BUF_SZ[`MDMA_MAX_BUF_SIZE_VAL], MDMA_C2H_ERR_STAT, MDMA_C2H_ERR_MASK, MDMA_C2H_FATAL_ERR_STAT, MDMA_C2H_FATAL_ERR_MASK, MDMA_C2H_FATAL_ERR_ENABLE, MDMA_C2H_ERR_INT, MDMA_C2H_PFCH_CFG, MDMA_C2H_INT_TIMER_TICK, MDMA_C2H_STAT_DESC_RSP_DROP_ACCEPTED, MDMA_C2H_STAT_DESC_RSP_ERR_ACCEPTED, MDMA_C2H_STAT_DESC_REQ, MDMA_C2H_STAT_DEBUG_DMA_ENG_0, MDMA_C2H_STAT_DEBUG_DMA_ENG_1, MDMA_C2H_STAT_DEBUG_DMA_ENG_2, MDMA_C2H_STAT_DEBUG_DMA_ENG_3, MDMA_C2H_DBG_PFCH_ERR_CTXT, MDMA_C2H_FIRST_ERR_QID, MDMA_STAT_NUM_WRB_IN, MDMA_STAT_NUM_WRB_OUT, MDMA_STAT_NUM_WRB_DRP, MDMA_STAT_NUM_STAT_DESC_OUT, MDMA_STAT_NUM_DSC_CRDT_SENT, MDMA_STAT_NUM_FCH_DSC_RCVD, MDMA_STAT_NUM_BYP_DSC_RCVD, MDMA_C2H_WRB_COAL_CFG
    } mdma_c2h_csr_addr_e;

    typedef struct packed {
        logic  [31-16:0]        rsv;
        //trq_src_e               src;
        logic [1:0]                 src; 
        logic                   err_stat;
        logic                   cmd_wr; //Write 1 to write err_stat, 0 will only read.
        mdma_qid_t              qid;
        logic                   done;
    } mdma_c2h_dbg_pfch_err_t;

    typedef struct packed {
        //Start Eviction when pfch qcnt >= evt_qcnt_th; The evc_qcnt_th should always be less than pfch_qcnt
        logic [6:0]     evt_qcnt_th;
        // Max pfch qcnt allowed. Recommended value is <60
        logic [6:0]     pfch_qcnt;
        //Controls number of entries prefetched in cached per queue. Recommended value is 8.
        mdma_c2h_alloc_max_desc_t num_pfch; 
        //Stop prefetch when FL Free count <= pfch_fl_th, minimum value is 16
        logic [8:0]     pfch_fl_th; 
    } mdma_c2h_pfch_cfg_t;

    typedef struct packed {
        logic [31-1-1:0] rsv;
        logic            enable_wpl_par_inv;
        logic            enable_wrq_dis;
    } mdma_c2h_fatal_err_enable_t;   

    typedef struct packed {
        logic [31-$bits(mdma_fnid_t)-$bits(mdma_int_vec_id_coal_t)-2:0]        rsv;
        logic                                                                  err_int_arm;
        logic                                                                  en_coal;
        mdma_int_vec_id_coal_t                                                 vec;
        mdma_fnid_t                                                            func;
    } mdma_c2h_err_int_t;   

    typedef struct packed {
        logic [32-$bits(mdma_qidx_t)-2:0]                                      rsv;
        logic                                                                  sel;  // 0: H2C, 1: C2H
        mdma_qidx_t                                                            sw_cidx;
    } mdma_c2h_int_upd_cidx_t;    

    typedef struct packed {
        logic [$bits(mdma_csr_data_t)-$bits(mdma_qid_t) -1 :0] pad;
        mdma_qid_t          qid;
    } mdma_c2h_qid2int_map_qid_t;

    typedef struct packed {
        logic [$bits(mdma_csr_data_t)-1 -$bits(mdma_int_vec_id_coal_t)-1 :0] pad;
        logic                  coal_en;
        mdma_int_vec_id_coal_t vec_id;
    } mdma_c2h_qid2int_map_t;

    //---------------------------------------------------------------------
    //Add all the register structure for some self checking.
    typedef union packed {
        mdma_csr_data_t             csr_data;
        mdma_c2h_dbg_pfch_err_t     pfch_ctxt_err;
        mdma_ind_ctxt_cmd_t         ctxt_cmd;
        mdma_ind_err_status_t       err_status;
        mdma_dyn_wrb_ptr_upd_t      dyn_upd_wrb;
        mdma_glbl_eg_reg_t          glbl_eg_reg;
        mdma_c2h_qid2int_map_qid_t  qid2int_map_qid;
        mdma_c2h_qid2int_map_t      qid2int_map;
        mdma_c2h_pfch_cfg_t         pfch_cfg;
        mdma_c2h_fatal_err_enable_t fatal_err_enable;
        mdma_c2h_err_int_t          err_int_reg;
        mdma_c2h_int_upd_cidx_t     int_upd_cidx;
    } mdma_csr_data_chk_t;


  typedef struct packed {
        logic [2:0]  rsv;
        logic [7:0]  fnc;
        logic        pasid_en;
        logic [19:0] pasid;
  } pasid_cxt_t;

`endif
