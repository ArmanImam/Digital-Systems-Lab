`timescale 1ns / 1ps
//8 to 1 Mux
//8 inputs on the left, number of selects = 4, 2^3 = 8
module mux_8to1(
    input A, B, C, // Select Lines 
    input [7:0] in,
    output reg F
    );
    wire [2:0] S = {A, B, C};
always @(*) begin
        case (S) 
            3'b000: F = in[2];
            3'b001: F = in[6];
            3'b010: F = in[5];
            3'b011: F = in[0];
            3'b100: F = in[1];
            3'b101: F = in[3];
            3'b110: F = in[7];
            3'b111: F = in[4];
            default: F = 1'b0;
        endcase
    end
    
endmodule
