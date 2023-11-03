#include <mcs51/at89x52.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>

#include "font6x8.h"

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

int getchar_poll(void) __naked {
	__asm
		mov a, #0xff
		mov b, a
		jnb ri, nochar
		clr ri
		mov a, sbuf
		mov b, #0
nochar:
		mov dpl, a
		mov dph, b
		ret
	__endasm;
}

inline void printstr(const char *s) {
	for (; *s; s++) putchar(*s);
	
	return;
}

#ifdef GPO_PDATA
#define GPO_BASE_H	0xf0u
#define GPO_BASE_L	0x00u
#else
#define GPO_BASE	0xf000u
#endif
#define GPO_OE		6

#ifdef GPO_PDATA
__pdata __at(GPO_BASE_L) volatile uint8_t gpo[8];
#else
__xdata __at(GPO_BASE) volatile uint8_t gpo[8];
#endif
__idata const uint8_t dcol[8] = {
	0x80u, 0x40u, 0x20u, 0x10u, 0x08u, 0x04u, 0x02u, 0x01u
};
#define DISP_DATA	4
#define DISP_COL	5
__idata volatile uint8_t ddata[8];
__idata volatile uint8_t column;
__idata uint8_t OE;

#define CLEAR_GPO do { \
	gpo[GPO_OE] = 0x3fu; \
	gpo[0] = 0u; \
	gpo[1] = 0u; \
	gpo[2] = 0u; \
	gpo[3] = 0u; \
	gpo[4] = 0u; \
	gpo[5] = 0u; \
} while (0)

void init_gpo(void) {
	P1_7 = 0;
#ifdef GPO_PDATA
	P2 = GPO_BASE_H;
#endif
	CLEAR_GPO;
	
	return;
}

void clear_gpo(void) {
	CLEAR_GPO;
	
	return;
}

void init_intr(void) {
	TR0 = 0;
	ET0 = 1;
	EA  = 1;
	
	return;
}

void init_timer0(void) {
	TR0 = 0;
	TMOD = 0x01;
	TH0 = 0xf8;
	TL0 = 0x00;
	
	return;
}

void init_disp(void) {
	gpo[DISP_COL] = 0u;
	gpo[DISP_DATA] = 0u;
	OE = 0x0fu; /* 00_001111 */
	gpo[GPO_OE] = OE;
	
	for (column = 0u; column < 8u; column++)
		ddata[column] = 0u;
	column = 0u;
	
	return;
}

void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
	register uint8_t t;
		
	t = column & 7u;
	gpo[DISP_COL] = 0u;
	gpo[DISP_DATA] = ddata[t];
	gpo[DISP_COL] = dcol[t];
	column++;
	
	TR0 = 0;
	TH0 = 0xf8;
	TL0 = 0x00;
	TR0 = 1;
	
	return;
}

const static uint8_t *initial = "Sieg Heil! Sieg Heil! Viktoria! Sieg Heil! Viktoria! ";
static uint8_t buf[257];

inline void delay(void) {
	register uint8_t i, j;
	
	i = 0u;
	do {
		j = 0u;
		do {
			__asm
				nop
				nop
				nop
				nop
#if 0
				nop
				nop
				nop
				nop
#endif
			__endasm;
		} while ((++j) ^ 0x80u);
	} while ((++i) ^ 0x80u);
	
	return;
}

int scroll(uint8_t *msg) {
	register uint8_t symbol, bit;
	register uint16_t i;
	register uint8_t j;
	int r;
	
	for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
		if (!bit) {
			symbol = msg[i];
			if (!symbol) {
				i = 0u;
				symbol = msg[i];
			}
			i++;
			OE = 0x8fu;
		} else OE = 0x0fu;
		gpo[GPO_OE] = OE;
		
		if ((SKIPL > bit) || (bit > (7u - SKIPH))) continue;
		
		delay();
		
		for (j = 0u; j < 8u; j++)
			ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
		
		if ((r = getchar_poll()) >= 0) {
			r = toupper(r);
			if ((r == (int)'P') || (r == (int)' ')) {
				printstr("PAUSE\r\n");
				(void)getchar();
			} else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
		}
	}
	
	return r;
}

void main(void) {
	register uint16_t j;
	int c;
	
	init_gpo();
	clear_gpo();
	init_disp();
	init_timer0();
	init_intr();
	TR0 = 1;
	
reset:
	init_disp();
	printstr("RESET\r\n");
	(void)strncpy(buf, initial, sizeof (buf) - 1u);
	buf[sizeof (buf) - 1u] = 0u;
	
	while (1) {
		printstr("P SP L ENT S R T START MSG \"");
		printstr((char *)buf);
		printstr("\"\r\n");
		
		c = scroll(buf);
		
		while (1) {
			if (c == (int)'T') goto term;
			else if (c == (int)'R') goto reset;
			else if (c == (int)'L') {
				init_disp();
				printstr("LOAD ");
				for (j = 0u; j < (sizeof (buf) - 1u); j++) {
					c = getchar();
					(void)putchar(c);
					if ((c == (int)'\r') || (c == (int)'\n')) {
						buf[j] = 0u;
						break;
					} else buf[j] = c & 0xffu;
				}
				buf[j] = 0u;
				printstr("\r\n");
				printstr("MSG \"");
				printstr((char *)buf);
				printstr("\"\r\n");
			} else if (c == (int)'S') break;
			
			c = toupper(getchar());
		}
	}

term:	
	EA = 0;
	init_disp();
	printstr("TERM\r\n");
	(void)getchar();
	
	__asm
		orl pcon, #2
	__endasm;
}

