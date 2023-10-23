SDCCCFLAGS=--model-large --stack-auto -I.
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --xram-loc 0x8000

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: calc

calc.ihx: sm.rel stack.rel calc.rel
	sdcc $(ASLINKFLAGS) $^ -o "$@"

calc: calc.hex
	cat "$@.mem"

clip: calc.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

