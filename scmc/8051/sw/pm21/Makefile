AS=as31
ASFLAGS=-l -Fhex
COMPILE=$(AS) $(ASFLAGS)
SREC_CAT=srec_cat

%.hex: %.asm
	$(COMPILE) $<

.PRECIOUS: %.hex

%.merge: %.hex
	echo "$< -Intel" > "$@"

%.h: %.asm
	./genhdr.awk < "$<" > "$@"

%.equ: %.asm
	./genequ.awk < "$<" > "$@"

all: monitor paulmon21.h paulmon21.equ

monitor: paulmon21.merge extra.merge
	cat $^ > merge_script
	$(SREC_CAT) @merge_script -Output $@.hex -Intel

clean:
	rm -f *.hex *.lst *.h *.equ *.merge merge_script
