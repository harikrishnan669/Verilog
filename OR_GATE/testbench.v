module or_gate_tb;
  reg a, b;
  wire y;
  or_gate a1(.a(a), .b(b), .y(y)); 
  initial begin
    
    a = 1'b0; b = 1'b0;
    #1 $display("a=%b b=%b y=%b", a, b, y);
    
    a = 1'b0; b = 1'b1;
    #1 $display("a=%b b=%b y=%b", a, b, y);
    
    a = 1'b1; b = 1'b0;
    #1 $display("a=%b b=%b y=%b", a, b, y);
    
    a = 1'b1; b = 1'b1;
    #1 $display("a=%b b=%b y=%b", a, b, y);
  end 
endmodule
