module nor_gate_tb;
  reg a, b;
  wire y;
  nor_gate a1 (.a(a), .b(b), .y(y));

  initial begin
    $monitor(" a=%b, b=%b, y=%b", a, b, y);
    a = 0; b = 0;
    #100 a = 0; b = 1;
    #100 a = 1; b = 0;
    #100 a = 1; b = 1;
  end
endmodule
