
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
wire   Tpl_34 ;
wire   Tpl_35 ;
wire   Tpl_36 ;
wire   Tpl_37 ;
wire  [7:0] Tpl_38 ;
wire  [1:0] Tpl_39 ;
wire   Tpl_40 ;
wire   Tpl_41 ;
wire   Tpl_42 ;
wire   Tpl_43 ;
wire   Tpl_44 ;
wire   Tpl_45 ;
logic   Tpl_46 ;
logic   Tpl_47 ;
logic  [1:0] Tpl_48 ;
logic  [1:0] Tpl_49 ;
logic  [2:0] Tpl_50 ;
logic  [1:0] Tpl_51 ;
logic  [2:0] Tpl_52 ;
logic  [1:0] Tpl_53 ;
wire   Tpl_54 ;
wire   Tpl_55 ;
wire   Tpl_56 ;
wire   Tpl_57 ;
wire   Tpl_58 ;
wire  [1:0] Tpl_59 ;
wire   Tpl_60 ;
wire   Tpl_61 ;
wire   Tpl_62 ;
wire   Tpl_63 ;
logic   Tpl_64 ;
wire  [7:0] Tpl_65 ;
logic  [1:0] Tpl_66 ;
logic  [1:0] Tpl_67 ;
logic  [3:0] Tpl_68 ;
logic  [3:0] Tpl_69 ;
logic  [1:0] Tpl_70 ;
logic  [3:0] Tpl_71 ;
logic  [1:0] Tpl_72 ;
logic  [7:0] Tpl_73 ;
wire  [7:0] Tpl_74 ;
wire  [1:0] Tpl_75 ;
wire   Tpl_76 ;
wire   Tpl_77 ;
wire   Tpl_78 ;
wire   Tpl_79 ;
wire   Tpl_80 ;
wire  [7:0] Tpl_81 ;
wire   Tpl_82 ;
wire   Tpl_83 ;
wire   Tpl_84 ;
wire   Tpl_85 ;
wire   Tpl_86 ;
wire   Tpl_87 ;
wire  [11:0] Tpl_88 ;
wire   Tpl_89 ;
wire   Tpl_90 ;
wire   Tpl_91 ;
wire  [31:0] Tpl_92 ;
logic   Tpl_93 ;
logic  [31:0] Tpl_94 ;
logic   Tpl_95 ;
wire   Tpl_96 ;
wire   Tpl_97 ;
wire  [11:0] Tpl_98 ;
wire  [11:0] Tpl_99 ;
wire  [31:0] Tpl_100 ;
wire  [31:0] Tpl_101 ;
wire   Tpl_102 ;
wire   Tpl_103 ;
wire   Tpl_104 ;
wire   Tpl_105 ;
wire   Tpl_106 ;
wire   Tpl_107 ;
logic  [7:0] Tpl_108 ;
logic  [1:0] Tpl_109 ;
logic   Tpl_110 ;
logic   Tpl_111 ;
logic   Tpl_112 ;
wire   Tpl_113 ;
logic   Tpl_114 ;
wire  [7:0] Tpl_115 ;
wire   Tpl_116 ;
wire   Tpl_117 ;
logic   Tpl_118 ;
wire   Tpl_119 ;
wire   Tpl_120 ;
wire   Tpl_121 ;
wire  [11:0] Tpl_122 ;
wire  [11:0] Tpl_123 ;
wire  [31:0] Tpl_124 ;
logic  [31:0] Tpl_125 ;
wire   Tpl_126 ;
wire   Tpl_127 ;
logic   Tpl_128 ;
logic   Tpl_129 ;
logic   Tpl_130 ;
logic   Tpl_131 ;
wire   Tpl_132 ;
wire   Tpl_133 ;
wire   Tpl_134 ;
wire   Tpl_135 ;
wire   Tpl_136 ;
wire   Tpl_137 ;
wire   Tpl_138 ;
wire   Tpl_139 ;
wire   Tpl_140 ;
wire   Tpl_141 ;
logic  [7:0] Tpl_142 ;
logic   Tpl_143 ;
logic   Tpl_144 ;
wire  [31:0] Tpl_145 ;
wire  [31:0] Tpl_146 ;
wire  [31:0] Tpl_147 ;
wire  [31:0] Tpl_148 ;
wire  [31:0] Tpl_149 ;
wire  [31:0] Tpl_150 ;
wire   Tpl_151 ;
wire   Tpl_152 ;
wire   Tpl_153 ;
wire  [11:0] Tpl_154 ;
wire   Tpl_155 ;
wire   Tpl_156 ;
wire   Tpl_157 ;
wire  [31:0] Tpl_158 ;
logic   Tpl_159 ;
logic  [31:0] Tpl_160 ;
logic   Tpl_161 ;
logic   Tpl_162 ;
logic  [11:0] Tpl_163 ;
wire  [31:0] Tpl_164 ;
wire   Tpl_165 ;
wire   Tpl_166 ;
logic   Tpl_167 ;
logic  [11:0] Tpl_168 ;
logic  [31:0] Tpl_169 ;
wire   Tpl_170 ;
wire   Tpl_171 ;
wire   Tpl_172 ;
wire   Tpl_173 ;
wire   Tpl_174 ;
wire   Tpl_175 ;
logic  [4:0] Tpl_176 ;
logic  [8:0] Tpl_177 ;

assign host_read_stt_rx_done = (((paddr == 12) & pready) & stt_rx_done);
assign host_read_stt_tx_done = (((paddr == 8) & pready) & stt_tx_done);
assign boost_en = boost_cfg_boost_en;

assign Tpl_34 = clk;
assign Tpl_35 = reset_n;
assign Tpl_36 = txclk_en;
assign Tpl_37 = cts_n;
assign Tpl_38 = tx_data;
assign Tpl_39 = cfg_data_bit_num;
assign Tpl_40 = cfg_stop_bit_num;
assign Tpl_41 = cfg_parity_en;
assign Tpl_42 = cfg_parity_type;
assign Tpl_43 = ctrl_start_tx;
assign Tpl_44 = host_read_stt_tx_done;
assign ctrl_reg_update = Tpl_45;
assign stt_tx_done = Tpl_46;
assign tx = Tpl_47;

assign Tpl_54 = clk;
assign Tpl_55 = reset_n;
assign Tpl_56 = rx;
assign Tpl_62 = cfg_parity_type;
assign Tpl_59 = cfg_data_bit_num;
assign Tpl_60 = cfg_stop_bit_num;
assign Tpl_61 = cfg_parity_en;
assign Tpl_57 = rxclk_en;
assign Tpl_58 = host_read_stt_rx_done;
assign rts_n = Tpl_63;
assign stt_rx_done = Tpl_64;
assign rx_data = Tpl_65;

assign tx_data = Tpl_74;
assign Tpl_81 = rx_data;
assign cfg_data_bit_num = Tpl_75;
assign cfg_stop_bit_num = Tpl_76;
assign cfg_parity_en = Tpl_77;
assign cfg_parity_type = Tpl_78;
assign ctrl_start_tx = Tpl_79;
assign Tpl_82 = stt_tx_done;
assign Tpl_83 = stt_rx_done;
assign Tpl_80 = ctrl_reg_update;
assign tx_done = Tpl_85;
assign boost_cfg_boost_en = Tpl_84;
assign Tpl_86 = presetn;
assign Tpl_87 = pclk;
assign Tpl_88 = paddr;
assign Tpl_89 = psel;
assign Tpl_90 = penable;
assign Tpl_91 = pwrite;
assign Tpl_92 = pwdata;
assign pready = Tpl_93;
assign prdata = Tpl_94;
assign pslverr = Tpl_95;
assign Tpl_96 = clk;
assign Tpl_97 = reset_n;

assign Tpl_172 = clk;
assign Tpl_173 = reset_n;
assign rxclk_en = Tpl_174;
assign txclk_en = Tpl_175;

always @(*)
begin: next_state_block_proc_0
case (Tpl_48)
2'b00: begin
if (((Tpl_43 & (!Tpl_37)) & Tpl_36))
begin
Tpl_49 = 2'b01;
end
else
begin
Tpl_49 = 2'b00;
end
end
2'b01: begin
if (Tpl_36)
begin
Tpl_49 = 2'b10;
end
else
begin
Tpl_49 = 2'b01;
end
end
2'b10: begin
if (Tpl_36)
begin
if ((Tpl_50 == Tpl_52))
begin
Tpl_49 = 2'b11;
end
else
begin
Tpl_49 = 2'b10;
end
end
else
begin
Tpl_49 = 2'b10;
end
end
2'b11: begin
if (Tpl_36)
begin
if ((Tpl_51 == Tpl_53))
begin
Tpl_49 = 2'b00;
end
else
begin
Tpl_49 = 2'b11;
end
end
else
begin
Tpl_49 = 2'b11;
end
end
default: Tpl_49 = 2'b00;
endcase
end


always @( posedge Tpl_34 or negedge Tpl_35 )
begin: clocked_block_proc_17
if ((~Tpl_35))
begin
Tpl_48 <= 2'b00;
end
else
begin
Tpl_48 <= Tpl_49;
case (Tpl_48)
2'b00: begin
Tpl_50 <= 0;
Tpl_51 <= 0;
end
2'b01: begin
end
2'b10: begin
if (Tpl_36)
begin
Tpl_50 <= (Tpl_50 + 1);
end
end
2'b11: begin
if (Tpl_36)
begin
Tpl_51 <= (Tpl_51 + 1);
end
end
endcase
end
end


always @(*)
begin
case (Tpl_48)
2'b00: begin
Tpl_47 = 1'b1;
end
2'b01: begin
Tpl_47 = 1'b0;
end
2'b10: begin
Tpl_47 = Tpl_38[Tpl_50];
end
2'b11: begin
if (Tpl_41)
begin
Tpl_47 = (|Tpl_38[7:0]);
end
else
begin
Tpl_47 = 1'b1;
end
end
endcase
end


always @(*)
begin
case (Tpl_39)
2'b00: Tpl_52 = 3'd4;
2'b01: Tpl_52 = 3'd5;
2'b10: Tpl_52 = 3'd6;
2'b11: Tpl_52 = 3'd7;
default: Tpl_52 = 3'd7;
endcase
end


always @(*)
begin
case ({{Tpl_41,Tpl_40}})
2'b00: Tpl_53 = 2'd0;
2'b01: Tpl_53 = 2'd1;
2'b10: Tpl_53 = 2'd1;
2'b11: Tpl_53 = 2'd2;
default: Tpl_53 = 2'd0;
endcase
end


always @( posedge Tpl_34 or negedge Tpl_35 )
begin
if ((~Tpl_35))
begin
Tpl_46 <= 1'b1;
end
else
begin
if (((Tpl_36 && (Tpl_48 == 2'b11)) && (Tpl_51 == Tpl_53)))
begin
Tpl_46 <= 1'b1;
end
else
if (Tpl_44)
begin
Tpl_46 <= 1'b0;
end
else
begin
Tpl_46 <= Tpl_46;
end
end
end

assign Tpl_45 = (Tpl_48 == 2'b01);

always @(*)
begin: next_state_block_proc_41
case (Tpl_66)
2'b00: begin
if ((Tpl_68 == 15))
begin
Tpl_67 = 2'b01;
end
else
begin
Tpl_67 = 2'b00;
end
end
2'b01: begin
if (((Tpl_68 == 15) && (Tpl_69 == Tpl_71)))
begin
Tpl_67 = 2'b10;
end
else
begin
Tpl_67 = 2'b01;
end
end
2'b10: begin
if (((Tpl_68 == 15) && (Tpl_70 == Tpl_72)))
begin
Tpl_67 = 2'b00;
end
else
begin
Tpl_67 = 2'b10;
end
end
default: Tpl_67 = 2'b00;
endcase
end


always @( posedge Tpl_54 or negedge Tpl_55 )
begin: clocked_block_proc_51
if ((~Tpl_55))
begin
Tpl_66 <= 2'b00;
Tpl_68 <= 0;
Tpl_69 <= 0;
Tpl_70 <= 0;
Tpl_73 <= 0;
end
else
begin
Tpl_66 <= Tpl_67;
case (Tpl_66)
2'b00: begin
Tpl_69 <= 0;
Tpl_70 <= 0;
if (Tpl_57)
begin
if (((!Tpl_56) || (Tpl_68 != 0)))
begin
Tpl_68 <= (Tpl_68 + 1);
end
else
if ((Tpl_68 == 15))
begin
Tpl_68 <= 0;
end
end
else
begin
Tpl_68 <= Tpl_68;
end
end
2'b01: begin
if (Tpl_57)
begin
Tpl_68 <= (Tpl_68 + 1);
if ((Tpl_68 == 8))
begin
Tpl_69 <= (Tpl_69 + 1);
Tpl_73[Tpl_69] <= Tpl_56;
end
end
end
2'b10: begin
if (Tpl_57)
begin
Tpl_68 <= (Tpl_68 + 1);
if ((Tpl_68 == 8))
begin
Tpl_70 <= (Tpl_70 + 1);
end
end
else
if ((Tpl_68 == 15))
begin
Tpl_68 <= 0;
end
end
endcase
end
end


always @(*)
begin
case (Tpl_59)
2'b00: Tpl_71 = 4'd5;
2'b01: Tpl_71 = 4'd6;
2'b10: Tpl_71 = 4'd7;
2'b11: Tpl_71 = 4'd8;
default: Tpl_71 = 4'd8;
endcase
end


always @(*)
begin
case ({{Tpl_61,Tpl_60}})
2'b00: Tpl_72 = 2'd1;
2'b01: Tpl_72 = 2'd2;
2'b10: Tpl_72 = 2'd2;
2'b11: Tpl_72 = 2'd3;
default: Tpl_72 = 2'd1;
endcase
end


always @( posedge Tpl_54 or negedge Tpl_55 )
begin
if ((~Tpl_55))
begin
Tpl_64 <= 0;
end
else
begin
if (Tpl_58)
begin
Tpl_64 <= 1'b0;
end
else
if ((((Tpl_66 == 2'b10) & (Tpl_70 == Tpl_72)) & (Tpl_68 == 15)))
begin
Tpl_64 <= 1'b1;
end
else
begin
Tpl_64 <= Tpl_64;
end
end
end

assign Tpl_63 = Tpl_64;
assign Tpl_65 = Tpl_73;

assign Tpl_74 = Tpl_108;
assign Tpl_75 = Tpl_109;
assign Tpl_76 = Tpl_110;
assign Tpl_77 = Tpl_111;
assign Tpl_78 = Tpl_112;
assign Tpl_113 = Tpl_80;
assign Tpl_79 = Tpl_114;
assign Tpl_115 = Tpl_81;
assign Tpl_116 = Tpl_82;
assign Tpl_117 = Tpl_83;
assign Tpl_84 = Tpl_118;
assign Tpl_85 = Tpl_119;
assign Tpl_120 = Tpl_96;
assign Tpl_121 = Tpl_97;
assign Tpl_122 = Tpl_98;
assign Tpl_123 = Tpl_99;
assign Tpl_124 = Tpl_100;
assign Tpl_101 = Tpl_125;
assign Tpl_126 = Tpl_102;
assign Tpl_127 = Tpl_103;
assign Tpl_104 = Tpl_128;
assign Tpl_105 = Tpl_129;
assign Tpl_106 = Tpl_130;
assign Tpl_107 = Tpl_131;

assign Tpl_152 = Tpl_86;
assign Tpl_153 = Tpl_87;
assign Tpl_154 = Tpl_88;
assign Tpl_155 = Tpl_89;
assign Tpl_156 = Tpl_90;
assign Tpl_157 = Tpl_91;
assign Tpl_158 = Tpl_92;
assign Tpl_93 = Tpl_159;
assign Tpl_94 = Tpl_160;
assign Tpl_95 = Tpl_161;
assign Tpl_103 = Tpl_162;
assign Tpl_99 = Tpl_163;
assign Tpl_164 = Tpl_101;
assign Tpl_165 = Tpl_105;
assign Tpl_166 = Tpl_107;
assign Tpl_102 = Tpl_167;
assign Tpl_98 = Tpl_168;
assign Tpl_100 = Tpl_169;
assign Tpl_170 = Tpl_104;
assign Tpl_171 = Tpl_106;
assign Tpl_132 = (Tpl_127 & (Tpl_123 == 32'h00000000));
assign Tpl_133 = (Tpl_126 & (Tpl_122 == 32'h00000000));
assign Tpl_134 = (Tpl_127 & (Tpl_123 == 32'h00000004));
assign Tpl_135 = (Tpl_126 & (Tpl_122 == 32'h00000004));
assign Tpl_136 = (Tpl_127 & (Tpl_123 == 32'h00000008));
assign Tpl_137 = (Tpl_126 & (Tpl_122 == 32'h00000008));
assign Tpl_138 = (Tpl_127 & (Tpl_123 == 32'h0000000c));
assign Tpl_139 = (Tpl_127 & (Tpl_123 == 32'h00000010));
assign Tpl_140 = (Tpl_127 & (Tpl_123 == 32'h00000014));
assign Tpl_141 = (Tpl_126 & (Tpl_122 == 32'h00000014));
assign Tpl_151 = (~(|{{Tpl_133,Tpl_135,Tpl_137,Tpl_141}}));

always @( posedge Tpl_120 )
begin: WRITE_ADDR_DECODE_STATUS_PROC_74
if ((!Tpl_121))
begin
Tpl_128 <= 1'b0;
Tpl_130 <= 1'b0;
end
else
begin
if (Tpl_126)
begin
Tpl_128 <= 1'b1;
Tpl_130 <= Tpl_151;
end
else
begin
Tpl_128 <= 1'b0;
Tpl_130 <= 1'b0;
end
end
end


always @(*)
begin: READ_ADDR_DECODE_STATUS_PROC_79
if ((!Tpl_127))
begin
Tpl_129 = 1'b0;
Tpl_131 = 1'b0;
end
else
begin
Tpl_129 = 1'b1;
Tpl_131 = (~(|{{Tpl_132,Tpl_134,Tpl_136,Tpl_138,Tpl_139,Tpl_140}}));
end
end


always @( posedge Tpl_120 )
begin: TX_DATA_PROC_82
if ((!Tpl_121))
begin
Tpl_108 <= 8'b00000000;
end
else
if (Tpl_133)
begin
Tpl_108 <= Tpl_124[7:0];
end
end


always @( posedge Tpl_120 )
begin: CFG_DATA_BIT_NUM_PROC_85
if ((!Tpl_121))
begin
Tpl_109 <= 2'b00;
end
else
if (Tpl_135)
begin
Tpl_109 <= Tpl_124[1:0];
end
end


always @( posedge Tpl_120 )
begin: CFG_STOP_BIT_NUM_PROC_88
if ((!Tpl_121))
begin
Tpl_110 <= 1'b0;
end
else
if (Tpl_135)
begin
Tpl_110 <= Tpl_124[2];
end
end


always @( posedge Tpl_120 )
begin: CFG_PARITY_EN_PROC_91
if ((!Tpl_121))
begin
Tpl_111 <= 1'b0;
end
else
if (Tpl_135)
begin
Tpl_111 <= Tpl_124[3];
end
end


always @( posedge Tpl_120 )
begin: CFG_PARITY_TYPE_PROC_94
if ((!Tpl_121))
begin
Tpl_112 <= 1'b0;
end
else
if (Tpl_135)
begin
Tpl_112 <= Tpl_124[4];
end
end


always @( posedge Tpl_120 )
begin: CTRL_START_TX_PROC_97
if ((!Tpl_121))
begin
Tpl_114 <= 1'b0;
end
else
if (Tpl_137)
begin
Tpl_114 <= Tpl_124[0];
end
else
if (Tpl_113)
begin
Tpl_114 <= 0;
end
end


always @( posedge Tpl_120 )
begin: RX_DATA_PROC_101
if ((!Tpl_121))
begin
Tpl_142 <= 8'b00000000;
end
else
begin
Tpl_142 <= Tpl_115;
end
end


always @( posedge Tpl_120 )
begin: STT_TX_DONE_PROC_104
if ((!Tpl_121))
begin
Tpl_143 <= 1'b1;
end
else
begin
Tpl_143 <= Tpl_116;
end
end


always @( posedge Tpl_120 )
begin: STT_RX_DONE_PROC_107
if ((!Tpl_121))
begin
Tpl_144 <= 1'b0;
end
else
begin
Tpl_144 <= Tpl_117;
end
end


always @( posedge Tpl_120 )
begin: BOOST_CFG_BOOST_EN_PROC_110
if ((!Tpl_121))
begin
Tpl_118 <= 1'b0;
end
else
if (Tpl_141)
begin
Tpl_118 <= Tpl_124[0];
end
end

assign Tpl_145[7:0] = Tpl_108;
assign Tpl_145[31:8] = Tpl_124[31:8];
assign Tpl_146[1:0] = Tpl_109;
assign Tpl_146[2] = Tpl_110;
assign Tpl_146[3] = Tpl_111;
assign Tpl_146[4] = Tpl_112;
assign Tpl_146[31:5] = Tpl_124[31:5];
assign Tpl_147[0] = Tpl_114;
assign Tpl_147[31:1] = Tpl_124[31:1];
assign Tpl_148[7:0] = Tpl_142;
assign Tpl_148[31:8] = Tpl_124[31:8];
assign Tpl_149[0] = Tpl_143;
assign Tpl_149[1] = Tpl_144;
assign Tpl_149[31:2] = Tpl_124[31:2];
assign Tpl_150[0] = Tpl_118;
assign Tpl_150[31:1] = Tpl_124[31:1];

always @(*)
begin: READ_DATA_PROC_113
Tpl_125 = 0;
case (1'b1)
Tpl_132: Tpl_125 = Tpl_145;
Tpl_134: Tpl_125 = Tpl_146;
Tpl_136: Tpl_125 = Tpl_147;
Tpl_138: Tpl_125 = Tpl_148;
Tpl_139: Tpl_125 = Tpl_149;
Tpl_140: Tpl_125 = Tpl_150;
default: Tpl_125 = 0;
endcase
end

assign Tpl_119 = Tpl_143;
assign Tpl_169 = Tpl_158;
assign Tpl_167 = (Tpl_155 & (Tpl_157 & Tpl_156));
assign Tpl_168 = Tpl_154;
assign Tpl_160 = ((Tpl_155 == 1'b1) ? Tpl_164[31:0] : 0);
assign Tpl_162 = (Tpl_155 & ((~Tpl_157) & Tpl_156));
assign Tpl_163 = Tpl_154;
assign Tpl_159 = ((Tpl_155 == 1'b1) ? ((Tpl_157 & Tpl_170) | ((~Tpl_157) & Tpl_165)) : 0);
assign Tpl_161 = ((Tpl_155 == 1'b1) ? ((Tpl_157 & Tpl_171) | ((~Tpl_157) & Tpl_166)) : 0);
assign Tpl_174 = (Tpl_176 == 0);
assign Tpl_175 = (Tpl_177 == 0);

always @( posedge Tpl_172 or negedge Tpl_173 )
begin: block_clocked_rx_acc_114
if ((~Tpl_173))
begin
Tpl_176 <= 0;
end
else
begin
if ((Tpl_176 == 32'h0000001b))
begin
Tpl_176 <= 0;
end
else
begin
Tpl_176 <= (Tpl_176 + 1);
end
end
end


always @( posedge Tpl_172 or negedge Tpl_173 )
begin: block_clocked_tx_acc_119
if ((~Tpl_173))
begin
Tpl_177 <= 0;
end
else
begin
if ((Tpl_177 == 32'h000001b2))
begin
Tpl_177 <= 0;
end
else
begin
Tpl_177 <= (Tpl_177 + 1);
end
end
end


endmodule