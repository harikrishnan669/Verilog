module fulladder(a,b,s,cin,cout);
  input a,b,cin;
  output s,cout; 
  wire w1,w2,w3;
  halfadder h1(a,b,w1,w2);
  halfadder h2(w1,cin,s,w3);
  or(cout,w2,w3);
  endmodule
    
    module halfadder(a,b,s,c);
      input a, b;
      output s,c;
      xor(s,a,b);
      and(c,a,b);
    endmodule
