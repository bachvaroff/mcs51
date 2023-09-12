#include <mcs51/at89x52.h>
#include <stdint.h>

#define GPO_BASE_H	0xffu
#define GPO_BASE_L	0x00u
#define GPO_OE		6

#define EN_TR0 \
	do { TR0 = 1; } while (0)
#define DIS_TR0 \
	do { TR0 = 0; } while (0)

typedef __pdata uint8_t *ppd_uint8_t;

__idata volatile ppd_uint8_t gpo;

__idata const uint8_t dcol[8] = {
	0x01u, 0x02u, 0x04u, 0x08u, 0x10u, 0x20u, 0x40u, 0x80u
};
__idata volatile uint8_t ddata[8];
__idata volatile uint8_t column;

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
	P1_7 = 1;
	P2 = GPO_BASE_H;
	gpo = (ppd_uint8_t)GPO_BASE_L;
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
	TH0 = 0xa6;
	TL0 = 0x09;
	
	return;
}

void init_disp(void) {
	register uint8_t j;
	
	gpo[4] = 0u;
	gpo[5] = 0u;
	gpo[GPO_OE] = 0xcfu;
	
	column = 0u;
	
	for (j = 0u; j < 8u; j++)
		ddata[j] = 0u;
	
	return;
}

void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
	register uint8_t t;
	
	DIS_TR0;
	
	t = column & 7u;
	gpo[4] = ddata[t];
	gpo[5] = dcol[t];
	column++;
	
	TH0 = 0xa6;
	TL0 = 0x09;
	
	EN_TR0;
	
	return;
}

void main(void) {
	register uint8_t j;
	
	init_gpo();
	clear_gpo();
	init_disp();
	
	for (j = 1u; j < 8u; j++)
		ddata[j] = ddata[j - 1u] + 1u;
	
	init_timer0();
	init_intr();
	
	EN_TR0;
	
	while (1) {
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
			j++;
		} while (j);
		
		for (j = 0u; j < 8u; j++) {
			if (!j) ddata[j]++;
			else ddata[j] = ddata[j - 1u] + 1u;
		}
	}
	
	return;
}

