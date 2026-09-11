`timescale 1ns / 1ps
//dflip flop method
module dual_edge_flip_flop_8bit(
        input [7:0] D,
        input clk,
        output reg [7:0] Q, Q_Bar
    );
    always @(clk) begin
        Q <= D;
        Q_Bar <= ~D;
    end  
endmodule
