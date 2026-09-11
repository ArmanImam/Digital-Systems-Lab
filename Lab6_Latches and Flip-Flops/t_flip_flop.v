`timescale 1ns / 1ps

module t_flip_flop(
    input T, Clk,
    output Q, Q_Bar
    );
    jk_flip_flop AACT(.J(T), .K(T), .clk(Clk), .Q(Q), .Q_Bar(Q_Bar));
endmodule
