module testmodule;
  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  wire [3:0] sum;
  wire cout;

  multibitadder a1(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

  initial begin
     #0 a = 4'b0011; b = 4'b0100; cin = 1'b0;
     #5 a = 4'b1100; b = 4'b0011; cin = 1'b0;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testmodule);
  end

  initial begin
    $monitor("Time=%0t, a=%b, b=%b, cin=%b, sum=%b, cout=%b", $time, a, b, cin, sum, cout);
  end
endmodule
