module demux_tb;
  reg i, s0, s1;
  wire y0, y1, y2, y3;
  demux d(i, s0, s1, y0, y1, y2, y3);
  
  initial begin
    s1 = 0; s0 = 0; i = 0;
    #10 s1 = 0; s0 = 0; i = 1;
    #10 s1 = 0; s0 = 1; i = 0;
    #10 s1 = 0; s0 = 1; i = 1;
    #10 s1 = 1; s0 = 0; i = 0;
    #10 s1 = 1; s0 = 0; i = 1;
    #10 s1 = 1; s0 = 1; i = 0;
    #10 s1 = 1; s0 = 1; i = 1;
  end
  
  initial begin
    $monitor("s1=%b, s0=%b, i=%b, y0=%b, y1=%b, y2=%b, y3=%b", s1, s0, i, y0, y1, y2, y3);
  end
endmodule
