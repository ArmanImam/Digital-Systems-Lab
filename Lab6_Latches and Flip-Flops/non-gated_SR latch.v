`timescale 1ns / 1ps

module non_gated_SR_latch(
   input S, R,
   output reg Q, Q_bar
   );
   always @(*) begin
    case({S, R})
      //2'b00: Q <= Q; <--- Redundant, 
      2'b01: Q <= 0;
      2'b10: Q <= 1;
      2'b11: Q <= 1'bx;    
      endcase
      Q_bar <= ~Q;
   end

endmodule