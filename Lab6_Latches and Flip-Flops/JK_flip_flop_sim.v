`timescale 1ns / 1ps

module JK_flip_flop_sim();
    reg J, K, clk;
    wire Q, Q_Bar;
    integer i;

    jk_flip_flop ABT(.J(J), .K(K), .clk(clk), .Q(Q), .Q_Bar(Q_Bar));
    initial begin
        clk = 0;
        J = 0;
        K = 1;
        #10;
        J = 1;
        K = 0;
        #10;
        J = 0;
        K = 1;
        #10;
        J = 1;
        K = 1;
        #50;
        
        J = 0;
        K = 0;
        #10;
        J = 1;
        K = 0;
        #10;
        J = 0;
        K = 1;
        #10;
        J = 1;
        K = 1;
        #50;
        $finish;
    end
        always #10 clk = ~clk;

endmodule


/*

*/