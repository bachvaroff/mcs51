SDCCCFLAGS=--model-small -I.
ASLINKFLAGS=--code-loc 0x2000 --data-loc 0x30 --xram-loc 0x8000

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c $<

crc16.hex: crc16.rel paulmon2.rel
	sdcc $(SDCCCFLAGS) $(ASLINKFLAGS) $^
	packihx crc16.ihx > crc16.hex

all: crc16.hex

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

