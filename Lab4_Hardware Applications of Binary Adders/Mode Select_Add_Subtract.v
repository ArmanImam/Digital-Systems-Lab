`timescale 1ns / 1ps
//Addition/Subtraction module
module ModeSelect(
    input[31:0] A, B,
    input mode,
    output[31:0] Results,
    output Cout
    );
    genvar i;
    //values determined by mode. 
    wire [31:0] Bor;
    generate 
        //mode = 1: Adder
        //mode = 0: Subtractor
        for(i = 0; i<32; i = i+1)begin
            assign Bor[i] = B[i] ^ mode;
        end
    endgenerate

    RCA_32bit ATS(
        .A(A),
        .B(Bor),
        .Cin(mode),
        .Sum(Results),
        .CarryOut()
    );

endmodule

