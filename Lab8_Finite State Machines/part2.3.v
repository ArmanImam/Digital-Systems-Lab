`timescale 1ns / 1ps
//Combining Mealy and PISO Shift register
//Output of mealy, and input of PISO
//out = 1, when value shows '1101'
module part2_3(
    input [7:0] in,
    input clk, en, load, reset,
    output wire out
    );
    wire bit;
    
    //PISO Shift Register
    part2_2 ABT(.in(in), .clk(clk), .en(en), .load(load), .out(bit));
    //Mealy
    part2_1 ACT(.in(bit), .clk(clk), .reset(reset), .out(out));
endmodule
