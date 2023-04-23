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

static void reset(void) __naked {
	__asm
		orl pcon, #2
	__endasm;
}

struct node {
	int r, c;
};

#define ROWS 48
#define COLS 192

static char g[ROWS][COLS];

/*
#define NMAX 4

static const struct node neigh[NMAX] = {
	{ -1, 0 },
	{ 0, -1 },
	{ 0, +1 },
	{ +1, 0 }
};
*/

#define NMAX 8

static const struct node neigh[NMAX] = {
	{ -1, -1 },	{ -1, 0 },	{ -1, +1 },
	{  0, -1 },			{  0, +1 },
	{ +1, -1 },	{ +1, 0 },	{ +1, +1 }
};


#define SMAX (ROWS * COLS)

static struct node stack[SMAX];
static int sp;
static void stinit(void);
static int stpush(struct node *t);
static int stpop(struct node *t);

static void update(struct node *t, struct node *cur, int j) {
	t->r = cur->r + neigh[j].r;
	t->c = cur->c + neigh[j].c;
	
	if (t->r < 0) t->r += ROWS;
	else if (t->r >= ROWS) t->r -= ROWS;
	if (t->c < 0) t->c += COLS;
	else if (t->c >= COLS) t->c -= COLS;
	
	return;
}

static void walk(struct node *nstart) {
	struct node cur, t;
	int j, f;
	
	cur = *nstart;

process:
	g[cur.r][cur.c] = 0xaa;
	printf("\033[%d;%dHo", cur.r + 1, cur.c + 1);
	
next:
	for (j = 0, f = 0; j < NMAX; j++) {
		update(&t, &cur, j);
		
		if (g[t.r][t.c] == 0x55) f++;
		else if (g[t.r][t.c] != 0xaa) {
			(void)puts("Memory error");
			reset();
		}
	}
	
	if (f) {
		while (1) {
			j = rand() % NMAX;
			update(&t, &cur, j);
			
			if (g[t.r][t.c] == 0xaa) continue;
			else if (g[t.r][t.c] != 0x55) {
				(void)puts("Memory error");
				reset();
			}
			
			if (!stpush(&cur)) {
				(void)puts("Memory error");
				reset();
			}
			cur = t;
			goto process;
		}
	}
	
	printf("\033[%d;%dH.", cur.r + 1, cur.c + 1);
	
	if (!stpop(&cur)) goto term;
	goto next;
	
term:
	return;
}

int main(void) {
	static volatile __xdata int *R = (__xdata int *)0xfffe;
	struct node initial;
	int i, j;
	
	i0 = 1;
	
	IT0 = 1;
	EX0 = 1;
	EA = 1;
	
	srand(*R);
	stinit();
	
	while (i0) {
		for (i = 0; i < ROWS; i++)
			for (j = 0; j < COLS; j++)
				g[i][j] = 0x55;
		
		puts("\033[2J");
		initial.r = rand() % ROWS;
		initial.c = rand() % COLS;
		walk(&initial);
		
		for (i = 0; i < ROWS; i++)
			for (j = 0; j < COLS; j++)
				if (g[i][j] != 0xaa) {
					(void)puts("Memory error");
					reset();
				}
	}
	
	EA = 0;
	
	__asm
		ljmp 0
	__endasm;
	
	return 0;
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

