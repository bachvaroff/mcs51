#ifndef _STM_H_
#define _STM_H_

#include <limits.h>

#define ANY INT_MAX
#define UNDEF INT_MIN

typedef struct delta_t delta_t;

typedef int (*predicate_t)(void *, delta_t *) __reentrant;
typedef int (*callback_t)(void *, delta_t *) __reentrant;

struct delta_t {
	int current;
	int event;
	int next;
	predicate_t predicate;
	callback_t callback;
};

typedef struct state_t {
	int current;
	int final;
	int spurious;
	delta_t *deltas;
	void *ctx;
} state_t;

void state_init(state_t *state, int Initial, int Final, int Spurious, delta_t *Deltas, void *Context) __reentrant;
int state_exec(state_t *state, int event) __reentrant;
void state_reset(state_t *state, int current) __reentrant;

#endif

