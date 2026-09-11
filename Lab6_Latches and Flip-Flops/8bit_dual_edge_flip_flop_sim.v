`timescale 1ns / 1ps

module dual_edge_flip_flop_8bit_sim();
    reg[7:0] D;
    reg clk;
    wire [7:0] Q, Q_Bar;
    
    dual_edge_flip_flop_8bit PARTFIVE(.D(D), .clk(clk), .Q(Q), .Q_Bar(Q_Bar));
    initial begin
        clk = 0;
    D = 8'b00000000;
    #10 D = 8'b11110000;  // Change on posedge
    #20 D = 8'b00001111;  // Change on negedge
    #20 D = 8'b11111111;  // Change on posedge
    #20 $finish;
    end
    always #5 clk = ~clk;
    

endmodule
