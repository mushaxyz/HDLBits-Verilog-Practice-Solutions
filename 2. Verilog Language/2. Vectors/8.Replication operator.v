module top_module (
    input [7:0] in,
    output [31:0] out );//

    // in[7] is the most significant bit of input
    assign out = {{24{in[7]}}, in[7:0] };
endmodule