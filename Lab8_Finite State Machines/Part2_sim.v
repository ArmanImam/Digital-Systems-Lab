`timescale 1ns / 1ps

module part2_sim();
    reg [7:0] in;
    reg clk, reset, en, load;
    wire out;
    
    part2_3 uut (
        .in(in),
        .clk(clk),
        .reset(reset),
        .en(en),
        .load(load),
        .out(out)
    );
    
    // 10ns clock period
    always #5 clk = ~clk;
    
    initial begin
        // Initialize
        clk = 0;
        reset = 0;
        en = 0;
        load = 0;
        in = 8'b0;
        
        // TEST 1: 0 1 0 1 1 0 1 0
        reset = 1;
        #10;
        reset = 0;
        #10;
        
        in = 8'b01011010;
        load = 1;
        #10;
        load = 0;
        
        en = 1;
        #80;  // 8 bits x 10ns
        en = 0;
        
        // TEST 2: 1 1 0 1 0 0 0 0
        #10;
        reset = 1;
        #10;
        reset = 0;
        #10;
        
        in = 8'b11010000;
        load = 1;
        #10;
        load = 0;
        
        en = 1;
        #80;
        en = 0;
        
        // RESET
        #10;
        reset = 1;
        #10;
        reset = 0;
        #10;
        
        // Continue TEST 2: 1 0 1 0 1 0 1 0
        in = 8'b10101010;
        load = 1;
        #10;
        load = 0;
        
        en = 1;
        #80;
        en = 0;
        
        #20;
        $finish;
    end
    
endmodule