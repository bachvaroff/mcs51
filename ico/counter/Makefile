synth: counter.bin

counter.blif: counter.v
	yosys -q -p "synth_ice40 -blif counter.blif" counter.v

counter.asc: counter.blif counter.pcf
	arachne-pnr -d 8k -p counter.pcf $< -o $@

counter.bin: counter.asc
	icepack $< $@

prog_sram: counter.bin
	icoprog -p < counter.bin

prog_flash: counter.bin
	icoprog -f < counter.bin

prog_erase:
	icoprog -e

reset_halt:
	icoprog -R

reset_boot: counter.bin
	icoprog -b

clean:
	rm counter.blif counter.asc counter.bin

.PHONY: synth
