/* Target-specific functions for making Dhrystone work on the CY7C68013A
   Author: Philipp Klaus Krause */

#include <mcs51/at89x52.h>
#include "pm21/paulmon21.h"
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

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

volatile __near unsigned long int clocktime;
volatile _Bool clockupdate;

volatile __near unsigned char sendcounter;
volatile __near unsigned int senddata;
volatile _Bool sending;

void init(void)
{
	// Configure timer 0 for 1000 clock ticks / second
	TR0 = 0;
	TH0 = (65536 - 1382) / 256;
	TL0 = (65536 - 1382) % 256;
	TMOD = 0x01;
	IE = 0x82;
	TR0 = 1; // Start timers
}

void clockinc(void) __interrupt TF0_VECTOR __using 1
{
	clocktime++;
	clockupdate = true;
	TR0 = 0;
	TH0 = (65536 - 1382) / 256;
	TL0 = (65536 - 1382) % 256;
	TR0 = 1;
}

unsigned long int clock(void)
{
	unsigned long int ctmp;

	do
	{
		clockupdate = false;
		ctmp = clocktime;
	} while (clockupdate);
	
	return(ctmp);
}


