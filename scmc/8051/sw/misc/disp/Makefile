SDCCCFLAGS=--model-large --stack-auto -I. -DGPO_PDATA
#SDCCCFLAGS=--model-large --stack-auto -I.
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --code-size 0x6000 --xram-loc 0x8000 --xram-size 0x5000

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

