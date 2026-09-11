`timescale 1ns / 1ps
module part5_sim();
    reg en, clk;
    reg [1:0] addr;
    reg [3:0] in;
    wire [3:0] out;
    
    part5 DUT(.en(en), .clk(clk), .addr(addr), .in(in), .out(out));
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        en = 0;
        addr = 2'b00;
        in = 4'h0;
        #10;
        // Read through ROM -> RAM mapping
        addr = 2'b00; en = 0;
        #10;
        addr = 2'b01; en = 0;
        #10;
        addr = 2'b10; en = 0;
        #10;
        addr = 2'b11; en = 0;
        #10;
        // Write operations
        addr = 2'b00; in = 4'hA; en = 1;
        #10;
        addr = 2'b01; in = 4'hB; en = 1;
        #10;
        addr = 2'b10; in = 4'hC; en = 1;
        #10;
        addr = 2'b11; in = 4'hD; en = 1;
        #10;
        // Read back written values
        addr = 2'b00; en = 0;
        #10;
        addr = 2'b01; en = 0;
        #10;
        addr = 2'b10; en = 0;
        #10;
        addr = 2'b11; en = 0;
        #10;
        $finish;
    end
endmodule