`timescale 1ns / 1ps

//32-bit Ripple Carry Adder (RCA)
module RCA_32bit(
     input [31:0] A, B,
     input Cin,
     output [31:0] Sum,
     output Cout
    );
    
    genvar i;
    wire[32:0] Carry;
    assign Carry[0] = Cin;
   
    generate
        // n is the number of blocks youd like to make
        for(i = 0; i < 32; i = i + 1)begin
            Full_Adder ABT(
                .A(A[i]),
                .B(B[i]),
                .Cin(Carry[i]),
                .Sum(Sum[i]),
                .Count(Carry[i+1])
            );
        end
    endgenerate
    assign Cout = Carry[32];
endmodule
