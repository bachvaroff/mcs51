#include <mcs51/at89x52.h>
#include <stdio.h>

#define ACC_INITIAL 0xffffu
#define POLY 0x1021u
#define ACC_FINAL 0x0000u

#define pm2_entry_cout 0x0030
#define pm2_entry_cin 0x0032

int putchar(int c) __naked {
        (void)c;
        __asm
		mov a, dpl
		ljmp pm2_entry_cout
        __endasm;
}

int getchar(void) {
        __asm
		lcall pm2_entry_cin
		clr dph
		mov dpl, a
        __endasm;
}

int intr;

void int0(void) __interrupt 0 __using 1 {
	intr = 1;
}

static void ccrcb_init(unsigned int *r) {
	*r = ACC_INITIAL;
	return;
}

static void ccrcb(unsigned int *r, unsigned char oct) {
	unsigned int rt;
	unsigned char bitp;
	
	for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
		rt = ((rt >> 15) ^ (!!(oct & bitp))) ? ((rt << 1) ^ POLY) : (rt << 1);
	*r = rt;
}

static void ccrcb_finish(unsigned int *r) {
	*r ^= ACC_FINAL;
}

static unsigned int calc_crc(unsigned char *base, unsigned int len) {
	unsigned int off, crc;
	
	ccrcb_init(&crc);
	for (off = 0u; off < len; off++)
		ccrcb(&crc, base[off]);
	ccrcb_finish(&crc);
	
	return crc;
}

#define BLEN 0x2000u

void main(void) {
	unsigned char *base;
	unsigned int len = BLEN;
	unsigned int crc;
	
	intr = 0;
	
	IT0 = 1;
	EX0 = 1;
	EA = 1;
	
	for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
		printf("base=0x%04x ", (unsigned int)base);
		printf("len=0x%04x ", len);
		crc = calc_crc(base, len);
		printf("CRC16=0x%04x\n\r", crc);
		
		if (intr) {
			printf("interrupted\n");
			break;
		}
	}

#ifndef EXTRESET
	__asm
		ljmp 0
	__endasm;
#else
/* trigger external reset */
	PCON |= 2;
#endif
}

