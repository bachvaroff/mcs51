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

#define GPO_BASE_H	0xf0u
#define GPO_BASE_L	0x00u
#define GPO_OE		6

#define EN_TR0 \
	do { TR0 = 1; } while (0)
#define DIS_TR0 \
	do { TR0 = 0; } while (0)

__pdata volatile uint8_t __at(GPO_BASE_L) gpo[8];
__idata const uint8_t dcol[8] = {
	0x01u, 0x02u, 0x04u, 0x08u, 0x10u, 0x20u, 0x40u, 0x80u
};
__idata volatile uint8_t ddata[8];
__idata volatile uint8_t column;
__idata uint8_t OE;

#define CLEAR_GPO do { \
	gpo[GPO_OE] = 0xffu; \
	gpo[0] = 0u; \
	gpo[1] = 0u; \
	gpo[2] = 0u; \
	gpo[3] = 0u; \
	gpo[4] = 0u; \
	gpo[5] = 0u; \
} while (0)

void init_gpo(void) {
	P1_7 = 0;
	P2 = GPO_BASE_H;
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
	TH0 = 0xf8;
	TL0 = 0x00;
	
	return;
}

void init_disp(void) {
	gpo[4] = 0u;
	gpo[5] = 0u;
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
	gpo[4] = ddata[t];
	gpo[5] = dcol[t];
	column++;
	
	DIS_TR0;
	TH0 = 0xf8;
	TL0 = 0x00;	
	EN_TR0;
	
	return;
}

void main(void) {
	register uint8_t i, j;
	
	init_gpo();
	clear_gpo();
	init_disp();
	
	for (j = 0u; j < 8u; j++)
		if (!j) ddata[j] = 0u;
		else ddata[j] = ddata[j - 1u] + 1u;
	
	init_timer0();
	init_intr();
	
	EN_TR0;
	
	while (1) {
		gpo[GPO_OE] = OE;
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
		} while (++i);
		
		for (j = 0u; j < 8u; j++)
			if (!j) ddata[j]++;
			else ddata[j] = ddata[j - 1u] + 1u;
		OE ^= 0x80u; /* (~)0_001111 */
	}
	
	return;
}

