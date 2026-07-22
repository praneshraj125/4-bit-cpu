# ==============================================================================
#  4-bit custom-ISA CPU project
#

# ==============================================================================

RTL   = rtl/alu_4bit.v rtl/register_file_4bit.v rtl/control_unit_4bit.v \
        rtl/memory_4bit.v rtl/cpu_4bit.v
TB    = tb/cpu_4bit_tb.v
BUILD = sim/sim.out
VCD   = sim/cpu_4bit.vcd

.PHONY: sim wave clean

sim: $(RTL) $(TB)
	mkdir -p sim
	iverilog -g2005 -o $(BUILD) $(RTL) $(TB)
	cd sim && vvp sim.out

wave: sim
	gtkwave $(VCD) &

clean:
	rm -f sim/sim.out sim/*.vcd
