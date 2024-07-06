module comb_tb;
  reg a, c;
  wire y;
  comb a1(.a(a), .c(c), .y(y));
  initial begin
    a=1'b0;
    c=1'b0;
    #4$display("a=%b, c=%b, y=%b",a, c, y);
    a=1'b0;
    c=1'b1;
    #4$display("a=%b, c=%b, y=%b",a, c, y);
    a=1'b1;
    c=1'b0;
    #4$display("a=%b, c=%b, y=%b",a, c, y);
    a=1'b1;
    c=1'b1;
    #4$display("a=%b, c=%b, y=%b",a,c,y);
  end
endmodule
