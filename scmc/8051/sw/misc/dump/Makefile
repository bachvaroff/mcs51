SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --xram-loc 0x4000

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: dump

dump.ihx: dump.rel
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

dump: dump.hex
	cat "$@.mem"

clip: dump.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

