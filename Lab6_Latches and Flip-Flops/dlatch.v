`timescale 1ns / 1ps

module dlatch(
    input D, En,
    output Q, Q_bar
    );
    gated_SR_latch ADT(.S(D), .R(~D), .enable(En), .Q(Q), .Q_bar(Q_bar));
endmodule
