module adder_t7a (co, sum, a, b, ci);
  output co;
  output [3:0] sum;
  input [3:0] a, b;
  input ci;
  reg co;
  reg [3:0] sum;
  reg [4:0] tmp;
  always @(a or b or ci) begin
    #12 tmp = a + b + ci;
      {co, sum} = tmp;
  end
endmodule

module adder_t7b (co, sum, a, b, ci);
  output co;
  output [3:0] sum;
  input [3:0] a, b;
  input ci;
  reg co;
  reg [3:0] sum;
  reg [4:0] tmp;
  always @(a or b or ci) begin
      tmp = a + b + ci;
    #12 {co, sum} = tmp;
  end
endmodule