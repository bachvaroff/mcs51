synth: 8seg.bin

8seg.blif: 8seg.v LFSR.v sixteen_bit_drv.v
	yosys -q -p "read_verilog LFSR.v; read_verilog sixteen_bit_drv.v; read_verilog 8seg.v; synth_ice40 -blif 8seg.blif"

8seg.asc: 8seg.blif 8seg.pcf
	arachne-pnr -d 8k -p 8seg.pcf $< -o $@

8seg.bin: 8seg.asc
	icepack $< $@

prog_sram: 8seg.bin
	icoprog -p < 8seg.bin

prog_flash: 8seg.bin
	icoprog -f < 8seg.bin

prog_erase:
	icoprog -e

reset_halt:
	icoprog -R

reset_boot: 8seg.bin
	icoprog -b

clean:
	rm -f 8seg.blif 8seg.asc 8seg.bin

.PHONY: synth
