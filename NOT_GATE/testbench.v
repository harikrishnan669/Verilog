module not_gate_tb;
  reg a;
  wire y;
  not_gate a1(.a(a), .y(y)); 
  initial begin
    $monitor($time ,"a=%b,y=%b" ,a,y);
           a=0;
           #100 a=1;   
  end 
endmodule
