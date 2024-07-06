module comb(a,c,y);
  input a, c;
  output y;
  wire w1,w2,w3,w4;
  not(w2,a);
  not(w3,c);
  and(w1,w2,w3);
  and(w4,a,c);
  or(y,w1,w4);
endmodule
