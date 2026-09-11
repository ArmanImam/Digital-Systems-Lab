`timescale 1ns / 1ps

//Lab 2 Part 2
module Lab2_sim();

parameter NUM_INP =4;
reg a, b, c, d;
reg[NUM_INP-1:0] cnt;
wire y;
integer i;

Lab2_source UUT(.a(a), .b(b), .c(c), .d(d), .y(y));
initial begin
    cnt = 0;
    for(i = 0; i < 2**NUM_INP; i = i + 1)begin
        {a,b,c,d} = i;
        /*
        a = cnt[0];
        b = cnt[0];
        c = cnt[0];
        d = cnt[0];
        cnt = cnt + 1;*/
        #10;
    end
end
endmodule
