`timescale 1ns / 1ps

module decoder_3to8_sim();
reg A, B, C;
wire[7:0] F;
integer i;

decoder_3to8 AAT(A, B, C, F);
initial begin
    for(i=0; i<2**3; i = i+1)begin
        {A, B, C} = i;
        #10;
    end
end

endmodule
