synth: rol.bin

rol.blif: rol.v
	yosys -q -p "synth_ice40 -blif rol.blif" rol.v

rol.asc: rol.blif rol.pcf
	arachne-pnr -d 8k -p rol.pcf $< -o $@

rol.bin: rol.asc
	icepack $< $@

prog_sram: rol.bin
	icoprog -p < rol.bin

prog_flash: rol.bin
	icoprog -f < rol.bin

prog_erase:
	icoprog -e

reset_halt:
	icoprog -R

reset_boot: rol.bin
	icoprog -b

clean:
	rm rol.blif rol.asc rol.bin

.PHONY: synth
