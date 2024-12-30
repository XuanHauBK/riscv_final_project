
module dti_uart (clk,reset_n,pclk,presetn,psel,penable,pwrite,paddr,pstrb,pwdata,rx,cts_n,pready,pslverr,prdata,tx,rts_n);

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
output logic   pready ;
output logic   pslverr ;
output logic  [31:0] prdata ;
output logic   tx ;
output logic   rts_n ;
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

assign host_read_stt_rx_done = (((paddr == 12) & pready) & stt_rx_done);
assign host_read_stt_tx_done = (((paddr == 8) & pready) & stt_tx_done);
transmitter transmitter (.clk(clk), .reset_n(reset_n), .clken(txclk_en), .cts_n(cts_n), .tx_data(tx_data), .cfg_data_bit_num(cfg_data_bit_num), .cfg_stop_bit_num(cfg_stop_bit_num), .cfg_parity_en(cfg_parity_en), .cfg_parity_type(cfg_parity_type), .ctrl_start_tx(ctrl_start_tx), .host_read_stt_tx_done(host_read_stt_tx_done), .ctrl_reg_update(ctrl_reg_update), .stt_tx_done(stt_tx_done), .tx(tx));
receiver receiver (.clk(clk), .reset_n(reset_n), .rx(rx), .cfg_parity_type(cfg_parity_type), .cfg_data_bit_num(cfg_data_bit_num), .cfg_stop_bit_num(cfg_stop_bit_num), .cfg_parity_en(cfg_parity_en), .clken(rxclk_en), .host_read_stt_rx_done(host_read_stt_rx_done), .rts_n(rts_n), .stt_rx_done(stt_rx_done), .rx_data(rx_data));
register_block register_block (.tx_data(tx_data), .rx_data(rx_data), .cfg_data_bit_num(cfg_data_bit_num), .cfg_stop_bit_num(cfg_stop_bit_num), .cfg_parity_en(cfg_parity_en), .cfg_parity_type(cfg_parity_type), .ctrl_start_tx(ctrl_start_tx), .stt_tx_done(stt_tx_done), .stt_rx_done(stt_rx_done), .ctrl_reg_update(ctrl_reg_update), .tx_done(tx_done), .apb_presetn(presetn), .apb_pclk(pclk), .apb_paddr(paddr), .apb_psel(psel), .apb_penable(penable), .apb_pwrite(pwrite), .apb_pwdata(pwdata), .apb_pready(pready), .apb_prdata(prdata), .apb_pslverr(pslverr), .clk(clk), .reset(reset_n));
baudrate_gen baudrate_gen (.clk(clk), .reset_n(reset_n), .rxclk_en(rxclk_en), .txclk_en(txclk_en));
endmodule


module transmitter (clk,reset_n,clken,cts_n,tx_data,cfg_data_bit_num,cfg_stop_bit_num,cfg_parity_en,cfg_parity_type,ctrl_start_tx,host_read_stt_tx_done,ctrl_reg_update,stt_tx_done,tx);

input   clk ;
input   reset_n ;
input   clken ;
input   cts_n ;
input  [7:0] tx_data ;
input  [1:0] cfg_data_bit_num ;
input   cfg_stop_bit_num ;
input   cfg_parity_en ;
input   cfg_parity_type ;
input   ctrl_start_tx ;
input   host_read_stt_tx_done ;
output   ctrl_reg_update ;
output logic   stt_tx_done ;
output logic   tx ;
logic  [1:0] current_state ;
logic  [1:0] next_state ;
logic  [2:0] bitpos_data ;
logic  [1:0] bitpos_stop ;
logic  [2:0] data_bit_width ;
logic  [1:0] stop_bit_width ;

always @(*)
begin: next_state_block_proc_0
case (current_state)
2'b00: begin
if (((ctrl_start_tx & (!cts_n)) & clken))
begin
next_state = 2'b01;
end
else
begin
next_state = 2'b00;
end
end
2'b01: begin
if (clken)
begin
next_state = 2'b10;
end
else
begin
next_state = 2'b01;
end
end
2'b10: begin
if (clken)
begin
if ((bitpos_data == data_bit_width))
begin
next_state = 2'b11;
end
else
begin
next_state = 2'b10;
end
end
else
begin
next_state = 2'b10;
end
end
2'b11: begin
if (clken)
begin
if ((bitpos_stop == stop_bit_width))
begin
next_state = 2'b00;
end
else
begin
next_state = 2'b11;
end
end
else
begin
next_state = 2'b11;
end
end
default: next_state = 2'b00;
endcase
end


always @( posedge clk or negedge reset_n )
begin: clocked_block_proc_17
if ((~reset_n))
begin
current_state <= 2'b00;
end
else
begin
current_state <= next_state;
case (current_state)
2'b00: begin
bitpos_data <= 0;
bitpos_stop <= 0;
end
2'b01: begin
end
2'b10: begin
if (clken)
begin
bitpos_data <= (bitpos_data + 1);
end
end
2'b11: begin
if (clken)
begin
bitpos_stop <= (bitpos_stop + 1);
end
end
endcase
end
end


always @(*)
begin
case (current_state)
2'b00: begin
tx = 1'b1;
end
2'b01: begin
tx = 1'b0;
end
2'b10: begin
tx = tx_data[bitpos_data];
end
2'b11: begin
if (cfg_parity_en)
begin
tx = (|tx_data[7:0]);
end
else
begin
tx = 1'b1;
end
end
endcase
end


always @(*)
begin
case (cfg_data_bit_num)
2'b00: data_bit_width = 3'd4;
2'b01: data_bit_width = 3'd5;
2'b10: data_bit_width = 3'd6;
2'b11: data_bit_width = 3'd7;
default: data_bit_width = 3'd7;
endcase
end


always @(*)
begin
case ({{cfg_parity_en,cfg_stop_bit_num}})
2'b00: stop_bit_width = 2'd0;
2'b01: stop_bit_width = 2'd1;
2'b10: stop_bit_width = 2'd1;
2'b11: stop_bit_width = 2'd2;
default: stop_bit_width = 2'd0;
endcase
end


always @( posedge clk or negedge reset_n )
begin
if ((~reset_n))
begin
stt_tx_done <= 1'b1;
end
else
begin
if (((clken && (current_state == 2'b11)) && (bitpos_stop == stop_bit_width)))
begin
stt_tx_done <= 1'b1;
end
else
if (host_read_stt_tx_done)
begin
stt_tx_done <= 1'b0;
end
else
begin
stt_tx_done <= stt_tx_done;
end
end
end

assign ctrl_reg_update = (current_state == 2'b01);
endmodule


module receiver (clk,reset_n,rx,clken,host_read_stt_rx_done,cfg_data_bit_num,cfg_stop_bit_num,cfg_parity_en,cfg_parity_type,rts_n,stt_rx_done,rx_data);

input   clk ;
input   reset_n ;
input   rx ;
input   clken ;
input   host_read_stt_rx_done ;
input  [1:0] cfg_data_bit_num ;
input   cfg_stop_bit_num ;
input   cfg_parity_en ;
input   cfg_parity_type ;
output   rts_n ;
output logic   stt_rx_done ;
output  [7:0] rx_data ;
logic  [1:0] current_state ;
logic  [1:0] next_state ;
logic  [3:0] sample ;
logic  [3:0] bitpos_data ;
logic  [1:0] bitpos_stop ;
logic  [3:0] data_bit_width ;
logic  [1:0] stop_bit_width ;
logic  [7:0] scratch ;

always @(*)
begin: next_state_block_proc_41
case (current_state)
2'b00: begin
if ((sample == 15))
begin
next_state = 2'b01;
end
else
begin
next_state = 2'b00;
end
end
2'b01: begin
if (((sample == 15) && (bitpos_data == data_bit_width)))
begin
next_state = 2'b10;
end
else
begin
next_state = 2'b01;
end
end
2'b10: begin
if (((sample == 15) && (bitpos_stop == stop_bit_width)))
begin
next_state = 2'b00;
end
else
begin
next_state = 2'b10;
end
end
default: next_state = 2'b00;
endcase
end


always @( posedge clk or negedge reset_n )
begin: clocked_block_proc_51
if ((~reset_n))
begin
current_state <= 2'b00;
sample <= 0;
bitpos_data <= 0;
bitpos_stop <= 0;
scratch <= 0;
end
else
begin
current_state <= next_state;
case (current_state)
2'b00: begin
bitpos_data <= 0;
bitpos_stop <= 0;
if (clken)
begin
if (((!rx) || (sample != 0)))
begin
sample <= (sample + 1);
end
else
if ((sample == 15))
begin
sample <= 0;
end
end
else
begin
sample <= sample;
end
end
2'b01: begin
if (clken)
begin
sample <= (sample + 1);
if ((sample == 8))
begin
bitpos_data <= (bitpos_data + 1);
scratch[bitpos_data] <= rx;
end
end
end
2'b10: begin
if (clken)
begin
sample <= (sample + 1);
if ((sample == 8))
begin
bitpos_stop <= (bitpos_stop + 1);
end
end
else
if ((sample == 15))
begin
sample <= 0;
end
end
endcase
end
end


always @(*)
begin
case (cfg_data_bit_num)
2'b00: data_bit_width = 4'd5;
2'b01: data_bit_width = 4'd6;
2'b10: data_bit_width = 4'd7;
2'b11: data_bit_width = 4'd8;
default: data_bit_width = 4'd8;
endcase
end


always @(*)
begin
case ({{cfg_parity_en,cfg_stop_bit_num}})
2'b00: stop_bit_width = 2'd1;
2'b01: stop_bit_width = 2'd2;
2'b10: stop_bit_width = 2'd2;
2'b11: stop_bit_width = 2'd3;
default: stop_bit_width = 2'd1;
endcase
end


always @( posedge clk or negedge reset_n )
begin
if ((~reset_n))
begin
stt_rx_done <= 0;
end
else
begin
if (host_read_stt_rx_done)
begin
stt_rx_done <= 1'b0;
end
else
if ((((current_state == 2'b10) & (bitpos_stop == stop_bit_width)) & (sample == 15)))
begin
stt_rx_done <= 1'b1;
end
else
begin
stt_rx_done <= stt_rx_done;
end
end
end

assign rts_n = stt_rx_done;
assign rx_data = scratch;
endmodule


module register_block (tx_data,cfg_data_bit_num,cfg_stop_bit_num,cfg_parity_en,cfg_parity_type,ctrl_start_tx,ctrl_reg_update,rx_data,stt_tx_done,stt_rx_done,tx_done,apb_presetn,apb_pclk,apb_paddr,apb_psel,apb_penable,apb_pwrite,apb_pwdata,apb_pready,apb_prdata,apb_pslverr,clk,reset);

output  [7:0] tx_data ;
output  [1:0] cfg_data_bit_num ;
output   cfg_stop_bit_num ;
output   cfg_parity_en ;
output   cfg_parity_type ;
output   ctrl_start_tx ;
input   ctrl_reg_update ;
input  [7:0] rx_data ;
input   stt_tx_done ;
input   stt_rx_done ;
output   tx_done ;
input   apb_presetn ;
input   apb_pclk ;
input  [11:0] apb_paddr ;
input   apb_psel ;
input   apb_penable ;
input   apb_pwrite ;
input  [31:0] apb_pwdata ;
output logic   apb_pready ;
output logic  [31:0] apb_prdata ;
output logic   apb_pslverr ;
input   clk ;
input   reset ;
wire  [11:0] waddr ;
wire  [11:0] raddr ;
wire  [31:0] wdata ;
wire  [31:0] rdata ;
wire   wr_en ;
wire   rd_en ;
wire   wack ;
wire   rack ;
wire   waddrerr ;
wire   raddrerr ;

rb_regs rb_regs (.tx_data(tx_data), .cfg_data_bit_num(cfg_data_bit_num), .cfg_stop_bit_num(cfg_stop_bit_num), .cfg_parity_en(cfg_parity_en), .cfg_parity_type(cfg_parity_type), .ctrl_reg_update(ctrl_reg_update), .ctrl_start_tx(ctrl_start_tx), .rx_data(rx_data), .stt_tx_done(stt_tx_done), .stt_rx_done(stt_rx_done), .tx_done(tx_done), .clk(clk), .reset(reset), .waddr(waddr), .raddr(raddr), .wdata(wdata), .rdata(rdata), .wr_en(wr_en), .rd_en(rd_en), .wack(wack), .rack(rack), .waddrerr(waddrerr), .raddrerr(raddrerr));
rb_apb_bridge rb_apb_bridge (.apb_presetn(apb_presetn), .apb_pclk(apb_pclk), .apb_paddr(apb_paddr), .apb_psel(apb_psel), .apb_penable(apb_penable), .apb_pwrite(apb_pwrite), .apb_pwdata(apb_pwdata), .apb_pready(apb_pready), .apb_prdata(apb_prdata), .apb_pslverr(apb_pslverr), .rd_en(rd_en), .raddr(raddr), .rdata(rdata), .rack(rack), .raddrerr(raddrerr), .wr_en(wr_en), .waddr(waddr), .wdata(wdata), .wack(wack), .waddrerr(waddrerr));
endmodule


module rb_regs (tx_data,cfg_data_bit_num,cfg_stop_bit_num,cfg_parity_en,cfg_parity_type,ctrl_reg_update,ctrl_start_tx,rx_data,stt_tx_done,stt_rx_done,tx_done,clk,reset,waddr,raddr,wdata,rdata,wr_en,rd_en,wack,rack,waddrerr,raddrerr);

output logic  [7:0] tx_data ;
output logic  [1:0] cfg_data_bit_num ;
output logic   cfg_stop_bit_num ;
output logic   cfg_parity_en ;
output logic   cfg_parity_type ;
input   ctrl_reg_update ;
output logic   ctrl_start_tx ;
input  [7:0] rx_data ;
input   stt_tx_done ;
input   stt_rx_done ;
output   tx_done ;
input   clk ;
input   reset ;
input  [11:0] waddr ;
input  [11:0] raddr ;
input  [31:0] wdata ;
output logic  [31:0] rdata ;
input   wr_en ;
input   rd_en ;
output logic   wack ;
output logic   rack ;
output logic   waddrerr ;
output logic   raddrerr ;
wire   tx_ren ;
wire   tx_wen ;
wire   cfg_ren ;
wire   cfg_wen ;
wire   ctrl_ren ;
wire   ctrl_wen ;
wire   rx_ren ;
wire   stt_ren ;
logic  [7:0] rx_data_reg ;
logic   stt_tx_done_reg ;
logic   stt_rx_done_reg ;
wire  [31:0] mux_tx ;
wire  [31:0] mux_cfg ;
wire  [31:0] mux_ctrl ;
wire  [31:0] mux_rx ;
wire  [31:0] mux_stt ;

assign tx_ren = (rd_en & (raddr == 12'h000));
assign tx_wen = (wr_en & (waddr == 12'h000));
assign cfg_ren = (rd_en & (raddr == 12'h004));
assign cfg_wen = (wr_en & (waddr == 12'h004));
assign ctrl_ren = (rd_en & (raddr == 12'h008));
assign ctrl_wen = (wr_en & (waddr == 12'h008));
assign rx_ren = (rd_en & (raddr == 12'h00c));
assign stt_ren = (rd_en & (raddr == 12'h010));
wire   waddrerr_nxt ;

assign waddrerr_nxt = (~(|{{tx_wen,cfg_wen,ctrl_wen}}));

always @( posedge clk )
begin: WRITE_ADDR_DECODE_STATUS_PROC_74
if ((!reset))
begin
wack <= 1'b0;
waddrerr <= 1'b0;
end
else
begin
if (wr_en)
begin
wack <= 1'b1;
waddrerr <= waddrerr_nxt;
end
else
begin
wack <= 1'b0;
waddrerr <= 1'b0;
end
end
end


always @(*)
begin: READ_ADDR_DECODE_STATUS_PROC_79
if ((!rd_en))
begin
rack = 1'b0;
raddrerr = 1'b0;
end
else
begin
rack = 1'b1;
raddrerr = (~(|{{tx_ren,cfg_ren,ctrl_ren,rx_ren,stt_ren}}));
end
end


always @( posedge clk )
begin: TX_DATA_PROC_82
if ((!reset))
begin
tx_data <= 8'b00000000;
end
else
if (tx_wen)
begin
tx_data <= wdata[7:0];
end
end


always @( posedge clk )
begin: CFG_DATA_BIT_NUM_PROC_85
if ((!reset))
begin
cfg_data_bit_num <= 2'b00;
end
else
if (cfg_wen)
begin
cfg_data_bit_num <= wdata[1:0];
end
end


always @( posedge clk )
begin: CFG_STOP_BIT_NUM_PROC_88
if ((!reset))
begin
cfg_stop_bit_num <= 1'b0;
end
else
if (cfg_wen)
begin
cfg_stop_bit_num <= wdata[2];
end
end


always @( posedge clk )
begin: CFG_PARITY_EN_PROC_91
if ((!reset))
begin
cfg_parity_en <= 1'b0;
end
else
if (cfg_wen)
begin
cfg_parity_en <= wdata[3];
end
end


always @( posedge clk )
begin: CFG_PARITY_TYPE_PROC_94
if ((!reset))
begin
cfg_parity_type <= 1'b0;
end
else
if (cfg_wen)
begin
cfg_parity_type <= wdata[4];
end
end


always @( posedge clk )
begin: CTRL_START_TX_PROC_97
if ((!reset))
begin
ctrl_start_tx <= 1'b0;
end
else
if (ctrl_wen)
begin
ctrl_start_tx <= wdata[0];
end
else
if (ctrl_reg_update)
begin
ctrl_start_tx <= 0;
end
end


always @( posedge clk )
begin: RX_DATA_PROC_101
if ((!reset))
begin
rx_data_reg <= 8'b00000000;
end
else
begin
rx_data_reg <= rx_data;
end
end


always @( posedge clk )
begin: STT_TX_DONE_PROC_104
if ((!reset))
begin
stt_tx_done_reg <= 1'b1;
end
else
begin
stt_tx_done_reg <= stt_tx_done;
end
end


always @( posedge clk )
begin: STT_RX_DONE_PROC_107
if ((!reset))
begin
stt_rx_done_reg <= 1'b0;
end
else
begin
stt_rx_done_reg <= stt_rx_done;
end
end

assign mux_tx[7:0] = tx_data;
assign mux_tx[31:8] = wdata[31:8];
assign mux_cfg[1:0] = cfg_data_bit_num;
assign mux_cfg[2] = cfg_stop_bit_num;
assign mux_cfg[3] = cfg_parity_en;
assign mux_cfg[4] = cfg_parity_type;
assign mux_cfg[31:5] = wdata[31:5];
assign mux_ctrl[0] = ctrl_start_tx;
assign mux_ctrl[31:1] = wdata[31:1];
assign mux_rx[7:0] = rx_data_reg;
assign mux_rx[31:8] = wdata[31:8];
assign mux_stt[0] = stt_tx_done_reg;
assign mux_stt[1] = stt_rx_done_reg;
assign mux_stt[31:2] = wdata[31:2];

always @(*)
begin: READ_DATA_PROC_110
rdata = 0;
case (1'b1)
tx_ren: rdata = mux_tx;
cfg_ren: rdata = mux_cfg;
ctrl_ren: rdata = mux_ctrl;
rx_ren: rdata = mux_rx;
stt_ren: rdata = mux_stt;
default: rdata = 0;
endcase
end

assign tx_done = stt_tx_done_reg;
endmodule


module rb_apb_bridge (apb_presetn,apb_pclk,apb_paddr,apb_psel,apb_penable,apb_pwrite,apb_pwdata,apb_pready,apb_prdata,apb_pslverr,rd_en,raddr,rdata,rack,raddrerr,wr_en,waddr,wdata,wack,waddrerr);

input   apb_presetn ;
input   apb_pclk ;
input  [11:0] apb_paddr ;
input   apb_psel ;
input   apb_penable ;
input   apb_pwrite ;
input  [31:0] apb_pwdata ;
output logic   apb_pready ;
output logic  [31:0] apb_prdata ;
output logic   apb_pslverr ;
output logic   rd_en ;
output logic  [11:0] raddr ;
input  [31:0] rdata ;
input   rack ;
input   raddrerr ;
output logic   wr_en ;
output logic  [11:0] waddr ;
output logic  [31:0] wdata ;
input   wack ;
input   waddrerr ;

assign wdata = apb_pwdata;
assign wr_en = (apb_psel & (apb_pwrite & apb_penable));
assign waddr = apb_paddr;
assign apb_prdata = ((apb_psel == 1'b1) ? rdata[31:0] : 0);
assign rd_en = (apb_psel & ((~apb_pwrite) & apb_penable));
assign raddr = apb_paddr;
assign apb_pready = ((apb_psel == 1'b1) ? ((apb_pwrite & wack) | ((~apb_pwrite) & rack)) : 0);
assign apb_pslverr = ((apb_psel == 1'b1) ? ((apb_pwrite & waddrerr) | ((~apb_pwrite) & raddrerr)) : 0);
endmodule


module baudrate_gen (clk,reset_n,rxclk_en,txclk_en);

input   clk ;
input   reset_n ;
output   rxclk_en ;
output   txclk_en ;
logic  [4:0] rx_acc ;
logic  [8:0] tx_acc ;

assign rxclk_en = (rx_acc == 0);
assign txclk_en = (tx_acc == 0);

always @( posedge clk or negedge reset_n )
begin: block_clocked_rx_acc_111
if ((~reset_n))
begin
rx_acc <= 0;
end
else
begin
if ((rx_acc == 32'h0000001b))
begin
rx_acc <= 0;
end
else
begin
rx_acc <= (rx_acc + 1);
end
end
end


always @( posedge clk or negedge reset_n )
begin: block_clocked_tx_acc_116
if ((~reset_n))
begin
tx_acc <= 0;
end
else
begin
if ((tx_acc == 32'h000001b2))
begin
tx_acc <= 0;
end
else
begin
tx_acc <= (tx_acc + 1);
end
end
end

endmodule

