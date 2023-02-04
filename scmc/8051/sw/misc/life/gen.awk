#!/bin/awk -f

BEGIN {
	srand();
	for (i = 0; i < 2048; i++)
		if (int(rand() * 100) % 2) printf("1");
		else printf("0");
}

END {
	printf("#\n");
}

