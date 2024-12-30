`include "dti_global_defines.svh"
module dti_uart #(
  parameter  DATA_WIDTH     = `CFG_DATA_WIDTH,
  parameter  APB_DATA_WIDTH = `CFG_APB_DATA_WIDTH,
  parameter  APB_ADDR_WIDTH = `CFG_APB_ADDR_WIDTH,
  parameter  APB_STRB_WIDTH = `CFG_APB_STRB_WIDTH
)
(
  input                                     clk,
  input                                     reset_n,
  input                                     pclk,
  input                                     presetn,
  input   wire                              psel,
  input   wire                              penable,
  input   wire                              pwrite,
  input   wire    [APB_ADDR_WIDTH-1:0]      paddr,
  input   wire    [APB_STRB_WIDTH-1:0]      pstrb,
  input   wire    [APB_DATA_WIDTH-1:0]      pwdata,
  input   wire                              rx,
  input   wire                              cts_n,
  output  wire                              pready,
  output  wire                              pslverr,
  output  wire    [APB_DATA_WIDTH-1:0]      prdata,
  output  wire                              boost_en,
  output  wire                              tx,
  output  wire                              rts_n
);

wire  [DATA_WIDTH-1:0]    tx_data;
wire  [DATA_WIDTH-1:0]    rx_data;
wire  [1:0]               cfg_data_bit_num;
wire                      cfg_stop_bit_num;
wire                      cfg_parity_en;
wire                      cfg_parity_type;
wire                      ctrl_start_tx;
wire                      stt_tx_done;
wire                      stt_rx_done;
wire                      txclk_en;
wire                      rxclk_en;
wire                      host_read_stt_rx_done;
wire                      host_read_stt_tx_done;
wire                      ctrl_reg_update;
wire                      tx_done;
wire                      boost_cfg_boost_en;

transmitter transmitter(
  .clk                   (clk                   ),
  .reset_n               (reset_n               ),
  .clken                 (txclk_en              ),
  .cts_n                 (cts_n                 ),
  .tx_data               (tx_data               ),
  .cfg_data_bit_num      (cfg_data_bit_num      ),
  .cfg_stop_bit_num      (cfg_stop_bit_num      ),
  .cfg_parity_en         (cfg_parity_en         ),
  .cfg_parity_type       (cfg_parity_type       ),
  .ctrl_start_tx         (ctrl_start_tx         ),
  .host_read_stt_tx_done (host_read_stt_tx_done ),
  .ctrl_reg_update       (ctrl_reg_update       ),
  .stt_tx_done           (stt_tx_done           ),
  .tx                    (tx                    ));

receiver receiver(
  .clk                   (clk                   ),
  .reset_n               (reset_n               ),
  .rx                    (rx                    ),
  .cfg_parity_type       (cfg_parity_type       ),
  .cfg_data_bit_num      (cfg_data_bit_num      ),
  .cfg_stop_bit_num      (cfg_stop_bit_num      ),
  .cfg_parity_en         (cfg_parity_en         ),
  .clken                 (rxclk_en              ),
  .host_read_stt_rx_done (host_read_stt_rx_done ),
  .rts_n                 (rts_n                 ),
  .stt_rx_done           (stt_rx_done           ),
  .rx_data               (rx_data               ));

register_block register_block(
  .tx_data           (tx_data           ),
  .rx_data           (rx_data           ),
  .cfg_data_bit_num  (cfg_data_bit_num  ),
  .cfg_stop_bit_num  (cfg_stop_bit_num  ),
  .cfg_parity_en     (cfg_parity_en     ),
  .cfg_parity_type   (cfg_parity_type   ),
  .ctrl_start_tx     (ctrl_start_tx     ),
  .stt_tx_done       (stt_tx_done       ),
  .stt_rx_done       (stt_rx_done       ),
  .ctrl_reg_update   (ctrl_reg_update   ),
  .tx_done           (tx_done           ),
  .boost_cfg_boost_en(boost_cfg_boost_en),
  .apb_presetn       (presetn           ),
  .apb_pclk          (pclk              ),
  .apb_paddr         (paddr             ),
  .apb_psel          (psel              ),
  .apb_penable       (penable           ),
  .apb_pwrite        (pwrite            ),
  .apb_pwdata        (pwdata            ),
  .apb_pready        (pready            ),
  .apb_prdata        (prdata            ),
  .apb_pslverr       (pslverr           ),
  .clk               (clk               ),
  .reset             (reset_n           ));

baudrate_gen baudrate_gen(
  .clk      (clk      ),
  .reset_n  (reset_n  ),
  .rxclk_en (rxclk_en ),
  .txclk_en (txclk_en ));

assign host_read_stt_rx_done = (paddr == 'h00C) & pready & stt_rx_done;
assign host_read_stt_tx_done = (paddr == 'h008) & pready & stt_tx_done;
assign boost_en = boost_cfg_boost_en;

endmodule