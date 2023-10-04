#include <mcs51/at89x52.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

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

__idata static uint8_t i0;

void int0(void) __interrupt IE0_VECTOR __using 1 {
	i0 = 0u;
}

static void reset(void) __naked {
	__asm
		orl pcon, #2
	__endasm;
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
#define COLS 201

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
__xdata static volatile uint8_t __at(0xf006u) OEreg;

static void flashOE(uint8_t mask) {
	P1_7 = 0;
	OEreg = OE76;
	P1_7 = 1;
	OE76 ^= mask;
	
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
	if (!qget(&cur)) goto term;
		
	printf("\033[2;1H% 8d% 8d% 8d% 8d", hp, tp, cur.r, cur.c);
	
	printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
	flashOE(OE76_MASK6);
	
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
	
	for (j = 0u; j < NMAX; j++)
		if (update(&t, &cur, scramble[j])) {
			if (!qadd(&t)) bang();
			g[t.r][t.c] = 0xaau;
			
			printf("\033[%d;%dHo", t.r + 4, t.c + 1);
			flashOE(OE76_MASK7);
		}
	
	goto process;
	
term:
	return;
}

int main(void) {
	volatile __xdata int *R = (__xdata int *)0xfffeu;
	struct node initial;
	unsigned int N = 0u;
	int i, j;
	
	i0 = 1u;
	
	P1_7 = 1;
	IT0 = 1;
	EX0 = 1;
	EA = 1;
	
	srand(*R);
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
		flashOE(OE76_NC);
		
		walk(&initial);
		
		for (i = 0; i < ROWS; i++)
			for (j = 0; j < COLS; j++)
				if (g[i][j] != 0xaau) bang();
		
		N++;
	}
	
	EA = 0;
	
	puts("\033[2J\033[?25h");
	
	__asm
		ljmp 0
	__endasm;
	
	return 0;
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

