`timescale 1ns / 1ps

module part1_1_sim();
    reg clk, reset, in;
    wire out;
    
    Part1_1 PDA (.clk(clk),.reset(reset), .in(in),  .out(out));
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        in = 0; #20;
        reset = 0; #10;
    
        in = 0; #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
        in = 0; #10;
        in = 0; #10;
        in = 1; #10;
        #10;
        $finish;
    end
endmodule
