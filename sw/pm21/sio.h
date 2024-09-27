#ifndef _SIO_H
#define _SIO_H

int putchar(int c);
int getchar(void);
int getchar_poll(void);
void printstr(const char *s);
void print8bin(unsigned char d);
void print16bin(unsigned int d);
void print32bin(unsigned long d);
void print8x(unsigned char d);
void print16x(unsigned int d);
void print32x(unsigned long d);

#endif

