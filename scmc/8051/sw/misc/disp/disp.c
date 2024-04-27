#include <mcs51/at89x52.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>

#include "libpm21.h"

#include "font6x8.h"
#include "initial.h"

/* -------- GPO -------- */
#define GPO_BASE_H	0xf0u
#define GPO_BASE_L	0x00u
#define GPO_BASE	((GPO_BASE_H << 8) | GPO_BASE_L)
#define GPO_OE		6

#ifdef GPO_PDATA
__pdata __at(GPO_BASE_L) volatile uint8_t gpo[128];
#else
__xdata __at(GPO_BASE) volatile uint8_t gpo[128];
#endif

#define GPO_CLEAR do { \
	gpo[GPO_OE] = 0x3fu; \
	gpo[0] = 0u; \
	gpo[1] = 0u; \
	gpo[2] = 0u; \
	gpo[3] = 0u; \
	gpo[4] = 0u; \
	gpo[5] = 0u; \
} while (0)

#define GPO_SETOE(OEVAL) do { \
	gpo[GPO_OE] = (OEVAL); \
} while (0)

#define GPO_SETREG(REG, VAL) do { \
	gpo[(REG)] = (VAL); \
} while (0)

void gpo_init(void) {
	P1_7 = 0;
	__asm
		nop
		nop
		nop
	__endasm;
#ifdef GPO_PDATA
	P2 = GPO_BASE_H;
#endif
	GPO_CLEAR;
	
	return;
}

void gpo_clear(void) {
	GPO_CLEAR;
	
	return;
}

inline void gpo_setoe(uint8_t oe) {
	GPO_SETOE(oe);
	
	return;
}

inline void gpo_setreg(uint8_t reg, uint8_t val) {
	GPO_SETREG(reg & 0x7fu, val); /* GPO memory mapped io 0xf000 - 0xf07f */
	
	return;
}
/* -------- GPO -------- */

#define TR0_COUNT	0xf800u
#define TR1_COUNT_0	0x0000u
#define TR1_COUNT_1	0xc000u
#define DISP_DATA	4
#define DISP_COL	5

/* S b7|b6|b5|b4|b3|b2|b1|b0 D */
__idata const uint8_t dsdcol[8] = {
	0x80u, 0x40u, 0x20u, 0x10u, 0x08u, 0x04u, 0x02u, 0x01u
};
/* S b0|b1|b2|b3|b4|b5|b6|b7 D */
__idata const uint8_t sddcol[8] = {
	0x01u, 0x02u, 0x04u, 0x08u, 0x10u, 0x20u, 0x40u, 0x80u
};
__idata volatile uint8_t ddata[8];
__idata volatile uint8_t column;
__idata uint8_t OE;
__idata uint8_t inv;
const static uint8_t *initial = INITIAL_MSG;
static uint8_t buf[257];

inline void pnl(void) {
	printstr("\r\n");
	
	return;
}

inline void pmsg(void) {
	printstr("MSG \"");
	printstr((char *)buf);
	putchar((int)'"');
	
	return;
}

inline void pinv(void) {
	putchar((int)'I');
	putchar(inv ? (int)'1' : (int)'0');
	
	return;
}

inline void pinfo(void) {
	printstr("? P SP ");
	pinv();
	printstr(" L S R T");
	pnl();
	
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
	GPO_SETREG(DISP_COL, 0u);
	GPO_SETREG(DISP_DATA, 0u);
	OE = 0x0fu; /* 00_001111 */
	GPO_SETOE(OE);
	
	for (column = 0u; column < 8u; column++)
		ddata[column] = 0u;
	column = 0u;
	
	return;
}

void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
	register uint8_t t;
		
	t = column & 7u;
	GPO_SETREG(DISP_COL, 0u);
	GPO_SETREG(DISP_DATA, ddata[t]);
	GPO_SETREG(DISP_COL, dsdcol[t]);
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

int scroll(uint8_t *msg) {
	register uint8_t symbol, bit;
	register uint16_t i;
	register uint8_t j;
	int c;
	
	for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
		if (!bit) {
			symbol = msg[i];
			if (!symbol) {
				i = 0u;
				symbol = msg[i];
				OE |= 0x80u;
			} else OE |= 0x40u;
			i++;
		} else OE &= ~(0x80u | 0x40u);
		GPO_SETOE(OE);
		
		if (FONT_SKIP & sddcol[bit]) goto skip_shift;
		
		delay();
		for (j = 0u; j < 8u; j++)
			ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
		
skip_shift:
		if ((c = getchar_poll()) >= 0) {
			c = toupper(c);
			if (c == (int)' ') {
				printstr("PAUSE\r\n");
				(void)getchar();
				printstr("RESUME\r\n");
			} else if (c == (int)'?') {
				pinfo();
			} else if (c == (int)'P') {
				pmsg();
				pnl();
			} else if (c == (int)'I') {
				inv = ~inv;
				pinv();
				pnl();
			} else if ((c == (int)'T') || (c == (int)'R') || (c == (int)'L')) break;
		}
	}
	
	return c;
}

void main(void) {
	register uint16_t j;
	int c;
	
	gpo_init();
	gpo_clear();
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
	inv = 0u;
	printstr("INITIAL ");
	
	while (1) {
		pmsg();
		pnl();
		pinfo();
		
		c = scroll(buf);
		
		while (1) {
			if (c == (int)'T') goto term;
			else if (c == (int)'R') goto reset;
			else if (c == (int)'?') {
				pinfo();
			} else if (c == (int)'P') {
				pmsg();
				pnl();
			} else if (c == (int)'I') {
				inv = ~inv;
				pinv();
				pnl();
			} else if (c == (int)'L') {
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
				pnl();
				pmsg();
				pnl();
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

