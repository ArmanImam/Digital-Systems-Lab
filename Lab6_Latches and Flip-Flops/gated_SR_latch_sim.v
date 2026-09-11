`timescale 1ns / 1ps


module gated_SR_latch_sim();
reg S, R, enable;
wire Q, Q_bar;
integer i;
gated_SR_latch AUT(S, R, enable, Q, Q_bar);
initial begin
     for(i = 0; i<2**3; i = i+1) begin
         {enable, S, R} = i;
         #10;
     end

end
endmodule
