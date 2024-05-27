module top_module( 
    input [2:0] in,
    output [1:0] out );
	
    integer count, i;
    
    always @(*) begin
        count = 0;
        for(i=0; i<3; i++) begin
            if(in[i] == 1'b1) begin
                count = count+1;
            end
        end
        out = count;
    end
endmodule