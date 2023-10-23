#include <mcs51/at89x52.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>
#include <ctype.h>

#include "sm.h"
#include "stack.h"

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

int getchar_poll(void) __naked {
	__asm
		mov a, #0xff
		mov b, a
		jnb ri, nochar
		clr ri
		mov a, sbuf
		mov b, #0
nochar:
		mov dpl, a
		mov dph, b
		ret
	__endasm;
}

static inline void printstr(const char *s) {
	for (; *s; s++) putchar(*s);
	
	return;
}

static inline void printbin(long d) {
	unsigned long mask;
	
	for (mask = 0x80000000lu; mask; mask >>= 1)
		(void)putchar((d & mask) ? (int)'1' : (int)'0');
	
	return;
}

#define STATE_START 0
#define STATE_OPERATOR 1
#define STATE_NUMBER 2
#define STATE_FINAL 3

#define EVENT_DELIM 0
#define EVENT_DIGIT 1
#define EVENT_OP 2
#define EVENT_HELP 3
#define EVENT_BASE 4
#define EVENT_RSTA_i 5
#define EVENT_RSTA_I 6
#define EVENT_TERM 7

struct ctx {
	int base;
	long acc;
	char acc_valid;
	char digit[2];
	stack_t s;
};

static int accumulate(void *_ctx, delta_t *delta) __reentrant {
	struct ctx *ctx = (struct ctx *)_ctx;
	long d;
	
	(void)delta;
	
	if (!ctx->acc_valid) {
		ctx->acc_valid = 1;
		ctx->acc = 0l;
	}
	
	d = strtol(ctx->digit, NULL, ctx->base);
	ctx->acc = ctx->acc * (long)ctx->base + d;
	
	return 1;
}

static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
	struct ctx *ctx = (struct ctx *)_ctx;
	long d;
	int r;
	
	if (delta->event == EVENT_TERM) printstr("\r\n");
	
	r = stack_pop(&ctx->s, &d);
	if (!r) {
		if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
	} else while (r > 0) {
		printstr("VA ");
		printf("% 11ld / ", d);
		printf("%08lx / ", d);
		printbin(d);
		printstr("\r\n");
		r = stack_pop(&ctx->s, &d);
	}
	
	return 1;
}

static int dump_peek(void *_ctx, long d) __reentrant {
	(void)_ctx;
	
	printstr("PA ");
	printf("% 11ld / ", d);
	printf("%08lx / ", d);
	printbin(d);
	printstr("\r\n");
	
	return 1;
}

static int operator(void *_ctx, delta_t *delta) __reentrant {
	struct ctx *ctx = (struct ctx *)_ctx;
	long d0, d1;
	
	switch (ctx->digit[0]) {
	case 'p':
		printstr("\r\n");
		if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
		else {
			printstr("PT ");
			printf("% 11ld / ", d0);
			printf("%08lx / ", d0);
			printbin(d0);
			printstr("\r\n");
		}
		break;
	case 'P':
		printstr("\r\n");
		if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
		break;
	case '.':
	case 'v':
		printstr("\r\n");
		if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
		else {
			printstr("VT ");
			printf("% 11ld / ", d0);
			printf("%08lx / ", d0);
			printbin(d0);
			printstr("\r\n");
		}
		break;
	case 'V':
		printstr("\r\n");
		(void)dump_pop(_ctx, delta);
		break;
	case 'x':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			(void)stack_push(&ctx->s, d0);
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '+':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 += d0;
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '-':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 -= d0;
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '*':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 *= d0;
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '/':
	case '\\':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else if (!d0) {
			(void)stack_push(&ctx->s, d1);
			(void)stack_push(&ctx->s, d0);			
			printstr("\r\ndivision by zero\r\n");
		} else {
			if (ctx->digit[0] == '/') d1 /= d0;
			else d1 = (unsigned long)d1 / (unsigned long)d0;
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '%':
	case '#':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else if (!d0) {
			(void)stack_push(&ctx->s, d1);
			(void)stack_push(&ctx->s, d0);			
			printstr("\r\ndivision by zero\r\n");
		} else {
			if (ctx->digit[0] == '%') d1 %= d0;
			else d1 = (unsigned long)d1 % (unsigned long)d0;
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '&':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 &= d0;
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '|':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 |= d0;
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '^':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(&ctx->s, &d1)) {
			(void)stack_push(&ctx->s, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 ^= d0;
			(void)stack_push(&ctx->s, d1);
		}
		break;
	case '~':
		if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
		else {
			d0 = ~d0;
			(void)stack_push(&ctx->s, d0);
		}
		break;
	default:
		return UNDEF;
	}
	
	return 1;
}

static int push_acc(void *_ctx, delta_t *delta) __reentrant {
	struct ctx *ctx = (struct ctx *)_ctx;
	
	(void)delta;
	
	ctx->acc_valid = 0;
	if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
	
	if (delta->event == EVENT_OP) return operator(_ctx, delta);
	else return 1;
}

static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
	struct ctx *ctx = (struct ctx *)_ctx;
	
	if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
	ctx->acc = 0l;
	
	return 1;
}

static int reset_base(void *_ctx, delta_t *delta) __reentrant {
	struct ctx *ctx = (struct ctx *)_ctx;
	
	(void)delta;
	
	switch (ctx->digit[0]) {
	case 'H':
		ctx->base = 16;
		break;
	case 'h':
		ctx->base = 10;
		break;
	case 'O':
		ctx->base = 8;
		break;
	case 'o':
		ctx->base = 2;
		break;
	}
	
	return 1;
}

static int help(void *_ctx, delta_t *delta) __reentrant {
	struct ctx *ctx = (struct ctx *)_ctx;
	
	(void)delta;
	printf("\r\nbase = %d, ", ctx->base);
	printf("acc = %ld / ", ctx->acc);
	printf("%08lx / ", ctx->acc);
	printbin(ctx->acc);
	printf(", acc_valid = %d\r\n\r\n", (int)ctx->acc_valid);
	printstr("HhOo\tbase 16 10 8 2\r\n");
	printstr("p\tpeek top\r\n");
	printstr("P\tprint stack\r\n");
	printstr("v.\tpop top\r\n");
	printstr("V\tpop all\r\n");
	printstr("i\treset acc\r\n");
	printstr("I\treset and discard acc\r\n");
	printstr("x\texchange top 2\r\n");
	printstr("+\tadd top 2\r\n");
	printstr("-\tsubtract top 2\r\n");
	printstr("*\tmultiply top 2\r\n");
	printstr("/\tdivide top 2\r\n");
	printstr("\\\tdivide top 2 unsigned\r\n");	
	printstr("%\tmodulus top 2\r\n");
	printstr("#\tmodulus top 2 unsigned\r\n");
	printstr("&\tand top 2\r\n");
	printstr("|\tor top 2\r\n");
	printstr("^\txor top 2\r\n");
	printstr("~\tbitwise not top\r\n");
	printstr("?\thelp\r\n");
	printstr("q\tquit\r\n");
	
	return 1;
}

static delta_t deltas[] = {
	{ STATE_START, EVENT_DELIM, STATE_START, NULL, NULL},
	{ STATE_START, EVENT_DIGIT, STATE_NUMBER, NULL, accumulate },
	{ STATE_START, EVENT_OP, STATE_OPERATOR, NULL, operator },
	
	{ STATE_OPERATOR, EVENT_DELIM, STATE_START, NULL, NULL },
	{ STATE_OPERATOR, EVENT_OP, STATE_OPERATOR, NULL, operator },
	{ STATE_OPERATOR, EVENT_DIGIT, STATE_NUMBER, NULL, accumulate },
	
	{ STATE_NUMBER, EVENT_DELIM, STATE_START, NULL, push_acc },
	{ STATE_NUMBER, EVENT_RSTA_I, STATE_START, NULL, reset_acc },
	{ STATE_NUMBER, EVENT_DIGIT, STATE_NUMBER, NULL, accumulate },
	{ STATE_NUMBER, EVENT_OP, STATE_OPERATOR, NULL, push_acc },
	
	{ ANY, EVENT_RSTA_i, ANY, NULL, reset_acc },
	{ ANY, EVENT_RSTA_I, ANY, NULL, NULL },
	{ ANY, EVENT_BASE, ANY, NULL, reset_base },
	{ ANY, EVENT_HELP, ANY, NULL, help },
	
	{ ANY, EVENT_TERM, STATE_FINAL, NULL, dump_pop },
	
	{ UNDEF, UNDEF, UNDEF, NULL, NULL }
};

static state_t s;
static struct ctx c;

void main(void) {
	int input;
	
	c.base = 10;
	c.acc = 0l;
	c.acc_valid = (char)0;
	c.digit[0] = c.digit[1] = '\0';
	stack_init(&c.s);	
	state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
	
	while (1) {
		input = getchar();
		c.digit[0] = (char)input;
		(void)putchar(input);
		if ((char)input == 'q') {
			if (state_exec(&s, EVENT_TERM) <= 0) break;
		} else if ((char)input == '?') {
			if (state_exec(&s, EVENT_HELP) <= 0) break;
		} else if ((char)input == 'i') {
			if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
		} else if ((char)input == 'I') {
			if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
		} else if (((char)input == 'h') || ((char)input == 'H') || ((char)input == 'o') || ((char)input == 'O')) {
			if (state_exec(&s, EVENT_BASE) <= 0) break;
		} else if (isxdigit(input)) {
			if (state_exec(&s, EVENT_DIGIT) <= 0) break;
		} else if (
				((char)input == 'h') || ((char)input == 'H') ||
				((char)input == 'p') || ((char)input == 'P') ||
				((char)input == '.') || ((char)input == 'v') || ((char)input == 'V') ||
				((char)input == 'x') ||
				((char)input == '+') ||
				((char)input == '-') ||
				((char)input == '*') ||
				((char)input == '/') || ((char)input == '\\') ||
				((char)input == '%') || ((char)input == '#') ||
				((char)input == '&') ||
				((char)input == '|') ||
				((char)input == '^') ||
				((char)input == '~')
		) {
			if (state_exec(&s, EVENT_OP) <= 0) break;
		} else {
			if (state_exec(&s, EVENT_DELIM) <= 0) break;
		}
	}
	
	__asm
		orl pcon, #2
	__endasm;
}

