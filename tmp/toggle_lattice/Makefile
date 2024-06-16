ICOPROG=/usr/local/bin/icoprog

synth: toggle.bin

toggle.blif: toggle.v top.v
	yosys -q -p "read_verilog toggle.v; read_verilog top.v; synth_ice40 -blif toggle.blif"

toggle.asc: toggle.pcf toggle.blif
	arachne-pnr -d 8k -p $^ -o $@

toggle.bin: toggle.asc
	icepack $< $@

prog_sram: toggle.bin
	$(ICOPROG) -p < $<

prog_flash: toggle.bin
	$(ICOPROG) -f < $<

prog_erase:
	$(ICOPROG) -e

reset_halt:
	$(ICOPROG) -R

reset_boot:
	$(ICOPROG) -b

clean:
	rm -f toggle.blif toggle.asc toggle.bin

.PHONY: synth

