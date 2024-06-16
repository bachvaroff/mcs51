ICOPROG=/usr/local/bin/icoprog

synth: skip.bin

skip.blif: skipring.v skip.v
	yosys -q -p "read_verilog skipring.v; read_verilog skip.v; synth_ice40 -blif skip.blif"

skip.asc: skip.pcf skip.blif
	arachne-pnr -d 8k -p $^ -o $@

skip.bin: skip.asc
	icepack $< $@

prog_sram: skip.bin
	$(ICOPROG) -p < $<

prog_flash: skip.bin
	$(ICOPROG) -f < $<

prog_erase:
	$(ICOPROG) -e

reset_halt:
	$(ICOPROG) -R

reset_boot:
	$(ICOPROG) -b

clean:
	rm -f skip.blif skip.asc skip.bin

.PHONY: synth

