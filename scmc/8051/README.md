A fully functional MCS51 system based on AT89S52 / DS80C320, featuring:
 * 16.5888MHz external oscillator (UART friendly)
 * reset controller / watchdog
 * fully buffered external bus
 * 128K external sram
 * 128K external flash (replacing the internal flash, DS80C320 ready)
 * 64K unified address space, MOVC≡MOVX, nEA = 0, 8x8K pages
 * software controlled memory map via P1.0-7
	- P1.0
		1 : 0x0000-0x1fff x (nPSEN = 0) flash
		1 : 0x0000-0x1fff rw (nRD = 0 / nWR = 0) sram (shadow copy of the flash memory)
		0 : 0x0000-0x1fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
	- P1.1
		1 : 0x2000-0x3fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
		0 : 0x12000-0x13fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
	- P1.2
		1 : 0x4000-0x5fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
		0 : 0x14000-0x15fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
	- P1.3
		1 : 0x6000-0x7fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
		0 : 0x16000-0x17fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
	- P1.4
		1 : 0x8000-0x8fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
		0 : 0x18000-0x19fff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
	- P1.5
		1 : 0xa000-0xbfff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
		0 : 0x1a000-0x1bfff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
	- P1.6
		1 : 0xc000-0xdfff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
		0 : 0x1c000-0x1dfff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
	- P1.7
		1 : 0xe000-0xffff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
		0 : 0x1e000-0x1efff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) sram
		0 : 0xf000-0xffff rwx (nRD = 0 / nWR = 0 / nPSEN = 0) IO

