SDCCCFLAGS=--model-large --stack-auto -I.
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --xram-loc 0x4000

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c "$<"

%.ihx: *.rel
	sdcc $(ASLINKFLAGS) $^

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: crc16

crc16: crc16.hex
	cat "$@.mem"

clip: crc16.hex
	xclip < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

