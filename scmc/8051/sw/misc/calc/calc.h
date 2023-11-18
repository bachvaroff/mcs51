#ifndef _CALC_
#define _CALC_

#include "stack.h"

#define STATE_START 0
#define STATE_OPERATOR 1
#define STATE_NUMBER 2
#define STATE_FINAL 3

#define EVENT_DELIM 0
#define EVENT_DIGIT 1
#define EVENT_OP 2
#define EVENT_STATUS 3
#define EVENT_HELP 4
#define EVENT_BASE 5
#define EVENT_RSTA_i 6
#define EVENT_RSTA_I 7
#define EVENT_TERM 8

typedef struct calc_ctx {
	int base;
	long acc;
	char acc_valid;
	char digit[2];
	stack_t s0, s1;
	stack_t *ps, *ss;
} calc_ctx_t;

#endif
