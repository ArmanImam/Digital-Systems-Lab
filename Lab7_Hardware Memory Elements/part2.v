`timescale 1ns / 1ps

//Part 2
//Emulating D flip flop
//4 bit shift register
module part2(
    input [3:0] in,
    input clk, en, load,
    output reg out
    );
    reg q[3:0];
    
    always @(posedge clk)begin
        //LOAD stage
        if (load == 1) begin
            q[0] <= in[0];
            q[1] <= in[1];
            q[2] <= in[2];
            q[3] <= in[3];
        end
        //Shift Stage
        if (en == 1) begin
            q[0] <= 0;
            q[1] <= q[0];
            q[2] <= q[1];
            q[3] <= q[2];
            out <= q[3];
        end  
    end 
endmodule
        // LOAD stage
        /*
        if load == 1
        Q < D
        */    
        
        // Shift stage
         /*
         if enable == 1
         out > last bit of Q
         make Q a new updated Q
         
         Q = 1010
                           101 0
         t = 1 out=  1 Q = 010 0
         t = 2 out = 0 Q = 100 0
         */  
