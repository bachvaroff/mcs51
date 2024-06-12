ICOPROG=/usr/local/bin/icoprog

synth: led_test.bin

led_test.blif: led_test.v
	yosys -q -p "read_verilog led_test.v; synth_ice40 -blif led_test.blif"

led_test.asc: led_test.pcf led_test.blif
	arachne-pnr -d 8k -p $^ -o $@

led_test.bin: led_test.asc
	icepack $< $@

prog_sram: led_test.bin
	$(ICOPROG) -p < $<

prog_flash: led_test.bin
	$(ICOPROG) -f < $<

prog_erase:
	$(ICOPROG) -e

reset_halt:
	$(ICOPROG) -R

reset_boot:
	$(ICOPROG) -b

clean:
	rm -f led_test.blif led_test.asc led_test.bin

.PHONY: synth

