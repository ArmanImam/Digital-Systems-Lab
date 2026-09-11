`timescale 1ns / 1ps
//2-1 Multiplexer 
module mux_2to1(
    //A= index 0, B = index 1, S = Index Select
    input A, B, S,
    output reg F
);
always @(*) begin
    case (S) 
        1'b0: F = A;
        1'b1: F = B;
        default: F = 0;
    endcase
end
endmodule