`timescale 1ns / 1ps
//MEALY MACHINE
module Part1_2(
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
                if (!in) next_state = STATE_B;
                else     next_state = STATE_C;
            end
            STATE_C: begin
                if (in) next_state = STATE_D;
                else    next_state = STATE_A;            
            end
            STATE_D: begin
                if (in) next_state = STATE_A;
                else     next_state = STATE_B;    
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
            STATE_A: begin
               out = 1'b1;
            end
            STATE_B: begin
                if (in) out = 1'b0;
                else    out = 1'b1;
            end
            STATE_C: begin
                if (in) out = 1'b0;
                else    out = 1'b1;
            end
            STATE_D: begin
                out = 1'b1;
            end
            default: out = 1'b0;
        endcase
     end
        
endmodule
