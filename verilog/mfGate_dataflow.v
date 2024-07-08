module mfGate(input x,y, a,b,
              output f);
    
    wire w0, w1, w2, w3;

    /* Using an all-NAND implementation,
    for faster critical path delay and minimum area (in terms of MOSFETs).*/
    assign w0 = ~( x & ~a & ~b);
    assign w1 = ~(~x &  a &  b);
    assign w2 = ~( y & ~a &  b); // We could have used a XOR gate for a'b + ab'
    assign w3 = ~( y &  a & ~b); // , but it is inefficient in both speed and area.

    assign f  = ~(w0 & w1 & w2 & w3);

endmodule