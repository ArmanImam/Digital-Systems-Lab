`timescale 1ns / 1ps

module adder_sim();


parameter NUM_INP =3;
reg A,B,Cin;
reg[NUM_INP-1:0] cnt;
wire Sum, Count;
integer i;

Full_Adder AUT(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Count(Count));
initial begin
    cnt = 0;
    for(i = 0; i < 2**NUM_INP; i = i + 1)begin
        {A,B,Cin} = i;
        #10;
    end
    
end
endmodule
