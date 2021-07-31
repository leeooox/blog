`timescale 1ns / 100ps

module tb_adder_t1;

reg [3:0] a;
reg [3:0] b;
reg ci;
wire [3:0] sum;
wire co;

adder_t1 u_adder_t1 (
    .co(co), 
    .sum(sum), 
    .a(a), 
    .b(b), 
    .ci(ci)
    );

initial begin
    #0 a = 4'h0;
    b = 4'h0;
    ci = 1'b0;
    #15 a = 4'hA;
    #2  b = 4'h3;
    #2  a = 4'h2;
    #2  a = 4'hF;
    #3  ci = 4'h1;

end


initial begin
  $dumpfile("tb_adder_t1.vcd");
  $dumpvars(0,tb_adder_t1); 
  #36 $finish;
end

endmodule