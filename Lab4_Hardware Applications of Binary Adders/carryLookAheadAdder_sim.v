`timescale 1ns / 1ps
module adder_sim();
parameter NUM_INP =16;

reg [7:0] A, B;
reg Cin;

wire [7:0] Sum;
wire CarryOut;


reg[NUM_INP-1:0] cnt;

CLA AST(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .CarryOut(CarryOut));
initial begin
    A = 8'b11001011;
    B = 8'b10101010;
    Cin = 1'b0;
    #10;
    A = 8'b11001011;
    B = 8'b10101010;
    Cin = 1'b1;
    #10;
end

endmodule
