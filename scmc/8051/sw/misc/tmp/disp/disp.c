#include <mcs51/at89x52.h>
#include <stdint.h>

#define GPO_BASE_H	0xffu
#define GPO_BASE_L	0x00u
#define GPO_OE		6

typedef __pdata uint8_t *ppd_uint8_t;

__idata volatile ppd_uint8_t gpo;

void init_gpo(void) {
	P1_7 = 1;
	P2 = GPO_BASE_H;
	gpo = (ppd_uint8_t)GPO_BASE_L;
	
	return;
}

void clear_gpo(void) {
	gpo[GPO_OE] = 0xffu;
	gpo[0] = 0u;
	gpo[1] = 0u;
	gpo[2] = 0u;
	gpo[3] = 0u;
	gpo[4] = 0u;
	gpo[5] = 0u;
	
	return;
}

void init_intr(void) {
	ET0 = 1;
	EA  = 1;
	
	return;
}

void init_timer0(void) {
	TMOD = 0x01;
	TH0 = 0x4C;
	TL0 = 0x00;
	TR0 = 1;
	
	return;
}

__idata volatile uint8_t ddata[8];
__idata uint8_t column;

void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
	register uint8_t t;
	
	t = column & 7u;
	gpo[4] = ddata[t];
	gpo[5] = 1u << t;
	column++;
	
	TH0 = 0x4C;
	TL0 = 0x00;
	
	return;
}

void main(void) {
	register uint8_t j;
	
	init_gpo();
	clear_gpo();
		
	gpo[GPO_OE] = 0xcfu;
	column = 0u;
	
	for (j = 0u; j < 8u; j++)
		ddata[j] = 0u;	
	init_timer0();
	
	init_intr();
	
	while (1) {
		for (j = 0u; j < 7; j++) {
			ddata[j]++;
			if (ddata[j]) break;
		}
	}
	
	return;
}

