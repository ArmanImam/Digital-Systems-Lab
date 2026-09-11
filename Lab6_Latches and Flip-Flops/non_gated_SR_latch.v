`timescale 1ns / 1ps

module non_gated_SR_latch_sim();
/*module non_gated_SR_latch(
   input S, R,
   output reg Q, Q_bar
   );*/
   reg S, R;
   wire Q, Q_bar;
   integer i;
   non_gated_SR_latch UUT(S, R, Q, Q_bar);
   initial begin
        for(i = 0; i<2**2; i = i+1) begin
            {S, R} = i;
            #10;
        end
   end

endmodule
