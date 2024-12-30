module dti_gray_to_bin #(
    parameter WIDTH = 4  // bit-numbers of the input binary-encoded value and output gray-encoded value
) (
    input  [WIDTH-1:0] gin,  // input value in gray-encoded format
    output [WIDTH-1:0] bout  // output value in binary-encoded format
);
    //--------------------------------------------------------------------------
    genvar gi;
    //--------------------------------------------------------------------------
    assign bout[WIDTH-1] = gin[WIDTH-1];

    generate for(gi = WIDTH-2 ; gi >= 0; gi = gi - 1) begin: CAL_BIT_N_PROC
        assign bout[gi] = bout[gi+1] ^ gin[gi];
    end /*CAL_BIT_N_PROC*/
    endgenerate

endmodule /*dti_gray_to_bin*/

