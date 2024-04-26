#include <mcs51/at89x52.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "libpm21.h"

#include "fix_fft.h"

__idata static char print;

void int0(void) __interrupt IE0_VECTOR __using 1 {
	print = !print;
}

#define N 6
int16_t samples[(1 << N)];
int16_t fft[(1 << N)];
int16_t ifft[(1 << N)];

void main(void) {
	static volatile __xdata int *R = (__xdata int *)0xfffe;
	int i, j;
	int16_t scale;
	
	print = 1;
	
	IT0 = 1;
	EX0 = 1;
	EA = 1;
	
	srand(*R);
	
	for (i = 0; 1; i++) {
		for (j = 0; j < (1 << N); j++)
			samples[j] = ((rand() & 1) ? -1 : 1) * (int16_t)rand();
		
		printf("DO FFT IFFT %d\r\n", i);
		
		memcpy(fft, samples, sizeof (samples));
		scale = fix_fftr(fft, N, 0);		
/*
		if (print)
			for (j = 0; j < (1 << N) >> 1; j++)
				printf("bucket[% 8d] = % 8d + % 8d i, scale = % 8d\r\n",
						j, fft[j], fft[((1 << N) >> 1) + j], scale);
*/
		memcpy(ifft, fft, sizeof (fft));
		scale = fix_fftr(ifft, N, 1);
		
		if (print)
			for (j = 0; j < (1 << N); j++)
				printf("% 8d% 8d\r\n",
						samples[j], ifft[j] * (1 << scale));
		
		printf("DONE\r\n\r\n");
	}
	
	PCON |= 2;
	
	return;
}

