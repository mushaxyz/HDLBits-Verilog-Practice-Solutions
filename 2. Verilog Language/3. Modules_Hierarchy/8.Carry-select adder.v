module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] w1, w2, wsum1, wsum2;
    add16 adder1 ( a[15:0], b[15:0], 0, sum[15:0], w1 );
    add16 adder2 ( a[31:16], b[31:16], 0, wsum1, w2 );
    add16 adder3 ( a[31:16], b[31:16], 1, wsum2, w2 );
    
    always @(w1, wsum1, wsum2) begin
        case(w1)
            0 : sum[31:16] = wsum1;
            1 : sum[31:16] = wsum2;
        endcase
    end
endmodule