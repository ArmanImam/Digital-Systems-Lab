`timescale 1ns / 1ps
 //8x8bit ROM
module part3(
    input [2:0] addr,
    output reg [7:0] data
    );
    reg [7:0] mem [7:0];

    initial begin
        mem[0] = 8'h32;
        mem[1] = 8'h84;
        mem[2] = 8'h21;
        mem[3] = 8'h53;
        mem[4] = 8'h83;
        mem[5] = 8'h98;
        mem[6] = 8'h72;
        mem[7] = 8'h11;
    end
     always @(*) begin
        data = mem[addr];
     end
endmodule
