`timescale 1ns / 1ps


module dflip_flop_sim();
    reg D, clk;
    wire Q, Q_bar;
    integer i;

    dflip_flop ABT(D, clk, Q, Q_bar);
    initial begin
        clk = 0;
        D = 0;
        #10;
        D = 1;
        #30;
        clk = 1;
        D = 0;
        #40;
        D = 1;
        #40;
        $finish;
    end
endmodule
