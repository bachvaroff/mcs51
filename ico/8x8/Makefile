synth: 8x8.bin

8x8.blif: 8x8.v ../blocks/LFSR.v ../blocks/uint64_drv.v
	yosys -q -p "read_verilog ../blocks/LFSR.v; read_verilog ../blocks/uint64_drv.v; read_verilog 8x8.v; synth_ice40 -blif 8x8.blif"

8x8.asc: 8x8.blif 8x8.pcf
	arachne-pnr -d 8k -p 8x8.pcf $< -o $@

8x8.bin: 8x8.asc
	icepack $< $@

prog_sram: 8x8.bin
	icoprog -p < 8x8.bin

prog_flash: 8x8.bin
	icoprog -f < 8x8.bin

prog_erase:
	icoprog -e

reset_halt:
	icoprog -R

reset_boot: 8x8.bin
	icoprog -b

clean:
	rm -f 8x8.blif 8x8.asc 8x8.bin

.PHONY: synth

