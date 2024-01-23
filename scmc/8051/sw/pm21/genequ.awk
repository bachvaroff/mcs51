#!/bin/awk -f

/JMP_TABLE/ {
	printf(".equ %s, %s\n", $2, $5);
}

