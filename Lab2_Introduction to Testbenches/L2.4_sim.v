`timescale 1ns / 1ps

//Lab 2 Part 4
module Lab2_sim();

parameter NUM_INP =3;
reg A,B,C;
reg[NUM_INP-1:0] cnt;
wire X,Y;
integer i;

logic_top UUT(.A(A), .B(B), .C(C), .X(X), .Y(Y));
initial begin
    cnt = 0;
    for(i = 0; i < 2**NUM_INP; i = i + 1)begin
        {A,B,C} = i;
        #10;
    end
end
endmodule
