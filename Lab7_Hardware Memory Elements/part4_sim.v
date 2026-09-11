`timescale 1ns / 1ps

module part4_sim();
    reg [3:0] addr, in;
    reg clk, en;
    wire [3:0] out;
    integer i;
    part4 TEST(.addr(addr), .in(in), .clk(clk), .en(en), .out(out));
    initial begin
        en = 0;
        clk =0;
        //Testing all addr for when en = 0;
        for(i = 0; i<2**2; i=i+1)begin
            addr = i;
            #10;
        end
        
        //Writing new values for when en=1;
        en = 1;
        #10;
        addr = 4'h0; in = 4'ha; 
        #10;
        addr = 4'h1; in = 4'hb; 
        #10;
        addr = 4'h2; in = 4'hc;
        
        //Reading what the values are currently.
        #10;
        en =0;
        addr = 4'h0; 
        #10;
        addr = 4'h1; 
        #10;
        addr = 4'h2;
        #10;
        $finish;
    end
    always #5 clk = ~clk;

endmodule
