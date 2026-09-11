`timescale 1ns / 1ps


module lab3(
    input A, B, C,
    output F
    );
    
    assign F = (~A)*(~B)*C + (~A)*B*(~C) + A*(~B)*C + A*B;
endmodule
