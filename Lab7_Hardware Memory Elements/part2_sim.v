`timescale 1ns / 1ps
module part2_sim();
    reg [3:0] in;
    reg clk, en, load;
    wire out;
    
    part2 TESTONE(.in(in), .clk(clk), .en(en), .load(load), .out(out));
    initial begin
//in is 1010
        clk = 0;
        in = 4'b1010;
        en = 0;
        load = 1;
        
        #10;
        load = 0;
        en = 0;
        #5;
        en = 1;
        #25;
//in now 1111
        in = 4'b1111;
        en = 0;
        load = 1;
        
        #10;
        load = 0;
        en = 0;
        #5;
        en = 1;
        #25;
        $finish;
    end
    always #5 clk = ~clk;
endmodule
