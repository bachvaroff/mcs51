#include <mcs51/at89x52.h>
#include "paulmon21.h"
#include "sio.h"

static const char digits[16] = {
	'0', '1', '2', '3', '4', '5', '6', '7',
	'8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
};

int putchar(int c) __naked {
	(void)c;
	__asm
		push acc
		mov a, dpl
		lcall pm2_entry_cout
		pop acc
		ret
	__endasm;
}

int getchar(void) __naked {
	__asm
		push acc
		lcall pm2_entry_cin
		mov dpl, a
		mov dph, #0
		pop acc
		ret
	__endasm;
}

int getchar_poll(void) __naked {
	__asm
		push acc
		push b
		mov a, #0xff
		mov b, a
		lcall pm2_entry_cinpoll
		jc nochar
		mov b, #0x00
nochar:
		mov dpl, a
		mov dph, b
		pop b
		pop acc
		ret
	__endasm;
}

void printstr(const char *s) {
	for (; *s; s++) putchar((int)*s);
	
	return;
}

void print8bin(unsigned char d) {
	unsigned char mask;
	
	for (mask = 0x80u; mask; mask >>= 1)
		(void)putchar((d & mask) ? (int)'1' : (int)'0');
	
	return;
}

void print16bin(unsigned int d) {
	unsigned int mask;
	
	for (mask = 0x8000u; mask; mask >>= 1)
		(void)putchar((d & mask) ? (int)'1' : (int)'0');
	
	return;
}

void print32bin(unsigned long d) {
	unsigned long mask;
	
	for (mask = 0x80000000lu; mask; mask >>= 1)
		(void)putchar((d & mask) ? (int)'1' : (int)'0');
	
	return;
}

void print8x(unsigned char d) {
	putchar(digits[(d >> 4) & 0xf]);
	putchar(digits[d & 0xf]);
	
	return;
}

void print16x(unsigned int d) {
	putchar(digits[(d >> 12) & 0xf]);
	putchar(digits[(d >> 8) & 0xf]);
	putchar(digits[(d >> 4) & 0xf]);
	putchar(digits[d & 0xf]);
	
	return;
}

void print32x(unsigned long d) {
	putchar(digits[(d >> 28) & 0xf]);
	putchar(digits[(d >> 24) & 0xf]);
	putchar(digits[(d >> 20) & 0xf]);
	putchar(digits[(d >> 16) & 0xf]);
	putchar(digits[(d >> 12) & 0xf]);
	putchar(digits[(d >> 8) & 0xf]);
	putchar(digits[(d >> 4) & 0xf]);
	putchar(digits[d & 0xf]);
	
	return;
}

