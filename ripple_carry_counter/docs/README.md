## This module is a 4-bit ripple counter designed in Verilog. It counts from 0 to 15 (4 bits) and wraps back to 0. 

* Negative-Edge Triggering: The flip-flops trigger on the falling edge of the clock, which allows the circuit to function as an Up-Counter.

* Reset: A reset signal is included to instantly clear the counter back to 0000 at any time.

### Project Structure:
* rippleCarryCounter.v: The top-level module connecting the 4 bits.

* tFF.v: A Toggle Flip-Flop made by feeding back the output of a D-FF.

* dFF.v: The base D-Flip-Flop module with reset logic.

* tb.v: The testbench used to simulate the clock and reset signals.

### Tools Used
* Icarus Verilog: For compiling and simulating the hardware logic.

* GTKWave: For viewing the digital waveforms and verifying the timing.

* Linux (Ubuntu): The development environment.

### How to Run
To run the simulation and view the waveforms, use the following commands in your terminal in the sim directory:

* Compile: make

* View Waveforms: gtkwave dump.vcd

* Clean: make clean