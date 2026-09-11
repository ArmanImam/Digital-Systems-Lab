`timescale 1ns / 1ps

//Lab 2 Part 3
module Lab2_sim();

parameter NUM_INP =5;
reg a, b, c, d, e;
reg[NUM_INP-1:0] cnt;
wire f;
integer i;

Lab2_source UUT(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f));
initial begin
    cnt = 0;
    for(i = 0; i < 2**NUM_INP; i = i + 1)begin
        {a,b,c,d,e} = i;
        #10;
    end
end
endmodule
