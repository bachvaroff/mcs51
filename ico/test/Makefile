synth: test.bin

test.blif: test.v
	yosys -q -p "read_verilog test.v; synth_ice40 -blif test.blif"

test.asc: test.blif test.pcf
	arachne-pnr -d 8k -p test.pcf $< -o $@

test.bin: test.asc
	icepack $< $@

prog_sram: test.bin
	icoprog -p < test.bin

prog_flash: test.bin
	icoprog -f < test.bin

prog_erase:
	icoprog -e

reset_halt:
	icoprog -R

reset_boot: test.bin
	icoprog -b

clean:
	rm -f test.blif test.asc test.bin

.PHONY: synth
