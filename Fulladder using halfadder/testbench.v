module fulladder_tb;
  reg a, b, cin;
  wire s, cout;

  fulladder a1 (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

  initial begin
    a = 1'b0; b = 1'b0; cin = 1'b0;
    #100 a = 1'b0; b = 1'b0; cin = 1'b1;
    #100 a = 1'b0; b = 1'b1; cin = 1'b0;
    #100 a = 1'b0; b = 1'b1; cin = 1'b1;
    #100 a = 1'b1; b = 1'b0; cin = 1'b0;
    #100 a = 1'b1; b = 1'b0; cin = 1'b1;
    #100 a = 1'b1; b = 1'b1; cin = 1'b0;
    #100 a = 1'b1; b = 1'b1; cin = 1'b1;
    #100 $finish; 
  end

  initial begin
    $monitor("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
  end
endmodule
