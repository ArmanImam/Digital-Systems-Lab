`timescale 1ns / 1ps


module decoder_3to8(
    input A, B, C,
    output reg [7:0] F
);
    always @(*)begin
        F[0] = ~A & B & C;
        F[1] =  A & ~B & ~C;
        F[2] = ~A & ~B & ~C;
        F[3] = A & ~B & C;
        F[4] = A & B & C;
        F[5] = ~A & B & ~C;
        F[6] = ~A & ~B & C;
        F[7] = A & B & ~C;
    end
endmodule

/*
       //F = 8'b00000000;
    case ({A, B, C})
        3'b000: F[2] = 1;
        3'b001: F[6] = 1;
        3'b010: F[5] = 1;
        3'b011: F[0] = 1;
        3'b100: F[1] = 1;
        3'b101: F[3] = 1;
        3'b110: F[7] = 1;
        3'b110: F[4] = 1;
    endcase */