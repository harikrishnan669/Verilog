module demux(i, s1, s0, y0, y1, y2, y3);
  input i, s0, s1;
  output reg y0, y1, y2, y3;

  always @(*) begin
    y0 = 0;
    y1 = 0;
    y2 = 0;
    y3 = 0;
    
    if (s1 == 0 && s0 == 0)
      y0 = i;
    else if (s1 == 0 && s0 == 1)
      y1 = i;
    else if (s1 == 1 && s0 == 0)
      y2 = i;
    else if (s1 == 1 && s0 == 1)
      y3 = i;
  end
endmodule
