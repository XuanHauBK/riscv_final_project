
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
wire   Tpl_32 ;
wire   Tpl_33 ;
wire   Tpl_34 ;
wire   Tpl_35 ;
wire  [7:0] Tpl_36 ;
wire  [1:0] Tpl_37 ;
wire   Tpl_38 ;
wire   Tpl_39 ;
wire   Tpl_40 ;
wire   Tpl_41 ;
wire   Tpl_42 ;
wire   Tpl_43 ;
logic   Tpl_44 ;
logic   Tpl_45 ;
logic  [1:0] Tpl_46 ;
logic  [1:0] Tpl_47 ;
logic  [2:0] Tpl_48 ;
logic  [1:0] Tpl_49 ;
logic  [2:0] Tpl_50 ;
logic  [1:0] Tpl_51 ;
wire   Tpl_52 ;
wire   Tpl_53 ;
wire   Tpl_54 ;
wire   Tpl_55 ;
wire   Tpl_56 ;
wire  [1:0] Tpl_57 ;
wire   Tpl_58 ;
wire   Tpl_59 ;
wire   Tpl_60 ;
wire   Tpl_61 ;
logic   Tpl_62 ;
wire  [7:0] Tpl_63 ;
logic  [1:0] Tpl_64 ;
logic  [1:0] Tpl_65 ;
logic  [3:0] Tpl_66 ;
logic  [3:0] Tpl_67 ;
logic  [1:0] Tpl_68 ;
logic  [3:0] Tpl_69 ;
logic  [1:0] Tpl_70 ;
logic  [7:0] Tpl_71 ;
wire  [7:0] Tpl_72 ;
wire  [1:0] Tpl_73 ;
wire   Tpl_74 ;
wire   Tpl_75 ;
wire   Tpl_76 ;
wire   Tpl_77 ;
wire   Tpl_78 ;
wire  [7:0] Tpl_79 ;
wire   Tpl_80 ;
wire   Tpl_81 ;
wire   Tpl_82 ;
wire   Tpl_83 ;
wire   Tpl_84 ;
wire  [11:0] Tpl_85 ;
wire   Tpl_86 ;
wire   Tpl_87 ;
wire   Tpl_88 ;
wire  [31:0] Tpl_89 ;
logic   Tpl_90 ;
logic  [31:0] Tpl_91 ;
logic   Tpl_92 ;
wire   Tpl_93 ;
wire   Tpl_94 ;
wire  [11:0] Tpl_95 ;
wire  [11:0] Tpl_96 ;
wire  [31:0] Tpl_97 ;
wire  [31:0] Tpl_98 ;
wire   Tpl_99 ;
wire   Tpl_100 ;
wire   Tpl_101 ;
wire   Tpl_102 ;
wire   Tpl_103 ;
wire   Tpl_104 ;
logic  [7:0] Tpl_105 ;
logic  [1:0] Tpl_106 ;
logic   Tpl_107 ;
logic   Tpl_108 ;
logic   Tpl_109 ;
wire   Tpl_110 ;
logic   Tpl_111 ;
wire  [7:0] Tpl_112 ;
wire   Tpl_113 ;
wire   Tpl_114 ;
wire   Tpl_115 ;
wire   Tpl_116 ;
wire   Tpl_117 ;
wire  [11:0] Tpl_118 ;
wire  [11:0] Tpl_119 ;
wire  [31:0] Tpl_120 ;
logic  [31:0] Tpl_121 ;
wire   Tpl_122 ;
wire   Tpl_123 ;
logic   Tpl_124 ;
logic   Tpl_125 ;
logic   Tpl_126 ;
logic   Tpl_127 ;
wire   Tpl_128 ;
wire   Tpl_129 ;
wire   Tpl_130 ;
wire   Tpl_131 ;
wire   Tpl_132 ;
wire   Tpl_133 ;
wire   Tpl_134 ;
wire   Tpl_135 ;
logic  [7:0] Tpl_136 ;
logic   Tpl_137 ;
logic   Tpl_138 ;
wire  [31:0] Tpl_139 ;
wire  [31:0] Tpl_140 ;
wire  [31:0] Tpl_141 ;
wire  [31:0] Tpl_142 ;
wire  [31:0] Tpl_143 ;
wire   Tpl_144 ;
wire   Tpl_145 ;
wire   Tpl_146 ;
wire  [11:0] Tpl_147 ;
wire   Tpl_148 ;
wire   Tpl_149 ;
wire   Tpl_150 ;
wire  [31:0] Tpl_151 ;
logic   Tpl_152 ;
logic  [31:0] Tpl_153 ;
logic   Tpl_154 ;
logic   Tpl_155 ;
logic  [11:0] Tpl_156 ;
wire  [31:0] Tpl_157 ;
wire   Tpl_158 ;
wire   Tpl_159 ;
logic   Tpl_160 ;
logic  [11:0] Tpl_161 ;
logic  [31:0] Tpl_162 ;
wire   Tpl_163 ;
wire   Tpl_164 ;
wire   Tpl_165 ;
wire   Tpl_166 ;
wire   Tpl_167 ;
wire   Tpl_168 ;
logic  [4:0] Tpl_169 ;
logic  [8:0] Tpl_170 ;

assign host_read_stt_rx_done = (((paddr == 12) & pready) & stt_rx_done);
assign host_read_stt_tx_done = (((paddr == 8) & pready) & stt_tx_done);

assign Tpl_32 = clk;
assign Tpl_33 = reset_n;
assign Tpl_34 = txclk_en;
assign Tpl_35 = cts_n;
assign Tpl_36 = tx_data;
assign Tpl_37 = cfg_data_bit_num;
assign Tpl_38 = cfg_stop_bit_num;
assign Tpl_39 = cfg_parity_en;
assign Tpl_40 = cfg_parity_type;
assign Tpl_41 = ctrl_start_tx;
assign Tpl_42 = host_read_stt_tx_done;
assign ctrl_reg_update = Tpl_43;
assign stt_tx_done = Tpl_44;
assign tx = Tpl_45;

assign Tpl_52 = clk;
assign Tpl_53 = reset_n;
assign Tpl_54 = rx;
assign Tpl_60 = cfg_parity_type;
assign Tpl_57 = cfg_data_bit_num;
assign Tpl_58 = cfg_stop_bit_num;
assign Tpl_59 = cfg_parity_en;
assign Tpl_55 = rxclk_en;
assign Tpl_56 = host_read_stt_rx_done;
assign rts_n = Tpl_61;
assign stt_rx_done = Tpl_62;
assign rx_data = Tpl_63;

assign tx_data = Tpl_72;
assign Tpl_79 = rx_data;
assign cfg_data_bit_num = Tpl_73;
assign cfg_stop_bit_num = Tpl_74;
assign cfg_parity_en = Tpl_75;
assign cfg_parity_type = Tpl_76;
assign ctrl_start_tx = Tpl_77;
assign Tpl_80 = stt_tx_done;
assign Tpl_81 = stt_rx_done;
assign Tpl_78 = ctrl_reg_update;
assign tx_done = Tpl_82;
assign Tpl_83 = presetn;
assign Tpl_84 = pclk;
assign Tpl_85 = paddr;
assign Tpl_86 = psel;
assign Tpl_87 = penable;
assign Tpl_88 = pwrite;
assign Tpl_89 = pwdata;
assign pready = Tpl_90;
assign prdata = Tpl_91;
assign pslverr = Tpl_92;
assign Tpl_93 = clk;
assign Tpl_94 = reset_n;

assign Tpl_165 = clk;
assign Tpl_166 = reset_n;
assign rxclk_en = Tpl_167;
assign txclk_en = Tpl_168;

always @(*)
begin: next_state_block_proc_0
case (Tpl_46)
2'b00: begin
if (((Tpl_41 & (!Tpl_35)) & Tpl_34))
begin
Tpl_47 = 2'b01;
end
else
begin
Tpl_47 = 2'b00;
end
end
2'b01: begin
if (Tpl_34)
begin
Tpl_47 = 2'b10;
end
else
begin
Tpl_47 = 2'b01;
end
end
2'b10: begin
if (Tpl_34)
begin
if ((Tpl_48 == Tpl_50))
begin
Tpl_47 = 2'b11;
end
else
begin
Tpl_47 = 2'b10;
end
end
else
begin
Tpl_47 = 2'b10;
end
end
2'b11: begin
if (Tpl_34)
begin
if ((Tpl_49 == Tpl_51))
begin
Tpl_47 = 2'b00;
end
else
begin
Tpl_47 = 2'b11;
end
end
else
begin
Tpl_47 = 2'b11;
end
end
default: Tpl_47 = 2'b00;
endcase
end


always @( posedge Tpl_32 or negedge Tpl_33 )
begin: clocked_block_proc_17
if ((~Tpl_33))
begin
Tpl_46 <= 2'b00;
end
else
begin
Tpl_46 <= Tpl_47;
case (Tpl_46)
2'b00: begin
Tpl_48 <= 0;
Tpl_49 <= 0;
end
2'b01: begin
end
2'b10: begin
if (Tpl_34)
begin
Tpl_48 <= (Tpl_48 + 1);
end
end
2'b11: begin
if (Tpl_34)
begin
Tpl_49 <= (Tpl_49 + 1);
end
end
endcase
end
end


always @(*)
begin
case (Tpl_46)
2'b00: begin
Tpl_45 = 1'b1;
end
2'b01: begin
Tpl_45 = 1'b0;
end
2'b10: begin
Tpl_45 = Tpl_36[Tpl_48];
end
2'b11: begin
if (Tpl_39)
begin
Tpl_45 = (|Tpl_36[7:0]);
end
else
begin
Tpl_45 = 1'b1;
end
end
endcase
end


always @(*)
begin
case (Tpl_37)
2'b00: Tpl_50 = 3'd4;
2'b01: Tpl_50 = 3'd5;
2'b10: Tpl_50 = 3'd6;
2'b11: Tpl_50 = 3'd7;
default: Tpl_50 = 3'd7;
endcase
end


always @(*)
begin
case ({{Tpl_39,Tpl_38}})
2'b00: Tpl_51 = 2'd0;
2'b01: Tpl_51 = 2'd1;
2'b10: Tpl_51 = 2'd1;
2'b11: Tpl_51 = 2'd2;
default: Tpl_51 = 2'd0;
endcase
end


always @( posedge Tpl_32 or negedge Tpl_33 )
begin
if ((~Tpl_33))
begin
Tpl_44 <= 1'b1;
end
else
begin
if (((Tpl_34 && (Tpl_46 == 2'b11)) && (Tpl_49 == Tpl_51)))
begin
Tpl_44 <= 1'b1;
end
else
if (Tpl_42)
begin
Tpl_44 <= 1'b0;
end
else
begin
Tpl_44 <= Tpl_44;
end
end
end

assign Tpl_43 = (Tpl_46 == 2'b01);

always @(*)
begin: next_state_block_proc_41
case (Tpl_64)
2'b00: begin
if ((Tpl_66 == 15))
begin
Tpl_65 = 2'b01;
end
else
begin
Tpl_65 = 2'b00;
end
end
2'b01: begin
if (((Tpl_66 == 15) && (Tpl_67 == Tpl_69)))
begin
Tpl_65 = 2'b10;
end
else
begin
Tpl_65 = 2'b01;
end
end
2'b10: begin
if (((Tpl_66 == 15) && (Tpl_68 == Tpl_70)))
begin
Tpl_65 = 2'b00;
end
else
begin
Tpl_65 = 2'b10;
end
end
default: Tpl_65 = 2'b00;
endcase
end


always @( posedge Tpl_52 or negedge Tpl_53 )
begin: clocked_block_proc_51
if ((~Tpl_53))
begin
Tpl_64 <= 2'b00;
Tpl_66 <= 0;
Tpl_67 <= 0;
Tpl_68 <= 0;
Tpl_71 <= 0;
end
else
begin
Tpl_64 <= Tpl_65;
case (Tpl_64)
2'b00: begin
Tpl_67 <= 0;
Tpl_68 <= 0;
if (Tpl_55)
begin
if (((!Tpl_54) || (Tpl_66 != 0)))
begin
Tpl_66 <= (Tpl_66 + 1);
end
else
if ((Tpl_66 == 15))
begin
Tpl_66 <= 0;
end
end
else
begin
Tpl_66 <= Tpl_66;
end
end
2'b01: begin
if (Tpl_55)
begin
Tpl_66 <= (Tpl_66 + 1);
if ((Tpl_66 == 8))
begin
Tpl_67 <= (Tpl_67 + 1);
Tpl_71[Tpl_67] <= Tpl_54;
end
end
end
2'b10: begin
if (Tpl_55)
begin
Tpl_66 <= (Tpl_66 + 1);
if ((Tpl_66 == 8))
begin
Tpl_68 <= (Tpl_68 + 1);
end
end
else
if ((Tpl_66 == 15))
begin
Tpl_66 <= 0;
end
end
endcase
end
end


always @(*)
begin
case (Tpl_57)
2'b00: Tpl_69 = 4'd5;
2'b01: Tpl_69 = 4'd6;
2'b10: Tpl_69 = 4'd7;
2'b11: Tpl_69 = 4'd8;
default: Tpl_69 = 4'd8;
endcase
end


always @(*)
begin
case ({{Tpl_59,Tpl_58}})
2'b00: Tpl_70 = 2'd1;
2'b01: Tpl_70 = 2'd2;
2'b10: Tpl_70 = 2'd2;
2'b11: Tpl_70 = 2'd3;
default: Tpl_70 = 2'd1;
endcase
end


always @( posedge Tpl_52 or negedge Tpl_53 )
begin
if ((~Tpl_53))
begin
Tpl_62 <= 0;
end
else
begin
if (Tpl_56)
begin
Tpl_62 <= 1'b0;
end
else
if ((((Tpl_64 == 2'b10) & (Tpl_68 == Tpl_70)) & (Tpl_66 == 15)))
begin
Tpl_62 <= 1'b1;
end
else
begin
Tpl_62 <= Tpl_62;
end
end
end

assign Tpl_61 = Tpl_62;
assign Tpl_63 = Tpl_71;

assign Tpl_72 = Tpl_105;
assign Tpl_73 = Tpl_106;
assign Tpl_74 = Tpl_107;
assign Tpl_75 = Tpl_108;
assign Tpl_76 = Tpl_109;
assign Tpl_110 = Tpl_78;
assign Tpl_77 = Tpl_111;
assign Tpl_112 = Tpl_79;
assign Tpl_113 = Tpl_80;
assign Tpl_114 = Tpl_81;
assign Tpl_82 = Tpl_115;
assign Tpl_116 = Tpl_93;
assign Tpl_117 = Tpl_94;
assign Tpl_118 = Tpl_95;
assign Tpl_119 = Tpl_96;
assign Tpl_120 = Tpl_97;
assign Tpl_98 = Tpl_121;
assign Tpl_122 = Tpl_99;
assign Tpl_123 = Tpl_100;
assign Tpl_101 = Tpl_124;
assign Tpl_102 = Tpl_125;
assign Tpl_103 = Tpl_126;
assign Tpl_104 = Tpl_127;

assign Tpl_145 = Tpl_83;
assign Tpl_146 = Tpl_84;
assign Tpl_147 = Tpl_85;
assign Tpl_148 = Tpl_86;
assign Tpl_149 = Tpl_87;
assign Tpl_150 = Tpl_88;
assign Tpl_151 = Tpl_89;
assign Tpl_90 = Tpl_152;
assign Tpl_91 = Tpl_153;
assign Tpl_92 = Tpl_154;
assign Tpl_100 = Tpl_155;
assign Tpl_96 = Tpl_156;
assign Tpl_157 = Tpl_98;
assign Tpl_158 = Tpl_102;
assign Tpl_159 = Tpl_104;
assign Tpl_99 = Tpl_160;
assign Tpl_95 = Tpl_161;
assign Tpl_97 = Tpl_162;
assign Tpl_163 = Tpl_101;
assign Tpl_164 = Tpl_103;
assign Tpl_128 = (Tpl_123 & (Tpl_119 == 12'h000));
assign Tpl_129 = (Tpl_122 & (Tpl_118 == 12'h000));
assign Tpl_130 = (Tpl_123 & (Tpl_119 == 12'h004));
assign Tpl_131 = (Tpl_122 & (Tpl_118 == 12'h004));
assign Tpl_132 = (Tpl_123 & (Tpl_119 == 12'h008));
assign Tpl_133 = (Tpl_122 & (Tpl_118 == 12'h008));
assign Tpl_134 = (Tpl_123 & (Tpl_119 == 12'h00c));
assign Tpl_135 = (Tpl_123 & (Tpl_119 == 12'h010));
assign Tpl_144 = (~(|{{Tpl_129,Tpl_131,Tpl_133}}));

always @( posedge Tpl_116 )
begin: WRITE_ADDR_DECODE_STATUS_PROC_74
if ((!Tpl_117))
begin
Tpl_124 <= 1'b0;
Tpl_126 <= 1'b0;
end
else
begin
if (Tpl_122)
begin
Tpl_124 <= 1'b1;
Tpl_126 <= Tpl_144;
end
else
begin
Tpl_124 <= 1'b0;
Tpl_126 <= 1'b0;
end
end
end


always @(*)
begin: READ_ADDR_DECODE_STATUS_PROC_79
if ((!Tpl_123))
begin
Tpl_125 = 1'b0;
Tpl_127 = 1'b0;
end
else
begin
Tpl_125 = 1'b1;
Tpl_127 = (~(|{{Tpl_128,Tpl_130,Tpl_132,Tpl_134,Tpl_135}}));
end
end


always @( posedge Tpl_116 )
begin: TX_DATA_PROC_82
if ((!Tpl_117))
begin
Tpl_105 <= 8'b00000000;
end
else
if (Tpl_129)
begin
Tpl_105 <= Tpl_120[7:0];
end
end


always @( posedge Tpl_116 )
begin: CFG_DATA_BIT_NUM_PROC_85
if ((!Tpl_117))
begin
Tpl_106 <= 2'b00;
end
else
if (Tpl_131)
begin
Tpl_106 <= Tpl_120[1:0];
end
end


always @( posedge Tpl_116 )
begin: CFG_STOP_BIT_NUM_PROC_88
if ((!Tpl_117))
begin
Tpl_107 <= 1'b0;
end
else
if (Tpl_131)
begin
Tpl_107 <= Tpl_120[2];
end
end


always @( posedge Tpl_116 )
begin: CFG_PARITY_EN_PROC_91
if ((!Tpl_117))
begin
Tpl_108 <= 1'b0;
end
else
if (Tpl_131)
begin
Tpl_108 <= Tpl_120[3];
end
end


always @( posedge Tpl_116 )
begin: CFG_PARITY_TYPE_PROC_94
if ((!Tpl_117))
begin
Tpl_109 <= 1'b0;
end
else
if (Tpl_131)
begin
Tpl_109 <= Tpl_120[4];
end
end


always @( posedge Tpl_116 )
begin: CTRL_START_TX_PROC_97
if ((!Tpl_117))
begin
Tpl_111 <= 1'b0;
end
else
if (Tpl_133)
begin
Tpl_111 <= Tpl_120[0];
end
else
if (Tpl_110)
begin
Tpl_111 <= 0;
end
end


always @( posedge Tpl_116 )
begin: RX_DATA_PROC_101
if ((!Tpl_117))
begin
Tpl_136 <= 8'b00000000;
end
else
begin
Tpl_136 <= Tpl_112;
end
end


always @( posedge Tpl_116 )
begin: STT_TX_DONE_PROC_104
if ((!Tpl_117))
begin
Tpl_137 <= 1'b1;
end
else
begin
Tpl_137 <= Tpl_113;
end
end


always @( posedge Tpl_116 )
begin: STT_RX_DONE_PROC_107
if ((!Tpl_117))
begin
Tpl_138 <= 1'b0;
end
else
begin
Tpl_138 <= Tpl_114;
end
end

assign Tpl_139[7:0] = Tpl_105;
assign Tpl_139[31:8] = Tpl_120[31:8];
assign Tpl_140[1:0] = Tpl_106;
assign Tpl_140[2] = Tpl_107;
assign Tpl_140[3] = Tpl_108;
assign Tpl_140[4] = Tpl_109;
assign Tpl_140[31:5] = Tpl_120[31:5];
assign Tpl_141[0] = Tpl_111;
assign Tpl_141[31:1] = Tpl_120[31:1];
assign Tpl_142[7:0] = Tpl_136;
assign Tpl_142[31:8] = Tpl_120[31:8];
assign Tpl_143[0] = Tpl_137;
assign Tpl_143[1] = Tpl_138;
assign Tpl_143[31:2] = Tpl_120[31:2];

always @(*)
begin: READ_DATA_PROC_110
Tpl_121 = 0;
case (1'b1)
Tpl_128: Tpl_121 = Tpl_139;
Tpl_130: Tpl_121 = Tpl_140;
Tpl_132: Tpl_121 = Tpl_141;
Tpl_134: Tpl_121 = Tpl_142;
Tpl_135: Tpl_121 = Tpl_143;
default: Tpl_121 = 0;
endcase
end

assign Tpl_115 = Tpl_137;
assign Tpl_162 = Tpl_151;
assign Tpl_160 = (Tpl_148 & (Tpl_150 & Tpl_149));
assign Tpl_161 = Tpl_147;
assign Tpl_153 = ((Tpl_148 == 1'b1) ? Tpl_157[31:0] : 0);
assign Tpl_155 = (Tpl_148 & ((~Tpl_150) & Tpl_149));
assign Tpl_156 = Tpl_147;
assign Tpl_152 = ((Tpl_148 == 1'b1) ? ((Tpl_150 & Tpl_163) | ((~Tpl_150) & Tpl_158)) : 0);
assign Tpl_154 = ((Tpl_148 == 1'b1) ? ((Tpl_150 & Tpl_164) | ((~Tpl_150) & Tpl_159)) : 0);
assign Tpl_167 = (Tpl_169 == 0);
assign Tpl_168 = (Tpl_170 == 0);

always @( posedge Tpl_165 or negedge Tpl_166 )
begin: block_clocked_rx_acc_111
if ((~Tpl_166))
begin
Tpl_169 <= 0;
end
else
begin
if ((Tpl_169 == 32'h0000001b))
begin
Tpl_169 <= 0;
end
else
begin
Tpl_169 <= (Tpl_169 + 1);
end
end
end


always @( posedge Tpl_165 or negedge Tpl_166 )
begin: block_clocked_tx_acc_116
if ((~Tpl_166))
begin
Tpl_170 <= 0;
end
else
begin
if ((Tpl_170 == 32'h000001b2))
begin
Tpl_170 <= 0;
end
else
begin
Tpl_170 <= (Tpl_170 + 1);
end
end
end


endmodule