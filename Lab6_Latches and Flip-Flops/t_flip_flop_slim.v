`timescale 1ns / 1ps

module t_flip_flop_slim();
    reg T, Clk;
    wire Q, Q_Bar;
    
    t_flip_flop PARTFOUR(.T(T), .Clk(Clk), .Q(Q), .Q_Bar(Q_Bar));
    initial begin
        Clk = 0;
        T = 0; 
        #10;   
        T = 1;
        #30;
    $finish;
    end
    always #5 Clk = ~Clk;
endmodule
