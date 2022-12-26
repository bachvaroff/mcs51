AS=as31
ASFLAGS=-l -Fhex
COMPILE=$(AS) $(ASFLAGS)
SREC_CAT=srec_cat

%.hex: %.asm
	$(COMPILE) $<

.PRECIOUS: %.hex

%.merge: %.hex
	echo "$< -Intel" > "$@"

monitor: paulmon21.merge extra.merge
	cat $^ > merge_script
	$(SREC_CAT) @merge_script -Output $@.hex -Intel

all: pm21

clean:
	rm -f *.hex *.lst *.merge merge_script
