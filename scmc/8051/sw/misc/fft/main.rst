                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int0
                                     13 	.globl _fix_fftr
                                     14 	.globl ___memcpy
                                     15 	.globl _srand
                                     16 	.globl _rand
                                     17 	.globl _printf
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _FL
                                     25 	.globl _P
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ET2
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _T2EX
                                     88 	.globl _T2
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _B
                                    114 	.globl _A
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2MOD
                                    122 	.globl _T2CON
                                    123 	.globl _IP
                                    124 	.globl _P3
                                    125 	.globl _IE
                                    126 	.globl _P2
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _P1
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _P0
                                    141 	.globl _ifft
                                    142 	.globl _fft
                                    143 	.globl _samples
                                    144 	.globl _putchar
                                    145 	.globl _getchar
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000C8   169 _T2CON	=	0x00c8
                           0000C9   170 _T2MOD	=	0x00c9
                           0000CA   171 _RCAP2L	=	0x00ca
                           0000CB   172 _RCAP2H	=	0x00cb
                           0000CC   173 _TL2	=	0x00cc
                           0000CD   174 _TH2	=	0x00cd
                           0000D0   175 _PSW	=	0x00d0
                           0000E0   176 _ACC	=	0x00e0
                           0000E0   177 _A	=	0x00e0
                           0000F0   178 _B	=	0x00f0
                                    179 ;--------------------------------------------------------
                                    180 ; special function bits
                                    181 ;--------------------------------------------------------
                                    182 	.area RSEG    (ABS,DATA)
      000000                        183 	.org 0x0000
                           000080   184 _P0_0	=	0x0080
                           000081   185 _P0_1	=	0x0081
                           000082   186 _P0_2	=	0x0082
                           000083   187 _P0_3	=	0x0083
                           000084   188 _P0_4	=	0x0084
                           000085   189 _P0_5	=	0x0085
                           000086   190 _P0_6	=	0x0086
                           000087   191 _P0_7	=	0x0087
                           000088   192 _IT0	=	0x0088
                           000089   193 _IE0	=	0x0089
                           00008A   194 _IT1	=	0x008a
                           00008B   195 _IE1	=	0x008b
                           00008C   196 _TR0	=	0x008c
                           00008D   197 _TF0	=	0x008d
                           00008E   198 _TR1	=	0x008e
                           00008F   199 _TF1	=	0x008f
                           000090   200 _P1_0	=	0x0090
                           000091   201 _P1_1	=	0x0091
                           000092   202 _P1_2	=	0x0092
                           000093   203 _P1_3	=	0x0093
                           000094   204 _P1_4	=	0x0094
                           000095   205 _P1_5	=	0x0095
                           000096   206 _P1_6	=	0x0096
                           000097   207 _P1_7	=	0x0097
                           000090   208 _T2	=	0x0090
                           000091   209 _T2EX	=	0x0091
                           000098   210 _RI	=	0x0098
                           000099   211 _TI	=	0x0099
                           00009A   212 _RB8	=	0x009a
                           00009B   213 _TB8	=	0x009b
                           00009C   214 _REN	=	0x009c
                           00009D   215 _SM2	=	0x009d
                           00009E   216 _SM1	=	0x009e
                           00009F   217 _SM0	=	0x009f
                           0000A0   218 _P2_0	=	0x00a0
                           0000A1   219 _P2_1	=	0x00a1
                           0000A2   220 _P2_2	=	0x00a2
                           0000A3   221 _P2_3	=	0x00a3
                           0000A4   222 _P2_4	=	0x00a4
                           0000A5   223 _P2_5	=	0x00a5
                           0000A6   224 _P2_6	=	0x00a6
                           0000A7   225 _P2_7	=	0x00a7
                           0000A8   226 _EX0	=	0x00a8
                           0000A9   227 _ET0	=	0x00a9
                           0000AA   228 _EX1	=	0x00aa
                           0000AB   229 _ET1	=	0x00ab
                           0000AC   230 _ES	=	0x00ac
                           0000AD   231 _ET2	=	0x00ad
                           0000AF   232 _EA	=	0x00af
                           0000B0   233 _P3_0	=	0x00b0
                           0000B1   234 _P3_1	=	0x00b1
                           0000B2   235 _P3_2	=	0x00b2
                           0000B3   236 _P3_3	=	0x00b3
                           0000B4   237 _P3_4	=	0x00b4
                           0000B5   238 _P3_5	=	0x00b5
                           0000B6   239 _P3_6	=	0x00b6
                           0000B7   240 _P3_7	=	0x00b7
                           0000B0   241 _RXD	=	0x00b0
                           0000B1   242 _TXD	=	0x00b1
                           0000B2   243 _INT0	=	0x00b2
                           0000B3   244 _INT1	=	0x00b3
                           0000B4   245 _T0	=	0x00b4
                           0000B5   246 _T1	=	0x00b5
                           0000B6   247 _WR	=	0x00b6
                           0000B7   248 _RD	=	0x00b7
                           0000B8   249 _PX0	=	0x00b8
                           0000B9   250 _PT0	=	0x00b9
                           0000BA   251 _PX1	=	0x00ba
                           0000BB   252 _PT1	=	0x00bb
                           0000BC   253 _PS	=	0x00bc
                           0000BD   254 _PT2	=	0x00bd
                           0000C8   255 _T2CON_0	=	0x00c8
                           0000C9   256 _T2CON_1	=	0x00c9
                           0000CA   257 _T2CON_2	=	0x00ca
                           0000CB   258 _T2CON_3	=	0x00cb
                           0000CC   259 _T2CON_4	=	0x00cc
                           0000CD   260 _T2CON_5	=	0x00cd
                           0000CE   261 _T2CON_6	=	0x00ce
                           0000CF   262 _T2CON_7	=	0x00cf
                           0000C8   263 _CP_RL2	=	0x00c8
                           0000C9   264 _C_T2	=	0x00c9
                           0000CA   265 _TR2	=	0x00ca
                           0000CB   266 _EXEN2	=	0x00cb
                           0000CC   267 _TCLK	=	0x00cc
                           0000CD   268 _RCLK	=	0x00cd
                           0000CE   269 _EXF2	=	0x00ce
                           0000CF   270 _TF2	=	0x00cf
                           0000D0   271 _P	=	0x00d0
                           0000D1   272 _FL	=	0x00d1
                           0000D2   273 _OV	=	0x00d2
                           0000D3   274 _RS0	=	0x00d3
                           0000D4   275 _RS1	=	0x00d4
                           0000D5   276 _F0	=	0x00d5
                           0000D6   277 _AC	=	0x00d6
                           0000D7   278 _CY	=	0x00d7
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable register banks
                                    281 ;--------------------------------------------------------
                                    282 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        283 	.ds 8
                                    284 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        285 	.ds 8
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable bit register bank
                                    288 ;--------------------------------------------------------
                                    289 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        290 bits:
      000020                        291 	.ds 1
                           008000   292 	b0 = bits[0]
                           008100   293 	b1 = bits[1]
                           008200   294 	b2 = bits[2]
                           008300   295 	b3 = bits[3]
                           008400   296 	b4 = bits[4]
                           008500   297 	b5 = bits[5]
                           008600   298 	b6 = bits[6]
                           008700   299 	b7 = bits[7]
                                    300 ;--------------------------------------------------------
                                    301 ; internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area DSEG    (DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; overlayable items in internal ram 
                                    306 ;--------------------------------------------------------
                                    307 ;--------------------------------------------------------
                                    308 ; Stack segment in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 	.area	SSEG
      000021                        311 __start__stack:
      000021                        312 	.ds	1
                                    313 
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
      000011                        318 _print:
      000011                        319 	.ds 1
                                    320 ;--------------------------------------------------------
                                    321 ; absolute internal ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area IABS    (ABS,DATA)
                                    324 	.area IABS    (ABS,DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; bit data
                                    327 ;--------------------------------------------------------
                                    328 	.area BSEG    (BIT)
                                    329 ;--------------------------------------------------------
                                    330 ; paged external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area PSEG    (PAG,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XSEG    (XDATA)
      004C00                        337 _samples::
      004C00                        338 	.ds 128
      004C80                        339 _fft::
      004C80                        340 	.ds 128
      004D00                        341 _ifft::
      004D00                        342 	.ds 128
      004D80                        343 _main_R_65536_74:
      004D80                        344 	.ds 2
                                    345 ;--------------------------------------------------------
                                    346 ; absolute external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XABS    (ABS,XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; external initialized ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XISEG   (XDATA)
                                    353 	.area HOME    (CODE)
                                    354 	.area GSINIT0 (CODE)
                                    355 	.area GSINIT1 (CODE)
                                    356 	.area GSINIT2 (CODE)
                                    357 	.area GSINIT3 (CODE)
                                    358 	.area GSINIT4 (CODE)
                                    359 	.area GSINIT5 (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area CSEG    (CODE)
                                    363 ;--------------------------------------------------------
                                    364 ; interrupt vector 
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
      002000                        367 __interrupt_vect:
      002000 02 20 09         [24]  368 	ljmp	__sdcc_gsinit_startup
      002003 02 2C 38         [24]  369 	ljmp	_int0
                                    370 ;--------------------------------------------------------
                                    371 ; global & static initialisations
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.area GSFINAL (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.globl __sdcc_gsinit_startup
                                    378 	.globl __sdcc_program_startup
                                    379 	.globl __start__stack
                                    380 	.globl __mcs51_genXINIT
                                    381 	.globl __mcs51_genXRAMCLEAR
                                    382 	.globl __mcs51_genRAMCLEAR
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'main'
                                    385 ;------------------------------------------------------------
                                    386 ;i                         Allocated to registers 
                                    387 ;j                         Allocated to stack - _bp +1
                                    388 ;scale                     Allocated to stack - _bp +3
                                    389 ;sloc0                     Allocated to stack - _bp +7
                                    390 ;R                         Allocated with name '_main_R_65536_74'
                                    391 ;------------------------------------------------------------
                                    392 ;	main.c:43: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 4D 80         [24]  393 	mov	dptr,#_main_R_65536_74
      002065 74 FE            [12]  394 	mov	a,#0xfe
      002067 F0               [24]  395 	movx	@dptr,a
      002068 04               [12]  396 	inc	a
      002069 A3               [24]  397 	inc	dptr
      00206A F0               [24]  398 	movx	@dptr,a
                                    399 	.area GSFINAL (CODE)
      00206B 02 20 06         [24]  400 	ljmp	__sdcc_program_startup
                                    401 ;--------------------------------------------------------
                                    402 ; Home
                                    403 ;--------------------------------------------------------
                                    404 	.area HOME    (CODE)
                                    405 	.area HOME    (CODE)
      002006                        406 __sdcc_program_startup:
      002006 02 2C 55         [24]  407 	ljmp	_main
                                    408 ;	return from main will return to caller
                                    409 ;--------------------------------------------------------
                                    410 ; code
                                    411 ;--------------------------------------------------------
                                    412 	.area CSEG    (CODE)
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'putchar'
                                    415 ;------------------------------------------------------------
                                    416 ;c                         Allocated to registers 
                                    417 ;------------------------------------------------------------
                                    418 ;	main.c:10: int putchar(int c) __naked {
                                    419 ;	-----------------------------------------
                                    420 ;	 function putchar
                                    421 ;	-----------------------------------------
      002C22                        422 _putchar:
                                    423 ;	naked function: no prologue.
                                    424 ;	main.c:17: __endasm;
      002C22 C0 E0            [24]  425 	push	acc
      002C24 E5 82            [12]  426 	mov	a, dpl
      002C26 12 00 3C         [24]  427 	lcall	0x003c
      002C29 D0 E0            [24]  428 	pop	acc
                                    429 ;	main.c:18: }
                                    430 ;	naked function: no epilogue.
                                    431 ;------------------------------------------------------------
                                    432 ;Allocation info for local variables in function 'getchar'
                                    433 ;------------------------------------------------------------
                                    434 ;	main.c:20: int getchar(void) __naked {
                                    435 ;	-----------------------------------------
                                    436 ;	 function getchar
                                    437 ;	-----------------------------------------
      002C2B                        438 _getchar:
                                    439 ;	naked function: no prologue.
                                    440 ;	main.c:28: __endasm;
      002C2B C0 E0            [24]  441 	push	acc
      002C2D 12 00 36         [24]  442 	lcall	0x0036
      002C30 F5 82            [12]  443 	mov	dpl, a
      002C32 75 83 00         [24]  444 	mov	dph, #0
      002C35 D0 E0            [24]  445 	pop	acc
      002C37 22               [24]  446 	ret
                                    447 ;	main.c:29: }
                                    448 ;	naked function: no epilogue.
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'int0'
                                    451 ;------------------------------------------------------------
                                    452 ;	main.c:33: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    453 ;	-----------------------------------------
                                    454 ;	 function int0
                                    455 ;	-----------------------------------------
      002C38                        456 _int0:
                           00000F   457 	ar7 = 0x0f
                           00000E   458 	ar6 = 0x0e
                           00000D   459 	ar5 = 0x0d
                           00000C   460 	ar4 = 0x0c
                           00000B   461 	ar3 = 0x0b
                           00000A   462 	ar2 = 0x0a
                           000009   463 	ar1 = 0x09
                           000008   464 	ar0 = 0x08
      002C38 C0 20            [24]  465 	push	bits
      002C3A C0 E0            [24]  466 	push	acc
      002C3C C0 D0            [24]  467 	push	psw
      002C3E 75 D0 08         [24]  468 	mov	psw,#0x08
                                    469 ;	main.c:34: print = !print;
      002C41 78 11            [12]  470 	mov	r0,#_print
      002C43 E6               [12]  471 	mov	a,@r0
      002C44 B4 01 00         [24]  472 	cjne	a,#0x01,00103$
      002C47                        473 00103$:
      002C47 92 00            [24]  474 	mov	b0,c
      002C49 78 11            [12]  475 	mov	r0,#_print
      002C4B E4               [12]  476 	clr	a
      002C4C 33               [12]  477 	rlc	a
      002C4D F6               [12]  478 	mov	@r0,a
                                    479 ;	main.c:35: }
      002C4E D0 D0            [24]  480 	pop	psw
      002C50 D0 E0            [24]  481 	pop	acc
      002C52 D0 20            [24]  482 	pop	bits
      002C54 32               [24]  483 	reti
                                    484 ;	eliminated unneeded push/pop dpl
                                    485 ;	eliminated unneeded push/pop dph
                                    486 ;	eliminated unneeded push/pop b
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'main'
                                    489 ;------------------------------------------------------------
                                    490 ;i                         Allocated to registers 
                                    491 ;j                         Allocated to stack - _bp +1
                                    492 ;scale                     Allocated to stack - _bp +3
                                    493 ;sloc0                     Allocated to stack - _bp +7
                                    494 ;R                         Allocated with name '_main_R_65536_74'
                                    495 ;------------------------------------------------------------
                                    496 ;	main.c:42: void main(void) {
                                    497 ;	-----------------------------------------
                                    498 ;	 function main
                                    499 ;	-----------------------------------------
      002C55                        500 _main:
                           000007   501 	ar7 = 0x07
                           000006   502 	ar6 = 0x06
                           000005   503 	ar5 = 0x05
                           000004   504 	ar4 = 0x04
                           000003   505 	ar3 = 0x03
                           000002   506 	ar2 = 0x02
                           000001   507 	ar1 = 0x01
                           000000   508 	ar0 = 0x00
      002C55 C0 10            [24]  509 	push	_bp
      002C57 E5 81            [12]  510 	mov	a,sp
      002C59 F5 10            [12]  511 	mov	_bp,a
      002C5B 24 04            [12]  512 	add	a,#0x04
      002C5D F5 81            [12]  513 	mov	sp,a
                                    514 ;	main.c:47: print = 1;
      002C5F 78 11            [12]  515 	mov	r0,#_print
      002C61 76 01            [12]  516 	mov	@r0,#0x01
                                    517 ;	main.c:49: IT0 = 1;
                                    518 ;	assignBit
      002C63 D2 88            [12]  519 	setb	_IT0
                                    520 ;	main.c:50: EX0 = 1;
                                    521 ;	assignBit
      002C65 D2 A8            [12]  522 	setb	_EX0
                                    523 ;	main.c:51: EA = 1;
                                    524 ;	assignBit
      002C67 D2 AF            [12]  525 	setb	_EA
                                    526 ;	main.c:53: srand(*R);
      002C69 90 4D 80         [24]  527 	mov	dptr,#_main_R_65536_74
      002C6C E0               [24]  528 	movx	a,@dptr
      002C6D FE               [12]  529 	mov	r6,a
      002C6E A3               [24]  530 	inc	dptr
      002C6F E0               [24]  531 	movx	a,@dptr
      002C70 FF               [12]  532 	mov	r7,a
      002C71 8E 82            [24]  533 	mov	dpl,r6
      002C73 8F 83            [24]  534 	mov	dph,r7
      002C75 E0               [24]  535 	movx	a,@dptr
      002C76 FE               [12]  536 	mov	r6,a
      002C77 A3               [24]  537 	inc	dptr
      002C78 E0               [24]  538 	movx	a,@dptr
      002C79 FF               [12]  539 	mov	r7,a
      002C7A 8E 82            [24]  540 	mov	dpl,r6
      002C7C 8F 83            [24]  541 	mov	dph,r7
      002C7E 12 2F 6F         [24]  542 	lcall	_srand
                                    543 ;	main.c:55: for (i = 0; 1; i++) {
      002C81 7E 00            [12]  544 	mov	r6,#0x00
      002C83 7F 00            [12]  545 	mov	r7,#0x00
                                    546 ;	main.c:56: for (j = 0; j < (1 << N); j++)
      002C85                        547 00117$:
      002C85 A8 10            [24]  548 	mov	r0,_bp
      002C87 08               [12]  549 	inc	r0
      002C88 E4               [12]  550 	clr	a
      002C89 F6               [12]  551 	mov	@r0,a
      002C8A 08               [12]  552 	inc	r0
      002C8B F6               [12]  553 	mov	@r0,a
      002C8C                        554 00106$:
                                    555 ;	main.c:57: samples[j] = ((rand() & 1) ? -1 : 1) * (int16_t)rand();
      002C8C A8 10            [24]  556 	mov	r0,_bp
      002C8E 08               [12]  557 	inc	r0
      002C8F E6               [12]  558 	mov	a,@r0
      002C90 25 E0            [12]  559 	add	a,acc
      002C92 FA               [12]  560 	mov	r2,a
      002C93 08               [12]  561 	inc	r0
      002C94 E6               [12]  562 	mov	a,@r0
      002C95 33               [12]  563 	rlc	a
      002C96 FB               [12]  564 	mov	r3,a
      002C97 EA               [12]  565 	mov	a,r2
      002C98 24 00            [12]  566 	add	a,#_samples
      002C9A FA               [12]  567 	mov	r2,a
      002C9B EB               [12]  568 	mov	a,r3
      002C9C 34 4C            [12]  569 	addc	a,#(_samples >> 8)
      002C9E FB               [12]  570 	mov	r3,a
      002C9F C0 07            [24]  571 	push	ar7
      002CA1 C0 06            [24]  572 	push	ar6
      002CA3 C0 03            [24]  573 	push	ar3
      002CA5 C0 02            [24]  574 	push	ar2
      002CA7 12 2E AB         [24]  575 	lcall	_rand
      002CAA E5 82            [12]  576 	mov	a,dpl
      002CAC 85 83 F0         [24]  577 	mov	b,dph
      002CAF D0 02            [24]  578 	pop	ar2
      002CB1 D0 03            [24]  579 	pop	ar3
      002CB3 D0 06            [24]  580 	pop	ar6
      002CB5 D0 07            [24]  581 	pop	ar7
      002CB7 30 E0 06         [24]  582 	jnb	acc.0,00114$
      002CBA 7C FF            [12]  583 	mov	r4,#0xff
      002CBC 7D FF            [12]  584 	mov	r5,#0xff
      002CBE 80 04            [24]  585 	sjmp	00115$
      002CC0                        586 00114$:
      002CC0 7C 01            [12]  587 	mov	r4,#0x01
      002CC2 7D 00            [12]  588 	mov	r5,#0x00
      002CC4                        589 00115$:
      002CC4 C0 06            [24]  590 	push	ar6
      002CC6 C0 07            [24]  591 	push	ar7
      002CC8 C0 05            [24]  592 	push	ar5
      002CCA C0 04            [24]  593 	push	ar4
      002CCC C0 03            [24]  594 	push	ar3
      002CCE C0 02            [24]  595 	push	ar2
      002CD0 12 2E AB         [24]  596 	lcall	_rand
      002CD3 AE 82            [24]  597 	mov	r6,dpl
      002CD5 AF 83            [24]  598 	mov	r7,dph
      002CD7 D0 02            [24]  599 	pop	ar2
      002CD9 D0 03            [24]  600 	pop	ar3
      002CDB D0 04            [24]  601 	pop	ar4
      002CDD D0 05            [24]  602 	pop	ar5
      002CDF C0 03            [24]  603 	push	ar3
      002CE1 C0 02            [24]  604 	push	ar2
      002CE3 C0 06            [24]  605 	push	ar6
      002CE5 C0 07            [24]  606 	push	ar7
      002CE7 8C 82            [24]  607 	mov	dpl,r4
      002CE9 8D 83            [24]  608 	mov	dph,r5
      002CEB 12 2F A3         [24]  609 	lcall	__mulint
      002CEE AE 82            [24]  610 	mov	r6,dpl
      002CF0 AF 83            [24]  611 	mov	r7,dph
      002CF2 15 81            [12]  612 	dec	sp
      002CF4 15 81            [12]  613 	dec	sp
      002CF6 D0 02            [24]  614 	pop	ar2
      002CF8 D0 03            [24]  615 	pop	ar3
      002CFA 8A 82            [24]  616 	mov	dpl,r2
      002CFC 8B 83            [24]  617 	mov	dph,r3
      002CFE EE               [12]  618 	mov	a,r6
      002CFF F0               [24]  619 	movx	@dptr,a
      002D00 EF               [12]  620 	mov	a,r7
      002D01 A3               [24]  621 	inc	dptr
      002D02 F0               [24]  622 	movx	@dptr,a
                                    623 ;	main.c:56: for (j = 0; j < (1 << N); j++)
      002D03 A8 10            [24]  624 	mov	r0,_bp
      002D05 08               [12]  625 	inc	r0
      002D06 06               [12]  626 	inc	@r0
      002D07 B6 00 02         [24]  627 	cjne	@r0,#0x00,00143$
      002D0A 08               [12]  628 	inc	r0
      002D0B 06               [12]  629 	inc	@r0
      002D0C                        630 00143$:
      002D0C A8 10            [24]  631 	mov	r0,_bp
      002D0E 08               [12]  632 	inc	r0
      002D0F C3               [12]  633 	clr	c
      002D10 E6               [12]  634 	mov	a,@r0
      002D11 94 40            [12]  635 	subb	a,#0x40
      002D13 08               [12]  636 	inc	r0
      002D14 E6               [12]  637 	mov	a,@r0
      002D15 64 80            [12]  638 	xrl	a,#0x80
      002D17 94 80            [12]  639 	subb	a,#0x80
      002D19 D0 07            [24]  640 	pop	ar7
      002D1B D0 06            [24]  641 	pop	ar6
      002D1D 50 03            [24]  642 	jnc	00144$
      002D1F 02 2C 8C         [24]  643 	ljmp	00106$
      002D22                        644 00144$:
                                    645 ;	main.c:59: printf("DO FFT IFFT %d\r\n", i);
      002D22 C0 07            [24]  646 	push	ar7
      002D24 C0 06            [24]  647 	push	ar6
      002D26 C0 06            [24]  648 	push	ar6
      002D28 C0 07            [24]  649 	push	ar7
      002D2A 74 35            [12]  650 	mov	a,#___str_0
      002D2C C0 E0            [24]  651 	push	acc
      002D2E 74 45            [12]  652 	mov	a,#(___str_0 >> 8)
      002D30 C0 E0            [24]  653 	push	acc
      002D32 74 80            [12]  654 	mov	a,#0x80
      002D34 C0 E0            [24]  655 	push	acc
      002D36 12 31 1A         [24]  656 	lcall	_printf
      002D39 E5 81            [12]  657 	mov	a,sp
      002D3B 24 FB            [12]  658 	add	a,#0xfb
      002D3D F5 81            [12]  659 	mov	sp,a
                                    660 ;	main.c:61: memcpy(fft, samples, sizeof (samples));
      002D3F 74 80            [12]  661 	mov	a,#0x80
      002D41 C0 E0            [24]  662 	push	acc
      002D43 E4               [12]  663 	clr	a
      002D44 C0 E0            [24]  664 	push	acc
      002D46 74 00            [12]  665 	mov	a,#_samples
      002D48 C0 E0            [24]  666 	push	acc
      002D4A 74 4C            [12]  667 	mov	a,#(_samples >> 8)
      002D4C C0 E0            [24]  668 	push	acc
      002D4E E4               [12]  669 	clr	a
      002D4F C0 E0            [24]  670 	push	acc
      002D51 90 4C 80         [24]  671 	mov	dptr,#_fft
      002D54 75 F0 00         [24]  672 	mov	b,#0x00
      002D57 12 30 41         [24]  673 	lcall	___memcpy
      002D5A E5 81            [12]  674 	mov	a,sp
      002D5C 24 FB            [12]  675 	add	a,#0xfb
      002D5E F5 81            [12]  676 	mov	sp,a
                                    677 ;	main.c:62: scale = fix_fftr(fft, N, 0);		
      002D60 E4               [12]  678 	clr	a
      002D61 C0 E0            [24]  679 	push	acc
      002D63 C0 E0            [24]  680 	push	acc
      002D65 74 06            [12]  681 	mov	a,#0x06
      002D67 C0 E0            [24]  682 	push	acc
      002D69 E4               [12]  683 	clr	a
      002D6A C0 E0            [24]  684 	push	acc
      002D6C 90 4C 80         [24]  685 	mov	dptr,#_fft
      002D6F 75 F0 00         [24]  686 	mov	b,#0x00
      002D72 12 2A 21         [24]  687 	lcall	_fix_fftr
      002D75 E5 81            [12]  688 	mov	a,sp
      002D77 24 FC            [12]  689 	add	a,#0xfc
      002D79 F5 81            [12]  690 	mov	sp,a
                                    691 ;	main.c:69: memcpy(ifft, fft, sizeof (fft));
      002D7B 74 80            [12]  692 	mov	a,#0x80
      002D7D C0 E0            [24]  693 	push	acc
      002D7F E4               [12]  694 	clr	a
      002D80 C0 E0            [24]  695 	push	acc
      002D82 74 80            [12]  696 	mov	a,#_fft
      002D84 C0 E0            [24]  697 	push	acc
      002D86 74 4C            [12]  698 	mov	a,#(_fft >> 8)
      002D88 C0 E0            [24]  699 	push	acc
      002D8A E4               [12]  700 	clr	a
      002D8B C0 E0            [24]  701 	push	acc
      002D8D 90 4D 00         [24]  702 	mov	dptr,#_ifft
      002D90 75 F0 00         [24]  703 	mov	b,#0x00
      002D93 12 30 41         [24]  704 	lcall	___memcpy
      002D96 E5 81            [12]  705 	mov	a,sp
      002D98 24 FB            [12]  706 	add	a,#0xfb
      002D9A F5 81            [12]  707 	mov	sp,a
                                    708 ;	main.c:70: scale = fix_fftr(ifft, N, 1);
      002D9C 74 01            [12]  709 	mov	a,#0x01
      002D9E C0 E0            [24]  710 	push	acc
      002DA0 E4               [12]  711 	clr	a
      002DA1 C0 E0            [24]  712 	push	acc
      002DA3 74 06            [12]  713 	mov	a,#0x06
      002DA5 C0 E0            [24]  714 	push	acc
      002DA7 E4               [12]  715 	clr	a
      002DA8 C0 E0            [24]  716 	push	acc
      002DAA 90 4D 00         [24]  717 	mov	dptr,#_ifft
      002DAD 75 F0 00         [24]  718 	mov	b,#0x00
      002DB0 12 2A 21         [24]  719 	lcall	_fix_fftr
      002DB3 AC 82            [24]  720 	mov	r4,dpl
      002DB5 AD 83            [24]  721 	mov	r5,dph
      002DB7 E5 81            [12]  722 	mov	a,sp
      002DB9 24 FC            [12]  723 	add	a,#0xfc
      002DBB F5 81            [12]  724 	mov	sp,a
      002DBD D0 06            [24]  725 	pop	ar6
      002DBF D0 07            [24]  726 	pop	ar7
      002DC1 E5 10            [12]  727 	mov	a,_bp
      002DC3 24 03            [12]  728 	add	a,#0x03
      002DC5 F8               [12]  729 	mov	r0,a
      002DC6 A6 04            [24]  730 	mov	@r0,ar4
      002DC8 08               [12]  731 	inc	r0
      002DC9 A6 05            [24]  732 	mov	@r0,ar5
                                    733 ;	main.c:72: if (print)
      002DCB 78 11            [12]  734 	mov	r0,#_print
      002DCD E6               [12]  735 	mov	a,@r0
      002DCE 70 03            [24]  736 	jnz	00145$
      002DD0 02 2E 80         [24]  737 	ljmp	00104$
      002DD3                        738 00145$:
                                    739 ;	main.c:73: for (j = 0; j < (1 << N); j++)
      002DD3 A8 10            [24]  740 	mov	r0,_bp
      002DD5 08               [12]  741 	inc	r0
      002DD6 E4               [12]  742 	clr	a
      002DD7 F6               [12]  743 	mov	@r0,a
      002DD8 08               [12]  744 	inc	r0
      002DD9 F6               [12]  745 	mov	@r0,a
      002DDA                        746 00108$:
                                    747 ;	main.c:75: samples[j], ifft[j] * (1 << scale));
      002DDA C0 06            [24]  748 	push	ar6
      002DDC C0 07            [24]  749 	push	ar7
      002DDE A8 10            [24]  750 	mov	r0,_bp
      002DE0 08               [12]  751 	inc	r0
      002DE1 E6               [12]  752 	mov	a,@r0
      002DE2 25 E0            [12]  753 	add	a,acc
      002DE4 FE               [12]  754 	mov	r6,a
      002DE5 08               [12]  755 	inc	r0
      002DE6 E6               [12]  756 	mov	a,@r0
      002DE7 33               [12]  757 	rlc	a
      002DE8 FF               [12]  758 	mov	r7,a
      002DE9 EE               [12]  759 	mov	a,r6
      002DEA 24 00            [12]  760 	add	a,#_ifft
      002DEC F5 82            [12]  761 	mov	dpl,a
      002DEE EF               [12]  762 	mov	a,r7
      002DEF 34 4D            [12]  763 	addc	a,#(_ifft >> 8)
      002DF1 F5 83            [12]  764 	mov	dph,a
      002DF3 E0               [24]  765 	movx	a,@dptr
      002DF4 FC               [12]  766 	mov	r4,a
      002DF5 A3               [24]  767 	inc	dptr
      002DF6 E0               [24]  768 	movx	a,@dptr
      002DF7 FD               [12]  769 	mov	r5,a
      002DF8 E5 10            [12]  770 	mov	a,_bp
      002DFA 24 03            [12]  771 	add	a,#0x03
      002DFC F8               [12]  772 	mov	r0,a
      002DFD 86 03            [24]  773 	mov	ar3,@r0
      002DFF 8B F0            [24]  774 	mov	b,r3
      002E01 05 F0            [12]  775 	inc	b
      002E03 7B 01            [12]  776 	mov	r3,#0x01
      002E05 7A 00            [12]  777 	mov	r2,#0x00
      002E07 80 06            [24]  778 	sjmp	00147$
      002E09                        779 00146$:
      002E09 EB               [12]  780 	mov	a,r3
      002E0A 2B               [12]  781 	add	a,r3
      002E0B FB               [12]  782 	mov	r3,a
      002E0C EA               [12]  783 	mov	a,r2
      002E0D 33               [12]  784 	rlc	a
      002E0E FA               [12]  785 	mov	r2,a
      002E0F                        786 00147$:
      002E0F D5 F0 F7         [24]  787 	djnz	b,00146$
      002E12 C0 07            [24]  788 	push	ar7
      002E14 C0 06            [24]  789 	push	ar6
      002E16 C0 03            [24]  790 	push	ar3
      002E18 C0 02            [24]  791 	push	ar2
      002E1A 8C 82            [24]  792 	mov	dpl,r4
      002E1C 8D 83            [24]  793 	mov	dph,r5
      002E1E 12 2F A3         [24]  794 	lcall	__mulint
      002E21 AC 82            [24]  795 	mov	r4,dpl
      002E23 AD 83            [24]  796 	mov	r5,dph
      002E25 15 81            [12]  797 	dec	sp
      002E27 15 81            [12]  798 	dec	sp
      002E29 D0 06            [24]  799 	pop	ar6
      002E2B D0 07            [24]  800 	pop	ar7
      002E2D EE               [12]  801 	mov	a,r6
      002E2E 24 00            [12]  802 	add	a,#_samples
      002E30 F5 82            [12]  803 	mov	dpl,a
      002E32 EF               [12]  804 	mov	a,r7
      002E33 34 4C            [12]  805 	addc	a,#(_samples >> 8)
      002E35 F5 83            [12]  806 	mov	dph,a
      002E37 E0               [24]  807 	movx	a,@dptr
      002E38 FE               [12]  808 	mov	r6,a
      002E39 A3               [24]  809 	inc	dptr
      002E3A E0               [24]  810 	movx	a,@dptr
      002E3B FF               [12]  811 	mov	r7,a
                                    812 ;	main.c:74: printf("% 8d% 8d\r\n",
      002E3C C0 07            [24]  813 	push	ar7
      002E3E C0 06            [24]  814 	push	ar6
      002E40 C0 04            [24]  815 	push	ar4
      002E42 C0 05            [24]  816 	push	ar5
      002E44 C0 06            [24]  817 	push	ar6
      002E46 C0 07            [24]  818 	push	ar7
      002E48 74 46            [12]  819 	mov	a,#___str_1
      002E4A C0 E0            [24]  820 	push	acc
      002E4C 74 45            [12]  821 	mov	a,#(___str_1 >> 8)
      002E4E C0 E0            [24]  822 	push	acc
      002E50 74 80            [12]  823 	mov	a,#0x80
      002E52 C0 E0            [24]  824 	push	acc
      002E54 12 31 1A         [24]  825 	lcall	_printf
      002E57 E5 81            [12]  826 	mov	a,sp
      002E59 24 F9            [12]  827 	add	a,#0xf9
      002E5B F5 81            [12]  828 	mov	sp,a
      002E5D D0 06            [24]  829 	pop	ar6
      002E5F D0 07            [24]  830 	pop	ar7
                                    831 ;	main.c:73: for (j = 0; j < (1 << N); j++)
      002E61 A8 10            [24]  832 	mov	r0,_bp
      002E63 08               [12]  833 	inc	r0
      002E64 06               [12]  834 	inc	@r0
      002E65 B6 00 02         [24]  835 	cjne	@r0,#0x00,00148$
      002E68 08               [12]  836 	inc	r0
      002E69 06               [12]  837 	inc	@r0
      002E6A                        838 00148$:
      002E6A A8 10            [24]  839 	mov	r0,_bp
      002E6C 08               [12]  840 	inc	r0
      002E6D C3               [12]  841 	clr	c
      002E6E E6               [12]  842 	mov	a,@r0
      002E6F 94 40            [12]  843 	subb	a,#0x40
      002E71 08               [12]  844 	inc	r0
      002E72 E6               [12]  845 	mov	a,@r0
      002E73 64 80            [12]  846 	xrl	a,#0x80
      002E75 94 80            [12]  847 	subb	a,#0x80
      002E77 D0 07            [24]  848 	pop	ar7
      002E79 D0 06            [24]  849 	pop	ar6
      002E7B 50 03            [24]  850 	jnc	00149$
      002E7D 02 2D DA         [24]  851 	ljmp	00108$
      002E80                        852 00149$:
      002E80                        853 00104$:
                                    854 ;	main.c:77: printf("DONE\r\n\r\n");
      002E80 C0 07            [24]  855 	push	ar7
      002E82 C0 06            [24]  856 	push	ar6
      002E84 74 51            [12]  857 	mov	a,#___str_2
      002E86 C0 E0            [24]  858 	push	acc
      002E88 74 45            [12]  859 	mov	a,#(___str_2 >> 8)
      002E8A C0 E0            [24]  860 	push	acc
      002E8C 74 80            [12]  861 	mov	a,#0x80
      002E8E C0 E0            [24]  862 	push	acc
      002E90 12 31 1A         [24]  863 	lcall	_printf
      002E93 15 81            [12]  864 	dec	sp
      002E95 15 81            [12]  865 	dec	sp
      002E97 15 81            [12]  866 	dec	sp
      002E99 D0 06            [24]  867 	pop	ar6
      002E9B D0 07            [24]  868 	pop	ar7
                                    869 ;	main.c:55: for (i = 0; 1; i++) {
      002E9D 0E               [12]  870 	inc	r6
      002E9E BE 00 01         [24]  871 	cjne	r6,#0x00,00150$
      002EA1 0F               [12]  872 	inc	r7
      002EA2                        873 00150$:
      002EA2 02 2C 85         [24]  874 	ljmp	00117$
                                    875 ;	main.c:82: return;
                                    876 ;	main.c:83: }
      002EA5 85 10 81         [24]  877 	mov	sp,_bp
      002EA8 D0 10            [24]  878 	pop	_bp
      002EAA 22               [24]  879 	ret
                                    880 	.area CSEG    (CODE)
                                    881 	.area CONST   (CODE)
                                    882 	.area CONST   (CODE)
      004535                        883 ___str_0:
      004535 44 4F 20 46 46 54 20   884 	.ascii "DO FFT IFFT %d"
             49 46 46 54 20 25 64
      004543 0D                     885 	.db 0x0d
      004544 0A                     886 	.db 0x0a
      004545 00                     887 	.db 0x00
                                    888 	.area CSEG    (CODE)
                                    889 	.area CONST   (CODE)
      004546                        890 ___str_1:
      004546 25 20 38 64 25 20 38   891 	.ascii "% 8d% 8d"
             64
      00454E 0D                     892 	.db 0x0d
      00454F 0A                     893 	.db 0x0a
      004550 00                     894 	.db 0x00
                                    895 	.area CSEG    (CODE)
                                    896 	.area CONST   (CODE)
      004551                        897 ___str_2:
      004551 44 4F 4E 45            898 	.ascii "DONE"
      004555 0D                     899 	.db 0x0d
      004556 0A                     900 	.db 0x0a
      004557 0D                     901 	.db 0x0d
      004558 0A                     902 	.db 0x0a
      004559 00                     903 	.db 0x00
                                    904 	.area CSEG    (CODE)
                                    905 	.area XINIT   (CODE)
                                    906 	.area CABS    (ABS,CODE)
