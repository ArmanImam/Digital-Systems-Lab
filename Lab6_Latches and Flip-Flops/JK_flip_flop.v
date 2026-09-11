`timescale 1ns / 1ps

module jk_flip_flop(
    input J, K, clk,
    output reg Q, Q_Bar
    );
    
    initial begin
        Q = 1'b0;
        Q_Bar = 1'b1;
    end
    
    always @(posedge clk) begin
        case ({J, K})
            2'b00: Q <= Q; 
            2'b01: Q <= 0;
            2'b10: Q <= 1;
            2'b11: Q <= ~Q;
        endcase
         Q_Bar <= ~Q;
    end  
endmodule
