AS=as31
ASFLAGS=-l -Fhex
COMPILE=$(AS) $(ASFLAGS)
SREC_CAT=srec_cat
VERSTR?=$(shell cat VERSTR)

%.hex: %.asm
	$(COMPILE) $<

.PRECIOUS: %.hex

%.merge: %.hex
	echo "$< -Intel" > "$@"

%.h: %.asm
	./genhdr.awk -v verstr="$(VERSTR)" "$<" > "$@"

%.equ: %.asm
	./genequ.awk -v verstr="$(VERSTR)" "$<" > "$@"

paulmon21_gen.asm: paulmon21.asm
	sed -E "s/VERSTR/$(VERSTR)/g" paulmon21.asm > paulmon21_gen.asm

all: monitor paulmon21.h paulmon21.equ

monitor: paulmon21_gen.merge extra.merge
	cat $^ > merge_script
	$(SREC_CAT) @merge_script -Output $@.hex -Intel

clean:
	rm -f *_gen.* *.hex *.lst *.h *.equ *.merge merge_script
