MAX_ALLOCS_PER_NODE=3000
SDCC=sdcc
SDCCFLAGS=--fverbose-asm --std-c99 --max-allocs-per-node $(MAX_ALLOCS_PER_NODE) --opt-code-speed -I. -I.. -I../.. -I../../..

all: dhrystone.hex

dhrystone.hex: dhrystone.ihx
	packihx "$<" > "$@"

dhrystone.ihx: dhry_1.rel dhry_2.rel portme.rel
	$(SDCC) -mmcs51 --model-large --code-loc 0x2000 --xram-loc 0x8000 *.rel -o dhrystone.ihx

%.rel: %.c dhry.h
	$(SDCC) -mmcs51 --model-large --code-loc 0x2000 --xram-loc 0x8000 -c -DNOSTRUCTASSIGN $(SDCCFLAGS) $<

clean:
	rm -rf *.rel *.map *.lst *.noi *.lk *.lnk *.sym *.asm *.ihx *.o *.rst *.cdb *.mem


