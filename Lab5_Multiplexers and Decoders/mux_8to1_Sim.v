`timescale 1ns / 1ps

module mux_8to1_Sim();
    reg A, B, C; // Select lines
    reg [7:0] in;
    wire F;
    integer i;
    
    mux_8to1 AUT(A,B,C,in, F);
    initial begin
      in = 8'b00001111;
      for(i = 0; i<2**3; i=i+1)begin
          {A,B,C} = i; 
          #10;  
      end
      in = 8'b11110000;
      for(i = 0; i<2**3; i=i+1)begin
          {A,B,C} = i; 
          #10;  
       end
      in = 8'b01010101;
      for(i = 0; i<2**3; i=i+1)begin
           {A,B,C} = i; 
           #10;  
      end
      in = 8'b00101100;
        for(i = 0; i<2**3; i=i+1)begin
             {A,B,C} = i; 
             #10;  
        end
    end
endmodule
