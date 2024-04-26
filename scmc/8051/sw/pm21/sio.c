#include <mcs51/at89x52.h>
#include "paulmon21.h"
#include "sio.h"

int putchar(int c) __naked {
	(void)c;
	__asm
		push acc
		mov a, dpl
		lcall pm2_entry_cout
		pop acc
		ret
	__endasm;
}

int getchar(void) __naked {
	__asm
		push acc
		lcall pm2_entry_cin
		mov dpl, a
		mov dph, #0
		pop acc
		ret
	__endasm;
}

int getchar_poll(void) __naked {
	__asm
		push acc
		push b
		mov a, #0xff
		mov b, a
		lcall pm2_entry_cinpoll
		jc nochar
		mov b, #0x00
nochar:
		mov dpl, a
		mov dph, b
		pop b
		pop acc
		ret
	__endasm;
}

