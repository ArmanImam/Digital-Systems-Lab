`timescale 1ns / 1ps

module Lab1_part1(
    input Inp_1, Inp_2,
    output Outp
    );
    
    assign Outp = Inp_1 & Inp_2;    // AND

    assign Outp = ~(Inp_1 & Inp_2)  // NAND

    assign Outp = Inp_1 | Inp_2     //OR

    assign Outp = Inp_1 ^ Inp_2     //XOR
    
    assign Outp = ~Inp_1            //NOT

endmodule

