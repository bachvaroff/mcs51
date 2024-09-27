#include <mcs51/at89x52.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "libpm21.h"

__xdata __at(0x8000u) static volatile int RND;

__idata static uint8_t i0;

void int0(void) __interrupt IE0_VECTOR __using 1 {
	i0 = 0u;
}

inline void reset(void) __naked {
	PCON |= 2;
}

static void bang(void) {
	(void)puts("Memory error");
	reset();
	
	return;
}

struct node {
	int r, c;
};

#define ROWS 48
#define COLS 192

static uint8_t g[ROWS][COLS];

#define REG 8u
#define NMAX (2u * REG)

static struct node neigh[NMAX] = {
/*
	{ -1, -1 },	{ -1, 0 },	{ -1, +1 },
	{  0, -1 },			{  0, +1 },
	{ +1, -1 },	{ +1, 0 },	{ +1, +1 }
*/
	{ -1, +1 }, { -1, -1 }, { +1, -1 }, { +1, +1 },
	{ -1, 0 }, {  0, -1 }, { +1, 0 }, {  0, +1 },
	{ -1, +1 }, { -1, -1 }, { +1, -1 }, { +1, +1 },
	{ -1, 0 }, {  0, -1 }, { +1, 0 }, {  0, +1 }
};

#define QMAX (ROWS * COLS)

static struct node queue[QMAX];
static int hp, tp;
static void qinit(void);
static uint8_t qadd(struct node *t);
static uint8_t qget(struct node *t);

#define OE76_0 0x3fu
#define OE76_MASK7 0x80u
#define OE76_MASK6 0x40u
#define OE76_NC 0x00u

__idata static uint8_t OE76;
__xdata __at(0xf006u) static volatile uint8_t OEreg;

static void setOE(uint8_t mask) {
	OE76 |= mask;
	P1_7 = 0;
	__asm
		nop
		nop
		nop
	__endasm;
	OEreg = OE76;
	P1_7 = 1;
	__asm
		nop
		nop
		nop
	__endasm;
	
	return;
}

static void unsetOE(uint8_t mask) {
	OE76 &= ~mask;
	P1_7 = 0;
	__asm
		nop
		nop
		nop
	__endasm;
	OEreg = OE76;
	P1_7 = 1;
	__asm
		nop
		nop
		nop
	__endasm;
	
	return;
}

static void flipOE(uint8_t mask) {
	OE76 ^= mask;
	P1_7 = 0;
	__asm
		nop
		nop
		nop
	__endasm;
	OEreg = OE76;
	P1_7 = 1;
	__asm
		nop
		nop
		nop
	__endasm;
	
	return;
}

static uint8_t update(struct node *t, struct node *cur, uint8_t j) {
	t->r = cur->r + neigh[j].r;
	t->c = cur->c + neigh[j].c;
	
	if (t->r < 0) t->r += ROWS;
	else if (t->r >= ROWS) t->r -= ROWS;
	if (t->c < 0) t->c += COLS;
	else if (t->c >= COLS) t->c -= COLS;
	
	if (g[t->r][t->c] == 0xaau) return 0u;
	else if (g[t->r][t->c] != 0x55u) bang();
		
	return 1u;
}

static void walk(struct node *nstart) {
	struct node cur, t;
	uint8_t scramble[NMAX], ti, tj, tx;
	uint8_t j;
	
	if (!qadd(nstart)) bang();
	g[nstart->r][nstart->c] = 0xaau;
	
process:
	unsetOE(OE76_MASK7 | OE76_MASK6);
	
	if (!qget(&cur)) goto term;
		
	printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
	
	printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
	setOE(OE76_MASK6);
	
	for (j = 0u; j < NMAX; j++)
		scramble[j] = j;
	for (j = 0u; j < NMAX; j++) {
		do ti = (uint8_t)(rand() % NMAX);
		while (ti == j);
		do tj = (uint8_t)(rand() % NMAX);
		while (ti == tj);
		tx = scramble[ti];
		scramble[ti] = scramble[tj];
		scramble[tj] = tx;
	}
	
	for (j = 0u; j < NMAX; j++) {
		unsetOE(OE76_MASK7);
		
		if (update(&t, &cur, scramble[j])) {
			if (!qadd(&t)) bang();
			g[t.r][t.c] = 0xaau;
			
			setOE(OE76_MASK7);
			printf("\033[%d;%dHo", t.r + 4, t.c + 1);
		}
	}
	
	goto process;
	
term:
	return;
}

void main(void) {
	struct node initial;
	unsigned int N = 0u;
	int i, j;
	
	i0 = 1u;
	
	P1_7 = 1;
	IT0 = 1;
	EX0 = 1;
	EA = 1;
	
	srand(RND);
	qinit();
	
	puts("\033[2J\033[?25l");
		
	while (i0) {
		for (i = 0; i < ROWS; i++)
			for (j = 0; j < COLS; j++)
				g[i][j] = 0x55u;
		
		initial.r = rand() % ROWS;
		initial.c = rand() % COLS;
		
		puts("\033[2J\033[?25l");
		printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
		
		for (i = 0; i < REG; i++) {
			neigh[i].r = neigh[REG + i].r * (1 + rand() % 32);
			neigh[i].c = neigh[REG + i].c * (1 + rand() % 32);
			printf("% 8d% 8d", neigh[i].r, neigh[i].c);
		}
		
		OE76 = OE76_0;
		setOE(OE76_NC);
		
		walk(&initial);
		
		for (i = 0; i < ROWS; i++)
			for (j = 0; j < COLS; j++)
				if (g[i][j] != 0xaau) bang();
		
		N++;
	}
	
	EA = 0;
	
	puts("\033[2J\033[?25h");
	
	reset();
	
	return;
}

static void qinit(void) {
	hp = tp = 0;
	return;
}

static uint8_t qadd(struct node *t) {
	if (((hp + 1) % QMAX) == tp) return 0u;
	queue[hp] = *t;
	hp = (hp + 1) % QMAX;
	return 1u;
}

static uint8_t qget(struct node *t) {
	if (hp == tp) return 0u;
	*t = queue[tp];
	tp = (tp + 1) % QMAX;
	return 1u;
}

