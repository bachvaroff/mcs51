synth: LFSR.bin

LFSR.blif: LFSR.v
	yosys -q -p "synth_ice40 -blif LFSR.blif" LFSR.v

LFSR.asc: LFSR.blif LFSR.pcf
	arachne-pnr -d 8k -p LFSR.pcf $< -o $@

LFSR.bin: LFSR.asc
	icepack $< $@

prog_sram: LFSR.bin
	icoprog -p < LFSR.bin

prog_flash: LFSR.bin
	icoprog -f < LFSR.bin

prog_erase:
	icoprog -e

reset_halt:
	icoprog -R

reset_boot: LFSR.bin
	icoprog -b

clean:
	rm LFSR.blif LFSR.asc LFSR.bin

.PHONY: synth
