AS=as31
ASFLAGS=-l -Fhex
SDCCCFLAGS=--model-large --stack-auto -I.
COMPILE=$(AS) $(ASFLAGS)
SREC_CAT=srec_cat
VERSTR?=$(shell cat VERSTR)

%.hex: %.asm
	$(COMPILE) $<

%.rel: %.c
	sdcc $(SDCCCFLAGS) -c "$<" -o "$@"

.PRECIOUS: %.hex

%.merge: %.hex
	echo "$< -Intel" > "$@"

%.h: %.asm
	./genhdr.awk -v verstr="$(VERSTR)" "$<" > "$@"

%.equ: %.asm
	./genequ.awk -v verstr="$(VERSTR)" "$<" > "$@"

all: monitor paulmon21.h paulmon21.equ libpm21.lib

monitor: paulmon21_gen.merge extra.merge
	cat $^ > merge_script
	$(SREC_CAT) @merge_script -Output $@.hex -Intel

paulmon21_gen.asm: paulmon21.asm
	sed -E "s/VERSTR/$(VERSTR)/g" paulmon21.asm > paulmon21_gen.asm

libpm21.lib: sio.rel
	sdar -rc "$@" $^

clean:
	rm -f *_gen.* *.hex *.lst *.merge *.rel *.rst *.sym *.lib merge_script
	rm -f paulmon21.h paulmon21.equ sio.asm

