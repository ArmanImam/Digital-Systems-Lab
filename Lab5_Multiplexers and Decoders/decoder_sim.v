`timescale 1ns / 1ps


module decoder_2to4_Sim();
reg A2, B2;
wire [3:0] F;
integer i;

decoder_2to4 UUT(A2, B2, F);
initial begin
    for(i=0; i<2**3; i = i+1)begin
        {B2, A2} = i;
        #10;
    end
end
  
endmodule
