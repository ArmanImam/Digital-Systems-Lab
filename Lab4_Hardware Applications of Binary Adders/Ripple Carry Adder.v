`timescale 1ns / 1ps

// Ripple Carry Adder (RCA)
module RCA(
     input [7:0] A, B,
     input Cin,
     output [7:0] Sum,
     output CarryOut
    );
    
    genvar i;
    wire[8:0] Carry;
    assign Carry[0] = Cin;
   
    generate
        // n is the number of blocks youd like to make
        for(i = 0; i < 8; i = i + 1)begin
            Full_Adder ABT(
                .A(A[i]),
                .B(B[i]),
                .Cin(Carry[i]),
                .Sum(Sum[i]),
                .Count(Carry[i+1])
            );
        end
    endgenerate
    assign CarryOut = Carry[8];
endmodule
