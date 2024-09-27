SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --xram-loc 0x4000

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

all: dump

dump.rel: dump.c ../../pm21/libpm21.h

dump.ihx: dump.rel ../../pm21/libpm21.lib
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

dump.hex: dump.ihx

dump: dump.hex
	cat "$@.mem"

clip: dump.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

