#include <mcs51/at89x52.h>
#include <string.h>

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

static const char digits[16] = {
	'0', '1', '2', '3', '4', '5', '6', '7',
	'8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
};

inline void print8x(short a) {
	putchar(digits[(a >> 4) & 0xf]);
	putchar(digits[a & 0xf]);
	
	return;
}

inline void print16x(int a) {
	putchar(digits[(a >> 12) & 0xf]);
	putchar(digits[(a >> 8) & 0xf]);
	putchar(digits[(a >> 4) & 0xf]);
	putchar(digits[a & 0xf]);
	
	return;
}

inline void printstr(const char *s) {
	for (; *s; s++) putchar(*s);
	
	return;
}

#define A2D(COLW, ROW, COL) ((int)(ROW) * (int)(COLW) + (int)(COL))

#define H 32
#define W 32

char i0, i1;

char pu[H * W], u[H * W], nu[H * W]; /* evolve(), show(), loadu() */
int x, y; /* evolve(), show(), loadu() */
int x1, y1; /* evolve() */
int j, c; /* loadu() */
char bstep, n, fixed, cycle2; /* evolve() */
int generation[2]; /* cleargen(), updategen(), printgen(), show() */

void int0(void) __interrupt 0 __using 1 {
	i0 = 1;
}

void int1(void) __interrupt 2 __using 1 {
	i1 = 1;
}

inline void cleargen(void) {
	generation[0] = 0;
	generation[1] = 0;
	
	return;
}

inline void updategen(void) {
	generation[0]++;
	if (!generation[0]) generation[1]++;
	
	return;
}

inline void printgen(void) {
	print16x(generation[1]);
	print16x(generation[0]);
	
	return;
}

void show(char hdr) {
	if (hdr) {
		printstr("\033[2J\033[m");
		printgen();
		printstr("\r\n");
		updategen();
	}
	
	for (x = 0; x < W; x++) {
		for (y = 0; y < H; y++)
			if (u[A2D(W, y, x)]) {
				putchar('['); putchar(']');
			} else {
				putchar('#'); putchar('#');
			}
		printstr("\r\n");
	}
	
	return;
}

inline void clearu(void) {
	memset(u, 0, sizeof (u));
	memset(pu, 0, sizeof (pu));
	
	return;
}

inline void loadu(void) {
	j = 0;
	
	printstr("LOAD <");
	
	for (y = 0; y < H; y++)
		for (x = 0; x < W; x++) {
			c = getchar();
			if (c == (int)'0') {
				u[A2D(W, y, x)] = 0;
				j++;
			} else if (c == (int)'1') {
				u[A2D(W, y, x)] = 1;
				j++;
			} else if (c == (int)'#') goto out;
		}
	
out:
	if (c != (int)'#')
		while (1) {
			c = getchar();
			if (c == (int)'#') break;
		}
	print16x(j);
	printstr(">\r\n");
	
	return;
}

static const char busy[4] = { '\\', '|', '/', '-' };

inline void evolve(void) {
	fixed = 1;
	cycle2 = 1;
	bstep = 0;
	
	for (y = 0; y < H; y++) {
		putchar(busy[bstep]); putchar('\r');
		bstep = (bstep + 1) & 3;
		for (x = 0; x < W; x++) {
			n = -u[A2D(W, y, x)];
			
			y1 = -1; x1 = -1;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			y1 = -1; x1 = 0;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			y1 = -1; x1 = 1;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			y1 = 0; x1 = -1;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			y1 = 0; x1 = 0;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			y1 = 0; x1 = 1;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			y1 = 1; x1 = -1;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			y1 = 1; x1 = 0;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			y1 = 1; x1 = 1;
			n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
			
			nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
			
			if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
			if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
		}
	}
		
	memcpy(pu, u, sizeof (u));
	memcpy(u, nu, sizeof (nu));
	
	return;
}

void main(void) {
	IT0 = 1;
	IT1 = 1;
	EX0 = 1;
	EX1 = 1;
	EA = 1;
	
	for (i0 = 0; !i0; ) {
		clearu();
		printstr("\033[2J\033[mINIT\r\n");
		(void)getchar();
		
		loadu();
		show(0);
		
		printstr("READY\r\n");
		while (1) {
			c = getchar();
			if (c == (int)'S') break;
		}
		printstr("START\r\n");
		
		cleargen();
		
		for (i1 = 0; !i0 && !i1; ) {
			show(1);
			evolve();
			if (fixed || cycle2) {
				printstr("DONE\r\n");
				(void)getchar();
				break;
			}
		}
		
		if (i1) {
			printstr("BREAK\r\n");
			(void)getchar();
		}
	}
	
	EA = 0;
	
	printstr("TERM\r\n");
	(void)getchar();
	
	__asm
		ljmp 0
	__endasm;
}

