                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module crc16
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int0
                                     13 	.globl _printf
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _FL
                                     21 	.globl _P
                                     22 	.globl _TF2
                                     23 	.globl _EXF2
                                     24 	.globl _RCLK
                                     25 	.globl _TCLK
                                     26 	.globl _EXEN2
                                     27 	.globl _TR2
                                     28 	.globl _C_T2
                                     29 	.globl _CP_RL2
                                     30 	.globl _T2CON_7
                                     31 	.globl _T2CON_6
                                     32 	.globl _T2CON_5
                                     33 	.globl _T2CON_4
                                     34 	.globl _T2CON_3
                                     35 	.globl _T2CON_2
                                     36 	.globl _T2CON_1
                                     37 	.globl _T2CON_0
                                     38 	.globl _PT2
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ET2
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _T2EX
                                     84 	.globl _T2
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _B
                                    110 	.globl _A
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _TH2
                                    114 	.globl _TL2
                                    115 	.globl _RCAP2H
                                    116 	.globl _RCAP2L
                                    117 	.globl _T2MOD
                                    118 	.globl _T2CON
                                    119 	.globl _IP
                                    120 	.globl _P3
                                    121 	.globl _IE
                                    122 	.globl _P2
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _P1
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _P0
                                    137 	.globl _intr
                                    138 	.globl _putchar
                                    139 	.globl _getchar
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000C8   163 _T2CON	=	0x00c8
                           0000C9   164 _T2MOD	=	0x00c9
                           0000CA   165 _RCAP2L	=	0x00ca
                           0000CB   166 _RCAP2H	=	0x00cb
                           0000CC   167 _TL2	=	0x00cc
                           0000CD   168 _TH2	=	0x00cd
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000E0   171 _A	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000090   202 _T2	=	0x0090
                           000091   203 _T2EX	=	0x0091
                           000098   204 _RI	=	0x0098
                           000099   205 _TI	=	0x0099
                           00009A   206 _RB8	=	0x009a
                           00009B   207 _TB8	=	0x009b
                           00009C   208 _REN	=	0x009c
                           00009D   209 _SM2	=	0x009d
                           00009E   210 _SM1	=	0x009e
                           00009F   211 _SM0	=	0x009f
                           0000A0   212 _P2_0	=	0x00a0
                           0000A1   213 _P2_1	=	0x00a1
                           0000A2   214 _P2_2	=	0x00a2
                           0000A3   215 _P2_3	=	0x00a3
                           0000A4   216 _P2_4	=	0x00a4
                           0000A5   217 _P2_5	=	0x00a5
                           0000A6   218 _P2_6	=	0x00a6
                           0000A7   219 _P2_7	=	0x00a7
                           0000A8   220 _EX0	=	0x00a8
                           0000A9   221 _ET0	=	0x00a9
                           0000AA   222 _EX1	=	0x00aa
                           0000AB   223 _ET1	=	0x00ab
                           0000AC   224 _ES	=	0x00ac
                           0000AD   225 _ET2	=	0x00ad
                           0000AF   226 _EA	=	0x00af
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 _P3_2	=	0x00b2
                           0000B3   230 _P3_3	=	0x00b3
                           0000B4   231 _P3_4	=	0x00b4
                           0000B5   232 _P3_5	=	0x00b5
                           0000B6   233 _P3_6	=	0x00b6
                           0000B7   234 _P3_7	=	0x00b7
                           0000B0   235 _RXD	=	0x00b0
                           0000B1   236 _TXD	=	0x00b1
                           0000B2   237 _INT0	=	0x00b2
                           0000B3   238 _INT1	=	0x00b3
                           0000B4   239 _T0	=	0x00b4
                           0000B5   240 _T1	=	0x00b5
                           0000B6   241 _WR	=	0x00b6
                           0000B7   242 _RD	=	0x00b7
                           0000B8   243 _PX0	=	0x00b8
                           0000B9   244 _PT0	=	0x00b9
                           0000BA   245 _PX1	=	0x00ba
                           0000BB   246 _PT1	=	0x00bb
                           0000BC   247 _PS	=	0x00bc
                           0000BD   248 _PT2	=	0x00bd
                           0000C8   249 _T2CON_0	=	0x00c8
                           0000C9   250 _T2CON_1	=	0x00c9
                           0000CA   251 _T2CON_2	=	0x00ca
                           0000CB   252 _T2CON_3	=	0x00cb
                           0000CC   253 _T2CON_4	=	0x00cc
                           0000CD   254 _T2CON_5	=	0x00cd
                           0000CE   255 _T2CON_6	=	0x00ce
                           0000CF   256 _T2CON_7	=	0x00cf
                           0000C8   257 _CP_RL2	=	0x00c8
                           0000C9   258 _C_T2	=	0x00c9
                           0000CA   259 _TR2	=	0x00ca
                           0000CB   260 _EXEN2	=	0x00cb
                           0000CC   261 _TCLK	=	0x00cc
                           0000CD   262 _RCLK	=	0x00cd
                           0000CE   263 _EXF2	=	0x00ce
                           0000CF   264 _TF2	=	0x00cf
                           0000D0   265 _P	=	0x00d0
                           0000D1   266 _FL	=	0x00d1
                           0000D2   267 _OV	=	0x00d2
                           0000D3   268 _RS0	=	0x00d3
                           0000D4   269 _RS1	=	0x00d4
                           0000D5   270 _F0	=	0x00d5
                           0000D6   271 _AC	=	0x00d6
                           0000D7   272 _CY	=	0x00d7
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable register banks
                                    275 ;--------------------------------------------------------
                                    276 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        277 	.ds 8
                                    278 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        279 	.ds 8
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable bit register bank
                                    282 ;--------------------------------------------------------
                                    283 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        284 bits:
      000020                        285 	.ds 1
                           008000   286 	b0 = bits[0]
                           008100   287 	b1 = bits[1]
                           008200   288 	b2 = bits[2]
                           008300   289 	b3 = bits[3]
                           008400   290 	b4 = bits[4]
                           008500   291 	b5 = bits[5]
                           008600   292 	b6 = bits[6]
                           008700   293 	b7 = bits[7]
                                    294 ;--------------------------------------------------------
                                    295 ; internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area DSEG    (DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; overlayable items in internal ram 
                                    300 ;--------------------------------------------------------
                                    301 ;--------------------------------------------------------
                                    302 ; Stack segment in internal ram 
                                    303 ;--------------------------------------------------------
                                    304 	.area	SSEG
      000021                        305 __start__stack:
      000021                        306 	.ds	1
                                    307 
                                    308 ;--------------------------------------------------------
                                    309 ; indirectly addressable internal ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area ISEG    (DATA)
                                    312 ;--------------------------------------------------------
                                    313 ; absolute internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area IABS    (ABS,DATA)
                                    316 	.area IABS    (ABS,DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; bit data
                                    319 ;--------------------------------------------------------
                                    320 	.area BSEG    (BIT)
                                    321 ;--------------------------------------------------------
                                    322 ; paged external ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area PSEG    (PAG,XDATA)
                                    325 ;--------------------------------------------------------
                                    326 ; external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XSEG    (XDATA)
      008000                        329 _intr::
      008000                        330 	.ds 2
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
                                    339 	.area HOME    (CODE)
                                    340 	.area GSINIT0 (CODE)
                                    341 	.area GSINIT1 (CODE)
                                    342 	.area GSINIT2 (CODE)
                                    343 	.area GSINIT3 (CODE)
                                    344 	.area GSINIT4 (CODE)
                                    345 	.area GSINIT5 (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.area GSFINAL (CODE)
                                    348 	.area CSEG    (CODE)
                                    349 ;--------------------------------------------------------
                                    350 ; interrupt vector 
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
      002000                        353 __interrupt_vect:
      002000 02 20 09         [24]  354 	ljmp	__sdcc_gsinit_startup
      002003 02 20 72         [24]  355 	ljmp	_int0
                                    356 ;--------------------------------------------------------
                                    357 ; global & static initialisations
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.globl __sdcc_gsinit_startup
                                    364 	.globl __sdcc_program_startup
                                    365 	.globl __start__stack
                                    366 	.globl __mcs51_genXINIT
                                    367 	.globl __mcs51_genXRAMCLEAR
                                    368 	.globl __mcs51_genRAMCLEAR
                                    369 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      002006                        376 __sdcc_program_startup:
      002006 02 22 09         [24]  377 	ljmp	_main
                                    378 ;	return from main will return to caller
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'putchar'
                                    385 ;------------------------------------------------------------
                                    386 ;c                         Allocated to registers 
                                    387 ;------------------------------------------------------------
                                    388 ;	crc16.c:11: int putchar(int c) __naked {
                                    389 ;	-----------------------------------------
                                    390 ;	 function putchar
                                    391 ;	-----------------------------------------
      002065                        392 _putchar:
                                    393 ;	naked function: no prologue.
                                    394 ;	crc16.c:16: __endasm;
      002065 E5 82            [12]  395 	mov	a, dpl
      002067 02 00 30         [24]  396 	ljmp	0x0030
                                    397 ;	crc16.c:17: }
                                    398 ;	naked function: no epilogue.
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'getchar'
                                    401 ;------------------------------------------------------------
                                    402 ;	crc16.c:19: int getchar(void) {
                                    403 ;	-----------------------------------------
                                    404 ;	 function getchar
                                    405 ;	-----------------------------------------
      00206A                        406 _getchar:
                           000007   407 	ar7 = 0x07
                           000006   408 	ar6 = 0x06
                           000005   409 	ar5 = 0x05
                           000004   410 	ar4 = 0x04
                           000003   411 	ar3 = 0x03
                           000002   412 	ar2 = 0x02
                           000001   413 	ar1 = 0x01
                           000000   414 	ar0 = 0x00
                                    415 ;	crc16.c:24: __endasm;
      00206A 12 00 32         [24]  416 	lcall	0x0032
      00206D C2 83            [12]  417 	clr	dph
      00206F F5 82            [12]  418 	mov	dpl, a
                                    419 ;	crc16.c:25: }
      002071 22               [24]  420 	ret
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'int0'
                                    423 ;------------------------------------------------------------
                                    424 ;	crc16.c:29: void int0(void) __interrupt 0 __using 1 {
                                    425 ;	-----------------------------------------
                                    426 ;	 function int0
                                    427 ;	-----------------------------------------
      002072                        428 _int0:
                           00000F   429 	ar7 = 0x0f
                           00000E   430 	ar6 = 0x0e
                           00000D   431 	ar5 = 0x0d
                           00000C   432 	ar4 = 0x0c
                           00000B   433 	ar3 = 0x0b
                           00000A   434 	ar2 = 0x0a
                           000009   435 	ar1 = 0x09
                           000008   436 	ar0 = 0x08
      002072 C0 E0            [24]  437 	push	acc
      002074 C0 82            [24]  438 	push	dpl
      002076 C0 83            [24]  439 	push	dph
                                    440 ;	crc16.c:30: intr = 1;
      002078 90 80 00         [24]  441 	mov	dptr,#_intr
      00207B 74 01            [12]  442 	mov	a,#0x01
      00207D F0               [24]  443 	movx	@dptr,a
      00207E E4               [12]  444 	clr	a
      00207F A3               [24]  445 	inc	dptr
      002080 F0               [24]  446 	movx	@dptr,a
                                    447 ;	crc16.c:31: }
      002081 D0 83            [24]  448 	pop	dph
      002083 D0 82            [24]  449 	pop	dpl
      002085 D0 E0            [24]  450 	pop	acc
      002087 32               [24]  451 	reti
                                    452 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    453 ;	eliminated unneeded push/pop psw
                                    454 ;	eliminated unneeded push/pop b
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'ccrcb_init'
                                    457 ;------------------------------------------------------------
                                    458 ;r                         Allocated to registers r5 r6 r7 
                                    459 ;------------------------------------------------------------
                                    460 ;	crc16.c:33: static void ccrcb_init(unsigned int *r) {
                                    461 ;	-----------------------------------------
                                    462 ;	 function ccrcb_init
                                    463 ;	-----------------------------------------
      002088                        464 _ccrcb_init:
                           000007   465 	ar7 = 0x07
                           000006   466 	ar6 = 0x06
                           000005   467 	ar5 = 0x05
                           000004   468 	ar4 = 0x04
                           000003   469 	ar3 = 0x03
                           000002   470 	ar2 = 0x02
                           000001   471 	ar1 = 0x01
                           000000   472 	ar0 = 0x00
                                    473 ;	crc16.c:34: *r = ACC_INITIAL;
      002088 74 FF            [12]  474 	mov	a,#0xff
      00208A 12 22 CE         [24]  475 	lcall	__gptrput
      00208D A3               [24]  476 	inc	dptr
                                    477 ;	crc16.c:35: return;
                                    478 ;	crc16.c:36: }
      00208E 02 22 CE         [24]  479 	ljmp	__gptrput
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'ccrcb'
                                    482 ;------------------------------------------------------------
                                    483 ;oct                       Allocated to stack - _bp -3
                                    484 ;r                         Allocated to registers r5 r6 r7 
                                    485 ;rt                        Allocated to registers r3 r4 
                                    486 ;bitp                      Allocated to stack - _bp +3
                                    487 ;sloc0                     Allocated to stack - _bp +1
                                    488 ;------------------------------------------------------------
                                    489 ;	crc16.c:38: static void ccrcb(unsigned int *r, unsigned char oct) {
                                    490 ;	-----------------------------------------
                                    491 ;	 function ccrcb
                                    492 ;	-----------------------------------------
      002091                        493 _ccrcb:
      002091 C0 10            [24]  494 	push	_bp
      002093 85 81 10         [24]  495 	mov	_bp,sp
      002096 05 81            [12]  496 	inc	sp
      002098 05 81            [12]  497 	inc	sp
      00209A 05 81            [12]  498 	inc	sp
                                    499 ;	crc16.c:42: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
      00209C AD 82            [24]  500 	mov	r5,dpl
      00209E AE 83            [24]  501 	mov	r6,dph
      0020A0 AF F0            [24]  502 	mov	r7,b
      0020A2 12 23 68         [24]  503 	lcall	__gptrget
      0020A5 FB               [12]  504 	mov	r3,a
      0020A6 A3               [24]  505 	inc	dptr
      0020A7 12 23 68         [24]  506 	lcall	__gptrget
      0020AA FC               [12]  507 	mov	r4,a
      0020AB E5 10            [12]  508 	mov	a,_bp
      0020AD 24 03            [12]  509 	add	a,#0x03
      0020AF F8               [12]  510 	mov	r0,a
      0020B0 76 80            [12]  511 	mov	@r0,#0x80
      0020B2                        512 00103$:
      0020B2 E5 10            [12]  513 	mov	a,_bp
      0020B4 24 03            [12]  514 	add	a,#0x03
      0020B6 F8               [12]  515 	mov	r0,a
      0020B7 E6               [12]  516 	mov	a,@r0
      0020B8 60 70            [24]  517 	jz	00101$
                                    518 ;	crc16.c:43: rt = ((rt >> 15) ^ (!!(oct & bitp))) ? ((rt << 1) ^ POLY) : (rt << 1);
      0020BA C0 05            [24]  519 	push	ar5
      0020BC C0 06            [24]  520 	push	ar6
      0020BE C0 07            [24]  521 	push	ar7
      0020C0 EC               [12]  522 	mov	a,r4
      0020C1 23               [12]  523 	rl	a
      0020C2 54 01            [12]  524 	anl	a,#0x01
      0020C4 FE               [12]  525 	mov	r6,a
      0020C5 7F 00            [12]  526 	mov	r7,#0x00
      0020C7 E5 10            [12]  527 	mov	a,_bp
      0020C9 24 FD            [12]  528 	add	a,#0xfd
      0020CB F8               [12]  529 	mov	r0,a
      0020CC E5 10            [12]  530 	mov	a,_bp
      0020CE 24 03            [12]  531 	add	a,#0x03
      0020D0 F9               [12]  532 	mov	r1,a
      0020D1 E7               [12]  533 	mov	a,@r1
      0020D2 56               [12]  534 	anl	a,@r0
      0020D3 B4 01 00         [24]  535 	cjne	a,#0x01,00122$
      0020D6                        536 00122$:
      0020D6 B3               [12]  537 	cpl	c
      0020D7 92 00            [24]  538 	mov	b0,c
      0020D9 E4               [12]  539 	clr	a
      0020DA 33               [12]  540 	rlc	a
      0020DB FA               [12]  541 	mov	r2,a
      0020DC 7D 00            [12]  542 	mov	r5,#0x00
      0020DE 62 06            [12]  543 	xrl	ar6,a
      0020E0 ED               [12]  544 	mov	a,r5
      0020E1 62 07            [12]  545 	xrl	ar7,a
      0020E3 EE               [12]  546 	mov	a,r6
      0020E4 4F               [12]  547 	orl	a,r7
      0020E5 D0 07            [24]  548 	pop	ar7
      0020E7 D0 06            [24]  549 	pop	ar6
      0020E9 D0 05            [24]  550 	pop	ar5
      0020EB 60 20            [24]  551 	jz	00107$
      0020ED C0 05            [24]  552 	push	ar5
      0020EF C0 06            [24]  553 	push	ar6
      0020F1 C0 07            [24]  554 	push	ar7
      0020F3 EB               [12]  555 	mov	a,r3
      0020F4 2B               [12]  556 	add	a,r3
      0020F5 FA               [12]  557 	mov	r2,a
      0020F6 EC               [12]  558 	mov	a,r4
      0020F7 33               [12]  559 	rlc	a
      0020F8 FF               [12]  560 	mov	r7,a
      0020F9 A8 10            [24]  561 	mov	r0,_bp
      0020FB 08               [12]  562 	inc	r0
      0020FC 74 21            [12]  563 	mov	a,#0x21
      0020FE 6A               [12]  564 	xrl	a,r2
      0020FF F6               [12]  565 	mov	@r0,a
      002100 74 10            [12]  566 	mov	a,#0x10
      002102 6F               [12]  567 	xrl	a,r7
      002103 08               [12]  568 	inc	r0
      002104 F6               [12]  569 	mov	@r0,a
      002105 D0 07            [24]  570 	pop	ar7
      002107 D0 06            [24]  571 	pop	ar6
      002109 D0 05            [24]  572 	pop	ar5
      00210B 80 0A            [24]  573 	sjmp	00108$
      00210D                        574 00107$:
      00210D A8 10            [24]  575 	mov	r0,_bp
      00210F 08               [12]  576 	inc	r0
      002110 EB               [12]  577 	mov	a,r3
      002111 2B               [12]  578 	add	a,r3
      002112 F6               [12]  579 	mov	@r0,a
      002113 EC               [12]  580 	mov	a,r4
      002114 33               [12]  581 	rlc	a
      002115 08               [12]  582 	inc	r0
      002116 F6               [12]  583 	mov	@r0,a
      002117                        584 00108$:
      002117 A8 10            [24]  585 	mov	r0,_bp
      002119 08               [12]  586 	inc	r0
      00211A 86 03            [24]  587 	mov	ar3,@r0
      00211C 08               [12]  588 	inc	r0
      00211D 86 04            [24]  589 	mov	ar4,@r0
                                    590 ;	crc16.c:42: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
      00211F E5 10            [12]  591 	mov	a,_bp
      002121 24 03            [12]  592 	add	a,#0x03
      002123 F8               [12]  593 	mov	r0,a
      002124 E6               [12]  594 	mov	a,@r0
      002125 C3               [12]  595 	clr	c
      002126 13               [12]  596 	rrc	a
      002127 F6               [12]  597 	mov	@r0,a
      002128 80 88            [24]  598 	sjmp	00103$
      00212A                        599 00101$:
                                    600 ;	crc16.c:44: *r = rt;
      00212A 8D 82            [24]  601 	mov	dpl,r5
      00212C 8E 83            [24]  602 	mov	dph,r6
      00212E 8F F0            [24]  603 	mov	b,r7
      002130 EB               [12]  604 	mov	a,r3
      002131 12 22 CE         [24]  605 	lcall	__gptrput
      002134 A3               [24]  606 	inc	dptr
      002135 EC               [12]  607 	mov	a,r4
      002136 12 22 CE         [24]  608 	lcall	__gptrput
                                    609 ;	crc16.c:45: }
      002139 85 10 81         [24]  610 	mov	sp,_bp
      00213C D0 10            [24]  611 	pop	_bp
      00213E 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'ccrcb_finish'
                                    615 ;------------------------------------------------------------
                                    616 ;r                         Allocated to registers r5 r6 r7 
                                    617 ;------------------------------------------------------------
                                    618 ;	crc16.c:47: static void ccrcb_finish(unsigned int *r) {
                                    619 ;	-----------------------------------------
                                    620 ;	 function ccrcb_finish
                                    621 ;	-----------------------------------------
      00213F                        622 _ccrcb_finish:
                                    623 ;	crc16.c:48: *r ^= ACC_FINAL;
      00213F AD 82            [24]  624 	mov	r5,dpl
      002141 AE 83            [24]  625 	mov	r6,dph
      002143 AF F0            [24]  626 	mov	r7,b
      002145 12 23 68         [24]  627 	lcall	__gptrget
      002148 FB               [12]  628 	mov	r3,a
      002149 A3               [24]  629 	inc	dptr
      00214A 12 23 68         [24]  630 	lcall	__gptrget
      00214D FC               [12]  631 	mov	r4,a
      00214E 8D 82            [24]  632 	mov	dpl,r5
      002150 8E 83            [24]  633 	mov	dph,r6
      002152 8F F0            [24]  634 	mov	b,r7
      002154 EB               [12]  635 	mov	a,r3
      002155 12 22 CE         [24]  636 	lcall	__gptrput
      002158 A3               [24]  637 	inc	dptr
      002159 EC               [12]  638 	mov	a,r4
                                    639 ;	crc16.c:49: }
      00215A 02 22 CE         [24]  640 	ljmp	__gptrput
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'calc_crc'
                                    643 ;------------------------------------------------------------
                                    644 ;len                       Allocated to stack - _bp -4
                                    645 ;base                      Allocated to stack - _bp +1
                                    646 ;off                       Allocated to stack - _bp +4
                                    647 ;crc                       Allocated to stack - _bp +6
                                    648 ;------------------------------------------------------------
                                    649 ;	crc16.c:51: static unsigned int calc_crc(unsigned char *base, unsigned int len) {
                                    650 ;	-----------------------------------------
                                    651 ;	 function calc_crc
                                    652 ;	-----------------------------------------
      00215D                        653 _calc_crc:
      00215D C0 10            [24]  654 	push	_bp
      00215F 85 81 10         [24]  655 	mov	_bp,sp
      002162 C0 82            [24]  656 	push	dpl
      002164 C0 83            [24]  657 	push	dph
      002166 C0 F0            [24]  658 	push	b
      002168 E5 81            [12]  659 	mov	a,sp
      00216A 24 04            [12]  660 	add	a,#0x04
      00216C F5 81            [12]  661 	mov	sp,a
                                    662 ;	crc16.c:54: ccrcb_init(&crc);
      00216E E5 10            [12]  663 	mov	a,_bp
      002170 24 06            [12]  664 	add	a,#0x06
      002172 FC               [12]  665 	mov	r4,a
      002173 FA               [12]  666 	mov	r2,a
      002174 7B 00            [12]  667 	mov	r3,#0x00
      002176 7F 40            [12]  668 	mov	r7,#0x40
      002178 8A 82            [24]  669 	mov	dpl,r2
      00217A 8B 83            [24]  670 	mov	dph,r3
      00217C 8F F0            [24]  671 	mov	b,r7
      00217E C0 04            [24]  672 	push	ar4
      002180 12 20 88         [24]  673 	lcall	_ccrcb_init
      002183 D0 04            [24]  674 	pop	ar4
                                    675 ;	crc16.c:55: for (off = 0u; off < len; off++)
      002185 8C 07            [24]  676 	mov	ar7,r4
      002187 E5 10            [12]  677 	mov	a,_bp
      002189 24 04            [12]  678 	add	a,#0x04
      00218B F8               [12]  679 	mov	r0,a
      00218C E4               [12]  680 	clr	a
      00218D F6               [12]  681 	mov	@r0,a
      00218E 08               [12]  682 	inc	r0
      00218F F6               [12]  683 	mov	@r0,a
      002190                        684 00103$:
      002190 E5 10            [12]  685 	mov	a,_bp
      002192 24 04            [12]  686 	add	a,#0x04
      002194 F8               [12]  687 	mov	r0,a
      002195 E5 10            [12]  688 	mov	a,_bp
      002197 24 FC            [12]  689 	add	a,#0xfc
      002199 F9               [12]  690 	mov	r1,a
      00219A C3               [12]  691 	clr	c
      00219B E6               [12]  692 	mov	a,@r0
      00219C 97               [12]  693 	subb	a,@r1
      00219D 08               [12]  694 	inc	r0
      00219E E6               [12]  695 	mov	a,@r0
      00219F 09               [12]  696 	inc	r1
      0021A0 97               [12]  697 	subb	a,@r1
      0021A1 50 49            [24]  698 	jnc	00101$
                                    699 ;	crc16.c:56: ccrcb(&crc, base[off]);
      0021A3 C0 04            [24]  700 	push	ar4
      0021A5 A8 10            [24]  701 	mov	r0,_bp
      0021A7 08               [12]  702 	inc	r0
      0021A8 E5 10            [12]  703 	mov	a,_bp
      0021AA 24 04            [12]  704 	add	a,#0x04
      0021AC F9               [12]  705 	mov	r1,a
      0021AD E7               [12]  706 	mov	a,@r1
      0021AE 26               [12]  707 	add	a,@r0
      0021AF FA               [12]  708 	mov	r2,a
      0021B0 09               [12]  709 	inc	r1
      0021B1 E7               [12]  710 	mov	a,@r1
      0021B2 08               [12]  711 	inc	r0
      0021B3 36               [12]  712 	addc	a,@r0
      0021B4 FB               [12]  713 	mov	r3,a
      0021B5 08               [12]  714 	inc	r0
      0021B6 86 04            [24]  715 	mov	ar4,@r0
      0021B8 8A 82            [24]  716 	mov	dpl,r2
      0021BA 8B 83            [24]  717 	mov	dph,r3
      0021BC 8C F0            [24]  718 	mov	b,r4
      0021BE 12 23 68         [24]  719 	lcall	__gptrget
      0021C1 FA               [12]  720 	mov	r2,a
      0021C2 8F 03            [24]  721 	mov	ar3,r7
      0021C4 7C 00            [12]  722 	mov	r4,#0x00
      0021C6 7E 40            [12]  723 	mov	r6,#0x40
      0021C8 C0 07            [24]  724 	push	ar7
      0021CA C0 04            [24]  725 	push	ar4
      0021CC C0 02            [24]  726 	push	ar2
      0021CE 8B 82            [24]  727 	mov	dpl,r3
      0021D0 8C 83            [24]  728 	mov	dph,r4
      0021D2 8E F0            [24]  729 	mov	b,r6
      0021D4 12 20 91         [24]  730 	lcall	_ccrcb
      0021D7 15 81            [12]  731 	dec	sp
      0021D9 D0 04            [24]  732 	pop	ar4
      0021DB D0 07            [24]  733 	pop	ar7
                                    734 ;	crc16.c:55: for (off = 0u; off < len; off++)
      0021DD E5 10            [12]  735 	mov	a,_bp
      0021DF 24 04            [12]  736 	add	a,#0x04
      0021E1 F8               [12]  737 	mov	r0,a
      0021E2 06               [12]  738 	inc	@r0
      0021E3 B6 00 02         [24]  739 	cjne	@r0,#0x00,00117$
      0021E6 08               [12]  740 	inc	r0
      0021E7 06               [12]  741 	inc	@r0
      0021E8                        742 00117$:
      0021E8 D0 04            [24]  743 	pop	ar4
      0021EA 80 A4            [24]  744 	sjmp	00103$
      0021EC                        745 00101$:
                                    746 ;	crc16.c:57: ccrcb_finish(&crc);
      0021EC 7F 00            [12]  747 	mov	r7,#0x00
      0021EE 7E 40            [12]  748 	mov	r6,#0x40
      0021F0 8C 82            [24]  749 	mov	dpl,r4
      0021F2 8F 83            [24]  750 	mov	dph,r7
      0021F4 8E F0            [24]  751 	mov	b,r6
      0021F6 12 21 3F         [24]  752 	lcall	_ccrcb_finish
                                    753 ;	crc16.c:59: return crc;
      0021F9 E5 10            [12]  754 	mov	a,_bp
      0021FB 24 06            [12]  755 	add	a,#0x06
      0021FD F8               [12]  756 	mov	r0,a
      0021FE 86 82            [24]  757 	mov	dpl,@r0
      002200 08               [12]  758 	inc	r0
      002201 86 83            [24]  759 	mov	dph,@r0
                                    760 ;	crc16.c:60: }
      002203 85 10 81         [24]  761 	mov	sp,_bp
      002206 D0 10            [24]  762 	pop	_bp
      002208 22               [24]  763 	ret
                                    764 ;------------------------------------------------------------
                                    765 ;Allocation info for local variables in function 'main'
                                    766 ;------------------------------------------------------------
                                    767 ;base                      Allocated to registers r5 r6 r7 
                                    768 ;len                       Allocated to registers 
                                    769 ;crc                       Allocated to registers 
                                    770 ;------------------------------------------------------------
                                    771 ;	crc16.c:64: void main(void) {
                                    772 ;	-----------------------------------------
                                    773 ;	 function main
                                    774 ;	-----------------------------------------
      002209                        775 _main:
                                    776 ;	crc16.c:69: intr = 0;
      002209 90 80 00         [24]  777 	mov	dptr,#_intr
      00220C E4               [12]  778 	clr	a
      00220D F0               [24]  779 	movx	@dptr,a
      00220E A3               [24]  780 	inc	dptr
      00220F F0               [24]  781 	movx	@dptr,a
                                    782 ;	crc16.c:71: IT0 = 1;
                                    783 ;	assignBit
      002210 D2 88            [12]  784 	setb	_IT0
                                    785 ;	crc16.c:72: EX0 = 1;
                                    786 ;	assignBit
      002212 D2 A8            [12]  787 	setb	_EX0
                                    788 ;	crc16.c:73: EA = 1;
                                    789 ;	assignBit
      002214 D2 AF            [12]  790 	setb	_EA
                                    791 ;	crc16.c:75: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
      002216 7D 00            [12]  792 	mov	r5,#0x00
      002218 7E 00            [12]  793 	mov	r6,#0x00
      00221A 7F 00            [12]  794 	mov	r7,#0x00
      00221C                        795 00104$:
                                    796 ;	crc16.c:76: printf("base=0x%04x ", (unsigned int)base);
      00221C 8D 03            [24]  797 	mov	ar3,r5
      00221E 8E 04            [24]  798 	mov	ar4,r6
      002220 C0 07            [24]  799 	push	ar7
      002222 C0 06            [24]  800 	push	ar6
      002224 C0 05            [24]  801 	push	ar5
      002226 C0 03            [24]  802 	push	ar3
      002228 C0 04            [24]  803 	push	ar4
      00222A 74 13            [12]  804 	mov	a,#___str_0
      00222C C0 E0            [24]  805 	push	acc
      00222E 74 36            [12]  806 	mov	a,#(___str_0 >> 8)
      002230 C0 E0            [24]  807 	push	acc
      002232 74 80            [12]  808 	mov	a,#0x80
      002234 C0 E0            [24]  809 	push	acc
      002236 12 23 2F         [24]  810 	lcall	_printf
      002239 E5 81            [12]  811 	mov	a,sp
      00223B 24 FB            [12]  812 	add	a,#0xfb
      00223D F5 81            [12]  813 	mov	sp,a
                                    814 ;	crc16.c:77: printf("len=0x%04x ", len);
      00223F E4               [12]  815 	clr	a
      002240 C0 E0            [24]  816 	push	acc
      002242 74 20            [12]  817 	mov	a,#0x20
      002244 C0 E0            [24]  818 	push	acc
      002246 74 20            [12]  819 	mov	a,#___str_1
      002248 C0 E0            [24]  820 	push	acc
      00224A 74 36            [12]  821 	mov	a,#(___str_1 >> 8)
      00224C C0 E0            [24]  822 	push	acc
      00224E 74 80            [12]  823 	mov	a,#0x80
      002250 C0 E0            [24]  824 	push	acc
      002252 12 23 2F         [24]  825 	lcall	_printf
      002255 E5 81            [12]  826 	mov	a,sp
      002257 24 FB            [12]  827 	add	a,#0xfb
      002259 F5 81            [12]  828 	mov	sp,a
      00225B D0 05            [24]  829 	pop	ar5
      00225D D0 06            [24]  830 	pop	ar6
      00225F D0 07            [24]  831 	pop	ar7
                                    832 ;	crc16.c:78: crc = calc_crc(base, len);
      002261 C0 07            [24]  833 	push	ar7
      002263 C0 06            [24]  834 	push	ar6
      002265 C0 05            [24]  835 	push	ar5
      002267 E4               [12]  836 	clr	a
      002268 C0 E0            [24]  837 	push	acc
      00226A 74 20            [12]  838 	mov	a,#0x20
      00226C C0 E0            [24]  839 	push	acc
      00226E 8D 82            [24]  840 	mov	dpl,r5
      002270 8E 83            [24]  841 	mov	dph,r6
      002272 8F F0            [24]  842 	mov	b,r7
      002274 12 21 5D         [24]  843 	lcall	_calc_crc
      002277 AB 82            [24]  844 	mov	r3,dpl
      002279 AC 83            [24]  845 	mov	r4,dph
      00227B 15 81            [12]  846 	dec	sp
      00227D 15 81            [12]  847 	dec	sp
                                    848 ;	crc16.c:79: printf("CRC16=0x%04x\n\r", crc);
      00227F C0 03            [24]  849 	push	ar3
      002281 C0 04            [24]  850 	push	ar4
      002283 74 2C            [12]  851 	mov	a,#___str_2
      002285 C0 E0            [24]  852 	push	acc
      002287 74 36            [12]  853 	mov	a,#(___str_2 >> 8)
      002289 C0 E0            [24]  854 	push	acc
      00228B 74 80            [12]  855 	mov	a,#0x80
      00228D C0 E0            [24]  856 	push	acc
      00228F 12 23 2F         [24]  857 	lcall	_printf
      002292 E5 81            [12]  858 	mov	a,sp
      002294 24 FB            [12]  859 	add	a,#0xfb
      002296 F5 81            [12]  860 	mov	sp,a
      002298 D0 05            [24]  861 	pop	ar5
      00229A D0 06            [24]  862 	pop	ar6
      00229C D0 07            [24]  863 	pop	ar7
                                    864 ;	crc16.c:81: if (intr) {
      00229E 90 80 00         [24]  865 	mov	dptr,#_intr
      0022A1 E0               [24]  866 	movx	a,@dptr
      0022A2 F5 F0            [12]  867 	mov	b,a
      0022A4 A3               [24]  868 	inc	dptr
      0022A5 E0               [24]  869 	movx	a,@dptr
      0022A6 45 F0            [12]  870 	orl	a,b
      0022A8 60 19            [24]  871 	jz	00105$
                                    872 ;	crc16.c:82: EA = 0;
                                    873 ;	assignBit
      0022AA C2 AF            [12]  874 	clr	_EA
                                    875 ;	crc16.c:83: printf("interrupted\n");
      0022AC 74 3B            [12]  876 	mov	a,#___str_3
      0022AE C0 E0            [24]  877 	push	acc
      0022B0 74 36            [12]  878 	mov	a,#(___str_3 >> 8)
      0022B2 C0 E0            [24]  879 	push	acc
      0022B4 74 80            [12]  880 	mov	a,#0x80
      0022B6 C0 E0            [24]  881 	push	acc
      0022B8 12 23 2F         [24]  882 	lcall	_printf
      0022BB 15 81            [12]  883 	dec	sp
      0022BD 15 81            [12]  884 	dec	sp
      0022BF 15 81            [12]  885 	dec	sp
                                    886 ;	crc16.c:84: break;
      0022C1 80 07            [24]  887 	sjmp	00103$
      0022C3                        888 00105$:
                                    889 ;	crc16.c:75: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
      0022C3 74 10            [12]  890 	mov	a,#0x10
      0022C5 2E               [12]  891 	add	a,r6
      0022C6 FE               [12]  892 	mov	r6,a
      0022C7 02 22 1C         [24]  893 	ljmp	00104$
      0022CA                        894 00103$:
                                    895 ;	crc16.c:91: __endasm;
      0022CA 02 00 00         [24]  896 	ljmp	0
                                    897 ;	crc16.c:96: }
      0022CD 22               [24]  898 	ret
                                    899 	.area CSEG    (CODE)
                                    900 	.area CONST   (CODE)
                                    901 	.area CONST   (CODE)
      003613                        902 ___str_0:
      003613 62 61 73 65 3D 30 78   903 	.ascii "base=0x%04x "
             25 30 34 78 20
      00361F 00                     904 	.db 0x00
                                    905 	.area CSEG    (CODE)
                                    906 	.area CONST   (CODE)
      003620                        907 ___str_1:
      003620 6C 65 6E 3D 30 78 25   908 	.ascii "len=0x%04x "
             30 34 78 20
      00362B 00                     909 	.db 0x00
                                    910 	.area CSEG    (CODE)
                                    911 	.area CONST   (CODE)
      00362C                        912 ___str_2:
      00362C 43 52 43 31 36 3D 30   913 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      003638 0A                     914 	.db 0x0a
      003639 0D                     915 	.db 0x0d
      00363A 00                     916 	.db 0x00
                                    917 	.area CSEG    (CODE)
                                    918 	.area CONST   (CODE)
      00363B                        919 ___str_3:
      00363B 69 6E 74 65 72 72 75   920 	.ascii "interrupted"
             70 74 65 64
      003646 0A                     921 	.db 0x0a
      003647 00                     922 	.db 0x00
                                    923 	.area CSEG    (CODE)
                                    924 	.area XINIT   (CODE)
                                    925 	.area CABS    (ABS,CODE)
