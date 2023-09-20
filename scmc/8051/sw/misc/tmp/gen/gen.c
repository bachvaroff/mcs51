#include <mcs51/at89x52.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define pm2_entry_cout 0x0030
#define pm2_entry_cin 0x0032

int putchar(int c) __naked {
	(void)c;
	__asm
		mov a, dpl
		ljmp pm2_entry_cout
	__endasm;
}

int getchar(void) __naked {
	__asm
		lcall pm2_entry_cin
		mov dpl, a
		mov dph, #0
		ret
	__endasm;
}

static volatile __xdata uint8_t *OEreg = (__xdata uint8_t *)0xf006u;
__idata static uint8_t OE7;

static void flashOE(void) {
	P1_7 = 0;
	*OEreg = OE7;
	P1_7 = 1;
	OE7 ^= 0xc0u;
	
	return;
}

int main(void) {
	P1_7 = 1;		
	
	OE7 = 0x7fu;
	
	while (1) {
		if (OE7 & 0x80u) puts("11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\r\n");
		else puts("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\r\n");
		flashOE();
	}
	
	__asm
		ljmp 0
	__endasm;
	
	return 0;
}

