#include <mcs51/at89x52.h>
#include <stdio.h>

#include "libpm21.h"

int intr;

void int0(void) __interrupt IE0_VECTOR __using 1 {
	intr = 0;
}

void int1(void) __interrupt IE1_VECTOR __using 1 {
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
		printf("working %d...\r\n", i);
	}
	
	EA = 0;
	printf("got interrupt %d\r\n", intr);
	(void)getchar();
	
	PCON |= 2;
	
	return;
}

