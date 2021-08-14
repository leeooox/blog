module adder_t9c (co, sum, a, b, ci);
  output co;
  output [3:0] sum;
  input [3:0] a, b;
  input ci;
  reg co;
  reg [3:0] sum;
  reg [4:0] tmp;
  always @(a or b or ci or tmp) begin
    tmp <= #12 a + b + ci;
    {co, sum} <= tmp;
  end
endmodule

module adder_t9d (co, sum, a, b, ci);
  output co;
  output [3:0] sum;
  input [3:0] a, b;
  input ci;
  reg co;
  reg [3:0] sum;
  reg [4:0] tmp;
  always @(a or b or ci or tmp) begin
    tmp <= a + b + ci;
    {co, sum} <= #12 tmp;
  end
endmodule