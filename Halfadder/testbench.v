module halfadder_tb;
  reg a, b;
  wire s, c;
  halfadder a1(.a(a), .b(b), .s(s), .c(c));

  initial begin
    a = 1'b0; b = 1'b0;
    #100 a = 1'b0; b = 1'b1;
    #100 a = 1'b1; b = 1'b0;
    #100 a = 1'b1; b = 1'b1;
  end 

  initial begin
    $monitor("a=%b, b=%b, sum=%b, carry=%b", a, b, s, c);
  end
endmodule
