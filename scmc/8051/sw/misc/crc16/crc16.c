#include <8052.h>
#include "paulmon2.h"

#define ACC_INITIAL 0xffffu
#define POLY 0x1021u
#define ACC_FINAL 0x0000u

static void ccrcb_init(unsigned short *r) {
	*r = ACC_INITIAL;
	return;
}

static void ccrcb(unsigned short *r, unsigned char oct) {
	unsigned short rt;
	unsigned char bitp;
	
	for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
		rt = ((rt >> 15) ^ (!!(oct & bitp))) ? ((rt << 1) ^ POLY) : (rt << 1);
	*r = rt;
}

static void ccrcb_finish(unsigned short *r) {
	*r ^= ACC_FINAL;
}

void main(void) {
	unsigned char *monitor;
	unsigned short crc;
	
	ccrcb_init(&crc);
	for (monitor = (unsigned char *)0x0000u; (unsigned short)monitor < 0x2000u; monitor++)
		ccrcb(&crc, *monitor);
	ccrcb_finish(&crc);
	
	pm2_phex16(crc);
	pm2_newline();
	(void)pm2_cin();
	
	pm2_restart();
}

