#include <mcs51/at89x52.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>

#include "libpm21.h"

__xdata __at(0xe000u) static volatile int RND;

__idata static char i0, i1;

void int0(void) __interrupt IE0_VECTOR __using 1 {
	i0 = 1;
}

void int1(void) __interrupt IE1_VECTOR __using 1 {
	i1 = 1;
}

#define OE76_0 0x3fu
#define OE76_MASK7 0x80u
#define OE76_MASK6 0x40u
#define OE76_NC 0x00u

__idata static uint8_t OE76;
__xdata __at(0xf006u) static volatile uint8_t OEreg;

inline void flashOE(void) {
	OEreg = OE76;
	
	return;
}

/* generations */

__idata static unsigned long gen;
__idata static unsigned long genc2;
__idata static unsigned long genfx;
__idata static char c2set, fxset, pruni;

inline void cleargen(void) {
	gen = 0ul;
	genc2 = 0ul;
	genfx = 0ul;
	c2set = 0;
	fxset = 0;
	
	return;
}

inline void updategen(void) {
	gen++;
	
	return;
}

inline void updatefix(void) {
	genfx = gen;
	fxset = 1;
	
	return;
}

inline void updatec2(void) {
	genc2 = gen;
	c2set = 1;
	
	return;
}

inline char fxu(void) {
	return fxset;
}

inline char c2u(void) {
	return c2set;
}

/* universe */

#define A2D(COLW, ROW, COL) ((int)(ROW) * (int)(COLW) + (int)(COL))

#define H 192
#define W 48

static char iu[H * W], pu[H * W], u[H * W], nu[H * W];

__idata static int x, y;
__idata static char n, fixed, cycle2;

static void initu(void) {
	memcpy(u, iu, sizeof (iu));
	memset(pu, 0, sizeof (pu));
	cleargen();
	
	return;
}

#define PRNONE	0
#define PRCLR	1
#define PRHDR	2
#define PRUNI	4

static void showu(char prflags, char *universe) {
	if (prflags & PRCLR) printstr("\033[2J");
	if (prflags & PRHDR) {
		printstr("GEN ");
		print32x(gen);
		if (c2set) {
			printstr(" CYCLE2 ");
			print32x(genc2);
		}
		if (fxset) {
			printstr(" FIXED ");
			print32x(genfx);
		}
		printstr("\r\n");
	}
	if (prflags & PRUNI) {
		printstr("\033[?25l");
		for (x = 0; x < W; x++) {
			for (y = 0; y < H; y++)
				if (universe[A2D(W, y, x)]) putchar((int)'1');
				else putchar((int)'0');
			printstr("\r\n");
		}
		printstr("\033[?25h");
	}
	
	return;
}

static void loadiu(void) {
	int nbits, c;

	memset(iu, 0, sizeof (iu));
	
	printstr("LOAD 0 1 ~ # <");
	
	for (nbits = 0, y = 0; y < (H * W); y += W) {
		for (x = 0; x < W; x++) {
			while (1) {
				c = getchar();
				if (c == (int)'0') {
					iu[y + x] = 0;
					nbits++;
					break;
				} else if (c == (int)'1') {
					iu[y + x] = 1;
					nbits++;
					break;
				} else if (c == (int)'~') goto br_inner;
				else if (c == (int)'#') goto out;
			}
			continue;
br_inner:
			break;
		}
	}
	
out:
	if (c != (int)'#')
		while (1) {
			c = getchar();
			if (c == (int)'#') break;
		}
	print16x(nbits);
	printstr(">\r\n");
	
	return;
}

static void loadriu(void) {
	printstr("RANDOM");
	
	for (y = 0; y < (H * W); y += W)
		for (x = 0; x < W; x++)
			iu[y + x] = rand() & 1;
	
	printstr("\r\n");
	
	return;
}

void evolveu(void) {
	fixed = 0;
	cycle2 = 0;
	
	OE76 = OE76_0;
	flashOE();
	
	for (y = 0; y < H; y++) {
		OE76 = OE76_0 | ((y & 0x0003u) << 6);
		flashOE();
		for (x = 0; x < W; x++) {
			n = -u[A2D(W, y, x)];
			
#define UPDN(DY,DX) do { \
	n += u[A2D(W, (y + (DY) + H) % H, (x + (DX) + W) % W)]; \
} while (0)
			UPDN(-1, -1);
			UPDN(-1, 0);
			UPDN(-1, 1);
			UPDN(0, -1);
			UPDN(0, 0);
			UPDN(0, 1);
			UPDN(1, -1);
			UPDN(1, 0);
			UPDN(1, 1);
#undef UPDN
			
			nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
			cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
			fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
		}
	}
	
	OE76 = OE76_0;
	flashOE();
	
	cycle2 = !cycle2;
	fixed = !fixed;
	
	memcpy(pu, u, sizeof (u));
	memcpy(u, nu, sizeof (nu));
	
	return;
}

void main(void) {
	int c;
	
	IT0 = 1;
	IT1 = 1;
	EX0 = 1;
	EX1 = 1;
	EA = 1;
	P1_7 = 0;
	__asm
		nop
		nop
		nop
	__endasm;
	
        srand(RND);
        
	OE76 = OE76_0;
	flashOE();

	cleargen();
	pruni = 0;
	
	printstr("\033[?25h\033[m");
	
	for (i0 = 0; !i0; ) {
		while (1) {
			printstr("LIFE I L R O P S U");
			putchar(pruni ? (int)'1' : (int)'0');
			printstr(" B T\r\n");
			c = toupper(getchar());
			if (i0 || (c == (int)'T')) goto term;
			else if ((c == (int)'I') || (c == (int)'L') || (c == (int)'R')) {
				if (c == (int)'L') loadiu();
				else if (c == (int)'R') loadriu();
				initu();
				showu(PRUNI, u);
			} else if (c == (int)'O') showu(PRUNI, iu);
			else if (c == (int)'P') showu(PRHDR | PRUNI, u);
			else if (c == (int)'U') pruni = !pruni;
			else if (c == (int)'S') break;
		}
		
		for (i1 = 0; !i0 && !i1; ) {
			if (fxu()) {
				printstr("FIXED AT ");
				showu(PRHDR, u);
				break;
			}
			if (pruni) showu(PRCLR | PRHDR | PRUNI, u);
			else showu(PRHDR, u);
			updategen();
			evolveu();
			if (fixed) {
				updatefix();
				printstr("FIXED AT ");
				showu(PRHDR, u);
				break;
			}
			if (cycle2) {
				if (!c2u()) updatec2();
			}
			
			c = getchar_poll();
			if (c > 0) {
				c = toupper(c);
				if (c == (int)'U') pruni = !pruni;
				else if (c == (int)'T') i0 = 1;
				else if (c == (int)'B') i1 = 1;
			}
		}
		
		if (i1) {
			printstr("BREAK AT ");
			showu(PRHDR, u);
		}
	}
	
term:
	EA = 0;
	printstr("TERM\r\n");
	
	PCON |= 2;
	
	return;
}

