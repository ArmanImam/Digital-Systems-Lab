`timescale 1ns / 1ps

module dlatch_sim();

reg D, En;
wire Q, Q_bar;

dlatch ADT(D, En, Q, Q_bar);
initial begin
    En = 0;
    D = 0;
    #10;
    D = 1;
    #30;
    En = 1;
    D = 0;
    #40;
    D = 1;
    #40;
    $finish;   
end
endmodule
