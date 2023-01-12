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

#define H 32
#define W 32

int i0, i1;
char pu[H][W], u[H][W], nu[H][W];
int x, y, x1, y1, n;
int generation[4], j, fixed, cycle2;
int c;

void int0(void) __interrupt 0 __using 1 {
	i0 = 1;
}


void int1(void) __interrupt 2 __using 1 {
	i1 = 1;
}

inline void cleargen(void) {
	for (j = 0; j < 4; j++)
		generation[j] = 0;
	
	return;
}

inline void updategen(void) {	
	for (j = 0; j < 4; j++) {
		generation[j]++;
		if (generation[j]) break;
	}
	
	return;
}

inline void printgen(void) {
	for (j = 0; j < 4; j++) {
		printf("%04x", generation[3 - j]);
		if (j < 3) putchar(' ');
	}
	
	return;
}

inline void show(void) {
	printf("\033[2J\033[m");
	printgen();
	printf("\r\n");
	updategen();
	
	for (x = 0; x < W; x++) {
		for (y = 0; y < H; y++)
			if (u[y][x]) printf("\033[01m[]\033[m");
			else printf("--");
		printf("\r\n");
	}
	
	return;
}

inline void clearpu(void) {
	for (y = 0; y < H; y++)
		for (x = 0; x < W; x++)
			pu[y][x] = 0;
	
	return;
}

inline void loadu(void) {
	for (y = 0; y < H; y++)
		for (x = 0; x < W; x++) {
			c = getchar();
			u[y][x] = c & 1;
		}
			
	return;
}

inline void evolve(void) {
	fixed = 1;
	cycle2 = 1;
		
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
		for (x = 0; x < W; x++) {
			if (pu[y][x] != nu[y][x]) cycle2 = 0;
			if (u[y][x] != nu[y][x]) fixed = 0;
			pu[y][x] = u[y][x];
			u[y][x] = nu[y][x];
		}
	
	return;
}

void main(void) {
	IT0 = 1;
	IT1 = 1;
	EX0 = 1;
	EX1 = 1;
	EA = 1;
	
	for (i0 = 0; !i0; ) {
		clearpu();
		printf("\033[2J\033[mINIT\n\r");
		
		loadu();
		printf("RDY\n\r");
		(void)getchar();
		
		cleargen();
		
		for (i1 = 0; !i0 && !i1; ) {
			show();
			evolve();
			if (fixed || cycle2) {
				printf("DONE\n\r");
				(void)getchar();
				break;
			}
		}
		
		if (i1) {
			printf("BREAK\n\r");
			(void)getchar();
		}
	}
	
	EA = 0;
	
	printf("TERM\n\r");
	(void)getchar();
	
	__asm
		ljmp 0
	__endasm;
}

