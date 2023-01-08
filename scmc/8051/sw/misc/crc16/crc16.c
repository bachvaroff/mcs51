#include <mcs51/at89x52.h>
#include <stdio.h>

#define ACC_INITIAL 0xffffu
#define POLY 0x1021u
#define ACC_FINAL 0x0000u

#define SADDR 0x0000u
#define FADDR 0x2000u

#define pm2_entry_cout          0x0030
#define pm2_entry_cin           0x0032

int putchar(int c) __naked {
        (void)c;
        __asm
        mov a, dpl
        ljmp pm2_entry_cout
        __endasm;
}

int getchar(void) {
        __asm
        lcall   pm2_entry_cin
	clr dph
        mov dpl, a
        __endasm;
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

void main(void) {
	unsigned char *monitor;
	unsigned int crc;
	
	ccrcb_init(&crc);
	for (monitor = (unsigned char *)SADDR; (unsigned int)monitor < FADDR; monitor++)
		ccrcb(&crc, *monitor);
	ccrcb_finish(&crc);
	
	printf("CRC16(0x%04x, 0x%04x) = 0x%04x\n\r", SADDR, FADDR, crc);
	(void)getchar();
	
	__asm
		ljmp 0
	__endasm;
}

