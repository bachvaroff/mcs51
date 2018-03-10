synth: rol_carry.bin

rol_carry.blif: rol_carry.v
	yosys -q -p "synth_ice40 -blif rol_carry.blif" rol_carry.v

rol_carry.asc: rol_carry.blif rol_carry.pcf
	arachne-pnr -d 8k -p rol_carry.pcf $< -o $@

rol_carry.bin: rol_carry.asc
	icepack $< $@

prog_sram: rol_carry.bin
	icoprog -p < rol_carry.bin

prog_flash: rol_carry.bin
	icoprog -f < rol_carry.bin

prog_erase:
	icoprog -e

reset_halt:
	icoprog -R

reset_boot: rol_carry.bin
	icoprog -b

clean:
	rm rol_carry.blif rol_carry.asc rol_carry.bin

.PHONY: synth
