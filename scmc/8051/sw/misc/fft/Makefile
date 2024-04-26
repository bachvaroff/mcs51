SDCCCFLAGS=--model-large --stack-auto -I. -I.. -I../../pm21
ASLINKFLAGS=--model-large --stack-auto -L../../pm21 -llibpm21
ASMEMFLAGS=--code-loc 0x2000 --xram-loc 0x4c00

%.rel: %.c
	sdcc -c $(SDCCCFLAGS) "$<"

%.hex: %.ihx
	packihx "$<" > "$@"

.PRECIOUS: %.ihx

all: fft

fft.ihx: fix_fft.rel main.rel
	sdcc $(ASLINKFLAGS) $(ASMEMFLAGS) $^ -o "$@"

fft: fft.hex
	cat "$@.mem"

clip: fft.hex
	xclip -selection clipboard < "$<"

clean:
	rm -f *.hex *.ihx *.lk *.mem *.lst *.map *.rel *.rst *.sym *.asm

