fully functional MCS51 system based on AT89S52
	fully buffered external bus
	128K external SRAM chip
	128K external flash chip in place of the internal flash (0x0000-0x1fff)
	
	64K unified address space, MOVC≡ MOVX, nEA = 0, 8x8K pages
	
	8K external flash
		on startup flash -> RAM shadow, flash disabled
	8K external RAM
		page 0 0x0000-0x1fff
	
	48K external RAM (0x2000-0xdfff low 6 pages, A16 = 0, default)
	48K external RAM (0x2000-0xdfff high 6 pages, A16 = 1, control signals)
		page 1 0x2000-0x3fff
		page 2 0x4000-0x5fff
		page 3 0x6000-0x7fff
		page 4 0x8000-0x9fff
		page 5 0xa000-0xbfff
		page 6 0xc000-0xdfff
	
	8K external RAM (0xe000-0xffff, default)
	8K bus IO space (0xe000-0xffff, control signals)
		page 7
