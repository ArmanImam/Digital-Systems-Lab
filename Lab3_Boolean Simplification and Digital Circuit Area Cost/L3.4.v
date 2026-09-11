`timescale 1ns / 1ps

//lab 3 part 4
module lab3(
    input A, B, C, D,
    output F
    );
    
    assign F = A*B*(~C) + (~A)*C*(~D)+ (~A)*B*D + A*(~B)*C*(~D); 
    
endmodule

