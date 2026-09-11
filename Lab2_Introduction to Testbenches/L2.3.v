`timescale 1ns / 1ps

//Lab 2 Part 3
module Lab2_source( 
    input a, b, c, d, e,
    output f
    );
    wire or_out, and_out;
    assign or_out = ~(a & b) | c;
    assign and_out = ~c & ~(d | e);
    
    assign f = or_out ^ and_out;
    
endmodule
