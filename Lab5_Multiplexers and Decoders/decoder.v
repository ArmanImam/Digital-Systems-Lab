`timescale 1ns / 1ps
//2-4 decoder
module decoder_2to4(
    input A, B,
    output reg [3:0] F
    );
    
    always @(*) begin
        F[0] = ~A & ~B;
        F[1] = ~A & B;
        F[2] = A & ~B;
        F[3] = A & B;
    end
 endmodule
    /*case ({A, B})
        2'b00: F[0] = 1;
        2'b01: F[1] = 1;
        2'b10: F[2] = 1;
        2'b11: F[3] = 1;
     endcase*/
    

