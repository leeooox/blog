module adder_t5 (co, sum, a, b, ci);
  output co;
  output [3:0] sum;
  input [3:0] a, b;
  input ci;
  reg [4:0] tmp;
  
  always @(a or b or ci) begin
    tmp = a + b + ci;
  end
  assign #12 {co, sum} = tmp;
endmodule