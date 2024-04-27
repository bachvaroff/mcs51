SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --code-size 0x2600 --xram-loc 0x4600

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: walk

walk.ihx: walk.rel
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

walk: walk.hex
	cat "$@.mem"

clip: walk.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

