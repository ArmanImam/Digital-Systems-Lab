`timescale 1ns / 1ps

//Full Adder
module Full_Adder(
    input A, B, Cin,
    output Sum, Count
    );
     wire sum0, count0, sum1, count1;
    
    Half_Adder UUT(.A(A), .B(B), .Sum(sum0), .Count(count0));
    Half_Adder AAT(.A(Cin), .B(sum0), .Sum(Sum), .Count(count1));

    assign Count = count0 + count1;

        //Also works
    //    assign sum = a ^ b ^ cin;
    //    assign carry = (a & b) | (b & cin) | (cin & a);
endmodule
