SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --xram-loc 0x4000

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: crc16

crc16.ihx: crc16.rel
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

crc16: crc16.hex
	cat "$@.mem"

clip: crc16.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

