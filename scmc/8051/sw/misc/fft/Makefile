SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../..
ASLINKFLAGS=--model-large --stack-auto --code-loc 0x2000 --xram-loc 0x4c00

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c $<

.PRECIOUS: %.ihx

all: fft

fft.ihx: fix_fft.rel main.rel
	sdcc $(ASLINKFLAGS) $^ -o "$@"

fft: fft.ihx
	cat "$@.mem"
	packihx "$<" > "$@.hex"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

