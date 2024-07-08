module mfGate(input x,y, a,b,
              output f);
    
    wire w0, w1, w2, w3;

    /* Using an all-NAND implementation,
    for faster critical path delay and minimum area (in terms of MOSFETs).*/
    nand(w0,  x, ~a, ~b);
    nand(w1, ~x,  a,  b);
    nand(w2,  y, ~a,  b); // We could have used a XOR gate for a'b + ab'
    nand(w3,  y,  a, ~b); // , but it is inefficient in both speed and area.

    nand(f, w0, w1, w2, w3);

endmodule