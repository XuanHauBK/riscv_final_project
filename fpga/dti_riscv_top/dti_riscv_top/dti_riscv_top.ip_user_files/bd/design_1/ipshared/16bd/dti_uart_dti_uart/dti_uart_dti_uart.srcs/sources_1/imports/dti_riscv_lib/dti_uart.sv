
module dti_uart (clk,reset_n,pclk,presetn,psel,penable,pwrite,paddr,pstrb,pwdata,rx,cts_n,pready,pslverr,prdata,boost_en,tx,rts_n);
input   clk ;
input   reset_n ;
input   pclk ;
input   presetn ;
input   psel ;
input   penable ;
input   pwrite ;
input  [11:0] paddr ;
input  [3:0] pstrb ;
input  [31:0] pwdata ;
input   rx ;
input   cts_n ;
output   pready ;
output   pslverr ;
output  [31:0] prdata ;
output   boost_en ;
output   tx ;
output   rts_n ;
wire  [7:0] tx_data ;
wire  [7:0] rx_data ;
wire  [1:0] cfg_data_bit_num ;
wire   cfg_stop_bit_num ;
wire   cfg_parity_en ;
wire   cfg_parity_type ;
wire   ctrl_start_tx ;
wire   stt_tx_done ;
wire   stt_rx_done ;
wire   txclk_en ;
wire   rxclk_en ;
wire   host_read_stt_rx_done ;
wire   host_read_stt_tx_done ;
wire   ctrl_reg_update ;
wire   tx_done ;
wire   boost_cfg_boost_en ;
wire   \dti_uart/transmitter/clk  ;
wire   \dti_uart/transmitter/reset_n  ;
wire   \dti_uart/transmitter/clken  ;
wire   \dti_uart/transmitter/cts_n  ;
wire  [7:0] \dti_uart/transmitter/tx_data  ;
wire  [1:0] \dti_uart/transmitter/cfg_data_bit_num  ;
wire   \dti_uart/transmitter/cfg_stop_bit_num  ;
wire   \dti_uart/transmitter/cfg_parity_en  ;
wire   \dti_uart/transmitter/cfg_parity_type  ;
wire   \dti_uart/transmitter/ctrl_start_tx  ;
wire   \dti_uart/transmitter/host_read_stt_tx_done  ;
wire   \dti_uart/transmitter/ctrl_reg_update  ;
logic   \dti_uart/transmitter/stt_tx_done  ;
logic   \dti_uart/transmitter/tx  ;
logic  [1:0] \dti_uart/transmitter/current_state  ;
logic  [1:0] \dti_uart/transmitter/next_state  ;
logic  [2:0] \dti_uart/transmitter/bitpos_data  ;
logic  [1:0] \dti_uart/transmitter/bitpos_stop  ;
logic  [2:0] \dti_uart/transmitter/data_bit_width  ;
logic  [1:0] \dti_uart/transmitter/stop_bit_width  ;
wire   \dti_uart/receiver/clk  ;
wire   \dti_uart/receiver/reset_n  ;
wire   \dti_uart/receiver/rx  ;
wire   \dti_uart/receiver/clken  ;
wire   \dti_uart/receiver/host_read_stt_rx_done  ;
wire  [1:0] \dti_uart/receiver/cfg_data_bit_num  ;
wire   \dti_uart/receiver/cfg_stop_bit_num  ;
wire   \dti_uart/receiver/cfg_parity_en  ;
wire   \dti_uart/receiver/cfg_parity_type  ;
wire   \dti_uart/receiver/rts_n  ;
logic   \dti_uart/receiver/stt_rx_done  ;
wire  [7:0] \dti_uart/receiver/rx_data  ;
logic  [1:0] \dti_uart/receiver/current_state  ;
logic  [1:0] \dti_uart/receiver/next_state  ;
logic  [3:0] \dti_uart/receiver/sample  ;
logic  [3:0] \dti_uart/receiver/bitpos_data  ;
logic  [1:0] \dti_uart/receiver/bitpos_stop  ;
logic  [3:0] \dti_uart/receiver/data_bit_width  ;
logic  [1:0] \dti_uart/receiver/stop_bit_width  ;
logic  [7:0] \dti_uart/receiver/scratch  ;
wire  [7:0] \dti_uart/register_block/tx_data  ;
wire  [1:0] \dti_uart/register_block/cfg_data_bit_num  ;
wire   \dti_uart/register_block/cfg_stop_bit_num  ;
wire   \dti_uart/register_block/cfg_parity_en  ;
wire   \dti_uart/register_block/cfg_parity_type  ;
wire   \dti_uart/register_block/ctrl_start_tx  ;
wire   \dti_uart/register_block/ctrl_reg_update  ;
wire  [7:0] \dti_uart/register_block/rx_data  ;
wire   \dti_uart/register_block/stt_tx_done  ;
wire   \dti_uart/register_block/stt_rx_done  ;
wire   \dti_uart/register_block/boost_cfg_boost_en  ;
wire   \dti_uart/register_block/tx_done  ;
wire   \dti_uart/register_block/apb_presetn  ;
wire   \dti_uart/register_block/apb_pclk  ;
wire  [11:0] \dti_uart/register_block/apb_paddr  ;
wire   \dti_uart/register_block/apb_psel  ;
wire   \dti_uart/register_block/apb_penable  ;
wire   \dti_uart/register_block/apb_pwrite  ;
wire  [31:0] \dti_uart/register_block/apb_pwdata  ;
logic   \dti_uart/register_block/apb_pready  ;
logic  [31:0] \dti_uart/register_block/apb_prdata  ;
logic   \dti_uart/register_block/apb_pslverr  ;
wire   \dti_uart/register_block/clk  ;
wire   \dti_uart/register_block/reset  ;
wire  [11:0] \dti_uart/register_block/waddr  ;
wire  [11:0] \dti_uart/register_block/raddr  ;
wire  [31:0] \dti_uart/register_block/wdata  ;
wire  [31:0] \dti_uart/register_block/rdata  ;
wire   \dti_uart/register_block/wr_en  ;
wire   \dti_uart/register_block/rd_en  ;
wire   \dti_uart/register_block/wack  ;
wire   \dti_uart/register_block/rack  ;
wire   \dti_uart/register_block/waddrerr  ;
wire   \dti_uart/register_block/raddrerr  ;
logic  [7:0] \dti_uart/register_block/rb_regs/tx_data  ;
logic  [1:0] \dti_uart/register_block/rb_regs/cfg_data_bit_num  ;
logic   \dti_uart/register_block/rb_regs/cfg_stop_bit_num  ;
logic   \dti_uart/register_block/rb_regs/cfg_parity_en  ;
logic   \dti_uart/register_block/rb_regs/cfg_parity_type  ;
wire   \dti_uart/register_block/rb_regs/ctrl_reg_update  ;
logic   \dti_uart/register_block/rb_regs/ctrl_start_tx  ;
wire  [7:0] \dti_uart/register_block/rb_regs/rx_data  ;
wire   \dti_uart/register_block/rb_regs/stt_tx_done  ;
wire   \dti_uart/register_block/rb_regs/stt_rx_done  ;
logic   \dti_uart/register_block/rb_regs/boost_cfg_boost_en  ;
wire   \dti_uart/register_block/rb_regs/tx_done  ;
wire   \dti_uart/register_block/rb_regs/clk  ;
wire   \dti_uart/register_block/rb_regs/reset  ;
wire  [11:0] \dti_uart/register_block/rb_regs/waddr  ;
wire  [11:0] \dti_uart/register_block/rb_regs/raddr  ;
wire  [31:0] \dti_uart/register_block/rb_regs/wdata  ;
logic  [31:0] \dti_uart/register_block/rb_regs/rdata  ;
wire   \dti_uart/register_block/rb_regs/wr_en  ;
wire   \dti_uart/register_block/rb_regs/rd_en  ;
logic   \dti_uart/register_block/rb_regs/wack  ;
logic   \dti_uart/register_block/rb_regs/rack  ;
logic   \dti_uart/register_block/rb_regs/waddrerr  ;
logic   \dti_uart/register_block/rb_regs/raddrerr  ;
wire   \dti_uart/register_block/rb_regs/tx_ren  ;
wire   \dti_uart/register_block/rb_regs/tx_wen  ;
wire   \dti_uart/register_block/rb_regs/cfg_ren  ;
wire   \dti_uart/register_block/rb_regs/cfg_wen  ;
wire   \dti_uart/register_block/rb_regs/ctrl_ren  ;
wire   \dti_uart/register_block/rb_regs/ctrl_wen  ;
wire   \dti_uart/register_block/rb_regs/rx_ren  ;
wire   \dti_uart/register_block/rb_regs/stt_ren  ;
wire   \dti_uart/register_block/rb_regs/boost_cfg_ren  ;
wire   \dti_uart/register_block/rb_regs/boost_cfg_wen  ;
logic  [7:0] \dti_uart/register_block/rb_regs/rx_data_reg  ;
logic   \dti_uart/register_block/rb_regs/stt_tx_done_reg  ;
logic   \dti_uart/register_block/rb_regs/stt_rx_done_reg  ;
wire  [31:0] \dti_uart/register_block/rb_regs/mux_tx  ;
wire  [31:0] \dti_uart/register_block/rb_regs/mux_cfg  ;
wire  [31:0] \dti_uart/register_block/rb_regs/mux_ctrl  ;
wire  [31:0] \dti_uart/register_block/rb_regs/mux_rx  ;
wire  [31:0] \dti_uart/register_block/rb_regs/mux_stt  ;
wire  [31:0] \dti_uart/register_block/rb_regs/mux_boost_cfg  ;
wire   \dti_uart/register_block/rb_regs/waddrerr_nxt  ;
wire   \dti_uart/register_block/rb_apb_bridge/apb_presetn  ;
wire   \dti_uart/register_block/rb_apb_bridge/apb_pclk  ;
wire  [11:0] \dti_uart/register_block/rb_apb_bridge/apb_paddr  ;
wire   \dti_uart/register_block/rb_apb_bridge/apb_psel  ;
wire   \dti_uart/register_block/rb_apb_bridge/apb_penable  ;
wire   \dti_uart/register_block/rb_apb_bridge/apb_pwrite  ;
wire  [31:0] \dti_uart/register_block/rb_apb_bridge/apb_pwdata  ;
logic   \dti_uart/register_block/rb_apb_bridge/apb_pready  ;
logic  [31:0] \dti_uart/register_block/rb_apb_bridge/apb_prdata  ;
logic   \dti_uart/register_block/rb_apb_bridge/apb_pslverr  ;
logic   \dti_uart/register_block/rb_apb_bridge/rd_en  ;
logic  [11:0] \dti_uart/register_block/rb_apb_bridge/raddr  ;
wire  [31:0] \dti_uart/register_block/rb_apb_bridge/rdata  ;
wire   \dti_uart/register_block/rb_apb_bridge/rack  ;
wire   \dti_uart/register_block/rb_apb_bridge/raddrerr  ;
logic   \dti_uart/register_block/rb_apb_bridge/wr_en  ;
logic  [11:0] \dti_uart/register_block/rb_apb_bridge/waddr  ;
logic  [31:0] \dti_uart/register_block/rb_apb_bridge/wdata  ;
wire   \dti_uart/register_block/rb_apb_bridge/wack  ;
wire   \dti_uart/register_block/rb_apb_bridge/waddrerr  ;
wire   \dti_uart/baudrate_gen/clk  ;
wire   \dti_uart/baudrate_gen/reset_n  ;
wire   \dti_uart/baudrate_gen/rxclk_en  ;
wire   \dti_uart/baudrate_gen/txclk_en  ;
logic  [4:0] \dti_uart/baudrate_gen/rx_acc  ;
logic  [8:0] \dti_uart/baudrate_gen/tx_acc  ;

assign host_read_stt_rx_done = (((paddr == 12) & pready) & stt_rx_done);
assign host_read_stt_tx_done = (((paddr == 8) & pready) & stt_tx_done);
assign boost_en = boost_cfg_boost_en;

assign \dti_uart/transmitter/clk  = clk;
assign \dti_uart/transmitter/reset_n  = reset_n;
assign \dti_uart/transmitter/clken  = txclk_en;
assign \dti_uart/transmitter/cts_n  = cts_n;
assign \dti_uart/transmitter/tx_data  = tx_data;
assign \dti_uart/transmitter/cfg_data_bit_num  = cfg_data_bit_num;
assign \dti_uart/transmitter/cfg_stop_bit_num  = cfg_stop_bit_num;
assign \dti_uart/transmitter/cfg_parity_en  = cfg_parity_en;
assign \dti_uart/transmitter/cfg_parity_type  = cfg_parity_type;
assign \dti_uart/transmitter/ctrl_start_tx  = ctrl_start_tx;
assign \dti_uart/transmitter/host_read_stt_tx_done  = host_read_stt_tx_done;
assign ctrl_reg_update = \dti_uart/transmitter/ctrl_reg_update ;
assign stt_tx_done = \dti_uart/transmitter/stt_tx_done ;
assign tx = \dti_uart/transmitter/tx ;

assign \dti_uart/receiver/clk  = clk;
assign \dti_uart/receiver/reset_n  = reset_n;
assign \dti_uart/receiver/rx  = rx;
assign \dti_uart/receiver/cfg_parity_type  = cfg_parity_type;
assign \dti_uart/receiver/cfg_data_bit_num  = cfg_data_bit_num;
assign \dti_uart/receiver/cfg_stop_bit_num  = cfg_stop_bit_num;
assign \dti_uart/receiver/cfg_parity_en  = cfg_parity_en;
assign \dti_uart/receiver/clken  = rxclk_en;
assign \dti_uart/receiver/host_read_stt_rx_done  = host_read_stt_rx_done;
assign rts_n = \dti_uart/receiver/rts_n ;
assign stt_rx_done = \dti_uart/receiver/stt_rx_done ;
assign rx_data = \dti_uart/receiver/rx_data ;

assign tx_data = \dti_uart/register_block/tx_data ;
assign \dti_uart/register_block/rx_data  = rx_data;
assign cfg_data_bit_num = \dti_uart/register_block/cfg_data_bit_num ;
assign cfg_stop_bit_num = \dti_uart/register_block/cfg_stop_bit_num ;
assign cfg_parity_en = \dti_uart/register_block/cfg_parity_en ;
assign cfg_parity_type = \dti_uart/register_block/cfg_parity_type ;
assign ctrl_start_tx = \dti_uart/register_block/ctrl_start_tx ;
assign \dti_uart/register_block/stt_tx_done  = stt_tx_done;
assign \dti_uart/register_block/stt_rx_done  = stt_rx_done;
assign \dti_uart/register_block/ctrl_reg_update  = ctrl_reg_update;
assign tx_done = \dti_uart/register_block/tx_done ;
assign boost_cfg_boost_en = \dti_uart/register_block/boost_cfg_boost_en ;
assign \dti_uart/register_block/apb_presetn  = presetn;
assign \dti_uart/register_block/apb_pclk  = pclk;
assign \dti_uart/register_block/apb_paddr  = paddr;
assign \dti_uart/register_block/apb_psel  = psel;
assign \dti_uart/register_block/apb_penable  = penable;
assign \dti_uart/register_block/apb_pwrite  = pwrite;
assign \dti_uart/register_block/apb_pwdata  = pwdata;
assign pready = \dti_uart/register_block/apb_pready ;
assign prdata = \dti_uart/register_block/apb_prdata ;
assign pslverr = \dti_uart/register_block/apb_pslverr ;
assign \dti_uart/register_block/clk  = clk;
assign \dti_uart/register_block/reset  = reset_n;

assign \dti_uart/baudrate_gen/clk  = clk;
assign \dti_uart/baudrate_gen/reset_n  = reset_n;
assign rxclk_en = \dti_uart/baudrate_gen/rxclk_en ;
assign txclk_en = \dti_uart/baudrate_gen/txclk_en ;

always @(*)
begin: next_state_block_proc_0
case (\dti_uart/transmitter/current_state )
2'b00: begin
if (((\dti_uart/transmitter/ctrl_start_tx  & (!\dti_uart/transmitter/cts_n )) & \dti_uart/transmitter/clken ))
begin
\dti_uart/transmitter/next_state  = 2'b01;
end
else
begin
\dti_uart/transmitter/next_state  = 2'b00;
end
end
2'b01: begin
if (\dti_uart/transmitter/clken )
begin
\dti_uart/transmitter/next_state  = 2'b10;
end
else
begin
\dti_uart/transmitter/next_state  = 2'b01;
end
end
2'b10: begin
if (\dti_uart/transmitter/clken )
begin
if ((\dti_uart/transmitter/bitpos_data  == \dti_uart/transmitter/data_bit_width ))
begin
\dti_uart/transmitter/next_state  = 2'b11;
end
else
begin
\dti_uart/transmitter/next_state  = 2'b10;
end
end
else
begin
\dti_uart/transmitter/next_state  = 2'b10;
end
end
2'b11: begin
if (\dti_uart/transmitter/clken )
begin
if ((\dti_uart/transmitter/bitpos_stop  == \dti_uart/transmitter/stop_bit_width ))
begin
\dti_uart/transmitter/next_state  = 2'b00;
end
else
begin
\dti_uart/transmitter/next_state  = 2'b11;
end
end
else
begin
\dti_uart/transmitter/next_state  = 2'b11;
end
end
default: \dti_uart/transmitter/next_state  = 2'b00;
endcase
end


always @( posedge \dti_uart/transmitter/clk  or negedge \dti_uart/transmitter/reset_n  )
begin: clocked_block_proc_17
if ((~\dti_uart/transmitter/reset_n ))
begin
\dti_uart/transmitter/current_state  <= 2'b00;
end
else
begin
\dti_uart/transmitter/current_state  <= \dti_uart/transmitter/next_state ;
case (\dti_uart/transmitter/current_state )
2'b00: begin
\dti_uart/transmitter/bitpos_data  <= 0;
\dti_uart/transmitter/bitpos_stop  <= 0;
end
2'b01: begin
end
2'b10: begin
if (\dti_uart/transmitter/clken )
begin
\dti_uart/transmitter/bitpos_data  <= (\dti_uart/transmitter/bitpos_data  + 1);
end
end
2'b11: begin
if (\dti_uart/transmitter/clken )
begin
\dti_uart/transmitter/bitpos_stop  <= (\dti_uart/transmitter/bitpos_stop  + 1);
end
end
endcase
end
end


always @(*)
begin
case (\dti_uart/transmitter/current_state )
2'b00: begin
\dti_uart/transmitter/tx  = 1'b1;
end
2'b01: begin
\dti_uart/transmitter/tx  = 1'b0;
end
2'b10: begin
\dti_uart/transmitter/tx  = \dti_uart/transmitter/tx_data [\dti_uart/transmitter/bitpos_data ];
end
2'b11: begin
if (\dti_uart/transmitter/cfg_parity_en )
begin
\dti_uart/transmitter/tx  = (|\dti_uart/transmitter/tx_data [7:0]);
end
else
begin
\dti_uart/transmitter/tx  = 1'b1;
end
end
endcase
end


always @(*)
begin
case (\dti_uart/transmitter/cfg_data_bit_num )
2'b00: \dti_uart/transmitter/data_bit_width  = 3'd4;
2'b01: \dti_uart/transmitter/data_bit_width  = 3'd5;
2'b10: \dti_uart/transmitter/data_bit_width  = 3'd6;
2'b11: \dti_uart/transmitter/data_bit_width  = 3'd7;
default: \dti_uart/transmitter/data_bit_width  = 3'd7;
endcase
end


always @(*)
begin
case ({{\dti_uart/transmitter/cfg_parity_en ,\dti_uart/transmitter/cfg_stop_bit_num }})
2'b00: \dti_uart/transmitter/stop_bit_width  = 2'd0;
2'b01: \dti_uart/transmitter/stop_bit_width  = 2'd1;
2'b10: \dti_uart/transmitter/stop_bit_width  = 2'd1;
2'b11: \dti_uart/transmitter/stop_bit_width  = 2'd2;
default: \dti_uart/transmitter/stop_bit_width  = 2'd0;
endcase
end


always @( posedge \dti_uart/transmitter/clk  or negedge \dti_uart/transmitter/reset_n  )
begin
if ((~\dti_uart/transmitter/reset_n ))
begin
\dti_uart/transmitter/stt_tx_done  <= 1'b1;
end
else
begin
if (((\dti_uart/transmitter/clken  && (\dti_uart/transmitter/current_state  == 2'b11)) && (\dti_uart/transmitter/bitpos_stop  == \dti_uart/transmitter/stop_bit_width )))
begin
\dti_uart/transmitter/stt_tx_done  <= 1'b1;
end
else
if (\dti_uart/transmitter/host_read_stt_tx_done )
begin
\dti_uart/transmitter/stt_tx_done  <= 1'b0;
end
else
begin
\dti_uart/transmitter/stt_tx_done  <= \dti_uart/transmitter/stt_tx_done ;
end
end
end

assign \dti_uart/transmitter/ctrl_reg_update  = (\dti_uart/transmitter/current_state  == 2'b01);

always @(*)
begin: next_state_block_proc_41
case (\dti_uart/receiver/current_state )
2'b00: begin
if ((\dti_uart/receiver/sample  == 15))
begin
\dti_uart/receiver/next_state  = 2'b01;
end
else
begin
\dti_uart/receiver/next_state  = 2'b00;
end
end
2'b01: begin
if (((\dti_uart/receiver/sample  == 15) && (\dti_uart/receiver/bitpos_data  == \dti_uart/receiver/data_bit_width )))
begin
\dti_uart/receiver/next_state  = 2'b10;
end
else
begin
\dti_uart/receiver/next_state  = 2'b01;
end
end
2'b10: begin
if (((\dti_uart/receiver/sample  == 15) && (\dti_uart/receiver/bitpos_stop  == \dti_uart/receiver/stop_bit_width )))
begin
\dti_uart/receiver/next_state  = 2'b00;
end
else
begin
\dti_uart/receiver/next_state  = 2'b10;
end
end
default: \dti_uart/receiver/next_state  = 2'b00;
endcase
end


always @( posedge \dti_uart/receiver/clk  or negedge \dti_uart/receiver/reset_n  )
begin: clocked_block_proc_51
if ((~\dti_uart/receiver/reset_n ))
begin
\dti_uart/receiver/current_state  <= 2'b00;
\dti_uart/receiver/sample  <= 0;
\dti_uart/receiver/bitpos_data  <= 0;
\dti_uart/receiver/bitpos_stop  <= 0;
\dti_uart/receiver/scratch  <= 0;
end
else
begin
\dti_uart/receiver/current_state  <= \dti_uart/receiver/next_state ;
case (\dti_uart/receiver/current_state )
2'b00: begin
\dti_uart/receiver/bitpos_data  <= 0;
\dti_uart/receiver/bitpos_stop  <= 0;
if (\dti_uart/receiver/clken )
begin
if (((!\dti_uart/receiver/rx ) || (\dti_uart/receiver/sample  != 0)))
begin
\dti_uart/receiver/sample  <= (\dti_uart/receiver/sample  + 1);
end
else
if ((\dti_uart/receiver/sample  == 15))
begin
\dti_uart/receiver/sample  <= 0;
end
end
else
begin
\dti_uart/receiver/sample  <= \dti_uart/receiver/sample ;
end
end
2'b01: begin
if (\dti_uart/receiver/clken )
begin
\dti_uart/receiver/sample  <= (\dti_uart/receiver/sample  + 1);
if ((\dti_uart/receiver/sample  == 8))
begin
\dti_uart/receiver/bitpos_data  <= (\dti_uart/receiver/bitpos_data  + 1);
\dti_uart/receiver/scratch [\dti_uart/receiver/bitpos_data ] <= \dti_uart/receiver/rx ;
end
end
end
2'b10: begin
if (\dti_uart/receiver/clken )
begin
\dti_uart/receiver/sample  <= (\dti_uart/receiver/sample  + 1);
if ((\dti_uart/receiver/sample  == 8))
begin
\dti_uart/receiver/bitpos_stop  <= (\dti_uart/receiver/bitpos_stop  + 1);
end
end
else
if ((\dti_uart/receiver/sample  == 15))
begin
\dti_uart/receiver/sample  <= 0;
end
end
endcase
end
end


always @(*)
begin
case (\dti_uart/receiver/cfg_data_bit_num )
2'b00: \dti_uart/receiver/data_bit_width  = 4'd5;
2'b01: \dti_uart/receiver/data_bit_width  = 4'd6;
2'b10: \dti_uart/receiver/data_bit_width  = 4'd7;
2'b11: \dti_uart/receiver/data_bit_width  = 4'd8;
default: \dti_uart/receiver/data_bit_width  = 4'd8;
endcase
end


always @(*)
begin
case ({{\dti_uart/receiver/cfg_parity_en ,\dti_uart/receiver/cfg_stop_bit_num }})
2'b00: \dti_uart/receiver/stop_bit_width  = 2'd1;
2'b01: \dti_uart/receiver/stop_bit_width  = 2'd2;
2'b10: \dti_uart/receiver/stop_bit_width  = 2'd2;
2'b11: \dti_uart/receiver/stop_bit_width  = 2'd3;
default: \dti_uart/receiver/stop_bit_width  = 2'd1;
endcase
end


always @( posedge \dti_uart/receiver/clk  or negedge \dti_uart/receiver/reset_n  )
begin
if ((~\dti_uart/receiver/reset_n ))
begin
\dti_uart/receiver/stt_rx_done  <= 0;
end
else
begin
if (\dti_uart/receiver/host_read_stt_rx_done )
begin
\dti_uart/receiver/stt_rx_done  <= 1'b0;
end
else
if ((((\dti_uart/receiver/current_state  == 2'b10) & (\dti_uart/receiver/bitpos_stop  == \dti_uart/receiver/stop_bit_width )) & (\dti_uart/receiver/sample  == 15)))
begin
\dti_uart/receiver/stt_rx_done  <= 1'b1;
end
else
begin
\dti_uart/receiver/stt_rx_done  <= \dti_uart/receiver/stt_rx_done ;
end
end
end

assign \dti_uart/receiver/rts_n  = \dti_uart/receiver/stt_rx_done ;
assign \dti_uart/receiver/rx_data  = \dti_uart/receiver/scratch ;

assign \dti_uart/register_block/tx_data  = \dti_uart/register_block/rb_regs/tx_data ;
assign \dti_uart/register_block/cfg_data_bit_num  = \dti_uart/register_block/rb_regs/cfg_data_bit_num ;
assign \dti_uart/register_block/cfg_stop_bit_num  = \dti_uart/register_block/rb_regs/cfg_stop_bit_num ;
assign \dti_uart/register_block/cfg_parity_en  = \dti_uart/register_block/rb_regs/cfg_parity_en ;
assign \dti_uart/register_block/cfg_parity_type  = \dti_uart/register_block/rb_regs/cfg_parity_type ;
assign \dti_uart/register_block/rb_regs/ctrl_reg_update  = \dti_uart/register_block/ctrl_reg_update ;
assign \dti_uart/register_block/ctrl_start_tx  = \dti_uart/register_block/rb_regs/ctrl_start_tx ;
assign \dti_uart/register_block/rb_regs/rx_data  = \dti_uart/register_block/rx_data ;
assign \dti_uart/register_block/rb_regs/stt_tx_done  = \dti_uart/register_block/stt_tx_done ;
assign \dti_uart/register_block/rb_regs/stt_rx_done  = \dti_uart/register_block/stt_rx_done ;
assign \dti_uart/register_block/boost_cfg_boost_en  = \dti_uart/register_block/rb_regs/boost_cfg_boost_en ;
assign \dti_uart/register_block/tx_done  = \dti_uart/register_block/rb_regs/tx_done ;
assign \dti_uart/register_block/rb_regs/clk  = \dti_uart/register_block/clk ;
assign \dti_uart/register_block/rb_regs/reset  = \dti_uart/register_block/reset ;
assign \dti_uart/register_block/rb_regs/waddr  = \dti_uart/register_block/waddr ;
assign \dti_uart/register_block/rb_regs/raddr  = \dti_uart/register_block/raddr ;
assign \dti_uart/register_block/rb_regs/wdata  = \dti_uart/register_block/wdata ;
assign \dti_uart/register_block/rdata  = \dti_uart/register_block/rb_regs/rdata ;
assign \dti_uart/register_block/rb_regs/wr_en  = \dti_uart/register_block/wr_en ;
assign \dti_uart/register_block/rb_regs/rd_en  = \dti_uart/register_block/rd_en ;
assign \dti_uart/register_block/wack  = \dti_uart/register_block/rb_regs/wack ;
assign \dti_uart/register_block/rack  = \dti_uart/register_block/rb_regs/rack ;
assign \dti_uart/register_block/waddrerr  = \dti_uart/register_block/rb_regs/waddrerr ;
assign \dti_uart/register_block/raddrerr  = \dti_uart/register_block/rb_regs/raddrerr ;

assign \dti_uart/register_block/rb_apb_bridge/apb_presetn  = \dti_uart/register_block/apb_presetn ;
assign \dti_uart/register_block/rb_apb_bridge/apb_pclk  = \dti_uart/register_block/apb_pclk ;
assign \dti_uart/register_block/rb_apb_bridge/apb_paddr  = \dti_uart/register_block/apb_paddr ;
assign \dti_uart/register_block/rb_apb_bridge/apb_psel  = \dti_uart/register_block/apb_psel ;
assign \dti_uart/register_block/rb_apb_bridge/apb_penable  = \dti_uart/register_block/apb_penable ;
assign \dti_uart/register_block/rb_apb_bridge/apb_pwrite  = \dti_uart/register_block/apb_pwrite ;
assign \dti_uart/register_block/rb_apb_bridge/apb_pwdata  = \dti_uart/register_block/apb_pwdata ;
assign \dti_uart/register_block/apb_pready  = \dti_uart/register_block/rb_apb_bridge/apb_pready ;
assign \dti_uart/register_block/apb_prdata  = \dti_uart/register_block/rb_apb_bridge/apb_prdata ;
assign \dti_uart/register_block/apb_pslverr  = \dti_uart/register_block/rb_apb_bridge/apb_pslverr ;
assign \dti_uart/register_block/rd_en  = \dti_uart/register_block/rb_apb_bridge/rd_en ;
assign \dti_uart/register_block/raddr  = \dti_uart/register_block/rb_apb_bridge/raddr ;
assign \dti_uart/register_block/rb_apb_bridge/rdata  = \dti_uart/register_block/rdata ;
assign \dti_uart/register_block/rb_apb_bridge/rack  = \dti_uart/register_block/rack ;
assign \dti_uart/register_block/rb_apb_bridge/raddrerr  = \dti_uart/register_block/raddrerr ;
assign \dti_uart/register_block/wr_en  = \dti_uart/register_block/rb_apb_bridge/wr_en ;
assign \dti_uart/register_block/waddr  = \dti_uart/register_block/rb_apb_bridge/waddr ;
assign \dti_uart/register_block/wdata  = \dti_uart/register_block/rb_apb_bridge/wdata ;
assign \dti_uart/register_block/rb_apb_bridge/wack  = \dti_uart/register_block/wack ;
assign \dti_uart/register_block/rb_apb_bridge/waddrerr  = \dti_uart/register_block/waddrerr ;
assign \dti_uart/register_block/rb_regs/tx_ren  = (\dti_uart/register_block/rb_regs/rd_en  & (\dti_uart/register_block/rb_regs/raddr  == 32'h00000000));
assign \dti_uart/register_block/rb_regs/tx_wen  = (\dti_uart/register_block/rb_regs/wr_en  & (\dti_uart/register_block/rb_regs/waddr  == 32'h00000000));
assign \dti_uart/register_block/rb_regs/cfg_ren  = (\dti_uart/register_block/rb_regs/rd_en  & (\dti_uart/register_block/rb_regs/raddr  == 32'h00000004));
assign \dti_uart/register_block/rb_regs/cfg_wen  = (\dti_uart/register_block/rb_regs/wr_en  & (\dti_uart/register_block/rb_regs/waddr  == 32'h00000004));
assign \dti_uart/register_block/rb_regs/ctrl_ren  = (\dti_uart/register_block/rb_regs/rd_en  & (\dti_uart/register_block/rb_regs/raddr  == 32'h00000008));
assign \dti_uart/register_block/rb_regs/ctrl_wen  = (\dti_uart/register_block/rb_regs/wr_en  & (\dti_uart/register_block/rb_regs/waddr  == 32'h00000008));
assign \dti_uart/register_block/rb_regs/rx_ren  = (\dti_uart/register_block/rb_regs/rd_en  & (\dti_uart/register_block/rb_regs/raddr  == 32'h0000000c));
assign \dti_uart/register_block/rb_regs/stt_ren  = (\dti_uart/register_block/rb_regs/rd_en  & (\dti_uart/register_block/rb_regs/raddr  == 32'h00000010));
assign \dti_uart/register_block/rb_regs/boost_cfg_ren  = (\dti_uart/register_block/rb_regs/rd_en  & (\dti_uart/register_block/rb_regs/raddr  == 32'h00000014));
assign \dti_uart/register_block/rb_regs/boost_cfg_wen  = (\dti_uart/register_block/rb_regs/wr_en  & (\dti_uart/register_block/rb_regs/waddr  == 32'h00000014));
assign \dti_uart/register_block/rb_regs/waddrerr_nxt  = (~(|{{\dti_uart/register_block/rb_regs/tx_wen ,\dti_uart/register_block/rb_regs/cfg_wen ,\dti_uart/register_block/rb_regs/ctrl_wen ,\dti_uart/register_block/rb_regs/boost_cfg_wen }}));

always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: WRITE_ADDR_DECODE_STATUS_PROC_74
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/wack  <= 1'b0;
\dti_uart/register_block/rb_regs/waddrerr  <= 1'b0;
end
else
begin
if (\dti_uart/register_block/rb_regs/wr_en )
begin
\dti_uart/register_block/rb_regs/wack  <= 1'b1;
\dti_uart/register_block/rb_regs/waddrerr  <= \dti_uart/register_block/rb_regs/waddrerr_nxt ;
end
else
begin
\dti_uart/register_block/rb_regs/wack  <= 1'b0;
\dti_uart/register_block/rb_regs/waddrerr  <= 1'b0;
end
end
end


always @(*)
begin: READ_ADDR_DECODE_STATUS_PROC_79
if ((!\dti_uart/register_block/rb_regs/rd_en ))
begin
\dti_uart/register_block/rb_regs/rack  = 1'b0;
\dti_uart/register_block/rb_regs/raddrerr  = 1'b0;
end
else
begin
\dti_uart/register_block/rb_regs/rack  = 1'b1;
\dti_uart/register_block/rb_regs/raddrerr  = (~(|{{\dti_uart/register_block/rb_regs/tx_ren ,\dti_uart/register_block/rb_regs/cfg_ren ,\dti_uart/register_block/rb_regs/ctrl_ren ,\dti_uart/register_block/rb_regs/rx_ren ,\dti_uart/register_block/rb_regs/stt_ren ,\dti_uart/register_block/rb_regs/boost_cfg_ren }}));
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: TX_DATA_PROC_82
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/tx_data  <= 8'b00000000;
end
else
if (\dti_uart/register_block/rb_regs/tx_wen )
begin
\dti_uart/register_block/rb_regs/tx_data  <= \dti_uart/register_block/rb_regs/wdata [7:0];
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: CFG_DATA_BIT_NUM_PROC_85
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/cfg_data_bit_num  <= 2'b00;
end
else
if (\dti_uart/register_block/rb_regs/cfg_wen )
begin
\dti_uart/register_block/rb_regs/cfg_data_bit_num  <= \dti_uart/register_block/rb_regs/wdata [1:0];
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: CFG_STOP_BIT_NUM_PROC_88
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/cfg_stop_bit_num  <= 1'b0;
end
else
if (\dti_uart/register_block/rb_regs/cfg_wen )
begin
\dti_uart/register_block/rb_regs/cfg_stop_bit_num  <= \dti_uart/register_block/rb_regs/wdata [2];
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: CFG_PARITY_EN_PROC_91
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/cfg_parity_en  <= 1'b0;
end
else
if (\dti_uart/register_block/rb_regs/cfg_wen )
begin
\dti_uart/register_block/rb_regs/cfg_parity_en  <= \dti_uart/register_block/rb_regs/wdata [3];
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: CFG_PARITY_TYPE_PROC_94
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/cfg_parity_type  <= 1'b0;
end
else
if (\dti_uart/register_block/rb_regs/cfg_wen )
begin
\dti_uart/register_block/rb_regs/cfg_parity_type  <= \dti_uart/register_block/rb_regs/wdata [4];
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: CTRL_START_TX_PROC_97
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/ctrl_start_tx  <= 1'b0;
end
else
if (\dti_uart/register_block/rb_regs/ctrl_wen )
begin
\dti_uart/register_block/rb_regs/ctrl_start_tx  <= \dti_uart/register_block/rb_regs/wdata [0];
end
else
if (\dti_uart/register_block/rb_regs/ctrl_reg_update )
begin
\dti_uart/register_block/rb_regs/ctrl_start_tx  <= 0;
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: RX_DATA_PROC_101
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/rx_data_reg  <= 8'b00000000;
end
else
begin
\dti_uart/register_block/rb_regs/rx_data_reg  <= \dti_uart/register_block/rb_regs/rx_data ;
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: STT_TX_DONE_PROC_104
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/stt_tx_done_reg  <= 1'b1;
end
else
begin
\dti_uart/register_block/rb_regs/stt_tx_done_reg  <= \dti_uart/register_block/rb_regs/stt_tx_done ;
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: STT_RX_DONE_PROC_107
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/stt_rx_done_reg  <= 1'b0;
end
else
begin
\dti_uart/register_block/rb_regs/stt_rx_done_reg  <= \dti_uart/register_block/rb_regs/stt_rx_done ;
end
end


always @( posedge \dti_uart/register_block/rb_regs/clk  )
begin: BOOST_CFG_BOOST_EN_PROC_110
if ((!\dti_uart/register_block/rb_regs/reset ))
begin
\dti_uart/register_block/rb_regs/boost_cfg_boost_en  <= 1'b0;
end
else
if (\dti_uart/register_block/rb_regs/boost_cfg_wen )
begin
\dti_uart/register_block/rb_regs/boost_cfg_boost_en  <= \dti_uart/register_block/rb_regs/wdata [0];
end
end

assign \dti_uart/register_block/rb_regs/mux_tx [7:0] = \dti_uart/register_block/rb_regs/tx_data ;
assign \dti_uart/register_block/rb_regs/mux_tx [31:8] = \dti_uart/register_block/rb_regs/wdata [31:8];
assign \dti_uart/register_block/rb_regs/mux_cfg [1:0] = \dti_uart/register_block/rb_regs/cfg_data_bit_num ;
assign \dti_uart/register_block/rb_regs/mux_cfg [2] = \dti_uart/register_block/rb_regs/cfg_stop_bit_num ;
assign \dti_uart/register_block/rb_regs/mux_cfg [3] = \dti_uart/register_block/rb_regs/cfg_parity_en ;
assign \dti_uart/register_block/rb_regs/mux_cfg [4] = \dti_uart/register_block/rb_regs/cfg_parity_type ;
assign \dti_uart/register_block/rb_regs/mux_cfg [31:5] = \dti_uart/register_block/rb_regs/wdata [31:5];
assign \dti_uart/register_block/rb_regs/mux_ctrl [0] = \dti_uart/register_block/rb_regs/ctrl_start_tx ;
assign \dti_uart/register_block/rb_regs/mux_ctrl [31:1] = \dti_uart/register_block/rb_regs/wdata [31:1];
assign \dti_uart/register_block/rb_regs/mux_rx [7:0] = \dti_uart/register_block/rb_regs/rx_data_reg ;
assign \dti_uart/register_block/rb_regs/mux_rx [31:8] = \dti_uart/register_block/rb_regs/wdata [31:8];
assign \dti_uart/register_block/rb_regs/mux_stt [0] = \dti_uart/register_block/rb_regs/stt_tx_done_reg ;
assign \dti_uart/register_block/rb_regs/mux_stt [1] = \dti_uart/register_block/rb_regs/stt_rx_done_reg ;
assign \dti_uart/register_block/rb_regs/mux_stt [31:2] = \dti_uart/register_block/rb_regs/wdata [31:2];
assign \dti_uart/register_block/rb_regs/mux_boost_cfg [0] = \dti_uart/register_block/rb_regs/boost_cfg_boost_en ;
assign \dti_uart/register_block/rb_regs/mux_boost_cfg [31:1] = \dti_uart/register_block/rb_regs/wdata [31:1];

always @(*)
begin: READ_DATA_PROC_113
\dti_uart/register_block/rb_regs/rdata  = 0;
case (1'b1)
\dti_uart/register_block/rb_regs/tx_ren : \dti_uart/register_block/rb_regs/rdata  = \dti_uart/register_block/rb_regs/mux_tx ;
\dti_uart/register_block/rb_regs/cfg_ren : \dti_uart/register_block/rb_regs/rdata  = \dti_uart/register_block/rb_regs/mux_cfg ;
\dti_uart/register_block/rb_regs/ctrl_ren : \dti_uart/register_block/rb_regs/rdata  = \dti_uart/register_block/rb_regs/mux_ctrl ;
\dti_uart/register_block/rb_regs/rx_ren : \dti_uart/register_block/rb_regs/rdata  = \dti_uart/register_block/rb_regs/mux_rx ;
\dti_uart/register_block/rb_regs/stt_ren : \dti_uart/register_block/rb_regs/rdata  = \dti_uart/register_block/rb_regs/mux_stt ;
\dti_uart/register_block/rb_regs/boost_cfg_ren : \dti_uart/register_block/rb_regs/rdata  = \dti_uart/register_block/rb_regs/mux_boost_cfg ;
default: \dti_uart/register_block/rb_regs/rdata  = 0;
endcase
end

assign \dti_uart/register_block/rb_regs/tx_done  = \dti_uart/register_block/rb_regs/stt_tx_done_reg ;
assign \dti_uart/register_block/rb_apb_bridge/wdata  = \dti_uart/register_block/rb_apb_bridge/apb_pwdata ;
assign \dti_uart/register_block/rb_apb_bridge/wr_en  = (\dti_uart/register_block/rb_apb_bridge/apb_psel  & (\dti_uart/register_block/rb_apb_bridge/apb_pwrite  & \dti_uart/register_block/rb_apb_bridge/apb_penable ));
assign \dti_uart/register_block/rb_apb_bridge/waddr  = \dti_uart/register_block/rb_apb_bridge/apb_paddr ;
assign \dti_uart/register_block/rb_apb_bridge/apb_prdata  = ((\dti_uart/register_block/rb_apb_bridge/apb_psel  == 1'b1) ? \dti_uart/register_block/rb_apb_bridge/rdata [31:0] : 0);
assign \dti_uart/register_block/rb_apb_bridge/rd_en  = (\dti_uart/register_block/rb_apb_bridge/apb_psel  & ((~\dti_uart/register_block/rb_apb_bridge/apb_pwrite ) & \dti_uart/register_block/rb_apb_bridge/apb_penable ));
assign \dti_uart/register_block/rb_apb_bridge/raddr  = \dti_uart/register_block/rb_apb_bridge/apb_paddr ;
assign \dti_uart/register_block/rb_apb_bridge/apb_pready  = ((\dti_uart/register_block/rb_apb_bridge/apb_psel  == 1'b1) ? ((\dti_uart/register_block/rb_apb_bridge/apb_pwrite  & \dti_uart/register_block/rb_apb_bridge/wack ) | ((~\dti_uart/register_block/rb_apb_bridge/apb_pwrite ) & \dti_uart/register_block/rb_apb_bridge/rack )) : 0);
assign \dti_uart/register_block/rb_apb_bridge/apb_pslverr  = ((\dti_uart/register_block/rb_apb_bridge/apb_psel  == 1'b1) ? ((\dti_uart/register_block/rb_apb_bridge/apb_pwrite  & \dti_uart/register_block/rb_apb_bridge/waddrerr ) | ((~\dti_uart/register_block/rb_apb_bridge/apb_pwrite ) & \dti_uart/register_block/rb_apb_bridge/raddrerr )) : 0);
assign \dti_uart/baudrate_gen/rxclk_en  = (\dti_uart/baudrate_gen/rx_acc  == 0);
assign \dti_uart/baudrate_gen/txclk_en  = (\dti_uart/baudrate_gen/tx_acc  == 0);

always @( posedge \dti_uart/baudrate_gen/clk  or negedge \dti_uart/baudrate_gen/reset_n  )
begin: block_clocked_rx_acc_114
if ((~\dti_uart/baudrate_gen/reset_n ))
begin
\dti_uart/baudrate_gen/rx_acc  <= 0;
end
else
begin
if ((\dti_uart/baudrate_gen/rx_acc  == 32'h0000001b))
begin
\dti_uart/baudrate_gen/rx_acc  <= 0;
end
else
begin
\dti_uart/baudrate_gen/rx_acc  <= (\dti_uart/baudrate_gen/rx_acc  + 1);
end
end
end


always @( posedge \dti_uart/baudrate_gen/clk  or negedge \dti_uart/baudrate_gen/reset_n  )
begin: block_clocked_tx_acc_119
if ((~\dti_uart/baudrate_gen/reset_n ))
begin
\dti_uart/baudrate_gen/tx_acc  <= 0;
end
else
begin
if ((\dti_uart/baudrate_gen/tx_acc  == 32'h000001b2))
begin
\dti_uart/baudrate_gen/tx_acc  <= 0;
end
else
begin
\dti_uart/baudrate_gen/tx_acc  <= (\dti_uart/baudrate_gen/tx_acc  + 1);
end
end
end


endmodule