`timescale 1ns / 1ps


module lab3_sim();

parameter NUM_INP =3;
reg A,B,C;
reg[NUM_INP-1:0] cnt;
wire F;
integer i;

lab3 UUT(.A(A), .B(B), .C(C), .F(F));
initial begin
    cnt = 0;
    for(i = 0; i < 2**NUM_INP; i = i + 1)begin
        {A,B,C} = i;
        #10;
    end
end
endmodule
