#!/usr/bin/awk -f

BEGIN {
	printf("/* VERSTR %s */\n", verstr);
	printf("#ifndef _PM2_ENTRY_\n#define _PM2_ENTRY_\n\n");
}

/JMP_TABLE/ {
	printf("#define pm2_entry_%s\t%s\n", $2, $5);
}

END {
	printf("\n#endif\n");
}
