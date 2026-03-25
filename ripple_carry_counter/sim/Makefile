RTL = ../rtl/*.v
TB  = ../tb/*.v

all: sim wave

sim:
	iverilog -o sim.vvp $(RTL) $(TB)
	vvp sim.vvp

wave:
	gtkwave dump.vcd &

clean:
	rm -f sim.vvp dump.vcd