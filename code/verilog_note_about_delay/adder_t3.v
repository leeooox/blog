module adder_t3 (co, sum, a, b, ci); //RHS Nonblocking Assignment
  output co;
  output [3:0] sum;
  input [3:0] a, b;
  input ci;
  reg co;
  reg [3:0] sum;
  
  always @(a or b or ci)
    {co, sum} <= #12 a + b + ci;
endmodule