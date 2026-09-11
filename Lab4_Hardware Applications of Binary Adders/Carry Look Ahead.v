`timescale 1ns / 1ps
//Carry Look Ahead Adder (CLA)
module CLA(
       input[7:0] A, B, 
       input Cin,
       output[7:0] Sum, 
       output CarryOut
    );
    //Carry-propogate (P) and Carry-generate (G)
    wire[7:0] P, G, Carry;
    wire[8:0] C;
    assign C[0] = Cin;

    
    // Generate P and G
     genvar i;
     generate
            for (i=0; i<8; i=i+1) begin
                assign P[i] = A[i] ^ B[i];
                assign G[i] = A[i] & B[i];
            end
        endgenerate
  
    //CLA logic loop
    for (i = 0; i<8; i = i+1)begin
        assign C[i+1] = G[i] | (P[i] & C[i]);
        end

    generate
            // n is the number of blocks youd like to make
            for(i=0; i < 8; i = i + 1)begin
                Full_Adder ACT(
                    .A(A[i]),
                    .B(B[i]),
                    .Cin(C[i]),
                    .Sum(Sum[i]), 
                    .Count(Carry[i])
                );
            end
    endgenerate
    assign CarryOut = C[8];
endmodule
