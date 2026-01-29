all: sim wave

sim:
	iverilog -o sim.vvp ../rtl/adder.v ../tb/*.v
	vvp sim.vvp

wave:
	gtkwave dump.vcd &

clean:
	rm -f sim.vvp dump.vcd