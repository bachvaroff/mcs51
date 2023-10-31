SDCCCFLAGS=--model-large --stack-auto -I.
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --code-size 0x2000 --xram-loc 0x4000

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c "$<"

%.ihx: *.rel
	sdcc $(ASLINKFLAGS) $^

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: life

life: life.hex
	cat "$@.mem"

clip: life.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

