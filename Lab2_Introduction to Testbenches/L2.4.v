`timescale 1ns / 1ps

//Lab 2 Part 4
module logic_top(
    input A, B, C,
    output X, Y
);
    wire w1, w2, w3;
    assign w1 = A ^ B;
    assign w2 = C & w1;
    assign w3 = A & B;
    assign X = C ^ w1;
    assign Y = w2 | w3;
endmodule

