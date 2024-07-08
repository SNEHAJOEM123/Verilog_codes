module mfGate(input x,y, a,b,
              output reg f);
    
    reg w0, w1, w2, w3;

    always @(*) begin
        /* Using an all-NAND implementation,
        for faster critical path delay and minimum area (in terms of MOSFETs).*/
        w0 = ~( x & ~a & ~b);
        w1 = ~(~x &  a &  b);
        w2 = ~( y & ~a &  b); // We could have used a XOR gate for a'b + ab'
        w3 = ~( y &  a & ~b); // , but it is inefficient in both speed and area.

        f  = ~(w0 & w1 & w2 & w3);
    end

endmodule