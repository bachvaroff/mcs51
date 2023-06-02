#include <mcs51/at89x52.h>
#include <stdio.h>
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

typedef __xdata uint8_t *pxd_uint8_t;

#define ACC_INITIAL 0xffffu
#define POLY 0x1021u
#define ACC_FINAL 0x0000u

#define CCRCB_INIT(R) do { \
	(R) = ACC_INITIAL; \
} while (0)

#define CCRCB(CRC, OCT, BITP) do { \
	for ((BITP) = 0x80u; (BITP); (BITP) >>= 1) \
		(CRC) = (((CRC) >> 15) ^ (!!((OCT) & (BITP)))) ? (((CRC) << 1) ^ POLY) : ((CRC) << 1); \
} while (0)

#define CCRCB_FINISH(R) do { \
	(R) ^= ACC_FINAL; \
} while (0)

__idata uint8_t intr;

void int0(void) __interrupt IE0_VECTOR __using 1 {
	intr = 1u;
}

#define PLEN 0x2000u
#define TLEN 0xffffu

void main(void) {
	volatile pxd_uint8_t base, t;
	uint16_t len, off, crc;
	uint8_t bitp;
	
	intr = 0u;
	
	IT0 = 1;
	EX0 = 1;	
	EA = 1;
	
	while (!intr) {
		base = (pxd_uint8_t)0x0u;
		len = TLEN;
		printf("COMPLETE base=0x%04x ", (unsigned int)base);
		printf("len=0x%04x ", len);
		CCRCB_INIT(crc);
		for (off = 0u; off < len; off++)
			CCRCB(crc, base[off], bitp);
		CCRCB_FINISH(crc);
		printf("CRC16=0x%04x\r\n", crc);
		
		len = PLEN;
		while (1) {
			printf("PARTIAL base=0x%04x ", (unsigned int)base);
			printf("len=0x%04x ", len);
			CCRCB_INIT(crc);
			for (off = 0u; off < len; off++)
				CCRCB(crc, base[off], bitp);
			CCRCB_FINISH(crc);
			printf("CRC16=0x%04x\r\n", crc);
			
			if (intr) {
				EA = 0;
				printf("interrupted\n");
				break;
			}
			
			t = base + (len >> 1);
			if (t < base) break;
			else base = t;
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

