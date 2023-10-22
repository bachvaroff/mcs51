#include <stdlib.h>
#include "stack.h"

void stack_init(stack_t *s) __reentrant {
	s->N = SIZE;
	s->p = -1;
	
	return;
}

int stack_push(stack_t *s, long val) __reentrant {
	if (s->p == (s->N - 1)) return 0;
	s->p++;
	s->data[s->p] = val;
	return 1;
}

int stack_pop(stack_t *s, long *val) __reentrant {
	if (s->p < 0) return 0;
	*val = s->data[s->p];
	s->p--;
	return 1;
}

int stack_peek(stack_t *s, long *val) __reentrant {
	if (s->p < 0) return 0;
	*val = s->data[s->p];
	return 1;
}

int stack_iter_peek(stack_t *s, stack_iter_t iter, void *_ctx) __reentrant {
	int j, r;
	
	if (s->p < 0) return 0;
	
	for (j = s->p, r = 0; j >= 0; j--) {
		r = iter(_ctx, s->data[j]);
		if (r <= 0) break;
	}
	
	return r;
}

