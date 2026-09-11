`timescale 1ns / 1ps

//Half Adder
module Half_Adder(
    input A, B,
    output Sum, Count
    );
    assign Sum = A ^ B;
    assign Count = A & B;
endmodule