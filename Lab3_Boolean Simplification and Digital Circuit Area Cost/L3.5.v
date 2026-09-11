`timescale 1ns / 1ps

//lab 3 part 5
module lab3(
    input A, B, C, D,
    output F
    );
    assign F = ~A*~B*C*D + ~A*B*C*D + A*~B*~C + A*~B*C*~D + A*B*~C*D;
    
endmodule
//assign F = ~A*~B*C*D + ~A*B*C*D + A*~B*~C*~D + A*~B*~C*D + A*~B*C*~D + A*B*~C*D;
//
//assign F = ~A*C*D + A*~C*D + A*~B*~D;