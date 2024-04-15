#!/bin/awk -f

BEGIN {
	printf("; VERSTR %s\n", verstr);
}

/JMP_TABLE/ {
	printf(".equ %s, %s\n", $2, $5);
}

