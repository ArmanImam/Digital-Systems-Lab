`timescale 1ns / 1ps
//Lab5_Mux
module mux_2to1_Sim();
reg A1, B1, S;
wire F;
integer i;

mux_2to1 UUT(A1, B1, S, F);
initial begin
    for(i=0; i<2**3; i = i+1)begin
        {S,B1,A1} = i;
        #10;
    end
end
endmodule
