SDCCCFLAGS=--model-large --stack-auto -I. -DGPO_PDATA
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --xram-loc 0x3000 --xram-size 0xb000

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c "$<"

%.ihx: *.rel
	sdcc $(ASLINKFLAGS) $^

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: disp

disp: disp.hex
	cat "$@.mem"

clip: disp.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

