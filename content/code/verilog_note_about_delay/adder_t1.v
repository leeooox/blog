`timescale 1ns / 100ps


module adder_t1 (co, sum, a, b, ci);
  output co;
  output [3:0] sum;
  input [3:0] a, b;
  input ci;
  reg co;
  reg [3:0] sum;
  always @(a or b or ci)
    #12 {co, sum} = a + b + ci;
endmodule