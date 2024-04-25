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
      002003 02 2C 39         [24]  369 	ljmp	_int0
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
                                    392 ;	main.c:44: static volatile __xdata int *R = (__xdata int *)0xfffe;
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
      002006 02 2C 56         [24]  407 	ljmp	_main
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
                                    424 ;	main.c:18: __endasm;
      002C22 C0 E0            [24]  425 	push	acc
      002C24 E5 82            [12]  426 	mov	a, dpl
      002C26 12 00 3C         [24]  427 	lcall	0x003c
      002C29 D0 E0            [24]  428 	pop	acc
      002C2B 22               [24]  429 	ret
                                    430 ;	main.c:19: }
                                    431 ;	naked function: no epilogue.
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'getchar'
                                    434 ;------------------------------------------------------------
                                    435 ;	main.c:21: int getchar(void) __naked {
                                    436 ;	-----------------------------------------
                                    437 ;	 function getchar
                                    438 ;	-----------------------------------------
      002C2C                        439 _getchar:
                                    440 ;	naked function: no prologue.
                                    441 ;	main.c:29: __endasm;
      002C2C C0 E0            [24]  442 	push	acc
      002C2E 12 00 36         [24]  443 	lcall	0x0036
      002C31 F5 82            [12]  444 	mov	dpl, a
      002C33 75 83 00         [24]  445 	mov	dph, #0
      002C36 D0 E0            [24]  446 	pop	acc
      002C38 22               [24]  447 	ret
                                    448 ;	main.c:30: }
                                    449 ;	naked function: no epilogue.
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'int0'
                                    452 ;------------------------------------------------------------
                                    453 ;	main.c:34: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    454 ;	-----------------------------------------
                                    455 ;	 function int0
                                    456 ;	-----------------------------------------
      002C39                        457 _int0:
                           00000F   458 	ar7 = 0x0f
                           00000E   459 	ar6 = 0x0e
                           00000D   460 	ar5 = 0x0d
                           00000C   461 	ar4 = 0x0c
                           00000B   462 	ar3 = 0x0b
                           00000A   463 	ar2 = 0x0a
                           000009   464 	ar1 = 0x09
                           000008   465 	ar0 = 0x08
      002C39 C0 20            [24]  466 	push	bits
      002C3B C0 E0            [24]  467 	push	acc
      002C3D C0 D0            [24]  468 	push	psw
      002C3F 75 D0 08         [24]  469 	mov	psw,#0x08
                                    470 ;	main.c:35: print = !print;
      002C42 78 11            [12]  471 	mov	r0,#_print
      002C44 E6               [12]  472 	mov	a,@r0
      002C45 B4 01 00         [24]  473 	cjne	a,#0x01,00103$
      002C48                        474 00103$:
      002C48 92 00            [24]  475 	mov	b0,c
      002C4A 78 11            [12]  476 	mov	r0,#_print
      002C4C E4               [12]  477 	clr	a
      002C4D 33               [12]  478 	rlc	a
      002C4E F6               [12]  479 	mov	@r0,a
                                    480 ;	main.c:36: }
      002C4F D0 D0            [24]  481 	pop	psw
      002C51 D0 E0            [24]  482 	pop	acc
      002C53 D0 20            [24]  483 	pop	bits
      002C55 32               [24]  484 	reti
                                    485 ;	eliminated unneeded push/pop dpl
                                    486 ;	eliminated unneeded push/pop dph
                                    487 ;	eliminated unneeded push/pop b
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'main'
                                    490 ;------------------------------------------------------------
                                    491 ;i                         Allocated to registers 
                                    492 ;j                         Allocated to stack - _bp +1
                                    493 ;scale                     Allocated to stack - _bp +3
                                    494 ;sloc0                     Allocated to stack - _bp +7
                                    495 ;R                         Allocated with name '_main_R_65536_74'
                                    496 ;------------------------------------------------------------
                                    497 ;	main.c:43: void main(void) {
                                    498 ;	-----------------------------------------
                                    499 ;	 function main
                                    500 ;	-----------------------------------------
      002C56                        501 _main:
                           000007   502 	ar7 = 0x07
                           000006   503 	ar6 = 0x06
                           000005   504 	ar5 = 0x05
                           000004   505 	ar4 = 0x04
                           000003   506 	ar3 = 0x03
                           000002   507 	ar2 = 0x02
                           000001   508 	ar1 = 0x01
                           000000   509 	ar0 = 0x00
      002C56 C0 10            [24]  510 	push	_bp
      002C58 E5 81            [12]  511 	mov	a,sp
      002C5A F5 10            [12]  512 	mov	_bp,a
      002C5C 24 04            [12]  513 	add	a,#0x04
      002C5E F5 81            [12]  514 	mov	sp,a
                                    515 ;	main.c:48: print = 1;
      002C60 78 11            [12]  516 	mov	r0,#_print
      002C62 76 01            [12]  517 	mov	@r0,#0x01
                                    518 ;	main.c:50: IT0 = 1;
                                    519 ;	assignBit
      002C64 D2 88            [12]  520 	setb	_IT0
                                    521 ;	main.c:51: EX0 = 1;
                                    522 ;	assignBit
      002C66 D2 A8            [12]  523 	setb	_EX0
                                    524 ;	main.c:52: EA = 1;
                                    525 ;	assignBit
      002C68 D2 AF            [12]  526 	setb	_EA
                                    527 ;	main.c:54: srand(*R);
      002C6A 90 4D 80         [24]  528 	mov	dptr,#_main_R_65536_74
      002C6D E0               [24]  529 	movx	a,@dptr
      002C6E FE               [12]  530 	mov	r6,a
      002C6F A3               [24]  531 	inc	dptr
      002C70 E0               [24]  532 	movx	a,@dptr
      002C71 FF               [12]  533 	mov	r7,a
      002C72 8E 82            [24]  534 	mov	dpl,r6
      002C74 8F 83            [24]  535 	mov	dph,r7
      002C76 E0               [24]  536 	movx	a,@dptr
      002C77 FE               [12]  537 	mov	r6,a
      002C78 A3               [24]  538 	inc	dptr
      002C79 E0               [24]  539 	movx	a,@dptr
      002C7A FF               [12]  540 	mov	r7,a
      002C7B 8E 82            [24]  541 	mov	dpl,r6
      002C7D 8F 83            [24]  542 	mov	dph,r7
      002C7F 12 2F 70         [24]  543 	lcall	_srand
                                    544 ;	main.c:56: for (i = 0; 1; i++) {
      002C82 7E 00            [12]  545 	mov	r6,#0x00
      002C84 7F 00            [12]  546 	mov	r7,#0x00
                                    547 ;	main.c:57: for (j = 0; j < (1 << N); j++)
      002C86                        548 00117$:
      002C86 A8 10            [24]  549 	mov	r0,_bp
      002C88 08               [12]  550 	inc	r0
      002C89 E4               [12]  551 	clr	a
      002C8A F6               [12]  552 	mov	@r0,a
      002C8B 08               [12]  553 	inc	r0
      002C8C F6               [12]  554 	mov	@r0,a
      002C8D                        555 00106$:
                                    556 ;	main.c:58: samples[j] = ((rand() & 1) ? -1 : 1) * (int16_t)rand();
      002C8D A8 10            [24]  557 	mov	r0,_bp
      002C8F 08               [12]  558 	inc	r0
      002C90 E6               [12]  559 	mov	a,@r0
      002C91 25 E0            [12]  560 	add	a,acc
      002C93 FA               [12]  561 	mov	r2,a
      002C94 08               [12]  562 	inc	r0
      002C95 E6               [12]  563 	mov	a,@r0
      002C96 33               [12]  564 	rlc	a
      002C97 FB               [12]  565 	mov	r3,a
      002C98 EA               [12]  566 	mov	a,r2
      002C99 24 00            [12]  567 	add	a,#_samples
      002C9B FA               [12]  568 	mov	r2,a
      002C9C EB               [12]  569 	mov	a,r3
      002C9D 34 4C            [12]  570 	addc	a,#(_samples >> 8)
      002C9F FB               [12]  571 	mov	r3,a
      002CA0 C0 07            [24]  572 	push	ar7
      002CA2 C0 06            [24]  573 	push	ar6
      002CA4 C0 03            [24]  574 	push	ar3
      002CA6 C0 02            [24]  575 	push	ar2
      002CA8 12 2E AC         [24]  576 	lcall	_rand
      002CAB E5 82            [12]  577 	mov	a,dpl
      002CAD 85 83 F0         [24]  578 	mov	b,dph
      002CB0 D0 02            [24]  579 	pop	ar2
      002CB2 D0 03            [24]  580 	pop	ar3
      002CB4 D0 06            [24]  581 	pop	ar6
      002CB6 D0 07            [24]  582 	pop	ar7
      002CB8 30 E0 06         [24]  583 	jnb	acc.0,00114$
      002CBB 7C FF            [12]  584 	mov	r4,#0xff
      002CBD 7D FF            [12]  585 	mov	r5,#0xff
      002CBF 80 04            [24]  586 	sjmp	00115$
      002CC1                        587 00114$:
      002CC1 7C 01            [12]  588 	mov	r4,#0x01
      002CC3 7D 00            [12]  589 	mov	r5,#0x00
      002CC5                        590 00115$:
      002CC5 C0 06            [24]  591 	push	ar6
      002CC7 C0 07            [24]  592 	push	ar7
      002CC9 C0 05            [24]  593 	push	ar5
      002CCB C0 04            [24]  594 	push	ar4
      002CCD C0 03            [24]  595 	push	ar3
      002CCF C0 02            [24]  596 	push	ar2
      002CD1 12 2E AC         [24]  597 	lcall	_rand
      002CD4 AE 82            [24]  598 	mov	r6,dpl
      002CD6 AF 83            [24]  599 	mov	r7,dph
      002CD8 D0 02            [24]  600 	pop	ar2
      002CDA D0 03            [24]  601 	pop	ar3
      002CDC D0 04            [24]  602 	pop	ar4
      002CDE D0 05            [24]  603 	pop	ar5
      002CE0 C0 03            [24]  604 	push	ar3
      002CE2 C0 02            [24]  605 	push	ar2
      002CE4 C0 06            [24]  606 	push	ar6
      002CE6 C0 07            [24]  607 	push	ar7
      002CE8 8C 82            [24]  608 	mov	dpl,r4
      002CEA 8D 83            [24]  609 	mov	dph,r5
      002CEC 12 2F A4         [24]  610 	lcall	__mulint
      002CEF AE 82            [24]  611 	mov	r6,dpl
      002CF1 AF 83            [24]  612 	mov	r7,dph
      002CF3 15 81            [12]  613 	dec	sp
      002CF5 15 81            [12]  614 	dec	sp
      002CF7 D0 02            [24]  615 	pop	ar2
      002CF9 D0 03            [24]  616 	pop	ar3
      002CFB 8A 82            [24]  617 	mov	dpl,r2
      002CFD 8B 83            [24]  618 	mov	dph,r3
      002CFF EE               [12]  619 	mov	a,r6
      002D00 F0               [24]  620 	movx	@dptr,a
      002D01 EF               [12]  621 	mov	a,r7
      002D02 A3               [24]  622 	inc	dptr
      002D03 F0               [24]  623 	movx	@dptr,a
                                    624 ;	main.c:57: for (j = 0; j < (1 << N); j++)
      002D04 A8 10            [24]  625 	mov	r0,_bp
      002D06 08               [12]  626 	inc	r0
      002D07 06               [12]  627 	inc	@r0
      002D08 B6 00 02         [24]  628 	cjne	@r0,#0x00,00143$
      002D0B 08               [12]  629 	inc	r0
      002D0C 06               [12]  630 	inc	@r0
      002D0D                        631 00143$:
      002D0D A8 10            [24]  632 	mov	r0,_bp
      002D0F 08               [12]  633 	inc	r0
      002D10 C3               [12]  634 	clr	c
      002D11 E6               [12]  635 	mov	a,@r0
      002D12 94 40            [12]  636 	subb	a,#0x40
      002D14 08               [12]  637 	inc	r0
      002D15 E6               [12]  638 	mov	a,@r0
      002D16 64 80            [12]  639 	xrl	a,#0x80
      002D18 94 80            [12]  640 	subb	a,#0x80
      002D1A D0 07            [24]  641 	pop	ar7
      002D1C D0 06            [24]  642 	pop	ar6
      002D1E 50 03            [24]  643 	jnc	00144$
      002D20 02 2C 8D         [24]  644 	ljmp	00106$
      002D23                        645 00144$:
                                    646 ;	main.c:60: printf("DO FFT IFFT %d\r\n", i);
      002D23 C0 07            [24]  647 	push	ar7
      002D25 C0 06            [24]  648 	push	ar6
      002D27 C0 06            [24]  649 	push	ar6
      002D29 C0 07            [24]  650 	push	ar7
      002D2B 74 36            [12]  651 	mov	a,#___str_0
      002D2D C0 E0            [24]  652 	push	acc
      002D2F 74 45            [12]  653 	mov	a,#(___str_0 >> 8)
      002D31 C0 E0            [24]  654 	push	acc
      002D33 74 80            [12]  655 	mov	a,#0x80
      002D35 C0 E0            [24]  656 	push	acc
      002D37 12 31 1B         [24]  657 	lcall	_printf
      002D3A E5 81            [12]  658 	mov	a,sp
      002D3C 24 FB            [12]  659 	add	a,#0xfb
      002D3E F5 81            [12]  660 	mov	sp,a
                                    661 ;	main.c:62: memcpy(fft, samples, sizeof (samples));
      002D40 74 80            [12]  662 	mov	a,#0x80
      002D42 C0 E0            [24]  663 	push	acc
      002D44 E4               [12]  664 	clr	a
      002D45 C0 E0            [24]  665 	push	acc
      002D47 74 00            [12]  666 	mov	a,#_samples
      002D49 C0 E0            [24]  667 	push	acc
      002D4B 74 4C            [12]  668 	mov	a,#(_samples >> 8)
      002D4D C0 E0            [24]  669 	push	acc
      002D4F E4               [12]  670 	clr	a
      002D50 C0 E0            [24]  671 	push	acc
      002D52 90 4C 80         [24]  672 	mov	dptr,#_fft
      002D55 75 F0 00         [24]  673 	mov	b,#0x00
      002D58 12 30 42         [24]  674 	lcall	___memcpy
      002D5B E5 81            [12]  675 	mov	a,sp
      002D5D 24 FB            [12]  676 	add	a,#0xfb
      002D5F F5 81            [12]  677 	mov	sp,a
                                    678 ;	main.c:63: scale = fix_fftr(fft, N, 0);		
      002D61 E4               [12]  679 	clr	a
      002D62 C0 E0            [24]  680 	push	acc
      002D64 C0 E0            [24]  681 	push	acc
      002D66 74 06            [12]  682 	mov	a,#0x06
      002D68 C0 E0            [24]  683 	push	acc
      002D6A E4               [12]  684 	clr	a
      002D6B C0 E0            [24]  685 	push	acc
      002D6D 90 4C 80         [24]  686 	mov	dptr,#_fft
      002D70 75 F0 00         [24]  687 	mov	b,#0x00
      002D73 12 2A 21         [24]  688 	lcall	_fix_fftr
      002D76 E5 81            [12]  689 	mov	a,sp
      002D78 24 FC            [12]  690 	add	a,#0xfc
      002D7A F5 81            [12]  691 	mov	sp,a
                                    692 ;	main.c:70: memcpy(ifft, fft, sizeof (fft));
      002D7C 74 80            [12]  693 	mov	a,#0x80
      002D7E C0 E0            [24]  694 	push	acc
      002D80 E4               [12]  695 	clr	a
      002D81 C0 E0            [24]  696 	push	acc
      002D83 74 80            [12]  697 	mov	a,#_fft
      002D85 C0 E0            [24]  698 	push	acc
      002D87 74 4C            [12]  699 	mov	a,#(_fft >> 8)
      002D89 C0 E0            [24]  700 	push	acc
      002D8B E4               [12]  701 	clr	a
      002D8C C0 E0            [24]  702 	push	acc
      002D8E 90 4D 00         [24]  703 	mov	dptr,#_ifft
      002D91 75 F0 00         [24]  704 	mov	b,#0x00
      002D94 12 30 42         [24]  705 	lcall	___memcpy
      002D97 E5 81            [12]  706 	mov	a,sp
      002D99 24 FB            [12]  707 	add	a,#0xfb
      002D9B F5 81            [12]  708 	mov	sp,a
                                    709 ;	main.c:71: scale = fix_fftr(ifft, N, 1);
      002D9D 74 01            [12]  710 	mov	a,#0x01
      002D9F C0 E0            [24]  711 	push	acc
      002DA1 E4               [12]  712 	clr	a
      002DA2 C0 E0            [24]  713 	push	acc
      002DA4 74 06            [12]  714 	mov	a,#0x06
      002DA6 C0 E0            [24]  715 	push	acc
      002DA8 E4               [12]  716 	clr	a
      002DA9 C0 E0            [24]  717 	push	acc
      002DAB 90 4D 00         [24]  718 	mov	dptr,#_ifft
      002DAE 75 F0 00         [24]  719 	mov	b,#0x00
      002DB1 12 2A 21         [24]  720 	lcall	_fix_fftr
      002DB4 AC 82            [24]  721 	mov	r4,dpl
      002DB6 AD 83            [24]  722 	mov	r5,dph
      002DB8 E5 81            [12]  723 	mov	a,sp
      002DBA 24 FC            [12]  724 	add	a,#0xfc
      002DBC F5 81            [12]  725 	mov	sp,a
      002DBE D0 06            [24]  726 	pop	ar6
      002DC0 D0 07            [24]  727 	pop	ar7
      002DC2 E5 10            [12]  728 	mov	a,_bp
      002DC4 24 03            [12]  729 	add	a,#0x03
      002DC6 F8               [12]  730 	mov	r0,a
      002DC7 A6 04            [24]  731 	mov	@r0,ar4
      002DC9 08               [12]  732 	inc	r0
      002DCA A6 05            [24]  733 	mov	@r0,ar5
                                    734 ;	main.c:73: if (print)
      002DCC 78 11            [12]  735 	mov	r0,#_print
      002DCE E6               [12]  736 	mov	a,@r0
      002DCF 70 03            [24]  737 	jnz	00145$
      002DD1 02 2E 81         [24]  738 	ljmp	00104$
      002DD4                        739 00145$:
                                    740 ;	main.c:74: for (j = 0; j < (1 << N); j++)
      002DD4 A8 10            [24]  741 	mov	r0,_bp
      002DD6 08               [12]  742 	inc	r0
      002DD7 E4               [12]  743 	clr	a
      002DD8 F6               [12]  744 	mov	@r0,a
      002DD9 08               [12]  745 	inc	r0
      002DDA F6               [12]  746 	mov	@r0,a
      002DDB                        747 00108$:
                                    748 ;	main.c:76: samples[j], ifft[j] * (1 << scale));
      002DDB C0 06            [24]  749 	push	ar6
      002DDD C0 07            [24]  750 	push	ar7
      002DDF A8 10            [24]  751 	mov	r0,_bp
      002DE1 08               [12]  752 	inc	r0
      002DE2 E6               [12]  753 	mov	a,@r0
      002DE3 25 E0            [12]  754 	add	a,acc
      002DE5 FE               [12]  755 	mov	r6,a
      002DE6 08               [12]  756 	inc	r0
      002DE7 E6               [12]  757 	mov	a,@r0
      002DE8 33               [12]  758 	rlc	a
      002DE9 FF               [12]  759 	mov	r7,a
      002DEA EE               [12]  760 	mov	a,r6
      002DEB 24 00            [12]  761 	add	a,#_ifft
      002DED F5 82            [12]  762 	mov	dpl,a
      002DEF EF               [12]  763 	mov	a,r7
      002DF0 34 4D            [12]  764 	addc	a,#(_ifft >> 8)
      002DF2 F5 83            [12]  765 	mov	dph,a
      002DF4 E0               [24]  766 	movx	a,@dptr
      002DF5 FC               [12]  767 	mov	r4,a
      002DF6 A3               [24]  768 	inc	dptr
      002DF7 E0               [24]  769 	movx	a,@dptr
      002DF8 FD               [12]  770 	mov	r5,a
      002DF9 E5 10            [12]  771 	mov	a,_bp
      002DFB 24 03            [12]  772 	add	a,#0x03
      002DFD F8               [12]  773 	mov	r0,a
      002DFE 86 03            [24]  774 	mov	ar3,@r0
      002E00 8B F0            [24]  775 	mov	b,r3
      002E02 05 F0            [12]  776 	inc	b
      002E04 7B 01            [12]  777 	mov	r3,#0x01
      002E06 7A 00            [12]  778 	mov	r2,#0x00
      002E08 80 06            [24]  779 	sjmp	00147$
      002E0A                        780 00146$:
      002E0A EB               [12]  781 	mov	a,r3
      002E0B 2B               [12]  782 	add	a,r3
      002E0C FB               [12]  783 	mov	r3,a
      002E0D EA               [12]  784 	mov	a,r2
      002E0E 33               [12]  785 	rlc	a
      002E0F FA               [12]  786 	mov	r2,a
      002E10                        787 00147$:
      002E10 D5 F0 F7         [24]  788 	djnz	b,00146$
      002E13 C0 07            [24]  789 	push	ar7
      002E15 C0 06            [24]  790 	push	ar6
      002E17 C0 03            [24]  791 	push	ar3
      002E19 C0 02            [24]  792 	push	ar2
      002E1B 8C 82            [24]  793 	mov	dpl,r4
      002E1D 8D 83            [24]  794 	mov	dph,r5
      002E1F 12 2F A4         [24]  795 	lcall	__mulint
      002E22 AC 82            [24]  796 	mov	r4,dpl
      002E24 AD 83            [24]  797 	mov	r5,dph
      002E26 15 81            [12]  798 	dec	sp
      002E28 15 81            [12]  799 	dec	sp
      002E2A D0 06            [24]  800 	pop	ar6
      002E2C D0 07            [24]  801 	pop	ar7
      002E2E EE               [12]  802 	mov	a,r6
      002E2F 24 00            [12]  803 	add	a,#_samples
      002E31 F5 82            [12]  804 	mov	dpl,a
      002E33 EF               [12]  805 	mov	a,r7
      002E34 34 4C            [12]  806 	addc	a,#(_samples >> 8)
      002E36 F5 83            [12]  807 	mov	dph,a
      002E38 E0               [24]  808 	movx	a,@dptr
      002E39 FE               [12]  809 	mov	r6,a
      002E3A A3               [24]  810 	inc	dptr
      002E3B E0               [24]  811 	movx	a,@dptr
      002E3C FF               [12]  812 	mov	r7,a
                                    813 ;	main.c:75: printf("% 8d% 8d\r\n",
      002E3D C0 07            [24]  814 	push	ar7
      002E3F C0 06            [24]  815 	push	ar6
      002E41 C0 04            [24]  816 	push	ar4
      002E43 C0 05            [24]  817 	push	ar5
      002E45 C0 06            [24]  818 	push	ar6
      002E47 C0 07            [24]  819 	push	ar7
      002E49 74 47            [12]  820 	mov	a,#___str_1
      002E4B C0 E0            [24]  821 	push	acc
      002E4D 74 45            [12]  822 	mov	a,#(___str_1 >> 8)
      002E4F C0 E0            [24]  823 	push	acc
      002E51 74 80            [12]  824 	mov	a,#0x80
      002E53 C0 E0            [24]  825 	push	acc
      002E55 12 31 1B         [24]  826 	lcall	_printf
      002E58 E5 81            [12]  827 	mov	a,sp
      002E5A 24 F9            [12]  828 	add	a,#0xf9
      002E5C F5 81            [12]  829 	mov	sp,a
      002E5E D0 06            [24]  830 	pop	ar6
      002E60 D0 07            [24]  831 	pop	ar7
                                    832 ;	main.c:74: for (j = 0; j < (1 << N); j++)
      002E62 A8 10            [24]  833 	mov	r0,_bp
      002E64 08               [12]  834 	inc	r0
      002E65 06               [12]  835 	inc	@r0
      002E66 B6 00 02         [24]  836 	cjne	@r0,#0x00,00148$
      002E69 08               [12]  837 	inc	r0
      002E6A 06               [12]  838 	inc	@r0
      002E6B                        839 00148$:
      002E6B A8 10            [24]  840 	mov	r0,_bp
      002E6D 08               [12]  841 	inc	r0
      002E6E C3               [12]  842 	clr	c
      002E6F E6               [12]  843 	mov	a,@r0
      002E70 94 40            [12]  844 	subb	a,#0x40
      002E72 08               [12]  845 	inc	r0
      002E73 E6               [12]  846 	mov	a,@r0
      002E74 64 80            [12]  847 	xrl	a,#0x80
      002E76 94 80            [12]  848 	subb	a,#0x80
      002E78 D0 07            [24]  849 	pop	ar7
      002E7A D0 06            [24]  850 	pop	ar6
      002E7C 50 03            [24]  851 	jnc	00149$
      002E7E 02 2D DB         [24]  852 	ljmp	00108$
      002E81                        853 00149$:
      002E81                        854 00104$:
                                    855 ;	main.c:78: printf("DONE\r\n\r\n");
      002E81 C0 07            [24]  856 	push	ar7
      002E83 C0 06            [24]  857 	push	ar6
      002E85 74 52            [12]  858 	mov	a,#___str_2
      002E87 C0 E0            [24]  859 	push	acc
      002E89 74 45            [12]  860 	mov	a,#(___str_2 >> 8)
      002E8B C0 E0            [24]  861 	push	acc
      002E8D 74 80            [12]  862 	mov	a,#0x80
      002E8F C0 E0            [24]  863 	push	acc
      002E91 12 31 1B         [24]  864 	lcall	_printf
      002E94 15 81            [12]  865 	dec	sp
      002E96 15 81            [12]  866 	dec	sp
      002E98 15 81            [12]  867 	dec	sp
      002E9A D0 06            [24]  868 	pop	ar6
      002E9C D0 07            [24]  869 	pop	ar7
                                    870 ;	main.c:56: for (i = 0; 1; i++) {
      002E9E 0E               [12]  871 	inc	r6
      002E9F BE 00 01         [24]  872 	cjne	r6,#0x00,00150$
      002EA2 0F               [12]  873 	inc	r7
      002EA3                        874 00150$:
      002EA3 02 2C 86         [24]  875 	ljmp	00117$
                                    876 ;	main.c:83: return;
                                    877 ;	main.c:84: }
      002EA6 85 10 81         [24]  878 	mov	sp,_bp
      002EA9 D0 10            [24]  879 	pop	_bp
      002EAB 22               [24]  880 	ret
                                    881 	.area CSEG    (CODE)
                                    882 	.area CONST   (CODE)
                                    883 	.area CONST   (CODE)
      004536                        884 ___str_0:
      004536 44 4F 20 46 46 54 20   885 	.ascii "DO FFT IFFT %d"
             49 46 46 54 20 25 64
      004544 0D                     886 	.db 0x0d
      004545 0A                     887 	.db 0x0a
      004546 00                     888 	.db 0x00
                                    889 	.area CSEG    (CODE)
                                    890 	.area CONST   (CODE)
      004547                        891 ___str_1:
      004547 25 20 38 64 25 20 38   892 	.ascii "% 8d% 8d"
             64
      00454F 0D                     893 	.db 0x0d
      004550 0A                     894 	.db 0x0a
      004551 00                     895 	.db 0x00
                                    896 	.area CSEG    (CODE)
                                    897 	.area CONST   (CODE)
      004552                        898 ___str_2:
      004552 44 4F 4E 45            899 	.ascii "DONE"
      004556 0D                     900 	.db 0x0d
      004557 0A                     901 	.db 0x0a
      004558 0D                     902 	.db 0x0d
      004559 0A                     903 	.db 0x0a
      00455A 00                     904 	.db 0x00
                                    905 	.area CSEG    (CODE)
                                    906 	.area XINIT   (CODE)
                                    907 	.area CABS    (ABS,CODE)
