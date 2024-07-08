module mux_tb;
reg [7:0]d;
reg [2:0]s;
wire y;
mux8to1 mut(.y(y),.d(d),.s(s));
initial begin
  d=8'b10110110;
  #2 s=3'b000;
  #2 s=3'b001;
  #2 s=3'b010;
  #2 s=3'b011;
  #2 s=3'b100;
  #2 s=3'b101;
  #2 s=3'b110;
  #2 s=3'b111;
end

initial begin
  $monitor("time=%g,y=%b s=%b d=%b",$time,y,s,d);
  $dumpfile("muxwave.vcd");
  $dumpvars();
end
endmodule