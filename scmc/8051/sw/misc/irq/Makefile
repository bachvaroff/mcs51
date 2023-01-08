SDCCCFLAGS=--model-large -I.
ASLINKFLAGS=--model-large --code-loc 0x2000 --xram-loc 0x8000

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c $<

.PRECIOUS: %.ihx

all: irq

irq.ihx: irq.rel
	sdcc $(ASLINKFLAGS) $^

irq: irq.ihx
	packihx "$<" > "$@.hex"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

