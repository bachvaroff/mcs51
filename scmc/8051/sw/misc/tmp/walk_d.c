#include <mcs51/at89x52.h>
#include <stdio.h>
#include <stdlib.h>

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

__idata static char i0;

void int0(void) __interrupt IE0_VECTOR __using 1 {
	i0 = 0;
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

static char g[ROWS][COLS];

#define REG 4
#define NMAX (4 * REG)

static struct node neigh_tmpl[NMAX] = {
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

#define SMAX (ROWS * COLS)

static struct node stack[SMAX];
static int sp;
static void stinit(void);
static int stpush(struct node *t);
static int stpop(struct node *t);

static int update(struct node *t, struct node *cur, char j) {
	t->r = cur->r + neigh[j].r;
	t->c = cur->c + neigh[j].c;
	
	if (t->r < 0) t->r += ROWS;
	else if (t->r >= ROWS) t->r -= ROWS;
	if (t->c < 0) t->c += COLS;
	else if (t->c >= COLS) t->c -= COLS;
	
	if (g[t->r][t->c] == 0xaa) return 0;
	else if (g[t->r][t->c] != 0x55) bang();
	
	return 1;
}

static void walk(struct node *nstart) {
	struct node cur, t;
	char j, f;
	
	cur = *nstart;

process:
	g[cur.r][cur.c] = 0xaa;
	printf("\033[%d;%dHo", cur.r + 4, cur.c + 1);
	
next:
	printf("\033[2;1H% 8d% 8d% 8d", sp, cur.r, cur.c);
	
	for (j = 0, f = 0; j < NMAX; j++) {
		if (!update(&t, &cur, j)) continue;
		f++;
	}
	
	if (f) {
		while (1) {
			j = rand() % NMAX;
			if (!update(&t, &cur, j)) continue;
						
			if (!stpush(&cur)) bang();
			cur = t;
			goto process;
		}
	}
	
	printf("\033[%d;%dH.", cur.r + 4, cur.c + 1);
	
	if (!stpop(&cur)) goto term;
	goto next;
	
term:
	return;
}

void main(void) {
	static volatile __xdata int *R = (__xdata int *)0xfffe;
	struct node initial;
	unsigned int N = 0u;
	int i, j;
	
	i0 = 1;
	
	IT0 = 1;
	EX0 = 1;
	EA = 1;
	
	srand(*R);
	stinit();
	
	puts("\033[2J\033[?25l");
		
	while (i0) {
		for (i = 0; i < ROWS; i++)
			for (j = 0; j < COLS; j++)
				g[i][j] = 0x55;
		
		initial.r = rand() % ROWS;
		initial.c = rand() % COLS;
		
		puts("\033[2J\033[?25l");
		printf("\033[1;1H% 8u% 8d% 8d", N, initial.r, initial.c);
		
		for (i = 0; i < REG; i++) {
			neigh[i].r = neigh_tmpl[i].r * (1 + rand() % 4);
			neigh[i].c = neigh_tmpl[i].c * (1 + rand() % 4);
			printf("% 8d% 8d", neigh[i].r, neigh[i].c);
		}
		
		for (i = REG; i < (2 * REG); i++) {
			neigh[i].r = neigh_tmpl[i].r * (1 + rand() % 4);
			neigh[i].c = neigh_tmpl[i].c * (1 + rand() % 4);
			printf("% 8d% 8d", neigh[i].r, neigh[i].c);
		}
		
		walk(&initial);
		
		for (i = 0; i < ROWS; i++)
			for (j = 0; j < COLS; j++)
				if (g[i][j] != 0xaa) bang();
		
		N++;
	}
	
	EA = 0;
	
	puts("\033[2J\033[?25h");
	
	reset();
	
	return;
}

static void stinit(void) {
	sp = -1;
	return;
}

static int stpush(struct node *t) {
	if (sp == (SMAX - 1)) return 0;
	sp++;
	stack[sp] = *t;
	return 1;
}

static int stpop(struct node *t) {
	if (sp == -1) return 0;
	*t = stack[sp];
	sp--;
	return 1;
}

