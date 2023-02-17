	fully functional MCS51 system based on AT89S52, featuring:
	
	fully buffered external bus
	128K external SRAM chip
	256K external flash chip in place of the internal flash (0x0000-0x1fff)
	
	64K unified address space, MOVC≡MOVX, nEA = 0, 8x8K pages
	
	8K external flash + external RAM (0x0000-0x1fff, startup flash I, shadow ram D, P1.0 = 1)
	8K unified external RAM (0x0000-0x1fff, shadow RAM I/D, P1.0 = 0)
		page 0 0x0000-0x1fff (P1.0)
	
	48K external RAM (0x2000-0xdfff low / high 6 pages, A16 = !P1.1-6, nCSRAM = !P1.1-6, nCSIO16 = P1.1-6)
		page 1 0x2000-0x3fff (P1.1)
		page 2 0x4000-0x5fff (P1.2)
		page 3 0x6000-0x7fff (P1.3)
		page 4 0x8000-0x9fff (P1.4)
		page 5 0xa000-0xbfff (P1.5)
		page 6 0xc000-0xdfff (P1.6)
	
	8K external RAM / bus IO space (0xe000-0xffff, nCSRAM = !P1.7, nCSIO77 = P1.7)
		page 7 0xe000-0xffff (P1.7)
