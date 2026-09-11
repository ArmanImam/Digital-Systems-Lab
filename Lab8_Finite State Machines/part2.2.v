`timescale 1ns / 1ps
//PISO Shift Register 8-bit
//8 bit shift register
module part2_2(
    input [7:0] in,
    input clk, en, load,
    output reg out
    );
    reg q[7:0];
    
    always @(posedge clk)begin
        //LOAD stage
        if (load == 1) begin
            q[0] <= in[0];
            q[1] <= in[1];
            q[2] <= in[2];
            q[3] <= in[3];
            q[4] <= in[4];
            q[5] <= in[5];
            q[6] <= in[6];
            q[7] <= in[7];
        end
        //Shift Stage
        if (en == 1) begin
            q[0] <= 0;
            q[1] <= q[0];
            q[2] <= q[1];
            q[3] <= q[2];
            q[4] <= q[3];
            q[5] <= q[4];
            q[6] <= q[5];
            q[7] <= q[6];
            out <= q[7];
        end  
    end 
endmodule
