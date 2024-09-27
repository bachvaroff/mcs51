SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --code-size 0x8000 --xram-loc 0xa000

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

all: calc

sm.rel: sm.c sm.h

stack.rel: stack.c stack.h

calc.rel: calc.c sm.h stack.h ../../pm21/libpm21.h

calc.ihx: sm.rel stack.rel calc.rel ../../pm21/libpm21.lib
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

calc.hex: calc.ihx

calc: calc.hex
	cat "$@.mem"

clip: calc.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

