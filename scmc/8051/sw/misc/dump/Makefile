SDCCCFLAGS=--model-large --stack-auto -I.
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --xram-loc 0x8000

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c $<

.PRECIOUS: %.ihx

all: dump

dump.ihx: dump.rel
	sdcc $(ASLINKFLAGS) $^

dump: dump.ihx
	packihx "$<" > "$@.hex"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

