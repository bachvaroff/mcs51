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

#define H 32
#define W 32

char u[H][W], nu[H][W];
int x, y, x1, y1, n;
int population, fixed;
int i0, i1;
int c;

void int0(void) __interrupt 0 __using 1 {
	i0 = 1;
}

void int1(void) __interrupt 1 __using 1 {
	i1 = 1;
}

void show(void) {
	printf("\033[2J\033[m%04x\r\n", population);
	population++;
	
	for (y = 0; y < H; y++) {
		for (x = 0; x < W; x++)
			if (u[y][x]) printf("\033[01m[]\033[m");
			else printf("  ");
		printf("\r\n");
	}
	
	return;
}

void evolve(void) {
	fixed = 1;
	
	for (y = 0; y < H; y++) {
		for (x = 0; x < W; x++) {
			n = 0;
			for (y1 = y - 1; y1 <= y + 1; y1++)
				for (x1 = x - 1; x1 <= x + 1; x1++)
					if (u[(y1 + H) % H][(x1 + W) % W])
						n++;

			if (u[y][x]) n--;
			nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
		}
	}
	
	for (y = 0; y < H; y++)
		for (x = 0; x < W; x++)
			if (u[y][x] != nu[y][x]) {
				u[y][x] = nu[y][x];
				fixed = 0;
			}
	
	return;
}

void main(void) {
	i0 = i1 = 0;
	
	IT0 = 1;
	EX0 = 1;
		
	IT1 = 1;
	EX1 = 1;
	
	EA = 1;
	
	while (!i0) {
		printf("\033[2J\033[mINIT\n\r");
		for (y = 0; y < H; y++)
			for (x = 0; x < W; x++) {
				c = getchar();
				u[y][x] = c & 1;
			}
		printf("RDY\n\r");
		(void)getchar();
		
		population = 0;
		
		while (!i1) {
			show();
			evolve();
			if (fixed) {
				printf("DONE\n\r");
				(void)getchar();
				break;
			}
		}
	}
	
	EA = 0;
	
	__asm
		ljmp 0
	__endasm;
}

