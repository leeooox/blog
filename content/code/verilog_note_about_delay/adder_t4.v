module adder_t4 (co, sum, a, b, ci);
  output co;
  output [3:0] sum;
  input [3:0] a, b;
  input ci;
  
  assign #12 {co, sum} = a + b + ci;
endmodule