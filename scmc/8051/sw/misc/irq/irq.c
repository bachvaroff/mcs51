#include <mcs51/at89x52.h>
#include <stdio.h>

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
		clr dph
		mov dpl, a
	__endasm;
}

int intr;

void int0(void) __interrupt 0 __using 1 {
	intr = 0;
}

void int1(void) __interrupt 2 __using 1 {
	intr = 1;
}

void main(void) {
	int i;
	
	intr = -1;
	
/* INT0, INT1 trigger on falling edge */
	IT0 = 1;
	IT1 = 1;
/* enable INT0, INT1 */
	EX0 = 1;
	EX1 = 1;
	EA = 1;
	
	for (i = 0; ; i++) {
		if (intr >= 0) break;
		printf("working %d...\n\r", i);
	}
	
	EA = 0;
	printf("got interrupt %d\n\r", intr);
	(void)getchar();
	
	__asm
		ljmp 0
	__endasm;
}

