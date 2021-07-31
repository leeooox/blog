VFLAGS=-DSIM -g2012

all: tb_adder_t1
	vvp tb_adder_t1

tb_adder_t1: adder_t1.v tb_adder_t1.v
	iverilog $(VFLAGS) -o $@ $^
