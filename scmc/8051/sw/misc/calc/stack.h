#ifndef _STACK_
#define _STACK_

#include <stdlib.h>
#include <stdint.h>

#define SIZE 2048

typedef struct stack {
	long data[SIZE];
	int N, p;
} stack_t;

typedef int (*stack_iter_t)(void *, long) __reentrant;

void stack_init(stack_t *s) __reentrant;
int stack_push(stack_t *s, long val) __reentrant;
int stack_pop(stack_t *s, long *val) __reentrant;
int stack_peek(stack_t *s, long *val) __reentrant;
int stack_iter_peek(stack_t *s, stack_iter_t iter, void *_ctx) __reentrant;

#endif

