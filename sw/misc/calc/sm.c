#include "sm.h"

void state_init(state_t *state, int Initial, int Final, int Spurious, delta_t *Deltas, void *Context) __reentrant {
	state->current = Initial;
	state->final = Final;
	state->spurious = Spurious;
	state->deltas = Deltas;
	state->ctx = Context;
	
	return;
}

void state_reset(state_t *state, int current) __reentrant {
	state->current = current;
	
	return;
}

int state_exec(state_t *state, int event) __reentrant {
	int ret = UNDEF;
	int j;
	
	if (state->current == state->final) {
		ret = 0;
		goto error;
	}
	
	if ((state->current == UNDEF) || (state->current == state->spurious)) {
		ret = state->current;
		goto error;
	}
	
	for (j = 0; (state->deltas[j].current != UNDEF) || (state->deltas[j].next != UNDEF); j++)
		if (
				((state->deltas[j].current == state->current) || (state->deltas[j].current == ANY)) &&
				((state->deltas[j].event == event) || (state->deltas[j].event == ANY))
		) {
			if (state->deltas[j].predicate)
				if (!state->deltas[j].predicate(state->ctx, &(state->deltas[j]))) continue;
			if (state->deltas[j].callback)
				ret = state->deltas[j].callback(state->ctx, &(state->deltas[j]));
			else ret = 1;
			break;
		}
	
	if (ret == UNDEF) {
		state->current = UNDEF;
		goto error;
	}
	
	if ((ret < 0) || (ret == state->spurious)) {
		ret = state->current = state->spurious;
		goto error;
	}
	
	if ((ret > 0) && (state->deltas[j].next != ANY)) state->current = state->deltas[j].next;
	
	if (state->current == state->final) {
		ret = 0;
		goto error;
	}
	
error:
	return ret;
}

