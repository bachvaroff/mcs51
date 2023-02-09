.org 0x2000

reset:
	orl pcon, #2
inf_loop:
	sjmp inf_loop
