module dti_bin_to_gray #(
    parameter WIDTH = 4  // bit-numbers of the input binary-encoded value and output gray-encoded value
) (
    input  [WIDTH-1:0] bin,  // input value in binary-encoded format
    output [WIDTH-1:0] gout  // output value in gray-encoded format
);
    assign gout = (bin >> 1'b1) ^ bin;
endmodule /*dti_bin_to_gray*/

