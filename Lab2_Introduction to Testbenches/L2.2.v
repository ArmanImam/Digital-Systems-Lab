`timescale 1ns / 1ps

//Lab 2 Part 2
module Lab2_source( 
    input a, b, c, d,
    output y
    );
    wire top, bottom;
    
    assign top = a & b;
    assign bottom = ~(c | d);
    assign y = ~(top | bottom);
    
endmodule
