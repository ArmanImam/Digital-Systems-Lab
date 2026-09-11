`timescale 1ns / 1ps
//Bit Sequence Detector with Mealy Machine from PISO Register
module part2_1(
    //clk: clock, reset: async\active high, in: input to decide next state
    input wire clk, reset, in,
    output reg out //mealy-style output
);
    //State Encoding
    localparam STATE_A = 2'b00;
    localparam STATE_B = 2'b01;
    localparam STATE_C = 2'b10;
    localparam STATE_D = 2'b11;
    
    //State Registers: 
    reg [1:0] current_state, next_state;
    
    //Next STATE Combinationl Logic
     always @(*) begin
        case (current_state)
            STATE_A: begin
                if (in) next_state = STATE_B;
                else    next_state = STATE_A;
            end
            STATE_B: begin
                if (!in) next_state = STATE_A;
                else     next_state = STATE_C;
            end
            STATE_C: begin
                if (in) next_state = STATE_C;
                else    next_state = STATE_D;            
            end
            STATE_D: begin
                if (in) next_state = STATE_B;
                else     next_state = STATE_A;    
            end
            default: next_state = STATE_A;
        endcase
     end
     
     //State UPDATE
     always @(posedge clk or posedge reset) begin
        if (reset)  current_state <= STATE_A;
        else        current_state <= next_state;    
     end
     //EVERYTHING ABOVE WILL BE THE SAME FOR MOORE AND MEALY
     //Output Logic
     //MEALY: Output depends on both current state AND input
    always @(*) begin
         case (current_state)
             STATE_A: out = 1'b0;
             STATE_B: out = 1'b0;
             STATE_C: out = 1'b0;
             STATE_D: out = in ? 1'b1 : 1'b0;  // Only here!
             default: out = 1'b0;
         endcase
     end
    
endmodule
