SDCCCFLAGS=--model-large --stack-auto -I.
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --xram-loc 0x4280

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c $<

.PRECIOUS: %.ihx

all: walk

walk.ihx: walk.rel
	sdcc $(ASLINKFLAGS) $^

walk: walk.ihx
	cat "$@.mem"
	packihx "$<" > "$@.hex"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

