`timescale 1ns / 1ps
//set reset latch, 3 inputs, 2 outputs
module gated_SR_latch(
    input S, R, enable,
    output reg Q, Q_bar
    );
    always @(*) begin
        if(enable) begin
            case ({S,R})
                //2'b00: Q <= Q; <-- Redundant; Q doesn't change
                2'b01: Q <= 0;
                2'b10: Q <= 1; 
                2'b11: Q <= 1'bx;
            endcase 
        end
          Q_bar <= ~Q;
    end
endmodule
