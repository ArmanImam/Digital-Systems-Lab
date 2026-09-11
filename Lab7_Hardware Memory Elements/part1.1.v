`timescale 1ns / 1ps
//Tasked for 4-bit register using SR-latch based D flip flops
//HOWEVER, TA asked for Repeat from Last part from Lab6
//8_bit dual edge D flip flop
module part1_1(
        input [7:0] D,
        input clk,
        output reg [7:0] Q, Q_Bar
    );

    always @(clk) begin
        Q <= D;
        Q_Bar = ~Q;
    end  
    
endmodule
