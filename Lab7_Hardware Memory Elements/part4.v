`timescale 1ns / 1ps
//8x4bit RAM
module part4(
    input [2:0] addr, 
    input [3:0] in,
    input clk, en,
    output reg [3:0] out
    );
    reg [7:0] mem [3:0];
    always @(posedge clk)begin
        if(en == 1)begin
            mem[addr] <= in;
            out <= in;
        end
        else begin
            out <= mem[addr];
        end
    end
    
endmodule
