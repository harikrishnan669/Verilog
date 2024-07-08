module bcd_adder(a, b, carry_in, sum, carry);
  input [3:0] a, b;       
  input carry_in;         
  output [3:0] sum;       
  output carry;           
  reg [4:0] sum_temp;     
  reg [3:0] sum;          
  reg carry;              

  always @ (a or b or carry_in) begin
    sum_temp = a + b + carry_in;  
    if (sum_temp > 9) begin       
      sum_temp = sum_temp + 6;    
      carry = 1;                  
      sum = sum_temp[3:0];        
    end else begin
      carry = 0;                  
      sum = sum_temp[3:0];        
    end
  end
endmodule
