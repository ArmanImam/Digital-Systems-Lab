`timescale 1ns / 1ps

module part3_sim();
    reg [2:0] addr;
    wire [7:0] data;
    integer i;
    
    part3 TEST2(.addr(addr), .data(data));
    initial begin
        for(i=0; i<2**3; i=i+1)begin
        {addr} = i;
        #5;
        end   
        $finish;
    end
endmodule
