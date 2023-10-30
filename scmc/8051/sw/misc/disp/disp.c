#include <mcs51/at89x52.h>
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

#ifdef GPO_PDATA
#define GPO_BASE_H	0xf0u
#define GPO_BASE_L	0x00u
#else
#define GPO_BASE	0xf000u
#endif
#define GPO_OE		6

#define EN_TR0 \
	do { TR0 = 1; } while (0)
#define DIS_TR0 \
	do { TR0 = 0; } while (0)

#ifdef GPO_PDATA
__pdata __at(GPO_BASE_L) volatile uint8_t gpo[8];
#else
__xdata __at(GPO_BASE) volatile uint8_t gpo[8];
#endif
__idata const uint8_t dcol[8] = {
	0x01u, 0x02u, 0x04u, 0x08u, 0x10u, 0x20u, 0x40u, 0x80u
};
#define DISP_COL	4
#define DISP_DATA	5
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
	DIS_TR0;
	ET0 = 1;
	EA  = 1;
	
	return;
}

void init_timer0(void) {
	DIS_TR0;
	TMOD = 0x01;
	TH0 = 0xfb;
	TL0 = 0x00;
	
	return;
}

void init_disp(void) {
	gpo[DISP_COL] = 0u;
	gpo[DISP_DATA] = 0u;
	
	OE = 0x0fu; /* 00_001111 */
	gpo[GPO_OE] = OE; /* 00_001111 */
		
	for (column = 0u; column < 8u; column++)
		ddata[column] = 0u;
	
	column = 0u;
	
	return;
}

void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
	register uint8_t t;
		
	t = column & 7u;
	gpo[DISP_COL] = gpo[DISP_DATA] = 0u;
	gpo[DISP_COL] = dcol[t];
	gpo[DISP_DATA] = ddata[t];
	column++;
	
	DIS_TR0;
	TH0 = 0xfb;
	TL0 = 0x00;
	EN_TR0;
	
	return;
}

inline uint8_t bin2gray(uint8_t bin) {
	return bin ^ (bin >> 1);
}

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
				nop
				nop
				nop
				nop
			__endasm;
		} while (++j);
	} while ((++i) ^ 0x80u);
	
	return;
}

void main(void) {
	register uint8_t counter;
	register uint8_t j;
	
	init_gpo();
	clear_gpo();
	init_disp();
	
	counter = 0u;
	for (j = 0u; j < 8u; j++)
		ddata[j] = bin2gray(counter - j);
	
	init_timer0();
	init_intr();
	
	EN_TR0;
	
	while (1) {
		OE = (counter << 6) | 0x0fu;
		gpo[GPO_OE] = OE;
		
		delay();
		
		counter++;
		for (j = 0u; j < 8u; j++)
			ddata[j] = bin2gray(counter - j);
	}
	
	__asm
		orl pcon, #2
	__endasm;
}

