SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21 -DGPO_PDATA
# SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --code-size 0x6000 --xram-loc 0x8000 --xram-size 0x5000

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

all: disp

disp.rel: disp.c ../../pm21/libpm21.h

disp.ihx: disp.rel ../../pm21/libpm21.lib
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

disp.hex: disp.ihx

disp: disp.hex
	cat "$@.mem"

clip: disp.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

