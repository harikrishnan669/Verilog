module bcd_adder_tb;
  reg [3:0] a;
  reg [3:0] b;
  reg carry_in;
  wire [3:0] sum;
  wire carry;

  bcd_adder a1(
    .a(a), 
    .b(b), 
    .carry_in(carry_in), 
    .sum(sum), 
    .carry(carry)
  );

  initial begin
    #0 a = 4'b0011; b = 4'b0100; carry_in = 1'b0;
    #5 a = 4'b1110; b = 4'b0011; carry_in = 1'b0;
    #5 a = 4'b0111; b = 4'b0111; carry_in = 1'b1;
    #5 a = 4'b1001; b = 4'b0111; carry_in = 1'b1;
    #5 a = 4'b1101; b = 4'b0111; carry_in = 1'b1;
    #5 a = 4'b1111; b = 4'b0110; carry_in = 1'b1;
  end

  initial begin
    $monitor("a=%b, b=%b, carry_in=%b, sum=%b, carry=%b", a, b, carry_in, sum, carry);
  end
endmodule
