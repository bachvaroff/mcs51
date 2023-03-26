#!/bin/awk -f

BEGIN {
	srand();
	for (i = 0; i < 4096; i++)
		if (int(rand() * 100) % 2) printf("1");
		else printf("0");
}

END {
	printf("#\n");
}

