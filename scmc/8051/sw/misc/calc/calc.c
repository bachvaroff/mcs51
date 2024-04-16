#include <mcs51/at89x52.h>
#include "pm21/paulmon21.h"
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>
#include <ctype.h>

#include "calc.h"
#include "sm.h"
#include "stack.h"

__idata char giant;

int putchar(int c) __naked {
	(void)c;
	__asm
		push acc
		mov a, dpl
		lcall pm2_entry_cout
		pop acc
	__endasm;
}

int getchar(void) __naked {
	__asm
		push acc
		lcall pm2_entry_cin
		mov dpl, a
		mov dph, #0
		pop acc
		ret
	__endasm;
}

int getchar_poll(void) __naked {
	__asm
		push acc
		push b
		mov a, #0xff
		mov b, a
		lcall pm2_entry_cinpoll
		jc nochar
		mov b, #0x00
nochar:
		mov dpl, a
		mov dph, b
		pop b
		pop acc
		ret
	__endasm;
}

inline void printstr(const char *s) {
	for (; *s; s++) putchar(*s);
	
	return;
}

inline void printbin(long d) {
	unsigned long mask;
	
	for (mask = 0x80000000lu; mask; mask >>= 1)
		(void)putchar((d & mask) ? (int)'1' : (int)'0');
	
	return;
}

inline void printall(long d) {
	printf("%08lx\t", d);
	printf("% 11ld\t", d);
	printf("%011lo\t", d);
	printbin(d);
	
	return;
}

static int accumulate(void *_ctx, delta_t *delta) __reentrant {
	calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
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
	calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	long d;
	int r;
	
	if (delta->event == EVENT_TERM) printstr("\r\n");
	r = stack_pop(ctx->ps, &d);
	if (!r) {
		if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
	} else while (r > 0) {
		printstr("PSPA\t");
		printall(d);
		printstr("\r\n");
		r = stack_pop(ctx->ps, &d);
	}
	
	if (delta->event == EVENT_TERM) {
		printstr("\r\n");
		for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
			printstr("SSPA\t");
			printall(d);
			printstr("\r\n");
		}
	}
	
	return 1;
}

static int dump_peek(void *_ctx, long d) __reentrant {
	(void)_ctx;
	
	printstr("PSVA\t");
	printall(d);
	printstr("\r\n");
	
	return 1;
}

static int operator(void *_ctx, delta_t *delta) __reentrant {
	calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	stack_t *t0;
	long d0, d1;
	
	switch (ctx->digit[0]) {
	case 'v':
		printstr("\r\n");
		if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
		else {
			printstr("PSVTOP\t");
			printall(d0);
			printstr("\r\n");
		}
		break;
	case 'V':
		printstr("\r\n");
		if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
		break;
	case '.':
	case 'p':
		printstr("\r\n");
		if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
		else {
			printstr("PSPTOP\t");
			printall(d0);
			printstr("\r\n");
		}
		break;
	case 'P':
		printstr("\r\n");
		(void)dump_pop(_ctx, delta);
		break;
	case 'x':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			(void)stack_push(ctx->ps, d0);
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case 'm':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else {
			if (!stack_push(ctx->ss, d0)) {
				printstr("\r\nsecondary stack overflow\r\n");
				(void)stack_push(ctx->ps, d0);
			}
		}
		break;
	case 'M':
		if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
		else {
			if (!stack_push(ctx->ps, d0)) {
				printstr("\r\nstack overflow\r\n");
				(void)stack_push(ctx->ss, d0);
			}
		}
		break;
	case 'u':
		if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
		break;
	case 'U':
		if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
		else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
		break;
	case 'T':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else {
			if (!stack_pop(ctx->ss, &d1)) {
				printstr("\r\nsecondary stack underflow\r\n");
				(void)stack_push(ctx->ps, d0);
			} else {
				(void)stack_push(ctx->ps, d1);
				(void)stack_push(ctx->ss, d0);
			}
		}
		break;
	case 'X':
		t0 = ctx->ps;
		ctx->ps = ctx->ss;
		ctx->ss = t0;
		break;
	case '+':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 += d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '-':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 -= d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '*':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 *= d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '/':
	case '\\':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else if (!d0) {
			(void)stack_push(ctx->ps, d1);
			(void)stack_push(ctx->ps, d0);			
			printstr("\r\ndivision by zero\r\n");
		} else {
			if (ctx->digit[0] == '/') d1 /= d0;
			else d1 = (unsigned long)d1 / (unsigned long)d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '%':
	case '#':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else if (!d0) {
			(void)stack_push(ctx->ps, d1);
			(void)stack_push(ctx->ps, d0);			
			printstr("\r\ndivision by zero\r\n");
		} else {
			if (ctx->digit[0] == '%') d1 %= d0;
			else d1 = (unsigned long)d1 % (unsigned long)d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '&':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 &= d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '|':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 |= d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '^':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 ^= d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '>':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 = (unsigned long)d1 >> d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case ']':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 >>= d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '<':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else if (!stack_pop(ctx->ps, &d1)) {
			(void)stack_push(ctx->ps, d0);
			printstr("\r\nstack underflow\r\n");
		} else {
			d1 <<= d0;
			(void)stack_push(ctx->ps, d1);
		}
		break;
	case '~':
		if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
		else {
			d0 = ~d0;
			(void)stack_push(ctx->ps, d0);
		}
		break;
	default:
		return UNDEF;
	}
	
	return 1;
}

static int push_acc(void *_ctx, delta_t *delta) __reentrant {
	calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	
	(void)delta;
	
	ctx->acc_valid = 0;
	if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
	
	if (delta->event == EVENT_OP) return operator(_ctx, delta);
	else return 1;
}

static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
	calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	
	if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
	ctx->acc = 0l;
	
	return 1;
}

static int reset_base(void *_ctx, delta_t *delta) __reentrant {
	calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	
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

static int status(void *_ctx, delta_t *delta) __reentrant {
	calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
	long vals[2];
	int n;
	
	(void)delta;
	
	printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
	
	printstr("ACC\t");
	if (ctx->acc_valid) printall(ctx->acc);
	
	n = stack_peek2(ctx->ps, vals);
	printstr("\r\nPSTOP1\t");
	if (n > 0) printall(vals[1]);
	printstr("\r\nPSTOP0\t");
	if (n > 1) printall(vals[0]);
	
	n = stack_peek2(ctx->ss, vals);
	printstr("\r\nSSTOP1\t");
	if (n > 0) printall(vals[1]);
	printstr("\r\nSSTOP0\t");
	if (n > 1) printall(vals[0]);
	printstr("\r\n");
	
	return 1;
}

static int help(void *_ctx, delta_t *delta) __reentrant {
	(void)_ctx;
	(void)delta;
	
	printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
	printstr("p.\tpop top\r\n");
	printstr("P\tpop stack\r\n");
	printstr("v\tpeek top\r\n");
	printstr("V\tpeek stack\r\n");
	printstr("i\treset acc\r\n");
	printstr("I\treset and discard acc\r\n");
	printstr("x\texchange top 2\r\n");
	printstr("X\texchange stacks primary <-> secondary\r\n");
	printstr("T\texchange tops primary <-> secondary\r\n");
	printstr("U\tcopy top secondary -> primary\r\n");
	printstr("u\tcopy top primary -> secondary\r\n");
	printstr("M\tmove top secondary -> primary\r\n");
	printstr("m\tmove top primary -> secondary\r\n");
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
	printstr(">\tshift right top 2\r\n");
	printstr("]\tarithmetic shift right top 2\r\n");
	printstr("<\tshift left top 2\r\n");
	printstr("~\tbitwise not top\r\n");
	printstr("s\tstatus\r\n");
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
	{ ANY, EVENT_STATUS, ANY, NULL, status },
	{ ANY, EVENT_HELP, ANY, NULL, help },
	
	{ ANY, EVENT_TERM, STATE_FINAL, NULL, dump_pop },
	
	{ UNDEF, UNDEF, UNDEF, NULL, NULL }
};

static state_t s;
static calc_ctx_t c;

void main(void) {
	int input;
	
	giant = 0;
	
	c.base = 10;
	c.acc = 0l;
	c.acc_valid = (char)0;
	c.digit[0] = c.digit[1] = '\0';
	
	c.ps = &c.s0;
	c.ss = &c.s1;
	stack_init(c.ps);
	stack_init(c.ss);
	
	state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
	
	(void)status(&c, deltas);
	
	while (1) {
		input = getchar();
		if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
		else (void)putchar(input);
		c.digit[0] = (char)input;
		
		if ((char)input == 'q') {
			if (state_exec(&s, EVENT_TERM) <= 0) break;
		} else if ((char)input == 's') {
			if (state_exec(&s, EVENT_STATUS) <= 0) break;
		} else if ((char)input == '?') {
			if (state_exec(&s, EVENT_HELP) <= 0) break;
		} else if ((char)input == 'i') {
			if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
		} else if ((char)input == 'I') {
			if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
		} else if (
				((char)input == 'h') || ((char)input == 'H') ||
				((char)input == 'o') || ((char)input == 'O')
		) {
			if (state_exec(&s, EVENT_BASE) <= 0) break;
		} else if (isxdigit(input)) {
			if (state_exec(&s, EVENT_DIGIT) <= 0) break;
		} else if (
				((char)input == 'p') || ((char)input == 'P') ||
				((char)input == 'v') || ((char)input == 'V') ||
				((char)input == '.') ||
				((char)input == 'x')
		) {
			if (state_exec(&s, EVENT_OP) <= 0) break;
		} else if (
				((char)input == 'X') || ((char)input == 'T') ||
				((char)input == 'm') || ((char)input == 'M') ||
				((char)input == 'u') || ((char)input == 'U')
		) {
			if (state_exec(&s, EVENT_OP) <= 0) break;
		} else if (
				((char)input == '+') || ((char)input == '-')
		) {
			if (state_exec(&s, EVENT_OP) <= 0) break;
		} else if (
				((char)input == '*') ||
				((char)input == '/') || ((char)input == '\\') ||
				((char)input == '%') || ((char)input == '#')
		) {
			if (state_exec(&s, EVENT_OP) <= 0) break;
		} else if (
				((char)input == '&') ||
				((char)input == '|') || ((char)input == '^') ||
				((char)input == '~') ||
				((char)input == '>') || ((char)input == ']') ||
				((char)input == '<')
		) {
			if (state_exec(&s, EVENT_OP) <= 0) break;
		} else {
			if (state_exec(&s, EVENT_DELIM) <= 0) break;
		}
	}
	
	printstr("TERM\r\n");
	
	PCON |= 2;
	
	return;
}

