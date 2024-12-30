module dti_bicnt_dwn #(
  parameter   WIDTH   = 32,                    //  Counter width
  parameter   DOWN_TO = 0                     //  Counter terminate limit
) (
  input                       clk         ,   //  Synchronous clock
  input                       reset_n     ,   //  Asynchronous active low reset
  input                       load_en     ,   //  Count value load, active high
  input                       count_en    ,   //  Count enable, active high
  input   [ 1 : 0 ]           count_num   ,   //  Count number
  input   [ WIDTH - 1 : 0 ]   count_to    ,   //  Count value
  output                      done            //  Counter done flag
);
  //---------------------------------------------------------------------------
  //    Signals Declaration
  //---------------------------------------------------------------------------
  wire    [ WIDTH - 1 : 0 ]   cnt_adj     ;   //  New count value after adjust
  wire    [ WIDTH - 1 : 0 ]   cnt_new     ;   //  New count value
  wire    [ WIDTH - 1 : 0 ]   cnt_new_1   ;   //  New count value: 1:1
  wire    [ WIDTH - 1 : 0 ]   cnt_new_2   ;   //  New count value: 1:2
  wire    [ WIDTH - 1 : 0 ]   cnt_new_4   ;   //  New count value: 1:4

  logic   [         1 : 0 ]   cnt_num     ;   //  Internal count num
  logic   [ WIDTH - 1 : 0 ]   cnt         ;   //  Internal count value
  wire    [ WIDTH - 1 : 0 ]   cnt_nxt     ;   //  Next count value
  wire    [ WIDTH - 1 : 0 ]   cnt_nxt_1   ;   //  Next count value: 1:1
  wire    [ WIDTH - 1 : 0 ]   cnt_nxt_2   ;   //  Next count value: 1:2
  wire    [ WIDTH - 1 : 0 ]   cnt_nxt_4   ;   //  Next count value: 1:4

  //---------------------------------------------------------------------------
  //    Combinational Assignments
  //---------------------------------------------------------------------------
  assign  cnt_adj   = (count_to > DOWN_TO) ? count_to - DOWN_TO : '0;
  assign  cnt_new_1 = |cnt_adj[WIDTH-1:0] ? cnt_adj - 1 : '0 ;
  assign  cnt_new_2 = |cnt_adj[WIDTH-1:1] ? cnt_adj - 2 : '0 ;
  assign  cnt_new_4 = |cnt_adj[WIDTH-1:2] ? cnt_adj - 4 : '0 ;
  assign  cnt_new   = ({WIDTH{~count_num[1] & ~count_num[0]}} & cnt_new_1) |
                      ({WIDTH{~count_num[1] &  count_num[0]}} & cnt_new_2) |
                      ({WIDTH{ count_num[1] & ~count_num[0]}} & cnt_new_4);

  assign  cnt_nxt_1 = |cnt[WIDTH-1:0] ? cnt - 1 : '0 ;
  assign  cnt_nxt_2 = |cnt[WIDTH-1:1] ? cnt - 2 : '0 ;
  assign  cnt_nxt_4 = |cnt[WIDTH-1:2] ? cnt - 4 : '0 ;
  assign  cnt_nxt   = ({WIDTH{~cnt_num[1] & ~cnt_num[0]}} & cnt_nxt_1) |
                      ({WIDTH{~cnt_num[1] &  cnt_num[0]}} & cnt_nxt_2) |
                      ({WIDTH{ cnt_num[1] & ~cnt_num[0]}} & cnt_nxt_4);

  assign done = ~|cnt;

  //---------------------------------------------------------------------------
  //    Sequential Assignments
  //---------------------------------------------------------------------------
  always_ff @(posedge clk, negedge reset_n) begin
    if (~reset_n) begin
      cnt_num <= '0;
    end
    else if (load_en) begin
      cnt_num <= count_num;
    end
  end

  always_ff @(posedge clk, negedge reset_n) begin
    if (~reset_n) begin
      cnt <= '0;
    end
    else if (load_en) begin
      cnt <= cnt_new;
    end
    else if (count_en) begin
      cnt <= cnt_nxt;
    end
  end

endmodule