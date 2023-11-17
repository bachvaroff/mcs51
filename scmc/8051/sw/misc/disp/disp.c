#include <mcs51/at89x52.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>

#include "font6x8.h"

#include "initial.h"

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

#define TR0_COUNT	0xf800u
#define TR1_COUNT_0	0x0000u
#define TR1_COUNT_1	0xc000u

#define GPO_BASE_H	0xf0u
#define GPO_BASE_L	0x00u
#define GPO_BASE	((GPO_BASE_H << 8) | GPO_BASE_L)
#define GPO_OE		6

#ifdef GPO_PDATA
__pdata __at(GPO_BASE_L) volatile uint8_t gpo[8];
#else
__xdata __at(GPO_BASE) volatile uint8_t gpo[8];
#endif
/* S b7|b6|b5|b4|b3|b2|b1|b0 D */
__idata const uint8_t dsdcol[8] = {
	0x80u, 0x40u, 0x20u, 0x10u, 0x08u, 0x04u, 0x02u, 0x01u
};
/* S b0|b1|b2|b3|b4|b5|b6|b7 D */
__idata const uint8_t sddcol[8] = {
	0x01u, 0x02u, 0x04u, 0x08u, 0x10u, 0x20u, 0x40u, 0x80u
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
	TR1 = 0;
	ET0 = 1;
	ET1 = 0;
	EA = 1;
	
	return;
}

void init_timer0(void) {
	TR0 = 0;
	TMOD |= 0x01;
	TH0 = TR0_COUNT >> 8;
	TL0 = TR0_COUNT & 0xffu;
	
	return;
}

void init_timer1(void) {
	TR1 = 0;
	TMOD |= 0x10;
	TH1 = TR1_COUNT_0 >> 8;
	TL1 = TR1_COUNT_0 & 0xffu;
	
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
	gpo[DISP_COL] = dsdcol[t];
	column++;
	
	TR0 = 0;
	TH0 = TR0_COUNT >> 8;
	TL0 = TR0_COUNT & 0xffu;
	TR0 = 1;
	
	return;
}

inline void delay(void) {
	TR1 = 0;
	TH1 = TR1_COUNT_0 >> 8;
	TL1 = TR1_COUNT_0 & 0xffu;	
	TF1 = 0;
	TR1 = 1;
	while (!TF1);
	TF1 = 0;
	
	TR1 = 0;
	TH1 = TR1_COUNT_1 >> 8;
	TL1 = TR1_COUNT_1 & 0xffu;	
	TF1 = 0;
	TR1 = 1;
	while (!TF1);
	TF1 = 0;
	
	TR1 = 0;
	
	return;
}

const static uint8_t *initial = INITIAL_MSG;
static uint8_t buf[257];

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
		
		if (FONT_SKIP & sddcol[bit]) goto skip_shift;
		
		delay();
		for (j = 0u; j < 8u; j++)
			ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
		
skip_shift:
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
	init_timer1();
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
	
	PCON |= 2;
	
	return;
}

