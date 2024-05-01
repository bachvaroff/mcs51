SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --code-size 0x2000 --xram-loc 0x4000 --xram-size 0xa000

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

all: life

life.rel: life.c ../../pm21/libpm21.h

life.ihx: life.rel ../../pm21/libpm21.lib
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

life.hex: life.ihx

life: life.hex
	cat "$@.mem"

clip: life.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

