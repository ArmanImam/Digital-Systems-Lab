`timescale 1ns / 1ps

module dflip_flop(
    input D, clk, 
    output Q, Q_bar
    );
    gated_SR_latch ACT(.S(D), .R(~D), .enable(clk), .Q(Q), .Q_bar(Q_bar));
    
endmodule

/* always @(posedge clk) begin
    Q <= D;
    Q_bar = ~Q;
  end
  
*/
    