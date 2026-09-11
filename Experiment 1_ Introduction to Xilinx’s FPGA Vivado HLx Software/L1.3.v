`timescale 1ns / 1ps

module Lab1_part3(
        input Inp1, Inp2,
        output Outp1, Outp2, Outp3, Outp4, Outp5
    );
    
    assign Outp1 = ~Inp1;
    assign Outp2 = Inp1 & Inp2;
    assign Outp3 = Inp1 | Inp2;
    assign Outp4 = ~(Inp1 & Inp2);
    assign Outp5 = Inp1 ^ Inp2;
    
endmodule
