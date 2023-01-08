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

int getchar(void) {
        __asm
		lcall pm2_entry_cin
		clr dph
		mov dpl, a
        __endasm;
}

char flag;

void int0(void) __interrupt 0 __using 1 {
	flag = 0;
}

void int1(void) __interrupt 2 __using 1 {
	flag = 0;
}

void main(void) {
	flag = 1;

	EX0 = 1;
	EX1 = 1;
	EA = 1;
	
	while (flag) {
		printf("working...\n\r");
		(void)getchar();
	}
	
	printf("done\n\r");
	
	__asm
		ljmp 0
	__endasm;
}

