                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module calc
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _getchar_poll
                                     13 	.globl _stack_iter_peek
                                     14 	.globl _stack_peek
                                     15 	.globl _stack_pop
                                     16 	.globl _stack_push
                                     17 	.globl _stack_init
                                     18 	.globl _state_exec
                                     19 	.globl _state_init
                                     20 	.globl _isxdigit
                                     21 	.globl _printf
                                     22 	.globl _strtol
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _FL
                                     30 	.globl _P
                                     31 	.globl _TF2
                                     32 	.globl _EXF2
                                     33 	.globl _RCLK
                                     34 	.globl _TCLK
                                     35 	.globl _EXEN2
                                     36 	.globl _TR2
                                     37 	.globl _C_T2
                                     38 	.globl _CP_RL2
                                     39 	.globl _T2CON_7
                                     40 	.globl _T2CON_6
                                     41 	.globl _T2CON_5
                                     42 	.globl _T2CON_4
                                     43 	.globl _T2CON_3
                                     44 	.globl _T2CON_2
                                     45 	.globl _T2CON_1
                                     46 	.globl _T2CON_0
                                     47 	.globl _PT2
                                     48 	.globl _PS
                                     49 	.globl _PT1
                                     50 	.globl _PX1
                                     51 	.globl _PT0
                                     52 	.globl _PX0
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _ET2
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _T2EX
                                     93 	.globl _T2
                                     94 	.globl _P1_7
                                     95 	.globl _P1_6
                                     96 	.globl _P1_5
                                     97 	.globl _P1_4
                                     98 	.globl _P1_3
                                     99 	.globl _P1_2
                                    100 	.globl _P1_1
                                    101 	.globl _P1_0
                                    102 	.globl _TF1
                                    103 	.globl _TR1
                                    104 	.globl _TF0
                                    105 	.globl _TR0
                                    106 	.globl _IE1
                                    107 	.globl _IT1
                                    108 	.globl _IE0
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _B
                                    119 	.globl _A
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _TH2
                                    123 	.globl _TL2
                                    124 	.globl _RCAP2H
                                    125 	.globl _RCAP2L
                                    126 	.globl _T2MOD
                                    127 	.globl _T2CON
                                    128 	.globl _IP
                                    129 	.globl _P3
                                    130 	.globl _IE
                                    131 	.globl _P2
                                    132 	.globl _SBUF
                                    133 	.globl _SCON
                                    134 	.globl _P1
                                    135 	.globl _TH1
                                    136 	.globl _TH0
                                    137 	.globl _TL1
                                    138 	.globl _TL0
                                    139 	.globl _TMOD
                                    140 	.globl _TCON
                                    141 	.globl _PCON
                                    142 	.globl _DPH
                                    143 	.globl _DPL
                                    144 	.globl _SP
                                    145 	.globl _P0
                                    146 	.globl _putchar
                                    147 	.globl _getchar
                                    148 ;--------------------------------------------------------
                                    149 ; special function registers
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0	=	0x0080
                           000081   154 _SP	=	0x0081
                           000082   155 _DPL	=	0x0082
                           000083   156 _DPH	=	0x0083
                           000087   157 _PCON	=	0x0087
                           000088   158 _TCON	=	0x0088
                           000089   159 _TMOD	=	0x0089
                           00008A   160 _TL0	=	0x008a
                           00008B   161 _TL1	=	0x008b
                           00008C   162 _TH0	=	0x008c
                           00008D   163 _TH1	=	0x008d
                           000090   164 _P1	=	0x0090
                           000098   165 _SCON	=	0x0098
                           000099   166 _SBUF	=	0x0099
                           0000A0   167 _P2	=	0x00a0
                           0000A8   168 _IE	=	0x00a8
                           0000B0   169 _P3	=	0x00b0
                           0000B8   170 _IP	=	0x00b8
                           0000C8   171 _T2CON	=	0x00c8
                           0000C9   172 _T2MOD	=	0x00c9
                           0000CA   173 _RCAP2L	=	0x00ca
                           0000CB   174 _RCAP2H	=	0x00cb
                           0000CC   175 _TL2	=	0x00cc
                           0000CD   176 _TH2	=	0x00cd
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000E0   179 _A	=	0x00e0
                           0000F0   180 _B	=	0x00f0
                                    181 ;--------------------------------------------------------
                                    182 ; special function bits
                                    183 ;--------------------------------------------------------
                                    184 	.area RSEG    (ABS,DATA)
      000000                        185 	.org 0x0000
                           000080   186 _P0_0	=	0x0080
                           000081   187 _P0_1	=	0x0081
                           000082   188 _P0_2	=	0x0082
                           000083   189 _P0_3	=	0x0083
                           000084   190 _P0_4	=	0x0084
                           000085   191 _P0_5	=	0x0085
                           000086   192 _P0_6	=	0x0086
                           000087   193 _P0_7	=	0x0087
                           000088   194 _IT0	=	0x0088
                           000089   195 _IE0	=	0x0089
                           00008A   196 _IT1	=	0x008a
                           00008B   197 _IE1	=	0x008b
                           00008C   198 _TR0	=	0x008c
                           00008D   199 _TF0	=	0x008d
                           00008E   200 _TR1	=	0x008e
                           00008F   201 _TF1	=	0x008f
                           000090   202 _P1_0	=	0x0090
                           000091   203 _P1_1	=	0x0091
                           000092   204 _P1_2	=	0x0092
                           000093   205 _P1_3	=	0x0093
                           000094   206 _P1_4	=	0x0094
                           000095   207 _P1_5	=	0x0095
                           000096   208 _P1_6	=	0x0096
                           000097   209 _P1_7	=	0x0097
                           000090   210 _T2	=	0x0090
                           000091   211 _T2EX	=	0x0091
                           000098   212 _RI	=	0x0098
                           000099   213 _TI	=	0x0099
                           00009A   214 _RB8	=	0x009a
                           00009B   215 _TB8	=	0x009b
                           00009C   216 _REN	=	0x009c
                           00009D   217 _SM2	=	0x009d
                           00009E   218 _SM1	=	0x009e
                           00009F   219 _SM0	=	0x009f
                           0000A0   220 _P2_0	=	0x00a0
                           0000A1   221 _P2_1	=	0x00a1
                           0000A2   222 _P2_2	=	0x00a2
                           0000A3   223 _P2_3	=	0x00a3
                           0000A4   224 _P2_4	=	0x00a4
                           0000A5   225 _P2_5	=	0x00a5
                           0000A6   226 _P2_6	=	0x00a6
                           0000A7   227 _P2_7	=	0x00a7
                           0000A8   228 _EX0	=	0x00a8
                           0000A9   229 _ET0	=	0x00a9
                           0000AA   230 _EX1	=	0x00aa
                           0000AB   231 _ET1	=	0x00ab
                           0000AC   232 _ES	=	0x00ac
                           0000AD   233 _ET2	=	0x00ad
                           0000AF   234 _EA	=	0x00af
                           0000B0   235 _P3_0	=	0x00b0
                           0000B1   236 _P3_1	=	0x00b1
                           0000B2   237 _P3_2	=	0x00b2
                           0000B3   238 _P3_3	=	0x00b3
                           0000B4   239 _P3_4	=	0x00b4
                           0000B5   240 _P3_5	=	0x00b5
                           0000B6   241 _P3_6	=	0x00b6
                           0000B7   242 _P3_7	=	0x00b7
                           0000B0   243 _RXD	=	0x00b0
                           0000B1   244 _TXD	=	0x00b1
                           0000B2   245 _INT0	=	0x00b2
                           0000B3   246 _INT1	=	0x00b3
                           0000B4   247 _T0	=	0x00b4
                           0000B5   248 _T1	=	0x00b5
                           0000B6   249 _WR	=	0x00b6
                           0000B7   250 _RD	=	0x00b7
                           0000B8   251 _PX0	=	0x00b8
                           0000B9   252 _PT0	=	0x00b9
                           0000BA   253 _PX1	=	0x00ba
                           0000BB   254 _PT1	=	0x00bb
                           0000BC   255 _PS	=	0x00bc
                           0000BD   256 _PT2	=	0x00bd
                           0000C8   257 _T2CON_0	=	0x00c8
                           0000C9   258 _T2CON_1	=	0x00c9
                           0000CA   259 _T2CON_2	=	0x00ca
                           0000CB   260 _T2CON_3	=	0x00cb
                           0000CC   261 _T2CON_4	=	0x00cc
                           0000CD   262 _T2CON_5	=	0x00cd
                           0000CE   263 _T2CON_6	=	0x00ce
                           0000CF   264 _T2CON_7	=	0x00cf
                           0000C8   265 _CP_RL2	=	0x00c8
                           0000C9   266 _C_T2	=	0x00c9
                           0000CA   267 _TR2	=	0x00ca
                           0000CB   268 _EXEN2	=	0x00cb
                           0000CC   269 _TCLK	=	0x00cc
                           0000CD   270 _RCLK	=	0x00cd
                           0000CE   271 _EXF2	=	0x00ce
                           0000CF   272 _TF2	=	0x00cf
                           0000D0   273 _P	=	0x00d0
                           0000D1   274 _FL	=	0x00d1
                           0000D2   275 _OV	=	0x00d2
                           0000D3   276 _RS0	=	0x00d3
                           0000D4   277 _RS1	=	0x00d4
                           0000D5   278 _F0	=	0x00d5
                           0000D6   279 _AC	=	0x00d6
                           0000D7   280 _CY	=	0x00d7
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable register banks
                                    283 ;--------------------------------------------------------
                                    284 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        285 	.ds 8
                                    286 ;--------------------------------------------------------
                                    287 ; internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area DSEG    (DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; overlayable items in internal ram 
                                    292 ;--------------------------------------------------------
                                    293 ;--------------------------------------------------------
                                    294 ; Stack segment in internal ram 
                                    295 ;--------------------------------------------------------
                                    296 	.area	SSEG
      000021                        297 __start__stack:
      000021                        298 	.ds	1
                                    299 
                                    300 ;--------------------------------------------------------
                                    301 ; indirectly addressable internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area ISEG    (DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; absolute internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area IABS    (ABS,DATA)
                                    308 	.area IABS    (ABS,DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; bit data
                                    311 ;--------------------------------------------------------
                                    312 	.area BSEG    (BIT)
                                    313 ;--------------------------------------------------------
                                    314 ; paged external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area PSEG    (PAG,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XSEG    (XDATA)
      008000                        321 _s:
      008000                        322 	.ds 12
      00800C                        323 _c:
      00800C                        324 	.ds 8205
                                    325 ;--------------------------------------------------------
                                    326 ; absolute external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XABS    (ABS,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external initialized ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XISEG   (XDATA)
      00A01B                        333 _deltas:
      00A01B                        334 	.ds 160
                                    335 	.area HOME    (CODE)
                                    336 	.area GSINIT0 (CODE)
                                    337 	.area GSINIT1 (CODE)
                                    338 	.area GSINIT2 (CODE)
                                    339 	.area GSINIT3 (CODE)
                                    340 	.area GSINIT4 (CODE)
                                    341 	.area GSINIT5 (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.area GSFINAL (CODE)
                                    344 	.area CSEG    (CODE)
                                    345 ;--------------------------------------------------------
                                    346 ; interrupt vector 
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
      002000                        349 __interrupt_vect:
      002000 02 20 34         [24]  350 	ljmp	__sdcc_gsinit_startup
                                    351 ;--------------------------------------------------------
                                    352 ; global & static initialisations
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.globl __sdcc_gsinit_startup
                                    359 	.globl __sdcc_program_startup
                                    360 	.globl __start__stack
                                    361 	.globl __mcs51_genXINIT
                                    362 	.globl __mcs51_genXRAMCLEAR
                                    363 	.globl __mcs51_genRAMCLEAR
                                    364 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  365 	ljmp	__sdcc_program_startup
                                    366 ;--------------------------------------------------------
                                    367 ; Home
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area HOME    (CODE)
      002003                        371 __sdcc_program_startup:
      002003 02 48 49         [24]  372 	ljmp	_main
                                    373 ;	return from main will return to caller
                                    374 ;--------------------------------------------------------
                                    375 ; code
                                    376 ;--------------------------------------------------------
                                    377 	.area CSEG    (CODE)
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'putchar'
                                    380 ;------------------------------------------------------------
                                    381 ;c                         Allocated to registers 
                                    382 ;------------------------------------------------------------
                                    383 ;	calc.c:15: int putchar(int c) __naked {
                                    384 ;	-----------------------------------------
                                    385 ;	 function putchar
                                    386 ;	-----------------------------------------
      0029C0                        387 _putchar:
                                    388 ;	naked function: no prologue.
                                    389 ;	calc.c:20: __endasm;
      0029C0 E5 82            [12]  390 	mov	a, dpl
      0029C2 02 00 30         [24]  391 	ljmp	0x0030
                                    392 ;	calc.c:21: }
                                    393 ;	naked function: no epilogue.
                                    394 ;------------------------------------------------------------
                                    395 ;Allocation info for local variables in function 'getchar'
                                    396 ;------------------------------------------------------------
                                    397 ;	calc.c:23: int getchar(void) __naked {
                                    398 ;	-----------------------------------------
                                    399 ;	 function getchar
                                    400 ;	-----------------------------------------
      0029C5                        401 _getchar:
                                    402 ;	naked function: no prologue.
                                    403 ;	calc.c:29: __endasm;
      0029C5 12 00 32         [24]  404 	lcall	0x0032
      0029C8 F5 82            [12]  405 	mov	dpl, a
      0029CA 75 83 00         [24]  406 	mov	dph, #0
      0029CD 22               [24]  407 	ret
                                    408 ;	calc.c:30: }
                                    409 ;	naked function: no epilogue.
                                    410 ;------------------------------------------------------------
                                    411 ;Allocation info for local variables in function 'getchar_poll'
                                    412 ;------------------------------------------------------------
                                    413 ;	calc.c:32: int getchar_poll(void) __naked {
                                    414 ;	-----------------------------------------
                                    415 ;	 function getchar_poll
                                    416 ;	-----------------------------------------
      0029CE                        417 _getchar_poll:
                                    418 ;	naked function: no prologue.
                                    419 ;	calc.c:44: __endasm;
      0029CE 74 FF            [12]  420 	mov	a, #0xff
      0029D0 F5 F0            [12]  421 	mov	b, a
      0029D2 30 98 07         [24]  422 	jnb	ri, nochar
      0029D5 C2 98            [12]  423 	clr	ri
      0029D7 E5 99            [12]  424 	mov	a, sbuf
      0029D9 75 F0 00         [24]  425 	mov	b, #0
      0029DC                        426 	nochar:
      0029DC F5 82            [12]  427 	mov	dpl, a
      0029DE 85 F0 83         [24]  428 	mov	dph, b
      0029E1 22               [24]  429 	ret
                                    430 ;	calc.c:45: }
                                    431 ;	naked function: no epilogue.
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'printstr'
                                    434 ;------------------------------------------------------------
                                    435 ;s                         Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	calc.c:47: static inline void printstr(const char *s) {
                                    438 ;	-----------------------------------------
                                    439 ;	 function printstr
                                    440 ;	-----------------------------------------
      0029E2                        441 _printstr:
                           000007   442 	ar7 = 0x07
                           000006   443 	ar6 = 0x06
                           000005   444 	ar5 = 0x05
                           000004   445 	ar4 = 0x04
                           000003   446 	ar3 = 0x03
                           000002   447 	ar2 = 0x02
                           000001   448 	ar1 = 0x01
                           000000   449 	ar0 = 0x00
      0029E2 AD 82            [24]  450 	mov	r5,dpl
      0029E4 AE 83            [24]  451 	mov	r6,dph
      0029E6 AF F0            [24]  452 	mov	r7,b
                                    453 ;	calc.c:50: return;
      0029E8                        454 00103$:
                                    455 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0029E8 8D 82            [24]  456 	mov	dpl,r5
      0029EA 8E 83            [24]  457 	mov	dph,r6
      0029EC 8F F0            [24]  458 	mov	b,r7
      0029EE 12 51 C9         [24]  459 	lcall	__gptrget
      0029F1 FC               [12]  460 	mov	r4,a
      0029F2 60 10            [24]  461 	jz	00101$
      0029F4 7B 00            [12]  462 	mov	r3,#0x00
      0029F6 8C 82            [24]  463 	mov	dpl,r4
      0029F8 8B 83            [24]  464 	mov	dph,r3
      0029FA 12 29 C0         [24]  465 	lcall	_putchar
      0029FD 0D               [12]  466 	inc	r5
      0029FE BD 00 E7         [24]  467 	cjne	r5,#0x00,00103$
      002A01 0E               [12]  468 	inc	r6
      002A02 80 E4            [24]  469 	sjmp	00103$
      002A04                        470 00101$:
                                    471 ;	calc.c:50: return;
                                    472 ;	calc.c:51: }
      002A04 22               [24]  473 	ret
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'printbin'
                                    476 ;------------------------------------------------------------
                                    477 ;d                         Allocated to stack - _bp +1
                                    478 ;mask                      Allocated to stack - _bp +5
                                    479 ;------------------------------------------------------------
                                    480 ;	calc.c:53: static inline void printbin(long d) {
                                    481 ;	-----------------------------------------
                                    482 ;	 function printbin
                                    483 ;	-----------------------------------------
      002A05                        484 _printbin:
      002A05 C0 08            [24]  485 	push	_bp
      002A07 85 81 08         [24]  486 	mov	_bp,sp
      002A0A C0 82            [24]  487 	push	dpl
      002A0C C0 83            [24]  488 	push	dph
      002A0E C0 F0            [24]  489 	push	b
      002A10 C0 E0            [24]  490 	push	acc
      002A12 E5 81            [12]  491 	mov	a,sp
      002A14 24 04            [12]  492 	add	a,#0x04
      002A16 F5 81            [12]  493 	mov	sp,a
                                    494 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002A18 E5 08            [12]  495 	mov	a,_bp
      002A1A 24 05            [12]  496 	add	a,#0x05
      002A1C F8               [12]  497 	mov	r0,a
      002A1D E4               [12]  498 	clr	a
      002A1E F6               [12]  499 	mov	@r0,a
      002A1F 08               [12]  500 	inc	r0
      002A20 F6               [12]  501 	mov	@r0,a
      002A21 08               [12]  502 	inc	r0
      002A22 F6               [12]  503 	mov	@r0,a
      002A23 08               [12]  504 	inc	r0
      002A24 76 80            [12]  505 	mov	@r0,#0x80
      002A26                        506 00102$:
                                    507 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002A26 A8 08            [24]  508 	mov	r0,_bp
      002A28 08               [12]  509 	inc	r0
      002A29 86 04            [24]  510 	mov	ar4,@r0
      002A2B 08               [12]  511 	inc	r0
      002A2C 86 05            [24]  512 	mov	ar5,@r0
      002A2E 08               [12]  513 	inc	r0
      002A2F 86 06            [24]  514 	mov	ar6,@r0
      002A31 08               [12]  515 	inc	r0
      002A32 86 07            [24]  516 	mov	ar7,@r0
      002A34 E5 08            [12]  517 	mov	a,_bp
      002A36 24 05            [12]  518 	add	a,#0x05
      002A38 F8               [12]  519 	mov	r0,a
      002A39 E6               [12]  520 	mov	a,@r0
      002A3A 52 04            [12]  521 	anl	ar4,a
      002A3C 08               [12]  522 	inc	r0
      002A3D E6               [12]  523 	mov	a,@r0
      002A3E 52 05            [12]  524 	anl	ar5,a
      002A40 08               [12]  525 	inc	r0
      002A41 E6               [12]  526 	mov	a,@r0
      002A42 52 06            [12]  527 	anl	ar6,a
      002A44 08               [12]  528 	inc	r0
      002A45 E6               [12]  529 	mov	a,@r0
      002A46 52 07            [12]  530 	anl	ar7,a
      002A48 EC               [12]  531 	mov	a,r4
      002A49 4D               [12]  532 	orl	a,r5
      002A4A 4E               [12]  533 	orl	a,r6
      002A4B 4F               [12]  534 	orl	a,r7
      002A4C 60 06            [24]  535 	jz	00106$
      002A4E 7E 31            [12]  536 	mov	r6,#0x31
      002A50 7F 00            [12]  537 	mov	r7,#0x00
      002A52 80 04            [24]  538 	sjmp	00107$
      002A54                        539 00106$:
      002A54 7E 30            [12]  540 	mov	r6,#0x30
      002A56 7F 00            [12]  541 	mov	r7,#0x00
      002A58                        542 00107$:
      002A58 8E 82            [24]  543 	mov	dpl,r6
      002A5A 8F 83            [24]  544 	mov	dph,r7
      002A5C 12 29 C0         [24]  545 	lcall	_putchar
                                    546 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002A5F E5 08            [12]  547 	mov	a,_bp
      002A61 24 05            [12]  548 	add	a,#0x05
      002A63 F8               [12]  549 	mov	r0,a
      002A64 08               [12]  550 	inc	r0
      002A65 08               [12]  551 	inc	r0
      002A66 08               [12]  552 	inc	r0
      002A67 E6               [12]  553 	mov	a,@r0
      002A68 C3               [12]  554 	clr	c
      002A69 13               [12]  555 	rrc	a
      002A6A F6               [12]  556 	mov	@r0,a
      002A6B 18               [12]  557 	dec	r0
      002A6C E6               [12]  558 	mov	a,@r0
      002A6D 13               [12]  559 	rrc	a
      002A6E F6               [12]  560 	mov	@r0,a
      002A6F 18               [12]  561 	dec	r0
      002A70 E6               [12]  562 	mov	a,@r0
      002A71 13               [12]  563 	rrc	a
      002A72 F6               [12]  564 	mov	@r0,a
      002A73 18               [12]  565 	dec	r0
      002A74 E6               [12]  566 	mov	a,@r0
      002A75 13               [12]  567 	rrc	a
      002A76 F6               [12]  568 	mov	@r0,a
      002A77 E5 08            [12]  569 	mov	a,_bp
      002A79 24 05            [12]  570 	add	a,#0x05
      002A7B F8               [12]  571 	mov	r0,a
      002A7C E6               [12]  572 	mov	a,@r0
      002A7D 08               [12]  573 	inc	r0
      002A7E 46               [12]  574 	orl	a,@r0
      002A7F 08               [12]  575 	inc	r0
      002A80 46               [12]  576 	orl	a,@r0
      002A81 08               [12]  577 	inc	r0
      002A82 46               [12]  578 	orl	a,@r0
      002A83 70 A1            [24]  579 	jnz	00102$
                                    580 ;	calc.c:59: return;
                                    581 ;	calc.c:60: }
      002A85 85 08 81         [24]  582 	mov	sp,_bp
      002A88 D0 08            [24]  583 	pop	_bp
      002A8A 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'accumulate'
                                    587 ;------------------------------------------------------------
                                    588 ;delta                     Allocated to stack - _bp -5
                                    589 ;_ctx                      Allocated to registers r5 r6 r7 
                                    590 ;ctx                       Allocated to stack - _bp +8
                                    591 ;d                         Allocated to stack - _bp +11
                                    592 ;sloc0                     Allocated to stack - _bp +1
                                    593 ;sloc1                     Allocated to stack - _bp +4
                                    594 ;------------------------------------------------------------
                                    595 ;	calc.c:84: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    596 ;	-----------------------------------------
                                    597 ;	 function accumulate
                                    598 ;	-----------------------------------------
      002A8B                        599 _accumulate:
      002A8B C0 08            [24]  600 	push	_bp
      002A8D E5 81            [12]  601 	mov	a,sp
      002A8F F5 08            [12]  602 	mov	_bp,a
      002A91 24 0E            [12]  603 	add	a,#0x0e
      002A93 F5 81            [12]  604 	mov	sp,a
      002A95 AD 82            [24]  605 	mov	r5,dpl
      002A97 AE 83            [24]  606 	mov	r6,dph
      002A99 AF F0            [24]  607 	mov	r7,b
                                    608 ;	calc.c:85: struct ctx *ctx = (struct ctx *)_ctx;
      002A9B E5 08            [12]  609 	mov	a,_bp
      002A9D 24 08            [12]  610 	add	a,#0x08
      002A9F F8               [12]  611 	mov	r0,a
      002AA0 A6 05            [24]  612 	mov	@r0,ar5
      002AA2 08               [12]  613 	inc	r0
      002AA3 A6 06            [24]  614 	mov	@r0,ar6
      002AA5 08               [12]  615 	inc	r0
      002AA6 A6 07            [24]  616 	mov	@r0,ar7
                                    617 ;	calc.c:90: if (!ctx->acc_valid) {
      002AA8 E5 08            [12]  618 	mov	a,_bp
      002AAA 24 08            [12]  619 	add	a,#0x08
      002AAC F8               [12]  620 	mov	r0,a
      002AAD 74 06            [12]  621 	mov	a,#0x06
      002AAF 26               [12]  622 	add	a,@r0
      002AB0 FA               [12]  623 	mov	r2,a
      002AB1 E4               [12]  624 	clr	a
      002AB2 08               [12]  625 	inc	r0
      002AB3 36               [12]  626 	addc	a,@r0
      002AB4 FB               [12]  627 	mov	r3,a
      002AB5 08               [12]  628 	inc	r0
      002AB6 86 04            [24]  629 	mov	ar4,@r0
      002AB8 8A 82            [24]  630 	mov	dpl,r2
      002ABA 8B 83            [24]  631 	mov	dph,r3
      002ABC 8C F0            [24]  632 	mov	b,r4
      002ABE 12 51 C9         [24]  633 	lcall	__gptrget
      002AC1 70 31            [24]  634 	jnz	00102$
                                    635 ;	calc.c:91: ctx->acc_valid = 1;
      002AC3 8A 82            [24]  636 	mov	dpl,r2
      002AC5 8B 83            [24]  637 	mov	dph,r3
      002AC7 8C F0            [24]  638 	mov	b,r4
      002AC9 74 01            [12]  639 	mov	a,#0x01
      002ACB 12 4D 4E         [24]  640 	lcall	__gptrput
                                    641 ;	calc.c:92: ctx->acc = 0l;
      002ACE E5 08            [12]  642 	mov	a,_bp
      002AD0 24 08            [12]  643 	add	a,#0x08
      002AD2 F8               [12]  644 	mov	r0,a
      002AD3 74 02            [12]  645 	mov	a,#0x02
      002AD5 26               [12]  646 	add	a,@r0
      002AD6 FA               [12]  647 	mov	r2,a
      002AD7 E4               [12]  648 	clr	a
      002AD8 08               [12]  649 	inc	r0
      002AD9 36               [12]  650 	addc	a,@r0
      002ADA FB               [12]  651 	mov	r3,a
      002ADB 08               [12]  652 	inc	r0
      002ADC 86 04            [24]  653 	mov	ar4,@r0
      002ADE 8A 82            [24]  654 	mov	dpl,r2
      002AE0 8B 83            [24]  655 	mov	dph,r3
      002AE2 8C F0            [24]  656 	mov	b,r4
      002AE4 E4               [12]  657 	clr	a
      002AE5 12 4D 4E         [24]  658 	lcall	__gptrput
      002AE8 A3               [24]  659 	inc	dptr
      002AE9 12 4D 4E         [24]  660 	lcall	__gptrput
      002AEC A3               [24]  661 	inc	dptr
      002AED 12 4D 4E         [24]  662 	lcall	__gptrput
      002AF0 A3               [24]  663 	inc	dptr
      002AF1 12 4D 4E         [24]  664 	lcall	__gptrput
      002AF4                        665 00102$:
                                    666 ;	calc.c:95: d = strtol(ctx->digit, NULL, ctx->base);
      002AF4 E5 08            [12]  667 	mov	a,_bp
      002AF6 24 08            [12]  668 	add	a,#0x08
      002AF8 F8               [12]  669 	mov	r0,a
      002AF9 86 82            [24]  670 	mov	dpl,@r0
      002AFB 08               [12]  671 	inc	r0
      002AFC 86 83            [24]  672 	mov	dph,@r0
      002AFE 08               [12]  673 	inc	r0
      002AFF 86 F0            [24]  674 	mov	b,@r0
      002B01 12 51 C9         [24]  675 	lcall	__gptrget
      002B04 FB               [12]  676 	mov	r3,a
      002B05 A3               [24]  677 	inc	dptr
      002B06 12 51 C9         [24]  678 	lcall	__gptrget
      002B09 FC               [12]  679 	mov	r4,a
      002B0A E5 08            [12]  680 	mov	a,_bp
      002B0C 24 08            [12]  681 	add	a,#0x08
      002B0E F8               [12]  682 	mov	r0,a
      002B0F 74 07            [12]  683 	mov	a,#0x07
      002B11 26               [12]  684 	add	a,@r0
      002B12 FA               [12]  685 	mov	r2,a
      002B13 E4               [12]  686 	clr	a
      002B14 08               [12]  687 	inc	r0
      002B15 36               [12]  688 	addc	a,@r0
      002B16 FE               [12]  689 	mov	r6,a
      002B17 08               [12]  690 	inc	r0
      002B18 86 07            [24]  691 	mov	ar7,@r0
      002B1A C0 03            [24]  692 	push	ar3
      002B1C C0 04            [24]  693 	push	ar4
      002B1E E4               [12]  694 	clr	a
      002B1F C0 E0            [24]  695 	push	acc
      002B21 C0 E0            [24]  696 	push	acc
      002B23 C0 E0            [24]  697 	push	acc
      002B25 8A 82            [24]  698 	mov	dpl,r2
      002B27 8E 83            [24]  699 	mov	dph,r6
      002B29 8F F0            [24]  700 	mov	b,r7
      002B2B 12 4B 10         [24]  701 	lcall	_strtol
      002B2E C8               [12]  702 	xch	a,r0
      002B2F E5 08            [12]  703 	mov	a,_bp
      002B31 24 0B            [12]  704 	add	a,#0x0b
      002B33 C8               [12]  705 	xch	a,r0
      002B34 A6 82            [24]  706 	mov	@r0,dpl
      002B36 08               [12]  707 	inc	r0
      002B37 A6 83            [24]  708 	mov	@r0,dph
      002B39 08               [12]  709 	inc	r0
      002B3A A6 F0            [24]  710 	mov	@r0,b
      002B3C 08               [12]  711 	inc	r0
      002B3D F6               [12]  712 	mov	@r0,a
      002B3E E5 81            [12]  713 	mov	a,sp
      002B40 24 FB            [12]  714 	add	a,#0xfb
      002B42 F5 81            [12]  715 	mov	sp,a
                                    716 ;	calc.c:96: ctx->acc = ctx->acc * (long)ctx->base + d;
      002B44 E5 08            [12]  717 	mov	a,_bp
      002B46 24 08            [12]  718 	add	a,#0x08
      002B48 F8               [12]  719 	mov	r0,a
      002B49 A9 08            [24]  720 	mov	r1,_bp
      002B4B 09               [12]  721 	inc	r1
      002B4C 74 02            [12]  722 	mov	a,#0x02
      002B4E 26               [12]  723 	add	a,@r0
      002B4F F7               [12]  724 	mov	@r1,a
      002B50 E4               [12]  725 	clr	a
      002B51 08               [12]  726 	inc	r0
      002B52 36               [12]  727 	addc	a,@r0
      002B53 09               [12]  728 	inc	r1
      002B54 F7               [12]  729 	mov	@r1,a
      002B55 08               [12]  730 	inc	r0
      002B56 09               [12]  731 	inc	r1
      002B57 E6               [12]  732 	mov	a,@r0
      002B58 F7               [12]  733 	mov	@r1,a
      002B59 A8 08            [24]  734 	mov	r0,_bp
      002B5B 08               [12]  735 	inc	r0
      002B5C 86 82            [24]  736 	mov	dpl,@r0
      002B5E 08               [12]  737 	inc	r0
      002B5F 86 83            [24]  738 	mov	dph,@r0
      002B61 08               [12]  739 	inc	r0
      002B62 86 F0            [24]  740 	mov	b,@r0
      002B64 E5 08            [12]  741 	mov	a,_bp
      002B66 24 04            [12]  742 	add	a,#0x04
      002B68 F9               [12]  743 	mov	r1,a
      002B69 12 51 C9         [24]  744 	lcall	__gptrget
      002B6C F7               [12]  745 	mov	@r1,a
      002B6D A3               [24]  746 	inc	dptr
      002B6E 12 51 C9         [24]  747 	lcall	__gptrget
      002B71 09               [12]  748 	inc	r1
      002B72 F7               [12]  749 	mov	@r1,a
      002B73 A3               [24]  750 	inc	dptr
      002B74 12 51 C9         [24]  751 	lcall	__gptrget
      002B77 09               [12]  752 	inc	r1
      002B78 F7               [12]  753 	mov	@r1,a
      002B79 A3               [24]  754 	inc	dptr
      002B7A 12 51 C9         [24]  755 	lcall	__gptrget
      002B7D 09               [12]  756 	inc	r1
      002B7E F7               [12]  757 	mov	@r1,a
      002B7F E5 08            [12]  758 	mov	a,_bp
      002B81 24 08            [12]  759 	add	a,#0x08
      002B83 F8               [12]  760 	mov	r0,a
      002B84 86 82            [24]  761 	mov	dpl,@r0
      002B86 08               [12]  762 	inc	r0
      002B87 86 83            [24]  763 	mov	dph,@r0
      002B89 08               [12]  764 	inc	r0
      002B8A 86 F0            [24]  765 	mov	b,@r0
      002B8C 12 51 C9         [24]  766 	lcall	__gptrget
      002B8F FA               [12]  767 	mov	r2,a
      002B90 A3               [24]  768 	inc	dptr
      002B91 12 51 C9         [24]  769 	lcall	__gptrget
      002B94 FB               [12]  770 	mov	r3,a
      002B95 33               [12]  771 	rlc	a
      002B96 95 E0            [12]  772 	subb	a,acc
      002B98 FE               [12]  773 	mov	r6,a
      002B99 FF               [12]  774 	mov	r7,a
      002B9A C0 02            [24]  775 	push	ar2
      002B9C C0 03            [24]  776 	push	ar3
      002B9E C0 06            [24]  777 	push	ar6
      002BA0 C0 07            [24]  778 	push	ar7
      002BA2 E5 08            [12]  779 	mov	a,_bp
      002BA4 24 04            [12]  780 	add	a,#0x04
      002BA6 F8               [12]  781 	mov	r0,a
      002BA7 86 82            [24]  782 	mov	dpl,@r0
      002BA9 08               [12]  783 	inc	r0
      002BAA 86 83            [24]  784 	mov	dph,@r0
      002BAC 08               [12]  785 	inc	r0
      002BAD 86 F0            [24]  786 	mov	b,@r0
      002BAF 08               [12]  787 	inc	r0
      002BB0 E6               [12]  788 	mov	a,@r0
      002BB1 12 55 C2         [24]  789 	lcall	__mullong
      002BB4 AC 82            [24]  790 	mov	r4,dpl
      002BB6 AD 83            [24]  791 	mov	r5,dph
      002BB8 AE F0            [24]  792 	mov	r6,b
      002BBA FF               [12]  793 	mov	r7,a
      002BBB E5 81            [12]  794 	mov	a,sp
      002BBD 24 FC            [12]  795 	add	a,#0xfc
      002BBF F5 81            [12]  796 	mov	sp,a
      002BC1 E5 08            [12]  797 	mov	a,_bp
      002BC3 24 0B            [12]  798 	add	a,#0x0b
      002BC5 F8               [12]  799 	mov	r0,a
      002BC6 E6               [12]  800 	mov	a,@r0
      002BC7 2C               [12]  801 	add	a,r4
      002BC8 FC               [12]  802 	mov	r4,a
      002BC9 08               [12]  803 	inc	r0
      002BCA E6               [12]  804 	mov	a,@r0
      002BCB 3D               [12]  805 	addc	a,r5
      002BCC FD               [12]  806 	mov	r5,a
      002BCD 08               [12]  807 	inc	r0
      002BCE E6               [12]  808 	mov	a,@r0
      002BCF 3E               [12]  809 	addc	a,r6
      002BD0 FE               [12]  810 	mov	r6,a
      002BD1 08               [12]  811 	inc	r0
      002BD2 E6               [12]  812 	mov	a,@r0
      002BD3 3F               [12]  813 	addc	a,r7
      002BD4 FF               [12]  814 	mov	r7,a
      002BD5 A8 08            [24]  815 	mov	r0,_bp
      002BD7 08               [12]  816 	inc	r0
      002BD8 86 82            [24]  817 	mov	dpl,@r0
      002BDA 08               [12]  818 	inc	r0
      002BDB 86 83            [24]  819 	mov	dph,@r0
      002BDD 08               [12]  820 	inc	r0
      002BDE 86 F0            [24]  821 	mov	b,@r0
      002BE0 EC               [12]  822 	mov	a,r4
      002BE1 12 4D 4E         [24]  823 	lcall	__gptrput
      002BE4 A3               [24]  824 	inc	dptr
      002BE5 ED               [12]  825 	mov	a,r5
      002BE6 12 4D 4E         [24]  826 	lcall	__gptrput
      002BE9 A3               [24]  827 	inc	dptr
      002BEA EE               [12]  828 	mov	a,r6
      002BEB 12 4D 4E         [24]  829 	lcall	__gptrput
      002BEE A3               [24]  830 	inc	dptr
      002BEF EF               [12]  831 	mov	a,r7
      002BF0 12 4D 4E         [24]  832 	lcall	__gptrput
                                    833 ;	calc.c:98: return 1;
      002BF3 90 00 01         [24]  834 	mov	dptr,#0x0001
                                    835 ;	calc.c:99: }
      002BF6 85 08 81         [24]  836 	mov	sp,_bp
      002BF9 D0 08            [24]  837 	pop	_bp
      002BFB 22               [24]  838 	ret
                                    839 ;------------------------------------------------------------
                                    840 ;Allocation info for local variables in function 'dump_pop'
                                    841 ;------------------------------------------------------------
                                    842 ;delta                     Allocated to stack - _bp -5
                                    843 ;_ctx                      Allocated to registers r5 r6 r7 
                                    844 ;ctx                       Allocated to stack - _bp +5
                                    845 ;d                         Allocated to stack - _bp +8
                                    846 ;r                         Allocated to stack - _bp +2
                                    847 ;__1310720001              Allocated to registers 
                                    848 ;s                         Allocated to registers r5 r6 r7 
                                    849 ;__1966080003              Allocated to registers 
                                    850 ;s                         Allocated to registers r4 r5 r6 
                                    851 ;__1966080005              Allocated to registers 
                                    852 ;s                         Allocated to registers r4 r5 r6 
                                    853 ;__1966080007              Allocated to registers r3 r4 r5 r6 
                                    854 ;d                         Allocated to stack - _bp +12
                                    855 ;mask                      Allocated to stack - _bp +16
                                    856 ;__1966080009              Allocated to registers 
                                    857 ;s                         Allocated to registers r4 r5 r6 
                                    858 ;sloc0                     Allocated to stack - _bp +1
                                    859 ;sloc1                     Allocated to stack - _bp +2
                                    860 ;------------------------------------------------------------
                                    861 ;	calc.c:101: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    862 ;	-----------------------------------------
                                    863 ;	 function dump_pop
                                    864 ;	-----------------------------------------
      002BFC                        865 _dump_pop:
      002BFC C0 08            [24]  866 	push	_bp
      002BFE E5 81            [12]  867 	mov	a,sp
      002C00 F5 08            [12]  868 	mov	_bp,a
      002C02 24 13            [12]  869 	add	a,#0x13
      002C04 F5 81            [12]  870 	mov	sp,a
      002C06 AD 82            [24]  871 	mov	r5,dpl
      002C08 AE 83            [24]  872 	mov	r6,dph
      002C0A AF F0            [24]  873 	mov	r7,b
                                    874 ;	calc.c:102: struct ctx *ctx = (struct ctx *)_ctx;
      002C0C E5 08            [12]  875 	mov	a,_bp
      002C0E 24 05            [12]  876 	add	a,#0x05
      002C10 F8               [12]  877 	mov	r0,a
      002C11 A6 05            [24]  878 	mov	@r0,ar5
      002C13 08               [12]  879 	inc	r0
      002C14 A6 06            [24]  880 	mov	@r0,ar6
      002C16 08               [12]  881 	inc	r0
      002C17 A6 07            [24]  882 	mov	@r0,ar7
                                    883 ;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
      002C19 E5 08            [12]  884 	mov	a,_bp
      002C1B 24 FB            [12]  885 	add	a,#0xfb
      002C1D F8               [12]  886 	mov	r0,a
      002C1E 86 02            [24]  887 	mov	ar2,@r0
      002C20 08               [12]  888 	inc	r0
      002C21 86 03            [24]  889 	mov	ar3,@r0
      002C23 08               [12]  890 	inc	r0
      002C24 86 04            [24]  891 	mov	ar4,@r0
      002C26 74 02            [12]  892 	mov	a,#0x02
      002C28 2A               [12]  893 	add	a,r2
      002C29 FA               [12]  894 	mov	r2,a
      002C2A E4               [12]  895 	clr	a
      002C2B 3B               [12]  896 	addc	a,r3
      002C2C FB               [12]  897 	mov	r3,a
      002C2D 8A 82            [24]  898 	mov	dpl,r2
      002C2F 8B 83            [24]  899 	mov	dph,r3
      002C31 8C F0            [24]  900 	mov	b,r4
      002C33 12 51 C9         [24]  901 	lcall	__gptrget
      002C36 FE               [12]  902 	mov	r6,a
      002C37 A3               [24]  903 	inc	dptr
      002C38 12 51 C9         [24]  904 	lcall	__gptrget
      002C3B FF               [12]  905 	mov	r7,a
      002C3C BE 07 3D         [24]  906 	cjne	r6,#0x07,00102$
      002C3F BF 00 3A         [24]  907 	cjne	r7,#0x00,00102$
      002C42 7D 4A            [12]  908 	mov	r5,#___str_0
      002C44 7E 6A            [12]  909 	mov	r6,#(___str_0 >> 8)
      002C46 7F 80            [12]  910 	mov	r7,#0x80
                                    911 ;	calc.c:50: return;
      002C48                        912 00122$:
                                    913 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002C48 8D 82            [24]  914 	mov	dpl,r5
      002C4A 8E 83            [24]  915 	mov	dph,r6
      002C4C 8F F0            [24]  916 	mov	b,r7
      002C4E A8 08            [24]  917 	mov	r0,_bp
      002C50 08               [12]  918 	inc	r0
      002C51 12 51 C9         [24]  919 	lcall	__gptrget
      002C54 F6               [12]  920 	mov	@r0,a
      002C55 A8 08            [24]  921 	mov	r0,_bp
      002C57 08               [12]  922 	inc	r0
      002C58 E6               [12]  923 	mov	a,@r0
      002C59 60 21            [24]  924 	jz	00102$
      002C5B C0 02            [24]  925 	push	ar2
      002C5D C0 03            [24]  926 	push	ar3
      002C5F C0 04            [24]  927 	push	ar4
      002C61 A8 08            [24]  928 	mov	r0,_bp
      002C63 08               [12]  929 	inc	r0
      002C64 86 03            [24]  930 	mov	ar3,@r0
      002C66 7C 00            [12]  931 	mov	r4,#0x00
      002C68 8B 82            [24]  932 	mov	dpl,r3
      002C6A 8C 83            [24]  933 	mov	dph,r4
      002C6C 12 29 C0         [24]  934 	lcall	_putchar
      002C6F 0D               [12]  935 	inc	r5
      002C70 BD 00 01         [24]  936 	cjne	r5,#0x00,00210$
      002C73 0E               [12]  937 	inc	r6
      002C74                        938 00210$:
      002C74 D0 04            [24]  939 	pop	ar4
      002C76 D0 03            [24]  940 	pop	ar3
      002C78 D0 02            [24]  941 	pop	ar2
                                    942 ;	calc.c:106: if (delta->event == EVENT_TERM) printstr("\r\n");
      002C7A 80 CC            [24]  943 	sjmp	00122$
      002C7C                        944 00102$:
                                    945 ;	calc.c:108: r = stack_pop(&ctx->s, &d);
      002C7C C0 02            [24]  946 	push	ar2
      002C7E C0 03            [24]  947 	push	ar3
      002C80 C0 04            [24]  948 	push	ar4
      002C82 E5 08            [12]  949 	mov	a,_bp
      002C84 24 08            [12]  950 	add	a,#0x08
      002C86 FF               [12]  951 	mov	r7,a
      002C87 A8 08            [24]  952 	mov	r0,_bp
      002C89 08               [12]  953 	inc	r0
      002C8A 08               [12]  954 	inc	r0
      002C8B A6 07            [24]  955 	mov	@r0,ar7
      002C8D 08               [12]  956 	inc	r0
      002C8E 76 00            [12]  957 	mov	@r0,#0x00
      002C90 08               [12]  958 	inc	r0
      002C91 76 40            [12]  959 	mov	@r0,#0x40
      002C93 E5 08            [12]  960 	mov	a,_bp
      002C95 24 05            [12]  961 	add	a,#0x05
      002C97 F8               [12]  962 	mov	r0,a
      002C98 74 09            [12]  963 	mov	a,#0x09
      002C9A 26               [12]  964 	add	a,@r0
      002C9B FA               [12]  965 	mov	r2,a
      002C9C E4               [12]  966 	clr	a
      002C9D 08               [12]  967 	inc	r0
      002C9E 36               [12]  968 	addc	a,@r0
      002C9F FB               [12]  969 	mov	r3,a
      002CA0 08               [12]  970 	inc	r0
      002CA1 86 06            [24]  971 	mov	ar6,@r0
      002CA3 C0 07            [24]  972 	push	ar7
      002CA5 C0 04            [24]  973 	push	ar4
      002CA7 C0 03            [24]  974 	push	ar3
      002CA9 C0 02            [24]  975 	push	ar2
      002CAB A8 08            [24]  976 	mov	r0,_bp
      002CAD 08               [12]  977 	inc	r0
      002CAE 08               [12]  978 	inc	r0
      002CAF E6               [12]  979 	mov	a,@r0
      002CB0 C0 E0            [24]  980 	push	acc
      002CB2 08               [12]  981 	inc	r0
      002CB3 E6               [12]  982 	mov	a,@r0
      002CB4 C0 E0            [24]  983 	push	acc
      002CB6 08               [12]  984 	inc	r0
      002CB7 E6               [12]  985 	mov	a,@r0
      002CB8 C0 E0            [24]  986 	push	acc
      002CBA 8A 82            [24]  987 	mov	dpl,r2
      002CBC 8B 83            [24]  988 	mov	dph,r3
      002CBE 8E F0            [24]  989 	mov	b,r6
      002CC0 12 27 7F         [24]  990 	lcall	_stack_pop
      002CC3 AD 82            [24]  991 	mov	r5,dpl
      002CC5 AE 83            [24]  992 	mov	r6,dph
      002CC7 15 81            [12]  993 	dec	sp
      002CC9 15 81            [12]  994 	dec	sp
      002CCB 15 81            [12]  995 	dec	sp
      002CCD D0 02            [24]  996 	pop	ar2
      002CCF D0 03            [24]  997 	pop	ar3
      002CD1 D0 04            [24]  998 	pop	ar4
      002CD3 D0 07            [24]  999 	pop	ar7
      002CD5 A8 08            [24] 1000 	mov	r0,_bp
      002CD7 08               [12] 1001 	inc	r0
      002CD8 08               [12] 1002 	inc	r0
      002CD9 A6 05            [24] 1003 	mov	@r0,ar5
      002CDB 08               [12] 1004 	inc	r0
      002CDC A6 06            [24] 1005 	mov	@r0,ar6
                                   1006 ;	calc.c:109: if (!r) {
      002CDE D0 04            [24] 1007 	pop	ar4
      002CE0 D0 03            [24] 1008 	pop	ar3
      002CE2 D0 02            [24] 1009 	pop	ar2
      002CE4 ED               [12] 1010 	mov	a,r5
      002CE5 4E               [12] 1011 	orl	a,r6
      002CE6 70 3D            [24] 1012 	jnz	00154$
                                   1013 ;	calc.c:110: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002CE8 8A 82            [24] 1014 	mov	dpl,r2
      002CEA 8B 83            [24] 1015 	mov	dph,r3
      002CEC 8C F0            [24] 1016 	mov	b,r4
      002CEE 12 51 C9         [24] 1017 	lcall	__gptrget
      002CF1 FA               [12] 1018 	mov	r2,a
      002CF2 A3               [24] 1019 	inc	dptr
      002CF3 12 51 C9         [24] 1020 	lcall	__gptrget
      002CF6 FB               [12] 1021 	mov	r3,a
      002CF7 BA 07 06         [24] 1022 	cjne	r2,#0x07,00212$
      002CFA BB 00 03         [24] 1023 	cjne	r3,#0x00,00212$
      002CFD 02 2E A7         [24] 1024 	ljmp	00110$
      002D00                       1025 00212$:
      002D00 7C 4D            [12] 1026 	mov	r4,#___str_1
      002D02 7D 6A            [12] 1027 	mov	r5,#(___str_1 >> 8)
      002D04 7E 80            [12] 1028 	mov	r6,#0x80
                                   1029 ;	calc.c:50: return;
      002D06                       1030 00125$:
                                   1031 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002D06 8C 82            [24] 1032 	mov	dpl,r4
      002D08 8D 83            [24] 1033 	mov	dph,r5
      002D0A 8E F0            [24] 1034 	mov	b,r6
      002D0C 12 51 C9         [24] 1035 	lcall	__gptrget
      002D0F FB               [12] 1036 	mov	r3,a
      002D10 70 03            [24] 1037 	jnz	00213$
      002D12 02 2E A7         [24] 1038 	ljmp	00110$
      002D15                       1039 00213$:
      002D15 7A 00            [12] 1040 	mov	r2,#0x00
      002D17 8B 82            [24] 1041 	mov	dpl,r3
      002D19 8A 83            [24] 1042 	mov	dph,r2
      002D1B 12 29 C0         [24] 1043 	lcall	_putchar
      002D1E 0C               [12] 1044 	inc	r4
                                   1045 ;	calc.c:111: } else while (r > 0) {
      002D1F BC 00 E4         [24] 1046 	cjne	r4,#0x00,00125$
      002D22 0D               [12] 1047 	inc	r5
      002D23 80 E1            [24] 1048 	sjmp	00125$
      002D25                       1049 00154$:
      002D25                       1050 00105$:
      002D25 A8 08            [24] 1051 	mov	r0,_bp
      002D27 08               [12] 1052 	inc	r0
      002D28 08               [12] 1053 	inc	r0
      002D29 C3               [12] 1054 	clr	c
      002D2A E4               [12] 1055 	clr	a
      002D2B 96               [12] 1056 	subb	a,@r0
      002D2C 74 80            [12] 1057 	mov	a,#(0x00 ^ 0x80)
      002D2E 08               [12] 1058 	inc	r0
      002D2F 86 F0            [24] 1059 	mov	b,@r0
      002D31 63 F0 80         [24] 1060 	xrl	b,#0x80
      002D34 95 F0            [12] 1061 	subb	a,b
      002D36 40 03            [24] 1062 	jc	00215$
      002D38 02 2E A7         [24] 1063 	ljmp	00110$
      002D3B                       1064 00215$:
                                   1065 ;	calc.c:112: printstr("VA ");
      002D3B 7C 5F            [12] 1066 	mov	r4,#___str_2
      002D3D 7D 6A            [12] 1067 	mov	r5,#(___str_2 >> 8)
      002D3F 7E 80            [12] 1068 	mov	r6,#0x80
                                   1069 ;	calc.c:50: return;
      002D41                       1070 00128$:
                                   1071 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002D41 8C 82            [24] 1072 	mov	dpl,r4
      002D43 8D 83            [24] 1073 	mov	dph,r5
      002D45 8E F0            [24] 1074 	mov	b,r6
      002D47 12 51 C9         [24] 1075 	lcall	__gptrget
      002D4A FB               [12] 1076 	mov	r3,a
      002D4B 60 10            [24] 1077 	jz	00116$
      002D4D 7A 00            [12] 1078 	mov	r2,#0x00
      002D4F 8B 82            [24] 1079 	mov	dpl,r3
      002D51 8A 83            [24] 1080 	mov	dph,r2
      002D53 12 29 C0         [24] 1081 	lcall	_putchar
      002D56 0C               [12] 1082 	inc	r4
                                   1083 ;	calc.c:112: printstr("VA ");
      002D57 BC 00 E7         [24] 1084 	cjne	r4,#0x00,00128$
      002D5A 0D               [12] 1085 	inc	r5
      002D5B 80 E4            [24] 1086 	sjmp	00128$
      002D5D                       1087 00116$:
                                   1088 ;	calc.c:113: printf("% 11ld / ", d);
      002D5D C0 07            [24] 1089 	push	ar7
      002D5F E5 08            [12] 1090 	mov	a,_bp
      002D61 24 08            [12] 1091 	add	a,#0x08
      002D63 F8               [12] 1092 	mov	r0,a
      002D64 E6               [12] 1093 	mov	a,@r0
      002D65 C0 E0            [24] 1094 	push	acc
      002D67 08               [12] 1095 	inc	r0
      002D68 E6               [12] 1096 	mov	a,@r0
      002D69 C0 E0            [24] 1097 	push	acc
      002D6B 08               [12] 1098 	inc	r0
      002D6C E6               [12] 1099 	mov	a,@r0
      002D6D C0 E0            [24] 1100 	push	acc
      002D6F 08               [12] 1101 	inc	r0
      002D70 E6               [12] 1102 	mov	a,@r0
      002D71 C0 E0            [24] 1103 	push	acc
      002D73 74 63            [12] 1104 	mov	a,#___str_3
      002D75 C0 E0            [24] 1105 	push	acc
      002D77 74 6A            [12] 1106 	mov	a,#(___str_3 >> 8)
      002D79 C0 E0            [24] 1107 	push	acc
      002D7B 74 80            [12] 1108 	mov	a,#0x80
      002D7D C0 E0            [24] 1109 	push	acc
      002D7F 12 51 90         [24] 1110 	lcall	_printf
      002D82 E5 81            [12] 1111 	mov	a,sp
      002D84 24 F9            [12] 1112 	add	a,#0xf9
      002D86 F5 81            [12] 1113 	mov	sp,a
                                   1114 ;	calc.c:114: printf("%08lx / ", d);
      002D88 E5 08            [12] 1115 	mov	a,_bp
      002D8A 24 08            [12] 1116 	add	a,#0x08
      002D8C F8               [12] 1117 	mov	r0,a
      002D8D E6               [12] 1118 	mov	a,@r0
      002D8E C0 E0            [24] 1119 	push	acc
      002D90 08               [12] 1120 	inc	r0
      002D91 E6               [12] 1121 	mov	a,@r0
      002D92 C0 E0            [24] 1122 	push	acc
      002D94 08               [12] 1123 	inc	r0
      002D95 E6               [12] 1124 	mov	a,@r0
      002D96 C0 E0            [24] 1125 	push	acc
      002D98 08               [12] 1126 	inc	r0
      002D99 E6               [12] 1127 	mov	a,@r0
      002D9A C0 E0            [24] 1128 	push	acc
      002D9C 74 6D            [12] 1129 	mov	a,#___str_4
      002D9E C0 E0            [24] 1130 	push	acc
      002DA0 74 6A            [12] 1131 	mov	a,#(___str_4 >> 8)
      002DA2 C0 E0            [24] 1132 	push	acc
      002DA4 74 80            [12] 1133 	mov	a,#0x80
      002DA6 C0 E0            [24] 1134 	push	acc
      002DA8 12 51 90         [24] 1135 	lcall	_printf
      002DAB E5 81            [12] 1136 	mov	a,sp
      002DAD 24 F9            [12] 1137 	add	a,#0xf9
      002DAF F5 81            [12] 1138 	mov	sp,a
      002DB1 D0 07            [24] 1139 	pop	ar7
                                   1140 ;	calc.c:115: printbin(d);
      002DB3 E5 08            [12] 1141 	mov	a,_bp
      002DB5 24 08            [12] 1142 	add	a,#0x08
      002DB7 F8               [12] 1143 	mov	r0,a
      002DB8 86 03            [24] 1144 	mov	ar3,@r0
      002DBA 08               [12] 1145 	inc	r0
      002DBB 86 04            [24] 1146 	mov	ar4,@r0
      002DBD 08               [12] 1147 	inc	r0
      002DBE 86 05            [24] 1148 	mov	ar5,@r0
      002DC0 08               [12] 1149 	inc	r0
      002DC1 86 06            [24] 1150 	mov	ar6,@r0
      002DC3 E5 08            [12] 1151 	mov	a,_bp
      002DC5 24 0C            [12] 1152 	add	a,#0x0c
      002DC7 F8               [12] 1153 	mov	r0,a
      002DC8 A6 03            [24] 1154 	mov	@r0,ar3
      002DCA 08               [12] 1155 	inc	r0
      002DCB A6 04            [24] 1156 	mov	@r0,ar4
      002DCD 08               [12] 1157 	inc	r0
      002DCE A6 05            [24] 1158 	mov	@r0,ar5
      002DD0 08               [12] 1159 	inc	r0
      002DD1 A6 06            [24] 1160 	mov	@r0,ar6
                                   1161 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002DD3 E5 08            [12] 1162 	mov	a,_bp
      002DD5 24 10            [12] 1163 	add	a,#0x10
      002DD7 F8               [12] 1164 	mov	r0,a
      002DD8 E4               [12] 1165 	clr	a
      002DD9 F6               [12] 1166 	mov	@r0,a
      002DDA 08               [12] 1167 	inc	r0
      002DDB F6               [12] 1168 	mov	@r0,a
      002DDC 08               [12] 1169 	inc	r0
      002DDD F6               [12] 1170 	mov	@r0,a
      002DDE 08               [12] 1171 	inc	r0
      002DDF 76 80            [12] 1172 	mov	@r0,#0x80
      002DE1                       1173 00130$:
                                   1174 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002DE1 C0 07            [24] 1175 	push	ar7
      002DE3 E5 08            [12] 1176 	mov	a,_bp
      002DE5 24 0C            [12] 1177 	add	a,#0x0c
      002DE7 F8               [12] 1178 	mov	r0,a
      002DE8 86 03            [24] 1179 	mov	ar3,@r0
      002DEA 08               [12] 1180 	inc	r0
      002DEB 86 05            [24] 1181 	mov	ar5,@r0
      002DED 08               [12] 1182 	inc	r0
      002DEE 86 06            [24] 1183 	mov	ar6,@r0
      002DF0 08               [12] 1184 	inc	r0
      002DF1 86 07            [24] 1185 	mov	ar7,@r0
      002DF3 E5 08            [12] 1186 	mov	a,_bp
      002DF5 24 10            [12] 1187 	add	a,#0x10
      002DF7 F8               [12] 1188 	mov	r0,a
      002DF8 E6               [12] 1189 	mov	a,@r0
      002DF9 52 03            [12] 1190 	anl	ar3,a
      002DFB 08               [12] 1191 	inc	r0
      002DFC E6               [12] 1192 	mov	a,@r0
      002DFD 52 05            [12] 1193 	anl	ar5,a
      002DFF 08               [12] 1194 	inc	r0
      002E00 E6               [12] 1195 	mov	a,@r0
      002E01 52 06            [12] 1196 	anl	ar6,a
      002E03 08               [12] 1197 	inc	r0
      002E04 E6               [12] 1198 	mov	a,@r0
      002E05 52 07            [12] 1199 	anl	ar7,a
      002E07 EB               [12] 1200 	mov	a,r3
      002E08 4D               [12] 1201 	orl	a,r5
      002E09 4E               [12] 1202 	orl	a,r6
      002E0A 4F               [12] 1203 	orl	a,r7
      002E0B D0 07            [24] 1204 	pop	ar7
      002E0D 60 06            [24] 1205 	jz	00137$
      002E0F 7D 31            [12] 1206 	mov	r5,#0x31
      002E11 7E 00            [12] 1207 	mov	r6,#0x00
      002E13 80 04            [24] 1208 	sjmp	00138$
      002E15                       1209 00137$:
      002E15 7D 30            [12] 1210 	mov	r5,#0x30
      002E17 7E 00            [12] 1211 	mov	r6,#0x00
      002E19                       1212 00138$:
      002E19 8D 82            [24] 1213 	mov	dpl,r5
      002E1B 8E 83            [24] 1214 	mov	dph,r6
      002E1D 12 29 C0         [24] 1215 	lcall	_putchar
                                   1216 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002E20 E5 08            [12] 1217 	mov	a,_bp
      002E22 24 10            [12] 1218 	add	a,#0x10
      002E24 F8               [12] 1219 	mov	r0,a
      002E25 08               [12] 1220 	inc	r0
      002E26 08               [12] 1221 	inc	r0
      002E27 08               [12] 1222 	inc	r0
      002E28 E6               [12] 1223 	mov	a,@r0
      002E29 C3               [12] 1224 	clr	c
      002E2A 13               [12] 1225 	rrc	a
      002E2B F6               [12] 1226 	mov	@r0,a
      002E2C 18               [12] 1227 	dec	r0
      002E2D E6               [12] 1228 	mov	a,@r0
      002E2E 13               [12] 1229 	rrc	a
      002E2F F6               [12] 1230 	mov	@r0,a
      002E30 18               [12] 1231 	dec	r0
      002E31 E6               [12] 1232 	mov	a,@r0
      002E32 13               [12] 1233 	rrc	a
      002E33 F6               [12] 1234 	mov	@r0,a
      002E34 18               [12] 1235 	dec	r0
      002E35 E6               [12] 1236 	mov	a,@r0
      002E36 13               [12] 1237 	rrc	a
      002E37 F6               [12] 1238 	mov	@r0,a
      002E38 E5 08            [12] 1239 	mov	a,_bp
      002E3A 24 10            [12] 1240 	add	a,#0x10
      002E3C F8               [12] 1241 	mov	r0,a
      002E3D E6               [12] 1242 	mov	a,@r0
      002E3E 08               [12] 1243 	inc	r0
      002E3F 46               [12] 1244 	orl	a,@r0
      002E40 08               [12] 1245 	inc	r0
      002E41 46               [12] 1246 	orl	a,@r0
      002E42 08               [12] 1247 	inc	r0
      002E43 46               [12] 1248 	orl	a,@r0
      002E44 70 9B            [24] 1249 	jnz	00130$
                                   1250 ;	calc.c:116: printstr("\r\n");
      002E46 7C 4A            [12] 1251 	mov	r4,#___str_0
      002E48 7D 6A            [12] 1252 	mov	r5,#(___str_0 >> 8)
      002E4A 7E 80            [12] 1253 	mov	r6,#0x80
                                   1254 ;	calc.c:50: return;
      002E4C                       1255 00133$:
                                   1256 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002E4C 8C 82            [24] 1257 	mov	dpl,r4
      002E4E 8D 83            [24] 1258 	mov	dph,r5
      002E50 8E F0            [24] 1259 	mov	b,r6
      002E52 12 51 C9         [24] 1260 	lcall	__gptrget
      002E55 FB               [12] 1261 	mov	r3,a
      002E56 60 10            [24] 1262 	jz	00120$
      002E58 7A 00            [12] 1263 	mov	r2,#0x00
      002E5A 8B 82            [24] 1264 	mov	dpl,r3
      002E5C 8A 83            [24] 1265 	mov	dph,r2
      002E5E 12 29 C0         [24] 1266 	lcall	_putchar
      002E61 0C               [12] 1267 	inc	r4
                                   1268 ;	calc.c:116: printstr("\r\n");
      002E62 BC 00 E7         [24] 1269 	cjne	r4,#0x00,00133$
      002E65 0D               [12] 1270 	inc	r5
      002E66 80 E4            [24] 1271 	sjmp	00133$
      002E68                       1272 00120$:
                                   1273 ;	calc.c:117: r = stack_pop(&ctx->s, &d);
      002E68 8F 04            [24] 1274 	mov	ar4,r7
      002E6A 7D 00            [12] 1275 	mov	r5,#0x00
      002E6C 7E 40            [12] 1276 	mov	r6,#0x40
      002E6E C0 07            [24] 1277 	push	ar7
      002E70 E5 08            [12] 1278 	mov	a,_bp
      002E72 24 05            [12] 1279 	add	a,#0x05
      002E74 F8               [12] 1280 	mov	r0,a
      002E75 74 09            [12] 1281 	mov	a,#0x09
      002E77 26               [12] 1282 	add	a,@r0
      002E78 FA               [12] 1283 	mov	r2,a
      002E79 E4               [12] 1284 	clr	a
      002E7A 08               [12] 1285 	inc	r0
      002E7B 36               [12] 1286 	addc	a,@r0
      002E7C FB               [12] 1287 	mov	r3,a
      002E7D 08               [12] 1288 	inc	r0
      002E7E 86 07            [24] 1289 	mov	ar7,@r0
      002E80 C0 04            [24] 1290 	push	ar4
      002E82 C0 05            [24] 1291 	push	ar5
      002E84 C0 06            [24] 1292 	push	ar6
      002E86 8A 82            [24] 1293 	mov	dpl,r2
      002E88 8B 83            [24] 1294 	mov	dph,r3
      002E8A 8F F0            [24] 1295 	mov	b,r7
      002E8C 12 27 7F         [24] 1296 	lcall	_stack_pop
      002E8F AE 82            [24] 1297 	mov	r6,dpl
      002E91 AF 83            [24] 1298 	mov	r7,dph
      002E93 15 81            [12] 1299 	dec	sp
      002E95 15 81            [12] 1300 	dec	sp
      002E97 15 81            [12] 1301 	dec	sp
      002E99 A8 08            [24] 1302 	mov	r0,_bp
      002E9B 08               [12] 1303 	inc	r0
      002E9C 08               [12] 1304 	inc	r0
      002E9D A6 06            [24] 1305 	mov	@r0,ar6
      002E9F 08               [12] 1306 	inc	r0
      002EA0 A6 07            [24] 1307 	mov	@r0,ar7
      002EA2 D0 07            [24] 1308 	pop	ar7
      002EA4 02 2D 25         [24] 1309 	ljmp	00105$
      002EA7                       1310 00110$:
                                   1311 ;	calc.c:120: return 1;
      002EA7 90 00 01         [24] 1312 	mov	dptr,#0x0001
                                   1313 ;	calc.c:121: }
      002EAA 85 08 81         [24] 1314 	mov	sp,_bp
      002EAD D0 08            [24] 1315 	pop	_bp
      002EAF 22               [24] 1316 	ret
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'dump_peek'
                                   1319 ;------------------------------------------------------------
                                   1320 ;d                         Allocated to stack - _bp -6
                                   1321 ;_ctx                      Allocated to registers 
                                   1322 ;__1310720011              Allocated to registers 
                                   1323 ;s                         Allocated to registers r5 r6 r7 
                                   1324 ;__1310720013              Allocated to registers r4 r5 r6 r7 
                                   1325 ;d                         Allocated to stack - _bp +1
                                   1326 ;mask                      Allocated to stack - _bp +5
                                   1327 ;__1310720015              Allocated to registers 
                                   1328 ;s                         Allocated to registers r5 r6 r7 
                                   1329 ;------------------------------------------------------------
                                   1330 ;	calc.c:123: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1331 ;	-----------------------------------------
                                   1332 ;	 function dump_peek
                                   1333 ;	-----------------------------------------
      002EB0                       1334 _dump_peek:
      002EB0 C0 08            [24] 1335 	push	_bp
      002EB2 E5 81            [12] 1336 	mov	a,sp
      002EB4 F5 08            [12] 1337 	mov	_bp,a
      002EB6 24 08            [12] 1338 	add	a,#0x08
      002EB8 F5 81            [12] 1339 	mov	sp,a
                                   1340 ;	calc.c:126: printstr("PA ");
      002EBA 7D 76            [12] 1341 	mov	r5,#___str_5
      002EBC 7E 6A            [12] 1342 	mov	r6,#(___str_5 >> 8)
      002EBE 7F 80            [12] 1343 	mov	r7,#0x80
                                   1344 ;	calc.c:50: return;
      002EC0                       1345 00108$:
                                   1346 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002EC0 8D 82            [24] 1347 	mov	dpl,r5
      002EC2 8E 83            [24] 1348 	mov	dph,r6
      002EC4 8F F0            [24] 1349 	mov	b,r7
      002EC6 12 51 C9         [24] 1350 	lcall	__gptrget
      002EC9 FC               [12] 1351 	mov	r4,a
      002ECA 60 10            [24] 1352 	jz	00102$
      002ECC 7B 00            [12] 1353 	mov	r3,#0x00
      002ECE 8C 82            [24] 1354 	mov	dpl,r4
      002ED0 8B 83            [24] 1355 	mov	dph,r3
      002ED2 12 29 C0         [24] 1356 	lcall	_putchar
      002ED5 0D               [12] 1357 	inc	r5
                                   1358 ;	calc.c:126: printstr("PA ");
      002ED6 BD 00 E7         [24] 1359 	cjne	r5,#0x00,00108$
      002ED9 0E               [12] 1360 	inc	r6
      002EDA 80 E4            [24] 1361 	sjmp	00108$
      002EDC                       1362 00102$:
                                   1363 ;	calc.c:127: printf("% 11ld / ", d);
      002EDC E5 08            [12] 1364 	mov	a,_bp
      002EDE 24 FA            [12] 1365 	add	a,#0xfa
      002EE0 F8               [12] 1366 	mov	r0,a
      002EE1 E6               [12] 1367 	mov	a,@r0
      002EE2 C0 E0            [24] 1368 	push	acc
      002EE4 08               [12] 1369 	inc	r0
      002EE5 E6               [12] 1370 	mov	a,@r0
      002EE6 C0 E0            [24] 1371 	push	acc
      002EE8 08               [12] 1372 	inc	r0
      002EE9 E6               [12] 1373 	mov	a,@r0
      002EEA C0 E0            [24] 1374 	push	acc
      002EEC 08               [12] 1375 	inc	r0
      002EED E6               [12] 1376 	mov	a,@r0
      002EEE C0 E0            [24] 1377 	push	acc
      002EF0 74 63            [12] 1378 	mov	a,#___str_3
      002EF2 C0 E0            [24] 1379 	push	acc
      002EF4 74 6A            [12] 1380 	mov	a,#(___str_3 >> 8)
      002EF6 C0 E0            [24] 1381 	push	acc
      002EF8 74 80            [12] 1382 	mov	a,#0x80
      002EFA C0 E0            [24] 1383 	push	acc
      002EFC 12 51 90         [24] 1384 	lcall	_printf
      002EFF E5 81            [12] 1385 	mov	a,sp
      002F01 24 F9            [12] 1386 	add	a,#0xf9
      002F03 F5 81            [12] 1387 	mov	sp,a
                                   1388 ;	calc.c:128: printf("%08lx / ", d);
      002F05 E5 08            [12] 1389 	mov	a,_bp
      002F07 24 FA            [12] 1390 	add	a,#0xfa
      002F09 F8               [12] 1391 	mov	r0,a
      002F0A E6               [12] 1392 	mov	a,@r0
      002F0B C0 E0            [24] 1393 	push	acc
      002F0D 08               [12] 1394 	inc	r0
      002F0E E6               [12] 1395 	mov	a,@r0
      002F0F C0 E0            [24] 1396 	push	acc
      002F11 08               [12] 1397 	inc	r0
      002F12 E6               [12] 1398 	mov	a,@r0
      002F13 C0 E0            [24] 1399 	push	acc
      002F15 08               [12] 1400 	inc	r0
      002F16 E6               [12] 1401 	mov	a,@r0
      002F17 C0 E0            [24] 1402 	push	acc
      002F19 74 6D            [12] 1403 	mov	a,#___str_4
      002F1B C0 E0            [24] 1404 	push	acc
      002F1D 74 6A            [12] 1405 	mov	a,#(___str_4 >> 8)
      002F1F C0 E0            [24] 1406 	push	acc
      002F21 74 80            [12] 1407 	mov	a,#0x80
      002F23 C0 E0            [24] 1408 	push	acc
      002F25 12 51 90         [24] 1409 	lcall	_printf
      002F28 E5 81            [12] 1410 	mov	a,sp
      002F2A 24 F9            [12] 1411 	add	a,#0xf9
      002F2C F5 81            [12] 1412 	mov	sp,a
                                   1413 ;	calc.c:129: printbin(d);
      002F2E E5 08            [12] 1414 	mov	a,_bp
      002F30 24 FA            [12] 1415 	add	a,#0xfa
      002F32 F8               [12] 1416 	mov	r0,a
      002F33 86 04            [24] 1417 	mov	ar4,@r0
      002F35 08               [12] 1418 	inc	r0
      002F36 86 05            [24] 1419 	mov	ar5,@r0
      002F38 08               [12] 1420 	inc	r0
      002F39 86 06            [24] 1421 	mov	ar6,@r0
      002F3B 08               [12] 1422 	inc	r0
      002F3C 86 07            [24] 1423 	mov	ar7,@r0
      002F3E A8 08            [24] 1424 	mov	r0,_bp
      002F40 08               [12] 1425 	inc	r0
      002F41 A6 04            [24] 1426 	mov	@r0,ar4
      002F43 08               [12] 1427 	inc	r0
      002F44 A6 05            [24] 1428 	mov	@r0,ar5
      002F46 08               [12] 1429 	inc	r0
      002F47 A6 06            [24] 1430 	mov	@r0,ar6
      002F49 08               [12] 1431 	inc	r0
      002F4A A6 07            [24] 1432 	mov	@r0,ar7
                                   1433 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F4C E5 08            [12] 1434 	mov	a,_bp
      002F4E 24 05            [12] 1435 	add	a,#0x05
      002F50 F8               [12] 1436 	mov	r0,a
      002F51 E4               [12] 1437 	clr	a
      002F52 F6               [12] 1438 	mov	@r0,a
      002F53 08               [12] 1439 	inc	r0
      002F54 F6               [12] 1440 	mov	@r0,a
      002F55 08               [12] 1441 	inc	r0
      002F56 F6               [12] 1442 	mov	@r0,a
      002F57 08               [12] 1443 	inc	r0
      002F58 76 80            [12] 1444 	mov	@r0,#0x80
      002F5A                       1445 00110$:
                                   1446 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      002F5A A8 08            [24] 1447 	mov	r0,_bp
      002F5C 08               [12] 1448 	inc	r0
      002F5D 86 04            [24] 1449 	mov	ar4,@r0
      002F5F 08               [12] 1450 	inc	r0
      002F60 86 05            [24] 1451 	mov	ar5,@r0
      002F62 08               [12] 1452 	inc	r0
      002F63 86 06            [24] 1453 	mov	ar6,@r0
      002F65 08               [12] 1454 	inc	r0
      002F66 86 07            [24] 1455 	mov	ar7,@r0
      002F68 E5 08            [12] 1456 	mov	a,_bp
      002F6A 24 05            [12] 1457 	add	a,#0x05
      002F6C F8               [12] 1458 	mov	r0,a
      002F6D E6               [12] 1459 	mov	a,@r0
      002F6E 52 04            [12] 1460 	anl	ar4,a
      002F70 08               [12] 1461 	inc	r0
      002F71 E6               [12] 1462 	mov	a,@r0
      002F72 52 05            [12] 1463 	anl	ar5,a
      002F74 08               [12] 1464 	inc	r0
      002F75 E6               [12] 1465 	mov	a,@r0
      002F76 52 06            [12] 1466 	anl	ar6,a
      002F78 08               [12] 1467 	inc	r0
      002F79 E6               [12] 1468 	mov	a,@r0
      002F7A 52 07            [12] 1469 	anl	ar7,a
      002F7C EC               [12] 1470 	mov	a,r4
      002F7D 4D               [12] 1471 	orl	a,r5
      002F7E 4E               [12] 1472 	orl	a,r6
      002F7F 4F               [12] 1473 	orl	a,r7
      002F80 60 06            [24] 1474 	jz	00117$
      002F82 7E 31            [12] 1475 	mov	r6,#0x31
      002F84 7F 00            [12] 1476 	mov	r7,#0x00
      002F86 80 04            [24] 1477 	sjmp	00118$
      002F88                       1478 00117$:
      002F88 7E 30            [12] 1479 	mov	r6,#0x30
      002F8A 7F 00            [12] 1480 	mov	r7,#0x00
      002F8C                       1481 00118$:
      002F8C 8E 82            [24] 1482 	mov	dpl,r6
      002F8E 8F 83            [24] 1483 	mov	dph,r7
      002F90 12 29 C0         [24] 1484 	lcall	_putchar
                                   1485 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      002F93 E5 08            [12] 1486 	mov	a,_bp
      002F95 24 05            [12] 1487 	add	a,#0x05
      002F97 F8               [12] 1488 	mov	r0,a
      002F98 08               [12] 1489 	inc	r0
      002F99 08               [12] 1490 	inc	r0
      002F9A 08               [12] 1491 	inc	r0
      002F9B E6               [12] 1492 	mov	a,@r0
      002F9C C3               [12] 1493 	clr	c
      002F9D 13               [12] 1494 	rrc	a
      002F9E F6               [12] 1495 	mov	@r0,a
      002F9F 18               [12] 1496 	dec	r0
      002FA0 E6               [12] 1497 	mov	a,@r0
      002FA1 13               [12] 1498 	rrc	a
      002FA2 F6               [12] 1499 	mov	@r0,a
      002FA3 18               [12] 1500 	dec	r0
      002FA4 E6               [12] 1501 	mov	a,@r0
      002FA5 13               [12] 1502 	rrc	a
      002FA6 F6               [12] 1503 	mov	@r0,a
      002FA7 18               [12] 1504 	dec	r0
      002FA8 E6               [12] 1505 	mov	a,@r0
      002FA9 13               [12] 1506 	rrc	a
      002FAA F6               [12] 1507 	mov	@r0,a
      002FAB E5 08            [12] 1508 	mov	a,_bp
      002FAD 24 05            [12] 1509 	add	a,#0x05
      002FAF F8               [12] 1510 	mov	r0,a
      002FB0 E6               [12] 1511 	mov	a,@r0
      002FB1 08               [12] 1512 	inc	r0
      002FB2 46               [12] 1513 	orl	a,@r0
      002FB3 08               [12] 1514 	inc	r0
      002FB4 46               [12] 1515 	orl	a,@r0
      002FB5 08               [12] 1516 	inc	r0
      002FB6 46               [12] 1517 	orl	a,@r0
      002FB7 70 A1            [24] 1518 	jnz	00110$
                                   1519 ;	calc.c:130: printstr("\r\n");
      002FB9 7D 4A            [12] 1520 	mov	r5,#___str_0
      002FBB 7E 6A            [12] 1521 	mov	r6,#(___str_0 >> 8)
      002FBD 7F 80            [12] 1522 	mov	r7,#0x80
                                   1523 ;	calc.c:50: return;
      002FBF                       1524 00113$:
                                   1525 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002FBF 8D 82            [24] 1526 	mov	dpl,r5
      002FC1 8E 83            [24] 1527 	mov	dph,r6
      002FC3 8F F0            [24] 1528 	mov	b,r7
      002FC5 12 51 C9         [24] 1529 	lcall	__gptrget
      002FC8 FC               [12] 1530 	mov	r4,a
      002FC9 60 10            [24] 1531 	jz	00106$
      002FCB 7B 00            [12] 1532 	mov	r3,#0x00
      002FCD 8C 82            [24] 1533 	mov	dpl,r4
      002FCF 8B 83            [24] 1534 	mov	dph,r3
      002FD1 12 29 C0         [24] 1535 	lcall	_putchar
      002FD4 0D               [12] 1536 	inc	r5
                                   1537 ;	calc.c:130: printstr("\r\n");
      002FD5 BD 00 E7         [24] 1538 	cjne	r5,#0x00,00113$
      002FD8 0E               [12] 1539 	inc	r6
      002FD9 80 E4            [24] 1540 	sjmp	00113$
      002FDB                       1541 00106$:
                                   1542 ;	calc.c:132: return 1;
      002FDB 90 00 01         [24] 1543 	mov	dptr,#0x0001
                                   1544 ;	calc.c:133: }
      002FDE 85 08 81         [24] 1545 	mov	sp,_bp
      002FE1 D0 08            [24] 1546 	pop	_bp
      002FE3 22               [24] 1547 	ret
                                   1548 ;------------------------------------------------------------
                                   1549 ;Allocation info for local variables in function 'operator'
                                   1550 ;------------------------------------------------------------
                                   1551 ;delta                     Allocated to stack - _bp -5
                                   1552 ;_ctx                      Allocated to stack - _bp +1
                                   1553 ;ctx                       Allocated to stack - _bp +4
                                   1554 ;d0                        Allocated to stack - _bp +7
                                   1555 ;d1                        Allocated to stack - _bp +11
                                   1556 ;__1966080017              Allocated to registers 
                                   1557 ;s                         Allocated to registers r5 r6 r7 
                                   1558 ;__1966080019              Allocated to registers 
                                   1559 ;s                         Allocated to registers r5 r6 r7 
                                   1560 ;__2621440021              Allocated to registers 
                                   1561 ;s                         Allocated to registers r5 r6 r7 
                                   1562 ;__2621440023              Allocated to registers r4 r5 r6 r7 
                                   1563 ;d                         Allocated to stack - _bp +15
                                   1564 ;mask                      Allocated to stack - _bp +19
                                   1565 ;__2621440025              Allocated to registers 
                                   1566 ;s                         Allocated to registers r5 r6 r7 
                                   1567 ;__1966080027              Allocated to registers 
                                   1568 ;s                         Allocated to registers r5 r6 r7 
                                   1569 ;__1966080029              Allocated to registers 
                                   1570 ;s                         Allocated to registers r5 r6 r7 
                                   1571 ;__1966080031              Allocated to registers 
                                   1572 ;s                         Allocated to registers r5 r6 r7 
                                   1573 ;__1966080033              Allocated to registers 
                                   1574 ;s                         Allocated to registers r5 r6 r7 
                                   1575 ;__2621440035              Allocated to registers 
                                   1576 ;s                         Allocated to registers r5 r6 r7 
                                   1577 ;__2621440037              Allocated to registers r4 r5 r6 r7 
                                   1578 ;d                         Allocated to stack - _bp +15
                                   1579 ;mask                      Allocated to stack - _bp +19
                                   1580 ;__2621440039              Allocated to registers 
                                   1581 ;s                         Allocated to registers r5 r6 r7 
                                   1582 ;__1966080041              Allocated to registers 
                                   1583 ;s                         Allocated to registers r5 r6 r7 
                                   1584 ;__1966080043              Allocated to registers 
                                   1585 ;s                         Allocated to registers r5 r6 r7 
                                   1586 ;__2621440045              Allocated to registers 
                                   1587 ;s                         Allocated to registers r5 r6 r7 
                                   1588 ;__1966080047              Allocated to registers 
                                   1589 ;s                         Allocated to registers r5 r6 r7 
                                   1590 ;__2621440049              Allocated to registers 
                                   1591 ;s                         Allocated to registers r5 r6 r7 
                                   1592 ;__1966080051              Allocated to registers 
                                   1593 ;s                         Allocated to registers r5 r6 r7 
                                   1594 ;__2621440053              Allocated to registers 
                                   1595 ;s                         Allocated to registers r5 r6 r7 
                                   1596 ;__1966080055              Allocated to registers 
                                   1597 ;s                         Allocated to registers r5 r6 r7 
                                   1598 ;__2621440057              Allocated to registers 
                                   1599 ;s                         Allocated to registers r5 r6 r7 
                                   1600 ;__1966080059              Allocated to registers 
                                   1601 ;s                         Allocated to registers r5 r6 r7 
                                   1602 ;__2621440061              Allocated to registers 
                                   1603 ;s                         Allocated to registers r5 r6 r7 
                                   1604 ;__2621440063              Allocated to registers 
                                   1605 ;s                         Allocated to registers r5 r6 r7 
                                   1606 ;__1966080065              Allocated to registers 
                                   1607 ;s                         Allocated to registers r5 r6 r7 
                                   1608 ;__2621440067              Allocated to registers 
                                   1609 ;s                         Allocated to registers r5 r6 r7 
                                   1610 ;__2621440069              Allocated to registers 
                                   1611 ;s                         Allocated to registers r5 r6 r7 
                                   1612 ;__1966080071              Allocated to registers 
                                   1613 ;s                         Allocated to registers r5 r6 r7 
                                   1614 ;__2621440073              Allocated to registers 
                                   1615 ;s                         Allocated to registers r5 r6 r7 
                                   1616 ;__1966080075              Allocated to registers 
                                   1617 ;s                         Allocated to registers r5 r6 r7 
                                   1618 ;__2621440077              Allocated to registers 
                                   1619 ;s                         Allocated to registers r5 r6 r7 
                                   1620 ;__1966080079              Allocated to registers 
                                   1621 ;s                         Allocated to registers r5 r6 r7 
                                   1622 ;__2621440081              Allocated to registers 
                                   1623 ;s                         Allocated to registers r5 r6 r7 
                                   1624 ;__1966080083              Allocated to registers 
                                   1625 ;s                         Allocated to registers r5 r6 r7 
                                   1626 ;------------------------------------------------------------
                                   1627 ;	calc.c:135: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1628 ;	-----------------------------------------
                                   1629 ;	 function operator
                                   1630 ;	-----------------------------------------
      002FE4                       1631 _operator:
      002FE4 C0 08            [24] 1632 	push	_bp
      002FE6 85 81 08         [24] 1633 	mov	_bp,sp
      002FE9 C0 82            [24] 1634 	push	dpl
      002FEB C0 83            [24] 1635 	push	dph
      002FED C0 F0            [24] 1636 	push	b
      002FEF E5 81            [12] 1637 	mov	a,sp
      002FF1 24 13            [12] 1638 	add	a,#0x13
      002FF3 F5 81            [12] 1639 	mov	sp,a
                                   1640 ;	calc.c:136: struct ctx *ctx = (struct ctx *)_ctx;
      002FF5 A8 08            [24] 1641 	mov	r0,_bp
      002FF7 08               [12] 1642 	inc	r0
      002FF8 E5 08            [12] 1643 	mov	a,_bp
      002FFA 24 04            [12] 1644 	add	a,#0x04
      002FFC F9               [12] 1645 	mov	r1,a
      002FFD E6               [12] 1646 	mov	a,@r0
      002FFE F7               [12] 1647 	mov	@r1,a
      002FFF 08               [12] 1648 	inc	r0
      003000 09               [12] 1649 	inc	r1
      003001 E6               [12] 1650 	mov	a,@r0
      003002 F7               [12] 1651 	mov	@r1,a
      003003 08               [12] 1652 	inc	r0
      003004 09               [12] 1653 	inc	r1
      003005 E6               [12] 1654 	mov	a,@r0
      003006 F7               [12] 1655 	mov	@r1,a
                                   1656 ;	calc.c:139: switch (ctx->digit[0]) {
      003007 E5 08            [12] 1657 	mov	a,_bp
      003009 24 04            [12] 1658 	add	a,#0x04
      00300B F8               [12] 1659 	mov	r0,a
      00300C 74 07            [12] 1660 	mov	a,#0x07
      00300E 26               [12] 1661 	add	a,@r0
      00300F FD               [12] 1662 	mov	r5,a
      003010 E4               [12] 1663 	clr	a
      003011 08               [12] 1664 	inc	r0
      003012 36               [12] 1665 	addc	a,@r0
      003013 FE               [12] 1666 	mov	r6,a
      003014 08               [12] 1667 	inc	r0
      003015 86 07            [24] 1668 	mov	ar7,@r0
      003017 8D 82            [24] 1669 	mov	dpl,r5
      003019 8E 83            [24] 1670 	mov	dph,r6
      00301B 8F F0            [24] 1671 	mov	b,r7
      00301D 12 51 C9         [24] 1672 	lcall	__gptrget
      003020 FF               [12] 1673 	mov	r7,a
      003021 BF 25 03         [24] 1674 	cjne	r7,#0x25,00831$
      003024 02 3B C5         [24] 1675 	ljmp	00152$
      003027                       1676 00831$:
      003027 BF 26 03         [24] 1677 	cjne	r7,#0x26,00832$
      00302A 02 3D C3         [24] 1678 	ljmp	00162$
      00302D                       1679 00832$:
      00302D BF 2A 03         [24] 1680 	cjne	r7,#0x2a,00833$
      003030 02 38 65         [24] 1681 	ljmp	00135$
      003033                       1682 00833$:
      003033 BF 2B 03         [24] 1683 	cjne	r7,#0x2b,00834$
      003036 02 35 EE         [24] 1684 	ljmp	00121$
      003039                       1685 00834$:
      003039 BF 2D 03         [24] 1686 	cjne	r7,#0x2d,00835$
      00303C 02 37 29         [24] 1687 	ljmp	00128$
      00303F                       1688 00835$:
      00303F BF 2E 03         [24] 1689 	cjne	r7,#0x2e,00836$
      003042 02 32 AE         [24] 1690 	ljmp	00109$
      003045                       1691 00836$:
      003045 BF 2F 03         [24] 1692 	cjne	r7,#0x2f,00837$
      003048 02 39 C7         [24] 1693 	ljmp	00142$
      00304B                       1694 00837$:
      00304B BF 50 03         [24] 1695 	cjne	r7,#0x50,00838$
      00304E 02 32 22         [24] 1696 	ljmp	00105$
      003051                       1697 00838$:
      003051 BF 56 03         [24] 1698 	cjne	r7,#0x56,00839$
      003054 02 34 53         [24] 1699 	ljmp	00113$
      003057                       1700 00839$:
      003057 BF 5E 03         [24] 1701 	cjne	r7,#0x5e,00840$
      00305A 02 40 39         [24] 1702 	ljmp	00176$
      00305D                       1703 00840$:
      00305D BF 70 02         [24] 1704 	cjne	r7,#0x70,00841$
      003060 80 1B            [24] 1705 	sjmp	00101$
      003062                       1706 00841$:
      003062 BF 76 03         [24] 1707 	cjne	r7,#0x76,00842$
      003065 02 32 AE         [24] 1708 	ljmp	00109$
      003068                       1709 00842$:
      003068 BF 78 03         [24] 1710 	cjne	r7,#0x78,00843$
      00306B 02 34 9C         [24] 1711 	ljmp	00114$
      00306E                       1712 00843$:
      00306E BF 7C 03         [24] 1713 	cjne	r7,#0x7c,00844$
      003071 02 3E FE         [24] 1714 	ljmp	00169$
      003074                       1715 00844$:
      003074 BF 7E 03         [24] 1716 	cjne	r7,#0x7e,00845$
      003077 02 41 74         [24] 1717 	ljmp	00183$
      00307A                       1718 00845$:
      00307A 02 42 15         [24] 1719 	ljmp	00187$
                                   1720 ;	calc.c:140: case 'p':
      00307D                       1721 00101$:
                                   1722 ;	calc.c:141: printstr("\r\n");
      00307D 7D 4A            [12] 1723 	mov	r5,#___str_0
      00307F 7E 6A            [12] 1724 	mov	r6,#(___str_0 >> 8)
      003081 7F 80            [12] 1725 	mov	r7,#0x80
                                   1726 ;	calc.c:50: return;
      003083                       1727 00258$:
                                   1728 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003083 8D 82            [24] 1729 	mov	dpl,r5
      003085 8E 83            [24] 1730 	mov	dph,r6
      003087 8F F0            [24] 1731 	mov	b,r7
      003089 12 51 C9         [24] 1732 	lcall	__gptrget
      00308C FC               [12] 1733 	mov	r4,a
      00308D 60 10            [24] 1734 	jz	00190$
      00308F 7B 00            [12] 1735 	mov	r3,#0x00
      003091 8C 82            [24] 1736 	mov	dpl,r4
      003093 8B 83            [24] 1737 	mov	dph,r3
      003095 12 29 C0         [24] 1738 	lcall	_putchar
      003098 0D               [12] 1739 	inc	r5
                                   1740 ;	calc.c:141: printstr("\r\n");
      003099 BD 00 E7         [24] 1741 	cjne	r5,#0x00,00258$
      00309C 0E               [12] 1742 	inc	r6
      00309D 80 E4            [24] 1743 	sjmp	00258$
      00309F                       1744 00190$:
                                   1745 ;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      00309F E5 08            [12] 1746 	mov	a,_bp
      0030A1 24 07            [12] 1747 	add	a,#0x07
      0030A3 FF               [12] 1748 	mov	r7,a
      0030A4 7E 00            [12] 1749 	mov	r6,#0x00
      0030A6 7D 40            [12] 1750 	mov	r5,#0x40
      0030A8 E5 08            [12] 1751 	mov	a,_bp
      0030AA 24 04            [12] 1752 	add	a,#0x04
      0030AC F8               [12] 1753 	mov	r0,a
      0030AD 74 09            [12] 1754 	mov	a,#0x09
      0030AF 26               [12] 1755 	add	a,@r0
      0030B0 FA               [12] 1756 	mov	r2,a
      0030B1 E4               [12] 1757 	clr	a
      0030B2 08               [12] 1758 	inc	r0
      0030B3 36               [12] 1759 	addc	a,@r0
      0030B4 FB               [12] 1760 	mov	r3,a
      0030B5 08               [12] 1761 	inc	r0
      0030B6 86 04            [24] 1762 	mov	ar4,@r0
      0030B8 C0 07            [24] 1763 	push	ar7
      0030BA C0 06            [24] 1764 	push	ar6
      0030BC C0 05            [24] 1765 	push	ar5
      0030BE 8A 82            [24] 1766 	mov	dpl,r2
      0030C0 8B 83            [24] 1767 	mov	dph,r3
      0030C2 8C F0            [24] 1768 	mov	b,r4
      0030C4 12 28 56         [24] 1769 	lcall	_stack_peek
      0030C7 AE 82            [24] 1770 	mov	r6,dpl
      0030C9 AF 83            [24] 1771 	mov	r7,dph
      0030CB 15 81            [12] 1772 	dec	sp
      0030CD 15 81            [12] 1773 	dec	sp
      0030CF 15 81            [12] 1774 	dec	sp
      0030D1 EE               [12] 1775 	mov	a,r6
      0030D2 4F               [12] 1776 	orl	a,r7
      0030D3 70 25            [24] 1777 	jnz	00103$
      0030D5 7D 4D            [12] 1778 	mov	r5,#___str_1
      0030D7 7E 6A            [12] 1779 	mov	r6,#(___str_1 >> 8)
      0030D9 7F 80            [12] 1780 	mov	r7,#0x80
                                   1781 ;	calc.c:50: return;
      0030DB                       1782 00261$:
                                   1783 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0030DB 8D 82            [24] 1784 	mov	dpl,r5
      0030DD 8E 83            [24] 1785 	mov	dph,r6
      0030DF 8F F0            [24] 1786 	mov	b,r7
      0030E1 12 51 C9         [24] 1787 	lcall	__gptrget
      0030E4 FC               [12] 1788 	mov	r4,a
      0030E5 70 03            [24] 1789 	jnz	00849$
      0030E7 02 42 1A         [24] 1790 	ljmp	00188$
      0030EA                       1791 00849$:
      0030EA 7B 00            [12] 1792 	mov	r3,#0x00
      0030EC 8C 82            [24] 1793 	mov	dpl,r4
      0030EE 8B 83            [24] 1794 	mov	dph,r3
      0030F0 12 29 C0         [24] 1795 	lcall	_putchar
      0030F3 0D               [12] 1796 	inc	r5
                                   1797 ;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      0030F4 BD 00 E4         [24] 1798 	cjne	r5,#0x00,00261$
      0030F7 0E               [12] 1799 	inc	r6
      0030F8 80 E1            [24] 1800 	sjmp	00261$
      0030FA                       1801 00103$:
                                   1802 ;	calc.c:144: printstr("PT ");
      0030FA 7D 7A            [12] 1803 	mov	r5,#___str_6
      0030FC 7E 6A            [12] 1804 	mov	r6,#(___str_6 >> 8)
      0030FE 7F 80            [12] 1805 	mov	r7,#0x80
                                   1806 ;	calc.c:50: return;
      003100                       1807 00264$:
                                   1808 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003100 8D 82            [24] 1809 	mov	dpl,r5
      003102 8E 83            [24] 1810 	mov	dph,r6
      003104 8F F0            [24] 1811 	mov	b,r7
      003106 12 51 C9         [24] 1812 	lcall	__gptrget
      003109 FC               [12] 1813 	mov	r4,a
      00310A 60 10            [24] 1814 	jz	00194$
      00310C 7B 00            [12] 1815 	mov	r3,#0x00
      00310E 8C 82            [24] 1816 	mov	dpl,r4
      003110 8B 83            [24] 1817 	mov	dph,r3
      003112 12 29 C0         [24] 1818 	lcall	_putchar
      003115 0D               [12] 1819 	inc	r5
                                   1820 ;	calc.c:144: printstr("PT ");
      003116 BD 00 E7         [24] 1821 	cjne	r5,#0x00,00264$
      003119 0E               [12] 1822 	inc	r6
      00311A 80 E4            [24] 1823 	sjmp	00264$
      00311C                       1824 00194$:
                                   1825 ;	calc.c:145: printf("% 11ld / ", d0);
      00311C E5 08            [12] 1826 	mov	a,_bp
      00311E 24 07            [12] 1827 	add	a,#0x07
      003120 F8               [12] 1828 	mov	r0,a
      003121 E6               [12] 1829 	mov	a,@r0
      003122 C0 E0            [24] 1830 	push	acc
      003124 08               [12] 1831 	inc	r0
      003125 E6               [12] 1832 	mov	a,@r0
      003126 C0 E0            [24] 1833 	push	acc
      003128 08               [12] 1834 	inc	r0
      003129 E6               [12] 1835 	mov	a,@r0
      00312A C0 E0            [24] 1836 	push	acc
      00312C 08               [12] 1837 	inc	r0
      00312D E6               [12] 1838 	mov	a,@r0
      00312E C0 E0            [24] 1839 	push	acc
      003130 74 63            [12] 1840 	mov	a,#___str_3
      003132 C0 E0            [24] 1841 	push	acc
      003134 74 6A            [12] 1842 	mov	a,#(___str_3 >> 8)
      003136 C0 E0            [24] 1843 	push	acc
      003138 74 80            [12] 1844 	mov	a,#0x80
      00313A C0 E0            [24] 1845 	push	acc
      00313C 12 51 90         [24] 1846 	lcall	_printf
      00313F E5 81            [12] 1847 	mov	a,sp
      003141 24 F9            [12] 1848 	add	a,#0xf9
      003143 F5 81            [12] 1849 	mov	sp,a
                                   1850 ;	calc.c:146: printf("%08lx / ", d0);
      003145 E5 08            [12] 1851 	mov	a,_bp
      003147 24 07            [12] 1852 	add	a,#0x07
      003149 F8               [12] 1853 	mov	r0,a
      00314A E6               [12] 1854 	mov	a,@r0
      00314B C0 E0            [24] 1855 	push	acc
      00314D 08               [12] 1856 	inc	r0
      00314E E6               [12] 1857 	mov	a,@r0
      00314F C0 E0            [24] 1858 	push	acc
      003151 08               [12] 1859 	inc	r0
      003152 E6               [12] 1860 	mov	a,@r0
      003153 C0 E0            [24] 1861 	push	acc
      003155 08               [12] 1862 	inc	r0
      003156 E6               [12] 1863 	mov	a,@r0
      003157 C0 E0            [24] 1864 	push	acc
      003159 74 6D            [12] 1865 	mov	a,#___str_4
      00315B C0 E0            [24] 1866 	push	acc
      00315D 74 6A            [12] 1867 	mov	a,#(___str_4 >> 8)
      00315F C0 E0            [24] 1868 	push	acc
      003161 74 80            [12] 1869 	mov	a,#0x80
      003163 C0 E0            [24] 1870 	push	acc
      003165 12 51 90         [24] 1871 	lcall	_printf
      003168 E5 81            [12] 1872 	mov	a,sp
      00316A 24 F9            [12] 1873 	add	a,#0xf9
      00316C F5 81            [12] 1874 	mov	sp,a
                                   1875 ;	calc.c:147: printbin(d0);
      00316E E5 08            [12] 1876 	mov	a,_bp
      003170 24 07            [12] 1877 	add	a,#0x07
      003172 F8               [12] 1878 	mov	r0,a
      003173 86 04            [24] 1879 	mov	ar4,@r0
      003175 08               [12] 1880 	inc	r0
      003176 86 05            [24] 1881 	mov	ar5,@r0
      003178 08               [12] 1882 	inc	r0
      003179 86 06            [24] 1883 	mov	ar6,@r0
      00317B 08               [12] 1884 	inc	r0
      00317C 86 07            [24] 1885 	mov	ar7,@r0
      00317E E5 08            [12] 1886 	mov	a,_bp
      003180 24 0F            [12] 1887 	add	a,#0x0f
      003182 F8               [12] 1888 	mov	r0,a
      003183 A6 04            [24] 1889 	mov	@r0,ar4
      003185 08               [12] 1890 	inc	r0
      003186 A6 05            [24] 1891 	mov	@r0,ar5
      003188 08               [12] 1892 	inc	r0
      003189 A6 06            [24] 1893 	mov	@r0,ar6
      00318B 08               [12] 1894 	inc	r0
      00318C A6 07            [24] 1895 	mov	@r0,ar7
                                   1896 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      00318E E5 08            [12] 1897 	mov	a,_bp
      003190 24 13            [12] 1898 	add	a,#0x13
      003192 F8               [12] 1899 	mov	r0,a
      003193 E4               [12] 1900 	clr	a
      003194 F6               [12] 1901 	mov	@r0,a
      003195 08               [12] 1902 	inc	r0
      003196 F6               [12] 1903 	mov	@r0,a
      003197 08               [12] 1904 	inc	r0
      003198 F6               [12] 1905 	mov	@r0,a
      003199 08               [12] 1906 	inc	r0
      00319A 76 80            [12] 1907 	mov	@r0,#0x80
      00319C                       1908 00266$:
                                   1909 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00319C E5 08            [12] 1910 	mov	a,_bp
      00319E 24 0F            [12] 1911 	add	a,#0x0f
      0031A0 F8               [12] 1912 	mov	r0,a
      0031A1 86 04            [24] 1913 	mov	ar4,@r0
      0031A3 08               [12] 1914 	inc	r0
      0031A4 86 05            [24] 1915 	mov	ar5,@r0
      0031A6 08               [12] 1916 	inc	r0
      0031A7 86 06            [24] 1917 	mov	ar6,@r0
      0031A9 08               [12] 1918 	inc	r0
      0031AA 86 07            [24] 1919 	mov	ar7,@r0
      0031AC E5 08            [12] 1920 	mov	a,_bp
      0031AE 24 13            [12] 1921 	add	a,#0x13
      0031B0 F8               [12] 1922 	mov	r0,a
      0031B1 E6               [12] 1923 	mov	a,@r0
      0031B2 52 04            [12] 1924 	anl	ar4,a
      0031B4 08               [12] 1925 	inc	r0
      0031B5 E6               [12] 1926 	mov	a,@r0
      0031B6 52 05            [12] 1927 	anl	ar5,a
      0031B8 08               [12] 1928 	inc	r0
      0031B9 E6               [12] 1929 	mov	a,@r0
      0031BA 52 06            [12] 1930 	anl	ar6,a
      0031BC 08               [12] 1931 	inc	r0
      0031BD E6               [12] 1932 	mov	a,@r0
      0031BE 52 07            [12] 1933 	anl	ar7,a
      0031C0 EC               [12] 1934 	mov	a,r4
      0031C1 4D               [12] 1935 	orl	a,r5
      0031C2 4E               [12] 1936 	orl	a,r6
      0031C3 4F               [12] 1937 	orl	a,r7
      0031C4 60 06            [24] 1938 	jz	00359$
      0031C6 7E 31            [12] 1939 	mov	r6,#0x31
      0031C8 7F 00            [12] 1940 	mov	r7,#0x00
      0031CA 80 04            [24] 1941 	sjmp	00360$
      0031CC                       1942 00359$:
      0031CC 7E 30            [12] 1943 	mov	r6,#0x30
      0031CE 7F 00            [12] 1944 	mov	r7,#0x00
      0031D0                       1945 00360$:
      0031D0 8E 82            [24] 1946 	mov	dpl,r6
      0031D2 8F 83            [24] 1947 	mov	dph,r7
      0031D4 12 29 C0         [24] 1948 	lcall	_putchar
                                   1949 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031D7 E5 08            [12] 1950 	mov	a,_bp
      0031D9 24 13            [12] 1951 	add	a,#0x13
      0031DB F8               [12] 1952 	mov	r0,a
      0031DC 08               [12] 1953 	inc	r0
      0031DD 08               [12] 1954 	inc	r0
      0031DE 08               [12] 1955 	inc	r0
      0031DF E6               [12] 1956 	mov	a,@r0
      0031E0 C3               [12] 1957 	clr	c
      0031E1 13               [12] 1958 	rrc	a
      0031E2 F6               [12] 1959 	mov	@r0,a
      0031E3 18               [12] 1960 	dec	r0
      0031E4 E6               [12] 1961 	mov	a,@r0
      0031E5 13               [12] 1962 	rrc	a
      0031E6 F6               [12] 1963 	mov	@r0,a
      0031E7 18               [12] 1964 	dec	r0
      0031E8 E6               [12] 1965 	mov	a,@r0
      0031E9 13               [12] 1966 	rrc	a
      0031EA F6               [12] 1967 	mov	@r0,a
      0031EB 18               [12] 1968 	dec	r0
      0031EC E6               [12] 1969 	mov	a,@r0
      0031ED 13               [12] 1970 	rrc	a
      0031EE F6               [12] 1971 	mov	@r0,a
      0031EF E5 08            [12] 1972 	mov	a,_bp
      0031F1 24 13            [12] 1973 	add	a,#0x13
      0031F3 F8               [12] 1974 	mov	r0,a
      0031F4 E6               [12] 1975 	mov	a,@r0
      0031F5 08               [12] 1976 	inc	r0
      0031F6 46               [12] 1977 	orl	a,@r0
      0031F7 08               [12] 1978 	inc	r0
      0031F8 46               [12] 1979 	orl	a,@r0
      0031F9 08               [12] 1980 	inc	r0
      0031FA 46               [12] 1981 	orl	a,@r0
      0031FB 70 9F            [24] 1982 	jnz	00266$
                                   1983 ;	calc.c:148: printstr("\r\n");
      0031FD 7D 4A            [12] 1984 	mov	r5,#___str_0
      0031FF 7E 6A            [12] 1985 	mov	r6,#(___str_0 >> 8)
      003201 7F 80            [12] 1986 	mov	r7,#0x80
                                   1987 ;	calc.c:50: return;
      003203                       1988 00269$:
                                   1989 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003203 8D 82            [24] 1990 	mov	dpl,r5
      003205 8E 83            [24] 1991 	mov	dph,r6
      003207 8F F0            [24] 1992 	mov	b,r7
      003209 12 51 C9         [24] 1993 	lcall	__gptrget
      00320C FC               [12] 1994 	mov	r4,a
      00320D 70 03            [24] 1995 	jnz	00855$
      00320F 02 42 1A         [24] 1996 	ljmp	00188$
      003212                       1997 00855$:
      003212 7B 00            [12] 1998 	mov	r3,#0x00
      003214 8C 82            [24] 1999 	mov	dpl,r4
      003216 8B 83            [24] 2000 	mov	dph,r3
      003218 12 29 C0         [24] 2001 	lcall	_putchar
      00321B 0D               [12] 2002 	inc	r5
                                   2003 ;	calc.c:151: case 'P':
      00321C BD 00 E4         [24] 2004 	cjne	r5,#0x00,00269$
      00321F 0E               [12] 2005 	inc	r6
      003220 80 E1            [24] 2006 	sjmp	00269$
      003222                       2007 00105$:
                                   2008 ;	calc.c:152: printstr("\r\n");
      003222 7D 4A            [12] 2009 	mov	r5,#___str_0
      003224 7E 6A            [12] 2010 	mov	r6,#(___str_0 >> 8)
      003226 7F 80            [12] 2011 	mov	r7,#0x80
                                   2012 ;	calc.c:50: return;
      003228                       2013 00272$:
                                   2014 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003228 8D 82            [24] 2015 	mov	dpl,r5
      00322A 8E 83            [24] 2016 	mov	dph,r6
      00322C 8F F0            [24] 2017 	mov	b,r7
      00322E 12 51 C9         [24] 2018 	lcall	__gptrget
      003231 FC               [12] 2019 	mov	r4,a
      003232 60 10            [24] 2020 	jz	00200$
      003234 7B 00            [12] 2021 	mov	r3,#0x00
      003236 8C 82            [24] 2022 	mov	dpl,r4
      003238 8B 83            [24] 2023 	mov	dph,r3
      00323A 12 29 C0         [24] 2024 	lcall	_putchar
      00323D 0D               [12] 2025 	inc	r5
                                   2026 ;	calc.c:152: printstr("\r\n");
      00323E BD 00 E7         [24] 2027 	cjne	r5,#0x00,00272$
      003241 0E               [12] 2028 	inc	r6
      003242 80 E4            [24] 2029 	sjmp	00272$
      003244                       2030 00200$:
                                   2031 ;	calc.c:153: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
      003244 E5 08            [12] 2032 	mov	a,_bp
      003246 24 04            [12] 2033 	add	a,#0x04
      003248 F8               [12] 2034 	mov	r0,a
      003249 86 02            [24] 2035 	mov	ar2,@r0
      00324B 08               [12] 2036 	inc	r0
      00324C 86 03            [24] 2037 	mov	ar3,@r0
      00324E 08               [12] 2038 	inc	r0
      00324F 86 04            [24] 2039 	mov	ar4,@r0
      003251 E5 08            [12] 2040 	mov	a,_bp
      003253 24 04            [12] 2041 	add	a,#0x04
      003255 F8               [12] 2042 	mov	r0,a
      003256 74 09            [12] 2043 	mov	a,#0x09
      003258 26               [12] 2044 	add	a,@r0
      003259 FD               [12] 2045 	mov	r5,a
      00325A E4               [12] 2046 	clr	a
      00325B 08               [12] 2047 	inc	r0
      00325C 36               [12] 2048 	addc	a,@r0
      00325D FE               [12] 2049 	mov	r6,a
      00325E 08               [12] 2050 	inc	r0
      00325F 86 07            [24] 2051 	mov	ar7,@r0
      003261 C0 02            [24] 2052 	push	ar2
      003263 C0 03            [24] 2053 	push	ar3
      003265 C0 04            [24] 2054 	push	ar4
      003267 74 B0            [12] 2055 	mov	a,#_dump_peek
      003269 C0 E0            [24] 2056 	push	acc
      00326B 74 2E            [12] 2057 	mov	a,#(_dump_peek >> 8)
      00326D C0 E0            [24] 2058 	push	acc
      00326F 8D 82            [24] 2059 	mov	dpl,r5
      003271 8E 83            [24] 2060 	mov	dph,r6
      003273 8F F0            [24] 2061 	mov	b,r7
      003275 12 28 EC         [24] 2062 	lcall	_stack_iter_peek
      003278 AE 82            [24] 2063 	mov	r6,dpl
      00327A AF 83            [24] 2064 	mov	r7,dph
      00327C E5 81            [12] 2065 	mov	a,sp
      00327E 24 FB            [12] 2066 	add	a,#0xfb
      003280 F5 81            [12] 2067 	mov	sp,a
      003282 EE               [12] 2068 	mov	a,r6
      003283 4F               [12] 2069 	orl	a,r7
      003284 60 03            [24] 2070 	jz	00859$
      003286 02 42 1A         [24] 2071 	ljmp	00188$
      003289                       2072 00859$:
      003289 7D 4D            [12] 2073 	mov	r5,#___str_1
      00328B 7E 6A            [12] 2074 	mov	r6,#(___str_1 >> 8)
      00328D 7F 80            [12] 2075 	mov	r7,#0x80
                                   2076 ;	calc.c:50: return;
      00328F                       2077 00275$:
                                   2078 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00328F 8D 82            [24] 2079 	mov	dpl,r5
      003291 8E 83            [24] 2080 	mov	dph,r6
      003293 8F F0            [24] 2081 	mov	b,r7
      003295 12 51 C9         [24] 2082 	lcall	__gptrget
      003298 FC               [12] 2083 	mov	r4,a
      003299 70 03            [24] 2084 	jnz	00860$
      00329B 02 42 1A         [24] 2085 	ljmp	00188$
      00329E                       2086 00860$:
      00329E 7B 00            [12] 2087 	mov	r3,#0x00
      0032A0 8C 82            [24] 2088 	mov	dpl,r4
      0032A2 8B 83            [24] 2089 	mov	dph,r3
      0032A4 12 29 C0         [24] 2090 	lcall	_putchar
      0032A7 0D               [12] 2091 	inc	r5
                                   2092 ;	calc.c:156: case 'v':
      0032A8 BD 00 E4         [24] 2093 	cjne	r5,#0x00,00275$
      0032AB 0E               [12] 2094 	inc	r6
      0032AC 80 E1            [24] 2095 	sjmp	00275$
      0032AE                       2096 00109$:
                                   2097 ;	calc.c:157: printstr("\r\n");
      0032AE 7D 4A            [12] 2098 	mov	r5,#___str_0
      0032B0 7E 6A            [12] 2099 	mov	r6,#(___str_0 >> 8)
      0032B2 7F 80            [12] 2100 	mov	r7,#0x80
                                   2101 ;	calc.c:50: return;
      0032B4                       2102 00278$:
                                   2103 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0032B4 8D 82            [24] 2104 	mov	dpl,r5
      0032B6 8E 83            [24] 2105 	mov	dph,r6
      0032B8 8F F0            [24] 2106 	mov	b,r7
      0032BA 12 51 C9         [24] 2107 	lcall	__gptrget
      0032BD FC               [12] 2108 	mov	r4,a
      0032BE 60 10            [24] 2109 	jz	00204$
      0032C0 7B 00            [12] 2110 	mov	r3,#0x00
      0032C2 8C 82            [24] 2111 	mov	dpl,r4
      0032C4 8B 83            [24] 2112 	mov	dph,r3
      0032C6 12 29 C0         [24] 2113 	lcall	_putchar
      0032C9 0D               [12] 2114 	inc	r5
                                   2115 ;	calc.c:157: printstr("\r\n");
      0032CA BD 00 E7         [24] 2116 	cjne	r5,#0x00,00278$
      0032CD 0E               [12] 2117 	inc	r6
      0032CE 80 E4            [24] 2118 	sjmp	00278$
      0032D0                       2119 00204$:
                                   2120 ;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      0032D0 E5 08            [12] 2121 	mov	a,_bp
      0032D2 24 07            [12] 2122 	add	a,#0x07
      0032D4 FF               [12] 2123 	mov	r7,a
      0032D5 7E 00            [12] 2124 	mov	r6,#0x00
      0032D7 7D 40            [12] 2125 	mov	r5,#0x40
      0032D9 E5 08            [12] 2126 	mov	a,_bp
      0032DB 24 04            [12] 2127 	add	a,#0x04
      0032DD F8               [12] 2128 	mov	r0,a
      0032DE 74 09            [12] 2129 	mov	a,#0x09
      0032E0 26               [12] 2130 	add	a,@r0
      0032E1 FA               [12] 2131 	mov	r2,a
      0032E2 E4               [12] 2132 	clr	a
      0032E3 08               [12] 2133 	inc	r0
      0032E4 36               [12] 2134 	addc	a,@r0
      0032E5 FB               [12] 2135 	mov	r3,a
      0032E6 08               [12] 2136 	inc	r0
      0032E7 86 04            [24] 2137 	mov	ar4,@r0
      0032E9 C0 07            [24] 2138 	push	ar7
      0032EB C0 06            [24] 2139 	push	ar6
      0032ED C0 05            [24] 2140 	push	ar5
      0032EF 8A 82            [24] 2141 	mov	dpl,r2
      0032F1 8B 83            [24] 2142 	mov	dph,r3
      0032F3 8C F0            [24] 2143 	mov	b,r4
      0032F5 12 27 7F         [24] 2144 	lcall	_stack_pop
      0032F8 AE 82            [24] 2145 	mov	r6,dpl
      0032FA AF 83            [24] 2146 	mov	r7,dph
      0032FC 15 81            [12] 2147 	dec	sp
      0032FE 15 81            [12] 2148 	dec	sp
      003300 15 81            [12] 2149 	dec	sp
      003302 EE               [12] 2150 	mov	a,r6
      003303 4F               [12] 2151 	orl	a,r7
      003304 70 25            [24] 2152 	jnz	00111$
      003306 7D 4D            [12] 2153 	mov	r5,#___str_1
      003308 7E 6A            [12] 2154 	mov	r6,#(___str_1 >> 8)
      00330A 7F 80            [12] 2155 	mov	r7,#0x80
                                   2156 ;	calc.c:50: return;
      00330C                       2157 00281$:
                                   2158 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00330C 8D 82            [24] 2159 	mov	dpl,r5
      00330E 8E 83            [24] 2160 	mov	dph,r6
      003310 8F F0            [24] 2161 	mov	b,r7
      003312 12 51 C9         [24] 2162 	lcall	__gptrget
      003315 FC               [12] 2163 	mov	r4,a
      003316 70 03            [24] 2164 	jnz	00865$
      003318 02 42 1A         [24] 2165 	ljmp	00188$
      00331B                       2166 00865$:
      00331B 7B 00            [12] 2167 	mov	r3,#0x00
      00331D 8C 82            [24] 2168 	mov	dpl,r4
      00331F 8B 83            [24] 2169 	mov	dph,r3
      003321 12 29 C0         [24] 2170 	lcall	_putchar
      003324 0D               [12] 2171 	inc	r5
                                   2172 ;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003325 BD 00 E4         [24] 2173 	cjne	r5,#0x00,00281$
      003328 0E               [12] 2174 	inc	r6
      003329 80 E1            [24] 2175 	sjmp	00281$
      00332B                       2176 00111$:
                                   2177 ;	calc.c:160: printstr("VT ");
      00332B 7D 7E            [12] 2178 	mov	r5,#___str_7
      00332D 7E 6A            [12] 2179 	mov	r6,#(___str_7 >> 8)
      00332F 7F 80            [12] 2180 	mov	r7,#0x80
                                   2181 ;	calc.c:50: return;
      003331                       2182 00284$:
                                   2183 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003331 8D 82            [24] 2184 	mov	dpl,r5
      003333 8E 83            [24] 2185 	mov	dph,r6
      003335 8F F0            [24] 2186 	mov	b,r7
      003337 12 51 C9         [24] 2187 	lcall	__gptrget
      00333A FC               [12] 2188 	mov	r4,a
      00333B 60 10            [24] 2189 	jz	00208$
      00333D 7B 00            [12] 2190 	mov	r3,#0x00
      00333F 8C 82            [24] 2191 	mov	dpl,r4
      003341 8B 83            [24] 2192 	mov	dph,r3
      003343 12 29 C0         [24] 2193 	lcall	_putchar
      003346 0D               [12] 2194 	inc	r5
                                   2195 ;	calc.c:160: printstr("VT ");
      003347 BD 00 E7         [24] 2196 	cjne	r5,#0x00,00284$
      00334A 0E               [12] 2197 	inc	r6
      00334B 80 E4            [24] 2198 	sjmp	00284$
      00334D                       2199 00208$:
                                   2200 ;	calc.c:161: printf("% 11ld / ", d0);
      00334D E5 08            [12] 2201 	mov	a,_bp
      00334F 24 07            [12] 2202 	add	a,#0x07
      003351 F8               [12] 2203 	mov	r0,a
      003352 E6               [12] 2204 	mov	a,@r0
      003353 C0 E0            [24] 2205 	push	acc
      003355 08               [12] 2206 	inc	r0
      003356 E6               [12] 2207 	mov	a,@r0
      003357 C0 E0            [24] 2208 	push	acc
      003359 08               [12] 2209 	inc	r0
      00335A E6               [12] 2210 	mov	a,@r0
      00335B C0 E0            [24] 2211 	push	acc
      00335D 08               [12] 2212 	inc	r0
      00335E E6               [12] 2213 	mov	a,@r0
      00335F C0 E0            [24] 2214 	push	acc
      003361 74 63            [12] 2215 	mov	a,#___str_3
      003363 C0 E0            [24] 2216 	push	acc
      003365 74 6A            [12] 2217 	mov	a,#(___str_3 >> 8)
      003367 C0 E0            [24] 2218 	push	acc
      003369 74 80            [12] 2219 	mov	a,#0x80
      00336B C0 E0            [24] 2220 	push	acc
      00336D 12 51 90         [24] 2221 	lcall	_printf
      003370 E5 81            [12] 2222 	mov	a,sp
      003372 24 F9            [12] 2223 	add	a,#0xf9
      003374 F5 81            [12] 2224 	mov	sp,a
                                   2225 ;	calc.c:162: printf("%08lx / ", d0);
      003376 E5 08            [12] 2226 	mov	a,_bp
      003378 24 07            [12] 2227 	add	a,#0x07
      00337A F8               [12] 2228 	mov	r0,a
      00337B E6               [12] 2229 	mov	a,@r0
      00337C C0 E0            [24] 2230 	push	acc
      00337E 08               [12] 2231 	inc	r0
      00337F E6               [12] 2232 	mov	a,@r0
      003380 C0 E0            [24] 2233 	push	acc
      003382 08               [12] 2234 	inc	r0
      003383 E6               [12] 2235 	mov	a,@r0
      003384 C0 E0            [24] 2236 	push	acc
      003386 08               [12] 2237 	inc	r0
      003387 E6               [12] 2238 	mov	a,@r0
      003388 C0 E0            [24] 2239 	push	acc
      00338A 74 6D            [12] 2240 	mov	a,#___str_4
      00338C C0 E0            [24] 2241 	push	acc
      00338E 74 6A            [12] 2242 	mov	a,#(___str_4 >> 8)
      003390 C0 E0            [24] 2243 	push	acc
      003392 74 80            [12] 2244 	mov	a,#0x80
      003394 C0 E0            [24] 2245 	push	acc
      003396 12 51 90         [24] 2246 	lcall	_printf
      003399 E5 81            [12] 2247 	mov	a,sp
      00339B 24 F9            [12] 2248 	add	a,#0xf9
      00339D F5 81            [12] 2249 	mov	sp,a
                                   2250 ;	calc.c:163: printbin(d0);
      00339F E5 08            [12] 2251 	mov	a,_bp
      0033A1 24 07            [12] 2252 	add	a,#0x07
      0033A3 F8               [12] 2253 	mov	r0,a
      0033A4 86 04            [24] 2254 	mov	ar4,@r0
      0033A6 08               [12] 2255 	inc	r0
      0033A7 86 05            [24] 2256 	mov	ar5,@r0
      0033A9 08               [12] 2257 	inc	r0
      0033AA 86 06            [24] 2258 	mov	ar6,@r0
      0033AC 08               [12] 2259 	inc	r0
      0033AD 86 07            [24] 2260 	mov	ar7,@r0
      0033AF E5 08            [12] 2261 	mov	a,_bp
      0033B1 24 0F            [12] 2262 	add	a,#0x0f
      0033B3 F8               [12] 2263 	mov	r0,a
      0033B4 A6 04            [24] 2264 	mov	@r0,ar4
      0033B6 08               [12] 2265 	inc	r0
      0033B7 A6 05            [24] 2266 	mov	@r0,ar5
      0033B9 08               [12] 2267 	inc	r0
      0033BA A6 06            [24] 2268 	mov	@r0,ar6
      0033BC 08               [12] 2269 	inc	r0
      0033BD A6 07            [24] 2270 	mov	@r0,ar7
                                   2271 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033BF E5 08            [12] 2272 	mov	a,_bp
      0033C1 24 13            [12] 2273 	add	a,#0x13
      0033C3 F8               [12] 2274 	mov	r0,a
      0033C4 E4               [12] 2275 	clr	a
      0033C5 F6               [12] 2276 	mov	@r0,a
      0033C6 08               [12] 2277 	inc	r0
      0033C7 F6               [12] 2278 	mov	@r0,a
      0033C8 08               [12] 2279 	inc	r0
      0033C9 F6               [12] 2280 	mov	@r0,a
      0033CA 08               [12] 2281 	inc	r0
      0033CB 76 80            [12] 2282 	mov	@r0,#0x80
      0033CD                       2283 00286$:
                                   2284 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0033CD E5 08            [12] 2285 	mov	a,_bp
      0033CF 24 0F            [12] 2286 	add	a,#0x0f
      0033D1 F8               [12] 2287 	mov	r0,a
      0033D2 86 04            [24] 2288 	mov	ar4,@r0
      0033D4 08               [12] 2289 	inc	r0
      0033D5 86 05            [24] 2290 	mov	ar5,@r0
      0033D7 08               [12] 2291 	inc	r0
      0033D8 86 06            [24] 2292 	mov	ar6,@r0
      0033DA 08               [12] 2293 	inc	r0
      0033DB 86 07            [24] 2294 	mov	ar7,@r0
      0033DD E5 08            [12] 2295 	mov	a,_bp
      0033DF 24 13            [12] 2296 	add	a,#0x13
      0033E1 F8               [12] 2297 	mov	r0,a
      0033E2 E6               [12] 2298 	mov	a,@r0
      0033E3 52 04            [12] 2299 	anl	ar4,a
      0033E5 08               [12] 2300 	inc	r0
      0033E6 E6               [12] 2301 	mov	a,@r0
      0033E7 52 05            [12] 2302 	anl	ar5,a
      0033E9 08               [12] 2303 	inc	r0
      0033EA E6               [12] 2304 	mov	a,@r0
      0033EB 52 06            [12] 2305 	anl	ar6,a
      0033ED 08               [12] 2306 	inc	r0
      0033EE E6               [12] 2307 	mov	a,@r0
      0033EF 52 07            [12] 2308 	anl	ar7,a
      0033F1 EC               [12] 2309 	mov	a,r4
      0033F2 4D               [12] 2310 	orl	a,r5
      0033F3 4E               [12] 2311 	orl	a,r6
      0033F4 4F               [12] 2312 	orl	a,r7
      0033F5 60 06            [24] 2313 	jz	00361$
      0033F7 7E 31            [12] 2314 	mov	r6,#0x31
      0033F9 7F 00            [12] 2315 	mov	r7,#0x00
      0033FB 80 04            [24] 2316 	sjmp	00362$
      0033FD                       2317 00361$:
      0033FD 7E 30            [12] 2318 	mov	r6,#0x30
      0033FF 7F 00            [12] 2319 	mov	r7,#0x00
      003401                       2320 00362$:
      003401 8E 82            [24] 2321 	mov	dpl,r6
      003403 8F 83            [24] 2322 	mov	dph,r7
      003405 12 29 C0         [24] 2323 	lcall	_putchar
                                   2324 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      003408 E5 08            [12] 2325 	mov	a,_bp
      00340A 24 13            [12] 2326 	add	a,#0x13
      00340C F8               [12] 2327 	mov	r0,a
      00340D 08               [12] 2328 	inc	r0
      00340E 08               [12] 2329 	inc	r0
      00340F 08               [12] 2330 	inc	r0
      003410 E6               [12] 2331 	mov	a,@r0
      003411 C3               [12] 2332 	clr	c
      003412 13               [12] 2333 	rrc	a
      003413 F6               [12] 2334 	mov	@r0,a
      003414 18               [12] 2335 	dec	r0
      003415 E6               [12] 2336 	mov	a,@r0
      003416 13               [12] 2337 	rrc	a
      003417 F6               [12] 2338 	mov	@r0,a
      003418 18               [12] 2339 	dec	r0
      003419 E6               [12] 2340 	mov	a,@r0
      00341A 13               [12] 2341 	rrc	a
      00341B F6               [12] 2342 	mov	@r0,a
      00341C 18               [12] 2343 	dec	r0
      00341D E6               [12] 2344 	mov	a,@r0
      00341E 13               [12] 2345 	rrc	a
      00341F F6               [12] 2346 	mov	@r0,a
      003420 E5 08            [12] 2347 	mov	a,_bp
      003422 24 13            [12] 2348 	add	a,#0x13
      003424 F8               [12] 2349 	mov	r0,a
      003425 E6               [12] 2350 	mov	a,@r0
      003426 08               [12] 2351 	inc	r0
      003427 46               [12] 2352 	orl	a,@r0
      003428 08               [12] 2353 	inc	r0
      003429 46               [12] 2354 	orl	a,@r0
      00342A 08               [12] 2355 	inc	r0
      00342B 46               [12] 2356 	orl	a,@r0
      00342C 70 9F            [24] 2357 	jnz	00286$
                                   2358 ;	calc.c:164: printstr("\r\n");
      00342E 7D 4A            [12] 2359 	mov	r5,#___str_0
      003430 7E 6A            [12] 2360 	mov	r6,#(___str_0 >> 8)
      003432 7F 80            [12] 2361 	mov	r7,#0x80
                                   2362 ;	calc.c:50: return;
      003434                       2363 00289$:
                                   2364 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003434 8D 82            [24] 2365 	mov	dpl,r5
      003436 8E 83            [24] 2366 	mov	dph,r6
      003438 8F F0            [24] 2367 	mov	b,r7
      00343A 12 51 C9         [24] 2368 	lcall	__gptrget
      00343D FC               [12] 2369 	mov	r4,a
      00343E 70 03            [24] 2370 	jnz	00871$
      003440 02 42 1A         [24] 2371 	ljmp	00188$
      003443                       2372 00871$:
      003443 7B 00            [12] 2373 	mov	r3,#0x00
      003445 8C 82            [24] 2374 	mov	dpl,r4
      003447 8B 83            [24] 2375 	mov	dph,r3
      003449 12 29 C0         [24] 2376 	lcall	_putchar
      00344C 0D               [12] 2377 	inc	r5
                                   2378 ;	calc.c:167: case 'V':
      00344D BD 00 E4         [24] 2379 	cjne	r5,#0x00,00289$
      003450 0E               [12] 2380 	inc	r6
      003451 80 E1            [24] 2381 	sjmp	00289$
      003453                       2382 00113$:
                                   2383 ;	calc.c:168: printstr("\r\n");
      003453 7D 4A            [12] 2384 	mov	r5,#___str_0
      003455 7E 6A            [12] 2385 	mov	r6,#(___str_0 >> 8)
      003457 7F 80            [12] 2386 	mov	r7,#0x80
                                   2387 ;	calc.c:50: return;
      003459                       2388 00292$:
                                   2389 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003459 8D 82            [24] 2390 	mov	dpl,r5
      00345B 8E 83            [24] 2391 	mov	dph,r6
      00345D 8F F0            [24] 2392 	mov	b,r7
      00345F 12 51 C9         [24] 2393 	lcall	__gptrget
      003462 FC               [12] 2394 	mov	r4,a
      003463 60 10            [24] 2395 	jz	00214$
      003465 7B 00            [12] 2396 	mov	r3,#0x00
      003467 8C 82            [24] 2397 	mov	dpl,r4
      003469 8B 83            [24] 2398 	mov	dph,r3
      00346B 12 29 C0         [24] 2399 	lcall	_putchar
      00346E 0D               [12] 2400 	inc	r5
                                   2401 ;	calc.c:168: printstr("\r\n");
      00346F BD 00 E7         [24] 2402 	cjne	r5,#0x00,00292$
      003472 0E               [12] 2403 	inc	r6
      003473 80 E4            [24] 2404 	sjmp	00292$
      003475                       2405 00214$:
                                   2406 ;	calc.c:169: (void)dump_pop(_ctx, delta);
      003475 E5 08            [12] 2407 	mov	a,_bp
      003477 24 FB            [12] 2408 	add	a,#0xfb
      003479 F8               [12] 2409 	mov	r0,a
      00347A E6               [12] 2410 	mov	a,@r0
      00347B C0 E0            [24] 2411 	push	acc
      00347D 08               [12] 2412 	inc	r0
      00347E E6               [12] 2413 	mov	a,@r0
      00347F C0 E0            [24] 2414 	push	acc
      003481 08               [12] 2415 	inc	r0
      003482 E6               [12] 2416 	mov	a,@r0
      003483 C0 E0            [24] 2417 	push	acc
      003485 A8 08            [24] 2418 	mov	r0,_bp
      003487 08               [12] 2419 	inc	r0
      003488 86 82            [24] 2420 	mov	dpl,@r0
      00348A 08               [12] 2421 	inc	r0
      00348B 86 83            [24] 2422 	mov	dph,@r0
      00348D 08               [12] 2423 	inc	r0
      00348E 86 F0            [24] 2424 	mov	b,@r0
      003490 12 2B FC         [24] 2425 	lcall	_dump_pop
      003493 15 81            [12] 2426 	dec	sp
      003495 15 81            [12] 2427 	dec	sp
      003497 15 81            [12] 2428 	dec	sp
                                   2429 ;	calc.c:170: break;
      003499 02 42 1A         [24] 2430 	ljmp	00188$
                                   2431 ;	calc.c:171: case 'x':
      00349C                       2432 00114$:
                                   2433 ;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00349C E5 08            [12] 2434 	mov	a,_bp
      00349E 24 07            [12] 2435 	add	a,#0x07
      0034A0 FF               [12] 2436 	mov	r7,a
      0034A1 7E 00            [12] 2437 	mov	r6,#0x00
      0034A3 7D 40            [12] 2438 	mov	r5,#0x40
      0034A5 E5 08            [12] 2439 	mov	a,_bp
      0034A7 24 04            [12] 2440 	add	a,#0x04
      0034A9 F8               [12] 2441 	mov	r0,a
      0034AA 74 09            [12] 2442 	mov	a,#0x09
      0034AC 26               [12] 2443 	add	a,@r0
      0034AD FA               [12] 2444 	mov	r2,a
      0034AE E4               [12] 2445 	clr	a
      0034AF 08               [12] 2446 	inc	r0
      0034B0 36               [12] 2447 	addc	a,@r0
      0034B1 FB               [12] 2448 	mov	r3,a
      0034B2 08               [12] 2449 	inc	r0
      0034B3 86 04            [24] 2450 	mov	ar4,@r0
      0034B5 C0 07            [24] 2451 	push	ar7
      0034B7 C0 06            [24] 2452 	push	ar6
      0034B9 C0 05            [24] 2453 	push	ar5
      0034BB 8A 82            [24] 2454 	mov	dpl,r2
      0034BD 8B 83            [24] 2455 	mov	dph,r3
      0034BF 8C F0            [24] 2456 	mov	b,r4
      0034C1 12 27 7F         [24] 2457 	lcall	_stack_pop
      0034C4 AE 82            [24] 2458 	mov	r6,dpl
      0034C6 AF 83            [24] 2459 	mov	r7,dph
      0034C8 15 81            [12] 2460 	dec	sp
      0034CA 15 81            [12] 2461 	dec	sp
      0034CC 15 81            [12] 2462 	dec	sp
      0034CE EE               [12] 2463 	mov	a,r6
      0034CF 4F               [12] 2464 	orl	a,r7
      0034D0 70 25            [24] 2465 	jnz	00119$
      0034D2 7D 82            [12] 2466 	mov	r5,#___str_8
      0034D4 7E 6A            [12] 2467 	mov	r6,#(___str_8 >> 8)
      0034D6 7F 80            [12] 2468 	mov	r7,#0x80
                                   2469 ;	calc.c:50: return;
      0034D8                       2470 00295$:
                                   2471 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0034D8 8D 82            [24] 2472 	mov	dpl,r5
      0034DA 8E 83            [24] 2473 	mov	dph,r6
      0034DC 8F F0            [24] 2474 	mov	b,r7
      0034DE 12 51 C9         [24] 2475 	lcall	__gptrget
      0034E1 FC               [12] 2476 	mov	r4,a
      0034E2 70 03            [24] 2477 	jnz	00876$
      0034E4 02 42 1A         [24] 2478 	ljmp	00188$
      0034E7                       2479 00876$:
      0034E7 7B 00            [12] 2480 	mov	r3,#0x00
      0034E9 8C 82            [24] 2481 	mov	dpl,r4
      0034EB 8B 83            [24] 2482 	mov	dph,r3
      0034ED 12 29 C0         [24] 2483 	lcall	_putchar
      0034F0 0D               [12] 2484 	inc	r5
                                   2485 ;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0034F1 BD 00 E4         [24] 2486 	cjne	r5,#0x00,00295$
      0034F4 0E               [12] 2487 	inc	r6
      0034F5 80 E1            [24] 2488 	sjmp	00295$
      0034F7                       2489 00119$:
                                   2490 ;	calc.c:173: else if (!stack_pop(&ctx->s, &d1)) {
      0034F7 E5 08            [12] 2491 	mov	a,_bp
      0034F9 24 0B            [12] 2492 	add	a,#0x0b
      0034FB FF               [12] 2493 	mov	r7,a
      0034FC 7E 00            [12] 2494 	mov	r6,#0x00
      0034FE 7D 40            [12] 2495 	mov	r5,#0x40
      003500 E5 08            [12] 2496 	mov	a,_bp
      003502 24 04            [12] 2497 	add	a,#0x04
      003504 F8               [12] 2498 	mov	r0,a
      003505 74 09            [12] 2499 	mov	a,#0x09
      003507 26               [12] 2500 	add	a,@r0
      003508 FA               [12] 2501 	mov	r2,a
      003509 E4               [12] 2502 	clr	a
      00350A 08               [12] 2503 	inc	r0
      00350B 36               [12] 2504 	addc	a,@r0
      00350C FB               [12] 2505 	mov	r3,a
      00350D 08               [12] 2506 	inc	r0
      00350E 86 04            [24] 2507 	mov	ar4,@r0
      003510 C0 07            [24] 2508 	push	ar7
      003512 C0 06            [24] 2509 	push	ar6
      003514 C0 05            [24] 2510 	push	ar5
      003516 8A 82            [24] 2511 	mov	dpl,r2
      003518 8B 83            [24] 2512 	mov	dph,r3
      00351A 8C F0            [24] 2513 	mov	b,r4
      00351C 12 27 7F         [24] 2514 	lcall	_stack_pop
      00351F AE 82            [24] 2515 	mov	r6,dpl
      003521 AF 83            [24] 2516 	mov	r7,dph
      003523 15 81            [12] 2517 	dec	sp
      003525 15 81            [12] 2518 	dec	sp
      003527 15 81            [12] 2519 	dec	sp
      003529 EE               [12] 2520 	mov	a,r6
      00352A 4F               [12] 2521 	orl	a,r7
      00352B 70 58            [24] 2522 	jnz	00116$
                                   2523 ;	calc.c:174: (void)stack_push(&ctx->s, d0);
      00352D E5 08            [12] 2524 	mov	a,_bp
      00352F 24 04            [12] 2525 	add	a,#0x04
      003531 F8               [12] 2526 	mov	r0,a
      003532 74 09            [12] 2527 	mov	a,#0x09
      003534 26               [12] 2528 	add	a,@r0
      003535 FD               [12] 2529 	mov	r5,a
      003536 E4               [12] 2530 	clr	a
      003537 08               [12] 2531 	inc	r0
      003538 36               [12] 2532 	addc	a,@r0
      003539 FE               [12] 2533 	mov	r6,a
      00353A 08               [12] 2534 	inc	r0
      00353B 86 07            [24] 2535 	mov	ar7,@r0
      00353D E5 08            [12] 2536 	mov	a,_bp
      00353F 24 07            [12] 2537 	add	a,#0x07
      003541 F8               [12] 2538 	mov	r0,a
      003542 E6               [12] 2539 	mov	a,@r0
      003543 C0 E0            [24] 2540 	push	acc
      003545 08               [12] 2541 	inc	r0
      003546 E6               [12] 2542 	mov	a,@r0
      003547 C0 E0            [24] 2543 	push	acc
      003549 08               [12] 2544 	inc	r0
      00354A E6               [12] 2545 	mov	a,@r0
      00354B C0 E0            [24] 2546 	push	acc
      00354D 08               [12] 2547 	inc	r0
      00354E E6               [12] 2548 	mov	a,@r0
      00354F C0 E0            [24] 2549 	push	acc
      003551 8D 82            [24] 2550 	mov	dpl,r5
      003553 8E 83            [24] 2551 	mov	dph,r6
      003555 8F F0            [24] 2552 	mov	b,r7
      003557 12 26 B5         [24] 2553 	lcall	_stack_push
      00355A E5 81            [12] 2554 	mov	a,sp
      00355C 24 FC            [12] 2555 	add	a,#0xfc
      00355E F5 81            [12] 2556 	mov	sp,a
                                   2557 ;	calc.c:175: printstr("\r\nstack underflow\r\n");
      003560 7D 82            [12] 2558 	mov	r5,#___str_8
      003562 7E 6A            [12] 2559 	mov	r6,#(___str_8 >> 8)
      003564 7F 80            [12] 2560 	mov	r7,#0x80
                                   2561 ;	calc.c:50: return;
      003566                       2562 00298$:
                                   2563 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003566 8D 82            [24] 2564 	mov	dpl,r5
      003568 8E 83            [24] 2565 	mov	dph,r6
      00356A 8F F0            [24] 2566 	mov	b,r7
      00356C 12 51 C9         [24] 2567 	lcall	__gptrget
      00356F FC               [12] 2568 	mov	r4,a
      003570 70 03            [24] 2569 	jnz	00879$
      003572 02 42 1A         [24] 2570 	ljmp	00188$
      003575                       2571 00879$:
      003575 7B 00            [12] 2572 	mov	r3,#0x00
      003577 8C 82            [24] 2573 	mov	dpl,r4
      003579 8B 83            [24] 2574 	mov	dph,r3
      00357B 12 29 C0         [24] 2575 	lcall	_putchar
      00357E 0D               [12] 2576 	inc	r5
                                   2577 ;	calc.c:175: printstr("\r\nstack underflow\r\n");
      00357F BD 00 E4         [24] 2578 	cjne	r5,#0x00,00298$
      003582 0E               [12] 2579 	inc	r6
      003583 80 E1            [24] 2580 	sjmp	00298$
      003585                       2581 00116$:
                                   2582 ;	calc.c:177: (void)stack_push(&ctx->s, d0);
      003585 E5 08            [12] 2583 	mov	a,_bp
      003587 24 04            [12] 2584 	add	a,#0x04
      003589 F8               [12] 2585 	mov	r0,a
      00358A 74 09            [12] 2586 	mov	a,#0x09
      00358C 26               [12] 2587 	add	a,@r0
      00358D FD               [12] 2588 	mov	r5,a
      00358E E4               [12] 2589 	clr	a
      00358F 08               [12] 2590 	inc	r0
      003590 36               [12] 2591 	addc	a,@r0
      003591 FE               [12] 2592 	mov	r6,a
      003592 08               [12] 2593 	inc	r0
      003593 86 07            [24] 2594 	mov	ar7,@r0
      003595 E5 08            [12] 2595 	mov	a,_bp
      003597 24 07            [12] 2596 	add	a,#0x07
      003599 F8               [12] 2597 	mov	r0,a
      00359A E6               [12] 2598 	mov	a,@r0
      00359B C0 E0            [24] 2599 	push	acc
      00359D 08               [12] 2600 	inc	r0
      00359E E6               [12] 2601 	mov	a,@r0
      00359F C0 E0            [24] 2602 	push	acc
      0035A1 08               [12] 2603 	inc	r0
      0035A2 E6               [12] 2604 	mov	a,@r0
      0035A3 C0 E0            [24] 2605 	push	acc
      0035A5 08               [12] 2606 	inc	r0
      0035A6 E6               [12] 2607 	mov	a,@r0
      0035A7 C0 E0            [24] 2608 	push	acc
      0035A9 8D 82            [24] 2609 	mov	dpl,r5
      0035AB 8E 83            [24] 2610 	mov	dph,r6
      0035AD 8F F0            [24] 2611 	mov	b,r7
      0035AF 12 26 B5         [24] 2612 	lcall	_stack_push
      0035B2 E5 81            [12] 2613 	mov	a,sp
      0035B4 24 FC            [12] 2614 	add	a,#0xfc
      0035B6 F5 81            [12] 2615 	mov	sp,a
                                   2616 ;	calc.c:178: (void)stack_push(&ctx->s, d1);
      0035B8 E5 08            [12] 2617 	mov	a,_bp
      0035BA 24 04            [12] 2618 	add	a,#0x04
      0035BC F8               [12] 2619 	mov	r0,a
      0035BD 74 09            [12] 2620 	mov	a,#0x09
      0035BF 26               [12] 2621 	add	a,@r0
      0035C0 FD               [12] 2622 	mov	r5,a
      0035C1 E4               [12] 2623 	clr	a
      0035C2 08               [12] 2624 	inc	r0
      0035C3 36               [12] 2625 	addc	a,@r0
      0035C4 FE               [12] 2626 	mov	r6,a
      0035C5 08               [12] 2627 	inc	r0
      0035C6 86 07            [24] 2628 	mov	ar7,@r0
      0035C8 E5 08            [12] 2629 	mov	a,_bp
      0035CA 24 0B            [12] 2630 	add	a,#0x0b
      0035CC F8               [12] 2631 	mov	r0,a
      0035CD E6               [12] 2632 	mov	a,@r0
      0035CE C0 E0            [24] 2633 	push	acc
      0035D0 08               [12] 2634 	inc	r0
      0035D1 E6               [12] 2635 	mov	a,@r0
      0035D2 C0 E0            [24] 2636 	push	acc
      0035D4 08               [12] 2637 	inc	r0
      0035D5 E6               [12] 2638 	mov	a,@r0
      0035D6 C0 E0            [24] 2639 	push	acc
      0035D8 08               [12] 2640 	inc	r0
      0035D9 E6               [12] 2641 	mov	a,@r0
      0035DA C0 E0            [24] 2642 	push	acc
      0035DC 8D 82            [24] 2643 	mov	dpl,r5
      0035DE 8E 83            [24] 2644 	mov	dph,r6
      0035E0 8F F0            [24] 2645 	mov	b,r7
      0035E2 12 26 B5         [24] 2646 	lcall	_stack_push
      0035E5 E5 81            [12] 2647 	mov	a,sp
      0035E7 24 FC            [12] 2648 	add	a,#0xfc
      0035E9 F5 81            [12] 2649 	mov	sp,a
                                   2650 ;	calc.c:180: break;
      0035EB 02 42 1A         [24] 2651 	ljmp	00188$
                                   2652 ;	calc.c:181: case '+':
      0035EE                       2653 00121$:
                                   2654 ;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0035EE E5 08            [12] 2655 	mov	a,_bp
      0035F0 24 07            [12] 2656 	add	a,#0x07
      0035F2 FF               [12] 2657 	mov	r7,a
      0035F3 7E 00            [12] 2658 	mov	r6,#0x00
      0035F5 7D 40            [12] 2659 	mov	r5,#0x40
      0035F7 E5 08            [12] 2660 	mov	a,_bp
      0035F9 24 04            [12] 2661 	add	a,#0x04
      0035FB F8               [12] 2662 	mov	r0,a
      0035FC 74 09            [12] 2663 	mov	a,#0x09
      0035FE 26               [12] 2664 	add	a,@r0
      0035FF FA               [12] 2665 	mov	r2,a
      003600 E4               [12] 2666 	clr	a
      003601 08               [12] 2667 	inc	r0
      003602 36               [12] 2668 	addc	a,@r0
      003603 FB               [12] 2669 	mov	r3,a
      003604 08               [12] 2670 	inc	r0
      003605 86 04            [24] 2671 	mov	ar4,@r0
      003607 C0 07            [24] 2672 	push	ar7
      003609 C0 06            [24] 2673 	push	ar6
      00360B C0 05            [24] 2674 	push	ar5
      00360D 8A 82            [24] 2675 	mov	dpl,r2
      00360F 8B 83            [24] 2676 	mov	dph,r3
      003611 8C F0            [24] 2677 	mov	b,r4
      003613 12 27 7F         [24] 2678 	lcall	_stack_pop
      003616 AE 82            [24] 2679 	mov	r6,dpl
      003618 AF 83            [24] 2680 	mov	r7,dph
      00361A 15 81            [12] 2681 	dec	sp
      00361C 15 81            [12] 2682 	dec	sp
      00361E 15 81            [12] 2683 	dec	sp
      003620 EE               [12] 2684 	mov	a,r6
      003621 4F               [12] 2685 	orl	a,r7
      003622 70 25            [24] 2686 	jnz	00126$
      003624 7D 82            [12] 2687 	mov	r5,#___str_8
      003626 7E 6A            [12] 2688 	mov	r6,#(___str_8 >> 8)
      003628 7F 80            [12] 2689 	mov	r7,#0x80
                                   2690 ;	calc.c:50: return;
      00362A                       2691 00301$:
                                   2692 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00362A 8D 82            [24] 2693 	mov	dpl,r5
      00362C 8E 83            [24] 2694 	mov	dph,r6
      00362E 8F F0            [24] 2695 	mov	b,r7
      003630 12 51 C9         [24] 2696 	lcall	__gptrget
      003633 FC               [12] 2697 	mov	r4,a
      003634 70 03            [24] 2698 	jnz	00882$
      003636 02 42 1A         [24] 2699 	ljmp	00188$
      003639                       2700 00882$:
      003639 7B 00            [12] 2701 	mov	r3,#0x00
      00363B 8C 82            [24] 2702 	mov	dpl,r4
      00363D 8B 83            [24] 2703 	mov	dph,r3
      00363F 12 29 C0         [24] 2704 	lcall	_putchar
      003642 0D               [12] 2705 	inc	r5
                                   2706 ;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003643 BD 00 E4         [24] 2707 	cjne	r5,#0x00,00301$
      003646 0E               [12] 2708 	inc	r6
      003647 80 E1            [24] 2709 	sjmp	00301$
      003649                       2710 00126$:
                                   2711 ;	calc.c:183: else if (!stack_pop(&ctx->s, &d1)) {
      003649 E5 08            [12] 2712 	mov	a,_bp
      00364B 24 0B            [12] 2713 	add	a,#0x0b
      00364D FF               [12] 2714 	mov	r7,a
      00364E 7E 00            [12] 2715 	mov	r6,#0x00
      003650 7D 40            [12] 2716 	mov	r5,#0x40
      003652 E5 08            [12] 2717 	mov	a,_bp
      003654 24 04            [12] 2718 	add	a,#0x04
      003656 F8               [12] 2719 	mov	r0,a
      003657 74 09            [12] 2720 	mov	a,#0x09
      003659 26               [12] 2721 	add	a,@r0
      00365A FA               [12] 2722 	mov	r2,a
      00365B E4               [12] 2723 	clr	a
      00365C 08               [12] 2724 	inc	r0
      00365D 36               [12] 2725 	addc	a,@r0
      00365E FB               [12] 2726 	mov	r3,a
      00365F 08               [12] 2727 	inc	r0
      003660 86 04            [24] 2728 	mov	ar4,@r0
      003662 C0 07            [24] 2729 	push	ar7
      003664 C0 06            [24] 2730 	push	ar6
      003666 C0 05            [24] 2731 	push	ar5
      003668 8A 82            [24] 2732 	mov	dpl,r2
      00366A 8B 83            [24] 2733 	mov	dph,r3
      00366C 8C F0            [24] 2734 	mov	b,r4
      00366E 12 27 7F         [24] 2735 	lcall	_stack_pop
      003671 AE 82            [24] 2736 	mov	r6,dpl
      003673 AF 83            [24] 2737 	mov	r7,dph
      003675 15 81            [12] 2738 	dec	sp
      003677 15 81            [12] 2739 	dec	sp
      003679 15 81            [12] 2740 	dec	sp
      00367B EE               [12] 2741 	mov	a,r6
      00367C 4F               [12] 2742 	orl	a,r7
      00367D 70 58            [24] 2743 	jnz	00123$
                                   2744 ;	calc.c:184: (void)stack_push(&ctx->s, d0);
      00367F E5 08            [12] 2745 	mov	a,_bp
      003681 24 04            [12] 2746 	add	a,#0x04
      003683 F8               [12] 2747 	mov	r0,a
      003684 74 09            [12] 2748 	mov	a,#0x09
      003686 26               [12] 2749 	add	a,@r0
      003687 FD               [12] 2750 	mov	r5,a
      003688 E4               [12] 2751 	clr	a
      003689 08               [12] 2752 	inc	r0
      00368A 36               [12] 2753 	addc	a,@r0
      00368B FE               [12] 2754 	mov	r6,a
      00368C 08               [12] 2755 	inc	r0
      00368D 86 07            [24] 2756 	mov	ar7,@r0
      00368F E5 08            [12] 2757 	mov	a,_bp
      003691 24 07            [12] 2758 	add	a,#0x07
      003693 F8               [12] 2759 	mov	r0,a
      003694 E6               [12] 2760 	mov	a,@r0
      003695 C0 E0            [24] 2761 	push	acc
      003697 08               [12] 2762 	inc	r0
      003698 E6               [12] 2763 	mov	a,@r0
      003699 C0 E0            [24] 2764 	push	acc
      00369B 08               [12] 2765 	inc	r0
      00369C E6               [12] 2766 	mov	a,@r0
      00369D C0 E0            [24] 2767 	push	acc
      00369F 08               [12] 2768 	inc	r0
      0036A0 E6               [12] 2769 	mov	a,@r0
      0036A1 C0 E0            [24] 2770 	push	acc
      0036A3 8D 82            [24] 2771 	mov	dpl,r5
      0036A5 8E 83            [24] 2772 	mov	dph,r6
      0036A7 8F F0            [24] 2773 	mov	b,r7
      0036A9 12 26 B5         [24] 2774 	lcall	_stack_push
      0036AC E5 81            [12] 2775 	mov	a,sp
      0036AE 24 FC            [12] 2776 	add	a,#0xfc
      0036B0 F5 81            [12] 2777 	mov	sp,a
                                   2778 ;	calc.c:185: printstr("\r\nstack underflow\r\n");
      0036B2 7D 82            [12] 2779 	mov	r5,#___str_8
      0036B4 7E 6A            [12] 2780 	mov	r6,#(___str_8 >> 8)
      0036B6 7F 80            [12] 2781 	mov	r7,#0x80
                                   2782 ;	calc.c:50: return;
      0036B8                       2783 00304$:
                                   2784 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0036B8 8D 82            [24] 2785 	mov	dpl,r5
      0036BA 8E 83            [24] 2786 	mov	dph,r6
      0036BC 8F F0            [24] 2787 	mov	b,r7
      0036BE 12 51 C9         [24] 2788 	lcall	__gptrget
      0036C1 FC               [12] 2789 	mov	r4,a
      0036C2 70 03            [24] 2790 	jnz	00885$
      0036C4 02 42 1A         [24] 2791 	ljmp	00188$
      0036C7                       2792 00885$:
      0036C7 7B 00            [12] 2793 	mov	r3,#0x00
      0036C9 8C 82            [24] 2794 	mov	dpl,r4
      0036CB 8B 83            [24] 2795 	mov	dph,r3
      0036CD 12 29 C0         [24] 2796 	lcall	_putchar
      0036D0 0D               [12] 2797 	inc	r5
                                   2798 ;	calc.c:185: printstr("\r\nstack underflow\r\n");
      0036D1 BD 00 E4         [24] 2799 	cjne	r5,#0x00,00304$
      0036D4 0E               [12] 2800 	inc	r6
      0036D5 80 E1            [24] 2801 	sjmp	00304$
      0036D7                       2802 00123$:
                                   2803 ;	calc.c:187: d1 += d0;
      0036D7 E5 08            [12] 2804 	mov	a,_bp
      0036D9 24 0B            [12] 2805 	add	a,#0x0b
      0036DB F8               [12] 2806 	mov	r0,a
      0036DC E5 08            [12] 2807 	mov	a,_bp
      0036DE 24 07            [12] 2808 	add	a,#0x07
      0036E0 F9               [12] 2809 	mov	r1,a
      0036E1 E7               [12] 2810 	mov	a,@r1
      0036E2 26               [12] 2811 	add	a,@r0
      0036E3 F6               [12] 2812 	mov	@r0,a
      0036E4 09               [12] 2813 	inc	r1
      0036E5 E7               [12] 2814 	mov	a,@r1
      0036E6 08               [12] 2815 	inc	r0
      0036E7 36               [12] 2816 	addc	a,@r0
      0036E8 F6               [12] 2817 	mov	@r0,a
      0036E9 09               [12] 2818 	inc	r1
      0036EA E7               [12] 2819 	mov	a,@r1
      0036EB 08               [12] 2820 	inc	r0
      0036EC 36               [12] 2821 	addc	a,@r0
      0036ED F6               [12] 2822 	mov	@r0,a
      0036EE 09               [12] 2823 	inc	r1
      0036EF E7               [12] 2824 	mov	a,@r1
      0036F0 08               [12] 2825 	inc	r0
      0036F1 36               [12] 2826 	addc	a,@r0
      0036F2 F6               [12] 2827 	mov	@r0,a
                                   2828 ;	calc.c:188: (void)stack_push(&ctx->s, d1);
      0036F3 E5 08            [12] 2829 	mov	a,_bp
      0036F5 24 04            [12] 2830 	add	a,#0x04
      0036F7 F8               [12] 2831 	mov	r0,a
      0036F8 74 09            [12] 2832 	mov	a,#0x09
      0036FA 26               [12] 2833 	add	a,@r0
      0036FB FD               [12] 2834 	mov	r5,a
      0036FC E4               [12] 2835 	clr	a
      0036FD 08               [12] 2836 	inc	r0
      0036FE 36               [12] 2837 	addc	a,@r0
      0036FF FE               [12] 2838 	mov	r6,a
      003700 08               [12] 2839 	inc	r0
      003701 86 07            [24] 2840 	mov	ar7,@r0
      003703 E5 08            [12] 2841 	mov	a,_bp
      003705 24 0B            [12] 2842 	add	a,#0x0b
      003707 F8               [12] 2843 	mov	r0,a
      003708 E6               [12] 2844 	mov	a,@r0
      003709 C0 E0            [24] 2845 	push	acc
      00370B 08               [12] 2846 	inc	r0
      00370C E6               [12] 2847 	mov	a,@r0
      00370D C0 E0            [24] 2848 	push	acc
      00370F 08               [12] 2849 	inc	r0
      003710 E6               [12] 2850 	mov	a,@r0
      003711 C0 E0            [24] 2851 	push	acc
      003713 08               [12] 2852 	inc	r0
      003714 E6               [12] 2853 	mov	a,@r0
      003715 C0 E0            [24] 2854 	push	acc
      003717 8D 82            [24] 2855 	mov	dpl,r5
      003719 8E 83            [24] 2856 	mov	dph,r6
      00371B 8F F0            [24] 2857 	mov	b,r7
      00371D 12 26 B5         [24] 2858 	lcall	_stack_push
      003720 E5 81            [12] 2859 	mov	a,sp
      003722 24 FC            [12] 2860 	add	a,#0xfc
      003724 F5 81            [12] 2861 	mov	sp,a
                                   2862 ;	calc.c:190: break;
      003726 02 42 1A         [24] 2863 	ljmp	00188$
                                   2864 ;	calc.c:191: case '-':
      003729                       2865 00128$:
                                   2866 ;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003729 E5 08            [12] 2867 	mov	a,_bp
      00372B 24 07            [12] 2868 	add	a,#0x07
      00372D FF               [12] 2869 	mov	r7,a
      00372E 7E 00            [12] 2870 	mov	r6,#0x00
      003730 7D 40            [12] 2871 	mov	r5,#0x40
      003732 E5 08            [12] 2872 	mov	a,_bp
      003734 24 04            [12] 2873 	add	a,#0x04
      003736 F8               [12] 2874 	mov	r0,a
      003737 74 09            [12] 2875 	mov	a,#0x09
      003739 26               [12] 2876 	add	a,@r0
      00373A FA               [12] 2877 	mov	r2,a
      00373B E4               [12] 2878 	clr	a
      00373C 08               [12] 2879 	inc	r0
      00373D 36               [12] 2880 	addc	a,@r0
      00373E FB               [12] 2881 	mov	r3,a
      00373F 08               [12] 2882 	inc	r0
      003740 86 04            [24] 2883 	mov	ar4,@r0
      003742 C0 07            [24] 2884 	push	ar7
      003744 C0 06            [24] 2885 	push	ar6
      003746 C0 05            [24] 2886 	push	ar5
      003748 8A 82            [24] 2887 	mov	dpl,r2
      00374A 8B 83            [24] 2888 	mov	dph,r3
      00374C 8C F0            [24] 2889 	mov	b,r4
      00374E 12 27 7F         [24] 2890 	lcall	_stack_pop
      003751 AE 82            [24] 2891 	mov	r6,dpl
      003753 AF 83            [24] 2892 	mov	r7,dph
      003755 15 81            [12] 2893 	dec	sp
      003757 15 81            [12] 2894 	dec	sp
      003759 15 81            [12] 2895 	dec	sp
      00375B EE               [12] 2896 	mov	a,r6
      00375C 4F               [12] 2897 	orl	a,r7
      00375D 70 25            [24] 2898 	jnz	00133$
      00375F 7D 82            [12] 2899 	mov	r5,#___str_8
      003761 7E 6A            [12] 2900 	mov	r6,#(___str_8 >> 8)
      003763 7F 80            [12] 2901 	mov	r7,#0x80
                                   2902 ;	calc.c:50: return;
      003765                       2903 00307$:
                                   2904 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003765 8D 82            [24] 2905 	mov	dpl,r5
      003767 8E 83            [24] 2906 	mov	dph,r6
      003769 8F F0            [24] 2907 	mov	b,r7
      00376B 12 51 C9         [24] 2908 	lcall	__gptrget
      00376E FC               [12] 2909 	mov	r4,a
      00376F 70 03            [24] 2910 	jnz	00888$
      003771 02 42 1A         [24] 2911 	ljmp	00188$
      003774                       2912 00888$:
      003774 7B 00            [12] 2913 	mov	r3,#0x00
      003776 8C 82            [24] 2914 	mov	dpl,r4
      003778 8B 83            [24] 2915 	mov	dph,r3
      00377A 12 29 C0         [24] 2916 	lcall	_putchar
      00377D 0D               [12] 2917 	inc	r5
                                   2918 ;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00377E BD 00 E4         [24] 2919 	cjne	r5,#0x00,00307$
      003781 0E               [12] 2920 	inc	r6
      003782 80 E1            [24] 2921 	sjmp	00307$
      003784                       2922 00133$:
                                   2923 ;	calc.c:193: else if (!stack_pop(&ctx->s, &d1)) {
      003784 E5 08            [12] 2924 	mov	a,_bp
      003786 24 0B            [12] 2925 	add	a,#0x0b
      003788 FF               [12] 2926 	mov	r7,a
      003789 7E 00            [12] 2927 	mov	r6,#0x00
      00378B 7D 40            [12] 2928 	mov	r5,#0x40
      00378D E5 08            [12] 2929 	mov	a,_bp
      00378F 24 04            [12] 2930 	add	a,#0x04
      003791 F8               [12] 2931 	mov	r0,a
      003792 74 09            [12] 2932 	mov	a,#0x09
      003794 26               [12] 2933 	add	a,@r0
      003795 FA               [12] 2934 	mov	r2,a
      003796 E4               [12] 2935 	clr	a
      003797 08               [12] 2936 	inc	r0
      003798 36               [12] 2937 	addc	a,@r0
      003799 FB               [12] 2938 	mov	r3,a
      00379A 08               [12] 2939 	inc	r0
      00379B 86 04            [24] 2940 	mov	ar4,@r0
      00379D C0 07            [24] 2941 	push	ar7
      00379F C0 06            [24] 2942 	push	ar6
      0037A1 C0 05            [24] 2943 	push	ar5
      0037A3 8A 82            [24] 2944 	mov	dpl,r2
      0037A5 8B 83            [24] 2945 	mov	dph,r3
      0037A7 8C F0            [24] 2946 	mov	b,r4
      0037A9 12 27 7F         [24] 2947 	lcall	_stack_pop
      0037AC AE 82            [24] 2948 	mov	r6,dpl
      0037AE AF 83            [24] 2949 	mov	r7,dph
      0037B0 15 81            [12] 2950 	dec	sp
      0037B2 15 81            [12] 2951 	dec	sp
      0037B4 15 81            [12] 2952 	dec	sp
      0037B6 EE               [12] 2953 	mov	a,r6
      0037B7 4F               [12] 2954 	orl	a,r7
      0037B8 70 58            [24] 2955 	jnz	00130$
                                   2956 ;	calc.c:194: (void)stack_push(&ctx->s, d0);
      0037BA E5 08            [12] 2957 	mov	a,_bp
      0037BC 24 04            [12] 2958 	add	a,#0x04
      0037BE F8               [12] 2959 	mov	r0,a
      0037BF 74 09            [12] 2960 	mov	a,#0x09
      0037C1 26               [12] 2961 	add	a,@r0
      0037C2 FD               [12] 2962 	mov	r5,a
      0037C3 E4               [12] 2963 	clr	a
      0037C4 08               [12] 2964 	inc	r0
      0037C5 36               [12] 2965 	addc	a,@r0
      0037C6 FE               [12] 2966 	mov	r6,a
      0037C7 08               [12] 2967 	inc	r0
      0037C8 86 07            [24] 2968 	mov	ar7,@r0
      0037CA E5 08            [12] 2969 	mov	a,_bp
      0037CC 24 07            [12] 2970 	add	a,#0x07
      0037CE F8               [12] 2971 	mov	r0,a
      0037CF E6               [12] 2972 	mov	a,@r0
      0037D0 C0 E0            [24] 2973 	push	acc
      0037D2 08               [12] 2974 	inc	r0
      0037D3 E6               [12] 2975 	mov	a,@r0
      0037D4 C0 E0            [24] 2976 	push	acc
      0037D6 08               [12] 2977 	inc	r0
      0037D7 E6               [12] 2978 	mov	a,@r0
      0037D8 C0 E0            [24] 2979 	push	acc
      0037DA 08               [12] 2980 	inc	r0
      0037DB E6               [12] 2981 	mov	a,@r0
      0037DC C0 E0            [24] 2982 	push	acc
      0037DE 8D 82            [24] 2983 	mov	dpl,r5
      0037E0 8E 83            [24] 2984 	mov	dph,r6
      0037E2 8F F0            [24] 2985 	mov	b,r7
      0037E4 12 26 B5         [24] 2986 	lcall	_stack_push
      0037E7 E5 81            [12] 2987 	mov	a,sp
      0037E9 24 FC            [12] 2988 	add	a,#0xfc
      0037EB F5 81            [12] 2989 	mov	sp,a
                                   2990 ;	calc.c:195: printstr("\r\nstack underflow\r\n");
      0037ED 7D 82            [12] 2991 	mov	r5,#___str_8
      0037EF 7E 6A            [12] 2992 	mov	r6,#(___str_8 >> 8)
      0037F1 7F 80            [12] 2993 	mov	r7,#0x80
                                   2994 ;	calc.c:50: return;
      0037F3                       2995 00310$:
                                   2996 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0037F3 8D 82            [24] 2997 	mov	dpl,r5
      0037F5 8E 83            [24] 2998 	mov	dph,r6
      0037F7 8F F0            [24] 2999 	mov	b,r7
      0037F9 12 51 C9         [24] 3000 	lcall	__gptrget
      0037FC FC               [12] 3001 	mov	r4,a
      0037FD 70 03            [24] 3002 	jnz	00891$
      0037FF 02 42 1A         [24] 3003 	ljmp	00188$
      003802                       3004 00891$:
      003802 7B 00            [12] 3005 	mov	r3,#0x00
      003804 8C 82            [24] 3006 	mov	dpl,r4
      003806 8B 83            [24] 3007 	mov	dph,r3
      003808 12 29 C0         [24] 3008 	lcall	_putchar
      00380B 0D               [12] 3009 	inc	r5
                                   3010 ;	calc.c:195: printstr("\r\nstack underflow\r\n");
      00380C BD 00 E4         [24] 3011 	cjne	r5,#0x00,00310$
      00380F 0E               [12] 3012 	inc	r6
      003810 80 E1            [24] 3013 	sjmp	00310$
      003812                       3014 00130$:
                                   3015 ;	calc.c:197: d1 -= d0;
      003812 E5 08            [12] 3016 	mov	a,_bp
      003814 24 0B            [12] 3017 	add	a,#0x0b
      003816 F8               [12] 3018 	mov	r0,a
      003817 E5 08            [12] 3019 	mov	a,_bp
      003819 24 07            [12] 3020 	add	a,#0x07
      00381B F9               [12] 3021 	mov	r1,a
      00381C E6               [12] 3022 	mov	a,@r0
      00381D C3               [12] 3023 	clr	c
      00381E 97               [12] 3024 	subb	a,@r1
      00381F F6               [12] 3025 	mov	@r0,a
      003820 08               [12] 3026 	inc	r0
      003821 E6               [12] 3027 	mov	a,@r0
      003822 09               [12] 3028 	inc	r1
      003823 97               [12] 3029 	subb	a,@r1
      003824 F6               [12] 3030 	mov	@r0,a
      003825 08               [12] 3031 	inc	r0
      003826 E6               [12] 3032 	mov	a,@r0
      003827 09               [12] 3033 	inc	r1
      003828 97               [12] 3034 	subb	a,@r1
      003829 F6               [12] 3035 	mov	@r0,a
      00382A 08               [12] 3036 	inc	r0
      00382B E6               [12] 3037 	mov	a,@r0
      00382C 09               [12] 3038 	inc	r1
      00382D 97               [12] 3039 	subb	a,@r1
      00382E F6               [12] 3040 	mov	@r0,a
                                   3041 ;	calc.c:198: (void)stack_push(&ctx->s, d1);
      00382F E5 08            [12] 3042 	mov	a,_bp
      003831 24 04            [12] 3043 	add	a,#0x04
      003833 F8               [12] 3044 	mov	r0,a
      003834 74 09            [12] 3045 	mov	a,#0x09
      003836 26               [12] 3046 	add	a,@r0
      003837 FD               [12] 3047 	mov	r5,a
      003838 E4               [12] 3048 	clr	a
      003839 08               [12] 3049 	inc	r0
      00383A 36               [12] 3050 	addc	a,@r0
      00383B FE               [12] 3051 	mov	r6,a
      00383C 08               [12] 3052 	inc	r0
      00383D 86 07            [24] 3053 	mov	ar7,@r0
      00383F E5 08            [12] 3054 	mov	a,_bp
      003841 24 0B            [12] 3055 	add	a,#0x0b
      003843 F8               [12] 3056 	mov	r0,a
      003844 E6               [12] 3057 	mov	a,@r0
      003845 C0 E0            [24] 3058 	push	acc
      003847 08               [12] 3059 	inc	r0
      003848 E6               [12] 3060 	mov	a,@r0
      003849 C0 E0            [24] 3061 	push	acc
      00384B 08               [12] 3062 	inc	r0
      00384C E6               [12] 3063 	mov	a,@r0
      00384D C0 E0            [24] 3064 	push	acc
      00384F 08               [12] 3065 	inc	r0
      003850 E6               [12] 3066 	mov	a,@r0
      003851 C0 E0            [24] 3067 	push	acc
      003853 8D 82            [24] 3068 	mov	dpl,r5
      003855 8E 83            [24] 3069 	mov	dph,r6
      003857 8F F0            [24] 3070 	mov	b,r7
      003859 12 26 B5         [24] 3071 	lcall	_stack_push
      00385C E5 81            [12] 3072 	mov	a,sp
      00385E 24 FC            [12] 3073 	add	a,#0xfc
      003860 F5 81            [12] 3074 	mov	sp,a
                                   3075 ;	calc.c:200: break;
      003862 02 42 1A         [24] 3076 	ljmp	00188$
                                   3077 ;	calc.c:201: case '*':
      003865                       3078 00135$:
                                   3079 ;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003865 E5 08            [12] 3080 	mov	a,_bp
      003867 24 07            [12] 3081 	add	a,#0x07
      003869 FF               [12] 3082 	mov	r7,a
      00386A 7E 00            [12] 3083 	mov	r6,#0x00
      00386C 7D 40            [12] 3084 	mov	r5,#0x40
      00386E E5 08            [12] 3085 	mov	a,_bp
      003870 24 04            [12] 3086 	add	a,#0x04
      003872 F8               [12] 3087 	mov	r0,a
      003873 74 09            [12] 3088 	mov	a,#0x09
      003875 26               [12] 3089 	add	a,@r0
      003876 FA               [12] 3090 	mov	r2,a
      003877 E4               [12] 3091 	clr	a
      003878 08               [12] 3092 	inc	r0
      003879 36               [12] 3093 	addc	a,@r0
      00387A FB               [12] 3094 	mov	r3,a
      00387B 08               [12] 3095 	inc	r0
      00387C 86 04            [24] 3096 	mov	ar4,@r0
      00387E C0 07            [24] 3097 	push	ar7
      003880 C0 06            [24] 3098 	push	ar6
      003882 C0 05            [24] 3099 	push	ar5
      003884 8A 82            [24] 3100 	mov	dpl,r2
      003886 8B 83            [24] 3101 	mov	dph,r3
      003888 8C F0            [24] 3102 	mov	b,r4
      00388A 12 27 7F         [24] 3103 	lcall	_stack_pop
      00388D AE 82            [24] 3104 	mov	r6,dpl
      00388F AF 83            [24] 3105 	mov	r7,dph
      003891 15 81            [12] 3106 	dec	sp
      003893 15 81            [12] 3107 	dec	sp
      003895 15 81            [12] 3108 	dec	sp
      003897 EE               [12] 3109 	mov	a,r6
      003898 4F               [12] 3110 	orl	a,r7
      003899 70 25            [24] 3111 	jnz	00140$
      00389B 7D 82            [12] 3112 	mov	r5,#___str_8
      00389D 7E 6A            [12] 3113 	mov	r6,#(___str_8 >> 8)
      00389F 7F 80            [12] 3114 	mov	r7,#0x80
                                   3115 ;	calc.c:50: return;
      0038A1                       3116 00313$:
                                   3117 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0038A1 8D 82            [24] 3118 	mov	dpl,r5
      0038A3 8E 83            [24] 3119 	mov	dph,r6
      0038A5 8F F0            [24] 3120 	mov	b,r7
      0038A7 12 51 C9         [24] 3121 	lcall	__gptrget
      0038AA FC               [12] 3122 	mov	r4,a
      0038AB 70 03            [24] 3123 	jnz	00894$
      0038AD 02 42 1A         [24] 3124 	ljmp	00188$
      0038B0                       3125 00894$:
      0038B0 7B 00            [12] 3126 	mov	r3,#0x00
      0038B2 8C 82            [24] 3127 	mov	dpl,r4
      0038B4 8B 83            [24] 3128 	mov	dph,r3
      0038B6 12 29 C0         [24] 3129 	lcall	_putchar
      0038B9 0D               [12] 3130 	inc	r5
                                   3131 ;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0038BA BD 00 E4         [24] 3132 	cjne	r5,#0x00,00313$
      0038BD 0E               [12] 3133 	inc	r6
      0038BE 80 E1            [24] 3134 	sjmp	00313$
      0038C0                       3135 00140$:
                                   3136 ;	calc.c:203: else if (!stack_pop(&ctx->s, &d1)) {
      0038C0 E5 08            [12] 3137 	mov	a,_bp
      0038C2 24 0B            [12] 3138 	add	a,#0x0b
      0038C4 FF               [12] 3139 	mov	r7,a
      0038C5 7E 00            [12] 3140 	mov	r6,#0x00
      0038C7 7D 40            [12] 3141 	mov	r5,#0x40
      0038C9 E5 08            [12] 3142 	mov	a,_bp
      0038CB 24 04            [12] 3143 	add	a,#0x04
      0038CD F8               [12] 3144 	mov	r0,a
      0038CE 74 09            [12] 3145 	mov	a,#0x09
      0038D0 26               [12] 3146 	add	a,@r0
      0038D1 FA               [12] 3147 	mov	r2,a
      0038D2 E4               [12] 3148 	clr	a
      0038D3 08               [12] 3149 	inc	r0
      0038D4 36               [12] 3150 	addc	a,@r0
      0038D5 FB               [12] 3151 	mov	r3,a
      0038D6 08               [12] 3152 	inc	r0
      0038D7 86 04            [24] 3153 	mov	ar4,@r0
      0038D9 C0 07            [24] 3154 	push	ar7
      0038DB C0 06            [24] 3155 	push	ar6
      0038DD C0 05            [24] 3156 	push	ar5
      0038DF 8A 82            [24] 3157 	mov	dpl,r2
      0038E1 8B 83            [24] 3158 	mov	dph,r3
      0038E3 8C F0            [24] 3159 	mov	b,r4
      0038E5 12 27 7F         [24] 3160 	lcall	_stack_pop
      0038E8 AE 82            [24] 3161 	mov	r6,dpl
      0038EA AF 83            [24] 3162 	mov	r7,dph
      0038EC 15 81            [12] 3163 	dec	sp
      0038EE 15 81            [12] 3164 	dec	sp
      0038F0 15 81            [12] 3165 	dec	sp
      0038F2 EE               [12] 3166 	mov	a,r6
      0038F3 4F               [12] 3167 	orl	a,r7
      0038F4 70 58            [24] 3168 	jnz	00137$
                                   3169 ;	calc.c:204: (void)stack_push(&ctx->s, d0);
      0038F6 E5 08            [12] 3170 	mov	a,_bp
      0038F8 24 04            [12] 3171 	add	a,#0x04
      0038FA F8               [12] 3172 	mov	r0,a
      0038FB 74 09            [12] 3173 	mov	a,#0x09
      0038FD 26               [12] 3174 	add	a,@r0
      0038FE FD               [12] 3175 	mov	r5,a
      0038FF E4               [12] 3176 	clr	a
      003900 08               [12] 3177 	inc	r0
      003901 36               [12] 3178 	addc	a,@r0
      003902 FE               [12] 3179 	mov	r6,a
      003903 08               [12] 3180 	inc	r0
      003904 86 07            [24] 3181 	mov	ar7,@r0
      003906 E5 08            [12] 3182 	mov	a,_bp
      003908 24 07            [12] 3183 	add	a,#0x07
      00390A F8               [12] 3184 	mov	r0,a
      00390B E6               [12] 3185 	mov	a,@r0
      00390C C0 E0            [24] 3186 	push	acc
      00390E 08               [12] 3187 	inc	r0
      00390F E6               [12] 3188 	mov	a,@r0
      003910 C0 E0            [24] 3189 	push	acc
      003912 08               [12] 3190 	inc	r0
      003913 E6               [12] 3191 	mov	a,@r0
      003914 C0 E0            [24] 3192 	push	acc
      003916 08               [12] 3193 	inc	r0
      003917 E6               [12] 3194 	mov	a,@r0
      003918 C0 E0            [24] 3195 	push	acc
      00391A 8D 82            [24] 3196 	mov	dpl,r5
      00391C 8E 83            [24] 3197 	mov	dph,r6
      00391E 8F F0            [24] 3198 	mov	b,r7
      003920 12 26 B5         [24] 3199 	lcall	_stack_push
      003923 E5 81            [12] 3200 	mov	a,sp
      003925 24 FC            [12] 3201 	add	a,#0xfc
      003927 F5 81            [12] 3202 	mov	sp,a
                                   3203 ;	calc.c:205: printstr("\r\nstack underflow\r\n");
      003929 7D 82            [12] 3204 	mov	r5,#___str_8
      00392B 7E 6A            [12] 3205 	mov	r6,#(___str_8 >> 8)
      00392D 7F 80            [12] 3206 	mov	r7,#0x80
                                   3207 ;	calc.c:50: return;
      00392F                       3208 00316$:
                                   3209 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00392F 8D 82            [24] 3210 	mov	dpl,r5
      003931 8E 83            [24] 3211 	mov	dph,r6
      003933 8F F0            [24] 3212 	mov	b,r7
      003935 12 51 C9         [24] 3213 	lcall	__gptrget
      003938 FC               [12] 3214 	mov	r4,a
      003939 70 03            [24] 3215 	jnz	00897$
      00393B 02 42 1A         [24] 3216 	ljmp	00188$
      00393E                       3217 00897$:
      00393E 7B 00            [12] 3218 	mov	r3,#0x00
      003940 8C 82            [24] 3219 	mov	dpl,r4
      003942 8B 83            [24] 3220 	mov	dph,r3
      003944 12 29 C0         [24] 3221 	lcall	_putchar
      003947 0D               [12] 3222 	inc	r5
                                   3223 ;	calc.c:205: printstr("\r\nstack underflow\r\n");
      003948 BD 00 E4         [24] 3224 	cjne	r5,#0x00,00316$
      00394B 0E               [12] 3225 	inc	r6
      00394C 80 E1            [24] 3226 	sjmp	00316$
      00394E                       3227 00137$:
                                   3228 ;	calc.c:207: d1 *= d0;
      00394E E5 08            [12] 3229 	mov	a,_bp
      003950 24 07            [12] 3230 	add	a,#0x07
      003952 F8               [12] 3231 	mov	r0,a
      003953 E6               [12] 3232 	mov	a,@r0
      003954 C0 E0            [24] 3233 	push	acc
      003956 08               [12] 3234 	inc	r0
      003957 E6               [12] 3235 	mov	a,@r0
      003958 C0 E0            [24] 3236 	push	acc
      00395A 08               [12] 3237 	inc	r0
      00395B E6               [12] 3238 	mov	a,@r0
      00395C C0 E0            [24] 3239 	push	acc
      00395E 08               [12] 3240 	inc	r0
      00395F E6               [12] 3241 	mov	a,@r0
      003960 C0 E0            [24] 3242 	push	acc
      003962 E5 08            [12] 3243 	mov	a,_bp
      003964 24 0B            [12] 3244 	add	a,#0x0b
      003966 F8               [12] 3245 	mov	r0,a
      003967 86 82            [24] 3246 	mov	dpl,@r0
      003969 08               [12] 3247 	inc	r0
      00396A 86 83            [24] 3248 	mov	dph,@r0
      00396C 08               [12] 3249 	inc	r0
      00396D 86 F0            [24] 3250 	mov	b,@r0
      00396F 08               [12] 3251 	inc	r0
      003970 E6               [12] 3252 	mov	a,@r0
      003971 12 55 C2         [24] 3253 	lcall	__mullong
      003974 AC 82            [24] 3254 	mov	r4,dpl
      003976 AD 83            [24] 3255 	mov	r5,dph
      003978 AE F0            [24] 3256 	mov	r6,b
      00397A FF               [12] 3257 	mov	r7,a
      00397B E5 81            [12] 3258 	mov	a,sp
      00397D 24 FC            [12] 3259 	add	a,#0xfc
      00397F F5 81            [12] 3260 	mov	sp,a
      003981 E5 08            [12] 3261 	mov	a,_bp
      003983 24 0B            [12] 3262 	add	a,#0x0b
      003985 F8               [12] 3263 	mov	r0,a
      003986 A6 04            [24] 3264 	mov	@r0,ar4
      003988 08               [12] 3265 	inc	r0
      003989 A6 05            [24] 3266 	mov	@r0,ar5
      00398B 08               [12] 3267 	inc	r0
      00398C A6 06            [24] 3268 	mov	@r0,ar6
      00398E 08               [12] 3269 	inc	r0
      00398F A6 07            [24] 3270 	mov	@r0,ar7
                                   3271 ;	calc.c:208: (void)stack_push(&ctx->s, d1);
      003991 E5 08            [12] 3272 	mov	a,_bp
      003993 24 04            [12] 3273 	add	a,#0x04
      003995 F8               [12] 3274 	mov	r0,a
      003996 74 09            [12] 3275 	mov	a,#0x09
      003998 26               [12] 3276 	add	a,@r0
      003999 FD               [12] 3277 	mov	r5,a
      00399A E4               [12] 3278 	clr	a
      00399B 08               [12] 3279 	inc	r0
      00399C 36               [12] 3280 	addc	a,@r0
      00399D FE               [12] 3281 	mov	r6,a
      00399E 08               [12] 3282 	inc	r0
      00399F 86 07            [24] 3283 	mov	ar7,@r0
      0039A1 E5 08            [12] 3284 	mov	a,_bp
      0039A3 24 0B            [12] 3285 	add	a,#0x0b
      0039A5 F8               [12] 3286 	mov	r0,a
      0039A6 E6               [12] 3287 	mov	a,@r0
      0039A7 C0 E0            [24] 3288 	push	acc
      0039A9 08               [12] 3289 	inc	r0
      0039AA E6               [12] 3290 	mov	a,@r0
      0039AB C0 E0            [24] 3291 	push	acc
      0039AD 08               [12] 3292 	inc	r0
      0039AE E6               [12] 3293 	mov	a,@r0
      0039AF C0 E0            [24] 3294 	push	acc
      0039B1 08               [12] 3295 	inc	r0
      0039B2 E6               [12] 3296 	mov	a,@r0
      0039B3 C0 E0            [24] 3297 	push	acc
      0039B5 8D 82            [24] 3298 	mov	dpl,r5
      0039B7 8E 83            [24] 3299 	mov	dph,r6
      0039B9 8F F0            [24] 3300 	mov	b,r7
      0039BB 12 26 B5         [24] 3301 	lcall	_stack_push
      0039BE E5 81            [12] 3302 	mov	a,sp
      0039C0 24 FC            [12] 3303 	add	a,#0xfc
      0039C2 F5 81            [12] 3304 	mov	sp,a
                                   3305 ;	calc.c:210: break;
      0039C4 02 42 1A         [24] 3306 	ljmp	00188$
                                   3307 ;	calc.c:211: case '/':
      0039C7                       3308 00142$:
                                   3309 ;	calc.c:212: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0039C7 E5 08            [12] 3310 	mov	a,_bp
      0039C9 24 07            [12] 3311 	add	a,#0x07
      0039CB FF               [12] 3312 	mov	r7,a
      0039CC 7E 00            [12] 3313 	mov	r6,#0x00
      0039CE 7D 40            [12] 3314 	mov	r5,#0x40
      0039D0 E5 08            [12] 3315 	mov	a,_bp
      0039D2 24 04            [12] 3316 	add	a,#0x04
      0039D4 F8               [12] 3317 	mov	r0,a
      0039D5 74 09            [12] 3318 	mov	a,#0x09
      0039D7 26               [12] 3319 	add	a,@r0
      0039D8 FA               [12] 3320 	mov	r2,a
      0039D9 E4               [12] 3321 	clr	a
      0039DA 08               [12] 3322 	inc	r0
      0039DB 36               [12] 3323 	addc	a,@r0
      0039DC FB               [12] 3324 	mov	r3,a
      0039DD 08               [12] 3325 	inc	r0
      0039DE 86 04            [24] 3326 	mov	ar4,@r0
      0039E0 C0 07            [24] 3327 	push	ar7
      0039E2 C0 06            [24] 3328 	push	ar6
      0039E4 C0 05            [24] 3329 	push	ar5
      0039E6 8A 82            [24] 3330 	mov	dpl,r2
      0039E8 8B 83            [24] 3331 	mov	dph,r3
      0039EA 8C F0            [24] 3332 	mov	b,r4
      0039EC 12 27 7F         [24] 3333 	lcall	_stack_pop
      0039EF AE 82            [24] 3334 	mov	r6,dpl
      0039F1 AF 83            [24] 3335 	mov	r7,dph
      0039F3 15 81            [12] 3336 	dec	sp
      0039F5 15 81            [12] 3337 	dec	sp
      0039F7 15 81            [12] 3338 	dec	sp
      0039F9 EE               [12] 3339 	mov	a,r6
      0039FA 4F               [12] 3340 	orl	a,r7
      0039FB 70 25            [24] 3341 	jnz	00150$
      0039FD 7D 82            [12] 3342 	mov	r5,#___str_8
      0039FF 7E 6A            [12] 3343 	mov	r6,#(___str_8 >> 8)
      003A01 7F 80            [12] 3344 	mov	r7,#0x80
                                   3345 ;	calc.c:50: return;
      003A03                       3346 00319$:
                                   3347 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003A03 8D 82            [24] 3348 	mov	dpl,r5
      003A05 8E 83            [24] 3349 	mov	dph,r6
      003A07 8F F0            [24] 3350 	mov	b,r7
      003A09 12 51 C9         [24] 3351 	lcall	__gptrget
      003A0C FC               [12] 3352 	mov	r4,a
      003A0D 70 03            [24] 3353 	jnz	00900$
      003A0F 02 42 1A         [24] 3354 	ljmp	00188$
      003A12                       3355 00900$:
      003A12 7B 00            [12] 3356 	mov	r3,#0x00
      003A14 8C 82            [24] 3357 	mov	dpl,r4
      003A16 8B 83            [24] 3358 	mov	dph,r3
      003A18 12 29 C0         [24] 3359 	lcall	_putchar
      003A1B 0D               [12] 3360 	inc	r5
                                   3361 ;	calc.c:212: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003A1C BD 00 E4         [24] 3362 	cjne	r5,#0x00,00319$
      003A1F 0E               [12] 3363 	inc	r6
      003A20 80 E1            [24] 3364 	sjmp	00319$
      003A22                       3365 00150$:
                                   3366 ;	calc.c:213: else if (!stack_pop(&ctx->s, &d1)) {
      003A22 E5 08            [12] 3367 	mov	a,_bp
      003A24 24 0B            [12] 3368 	add	a,#0x0b
      003A26 FF               [12] 3369 	mov	r7,a
      003A27 7E 00            [12] 3370 	mov	r6,#0x00
      003A29 7D 40            [12] 3371 	mov	r5,#0x40
      003A2B E5 08            [12] 3372 	mov	a,_bp
      003A2D 24 04            [12] 3373 	add	a,#0x04
      003A2F F8               [12] 3374 	mov	r0,a
      003A30 74 09            [12] 3375 	mov	a,#0x09
      003A32 26               [12] 3376 	add	a,@r0
      003A33 FA               [12] 3377 	mov	r2,a
      003A34 E4               [12] 3378 	clr	a
      003A35 08               [12] 3379 	inc	r0
      003A36 36               [12] 3380 	addc	a,@r0
      003A37 FB               [12] 3381 	mov	r3,a
      003A38 08               [12] 3382 	inc	r0
      003A39 86 04            [24] 3383 	mov	ar4,@r0
      003A3B C0 07            [24] 3384 	push	ar7
      003A3D C0 06            [24] 3385 	push	ar6
      003A3F C0 05            [24] 3386 	push	ar5
      003A41 8A 82            [24] 3387 	mov	dpl,r2
      003A43 8B 83            [24] 3388 	mov	dph,r3
      003A45 8C F0            [24] 3389 	mov	b,r4
      003A47 12 27 7F         [24] 3390 	lcall	_stack_pop
      003A4A AE 82            [24] 3391 	mov	r6,dpl
      003A4C AF 83            [24] 3392 	mov	r7,dph
      003A4E 15 81            [12] 3393 	dec	sp
      003A50 15 81            [12] 3394 	dec	sp
      003A52 15 81            [12] 3395 	dec	sp
      003A54 EE               [12] 3396 	mov	a,r6
      003A55 4F               [12] 3397 	orl	a,r7
      003A56 70 58            [24] 3398 	jnz	00147$
                                   3399 ;	calc.c:214: (void)stack_push(&ctx->s, d0);
      003A58 E5 08            [12] 3400 	mov	a,_bp
      003A5A 24 04            [12] 3401 	add	a,#0x04
      003A5C F8               [12] 3402 	mov	r0,a
      003A5D 74 09            [12] 3403 	mov	a,#0x09
      003A5F 26               [12] 3404 	add	a,@r0
      003A60 FD               [12] 3405 	mov	r5,a
      003A61 E4               [12] 3406 	clr	a
      003A62 08               [12] 3407 	inc	r0
      003A63 36               [12] 3408 	addc	a,@r0
      003A64 FE               [12] 3409 	mov	r6,a
      003A65 08               [12] 3410 	inc	r0
      003A66 86 07            [24] 3411 	mov	ar7,@r0
      003A68 E5 08            [12] 3412 	mov	a,_bp
      003A6A 24 07            [12] 3413 	add	a,#0x07
      003A6C F8               [12] 3414 	mov	r0,a
      003A6D E6               [12] 3415 	mov	a,@r0
      003A6E C0 E0            [24] 3416 	push	acc
      003A70 08               [12] 3417 	inc	r0
      003A71 E6               [12] 3418 	mov	a,@r0
      003A72 C0 E0            [24] 3419 	push	acc
      003A74 08               [12] 3420 	inc	r0
      003A75 E6               [12] 3421 	mov	a,@r0
      003A76 C0 E0            [24] 3422 	push	acc
      003A78 08               [12] 3423 	inc	r0
      003A79 E6               [12] 3424 	mov	a,@r0
      003A7A C0 E0            [24] 3425 	push	acc
      003A7C 8D 82            [24] 3426 	mov	dpl,r5
      003A7E 8E 83            [24] 3427 	mov	dph,r6
      003A80 8F F0            [24] 3428 	mov	b,r7
      003A82 12 26 B5         [24] 3429 	lcall	_stack_push
      003A85 E5 81            [12] 3430 	mov	a,sp
      003A87 24 FC            [12] 3431 	add	a,#0xfc
      003A89 F5 81            [12] 3432 	mov	sp,a
                                   3433 ;	calc.c:215: printstr("\r\nstack underflow\r\n");
      003A8B 7D 82            [12] 3434 	mov	r5,#___str_8
      003A8D 7E 6A            [12] 3435 	mov	r6,#(___str_8 >> 8)
      003A8F 7F 80            [12] 3436 	mov	r7,#0x80
                                   3437 ;	calc.c:50: return;
      003A91                       3438 00322$:
                                   3439 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003A91 8D 82            [24] 3440 	mov	dpl,r5
      003A93 8E 83            [24] 3441 	mov	dph,r6
      003A95 8F F0            [24] 3442 	mov	b,r7
      003A97 12 51 C9         [24] 3443 	lcall	__gptrget
      003A9A FC               [12] 3444 	mov	r4,a
      003A9B 70 03            [24] 3445 	jnz	00903$
      003A9D 02 42 1A         [24] 3446 	ljmp	00188$
      003AA0                       3447 00903$:
      003AA0 7B 00            [12] 3448 	mov	r3,#0x00
      003AA2 8C 82            [24] 3449 	mov	dpl,r4
      003AA4 8B 83            [24] 3450 	mov	dph,r3
      003AA6 12 29 C0         [24] 3451 	lcall	_putchar
      003AA9 0D               [12] 3452 	inc	r5
                                   3453 ;	calc.c:215: printstr("\r\nstack underflow\r\n");
      003AAA BD 00 E4         [24] 3454 	cjne	r5,#0x00,00322$
      003AAD 0E               [12] 3455 	inc	r6
      003AAE 80 E1            [24] 3456 	sjmp	00322$
      003AB0                       3457 00147$:
                                   3458 ;	calc.c:216: } else if (!d0) {
      003AB0 E5 08            [12] 3459 	mov	a,_bp
      003AB2 24 07            [12] 3460 	add	a,#0x07
      003AB4 F8               [12] 3461 	mov	r0,a
      003AB5 E6               [12] 3462 	mov	a,@r0
      003AB6 08               [12] 3463 	inc	r0
      003AB7 46               [12] 3464 	orl	a,@r0
      003AB8 08               [12] 3465 	inc	r0
      003AB9 46               [12] 3466 	orl	a,@r0
      003ABA 08               [12] 3467 	inc	r0
      003ABB 46               [12] 3468 	orl	a,@r0
      003ABC 60 03            [24] 3469 	jz	00905$
      003ABE 02 3B 4C         [24] 3470 	ljmp	00144$
      003AC1                       3471 00905$:
                                   3472 ;	calc.c:217: (void)stack_push(&ctx->s, d1);
      003AC1 E5 08            [12] 3473 	mov	a,_bp
      003AC3 24 04            [12] 3474 	add	a,#0x04
      003AC5 F8               [12] 3475 	mov	r0,a
      003AC6 74 09            [12] 3476 	mov	a,#0x09
      003AC8 26               [12] 3477 	add	a,@r0
      003AC9 FD               [12] 3478 	mov	r5,a
      003ACA E4               [12] 3479 	clr	a
      003ACB 08               [12] 3480 	inc	r0
      003ACC 36               [12] 3481 	addc	a,@r0
      003ACD FE               [12] 3482 	mov	r6,a
      003ACE 08               [12] 3483 	inc	r0
      003ACF 86 07            [24] 3484 	mov	ar7,@r0
      003AD1 E5 08            [12] 3485 	mov	a,_bp
      003AD3 24 0B            [12] 3486 	add	a,#0x0b
      003AD5 F8               [12] 3487 	mov	r0,a
      003AD6 E6               [12] 3488 	mov	a,@r0
      003AD7 C0 E0            [24] 3489 	push	acc
      003AD9 08               [12] 3490 	inc	r0
      003ADA E6               [12] 3491 	mov	a,@r0
      003ADB C0 E0            [24] 3492 	push	acc
      003ADD 08               [12] 3493 	inc	r0
      003ADE E6               [12] 3494 	mov	a,@r0
      003ADF C0 E0            [24] 3495 	push	acc
      003AE1 08               [12] 3496 	inc	r0
      003AE2 E6               [12] 3497 	mov	a,@r0
      003AE3 C0 E0            [24] 3498 	push	acc
      003AE5 8D 82            [24] 3499 	mov	dpl,r5
      003AE7 8E 83            [24] 3500 	mov	dph,r6
      003AE9 8F F0            [24] 3501 	mov	b,r7
      003AEB 12 26 B5         [24] 3502 	lcall	_stack_push
      003AEE E5 81            [12] 3503 	mov	a,sp
      003AF0 24 FC            [12] 3504 	add	a,#0xfc
      003AF2 F5 81            [12] 3505 	mov	sp,a
                                   3506 ;	calc.c:218: (void)stack_push(&ctx->s, d0);			
      003AF4 E5 08            [12] 3507 	mov	a,_bp
      003AF6 24 04            [12] 3508 	add	a,#0x04
      003AF8 F8               [12] 3509 	mov	r0,a
      003AF9 74 09            [12] 3510 	mov	a,#0x09
      003AFB 26               [12] 3511 	add	a,@r0
      003AFC FD               [12] 3512 	mov	r5,a
      003AFD E4               [12] 3513 	clr	a
      003AFE 08               [12] 3514 	inc	r0
      003AFF 36               [12] 3515 	addc	a,@r0
      003B00 FE               [12] 3516 	mov	r6,a
      003B01 08               [12] 3517 	inc	r0
      003B02 86 07            [24] 3518 	mov	ar7,@r0
      003B04 E5 08            [12] 3519 	mov	a,_bp
      003B06 24 07            [12] 3520 	add	a,#0x07
      003B08 F8               [12] 3521 	mov	r0,a
      003B09 E6               [12] 3522 	mov	a,@r0
      003B0A C0 E0            [24] 3523 	push	acc
      003B0C 08               [12] 3524 	inc	r0
      003B0D E6               [12] 3525 	mov	a,@r0
      003B0E C0 E0            [24] 3526 	push	acc
      003B10 08               [12] 3527 	inc	r0
      003B11 E6               [12] 3528 	mov	a,@r0
      003B12 C0 E0            [24] 3529 	push	acc
      003B14 08               [12] 3530 	inc	r0
      003B15 E6               [12] 3531 	mov	a,@r0
      003B16 C0 E0            [24] 3532 	push	acc
      003B18 8D 82            [24] 3533 	mov	dpl,r5
      003B1A 8E 83            [24] 3534 	mov	dph,r6
      003B1C 8F F0            [24] 3535 	mov	b,r7
      003B1E 12 26 B5         [24] 3536 	lcall	_stack_push
      003B21 E5 81            [12] 3537 	mov	a,sp
      003B23 24 FC            [12] 3538 	add	a,#0xfc
      003B25 F5 81            [12] 3539 	mov	sp,a
                                   3540 ;	calc.c:219: printstr("\r\ndivision by zero\r\n");
      003B27 7D 96            [12] 3541 	mov	r5,#___str_9
      003B29 7E 6A            [12] 3542 	mov	r6,#(___str_9 >> 8)
      003B2B 7F 80            [12] 3543 	mov	r7,#0x80
                                   3544 ;	calc.c:50: return;
      003B2D                       3545 00325$:
                                   3546 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003B2D 8D 82            [24] 3547 	mov	dpl,r5
      003B2F 8E 83            [24] 3548 	mov	dph,r6
      003B31 8F F0            [24] 3549 	mov	b,r7
      003B33 12 51 C9         [24] 3550 	lcall	__gptrget
      003B36 FC               [12] 3551 	mov	r4,a
      003B37 70 03            [24] 3552 	jnz	00906$
      003B39 02 42 1A         [24] 3553 	ljmp	00188$
      003B3C                       3554 00906$:
      003B3C 7B 00            [12] 3555 	mov	r3,#0x00
      003B3E 8C 82            [24] 3556 	mov	dpl,r4
      003B40 8B 83            [24] 3557 	mov	dph,r3
      003B42 12 29 C0         [24] 3558 	lcall	_putchar
      003B45 0D               [12] 3559 	inc	r5
                                   3560 ;	calc.c:219: printstr("\r\ndivision by zero\r\n");
      003B46 BD 00 E4         [24] 3561 	cjne	r5,#0x00,00325$
      003B49 0E               [12] 3562 	inc	r6
      003B4A 80 E1            [24] 3563 	sjmp	00325$
      003B4C                       3564 00144$:
                                   3565 ;	calc.c:221: d1 /= d0;
      003B4C E5 08            [12] 3566 	mov	a,_bp
      003B4E 24 07            [12] 3567 	add	a,#0x07
      003B50 F8               [12] 3568 	mov	r0,a
      003B51 E6               [12] 3569 	mov	a,@r0
      003B52 C0 E0            [24] 3570 	push	acc
      003B54 08               [12] 3571 	inc	r0
      003B55 E6               [12] 3572 	mov	a,@r0
      003B56 C0 E0            [24] 3573 	push	acc
      003B58 08               [12] 3574 	inc	r0
      003B59 E6               [12] 3575 	mov	a,@r0
      003B5A C0 E0            [24] 3576 	push	acc
      003B5C 08               [12] 3577 	inc	r0
      003B5D E6               [12] 3578 	mov	a,@r0
      003B5E C0 E0            [24] 3579 	push	acc
      003B60 E5 08            [12] 3580 	mov	a,_bp
      003B62 24 0B            [12] 3581 	add	a,#0x0b
      003B64 F8               [12] 3582 	mov	r0,a
      003B65 86 82            [24] 3583 	mov	dpl,@r0
      003B67 08               [12] 3584 	inc	r0
      003B68 86 83            [24] 3585 	mov	dph,@r0
      003B6A 08               [12] 3586 	inc	r0
      003B6B 86 F0            [24] 3587 	mov	b,@r0
      003B6D 08               [12] 3588 	inc	r0
      003B6E E6               [12] 3589 	mov	a,@r0
      003B6F 12 4F C0         [24] 3590 	lcall	__divslong
      003B72 AC 82            [24] 3591 	mov	r4,dpl
      003B74 AD 83            [24] 3592 	mov	r5,dph
      003B76 AE F0            [24] 3593 	mov	r6,b
      003B78 FF               [12] 3594 	mov	r7,a
      003B79 E5 81            [12] 3595 	mov	a,sp
      003B7B 24 FC            [12] 3596 	add	a,#0xfc
      003B7D F5 81            [12] 3597 	mov	sp,a
      003B7F E5 08            [12] 3598 	mov	a,_bp
      003B81 24 0B            [12] 3599 	add	a,#0x0b
      003B83 F8               [12] 3600 	mov	r0,a
      003B84 A6 04            [24] 3601 	mov	@r0,ar4
      003B86 08               [12] 3602 	inc	r0
      003B87 A6 05            [24] 3603 	mov	@r0,ar5
      003B89 08               [12] 3604 	inc	r0
      003B8A A6 06            [24] 3605 	mov	@r0,ar6
      003B8C 08               [12] 3606 	inc	r0
      003B8D A6 07            [24] 3607 	mov	@r0,ar7
                                   3608 ;	calc.c:222: (void)stack_push(&ctx->s, d1);
      003B8F E5 08            [12] 3609 	mov	a,_bp
      003B91 24 04            [12] 3610 	add	a,#0x04
      003B93 F8               [12] 3611 	mov	r0,a
      003B94 74 09            [12] 3612 	mov	a,#0x09
      003B96 26               [12] 3613 	add	a,@r0
      003B97 FD               [12] 3614 	mov	r5,a
      003B98 E4               [12] 3615 	clr	a
      003B99 08               [12] 3616 	inc	r0
      003B9A 36               [12] 3617 	addc	a,@r0
      003B9B FE               [12] 3618 	mov	r6,a
      003B9C 08               [12] 3619 	inc	r0
      003B9D 86 07            [24] 3620 	mov	ar7,@r0
      003B9F E5 08            [12] 3621 	mov	a,_bp
      003BA1 24 0B            [12] 3622 	add	a,#0x0b
      003BA3 F8               [12] 3623 	mov	r0,a
      003BA4 E6               [12] 3624 	mov	a,@r0
      003BA5 C0 E0            [24] 3625 	push	acc
      003BA7 08               [12] 3626 	inc	r0
      003BA8 E6               [12] 3627 	mov	a,@r0
      003BA9 C0 E0            [24] 3628 	push	acc
      003BAB 08               [12] 3629 	inc	r0
      003BAC E6               [12] 3630 	mov	a,@r0
      003BAD C0 E0            [24] 3631 	push	acc
      003BAF 08               [12] 3632 	inc	r0
      003BB0 E6               [12] 3633 	mov	a,@r0
      003BB1 C0 E0            [24] 3634 	push	acc
      003BB3 8D 82            [24] 3635 	mov	dpl,r5
      003BB5 8E 83            [24] 3636 	mov	dph,r6
      003BB7 8F F0            [24] 3637 	mov	b,r7
      003BB9 12 26 B5         [24] 3638 	lcall	_stack_push
      003BBC E5 81            [12] 3639 	mov	a,sp
      003BBE 24 FC            [12] 3640 	add	a,#0xfc
      003BC0 F5 81            [12] 3641 	mov	sp,a
                                   3642 ;	calc.c:224: break;
      003BC2 02 42 1A         [24] 3643 	ljmp	00188$
                                   3644 ;	calc.c:225: case '%':
      003BC5                       3645 00152$:
                                   3646 ;	calc.c:226: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003BC5 E5 08            [12] 3647 	mov	a,_bp
      003BC7 24 07            [12] 3648 	add	a,#0x07
      003BC9 FF               [12] 3649 	mov	r7,a
      003BCA 7E 00            [12] 3650 	mov	r6,#0x00
      003BCC 7D 40            [12] 3651 	mov	r5,#0x40
      003BCE E5 08            [12] 3652 	mov	a,_bp
      003BD0 24 04            [12] 3653 	add	a,#0x04
      003BD2 F8               [12] 3654 	mov	r0,a
      003BD3 74 09            [12] 3655 	mov	a,#0x09
      003BD5 26               [12] 3656 	add	a,@r0
      003BD6 FA               [12] 3657 	mov	r2,a
      003BD7 E4               [12] 3658 	clr	a
      003BD8 08               [12] 3659 	inc	r0
      003BD9 36               [12] 3660 	addc	a,@r0
      003BDA FB               [12] 3661 	mov	r3,a
      003BDB 08               [12] 3662 	inc	r0
      003BDC 86 04            [24] 3663 	mov	ar4,@r0
      003BDE C0 07            [24] 3664 	push	ar7
      003BE0 C0 06            [24] 3665 	push	ar6
      003BE2 C0 05            [24] 3666 	push	ar5
      003BE4 8A 82            [24] 3667 	mov	dpl,r2
      003BE6 8B 83            [24] 3668 	mov	dph,r3
      003BE8 8C F0            [24] 3669 	mov	b,r4
      003BEA 12 27 7F         [24] 3670 	lcall	_stack_pop
      003BED AE 82            [24] 3671 	mov	r6,dpl
      003BEF AF 83            [24] 3672 	mov	r7,dph
      003BF1 15 81            [12] 3673 	dec	sp
      003BF3 15 81            [12] 3674 	dec	sp
      003BF5 15 81            [12] 3675 	dec	sp
      003BF7 EE               [12] 3676 	mov	a,r6
      003BF8 4F               [12] 3677 	orl	a,r7
      003BF9 70 25            [24] 3678 	jnz	00160$
      003BFB 7D 82            [12] 3679 	mov	r5,#___str_8
      003BFD 7E 6A            [12] 3680 	mov	r6,#(___str_8 >> 8)
      003BFF 7F 80            [12] 3681 	mov	r7,#0x80
                                   3682 ;	calc.c:50: return;
      003C01                       3683 00328$:
                                   3684 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003C01 8D 82            [24] 3685 	mov	dpl,r5
      003C03 8E 83            [24] 3686 	mov	dph,r6
      003C05 8F F0            [24] 3687 	mov	b,r7
      003C07 12 51 C9         [24] 3688 	lcall	__gptrget
      003C0A FC               [12] 3689 	mov	r4,a
      003C0B 70 03            [24] 3690 	jnz	00909$
      003C0D 02 42 1A         [24] 3691 	ljmp	00188$
      003C10                       3692 00909$:
      003C10 7B 00            [12] 3693 	mov	r3,#0x00
      003C12 8C 82            [24] 3694 	mov	dpl,r4
      003C14 8B 83            [24] 3695 	mov	dph,r3
      003C16 12 29 C0         [24] 3696 	lcall	_putchar
      003C19 0D               [12] 3697 	inc	r5
                                   3698 ;	calc.c:226: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003C1A BD 00 E4         [24] 3699 	cjne	r5,#0x00,00328$
      003C1D 0E               [12] 3700 	inc	r6
      003C1E 80 E1            [24] 3701 	sjmp	00328$
      003C20                       3702 00160$:
                                   3703 ;	calc.c:227: else if (!stack_pop(&ctx->s, &d1)) {
      003C20 E5 08            [12] 3704 	mov	a,_bp
      003C22 24 0B            [12] 3705 	add	a,#0x0b
      003C24 FF               [12] 3706 	mov	r7,a
      003C25 7E 00            [12] 3707 	mov	r6,#0x00
      003C27 7D 40            [12] 3708 	mov	r5,#0x40
      003C29 E5 08            [12] 3709 	mov	a,_bp
      003C2B 24 04            [12] 3710 	add	a,#0x04
      003C2D F8               [12] 3711 	mov	r0,a
      003C2E 74 09            [12] 3712 	mov	a,#0x09
      003C30 26               [12] 3713 	add	a,@r0
      003C31 FA               [12] 3714 	mov	r2,a
      003C32 E4               [12] 3715 	clr	a
      003C33 08               [12] 3716 	inc	r0
      003C34 36               [12] 3717 	addc	a,@r0
      003C35 FB               [12] 3718 	mov	r3,a
      003C36 08               [12] 3719 	inc	r0
      003C37 86 04            [24] 3720 	mov	ar4,@r0
      003C39 C0 07            [24] 3721 	push	ar7
      003C3B C0 06            [24] 3722 	push	ar6
      003C3D C0 05            [24] 3723 	push	ar5
      003C3F 8A 82            [24] 3724 	mov	dpl,r2
      003C41 8B 83            [24] 3725 	mov	dph,r3
      003C43 8C F0            [24] 3726 	mov	b,r4
      003C45 12 27 7F         [24] 3727 	lcall	_stack_pop
      003C48 AE 82            [24] 3728 	mov	r6,dpl
      003C4A AF 83            [24] 3729 	mov	r7,dph
      003C4C 15 81            [12] 3730 	dec	sp
      003C4E 15 81            [12] 3731 	dec	sp
      003C50 15 81            [12] 3732 	dec	sp
      003C52 EE               [12] 3733 	mov	a,r6
      003C53 4F               [12] 3734 	orl	a,r7
      003C54 70 58            [24] 3735 	jnz	00157$
                                   3736 ;	calc.c:228: (void)stack_push(&ctx->s, d0);
      003C56 E5 08            [12] 3737 	mov	a,_bp
      003C58 24 04            [12] 3738 	add	a,#0x04
      003C5A F8               [12] 3739 	mov	r0,a
      003C5B 74 09            [12] 3740 	mov	a,#0x09
      003C5D 26               [12] 3741 	add	a,@r0
      003C5E FD               [12] 3742 	mov	r5,a
      003C5F E4               [12] 3743 	clr	a
      003C60 08               [12] 3744 	inc	r0
      003C61 36               [12] 3745 	addc	a,@r0
      003C62 FE               [12] 3746 	mov	r6,a
      003C63 08               [12] 3747 	inc	r0
      003C64 86 07            [24] 3748 	mov	ar7,@r0
      003C66 E5 08            [12] 3749 	mov	a,_bp
      003C68 24 07            [12] 3750 	add	a,#0x07
      003C6A F8               [12] 3751 	mov	r0,a
      003C6B E6               [12] 3752 	mov	a,@r0
      003C6C C0 E0            [24] 3753 	push	acc
      003C6E 08               [12] 3754 	inc	r0
      003C6F E6               [12] 3755 	mov	a,@r0
      003C70 C0 E0            [24] 3756 	push	acc
      003C72 08               [12] 3757 	inc	r0
      003C73 E6               [12] 3758 	mov	a,@r0
      003C74 C0 E0            [24] 3759 	push	acc
      003C76 08               [12] 3760 	inc	r0
      003C77 E6               [12] 3761 	mov	a,@r0
      003C78 C0 E0            [24] 3762 	push	acc
      003C7A 8D 82            [24] 3763 	mov	dpl,r5
      003C7C 8E 83            [24] 3764 	mov	dph,r6
      003C7E 8F F0            [24] 3765 	mov	b,r7
      003C80 12 26 B5         [24] 3766 	lcall	_stack_push
      003C83 E5 81            [12] 3767 	mov	a,sp
      003C85 24 FC            [12] 3768 	add	a,#0xfc
      003C87 F5 81            [12] 3769 	mov	sp,a
                                   3770 ;	calc.c:229: printstr("\r\nstack underflow\r\n");
      003C89 7D 82            [12] 3771 	mov	r5,#___str_8
      003C8B 7E 6A            [12] 3772 	mov	r6,#(___str_8 >> 8)
      003C8D 7F 80            [12] 3773 	mov	r7,#0x80
                                   3774 ;	calc.c:50: return;
      003C8F                       3775 00331$:
                                   3776 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003C8F 8D 82            [24] 3777 	mov	dpl,r5
      003C91 8E 83            [24] 3778 	mov	dph,r6
      003C93 8F F0            [24] 3779 	mov	b,r7
      003C95 12 51 C9         [24] 3780 	lcall	__gptrget
      003C98 FC               [12] 3781 	mov	r4,a
      003C99 70 03            [24] 3782 	jnz	00912$
      003C9B 02 42 1A         [24] 3783 	ljmp	00188$
      003C9E                       3784 00912$:
      003C9E 7B 00            [12] 3785 	mov	r3,#0x00
      003CA0 8C 82            [24] 3786 	mov	dpl,r4
      003CA2 8B 83            [24] 3787 	mov	dph,r3
      003CA4 12 29 C0         [24] 3788 	lcall	_putchar
      003CA7 0D               [12] 3789 	inc	r5
                                   3790 ;	calc.c:229: printstr("\r\nstack underflow\r\n");
      003CA8 BD 00 E4         [24] 3791 	cjne	r5,#0x00,00331$
      003CAB 0E               [12] 3792 	inc	r6
      003CAC 80 E1            [24] 3793 	sjmp	00331$
      003CAE                       3794 00157$:
                                   3795 ;	calc.c:230: } else if (!d0) {
      003CAE E5 08            [12] 3796 	mov	a,_bp
      003CB0 24 07            [12] 3797 	add	a,#0x07
      003CB2 F8               [12] 3798 	mov	r0,a
      003CB3 E6               [12] 3799 	mov	a,@r0
      003CB4 08               [12] 3800 	inc	r0
      003CB5 46               [12] 3801 	orl	a,@r0
      003CB6 08               [12] 3802 	inc	r0
      003CB7 46               [12] 3803 	orl	a,@r0
      003CB8 08               [12] 3804 	inc	r0
      003CB9 46               [12] 3805 	orl	a,@r0
      003CBA 60 03            [24] 3806 	jz	00914$
      003CBC 02 3D 4A         [24] 3807 	ljmp	00154$
      003CBF                       3808 00914$:
                                   3809 ;	calc.c:231: (void)stack_push(&ctx->s, d1);
      003CBF E5 08            [12] 3810 	mov	a,_bp
      003CC1 24 04            [12] 3811 	add	a,#0x04
      003CC3 F8               [12] 3812 	mov	r0,a
      003CC4 74 09            [12] 3813 	mov	a,#0x09
      003CC6 26               [12] 3814 	add	a,@r0
      003CC7 FD               [12] 3815 	mov	r5,a
      003CC8 E4               [12] 3816 	clr	a
      003CC9 08               [12] 3817 	inc	r0
      003CCA 36               [12] 3818 	addc	a,@r0
      003CCB FE               [12] 3819 	mov	r6,a
      003CCC 08               [12] 3820 	inc	r0
      003CCD 86 07            [24] 3821 	mov	ar7,@r0
      003CCF E5 08            [12] 3822 	mov	a,_bp
      003CD1 24 0B            [12] 3823 	add	a,#0x0b
      003CD3 F8               [12] 3824 	mov	r0,a
      003CD4 E6               [12] 3825 	mov	a,@r0
      003CD5 C0 E0            [24] 3826 	push	acc
      003CD7 08               [12] 3827 	inc	r0
      003CD8 E6               [12] 3828 	mov	a,@r0
      003CD9 C0 E0            [24] 3829 	push	acc
      003CDB 08               [12] 3830 	inc	r0
      003CDC E6               [12] 3831 	mov	a,@r0
      003CDD C0 E0            [24] 3832 	push	acc
      003CDF 08               [12] 3833 	inc	r0
      003CE0 E6               [12] 3834 	mov	a,@r0
      003CE1 C0 E0            [24] 3835 	push	acc
      003CE3 8D 82            [24] 3836 	mov	dpl,r5
      003CE5 8E 83            [24] 3837 	mov	dph,r6
      003CE7 8F F0            [24] 3838 	mov	b,r7
      003CE9 12 26 B5         [24] 3839 	lcall	_stack_push
      003CEC E5 81            [12] 3840 	mov	a,sp
      003CEE 24 FC            [12] 3841 	add	a,#0xfc
      003CF0 F5 81            [12] 3842 	mov	sp,a
                                   3843 ;	calc.c:232: (void)stack_push(&ctx->s, d0);			
      003CF2 E5 08            [12] 3844 	mov	a,_bp
      003CF4 24 04            [12] 3845 	add	a,#0x04
      003CF6 F8               [12] 3846 	mov	r0,a
      003CF7 74 09            [12] 3847 	mov	a,#0x09
      003CF9 26               [12] 3848 	add	a,@r0
      003CFA FD               [12] 3849 	mov	r5,a
      003CFB E4               [12] 3850 	clr	a
      003CFC 08               [12] 3851 	inc	r0
      003CFD 36               [12] 3852 	addc	a,@r0
      003CFE FE               [12] 3853 	mov	r6,a
      003CFF 08               [12] 3854 	inc	r0
      003D00 86 07            [24] 3855 	mov	ar7,@r0
      003D02 E5 08            [12] 3856 	mov	a,_bp
      003D04 24 07            [12] 3857 	add	a,#0x07
      003D06 F8               [12] 3858 	mov	r0,a
      003D07 E6               [12] 3859 	mov	a,@r0
      003D08 C0 E0            [24] 3860 	push	acc
      003D0A 08               [12] 3861 	inc	r0
      003D0B E6               [12] 3862 	mov	a,@r0
      003D0C C0 E0            [24] 3863 	push	acc
      003D0E 08               [12] 3864 	inc	r0
      003D0F E6               [12] 3865 	mov	a,@r0
      003D10 C0 E0            [24] 3866 	push	acc
      003D12 08               [12] 3867 	inc	r0
      003D13 E6               [12] 3868 	mov	a,@r0
      003D14 C0 E0            [24] 3869 	push	acc
      003D16 8D 82            [24] 3870 	mov	dpl,r5
      003D18 8E 83            [24] 3871 	mov	dph,r6
      003D1A 8F F0            [24] 3872 	mov	b,r7
      003D1C 12 26 B5         [24] 3873 	lcall	_stack_push
      003D1F E5 81            [12] 3874 	mov	a,sp
      003D21 24 FC            [12] 3875 	add	a,#0xfc
      003D23 F5 81            [12] 3876 	mov	sp,a
                                   3877 ;	calc.c:233: printstr("\r\ndivision by zero\r\n");
      003D25 7D 96            [12] 3878 	mov	r5,#___str_9
      003D27 7E 6A            [12] 3879 	mov	r6,#(___str_9 >> 8)
      003D29 7F 80            [12] 3880 	mov	r7,#0x80
                                   3881 ;	calc.c:50: return;
      003D2B                       3882 00334$:
                                   3883 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003D2B 8D 82            [24] 3884 	mov	dpl,r5
      003D2D 8E 83            [24] 3885 	mov	dph,r6
      003D2F 8F F0            [24] 3886 	mov	b,r7
      003D31 12 51 C9         [24] 3887 	lcall	__gptrget
      003D34 FC               [12] 3888 	mov	r4,a
      003D35 70 03            [24] 3889 	jnz	00915$
      003D37 02 42 1A         [24] 3890 	ljmp	00188$
      003D3A                       3891 00915$:
      003D3A 7B 00            [12] 3892 	mov	r3,#0x00
      003D3C 8C 82            [24] 3893 	mov	dpl,r4
      003D3E 8B 83            [24] 3894 	mov	dph,r3
      003D40 12 29 C0         [24] 3895 	lcall	_putchar
      003D43 0D               [12] 3896 	inc	r5
                                   3897 ;	calc.c:233: printstr("\r\ndivision by zero\r\n");
      003D44 BD 00 E4         [24] 3898 	cjne	r5,#0x00,00334$
      003D47 0E               [12] 3899 	inc	r6
      003D48 80 E1            [24] 3900 	sjmp	00334$
      003D4A                       3901 00154$:
                                   3902 ;	calc.c:235: d1 %= d0;
      003D4A E5 08            [12] 3903 	mov	a,_bp
      003D4C 24 07            [12] 3904 	add	a,#0x07
      003D4E F8               [12] 3905 	mov	r0,a
      003D4F E6               [12] 3906 	mov	a,@r0
      003D50 C0 E0            [24] 3907 	push	acc
      003D52 08               [12] 3908 	inc	r0
      003D53 E6               [12] 3909 	mov	a,@r0
      003D54 C0 E0            [24] 3910 	push	acc
      003D56 08               [12] 3911 	inc	r0
      003D57 E6               [12] 3912 	mov	a,@r0
      003D58 C0 E0            [24] 3913 	push	acc
      003D5A 08               [12] 3914 	inc	r0
      003D5B E6               [12] 3915 	mov	a,@r0
      003D5C C0 E0            [24] 3916 	push	acc
      003D5E E5 08            [12] 3917 	mov	a,_bp
      003D60 24 0B            [12] 3918 	add	a,#0x0b
      003D62 F8               [12] 3919 	mov	r0,a
      003D63 86 82            [24] 3920 	mov	dpl,@r0
      003D65 08               [12] 3921 	inc	r0
      003D66 86 83            [24] 3922 	mov	dph,@r0
      003D68 08               [12] 3923 	inc	r0
      003D69 86 F0            [24] 3924 	mov	b,@r0
      003D6B 08               [12] 3925 	inc	r0
      003D6C E6               [12] 3926 	mov	a,@r0
      003D6D 12 4E 07         [24] 3927 	lcall	__modslong
      003D70 AC 82            [24] 3928 	mov	r4,dpl
      003D72 AD 83            [24] 3929 	mov	r5,dph
      003D74 AE F0            [24] 3930 	mov	r6,b
      003D76 FF               [12] 3931 	mov	r7,a
      003D77 E5 81            [12] 3932 	mov	a,sp
      003D79 24 FC            [12] 3933 	add	a,#0xfc
      003D7B F5 81            [12] 3934 	mov	sp,a
      003D7D E5 08            [12] 3935 	mov	a,_bp
      003D7F 24 0B            [12] 3936 	add	a,#0x0b
      003D81 F8               [12] 3937 	mov	r0,a
      003D82 A6 04            [24] 3938 	mov	@r0,ar4
      003D84 08               [12] 3939 	inc	r0
      003D85 A6 05            [24] 3940 	mov	@r0,ar5
      003D87 08               [12] 3941 	inc	r0
      003D88 A6 06            [24] 3942 	mov	@r0,ar6
      003D8A 08               [12] 3943 	inc	r0
      003D8B A6 07            [24] 3944 	mov	@r0,ar7
                                   3945 ;	calc.c:236: (void)stack_push(&ctx->s, d1);
      003D8D E5 08            [12] 3946 	mov	a,_bp
      003D8F 24 04            [12] 3947 	add	a,#0x04
      003D91 F8               [12] 3948 	mov	r0,a
      003D92 74 09            [12] 3949 	mov	a,#0x09
      003D94 26               [12] 3950 	add	a,@r0
      003D95 FD               [12] 3951 	mov	r5,a
      003D96 E4               [12] 3952 	clr	a
      003D97 08               [12] 3953 	inc	r0
      003D98 36               [12] 3954 	addc	a,@r0
      003D99 FE               [12] 3955 	mov	r6,a
      003D9A 08               [12] 3956 	inc	r0
      003D9B 86 07            [24] 3957 	mov	ar7,@r0
      003D9D E5 08            [12] 3958 	mov	a,_bp
      003D9F 24 0B            [12] 3959 	add	a,#0x0b
      003DA1 F8               [12] 3960 	mov	r0,a
      003DA2 E6               [12] 3961 	mov	a,@r0
      003DA3 C0 E0            [24] 3962 	push	acc
      003DA5 08               [12] 3963 	inc	r0
      003DA6 E6               [12] 3964 	mov	a,@r0
      003DA7 C0 E0            [24] 3965 	push	acc
      003DA9 08               [12] 3966 	inc	r0
      003DAA E6               [12] 3967 	mov	a,@r0
      003DAB C0 E0            [24] 3968 	push	acc
      003DAD 08               [12] 3969 	inc	r0
      003DAE E6               [12] 3970 	mov	a,@r0
      003DAF C0 E0            [24] 3971 	push	acc
      003DB1 8D 82            [24] 3972 	mov	dpl,r5
      003DB3 8E 83            [24] 3973 	mov	dph,r6
      003DB5 8F F0            [24] 3974 	mov	b,r7
      003DB7 12 26 B5         [24] 3975 	lcall	_stack_push
      003DBA E5 81            [12] 3976 	mov	a,sp
      003DBC 24 FC            [12] 3977 	add	a,#0xfc
      003DBE F5 81            [12] 3978 	mov	sp,a
                                   3979 ;	calc.c:238: break;
      003DC0 02 42 1A         [24] 3980 	ljmp	00188$
                                   3981 ;	calc.c:239: case '&':
      003DC3                       3982 00162$:
                                   3983 ;	calc.c:240: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003DC3 E5 08            [12] 3984 	mov	a,_bp
      003DC5 24 07            [12] 3985 	add	a,#0x07
      003DC7 FF               [12] 3986 	mov	r7,a
      003DC8 7E 00            [12] 3987 	mov	r6,#0x00
      003DCA 7D 40            [12] 3988 	mov	r5,#0x40
      003DCC E5 08            [12] 3989 	mov	a,_bp
      003DCE 24 04            [12] 3990 	add	a,#0x04
      003DD0 F8               [12] 3991 	mov	r0,a
      003DD1 74 09            [12] 3992 	mov	a,#0x09
      003DD3 26               [12] 3993 	add	a,@r0
      003DD4 FA               [12] 3994 	mov	r2,a
      003DD5 E4               [12] 3995 	clr	a
      003DD6 08               [12] 3996 	inc	r0
      003DD7 36               [12] 3997 	addc	a,@r0
      003DD8 FB               [12] 3998 	mov	r3,a
      003DD9 08               [12] 3999 	inc	r0
      003DDA 86 04            [24] 4000 	mov	ar4,@r0
      003DDC C0 07            [24] 4001 	push	ar7
      003DDE C0 06            [24] 4002 	push	ar6
      003DE0 C0 05            [24] 4003 	push	ar5
      003DE2 8A 82            [24] 4004 	mov	dpl,r2
      003DE4 8B 83            [24] 4005 	mov	dph,r3
      003DE6 8C F0            [24] 4006 	mov	b,r4
      003DE8 12 27 7F         [24] 4007 	lcall	_stack_pop
      003DEB AE 82            [24] 4008 	mov	r6,dpl
      003DED AF 83            [24] 4009 	mov	r7,dph
      003DEF 15 81            [12] 4010 	dec	sp
      003DF1 15 81            [12] 4011 	dec	sp
      003DF3 15 81            [12] 4012 	dec	sp
      003DF5 EE               [12] 4013 	mov	a,r6
      003DF6 4F               [12] 4014 	orl	a,r7
      003DF7 70 25            [24] 4015 	jnz	00167$
      003DF9 7D 82            [12] 4016 	mov	r5,#___str_8
      003DFB 7E 6A            [12] 4017 	mov	r6,#(___str_8 >> 8)
      003DFD 7F 80            [12] 4018 	mov	r7,#0x80
                                   4019 ;	calc.c:50: return;
      003DFF                       4020 00337$:
                                   4021 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003DFF 8D 82            [24] 4022 	mov	dpl,r5
      003E01 8E 83            [24] 4023 	mov	dph,r6
      003E03 8F F0            [24] 4024 	mov	b,r7
      003E05 12 51 C9         [24] 4025 	lcall	__gptrget
      003E08 FC               [12] 4026 	mov	r4,a
      003E09 70 03            [24] 4027 	jnz	00918$
      003E0B 02 42 1A         [24] 4028 	ljmp	00188$
      003E0E                       4029 00918$:
      003E0E 7B 00            [12] 4030 	mov	r3,#0x00
      003E10 8C 82            [24] 4031 	mov	dpl,r4
      003E12 8B 83            [24] 4032 	mov	dph,r3
      003E14 12 29 C0         [24] 4033 	lcall	_putchar
      003E17 0D               [12] 4034 	inc	r5
                                   4035 ;	calc.c:240: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003E18 BD 00 E4         [24] 4036 	cjne	r5,#0x00,00337$
      003E1B 0E               [12] 4037 	inc	r6
      003E1C 80 E1            [24] 4038 	sjmp	00337$
      003E1E                       4039 00167$:
                                   4040 ;	calc.c:241: else if (!stack_pop(&ctx->s, &d1)) {
      003E1E E5 08            [12] 4041 	mov	a,_bp
      003E20 24 0B            [12] 4042 	add	a,#0x0b
      003E22 FF               [12] 4043 	mov	r7,a
      003E23 7E 00            [12] 4044 	mov	r6,#0x00
      003E25 7D 40            [12] 4045 	mov	r5,#0x40
      003E27 E5 08            [12] 4046 	mov	a,_bp
      003E29 24 04            [12] 4047 	add	a,#0x04
      003E2B F8               [12] 4048 	mov	r0,a
      003E2C 74 09            [12] 4049 	mov	a,#0x09
      003E2E 26               [12] 4050 	add	a,@r0
      003E2F FA               [12] 4051 	mov	r2,a
      003E30 E4               [12] 4052 	clr	a
      003E31 08               [12] 4053 	inc	r0
      003E32 36               [12] 4054 	addc	a,@r0
      003E33 FB               [12] 4055 	mov	r3,a
      003E34 08               [12] 4056 	inc	r0
      003E35 86 04            [24] 4057 	mov	ar4,@r0
      003E37 C0 07            [24] 4058 	push	ar7
      003E39 C0 06            [24] 4059 	push	ar6
      003E3B C0 05            [24] 4060 	push	ar5
      003E3D 8A 82            [24] 4061 	mov	dpl,r2
      003E3F 8B 83            [24] 4062 	mov	dph,r3
      003E41 8C F0            [24] 4063 	mov	b,r4
      003E43 12 27 7F         [24] 4064 	lcall	_stack_pop
      003E46 AE 82            [24] 4065 	mov	r6,dpl
      003E48 AF 83            [24] 4066 	mov	r7,dph
      003E4A 15 81            [12] 4067 	dec	sp
      003E4C 15 81            [12] 4068 	dec	sp
      003E4E 15 81            [12] 4069 	dec	sp
      003E50 EE               [12] 4070 	mov	a,r6
      003E51 4F               [12] 4071 	orl	a,r7
      003E52 70 58            [24] 4072 	jnz	00164$
                                   4073 ;	calc.c:242: (void)stack_push(&ctx->s, d0);
      003E54 E5 08            [12] 4074 	mov	a,_bp
      003E56 24 04            [12] 4075 	add	a,#0x04
      003E58 F8               [12] 4076 	mov	r0,a
      003E59 74 09            [12] 4077 	mov	a,#0x09
      003E5B 26               [12] 4078 	add	a,@r0
      003E5C FD               [12] 4079 	mov	r5,a
      003E5D E4               [12] 4080 	clr	a
      003E5E 08               [12] 4081 	inc	r0
      003E5F 36               [12] 4082 	addc	a,@r0
      003E60 FE               [12] 4083 	mov	r6,a
      003E61 08               [12] 4084 	inc	r0
      003E62 86 07            [24] 4085 	mov	ar7,@r0
      003E64 E5 08            [12] 4086 	mov	a,_bp
      003E66 24 07            [12] 4087 	add	a,#0x07
      003E68 F8               [12] 4088 	mov	r0,a
      003E69 E6               [12] 4089 	mov	a,@r0
      003E6A C0 E0            [24] 4090 	push	acc
      003E6C 08               [12] 4091 	inc	r0
      003E6D E6               [12] 4092 	mov	a,@r0
      003E6E C0 E0            [24] 4093 	push	acc
      003E70 08               [12] 4094 	inc	r0
      003E71 E6               [12] 4095 	mov	a,@r0
      003E72 C0 E0            [24] 4096 	push	acc
      003E74 08               [12] 4097 	inc	r0
      003E75 E6               [12] 4098 	mov	a,@r0
      003E76 C0 E0            [24] 4099 	push	acc
      003E78 8D 82            [24] 4100 	mov	dpl,r5
      003E7A 8E 83            [24] 4101 	mov	dph,r6
      003E7C 8F F0            [24] 4102 	mov	b,r7
      003E7E 12 26 B5         [24] 4103 	lcall	_stack_push
      003E81 E5 81            [12] 4104 	mov	a,sp
      003E83 24 FC            [12] 4105 	add	a,#0xfc
      003E85 F5 81            [12] 4106 	mov	sp,a
                                   4107 ;	calc.c:243: printstr("\r\nstack underflow\r\n");
      003E87 7D 82            [12] 4108 	mov	r5,#___str_8
      003E89 7E 6A            [12] 4109 	mov	r6,#(___str_8 >> 8)
      003E8B 7F 80            [12] 4110 	mov	r7,#0x80
                                   4111 ;	calc.c:50: return;
      003E8D                       4112 00340$:
                                   4113 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003E8D 8D 82            [24] 4114 	mov	dpl,r5
      003E8F 8E 83            [24] 4115 	mov	dph,r6
      003E91 8F F0            [24] 4116 	mov	b,r7
      003E93 12 51 C9         [24] 4117 	lcall	__gptrget
      003E96 FC               [12] 4118 	mov	r4,a
      003E97 70 03            [24] 4119 	jnz	00921$
      003E99 02 42 1A         [24] 4120 	ljmp	00188$
      003E9C                       4121 00921$:
      003E9C 7B 00            [12] 4122 	mov	r3,#0x00
      003E9E 8C 82            [24] 4123 	mov	dpl,r4
      003EA0 8B 83            [24] 4124 	mov	dph,r3
      003EA2 12 29 C0         [24] 4125 	lcall	_putchar
      003EA5 0D               [12] 4126 	inc	r5
                                   4127 ;	calc.c:243: printstr("\r\nstack underflow\r\n");
      003EA6 BD 00 E4         [24] 4128 	cjne	r5,#0x00,00340$
      003EA9 0E               [12] 4129 	inc	r6
      003EAA 80 E1            [24] 4130 	sjmp	00340$
      003EAC                       4131 00164$:
                                   4132 ;	calc.c:245: d1 &= d0;
      003EAC E5 08            [12] 4133 	mov	a,_bp
      003EAE 24 0B            [12] 4134 	add	a,#0x0b
      003EB0 F8               [12] 4135 	mov	r0,a
      003EB1 E5 08            [12] 4136 	mov	a,_bp
      003EB3 24 07            [12] 4137 	add	a,#0x07
      003EB5 F9               [12] 4138 	mov	r1,a
      003EB6 E7               [12] 4139 	mov	a,@r1
      003EB7 56               [12] 4140 	anl	a,@r0
      003EB8 F6               [12] 4141 	mov	@r0,a
      003EB9 09               [12] 4142 	inc	r1
      003EBA E7               [12] 4143 	mov	a,@r1
      003EBB 08               [12] 4144 	inc	r0
      003EBC 56               [12] 4145 	anl	a,@r0
      003EBD F6               [12] 4146 	mov	@r0,a
      003EBE 09               [12] 4147 	inc	r1
      003EBF E7               [12] 4148 	mov	a,@r1
      003EC0 08               [12] 4149 	inc	r0
      003EC1 56               [12] 4150 	anl	a,@r0
      003EC2 F6               [12] 4151 	mov	@r0,a
      003EC3 09               [12] 4152 	inc	r1
      003EC4 E7               [12] 4153 	mov	a,@r1
      003EC5 08               [12] 4154 	inc	r0
      003EC6 56               [12] 4155 	anl	a,@r0
      003EC7 F6               [12] 4156 	mov	@r0,a
                                   4157 ;	calc.c:246: (void)stack_push(&ctx->s, d1);
      003EC8 E5 08            [12] 4158 	mov	a,_bp
      003ECA 24 04            [12] 4159 	add	a,#0x04
      003ECC F8               [12] 4160 	mov	r0,a
      003ECD 74 09            [12] 4161 	mov	a,#0x09
      003ECF 26               [12] 4162 	add	a,@r0
      003ED0 FD               [12] 4163 	mov	r5,a
      003ED1 E4               [12] 4164 	clr	a
      003ED2 08               [12] 4165 	inc	r0
      003ED3 36               [12] 4166 	addc	a,@r0
      003ED4 FE               [12] 4167 	mov	r6,a
      003ED5 08               [12] 4168 	inc	r0
      003ED6 86 07            [24] 4169 	mov	ar7,@r0
      003ED8 E5 08            [12] 4170 	mov	a,_bp
      003EDA 24 0B            [12] 4171 	add	a,#0x0b
      003EDC F8               [12] 4172 	mov	r0,a
      003EDD E6               [12] 4173 	mov	a,@r0
      003EDE C0 E0            [24] 4174 	push	acc
      003EE0 08               [12] 4175 	inc	r0
      003EE1 E6               [12] 4176 	mov	a,@r0
      003EE2 C0 E0            [24] 4177 	push	acc
      003EE4 08               [12] 4178 	inc	r0
      003EE5 E6               [12] 4179 	mov	a,@r0
      003EE6 C0 E0            [24] 4180 	push	acc
      003EE8 08               [12] 4181 	inc	r0
      003EE9 E6               [12] 4182 	mov	a,@r0
      003EEA C0 E0            [24] 4183 	push	acc
      003EEC 8D 82            [24] 4184 	mov	dpl,r5
      003EEE 8E 83            [24] 4185 	mov	dph,r6
      003EF0 8F F0            [24] 4186 	mov	b,r7
      003EF2 12 26 B5         [24] 4187 	lcall	_stack_push
      003EF5 E5 81            [12] 4188 	mov	a,sp
      003EF7 24 FC            [12] 4189 	add	a,#0xfc
      003EF9 F5 81            [12] 4190 	mov	sp,a
                                   4191 ;	calc.c:248: break;
      003EFB 02 42 1A         [24] 4192 	ljmp	00188$
                                   4193 ;	calc.c:249: case '|':
      003EFE                       4194 00169$:
                                   4195 ;	calc.c:250: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003EFE E5 08            [12] 4196 	mov	a,_bp
      003F00 24 07            [12] 4197 	add	a,#0x07
      003F02 FF               [12] 4198 	mov	r7,a
      003F03 7E 00            [12] 4199 	mov	r6,#0x00
      003F05 7D 40            [12] 4200 	mov	r5,#0x40
      003F07 E5 08            [12] 4201 	mov	a,_bp
      003F09 24 04            [12] 4202 	add	a,#0x04
      003F0B F8               [12] 4203 	mov	r0,a
      003F0C 74 09            [12] 4204 	mov	a,#0x09
      003F0E 26               [12] 4205 	add	a,@r0
      003F0F FA               [12] 4206 	mov	r2,a
      003F10 E4               [12] 4207 	clr	a
      003F11 08               [12] 4208 	inc	r0
      003F12 36               [12] 4209 	addc	a,@r0
      003F13 FB               [12] 4210 	mov	r3,a
      003F14 08               [12] 4211 	inc	r0
      003F15 86 04            [24] 4212 	mov	ar4,@r0
      003F17 C0 07            [24] 4213 	push	ar7
      003F19 C0 06            [24] 4214 	push	ar6
      003F1B C0 05            [24] 4215 	push	ar5
      003F1D 8A 82            [24] 4216 	mov	dpl,r2
      003F1F 8B 83            [24] 4217 	mov	dph,r3
      003F21 8C F0            [24] 4218 	mov	b,r4
      003F23 12 27 7F         [24] 4219 	lcall	_stack_pop
      003F26 AE 82            [24] 4220 	mov	r6,dpl
      003F28 AF 83            [24] 4221 	mov	r7,dph
      003F2A 15 81            [12] 4222 	dec	sp
      003F2C 15 81            [12] 4223 	dec	sp
      003F2E 15 81            [12] 4224 	dec	sp
      003F30 EE               [12] 4225 	mov	a,r6
      003F31 4F               [12] 4226 	orl	a,r7
      003F32 70 25            [24] 4227 	jnz	00174$
      003F34 7D 82            [12] 4228 	mov	r5,#___str_8
      003F36 7E 6A            [12] 4229 	mov	r6,#(___str_8 >> 8)
      003F38 7F 80            [12] 4230 	mov	r7,#0x80
                                   4231 ;	calc.c:50: return;
      003F3A                       4232 00343$:
                                   4233 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003F3A 8D 82            [24] 4234 	mov	dpl,r5
      003F3C 8E 83            [24] 4235 	mov	dph,r6
      003F3E 8F F0            [24] 4236 	mov	b,r7
      003F40 12 51 C9         [24] 4237 	lcall	__gptrget
      003F43 FC               [12] 4238 	mov	r4,a
      003F44 70 03            [24] 4239 	jnz	00924$
      003F46 02 42 1A         [24] 4240 	ljmp	00188$
      003F49                       4241 00924$:
      003F49 7B 00            [12] 4242 	mov	r3,#0x00
      003F4B 8C 82            [24] 4243 	mov	dpl,r4
      003F4D 8B 83            [24] 4244 	mov	dph,r3
      003F4F 12 29 C0         [24] 4245 	lcall	_putchar
      003F52 0D               [12] 4246 	inc	r5
                                   4247 ;	calc.c:250: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003F53 BD 00 E4         [24] 4248 	cjne	r5,#0x00,00343$
      003F56 0E               [12] 4249 	inc	r6
      003F57 80 E1            [24] 4250 	sjmp	00343$
      003F59                       4251 00174$:
                                   4252 ;	calc.c:251: else if (!stack_pop(&ctx->s, &d1)) {
      003F59 E5 08            [12] 4253 	mov	a,_bp
      003F5B 24 0B            [12] 4254 	add	a,#0x0b
      003F5D FF               [12] 4255 	mov	r7,a
      003F5E 7E 00            [12] 4256 	mov	r6,#0x00
      003F60 7D 40            [12] 4257 	mov	r5,#0x40
      003F62 E5 08            [12] 4258 	mov	a,_bp
      003F64 24 04            [12] 4259 	add	a,#0x04
      003F66 F8               [12] 4260 	mov	r0,a
      003F67 74 09            [12] 4261 	mov	a,#0x09
      003F69 26               [12] 4262 	add	a,@r0
      003F6A FA               [12] 4263 	mov	r2,a
      003F6B E4               [12] 4264 	clr	a
      003F6C 08               [12] 4265 	inc	r0
      003F6D 36               [12] 4266 	addc	a,@r0
      003F6E FB               [12] 4267 	mov	r3,a
      003F6F 08               [12] 4268 	inc	r0
      003F70 86 04            [24] 4269 	mov	ar4,@r0
      003F72 C0 07            [24] 4270 	push	ar7
      003F74 C0 06            [24] 4271 	push	ar6
      003F76 C0 05            [24] 4272 	push	ar5
      003F78 8A 82            [24] 4273 	mov	dpl,r2
      003F7A 8B 83            [24] 4274 	mov	dph,r3
      003F7C 8C F0            [24] 4275 	mov	b,r4
      003F7E 12 27 7F         [24] 4276 	lcall	_stack_pop
      003F81 AE 82            [24] 4277 	mov	r6,dpl
      003F83 AF 83            [24] 4278 	mov	r7,dph
      003F85 15 81            [12] 4279 	dec	sp
      003F87 15 81            [12] 4280 	dec	sp
      003F89 15 81            [12] 4281 	dec	sp
      003F8B EE               [12] 4282 	mov	a,r6
      003F8C 4F               [12] 4283 	orl	a,r7
      003F8D 70 58            [24] 4284 	jnz	00171$
                                   4285 ;	calc.c:252: (void)stack_push(&ctx->s, d0);
      003F8F E5 08            [12] 4286 	mov	a,_bp
      003F91 24 04            [12] 4287 	add	a,#0x04
      003F93 F8               [12] 4288 	mov	r0,a
      003F94 74 09            [12] 4289 	mov	a,#0x09
      003F96 26               [12] 4290 	add	a,@r0
      003F97 FD               [12] 4291 	mov	r5,a
      003F98 E4               [12] 4292 	clr	a
      003F99 08               [12] 4293 	inc	r0
      003F9A 36               [12] 4294 	addc	a,@r0
      003F9B FE               [12] 4295 	mov	r6,a
      003F9C 08               [12] 4296 	inc	r0
      003F9D 86 07            [24] 4297 	mov	ar7,@r0
      003F9F E5 08            [12] 4298 	mov	a,_bp
      003FA1 24 07            [12] 4299 	add	a,#0x07
      003FA3 F8               [12] 4300 	mov	r0,a
      003FA4 E6               [12] 4301 	mov	a,@r0
      003FA5 C0 E0            [24] 4302 	push	acc
      003FA7 08               [12] 4303 	inc	r0
      003FA8 E6               [12] 4304 	mov	a,@r0
      003FA9 C0 E0            [24] 4305 	push	acc
      003FAB 08               [12] 4306 	inc	r0
      003FAC E6               [12] 4307 	mov	a,@r0
      003FAD C0 E0            [24] 4308 	push	acc
      003FAF 08               [12] 4309 	inc	r0
      003FB0 E6               [12] 4310 	mov	a,@r0
      003FB1 C0 E0            [24] 4311 	push	acc
      003FB3 8D 82            [24] 4312 	mov	dpl,r5
      003FB5 8E 83            [24] 4313 	mov	dph,r6
      003FB7 8F F0            [24] 4314 	mov	b,r7
      003FB9 12 26 B5         [24] 4315 	lcall	_stack_push
      003FBC E5 81            [12] 4316 	mov	a,sp
      003FBE 24 FC            [12] 4317 	add	a,#0xfc
      003FC0 F5 81            [12] 4318 	mov	sp,a
                                   4319 ;	calc.c:253: printstr("\r\nstack underflow\r\n");
      003FC2 7D 82            [12] 4320 	mov	r5,#___str_8
      003FC4 7E 6A            [12] 4321 	mov	r6,#(___str_8 >> 8)
      003FC6 7F 80            [12] 4322 	mov	r7,#0x80
                                   4323 ;	calc.c:50: return;
      003FC8                       4324 00346$:
                                   4325 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003FC8 8D 82            [24] 4326 	mov	dpl,r5
      003FCA 8E 83            [24] 4327 	mov	dph,r6
      003FCC 8F F0            [24] 4328 	mov	b,r7
      003FCE 12 51 C9         [24] 4329 	lcall	__gptrget
      003FD1 FC               [12] 4330 	mov	r4,a
      003FD2 70 03            [24] 4331 	jnz	00927$
      003FD4 02 42 1A         [24] 4332 	ljmp	00188$
      003FD7                       4333 00927$:
      003FD7 7B 00            [12] 4334 	mov	r3,#0x00
      003FD9 8C 82            [24] 4335 	mov	dpl,r4
      003FDB 8B 83            [24] 4336 	mov	dph,r3
      003FDD 12 29 C0         [24] 4337 	lcall	_putchar
      003FE0 0D               [12] 4338 	inc	r5
                                   4339 ;	calc.c:253: printstr("\r\nstack underflow\r\n");
      003FE1 BD 00 E4         [24] 4340 	cjne	r5,#0x00,00346$
      003FE4 0E               [12] 4341 	inc	r6
      003FE5 80 E1            [24] 4342 	sjmp	00346$
      003FE7                       4343 00171$:
                                   4344 ;	calc.c:255: d1 |= d0;
      003FE7 E5 08            [12] 4345 	mov	a,_bp
      003FE9 24 0B            [12] 4346 	add	a,#0x0b
      003FEB F8               [12] 4347 	mov	r0,a
      003FEC E5 08            [12] 4348 	mov	a,_bp
      003FEE 24 07            [12] 4349 	add	a,#0x07
      003FF0 F9               [12] 4350 	mov	r1,a
      003FF1 E7               [12] 4351 	mov	a,@r1
      003FF2 46               [12] 4352 	orl	a,@r0
      003FF3 F6               [12] 4353 	mov	@r0,a
      003FF4 09               [12] 4354 	inc	r1
      003FF5 E7               [12] 4355 	mov	a,@r1
      003FF6 08               [12] 4356 	inc	r0
      003FF7 46               [12] 4357 	orl	a,@r0
      003FF8 F6               [12] 4358 	mov	@r0,a
      003FF9 09               [12] 4359 	inc	r1
      003FFA E7               [12] 4360 	mov	a,@r1
      003FFB 08               [12] 4361 	inc	r0
      003FFC 46               [12] 4362 	orl	a,@r0
      003FFD F6               [12] 4363 	mov	@r0,a
      003FFE 09               [12] 4364 	inc	r1
      003FFF E7               [12] 4365 	mov	a,@r1
      004000 08               [12] 4366 	inc	r0
      004001 46               [12] 4367 	orl	a,@r0
      004002 F6               [12] 4368 	mov	@r0,a
                                   4369 ;	calc.c:256: (void)stack_push(&ctx->s, d1);
      004003 E5 08            [12] 4370 	mov	a,_bp
      004005 24 04            [12] 4371 	add	a,#0x04
      004007 F8               [12] 4372 	mov	r0,a
      004008 74 09            [12] 4373 	mov	a,#0x09
      00400A 26               [12] 4374 	add	a,@r0
      00400B FD               [12] 4375 	mov	r5,a
      00400C E4               [12] 4376 	clr	a
      00400D 08               [12] 4377 	inc	r0
      00400E 36               [12] 4378 	addc	a,@r0
      00400F FE               [12] 4379 	mov	r6,a
      004010 08               [12] 4380 	inc	r0
      004011 86 07            [24] 4381 	mov	ar7,@r0
      004013 E5 08            [12] 4382 	mov	a,_bp
      004015 24 0B            [12] 4383 	add	a,#0x0b
      004017 F8               [12] 4384 	mov	r0,a
      004018 E6               [12] 4385 	mov	a,@r0
      004019 C0 E0            [24] 4386 	push	acc
      00401B 08               [12] 4387 	inc	r0
      00401C E6               [12] 4388 	mov	a,@r0
      00401D C0 E0            [24] 4389 	push	acc
      00401F 08               [12] 4390 	inc	r0
      004020 E6               [12] 4391 	mov	a,@r0
      004021 C0 E0            [24] 4392 	push	acc
      004023 08               [12] 4393 	inc	r0
      004024 E6               [12] 4394 	mov	a,@r0
      004025 C0 E0            [24] 4395 	push	acc
      004027 8D 82            [24] 4396 	mov	dpl,r5
      004029 8E 83            [24] 4397 	mov	dph,r6
      00402B 8F F0            [24] 4398 	mov	b,r7
      00402D 12 26 B5         [24] 4399 	lcall	_stack_push
      004030 E5 81            [12] 4400 	mov	a,sp
      004032 24 FC            [12] 4401 	add	a,#0xfc
      004034 F5 81            [12] 4402 	mov	sp,a
                                   4403 ;	calc.c:258: break;
      004036 02 42 1A         [24] 4404 	ljmp	00188$
                                   4405 ;	calc.c:259: case '^':
      004039                       4406 00176$:
                                   4407 ;	calc.c:260: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004039 E5 08            [12] 4408 	mov	a,_bp
      00403B 24 07            [12] 4409 	add	a,#0x07
      00403D FF               [12] 4410 	mov	r7,a
      00403E 7E 00            [12] 4411 	mov	r6,#0x00
      004040 7D 40            [12] 4412 	mov	r5,#0x40
      004042 E5 08            [12] 4413 	mov	a,_bp
      004044 24 04            [12] 4414 	add	a,#0x04
      004046 F8               [12] 4415 	mov	r0,a
      004047 74 09            [12] 4416 	mov	a,#0x09
      004049 26               [12] 4417 	add	a,@r0
      00404A FA               [12] 4418 	mov	r2,a
      00404B E4               [12] 4419 	clr	a
      00404C 08               [12] 4420 	inc	r0
      00404D 36               [12] 4421 	addc	a,@r0
      00404E FB               [12] 4422 	mov	r3,a
      00404F 08               [12] 4423 	inc	r0
      004050 86 04            [24] 4424 	mov	ar4,@r0
      004052 C0 07            [24] 4425 	push	ar7
      004054 C0 06            [24] 4426 	push	ar6
      004056 C0 05            [24] 4427 	push	ar5
      004058 8A 82            [24] 4428 	mov	dpl,r2
      00405A 8B 83            [24] 4429 	mov	dph,r3
      00405C 8C F0            [24] 4430 	mov	b,r4
      00405E 12 27 7F         [24] 4431 	lcall	_stack_pop
      004061 AE 82            [24] 4432 	mov	r6,dpl
      004063 AF 83            [24] 4433 	mov	r7,dph
      004065 15 81            [12] 4434 	dec	sp
      004067 15 81            [12] 4435 	dec	sp
      004069 15 81            [12] 4436 	dec	sp
      00406B EE               [12] 4437 	mov	a,r6
      00406C 4F               [12] 4438 	orl	a,r7
      00406D 70 25            [24] 4439 	jnz	00181$
      00406F 7D 82            [12] 4440 	mov	r5,#___str_8
      004071 7E 6A            [12] 4441 	mov	r6,#(___str_8 >> 8)
      004073 7F 80            [12] 4442 	mov	r7,#0x80
                                   4443 ;	calc.c:50: return;
      004075                       4444 00349$:
                                   4445 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004075 8D 82            [24] 4446 	mov	dpl,r5
      004077 8E 83            [24] 4447 	mov	dph,r6
      004079 8F F0            [24] 4448 	mov	b,r7
      00407B 12 51 C9         [24] 4449 	lcall	__gptrget
      00407E FC               [12] 4450 	mov	r4,a
      00407F 70 03            [24] 4451 	jnz	00930$
      004081 02 42 1A         [24] 4452 	ljmp	00188$
      004084                       4453 00930$:
      004084 7B 00            [12] 4454 	mov	r3,#0x00
      004086 8C 82            [24] 4455 	mov	dpl,r4
      004088 8B 83            [24] 4456 	mov	dph,r3
      00408A 12 29 C0         [24] 4457 	lcall	_putchar
      00408D 0D               [12] 4458 	inc	r5
                                   4459 ;	calc.c:260: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00408E BD 00 E4         [24] 4460 	cjne	r5,#0x00,00349$
      004091 0E               [12] 4461 	inc	r6
      004092 80 E1            [24] 4462 	sjmp	00349$
      004094                       4463 00181$:
                                   4464 ;	calc.c:261: else if (!stack_pop(&ctx->s, &d1)) {
      004094 E5 08            [12] 4465 	mov	a,_bp
      004096 24 0B            [12] 4466 	add	a,#0x0b
      004098 FF               [12] 4467 	mov	r7,a
      004099 7E 00            [12] 4468 	mov	r6,#0x00
      00409B 7D 40            [12] 4469 	mov	r5,#0x40
      00409D E5 08            [12] 4470 	mov	a,_bp
      00409F 24 04            [12] 4471 	add	a,#0x04
      0040A1 F8               [12] 4472 	mov	r0,a
      0040A2 74 09            [12] 4473 	mov	a,#0x09
      0040A4 26               [12] 4474 	add	a,@r0
      0040A5 FA               [12] 4475 	mov	r2,a
      0040A6 E4               [12] 4476 	clr	a
      0040A7 08               [12] 4477 	inc	r0
      0040A8 36               [12] 4478 	addc	a,@r0
      0040A9 FB               [12] 4479 	mov	r3,a
      0040AA 08               [12] 4480 	inc	r0
      0040AB 86 04            [24] 4481 	mov	ar4,@r0
      0040AD C0 07            [24] 4482 	push	ar7
      0040AF C0 06            [24] 4483 	push	ar6
      0040B1 C0 05            [24] 4484 	push	ar5
      0040B3 8A 82            [24] 4485 	mov	dpl,r2
      0040B5 8B 83            [24] 4486 	mov	dph,r3
      0040B7 8C F0            [24] 4487 	mov	b,r4
      0040B9 12 27 7F         [24] 4488 	lcall	_stack_pop
      0040BC AE 82            [24] 4489 	mov	r6,dpl
      0040BE AF 83            [24] 4490 	mov	r7,dph
      0040C0 15 81            [12] 4491 	dec	sp
      0040C2 15 81            [12] 4492 	dec	sp
      0040C4 15 81            [12] 4493 	dec	sp
      0040C6 EE               [12] 4494 	mov	a,r6
      0040C7 4F               [12] 4495 	orl	a,r7
      0040C8 70 58            [24] 4496 	jnz	00178$
                                   4497 ;	calc.c:262: (void)stack_push(&ctx->s, d0);
      0040CA E5 08            [12] 4498 	mov	a,_bp
      0040CC 24 04            [12] 4499 	add	a,#0x04
      0040CE F8               [12] 4500 	mov	r0,a
      0040CF 74 09            [12] 4501 	mov	a,#0x09
      0040D1 26               [12] 4502 	add	a,@r0
      0040D2 FD               [12] 4503 	mov	r5,a
      0040D3 E4               [12] 4504 	clr	a
      0040D4 08               [12] 4505 	inc	r0
      0040D5 36               [12] 4506 	addc	a,@r0
      0040D6 FE               [12] 4507 	mov	r6,a
      0040D7 08               [12] 4508 	inc	r0
      0040D8 86 07            [24] 4509 	mov	ar7,@r0
      0040DA E5 08            [12] 4510 	mov	a,_bp
      0040DC 24 07            [12] 4511 	add	a,#0x07
      0040DE F8               [12] 4512 	mov	r0,a
      0040DF E6               [12] 4513 	mov	a,@r0
      0040E0 C0 E0            [24] 4514 	push	acc
      0040E2 08               [12] 4515 	inc	r0
      0040E3 E6               [12] 4516 	mov	a,@r0
      0040E4 C0 E0            [24] 4517 	push	acc
      0040E6 08               [12] 4518 	inc	r0
      0040E7 E6               [12] 4519 	mov	a,@r0
      0040E8 C0 E0            [24] 4520 	push	acc
      0040EA 08               [12] 4521 	inc	r0
      0040EB E6               [12] 4522 	mov	a,@r0
      0040EC C0 E0            [24] 4523 	push	acc
      0040EE 8D 82            [24] 4524 	mov	dpl,r5
      0040F0 8E 83            [24] 4525 	mov	dph,r6
      0040F2 8F F0            [24] 4526 	mov	b,r7
      0040F4 12 26 B5         [24] 4527 	lcall	_stack_push
      0040F7 E5 81            [12] 4528 	mov	a,sp
      0040F9 24 FC            [12] 4529 	add	a,#0xfc
      0040FB F5 81            [12] 4530 	mov	sp,a
                                   4531 ;	calc.c:263: printstr("\r\nstack underflow\r\n");
      0040FD 7D 82            [12] 4532 	mov	r5,#___str_8
      0040FF 7E 6A            [12] 4533 	mov	r6,#(___str_8 >> 8)
      004101 7F 80            [12] 4534 	mov	r7,#0x80
                                   4535 ;	calc.c:50: return;
      004103                       4536 00352$:
                                   4537 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004103 8D 82            [24] 4538 	mov	dpl,r5
      004105 8E 83            [24] 4539 	mov	dph,r6
      004107 8F F0            [24] 4540 	mov	b,r7
      004109 12 51 C9         [24] 4541 	lcall	__gptrget
      00410C FC               [12] 4542 	mov	r4,a
      00410D 70 03            [24] 4543 	jnz	00933$
      00410F 02 42 1A         [24] 4544 	ljmp	00188$
      004112                       4545 00933$:
      004112 7B 00            [12] 4546 	mov	r3,#0x00
      004114 8C 82            [24] 4547 	mov	dpl,r4
      004116 8B 83            [24] 4548 	mov	dph,r3
      004118 12 29 C0         [24] 4549 	lcall	_putchar
      00411B 0D               [12] 4550 	inc	r5
                                   4551 ;	calc.c:263: printstr("\r\nstack underflow\r\n");
      00411C BD 00 E4         [24] 4552 	cjne	r5,#0x00,00352$
      00411F 0E               [12] 4553 	inc	r6
      004120 80 E1            [24] 4554 	sjmp	00352$
      004122                       4555 00178$:
                                   4556 ;	calc.c:265: d1 ^= d0;
      004122 E5 08            [12] 4557 	mov	a,_bp
      004124 24 0B            [12] 4558 	add	a,#0x0b
      004126 F8               [12] 4559 	mov	r0,a
      004127 E5 08            [12] 4560 	mov	a,_bp
      004129 24 07            [12] 4561 	add	a,#0x07
      00412B F9               [12] 4562 	mov	r1,a
      00412C E7               [12] 4563 	mov	a,@r1
      00412D 66               [12] 4564 	xrl	a,@r0
      00412E F6               [12] 4565 	mov	@r0,a
      00412F 09               [12] 4566 	inc	r1
      004130 E7               [12] 4567 	mov	a,@r1
      004131 08               [12] 4568 	inc	r0
      004132 66               [12] 4569 	xrl	a,@r0
      004133 F6               [12] 4570 	mov	@r0,a
      004134 09               [12] 4571 	inc	r1
      004135 E7               [12] 4572 	mov	a,@r1
      004136 08               [12] 4573 	inc	r0
      004137 66               [12] 4574 	xrl	a,@r0
      004138 F6               [12] 4575 	mov	@r0,a
      004139 09               [12] 4576 	inc	r1
      00413A E7               [12] 4577 	mov	a,@r1
      00413B 08               [12] 4578 	inc	r0
      00413C 66               [12] 4579 	xrl	a,@r0
      00413D F6               [12] 4580 	mov	@r0,a
                                   4581 ;	calc.c:266: (void)stack_push(&ctx->s, d1);
      00413E E5 08            [12] 4582 	mov	a,_bp
      004140 24 04            [12] 4583 	add	a,#0x04
      004142 F8               [12] 4584 	mov	r0,a
      004143 74 09            [12] 4585 	mov	a,#0x09
      004145 26               [12] 4586 	add	a,@r0
      004146 FD               [12] 4587 	mov	r5,a
      004147 E4               [12] 4588 	clr	a
      004148 08               [12] 4589 	inc	r0
      004149 36               [12] 4590 	addc	a,@r0
      00414A FE               [12] 4591 	mov	r6,a
      00414B 08               [12] 4592 	inc	r0
      00414C 86 07            [24] 4593 	mov	ar7,@r0
      00414E E5 08            [12] 4594 	mov	a,_bp
      004150 24 0B            [12] 4595 	add	a,#0x0b
      004152 F8               [12] 4596 	mov	r0,a
      004153 E6               [12] 4597 	mov	a,@r0
      004154 C0 E0            [24] 4598 	push	acc
      004156 08               [12] 4599 	inc	r0
      004157 E6               [12] 4600 	mov	a,@r0
      004158 C0 E0            [24] 4601 	push	acc
      00415A 08               [12] 4602 	inc	r0
      00415B E6               [12] 4603 	mov	a,@r0
      00415C C0 E0            [24] 4604 	push	acc
      00415E 08               [12] 4605 	inc	r0
      00415F E6               [12] 4606 	mov	a,@r0
      004160 C0 E0            [24] 4607 	push	acc
      004162 8D 82            [24] 4608 	mov	dpl,r5
      004164 8E 83            [24] 4609 	mov	dph,r6
      004166 8F F0            [24] 4610 	mov	b,r7
      004168 12 26 B5         [24] 4611 	lcall	_stack_push
      00416B E5 81            [12] 4612 	mov	a,sp
      00416D 24 FC            [12] 4613 	add	a,#0xfc
      00416F F5 81            [12] 4614 	mov	sp,a
                                   4615 ;	calc.c:268: break;
      004171 02 42 1A         [24] 4616 	ljmp	00188$
                                   4617 ;	calc.c:269: case '~':
      004174                       4618 00183$:
                                   4619 ;	calc.c:270: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004174 E5 08            [12] 4620 	mov	a,_bp
      004176 24 07            [12] 4621 	add	a,#0x07
      004178 FF               [12] 4622 	mov	r7,a
      004179 7E 00            [12] 4623 	mov	r6,#0x00
      00417B 7D 40            [12] 4624 	mov	r5,#0x40
      00417D E5 08            [12] 4625 	mov	a,_bp
      00417F 24 04            [12] 4626 	add	a,#0x04
      004181 F8               [12] 4627 	mov	r0,a
      004182 74 09            [12] 4628 	mov	a,#0x09
      004184 26               [12] 4629 	add	a,@r0
      004185 FA               [12] 4630 	mov	r2,a
      004186 E4               [12] 4631 	clr	a
      004187 08               [12] 4632 	inc	r0
      004188 36               [12] 4633 	addc	a,@r0
      004189 FB               [12] 4634 	mov	r3,a
      00418A 08               [12] 4635 	inc	r0
      00418B 86 04            [24] 4636 	mov	ar4,@r0
      00418D C0 07            [24] 4637 	push	ar7
      00418F C0 06            [24] 4638 	push	ar6
      004191 C0 05            [24] 4639 	push	ar5
      004193 8A 82            [24] 4640 	mov	dpl,r2
      004195 8B 83            [24] 4641 	mov	dph,r3
      004197 8C F0            [24] 4642 	mov	b,r4
      004199 12 27 7F         [24] 4643 	lcall	_stack_pop
      00419C AE 82            [24] 4644 	mov	r6,dpl
      00419E AF 83            [24] 4645 	mov	r7,dph
      0041A0 15 81            [12] 4646 	dec	sp
      0041A2 15 81            [12] 4647 	dec	sp
      0041A4 15 81            [12] 4648 	dec	sp
      0041A6 EE               [12] 4649 	mov	a,r6
      0041A7 4F               [12] 4650 	orl	a,r7
      0041A8 70 22            [24] 4651 	jnz	00185$
      0041AA 7D 82            [12] 4652 	mov	r5,#___str_8
      0041AC 7E 6A            [12] 4653 	mov	r6,#(___str_8 >> 8)
      0041AE 7F 80            [12] 4654 	mov	r7,#0x80
                                   4655 ;	calc.c:50: return;
      0041B0                       4656 00355$:
                                   4657 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0041B0 8D 82            [24] 4658 	mov	dpl,r5
      0041B2 8E 83            [24] 4659 	mov	dph,r6
      0041B4 8F F0            [24] 4660 	mov	b,r7
      0041B6 12 51 C9         [24] 4661 	lcall	__gptrget
      0041B9 FC               [12] 4662 	mov	r4,a
      0041BA 60 5E            [24] 4663 	jz	00188$
      0041BC 7B 00            [12] 4664 	mov	r3,#0x00
      0041BE 8C 82            [24] 4665 	mov	dpl,r4
      0041C0 8B 83            [24] 4666 	mov	dph,r3
      0041C2 12 29 C0         [24] 4667 	lcall	_putchar
      0041C5 0D               [12] 4668 	inc	r5
                                   4669 ;	calc.c:270: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0041C6 BD 00 E7         [24] 4670 	cjne	r5,#0x00,00355$
      0041C9 0E               [12] 4671 	inc	r6
      0041CA 80 E4            [24] 4672 	sjmp	00355$
      0041CC                       4673 00185$:
                                   4674 ;	calc.c:272: d0 = ~d0;
      0041CC E5 08            [12] 4675 	mov	a,_bp
      0041CE 24 07            [12] 4676 	add	a,#0x07
      0041D0 F8               [12] 4677 	mov	r0,a
      0041D1 E6               [12] 4678 	mov	a,@r0
      0041D2 F4               [12] 4679 	cpl	a
      0041D3 F6               [12] 4680 	mov	@r0,a
      0041D4 08               [12] 4681 	inc	r0
      0041D5 E6               [12] 4682 	mov	a,@r0
      0041D6 F4               [12] 4683 	cpl	a
      0041D7 F6               [12] 4684 	mov	@r0,a
      0041D8 08               [12] 4685 	inc	r0
      0041D9 E6               [12] 4686 	mov	a,@r0
      0041DA F4               [12] 4687 	cpl	a
      0041DB F6               [12] 4688 	mov	@r0,a
      0041DC 08               [12] 4689 	inc	r0
      0041DD E6               [12] 4690 	mov	a,@r0
      0041DE F4               [12] 4691 	cpl	a
      0041DF F6               [12] 4692 	mov	@r0,a
                                   4693 ;	calc.c:273: (void)stack_push(&ctx->s, d0);
      0041E0 E5 08            [12] 4694 	mov	a,_bp
      0041E2 24 04            [12] 4695 	add	a,#0x04
      0041E4 F8               [12] 4696 	mov	r0,a
      0041E5 74 09            [12] 4697 	mov	a,#0x09
      0041E7 26               [12] 4698 	add	a,@r0
      0041E8 FD               [12] 4699 	mov	r5,a
      0041E9 E4               [12] 4700 	clr	a
      0041EA 08               [12] 4701 	inc	r0
      0041EB 36               [12] 4702 	addc	a,@r0
      0041EC FE               [12] 4703 	mov	r6,a
      0041ED 08               [12] 4704 	inc	r0
      0041EE 86 07            [24] 4705 	mov	ar7,@r0
      0041F0 E5 08            [12] 4706 	mov	a,_bp
      0041F2 24 07            [12] 4707 	add	a,#0x07
      0041F4 F8               [12] 4708 	mov	r0,a
      0041F5 E6               [12] 4709 	mov	a,@r0
      0041F6 C0 E0            [24] 4710 	push	acc
      0041F8 08               [12] 4711 	inc	r0
      0041F9 E6               [12] 4712 	mov	a,@r0
      0041FA C0 E0            [24] 4713 	push	acc
      0041FC 08               [12] 4714 	inc	r0
      0041FD E6               [12] 4715 	mov	a,@r0
      0041FE C0 E0            [24] 4716 	push	acc
      004200 08               [12] 4717 	inc	r0
      004201 E6               [12] 4718 	mov	a,@r0
      004202 C0 E0            [24] 4719 	push	acc
      004204 8D 82            [24] 4720 	mov	dpl,r5
      004206 8E 83            [24] 4721 	mov	dph,r6
      004208 8F F0            [24] 4722 	mov	b,r7
      00420A 12 26 B5         [24] 4723 	lcall	_stack_push
      00420D E5 81            [12] 4724 	mov	a,sp
      00420F 24 FC            [12] 4725 	add	a,#0xfc
      004211 F5 81            [12] 4726 	mov	sp,a
                                   4727 ;	calc.c:275: break;
                                   4728 ;	calc.c:276: default:
      004213 80 05            [24] 4729 	sjmp	00188$
      004215                       4730 00187$:
                                   4731 ;	calc.c:277: return UNDEF;
      004215 90 80 00         [24] 4732 	mov	dptr,#0x8000
                                   4733 ;	calc.c:278: }
      004218 80 03            [24] 4734 	sjmp	00357$
      00421A                       4735 00188$:
                                   4736 ;	calc.c:280: return 1;
      00421A 90 00 01         [24] 4737 	mov	dptr,#0x0001
      00421D                       4738 00357$:
                                   4739 ;	calc.c:281: }
      00421D 85 08 81         [24] 4740 	mov	sp,_bp
      004220 D0 08            [24] 4741 	pop	_bp
      004222 22               [24] 4742 	ret
                                   4743 ;------------------------------------------------------------
                                   4744 ;Allocation info for local variables in function 'push_acc'
                                   4745 ;------------------------------------------------------------
                                   4746 ;delta                     Allocated to stack - _bp -5
                                   4747 ;_ctx                      Allocated to stack - _bp +5
                                   4748 ;ctx                       Allocated to registers r2 r3 r4 
                                   4749 ;__1310720085              Allocated to registers 
                                   4750 ;s                         Allocated to registers r5 r6 r7 
                                   4751 ;sloc0                     Allocated to stack - _bp +1
                                   4752 ;------------------------------------------------------------
                                   4753 ;	calc.c:283: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   4754 ;	-----------------------------------------
                                   4755 ;	 function push_acc
                                   4756 ;	-----------------------------------------
      004223                       4757 _push_acc:
      004223 C0 08            [24] 4758 	push	_bp
      004225 E5 81            [12] 4759 	mov	a,sp
      004227 F5 08            [12] 4760 	mov	_bp,a
      004229 24 07            [12] 4761 	add	a,#0x07
      00422B F5 81            [12] 4762 	mov	sp,a
      00422D C8               [12] 4763 	xch	a,r0
      00422E E5 08            [12] 4764 	mov	a,_bp
      004230 24 05            [12] 4765 	add	a,#0x05
      004232 C8               [12] 4766 	xch	a,r0
      004233 A6 82            [24] 4767 	mov	@r0,dpl
      004235 08               [12] 4768 	inc	r0
      004236 A6 83            [24] 4769 	mov	@r0,dph
      004238 08               [12] 4770 	inc	r0
      004239 A6 F0            [24] 4771 	mov	@r0,b
                                   4772 ;	calc.c:284: struct ctx *ctx = (struct ctx *)_ctx;
      00423B E5 08            [12] 4773 	mov	a,_bp
      00423D 24 05            [12] 4774 	add	a,#0x05
      00423F F8               [12] 4775 	mov	r0,a
      004240 86 02            [24] 4776 	mov	ar2,@r0
      004242 08               [12] 4777 	inc	r0
      004243 86 03            [24] 4778 	mov	ar3,@r0
      004245 08               [12] 4779 	inc	r0
      004246 86 04            [24] 4780 	mov	ar4,@r0
                                   4781 ;	calc.c:288: ctx->acc_valid = 0;
      004248 74 06            [12] 4782 	mov	a,#0x06
      00424A 2A               [12] 4783 	add	a,r2
      00424B FD               [12] 4784 	mov	r5,a
      00424C E4               [12] 4785 	clr	a
      00424D 3B               [12] 4786 	addc	a,r3
      00424E FE               [12] 4787 	mov	r6,a
      00424F 8C 07            [24] 4788 	mov	ar7,r4
      004251 8D 82            [24] 4789 	mov	dpl,r5
      004253 8E 83            [24] 4790 	mov	dph,r6
      004255 8F F0            [24] 4791 	mov	b,r7
      004257 E4               [12] 4792 	clr	a
      004258 12 4D 4E         [24] 4793 	lcall	__gptrput
                                   4794 ;	calc.c:289: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      00425B 74 02            [12] 4795 	mov	a,#0x02
      00425D 2A               [12] 4796 	add	a,r2
      00425E FF               [12] 4797 	mov	r7,a
      00425F E4               [12] 4798 	clr	a
      004260 3B               [12] 4799 	addc	a,r3
      004261 FD               [12] 4800 	mov	r5,a
      004262 8C 06            [24] 4801 	mov	ar6,r4
      004264 8F 82            [24] 4802 	mov	dpl,r7
      004266 8D 83            [24] 4803 	mov	dph,r5
      004268 8E F0            [24] 4804 	mov	b,r6
      00426A A8 08            [24] 4805 	mov	r0,_bp
      00426C 08               [12] 4806 	inc	r0
      00426D 12 51 C9         [24] 4807 	lcall	__gptrget
      004270 F6               [12] 4808 	mov	@r0,a
      004271 A3               [24] 4809 	inc	dptr
      004272 12 51 C9         [24] 4810 	lcall	__gptrget
      004275 08               [12] 4811 	inc	r0
      004276 F6               [12] 4812 	mov	@r0,a
      004277 A3               [24] 4813 	inc	dptr
      004278 12 51 C9         [24] 4814 	lcall	__gptrget
      00427B 08               [12] 4815 	inc	r0
      00427C F6               [12] 4816 	mov	@r0,a
      00427D A3               [24] 4817 	inc	dptr
      00427E 12 51 C9         [24] 4818 	lcall	__gptrget
      004281 08               [12] 4819 	inc	r0
      004282 F6               [12] 4820 	mov	@r0,a
      004283 74 09            [12] 4821 	mov	a,#0x09
      004285 2A               [12] 4822 	add	a,r2
      004286 FA               [12] 4823 	mov	r2,a
      004287 E4               [12] 4824 	clr	a
      004288 3B               [12] 4825 	addc	a,r3
      004289 FB               [12] 4826 	mov	r3,a
      00428A 8C 07            [24] 4827 	mov	ar7,r4
      00428C A8 08            [24] 4828 	mov	r0,_bp
      00428E 08               [12] 4829 	inc	r0
      00428F E6               [12] 4830 	mov	a,@r0
      004290 C0 E0            [24] 4831 	push	acc
      004292 08               [12] 4832 	inc	r0
      004293 E6               [12] 4833 	mov	a,@r0
      004294 C0 E0            [24] 4834 	push	acc
      004296 08               [12] 4835 	inc	r0
      004297 E6               [12] 4836 	mov	a,@r0
      004298 C0 E0            [24] 4837 	push	acc
      00429A 08               [12] 4838 	inc	r0
      00429B E6               [12] 4839 	mov	a,@r0
      00429C C0 E0            [24] 4840 	push	acc
      00429E 8A 82            [24] 4841 	mov	dpl,r2
      0042A0 8B 83            [24] 4842 	mov	dph,r3
      0042A2 8F F0            [24] 4843 	mov	b,r7
      0042A4 12 26 B5         [24] 4844 	lcall	_stack_push
      0042A7 AE 82            [24] 4845 	mov	r6,dpl
      0042A9 AF 83            [24] 4846 	mov	r7,dph
      0042AB E5 81            [12] 4847 	mov	a,sp
      0042AD 24 FC            [12] 4848 	add	a,#0xfc
      0042AF F5 81            [12] 4849 	mov	sp,a
      0042B1 EE               [12] 4850 	mov	a,r6
      0042B2 4F               [12] 4851 	orl	a,r7
      0042B3 70 22            [24] 4852 	jnz	00102$
      0042B5 7D AB            [12] 4853 	mov	r5,#___str_10
      0042B7 7E 6A            [12] 4854 	mov	r6,#(___str_10 >> 8)
      0042B9 7F 80            [12] 4855 	mov	r7,#0x80
                                   4856 ;	calc.c:50: return;
      0042BB                       4857 00109$:
                                   4858 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042BB 8D 82            [24] 4859 	mov	dpl,r5
      0042BD 8E 83            [24] 4860 	mov	dph,r6
      0042BF 8F F0            [24] 4861 	mov	b,r7
      0042C1 12 51 C9         [24] 4862 	lcall	__gptrget
      0042C4 FC               [12] 4863 	mov	r4,a
      0042C5 60 10            [24] 4864 	jz	00102$
      0042C7 7B 00            [12] 4865 	mov	r3,#0x00
      0042C9 8C 82            [24] 4866 	mov	dpl,r4
      0042CB 8B 83            [24] 4867 	mov	dph,r3
      0042CD 12 29 C0         [24] 4868 	lcall	_putchar
      0042D0 0D               [12] 4869 	inc	r5
                                   4870 ;	calc.c:289: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0042D1 BD 00 E7         [24] 4871 	cjne	r5,#0x00,00109$
      0042D4 0E               [12] 4872 	inc	r6
      0042D5 80 E4            [24] 4873 	sjmp	00109$
      0042D7                       4874 00102$:
                                   4875 ;	calc.c:291: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      0042D7 E5 08            [12] 4876 	mov	a,_bp
      0042D9 24 FB            [12] 4877 	add	a,#0xfb
      0042DB F8               [12] 4878 	mov	r0,a
      0042DC 86 05            [24] 4879 	mov	ar5,@r0
      0042DE 08               [12] 4880 	inc	r0
      0042DF 86 06            [24] 4881 	mov	ar6,@r0
      0042E1 08               [12] 4882 	inc	r0
      0042E2 86 07            [24] 4883 	mov	ar7,@r0
      0042E4 74 02            [12] 4884 	mov	a,#0x02
      0042E6 2D               [12] 4885 	add	a,r5
      0042E7 FA               [12] 4886 	mov	r2,a
      0042E8 E4               [12] 4887 	clr	a
      0042E9 3E               [12] 4888 	addc	a,r6
      0042EA FB               [12] 4889 	mov	r3,a
      0042EB 8F 04            [24] 4890 	mov	ar4,r7
      0042ED 8A 82            [24] 4891 	mov	dpl,r2
      0042EF 8B 83            [24] 4892 	mov	dph,r3
      0042F1 8C F0            [24] 4893 	mov	b,r4
      0042F3 12 51 C9         [24] 4894 	lcall	__gptrget
      0042F6 FA               [12] 4895 	mov	r2,a
      0042F7 A3               [24] 4896 	inc	dptr
      0042F8 12 51 C9         [24] 4897 	lcall	__gptrget
      0042FB FB               [12] 4898 	mov	r3,a
      0042FC BA 02 29         [24] 4899 	cjne	r2,#0x02,00104$
      0042FF BB 00 26         [24] 4900 	cjne	r3,#0x00,00104$
      004302 C0 05            [24] 4901 	push	ar5
      004304 C0 06            [24] 4902 	push	ar6
      004306 C0 07            [24] 4903 	push	ar7
      004308 E5 08            [12] 4904 	mov	a,_bp
      00430A 24 05            [12] 4905 	add	a,#0x05
      00430C F8               [12] 4906 	mov	r0,a
      00430D 86 82            [24] 4907 	mov	dpl,@r0
      00430F 08               [12] 4908 	inc	r0
      004310 86 83            [24] 4909 	mov	dph,@r0
      004312 08               [12] 4910 	inc	r0
      004313 86 F0            [24] 4911 	mov	b,@r0
      004315 12 2F E4         [24] 4912 	lcall	_operator
      004318 AE 82            [24] 4913 	mov	r6,dpl
      00431A AF 83            [24] 4914 	mov	r7,dph
      00431C 15 81            [12] 4915 	dec	sp
      00431E 15 81            [12] 4916 	dec	sp
      004320 15 81            [12] 4917 	dec	sp
      004322 8E 82            [24] 4918 	mov	dpl,r6
      004324 8F 83            [24] 4919 	mov	dph,r7
      004326 80 03            [24] 4920 	sjmp	00111$
      004328                       4921 00104$:
                                   4922 ;	calc.c:292: else return 1;
      004328 90 00 01         [24] 4923 	mov	dptr,#0x0001
      00432B                       4924 00111$:
                                   4925 ;	calc.c:293: }
      00432B 85 08 81         [24] 4926 	mov	sp,_bp
      00432E D0 08            [24] 4927 	pop	_bp
      004330 22               [24] 4928 	ret
                                   4929 ;------------------------------------------------------------
                                   4930 ;Allocation info for local variables in function 'reset_acc'
                                   4931 ;------------------------------------------------------------
                                   4932 ;delta                     Allocated to stack - _bp -5
                                   4933 ;_ctx                      Allocated to registers r5 r6 r7 
                                   4934 ;ctx                       Allocated to registers r5 r6 r7 
                                   4935 ;------------------------------------------------------------
                                   4936 ;	calc.c:295: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   4937 ;	-----------------------------------------
                                   4938 ;	 function reset_acc
                                   4939 ;	-----------------------------------------
      004331                       4940 _reset_acc:
      004331 C0 08            [24] 4941 	push	_bp
      004333 85 81 08         [24] 4942 	mov	_bp,sp
      004336 AD 82            [24] 4943 	mov	r5,dpl
      004338 AE 83            [24] 4944 	mov	r6,dph
      00433A AF F0            [24] 4945 	mov	r7,b
                                   4946 ;	calc.c:296: struct ctx *ctx = (struct ctx *)_ctx;
                                   4947 ;	calc.c:298: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      00433C E5 08            [12] 4948 	mov	a,_bp
      00433E 24 FB            [12] 4949 	add	a,#0xfb
      004340 F8               [12] 4950 	mov	r0,a
      004341 86 02            [24] 4951 	mov	ar2,@r0
      004343 08               [12] 4952 	inc	r0
      004344 86 03            [24] 4953 	mov	ar3,@r0
      004346 08               [12] 4954 	inc	r0
      004347 86 04            [24] 4955 	mov	ar4,@r0
      004349 74 02            [12] 4956 	mov	a,#0x02
      00434B 2A               [12] 4957 	add	a,r2
      00434C FA               [12] 4958 	mov	r2,a
      00434D E4               [12] 4959 	clr	a
      00434E 3B               [12] 4960 	addc	a,r3
      00434F FB               [12] 4961 	mov	r3,a
      004350 8A 82            [24] 4962 	mov	dpl,r2
      004352 8B 83            [24] 4963 	mov	dph,r3
      004354 8C F0            [24] 4964 	mov	b,r4
      004356 12 51 C9         [24] 4965 	lcall	__gptrget
      004359 FA               [12] 4966 	mov	r2,a
      00435A A3               [24] 4967 	inc	dptr
      00435B 12 51 C9         [24] 4968 	lcall	__gptrget
      00435E FB               [12] 4969 	mov	r3,a
      00435F BA 06 16         [24] 4970 	cjne	r2,#0x06,00102$
      004362 BB 00 13         [24] 4971 	cjne	r3,#0x00,00102$
      004365 74 06            [12] 4972 	mov	a,#0x06
      004367 2D               [12] 4973 	add	a,r5
      004368 FA               [12] 4974 	mov	r2,a
      004369 E4               [12] 4975 	clr	a
      00436A 3E               [12] 4976 	addc	a,r6
      00436B FB               [12] 4977 	mov	r3,a
      00436C 8F 04            [24] 4978 	mov	ar4,r7
      00436E 8A 82            [24] 4979 	mov	dpl,r2
      004370 8B 83            [24] 4980 	mov	dph,r3
      004372 8C F0            [24] 4981 	mov	b,r4
      004374 E4               [12] 4982 	clr	a
      004375 12 4D 4E         [24] 4983 	lcall	__gptrput
      004378                       4984 00102$:
                                   4985 ;	calc.c:299: ctx->acc = 0l;
      004378 74 02            [12] 4986 	mov	a,#0x02
      00437A 2D               [12] 4987 	add	a,r5
      00437B FD               [12] 4988 	mov	r5,a
      00437C E4               [12] 4989 	clr	a
      00437D 3E               [12] 4990 	addc	a,r6
      00437E FE               [12] 4991 	mov	r6,a
      00437F 8D 82            [24] 4992 	mov	dpl,r5
      004381 8E 83            [24] 4993 	mov	dph,r6
      004383 8F F0            [24] 4994 	mov	b,r7
      004385 E4               [12] 4995 	clr	a
      004386 12 4D 4E         [24] 4996 	lcall	__gptrput
      004389 A3               [24] 4997 	inc	dptr
      00438A 12 4D 4E         [24] 4998 	lcall	__gptrput
      00438D A3               [24] 4999 	inc	dptr
      00438E 12 4D 4E         [24] 5000 	lcall	__gptrput
      004391 A3               [24] 5001 	inc	dptr
      004392 12 4D 4E         [24] 5002 	lcall	__gptrput
                                   5003 ;	calc.c:301: return 1;
      004395 90 00 01         [24] 5004 	mov	dptr,#0x0001
                                   5005 ;	calc.c:302: }
      004398 D0 08            [24] 5006 	pop	_bp
      00439A 22               [24] 5007 	ret
                                   5008 ;------------------------------------------------------------
                                   5009 ;Allocation info for local variables in function 'reset_base'
                                   5010 ;------------------------------------------------------------
                                   5011 ;delta                     Allocated to stack - _bp -5
                                   5012 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5013 ;ctx                       Allocated to registers r5 r6 r7 
                                   5014 ;------------------------------------------------------------
                                   5015 ;	calc.c:304: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   5016 ;	-----------------------------------------
                                   5017 ;	 function reset_base
                                   5018 ;	-----------------------------------------
      00439B                       5019 _reset_base:
      00439B C0 08            [24] 5020 	push	_bp
      00439D 85 81 08         [24] 5021 	mov	_bp,sp
      0043A0 AD 82            [24] 5022 	mov	r5,dpl
      0043A2 AE 83            [24] 5023 	mov	r6,dph
      0043A4 AF F0            [24] 5024 	mov	r7,b
                                   5025 ;	calc.c:305: struct ctx *ctx = (struct ctx *)_ctx;
                                   5026 ;	calc.c:309: switch (ctx->digit[0]) {
      0043A6 74 07            [12] 5027 	mov	a,#0x07
      0043A8 2D               [12] 5028 	add	a,r5
      0043A9 FA               [12] 5029 	mov	r2,a
      0043AA E4               [12] 5030 	clr	a
      0043AB 3E               [12] 5031 	addc	a,r6
      0043AC FB               [12] 5032 	mov	r3,a
      0043AD 8F 04            [24] 5033 	mov	ar4,r7
      0043AF 8A 82            [24] 5034 	mov	dpl,r2
      0043B1 8B 83            [24] 5035 	mov	dph,r3
      0043B3 8C F0            [24] 5036 	mov	b,r4
      0043B5 12 51 C9         [24] 5037 	lcall	__gptrget
      0043B8 FC               [12] 5038 	mov	r4,a
      0043B9 BC 48 02         [24] 5039 	cjne	r4,#0x48,00124$
      0043BC 80 0F            [24] 5040 	sjmp	00101$
      0043BE                       5041 00124$:
      0043BE BC 4F 02         [24] 5042 	cjne	r4,#0x4f,00125$
      0043C1 80 2E            [24] 5043 	sjmp	00103$
      0043C3                       5044 00125$:
      0043C3 BC 68 02         [24] 5045 	cjne	r4,#0x68,00126$
      0043C6 80 17            [24] 5046 	sjmp	00102$
      0043C8                       5047 00126$:
                                   5048 ;	calc.c:310: case 'H':
      0043C8 BC 6F 48         [24] 5049 	cjne	r4,#0x6f,00105$
      0043CB 80 36            [24] 5050 	sjmp	00104$
      0043CD                       5051 00101$:
                                   5052 ;	calc.c:311: ctx->base = 16;
      0043CD 8D 82            [24] 5053 	mov	dpl,r5
      0043CF 8E 83            [24] 5054 	mov	dph,r6
      0043D1 8F F0            [24] 5055 	mov	b,r7
      0043D3 74 10            [12] 5056 	mov	a,#0x10
      0043D5 12 4D 4E         [24] 5057 	lcall	__gptrput
      0043D8 A3               [24] 5058 	inc	dptr
      0043D9 E4               [12] 5059 	clr	a
      0043DA 12 4D 4E         [24] 5060 	lcall	__gptrput
                                   5061 ;	calc.c:312: break;
                                   5062 ;	calc.c:313: case 'h':
      0043DD 80 34            [24] 5063 	sjmp	00105$
      0043DF                       5064 00102$:
                                   5065 ;	calc.c:314: ctx->base = 10;
      0043DF 8D 82            [24] 5066 	mov	dpl,r5
      0043E1 8E 83            [24] 5067 	mov	dph,r6
      0043E3 8F F0            [24] 5068 	mov	b,r7
      0043E5 74 0A            [12] 5069 	mov	a,#0x0a
      0043E7 12 4D 4E         [24] 5070 	lcall	__gptrput
      0043EA A3               [24] 5071 	inc	dptr
      0043EB E4               [12] 5072 	clr	a
      0043EC 12 4D 4E         [24] 5073 	lcall	__gptrput
                                   5074 ;	calc.c:315: break;
                                   5075 ;	calc.c:316: case 'O':
      0043EF 80 22            [24] 5076 	sjmp	00105$
      0043F1                       5077 00103$:
                                   5078 ;	calc.c:317: ctx->base = 8;
      0043F1 8D 82            [24] 5079 	mov	dpl,r5
      0043F3 8E 83            [24] 5080 	mov	dph,r6
      0043F5 8F F0            [24] 5081 	mov	b,r7
      0043F7 74 08            [12] 5082 	mov	a,#0x08
      0043F9 12 4D 4E         [24] 5083 	lcall	__gptrput
      0043FC A3               [24] 5084 	inc	dptr
      0043FD E4               [12] 5085 	clr	a
      0043FE 12 4D 4E         [24] 5086 	lcall	__gptrput
                                   5087 ;	calc.c:318: break;
                                   5088 ;	calc.c:319: case 'o':
      004401 80 10            [24] 5089 	sjmp	00105$
      004403                       5090 00104$:
                                   5091 ;	calc.c:320: ctx->base = 2;
      004403 8D 82            [24] 5092 	mov	dpl,r5
      004405 8E 83            [24] 5093 	mov	dph,r6
      004407 8F F0            [24] 5094 	mov	b,r7
      004409 74 02            [12] 5095 	mov	a,#0x02
      00440B 12 4D 4E         [24] 5096 	lcall	__gptrput
      00440E A3               [24] 5097 	inc	dptr
      00440F E4               [12] 5098 	clr	a
      004410 12 4D 4E         [24] 5099 	lcall	__gptrput
                                   5100 ;	calc.c:322: }
      004413                       5101 00105$:
                                   5102 ;	calc.c:324: return 1;
      004413 90 00 01         [24] 5103 	mov	dptr,#0x0001
                                   5104 ;	calc.c:325: }
      004416 D0 08            [24] 5105 	pop	_bp
      004418 22               [24] 5106 	ret
                                   5107 ;------------------------------------------------------------
                                   5108 ;Allocation info for local variables in function 'help'
                                   5109 ;------------------------------------------------------------
                                   5110 ;delta                     Allocated to stack - _bp -5
                                   5111 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5112 ;ctx                       Allocated to stack - _bp +4
                                   5113 ;__1310720087              Allocated to registers 
                                   5114 ;d                         Allocated to stack - _bp +7
                                   5115 ;mask                      Allocated to stack - _bp +11
                                   5116 ;__1310720089              Allocated to registers 
                                   5117 ;s                         Allocated to registers r5 r6 r7 
                                   5118 ;__1310720091              Allocated to registers 
                                   5119 ;s                         Allocated to registers r5 r6 r7 
                                   5120 ;__1310720093              Allocated to registers 
                                   5121 ;s                         Allocated to registers r5 r6 r7 
                                   5122 ;__1310720095              Allocated to registers 
                                   5123 ;s                         Allocated to registers r5 r6 r7 
                                   5124 ;__1310720097              Allocated to registers 
                                   5125 ;s                         Allocated to registers r5 r6 r7 
                                   5126 ;__1310720099              Allocated to registers 
                                   5127 ;s                         Allocated to registers r5 r6 r7 
                                   5128 ;__1310720101              Allocated to registers 
                                   5129 ;s                         Allocated to registers r5 r6 r7 
                                   5130 ;__1310720103              Allocated to registers 
                                   5131 ;s                         Allocated to registers r5 r6 r7 
                                   5132 ;__1310720105              Allocated to registers 
                                   5133 ;s                         Allocated to registers r5 r6 r7 
                                   5134 ;__1310720107              Allocated to registers 
                                   5135 ;s                         Allocated to registers r5 r6 r7 
                                   5136 ;__1310720109              Allocated to registers 
                                   5137 ;s                         Allocated to registers r5 r6 r7 
                                   5138 ;__1310720111              Allocated to registers 
                                   5139 ;s                         Allocated to registers r5 r6 r7 
                                   5140 ;__1310720113              Allocated to registers 
                                   5141 ;s                         Allocated to registers r5 r6 r7 
                                   5142 ;__1310720115              Allocated to registers 
                                   5143 ;s                         Allocated to registers r5 r6 r7 
                                   5144 ;__1310720117              Allocated to registers 
                                   5145 ;s                         Allocated to registers r5 r6 r7 
                                   5146 ;__1310720119              Allocated to registers 
                                   5147 ;s                         Allocated to registers r5 r6 r7 
                                   5148 ;__1310720121              Allocated to registers 
                                   5149 ;s                         Allocated to registers r5 r6 r7 
                                   5150 ;__1310720123              Allocated to registers 
                                   5151 ;s                         Allocated to registers r5 r6 r7 
                                   5152 ;__1310720125              Allocated to registers 
                                   5153 ;s                         Allocated to registers r5 r6 r7 
                                   5154 ;sloc0                     Allocated to stack - _bp +1
                                   5155 ;------------------------------------------------------------
                                   5156 ;	calc.c:327: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   5157 ;	-----------------------------------------
                                   5158 ;	 function help
                                   5159 ;	-----------------------------------------
      004419                       5160 _help:
      004419 C0 08            [24] 5161 	push	_bp
      00441B E5 81            [12] 5162 	mov	a,sp
      00441D F5 08            [12] 5163 	mov	_bp,a
      00441F 24 0E            [12] 5164 	add	a,#0x0e
      004421 F5 81            [12] 5165 	mov	sp,a
      004423 AD 82            [24] 5166 	mov	r5,dpl
      004425 AE 83            [24] 5167 	mov	r6,dph
      004427 AF F0            [24] 5168 	mov	r7,b
                                   5169 ;	calc.c:328: struct ctx *ctx = (struct ctx *)_ctx;
      004429 E5 08            [12] 5170 	mov	a,_bp
      00442B 24 04            [12] 5171 	add	a,#0x04
      00442D F8               [12] 5172 	mov	r0,a
      00442E A6 05            [24] 5173 	mov	@r0,ar5
      004430 08               [12] 5174 	inc	r0
      004431 A6 06            [24] 5175 	mov	@r0,ar6
      004433 08               [12] 5176 	inc	r0
      004434 A6 07            [24] 5177 	mov	@r0,ar7
                                   5178 ;	calc.c:331: printf("\r\nbase = %d, ", ctx->base);
      004436 E5 08            [12] 5179 	mov	a,_bp
      004438 24 04            [12] 5180 	add	a,#0x04
      00443A F8               [12] 5181 	mov	r0,a
      00443B 86 82            [24] 5182 	mov	dpl,@r0
      00443D 08               [12] 5183 	inc	r0
      00443E 86 83            [24] 5184 	mov	dph,@r0
      004440 08               [12] 5185 	inc	r0
      004441 86 F0            [24] 5186 	mov	b,@r0
      004443 12 51 C9         [24] 5187 	lcall	__gptrget
      004446 FB               [12] 5188 	mov	r3,a
      004447 A3               [24] 5189 	inc	dptr
      004448 12 51 C9         [24] 5190 	lcall	__gptrget
      00444B FC               [12] 5191 	mov	r4,a
      00444C C0 03            [24] 5192 	push	ar3
      00444E C0 04            [24] 5193 	push	ar4
      004450 74 BE            [12] 5194 	mov	a,#___str_11
      004452 C0 E0            [24] 5195 	push	acc
      004454 74 6A            [12] 5196 	mov	a,#(___str_11 >> 8)
      004456 C0 E0            [24] 5197 	push	acc
      004458 74 80            [12] 5198 	mov	a,#0x80
      00445A C0 E0            [24] 5199 	push	acc
      00445C 12 51 90         [24] 5200 	lcall	_printf
      00445F E5 81            [12] 5201 	mov	a,sp
      004461 24 FB            [12] 5202 	add	a,#0xfb
      004463 F5 81            [12] 5203 	mov	sp,a
                                   5204 ;	calc.c:332: printf("acc = %ld / ", ctx->acc);
      004465 E5 08            [12] 5205 	mov	a,_bp
      004467 24 04            [12] 5206 	add	a,#0x04
      004469 F8               [12] 5207 	mov	r0,a
      00446A A9 08            [24] 5208 	mov	r1,_bp
      00446C 09               [12] 5209 	inc	r1
      00446D 74 02            [12] 5210 	mov	a,#0x02
      00446F 26               [12] 5211 	add	a,@r0
      004470 F7               [12] 5212 	mov	@r1,a
      004471 E4               [12] 5213 	clr	a
      004472 08               [12] 5214 	inc	r0
      004473 36               [12] 5215 	addc	a,@r0
      004474 09               [12] 5216 	inc	r1
      004475 F7               [12] 5217 	mov	@r1,a
      004476 08               [12] 5218 	inc	r0
      004477 09               [12] 5219 	inc	r1
      004478 E6               [12] 5220 	mov	a,@r0
      004479 F7               [12] 5221 	mov	@r1,a
      00447A A8 08            [24] 5222 	mov	r0,_bp
      00447C 08               [12] 5223 	inc	r0
      00447D 86 82            [24] 5224 	mov	dpl,@r0
      00447F 08               [12] 5225 	inc	r0
      004480 86 83            [24] 5226 	mov	dph,@r0
      004482 08               [12] 5227 	inc	r0
      004483 86 F0            [24] 5228 	mov	b,@r0
      004485 12 51 C9         [24] 5229 	lcall	__gptrget
      004488 FC               [12] 5230 	mov	r4,a
      004489 A3               [24] 5231 	inc	dptr
      00448A 12 51 C9         [24] 5232 	lcall	__gptrget
      00448D FD               [12] 5233 	mov	r5,a
      00448E A3               [24] 5234 	inc	dptr
      00448F 12 51 C9         [24] 5235 	lcall	__gptrget
      004492 FE               [12] 5236 	mov	r6,a
      004493 A3               [24] 5237 	inc	dptr
      004494 12 51 C9         [24] 5238 	lcall	__gptrget
      004497 FF               [12] 5239 	mov	r7,a
      004498 C0 04            [24] 5240 	push	ar4
      00449A C0 05            [24] 5241 	push	ar5
      00449C C0 06            [24] 5242 	push	ar6
      00449E C0 07            [24] 5243 	push	ar7
      0044A0 74 CC            [12] 5244 	mov	a,#___str_12
      0044A2 C0 E0            [24] 5245 	push	acc
      0044A4 74 6A            [12] 5246 	mov	a,#(___str_12 >> 8)
      0044A6 C0 E0            [24] 5247 	push	acc
      0044A8 74 80            [12] 5248 	mov	a,#0x80
      0044AA C0 E0            [24] 5249 	push	acc
      0044AC 12 51 90         [24] 5250 	lcall	_printf
      0044AF E5 81            [12] 5251 	mov	a,sp
      0044B1 24 F9            [12] 5252 	add	a,#0xf9
      0044B3 F5 81            [12] 5253 	mov	sp,a
                                   5254 ;	calc.c:333: printf("%08lx / ", ctx->acc);
      0044B5 A8 08            [24] 5255 	mov	r0,_bp
      0044B7 08               [12] 5256 	inc	r0
      0044B8 86 82            [24] 5257 	mov	dpl,@r0
      0044BA 08               [12] 5258 	inc	r0
      0044BB 86 83            [24] 5259 	mov	dph,@r0
      0044BD 08               [12] 5260 	inc	r0
      0044BE 86 F0            [24] 5261 	mov	b,@r0
      0044C0 12 51 C9         [24] 5262 	lcall	__gptrget
      0044C3 FC               [12] 5263 	mov	r4,a
      0044C4 A3               [24] 5264 	inc	dptr
      0044C5 12 51 C9         [24] 5265 	lcall	__gptrget
      0044C8 FD               [12] 5266 	mov	r5,a
      0044C9 A3               [24] 5267 	inc	dptr
      0044CA 12 51 C9         [24] 5268 	lcall	__gptrget
      0044CD FE               [12] 5269 	mov	r6,a
      0044CE A3               [24] 5270 	inc	dptr
      0044CF 12 51 C9         [24] 5271 	lcall	__gptrget
      0044D2 FF               [12] 5272 	mov	r7,a
      0044D3 C0 04            [24] 5273 	push	ar4
      0044D5 C0 05            [24] 5274 	push	ar5
      0044D7 C0 06            [24] 5275 	push	ar6
      0044D9 C0 07            [24] 5276 	push	ar7
      0044DB 74 6D            [12] 5277 	mov	a,#___str_4
      0044DD C0 E0            [24] 5278 	push	acc
      0044DF 74 6A            [12] 5279 	mov	a,#(___str_4 >> 8)
      0044E1 C0 E0            [24] 5280 	push	acc
      0044E3 74 80            [12] 5281 	mov	a,#0x80
      0044E5 C0 E0            [24] 5282 	push	acc
      0044E7 12 51 90         [24] 5283 	lcall	_printf
      0044EA E5 81            [12] 5284 	mov	a,sp
      0044EC 24 F9            [12] 5285 	add	a,#0xf9
      0044EE F5 81            [12] 5286 	mov	sp,a
                                   5287 ;	calc.c:334: printbin(ctx->acc);
      0044F0 A8 08            [24] 5288 	mov	r0,_bp
      0044F2 08               [12] 5289 	inc	r0
      0044F3 86 82            [24] 5290 	mov	dpl,@r0
      0044F5 08               [12] 5291 	inc	r0
      0044F6 86 83            [24] 5292 	mov	dph,@r0
      0044F8 08               [12] 5293 	inc	r0
      0044F9 86 F0            [24] 5294 	mov	b,@r0
      0044FB E5 08            [12] 5295 	mov	a,_bp
      0044FD 24 07            [12] 5296 	add	a,#0x07
      0044FF F9               [12] 5297 	mov	r1,a
      004500 12 51 C9         [24] 5298 	lcall	__gptrget
      004503 F7               [12] 5299 	mov	@r1,a
      004504 A3               [24] 5300 	inc	dptr
      004505 12 51 C9         [24] 5301 	lcall	__gptrget
      004508 09               [12] 5302 	inc	r1
      004509 F7               [12] 5303 	mov	@r1,a
      00450A A3               [24] 5304 	inc	dptr
      00450B 12 51 C9         [24] 5305 	lcall	__gptrget
      00450E 09               [12] 5306 	inc	r1
      00450F F7               [12] 5307 	mov	@r1,a
      004510 A3               [24] 5308 	inc	dptr
      004511 12 51 C9         [24] 5309 	lcall	__gptrget
      004514 09               [12] 5310 	inc	r1
      004515 F7               [12] 5311 	mov	@r1,a
                                   5312 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      004516 E5 08            [12] 5313 	mov	a,_bp
      004518 24 0B            [12] 5314 	add	a,#0x0b
      00451A F8               [12] 5315 	mov	r0,a
      00451B E4               [12] 5316 	clr	a
      00451C F6               [12] 5317 	mov	@r0,a
      00451D 08               [12] 5318 	inc	r0
      00451E F6               [12] 5319 	mov	@r0,a
      00451F 08               [12] 5320 	inc	r0
      004520 F6               [12] 5321 	mov	@r0,a
      004521 08               [12] 5322 	inc	r0
      004522 76 80            [12] 5323 	mov	@r0,#0x80
      004524                       5324 00141$:
                                   5325 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      004524 E5 08            [12] 5326 	mov	a,_bp
      004526 24 07            [12] 5327 	add	a,#0x07
      004528 F8               [12] 5328 	mov	r0,a
      004529 86 04            [24] 5329 	mov	ar4,@r0
      00452B 08               [12] 5330 	inc	r0
      00452C 86 05            [24] 5331 	mov	ar5,@r0
      00452E 08               [12] 5332 	inc	r0
      00452F 86 06            [24] 5333 	mov	ar6,@r0
      004531 08               [12] 5334 	inc	r0
      004532 86 07            [24] 5335 	mov	ar7,@r0
      004534 E5 08            [12] 5336 	mov	a,_bp
      004536 24 0B            [12] 5337 	add	a,#0x0b
      004538 F8               [12] 5338 	mov	r0,a
      004539 E6               [12] 5339 	mov	a,@r0
      00453A 52 04            [12] 5340 	anl	ar4,a
      00453C 08               [12] 5341 	inc	r0
      00453D E6               [12] 5342 	mov	a,@r0
      00453E 52 05            [12] 5343 	anl	ar5,a
      004540 08               [12] 5344 	inc	r0
      004541 E6               [12] 5345 	mov	a,@r0
      004542 52 06            [12] 5346 	anl	ar6,a
      004544 08               [12] 5347 	inc	r0
      004545 E6               [12] 5348 	mov	a,@r0
      004546 52 07            [12] 5349 	anl	ar7,a
      004548 EC               [12] 5350 	mov	a,r4
      004549 4D               [12] 5351 	orl	a,r5
      00454A 4E               [12] 5352 	orl	a,r6
      00454B 4F               [12] 5353 	orl	a,r7
      00454C 60 06            [24] 5354 	jz	00202$
      00454E 7E 31            [12] 5355 	mov	r6,#0x31
      004550 7F 00            [12] 5356 	mov	r7,#0x00
      004552 80 04            [24] 5357 	sjmp	00203$
      004554                       5358 00202$:
      004554 7E 30            [12] 5359 	mov	r6,#0x30
      004556 7F 00            [12] 5360 	mov	r7,#0x00
      004558                       5361 00203$:
      004558 8E 82            [24] 5362 	mov	dpl,r6
      00455A 8F 83            [24] 5363 	mov	dph,r7
      00455C 12 29 C0         [24] 5364 	lcall	_putchar
                                   5365 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      00455F E5 08            [12] 5366 	mov	a,_bp
      004561 24 0B            [12] 5367 	add	a,#0x0b
      004563 F8               [12] 5368 	mov	r0,a
      004564 08               [12] 5369 	inc	r0
      004565 08               [12] 5370 	inc	r0
      004566 08               [12] 5371 	inc	r0
      004567 E6               [12] 5372 	mov	a,@r0
      004568 C3               [12] 5373 	clr	c
      004569 13               [12] 5374 	rrc	a
      00456A F6               [12] 5375 	mov	@r0,a
      00456B 18               [12] 5376 	dec	r0
      00456C E6               [12] 5377 	mov	a,@r0
      00456D 13               [12] 5378 	rrc	a
      00456E F6               [12] 5379 	mov	@r0,a
      00456F 18               [12] 5380 	dec	r0
      004570 E6               [12] 5381 	mov	a,@r0
      004571 13               [12] 5382 	rrc	a
      004572 F6               [12] 5383 	mov	@r0,a
      004573 18               [12] 5384 	dec	r0
      004574 E6               [12] 5385 	mov	a,@r0
      004575 13               [12] 5386 	rrc	a
      004576 F6               [12] 5387 	mov	@r0,a
      004577 E5 08            [12] 5388 	mov	a,_bp
      004579 24 0B            [12] 5389 	add	a,#0x0b
      00457B F8               [12] 5390 	mov	r0,a
      00457C E6               [12] 5391 	mov	a,@r0
      00457D 08               [12] 5392 	inc	r0
      00457E 46               [12] 5393 	orl	a,@r0
      00457F 08               [12] 5394 	inc	r0
      004580 46               [12] 5395 	orl	a,@r0
      004581 08               [12] 5396 	inc	r0
      004582 46               [12] 5397 	orl	a,@r0
      004583 70 9F            [24] 5398 	jnz	00141$
                                   5399 ;	calc.c:335: printf(", acc_valid = %d\r\n\r\n", (int)ctx->acc_valid);
      004585 E5 08            [12] 5400 	mov	a,_bp
      004587 24 04            [12] 5401 	add	a,#0x04
      004589 F8               [12] 5402 	mov	r0,a
      00458A 74 06            [12] 5403 	mov	a,#0x06
      00458C 26               [12] 5404 	add	a,@r0
      00458D FD               [12] 5405 	mov	r5,a
      00458E E4               [12] 5406 	clr	a
      00458F 08               [12] 5407 	inc	r0
      004590 36               [12] 5408 	addc	a,@r0
      004591 FE               [12] 5409 	mov	r6,a
      004592 08               [12] 5410 	inc	r0
      004593 86 07            [24] 5411 	mov	ar7,@r0
      004595 8D 82            [24] 5412 	mov	dpl,r5
      004597 8E 83            [24] 5413 	mov	dph,r6
      004599 8F F0            [24] 5414 	mov	b,r7
      00459B 12 51 C9         [24] 5415 	lcall	__gptrget
      00459E FD               [12] 5416 	mov	r5,a
      00459F 7F 00            [12] 5417 	mov	r7,#0x00
      0045A1 C0 05            [24] 5418 	push	ar5
      0045A3 C0 07            [24] 5419 	push	ar7
      0045A5 74 D9            [12] 5420 	mov	a,#___str_13
      0045A7 C0 E0            [24] 5421 	push	acc
      0045A9 74 6A            [12] 5422 	mov	a,#(___str_13 >> 8)
      0045AB C0 E0            [24] 5423 	push	acc
      0045AD 74 80            [12] 5424 	mov	a,#0x80
      0045AF C0 E0            [24] 5425 	push	acc
      0045B1 12 51 90         [24] 5426 	lcall	_printf
      0045B4 E5 81            [12] 5427 	mov	a,sp
      0045B6 24 FB            [12] 5428 	add	a,#0xfb
      0045B8 F5 81            [12] 5429 	mov	sp,a
                                   5430 ;	calc.c:336: printstr("HhOo\tbase 16 10 8 2\r\n");
      0045BA 7D EE            [12] 5431 	mov	r5,#___str_14
      0045BC 7E 6A            [12] 5432 	mov	r6,#(___str_14 >> 8)
      0045BE 7F 80            [12] 5433 	mov	r7,#0x80
                                   5434 ;	calc.c:50: return;
      0045C0                       5435 00144$:
                                   5436 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0045C0 8D 82            [24] 5437 	mov	dpl,r5
      0045C2 8E 83            [24] 5438 	mov	dph,r6
      0045C4 8F F0            [24] 5439 	mov	b,r7
      0045C6 12 51 C9         [24] 5440 	lcall	__gptrget
      0045C9 FC               [12] 5441 	mov	r4,a
      0045CA 60 10            [24] 5442 	jz	00104$
      0045CC 7B 00            [12] 5443 	mov	r3,#0x00
      0045CE 8C 82            [24] 5444 	mov	dpl,r4
      0045D0 8B 83            [24] 5445 	mov	dph,r3
      0045D2 12 29 C0         [24] 5446 	lcall	_putchar
      0045D5 0D               [12] 5447 	inc	r5
                                   5448 ;	calc.c:336: printstr("HhOo\tbase 16 10 8 2\r\n");
      0045D6 BD 00 E7         [24] 5449 	cjne	r5,#0x00,00144$
      0045D9 0E               [12] 5450 	inc	r6
      0045DA 80 E4            [24] 5451 	sjmp	00144$
      0045DC                       5452 00104$:
                                   5453 ;	calc.c:337: printstr("p\tpeek top\r\n");
      0045DC 7D 04            [12] 5454 	mov	r5,#___str_15
      0045DE 7E 6B            [12] 5455 	mov	r6,#(___str_15 >> 8)
      0045E0 7F 80            [12] 5456 	mov	r7,#0x80
                                   5457 ;	calc.c:50: return;
      0045E2                       5458 00147$:
                                   5459 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0045E2 8D 82            [24] 5460 	mov	dpl,r5
      0045E4 8E 83            [24] 5461 	mov	dph,r6
      0045E6 8F F0            [24] 5462 	mov	b,r7
      0045E8 12 51 C9         [24] 5463 	lcall	__gptrget
      0045EB FC               [12] 5464 	mov	r4,a
      0045EC 60 10            [24] 5465 	jz	00106$
      0045EE 7B 00            [12] 5466 	mov	r3,#0x00
      0045F0 8C 82            [24] 5467 	mov	dpl,r4
      0045F2 8B 83            [24] 5468 	mov	dph,r3
      0045F4 12 29 C0         [24] 5469 	lcall	_putchar
      0045F7 0D               [12] 5470 	inc	r5
                                   5471 ;	calc.c:337: printstr("p\tpeek top\r\n");
      0045F8 BD 00 E7         [24] 5472 	cjne	r5,#0x00,00147$
      0045FB 0E               [12] 5473 	inc	r6
      0045FC 80 E4            [24] 5474 	sjmp	00147$
      0045FE                       5475 00106$:
                                   5476 ;	calc.c:338: printstr("P\tprint stack\r\n");
      0045FE 7D 11            [12] 5477 	mov	r5,#___str_16
      004600 7E 6B            [12] 5478 	mov	r6,#(___str_16 >> 8)
      004602 7F 80            [12] 5479 	mov	r7,#0x80
                                   5480 ;	calc.c:50: return;
      004604                       5481 00150$:
                                   5482 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004604 8D 82            [24] 5483 	mov	dpl,r5
      004606 8E 83            [24] 5484 	mov	dph,r6
      004608 8F F0            [24] 5485 	mov	b,r7
      00460A 12 51 C9         [24] 5486 	lcall	__gptrget
      00460D FC               [12] 5487 	mov	r4,a
      00460E 60 10            [24] 5488 	jz	00108$
      004610 7B 00            [12] 5489 	mov	r3,#0x00
      004612 8C 82            [24] 5490 	mov	dpl,r4
      004614 8B 83            [24] 5491 	mov	dph,r3
      004616 12 29 C0         [24] 5492 	lcall	_putchar
      004619 0D               [12] 5493 	inc	r5
                                   5494 ;	calc.c:338: printstr("P\tprint stack\r\n");
      00461A BD 00 E7         [24] 5495 	cjne	r5,#0x00,00150$
      00461D 0E               [12] 5496 	inc	r6
      00461E 80 E4            [24] 5497 	sjmp	00150$
      004620                       5498 00108$:
                                   5499 ;	calc.c:339: printstr("v.\tpop top\r\n");
      004620 7D 21            [12] 5500 	mov	r5,#___str_17
      004622 7E 6B            [12] 5501 	mov	r6,#(___str_17 >> 8)
      004624 7F 80            [12] 5502 	mov	r7,#0x80
                                   5503 ;	calc.c:50: return;
      004626                       5504 00153$:
                                   5505 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004626 8D 82            [24] 5506 	mov	dpl,r5
      004628 8E 83            [24] 5507 	mov	dph,r6
      00462A 8F F0            [24] 5508 	mov	b,r7
      00462C 12 51 C9         [24] 5509 	lcall	__gptrget
      00462F FC               [12] 5510 	mov	r4,a
      004630 60 10            [24] 5511 	jz	00110$
      004632 7B 00            [12] 5512 	mov	r3,#0x00
      004634 8C 82            [24] 5513 	mov	dpl,r4
      004636 8B 83            [24] 5514 	mov	dph,r3
      004638 12 29 C0         [24] 5515 	lcall	_putchar
      00463B 0D               [12] 5516 	inc	r5
                                   5517 ;	calc.c:339: printstr("v.\tpop top\r\n");
      00463C BD 00 E7         [24] 5518 	cjne	r5,#0x00,00153$
      00463F 0E               [12] 5519 	inc	r6
      004640 80 E4            [24] 5520 	sjmp	00153$
      004642                       5521 00110$:
                                   5522 ;	calc.c:340: printstr("V\tpop all\r\n");
      004642 7D 2E            [12] 5523 	mov	r5,#___str_18
      004644 7E 6B            [12] 5524 	mov	r6,#(___str_18 >> 8)
      004646 7F 80            [12] 5525 	mov	r7,#0x80
                                   5526 ;	calc.c:50: return;
      004648                       5527 00156$:
                                   5528 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004648 8D 82            [24] 5529 	mov	dpl,r5
      00464A 8E 83            [24] 5530 	mov	dph,r6
      00464C 8F F0            [24] 5531 	mov	b,r7
      00464E 12 51 C9         [24] 5532 	lcall	__gptrget
      004651 FC               [12] 5533 	mov	r4,a
      004652 60 10            [24] 5534 	jz	00112$
      004654 7B 00            [12] 5535 	mov	r3,#0x00
      004656 8C 82            [24] 5536 	mov	dpl,r4
      004658 8B 83            [24] 5537 	mov	dph,r3
      00465A 12 29 C0         [24] 5538 	lcall	_putchar
      00465D 0D               [12] 5539 	inc	r5
                                   5540 ;	calc.c:340: printstr("V\tpop all\r\n");
      00465E BD 00 E7         [24] 5541 	cjne	r5,#0x00,00156$
      004661 0E               [12] 5542 	inc	r6
      004662 80 E4            [24] 5543 	sjmp	00156$
      004664                       5544 00112$:
                                   5545 ;	calc.c:341: printstr("i\treset acc\r\n");
      004664 7D 3A            [12] 5546 	mov	r5,#___str_19
      004666 7E 6B            [12] 5547 	mov	r6,#(___str_19 >> 8)
      004668 7F 80            [12] 5548 	mov	r7,#0x80
                                   5549 ;	calc.c:50: return;
      00466A                       5550 00159$:
                                   5551 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00466A 8D 82            [24] 5552 	mov	dpl,r5
      00466C 8E 83            [24] 5553 	mov	dph,r6
      00466E 8F F0            [24] 5554 	mov	b,r7
      004670 12 51 C9         [24] 5555 	lcall	__gptrget
      004673 FC               [12] 5556 	mov	r4,a
      004674 60 10            [24] 5557 	jz	00114$
      004676 7B 00            [12] 5558 	mov	r3,#0x00
      004678 8C 82            [24] 5559 	mov	dpl,r4
      00467A 8B 83            [24] 5560 	mov	dph,r3
      00467C 12 29 C0         [24] 5561 	lcall	_putchar
      00467F 0D               [12] 5562 	inc	r5
                                   5563 ;	calc.c:341: printstr("i\treset acc\r\n");
      004680 BD 00 E7         [24] 5564 	cjne	r5,#0x00,00159$
      004683 0E               [12] 5565 	inc	r6
      004684 80 E4            [24] 5566 	sjmp	00159$
      004686                       5567 00114$:
                                   5568 ;	calc.c:342: printstr("I\treset and discard acc\r\n");
      004686 7D 48            [12] 5569 	mov	r5,#___str_20
      004688 7E 6B            [12] 5570 	mov	r6,#(___str_20 >> 8)
      00468A 7F 80            [12] 5571 	mov	r7,#0x80
                                   5572 ;	calc.c:50: return;
      00468C                       5573 00162$:
                                   5574 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00468C 8D 82            [24] 5575 	mov	dpl,r5
      00468E 8E 83            [24] 5576 	mov	dph,r6
      004690 8F F0            [24] 5577 	mov	b,r7
      004692 12 51 C9         [24] 5578 	lcall	__gptrget
      004695 FC               [12] 5579 	mov	r4,a
      004696 60 10            [24] 5580 	jz	00116$
      004698 7B 00            [12] 5581 	mov	r3,#0x00
      00469A 8C 82            [24] 5582 	mov	dpl,r4
      00469C 8B 83            [24] 5583 	mov	dph,r3
      00469E 12 29 C0         [24] 5584 	lcall	_putchar
      0046A1 0D               [12] 5585 	inc	r5
                                   5586 ;	calc.c:342: printstr("I\treset and discard acc\r\n");
      0046A2 BD 00 E7         [24] 5587 	cjne	r5,#0x00,00162$
      0046A5 0E               [12] 5588 	inc	r6
      0046A6 80 E4            [24] 5589 	sjmp	00162$
      0046A8                       5590 00116$:
                                   5591 ;	calc.c:343: printstr("x\texchange top 2\r\n");
      0046A8 7D 62            [12] 5592 	mov	r5,#___str_21
      0046AA 7E 6B            [12] 5593 	mov	r6,#(___str_21 >> 8)
      0046AC 7F 80            [12] 5594 	mov	r7,#0x80
                                   5595 ;	calc.c:50: return;
      0046AE                       5596 00165$:
                                   5597 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0046AE 8D 82            [24] 5598 	mov	dpl,r5
      0046B0 8E 83            [24] 5599 	mov	dph,r6
      0046B2 8F F0            [24] 5600 	mov	b,r7
      0046B4 12 51 C9         [24] 5601 	lcall	__gptrget
      0046B7 FC               [12] 5602 	mov	r4,a
      0046B8 60 10            [24] 5603 	jz	00118$
      0046BA 7B 00            [12] 5604 	mov	r3,#0x00
      0046BC 8C 82            [24] 5605 	mov	dpl,r4
      0046BE 8B 83            [24] 5606 	mov	dph,r3
      0046C0 12 29 C0         [24] 5607 	lcall	_putchar
      0046C3 0D               [12] 5608 	inc	r5
                                   5609 ;	calc.c:343: printstr("x\texchange top 2\r\n");
      0046C4 BD 00 E7         [24] 5610 	cjne	r5,#0x00,00165$
      0046C7 0E               [12] 5611 	inc	r6
      0046C8 80 E4            [24] 5612 	sjmp	00165$
      0046CA                       5613 00118$:
                                   5614 ;	calc.c:344: printstr("+\tadd top 2\r\n");
      0046CA 7D 75            [12] 5615 	mov	r5,#___str_22
      0046CC 7E 6B            [12] 5616 	mov	r6,#(___str_22 >> 8)
      0046CE 7F 80            [12] 5617 	mov	r7,#0x80
                                   5618 ;	calc.c:50: return;
      0046D0                       5619 00168$:
                                   5620 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0046D0 8D 82            [24] 5621 	mov	dpl,r5
      0046D2 8E 83            [24] 5622 	mov	dph,r6
      0046D4 8F F0            [24] 5623 	mov	b,r7
      0046D6 12 51 C9         [24] 5624 	lcall	__gptrget
      0046D9 FC               [12] 5625 	mov	r4,a
      0046DA 60 10            [24] 5626 	jz	00120$
      0046DC 7B 00            [12] 5627 	mov	r3,#0x00
      0046DE 8C 82            [24] 5628 	mov	dpl,r4
      0046E0 8B 83            [24] 5629 	mov	dph,r3
      0046E2 12 29 C0         [24] 5630 	lcall	_putchar
      0046E5 0D               [12] 5631 	inc	r5
                                   5632 ;	calc.c:344: printstr("+\tadd top 2\r\n");
      0046E6 BD 00 E7         [24] 5633 	cjne	r5,#0x00,00168$
      0046E9 0E               [12] 5634 	inc	r6
      0046EA 80 E4            [24] 5635 	sjmp	00168$
      0046EC                       5636 00120$:
                                   5637 ;	calc.c:345: printstr("-\tsubtract top 2\r\n");
      0046EC 7D 83            [12] 5638 	mov	r5,#___str_23
      0046EE 7E 6B            [12] 5639 	mov	r6,#(___str_23 >> 8)
      0046F0 7F 80            [12] 5640 	mov	r7,#0x80
                                   5641 ;	calc.c:50: return;
      0046F2                       5642 00171$:
                                   5643 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0046F2 8D 82            [24] 5644 	mov	dpl,r5
      0046F4 8E 83            [24] 5645 	mov	dph,r6
      0046F6 8F F0            [24] 5646 	mov	b,r7
      0046F8 12 51 C9         [24] 5647 	lcall	__gptrget
      0046FB FC               [12] 5648 	mov	r4,a
      0046FC 60 10            [24] 5649 	jz	00122$
      0046FE 7B 00            [12] 5650 	mov	r3,#0x00
      004700 8C 82            [24] 5651 	mov	dpl,r4
      004702 8B 83            [24] 5652 	mov	dph,r3
      004704 12 29 C0         [24] 5653 	lcall	_putchar
      004707 0D               [12] 5654 	inc	r5
                                   5655 ;	calc.c:345: printstr("-\tsubtract top 2\r\n");
      004708 BD 00 E7         [24] 5656 	cjne	r5,#0x00,00171$
      00470B 0E               [12] 5657 	inc	r6
      00470C 80 E4            [24] 5658 	sjmp	00171$
      00470E                       5659 00122$:
                                   5660 ;	calc.c:346: printstr("*\tmultiply top 2\r\n");
      00470E 7D 96            [12] 5661 	mov	r5,#___str_24
      004710 7E 6B            [12] 5662 	mov	r6,#(___str_24 >> 8)
      004712 7F 80            [12] 5663 	mov	r7,#0x80
                                   5664 ;	calc.c:50: return;
      004714                       5665 00174$:
                                   5666 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004714 8D 82            [24] 5667 	mov	dpl,r5
      004716 8E 83            [24] 5668 	mov	dph,r6
      004718 8F F0            [24] 5669 	mov	b,r7
      00471A 12 51 C9         [24] 5670 	lcall	__gptrget
      00471D FC               [12] 5671 	mov	r4,a
      00471E 60 10            [24] 5672 	jz	00124$
      004720 7B 00            [12] 5673 	mov	r3,#0x00
      004722 8C 82            [24] 5674 	mov	dpl,r4
      004724 8B 83            [24] 5675 	mov	dph,r3
      004726 12 29 C0         [24] 5676 	lcall	_putchar
      004729 0D               [12] 5677 	inc	r5
                                   5678 ;	calc.c:346: printstr("*\tmultiply top 2\r\n");
      00472A BD 00 E7         [24] 5679 	cjne	r5,#0x00,00174$
      00472D 0E               [12] 5680 	inc	r6
      00472E 80 E4            [24] 5681 	sjmp	00174$
      004730                       5682 00124$:
                                   5683 ;	calc.c:347: printstr("/\tdivide top 2\r\n");
      004730 7D A9            [12] 5684 	mov	r5,#___str_25
      004732 7E 6B            [12] 5685 	mov	r6,#(___str_25 >> 8)
      004734 7F 80            [12] 5686 	mov	r7,#0x80
                                   5687 ;	calc.c:50: return;
      004736                       5688 00177$:
                                   5689 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004736 8D 82            [24] 5690 	mov	dpl,r5
      004738 8E 83            [24] 5691 	mov	dph,r6
      00473A 8F F0            [24] 5692 	mov	b,r7
      00473C 12 51 C9         [24] 5693 	lcall	__gptrget
      00473F FC               [12] 5694 	mov	r4,a
      004740 60 10            [24] 5695 	jz	00126$
      004742 7B 00            [12] 5696 	mov	r3,#0x00
      004744 8C 82            [24] 5697 	mov	dpl,r4
      004746 8B 83            [24] 5698 	mov	dph,r3
      004748 12 29 C0         [24] 5699 	lcall	_putchar
      00474B 0D               [12] 5700 	inc	r5
                                   5701 ;	calc.c:347: printstr("/\tdivide top 2\r\n");
      00474C BD 00 E7         [24] 5702 	cjne	r5,#0x00,00177$
      00474F 0E               [12] 5703 	inc	r6
      004750 80 E4            [24] 5704 	sjmp	00177$
      004752                       5705 00126$:
                                   5706 ;	calc.c:348: printstr("%\tmodulus top 2\r\n");
      004752 7D BA            [12] 5707 	mov	r5,#___str_26
      004754 7E 6B            [12] 5708 	mov	r6,#(___str_26 >> 8)
      004756 7F 80            [12] 5709 	mov	r7,#0x80
                                   5710 ;	calc.c:50: return;
      004758                       5711 00180$:
                                   5712 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004758 8D 82            [24] 5713 	mov	dpl,r5
      00475A 8E 83            [24] 5714 	mov	dph,r6
      00475C 8F F0            [24] 5715 	mov	b,r7
      00475E 12 51 C9         [24] 5716 	lcall	__gptrget
      004761 FC               [12] 5717 	mov	r4,a
      004762 60 10            [24] 5718 	jz	00128$
      004764 7B 00            [12] 5719 	mov	r3,#0x00
      004766 8C 82            [24] 5720 	mov	dpl,r4
      004768 8B 83            [24] 5721 	mov	dph,r3
      00476A 12 29 C0         [24] 5722 	lcall	_putchar
      00476D 0D               [12] 5723 	inc	r5
                                   5724 ;	calc.c:348: printstr("%\tmodulus top 2\r\n");
      00476E BD 00 E7         [24] 5725 	cjne	r5,#0x00,00180$
      004771 0E               [12] 5726 	inc	r6
      004772 80 E4            [24] 5727 	sjmp	00180$
      004774                       5728 00128$:
                                   5729 ;	calc.c:349: printstr("&\tand top 2\r\n");
      004774 7D CC            [12] 5730 	mov	r5,#___str_27
      004776 7E 6B            [12] 5731 	mov	r6,#(___str_27 >> 8)
      004778 7F 80            [12] 5732 	mov	r7,#0x80
                                   5733 ;	calc.c:50: return;
      00477A                       5734 00183$:
                                   5735 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00477A 8D 82            [24] 5736 	mov	dpl,r5
      00477C 8E 83            [24] 5737 	mov	dph,r6
      00477E 8F F0            [24] 5738 	mov	b,r7
      004780 12 51 C9         [24] 5739 	lcall	__gptrget
      004783 FC               [12] 5740 	mov	r4,a
      004784 60 10            [24] 5741 	jz	00130$
      004786 7B 00            [12] 5742 	mov	r3,#0x00
      004788 8C 82            [24] 5743 	mov	dpl,r4
      00478A 8B 83            [24] 5744 	mov	dph,r3
      00478C 12 29 C0         [24] 5745 	lcall	_putchar
      00478F 0D               [12] 5746 	inc	r5
                                   5747 ;	calc.c:349: printstr("&\tand top 2\r\n");
      004790 BD 00 E7         [24] 5748 	cjne	r5,#0x00,00183$
      004793 0E               [12] 5749 	inc	r6
      004794 80 E4            [24] 5750 	sjmp	00183$
      004796                       5751 00130$:
                                   5752 ;	calc.c:350: printstr("|\tor top 2\r\n");
      004796 7D DA            [12] 5753 	mov	r5,#___str_28
      004798 7E 6B            [12] 5754 	mov	r6,#(___str_28 >> 8)
      00479A 7F 80            [12] 5755 	mov	r7,#0x80
                                   5756 ;	calc.c:50: return;
      00479C                       5757 00186$:
                                   5758 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00479C 8D 82            [24] 5759 	mov	dpl,r5
      00479E 8E 83            [24] 5760 	mov	dph,r6
      0047A0 8F F0            [24] 5761 	mov	b,r7
      0047A2 12 51 C9         [24] 5762 	lcall	__gptrget
      0047A5 FC               [12] 5763 	mov	r4,a
      0047A6 60 10            [24] 5764 	jz	00132$
      0047A8 7B 00            [12] 5765 	mov	r3,#0x00
      0047AA 8C 82            [24] 5766 	mov	dpl,r4
      0047AC 8B 83            [24] 5767 	mov	dph,r3
      0047AE 12 29 C0         [24] 5768 	lcall	_putchar
      0047B1 0D               [12] 5769 	inc	r5
                                   5770 ;	calc.c:350: printstr("|\tor top 2\r\n");
      0047B2 BD 00 E7         [24] 5771 	cjne	r5,#0x00,00186$
      0047B5 0E               [12] 5772 	inc	r6
      0047B6 80 E4            [24] 5773 	sjmp	00186$
      0047B8                       5774 00132$:
                                   5775 ;	calc.c:351: printstr("^\txor top 2\r\n");
      0047B8 7D E7            [12] 5776 	mov	r5,#___str_29
      0047BA 7E 6B            [12] 5777 	mov	r6,#(___str_29 >> 8)
      0047BC 7F 80            [12] 5778 	mov	r7,#0x80
                                   5779 ;	calc.c:50: return;
      0047BE                       5780 00189$:
                                   5781 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0047BE 8D 82            [24] 5782 	mov	dpl,r5
      0047C0 8E 83            [24] 5783 	mov	dph,r6
      0047C2 8F F0            [24] 5784 	mov	b,r7
      0047C4 12 51 C9         [24] 5785 	lcall	__gptrget
      0047C7 FC               [12] 5786 	mov	r4,a
      0047C8 60 10            [24] 5787 	jz	00134$
      0047CA 7B 00            [12] 5788 	mov	r3,#0x00
      0047CC 8C 82            [24] 5789 	mov	dpl,r4
      0047CE 8B 83            [24] 5790 	mov	dph,r3
      0047D0 12 29 C0         [24] 5791 	lcall	_putchar
      0047D3 0D               [12] 5792 	inc	r5
                                   5793 ;	calc.c:351: printstr("^\txor top 2\r\n");
      0047D4 BD 00 E7         [24] 5794 	cjne	r5,#0x00,00189$
      0047D7 0E               [12] 5795 	inc	r6
      0047D8 80 E4            [24] 5796 	sjmp	00189$
      0047DA                       5797 00134$:
                                   5798 ;	calc.c:352: printstr("~\tbitwise not top\r\n");
      0047DA 7D F5            [12] 5799 	mov	r5,#___str_30
      0047DC 7E 6B            [12] 5800 	mov	r6,#(___str_30 >> 8)
      0047DE 7F 80            [12] 5801 	mov	r7,#0x80
                                   5802 ;	calc.c:50: return;
      0047E0                       5803 00192$:
                                   5804 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0047E0 8D 82            [24] 5805 	mov	dpl,r5
      0047E2 8E 83            [24] 5806 	mov	dph,r6
      0047E4 8F F0            [24] 5807 	mov	b,r7
      0047E6 12 51 C9         [24] 5808 	lcall	__gptrget
      0047E9 FC               [12] 5809 	mov	r4,a
      0047EA 60 10            [24] 5810 	jz	00136$
      0047EC 7B 00            [12] 5811 	mov	r3,#0x00
      0047EE 8C 82            [24] 5812 	mov	dpl,r4
      0047F0 8B 83            [24] 5813 	mov	dph,r3
      0047F2 12 29 C0         [24] 5814 	lcall	_putchar
      0047F5 0D               [12] 5815 	inc	r5
                                   5816 ;	calc.c:352: printstr("~\tbitwise not top\r\n");
      0047F6 BD 00 E7         [24] 5817 	cjne	r5,#0x00,00192$
      0047F9 0E               [12] 5818 	inc	r6
      0047FA 80 E4            [24] 5819 	sjmp	00192$
      0047FC                       5820 00136$:
                                   5821 ;	calc.c:353: printstr("?\thelp\r\n");
      0047FC 7D 09            [12] 5822 	mov	r5,#___str_31
      0047FE 7E 6C            [12] 5823 	mov	r6,#(___str_31 >> 8)
      004800 7F 80            [12] 5824 	mov	r7,#0x80
                                   5825 ;	calc.c:50: return;
      004802                       5826 00195$:
                                   5827 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004802 8D 82            [24] 5828 	mov	dpl,r5
      004804 8E 83            [24] 5829 	mov	dph,r6
      004806 8F F0            [24] 5830 	mov	b,r7
      004808 12 51 C9         [24] 5831 	lcall	__gptrget
      00480B FC               [12] 5832 	mov	r4,a
      00480C 60 10            [24] 5833 	jz	00138$
      00480E 7B 00            [12] 5834 	mov	r3,#0x00
      004810 8C 82            [24] 5835 	mov	dpl,r4
      004812 8B 83            [24] 5836 	mov	dph,r3
      004814 12 29 C0         [24] 5837 	lcall	_putchar
      004817 0D               [12] 5838 	inc	r5
                                   5839 ;	calc.c:353: printstr("?\thelp\r\n");
      004818 BD 00 E7         [24] 5840 	cjne	r5,#0x00,00195$
      00481B 0E               [12] 5841 	inc	r6
      00481C 80 E4            [24] 5842 	sjmp	00195$
      00481E                       5843 00138$:
                                   5844 ;	calc.c:354: printstr("q\tquit\r\n");
      00481E 7D 12            [12] 5845 	mov	r5,#___str_32
      004820 7E 6C            [12] 5846 	mov	r6,#(___str_32 >> 8)
      004822 7F 80            [12] 5847 	mov	r7,#0x80
                                   5848 ;	calc.c:50: return;
      004824                       5849 00198$:
                                   5850 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004824 8D 82            [24] 5851 	mov	dpl,r5
      004826 8E 83            [24] 5852 	mov	dph,r6
      004828 8F F0            [24] 5853 	mov	b,r7
      00482A 12 51 C9         [24] 5854 	lcall	__gptrget
      00482D FC               [12] 5855 	mov	r4,a
      00482E 60 10            [24] 5856 	jz	00140$
      004830 7B 00            [12] 5857 	mov	r3,#0x00
      004832 8C 82            [24] 5858 	mov	dpl,r4
      004834 8B 83            [24] 5859 	mov	dph,r3
      004836 12 29 C0         [24] 5860 	lcall	_putchar
      004839 0D               [12] 5861 	inc	r5
                                   5862 ;	calc.c:354: printstr("q\tquit\r\n");
      00483A BD 00 E7         [24] 5863 	cjne	r5,#0x00,00198$
      00483D 0E               [12] 5864 	inc	r6
      00483E 80 E4            [24] 5865 	sjmp	00198$
      004840                       5866 00140$:
                                   5867 ;	calc.c:356: return 1;
      004840 90 00 01         [24] 5868 	mov	dptr,#0x0001
                                   5869 ;	calc.c:357: }
      004843 85 08 81         [24] 5870 	mov	sp,_bp
      004846 D0 08            [24] 5871 	pop	_bp
      004848 22               [24] 5872 	ret
                                   5873 ;------------------------------------------------------------
                                   5874 ;Allocation info for local variables in function 'main'
                                   5875 ;------------------------------------------------------------
                                   5876 ;input                     Allocated to registers r6 r7 
                                   5877 ;sloc0                     Allocated to stack - _bp +3
                                   5878 ;------------------------------------------------------------
                                   5879 ;	calc.c:386: void main(void) {
                                   5880 ;	-----------------------------------------
                                   5881 ;	 function main
                                   5882 ;	-----------------------------------------
      004849                       5883 _main:
                                   5884 ;	calc.c:389: c.base = 10;
      004849 90 80 0C         [24] 5885 	mov	dptr,#_c
      00484C 74 0A            [12] 5886 	mov	a,#0x0a
      00484E F0               [24] 5887 	movx	@dptr,a
      00484F E4               [12] 5888 	clr	a
      004850 A3               [24] 5889 	inc	dptr
      004851 F0               [24] 5890 	movx	@dptr,a
                                   5891 ;	calc.c:390: c.acc = 0l;
      004852 90 80 0E         [24] 5892 	mov	dptr,#(_c + 0x0002)
      004855 F0               [24] 5893 	movx	@dptr,a
      004856 A3               [24] 5894 	inc	dptr
      004857 F0               [24] 5895 	movx	@dptr,a
      004858 A3               [24] 5896 	inc	dptr
      004859 F0               [24] 5897 	movx	@dptr,a
      00485A A3               [24] 5898 	inc	dptr
      00485B F0               [24] 5899 	movx	@dptr,a
                                   5900 ;	calc.c:391: c.acc_valid = (char)0;
      00485C 90 80 12         [24] 5901 	mov	dptr,#(_c + 0x0006)
      00485F F0               [24] 5902 	movx	@dptr,a
                                   5903 ;	calc.c:392: c.digit[0] = c.digit[1] = '\0';
      004860 90 80 14         [24] 5904 	mov	dptr,#(_c + 0x0008)
      004863 F0               [24] 5905 	movx	@dptr,a
      004864 90 80 13         [24] 5906 	mov	dptr,#(_c + 0x0007)
      004867 F0               [24] 5907 	movx	@dptr,a
                                   5908 ;	calc.c:393: stack_init(&c.s);	
      004868 90 80 15         [24] 5909 	mov	dptr,#(_c + 0x0009)
      00486B 75 F0 00         [24] 5910 	mov	b,#0x00
      00486E 12 26 80         [24] 5911 	lcall	_stack_init
                                   5912 ;	calc.c:394: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      004871 74 0C            [12] 5913 	mov	a,#_c
      004873 C0 E0            [24] 5914 	push	acc
      004875 74 80            [12] 5915 	mov	a,#(_c >> 8)
      004877 C0 E0            [24] 5916 	push	acc
      004879 E4               [12] 5917 	clr	a
      00487A C0 E0            [24] 5918 	push	acc
      00487C 74 1B            [12] 5919 	mov	a,#_deltas
      00487E C0 E0            [24] 5920 	push	acc
      004880 74 A0            [12] 5921 	mov	a,#(_deltas >> 8)
      004882 C0 E0            [24] 5922 	push	acc
      004884 E4               [12] 5923 	clr	a
      004885 C0 E0            [24] 5924 	push	acc
      004887 C0 E0            [24] 5925 	push	acc
      004889 74 80            [12] 5926 	mov	a,#0x80
      00488B C0 E0            [24] 5927 	push	acc
      00488D 74 03            [12] 5928 	mov	a,#0x03
      00488F C0 E0            [24] 5929 	push	acc
      004891 E4               [12] 5930 	clr	a
      004892 C0 E0            [24] 5931 	push	acc
      004894 C0 E0            [24] 5932 	push	acc
      004896 C0 E0            [24] 5933 	push	acc
      004898 90 80 00         [24] 5934 	mov	dptr,#_s
      00489B 75 F0 00         [24] 5935 	mov	b,#0x00
      00489E 12 20 90         [24] 5936 	lcall	_state_init
      0048A1 E5 81            [12] 5937 	mov	a,sp
      0048A3 24 F4            [12] 5938 	add	a,#0xf4
      0048A5 F5 81            [12] 5939 	mov	sp,a
                                   5940 ;	calc.c:396: while (1) {
      0048A7                       5941 00158$:
                                   5942 ;	calc.c:397: input = getchar();
      0048A7 12 29 C5         [24] 5943 	lcall	_getchar
      0048AA AE 82            [24] 5944 	mov	r6,dpl
      0048AC AF 83            [24] 5945 	mov	r7,dph
                                   5946 ;	calc.c:398: c.digit[0] = (char)input;
      0048AE 8E 05            [24] 5947 	mov	ar5,r6
      0048B0 90 80 13         [24] 5948 	mov	dptr,#(_c + 0x0007)
      0048B3 ED               [12] 5949 	mov	a,r5
      0048B4 F0               [24] 5950 	movx	@dptr,a
                                   5951 ;	calc.c:399: (void)putchar(input);
      0048B5 8E 82            [24] 5952 	mov	dpl,r6
      0048B7 8F 83            [24] 5953 	mov	dph,r7
      0048B9 12 29 C0         [24] 5954 	lcall	_putchar
                                   5955 ;	calc.c:400: if ((char)input == 'q') {
      0048BC BD 71 29         [24] 5956 	cjne	r5,#0x71,00155$
                                   5957 ;	calc.c:401: if (state_exec(&s, EVENT_TERM) <= 0) break;
      0048BF 74 07            [12] 5958 	mov	a,#0x07
      0048C1 C0 E0            [24] 5959 	push	acc
      0048C3 E4               [12] 5960 	clr	a
      0048C4 C0 E0            [24] 5961 	push	acc
      0048C6 90 80 00         [24] 5962 	mov	dptr,#_s
      0048C9 75 F0 00         [24] 5963 	mov	b,#0x00
      0048CC 12 21 46         [24] 5964 	lcall	_state_exec
      0048CF AB 82            [24] 5965 	mov	r3,dpl
      0048D1 AC 83            [24] 5966 	mov	r4,dph
      0048D3 15 81            [12] 5967 	dec	sp
      0048D5 15 81            [12] 5968 	dec	sp
      0048D7 C3               [12] 5969 	clr	c
      0048D8 E4               [12] 5970 	clr	a
      0048D9 9B               [12] 5971 	subb	a,r3
      0048DA 74 80            [12] 5972 	mov	a,#(0x00 ^ 0x80)
      0048DC 8C F0            [24] 5973 	mov	b,r4
      0048DE 63 F0 80         [24] 5974 	xrl	b,#0x80
      0048E1 95 F0            [12] 5975 	subb	a,b
      0048E3 40 C2            [24] 5976 	jc	00158$
      0048E5 02 4A 9C         [24] 5977 	ljmp	00159$
      0048E8                       5978 00155$:
                                   5979 ;	calc.c:402: } else if ((char)input == '?') {
      0048E8 BD 3F 29         [24] 5980 	cjne	r5,#0x3f,00152$
                                   5981 ;	calc.c:403: if (state_exec(&s, EVENT_HELP) <= 0) break;
      0048EB 74 03            [12] 5982 	mov	a,#0x03
      0048ED C0 E0            [24] 5983 	push	acc
      0048EF E4               [12] 5984 	clr	a
      0048F0 C0 E0            [24] 5985 	push	acc
      0048F2 90 80 00         [24] 5986 	mov	dptr,#_s
      0048F5 75 F0 00         [24] 5987 	mov	b,#0x00
      0048F8 12 21 46         [24] 5988 	lcall	_state_exec
      0048FB AB 82            [24] 5989 	mov	r3,dpl
      0048FD AC 83            [24] 5990 	mov	r4,dph
      0048FF 15 81            [12] 5991 	dec	sp
      004901 15 81            [12] 5992 	dec	sp
      004903 C3               [12] 5993 	clr	c
      004904 E4               [12] 5994 	clr	a
      004905 9B               [12] 5995 	subb	a,r3
      004906 74 80            [12] 5996 	mov	a,#(0x00 ^ 0x80)
      004908 8C F0            [24] 5997 	mov	b,r4
      00490A 63 F0 80         [24] 5998 	xrl	b,#0x80
      00490D 95 F0            [12] 5999 	subb	a,b
      00490F 40 96            [24] 6000 	jc	00158$
      004911 02 4A 9C         [24] 6001 	ljmp	00159$
      004914                       6002 00152$:
                                   6003 ;	calc.c:404: } else if ((char)input == 'i') {
      004914 BD 69 2C         [24] 6004 	cjne	r5,#0x69,00149$
                                   6005 ;	calc.c:405: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      004917 74 05            [12] 6006 	mov	a,#0x05
      004919 C0 E0            [24] 6007 	push	acc
      00491B E4               [12] 6008 	clr	a
      00491C C0 E0            [24] 6009 	push	acc
      00491E 90 80 00         [24] 6010 	mov	dptr,#_s
      004921 75 F0 00         [24] 6011 	mov	b,#0x00
      004924 12 21 46         [24] 6012 	lcall	_state_exec
      004927 AB 82            [24] 6013 	mov	r3,dpl
      004929 AC 83            [24] 6014 	mov	r4,dph
      00492B 15 81            [12] 6015 	dec	sp
      00492D 15 81            [12] 6016 	dec	sp
      00492F C3               [12] 6017 	clr	c
      004930 E4               [12] 6018 	clr	a
      004931 9B               [12] 6019 	subb	a,r3
      004932 74 80            [12] 6020 	mov	a,#(0x00 ^ 0x80)
      004934 8C F0            [24] 6021 	mov	b,r4
      004936 63 F0 80         [24] 6022 	xrl	b,#0x80
      004939 95 F0            [12] 6023 	subb	a,b
      00493B 50 03            [24] 6024 	jnc	00298$
      00493D 02 48 A7         [24] 6025 	ljmp	00158$
      004940                       6026 00298$:
      004940 02 4A 9C         [24] 6027 	ljmp	00159$
      004943                       6028 00149$:
                                   6029 ;	calc.c:406: } else if ((char)input == 'I') {
      004943 BD 49 2C         [24] 6030 	cjne	r5,#0x49,00146$
                                   6031 ;	calc.c:407: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      004946 74 06            [12] 6032 	mov	a,#0x06
      004948 C0 E0            [24] 6033 	push	acc
      00494A E4               [12] 6034 	clr	a
      00494B C0 E0            [24] 6035 	push	acc
      00494D 90 80 00         [24] 6036 	mov	dptr,#_s
      004950 75 F0 00         [24] 6037 	mov	b,#0x00
      004953 12 21 46         [24] 6038 	lcall	_state_exec
      004956 AB 82            [24] 6039 	mov	r3,dpl
      004958 AC 83            [24] 6040 	mov	r4,dph
      00495A 15 81            [12] 6041 	dec	sp
      00495C 15 81            [12] 6042 	dec	sp
      00495E C3               [12] 6043 	clr	c
      00495F E4               [12] 6044 	clr	a
      004960 9B               [12] 6045 	subb	a,r3
      004961 74 80            [12] 6046 	mov	a,#(0x00 ^ 0x80)
      004963 8C F0            [24] 6047 	mov	b,r4
      004965 63 F0 80         [24] 6048 	xrl	b,#0x80
      004968 95 F0            [12] 6049 	subb	a,b
      00496A 50 03            [24] 6050 	jnc	00301$
      00496C 02 48 A7         [24] 6051 	ljmp	00158$
      00496F                       6052 00301$:
      00496F 02 4A 9C         [24] 6053 	ljmp	00159$
      004972                       6054 00146$:
                                   6055 ;	calc.c:408: } else if (((char)input == 'h') || ((char)input == 'H') || ((char)input == 'o') || ((char)input == 'O')) {
      004972 E4               [12] 6056 	clr	a
      004973 BD 68 01         [24] 6057 	cjne	r5,#0x68,00302$
      004976 04               [12] 6058 	inc	a
      004977                       6059 00302$:
      004977 FC               [12] 6060 	mov	r4,a
      004978 70 0F            [24] 6061 	jnz	00139$
      00497A BD 48 01         [24] 6062 	cjne	r5,#0x48,00305$
      00497D 04               [12] 6063 	inc	a
      00497E                       6064 00305$:
      00497E FB               [12] 6065 	mov	r3,a
      00497F 70 08            [24] 6066 	jnz	00139$
      004981 BD 6F 02         [24] 6067 	cjne	r5,#0x6f,00308$
      004984 80 03            [24] 6068 	sjmp	00139$
      004986                       6069 00308$:
      004986 BD 4F 2C         [24] 6070 	cjne	r5,#0x4f,00140$
      004989                       6071 00139$:
                                   6072 ;	calc.c:409: if (state_exec(&s, EVENT_BASE) <= 0) break;
      004989 74 04            [12] 6073 	mov	a,#0x04
      00498B C0 E0            [24] 6074 	push	acc
      00498D E4               [12] 6075 	clr	a
      00498E C0 E0            [24] 6076 	push	acc
      004990 90 80 00         [24] 6077 	mov	dptr,#_s
      004993 75 F0 00         [24] 6078 	mov	b,#0x00
      004996 12 21 46         [24] 6079 	lcall	_state_exec
      004999 AF 82            [24] 6080 	mov	r7,dpl
      00499B AE 83            [24] 6081 	mov	r6,dph
      00499D 15 81            [12] 6082 	dec	sp
      00499F 15 81            [12] 6083 	dec	sp
      0049A1 C3               [12] 6084 	clr	c
      0049A2 E4               [12] 6085 	clr	a
      0049A3 9F               [12] 6086 	subb	a,r7
      0049A4 74 80            [12] 6087 	mov	a,#(0x00 ^ 0x80)
      0049A6 8E F0            [24] 6088 	mov	b,r6
      0049A8 63 F0 80         [24] 6089 	xrl	b,#0x80
      0049AB 95 F0            [12] 6090 	subb	a,b
      0049AD 50 03            [24] 6091 	jnc	00311$
      0049AF 02 48 A7         [24] 6092 	ljmp	00158$
      0049B2                       6093 00311$:
      0049B2 02 4A 9C         [24] 6094 	ljmp	00159$
      0049B5                       6095 00140$:
                                   6096 ;	calc.c:410: } else if (isxdigit(input)) {
      0049B5 8E 82            [24] 6097 	mov	dpl,r6
      0049B7 8F 83            [24] 6098 	mov	dph,r7
      0049B9 C0 05            [24] 6099 	push	ar5
      0049BB C0 04            [24] 6100 	push	ar4
      0049BD C0 03            [24] 6101 	push	ar3
      0049BF 12 4A A0         [24] 6102 	lcall	_isxdigit
      0049C2 E5 82            [12] 6103 	mov	a,dpl
      0049C4 85 83 F0         [24] 6104 	mov	b,dph
      0049C7 D0 03            [24] 6105 	pop	ar3
      0049C9 D0 04            [24] 6106 	pop	ar4
      0049CB D0 05            [24] 6107 	pop	ar5
      0049CD 45 F0            [12] 6108 	orl	a,b
      0049CF 60 2C            [24] 6109 	jz	00137$
                                   6110 ;	calc.c:411: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      0049D1 74 01            [12] 6111 	mov	a,#0x01
      0049D3 C0 E0            [24] 6112 	push	acc
      0049D5 E4               [12] 6113 	clr	a
      0049D6 C0 E0            [24] 6114 	push	acc
      0049D8 90 80 00         [24] 6115 	mov	dptr,#_s
      0049DB 75 F0 00         [24] 6116 	mov	b,#0x00
      0049DE 12 21 46         [24] 6117 	lcall	_state_exec
      0049E1 AE 82            [24] 6118 	mov	r6,dpl
      0049E3 AF 83            [24] 6119 	mov	r7,dph
      0049E5 15 81            [12] 6120 	dec	sp
      0049E7 15 81            [12] 6121 	dec	sp
      0049E9 C3               [12] 6122 	clr	c
      0049EA E4               [12] 6123 	clr	a
      0049EB 9E               [12] 6124 	subb	a,r6
      0049EC 74 80            [12] 6125 	mov	a,#(0x00 ^ 0x80)
      0049EE 8F F0            [24] 6126 	mov	b,r7
      0049F0 63 F0 80         [24] 6127 	xrl	b,#0x80
      0049F3 95 F0            [12] 6128 	subb	a,b
      0049F5 50 03            [24] 6129 	jnc	00313$
      0049F7 02 48 A7         [24] 6130 	ljmp	00158$
      0049FA                       6131 00313$:
      0049FA 02 4A 9C         [24] 6132 	ljmp	00159$
      0049FD                       6133 00137$:
                                   6134 ;	calc.c:413: ((char)input == 'h') || ((char)input == 'H') ||
      0049FD EC               [12] 6135 	mov	a,r4
      0049FE 70 4C            [24] 6136 	jnz	00117$
      004A00 EB               [12] 6137 	mov	a,r3
      004A01 70 49            [24] 6138 	jnz	00117$
                                   6139 ;	calc.c:414: ((char)input == 'p') || ((char)input == 'P') ||
      004A03 BD 70 02         [24] 6140 	cjne	r5,#0x70,00316$
      004A06 80 44            [24] 6141 	sjmp	00117$
      004A08                       6142 00316$:
      004A08 BD 50 02         [24] 6143 	cjne	r5,#0x50,00317$
      004A0B 80 3F            [24] 6144 	sjmp	00117$
      004A0D                       6145 00317$:
                                   6146 ;	calc.c:415: ((char)input == '.') || ((char)input == 'v') || ((char)input == 'V') ||
      004A0D BD 2E 02         [24] 6147 	cjne	r5,#0x2e,00318$
      004A10 80 3A            [24] 6148 	sjmp	00117$
      004A12                       6149 00318$:
      004A12 BD 76 02         [24] 6150 	cjne	r5,#0x76,00319$
      004A15 80 35            [24] 6151 	sjmp	00117$
      004A17                       6152 00319$:
      004A17 BD 56 02         [24] 6153 	cjne	r5,#0x56,00320$
      004A1A 80 30            [24] 6154 	sjmp	00117$
      004A1C                       6155 00320$:
                                   6156 ;	calc.c:416: ((char)input == 'x') ||
      004A1C BD 78 02         [24] 6157 	cjne	r5,#0x78,00321$
      004A1F 80 2B            [24] 6158 	sjmp	00117$
      004A21                       6159 00321$:
                                   6160 ;	calc.c:417: ((char)input == '+') ||
      004A21 BD 2B 02         [24] 6161 	cjne	r5,#0x2b,00322$
      004A24 80 26            [24] 6162 	sjmp	00117$
      004A26                       6163 00322$:
                                   6164 ;	calc.c:418: ((char)input == '-') ||
      004A26 BD 2D 02         [24] 6165 	cjne	r5,#0x2d,00323$
      004A29 80 21            [24] 6166 	sjmp	00117$
      004A2B                       6167 00323$:
                                   6168 ;	calc.c:419: ((char)input == '*') ||
      004A2B BD 2A 02         [24] 6169 	cjne	r5,#0x2a,00324$
      004A2E 80 1C            [24] 6170 	sjmp	00117$
      004A30                       6171 00324$:
                                   6172 ;	calc.c:420: ((char)input == '/') ||
      004A30 BD 2F 02         [24] 6173 	cjne	r5,#0x2f,00325$
      004A33 80 17            [24] 6174 	sjmp	00117$
      004A35                       6175 00325$:
                                   6176 ;	calc.c:421: ((char)input == '%') ||
      004A35 BD 25 02         [24] 6177 	cjne	r5,#0x25,00326$
      004A38 80 12            [24] 6178 	sjmp	00117$
      004A3A                       6179 00326$:
                                   6180 ;	calc.c:422: ((char)input == '&') ||
      004A3A BD 26 02         [24] 6181 	cjne	r5,#0x26,00327$
      004A3D 80 0D            [24] 6182 	sjmp	00117$
      004A3F                       6183 00327$:
                                   6184 ;	calc.c:423: ((char)input == '|') ||
      004A3F BD 7C 02         [24] 6185 	cjne	r5,#0x7c,00328$
      004A42 80 08            [24] 6186 	sjmp	00117$
      004A44                       6187 00328$:
                                   6188 ;	calc.c:424: ((char)input == '^') ||
      004A44 BD 5E 02         [24] 6189 	cjne	r5,#0x5e,00329$
      004A47 80 03            [24] 6190 	sjmp	00117$
      004A49                       6191 00329$:
                                   6192 ;	calc.c:425: ((char)input == '~')
      004A49 BD 7E 29         [24] 6193 	cjne	r5,#0x7e,00118$
      004A4C                       6194 00117$:
                                   6195 ;	calc.c:427: if (state_exec(&s, EVENT_OP) <= 0) break;
      004A4C 74 02            [12] 6196 	mov	a,#0x02
      004A4E C0 E0            [24] 6197 	push	acc
      004A50 E4               [12] 6198 	clr	a
      004A51 C0 E0            [24] 6199 	push	acc
      004A53 90 80 00         [24] 6200 	mov	dptr,#_s
      004A56 75 F0 00         [24] 6201 	mov	b,#0x00
      004A59 12 21 46         [24] 6202 	lcall	_state_exec
      004A5C AE 82            [24] 6203 	mov	r6,dpl
      004A5E AF 83            [24] 6204 	mov	r7,dph
      004A60 15 81            [12] 6205 	dec	sp
      004A62 15 81            [12] 6206 	dec	sp
      004A64 C3               [12] 6207 	clr	c
      004A65 E4               [12] 6208 	clr	a
      004A66 9E               [12] 6209 	subb	a,r6
      004A67 74 80            [12] 6210 	mov	a,#(0x00 ^ 0x80)
      004A69 8F F0            [24] 6211 	mov	b,r7
      004A6B 63 F0 80         [24] 6212 	xrl	b,#0x80
      004A6E 95 F0            [12] 6213 	subb	a,b
      004A70 50 2A            [24] 6214 	jnc	00159$
      004A72 02 48 A7         [24] 6215 	ljmp	00158$
      004A75                       6216 00118$:
                                   6217 ;	calc.c:429: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      004A75 E4               [12] 6218 	clr	a
      004A76 C0 E0            [24] 6219 	push	acc
      004A78 C0 E0            [24] 6220 	push	acc
      004A7A 90 80 00         [24] 6221 	mov	dptr,#_s
      004A7D 75 F0 00         [24] 6222 	mov	b,#0x00
      004A80 12 21 46         [24] 6223 	lcall	_state_exec
      004A83 AE 82            [24] 6224 	mov	r6,dpl
      004A85 AF 83            [24] 6225 	mov	r7,dph
      004A87 15 81            [12] 6226 	dec	sp
      004A89 15 81            [12] 6227 	dec	sp
      004A8B C3               [12] 6228 	clr	c
      004A8C E4               [12] 6229 	clr	a
      004A8D 9E               [12] 6230 	subb	a,r6
      004A8E 74 80            [12] 6231 	mov	a,#(0x00 ^ 0x80)
      004A90 8F F0            [24] 6232 	mov	b,r7
      004A92 63 F0 80         [24] 6233 	xrl	b,#0x80
      004A95 95 F0            [12] 6234 	subb	a,b
      004A97 50 03            [24] 6235 	jnc	00333$
      004A99 02 48 A7         [24] 6236 	ljmp	00158$
      004A9C                       6237 00333$:
      004A9C                       6238 00159$:
                                   6239 ;	calc.c:435: __endasm;
      004A9C 43 87 02         [24] 6240 	orl	pcon, #2
                                   6241 ;	calc.c:436: }
      004A9F 22               [24] 6242 	ret
                                   6243 	.area CSEG    (CODE)
                                   6244 	.area CONST   (CODE)
                                   6245 	.area CONST   (CODE)
      006A4A                       6246 ___str_0:
      006A4A 0D                    6247 	.db 0x0d
      006A4B 0A                    6248 	.db 0x0a
      006A4C 00                    6249 	.db 0x00
                                   6250 	.area CSEG    (CODE)
                                   6251 	.area CONST   (CODE)
      006A4D                       6252 ___str_1:
      006A4D 73 74 61 63 6B 20 75  6253 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      006A5C 0D                    6254 	.db 0x0d
      006A5D 0A                    6255 	.db 0x0a
      006A5E 00                    6256 	.db 0x00
                                   6257 	.area CSEG    (CODE)
                                   6258 	.area CONST   (CODE)
      006A5F                       6259 ___str_2:
      006A5F 56 41 20              6260 	.ascii "VA "
      006A62 00                    6261 	.db 0x00
                                   6262 	.area CSEG    (CODE)
                                   6263 	.area CONST   (CODE)
      006A63                       6264 ___str_3:
      006A63 25 20 31 31 6C 64 20  6265 	.ascii "% 11ld / "
             2F 20
      006A6C 00                    6266 	.db 0x00
                                   6267 	.area CSEG    (CODE)
                                   6268 	.area CONST   (CODE)
      006A6D                       6269 ___str_4:
      006A6D 25 30 38 6C 78 20 2F  6270 	.ascii "%08lx / "
             20
      006A75 00                    6271 	.db 0x00
                                   6272 	.area CSEG    (CODE)
                                   6273 	.area CONST   (CODE)
      006A76                       6274 ___str_5:
      006A76 50 41 20              6275 	.ascii "PA "
      006A79 00                    6276 	.db 0x00
                                   6277 	.area CSEG    (CODE)
                                   6278 	.area CONST   (CODE)
      006A7A                       6279 ___str_6:
      006A7A 50 54 20              6280 	.ascii "PT "
      006A7D 00                    6281 	.db 0x00
                                   6282 	.area CSEG    (CODE)
                                   6283 	.area CONST   (CODE)
      006A7E                       6284 ___str_7:
      006A7E 56 54 20              6285 	.ascii "VT "
      006A81 00                    6286 	.db 0x00
                                   6287 	.area CSEG    (CODE)
                                   6288 	.area CONST   (CODE)
      006A82                       6289 ___str_8:
      006A82 0D                    6290 	.db 0x0d
      006A83 0A                    6291 	.db 0x0a
      006A84 73 74 61 63 6B 20 75  6292 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      006A93 0D                    6293 	.db 0x0d
      006A94 0A                    6294 	.db 0x0a
      006A95 00                    6295 	.db 0x00
                                   6296 	.area CSEG    (CODE)
                                   6297 	.area CONST   (CODE)
      006A96                       6298 ___str_9:
      006A96 0D                    6299 	.db 0x0d
      006A97 0A                    6300 	.db 0x0a
      006A98 64 69 76 69 73 69 6F  6301 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      006AA8 0D                    6302 	.db 0x0d
      006AA9 0A                    6303 	.db 0x0a
      006AAA 00                    6304 	.db 0x00
                                   6305 	.area CSEG    (CODE)
                                   6306 	.area CONST   (CODE)
      006AAB                       6307 ___str_10:
      006AAB 0D                    6308 	.db 0x0d
      006AAC 0A                    6309 	.db 0x0a
      006AAD 73 74 61 63 6B 20 6F  6310 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      006ABB 0D                    6311 	.db 0x0d
      006ABC 0A                    6312 	.db 0x0a
      006ABD 00                    6313 	.db 0x00
                                   6314 	.area CSEG    (CODE)
                                   6315 	.area CONST   (CODE)
      006ABE                       6316 ___str_11:
      006ABE 0D                    6317 	.db 0x0d
      006ABF 0A                    6318 	.db 0x0a
      006AC0 62 61 73 65 20 3D 20  6319 	.ascii "base = %d, "
             25 64 2C 20
      006ACB 00                    6320 	.db 0x00
                                   6321 	.area CSEG    (CODE)
                                   6322 	.area CONST   (CODE)
      006ACC                       6323 ___str_12:
      006ACC 61 63 63 20 3D 20 25  6324 	.ascii "acc = %ld / "
             6C 64 20 2F 20
      006AD8 00                    6325 	.db 0x00
                                   6326 	.area CSEG    (CODE)
                                   6327 	.area CONST   (CODE)
      006AD9                       6328 ___str_13:
      006AD9 2C 20 61 63 63 5F 76  6329 	.ascii ", acc_valid = %d"
             61 6C 69 64 20 3D 20
             25 64
      006AE9 0D                    6330 	.db 0x0d
      006AEA 0A                    6331 	.db 0x0a
      006AEB 0D                    6332 	.db 0x0d
      006AEC 0A                    6333 	.db 0x0a
      006AED 00                    6334 	.db 0x00
                                   6335 	.area CSEG    (CODE)
                                   6336 	.area CONST   (CODE)
      006AEE                       6337 ___str_14:
      006AEE 48 68 4F 6F           6338 	.ascii "HhOo"
      006AF2 09                    6339 	.db 0x09
      006AF3 62 61 73 65 20 31 36  6340 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      006B01 0D                    6341 	.db 0x0d
      006B02 0A                    6342 	.db 0x0a
      006B03 00                    6343 	.db 0x00
                                   6344 	.area CSEG    (CODE)
                                   6345 	.area CONST   (CODE)
      006B04                       6346 ___str_15:
      006B04 70                    6347 	.ascii "p"
      006B05 09                    6348 	.db 0x09
      006B06 70 65 65 6B 20 74 6F  6349 	.ascii "peek top"
             70
      006B0E 0D                    6350 	.db 0x0d
      006B0F 0A                    6351 	.db 0x0a
      006B10 00                    6352 	.db 0x00
                                   6353 	.area CSEG    (CODE)
                                   6354 	.area CONST   (CODE)
      006B11                       6355 ___str_16:
      006B11 50                    6356 	.ascii "P"
      006B12 09                    6357 	.db 0x09
      006B13 70 72 69 6E 74 20 73  6358 	.ascii "print stack"
             74 61 63 6B
      006B1E 0D                    6359 	.db 0x0d
      006B1F 0A                    6360 	.db 0x0a
      006B20 00                    6361 	.db 0x00
                                   6362 	.area CSEG    (CODE)
                                   6363 	.area CONST   (CODE)
      006B21                       6364 ___str_17:
      006B21 76 2E                 6365 	.ascii "v."
      006B23 09                    6366 	.db 0x09
      006B24 70 6F 70 20 74 6F 70  6367 	.ascii "pop top"
      006B2B 0D                    6368 	.db 0x0d
      006B2C 0A                    6369 	.db 0x0a
      006B2D 00                    6370 	.db 0x00
                                   6371 	.area CSEG    (CODE)
                                   6372 	.area CONST   (CODE)
      006B2E                       6373 ___str_18:
      006B2E 56                    6374 	.ascii "V"
      006B2F 09                    6375 	.db 0x09
      006B30 70 6F 70 20 61 6C 6C  6376 	.ascii "pop all"
      006B37 0D                    6377 	.db 0x0d
      006B38 0A                    6378 	.db 0x0a
      006B39 00                    6379 	.db 0x00
                                   6380 	.area CSEG    (CODE)
                                   6381 	.area CONST   (CODE)
      006B3A                       6382 ___str_19:
      006B3A 69                    6383 	.ascii "i"
      006B3B 09                    6384 	.db 0x09
      006B3C 72 65 73 65 74 20 61  6385 	.ascii "reset acc"
             63 63
      006B45 0D                    6386 	.db 0x0d
      006B46 0A                    6387 	.db 0x0a
      006B47 00                    6388 	.db 0x00
                                   6389 	.area CSEG    (CODE)
                                   6390 	.area CONST   (CODE)
      006B48                       6391 ___str_20:
      006B48 49                    6392 	.ascii "I"
      006B49 09                    6393 	.db 0x09
      006B4A 72 65 73 65 74 20 61  6394 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      006B5F 0D                    6395 	.db 0x0d
      006B60 0A                    6396 	.db 0x0a
      006B61 00                    6397 	.db 0x00
                                   6398 	.area CSEG    (CODE)
                                   6399 	.area CONST   (CODE)
      006B62                       6400 ___str_21:
      006B62 78                    6401 	.ascii "x"
      006B63 09                    6402 	.db 0x09
      006B64 65 78 63 68 61 6E 67  6403 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      006B72 0D                    6404 	.db 0x0d
      006B73 0A                    6405 	.db 0x0a
      006B74 00                    6406 	.db 0x00
                                   6407 	.area CSEG    (CODE)
                                   6408 	.area CONST   (CODE)
      006B75                       6409 ___str_22:
      006B75 2B                    6410 	.ascii "+"
      006B76 09                    6411 	.db 0x09
      006B77 61 64 64 20 74 6F 70  6412 	.ascii "add top 2"
             20 32
      006B80 0D                    6413 	.db 0x0d
      006B81 0A                    6414 	.db 0x0a
      006B82 00                    6415 	.db 0x00
                                   6416 	.area CSEG    (CODE)
                                   6417 	.area CONST   (CODE)
      006B83                       6418 ___str_23:
      006B83 2D                    6419 	.ascii "-"
      006B84 09                    6420 	.db 0x09
      006B85 73 75 62 74 72 61 63  6421 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      006B93 0D                    6422 	.db 0x0d
      006B94 0A                    6423 	.db 0x0a
      006B95 00                    6424 	.db 0x00
                                   6425 	.area CSEG    (CODE)
                                   6426 	.area CONST   (CODE)
      006B96                       6427 ___str_24:
      006B96 2A                    6428 	.ascii "*"
      006B97 09                    6429 	.db 0x09
      006B98 6D 75 6C 74 69 70 6C  6430 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      006BA6 0D                    6431 	.db 0x0d
      006BA7 0A                    6432 	.db 0x0a
      006BA8 00                    6433 	.db 0x00
                                   6434 	.area CSEG    (CODE)
                                   6435 	.area CONST   (CODE)
      006BA9                       6436 ___str_25:
      006BA9 2F                    6437 	.ascii "/"
      006BAA 09                    6438 	.db 0x09
      006BAB 64 69 76 69 64 65 20  6439 	.ascii "divide top 2"
             74 6F 70 20 32
      006BB7 0D                    6440 	.db 0x0d
      006BB8 0A                    6441 	.db 0x0a
      006BB9 00                    6442 	.db 0x00
                                   6443 	.area CSEG    (CODE)
                                   6444 	.area CONST   (CODE)
      006BBA                       6445 ___str_26:
      006BBA 25                    6446 	.ascii "%"
      006BBB 09                    6447 	.db 0x09
      006BBC 6D 6F 64 75 6C 75 73  6448 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      006BC9 0D                    6449 	.db 0x0d
      006BCA 0A                    6450 	.db 0x0a
      006BCB 00                    6451 	.db 0x00
                                   6452 	.area CSEG    (CODE)
                                   6453 	.area CONST   (CODE)
      006BCC                       6454 ___str_27:
      006BCC 26                    6455 	.ascii "&"
      006BCD 09                    6456 	.db 0x09
      006BCE 61 6E 64 20 74 6F 70  6457 	.ascii "and top 2"
             20 32
      006BD7 0D                    6458 	.db 0x0d
      006BD8 0A                    6459 	.db 0x0a
      006BD9 00                    6460 	.db 0x00
                                   6461 	.area CSEG    (CODE)
                                   6462 	.area CONST   (CODE)
      006BDA                       6463 ___str_28:
      006BDA 7C                    6464 	.ascii "|"
      006BDB 09                    6465 	.db 0x09
      006BDC 6F 72 20 74 6F 70 20  6466 	.ascii "or top 2"
             32
      006BE4 0D                    6467 	.db 0x0d
      006BE5 0A                    6468 	.db 0x0a
      006BE6 00                    6469 	.db 0x00
                                   6470 	.area CSEG    (CODE)
                                   6471 	.area CONST   (CODE)
      006BE7                       6472 ___str_29:
      006BE7 5E                    6473 	.ascii "^"
      006BE8 09                    6474 	.db 0x09
      006BE9 78 6F 72 20 74 6F 70  6475 	.ascii "xor top 2"
             20 32
      006BF2 0D                    6476 	.db 0x0d
      006BF3 0A                    6477 	.db 0x0a
      006BF4 00                    6478 	.db 0x00
                                   6479 	.area CSEG    (CODE)
                                   6480 	.area CONST   (CODE)
      006BF5                       6481 ___str_30:
      006BF5 7E                    6482 	.ascii "~"
      006BF6 09                    6483 	.db 0x09
      006BF7 62 69 74 77 69 73 65  6484 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      006C06 0D                    6485 	.db 0x0d
      006C07 0A                    6486 	.db 0x0a
      006C08 00                    6487 	.db 0x00
                                   6488 	.area CSEG    (CODE)
                                   6489 	.area CONST   (CODE)
      006C09                       6490 ___str_31:
      006C09 3F                    6491 	.ascii "?"
      006C0A 09                    6492 	.db 0x09
      006C0B 68 65 6C 70           6493 	.ascii "help"
      006C0F 0D                    6494 	.db 0x0d
      006C10 0A                    6495 	.db 0x0a
      006C11 00                    6496 	.db 0x00
                                   6497 	.area CSEG    (CODE)
                                   6498 	.area CONST   (CODE)
      006C12                       6499 ___str_32:
      006C12 71                    6500 	.ascii "q"
      006C13 09                    6501 	.db 0x09
      006C14 71 75 69 74           6502 	.ascii "quit"
      006C18 0D                    6503 	.db 0x0d
      006C19 0A                    6504 	.db 0x0a
      006C1A 00                    6505 	.db 0x00
                                   6506 	.area CSEG    (CODE)
                                   6507 	.area XINIT   (CODE)
      006C2C                       6508 __xinit__deltas:
      006C2C 00 00                 6509 	.byte #0x00, #0x00	;  0
      006C2E 00 00                 6510 	.byte #0x00, #0x00	;  0
      006C30 00 00                 6511 	.byte #0x00, #0x00	;  0
      006C32 00 00                 6512 	.byte #0x00,#0x00
      006C34 00 00                 6513 	.byte #0x00,#0x00
      006C36 00 00                 6514 	.byte #0x00, #0x00	;  0
      006C38 01 00                 6515 	.byte #0x01, #0x00	;  1
      006C3A 02 00                 6516 	.byte #0x02, #0x00	;  2
      006C3C 00 00                 6517 	.byte #0x00,#0x00
      006C3E 8B 2A                 6518 	.byte _accumulate, (_accumulate >> 8)
      006C40 00 00                 6519 	.byte #0x00, #0x00	;  0
      006C42 02 00                 6520 	.byte #0x02, #0x00	;  2
      006C44 01 00                 6521 	.byte #0x01, #0x00	;  1
      006C46 00 00                 6522 	.byte #0x00,#0x00
      006C48 E4 2F                 6523 	.byte _operator, (_operator >> 8)
      006C4A 01 00                 6524 	.byte #0x01, #0x00	;  1
      006C4C 00 00                 6525 	.byte #0x00, #0x00	;  0
      006C4E 00 00                 6526 	.byte #0x00, #0x00	;  0
      006C50 00 00                 6527 	.byte #0x00,#0x00
      006C52 00 00                 6528 	.byte #0x00,#0x00
      006C54 01 00                 6529 	.byte #0x01, #0x00	;  1
      006C56 02 00                 6530 	.byte #0x02, #0x00	;  2
      006C58 01 00                 6531 	.byte #0x01, #0x00	;  1
      006C5A 00 00                 6532 	.byte #0x00,#0x00
      006C5C E4 2F                 6533 	.byte _operator, (_operator >> 8)
      006C5E 01 00                 6534 	.byte #0x01, #0x00	;  1
      006C60 01 00                 6535 	.byte #0x01, #0x00	;  1
      006C62 02 00                 6536 	.byte #0x02, #0x00	;  2
      006C64 00 00                 6537 	.byte #0x00,#0x00
      006C66 8B 2A                 6538 	.byte _accumulate, (_accumulate >> 8)
      006C68 02 00                 6539 	.byte #0x02, #0x00	;  2
      006C6A 00 00                 6540 	.byte #0x00, #0x00	;  0
      006C6C 00 00                 6541 	.byte #0x00, #0x00	;  0
      006C6E 00 00                 6542 	.byte #0x00,#0x00
      006C70 23 42                 6543 	.byte _push_acc, (_push_acc >> 8)
      006C72 02 00                 6544 	.byte #0x02, #0x00	;  2
      006C74 06 00                 6545 	.byte #0x06, #0x00	;  6
      006C76 00 00                 6546 	.byte #0x00, #0x00	;  0
      006C78 00 00                 6547 	.byte #0x00,#0x00
      006C7A 31 43                 6548 	.byte _reset_acc, (_reset_acc >> 8)
      006C7C 02 00                 6549 	.byte #0x02, #0x00	;  2
      006C7E 01 00                 6550 	.byte #0x01, #0x00	;  1
      006C80 02 00                 6551 	.byte #0x02, #0x00	;  2
      006C82 00 00                 6552 	.byte #0x00,#0x00
      006C84 8B 2A                 6553 	.byte _accumulate, (_accumulate >> 8)
      006C86 02 00                 6554 	.byte #0x02, #0x00	;  2
      006C88 02 00                 6555 	.byte #0x02, #0x00	;  2
      006C8A 01 00                 6556 	.byte #0x01, #0x00	;  1
      006C8C 00 00                 6557 	.byte #0x00,#0x00
      006C8E 23 42                 6558 	.byte _push_acc, (_push_acc >> 8)
      006C90 FF 7F                 6559 	.byte #0xff, #0x7f	;  32767
      006C92 05 00                 6560 	.byte #0x05, #0x00	;  5
      006C94 FF 7F                 6561 	.byte #0xff, #0x7f	;  32767
      006C96 00 00                 6562 	.byte #0x00,#0x00
      006C98 31 43                 6563 	.byte _reset_acc, (_reset_acc >> 8)
      006C9A FF 7F                 6564 	.byte #0xff, #0x7f	;  32767
      006C9C 06 00                 6565 	.byte #0x06, #0x00	;  6
      006C9E FF 7F                 6566 	.byte #0xff, #0x7f	;  32767
      006CA0 00 00                 6567 	.byte #0x00,#0x00
      006CA2 00 00                 6568 	.byte #0x00,#0x00
      006CA4 FF 7F                 6569 	.byte #0xff, #0x7f	;  32767
      006CA6 04 00                 6570 	.byte #0x04, #0x00	;  4
      006CA8 FF 7F                 6571 	.byte #0xff, #0x7f	;  32767
      006CAA 00 00                 6572 	.byte #0x00,#0x00
      006CAC 9B 43                 6573 	.byte _reset_base, (_reset_base >> 8)
      006CAE FF 7F                 6574 	.byte #0xff, #0x7f	;  32767
      006CB0 03 00                 6575 	.byte #0x03, #0x00	;  3
      006CB2 FF 7F                 6576 	.byte #0xff, #0x7f	;  32767
      006CB4 00 00                 6577 	.byte #0x00,#0x00
      006CB6 19 44                 6578 	.byte _help, (_help >> 8)
      006CB8 FF 7F                 6579 	.byte #0xff, #0x7f	;  32767
      006CBA 07 00                 6580 	.byte #0x07, #0x00	;  7
      006CBC 03 00                 6581 	.byte #0x03, #0x00	;  3
      006CBE 00 00                 6582 	.byte #0x00,#0x00
      006CC0 FC 2B                 6583 	.byte _dump_pop, (_dump_pop >> 8)
      006CC2 00 80                 6584 	.byte #0x00, #0x80	; -32768
      006CC4 00 80                 6585 	.byte #0x00, #0x80	; -32768
      006CC6 00 80                 6586 	.byte #0x00, #0x80	; -32768
      006CC8 00 00                 6587 	.byte #0x00,#0x00
      006CCA 00 00                 6588 	.byte #0x00,#0x00
                                   6589 	.area CABS    (ABS,CODE)
