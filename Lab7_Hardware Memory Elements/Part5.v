`timescale 1ns / 1ps
//Heterogeneous Memory Module
module part5(
    input en, clk,
    input [1:0] addr,
    input [3:0] in,
    output [3:0] out
 );
    wire [1:0] newAddr;
    wire [3:0] data;
 ROM_4bit ABT(.addr(addr), .data(data));
 assign newAddr = data[1:0];
 RAM_4bit ACT(.addr(newAddr), .in(in), .clk(clk), .en(en), .out(out));

endmodule

//4x4 bit ROM
module ROM_4bit(
    input [1:0] addr,
    output reg [3:0] data
);
    reg [3:0] mem [3:0];
    initial begin
        mem[0] = 4'h3;
        mem[1] = 4'h2;
        mem[2] = 4'h1;
        mem[3] = 4'h0;
    end
    always @(*) begin
       data = mem[addr];
    end
endmodule

//4x4bit RAM
module RAM_4bit(
    input [1:0] addr, 
    input [3:0] in,
    input clk, en,
    output reg [3:0] out
    );
    reg [3:0] mem [3:0];
    initial begin
            mem[0] = 4'h0; // RAM[0] = ROM[3]
            mem[1] = 4'h1; // RAM[1] = ROM[2]
            mem[2] = 4'h2; // RAM[2] = ROM[1]
            mem[3] = 4'h3; // RAM[3] = ROM[0]
     end
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
