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
      002003 02 4E 40         [24]  372 	ljmp	_main
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
      0029EE 12 58 8D         [24]  459 	lcall	__gptrget
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
      002ABE 12 58 8D         [24]  633 	lcall	__gptrget
      002AC1 70 31            [24]  634 	jnz	00102$
                                    635 ;	calc.c:91: ctx->acc_valid = 1;
      002AC3 8A 82            [24]  636 	mov	dpl,r2
      002AC5 8B 83            [24]  637 	mov	dph,r3
      002AC7 8C F0            [24]  638 	mov	b,r4
      002AC9 74 01            [12]  639 	mov	a,#0x01
      002ACB 12 54 12         [24]  640 	lcall	__gptrput
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
      002AE5 12 54 12         [24]  658 	lcall	__gptrput
      002AE8 A3               [24]  659 	inc	dptr
      002AE9 12 54 12         [24]  660 	lcall	__gptrput
      002AEC A3               [24]  661 	inc	dptr
      002AED 12 54 12         [24]  662 	lcall	__gptrput
      002AF0 A3               [24]  663 	inc	dptr
      002AF1 12 54 12         [24]  664 	lcall	__gptrput
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
      002B01 12 58 8D         [24]  675 	lcall	__gptrget
      002B04 FB               [12]  676 	mov	r3,a
      002B05 A3               [24]  677 	inc	dptr
      002B06 12 58 8D         [24]  678 	lcall	__gptrget
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
      002B2B 12 51 D4         [24]  701 	lcall	_strtol
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
      002B69 12 58 8D         [24]  744 	lcall	__gptrget
      002B6C F7               [12]  745 	mov	@r1,a
      002B6D A3               [24]  746 	inc	dptr
      002B6E 12 58 8D         [24]  747 	lcall	__gptrget
      002B71 09               [12]  748 	inc	r1
      002B72 F7               [12]  749 	mov	@r1,a
      002B73 A3               [24]  750 	inc	dptr
      002B74 12 58 8D         [24]  751 	lcall	__gptrget
      002B77 09               [12]  752 	inc	r1
      002B78 F7               [12]  753 	mov	@r1,a
      002B79 A3               [24]  754 	inc	dptr
      002B7A 12 58 8D         [24]  755 	lcall	__gptrget
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
      002B8C 12 58 8D         [24]  766 	lcall	__gptrget
      002B8F FA               [12]  767 	mov	r2,a
      002B90 A3               [24]  768 	inc	dptr
      002B91 12 58 8D         [24]  769 	lcall	__gptrget
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
      002BB1 12 5C 86         [24]  789 	lcall	__mullong
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
      002BE1 12 54 12         [24]  823 	lcall	__gptrput
      002BE4 A3               [24]  824 	inc	dptr
      002BE5 ED               [12]  825 	mov	a,r5
      002BE6 12 54 12         [24]  826 	lcall	__gptrput
      002BE9 A3               [24]  827 	inc	dptr
      002BEA EE               [12]  828 	mov	a,r6
      002BEB 12 54 12         [24]  829 	lcall	__gptrput
      002BEE A3               [24]  830 	inc	dptr
      002BEF EF               [12]  831 	mov	a,r7
      002BF0 12 54 12         [24]  832 	lcall	__gptrput
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
      002C33 12 58 8D         [24]  901 	lcall	__gptrget
      002C36 FE               [12]  902 	mov	r6,a
      002C37 A3               [24]  903 	inc	dptr
      002C38 12 58 8D         [24]  904 	lcall	__gptrget
      002C3B FF               [12]  905 	mov	r7,a
      002C3C BE 07 3D         [24]  906 	cjne	r6,#0x07,00102$
      002C3F BF 00 3A         [24]  907 	cjne	r7,#0x00,00102$
      002C42 7D 0E            [12]  908 	mov	r5,#___str_0
      002C44 7E 71            [12]  909 	mov	r6,#(___str_0 >> 8)
      002C46 7F 80            [12]  910 	mov	r7,#0x80
                                    911 ;	calc.c:50: return;
      002C48                        912 00122$:
                                    913 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002C48 8D 82            [24]  914 	mov	dpl,r5
      002C4A 8E 83            [24]  915 	mov	dph,r6
      002C4C 8F F0            [24]  916 	mov	b,r7
      002C4E A8 08            [24]  917 	mov	r0,_bp
      002C50 08               [12]  918 	inc	r0
      002C51 12 58 8D         [24]  919 	lcall	__gptrget
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
      002CEE 12 58 8D         [24] 1017 	lcall	__gptrget
      002CF1 FA               [12] 1018 	mov	r2,a
      002CF2 A3               [24] 1019 	inc	dptr
      002CF3 12 58 8D         [24] 1020 	lcall	__gptrget
      002CF6 FB               [12] 1021 	mov	r3,a
      002CF7 BA 07 06         [24] 1022 	cjne	r2,#0x07,00212$
      002CFA BB 00 03         [24] 1023 	cjne	r3,#0x00,00212$
      002CFD 02 2E A7         [24] 1024 	ljmp	00110$
      002D00                       1025 00212$:
      002D00 7C 11            [12] 1026 	mov	r4,#___str_1
      002D02 7D 71            [12] 1027 	mov	r5,#(___str_1 >> 8)
      002D04 7E 80            [12] 1028 	mov	r6,#0x80
                                   1029 ;	calc.c:50: return;
      002D06                       1030 00125$:
                                   1031 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002D06 8C 82            [24] 1032 	mov	dpl,r4
      002D08 8D 83            [24] 1033 	mov	dph,r5
      002D0A 8E F0            [24] 1034 	mov	b,r6
      002D0C 12 58 8D         [24] 1035 	lcall	__gptrget
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
      002D3B 7C 23            [12] 1066 	mov	r4,#___str_2
      002D3D 7D 71            [12] 1067 	mov	r5,#(___str_2 >> 8)
      002D3F 7E 80            [12] 1068 	mov	r6,#0x80
                                   1069 ;	calc.c:50: return;
      002D41                       1070 00128$:
                                   1071 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002D41 8C 82            [24] 1072 	mov	dpl,r4
      002D43 8D 83            [24] 1073 	mov	dph,r5
      002D45 8E F0            [24] 1074 	mov	b,r6
      002D47 12 58 8D         [24] 1075 	lcall	__gptrget
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
      002D73 74 27            [12] 1104 	mov	a,#___str_3
      002D75 C0 E0            [24] 1105 	push	acc
      002D77 74 71            [12] 1106 	mov	a,#(___str_3 >> 8)
      002D79 C0 E0            [24] 1107 	push	acc
      002D7B 74 80            [12] 1108 	mov	a,#0x80
      002D7D C0 E0            [24] 1109 	push	acc
      002D7F 12 58 54         [24] 1110 	lcall	_printf
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
      002D9C 74 31            [12] 1129 	mov	a,#___str_4
      002D9E C0 E0            [24] 1130 	push	acc
      002DA0 74 71            [12] 1131 	mov	a,#(___str_4 >> 8)
      002DA2 C0 E0            [24] 1132 	push	acc
      002DA4 74 80            [12] 1133 	mov	a,#0x80
      002DA6 C0 E0            [24] 1134 	push	acc
      002DA8 12 58 54         [24] 1135 	lcall	_printf
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
      002E46 7C 0E            [12] 1251 	mov	r4,#___str_0
      002E48 7D 71            [12] 1252 	mov	r5,#(___str_0 >> 8)
      002E4A 7E 80            [12] 1253 	mov	r6,#0x80
                                   1254 ;	calc.c:50: return;
      002E4C                       1255 00133$:
                                   1256 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002E4C 8C 82            [24] 1257 	mov	dpl,r4
      002E4E 8D 83            [24] 1258 	mov	dph,r5
      002E50 8E F0            [24] 1259 	mov	b,r6
      002E52 12 58 8D         [24] 1260 	lcall	__gptrget
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
      002EBA 7D 3A            [12] 1341 	mov	r5,#___str_5
      002EBC 7E 71            [12] 1342 	mov	r6,#(___str_5 >> 8)
      002EBE 7F 80            [12] 1343 	mov	r7,#0x80
                                   1344 ;	calc.c:50: return;
      002EC0                       1345 00108$:
                                   1346 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002EC0 8D 82            [24] 1347 	mov	dpl,r5
      002EC2 8E 83            [24] 1348 	mov	dph,r6
      002EC4 8F F0            [24] 1349 	mov	b,r7
      002EC6 12 58 8D         [24] 1350 	lcall	__gptrget
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
      002EF0 74 27            [12] 1378 	mov	a,#___str_3
      002EF2 C0 E0            [24] 1379 	push	acc
      002EF4 74 71            [12] 1380 	mov	a,#(___str_3 >> 8)
      002EF6 C0 E0            [24] 1381 	push	acc
      002EF8 74 80            [12] 1382 	mov	a,#0x80
      002EFA C0 E0            [24] 1383 	push	acc
      002EFC 12 58 54         [24] 1384 	lcall	_printf
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
      002F19 74 31            [12] 1403 	mov	a,#___str_4
      002F1B C0 E0            [24] 1404 	push	acc
      002F1D 74 71            [12] 1405 	mov	a,#(___str_4 >> 8)
      002F1F C0 E0            [24] 1406 	push	acc
      002F21 74 80            [12] 1407 	mov	a,#0x80
      002F23 C0 E0            [24] 1408 	push	acc
      002F25 12 58 54         [24] 1409 	lcall	_printf
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
      002FB9 7D 0E            [12] 1520 	mov	r5,#___str_0
      002FBB 7E 71            [12] 1521 	mov	r6,#(___str_0 >> 8)
      002FBD 7F 80            [12] 1522 	mov	r7,#0x80
                                   1523 ;	calc.c:50: return;
      002FBF                       1524 00113$:
                                   1525 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002FBF 8D 82            [24] 1526 	mov	dpl,r5
      002FC1 8E 83            [24] 1527 	mov	dph,r6
      002FC3 8F F0            [24] 1528 	mov	b,r7
      002FC5 12 58 8D         [24] 1529 	lcall	__gptrget
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
                                   1553 ;ctx                       Allocated to stack - _bp +12
                                   1554 ;d0                        Allocated to stack - _bp +15
                                   1555 ;d1                        Allocated to stack - _bp +19
                                   1556 ;__1966080017              Allocated to registers 
                                   1557 ;s                         Allocated to registers r7 r6 r5 
                                   1558 ;__1966080019              Allocated to registers 
                                   1559 ;s                         Allocated to registers r7 r6 r5 
                                   1560 ;__2621440021              Allocated to registers 
                                   1561 ;s                         Allocated to registers r7 r6 r5 
                                   1562 ;__2621440023              Allocated to registers r7 r6 r5 r4 
                                   1563 ;d                         Allocated to stack - _bp +23
                                   1564 ;mask                      Allocated to stack - _bp +27
                                   1565 ;__2621440025              Allocated to registers 
                                   1566 ;s                         Allocated to registers r7 r6 r5 
                                   1567 ;__1966080027              Allocated to registers 
                                   1568 ;s                         Allocated to registers r7 r6 r5 
                                   1569 ;__1966080029              Allocated to registers 
                                   1570 ;s                         Allocated to registers r7 r6 r5 
                                   1571 ;__1966080031              Allocated to registers 
                                   1572 ;s                         Allocated to registers r7 r6 r5 
                                   1573 ;__1966080033              Allocated to registers 
                                   1574 ;s                         Allocated to registers r7 r6 r5 
                                   1575 ;__2621440035              Allocated to registers 
                                   1576 ;s                         Allocated to registers r7 r6 r5 
                                   1577 ;__2621440037              Allocated to registers r7 r6 r5 r4 
                                   1578 ;d                         Allocated to stack - _bp +23
                                   1579 ;mask                      Allocated to stack - _bp +27
                                   1580 ;__2621440039              Allocated to registers 
                                   1581 ;s                         Allocated to registers r7 r6 r5 
                                   1582 ;__1966080041              Allocated to registers 
                                   1583 ;s                         Allocated to registers r7 r6 r5 
                                   1584 ;__1966080043              Allocated to registers 
                                   1585 ;s                         Allocated to registers r7 r6 r5 
                                   1586 ;__2621440045              Allocated to registers 
                                   1587 ;s                         Allocated to registers r7 r6 r5 
                                   1588 ;__1966080047              Allocated to registers 
                                   1589 ;s                         Allocated to registers r7 r6 r5 
                                   1590 ;__2621440049              Allocated to registers 
                                   1591 ;s                         Allocated to registers r7 r6 r5 
                                   1592 ;__1966080051              Allocated to registers 
                                   1593 ;s                         Allocated to registers r7 r6 r5 
                                   1594 ;__2621440053              Allocated to registers 
                                   1595 ;s                         Allocated to registers r7 r6 r5 
                                   1596 ;__1966080055              Allocated to registers 
                                   1597 ;s                         Allocated to registers r7 r6 r5 
                                   1598 ;__2621440057              Allocated to registers 
                                   1599 ;s                         Allocated to registers r7 r6 r5 
                                   1600 ;__1966080059              Allocated to registers 
                                   1601 ;s                         Allocated to registers r7 r6 r5 
                                   1602 ;__2621440061              Allocated to registers 
                                   1603 ;s                         Allocated to registers r7 r6 r5 
                                   1604 ;__2621440063              Allocated to registers 
                                   1605 ;s                         Allocated to registers r7 r6 r5 
                                   1606 ;__1966080065              Allocated to registers 
                                   1607 ;s                         Allocated to registers r7 r6 r5 
                                   1608 ;__2621440067              Allocated to registers 
                                   1609 ;s                         Allocated to registers r7 r6 r5 
                                   1610 ;__2621440069              Allocated to registers 
                                   1611 ;s                         Allocated to registers r7 r6 r5 
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
                                   1626 ;__2621440085              Allocated to registers 
                                   1627 ;s                         Allocated to registers r5 r6 r7 
                                   1628 ;__1966080087              Allocated to registers 
                                   1629 ;s                         Allocated to registers r5 r6 r7 
                                   1630 ;__2621440089              Allocated to registers 
                                   1631 ;s                         Allocated to registers r5 r6 r7 
                                   1632 ;__1966080091              Allocated to registers 
                                   1633 ;s                         Allocated to registers r5 r6 r7 
                                   1634 ;__2621440093              Allocated to registers 
                                   1635 ;s                         Allocated to registers r5 r6 r7 
                                   1636 ;__1966080095              Allocated to registers 
                                   1637 ;s                         Allocated to registers r5 r6 r7 
                                   1638 ;sloc0                     Allocated to stack - _bp +267
                                   1639 ;sloc1                     Allocated to stack - _bp +268
                                   1640 ;sloc2                     Allocated to stack - _bp +4
                                   1641 ;sloc3                     Allocated to stack - _bp +8
                                   1642 ;------------------------------------------------------------
                                   1643 ;	calc.c:135: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1644 ;	-----------------------------------------
                                   1645 ;	 function operator
                                   1646 ;	-----------------------------------------
      002FE4                       1647 _operator:
      002FE4 C0 08            [24] 1648 	push	_bp
      002FE6 85 81 08         [24] 1649 	mov	_bp,sp
      002FE9 C0 82            [24] 1650 	push	dpl
      002FEB C0 83            [24] 1651 	push	dph
      002FED C0 F0            [24] 1652 	push	b
      002FEF E5 81            [12] 1653 	mov	a,sp
      002FF1 24 1B            [12] 1654 	add	a,#0x1b
      002FF3 F5 81            [12] 1655 	mov	sp,a
                                   1656 ;	calc.c:136: struct ctx *ctx = (struct ctx *)_ctx;
      002FF5 A8 08            [24] 1657 	mov	r0,_bp
      002FF7 08               [12] 1658 	inc	r0
      002FF8 E5 08            [12] 1659 	mov	a,_bp
      002FFA 24 0C            [12] 1660 	add	a,#0x0c
      002FFC F9               [12] 1661 	mov	r1,a
      002FFD E6               [12] 1662 	mov	a,@r0
      002FFE F7               [12] 1663 	mov	@r1,a
      002FFF 08               [12] 1664 	inc	r0
      003000 09               [12] 1665 	inc	r1
      003001 E6               [12] 1666 	mov	a,@r0
      003002 F7               [12] 1667 	mov	@r1,a
      003003 08               [12] 1668 	inc	r0
      003004 09               [12] 1669 	inc	r1
      003005 E6               [12] 1670 	mov	a,@r0
      003006 F7               [12] 1671 	mov	@r1,a
                                   1672 ;	calc.c:139: switch (ctx->digit[0]) {
      003007 E5 08            [12] 1673 	mov	a,_bp
      003009 24 0C            [12] 1674 	add	a,#0x0c
      00300B F8               [12] 1675 	mov	r0,a
      00300C 74 07            [12] 1676 	mov	a,#0x07
      00300E 26               [12] 1677 	add	a,@r0
      00300F FD               [12] 1678 	mov	r5,a
      003010 E4               [12] 1679 	clr	a
      003011 08               [12] 1680 	inc	r0
      003012 36               [12] 1681 	addc	a,@r0
      003013 FE               [12] 1682 	mov	r6,a
      003014 08               [12] 1683 	inc	r0
      003015 86 07            [24] 1684 	mov	ar7,@r0
      003017 8D 82            [24] 1685 	mov	dpl,r5
      003019 8E 83            [24] 1686 	mov	dph,r6
      00301B 8F F0            [24] 1687 	mov	b,r7
      00301D 12 58 8D         [24] 1688 	lcall	__gptrget
      003020 FC               [12] 1689 	mov	r4,a
      003021 BC 23 03         [24] 1690 	cjne	r4,#0x23,00996$
      003024 02 3C 79         [24] 1691 	ljmp	00157$
      003027                       1692 00996$:
      003027 BC 25 03         [24] 1693 	cjne	r4,#0x25,00997$
      00302A 02 3C 79         [24] 1694 	ljmp	00157$
      00302D                       1695 00997$:
      00302D BC 26 03         [24] 1696 	cjne	r4,#0x26,00998$
      003030 02 3F 05         [24] 1697 	ljmp	00170$
      003033                       1698 00998$:
      003033 BC 2A 03         [24] 1699 	cjne	r4,#0x2a,00999$
      003036 02 38 87         [24] 1700 	ljmp	00135$
      003039                       1701 00999$:
      003039 BC 2B 03         [24] 1702 	cjne	r4,#0x2b,01000$
      00303C 02 36 10         [24] 1703 	ljmp	00121$
      00303F                       1704 01000$:
      00303F BC 2D 03         [24] 1705 	cjne	r4,#0x2d,01001$
      003042 02 37 4B         [24] 1706 	ljmp	00128$
      003045                       1707 01001$:
      003045 BC 2E 03         [24] 1708 	cjne	r4,#0x2e,01002$
      003048 02 32 CE         [24] 1709 	ljmp	00109$
      00304B                       1710 01002$:
      00304B BC 2F 03         [24] 1711 	cjne	r4,#0x2f,01003$
      00304E 02 39 E9         [24] 1712 	ljmp	00143$
      003051                       1713 01003$:
      003051 BC 3C 03         [24] 1714 	cjne	r4,#0x3c,01004$
      003054 02 45 6A         [24] 1715 	ljmp	00205$
      003057                       1716 01004$:
      003057 BC 3E 03         [24] 1717 	cjne	r4,#0x3e,01005$
      00305A 02 42 B6         [24] 1718 	ljmp	00191$
      00305D                       1719 01005$:
      00305D BC 50 03         [24] 1720 	cjne	r4,#0x50,01006$
      003060 02 32 42         [24] 1721 	ljmp	00105$
      003063                       1722 01006$:
      003063 BC 56 03         [24] 1723 	cjne	r4,#0x56,01007$
      003066 02 34 75         [24] 1724 	ljmp	00113$
      003069                       1725 01007$:
      003069 BC 5C 03         [24] 1726 	cjne	r4,#0x5c,01008$
      00306C 02 39 E9         [24] 1727 	ljmp	00143$
      00306F                       1728 01008$:
      00306F BC 5D 03         [24] 1729 	cjne	r4,#0x5d,01009$
      003072 02 44 15         [24] 1730 	ljmp	00198$
      003075                       1731 01009$:
      003075 BC 5E 03         [24] 1732 	cjne	r4,#0x5e,01010$
      003078 02 41 7B         [24] 1733 	ljmp	00184$
      00307B                       1734 01010$:
      00307B BC 70 02         [24] 1735 	cjne	r4,#0x70,01011$
      00307E 80 1B            [24] 1736 	sjmp	00101$
      003080                       1737 01011$:
      003080 BC 76 03         [24] 1738 	cjne	r4,#0x76,01012$
      003083 02 32 CE         [24] 1739 	ljmp	00109$
      003086                       1740 01012$:
      003086 BC 78 03         [24] 1741 	cjne	r4,#0x78,01013$
      003089 02 34 BE         [24] 1742 	ljmp	00114$
      00308C                       1743 01013$:
      00308C BC 7C 03         [24] 1744 	cjne	r4,#0x7c,01014$
      00308F 02 40 40         [24] 1745 	ljmp	00177$
      003092                       1746 01014$:
      003092 BC 7E 03         [24] 1747 	cjne	r4,#0x7e,01015$
      003095 02 46 C8         [24] 1748 	ljmp	00212$
      003098                       1749 01015$:
      003098 02 47 69         [24] 1750 	ljmp	00216$
                                   1751 ;	calc.c:140: case 'p':
      00309B                       1752 00101$:
                                   1753 ;	calc.c:141: printstr("\r\n");
      00309B 7F 0E            [12] 1754 	mov	r7,#___str_0
      00309D 7E 71            [12] 1755 	mov	r6,#(___str_0 >> 8)
      00309F 7D 80            [12] 1756 	mov	r5,#0x80
                                   1757 ;	calc.c:50: return;
      0030A1                       1758 00299$:
                                   1759 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0030A1 8F 82            [24] 1760 	mov	dpl,r7
      0030A3 8E 83            [24] 1761 	mov	dph,r6
      0030A5 8D F0            [24] 1762 	mov	b,r5
      0030A7 12 58 8D         [24] 1763 	lcall	__gptrget
      0030AA FC               [12] 1764 	mov	r4,a
      0030AB 60 10            [24] 1765 	jz	00219$
      0030AD 7B 00            [12] 1766 	mov	r3,#0x00
      0030AF 8C 82            [24] 1767 	mov	dpl,r4
      0030B1 8B 83            [24] 1768 	mov	dph,r3
      0030B3 12 29 C0         [24] 1769 	lcall	_putchar
      0030B6 0F               [12] 1770 	inc	r7
                                   1771 ;	calc.c:141: printstr("\r\n");
      0030B7 BF 00 E7         [24] 1772 	cjne	r7,#0x00,00299$
      0030BA 0E               [12] 1773 	inc	r6
      0030BB 80 E4            [24] 1774 	sjmp	00299$
      0030BD                       1775 00219$:
                                   1776 ;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      0030BD E5 08            [12] 1777 	mov	a,_bp
      0030BF 24 0F            [12] 1778 	add	a,#0x0f
      0030C1 FF               [12] 1779 	mov	r7,a
      0030C2 7E 00            [12] 1780 	mov	r6,#0x00
      0030C4 7D 40            [12] 1781 	mov	r5,#0x40
      0030C6 E5 08            [12] 1782 	mov	a,_bp
      0030C8 24 0C            [12] 1783 	add	a,#0x0c
      0030CA F8               [12] 1784 	mov	r0,a
      0030CB 74 09            [12] 1785 	mov	a,#0x09
      0030CD 26               [12] 1786 	add	a,@r0
      0030CE FA               [12] 1787 	mov	r2,a
      0030CF E4               [12] 1788 	clr	a
      0030D0 08               [12] 1789 	inc	r0
      0030D1 36               [12] 1790 	addc	a,@r0
      0030D2 FB               [12] 1791 	mov	r3,a
      0030D3 08               [12] 1792 	inc	r0
      0030D4 86 04            [24] 1793 	mov	ar4,@r0
      0030D6 C0 07            [24] 1794 	push	ar7
      0030D8 C0 06            [24] 1795 	push	ar6
      0030DA C0 05            [24] 1796 	push	ar5
      0030DC 8A 82            [24] 1797 	mov	dpl,r2
      0030DE 8B 83            [24] 1798 	mov	dph,r3
      0030E0 8C F0            [24] 1799 	mov	b,r4
      0030E2 12 28 56         [24] 1800 	lcall	_stack_peek
      0030E5 AB 82            [24] 1801 	mov	r3,dpl
      0030E7 AC 83            [24] 1802 	mov	r4,dph
      0030E9 15 81            [12] 1803 	dec	sp
      0030EB 15 81            [12] 1804 	dec	sp
      0030ED 15 81            [12] 1805 	dec	sp
      0030EF EB               [12] 1806 	mov	a,r3
      0030F0 4C               [12] 1807 	orl	a,r4
      0030F1 70 25            [24] 1808 	jnz	00103$
      0030F3 7F 11            [12] 1809 	mov	r7,#___str_1
      0030F5 7E 71            [12] 1810 	mov	r6,#(___str_1 >> 8)
      0030F7 7D 80            [12] 1811 	mov	r5,#0x80
                                   1812 ;	calc.c:50: return;
      0030F9                       1813 00302$:
                                   1814 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0030F9 8F 82            [24] 1815 	mov	dpl,r7
      0030FB 8E 83            [24] 1816 	mov	dph,r6
      0030FD 8D F0            [24] 1817 	mov	b,r5
      0030FF 12 58 8D         [24] 1818 	lcall	__gptrget
      003102 FC               [12] 1819 	mov	r4,a
      003103 70 03            [24] 1820 	jnz	01019$
      003105 02 47 6E         [24] 1821 	ljmp	00217$
      003108                       1822 01019$:
      003108 7B 00            [12] 1823 	mov	r3,#0x00
      00310A 8C 82            [24] 1824 	mov	dpl,r4
      00310C 8B 83            [24] 1825 	mov	dph,r3
      00310E 12 29 C0         [24] 1826 	lcall	_putchar
      003111 0F               [12] 1827 	inc	r7
                                   1828 ;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003112 BF 00 E4         [24] 1829 	cjne	r7,#0x00,00302$
      003115 0E               [12] 1830 	inc	r6
      003116 80 E1            [24] 1831 	sjmp	00302$
      003118                       1832 00103$:
                                   1833 ;	calc.c:144: printstr("PT ");
      003118 7F 3E            [12] 1834 	mov	r7,#___str_6
      00311A 7E 71            [12] 1835 	mov	r6,#(___str_6 >> 8)
      00311C 7D 80            [12] 1836 	mov	r5,#0x80
                                   1837 ;	calc.c:50: return;
      00311E                       1838 00305$:
                                   1839 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00311E 8F 82            [24] 1840 	mov	dpl,r7
      003120 8E 83            [24] 1841 	mov	dph,r6
      003122 8D F0            [24] 1842 	mov	b,r5
      003124 12 58 8D         [24] 1843 	lcall	__gptrget
      003127 FC               [12] 1844 	mov	r4,a
      003128 60 10            [24] 1845 	jz	00223$
      00312A 7B 00            [12] 1846 	mov	r3,#0x00
      00312C 8C 82            [24] 1847 	mov	dpl,r4
      00312E 8B 83            [24] 1848 	mov	dph,r3
      003130 12 29 C0         [24] 1849 	lcall	_putchar
      003133 0F               [12] 1850 	inc	r7
                                   1851 ;	calc.c:144: printstr("PT ");
      003134 BF 00 E7         [24] 1852 	cjne	r7,#0x00,00305$
      003137 0E               [12] 1853 	inc	r6
      003138 80 E4            [24] 1854 	sjmp	00305$
      00313A                       1855 00223$:
                                   1856 ;	calc.c:145: printf("% 11ld / ", d0);
      00313A E5 08            [12] 1857 	mov	a,_bp
      00313C 24 0F            [12] 1858 	add	a,#0x0f
      00313E F8               [12] 1859 	mov	r0,a
      00313F E6               [12] 1860 	mov	a,@r0
      003140 C0 E0            [24] 1861 	push	acc
      003142 08               [12] 1862 	inc	r0
      003143 E6               [12] 1863 	mov	a,@r0
      003144 C0 E0            [24] 1864 	push	acc
      003146 08               [12] 1865 	inc	r0
      003147 E6               [12] 1866 	mov	a,@r0
      003148 C0 E0            [24] 1867 	push	acc
      00314A 08               [12] 1868 	inc	r0
      00314B E6               [12] 1869 	mov	a,@r0
      00314C C0 E0            [24] 1870 	push	acc
      00314E 74 27            [12] 1871 	mov	a,#___str_3
      003150 C0 E0            [24] 1872 	push	acc
      003152 74 71            [12] 1873 	mov	a,#(___str_3 >> 8)
      003154 C0 E0            [24] 1874 	push	acc
      003156 74 80            [12] 1875 	mov	a,#0x80
      003158 C0 E0            [24] 1876 	push	acc
      00315A 12 58 54         [24] 1877 	lcall	_printf
      00315D E5 81            [12] 1878 	mov	a,sp
      00315F 24 F9            [12] 1879 	add	a,#0xf9
      003161 F5 81            [12] 1880 	mov	sp,a
                                   1881 ;	calc.c:146: printf("%08lx / ", d0);
      003163 E5 08            [12] 1882 	mov	a,_bp
      003165 24 0F            [12] 1883 	add	a,#0x0f
      003167 F8               [12] 1884 	mov	r0,a
      003168 E6               [12] 1885 	mov	a,@r0
      003169 C0 E0            [24] 1886 	push	acc
      00316B 08               [12] 1887 	inc	r0
      00316C E6               [12] 1888 	mov	a,@r0
      00316D C0 E0            [24] 1889 	push	acc
      00316F 08               [12] 1890 	inc	r0
      003170 E6               [12] 1891 	mov	a,@r0
      003171 C0 E0            [24] 1892 	push	acc
      003173 08               [12] 1893 	inc	r0
      003174 E6               [12] 1894 	mov	a,@r0
      003175 C0 E0            [24] 1895 	push	acc
      003177 74 31            [12] 1896 	mov	a,#___str_4
      003179 C0 E0            [24] 1897 	push	acc
      00317B 74 71            [12] 1898 	mov	a,#(___str_4 >> 8)
      00317D C0 E0            [24] 1899 	push	acc
      00317F 74 80            [12] 1900 	mov	a,#0x80
      003181 C0 E0            [24] 1901 	push	acc
      003183 12 58 54         [24] 1902 	lcall	_printf
      003186 E5 81            [12] 1903 	mov	a,sp
      003188 24 F9            [12] 1904 	add	a,#0xf9
      00318A F5 81            [12] 1905 	mov	sp,a
                                   1906 ;	calc.c:147: printbin(d0);
      00318C E5 08            [12] 1907 	mov	a,_bp
      00318E 24 0F            [12] 1908 	add	a,#0x0f
      003190 F8               [12] 1909 	mov	r0,a
      003191 86 07            [24] 1910 	mov	ar7,@r0
      003193 08               [12] 1911 	inc	r0
      003194 86 06            [24] 1912 	mov	ar6,@r0
      003196 08               [12] 1913 	inc	r0
      003197 86 05            [24] 1914 	mov	ar5,@r0
      003199 08               [12] 1915 	inc	r0
      00319A 86 04            [24] 1916 	mov	ar4,@r0
      00319C 8C 02            [24] 1917 	mov	ar2,r4
                                   1918 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      00319E E5 08            [12] 1919 	mov	a,_bp
      0031A0 24 1B            [12] 1920 	add	a,#0x1b
      0031A2 F8               [12] 1921 	mov	r0,a
      0031A3 E4               [12] 1922 	clr	a
      0031A4 F6               [12] 1923 	mov	@r0,a
      0031A5 08               [12] 1924 	inc	r0
      0031A6 F6               [12] 1925 	mov	@r0,a
      0031A7 08               [12] 1926 	inc	r0
      0031A8 F6               [12] 1927 	mov	@r0,a
      0031A9 08               [12] 1928 	inc	r0
      0031AA 76 80            [12] 1929 	mov	@r0,#0x80
      0031AC                       1930 00307$:
                                   1931 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0031AC E5 08            [12] 1932 	mov	a,_bp
      0031AE 24 04            [12] 1933 	add	a,#0x04
      0031B0 F8               [12] 1934 	mov	r0,a
      0031B1 A6 07            [24] 1935 	mov	@r0,ar7
      0031B3 08               [12] 1936 	inc	r0
      0031B4 A6 06            [24] 1937 	mov	@r0,ar6
      0031B6 08               [12] 1938 	inc	r0
      0031B7 A6 05            [24] 1939 	mov	@r0,ar5
      0031B9 08               [12] 1940 	inc	r0
      0031BA A6 02            [24] 1941 	mov	@r0,ar2
      0031BC E5 08            [12] 1942 	mov	a,_bp
      0031BE 24 04            [12] 1943 	add	a,#0x04
      0031C0 F8               [12] 1944 	mov	r0,a
      0031C1 E5 08            [12] 1945 	mov	a,_bp
      0031C3 24 1B            [12] 1946 	add	a,#0x1b
      0031C5 F9               [12] 1947 	mov	r1,a
      0031C6 E7               [12] 1948 	mov	a,@r1
      0031C7 56               [12] 1949 	anl	a,@r0
      0031C8 F6               [12] 1950 	mov	@r0,a
      0031C9 09               [12] 1951 	inc	r1
      0031CA E7               [12] 1952 	mov	a,@r1
      0031CB 08               [12] 1953 	inc	r0
      0031CC 56               [12] 1954 	anl	a,@r0
      0031CD F6               [12] 1955 	mov	@r0,a
      0031CE 09               [12] 1956 	inc	r1
      0031CF E7               [12] 1957 	mov	a,@r1
      0031D0 08               [12] 1958 	inc	r0
      0031D1 56               [12] 1959 	anl	a,@r0
      0031D2 F6               [12] 1960 	mov	@r0,a
      0031D3 09               [12] 1961 	inc	r1
      0031D4 E7               [12] 1962 	mov	a,@r1
      0031D5 08               [12] 1963 	inc	r0
      0031D6 56               [12] 1964 	anl	a,@r0
      0031D7 F6               [12] 1965 	mov	@r0,a
      0031D8 E5 08            [12] 1966 	mov	a,_bp
      0031DA 24 04            [12] 1967 	add	a,#0x04
      0031DC F8               [12] 1968 	mov	r0,a
      0031DD E6               [12] 1969 	mov	a,@r0
      0031DE 08               [12] 1970 	inc	r0
      0031DF 46               [12] 1971 	orl	a,@r0
      0031E0 08               [12] 1972 	inc	r0
      0031E1 46               [12] 1973 	orl	a,@r0
      0031E2 08               [12] 1974 	inc	r0
      0031E3 46               [12] 1975 	orl	a,@r0
      0031E4 60 06            [24] 1976 	jz	00418$
      0031E6 7B 31            [12] 1977 	mov	r3,#0x31
      0031E8 7C 00            [12] 1978 	mov	r4,#0x00
      0031EA 80 04            [24] 1979 	sjmp	00419$
      0031EC                       1980 00418$:
      0031EC 7B 30            [12] 1981 	mov	r3,#0x30
      0031EE 7C 00            [12] 1982 	mov	r4,#0x00
      0031F0                       1983 00419$:
      0031F0 8B 82            [24] 1984 	mov	dpl,r3
      0031F2 8C 83            [24] 1985 	mov	dph,r4
      0031F4 12 29 C0         [24] 1986 	lcall	_putchar
                                   1987 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031F7 E5 08            [12] 1988 	mov	a,_bp
      0031F9 24 1B            [12] 1989 	add	a,#0x1b
      0031FB F8               [12] 1990 	mov	r0,a
      0031FC 08               [12] 1991 	inc	r0
      0031FD 08               [12] 1992 	inc	r0
      0031FE 08               [12] 1993 	inc	r0
      0031FF E6               [12] 1994 	mov	a,@r0
      003200 C3               [12] 1995 	clr	c
      003201 13               [12] 1996 	rrc	a
      003202 F6               [12] 1997 	mov	@r0,a
      003203 18               [12] 1998 	dec	r0
      003204 E6               [12] 1999 	mov	a,@r0
      003205 13               [12] 2000 	rrc	a
      003206 F6               [12] 2001 	mov	@r0,a
      003207 18               [12] 2002 	dec	r0
      003208 E6               [12] 2003 	mov	a,@r0
      003209 13               [12] 2004 	rrc	a
      00320A F6               [12] 2005 	mov	@r0,a
      00320B 18               [12] 2006 	dec	r0
      00320C E6               [12] 2007 	mov	a,@r0
      00320D 13               [12] 2008 	rrc	a
      00320E F6               [12] 2009 	mov	@r0,a
      00320F E5 08            [12] 2010 	mov	a,_bp
      003211 24 1B            [12] 2011 	add	a,#0x1b
      003213 F8               [12] 2012 	mov	r0,a
      003214 E6               [12] 2013 	mov	a,@r0
      003215 08               [12] 2014 	inc	r0
      003216 46               [12] 2015 	orl	a,@r0
      003217 08               [12] 2016 	inc	r0
      003218 46               [12] 2017 	orl	a,@r0
      003219 08               [12] 2018 	inc	r0
      00321A 46               [12] 2019 	orl	a,@r0
      00321B 70 8F            [24] 2020 	jnz	00307$
                                   2021 ;	calc.c:148: printstr("\r\n");
      00321D 7F 0E            [12] 2022 	mov	r7,#___str_0
      00321F 7E 71            [12] 2023 	mov	r6,#(___str_0 >> 8)
      003221 7D 80            [12] 2024 	mov	r5,#0x80
                                   2025 ;	calc.c:50: return;
      003223                       2026 00310$:
                                   2027 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003223 8F 82            [24] 2028 	mov	dpl,r7
      003225 8E 83            [24] 2029 	mov	dph,r6
      003227 8D F0            [24] 2030 	mov	b,r5
      003229 12 58 8D         [24] 2031 	lcall	__gptrget
      00322C FC               [12] 2032 	mov	r4,a
      00322D 70 03            [24] 2033 	jnz	01025$
      00322F 02 47 6E         [24] 2034 	ljmp	00217$
      003232                       2035 01025$:
      003232 7B 00            [12] 2036 	mov	r3,#0x00
      003234 8C 82            [24] 2037 	mov	dpl,r4
      003236 8B 83            [24] 2038 	mov	dph,r3
      003238 12 29 C0         [24] 2039 	lcall	_putchar
      00323B 0F               [12] 2040 	inc	r7
                                   2041 ;	calc.c:151: case 'P':
      00323C BF 00 E4         [24] 2042 	cjne	r7,#0x00,00310$
      00323F 0E               [12] 2043 	inc	r6
      003240 80 E1            [24] 2044 	sjmp	00310$
      003242                       2045 00105$:
                                   2046 ;	calc.c:152: printstr("\r\n");
      003242 7F 0E            [12] 2047 	mov	r7,#___str_0
      003244 7E 71            [12] 2048 	mov	r6,#(___str_0 >> 8)
      003246 7D 80            [12] 2049 	mov	r5,#0x80
                                   2050 ;	calc.c:50: return;
      003248                       2051 00313$:
                                   2052 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003248 8F 82            [24] 2053 	mov	dpl,r7
      00324A 8E 83            [24] 2054 	mov	dph,r6
      00324C 8D F0            [24] 2055 	mov	b,r5
      00324E 12 58 8D         [24] 2056 	lcall	__gptrget
      003251 FC               [12] 2057 	mov	r4,a
      003252 60 10            [24] 2058 	jz	00229$
      003254 7B 00            [12] 2059 	mov	r3,#0x00
      003256 8C 82            [24] 2060 	mov	dpl,r4
      003258 8B 83            [24] 2061 	mov	dph,r3
      00325A 12 29 C0         [24] 2062 	lcall	_putchar
      00325D 0F               [12] 2063 	inc	r7
                                   2064 ;	calc.c:152: printstr("\r\n");
      00325E BF 00 E7         [24] 2065 	cjne	r7,#0x00,00313$
      003261 0E               [12] 2066 	inc	r6
      003262 80 E4            [24] 2067 	sjmp	00313$
      003264                       2068 00229$:
                                   2069 ;	calc.c:153: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
      003264 E5 08            [12] 2070 	mov	a,_bp
      003266 24 0C            [12] 2071 	add	a,#0x0c
      003268 F8               [12] 2072 	mov	r0,a
      003269 86 07            [24] 2073 	mov	ar7,@r0
      00326B 08               [12] 2074 	inc	r0
      00326C 86 06            [24] 2075 	mov	ar6,@r0
      00326E 08               [12] 2076 	inc	r0
      00326F 86 05            [24] 2077 	mov	ar5,@r0
      003271 E5 08            [12] 2078 	mov	a,_bp
      003273 24 0C            [12] 2079 	add	a,#0x0c
      003275 F8               [12] 2080 	mov	r0,a
      003276 74 09            [12] 2081 	mov	a,#0x09
      003278 26               [12] 2082 	add	a,@r0
      003279 FA               [12] 2083 	mov	r2,a
      00327A E4               [12] 2084 	clr	a
      00327B 08               [12] 2085 	inc	r0
      00327C 36               [12] 2086 	addc	a,@r0
      00327D FB               [12] 2087 	mov	r3,a
      00327E 08               [12] 2088 	inc	r0
      00327F 86 04            [24] 2089 	mov	ar4,@r0
      003281 C0 07            [24] 2090 	push	ar7
      003283 C0 06            [24] 2091 	push	ar6
      003285 C0 05            [24] 2092 	push	ar5
      003287 74 B0            [12] 2093 	mov	a,#_dump_peek
      003289 C0 E0            [24] 2094 	push	acc
      00328B 74 2E            [12] 2095 	mov	a,#(_dump_peek >> 8)
      00328D C0 E0            [24] 2096 	push	acc
      00328F 8A 82            [24] 2097 	mov	dpl,r2
      003291 8B 83            [24] 2098 	mov	dph,r3
      003293 8C F0            [24] 2099 	mov	b,r4
      003295 12 28 EC         [24] 2100 	lcall	_stack_iter_peek
      003298 AB 82            [24] 2101 	mov	r3,dpl
      00329A AC 83            [24] 2102 	mov	r4,dph
      00329C E5 81            [12] 2103 	mov	a,sp
      00329E 24 FB            [12] 2104 	add	a,#0xfb
      0032A0 F5 81            [12] 2105 	mov	sp,a
      0032A2 EB               [12] 2106 	mov	a,r3
      0032A3 4C               [12] 2107 	orl	a,r4
      0032A4 60 03            [24] 2108 	jz	01029$
      0032A6 02 47 6E         [24] 2109 	ljmp	00217$
      0032A9                       2110 01029$:
      0032A9 7F 11            [12] 2111 	mov	r7,#___str_1
      0032AB 7E 71            [12] 2112 	mov	r6,#(___str_1 >> 8)
      0032AD 7D 80            [12] 2113 	mov	r5,#0x80
                                   2114 ;	calc.c:50: return;
      0032AF                       2115 00316$:
                                   2116 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0032AF 8F 82            [24] 2117 	mov	dpl,r7
      0032B1 8E 83            [24] 2118 	mov	dph,r6
      0032B3 8D F0            [24] 2119 	mov	b,r5
      0032B5 12 58 8D         [24] 2120 	lcall	__gptrget
      0032B8 FC               [12] 2121 	mov	r4,a
      0032B9 70 03            [24] 2122 	jnz	01030$
      0032BB 02 47 6E         [24] 2123 	ljmp	00217$
      0032BE                       2124 01030$:
      0032BE 7B 00            [12] 2125 	mov	r3,#0x00
      0032C0 8C 82            [24] 2126 	mov	dpl,r4
      0032C2 8B 83            [24] 2127 	mov	dph,r3
      0032C4 12 29 C0         [24] 2128 	lcall	_putchar
      0032C7 0F               [12] 2129 	inc	r7
                                   2130 ;	calc.c:156: case 'v':
      0032C8 BF 00 E4         [24] 2131 	cjne	r7,#0x00,00316$
      0032CB 0E               [12] 2132 	inc	r6
      0032CC 80 E1            [24] 2133 	sjmp	00316$
      0032CE                       2134 00109$:
                                   2135 ;	calc.c:157: printstr("\r\n");
      0032CE 7F 0E            [12] 2136 	mov	r7,#___str_0
      0032D0 7E 71            [12] 2137 	mov	r6,#(___str_0 >> 8)
      0032D2 7D 80            [12] 2138 	mov	r5,#0x80
                                   2139 ;	calc.c:50: return;
      0032D4                       2140 00319$:
                                   2141 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0032D4 8F 82            [24] 2142 	mov	dpl,r7
      0032D6 8E 83            [24] 2143 	mov	dph,r6
      0032D8 8D F0            [24] 2144 	mov	b,r5
      0032DA 12 58 8D         [24] 2145 	lcall	__gptrget
      0032DD FC               [12] 2146 	mov	r4,a
      0032DE 60 10            [24] 2147 	jz	00233$
      0032E0 7B 00            [12] 2148 	mov	r3,#0x00
      0032E2 8C 82            [24] 2149 	mov	dpl,r4
      0032E4 8B 83            [24] 2150 	mov	dph,r3
      0032E6 12 29 C0         [24] 2151 	lcall	_putchar
      0032E9 0F               [12] 2152 	inc	r7
                                   2153 ;	calc.c:157: printstr("\r\n");
      0032EA BF 00 E7         [24] 2154 	cjne	r7,#0x00,00319$
      0032ED 0E               [12] 2155 	inc	r6
      0032EE 80 E4            [24] 2156 	sjmp	00319$
      0032F0                       2157 00233$:
                                   2158 ;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      0032F0 E5 08            [12] 2159 	mov	a,_bp
      0032F2 24 0F            [12] 2160 	add	a,#0x0f
      0032F4 FF               [12] 2161 	mov	r7,a
      0032F5 7E 00            [12] 2162 	mov	r6,#0x00
      0032F7 7D 40            [12] 2163 	mov	r5,#0x40
      0032F9 E5 08            [12] 2164 	mov	a,_bp
      0032FB 24 0C            [12] 2165 	add	a,#0x0c
      0032FD F8               [12] 2166 	mov	r0,a
      0032FE 74 09            [12] 2167 	mov	a,#0x09
      003300 26               [12] 2168 	add	a,@r0
      003301 FA               [12] 2169 	mov	r2,a
      003302 E4               [12] 2170 	clr	a
      003303 08               [12] 2171 	inc	r0
      003304 36               [12] 2172 	addc	a,@r0
      003305 FB               [12] 2173 	mov	r3,a
      003306 08               [12] 2174 	inc	r0
      003307 86 04            [24] 2175 	mov	ar4,@r0
      003309 C0 07            [24] 2176 	push	ar7
      00330B C0 06            [24] 2177 	push	ar6
      00330D C0 05            [24] 2178 	push	ar5
      00330F 8A 82            [24] 2179 	mov	dpl,r2
      003311 8B 83            [24] 2180 	mov	dph,r3
      003313 8C F0            [24] 2181 	mov	b,r4
      003315 12 27 7F         [24] 2182 	lcall	_stack_pop
      003318 AB 82            [24] 2183 	mov	r3,dpl
      00331A AC 83            [24] 2184 	mov	r4,dph
      00331C 15 81            [12] 2185 	dec	sp
      00331E 15 81            [12] 2186 	dec	sp
      003320 15 81            [12] 2187 	dec	sp
      003322 EB               [12] 2188 	mov	a,r3
      003323 4C               [12] 2189 	orl	a,r4
      003324 70 25            [24] 2190 	jnz	00111$
      003326 7F 11            [12] 2191 	mov	r7,#___str_1
      003328 7E 71            [12] 2192 	mov	r6,#(___str_1 >> 8)
      00332A 7D 80            [12] 2193 	mov	r5,#0x80
                                   2194 ;	calc.c:50: return;
      00332C                       2195 00322$:
                                   2196 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00332C 8F 82            [24] 2197 	mov	dpl,r7
      00332E 8E 83            [24] 2198 	mov	dph,r6
      003330 8D F0            [24] 2199 	mov	b,r5
      003332 12 58 8D         [24] 2200 	lcall	__gptrget
      003335 FC               [12] 2201 	mov	r4,a
      003336 70 03            [24] 2202 	jnz	01035$
      003338 02 47 6E         [24] 2203 	ljmp	00217$
      00333B                       2204 01035$:
      00333B 7B 00            [12] 2205 	mov	r3,#0x00
      00333D 8C 82            [24] 2206 	mov	dpl,r4
      00333F 8B 83            [24] 2207 	mov	dph,r3
      003341 12 29 C0         [24] 2208 	lcall	_putchar
      003344 0F               [12] 2209 	inc	r7
                                   2210 ;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003345 BF 00 E4         [24] 2211 	cjne	r7,#0x00,00322$
      003348 0E               [12] 2212 	inc	r6
      003349 80 E1            [24] 2213 	sjmp	00322$
      00334B                       2214 00111$:
                                   2215 ;	calc.c:160: printstr("VT ");
      00334B 7F 42            [12] 2216 	mov	r7,#___str_7
      00334D 7E 71            [12] 2217 	mov	r6,#(___str_7 >> 8)
      00334F 7D 80            [12] 2218 	mov	r5,#0x80
                                   2219 ;	calc.c:50: return;
      003351                       2220 00325$:
                                   2221 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003351 8F 82            [24] 2222 	mov	dpl,r7
      003353 8E 83            [24] 2223 	mov	dph,r6
      003355 8D F0            [24] 2224 	mov	b,r5
      003357 12 58 8D         [24] 2225 	lcall	__gptrget
      00335A FC               [12] 2226 	mov	r4,a
      00335B 60 10            [24] 2227 	jz	00237$
      00335D 7B 00            [12] 2228 	mov	r3,#0x00
      00335F 8C 82            [24] 2229 	mov	dpl,r4
      003361 8B 83            [24] 2230 	mov	dph,r3
      003363 12 29 C0         [24] 2231 	lcall	_putchar
      003366 0F               [12] 2232 	inc	r7
                                   2233 ;	calc.c:160: printstr("VT ");
      003367 BF 00 E7         [24] 2234 	cjne	r7,#0x00,00325$
      00336A 0E               [12] 2235 	inc	r6
      00336B 80 E4            [24] 2236 	sjmp	00325$
      00336D                       2237 00237$:
                                   2238 ;	calc.c:161: printf("% 11ld / ", d0);
      00336D E5 08            [12] 2239 	mov	a,_bp
      00336F 24 0F            [12] 2240 	add	a,#0x0f
      003371 F8               [12] 2241 	mov	r0,a
      003372 E6               [12] 2242 	mov	a,@r0
      003373 C0 E0            [24] 2243 	push	acc
      003375 08               [12] 2244 	inc	r0
      003376 E6               [12] 2245 	mov	a,@r0
      003377 C0 E0            [24] 2246 	push	acc
      003379 08               [12] 2247 	inc	r0
      00337A E6               [12] 2248 	mov	a,@r0
      00337B C0 E0            [24] 2249 	push	acc
      00337D 08               [12] 2250 	inc	r0
      00337E E6               [12] 2251 	mov	a,@r0
      00337F C0 E0            [24] 2252 	push	acc
      003381 74 27            [12] 2253 	mov	a,#___str_3
      003383 C0 E0            [24] 2254 	push	acc
      003385 74 71            [12] 2255 	mov	a,#(___str_3 >> 8)
      003387 C0 E0            [24] 2256 	push	acc
      003389 74 80            [12] 2257 	mov	a,#0x80
      00338B C0 E0            [24] 2258 	push	acc
      00338D 12 58 54         [24] 2259 	lcall	_printf
      003390 E5 81            [12] 2260 	mov	a,sp
      003392 24 F9            [12] 2261 	add	a,#0xf9
      003394 F5 81            [12] 2262 	mov	sp,a
                                   2263 ;	calc.c:162: printf("%08lx / ", d0);
      003396 E5 08            [12] 2264 	mov	a,_bp
      003398 24 0F            [12] 2265 	add	a,#0x0f
      00339A F8               [12] 2266 	mov	r0,a
      00339B E6               [12] 2267 	mov	a,@r0
      00339C C0 E0            [24] 2268 	push	acc
      00339E 08               [12] 2269 	inc	r0
      00339F E6               [12] 2270 	mov	a,@r0
      0033A0 C0 E0            [24] 2271 	push	acc
      0033A2 08               [12] 2272 	inc	r0
      0033A3 E6               [12] 2273 	mov	a,@r0
      0033A4 C0 E0            [24] 2274 	push	acc
      0033A6 08               [12] 2275 	inc	r0
      0033A7 E6               [12] 2276 	mov	a,@r0
      0033A8 C0 E0            [24] 2277 	push	acc
      0033AA 74 31            [12] 2278 	mov	a,#___str_4
      0033AC C0 E0            [24] 2279 	push	acc
      0033AE 74 71            [12] 2280 	mov	a,#(___str_4 >> 8)
      0033B0 C0 E0            [24] 2281 	push	acc
      0033B2 74 80            [12] 2282 	mov	a,#0x80
      0033B4 C0 E0            [24] 2283 	push	acc
      0033B6 12 58 54         [24] 2284 	lcall	_printf
      0033B9 E5 81            [12] 2285 	mov	a,sp
      0033BB 24 F9            [12] 2286 	add	a,#0xf9
      0033BD F5 81            [12] 2287 	mov	sp,a
                                   2288 ;	calc.c:163: printbin(d0);
      0033BF E5 08            [12] 2289 	mov	a,_bp
      0033C1 24 0F            [12] 2290 	add	a,#0x0f
      0033C3 F8               [12] 2291 	mov	r0,a
      0033C4 86 07            [24] 2292 	mov	ar7,@r0
      0033C6 08               [12] 2293 	inc	r0
      0033C7 86 06            [24] 2294 	mov	ar6,@r0
      0033C9 08               [12] 2295 	inc	r0
      0033CA 86 05            [24] 2296 	mov	ar5,@r0
      0033CC 08               [12] 2297 	inc	r0
      0033CD 86 04            [24] 2298 	mov	ar4,@r0
      0033CF 8C 02            [24] 2299 	mov	ar2,r4
                                   2300 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033D1 E5 08            [12] 2301 	mov	a,_bp
      0033D3 24 1B            [12] 2302 	add	a,#0x1b
      0033D5 F8               [12] 2303 	mov	r0,a
      0033D6 E4               [12] 2304 	clr	a
      0033D7 F6               [12] 2305 	mov	@r0,a
      0033D8 08               [12] 2306 	inc	r0
      0033D9 F6               [12] 2307 	mov	@r0,a
      0033DA 08               [12] 2308 	inc	r0
      0033DB F6               [12] 2309 	mov	@r0,a
      0033DC 08               [12] 2310 	inc	r0
      0033DD 76 80            [12] 2311 	mov	@r0,#0x80
      0033DF                       2312 00327$:
                                   2313 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0033DF E5 08            [12] 2314 	mov	a,_bp
      0033E1 24 04            [12] 2315 	add	a,#0x04
      0033E3 F8               [12] 2316 	mov	r0,a
      0033E4 A6 07            [24] 2317 	mov	@r0,ar7
      0033E6 08               [12] 2318 	inc	r0
      0033E7 A6 06            [24] 2319 	mov	@r0,ar6
      0033E9 08               [12] 2320 	inc	r0
      0033EA A6 05            [24] 2321 	mov	@r0,ar5
      0033EC 08               [12] 2322 	inc	r0
      0033ED A6 02            [24] 2323 	mov	@r0,ar2
      0033EF E5 08            [12] 2324 	mov	a,_bp
      0033F1 24 04            [12] 2325 	add	a,#0x04
      0033F3 F8               [12] 2326 	mov	r0,a
      0033F4 E5 08            [12] 2327 	mov	a,_bp
      0033F6 24 1B            [12] 2328 	add	a,#0x1b
      0033F8 F9               [12] 2329 	mov	r1,a
      0033F9 E7               [12] 2330 	mov	a,@r1
      0033FA 56               [12] 2331 	anl	a,@r0
      0033FB F6               [12] 2332 	mov	@r0,a
      0033FC 09               [12] 2333 	inc	r1
      0033FD E7               [12] 2334 	mov	a,@r1
      0033FE 08               [12] 2335 	inc	r0
      0033FF 56               [12] 2336 	anl	a,@r0
      003400 F6               [12] 2337 	mov	@r0,a
      003401 09               [12] 2338 	inc	r1
      003402 E7               [12] 2339 	mov	a,@r1
      003403 08               [12] 2340 	inc	r0
      003404 56               [12] 2341 	anl	a,@r0
      003405 F6               [12] 2342 	mov	@r0,a
      003406 09               [12] 2343 	inc	r1
      003407 E7               [12] 2344 	mov	a,@r1
      003408 08               [12] 2345 	inc	r0
      003409 56               [12] 2346 	anl	a,@r0
      00340A F6               [12] 2347 	mov	@r0,a
      00340B E5 08            [12] 2348 	mov	a,_bp
      00340D 24 04            [12] 2349 	add	a,#0x04
      00340F F8               [12] 2350 	mov	r0,a
      003410 E6               [12] 2351 	mov	a,@r0
      003411 08               [12] 2352 	inc	r0
      003412 46               [12] 2353 	orl	a,@r0
      003413 08               [12] 2354 	inc	r0
      003414 46               [12] 2355 	orl	a,@r0
      003415 08               [12] 2356 	inc	r0
      003416 46               [12] 2357 	orl	a,@r0
      003417 60 06            [24] 2358 	jz	00420$
      003419 7B 31            [12] 2359 	mov	r3,#0x31
      00341B 7C 00            [12] 2360 	mov	r4,#0x00
      00341D 80 04            [24] 2361 	sjmp	00421$
      00341F                       2362 00420$:
      00341F 7B 30            [12] 2363 	mov	r3,#0x30
      003421 7C 00            [12] 2364 	mov	r4,#0x00
      003423                       2365 00421$:
      003423 8B 82            [24] 2366 	mov	dpl,r3
      003425 8C 83            [24] 2367 	mov	dph,r4
      003427 12 29 C0         [24] 2368 	lcall	_putchar
                                   2369 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      00342A E5 08            [12] 2370 	mov	a,_bp
      00342C 24 1B            [12] 2371 	add	a,#0x1b
      00342E F8               [12] 2372 	mov	r0,a
      00342F 08               [12] 2373 	inc	r0
      003430 08               [12] 2374 	inc	r0
      003431 08               [12] 2375 	inc	r0
      003432 E6               [12] 2376 	mov	a,@r0
      003433 C3               [12] 2377 	clr	c
      003434 13               [12] 2378 	rrc	a
      003435 F6               [12] 2379 	mov	@r0,a
      003436 18               [12] 2380 	dec	r0
      003437 E6               [12] 2381 	mov	a,@r0
      003438 13               [12] 2382 	rrc	a
      003439 F6               [12] 2383 	mov	@r0,a
      00343A 18               [12] 2384 	dec	r0
      00343B E6               [12] 2385 	mov	a,@r0
      00343C 13               [12] 2386 	rrc	a
      00343D F6               [12] 2387 	mov	@r0,a
      00343E 18               [12] 2388 	dec	r0
      00343F E6               [12] 2389 	mov	a,@r0
      003440 13               [12] 2390 	rrc	a
      003441 F6               [12] 2391 	mov	@r0,a
      003442 E5 08            [12] 2392 	mov	a,_bp
      003444 24 1B            [12] 2393 	add	a,#0x1b
      003446 F8               [12] 2394 	mov	r0,a
      003447 E6               [12] 2395 	mov	a,@r0
      003448 08               [12] 2396 	inc	r0
      003449 46               [12] 2397 	orl	a,@r0
      00344A 08               [12] 2398 	inc	r0
      00344B 46               [12] 2399 	orl	a,@r0
      00344C 08               [12] 2400 	inc	r0
      00344D 46               [12] 2401 	orl	a,@r0
      00344E 70 8F            [24] 2402 	jnz	00327$
                                   2403 ;	calc.c:164: printstr("\r\n");
      003450 7F 0E            [12] 2404 	mov	r7,#___str_0
      003452 7E 71            [12] 2405 	mov	r6,#(___str_0 >> 8)
      003454 7D 80            [12] 2406 	mov	r5,#0x80
                                   2407 ;	calc.c:50: return;
      003456                       2408 00330$:
                                   2409 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003456 8F 82            [24] 2410 	mov	dpl,r7
      003458 8E 83            [24] 2411 	mov	dph,r6
      00345A 8D F0            [24] 2412 	mov	b,r5
      00345C 12 58 8D         [24] 2413 	lcall	__gptrget
      00345F FC               [12] 2414 	mov	r4,a
      003460 70 03            [24] 2415 	jnz	01041$
      003462 02 47 6E         [24] 2416 	ljmp	00217$
      003465                       2417 01041$:
      003465 7B 00            [12] 2418 	mov	r3,#0x00
      003467 8C 82            [24] 2419 	mov	dpl,r4
      003469 8B 83            [24] 2420 	mov	dph,r3
      00346B 12 29 C0         [24] 2421 	lcall	_putchar
      00346E 0F               [12] 2422 	inc	r7
                                   2423 ;	calc.c:167: case 'V':
      00346F BF 00 E4         [24] 2424 	cjne	r7,#0x00,00330$
      003472 0E               [12] 2425 	inc	r6
      003473 80 E1            [24] 2426 	sjmp	00330$
      003475                       2427 00113$:
                                   2428 ;	calc.c:168: printstr("\r\n");
      003475 7F 0E            [12] 2429 	mov	r7,#___str_0
      003477 7E 71            [12] 2430 	mov	r6,#(___str_0 >> 8)
      003479 7D 80            [12] 2431 	mov	r5,#0x80
                                   2432 ;	calc.c:50: return;
      00347B                       2433 00333$:
                                   2434 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00347B 8F 82            [24] 2435 	mov	dpl,r7
      00347D 8E 83            [24] 2436 	mov	dph,r6
      00347F 8D F0            [24] 2437 	mov	b,r5
      003481 12 58 8D         [24] 2438 	lcall	__gptrget
      003484 FC               [12] 2439 	mov	r4,a
      003485 60 10            [24] 2440 	jz	00243$
      003487 7B 00            [12] 2441 	mov	r3,#0x00
      003489 8C 82            [24] 2442 	mov	dpl,r4
      00348B 8B 83            [24] 2443 	mov	dph,r3
      00348D 12 29 C0         [24] 2444 	lcall	_putchar
      003490 0F               [12] 2445 	inc	r7
                                   2446 ;	calc.c:168: printstr("\r\n");
      003491 BF 00 E7         [24] 2447 	cjne	r7,#0x00,00333$
      003494 0E               [12] 2448 	inc	r6
      003495 80 E4            [24] 2449 	sjmp	00333$
      003497                       2450 00243$:
                                   2451 ;	calc.c:169: (void)dump_pop(_ctx, delta);
      003497 E5 08            [12] 2452 	mov	a,_bp
      003499 24 FB            [12] 2453 	add	a,#0xfb
      00349B F8               [12] 2454 	mov	r0,a
      00349C E6               [12] 2455 	mov	a,@r0
      00349D C0 E0            [24] 2456 	push	acc
      00349F 08               [12] 2457 	inc	r0
      0034A0 E6               [12] 2458 	mov	a,@r0
      0034A1 C0 E0            [24] 2459 	push	acc
      0034A3 08               [12] 2460 	inc	r0
      0034A4 E6               [12] 2461 	mov	a,@r0
      0034A5 C0 E0            [24] 2462 	push	acc
      0034A7 A8 08            [24] 2463 	mov	r0,_bp
      0034A9 08               [12] 2464 	inc	r0
      0034AA 86 82            [24] 2465 	mov	dpl,@r0
      0034AC 08               [12] 2466 	inc	r0
      0034AD 86 83            [24] 2467 	mov	dph,@r0
      0034AF 08               [12] 2468 	inc	r0
      0034B0 86 F0            [24] 2469 	mov	b,@r0
      0034B2 12 2B FC         [24] 2470 	lcall	_dump_pop
      0034B5 15 81            [12] 2471 	dec	sp
      0034B7 15 81            [12] 2472 	dec	sp
      0034B9 15 81            [12] 2473 	dec	sp
                                   2474 ;	calc.c:170: break;
      0034BB 02 47 6E         [24] 2475 	ljmp	00217$
                                   2476 ;	calc.c:171: case 'x':
      0034BE                       2477 00114$:
                                   2478 ;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0034BE E5 08            [12] 2479 	mov	a,_bp
      0034C0 24 0F            [12] 2480 	add	a,#0x0f
      0034C2 FF               [12] 2481 	mov	r7,a
      0034C3 7E 00            [12] 2482 	mov	r6,#0x00
      0034C5 7D 40            [12] 2483 	mov	r5,#0x40
      0034C7 E5 08            [12] 2484 	mov	a,_bp
      0034C9 24 0C            [12] 2485 	add	a,#0x0c
      0034CB F8               [12] 2486 	mov	r0,a
      0034CC 74 09            [12] 2487 	mov	a,#0x09
      0034CE 26               [12] 2488 	add	a,@r0
      0034CF FA               [12] 2489 	mov	r2,a
      0034D0 E4               [12] 2490 	clr	a
      0034D1 08               [12] 2491 	inc	r0
      0034D2 36               [12] 2492 	addc	a,@r0
      0034D3 FB               [12] 2493 	mov	r3,a
      0034D4 08               [12] 2494 	inc	r0
      0034D5 86 04            [24] 2495 	mov	ar4,@r0
      0034D7 C0 07            [24] 2496 	push	ar7
      0034D9 C0 06            [24] 2497 	push	ar6
      0034DB C0 05            [24] 2498 	push	ar5
      0034DD 8A 82            [24] 2499 	mov	dpl,r2
      0034DF 8B 83            [24] 2500 	mov	dph,r3
      0034E1 8C F0            [24] 2501 	mov	b,r4
      0034E3 12 27 7F         [24] 2502 	lcall	_stack_pop
      0034E6 AB 82            [24] 2503 	mov	r3,dpl
      0034E8 AC 83            [24] 2504 	mov	r4,dph
      0034EA 15 81            [12] 2505 	dec	sp
      0034EC 15 81            [12] 2506 	dec	sp
      0034EE 15 81            [12] 2507 	dec	sp
      0034F0 EB               [12] 2508 	mov	a,r3
      0034F1 4C               [12] 2509 	orl	a,r4
      0034F2 70 25            [24] 2510 	jnz	00119$
      0034F4 7F 46            [12] 2511 	mov	r7,#___str_8
      0034F6 7E 71            [12] 2512 	mov	r6,#(___str_8 >> 8)
      0034F8 7D 80            [12] 2513 	mov	r5,#0x80
                                   2514 ;	calc.c:50: return;
      0034FA                       2515 00336$:
                                   2516 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0034FA 8F 82            [24] 2517 	mov	dpl,r7
      0034FC 8E 83            [24] 2518 	mov	dph,r6
      0034FE 8D F0            [24] 2519 	mov	b,r5
      003500 12 58 8D         [24] 2520 	lcall	__gptrget
      003503 FC               [12] 2521 	mov	r4,a
      003504 70 03            [24] 2522 	jnz	01046$
      003506 02 47 6E         [24] 2523 	ljmp	00217$
      003509                       2524 01046$:
      003509 7B 00            [12] 2525 	mov	r3,#0x00
      00350B 8C 82            [24] 2526 	mov	dpl,r4
      00350D 8B 83            [24] 2527 	mov	dph,r3
      00350F 12 29 C0         [24] 2528 	lcall	_putchar
      003512 0F               [12] 2529 	inc	r7
                                   2530 ;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003513 BF 00 E4         [24] 2531 	cjne	r7,#0x00,00336$
      003516 0E               [12] 2532 	inc	r6
      003517 80 E1            [24] 2533 	sjmp	00336$
      003519                       2534 00119$:
                                   2535 ;	calc.c:173: else if (!stack_pop(&ctx->s, &d1)) {
      003519 E5 08            [12] 2536 	mov	a,_bp
      00351B 24 13            [12] 2537 	add	a,#0x13
      00351D FF               [12] 2538 	mov	r7,a
      00351E 7E 00            [12] 2539 	mov	r6,#0x00
      003520 7D 40            [12] 2540 	mov	r5,#0x40
      003522 E5 08            [12] 2541 	mov	a,_bp
      003524 24 0C            [12] 2542 	add	a,#0x0c
      003526 F8               [12] 2543 	mov	r0,a
      003527 74 09            [12] 2544 	mov	a,#0x09
      003529 26               [12] 2545 	add	a,@r0
      00352A FA               [12] 2546 	mov	r2,a
      00352B E4               [12] 2547 	clr	a
      00352C 08               [12] 2548 	inc	r0
      00352D 36               [12] 2549 	addc	a,@r0
      00352E FB               [12] 2550 	mov	r3,a
      00352F 08               [12] 2551 	inc	r0
      003530 86 04            [24] 2552 	mov	ar4,@r0
      003532 C0 07            [24] 2553 	push	ar7
      003534 C0 06            [24] 2554 	push	ar6
      003536 C0 05            [24] 2555 	push	ar5
      003538 8A 82            [24] 2556 	mov	dpl,r2
      00353A 8B 83            [24] 2557 	mov	dph,r3
      00353C 8C F0            [24] 2558 	mov	b,r4
      00353E 12 27 7F         [24] 2559 	lcall	_stack_pop
      003541 AB 82            [24] 2560 	mov	r3,dpl
      003543 AC 83            [24] 2561 	mov	r4,dph
      003545 15 81            [12] 2562 	dec	sp
      003547 15 81            [12] 2563 	dec	sp
      003549 15 81            [12] 2564 	dec	sp
      00354B EB               [12] 2565 	mov	a,r3
      00354C 4C               [12] 2566 	orl	a,r4
      00354D 70 58            [24] 2567 	jnz	00116$
                                   2568 ;	calc.c:174: (void)stack_push(&ctx->s, d0);
      00354F E5 08            [12] 2569 	mov	a,_bp
      003551 24 0C            [12] 2570 	add	a,#0x0c
      003553 F8               [12] 2571 	mov	r0,a
      003554 74 09            [12] 2572 	mov	a,#0x09
      003556 26               [12] 2573 	add	a,@r0
      003557 FA               [12] 2574 	mov	r2,a
      003558 E4               [12] 2575 	clr	a
      003559 08               [12] 2576 	inc	r0
      00355A 36               [12] 2577 	addc	a,@r0
      00355B FB               [12] 2578 	mov	r3,a
      00355C 08               [12] 2579 	inc	r0
      00355D 86 04            [24] 2580 	mov	ar4,@r0
      00355F E5 08            [12] 2581 	mov	a,_bp
      003561 24 0F            [12] 2582 	add	a,#0x0f
      003563 F8               [12] 2583 	mov	r0,a
      003564 E6               [12] 2584 	mov	a,@r0
      003565 C0 E0            [24] 2585 	push	acc
      003567 08               [12] 2586 	inc	r0
      003568 E6               [12] 2587 	mov	a,@r0
      003569 C0 E0            [24] 2588 	push	acc
      00356B 08               [12] 2589 	inc	r0
      00356C E6               [12] 2590 	mov	a,@r0
      00356D C0 E0            [24] 2591 	push	acc
      00356F 08               [12] 2592 	inc	r0
      003570 E6               [12] 2593 	mov	a,@r0
      003571 C0 E0            [24] 2594 	push	acc
      003573 8A 82            [24] 2595 	mov	dpl,r2
      003575 8B 83            [24] 2596 	mov	dph,r3
      003577 8C F0            [24] 2597 	mov	b,r4
      003579 12 26 B5         [24] 2598 	lcall	_stack_push
      00357C E5 81            [12] 2599 	mov	a,sp
      00357E 24 FC            [12] 2600 	add	a,#0xfc
      003580 F5 81            [12] 2601 	mov	sp,a
                                   2602 ;	calc.c:175: printstr("\r\nstack underflow\r\n");
      003582 7F 46            [12] 2603 	mov	r7,#___str_8
      003584 7E 71            [12] 2604 	mov	r6,#(___str_8 >> 8)
      003586 7D 80            [12] 2605 	mov	r5,#0x80
                                   2606 ;	calc.c:50: return;
      003588                       2607 00339$:
                                   2608 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003588 8F 82            [24] 2609 	mov	dpl,r7
      00358A 8E 83            [24] 2610 	mov	dph,r6
      00358C 8D F0            [24] 2611 	mov	b,r5
      00358E 12 58 8D         [24] 2612 	lcall	__gptrget
      003591 FC               [12] 2613 	mov	r4,a
      003592 70 03            [24] 2614 	jnz	01049$
      003594 02 47 6E         [24] 2615 	ljmp	00217$
      003597                       2616 01049$:
      003597 7B 00            [12] 2617 	mov	r3,#0x00
      003599 8C 82            [24] 2618 	mov	dpl,r4
      00359B 8B 83            [24] 2619 	mov	dph,r3
      00359D 12 29 C0         [24] 2620 	lcall	_putchar
      0035A0 0F               [12] 2621 	inc	r7
                                   2622 ;	calc.c:175: printstr("\r\nstack underflow\r\n");
      0035A1 BF 00 E4         [24] 2623 	cjne	r7,#0x00,00339$
      0035A4 0E               [12] 2624 	inc	r6
      0035A5 80 E1            [24] 2625 	sjmp	00339$
      0035A7                       2626 00116$:
                                   2627 ;	calc.c:177: (void)stack_push(&ctx->s, d0);
      0035A7 E5 08            [12] 2628 	mov	a,_bp
      0035A9 24 0C            [12] 2629 	add	a,#0x0c
      0035AB F8               [12] 2630 	mov	r0,a
      0035AC 74 09            [12] 2631 	mov	a,#0x09
      0035AE 26               [12] 2632 	add	a,@r0
      0035AF FA               [12] 2633 	mov	r2,a
      0035B0 E4               [12] 2634 	clr	a
      0035B1 08               [12] 2635 	inc	r0
      0035B2 36               [12] 2636 	addc	a,@r0
      0035B3 FB               [12] 2637 	mov	r3,a
      0035B4 08               [12] 2638 	inc	r0
      0035B5 86 04            [24] 2639 	mov	ar4,@r0
      0035B7 E5 08            [12] 2640 	mov	a,_bp
      0035B9 24 0F            [12] 2641 	add	a,#0x0f
      0035BB F8               [12] 2642 	mov	r0,a
      0035BC E6               [12] 2643 	mov	a,@r0
      0035BD C0 E0            [24] 2644 	push	acc
      0035BF 08               [12] 2645 	inc	r0
      0035C0 E6               [12] 2646 	mov	a,@r0
      0035C1 C0 E0            [24] 2647 	push	acc
      0035C3 08               [12] 2648 	inc	r0
      0035C4 E6               [12] 2649 	mov	a,@r0
      0035C5 C0 E0            [24] 2650 	push	acc
      0035C7 08               [12] 2651 	inc	r0
      0035C8 E6               [12] 2652 	mov	a,@r0
      0035C9 C0 E0            [24] 2653 	push	acc
      0035CB 8A 82            [24] 2654 	mov	dpl,r2
      0035CD 8B 83            [24] 2655 	mov	dph,r3
      0035CF 8C F0            [24] 2656 	mov	b,r4
      0035D1 12 26 B5         [24] 2657 	lcall	_stack_push
      0035D4 E5 81            [12] 2658 	mov	a,sp
      0035D6 24 FC            [12] 2659 	add	a,#0xfc
      0035D8 F5 81            [12] 2660 	mov	sp,a
                                   2661 ;	calc.c:178: (void)stack_push(&ctx->s, d1);
      0035DA E5 08            [12] 2662 	mov	a,_bp
      0035DC 24 0C            [12] 2663 	add	a,#0x0c
      0035DE F8               [12] 2664 	mov	r0,a
      0035DF 74 09            [12] 2665 	mov	a,#0x09
      0035E1 26               [12] 2666 	add	a,@r0
      0035E2 FA               [12] 2667 	mov	r2,a
      0035E3 E4               [12] 2668 	clr	a
      0035E4 08               [12] 2669 	inc	r0
      0035E5 36               [12] 2670 	addc	a,@r0
      0035E6 FB               [12] 2671 	mov	r3,a
      0035E7 08               [12] 2672 	inc	r0
      0035E8 86 04            [24] 2673 	mov	ar4,@r0
      0035EA E5 08            [12] 2674 	mov	a,_bp
      0035EC 24 13            [12] 2675 	add	a,#0x13
      0035EE F8               [12] 2676 	mov	r0,a
      0035EF E6               [12] 2677 	mov	a,@r0
      0035F0 C0 E0            [24] 2678 	push	acc
      0035F2 08               [12] 2679 	inc	r0
      0035F3 E6               [12] 2680 	mov	a,@r0
      0035F4 C0 E0            [24] 2681 	push	acc
      0035F6 08               [12] 2682 	inc	r0
      0035F7 E6               [12] 2683 	mov	a,@r0
      0035F8 C0 E0            [24] 2684 	push	acc
      0035FA 08               [12] 2685 	inc	r0
      0035FB E6               [12] 2686 	mov	a,@r0
      0035FC C0 E0            [24] 2687 	push	acc
      0035FE 8A 82            [24] 2688 	mov	dpl,r2
      003600 8B 83            [24] 2689 	mov	dph,r3
      003602 8C F0            [24] 2690 	mov	b,r4
      003604 12 26 B5         [24] 2691 	lcall	_stack_push
      003607 E5 81            [12] 2692 	mov	a,sp
      003609 24 FC            [12] 2693 	add	a,#0xfc
      00360B F5 81            [12] 2694 	mov	sp,a
                                   2695 ;	calc.c:180: break;
      00360D 02 47 6E         [24] 2696 	ljmp	00217$
                                   2697 ;	calc.c:181: case '+':
      003610                       2698 00121$:
                                   2699 ;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003610 E5 08            [12] 2700 	mov	a,_bp
      003612 24 0F            [12] 2701 	add	a,#0x0f
      003614 FF               [12] 2702 	mov	r7,a
      003615 7E 00            [12] 2703 	mov	r6,#0x00
      003617 7D 40            [12] 2704 	mov	r5,#0x40
      003619 E5 08            [12] 2705 	mov	a,_bp
      00361B 24 0C            [12] 2706 	add	a,#0x0c
      00361D F8               [12] 2707 	mov	r0,a
      00361E 74 09            [12] 2708 	mov	a,#0x09
      003620 26               [12] 2709 	add	a,@r0
      003621 FA               [12] 2710 	mov	r2,a
      003622 E4               [12] 2711 	clr	a
      003623 08               [12] 2712 	inc	r0
      003624 36               [12] 2713 	addc	a,@r0
      003625 FB               [12] 2714 	mov	r3,a
      003626 08               [12] 2715 	inc	r0
      003627 86 04            [24] 2716 	mov	ar4,@r0
      003629 C0 07            [24] 2717 	push	ar7
      00362B C0 06            [24] 2718 	push	ar6
      00362D C0 05            [24] 2719 	push	ar5
      00362F 8A 82            [24] 2720 	mov	dpl,r2
      003631 8B 83            [24] 2721 	mov	dph,r3
      003633 8C F0            [24] 2722 	mov	b,r4
      003635 12 27 7F         [24] 2723 	lcall	_stack_pop
      003638 AB 82            [24] 2724 	mov	r3,dpl
      00363A AC 83            [24] 2725 	mov	r4,dph
      00363C 15 81            [12] 2726 	dec	sp
      00363E 15 81            [12] 2727 	dec	sp
      003640 15 81            [12] 2728 	dec	sp
      003642 EB               [12] 2729 	mov	a,r3
      003643 4C               [12] 2730 	orl	a,r4
      003644 70 25            [24] 2731 	jnz	00126$
      003646 7F 46            [12] 2732 	mov	r7,#___str_8
      003648 7E 71            [12] 2733 	mov	r6,#(___str_8 >> 8)
      00364A 7D 80            [12] 2734 	mov	r5,#0x80
                                   2735 ;	calc.c:50: return;
      00364C                       2736 00342$:
                                   2737 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00364C 8F 82            [24] 2738 	mov	dpl,r7
      00364E 8E 83            [24] 2739 	mov	dph,r6
      003650 8D F0            [24] 2740 	mov	b,r5
      003652 12 58 8D         [24] 2741 	lcall	__gptrget
      003655 FC               [12] 2742 	mov	r4,a
      003656 70 03            [24] 2743 	jnz	01052$
      003658 02 47 6E         [24] 2744 	ljmp	00217$
      00365B                       2745 01052$:
      00365B 7B 00            [12] 2746 	mov	r3,#0x00
      00365D 8C 82            [24] 2747 	mov	dpl,r4
      00365F 8B 83            [24] 2748 	mov	dph,r3
      003661 12 29 C0         [24] 2749 	lcall	_putchar
      003664 0F               [12] 2750 	inc	r7
                                   2751 ;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003665 BF 00 E4         [24] 2752 	cjne	r7,#0x00,00342$
      003668 0E               [12] 2753 	inc	r6
      003669 80 E1            [24] 2754 	sjmp	00342$
      00366B                       2755 00126$:
                                   2756 ;	calc.c:183: else if (!stack_pop(&ctx->s, &d1)) {
      00366B E5 08            [12] 2757 	mov	a,_bp
      00366D 24 13            [12] 2758 	add	a,#0x13
      00366F FF               [12] 2759 	mov	r7,a
      003670 7E 00            [12] 2760 	mov	r6,#0x00
      003672 7D 40            [12] 2761 	mov	r5,#0x40
      003674 E5 08            [12] 2762 	mov	a,_bp
      003676 24 0C            [12] 2763 	add	a,#0x0c
      003678 F8               [12] 2764 	mov	r0,a
      003679 74 09            [12] 2765 	mov	a,#0x09
      00367B 26               [12] 2766 	add	a,@r0
      00367C FA               [12] 2767 	mov	r2,a
      00367D E4               [12] 2768 	clr	a
      00367E 08               [12] 2769 	inc	r0
      00367F 36               [12] 2770 	addc	a,@r0
      003680 FB               [12] 2771 	mov	r3,a
      003681 08               [12] 2772 	inc	r0
      003682 86 04            [24] 2773 	mov	ar4,@r0
      003684 C0 07            [24] 2774 	push	ar7
      003686 C0 06            [24] 2775 	push	ar6
      003688 C0 05            [24] 2776 	push	ar5
      00368A 8A 82            [24] 2777 	mov	dpl,r2
      00368C 8B 83            [24] 2778 	mov	dph,r3
      00368E 8C F0            [24] 2779 	mov	b,r4
      003690 12 27 7F         [24] 2780 	lcall	_stack_pop
      003693 AB 82            [24] 2781 	mov	r3,dpl
      003695 AC 83            [24] 2782 	mov	r4,dph
      003697 15 81            [12] 2783 	dec	sp
      003699 15 81            [12] 2784 	dec	sp
      00369B 15 81            [12] 2785 	dec	sp
      00369D EB               [12] 2786 	mov	a,r3
      00369E 4C               [12] 2787 	orl	a,r4
      00369F 70 58            [24] 2788 	jnz	00123$
                                   2789 ;	calc.c:184: (void)stack_push(&ctx->s, d0);
      0036A1 E5 08            [12] 2790 	mov	a,_bp
      0036A3 24 0C            [12] 2791 	add	a,#0x0c
      0036A5 F8               [12] 2792 	mov	r0,a
      0036A6 74 09            [12] 2793 	mov	a,#0x09
      0036A8 26               [12] 2794 	add	a,@r0
      0036A9 FA               [12] 2795 	mov	r2,a
      0036AA E4               [12] 2796 	clr	a
      0036AB 08               [12] 2797 	inc	r0
      0036AC 36               [12] 2798 	addc	a,@r0
      0036AD FB               [12] 2799 	mov	r3,a
      0036AE 08               [12] 2800 	inc	r0
      0036AF 86 04            [24] 2801 	mov	ar4,@r0
      0036B1 E5 08            [12] 2802 	mov	a,_bp
      0036B3 24 0F            [12] 2803 	add	a,#0x0f
      0036B5 F8               [12] 2804 	mov	r0,a
      0036B6 E6               [12] 2805 	mov	a,@r0
      0036B7 C0 E0            [24] 2806 	push	acc
      0036B9 08               [12] 2807 	inc	r0
      0036BA E6               [12] 2808 	mov	a,@r0
      0036BB C0 E0            [24] 2809 	push	acc
      0036BD 08               [12] 2810 	inc	r0
      0036BE E6               [12] 2811 	mov	a,@r0
      0036BF C0 E0            [24] 2812 	push	acc
      0036C1 08               [12] 2813 	inc	r0
      0036C2 E6               [12] 2814 	mov	a,@r0
      0036C3 C0 E0            [24] 2815 	push	acc
      0036C5 8A 82            [24] 2816 	mov	dpl,r2
      0036C7 8B 83            [24] 2817 	mov	dph,r3
      0036C9 8C F0            [24] 2818 	mov	b,r4
      0036CB 12 26 B5         [24] 2819 	lcall	_stack_push
      0036CE E5 81            [12] 2820 	mov	a,sp
      0036D0 24 FC            [12] 2821 	add	a,#0xfc
      0036D2 F5 81            [12] 2822 	mov	sp,a
                                   2823 ;	calc.c:185: printstr("\r\nstack underflow\r\n");
      0036D4 7F 46            [12] 2824 	mov	r7,#___str_8
      0036D6 7E 71            [12] 2825 	mov	r6,#(___str_8 >> 8)
      0036D8 7D 80            [12] 2826 	mov	r5,#0x80
                                   2827 ;	calc.c:50: return;
      0036DA                       2828 00345$:
                                   2829 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0036DA 8F 82            [24] 2830 	mov	dpl,r7
      0036DC 8E 83            [24] 2831 	mov	dph,r6
      0036DE 8D F0            [24] 2832 	mov	b,r5
      0036E0 12 58 8D         [24] 2833 	lcall	__gptrget
      0036E3 FC               [12] 2834 	mov	r4,a
      0036E4 70 03            [24] 2835 	jnz	01055$
      0036E6 02 47 6E         [24] 2836 	ljmp	00217$
      0036E9                       2837 01055$:
      0036E9 7B 00            [12] 2838 	mov	r3,#0x00
      0036EB 8C 82            [24] 2839 	mov	dpl,r4
      0036ED 8B 83            [24] 2840 	mov	dph,r3
      0036EF 12 29 C0         [24] 2841 	lcall	_putchar
      0036F2 0F               [12] 2842 	inc	r7
                                   2843 ;	calc.c:185: printstr("\r\nstack underflow\r\n");
      0036F3 BF 00 E4         [24] 2844 	cjne	r7,#0x00,00345$
      0036F6 0E               [12] 2845 	inc	r6
      0036F7 80 E1            [24] 2846 	sjmp	00345$
      0036F9                       2847 00123$:
                                   2848 ;	calc.c:187: d1 += d0;
      0036F9 E5 08            [12] 2849 	mov	a,_bp
      0036FB 24 13            [12] 2850 	add	a,#0x13
      0036FD F8               [12] 2851 	mov	r0,a
      0036FE E5 08            [12] 2852 	mov	a,_bp
      003700 24 0F            [12] 2853 	add	a,#0x0f
      003702 F9               [12] 2854 	mov	r1,a
      003703 E7               [12] 2855 	mov	a,@r1
      003704 26               [12] 2856 	add	a,@r0
      003705 F6               [12] 2857 	mov	@r0,a
      003706 09               [12] 2858 	inc	r1
      003707 E7               [12] 2859 	mov	a,@r1
      003708 08               [12] 2860 	inc	r0
      003709 36               [12] 2861 	addc	a,@r0
      00370A F6               [12] 2862 	mov	@r0,a
      00370B 09               [12] 2863 	inc	r1
      00370C E7               [12] 2864 	mov	a,@r1
      00370D 08               [12] 2865 	inc	r0
      00370E 36               [12] 2866 	addc	a,@r0
      00370F F6               [12] 2867 	mov	@r0,a
      003710 09               [12] 2868 	inc	r1
      003711 E7               [12] 2869 	mov	a,@r1
      003712 08               [12] 2870 	inc	r0
      003713 36               [12] 2871 	addc	a,@r0
      003714 F6               [12] 2872 	mov	@r0,a
                                   2873 ;	calc.c:188: (void)stack_push(&ctx->s, d1);
      003715 E5 08            [12] 2874 	mov	a,_bp
      003717 24 0C            [12] 2875 	add	a,#0x0c
      003719 F8               [12] 2876 	mov	r0,a
      00371A 74 09            [12] 2877 	mov	a,#0x09
      00371C 26               [12] 2878 	add	a,@r0
      00371D FA               [12] 2879 	mov	r2,a
      00371E E4               [12] 2880 	clr	a
      00371F 08               [12] 2881 	inc	r0
      003720 36               [12] 2882 	addc	a,@r0
      003721 FB               [12] 2883 	mov	r3,a
      003722 08               [12] 2884 	inc	r0
      003723 86 04            [24] 2885 	mov	ar4,@r0
      003725 E5 08            [12] 2886 	mov	a,_bp
      003727 24 13            [12] 2887 	add	a,#0x13
      003729 F8               [12] 2888 	mov	r0,a
      00372A E6               [12] 2889 	mov	a,@r0
      00372B C0 E0            [24] 2890 	push	acc
      00372D 08               [12] 2891 	inc	r0
      00372E E6               [12] 2892 	mov	a,@r0
      00372F C0 E0            [24] 2893 	push	acc
      003731 08               [12] 2894 	inc	r0
      003732 E6               [12] 2895 	mov	a,@r0
      003733 C0 E0            [24] 2896 	push	acc
      003735 08               [12] 2897 	inc	r0
      003736 E6               [12] 2898 	mov	a,@r0
      003737 C0 E0            [24] 2899 	push	acc
      003739 8A 82            [24] 2900 	mov	dpl,r2
      00373B 8B 83            [24] 2901 	mov	dph,r3
      00373D 8C F0            [24] 2902 	mov	b,r4
      00373F 12 26 B5         [24] 2903 	lcall	_stack_push
      003742 E5 81            [12] 2904 	mov	a,sp
      003744 24 FC            [12] 2905 	add	a,#0xfc
      003746 F5 81            [12] 2906 	mov	sp,a
                                   2907 ;	calc.c:190: break;
      003748 02 47 6E         [24] 2908 	ljmp	00217$
                                   2909 ;	calc.c:191: case '-':
      00374B                       2910 00128$:
                                   2911 ;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00374B E5 08            [12] 2912 	mov	a,_bp
      00374D 24 0F            [12] 2913 	add	a,#0x0f
      00374F FF               [12] 2914 	mov	r7,a
      003750 7E 00            [12] 2915 	mov	r6,#0x00
      003752 7D 40            [12] 2916 	mov	r5,#0x40
      003754 E5 08            [12] 2917 	mov	a,_bp
      003756 24 0C            [12] 2918 	add	a,#0x0c
      003758 F8               [12] 2919 	mov	r0,a
      003759 74 09            [12] 2920 	mov	a,#0x09
      00375B 26               [12] 2921 	add	a,@r0
      00375C FA               [12] 2922 	mov	r2,a
      00375D E4               [12] 2923 	clr	a
      00375E 08               [12] 2924 	inc	r0
      00375F 36               [12] 2925 	addc	a,@r0
      003760 FB               [12] 2926 	mov	r3,a
      003761 08               [12] 2927 	inc	r0
      003762 86 04            [24] 2928 	mov	ar4,@r0
      003764 C0 07            [24] 2929 	push	ar7
      003766 C0 06            [24] 2930 	push	ar6
      003768 C0 05            [24] 2931 	push	ar5
      00376A 8A 82            [24] 2932 	mov	dpl,r2
      00376C 8B 83            [24] 2933 	mov	dph,r3
      00376E 8C F0            [24] 2934 	mov	b,r4
      003770 12 27 7F         [24] 2935 	lcall	_stack_pop
      003773 AB 82            [24] 2936 	mov	r3,dpl
      003775 AC 83            [24] 2937 	mov	r4,dph
      003777 15 81            [12] 2938 	dec	sp
      003779 15 81            [12] 2939 	dec	sp
      00377B 15 81            [12] 2940 	dec	sp
      00377D EB               [12] 2941 	mov	a,r3
      00377E 4C               [12] 2942 	orl	a,r4
      00377F 70 25            [24] 2943 	jnz	00133$
      003781 7F 46            [12] 2944 	mov	r7,#___str_8
      003783 7E 71            [12] 2945 	mov	r6,#(___str_8 >> 8)
      003785 7D 80            [12] 2946 	mov	r5,#0x80
                                   2947 ;	calc.c:50: return;
      003787                       2948 00348$:
                                   2949 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003787 8F 82            [24] 2950 	mov	dpl,r7
      003789 8E 83            [24] 2951 	mov	dph,r6
      00378B 8D F0            [24] 2952 	mov	b,r5
      00378D 12 58 8D         [24] 2953 	lcall	__gptrget
      003790 FC               [12] 2954 	mov	r4,a
      003791 70 03            [24] 2955 	jnz	01058$
      003793 02 47 6E         [24] 2956 	ljmp	00217$
      003796                       2957 01058$:
      003796 7B 00            [12] 2958 	mov	r3,#0x00
      003798 8C 82            [24] 2959 	mov	dpl,r4
      00379A 8B 83            [24] 2960 	mov	dph,r3
      00379C 12 29 C0         [24] 2961 	lcall	_putchar
      00379F 0F               [12] 2962 	inc	r7
                                   2963 ;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0037A0 BF 00 E4         [24] 2964 	cjne	r7,#0x00,00348$
      0037A3 0E               [12] 2965 	inc	r6
      0037A4 80 E1            [24] 2966 	sjmp	00348$
      0037A6                       2967 00133$:
                                   2968 ;	calc.c:193: else if (!stack_pop(&ctx->s, &d1)) {
      0037A6 E5 08            [12] 2969 	mov	a,_bp
      0037A8 24 13            [12] 2970 	add	a,#0x13
      0037AA FF               [12] 2971 	mov	r7,a
      0037AB 7E 00            [12] 2972 	mov	r6,#0x00
      0037AD 7D 40            [12] 2973 	mov	r5,#0x40
      0037AF E5 08            [12] 2974 	mov	a,_bp
      0037B1 24 0C            [12] 2975 	add	a,#0x0c
      0037B3 F8               [12] 2976 	mov	r0,a
      0037B4 74 09            [12] 2977 	mov	a,#0x09
      0037B6 26               [12] 2978 	add	a,@r0
      0037B7 FA               [12] 2979 	mov	r2,a
      0037B8 E4               [12] 2980 	clr	a
      0037B9 08               [12] 2981 	inc	r0
      0037BA 36               [12] 2982 	addc	a,@r0
      0037BB FB               [12] 2983 	mov	r3,a
      0037BC 08               [12] 2984 	inc	r0
      0037BD 86 04            [24] 2985 	mov	ar4,@r0
      0037BF C0 07            [24] 2986 	push	ar7
      0037C1 C0 06            [24] 2987 	push	ar6
      0037C3 C0 05            [24] 2988 	push	ar5
      0037C5 8A 82            [24] 2989 	mov	dpl,r2
      0037C7 8B 83            [24] 2990 	mov	dph,r3
      0037C9 8C F0            [24] 2991 	mov	b,r4
      0037CB 12 27 7F         [24] 2992 	lcall	_stack_pop
      0037CE AB 82            [24] 2993 	mov	r3,dpl
      0037D0 AC 83            [24] 2994 	mov	r4,dph
      0037D2 15 81            [12] 2995 	dec	sp
      0037D4 15 81            [12] 2996 	dec	sp
      0037D6 15 81            [12] 2997 	dec	sp
      0037D8 EB               [12] 2998 	mov	a,r3
      0037D9 4C               [12] 2999 	orl	a,r4
      0037DA 70 58            [24] 3000 	jnz	00130$
                                   3001 ;	calc.c:194: (void)stack_push(&ctx->s, d0);
      0037DC E5 08            [12] 3002 	mov	a,_bp
      0037DE 24 0C            [12] 3003 	add	a,#0x0c
      0037E0 F8               [12] 3004 	mov	r0,a
      0037E1 74 09            [12] 3005 	mov	a,#0x09
      0037E3 26               [12] 3006 	add	a,@r0
      0037E4 FA               [12] 3007 	mov	r2,a
      0037E5 E4               [12] 3008 	clr	a
      0037E6 08               [12] 3009 	inc	r0
      0037E7 36               [12] 3010 	addc	a,@r0
      0037E8 FB               [12] 3011 	mov	r3,a
      0037E9 08               [12] 3012 	inc	r0
      0037EA 86 04            [24] 3013 	mov	ar4,@r0
      0037EC E5 08            [12] 3014 	mov	a,_bp
      0037EE 24 0F            [12] 3015 	add	a,#0x0f
      0037F0 F8               [12] 3016 	mov	r0,a
      0037F1 E6               [12] 3017 	mov	a,@r0
      0037F2 C0 E0            [24] 3018 	push	acc
      0037F4 08               [12] 3019 	inc	r0
      0037F5 E6               [12] 3020 	mov	a,@r0
      0037F6 C0 E0            [24] 3021 	push	acc
      0037F8 08               [12] 3022 	inc	r0
      0037F9 E6               [12] 3023 	mov	a,@r0
      0037FA C0 E0            [24] 3024 	push	acc
      0037FC 08               [12] 3025 	inc	r0
      0037FD E6               [12] 3026 	mov	a,@r0
      0037FE C0 E0            [24] 3027 	push	acc
      003800 8A 82            [24] 3028 	mov	dpl,r2
      003802 8B 83            [24] 3029 	mov	dph,r3
      003804 8C F0            [24] 3030 	mov	b,r4
      003806 12 26 B5         [24] 3031 	lcall	_stack_push
      003809 E5 81            [12] 3032 	mov	a,sp
      00380B 24 FC            [12] 3033 	add	a,#0xfc
      00380D F5 81            [12] 3034 	mov	sp,a
                                   3035 ;	calc.c:195: printstr("\r\nstack underflow\r\n");
      00380F 7F 46            [12] 3036 	mov	r7,#___str_8
      003811 7E 71            [12] 3037 	mov	r6,#(___str_8 >> 8)
      003813 7D 80            [12] 3038 	mov	r5,#0x80
                                   3039 ;	calc.c:50: return;
      003815                       3040 00351$:
                                   3041 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003815 8F 82            [24] 3042 	mov	dpl,r7
      003817 8E 83            [24] 3043 	mov	dph,r6
      003819 8D F0            [24] 3044 	mov	b,r5
      00381B 12 58 8D         [24] 3045 	lcall	__gptrget
      00381E FC               [12] 3046 	mov	r4,a
      00381F 70 03            [24] 3047 	jnz	01061$
      003821 02 47 6E         [24] 3048 	ljmp	00217$
      003824                       3049 01061$:
      003824 7B 00            [12] 3050 	mov	r3,#0x00
      003826 8C 82            [24] 3051 	mov	dpl,r4
      003828 8B 83            [24] 3052 	mov	dph,r3
      00382A 12 29 C0         [24] 3053 	lcall	_putchar
      00382D 0F               [12] 3054 	inc	r7
                                   3055 ;	calc.c:195: printstr("\r\nstack underflow\r\n");
      00382E BF 00 E4         [24] 3056 	cjne	r7,#0x00,00351$
      003831 0E               [12] 3057 	inc	r6
      003832 80 E1            [24] 3058 	sjmp	00351$
      003834                       3059 00130$:
                                   3060 ;	calc.c:197: d1 -= d0;
      003834 E5 08            [12] 3061 	mov	a,_bp
      003836 24 13            [12] 3062 	add	a,#0x13
      003838 F8               [12] 3063 	mov	r0,a
      003839 E5 08            [12] 3064 	mov	a,_bp
      00383B 24 0F            [12] 3065 	add	a,#0x0f
      00383D F9               [12] 3066 	mov	r1,a
      00383E E6               [12] 3067 	mov	a,@r0
      00383F C3               [12] 3068 	clr	c
      003840 97               [12] 3069 	subb	a,@r1
      003841 F6               [12] 3070 	mov	@r0,a
      003842 08               [12] 3071 	inc	r0
      003843 E6               [12] 3072 	mov	a,@r0
      003844 09               [12] 3073 	inc	r1
      003845 97               [12] 3074 	subb	a,@r1
      003846 F6               [12] 3075 	mov	@r0,a
      003847 08               [12] 3076 	inc	r0
      003848 E6               [12] 3077 	mov	a,@r0
      003849 09               [12] 3078 	inc	r1
      00384A 97               [12] 3079 	subb	a,@r1
      00384B F6               [12] 3080 	mov	@r0,a
      00384C 08               [12] 3081 	inc	r0
      00384D E6               [12] 3082 	mov	a,@r0
      00384E 09               [12] 3083 	inc	r1
      00384F 97               [12] 3084 	subb	a,@r1
      003850 F6               [12] 3085 	mov	@r0,a
                                   3086 ;	calc.c:198: (void)stack_push(&ctx->s, d1);
      003851 E5 08            [12] 3087 	mov	a,_bp
      003853 24 0C            [12] 3088 	add	a,#0x0c
      003855 F8               [12] 3089 	mov	r0,a
      003856 74 09            [12] 3090 	mov	a,#0x09
      003858 26               [12] 3091 	add	a,@r0
      003859 FA               [12] 3092 	mov	r2,a
      00385A E4               [12] 3093 	clr	a
      00385B 08               [12] 3094 	inc	r0
      00385C 36               [12] 3095 	addc	a,@r0
      00385D FB               [12] 3096 	mov	r3,a
      00385E 08               [12] 3097 	inc	r0
      00385F 86 04            [24] 3098 	mov	ar4,@r0
      003861 E5 08            [12] 3099 	mov	a,_bp
      003863 24 13            [12] 3100 	add	a,#0x13
      003865 F8               [12] 3101 	mov	r0,a
      003866 E6               [12] 3102 	mov	a,@r0
      003867 C0 E0            [24] 3103 	push	acc
      003869 08               [12] 3104 	inc	r0
      00386A E6               [12] 3105 	mov	a,@r0
      00386B C0 E0            [24] 3106 	push	acc
      00386D 08               [12] 3107 	inc	r0
      00386E E6               [12] 3108 	mov	a,@r0
      00386F C0 E0            [24] 3109 	push	acc
      003871 08               [12] 3110 	inc	r0
      003872 E6               [12] 3111 	mov	a,@r0
      003873 C0 E0            [24] 3112 	push	acc
      003875 8A 82            [24] 3113 	mov	dpl,r2
      003877 8B 83            [24] 3114 	mov	dph,r3
      003879 8C F0            [24] 3115 	mov	b,r4
      00387B 12 26 B5         [24] 3116 	lcall	_stack_push
      00387E E5 81            [12] 3117 	mov	a,sp
      003880 24 FC            [12] 3118 	add	a,#0xfc
      003882 F5 81            [12] 3119 	mov	sp,a
                                   3120 ;	calc.c:200: break;
      003884 02 47 6E         [24] 3121 	ljmp	00217$
                                   3122 ;	calc.c:201: case '*':
      003887                       3123 00135$:
                                   3124 ;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003887 E5 08            [12] 3125 	mov	a,_bp
      003889 24 0F            [12] 3126 	add	a,#0x0f
      00388B FF               [12] 3127 	mov	r7,a
      00388C 7E 00            [12] 3128 	mov	r6,#0x00
      00388E 7D 40            [12] 3129 	mov	r5,#0x40
      003890 E5 08            [12] 3130 	mov	a,_bp
      003892 24 0C            [12] 3131 	add	a,#0x0c
      003894 F8               [12] 3132 	mov	r0,a
      003895 74 09            [12] 3133 	mov	a,#0x09
      003897 26               [12] 3134 	add	a,@r0
      003898 FA               [12] 3135 	mov	r2,a
      003899 E4               [12] 3136 	clr	a
      00389A 08               [12] 3137 	inc	r0
      00389B 36               [12] 3138 	addc	a,@r0
      00389C FB               [12] 3139 	mov	r3,a
      00389D 08               [12] 3140 	inc	r0
      00389E 86 04            [24] 3141 	mov	ar4,@r0
      0038A0 C0 07            [24] 3142 	push	ar7
      0038A2 C0 06            [24] 3143 	push	ar6
      0038A4 C0 05            [24] 3144 	push	ar5
      0038A6 8A 82            [24] 3145 	mov	dpl,r2
      0038A8 8B 83            [24] 3146 	mov	dph,r3
      0038AA 8C F0            [24] 3147 	mov	b,r4
      0038AC 12 27 7F         [24] 3148 	lcall	_stack_pop
      0038AF AB 82            [24] 3149 	mov	r3,dpl
      0038B1 AC 83            [24] 3150 	mov	r4,dph
      0038B3 15 81            [12] 3151 	dec	sp
      0038B5 15 81            [12] 3152 	dec	sp
      0038B7 15 81            [12] 3153 	dec	sp
      0038B9 EB               [12] 3154 	mov	a,r3
      0038BA 4C               [12] 3155 	orl	a,r4
      0038BB 70 25            [24] 3156 	jnz	00140$
      0038BD 7F 46            [12] 3157 	mov	r7,#___str_8
      0038BF 7E 71            [12] 3158 	mov	r6,#(___str_8 >> 8)
      0038C1 7D 80            [12] 3159 	mov	r5,#0x80
                                   3160 ;	calc.c:50: return;
      0038C3                       3161 00354$:
                                   3162 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0038C3 8F 82            [24] 3163 	mov	dpl,r7
      0038C5 8E 83            [24] 3164 	mov	dph,r6
      0038C7 8D F0            [24] 3165 	mov	b,r5
      0038C9 12 58 8D         [24] 3166 	lcall	__gptrget
      0038CC FC               [12] 3167 	mov	r4,a
      0038CD 70 03            [24] 3168 	jnz	01064$
      0038CF 02 47 6E         [24] 3169 	ljmp	00217$
      0038D2                       3170 01064$:
      0038D2 7B 00            [12] 3171 	mov	r3,#0x00
      0038D4 8C 82            [24] 3172 	mov	dpl,r4
      0038D6 8B 83            [24] 3173 	mov	dph,r3
      0038D8 12 29 C0         [24] 3174 	lcall	_putchar
      0038DB 0F               [12] 3175 	inc	r7
                                   3176 ;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0038DC BF 00 E4         [24] 3177 	cjne	r7,#0x00,00354$
      0038DF 0E               [12] 3178 	inc	r6
      0038E0 80 E1            [24] 3179 	sjmp	00354$
      0038E2                       3180 00140$:
                                   3181 ;	calc.c:203: else if (!stack_pop(&ctx->s, &d1)) {
      0038E2 E5 08            [12] 3182 	mov	a,_bp
      0038E4 24 13            [12] 3183 	add	a,#0x13
      0038E6 FF               [12] 3184 	mov	r7,a
      0038E7 7E 00            [12] 3185 	mov	r6,#0x00
      0038E9 7D 40            [12] 3186 	mov	r5,#0x40
      0038EB E5 08            [12] 3187 	mov	a,_bp
      0038ED 24 0C            [12] 3188 	add	a,#0x0c
      0038EF F8               [12] 3189 	mov	r0,a
      0038F0 74 09            [12] 3190 	mov	a,#0x09
      0038F2 26               [12] 3191 	add	a,@r0
      0038F3 FA               [12] 3192 	mov	r2,a
      0038F4 E4               [12] 3193 	clr	a
      0038F5 08               [12] 3194 	inc	r0
      0038F6 36               [12] 3195 	addc	a,@r0
      0038F7 FB               [12] 3196 	mov	r3,a
      0038F8 08               [12] 3197 	inc	r0
      0038F9 86 04            [24] 3198 	mov	ar4,@r0
      0038FB C0 07            [24] 3199 	push	ar7
      0038FD C0 06            [24] 3200 	push	ar6
      0038FF C0 05            [24] 3201 	push	ar5
      003901 8A 82            [24] 3202 	mov	dpl,r2
      003903 8B 83            [24] 3203 	mov	dph,r3
      003905 8C F0            [24] 3204 	mov	b,r4
      003907 12 27 7F         [24] 3205 	lcall	_stack_pop
      00390A AB 82            [24] 3206 	mov	r3,dpl
      00390C AC 83            [24] 3207 	mov	r4,dph
      00390E 15 81            [12] 3208 	dec	sp
      003910 15 81            [12] 3209 	dec	sp
      003912 15 81            [12] 3210 	dec	sp
      003914 EB               [12] 3211 	mov	a,r3
      003915 4C               [12] 3212 	orl	a,r4
      003916 70 58            [24] 3213 	jnz	00137$
                                   3214 ;	calc.c:204: (void)stack_push(&ctx->s, d0);
      003918 E5 08            [12] 3215 	mov	a,_bp
      00391A 24 0C            [12] 3216 	add	a,#0x0c
      00391C F8               [12] 3217 	mov	r0,a
      00391D 74 09            [12] 3218 	mov	a,#0x09
      00391F 26               [12] 3219 	add	a,@r0
      003920 FA               [12] 3220 	mov	r2,a
      003921 E4               [12] 3221 	clr	a
      003922 08               [12] 3222 	inc	r0
      003923 36               [12] 3223 	addc	a,@r0
      003924 FB               [12] 3224 	mov	r3,a
      003925 08               [12] 3225 	inc	r0
      003926 86 04            [24] 3226 	mov	ar4,@r0
      003928 E5 08            [12] 3227 	mov	a,_bp
      00392A 24 0F            [12] 3228 	add	a,#0x0f
      00392C F8               [12] 3229 	mov	r0,a
      00392D E6               [12] 3230 	mov	a,@r0
      00392E C0 E0            [24] 3231 	push	acc
      003930 08               [12] 3232 	inc	r0
      003931 E6               [12] 3233 	mov	a,@r0
      003932 C0 E0            [24] 3234 	push	acc
      003934 08               [12] 3235 	inc	r0
      003935 E6               [12] 3236 	mov	a,@r0
      003936 C0 E0            [24] 3237 	push	acc
      003938 08               [12] 3238 	inc	r0
      003939 E6               [12] 3239 	mov	a,@r0
      00393A C0 E0            [24] 3240 	push	acc
      00393C 8A 82            [24] 3241 	mov	dpl,r2
      00393E 8B 83            [24] 3242 	mov	dph,r3
      003940 8C F0            [24] 3243 	mov	b,r4
      003942 12 26 B5         [24] 3244 	lcall	_stack_push
      003945 E5 81            [12] 3245 	mov	a,sp
      003947 24 FC            [12] 3246 	add	a,#0xfc
      003949 F5 81            [12] 3247 	mov	sp,a
                                   3248 ;	calc.c:205: printstr("\r\nstack underflow\r\n");
      00394B 7F 46            [12] 3249 	mov	r7,#___str_8
      00394D 7E 71            [12] 3250 	mov	r6,#(___str_8 >> 8)
      00394F 7D 80            [12] 3251 	mov	r5,#0x80
                                   3252 ;	calc.c:50: return;
      003951                       3253 00357$:
                                   3254 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003951 8F 82            [24] 3255 	mov	dpl,r7
      003953 8E 83            [24] 3256 	mov	dph,r6
      003955 8D F0            [24] 3257 	mov	b,r5
      003957 12 58 8D         [24] 3258 	lcall	__gptrget
      00395A FC               [12] 3259 	mov	r4,a
      00395B 70 03            [24] 3260 	jnz	01067$
      00395D 02 47 6E         [24] 3261 	ljmp	00217$
      003960                       3262 01067$:
      003960 7B 00            [12] 3263 	mov	r3,#0x00
      003962 8C 82            [24] 3264 	mov	dpl,r4
      003964 8B 83            [24] 3265 	mov	dph,r3
      003966 12 29 C0         [24] 3266 	lcall	_putchar
      003969 0F               [12] 3267 	inc	r7
                                   3268 ;	calc.c:205: printstr("\r\nstack underflow\r\n");
      00396A BF 00 E4         [24] 3269 	cjne	r7,#0x00,00357$
      00396D 0E               [12] 3270 	inc	r6
      00396E 80 E1            [24] 3271 	sjmp	00357$
      003970                       3272 00137$:
                                   3273 ;	calc.c:207: d1 *= d0;
      003970 E5 08            [12] 3274 	mov	a,_bp
      003972 24 0F            [12] 3275 	add	a,#0x0f
      003974 F8               [12] 3276 	mov	r0,a
      003975 E6               [12] 3277 	mov	a,@r0
      003976 C0 E0            [24] 3278 	push	acc
      003978 08               [12] 3279 	inc	r0
      003979 E6               [12] 3280 	mov	a,@r0
      00397A C0 E0            [24] 3281 	push	acc
      00397C 08               [12] 3282 	inc	r0
      00397D E6               [12] 3283 	mov	a,@r0
      00397E C0 E0            [24] 3284 	push	acc
      003980 08               [12] 3285 	inc	r0
      003981 E6               [12] 3286 	mov	a,@r0
      003982 C0 E0            [24] 3287 	push	acc
      003984 E5 08            [12] 3288 	mov	a,_bp
      003986 24 13            [12] 3289 	add	a,#0x13
      003988 F8               [12] 3290 	mov	r0,a
      003989 86 82            [24] 3291 	mov	dpl,@r0
      00398B 08               [12] 3292 	inc	r0
      00398C 86 83            [24] 3293 	mov	dph,@r0
      00398E 08               [12] 3294 	inc	r0
      00398F 86 F0            [24] 3295 	mov	b,@r0
      003991 08               [12] 3296 	inc	r0
      003992 E6               [12] 3297 	mov	a,@r0
      003993 12 5C 86         [24] 3298 	lcall	__mullong
      003996 AF 82            [24] 3299 	mov	r7,dpl
      003998 AE 83            [24] 3300 	mov	r6,dph
      00399A AD F0            [24] 3301 	mov	r5,b
      00399C FC               [12] 3302 	mov	r4,a
      00399D E5 81            [12] 3303 	mov	a,sp
      00399F 24 FC            [12] 3304 	add	a,#0xfc
      0039A1 F5 81            [12] 3305 	mov	sp,a
      0039A3 E5 08            [12] 3306 	mov	a,_bp
      0039A5 24 13            [12] 3307 	add	a,#0x13
      0039A7 F8               [12] 3308 	mov	r0,a
      0039A8 A6 07            [24] 3309 	mov	@r0,ar7
      0039AA 08               [12] 3310 	inc	r0
      0039AB A6 06            [24] 3311 	mov	@r0,ar6
      0039AD 08               [12] 3312 	inc	r0
      0039AE A6 05            [24] 3313 	mov	@r0,ar5
      0039B0 08               [12] 3314 	inc	r0
      0039B1 A6 04            [24] 3315 	mov	@r0,ar4
                                   3316 ;	calc.c:208: (void)stack_push(&ctx->s, d1);
      0039B3 E5 08            [12] 3317 	mov	a,_bp
      0039B5 24 0C            [12] 3318 	add	a,#0x0c
      0039B7 F8               [12] 3319 	mov	r0,a
      0039B8 74 09            [12] 3320 	mov	a,#0x09
      0039BA 26               [12] 3321 	add	a,@r0
      0039BB FA               [12] 3322 	mov	r2,a
      0039BC E4               [12] 3323 	clr	a
      0039BD 08               [12] 3324 	inc	r0
      0039BE 36               [12] 3325 	addc	a,@r0
      0039BF FB               [12] 3326 	mov	r3,a
      0039C0 08               [12] 3327 	inc	r0
      0039C1 86 04            [24] 3328 	mov	ar4,@r0
      0039C3 E5 08            [12] 3329 	mov	a,_bp
      0039C5 24 13            [12] 3330 	add	a,#0x13
      0039C7 F8               [12] 3331 	mov	r0,a
      0039C8 E6               [12] 3332 	mov	a,@r0
      0039C9 C0 E0            [24] 3333 	push	acc
      0039CB 08               [12] 3334 	inc	r0
      0039CC E6               [12] 3335 	mov	a,@r0
      0039CD C0 E0            [24] 3336 	push	acc
      0039CF 08               [12] 3337 	inc	r0
      0039D0 E6               [12] 3338 	mov	a,@r0
      0039D1 C0 E0            [24] 3339 	push	acc
      0039D3 08               [12] 3340 	inc	r0
      0039D4 E6               [12] 3341 	mov	a,@r0
      0039D5 C0 E0            [24] 3342 	push	acc
      0039D7 8A 82            [24] 3343 	mov	dpl,r2
      0039D9 8B 83            [24] 3344 	mov	dph,r3
      0039DB 8C F0            [24] 3345 	mov	b,r4
      0039DD 12 26 B5         [24] 3346 	lcall	_stack_push
      0039E0 E5 81            [12] 3347 	mov	a,sp
      0039E2 24 FC            [12] 3348 	add	a,#0xfc
      0039E4 F5 81            [12] 3349 	mov	sp,a
                                   3350 ;	calc.c:210: break;
      0039E6 02 47 6E         [24] 3351 	ljmp	00217$
                                   3352 ;	calc.c:212: case '\\':
      0039E9                       3353 00143$:
                                   3354 ;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0039E9 C0 05            [24] 3355 	push	ar5
      0039EB C0 06            [24] 3356 	push	ar6
      0039ED C0 07            [24] 3357 	push	ar7
      0039EF E5 08            [12] 3358 	mov	a,_bp
      0039F1 24 0F            [12] 3359 	add	a,#0x0f
      0039F3 FC               [12] 3360 	mov	r4,a
      0039F4 7B 00            [12] 3361 	mov	r3,#0x00
      0039F6 7A 40            [12] 3362 	mov	r2,#0x40
      0039F8 E5 08            [12] 3363 	mov	a,_bp
      0039FA 24 0C            [12] 3364 	add	a,#0x0c
      0039FC F8               [12] 3365 	mov	r0,a
      0039FD 74 09            [12] 3366 	mov	a,#0x09
      0039FF 26               [12] 3367 	add	a,@r0
      003A00 FD               [12] 3368 	mov	r5,a
      003A01 E4               [12] 3369 	clr	a
      003A02 08               [12] 3370 	inc	r0
      003A03 36               [12] 3371 	addc	a,@r0
      003A04 FE               [12] 3372 	mov	r6,a
      003A05 08               [12] 3373 	inc	r0
      003A06 86 07            [24] 3374 	mov	ar7,@r0
      003A08 C0 05            [24] 3375 	push	ar5
      003A0A C0 04            [24] 3376 	push	ar4
      003A0C C0 03            [24] 3377 	push	ar3
      003A0E C0 02            [24] 3378 	push	ar2
      003A10 8D 82            [24] 3379 	mov	dpl,r5
      003A12 8E 83            [24] 3380 	mov	dph,r6
      003A14 8F F0            [24] 3381 	mov	b,r7
      003A16 12 27 7F         [24] 3382 	lcall	_stack_pop
      003A19 AE 82            [24] 3383 	mov	r6,dpl
      003A1B AF 83            [24] 3384 	mov	r7,dph
      003A1D 15 81            [12] 3385 	dec	sp
      003A1F 15 81            [12] 3386 	dec	sp
      003A21 15 81            [12] 3387 	dec	sp
      003A23 D0 05            [24] 3388 	pop	ar5
      003A25 EE               [12] 3389 	mov	a,r6
      003A26 4F               [12] 3390 	orl	a,r7
      003A27 D0 07            [24] 3391 	pop	ar7
      003A29 D0 06            [24] 3392 	pop	ar6
      003A2B D0 05            [24] 3393 	pop	ar5
      003A2D 70 25            [24] 3394 	jnz	00154$
      003A2F 7F 46            [12] 3395 	mov	r7,#___str_8
      003A31 7E 71            [12] 3396 	mov	r6,#(___str_8 >> 8)
      003A33 7D 80            [12] 3397 	mov	r5,#0x80
                                   3398 ;	calc.c:50: return;
      003A35                       3399 00360$:
                                   3400 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003A35 8F 82            [24] 3401 	mov	dpl,r7
      003A37 8E 83            [24] 3402 	mov	dph,r6
      003A39 8D F0            [24] 3403 	mov	b,r5
      003A3B 12 58 8D         [24] 3404 	lcall	__gptrget
      003A3E FC               [12] 3405 	mov	r4,a
      003A3F 70 03            [24] 3406 	jnz	01070$
      003A41 02 47 6E         [24] 3407 	ljmp	00217$
      003A44                       3408 01070$:
      003A44 7B 00            [12] 3409 	mov	r3,#0x00
      003A46 8C 82            [24] 3410 	mov	dpl,r4
      003A48 8B 83            [24] 3411 	mov	dph,r3
      003A4A 12 29 C0         [24] 3412 	lcall	_putchar
      003A4D 0F               [12] 3413 	inc	r7
                                   3414 ;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003A4E BF 00 E4         [24] 3415 	cjne	r7,#0x00,00360$
      003A51 0E               [12] 3416 	inc	r6
      003A52 80 E1            [24] 3417 	sjmp	00360$
      003A54                       3418 00154$:
                                   3419 ;	calc.c:214: else if (!stack_pop(&ctx->s, &d1)) {
      003A54 C0 05            [24] 3420 	push	ar5
      003A56 C0 06            [24] 3421 	push	ar6
      003A58 C0 07            [24] 3422 	push	ar7
      003A5A E5 08            [12] 3423 	mov	a,_bp
      003A5C 24 13            [12] 3424 	add	a,#0x13
      003A5E FC               [12] 3425 	mov	r4,a
      003A5F 7B 00            [12] 3426 	mov	r3,#0x00
      003A61 7A 40            [12] 3427 	mov	r2,#0x40
      003A63 E5 08            [12] 3428 	mov	a,_bp
      003A65 24 0C            [12] 3429 	add	a,#0x0c
      003A67 F8               [12] 3430 	mov	r0,a
      003A68 74 09            [12] 3431 	mov	a,#0x09
      003A6A 26               [12] 3432 	add	a,@r0
      003A6B FD               [12] 3433 	mov	r5,a
      003A6C E4               [12] 3434 	clr	a
      003A6D 08               [12] 3435 	inc	r0
      003A6E 36               [12] 3436 	addc	a,@r0
      003A6F FE               [12] 3437 	mov	r6,a
      003A70 08               [12] 3438 	inc	r0
      003A71 86 07            [24] 3439 	mov	ar7,@r0
      003A73 C0 05            [24] 3440 	push	ar5
      003A75 C0 04            [24] 3441 	push	ar4
      003A77 C0 03            [24] 3442 	push	ar3
      003A79 C0 02            [24] 3443 	push	ar2
      003A7B 8D 82            [24] 3444 	mov	dpl,r5
      003A7D 8E 83            [24] 3445 	mov	dph,r6
      003A7F 8F F0            [24] 3446 	mov	b,r7
      003A81 12 27 7F         [24] 3447 	lcall	_stack_pop
      003A84 AE 82            [24] 3448 	mov	r6,dpl
      003A86 AF 83            [24] 3449 	mov	r7,dph
      003A88 15 81            [12] 3450 	dec	sp
      003A8A 15 81            [12] 3451 	dec	sp
      003A8C 15 81            [12] 3452 	dec	sp
      003A8E D0 05            [24] 3453 	pop	ar5
      003A90 EE               [12] 3454 	mov	a,r6
      003A91 4F               [12] 3455 	orl	a,r7
      003A92 D0 07            [24] 3456 	pop	ar7
      003A94 D0 06            [24] 3457 	pop	ar6
      003A96 D0 05            [24] 3458 	pop	ar5
      003A98 70 58            [24] 3459 	jnz	00151$
                                   3460 ;	calc.c:215: (void)stack_push(&ctx->s, d0);
      003A9A E5 08            [12] 3461 	mov	a,_bp
      003A9C 24 0C            [12] 3462 	add	a,#0x0c
      003A9E F8               [12] 3463 	mov	r0,a
      003A9F 74 09            [12] 3464 	mov	a,#0x09
      003AA1 26               [12] 3465 	add	a,@r0
      003AA2 FA               [12] 3466 	mov	r2,a
      003AA3 E4               [12] 3467 	clr	a
      003AA4 08               [12] 3468 	inc	r0
      003AA5 36               [12] 3469 	addc	a,@r0
      003AA6 FB               [12] 3470 	mov	r3,a
      003AA7 08               [12] 3471 	inc	r0
      003AA8 86 04            [24] 3472 	mov	ar4,@r0
      003AAA E5 08            [12] 3473 	mov	a,_bp
      003AAC 24 0F            [12] 3474 	add	a,#0x0f
      003AAE F8               [12] 3475 	mov	r0,a
      003AAF E6               [12] 3476 	mov	a,@r0
      003AB0 C0 E0            [24] 3477 	push	acc
      003AB2 08               [12] 3478 	inc	r0
      003AB3 E6               [12] 3479 	mov	a,@r0
      003AB4 C0 E0            [24] 3480 	push	acc
      003AB6 08               [12] 3481 	inc	r0
      003AB7 E6               [12] 3482 	mov	a,@r0
      003AB8 C0 E0            [24] 3483 	push	acc
      003ABA 08               [12] 3484 	inc	r0
      003ABB E6               [12] 3485 	mov	a,@r0
      003ABC C0 E0            [24] 3486 	push	acc
      003ABE 8A 82            [24] 3487 	mov	dpl,r2
      003AC0 8B 83            [24] 3488 	mov	dph,r3
      003AC2 8C F0            [24] 3489 	mov	b,r4
      003AC4 12 26 B5         [24] 3490 	lcall	_stack_push
      003AC7 E5 81            [12] 3491 	mov	a,sp
      003AC9 24 FC            [12] 3492 	add	a,#0xfc
      003ACB F5 81            [12] 3493 	mov	sp,a
                                   3494 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      003ACD 7F 46            [12] 3495 	mov	r7,#___str_8
      003ACF 7E 71            [12] 3496 	mov	r6,#(___str_8 >> 8)
      003AD1 7D 80            [12] 3497 	mov	r5,#0x80
                                   3498 ;	calc.c:50: return;
      003AD3                       3499 00363$:
                                   3500 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003AD3 8F 82            [24] 3501 	mov	dpl,r7
      003AD5 8E 83            [24] 3502 	mov	dph,r6
      003AD7 8D F0            [24] 3503 	mov	b,r5
      003AD9 12 58 8D         [24] 3504 	lcall	__gptrget
      003ADC FC               [12] 3505 	mov	r4,a
      003ADD 70 03            [24] 3506 	jnz	01073$
      003ADF 02 47 6E         [24] 3507 	ljmp	00217$
      003AE2                       3508 01073$:
      003AE2 7B 00            [12] 3509 	mov	r3,#0x00
      003AE4 8C 82            [24] 3510 	mov	dpl,r4
      003AE6 8B 83            [24] 3511 	mov	dph,r3
      003AE8 12 29 C0         [24] 3512 	lcall	_putchar
      003AEB 0F               [12] 3513 	inc	r7
                                   3514 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      003AEC BF 00 E4         [24] 3515 	cjne	r7,#0x00,00363$
      003AEF 0E               [12] 3516 	inc	r6
      003AF0 80 E1            [24] 3517 	sjmp	00363$
      003AF2                       3518 00151$:
                                   3519 ;	calc.c:217: } else if (!d0) {
      003AF2 E5 08            [12] 3520 	mov	a,_bp
      003AF4 24 0F            [12] 3521 	add	a,#0x0f
      003AF6 F8               [12] 3522 	mov	r0,a
      003AF7 E6               [12] 3523 	mov	a,@r0
      003AF8 08               [12] 3524 	inc	r0
      003AF9 46               [12] 3525 	orl	a,@r0
      003AFA 08               [12] 3526 	inc	r0
      003AFB 46               [12] 3527 	orl	a,@r0
      003AFC 08               [12] 3528 	inc	r0
      003AFD 46               [12] 3529 	orl	a,@r0
      003AFE 60 03            [24] 3530 	jz	01075$
      003B00 02 3B 8E         [24] 3531 	ljmp	00148$
      003B03                       3532 01075$:
                                   3533 ;	calc.c:218: (void)stack_push(&ctx->s, d1);
      003B03 E5 08            [12] 3534 	mov	a,_bp
      003B05 24 0C            [12] 3535 	add	a,#0x0c
      003B07 F8               [12] 3536 	mov	r0,a
      003B08 74 09            [12] 3537 	mov	a,#0x09
      003B0A 26               [12] 3538 	add	a,@r0
      003B0B FA               [12] 3539 	mov	r2,a
      003B0C E4               [12] 3540 	clr	a
      003B0D 08               [12] 3541 	inc	r0
      003B0E 36               [12] 3542 	addc	a,@r0
      003B0F FB               [12] 3543 	mov	r3,a
      003B10 08               [12] 3544 	inc	r0
      003B11 86 04            [24] 3545 	mov	ar4,@r0
      003B13 E5 08            [12] 3546 	mov	a,_bp
      003B15 24 13            [12] 3547 	add	a,#0x13
      003B17 F8               [12] 3548 	mov	r0,a
      003B18 E6               [12] 3549 	mov	a,@r0
      003B19 C0 E0            [24] 3550 	push	acc
      003B1B 08               [12] 3551 	inc	r0
      003B1C E6               [12] 3552 	mov	a,@r0
      003B1D C0 E0            [24] 3553 	push	acc
      003B1F 08               [12] 3554 	inc	r0
      003B20 E6               [12] 3555 	mov	a,@r0
      003B21 C0 E0            [24] 3556 	push	acc
      003B23 08               [12] 3557 	inc	r0
      003B24 E6               [12] 3558 	mov	a,@r0
      003B25 C0 E0            [24] 3559 	push	acc
      003B27 8A 82            [24] 3560 	mov	dpl,r2
      003B29 8B 83            [24] 3561 	mov	dph,r3
      003B2B 8C F0            [24] 3562 	mov	b,r4
      003B2D 12 26 B5         [24] 3563 	lcall	_stack_push
      003B30 E5 81            [12] 3564 	mov	a,sp
      003B32 24 FC            [12] 3565 	add	a,#0xfc
      003B34 F5 81            [12] 3566 	mov	sp,a
                                   3567 ;	calc.c:219: (void)stack_push(&ctx->s, d0);			
      003B36 E5 08            [12] 3568 	mov	a,_bp
      003B38 24 0C            [12] 3569 	add	a,#0x0c
      003B3A F8               [12] 3570 	mov	r0,a
      003B3B 74 09            [12] 3571 	mov	a,#0x09
      003B3D 26               [12] 3572 	add	a,@r0
      003B3E FA               [12] 3573 	mov	r2,a
      003B3F E4               [12] 3574 	clr	a
      003B40 08               [12] 3575 	inc	r0
      003B41 36               [12] 3576 	addc	a,@r0
      003B42 FB               [12] 3577 	mov	r3,a
      003B43 08               [12] 3578 	inc	r0
      003B44 86 04            [24] 3579 	mov	ar4,@r0
      003B46 E5 08            [12] 3580 	mov	a,_bp
      003B48 24 0F            [12] 3581 	add	a,#0x0f
      003B4A F8               [12] 3582 	mov	r0,a
      003B4B E6               [12] 3583 	mov	a,@r0
      003B4C C0 E0            [24] 3584 	push	acc
      003B4E 08               [12] 3585 	inc	r0
      003B4F E6               [12] 3586 	mov	a,@r0
      003B50 C0 E0            [24] 3587 	push	acc
      003B52 08               [12] 3588 	inc	r0
      003B53 E6               [12] 3589 	mov	a,@r0
      003B54 C0 E0            [24] 3590 	push	acc
      003B56 08               [12] 3591 	inc	r0
      003B57 E6               [12] 3592 	mov	a,@r0
      003B58 C0 E0            [24] 3593 	push	acc
      003B5A 8A 82            [24] 3594 	mov	dpl,r2
      003B5C 8B 83            [24] 3595 	mov	dph,r3
      003B5E 8C F0            [24] 3596 	mov	b,r4
      003B60 12 26 B5         [24] 3597 	lcall	_stack_push
      003B63 E5 81            [12] 3598 	mov	a,sp
      003B65 24 FC            [12] 3599 	add	a,#0xfc
      003B67 F5 81            [12] 3600 	mov	sp,a
                                   3601 ;	calc.c:220: printstr("\r\ndivision by zero\r\n");
      003B69 7F 5A            [12] 3602 	mov	r7,#___str_9
      003B6B 7E 71            [12] 3603 	mov	r6,#(___str_9 >> 8)
      003B6D 7D 80            [12] 3604 	mov	r5,#0x80
                                   3605 ;	calc.c:50: return;
      003B6F                       3606 00366$:
                                   3607 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003B6F 8F 82            [24] 3608 	mov	dpl,r7
      003B71 8E 83            [24] 3609 	mov	dph,r6
      003B73 8D F0            [24] 3610 	mov	b,r5
      003B75 12 58 8D         [24] 3611 	lcall	__gptrget
      003B78 FC               [12] 3612 	mov	r4,a
      003B79 70 03            [24] 3613 	jnz	01076$
      003B7B 02 47 6E         [24] 3614 	ljmp	00217$
      003B7E                       3615 01076$:
      003B7E 7B 00            [12] 3616 	mov	r3,#0x00
      003B80 8C 82            [24] 3617 	mov	dpl,r4
      003B82 8B 83            [24] 3618 	mov	dph,r3
      003B84 12 29 C0         [24] 3619 	lcall	_putchar
      003B87 0F               [12] 3620 	inc	r7
                                   3621 ;	calc.c:220: printstr("\r\ndivision by zero\r\n");
      003B88 BF 00 E4         [24] 3622 	cjne	r7,#0x00,00366$
      003B8B 0E               [12] 3623 	inc	r6
      003B8C 80 E1            [24] 3624 	sjmp	00366$
      003B8E                       3625 00148$:
                                   3626 ;	calc.c:222: if (ctx->digit[0] == '/') d1 /= d0;
      003B8E 8D 82            [24] 3627 	mov	dpl,r5
      003B90 8E 83            [24] 3628 	mov	dph,r6
      003B92 8F F0            [24] 3629 	mov	b,r7
      003B94 12 58 8D         [24] 3630 	lcall	__gptrget
      003B97 FC               [12] 3631 	mov	r4,a
      003B98 BC 2F 45         [24] 3632 	cjne	r4,#0x2f,00145$
      003B9B E5 08            [12] 3633 	mov	a,_bp
      003B9D 24 0F            [12] 3634 	add	a,#0x0f
      003B9F F8               [12] 3635 	mov	r0,a
      003BA0 E6               [12] 3636 	mov	a,@r0
      003BA1 C0 E0            [24] 3637 	push	acc
      003BA3 08               [12] 3638 	inc	r0
      003BA4 E6               [12] 3639 	mov	a,@r0
      003BA5 C0 E0            [24] 3640 	push	acc
      003BA7 08               [12] 3641 	inc	r0
      003BA8 E6               [12] 3642 	mov	a,@r0
      003BA9 C0 E0            [24] 3643 	push	acc
      003BAB 08               [12] 3644 	inc	r0
      003BAC E6               [12] 3645 	mov	a,@r0
      003BAD C0 E0            [24] 3646 	push	acc
      003BAF E5 08            [12] 3647 	mov	a,_bp
      003BB1 24 13            [12] 3648 	add	a,#0x13
      003BB3 F8               [12] 3649 	mov	r0,a
      003BB4 86 82            [24] 3650 	mov	dpl,@r0
      003BB6 08               [12] 3651 	inc	r0
      003BB7 86 83            [24] 3652 	mov	dph,@r0
      003BB9 08               [12] 3653 	inc	r0
      003BBA 86 F0            [24] 3654 	mov	b,@r0
      003BBC 08               [12] 3655 	inc	r0
      003BBD E6               [12] 3656 	mov	a,@r0
      003BBE 12 56 84         [24] 3657 	lcall	__divslong
      003BC1 AF 82            [24] 3658 	mov	r7,dpl
      003BC3 AE 83            [24] 3659 	mov	r6,dph
      003BC5 AD F0            [24] 3660 	mov	r5,b
      003BC7 FC               [12] 3661 	mov	r4,a
      003BC8 E5 81            [12] 3662 	mov	a,sp
      003BCA 24 FC            [12] 3663 	add	a,#0xfc
      003BCC F5 81            [12] 3664 	mov	sp,a
      003BCE E5 08            [12] 3665 	mov	a,_bp
      003BD0 24 13            [12] 3666 	add	a,#0x13
      003BD2 F8               [12] 3667 	mov	r0,a
      003BD3 A6 07            [24] 3668 	mov	@r0,ar7
      003BD5 08               [12] 3669 	inc	r0
      003BD6 A6 06            [24] 3670 	mov	@r0,ar6
      003BD8 08               [12] 3671 	inc	r0
      003BD9 A6 05            [24] 3672 	mov	@r0,ar5
      003BDB 08               [12] 3673 	inc	r0
      003BDC A6 04            [24] 3674 	mov	@r0,ar4
      003BDE 80 63            [24] 3675 	sjmp	00146$
      003BE0                       3676 00145$:
                                   3677 ;	calc.c:223: else d1 = (unsigned long)d1 / (unsigned long)d0;
      003BE0 E5 08            [12] 3678 	mov	a,_bp
      003BE2 24 13            [12] 3679 	add	a,#0x13
      003BE4 F8               [12] 3680 	mov	r0,a
      003BE5 86 07            [24] 3681 	mov	ar7,@r0
      003BE7 08               [12] 3682 	inc	r0
      003BE8 86 06            [24] 3683 	mov	ar6,@r0
      003BEA 08               [12] 3684 	inc	r0
      003BEB 86 05            [24] 3685 	mov	ar5,@r0
      003BED 08               [12] 3686 	inc	r0
      003BEE 86 04            [24] 3687 	mov	ar4,@r0
      003BF0 E5 08            [12] 3688 	mov	a,_bp
      003BF2 24 0F            [12] 3689 	add	a,#0x0f
      003BF4 F8               [12] 3690 	mov	r0,a
      003BF5 E5 08            [12] 3691 	mov	a,_bp
      003BF7 24 08            [12] 3692 	add	a,#0x08
      003BF9 F9               [12] 3693 	mov	r1,a
      003BFA E6               [12] 3694 	mov	a,@r0
      003BFB F7               [12] 3695 	mov	@r1,a
      003BFC 08               [12] 3696 	inc	r0
      003BFD 09               [12] 3697 	inc	r1
      003BFE E6               [12] 3698 	mov	a,@r0
      003BFF F7               [12] 3699 	mov	@r1,a
      003C00 08               [12] 3700 	inc	r0
      003C01 09               [12] 3701 	inc	r1
      003C02 E6               [12] 3702 	mov	a,@r0
      003C03 F7               [12] 3703 	mov	@r1,a
      003C04 08               [12] 3704 	inc	r0
      003C05 09               [12] 3705 	inc	r1
      003C06 E6               [12] 3706 	mov	a,@r0
      003C07 F7               [12] 3707 	mov	@r1,a
      003C08 E5 08            [12] 3708 	mov	a,_bp
      003C0A 24 08            [12] 3709 	add	a,#0x08
      003C0C F8               [12] 3710 	mov	r0,a
      003C0D E6               [12] 3711 	mov	a,@r0
      003C0E C0 E0            [24] 3712 	push	acc
      003C10 08               [12] 3713 	inc	r0
      003C11 E6               [12] 3714 	mov	a,@r0
      003C12 C0 E0            [24] 3715 	push	acc
      003C14 08               [12] 3716 	inc	r0
      003C15 E6               [12] 3717 	mov	a,@r0
      003C16 C0 E0            [24] 3718 	push	acc
      003C18 08               [12] 3719 	inc	r0
      003C19 E6               [12] 3720 	mov	a,@r0
      003C1A C0 E0            [24] 3721 	push	acc
      003C1C 8F 82            [24] 3722 	mov	dpl,r7
      003C1E 8E 83            [24] 3723 	mov	dph,r6
      003C20 8D F0            [24] 3724 	mov	b,r5
      003C22 EC               [12] 3725 	mov	a,r4
      003C23 12 57 81         [24] 3726 	lcall	__divulong
      003C26 AF 82            [24] 3727 	mov	r7,dpl
      003C28 AE 83            [24] 3728 	mov	r6,dph
      003C2A AD F0            [24] 3729 	mov	r5,b
      003C2C FC               [12] 3730 	mov	r4,a
      003C2D E5 81            [12] 3731 	mov	a,sp
      003C2F 24 FC            [12] 3732 	add	a,#0xfc
      003C31 F5 81            [12] 3733 	mov	sp,a
      003C33 E5 08            [12] 3734 	mov	a,_bp
      003C35 24 13            [12] 3735 	add	a,#0x13
      003C37 F8               [12] 3736 	mov	r0,a
      003C38 A6 07            [24] 3737 	mov	@r0,ar7
      003C3A 08               [12] 3738 	inc	r0
      003C3B A6 06            [24] 3739 	mov	@r0,ar6
      003C3D 08               [12] 3740 	inc	r0
      003C3E A6 05            [24] 3741 	mov	@r0,ar5
      003C40 08               [12] 3742 	inc	r0
      003C41 A6 04            [24] 3743 	mov	@r0,ar4
      003C43                       3744 00146$:
                                   3745 ;	calc.c:224: (void)stack_push(&ctx->s, d1);
      003C43 E5 08            [12] 3746 	mov	a,_bp
      003C45 24 0C            [12] 3747 	add	a,#0x0c
      003C47 F8               [12] 3748 	mov	r0,a
      003C48 74 09            [12] 3749 	mov	a,#0x09
      003C4A 26               [12] 3750 	add	a,@r0
      003C4B FA               [12] 3751 	mov	r2,a
      003C4C E4               [12] 3752 	clr	a
      003C4D 08               [12] 3753 	inc	r0
      003C4E 36               [12] 3754 	addc	a,@r0
      003C4F FB               [12] 3755 	mov	r3,a
      003C50 08               [12] 3756 	inc	r0
      003C51 86 04            [24] 3757 	mov	ar4,@r0
      003C53 E5 08            [12] 3758 	mov	a,_bp
      003C55 24 13            [12] 3759 	add	a,#0x13
      003C57 F8               [12] 3760 	mov	r0,a
      003C58 E6               [12] 3761 	mov	a,@r0
      003C59 C0 E0            [24] 3762 	push	acc
      003C5B 08               [12] 3763 	inc	r0
      003C5C E6               [12] 3764 	mov	a,@r0
      003C5D C0 E0            [24] 3765 	push	acc
      003C5F 08               [12] 3766 	inc	r0
      003C60 E6               [12] 3767 	mov	a,@r0
      003C61 C0 E0            [24] 3768 	push	acc
      003C63 08               [12] 3769 	inc	r0
      003C64 E6               [12] 3770 	mov	a,@r0
      003C65 C0 E0            [24] 3771 	push	acc
      003C67 8A 82            [24] 3772 	mov	dpl,r2
      003C69 8B 83            [24] 3773 	mov	dph,r3
      003C6B 8C F0            [24] 3774 	mov	b,r4
      003C6D 12 26 B5         [24] 3775 	lcall	_stack_push
      003C70 E5 81            [12] 3776 	mov	a,sp
      003C72 24 FC            [12] 3777 	add	a,#0xfc
      003C74 F5 81            [12] 3778 	mov	sp,a
                                   3779 ;	calc.c:226: break;
      003C76 02 47 6E         [24] 3780 	ljmp	00217$
                                   3781 ;	calc.c:228: case '#':
      003C79                       3782 00157$:
                                   3783 ;	calc.c:229: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003C79 C0 05            [24] 3784 	push	ar5
      003C7B C0 06            [24] 3785 	push	ar6
      003C7D C0 07            [24] 3786 	push	ar7
      003C7F E5 08            [12] 3787 	mov	a,_bp
      003C81 24 0F            [12] 3788 	add	a,#0x0f
      003C83 FC               [12] 3789 	mov	r4,a
      003C84 7B 00            [12] 3790 	mov	r3,#0x00
      003C86 7A 40            [12] 3791 	mov	r2,#0x40
      003C88 E5 08            [12] 3792 	mov	a,_bp
      003C8A 24 0C            [12] 3793 	add	a,#0x0c
      003C8C F8               [12] 3794 	mov	r0,a
      003C8D 74 09            [12] 3795 	mov	a,#0x09
      003C8F 26               [12] 3796 	add	a,@r0
      003C90 FD               [12] 3797 	mov	r5,a
      003C91 E4               [12] 3798 	clr	a
      003C92 08               [12] 3799 	inc	r0
      003C93 36               [12] 3800 	addc	a,@r0
      003C94 FE               [12] 3801 	mov	r6,a
      003C95 08               [12] 3802 	inc	r0
      003C96 86 07            [24] 3803 	mov	ar7,@r0
      003C98 C0 05            [24] 3804 	push	ar5
      003C9A C0 04            [24] 3805 	push	ar4
      003C9C C0 03            [24] 3806 	push	ar3
      003C9E C0 02            [24] 3807 	push	ar2
      003CA0 8D 82            [24] 3808 	mov	dpl,r5
      003CA2 8E 83            [24] 3809 	mov	dph,r6
      003CA4 8F F0            [24] 3810 	mov	b,r7
      003CA6 12 27 7F         [24] 3811 	lcall	_stack_pop
      003CA9 AE 82            [24] 3812 	mov	r6,dpl
      003CAB AF 83            [24] 3813 	mov	r7,dph
      003CAD 15 81            [12] 3814 	dec	sp
      003CAF 15 81            [12] 3815 	dec	sp
      003CB1 15 81            [12] 3816 	dec	sp
      003CB3 D0 05            [24] 3817 	pop	ar5
      003CB5 EE               [12] 3818 	mov	a,r6
      003CB6 4F               [12] 3819 	orl	a,r7
      003CB7 D0 07            [24] 3820 	pop	ar7
      003CB9 D0 06            [24] 3821 	pop	ar6
      003CBB D0 05            [24] 3822 	pop	ar5
      003CBD 70 25            [24] 3823 	jnz	00168$
      003CBF 7F 46            [12] 3824 	mov	r7,#___str_8
      003CC1 7E 71            [12] 3825 	mov	r6,#(___str_8 >> 8)
      003CC3 7D 80            [12] 3826 	mov	r5,#0x80
                                   3827 ;	calc.c:50: return;
      003CC5                       3828 00369$:
                                   3829 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003CC5 8F 82            [24] 3830 	mov	dpl,r7
      003CC7 8E 83            [24] 3831 	mov	dph,r6
      003CC9 8D F0            [24] 3832 	mov	b,r5
      003CCB 12 58 8D         [24] 3833 	lcall	__gptrget
      003CCE FC               [12] 3834 	mov	r4,a
      003CCF 70 03            [24] 3835 	jnz	01081$
      003CD1 02 47 6E         [24] 3836 	ljmp	00217$
      003CD4                       3837 01081$:
      003CD4 7B 00            [12] 3838 	mov	r3,#0x00
      003CD6 8C 82            [24] 3839 	mov	dpl,r4
      003CD8 8B 83            [24] 3840 	mov	dph,r3
      003CDA 12 29 C0         [24] 3841 	lcall	_putchar
      003CDD 0F               [12] 3842 	inc	r7
                                   3843 ;	calc.c:229: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003CDE BF 00 E4         [24] 3844 	cjne	r7,#0x00,00369$
      003CE1 0E               [12] 3845 	inc	r6
      003CE2 80 E1            [24] 3846 	sjmp	00369$
      003CE4                       3847 00168$:
                                   3848 ;	calc.c:230: else if (!stack_pop(&ctx->s, &d1)) {
      003CE4 C0 05            [24] 3849 	push	ar5
      003CE6 C0 06            [24] 3850 	push	ar6
      003CE8 C0 07            [24] 3851 	push	ar7
      003CEA E5 08            [12] 3852 	mov	a,_bp
      003CEC 24 13            [12] 3853 	add	a,#0x13
      003CEE FC               [12] 3854 	mov	r4,a
      003CEF 7B 00            [12] 3855 	mov	r3,#0x00
      003CF1 7A 40            [12] 3856 	mov	r2,#0x40
      003CF3 E5 08            [12] 3857 	mov	a,_bp
      003CF5 24 0C            [12] 3858 	add	a,#0x0c
      003CF7 F8               [12] 3859 	mov	r0,a
      003CF8 74 09            [12] 3860 	mov	a,#0x09
      003CFA 26               [12] 3861 	add	a,@r0
      003CFB FD               [12] 3862 	mov	r5,a
      003CFC E4               [12] 3863 	clr	a
      003CFD 08               [12] 3864 	inc	r0
      003CFE 36               [12] 3865 	addc	a,@r0
      003CFF FE               [12] 3866 	mov	r6,a
      003D00 08               [12] 3867 	inc	r0
      003D01 86 07            [24] 3868 	mov	ar7,@r0
      003D03 C0 05            [24] 3869 	push	ar5
      003D05 C0 04            [24] 3870 	push	ar4
      003D07 C0 03            [24] 3871 	push	ar3
      003D09 C0 02            [24] 3872 	push	ar2
      003D0B 8D 82            [24] 3873 	mov	dpl,r5
      003D0D 8E 83            [24] 3874 	mov	dph,r6
      003D0F 8F F0            [24] 3875 	mov	b,r7
      003D11 12 27 7F         [24] 3876 	lcall	_stack_pop
      003D14 AE 82            [24] 3877 	mov	r6,dpl
      003D16 AF 83            [24] 3878 	mov	r7,dph
      003D18 15 81            [12] 3879 	dec	sp
      003D1A 15 81            [12] 3880 	dec	sp
      003D1C 15 81            [12] 3881 	dec	sp
      003D1E D0 05            [24] 3882 	pop	ar5
      003D20 EE               [12] 3883 	mov	a,r6
      003D21 4F               [12] 3884 	orl	a,r7
      003D22 D0 07            [24] 3885 	pop	ar7
      003D24 D0 06            [24] 3886 	pop	ar6
      003D26 D0 05            [24] 3887 	pop	ar5
      003D28 70 58            [24] 3888 	jnz	00165$
                                   3889 ;	calc.c:231: (void)stack_push(&ctx->s, d0);
      003D2A E5 08            [12] 3890 	mov	a,_bp
      003D2C 24 0C            [12] 3891 	add	a,#0x0c
      003D2E F8               [12] 3892 	mov	r0,a
      003D2F 74 09            [12] 3893 	mov	a,#0x09
      003D31 26               [12] 3894 	add	a,@r0
      003D32 FA               [12] 3895 	mov	r2,a
      003D33 E4               [12] 3896 	clr	a
      003D34 08               [12] 3897 	inc	r0
      003D35 36               [12] 3898 	addc	a,@r0
      003D36 FB               [12] 3899 	mov	r3,a
      003D37 08               [12] 3900 	inc	r0
      003D38 86 04            [24] 3901 	mov	ar4,@r0
      003D3A E5 08            [12] 3902 	mov	a,_bp
      003D3C 24 0F            [12] 3903 	add	a,#0x0f
      003D3E F8               [12] 3904 	mov	r0,a
      003D3F E6               [12] 3905 	mov	a,@r0
      003D40 C0 E0            [24] 3906 	push	acc
      003D42 08               [12] 3907 	inc	r0
      003D43 E6               [12] 3908 	mov	a,@r0
      003D44 C0 E0            [24] 3909 	push	acc
      003D46 08               [12] 3910 	inc	r0
      003D47 E6               [12] 3911 	mov	a,@r0
      003D48 C0 E0            [24] 3912 	push	acc
      003D4A 08               [12] 3913 	inc	r0
      003D4B E6               [12] 3914 	mov	a,@r0
      003D4C C0 E0            [24] 3915 	push	acc
      003D4E 8A 82            [24] 3916 	mov	dpl,r2
      003D50 8B 83            [24] 3917 	mov	dph,r3
      003D52 8C F0            [24] 3918 	mov	b,r4
      003D54 12 26 B5         [24] 3919 	lcall	_stack_push
      003D57 E5 81            [12] 3920 	mov	a,sp
      003D59 24 FC            [12] 3921 	add	a,#0xfc
      003D5B F5 81            [12] 3922 	mov	sp,a
                                   3923 ;	calc.c:232: printstr("\r\nstack underflow\r\n");
      003D5D 7F 46            [12] 3924 	mov	r7,#___str_8
      003D5F 7E 71            [12] 3925 	mov	r6,#(___str_8 >> 8)
      003D61 7D 80            [12] 3926 	mov	r5,#0x80
                                   3927 ;	calc.c:50: return;
      003D63                       3928 00372$:
                                   3929 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003D63 8F 82            [24] 3930 	mov	dpl,r7
      003D65 8E 83            [24] 3931 	mov	dph,r6
      003D67 8D F0            [24] 3932 	mov	b,r5
      003D69 12 58 8D         [24] 3933 	lcall	__gptrget
      003D6C FC               [12] 3934 	mov	r4,a
      003D6D 70 03            [24] 3935 	jnz	01084$
      003D6F 02 47 6E         [24] 3936 	ljmp	00217$
      003D72                       3937 01084$:
      003D72 7B 00            [12] 3938 	mov	r3,#0x00
      003D74 8C 82            [24] 3939 	mov	dpl,r4
      003D76 8B 83            [24] 3940 	mov	dph,r3
      003D78 12 29 C0         [24] 3941 	lcall	_putchar
      003D7B 0F               [12] 3942 	inc	r7
                                   3943 ;	calc.c:232: printstr("\r\nstack underflow\r\n");
      003D7C BF 00 E4         [24] 3944 	cjne	r7,#0x00,00372$
      003D7F 0E               [12] 3945 	inc	r6
      003D80 80 E1            [24] 3946 	sjmp	00372$
      003D82                       3947 00165$:
                                   3948 ;	calc.c:233: } else if (!d0) {
      003D82 E5 08            [12] 3949 	mov	a,_bp
      003D84 24 0F            [12] 3950 	add	a,#0x0f
      003D86 F8               [12] 3951 	mov	r0,a
      003D87 E6               [12] 3952 	mov	a,@r0
      003D88 08               [12] 3953 	inc	r0
      003D89 46               [12] 3954 	orl	a,@r0
      003D8A 08               [12] 3955 	inc	r0
      003D8B 46               [12] 3956 	orl	a,@r0
      003D8C 08               [12] 3957 	inc	r0
      003D8D 46               [12] 3958 	orl	a,@r0
      003D8E 60 03            [24] 3959 	jz	01086$
      003D90 02 3E 1E         [24] 3960 	ljmp	00162$
      003D93                       3961 01086$:
                                   3962 ;	calc.c:234: (void)stack_push(&ctx->s, d1);
      003D93 E5 08            [12] 3963 	mov	a,_bp
      003D95 24 0C            [12] 3964 	add	a,#0x0c
      003D97 F8               [12] 3965 	mov	r0,a
      003D98 74 09            [12] 3966 	mov	a,#0x09
      003D9A 26               [12] 3967 	add	a,@r0
      003D9B FA               [12] 3968 	mov	r2,a
      003D9C E4               [12] 3969 	clr	a
      003D9D 08               [12] 3970 	inc	r0
      003D9E 36               [12] 3971 	addc	a,@r0
      003D9F FB               [12] 3972 	mov	r3,a
      003DA0 08               [12] 3973 	inc	r0
      003DA1 86 04            [24] 3974 	mov	ar4,@r0
      003DA3 E5 08            [12] 3975 	mov	a,_bp
      003DA5 24 13            [12] 3976 	add	a,#0x13
      003DA7 F8               [12] 3977 	mov	r0,a
      003DA8 E6               [12] 3978 	mov	a,@r0
      003DA9 C0 E0            [24] 3979 	push	acc
      003DAB 08               [12] 3980 	inc	r0
      003DAC E6               [12] 3981 	mov	a,@r0
      003DAD C0 E0            [24] 3982 	push	acc
      003DAF 08               [12] 3983 	inc	r0
      003DB0 E6               [12] 3984 	mov	a,@r0
      003DB1 C0 E0            [24] 3985 	push	acc
      003DB3 08               [12] 3986 	inc	r0
      003DB4 E6               [12] 3987 	mov	a,@r0
      003DB5 C0 E0            [24] 3988 	push	acc
      003DB7 8A 82            [24] 3989 	mov	dpl,r2
      003DB9 8B 83            [24] 3990 	mov	dph,r3
      003DBB 8C F0            [24] 3991 	mov	b,r4
      003DBD 12 26 B5         [24] 3992 	lcall	_stack_push
      003DC0 E5 81            [12] 3993 	mov	a,sp
      003DC2 24 FC            [12] 3994 	add	a,#0xfc
      003DC4 F5 81            [12] 3995 	mov	sp,a
                                   3996 ;	calc.c:235: (void)stack_push(&ctx->s, d0);			
      003DC6 E5 08            [12] 3997 	mov	a,_bp
      003DC8 24 0C            [12] 3998 	add	a,#0x0c
      003DCA F8               [12] 3999 	mov	r0,a
      003DCB 74 09            [12] 4000 	mov	a,#0x09
      003DCD 26               [12] 4001 	add	a,@r0
      003DCE FA               [12] 4002 	mov	r2,a
      003DCF E4               [12] 4003 	clr	a
      003DD0 08               [12] 4004 	inc	r0
      003DD1 36               [12] 4005 	addc	a,@r0
      003DD2 FB               [12] 4006 	mov	r3,a
      003DD3 08               [12] 4007 	inc	r0
      003DD4 86 04            [24] 4008 	mov	ar4,@r0
      003DD6 E5 08            [12] 4009 	mov	a,_bp
      003DD8 24 0F            [12] 4010 	add	a,#0x0f
      003DDA F8               [12] 4011 	mov	r0,a
      003DDB E6               [12] 4012 	mov	a,@r0
      003DDC C0 E0            [24] 4013 	push	acc
      003DDE 08               [12] 4014 	inc	r0
      003DDF E6               [12] 4015 	mov	a,@r0
      003DE0 C0 E0            [24] 4016 	push	acc
      003DE2 08               [12] 4017 	inc	r0
      003DE3 E6               [12] 4018 	mov	a,@r0
      003DE4 C0 E0            [24] 4019 	push	acc
      003DE6 08               [12] 4020 	inc	r0
      003DE7 E6               [12] 4021 	mov	a,@r0
      003DE8 C0 E0            [24] 4022 	push	acc
      003DEA 8A 82            [24] 4023 	mov	dpl,r2
      003DEC 8B 83            [24] 4024 	mov	dph,r3
      003DEE 8C F0            [24] 4025 	mov	b,r4
      003DF0 12 26 B5         [24] 4026 	lcall	_stack_push
      003DF3 E5 81            [12] 4027 	mov	a,sp
      003DF5 24 FC            [12] 4028 	add	a,#0xfc
      003DF7 F5 81            [12] 4029 	mov	sp,a
                                   4030 ;	calc.c:236: printstr("\r\ndivision by zero\r\n");
      003DF9 7F 5A            [12] 4031 	mov	r7,#___str_9
      003DFB 7E 71            [12] 4032 	mov	r6,#(___str_9 >> 8)
      003DFD 7D 80            [12] 4033 	mov	r5,#0x80
                                   4034 ;	calc.c:50: return;
      003DFF                       4035 00375$:
                                   4036 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003DFF 8F 82            [24] 4037 	mov	dpl,r7
      003E01 8E 83            [24] 4038 	mov	dph,r6
      003E03 8D F0            [24] 4039 	mov	b,r5
      003E05 12 58 8D         [24] 4040 	lcall	__gptrget
      003E08 FC               [12] 4041 	mov	r4,a
      003E09 70 03            [24] 4042 	jnz	01087$
      003E0B 02 47 6E         [24] 4043 	ljmp	00217$
      003E0E                       4044 01087$:
      003E0E 7B 00            [12] 4045 	mov	r3,#0x00
      003E10 8C 82            [24] 4046 	mov	dpl,r4
      003E12 8B 83            [24] 4047 	mov	dph,r3
      003E14 12 29 C0         [24] 4048 	lcall	_putchar
      003E17 0F               [12] 4049 	inc	r7
                                   4050 ;	calc.c:236: printstr("\r\ndivision by zero\r\n");
      003E18 BF 00 E4         [24] 4051 	cjne	r7,#0x00,00375$
      003E1B 0E               [12] 4052 	inc	r6
      003E1C 80 E1            [24] 4053 	sjmp	00375$
      003E1E                       4054 00162$:
                                   4055 ;	calc.c:238: if (ctx->digit[0] == '%') d1 %= d0;
      003E1E 8D 82            [24] 4056 	mov	dpl,r5
      003E20 8E 83            [24] 4057 	mov	dph,r6
      003E22 8F F0            [24] 4058 	mov	b,r7
      003E24 12 58 8D         [24] 4059 	lcall	__gptrget
      003E27 FD               [12] 4060 	mov	r5,a
      003E28 BD 25 45         [24] 4061 	cjne	r5,#0x25,00159$
      003E2B E5 08            [12] 4062 	mov	a,_bp
      003E2D 24 0F            [12] 4063 	add	a,#0x0f
      003E2F F8               [12] 4064 	mov	r0,a
      003E30 E6               [12] 4065 	mov	a,@r0
      003E31 C0 E0            [24] 4066 	push	acc
      003E33 08               [12] 4067 	inc	r0
      003E34 E6               [12] 4068 	mov	a,@r0
      003E35 C0 E0            [24] 4069 	push	acc
      003E37 08               [12] 4070 	inc	r0
      003E38 E6               [12] 4071 	mov	a,@r0
      003E39 C0 E0            [24] 4072 	push	acc
      003E3B 08               [12] 4073 	inc	r0
      003E3C E6               [12] 4074 	mov	a,@r0
      003E3D C0 E0            [24] 4075 	push	acc
      003E3F E5 08            [12] 4076 	mov	a,_bp
      003E41 24 13            [12] 4077 	add	a,#0x13
      003E43 F8               [12] 4078 	mov	r0,a
      003E44 86 82            [24] 4079 	mov	dpl,@r0
      003E46 08               [12] 4080 	inc	r0
      003E47 86 83            [24] 4081 	mov	dph,@r0
      003E49 08               [12] 4082 	inc	r0
      003E4A 86 F0            [24] 4083 	mov	b,@r0
      003E4C 08               [12] 4084 	inc	r0
      003E4D E6               [12] 4085 	mov	a,@r0
      003E4E 12 54 CB         [24] 4086 	lcall	__modslong
      003E51 AC 82            [24] 4087 	mov	r4,dpl
      003E53 AD 83            [24] 4088 	mov	r5,dph
      003E55 AE F0            [24] 4089 	mov	r6,b
      003E57 FF               [12] 4090 	mov	r7,a
      003E58 E5 81            [12] 4091 	mov	a,sp
      003E5A 24 FC            [12] 4092 	add	a,#0xfc
      003E5C F5 81            [12] 4093 	mov	sp,a
      003E5E E5 08            [12] 4094 	mov	a,_bp
      003E60 24 13            [12] 4095 	add	a,#0x13
      003E62 F8               [12] 4096 	mov	r0,a
      003E63 A6 04            [24] 4097 	mov	@r0,ar4
      003E65 08               [12] 4098 	inc	r0
      003E66 A6 05            [24] 4099 	mov	@r0,ar5
      003E68 08               [12] 4100 	inc	r0
      003E69 A6 06            [24] 4101 	mov	@r0,ar6
      003E6B 08               [12] 4102 	inc	r0
      003E6C A6 07            [24] 4103 	mov	@r0,ar7
      003E6E 80 5F            [24] 4104 	sjmp	00160$
      003E70                       4105 00159$:
                                   4106 ;	calc.c:239: else d1 = (unsigned long)d1 % (unsigned long)d0;
      003E70 E5 08            [12] 4107 	mov	a,_bp
      003E72 24 13            [12] 4108 	add	a,#0x13
      003E74 F8               [12] 4109 	mov	r0,a
      003E75 E5 08            [12] 4110 	mov	a,_bp
      003E77 24 08            [12] 4111 	add	a,#0x08
      003E79 F9               [12] 4112 	mov	r1,a
      003E7A E6               [12] 4113 	mov	a,@r0
      003E7B F7               [12] 4114 	mov	@r1,a
      003E7C 08               [12] 4115 	inc	r0
      003E7D 09               [12] 4116 	inc	r1
      003E7E E6               [12] 4117 	mov	a,@r0
      003E7F F7               [12] 4118 	mov	@r1,a
      003E80 08               [12] 4119 	inc	r0
      003E81 09               [12] 4120 	inc	r1
      003E82 E6               [12] 4121 	mov	a,@r0
      003E83 F7               [12] 4122 	mov	@r1,a
      003E84 08               [12] 4123 	inc	r0
      003E85 09               [12] 4124 	inc	r1
      003E86 E6               [12] 4125 	mov	a,@r0
      003E87 F7               [12] 4126 	mov	@r1,a
      003E88 E5 08            [12] 4127 	mov	a,_bp
      003E8A 24 0F            [12] 4128 	add	a,#0x0f
      003E8C F8               [12] 4129 	mov	r0,a
      003E8D 86 02            [24] 4130 	mov	ar2,@r0
      003E8F 08               [12] 4131 	inc	r0
      003E90 86 03            [24] 4132 	mov	ar3,@r0
      003E92 08               [12] 4133 	inc	r0
      003E93 86 06            [24] 4134 	mov	ar6,@r0
      003E95 08               [12] 4135 	inc	r0
      003E96 86 07            [24] 4136 	mov	ar7,@r0
      003E98 C0 02            [24] 4137 	push	ar2
      003E9A C0 03            [24] 4138 	push	ar3
      003E9C C0 06            [24] 4139 	push	ar6
      003E9E C0 07            [24] 4140 	push	ar7
      003EA0 E5 08            [12] 4141 	mov	a,_bp
      003EA2 24 08            [12] 4142 	add	a,#0x08
      003EA4 F8               [12] 4143 	mov	r0,a
      003EA5 86 82            [24] 4144 	mov	dpl,@r0
      003EA7 08               [12] 4145 	inc	r0
      003EA8 86 83            [24] 4146 	mov	dph,@r0
      003EAA 08               [12] 4147 	inc	r0
      003EAB 86 F0            [24] 4148 	mov	b,@r0
      003EAD 08               [12] 4149 	inc	r0
      003EAE E6               [12] 4150 	mov	a,@r0
      003EAF 12 55 C2         [24] 4151 	lcall	__modulong
      003EB2 AC 82            [24] 4152 	mov	r4,dpl
      003EB4 AD 83            [24] 4153 	mov	r5,dph
      003EB6 AE F0            [24] 4154 	mov	r6,b
      003EB8 FF               [12] 4155 	mov	r7,a
      003EB9 E5 81            [12] 4156 	mov	a,sp
      003EBB 24 FC            [12] 4157 	add	a,#0xfc
      003EBD F5 81            [12] 4158 	mov	sp,a
      003EBF E5 08            [12] 4159 	mov	a,_bp
      003EC1 24 13            [12] 4160 	add	a,#0x13
      003EC3 F8               [12] 4161 	mov	r0,a
      003EC4 A6 04            [24] 4162 	mov	@r0,ar4
      003EC6 08               [12] 4163 	inc	r0
      003EC7 A6 05            [24] 4164 	mov	@r0,ar5
      003EC9 08               [12] 4165 	inc	r0
      003ECA A6 06            [24] 4166 	mov	@r0,ar6
      003ECC 08               [12] 4167 	inc	r0
      003ECD A6 07            [24] 4168 	mov	@r0,ar7
      003ECF                       4169 00160$:
                                   4170 ;	calc.c:240: (void)stack_push(&ctx->s, d1);
      003ECF E5 08            [12] 4171 	mov	a,_bp
      003ED1 24 0C            [12] 4172 	add	a,#0x0c
      003ED3 F8               [12] 4173 	mov	r0,a
      003ED4 74 09            [12] 4174 	mov	a,#0x09
      003ED6 26               [12] 4175 	add	a,@r0
      003ED7 FD               [12] 4176 	mov	r5,a
      003ED8 E4               [12] 4177 	clr	a
      003ED9 08               [12] 4178 	inc	r0
      003EDA 36               [12] 4179 	addc	a,@r0
      003EDB FE               [12] 4180 	mov	r6,a
      003EDC 08               [12] 4181 	inc	r0
      003EDD 86 07            [24] 4182 	mov	ar7,@r0
      003EDF E5 08            [12] 4183 	mov	a,_bp
      003EE1 24 13            [12] 4184 	add	a,#0x13
      003EE3 F8               [12] 4185 	mov	r0,a
      003EE4 E6               [12] 4186 	mov	a,@r0
      003EE5 C0 E0            [24] 4187 	push	acc
      003EE7 08               [12] 4188 	inc	r0
      003EE8 E6               [12] 4189 	mov	a,@r0
      003EE9 C0 E0            [24] 4190 	push	acc
      003EEB 08               [12] 4191 	inc	r0
      003EEC E6               [12] 4192 	mov	a,@r0
      003EED C0 E0            [24] 4193 	push	acc
      003EEF 08               [12] 4194 	inc	r0
      003EF0 E6               [12] 4195 	mov	a,@r0
      003EF1 C0 E0            [24] 4196 	push	acc
      003EF3 8D 82            [24] 4197 	mov	dpl,r5
      003EF5 8E 83            [24] 4198 	mov	dph,r6
      003EF7 8F F0            [24] 4199 	mov	b,r7
      003EF9 12 26 B5         [24] 4200 	lcall	_stack_push
      003EFC E5 81            [12] 4201 	mov	a,sp
      003EFE 24 FC            [12] 4202 	add	a,#0xfc
      003F00 F5 81            [12] 4203 	mov	sp,a
                                   4204 ;	calc.c:242: break;
      003F02 02 47 6E         [24] 4205 	ljmp	00217$
                                   4206 ;	calc.c:243: case '&':
      003F05                       4207 00170$:
                                   4208 ;	calc.c:244: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003F05 E5 08            [12] 4209 	mov	a,_bp
      003F07 24 0F            [12] 4210 	add	a,#0x0f
      003F09 FF               [12] 4211 	mov	r7,a
      003F0A 7E 00            [12] 4212 	mov	r6,#0x00
      003F0C 7D 40            [12] 4213 	mov	r5,#0x40
      003F0E E5 08            [12] 4214 	mov	a,_bp
      003F10 24 0C            [12] 4215 	add	a,#0x0c
      003F12 F8               [12] 4216 	mov	r0,a
      003F13 74 09            [12] 4217 	mov	a,#0x09
      003F15 26               [12] 4218 	add	a,@r0
      003F16 FA               [12] 4219 	mov	r2,a
      003F17 E4               [12] 4220 	clr	a
      003F18 08               [12] 4221 	inc	r0
      003F19 36               [12] 4222 	addc	a,@r0
      003F1A FB               [12] 4223 	mov	r3,a
      003F1B 08               [12] 4224 	inc	r0
      003F1C 86 04            [24] 4225 	mov	ar4,@r0
      003F1E C0 07            [24] 4226 	push	ar7
      003F20 C0 06            [24] 4227 	push	ar6
      003F22 C0 05            [24] 4228 	push	ar5
      003F24 8A 82            [24] 4229 	mov	dpl,r2
      003F26 8B 83            [24] 4230 	mov	dph,r3
      003F28 8C F0            [24] 4231 	mov	b,r4
      003F2A 12 27 7F         [24] 4232 	lcall	_stack_pop
      003F2D AE 82            [24] 4233 	mov	r6,dpl
      003F2F AF 83            [24] 4234 	mov	r7,dph
      003F31 15 81            [12] 4235 	dec	sp
      003F33 15 81            [12] 4236 	dec	sp
      003F35 15 81            [12] 4237 	dec	sp
      003F37 EE               [12] 4238 	mov	a,r6
      003F38 4F               [12] 4239 	orl	a,r7
      003F39 70 25            [24] 4240 	jnz	00175$
      003F3B 7D 46            [12] 4241 	mov	r5,#___str_8
      003F3D 7E 71            [12] 4242 	mov	r6,#(___str_8 >> 8)
      003F3F 7F 80            [12] 4243 	mov	r7,#0x80
                                   4244 ;	calc.c:50: return;
      003F41                       4245 00378$:
                                   4246 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003F41 8D 82            [24] 4247 	mov	dpl,r5
      003F43 8E 83            [24] 4248 	mov	dph,r6
      003F45 8F F0            [24] 4249 	mov	b,r7
      003F47 12 58 8D         [24] 4250 	lcall	__gptrget
      003F4A FC               [12] 4251 	mov	r4,a
      003F4B 70 03            [24] 4252 	jnz	01092$
      003F4D 02 47 6E         [24] 4253 	ljmp	00217$
      003F50                       4254 01092$:
      003F50 7B 00            [12] 4255 	mov	r3,#0x00
      003F52 8C 82            [24] 4256 	mov	dpl,r4
      003F54 8B 83            [24] 4257 	mov	dph,r3
      003F56 12 29 C0         [24] 4258 	lcall	_putchar
      003F59 0D               [12] 4259 	inc	r5
                                   4260 ;	calc.c:244: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003F5A BD 00 E4         [24] 4261 	cjne	r5,#0x00,00378$
      003F5D 0E               [12] 4262 	inc	r6
      003F5E 80 E1            [24] 4263 	sjmp	00378$
      003F60                       4264 00175$:
                                   4265 ;	calc.c:245: else if (!stack_pop(&ctx->s, &d1)) {
      003F60 E5 08            [12] 4266 	mov	a,_bp
      003F62 24 13            [12] 4267 	add	a,#0x13
      003F64 FF               [12] 4268 	mov	r7,a
      003F65 7E 00            [12] 4269 	mov	r6,#0x00
      003F67 7D 40            [12] 4270 	mov	r5,#0x40
      003F69 E5 08            [12] 4271 	mov	a,_bp
      003F6B 24 0C            [12] 4272 	add	a,#0x0c
      003F6D F8               [12] 4273 	mov	r0,a
      003F6E 74 09            [12] 4274 	mov	a,#0x09
      003F70 26               [12] 4275 	add	a,@r0
      003F71 FA               [12] 4276 	mov	r2,a
      003F72 E4               [12] 4277 	clr	a
      003F73 08               [12] 4278 	inc	r0
      003F74 36               [12] 4279 	addc	a,@r0
      003F75 FB               [12] 4280 	mov	r3,a
      003F76 08               [12] 4281 	inc	r0
      003F77 86 04            [24] 4282 	mov	ar4,@r0
      003F79 C0 07            [24] 4283 	push	ar7
      003F7B C0 06            [24] 4284 	push	ar6
      003F7D C0 05            [24] 4285 	push	ar5
      003F7F 8A 82            [24] 4286 	mov	dpl,r2
      003F81 8B 83            [24] 4287 	mov	dph,r3
      003F83 8C F0            [24] 4288 	mov	b,r4
      003F85 12 27 7F         [24] 4289 	lcall	_stack_pop
      003F88 AE 82            [24] 4290 	mov	r6,dpl
      003F8A AF 83            [24] 4291 	mov	r7,dph
      003F8C 15 81            [12] 4292 	dec	sp
      003F8E 15 81            [12] 4293 	dec	sp
      003F90 15 81            [12] 4294 	dec	sp
      003F92 EE               [12] 4295 	mov	a,r6
      003F93 4F               [12] 4296 	orl	a,r7
      003F94 70 58            [24] 4297 	jnz	00172$
                                   4298 ;	calc.c:246: (void)stack_push(&ctx->s, d0);
      003F96 E5 08            [12] 4299 	mov	a,_bp
      003F98 24 0C            [12] 4300 	add	a,#0x0c
      003F9A F8               [12] 4301 	mov	r0,a
      003F9B 74 09            [12] 4302 	mov	a,#0x09
      003F9D 26               [12] 4303 	add	a,@r0
      003F9E FD               [12] 4304 	mov	r5,a
      003F9F E4               [12] 4305 	clr	a
      003FA0 08               [12] 4306 	inc	r0
      003FA1 36               [12] 4307 	addc	a,@r0
      003FA2 FE               [12] 4308 	mov	r6,a
      003FA3 08               [12] 4309 	inc	r0
      003FA4 86 07            [24] 4310 	mov	ar7,@r0
      003FA6 E5 08            [12] 4311 	mov	a,_bp
      003FA8 24 0F            [12] 4312 	add	a,#0x0f
      003FAA F8               [12] 4313 	mov	r0,a
      003FAB E6               [12] 4314 	mov	a,@r0
      003FAC C0 E0            [24] 4315 	push	acc
      003FAE 08               [12] 4316 	inc	r0
      003FAF E6               [12] 4317 	mov	a,@r0
      003FB0 C0 E0            [24] 4318 	push	acc
      003FB2 08               [12] 4319 	inc	r0
      003FB3 E6               [12] 4320 	mov	a,@r0
      003FB4 C0 E0            [24] 4321 	push	acc
      003FB6 08               [12] 4322 	inc	r0
      003FB7 E6               [12] 4323 	mov	a,@r0
      003FB8 C0 E0            [24] 4324 	push	acc
      003FBA 8D 82            [24] 4325 	mov	dpl,r5
      003FBC 8E 83            [24] 4326 	mov	dph,r6
      003FBE 8F F0            [24] 4327 	mov	b,r7
      003FC0 12 26 B5         [24] 4328 	lcall	_stack_push
      003FC3 E5 81            [12] 4329 	mov	a,sp
      003FC5 24 FC            [12] 4330 	add	a,#0xfc
      003FC7 F5 81            [12] 4331 	mov	sp,a
                                   4332 ;	calc.c:247: printstr("\r\nstack underflow\r\n");
      003FC9 7D 46            [12] 4333 	mov	r5,#___str_8
      003FCB 7E 71            [12] 4334 	mov	r6,#(___str_8 >> 8)
      003FCD 7F 80            [12] 4335 	mov	r7,#0x80
                                   4336 ;	calc.c:50: return;
      003FCF                       4337 00381$:
                                   4338 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003FCF 8D 82            [24] 4339 	mov	dpl,r5
      003FD1 8E 83            [24] 4340 	mov	dph,r6
      003FD3 8F F0            [24] 4341 	mov	b,r7
      003FD5 12 58 8D         [24] 4342 	lcall	__gptrget
      003FD8 FC               [12] 4343 	mov	r4,a
      003FD9 70 03            [24] 4344 	jnz	01095$
      003FDB 02 47 6E         [24] 4345 	ljmp	00217$
      003FDE                       4346 01095$:
      003FDE 7B 00            [12] 4347 	mov	r3,#0x00
      003FE0 8C 82            [24] 4348 	mov	dpl,r4
      003FE2 8B 83            [24] 4349 	mov	dph,r3
      003FE4 12 29 C0         [24] 4350 	lcall	_putchar
      003FE7 0D               [12] 4351 	inc	r5
                                   4352 ;	calc.c:247: printstr("\r\nstack underflow\r\n");
      003FE8 BD 00 E4         [24] 4353 	cjne	r5,#0x00,00381$
      003FEB 0E               [12] 4354 	inc	r6
      003FEC 80 E1            [24] 4355 	sjmp	00381$
      003FEE                       4356 00172$:
                                   4357 ;	calc.c:249: d1 &= d0;
      003FEE E5 08            [12] 4358 	mov	a,_bp
      003FF0 24 13            [12] 4359 	add	a,#0x13
      003FF2 F8               [12] 4360 	mov	r0,a
      003FF3 E5 08            [12] 4361 	mov	a,_bp
      003FF5 24 0F            [12] 4362 	add	a,#0x0f
      003FF7 F9               [12] 4363 	mov	r1,a
      003FF8 E7               [12] 4364 	mov	a,@r1
      003FF9 56               [12] 4365 	anl	a,@r0
      003FFA F6               [12] 4366 	mov	@r0,a
      003FFB 09               [12] 4367 	inc	r1
      003FFC E7               [12] 4368 	mov	a,@r1
      003FFD 08               [12] 4369 	inc	r0
      003FFE 56               [12] 4370 	anl	a,@r0
      003FFF F6               [12] 4371 	mov	@r0,a
      004000 09               [12] 4372 	inc	r1
      004001 E7               [12] 4373 	mov	a,@r1
      004002 08               [12] 4374 	inc	r0
      004003 56               [12] 4375 	anl	a,@r0
      004004 F6               [12] 4376 	mov	@r0,a
      004005 09               [12] 4377 	inc	r1
      004006 E7               [12] 4378 	mov	a,@r1
      004007 08               [12] 4379 	inc	r0
      004008 56               [12] 4380 	anl	a,@r0
      004009 F6               [12] 4381 	mov	@r0,a
                                   4382 ;	calc.c:250: (void)stack_push(&ctx->s, d1);
      00400A E5 08            [12] 4383 	mov	a,_bp
      00400C 24 0C            [12] 4384 	add	a,#0x0c
      00400E F8               [12] 4385 	mov	r0,a
      00400F 74 09            [12] 4386 	mov	a,#0x09
      004011 26               [12] 4387 	add	a,@r0
      004012 FD               [12] 4388 	mov	r5,a
      004013 E4               [12] 4389 	clr	a
      004014 08               [12] 4390 	inc	r0
      004015 36               [12] 4391 	addc	a,@r0
      004016 FE               [12] 4392 	mov	r6,a
      004017 08               [12] 4393 	inc	r0
      004018 86 07            [24] 4394 	mov	ar7,@r0
      00401A E5 08            [12] 4395 	mov	a,_bp
      00401C 24 13            [12] 4396 	add	a,#0x13
      00401E F8               [12] 4397 	mov	r0,a
      00401F E6               [12] 4398 	mov	a,@r0
      004020 C0 E0            [24] 4399 	push	acc
      004022 08               [12] 4400 	inc	r0
      004023 E6               [12] 4401 	mov	a,@r0
      004024 C0 E0            [24] 4402 	push	acc
      004026 08               [12] 4403 	inc	r0
      004027 E6               [12] 4404 	mov	a,@r0
      004028 C0 E0            [24] 4405 	push	acc
      00402A 08               [12] 4406 	inc	r0
      00402B E6               [12] 4407 	mov	a,@r0
      00402C C0 E0            [24] 4408 	push	acc
      00402E 8D 82            [24] 4409 	mov	dpl,r5
      004030 8E 83            [24] 4410 	mov	dph,r6
      004032 8F F0            [24] 4411 	mov	b,r7
      004034 12 26 B5         [24] 4412 	lcall	_stack_push
      004037 E5 81            [12] 4413 	mov	a,sp
      004039 24 FC            [12] 4414 	add	a,#0xfc
      00403B F5 81            [12] 4415 	mov	sp,a
                                   4416 ;	calc.c:252: break;
      00403D 02 47 6E         [24] 4417 	ljmp	00217$
                                   4418 ;	calc.c:253: case '|':
      004040                       4419 00177$:
                                   4420 ;	calc.c:254: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004040 E5 08            [12] 4421 	mov	a,_bp
      004042 24 0F            [12] 4422 	add	a,#0x0f
      004044 FF               [12] 4423 	mov	r7,a
      004045 7E 00            [12] 4424 	mov	r6,#0x00
      004047 7D 40            [12] 4425 	mov	r5,#0x40
      004049 E5 08            [12] 4426 	mov	a,_bp
      00404B 24 0C            [12] 4427 	add	a,#0x0c
      00404D F8               [12] 4428 	mov	r0,a
      00404E 74 09            [12] 4429 	mov	a,#0x09
      004050 26               [12] 4430 	add	a,@r0
      004051 FA               [12] 4431 	mov	r2,a
      004052 E4               [12] 4432 	clr	a
      004053 08               [12] 4433 	inc	r0
      004054 36               [12] 4434 	addc	a,@r0
      004055 FB               [12] 4435 	mov	r3,a
      004056 08               [12] 4436 	inc	r0
      004057 86 04            [24] 4437 	mov	ar4,@r0
      004059 C0 07            [24] 4438 	push	ar7
      00405B C0 06            [24] 4439 	push	ar6
      00405D C0 05            [24] 4440 	push	ar5
      00405F 8A 82            [24] 4441 	mov	dpl,r2
      004061 8B 83            [24] 4442 	mov	dph,r3
      004063 8C F0            [24] 4443 	mov	b,r4
      004065 12 27 7F         [24] 4444 	lcall	_stack_pop
      004068 AE 82            [24] 4445 	mov	r6,dpl
      00406A AF 83            [24] 4446 	mov	r7,dph
      00406C 15 81            [12] 4447 	dec	sp
      00406E 15 81            [12] 4448 	dec	sp
      004070 15 81            [12] 4449 	dec	sp
      004072 EE               [12] 4450 	mov	a,r6
      004073 4F               [12] 4451 	orl	a,r7
      004074 70 25            [24] 4452 	jnz	00182$
      004076 7D 46            [12] 4453 	mov	r5,#___str_8
      004078 7E 71            [12] 4454 	mov	r6,#(___str_8 >> 8)
      00407A 7F 80            [12] 4455 	mov	r7,#0x80
                                   4456 ;	calc.c:50: return;
      00407C                       4457 00384$:
                                   4458 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00407C 8D 82            [24] 4459 	mov	dpl,r5
      00407E 8E 83            [24] 4460 	mov	dph,r6
      004080 8F F0            [24] 4461 	mov	b,r7
      004082 12 58 8D         [24] 4462 	lcall	__gptrget
      004085 FC               [12] 4463 	mov	r4,a
      004086 70 03            [24] 4464 	jnz	01098$
      004088 02 47 6E         [24] 4465 	ljmp	00217$
      00408B                       4466 01098$:
      00408B 7B 00            [12] 4467 	mov	r3,#0x00
      00408D 8C 82            [24] 4468 	mov	dpl,r4
      00408F 8B 83            [24] 4469 	mov	dph,r3
      004091 12 29 C0         [24] 4470 	lcall	_putchar
      004094 0D               [12] 4471 	inc	r5
                                   4472 ;	calc.c:254: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004095 BD 00 E4         [24] 4473 	cjne	r5,#0x00,00384$
      004098 0E               [12] 4474 	inc	r6
      004099 80 E1            [24] 4475 	sjmp	00384$
      00409B                       4476 00182$:
                                   4477 ;	calc.c:255: else if (!stack_pop(&ctx->s, &d1)) {
      00409B E5 08            [12] 4478 	mov	a,_bp
      00409D 24 13            [12] 4479 	add	a,#0x13
      00409F FF               [12] 4480 	mov	r7,a
      0040A0 7E 00            [12] 4481 	mov	r6,#0x00
      0040A2 7D 40            [12] 4482 	mov	r5,#0x40
      0040A4 E5 08            [12] 4483 	mov	a,_bp
      0040A6 24 0C            [12] 4484 	add	a,#0x0c
      0040A8 F8               [12] 4485 	mov	r0,a
      0040A9 74 09            [12] 4486 	mov	a,#0x09
      0040AB 26               [12] 4487 	add	a,@r0
      0040AC FA               [12] 4488 	mov	r2,a
      0040AD E4               [12] 4489 	clr	a
      0040AE 08               [12] 4490 	inc	r0
      0040AF 36               [12] 4491 	addc	a,@r0
      0040B0 FB               [12] 4492 	mov	r3,a
      0040B1 08               [12] 4493 	inc	r0
      0040B2 86 04            [24] 4494 	mov	ar4,@r0
      0040B4 C0 07            [24] 4495 	push	ar7
      0040B6 C0 06            [24] 4496 	push	ar6
      0040B8 C0 05            [24] 4497 	push	ar5
      0040BA 8A 82            [24] 4498 	mov	dpl,r2
      0040BC 8B 83            [24] 4499 	mov	dph,r3
      0040BE 8C F0            [24] 4500 	mov	b,r4
      0040C0 12 27 7F         [24] 4501 	lcall	_stack_pop
      0040C3 AE 82            [24] 4502 	mov	r6,dpl
      0040C5 AF 83            [24] 4503 	mov	r7,dph
      0040C7 15 81            [12] 4504 	dec	sp
      0040C9 15 81            [12] 4505 	dec	sp
      0040CB 15 81            [12] 4506 	dec	sp
      0040CD EE               [12] 4507 	mov	a,r6
      0040CE 4F               [12] 4508 	orl	a,r7
      0040CF 70 58            [24] 4509 	jnz	00179$
                                   4510 ;	calc.c:256: (void)stack_push(&ctx->s, d0);
      0040D1 E5 08            [12] 4511 	mov	a,_bp
      0040D3 24 0C            [12] 4512 	add	a,#0x0c
      0040D5 F8               [12] 4513 	mov	r0,a
      0040D6 74 09            [12] 4514 	mov	a,#0x09
      0040D8 26               [12] 4515 	add	a,@r0
      0040D9 FD               [12] 4516 	mov	r5,a
      0040DA E4               [12] 4517 	clr	a
      0040DB 08               [12] 4518 	inc	r0
      0040DC 36               [12] 4519 	addc	a,@r0
      0040DD FE               [12] 4520 	mov	r6,a
      0040DE 08               [12] 4521 	inc	r0
      0040DF 86 07            [24] 4522 	mov	ar7,@r0
      0040E1 E5 08            [12] 4523 	mov	a,_bp
      0040E3 24 0F            [12] 4524 	add	a,#0x0f
      0040E5 F8               [12] 4525 	mov	r0,a
      0040E6 E6               [12] 4526 	mov	a,@r0
      0040E7 C0 E0            [24] 4527 	push	acc
      0040E9 08               [12] 4528 	inc	r0
      0040EA E6               [12] 4529 	mov	a,@r0
      0040EB C0 E0            [24] 4530 	push	acc
      0040ED 08               [12] 4531 	inc	r0
      0040EE E6               [12] 4532 	mov	a,@r0
      0040EF C0 E0            [24] 4533 	push	acc
      0040F1 08               [12] 4534 	inc	r0
      0040F2 E6               [12] 4535 	mov	a,@r0
      0040F3 C0 E0            [24] 4536 	push	acc
      0040F5 8D 82            [24] 4537 	mov	dpl,r5
      0040F7 8E 83            [24] 4538 	mov	dph,r6
      0040F9 8F F0            [24] 4539 	mov	b,r7
      0040FB 12 26 B5         [24] 4540 	lcall	_stack_push
      0040FE E5 81            [12] 4541 	mov	a,sp
      004100 24 FC            [12] 4542 	add	a,#0xfc
      004102 F5 81            [12] 4543 	mov	sp,a
                                   4544 ;	calc.c:257: printstr("\r\nstack underflow\r\n");
      004104 7D 46            [12] 4545 	mov	r5,#___str_8
      004106 7E 71            [12] 4546 	mov	r6,#(___str_8 >> 8)
      004108 7F 80            [12] 4547 	mov	r7,#0x80
                                   4548 ;	calc.c:50: return;
      00410A                       4549 00387$:
                                   4550 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00410A 8D 82            [24] 4551 	mov	dpl,r5
      00410C 8E 83            [24] 4552 	mov	dph,r6
      00410E 8F F0            [24] 4553 	mov	b,r7
      004110 12 58 8D         [24] 4554 	lcall	__gptrget
      004113 FC               [12] 4555 	mov	r4,a
      004114 70 03            [24] 4556 	jnz	01101$
      004116 02 47 6E         [24] 4557 	ljmp	00217$
      004119                       4558 01101$:
      004119 7B 00            [12] 4559 	mov	r3,#0x00
      00411B 8C 82            [24] 4560 	mov	dpl,r4
      00411D 8B 83            [24] 4561 	mov	dph,r3
      00411F 12 29 C0         [24] 4562 	lcall	_putchar
      004122 0D               [12] 4563 	inc	r5
                                   4564 ;	calc.c:257: printstr("\r\nstack underflow\r\n");
      004123 BD 00 E4         [24] 4565 	cjne	r5,#0x00,00387$
      004126 0E               [12] 4566 	inc	r6
      004127 80 E1            [24] 4567 	sjmp	00387$
      004129                       4568 00179$:
                                   4569 ;	calc.c:259: d1 |= d0;
      004129 E5 08            [12] 4570 	mov	a,_bp
      00412B 24 13            [12] 4571 	add	a,#0x13
      00412D F8               [12] 4572 	mov	r0,a
      00412E E5 08            [12] 4573 	mov	a,_bp
      004130 24 0F            [12] 4574 	add	a,#0x0f
      004132 F9               [12] 4575 	mov	r1,a
      004133 E7               [12] 4576 	mov	a,@r1
      004134 46               [12] 4577 	orl	a,@r0
      004135 F6               [12] 4578 	mov	@r0,a
      004136 09               [12] 4579 	inc	r1
      004137 E7               [12] 4580 	mov	a,@r1
      004138 08               [12] 4581 	inc	r0
      004139 46               [12] 4582 	orl	a,@r0
      00413A F6               [12] 4583 	mov	@r0,a
      00413B 09               [12] 4584 	inc	r1
      00413C E7               [12] 4585 	mov	a,@r1
      00413D 08               [12] 4586 	inc	r0
      00413E 46               [12] 4587 	orl	a,@r0
      00413F F6               [12] 4588 	mov	@r0,a
      004140 09               [12] 4589 	inc	r1
      004141 E7               [12] 4590 	mov	a,@r1
      004142 08               [12] 4591 	inc	r0
      004143 46               [12] 4592 	orl	a,@r0
      004144 F6               [12] 4593 	mov	@r0,a
                                   4594 ;	calc.c:260: (void)stack_push(&ctx->s, d1);
      004145 E5 08            [12] 4595 	mov	a,_bp
      004147 24 0C            [12] 4596 	add	a,#0x0c
      004149 F8               [12] 4597 	mov	r0,a
      00414A 74 09            [12] 4598 	mov	a,#0x09
      00414C 26               [12] 4599 	add	a,@r0
      00414D FD               [12] 4600 	mov	r5,a
      00414E E4               [12] 4601 	clr	a
      00414F 08               [12] 4602 	inc	r0
      004150 36               [12] 4603 	addc	a,@r0
      004151 FE               [12] 4604 	mov	r6,a
      004152 08               [12] 4605 	inc	r0
      004153 86 07            [24] 4606 	mov	ar7,@r0
      004155 E5 08            [12] 4607 	mov	a,_bp
      004157 24 13            [12] 4608 	add	a,#0x13
      004159 F8               [12] 4609 	mov	r0,a
      00415A E6               [12] 4610 	mov	a,@r0
      00415B C0 E0            [24] 4611 	push	acc
      00415D 08               [12] 4612 	inc	r0
      00415E E6               [12] 4613 	mov	a,@r0
      00415F C0 E0            [24] 4614 	push	acc
      004161 08               [12] 4615 	inc	r0
      004162 E6               [12] 4616 	mov	a,@r0
      004163 C0 E0            [24] 4617 	push	acc
      004165 08               [12] 4618 	inc	r0
      004166 E6               [12] 4619 	mov	a,@r0
      004167 C0 E0            [24] 4620 	push	acc
      004169 8D 82            [24] 4621 	mov	dpl,r5
      00416B 8E 83            [24] 4622 	mov	dph,r6
      00416D 8F F0            [24] 4623 	mov	b,r7
      00416F 12 26 B5         [24] 4624 	lcall	_stack_push
      004172 E5 81            [12] 4625 	mov	a,sp
      004174 24 FC            [12] 4626 	add	a,#0xfc
      004176 F5 81            [12] 4627 	mov	sp,a
                                   4628 ;	calc.c:262: break;
      004178 02 47 6E         [24] 4629 	ljmp	00217$
                                   4630 ;	calc.c:263: case '^':
      00417B                       4631 00184$:
                                   4632 ;	calc.c:264: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00417B E5 08            [12] 4633 	mov	a,_bp
      00417D 24 0F            [12] 4634 	add	a,#0x0f
      00417F FF               [12] 4635 	mov	r7,a
      004180 7E 00            [12] 4636 	mov	r6,#0x00
      004182 7D 40            [12] 4637 	mov	r5,#0x40
      004184 E5 08            [12] 4638 	mov	a,_bp
      004186 24 0C            [12] 4639 	add	a,#0x0c
      004188 F8               [12] 4640 	mov	r0,a
      004189 74 09            [12] 4641 	mov	a,#0x09
      00418B 26               [12] 4642 	add	a,@r0
      00418C FA               [12] 4643 	mov	r2,a
      00418D E4               [12] 4644 	clr	a
      00418E 08               [12] 4645 	inc	r0
      00418F 36               [12] 4646 	addc	a,@r0
      004190 FB               [12] 4647 	mov	r3,a
      004191 08               [12] 4648 	inc	r0
      004192 86 04            [24] 4649 	mov	ar4,@r0
      004194 C0 07            [24] 4650 	push	ar7
      004196 C0 06            [24] 4651 	push	ar6
      004198 C0 05            [24] 4652 	push	ar5
      00419A 8A 82            [24] 4653 	mov	dpl,r2
      00419C 8B 83            [24] 4654 	mov	dph,r3
      00419E 8C F0            [24] 4655 	mov	b,r4
      0041A0 12 27 7F         [24] 4656 	lcall	_stack_pop
      0041A3 AE 82            [24] 4657 	mov	r6,dpl
      0041A5 AF 83            [24] 4658 	mov	r7,dph
      0041A7 15 81            [12] 4659 	dec	sp
      0041A9 15 81            [12] 4660 	dec	sp
      0041AB 15 81            [12] 4661 	dec	sp
      0041AD EE               [12] 4662 	mov	a,r6
      0041AE 4F               [12] 4663 	orl	a,r7
      0041AF 70 25            [24] 4664 	jnz	00189$
      0041B1 7D 46            [12] 4665 	mov	r5,#___str_8
      0041B3 7E 71            [12] 4666 	mov	r6,#(___str_8 >> 8)
      0041B5 7F 80            [12] 4667 	mov	r7,#0x80
                                   4668 ;	calc.c:50: return;
      0041B7                       4669 00390$:
                                   4670 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0041B7 8D 82            [24] 4671 	mov	dpl,r5
      0041B9 8E 83            [24] 4672 	mov	dph,r6
      0041BB 8F F0            [24] 4673 	mov	b,r7
      0041BD 12 58 8D         [24] 4674 	lcall	__gptrget
      0041C0 FC               [12] 4675 	mov	r4,a
      0041C1 70 03            [24] 4676 	jnz	01104$
      0041C3 02 47 6E         [24] 4677 	ljmp	00217$
      0041C6                       4678 01104$:
      0041C6 7B 00            [12] 4679 	mov	r3,#0x00
      0041C8 8C 82            [24] 4680 	mov	dpl,r4
      0041CA 8B 83            [24] 4681 	mov	dph,r3
      0041CC 12 29 C0         [24] 4682 	lcall	_putchar
      0041CF 0D               [12] 4683 	inc	r5
                                   4684 ;	calc.c:264: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0041D0 BD 00 E4         [24] 4685 	cjne	r5,#0x00,00390$
      0041D3 0E               [12] 4686 	inc	r6
      0041D4 80 E1            [24] 4687 	sjmp	00390$
      0041D6                       4688 00189$:
                                   4689 ;	calc.c:265: else if (!stack_pop(&ctx->s, &d1)) {
      0041D6 E5 08            [12] 4690 	mov	a,_bp
      0041D8 24 13            [12] 4691 	add	a,#0x13
      0041DA FF               [12] 4692 	mov	r7,a
      0041DB 7E 00            [12] 4693 	mov	r6,#0x00
      0041DD 7D 40            [12] 4694 	mov	r5,#0x40
      0041DF E5 08            [12] 4695 	mov	a,_bp
      0041E1 24 0C            [12] 4696 	add	a,#0x0c
      0041E3 F8               [12] 4697 	mov	r0,a
      0041E4 74 09            [12] 4698 	mov	a,#0x09
      0041E6 26               [12] 4699 	add	a,@r0
      0041E7 FA               [12] 4700 	mov	r2,a
      0041E8 E4               [12] 4701 	clr	a
      0041E9 08               [12] 4702 	inc	r0
      0041EA 36               [12] 4703 	addc	a,@r0
      0041EB FB               [12] 4704 	mov	r3,a
      0041EC 08               [12] 4705 	inc	r0
      0041ED 86 04            [24] 4706 	mov	ar4,@r0
      0041EF C0 07            [24] 4707 	push	ar7
      0041F1 C0 06            [24] 4708 	push	ar6
      0041F3 C0 05            [24] 4709 	push	ar5
      0041F5 8A 82            [24] 4710 	mov	dpl,r2
      0041F7 8B 83            [24] 4711 	mov	dph,r3
      0041F9 8C F0            [24] 4712 	mov	b,r4
      0041FB 12 27 7F         [24] 4713 	lcall	_stack_pop
      0041FE AE 82            [24] 4714 	mov	r6,dpl
      004200 AF 83            [24] 4715 	mov	r7,dph
      004202 15 81            [12] 4716 	dec	sp
      004204 15 81            [12] 4717 	dec	sp
      004206 15 81            [12] 4718 	dec	sp
      004208 EE               [12] 4719 	mov	a,r6
      004209 4F               [12] 4720 	orl	a,r7
      00420A 70 58            [24] 4721 	jnz	00186$
                                   4722 ;	calc.c:266: (void)stack_push(&ctx->s, d0);
      00420C E5 08            [12] 4723 	mov	a,_bp
      00420E 24 0C            [12] 4724 	add	a,#0x0c
      004210 F8               [12] 4725 	mov	r0,a
      004211 74 09            [12] 4726 	mov	a,#0x09
      004213 26               [12] 4727 	add	a,@r0
      004214 FD               [12] 4728 	mov	r5,a
      004215 E4               [12] 4729 	clr	a
      004216 08               [12] 4730 	inc	r0
      004217 36               [12] 4731 	addc	a,@r0
      004218 FE               [12] 4732 	mov	r6,a
      004219 08               [12] 4733 	inc	r0
      00421A 86 07            [24] 4734 	mov	ar7,@r0
      00421C E5 08            [12] 4735 	mov	a,_bp
      00421E 24 0F            [12] 4736 	add	a,#0x0f
      004220 F8               [12] 4737 	mov	r0,a
      004221 E6               [12] 4738 	mov	a,@r0
      004222 C0 E0            [24] 4739 	push	acc
      004224 08               [12] 4740 	inc	r0
      004225 E6               [12] 4741 	mov	a,@r0
      004226 C0 E0            [24] 4742 	push	acc
      004228 08               [12] 4743 	inc	r0
      004229 E6               [12] 4744 	mov	a,@r0
      00422A C0 E0            [24] 4745 	push	acc
      00422C 08               [12] 4746 	inc	r0
      00422D E6               [12] 4747 	mov	a,@r0
      00422E C0 E0            [24] 4748 	push	acc
      004230 8D 82            [24] 4749 	mov	dpl,r5
      004232 8E 83            [24] 4750 	mov	dph,r6
      004234 8F F0            [24] 4751 	mov	b,r7
      004236 12 26 B5         [24] 4752 	lcall	_stack_push
      004239 E5 81            [12] 4753 	mov	a,sp
      00423B 24 FC            [12] 4754 	add	a,#0xfc
      00423D F5 81            [12] 4755 	mov	sp,a
                                   4756 ;	calc.c:267: printstr("\r\nstack underflow\r\n");
      00423F 7D 46            [12] 4757 	mov	r5,#___str_8
      004241 7E 71            [12] 4758 	mov	r6,#(___str_8 >> 8)
      004243 7F 80            [12] 4759 	mov	r7,#0x80
                                   4760 ;	calc.c:50: return;
      004245                       4761 00393$:
                                   4762 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004245 8D 82            [24] 4763 	mov	dpl,r5
      004247 8E 83            [24] 4764 	mov	dph,r6
      004249 8F F0            [24] 4765 	mov	b,r7
      00424B 12 58 8D         [24] 4766 	lcall	__gptrget
      00424E FC               [12] 4767 	mov	r4,a
      00424F 70 03            [24] 4768 	jnz	01107$
      004251 02 47 6E         [24] 4769 	ljmp	00217$
      004254                       4770 01107$:
      004254 7B 00            [12] 4771 	mov	r3,#0x00
      004256 8C 82            [24] 4772 	mov	dpl,r4
      004258 8B 83            [24] 4773 	mov	dph,r3
      00425A 12 29 C0         [24] 4774 	lcall	_putchar
      00425D 0D               [12] 4775 	inc	r5
                                   4776 ;	calc.c:267: printstr("\r\nstack underflow\r\n");
      00425E BD 00 E4         [24] 4777 	cjne	r5,#0x00,00393$
      004261 0E               [12] 4778 	inc	r6
      004262 80 E1            [24] 4779 	sjmp	00393$
      004264                       4780 00186$:
                                   4781 ;	calc.c:269: d1 ^= d0;
      004264 E5 08            [12] 4782 	mov	a,_bp
      004266 24 13            [12] 4783 	add	a,#0x13
      004268 F8               [12] 4784 	mov	r0,a
      004269 E5 08            [12] 4785 	mov	a,_bp
      00426B 24 0F            [12] 4786 	add	a,#0x0f
      00426D F9               [12] 4787 	mov	r1,a
      00426E E7               [12] 4788 	mov	a,@r1
      00426F 66               [12] 4789 	xrl	a,@r0
      004270 F6               [12] 4790 	mov	@r0,a
      004271 09               [12] 4791 	inc	r1
      004272 E7               [12] 4792 	mov	a,@r1
      004273 08               [12] 4793 	inc	r0
      004274 66               [12] 4794 	xrl	a,@r0
      004275 F6               [12] 4795 	mov	@r0,a
      004276 09               [12] 4796 	inc	r1
      004277 E7               [12] 4797 	mov	a,@r1
      004278 08               [12] 4798 	inc	r0
      004279 66               [12] 4799 	xrl	a,@r0
      00427A F6               [12] 4800 	mov	@r0,a
      00427B 09               [12] 4801 	inc	r1
      00427C E7               [12] 4802 	mov	a,@r1
      00427D 08               [12] 4803 	inc	r0
      00427E 66               [12] 4804 	xrl	a,@r0
      00427F F6               [12] 4805 	mov	@r0,a
                                   4806 ;	calc.c:270: (void)stack_push(&ctx->s, d1);
      004280 E5 08            [12] 4807 	mov	a,_bp
      004282 24 0C            [12] 4808 	add	a,#0x0c
      004284 F8               [12] 4809 	mov	r0,a
      004285 74 09            [12] 4810 	mov	a,#0x09
      004287 26               [12] 4811 	add	a,@r0
      004288 FD               [12] 4812 	mov	r5,a
      004289 E4               [12] 4813 	clr	a
      00428A 08               [12] 4814 	inc	r0
      00428B 36               [12] 4815 	addc	a,@r0
      00428C FE               [12] 4816 	mov	r6,a
      00428D 08               [12] 4817 	inc	r0
      00428E 86 07            [24] 4818 	mov	ar7,@r0
      004290 E5 08            [12] 4819 	mov	a,_bp
      004292 24 13            [12] 4820 	add	a,#0x13
      004294 F8               [12] 4821 	mov	r0,a
      004295 E6               [12] 4822 	mov	a,@r0
      004296 C0 E0            [24] 4823 	push	acc
      004298 08               [12] 4824 	inc	r0
      004299 E6               [12] 4825 	mov	a,@r0
      00429A C0 E0            [24] 4826 	push	acc
      00429C 08               [12] 4827 	inc	r0
      00429D E6               [12] 4828 	mov	a,@r0
      00429E C0 E0            [24] 4829 	push	acc
      0042A0 08               [12] 4830 	inc	r0
      0042A1 E6               [12] 4831 	mov	a,@r0
      0042A2 C0 E0            [24] 4832 	push	acc
      0042A4 8D 82            [24] 4833 	mov	dpl,r5
      0042A6 8E 83            [24] 4834 	mov	dph,r6
      0042A8 8F F0            [24] 4835 	mov	b,r7
      0042AA 12 26 B5         [24] 4836 	lcall	_stack_push
      0042AD E5 81            [12] 4837 	mov	a,sp
      0042AF 24 FC            [12] 4838 	add	a,#0xfc
      0042B1 F5 81            [12] 4839 	mov	sp,a
                                   4840 ;	calc.c:272: break;
      0042B3 02 47 6E         [24] 4841 	ljmp	00217$
                                   4842 ;	calc.c:273: case '>':
      0042B6                       4843 00191$:
                                   4844 ;	calc.c:274: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0042B6 E5 08            [12] 4845 	mov	a,_bp
      0042B8 24 0F            [12] 4846 	add	a,#0x0f
      0042BA FF               [12] 4847 	mov	r7,a
      0042BB 7E 00            [12] 4848 	mov	r6,#0x00
      0042BD 7D 40            [12] 4849 	mov	r5,#0x40
      0042BF E5 08            [12] 4850 	mov	a,_bp
      0042C1 24 0C            [12] 4851 	add	a,#0x0c
      0042C3 F8               [12] 4852 	mov	r0,a
      0042C4 74 09            [12] 4853 	mov	a,#0x09
      0042C6 26               [12] 4854 	add	a,@r0
      0042C7 FA               [12] 4855 	mov	r2,a
      0042C8 E4               [12] 4856 	clr	a
      0042C9 08               [12] 4857 	inc	r0
      0042CA 36               [12] 4858 	addc	a,@r0
      0042CB FB               [12] 4859 	mov	r3,a
      0042CC 08               [12] 4860 	inc	r0
      0042CD 86 04            [24] 4861 	mov	ar4,@r0
      0042CF C0 07            [24] 4862 	push	ar7
      0042D1 C0 06            [24] 4863 	push	ar6
      0042D3 C0 05            [24] 4864 	push	ar5
      0042D5 8A 82            [24] 4865 	mov	dpl,r2
      0042D7 8B 83            [24] 4866 	mov	dph,r3
      0042D9 8C F0            [24] 4867 	mov	b,r4
      0042DB 12 27 7F         [24] 4868 	lcall	_stack_pop
      0042DE AE 82            [24] 4869 	mov	r6,dpl
      0042E0 AF 83            [24] 4870 	mov	r7,dph
      0042E2 15 81            [12] 4871 	dec	sp
      0042E4 15 81            [12] 4872 	dec	sp
      0042E6 15 81            [12] 4873 	dec	sp
      0042E8 EE               [12] 4874 	mov	a,r6
      0042E9 4F               [12] 4875 	orl	a,r7
      0042EA 70 25            [24] 4876 	jnz	00196$
      0042EC 7D 46            [12] 4877 	mov	r5,#___str_8
      0042EE 7E 71            [12] 4878 	mov	r6,#(___str_8 >> 8)
      0042F0 7F 80            [12] 4879 	mov	r7,#0x80
                                   4880 ;	calc.c:50: return;
      0042F2                       4881 00396$:
                                   4882 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042F2 8D 82            [24] 4883 	mov	dpl,r5
      0042F4 8E 83            [24] 4884 	mov	dph,r6
      0042F6 8F F0            [24] 4885 	mov	b,r7
      0042F8 12 58 8D         [24] 4886 	lcall	__gptrget
      0042FB FC               [12] 4887 	mov	r4,a
      0042FC 70 03            [24] 4888 	jnz	01110$
      0042FE 02 47 6E         [24] 4889 	ljmp	00217$
      004301                       4890 01110$:
      004301 7B 00            [12] 4891 	mov	r3,#0x00
      004303 8C 82            [24] 4892 	mov	dpl,r4
      004305 8B 83            [24] 4893 	mov	dph,r3
      004307 12 29 C0         [24] 4894 	lcall	_putchar
      00430A 0D               [12] 4895 	inc	r5
                                   4896 ;	calc.c:274: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00430B BD 00 E4         [24] 4897 	cjne	r5,#0x00,00396$
      00430E 0E               [12] 4898 	inc	r6
      00430F 80 E1            [24] 4899 	sjmp	00396$
      004311                       4900 00196$:
                                   4901 ;	calc.c:275: else if (!stack_pop(&ctx->s, &d1)) {
      004311 E5 08            [12] 4902 	mov	a,_bp
      004313 24 13            [12] 4903 	add	a,#0x13
      004315 FF               [12] 4904 	mov	r7,a
      004316 7E 00            [12] 4905 	mov	r6,#0x00
      004318 7D 40            [12] 4906 	mov	r5,#0x40
      00431A E5 08            [12] 4907 	mov	a,_bp
      00431C 24 0C            [12] 4908 	add	a,#0x0c
      00431E F8               [12] 4909 	mov	r0,a
      00431F 74 09            [12] 4910 	mov	a,#0x09
      004321 26               [12] 4911 	add	a,@r0
      004322 FA               [12] 4912 	mov	r2,a
      004323 E4               [12] 4913 	clr	a
      004324 08               [12] 4914 	inc	r0
      004325 36               [12] 4915 	addc	a,@r0
      004326 FB               [12] 4916 	mov	r3,a
      004327 08               [12] 4917 	inc	r0
      004328 86 04            [24] 4918 	mov	ar4,@r0
      00432A C0 07            [24] 4919 	push	ar7
      00432C C0 06            [24] 4920 	push	ar6
      00432E C0 05            [24] 4921 	push	ar5
      004330 8A 82            [24] 4922 	mov	dpl,r2
      004332 8B 83            [24] 4923 	mov	dph,r3
      004334 8C F0            [24] 4924 	mov	b,r4
      004336 12 27 7F         [24] 4925 	lcall	_stack_pop
      004339 AE 82            [24] 4926 	mov	r6,dpl
      00433B AF 83            [24] 4927 	mov	r7,dph
      00433D 15 81            [12] 4928 	dec	sp
      00433F 15 81            [12] 4929 	dec	sp
      004341 15 81            [12] 4930 	dec	sp
      004343 EE               [12] 4931 	mov	a,r6
      004344 4F               [12] 4932 	orl	a,r7
      004345 70 58            [24] 4933 	jnz	00193$
                                   4934 ;	calc.c:276: (void)stack_push(&ctx->s, d0);
      004347 E5 08            [12] 4935 	mov	a,_bp
      004349 24 0C            [12] 4936 	add	a,#0x0c
      00434B F8               [12] 4937 	mov	r0,a
      00434C 74 09            [12] 4938 	mov	a,#0x09
      00434E 26               [12] 4939 	add	a,@r0
      00434F FD               [12] 4940 	mov	r5,a
      004350 E4               [12] 4941 	clr	a
      004351 08               [12] 4942 	inc	r0
      004352 36               [12] 4943 	addc	a,@r0
      004353 FE               [12] 4944 	mov	r6,a
      004354 08               [12] 4945 	inc	r0
      004355 86 07            [24] 4946 	mov	ar7,@r0
      004357 E5 08            [12] 4947 	mov	a,_bp
      004359 24 0F            [12] 4948 	add	a,#0x0f
      00435B F8               [12] 4949 	mov	r0,a
      00435C E6               [12] 4950 	mov	a,@r0
      00435D C0 E0            [24] 4951 	push	acc
      00435F 08               [12] 4952 	inc	r0
      004360 E6               [12] 4953 	mov	a,@r0
      004361 C0 E0            [24] 4954 	push	acc
      004363 08               [12] 4955 	inc	r0
      004364 E6               [12] 4956 	mov	a,@r0
      004365 C0 E0            [24] 4957 	push	acc
      004367 08               [12] 4958 	inc	r0
      004368 E6               [12] 4959 	mov	a,@r0
      004369 C0 E0            [24] 4960 	push	acc
      00436B 8D 82            [24] 4961 	mov	dpl,r5
      00436D 8E 83            [24] 4962 	mov	dph,r6
      00436F 8F F0            [24] 4963 	mov	b,r7
      004371 12 26 B5         [24] 4964 	lcall	_stack_push
      004374 E5 81            [12] 4965 	mov	a,sp
      004376 24 FC            [12] 4966 	add	a,#0xfc
      004378 F5 81            [12] 4967 	mov	sp,a
                                   4968 ;	calc.c:277: printstr("\r\nstack underflow\r\n");
      00437A 7D 46            [12] 4969 	mov	r5,#___str_8
      00437C 7E 71            [12] 4970 	mov	r6,#(___str_8 >> 8)
      00437E 7F 80            [12] 4971 	mov	r7,#0x80
                                   4972 ;	calc.c:50: return;
      004380                       4973 00399$:
                                   4974 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004380 8D 82            [24] 4975 	mov	dpl,r5
      004382 8E 83            [24] 4976 	mov	dph,r6
      004384 8F F0            [24] 4977 	mov	b,r7
      004386 12 58 8D         [24] 4978 	lcall	__gptrget
      004389 FC               [12] 4979 	mov	r4,a
      00438A 70 03            [24] 4980 	jnz	01113$
      00438C 02 47 6E         [24] 4981 	ljmp	00217$
      00438F                       4982 01113$:
      00438F 7B 00            [12] 4983 	mov	r3,#0x00
      004391 8C 82            [24] 4984 	mov	dpl,r4
      004393 8B 83            [24] 4985 	mov	dph,r3
      004395 12 29 C0         [24] 4986 	lcall	_putchar
      004398 0D               [12] 4987 	inc	r5
                                   4988 ;	calc.c:277: printstr("\r\nstack underflow\r\n");
      004399 BD 00 E4         [24] 4989 	cjne	r5,#0x00,00399$
      00439C 0E               [12] 4990 	inc	r6
      00439D 80 E1            [24] 4991 	sjmp	00399$
      00439F                       4992 00193$:
                                   4993 ;	calc.c:279: d1 = (unsigned long)d1 >> ((unsigned long)d0 & 0x0000001flu);
      00439F E5 08            [12] 4994 	mov	a,_bp
      0043A1 24 13            [12] 4995 	add	a,#0x13
      0043A3 F8               [12] 4996 	mov	r0,a
      0043A4 86 04            [24] 4997 	mov	ar4,@r0
      0043A6 08               [12] 4998 	inc	r0
      0043A7 86 05            [24] 4999 	mov	ar5,@r0
      0043A9 08               [12] 5000 	inc	r0
      0043AA 86 06            [24] 5001 	mov	ar6,@r0
      0043AC 08               [12] 5002 	inc	r0
      0043AD 86 07            [24] 5003 	mov	ar7,@r0
      0043AF E5 08            [12] 5004 	mov	a,_bp
      0043B1 24 0F            [12] 5005 	add	a,#0x0f
      0043B3 F8               [12] 5006 	mov	r0,a
      0043B4 86 03            [24] 5007 	mov	ar3,@r0
      0043B6 53 03 1F         [24] 5008 	anl	ar3,#0x1f
      0043B9 8B F0            [24] 5009 	mov	b,r3
      0043BB 05 F0            [12] 5010 	inc	b
      0043BD 80 0D            [24] 5011 	sjmp	01116$
      0043BF                       5012 01115$:
      0043BF C3               [12] 5013 	clr	c
      0043C0 EF               [12] 5014 	mov	a,r7
      0043C1 13               [12] 5015 	rrc	a
      0043C2 FF               [12] 5016 	mov	r7,a
      0043C3 EE               [12] 5017 	mov	a,r6
      0043C4 13               [12] 5018 	rrc	a
      0043C5 FE               [12] 5019 	mov	r6,a
      0043C6 ED               [12] 5020 	mov	a,r5
      0043C7 13               [12] 5021 	rrc	a
      0043C8 FD               [12] 5022 	mov	r5,a
      0043C9 EC               [12] 5023 	mov	a,r4
      0043CA 13               [12] 5024 	rrc	a
      0043CB FC               [12] 5025 	mov	r4,a
      0043CC                       5026 01116$:
      0043CC D5 F0 F0         [24] 5027 	djnz	b,01115$
      0043CF E5 08            [12] 5028 	mov	a,_bp
      0043D1 24 13            [12] 5029 	add	a,#0x13
      0043D3 F8               [12] 5030 	mov	r0,a
      0043D4 A6 04            [24] 5031 	mov	@r0,ar4
      0043D6 08               [12] 5032 	inc	r0
      0043D7 A6 05            [24] 5033 	mov	@r0,ar5
      0043D9 08               [12] 5034 	inc	r0
      0043DA A6 06            [24] 5035 	mov	@r0,ar6
      0043DC 08               [12] 5036 	inc	r0
      0043DD A6 07            [24] 5037 	mov	@r0,ar7
                                   5038 ;	calc.c:280: (void)stack_push(&ctx->s, d1);
      0043DF E5 08            [12] 5039 	mov	a,_bp
      0043E1 24 0C            [12] 5040 	add	a,#0x0c
      0043E3 F8               [12] 5041 	mov	r0,a
      0043E4 74 09            [12] 5042 	mov	a,#0x09
      0043E6 26               [12] 5043 	add	a,@r0
      0043E7 FD               [12] 5044 	mov	r5,a
      0043E8 E4               [12] 5045 	clr	a
      0043E9 08               [12] 5046 	inc	r0
      0043EA 36               [12] 5047 	addc	a,@r0
      0043EB FE               [12] 5048 	mov	r6,a
      0043EC 08               [12] 5049 	inc	r0
      0043ED 86 07            [24] 5050 	mov	ar7,@r0
      0043EF E5 08            [12] 5051 	mov	a,_bp
      0043F1 24 13            [12] 5052 	add	a,#0x13
      0043F3 F8               [12] 5053 	mov	r0,a
      0043F4 E6               [12] 5054 	mov	a,@r0
      0043F5 C0 E0            [24] 5055 	push	acc
      0043F7 08               [12] 5056 	inc	r0
      0043F8 E6               [12] 5057 	mov	a,@r0
      0043F9 C0 E0            [24] 5058 	push	acc
      0043FB 08               [12] 5059 	inc	r0
      0043FC E6               [12] 5060 	mov	a,@r0
      0043FD C0 E0            [24] 5061 	push	acc
      0043FF 08               [12] 5062 	inc	r0
      004400 E6               [12] 5063 	mov	a,@r0
      004401 C0 E0            [24] 5064 	push	acc
      004403 8D 82            [24] 5065 	mov	dpl,r5
      004405 8E 83            [24] 5066 	mov	dph,r6
      004407 8F F0            [24] 5067 	mov	b,r7
      004409 12 26 B5         [24] 5068 	lcall	_stack_push
      00440C E5 81            [12] 5069 	mov	a,sp
      00440E 24 FC            [12] 5070 	add	a,#0xfc
      004410 F5 81            [12] 5071 	mov	sp,a
                                   5072 ;	calc.c:282: break;
      004412 02 47 6E         [24] 5073 	ljmp	00217$
                                   5074 ;	calc.c:283: case ']':
      004415                       5075 00198$:
                                   5076 ;	calc.c:284: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004415 E5 08            [12] 5077 	mov	a,_bp
      004417 24 0F            [12] 5078 	add	a,#0x0f
      004419 FF               [12] 5079 	mov	r7,a
      00441A 7E 00            [12] 5080 	mov	r6,#0x00
      00441C 7D 40            [12] 5081 	mov	r5,#0x40
      00441E E5 08            [12] 5082 	mov	a,_bp
      004420 24 0C            [12] 5083 	add	a,#0x0c
      004422 F8               [12] 5084 	mov	r0,a
      004423 74 09            [12] 5085 	mov	a,#0x09
      004425 26               [12] 5086 	add	a,@r0
      004426 FA               [12] 5087 	mov	r2,a
      004427 E4               [12] 5088 	clr	a
      004428 08               [12] 5089 	inc	r0
      004429 36               [12] 5090 	addc	a,@r0
      00442A FB               [12] 5091 	mov	r3,a
      00442B 08               [12] 5092 	inc	r0
      00442C 86 04            [24] 5093 	mov	ar4,@r0
      00442E C0 07            [24] 5094 	push	ar7
      004430 C0 06            [24] 5095 	push	ar6
      004432 C0 05            [24] 5096 	push	ar5
      004434 8A 82            [24] 5097 	mov	dpl,r2
      004436 8B 83            [24] 5098 	mov	dph,r3
      004438 8C F0            [24] 5099 	mov	b,r4
      00443A 12 27 7F         [24] 5100 	lcall	_stack_pop
      00443D AE 82            [24] 5101 	mov	r6,dpl
      00443F AF 83            [24] 5102 	mov	r7,dph
      004441 15 81            [12] 5103 	dec	sp
      004443 15 81            [12] 5104 	dec	sp
      004445 15 81            [12] 5105 	dec	sp
      004447 EE               [12] 5106 	mov	a,r6
      004448 4F               [12] 5107 	orl	a,r7
      004449 70 25            [24] 5108 	jnz	00203$
      00444B 7D 46            [12] 5109 	mov	r5,#___str_8
      00444D 7E 71            [12] 5110 	mov	r6,#(___str_8 >> 8)
      00444F 7F 80            [12] 5111 	mov	r7,#0x80
                                   5112 ;	calc.c:50: return;
      004451                       5113 00402$:
                                   5114 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004451 8D 82            [24] 5115 	mov	dpl,r5
      004453 8E 83            [24] 5116 	mov	dph,r6
      004455 8F F0            [24] 5117 	mov	b,r7
      004457 12 58 8D         [24] 5118 	lcall	__gptrget
      00445A FC               [12] 5119 	mov	r4,a
      00445B 70 03            [24] 5120 	jnz	01118$
      00445D 02 47 6E         [24] 5121 	ljmp	00217$
      004460                       5122 01118$:
      004460 7B 00            [12] 5123 	mov	r3,#0x00
      004462 8C 82            [24] 5124 	mov	dpl,r4
      004464 8B 83            [24] 5125 	mov	dph,r3
      004466 12 29 C0         [24] 5126 	lcall	_putchar
      004469 0D               [12] 5127 	inc	r5
                                   5128 ;	calc.c:284: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00446A BD 00 E4         [24] 5129 	cjne	r5,#0x00,00402$
      00446D 0E               [12] 5130 	inc	r6
      00446E 80 E1            [24] 5131 	sjmp	00402$
      004470                       5132 00203$:
                                   5133 ;	calc.c:285: else if (!stack_pop(&ctx->s, &d1)) {
      004470 E5 08            [12] 5134 	mov	a,_bp
      004472 24 13            [12] 5135 	add	a,#0x13
      004474 FF               [12] 5136 	mov	r7,a
      004475 7E 00            [12] 5137 	mov	r6,#0x00
      004477 7D 40            [12] 5138 	mov	r5,#0x40
      004479 E5 08            [12] 5139 	mov	a,_bp
      00447B 24 0C            [12] 5140 	add	a,#0x0c
      00447D F8               [12] 5141 	mov	r0,a
      00447E 74 09            [12] 5142 	mov	a,#0x09
      004480 26               [12] 5143 	add	a,@r0
      004481 FA               [12] 5144 	mov	r2,a
      004482 E4               [12] 5145 	clr	a
      004483 08               [12] 5146 	inc	r0
      004484 36               [12] 5147 	addc	a,@r0
      004485 FB               [12] 5148 	mov	r3,a
      004486 08               [12] 5149 	inc	r0
      004487 86 04            [24] 5150 	mov	ar4,@r0
      004489 C0 07            [24] 5151 	push	ar7
      00448B C0 06            [24] 5152 	push	ar6
      00448D C0 05            [24] 5153 	push	ar5
      00448F 8A 82            [24] 5154 	mov	dpl,r2
      004491 8B 83            [24] 5155 	mov	dph,r3
      004493 8C F0            [24] 5156 	mov	b,r4
      004495 12 27 7F         [24] 5157 	lcall	_stack_pop
      004498 AE 82            [24] 5158 	mov	r6,dpl
      00449A AF 83            [24] 5159 	mov	r7,dph
      00449C 15 81            [12] 5160 	dec	sp
      00449E 15 81            [12] 5161 	dec	sp
      0044A0 15 81            [12] 5162 	dec	sp
      0044A2 EE               [12] 5163 	mov	a,r6
      0044A3 4F               [12] 5164 	orl	a,r7
      0044A4 70 58            [24] 5165 	jnz	00200$
                                   5166 ;	calc.c:286: (void)stack_push(&ctx->s, d0);
      0044A6 E5 08            [12] 5167 	mov	a,_bp
      0044A8 24 0C            [12] 5168 	add	a,#0x0c
      0044AA F8               [12] 5169 	mov	r0,a
      0044AB 74 09            [12] 5170 	mov	a,#0x09
      0044AD 26               [12] 5171 	add	a,@r0
      0044AE FD               [12] 5172 	mov	r5,a
      0044AF E4               [12] 5173 	clr	a
      0044B0 08               [12] 5174 	inc	r0
      0044B1 36               [12] 5175 	addc	a,@r0
      0044B2 FE               [12] 5176 	mov	r6,a
      0044B3 08               [12] 5177 	inc	r0
      0044B4 86 07            [24] 5178 	mov	ar7,@r0
      0044B6 E5 08            [12] 5179 	mov	a,_bp
      0044B8 24 0F            [12] 5180 	add	a,#0x0f
      0044BA F8               [12] 5181 	mov	r0,a
      0044BB E6               [12] 5182 	mov	a,@r0
      0044BC C0 E0            [24] 5183 	push	acc
      0044BE 08               [12] 5184 	inc	r0
      0044BF E6               [12] 5185 	mov	a,@r0
      0044C0 C0 E0            [24] 5186 	push	acc
      0044C2 08               [12] 5187 	inc	r0
      0044C3 E6               [12] 5188 	mov	a,@r0
      0044C4 C0 E0            [24] 5189 	push	acc
      0044C6 08               [12] 5190 	inc	r0
      0044C7 E6               [12] 5191 	mov	a,@r0
      0044C8 C0 E0            [24] 5192 	push	acc
      0044CA 8D 82            [24] 5193 	mov	dpl,r5
      0044CC 8E 83            [24] 5194 	mov	dph,r6
      0044CE 8F F0            [24] 5195 	mov	b,r7
      0044D0 12 26 B5         [24] 5196 	lcall	_stack_push
      0044D3 E5 81            [12] 5197 	mov	a,sp
      0044D5 24 FC            [12] 5198 	add	a,#0xfc
      0044D7 F5 81            [12] 5199 	mov	sp,a
                                   5200 ;	calc.c:287: printstr("\r\nstack underflow\r\n");
      0044D9 7D 46            [12] 5201 	mov	r5,#___str_8
      0044DB 7E 71            [12] 5202 	mov	r6,#(___str_8 >> 8)
      0044DD 7F 80            [12] 5203 	mov	r7,#0x80
                                   5204 ;	calc.c:50: return;
      0044DF                       5205 00405$:
                                   5206 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0044DF 8D 82            [24] 5207 	mov	dpl,r5
      0044E1 8E 83            [24] 5208 	mov	dph,r6
      0044E3 8F F0            [24] 5209 	mov	b,r7
      0044E5 12 58 8D         [24] 5210 	lcall	__gptrget
      0044E8 FC               [12] 5211 	mov	r4,a
      0044E9 70 03            [24] 5212 	jnz	01121$
      0044EB 02 47 6E         [24] 5213 	ljmp	00217$
      0044EE                       5214 01121$:
      0044EE 7B 00            [12] 5215 	mov	r3,#0x00
      0044F0 8C 82            [24] 5216 	mov	dpl,r4
      0044F2 8B 83            [24] 5217 	mov	dph,r3
      0044F4 12 29 C0         [24] 5218 	lcall	_putchar
      0044F7 0D               [12] 5219 	inc	r5
                                   5220 ;	calc.c:287: printstr("\r\nstack underflow\r\n");
      0044F8 BD 00 E4         [24] 5221 	cjne	r5,#0x00,00405$
      0044FB 0E               [12] 5222 	inc	r6
      0044FC 80 E1            [24] 5223 	sjmp	00405$
      0044FE                       5224 00200$:
                                   5225 ;	calc.c:289: d1 >>= ((unsigned long)d0 & 0x0000001flu);
      0044FE E5 08            [12] 5226 	mov	a,_bp
      004500 24 0F            [12] 5227 	add	a,#0x0f
      004502 F8               [12] 5228 	mov	r0,a
      004503 86 07            [24] 5229 	mov	ar7,@r0
      004505 53 07 1F         [24] 5230 	anl	ar7,#0x1f
      004508 8F F0            [24] 5231 	mov	b,r7
      00450A 05 F0            [12] 5232 	inc	b
      00450C E5 08            [12] 5233 	mov	a,_bp
      00450E 24 13            [12] 5234 	add	a,#0x13
      004510 F8               [12] 5235 	mov	r0,a
      004511 08               [12] 5236 	inc	r0
      004512 08               [12] 5237 	inc	r0
      004513 08               [12] 5238 	inc	r0
      004514 E6               [12] 5239 	mov	a,@r0
      004515 33               [12] 5240 	rlc	a
      004516 92 D2            [24] 5241 	mov	ov,c
      004518 18               [12] 5242 	dec	r0
      004519 18               [12] 5243 	dec	r0
      00451A 18               [12] 5244 	dec	r0
      00451B 80 14            [24] 5245 	sjmp	01124$
      00451D                       5246 01123$:
      00451D A2 D2            [12] 5247 	mov	c,ov
      00451F 08               [12] 5248 	inc	r0
      004520 08               [12] 5249 	inc	r0
      004521 08               [12] 5250 	inc	r0
      004522 E6               [12] 5251 	mov	a,@r0
      004523 13               [12] 5252 	rrc	a
      004524 F6               [12] 5253 	mov	@r0,a
      004525 18               [12] 5254 	dec	r0
      004526 E6               [12] 5255 	mov	a,@r0
      004527 13               [12] 5256 	rrc	a
      004528 F6               [12] 5257 	mov	@r0,a
      004529 18               [12] 5258 	dec	r0
      00452A E6               [12] 5259 	mov	a,@r0
      00452B 13               [12] 5260 	rrc	a
      00452C F6               [12] 5261 	mov	@r0,a
      00452D 18               [12] 5262 	dec	r0
      00452E E6               [12] 5263 	mov	a,@r0
      00452F 13               [12] 5264 	rrc	a
      004530 F6               [12] 5265 	mov	@r0,a
      004531                       5266 01124$:
      004531 D5 F0 E9         [24] 5267 	djnz	b,01123$
                                   5268 ;	calc.c:290: (void)stack_push(&ctx->s, d1);
      004534 E5 08            [12] 5269 	mov	a,_bp
      004536 24 0C            [12] 5270 	add	a,#0x0c
      004538 F8               [12] 5271 	mov	r0,a
      004539 74 09            [12] 5272 	mov	a,#0x09
      00453B 26               [12] 5273 	add	a,@r0
      00453C FD               [12] 5274 	mov	r5,a
      00453D E4               [12] 5275 	clr	a
      00453E 08               [12] 5276 	inc	r0
      00453F 36               [12] 5277 	addc	a,@r0
      004540 FE               [12] 5278 	mov	r6,a
      004541 08               [12] 5279 	inc	r0
      004542 86 07            [24] 5280 	mov	ar7,@r0
      004544 E5 08            [12] 5281 	mov	a,_bp
      004546 24 13            [12] 5282 	add	a,#0x13
      004548 F8               [12] 5283 	mov	r0,a
      004549 E6               [12] 5284 	mov	a,@r0
      00454A C0 E0            [24] 5285 	push	acc
      00454C 08               [12] 5286 	inc	r0
      00454D E6               [12] 5287 	mov	a,@r0
      00454E C0 E0            [24] 5288 	push	acc
      004550 08               [12] 5289 	inc	r0
      004551 E6               [12] 5290 	mov	a,@r0
      004552 C0 E0            [24] 5291 	push	acc
      004554 08               [12] 5292 	inc	r0
      004555 E6               [12] 5293 	mov	a,@r0
      004556 C0 E0            [24] 5294 	push	acc
      004558 8D 82            [24] 5295 	mov	dpl,r5
      00455A 8E 83            [24] 5296 	mov	dph,r6
      00455C 8F F0            [24] 5297 	mov	b,r7
      00455E 12 26 B5         [24] 5298 	lcall	_stack_push
      004561 E5 81            [12] 5299 	mov	a,sp
      004563 24 FC            [12] 5300 	add	a,#0xfc
      004565 F5 81            [12] 5301 	mov	sp,a
                                   5302 ;	calc.c:292: break;
      004567 02 47 6E         [24] 5303 	ljmp	00217$
                                   5304 ;	calc.c:293: case '<':
      00456A                       5305 00205$:
                                   5306 ;	calc.c:294: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00456A E5 08            [12] 5307 	mov	a,_bp
      00456C 24 0F            [12] 5308 	add	a,#0x0f
      00456E FF               [12] 5309 	mov	r7,a
      00456F 7E 00            [12] 5310 	mov	r6,#0x00
      004571 7D 40            [12] 5311 	mov	r5,#0x40
      004573 E5 08            [12] 5312 	mov	a,_bp
      004575 24 0C            [12] 5313 	add	a,#0x0c
      004577 F8               [12] 5314 	mov	r0,a
      004578 74 09            [12] 5315 	mov	a,#0x09
      00457A 26               [12] 5316 	add	a,@r0
      00457B FA               [12] 5317 	mov	r2,a
      00457C E4               [12] 5318 	clr	a
      00457D 08               [12] 5319 	inc	r0
      00457E 36               [12] 5320 	addc	a,@r0
      00457F FB               [12] 5321 	mov	r3,a
      004580 08               [12] 5322 	inc	r0
      004581 86 04            [24] 5323 	mov	ar4,@r0
      004583 C0 07            [24] 5324 	push	ar7
      004585 C0 06            [24] 5325 	push	ar6
      004587 C0 05            [24] 5326 	push	ar5
      004589 8A 82            [24] 5327 	mov	dpl,r2
      00458B 8B 83            [24] 5328 	mov	dph,r3
      00458D 8C F0            [24] 5329 	mov	b,r4
      00458F 12 27 7F         [24] 5330 	lcall	_stack_pop
      004592 AE 82            [24] 5331 	mov	r6,dpl
      004594 AF 83            [24] 5332 	mov	r7,dph
      004596 15 81            [12] 5333 	dec	sp
      004598 15 81            [12] 5334 	dec	sp
      00459A 15 81            [12] 5335 	dec	sp
      00459C EE               [12] 5336 	mov	a,r6
      00459D 4F               [12] 5337 	orl	a,r7
      00459E 70 25            [24] 5338 	jnz	00210$
      0045A0 7D 46            [12] 5339 	mov	r5,#___str_8
      0045A2 7E 71            [12] 5340 	mov	r6,#(___str_8 >> 8)
      0045A4 7F 80            [12] 5341 	mov	r7,#0x80
                                   5342 ;	calc.c:50: return;
      0045A6                       5343 00408$:
                                   5344 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0045A6 8D 82            [24] 5345 	mov	dpl,r5
      0045A8 8E 83            [24] 5346 	mov	dph,r6
      0045AA 8F F0            [24] 5347 	mov	b,r7
      0045AC 12 58 8D         [24] 5348 	lcall	__gptrget
      0045AF FC               [12] 5349 	mov	r4,a
      0045B0 70 03            [24] 5350 	jnz	01126$
      0045B2 02 47 6E         [24] 5351 	ljmp	00217$
      0045B5                       5352 01126$:
      0045B5 7B 00            [12] 5353 	mov	r3,#0x00
      0045B7 8C 82            [24] 5354 	mov	dpl,r4
      0045B9 8B 83            [24] 5355 	mov	dph,r3
      0045BB 12 29 C0         [24] 5356 	lcall	_putchar
      0045BE 0D               [12] 5357 	inc	r5
                                   5358 ;	calc.c:294: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0045BF BD 00 E4         [24] 5359 	cjne	r5,#0x00,00408$
      0045C2 0E               [12] 5360 	inc	r6
      0045C3 80 E1            [24] 5361 	sjmp	00408$
      0045C5                       5362 00210$:
                                   5363 ;	calc.c:295: else if (!stack_pop(&ctx->s, &d1)) {
      0045C5 E5 08            [12] 5364 	mov	a,_bp
      0045C7 24 13            [12] 5365 	add	a,#0x13
      0045C9 FF               [12] 5366 	mov	r7,a
      0045CA 7E 00            [12] 5367 	mov	r6,#0x00
      0045CC 7D 40            [12] 5368 	mov	r5,#0x40
      0045CE E5 08            [12] 5369 	mov	a,_bp
      0045D0 24 0C            [12] 5370 	add	a,#0x0c
      0045D2 F8               [12] 5371 	mov	r0,a
      0045D3 74 09            [12] 5372 	mov	a,#0x09
      0045D5 26               [12] 5373 	add	a,@r0
      0045D6 FA               [12] 5374 	mov	r2,a
      0045D7 E4               [12] 5375 	clr	a
      0045D8 08               [12] 5376 	inc	r0
      0045D9 36               [12] 5377 	addc	a,@r0
      0045DA FB               [12] 5378 	mov	r3,a
      0045DB 08               [12] 5379 	inc	r0
      0045DC 86 04            [24] 5380 	mov	ar4,@r0
      0045DE C0 07            [24] 5381 	push	ar7
      0045E0 C0 06            [24] 5382 	push	ar6
      0045E2 C0 05            [24] 5383 	push	ar5
      0045E4 8A 82            [24] 5384 	mov	dpl,r2
      0045E6 8B 83            [24] 5385 	mov	dph,r3
      0045E8 8C F0            [24] 5386 	mov	b,r4
      0045EA 12 27 7F         [24] 5387 	lcall	_stack_pop
      0045ED AE 82            [24] 5388 	mov	r6,dpl
      0045EF AF 83            [24] 5389 	mov	r7,dph
      0045F1 15 81            [12] 5390 	dec	sp
      0045F3 15 81            [12] 5391 	dec	sp
      0045F5 15 81            [12] 5392 	dec	sp
      0045F7 EE               [12] 5393 	mov	a,r6
      0045F8 4F               [12] 5394 	orl	a,r7
      0045F9 70 58            [24] 5395 	jnz	00207$
                                   5396 ;	calc.c:296: (void)stack_push(&ctx->s, d0);
      0045FB E5 08            [12] 5397 	mov	a,_bp
      0045FD 24 0C            [12] 5398 	add	a,#0x0c
      0045FF F8               [12] 5399 	mov	r0,a
      004600 74 09            [12] 5400 	mov	a,#0x09
      004602 26               [12] 5401 	add	a,@r0
      004603 FD               [12] 5402 	mov	r5,a
      004604 E4               [12] 5403 	clr	a
      004605 08               [12] 5404 	inc	r0
      004606 36               [12] 5405 	addc	a,@r0
      004607 FE               [12] 5406 	mov	r6,a
      004608 08               [12] 5407 	inc	r0
      004609 86 07            [24] 5408 	mov	ar7,@r0
      00460B E5 08            [12] 5409 	mov	a,_bp
      00460D 24 0F            [12] 5410 	add	a,#0x0f
      00460F F8               [12] 5411 	mov	r0,a
      004610 E6               [12] 5412 	mov	a,@r0
      004611 C0 E0            [24] 5413 	push	acc
      004613 08               [12] 5414 	inc	r0
      004614 E6               [12] 5415 	mov	a,@r0
      004615 C0 E0            [24] 5416 	push	acc
      004617 08               [12] 5417 	inc	r0
      004618 E6               [12] 5418 	mov	a,@r0
      004619 C0 E0            [24] 5419 	push	acc
      00461B 08               [12] 5420 	inc	r0
      00461C E6               [12] 5421 	mov	a,@r0
      00461D C0 E0            [24] 5422 	push	acc
      00461F 8D 82            [24] 5423 	mov	dpl,r5
      004621 8E 83            [24] 5424 	mov	dph,r6
      004623 8F F0            [24] 5425 	mov	b,r7
      004625 12 26 B5         [24] 5426 	lcall	_stack_push
      004628 E5 81            [12] 5427 	mov	a,sp
      00462A 24 FC            [12] 5428 	add	a,#0xfc
      00462C F5 81            [12] 5429 	mov	sp,a
                                   5430 ;	calc.c:297: printstr("\r\nstack underflow\r\n");
      00462E 7D 46            [12] 5431 	mov	r5,#___str_8
      004630 7E 71            [12] 5432 	mov	r6,#(___str_8 >> 8)
      004632 7F 80            [12] 5433 	mov	r7,#0x80
                                   5434 ;	calc.c:50: return;
      004634                       5435 00411$:
                                   5436 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004634 8D 82            [24] 5437 	mov	dpl,r5
      004636 8E 83            [24] 5438 	mov	dph,r6
      004638 8F F0            [24] 5439 	mov	b,r7
      00463A 12 58 8D         [24] 5440 	lcall	__gptrget
      00463D FC               [12] 5441 	mov	r4,a
      00463E 70 03            [24] 5442 	jnz	01129$
      004640 02 47 6E         [24] 5443 	ljmp	00217$
      004643                       5444 01129$:
      004643 7B 00            [12] 5445 	mov	r3,#0x00
      004645 8C 82            [24] 5446 	mov	dpl,r4
      004647 8B 83            [24] 5447 	mov	dph,r3
      004649 12 29 C0         [24] 5448 	lcall	_putchar
      00464C 0D               [12] 5449 	inc	r5
                                   5450 ;	calc.c:297: printstr("\r\nstack underflow\r\n");
      00464D BD 00 E4         [24] 5451 	cjne	r5,#0x00,00411$
      004650 0E               [12] 5452 	inc	r6
      004651 80 E1            [24] 5453 	sjmp	00411$
      004653                       5454 00207$:
                                   5455 ;	calc.c:299: d1 <<= ((unsigned long)d0 & 0x0000001flu);
      004653 E5 08            [12] 5456 	mov	a,_bp
      004655 24 0F            [12] 5457 	add	a,#0x0f
      004657 F8               [12] 5458 	mov	r0,a
      004658 86 07            [24] 5459 	mov	ar7,@r0
      00465A 53 07 1F         [24] 5460 	anl	ar7,#0x1f
      00465D E5 08            [12] 5461 	mov	a,_bp
      00465F 24 13            [12] 5462 	add	a,#0x13
      004661 F8               [12] 5463 	mov	r0,a
      004662 86 03            [24] 5464 	mov	ar3,@r0
      004664 08               [12] 5465 	inc	r0
      004665 86 04            [24] 5466 	mov	ar4,@r0
      004667 08               [12] 5467 	inc	r0
      004668 86 05            [24] 5468 	mov	ar5,@r0
      00466A 08               [12] 5469 	inc	r0
      00466B 86 06            [24] 5470 	mov	ar6,@r0
      00466D 8F F0            [24] 5471 	mov	b,r7
      00466F 05 F0            [12] 5472 	inc	b
      004671 80 0C            [24] 5473 	sjmp	01132$
      004673                       5474 01131$:
      004673 EB               [12] 5475 	mov	a,r3
      004674 2B               [12] 5476 	add	a,r3
      004675 FB               [12] 5477 	mov	r3,a
      004676 EC               [12] 5478 	mov	a,r4
      004677 33               [12] 5479 	rlc	a
      004678 FC               [12] 5480 	mov	r4,a
      004679 ED               [12] 5481 	mov	a,r5
      00467A 33               [12] 5482 	rlc	a
      00467B FD               [12] 5483 	mov	r5,a
      00467C EE               [12] 5484 	mov	a,r6
      00467D 33               [12] 5485 	rlc	a
      00467E FE               [12] 5486 	mov	r6,a
      00467F                       5487 01132$:
      00467F D5 F0 F1         [24] 5488 	djnz	b,01131$
      004682 E5 08            [12] 5489 	mov	a,_bp
      004684 24 13            [12] 5490 	add	a,#0x13
      004686 F8               [12] 5491 	mov	r0,a
      004687 A6 03            [24] 5492 	mov	@r0,ar3
      004689 08               [12] 5493 	inc	r0
      00468A A6 04            [24] 5494 	mov	@r0,ar4
      00468C 08               [12] 5495 	inc	r0
      00468D A6 05            [24] 5496 	mov	@r0,ar5
      00468F 08               [12] 5497 	inc	r0
      004690 A6 06            [24] 5498 	mov	@r0,ar6
                                   5499 ;	calc.c:300: (void)stack_push(&ctx->s, d1);
      004692 E5 08            [12] 5500 	mov	a,_bp
      004694 24 0C            [12] 5501 	add	a,#0x0c
      004696 F8               [12] 5502 	mov	r0,a
      004697 74 09            [12] 5503 	mov	a,#0x09
      004699 26               [12] 5504 	add	a,@r0
      00469A FD               [12] 5505 	mov	r5,a
      00469B E4               [12] 5506 	clr	a
      00469C 08               [12] 5507 	inc	r0
      00469D 36               [12] 5508 	addc	a,@r0
      00469E FE               [12] 5509 	mov	r6,a
      00469F 08               [12] 5510 	inc	r0
      0046A0 86 07            [24] 5511 	mov	ar7,@r0
      0046A2 E5 08            [12] 5512 	mov	a,_bp
      0046A4 24 13            [12] 5513 	add	a,#0x13
      0046A6 F8               [12] 5514 	mov	r0,a
      0046A7 E6               [12] 5515 	mov	a,@r0
      0046A8 C0 E0            [24] 5516 	push	acc
      0046AA 08               [12] 5517 	inc	r0
      0046AB E6               [12] 5518 	mov	a,@r0
      0046AC C0 E0            [24] 5519 	push	acc
      0046AE 08               [12] 5520 	inc	r0
      0046AF E6               [12] 5521 	mov	a,@r0
      0046B0 C0 E0            [24] 5522 	push	acc
      0046B2 08               [12] 5523 	inc	r0
      0046B3 E6               [12] 5524 	mov	a,@r0
      0046B4 C0 E0            [24] 5525 	push	acc
      0046B6 8D 82            [24] 5526 	mov	dpl,r5
      0046B8 8E 83            [24] 5527 	mov	dph,r6
      0046BA 8F F0            [24] 5528 	mov	b,r7
      0046BC 12 26 B5         [24] 5529 	lcall	_stack_push
      0046BF E5 81            [12] 5530 	mov	a,sp
      0046C1 24 FC            [12] 5531 	add	a,#0xfc
      0046C3 F5 81            [12] 5532 	mov	sp,a
                                   5533 ;	calc.c:302: break;
      0046C5 02 47 6E         [24] 5534 	ljmp	00217$
                                   5535 ;	calc.c:303: case '~':
      0046C8                       5536 00212$:
                                   5537 ;	calc.c:304: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0046C8 E5 08            [12] 5538 	mov	a,_bp
      0046CA 24 0F            [12] 5539 	add	a,#0x0f
      0046CC FF               [12] 5540 	mov	r7,a
      0046CD 7E 00            [12] 5541 	mov	r6,#0x00
      0046CF 7D 40            [12] 5542 	mov	r5,#0x40
      0046D1 E5 08            [12] 5543 	mov	a,_bp
      0046D3 24 0C            [12] 5544 	add	a,#0x0c
      0046D5 F8               [12] 5545 	mov	r0,a
      0046D6 74 09            [12] 5546 	mov	a,#0x09
      0046D8 26               [12] 5547 	add	a,@r0
      0046D9 FA               [12] 5548 	mov	r2,a
      0046DA E4               [12] 5549 	clr	a
      0046DB 08               [12] 5550 	inc	r0
      0046DC 36               [12] 5551 	addc	a,@r0
      0046DD FB               [12] 5552 	mov	r3,a
      0046DE 08               [12] 5553 	inc	r0
      0046DF 86 04            [24] 5554 	mov	ar4,@r0
      0046E1 C0 07            [24] 5555 	push	ar7
      0046E3 C0 06            [24] 5556 	push	ar6
      0046E5 C0 05            [24] 5557 	push	ar5
      0046E7 8A 82            [24] 5558 	mov	dpl,r2
      0046E9 8B 83            [24] 5559 	mov	dph,r3
      0046EB 8C F0            [24] 5560 	mov	b,r4
      0046ED 12 27 7F         [24] 5561 	lcall	_stack_pop
      0046F0 AE 82            [24] 5562 	mov	r6,dpl
      0046F2 AF 83            [24] 5563 	mov	r7,dph
      0046F4 15 81            [12] 5564 	dec	sp
      0046F6 15 81            [12] 5565 	dec	sp
      0046F8 15 81            [12] 5566 	dec	sp
      0046FA EE               [12] 5567 	mov	a,r6
      0046FB 4F               [12] 5568 	orl	a,r7
      0046FC 70 22            [24] 5569 	jnz	00214$
      0046FE 7D 46            [12] 5570 	mov	r5,#___str_8
      004700 7E 71            [12] 5571 	mov	r6,#(___str_8 >> 8)
      004702 7F 80            [12] 5572 	mov	r7,#0x80
                                   5573 ;	calc.c:50: return;
      004704                       5574 00414$:
                                   5575 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004704 8D 82            [24] 5576 	mov	dpl,r5
      004706 8E 83            [24] 5577 	mov	dph,r6
      004708 8F F0            [24] 5578 	mov	b,r7
      00470A 12 58 8D         [24] 5579 	lcall	__gptrget
      00470D FC               [12] 5580 	mov	r4,a
      00470E 60 5E            [24] 5581 	jz	00217$
      004710 7B 00            [12] 5582 	mov	r3,#0x00
      004712 8C 82            [24] 5583 	mov	dpl,r4
      004714 8B 83            [24] 5584 	mov	dph,r3
      004716 12 29 C0         [24] 5585 	lcall	_putchar
      004719 0D               [12] 5586 	inc	r5
                                   5587 ;	calc.c:304: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00471A BD 00 E7         [24] 5588 	cjne	r5,#0x00,00414$
      00471D 0E               [12] 5589 	inc	r6
      00471E 80 E4            [24] 5590 	sjmp	00414$
      004720                       5591 00214$:
                                   5592 ;	calc.c:306: d0 = ~d0;
      004720 E5 08            [12] 5593 	mov	a,_bp
      004722 24 0F            [12] 5594 	add	a,#0x0f
      004724 F8               [12] 5595 	mov	r0,a
      004725 E6               [12] 5596 	mov	a,@r0
      004726 F4               [12] 5597 	cpl	a
      004727 F6               [12] 5598 	mov	@r0,a
      004728 08               [12] 5599 	inc	r0
      004729 E6               [12] 5600 	mov	a,@r0
      00472A F4               [12] 5601 	cpl	a
      00472B F6               [12] 5602 	mov	@r0,a
      00472C 08               [12] 5603 	inc	r0
      00472D E6               [12] 5604 	mov	a,@r0
      00472E F4               [12] 5605 	cpl	a
      00472F F6               [12] 5606 	mov	@r0,a
      004730 08               [12] 5607 	inc	r0
      004731 E6               [12] 5608 	mov	a,@r0
      004732 F4               [12] 5609 	cpl	a
      004733 F6               [12] 5610 	mov	@r0,a
                                   5611 ;	calc.c:307: (void)stack_push(&ctx->s, d0);
      004734 E5 08            [12] 5612 	mov	a,_bp
      004736 24 0C            [12] 5613 	add	a,#0x0c
      004738 F8               [12] 5614 	mov	r0,a
      004739 74 09            [12] 5615 	mov	a,#0x09
      00473B 26               [12] 5616 	add	a,@r0
      00473C FD               [12] 5617 	mov	r5,a
      00473D E4               [12] 5618 	clr	a
      00473E 08               [12] 5619 	inc	r0
      00473F 36               [12] 5620 	addc	a,@r0
      004740 FE               [12] 5621 	mov	r6,a
      004741 08               [12] 5622 	inc	r0
      004742 86 07            [24] 5623 	mov	ar7,@r0
      004744 E5 08            [12] 5624 	mov	a,_bp
      004746 24 0F            [12] 5625 	add	a,#0x0f
      004748 F8               [12] 5626 	mov	r0,a
      004749 E6               [12] 5627 	mov	a,@r0
      00474A C0 E0            [24] 5628 	push	acc
      00474C 08               [12] 5629 	inc	r0
      00474D E6               [12] 5630 	mov	a,@r0
      00474E C0 E0            [24] 5631 	push	acc
      004750 08               [12] 5632 	inc	r0
      004751 E6               [12] 5633 	mov	a,@r0
      004752 C0 E0            [24] 5634 	push	acc
      004754 08               [12] 5635 	inc	r0
      004755 E6               [12] 5636 	mov	a,@r0
      004756 C0 E0            [24] 5637 	push	acc
      004758 8D 82            [24] 5638 	mov	dpl,r5
      00475A 8E 83            [24] 5639 	mov	dph,r6
      00475C 8F F0            [24] 5640 	mov	b,r7
      00475E 12 26 B5         [24] 5641 	lcall	_stack_push
      004761 E5 81            [12] 5642 	mov	a,sp
      004763 24 FC            [12] 5643 	add	a,#0xfc
      004765 F5 81            [12] 5644 	mov	sp,a
                                   5645 ;	calc.c:309: break;
                                   5646 ;	calc.c:310: default:
      004767 80 05            [24] 5647 	sjmp	00217$
      004769                       5648 00216$:
                                   5649 ;	calc.c:311: return UNDEF;
      004769 90 80 00         [24] 5650 	mov	dptr,#0x8000
                                   5651 ;	calc.c:312: }
      00476C 80 03            [24] 5652 	sjmp	00416$
      00476E                       5653 00217$:
                                   5654 ;	calc.c:314: return 1;
      00476E 90 00 01         [24] 5655 	mov	dptr,#0x0001
      004771                       5656 00416$:
                                   5657 ;	calc.c:315: }
      004771 85 08 81         [24] 5658 	mov	sp,_bp
      004774 D0 08            [24] 5659 	pop	_bp
      004776 22               [24] 5660 	ret
                                   5661 ;------------------------------------------------------------
                                   5662 ;Allocation info for local variables in function 'push_acc'
                                   5663 ;------------------------------------------------------------
                                   5664 ;delta                     Allocated to stack - _bp -5
                                   5665 ;_ctx                      Allocated to stack - _bp +1
                                   5666 ;ctx                       Allocated to registers r2 r3 r4 
                                   5667 ;__1310720097              Allocated to registers 
                                   5668 ;s                         Allocated to registers r5 r6 r7 
                                   5669 ;sloc0                     Allocated to stack - _bp +4
                                   5670 ;------------------------------------------------------------
                                   5671 ;	calc.c:317: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   5672 ;	-----------------------------------------
                                   5673 ;	 function push_acc
                                   5674 ;	-----------------------------------------
      004777                       5675 _push_acc:
      004777 C0 08            [24] 5676 	push	_bp
      004779 85 81 08         [24] 5677 	mov	_bp,sp
      00477C C0 82            [24] 5678 	push	dpl
      00477E C0 83            [24] 5679 	push	dph
      004780 C0 F0            [24] 5680 	push	b
      004782 E5 81            [12] 5681 	mov	a,sp
      004784 24 04            [12] 5682 	add	a,#0x04
      004786 F5 81            [12] 5683 	mov	sp,a
                                   5684 ;	calc.c:318: struct ctx *ctx = (struct ctx *)_ctx;
      004788 A8 08            [24] 5685 	mov	r0,_bp
      00478A 08               [12] 5686 	inc	r0
      00478B 86 02            [24] 5687 	mov	ar2,@r0
      00478D 08               [12] 5688 	inc	r0
      00478E 86 03            [24] 5689 	mov	ar3,@r0
      004790 08               [12] 5690 	inc	r0
      004791 86 04            [24] 5691 	mov	ar4,@r0
                                   5692 ;	calc.c:322: ctx->acc_valid = 0;
      004793 74 06            [12] 5693 	mov	a,#0x06
      004795 2A               [12] 5694 	add	a,r2
      004796 FD               [12] 5695 	mov	r5,a
      004797 E4               [12] 5696 	clr	a
      004798 3B               [12] 5697 	addc	a,r3
      004799 FE               [12] 5698 	mov	r6,a
      00479A 8C 07            [24] 5699 	mov	ar7,r4
      00479C 8D 82            [24] 5700 	mov	dpl,r5
      00479E 8E 83            [24] 5701 	mov	dph,r6
      0047A0 8F F0            [24] 5702 	mov	b,r7
      0047A2 E4               [12] 5703 	clr	a
      0047A3 12 54 12         [24] 5704 	lcall	__gptrput
                                   5705 ;	calc.c:323: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      0047A6 74 02            [12] 5706 	mov	a,#0x02
      0047A8 2A               [12] 5707 	add	a,r2
      0047A9 FF               [12] 5708 	mov	r7,a
      0047AA E4               [12] 5709 	clr	a
      0047AB 3B               [12] 5710 	addc	a,r3
      0047AC FD               [12] 5711 	mov	r5,a
      0047AD 8C 06            [24] 5712 	mov	ar6,r4
      0047AF 8F 82            [24] 5713 	mov	dpl,r7
      0047B1 8D 83            [24] 5714 	mov	dph,r5
      0047B3 8E F0            [24] 5715 	mov	b,r6
      0047B5 E5 08            [12] 5716 	mov	a,_bp
      0047B7 24 04            [12] 5717 	add	a,#0x04
      0047B9 F8               [12] 5718 	mov	r0,a
      0047BA 12 58 8D         [24] 5719 	lcall	__gptrget
      0047BD F6               [12] 5720 	mov	@r0,a
      0047BE A3               [24] 5721 	inc	dptr
      0047BF 12 58 8D         [24] 5722 	lcall	__gptrget
      0047C2 08               [12] 5723 	inc	r0
      0047C3 F6               [12] 5724 	mov	@r0,a
      0047C4 A3               [24] 5725 	inc	dptr
      0047C5 12 58 8D         [24] 5726 	lcall	__gptrget
      0047C8 08               [12] 5727 	inc	r0
      0047C9 F6               [12] 5728 	mov	@r0,a
      0047CA A3               [24] 5729 	inc	dptr
      0047CB 12 58 8D         [24] 5730 	lcall	__gptrget
      0047CE 08               [12] 5731 	inc	r0
      0047CF F6               [12] 5732 	mov	@r0,a
      0047D0 74 09            [12] 5733 	mov	a,#0x09
      0047D2 2A               [12] 5734 	add	a,r2
      0047D3 FA               [12] 5735 	mov	r2,a
      0047D4 E4               [12] 5736 	clr	a
      0047D5 3B               [12] 5737 	addc	a,r3
      0047D6 FB               [12] 5738 	mov	r3,a
      0047D7 8C 07            [24] 5739 	mov	ar7,r4
      0047D9 E5 08            [12] 5740 	mov	a,_bp
      0047DB 24 04            [12] 5741 	add	a,#0x04
      0047DD F8               [12] 5742 	mov	r0,a
      0047DE E6               [12] 5743 	mov	a,@r0
      0047DF C0 E0            [24] 5744 	push	acc
      0047E1 08               [12] 5745 	inc	r0
      0047E2 E6               [12] 5746 	mov	a,@r0
      0047E3 C0 E0            [24] 5747 	push	acc
      0047E5 08               [12] 5748 	inc	r0
      0047E6 E6               [12] 5749 	mov	a,@r0
      0047E7 C0 E0            [24] 5750 	push	acc
      0047E9 08               [12] 5751 	inc	r0
      0047EA E6               [12] 5752 	mov	a,@r0
      0047EB C0 E0            [24] 5753 	push	acc
      0047ED 8A 82            [24] 5754 	mov	dpl,r2
      0047EF 8B 83            [24] 5755 	mov	dph,r3
      0047F1 8F F0            [24] 5756 	mov	b,r7
      0047F3 12 26 B5         [24] 5757 	lcall	_stack_push
      0047F6 AE 82            [24] 5758 	mov	r6,dpl
      0047F8 AF 83            [24] 5759 	mov	r7,dph
      0047FA E5 81            [12] 5760 	mov	a,sp
      0047FC 24 FC            [12] 5761 	add	a,#0xfc
      0047FE F5 81            [12] 5762 	mov	sp,a
      004800 EE               [12] 5763 	mov	a,r6
      004801 4F               [12] 5764 	orl	a,r7
      004802 70 22            [24] 5765 	jnz	00102$
      004804 7D 6F            [12] 5766 	mov	r5,#___str_10
      004806 7E 71            [12] 5767 	mov	r6,#(___str_10 >> 8)
      004808 7F 80            [12] 5768 	mov	r7,#0x80
                                   5769 ;	calc.c:50: return;
      00480A                       5770 00109$:
                                   5771 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00480A 8D 82            [24] 5772 	mov	dpl,r5
      00480C 8E 83            [24] 5773 	mov	dph,r6
      00480E 8F F0            [24] 5774 	mov	b,r7
      004810 12 58 8D         [24] 5775 	lcall	__gptrget
      004813 FC               [12] 5776 	mov	r4,a
      004814 60 10            [24] 5777 	jz	00102$
      004816 7B 00            [12] 5778 	mov	r3,#0x00
      004818 8C 82            [24] 5779 	mov	dpl,r4
      00481A 8B 83            [24] 5780 	mov	dph,r3
      00481C 12 29 C0         [24] 5781 	lcall	_putchar
      00481F 0D               [12] 5782 	inc	r5
                                   5783 ;	calc.c:323: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      004820 BD 00 E7         [24] 5784 	cjne	r5,#0x00,00109$
      004823 0E               [12] 5785 	inc	r6
      004824 80 E4            [24] 5786 	sjmp	00109$
      004826                       5787 00102$:
                                   5788 ;	calc.c:325: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      004826 E5 08            [12] 5789 	mov	a,_bp
      004828 24 FB            [12] 5790 	add	a,#0xfb
      00482A F8               [12] 5791 	mov	r0,a
      00482B 86 05            [24] 5792 	mov	ar5,@r0
      00482D 08               [12] 5793 	inc	r0
      00482E 86 06            [24] 5794 	mov	ar6,@r0
      004830 08               [12] 5795 	inc	r0
      004831 86 07            [24] 5796 	mov	ar7,@r0
      004833 74 02            [12] 5797 	mov	a,#0x02
      004835 2D               [12] 5798 	add	a,r5
      004836 FA               [12] 5799 	mov	r2,a
      004837 E4               [12] 5800 	clr	a
      004838 3E               [12] 5801 	addc	a,r6
      004839 FB               [12] 5802 	mov	r3,a
      00483A 8F 04            [24] 5803 	mov	ar4,r7
      00483C 8A 82            [24] 5804 	mov	dpl,r2
      00483E 8B 83            [24] 5805 	mov	dph,r3
      004840 8C F0            [24] 5806 	mov	b,r4
      004842 12 58 8D         [24] 5807 	lcall	__gptrget
      004845 FA               [12] 5808 	mov	r2,a
      004846 A3               [24] 5809 	inc	dptr
      004847 12 58 8D         [24] 5810 	lcall	__gptrget
      00484A FB               [12] 5811 	mov	r3,a
      00484B BA 02 27         [24] 5812 	cjne	r2,#0x02,00104$
      00484E BB 00 24         [24] 5813 	cjne	r3,#0x00,00104$
      004851 C0 05            [24] 5814 	push	ar5
      004853 C0 06            [24] 5815 	push	ar6
      004855 C0 07            [24] 5816 	push	ar7
      004857 A8 08            [24] 5817 	mov	r0,_bp
      004859 08               [12] 5818 	inc	r0
      00485A 86 82            [24] 5819 	mov	dpl,@r0
      00485C 08               [12] 5820 	inc	r0
      00485D 86 83            [24] 5821 	mov	dph,@r0
      00485F 08               [12] 5822 	inc	r0
      004860 86 F0            [24] 5823 	mov	b,@r0
      004862 12 2F E4         [24] 5824 	lcall	_operator
      004865 AE 82            [24] 5825 	mov	r6,dpl
      004867 AF 83            [24] 5826 	mov	r7,dph
      004869 15 81            [12] 5827 	dec	sp
      00486B 15 81            [12] 5828 	dec	sp
      00486D 15 81            [12] 5829 	dec	sp
      00486F 8E 82            [24] 5830 	mov	dpl,r6
      004871 8F 83            [24] 5831 	mov	dph,r7
      004873 80 03            [24] 5832 	sjmp	00111$
      004875                       5833 00104$:
                                   5834 ;	calc.c:326: else return 1;
      004875 90 00 01         [24] 5835 	mov	dptr,#0x0001
      004878                       5836 00111$:
                                   5837 ;	calc.c:327: }
      004878 85 08 81         [24] 5838 	mov	sp,_bp
      00487B D0 08            [24] 5839 	pop	_bp
      00487D 22               [24] 5840 	ret
                                   5841 ;------------------------------------------------------------
                                   5842 ;Allocation info for local variables in function 'reset_acc'
                                   5843 ;------------------------------------------------------------
                                   5844 ;delta                     Allocated to stack - _bp -5
                                   5845 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5846 ;ctx                       Allocated to registers r5 r6 r7 
                                   5847 ;------------------------------------------------------------
                                   5848 ;	calc.c:329: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   5849 ;	-----------------------------------------
                                   5850 ;	 function reset_acc
                                   5851 ;	-----------------------------------------
      00487E                       5852 _reset_acc:
      00487E C0 08            [24] 5853 	push	_bp
      004880 85 81 08         [24] 5854 	mov	_bp,sp
      004883 AD 82            [24] 5855 	mov	r5,dpl
      004885 AE 83            [24] 5856 	mov	r6,dph
      004887 AF F0            [24] 5857 	mov	r7,b
                                   5858 ;	calc.c:330: struct ctx *ctx = (struct ctx *)_ctx;
                                   5859 ;	calc.c:332: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      004889 E5 08            [12] 5860 	mov	a,_bp
      00488B 24 FB            [12] 5861 	add	a,#0xfb
      00488D F8               [12] 5862 	mov	r0,a
      00488E 86 02            [24] 5863 	mov	ar2,@r0
      004890 08               [12] 5864 	inc	r0
      004891 86 03            [24] 5865 	mov	ar3,@r0
      004893 08               [12] 5866 	inc	r0
      004894 86 04            [24] 5867 	mov	ar4,@r0
      004896 74 02            [12] 5868 	mov	a,#0x02
      004898 2A               [12] 5869 	add	a,r2
      004899 FA               [12] 5870 	mov	r2,a
      00489A E4               [12] 5871 	clr	a
      00489B 3B               [12] 5872 	addc	a,r3
      00489C FB               [12] 5873 	mov	r3,a
      00489D 8A 82            [24] 5874 	mov	dpl,r2
      00489F 8B 83            [24] 5875 	mov	dph,r3
      0048A1 8C F0            [24] 5876 	mov	b,r4
      0048A3 12 58 8D         [24] 5877 	lcall	__gptrget
      0048A6 FA               [12] 5878 	mov	r2,a
      0048A7 A3               [24] 5879 	inc	dptr
      0048A8 12 58 8D         [24] 5880 	lcall	__gptrget
      0048AB FB               [12] 5881 	mov	r3,a
      0048AC BA 06 16         [24] 5882 	cjne	r2,#0x06,00102$
      0048AF BB 00 13         [24] 5883 	cjne	r3,#0x00,00102$
      0048B2 74 06            [12] 5884 	mov	a,#0x06
      0048B4 2D               [12] 5885 	add	a,r5
      0048B5 FA               [12] 5886 	mov	r2,a
      0048B6 E4               [12] 5887 	clr	a
      0048B7 3E               [12] 5888 	addc	a,r6
      0048B8 FB               [12] 5889 	mov	r3,a
      0048B9 8F 04            [24] 5890 	mov	ar4,r7
      0048BB 8A 82            [24] 5891 	mov	dpl,r2
      0048BD 8B 83            [24] 5892 	mov	dph,r3
      0048BF 8C F0            [24] 5893 	mov	b,r4
      0048C1 E4               [12] 5894 	clr	a
      0048C2 12 54 12         [24] 5895 	lcall	__gptrput
      0048C5                       5896 00102$:
                                   5897 ;	calc.c:333: ctx->acc = 0l;
      0048C5 74 02            [12] 5898 	mov	a,#0x02
      0048C7 2D               [12] 5899 	add	a,r5
      0048C8 FD               [12] 5900 	mov	r5,a
      0048C9 E4               [12] 5901 	clr	a
      0048CA 3E               [12] 5902 	addc	a,r6
      0048CB FE               [12] 5903 	mov	r6,a
      0048CC 8D 82            [24] 5904 	mov	dpl,r5
      0048CE 8E 83            [24] 5905 	mov	dph,r6
      0048D0 8F F0            [24] 5906 	mov	b,r7
      0048D2 E4               [12] 5907 	clr	a
      0048D3 12 54 12         [24] 5908 	lcall	__gptrput
      0048D6 A3               [24] 5909 	inc	dptr
      0048D7 12 54 12         [24] 5910 	lcall	__gptrput
      0048DA A3               [24] 5911 	inc	dptr
      0048DB 12 54 12         [24] 5912 	lcall	__gptrput
      0048DE A3               [24] 5913 	inc	dptr
      0048DF 12 54 12         [24] 5914 	lcall	__gptrput
                                   5915 ;	calc.c:335: return 1;
      0048E2 90 00 01         [24] 5916 	mov	dptr,#0x0001
                                   5917 ;	calc.c:336: }
      0048E5 D0 08            [24] 5918 	pop	_bp
      0048E7 22               [24] 5919 	ret
                                   5920 ;------------------------------------------------------------
                                   5921 ;Allocation info for local variables in function 'reset_base'
                                   5922 ;------------------------------------------------------------
                                   5923 ;delta                     Allocated to stack - _bp -5
                                   5924 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5925 ;ctx                       Allocated to registers r5 r6 r7 
                                   5926 ;------------------------------------------------------------
                                   5927 ;	calc.c:338: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   5928 ;	-----------------------------------------
                                   5929 ;	 function reset_base
                                   5930 ;	-----------------------------------------
      0048E8                       5931 _reset_base:
      0048E8 C0 08            [24] 5932 	push	_bp
      0048EA 85 81 08         [24] 5933 	mov	_bp,sp
      0048ED AD 82            [24] 5934 	mov	r5,dpl
      0048EF AE 83            [24] 5935 	mov	r6,dph
      0048F1 AF F0            [24] 5936 	mov	r7,b
                                   5937 ;	calc.c:339: struct ctx *ctx = (struct ctx *)_ctx;
                                   5938 ;	calc.c:343: switch (ctx->digit[0]) {
      0048F3 74 07            [12] 5939 	mov	a,#0x07
      0048F5 2D               [12] 5940 	add	a,r5
      0048F6 FA               [12] 5941 	mov	r2,a
      0048F7 E4               [12] 5942 	clr	a
      0048F8 3E               [12] 5943 	addc	a,r6
      0048F9 FB               [12] 5944 	mov	r3,a
      0048FA 8F 04            [24] 5945 	mov	ar4,r7
      0048FC 8A 82            [24] 5946 	mov	dpl,r2
      0048FE 8B 83            [24] 5947 	mov	dph,r3
      004900 8C F0            [24] 5948 	mov	b,r4
      004902 12 58 8D         [24] 5949 	lcall	__gptrget
      004905 FC               [12] 5950 	mov	r4,a
      004906 BC 48 02         [24] 5951 	cjne	r4,#0x48,00124$
      004909 80 0F            [24] 5952 	sjmp	00101$
      00490B                       5953 00124$:
      00490B BC 4F 02         [24] 5954 	cjne	r4,#0x4f,00125$
      00490E 80 2E            [24] 5955 	sjmp	00103$
      004910                       5956 00125$:
      004910 BC 68 02         [24] 5957 	cjne	r4,#0x68,00126$
      004913 80 17            [24] 5958 	sjmp	00102$
      004915                       5959 00126$:
                                   5960 ;	calc.c:344: case 'H':
      004915 BC 6F 48         [24] 5961 	cjne	r4,#0x6f,00105$
      004918 80 36            [24] 5962 	sjmp	00104$
      00491A                       5963 00101$:
                                   5964 ;	calc.c:345: ctx->base = 16;
      00491A 8D 82            [24] 5965 	mov	dpl,r5
      00491C 8E 83            [24] 5966 	mov	dph,r6
      00491E 8F F0            [24] 5967 	mov	b,r7
      004920 74 10            [12] 5968 	mov	a,#0x10
      004922 12 54 12         [24] 5969 	lcall	__gptrput
      004925 A3               [24] 5970 	inc	dptr
      004926 E4               [12] 5971 	clr	a
      004927 12 54 12         [24] 5972 	lcall	__gptrput
                                   5973 ;	calc.c:346: break;
                                   5974 ;	calc.c:347: case 'h':
      00492A 80 34            [24] 5975 	sjmp	00105$
      00492C                       5976 00102$:
                                   5977 ;	calc.c:348: ctx->base = 10;
      00492C 8D 82            [24] 5978 	mov	dpl,r5
      00492E 8E 83            [24] 5979 	mov	dph,r6
      004930 8F F0            [24] 5980 	mov	b,r7
      004932 74 0A            [12] 5981 	mov	a,#0x0a
      004934 12 54 12         [24] 5982 	lcall	__gptrput
      004937 A3               [24] 5983 	inc	dptr
      004938 E4               [12] 5984 	clr	a
      004939 12 54 12         [24] 5985 	lcall	__gptrput
                                   5986 ;	calc.c:349: break;
                                   5987 ;	calc.c:350: case 'O':
      00493C 80 22            [24] 5988 	sjmp	00105$
      00493E                       5989 00103$:
                                   5990 ;	calc.c:351: ctx->base = 8;
      00493E 8D 82            [24] 5991 	mov	dpl,r5
      004940 8E 83            [24] 5992 	mov	dph,r6
      004942 8F F0            [24] 5993 	mov	b,r7
      004944 74 08            [12] 5994 	mov	a,#0x08
      004946 12 54 12         [24] 5995 	lcall	__gptrput
      004949 A3               [24] 5996 	inc	dptr
      00494A E4               [12] 5997 	clr	a
      00494B 12 54 12         [24] 5998 	lcall	__gptrput
                                   5999 ;	calc.c:352: break;
                                   6000 ;	calc.c:353: case 'o':
      00494E 80 10            [24] 6001 	sjmp	00105$
      004950                       6002 00104$:
                                   6003 ;	calc.c:354: ctx->base = 2;
      004950 8D 82            [24] 6004 	mov	dpl,r5
      004952 8E 83            [24] 6005 	mov	dph,r6
      004954 8F F0            [24] 6006 	mov	b,r7
      004956 74 02            [12] 6007 	mov	a,#0x02
      004958 12 54 12         [24] 6008 	lcall	__gptrput
      00495B A3               [24] 6009 	inc	dptr
      00495C E4               [12] 6010 	clr	a
      00495D 12 54 12         [24] 6011 	lcall	__gptrput
                                   6012 ;	calc.c:356: }
      004960                       6013 00105$:
                                   6014 ;	calc.c:358: return 1;
      004960 90 00 01         [24] 6015 	mov	dptr,#0x0001
                                   6016 ;	calc.c:359: }
      004963 D0 08            [24] 6017 	pop	_bp
      004965 22               [24] 6018 	ret
                                   6019 ;------------------------------------------------------------
                                   6020 ;Allocation info for local variables in function 'help'
                                   6021 ;------------------------------------------------------------
                                   6022 ;delta                     Allocated to stack - _bp -5
                                   6023 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6024 ;ctx                       Allocated to stack - _bp +4
                                   6025 ;__1310720099              Allocated to registers 
                                   6026 ;d                         Allocated to stack - _bp +7
                                   6027 ;mask                      Allocated to stack - _bp +11
                                   6028 ;__1310720101              Allocated to registers 
                                   6029 ;s                         Allocated to registers r5 r6 r7 
                                   6030 ;__1310720103              Allocated to registers 
                                   6031 ;s                         Allocated to registers r5 r6 r7 
                                   6032 ;__1310720105              Allocated to registers 
                                   6033 ;s                         Allocated to registers r5 r6 r7 
                                   6034 ;__1310720107              Allocated to registers 
                                   6035 ;s                         Allocated to registers r5 r6 r7 
                                   6036 ;__1310720109              Allocated to registers 
                                   6037 ;s                         Allocated to registers r5 r6 r7 
                                   6038 ;__1310720111              Allocated to registers 
                                   6039 ;s                         Allocated to registers r5 r6 r7 
                                   6040 ;__1310720113              Allocated to registers 
                                   6041 ;s                         Allocated to registers r5 r6 r7 
                                   6042 ;__1310720115              Allocated to registers 
                                   6043 ;s                         Allocated to registers r5 r6 r7 
                                   6044 ;__1310720117              Allocated to registers 
                                   6045 ;s                         Allocated to registers r5 r6 r7 
                                   6046 ;__1310720119              Allocated to registers 
                                   6047 ;s                         Allocated to registers r5 r6 r7 
                                   6048 ;__1310720121              Allocated to registers 
                                   6049 ;s                         Allocated to registers r5 r6 r7 
                                   6050 ;__1310720123              Allocated to registers 
                                   6051 ;s                         Allocated to registers r5 r6 r7 
                                   6052 ;__1310720125              Allocated to registers 
                                   6053 ;s                         Allocated to registers r5 r6 r7 
                                   6054 ;__1310720127              Allocated to registers 
                                   6055 ;s                         Allocated to registers r5 r6 r7 
                                   6056 ;__1310720129              Allocated to registers 
                                   6057 ;s                         Allocated to registers r5 r6 r7 
                                   6058 ;__1310720131              Allocated to registers 
                                   6059 ;s                         Allocated to registers r5 r6 r7 
                                   6060 ;__1310720133              Allocated to registers 
                                   6061 ;s                         Allocated to registers r5 r6 r7 
                                   6062 ;__1310720135              Allocated to registers 
                                   6063 ;s                         Allocated to registers r5 r6 r7 
                                   6064 ;__1310720137              Allocated to registers 
                                   6065 ;s                         Allocated to registers r5 r6 r7 
                                   6066 ;__1310720139              Allocated to registers 
                                   6067 ;s                         Allocated to registers r5 r6 r7 
                                   6068 ;__1310720141              Allocated to registers 
                                   6069 ;s                         Allocated to registers r5 r6 r7 
                                   6070 ;__1310720143              Allocated to registers 
                                   6071 ;s                         Allocated to registers r5 r6 r7 
                                   6072 ;__1310720145              Allocated to registers 
                                   6073 ;s                         Allocated to registers r5 r6 r7 
                                   6074 ;__1310720147              Allocated to registers 
                                   6075 ;s                         Allocated to registers r5 r6 r7 
                                   6076 ;sloc0                     Allocated to stack - _bp +1
                                   6077 ;------------------------------------------------------------
                                   6078 ;	calc.c:361: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   6079 ;	-----------------------------------------
                                   6080 ;	 function help
                                   6081 ;	-----------------------------------------
      004966                       6082 _help:
      004966 C0 08            [24] 6083 	push	_bp
      004968 E5 81            [12] 6084 	mov	a,sp
      00496A F5 08            [12] 6085 	mov	_bp,a
      00496C 24 0E            [12] 6086 	add	a,#0x0e
      00496E F5 81            [12] 6087 	mov	sp,a
      004970 AD 82            [24] 6088 	mov	r5,dpl
      004972 AE 83            [24] 6089 	mov	r6,dph
      004974 AF F0            [24] 6090 	mov	r7,b
                                   6091 ;	calc.c:362: struct ctx *ctx = (struct ctx *)_ctx;
      004976 E5 08            [12] 6092 	mov	a,_bp
      004978 24 04            [12] 6093 	add	a,#0x04
      00497A F8               [12] 6094 	mov	r0,a
      00497B A6 05            [24] 6095 	mov	@r0,ar5
      00497D 08               [12] 6096 	inc	r0
      00497E A6 06            [24] 6097 	mov	@r0,ar6
      004980 08               [12] 6098 	inc	r0
      004981 A6 07            [24] 6099 	mov	@r0,ar7
                                   6100 ;	calc.c:365: printf("\r\nbase = %d, ", ctx->base);
      004983 E5 08            [12] 6101 	mov	a,_bp
      004985 24 04            [12] 6102 	add	a,#0x04
      004987 F8               [12] 6103 	mov	r0,a
      004988 86 82            [24] 6104 	mov	dpl,@r0
      00498A 08               [12] 6105 	inc	r0
      00498B 86 83            [24] 6106 	mov	dph,@r0
      00498D 08               [12] 6107 	inc	r0
      00498E 86 F0            [24] 6108 	mov	b,@r0
      004990 12 58 8D         [24] 6109 	lcall	__gptrget
      004993 FB               [12] 6110 	mov	r3,a
      004994 A3               [24] 6111 	inc	dptr
      004995 12 58 8D         [24] 6112 	lcall	__gptrget
      004998 FC               [12] 6113 	mov	r4,a
      004999 C0 03            [24] 6114 	push	ar3
      00499B C0 04            [24] 6115 	push	ar4
      00499D 74 82            [12] 6116 	mov	a,#___str_11
      00499F C0 E0            [24] 6117 	push	acc
      0049A1 74 71            [12] 6118 	mov	a,#(___str_11 >> 8)
      0049A3 C0 E0            [24] 6119 	push	acc
      0049A5 74 80            [12] 6120 	mov	a,#0x80
      0049A7 C0 E0            [24] 6121 	push	acc
      0049A9 12 58 54         [24] 6122 	lcall	_printf
      0049AC E5 81            [12] 6123 	mov	a,sp
      0049AE 24 FB            [12] 6124 	add	a,#0xfb
      0049B0 F5 81            [12] 6125 	mov	sp,a
                                   6126 ;	calc.c:366: printf("acc = %ld / ", ctx->acc);
      0049B2 E5 08            [12] 6127 	mov	a,_bp
      0049B4 24 04            [12] 6128 	add	a,#0x04
      0049B6 F8               [12] 6129 	mov	r0,a
      0049B7 A9 08            [24] 6130 	mov	r1,_bp
      0049B9 09               [12] 6131 	inc	r1
      0049BA 74 02            [12] 6132 	mov	a,#0x02
      0049BC 26               [12] 6133 	add	a,@r0
      0049BD F7               [12] 6134 	mov	@r1,a
      0049BE E4               [12] 6135 	clr	a
      0049BF 08               [12] 6136 	inc	r0
      0049C0 36               [12] 6137 	addc	a,@r0
      0049C1 09               [12] 6138 	inc	r1
      0049C2 F7               [12] 6139 	mov	@r1,a
      0049C3 08               [12] 6140 	inc	r0
      0049C4 09               [12] 6141 	inc	r1
      0049C5 E6               [12] 6142 	mov	a,@r0
      0049C6 F7               [12] 6143 	mov	@r1,a
      0049C7 A8 08            [24] 6144 	mov	r0,_bp
      0049C9 08               [12] 6145 	inc	r0
      0049CA 86 82            [24] 6146 	mov	dpl,@r0
      0049CC 08               [12] 6147 	inc	r0
      0049CD 86 83            [24] 6148 	mov	dph,@r0
      0049CF 08               [12] 6149 	inc	r0
      0049D0 86 F0            [24] 6150 	mov	b,@r0
      0049D2 12 58 8D         [24] 6151 	lcall	__gptrget
      0049D5 FC               [12] 6152 	mov	r4,a
      0049D6 A3               [24] 6153 	inc	dptr
      0049D7 12 58 8D         [24] 6154 	lcall	__gptrget
      0049DA FD               [12] 6155 	mov	r5,a
      0049DB A3               [24] 6156 	inc	dptr
      0049DC 12 58 8D         [24] 6157 	lcall	__gptrget
      0049DF FE               [12] 6158 	mov	r6,a
      0049E0 A3               [24] 6159 	inc	dptr
      0049E1 12 58 8D         [24] 6160 	lcall	__gptrget
      0049E4 FF               [12] 6161 	mov	r7,a
      0049E5 C0 04            [24] 6162 	push	ar4
      0049E7 C0 05            [24] 6163 	push	ar5
      0049E9 C0 06            [24] 6164 	push	ar6
      0049EB C0 07            [24] 6165 	push	ar7
      0049ED 74 90            [12] 6166 	mov	a,#___str_12
      0049EF C0 E0            [24] 6167 	push	acc
      0049F1 74 71            [12] 6168 	mov	a,#(___str_12 >> 8)
      0049F3 C0 E0            [24] 6169 	push	acc
      0049F5 74 80            [12] 6170 	mov	a,#0x80
      0049F7 C0 E0            [24] 6171 	push	acc
      0049F9 12 58 54         [24] 6172 	lcall	_printf
      0049FC E5 81            [12] 6173 	mov	a,sp
      0049FE 24 F9            [12] 6174 	add	a,#0xf9
      004A00 F5 81            [12] 6175 	mov	sp,a
                                   6176 ;	calc.c:367: printf("%08lx / ", ctx->acc);
      004A02 A8 08            [24] 6177 	mov	r0,_bp
      004A04 08               [12] 6178 	inc	r0
      004A05 86 82            [24] 6179 	mov	dpl,@r0
      004A07 08               [12] 6180 	inc	r0
      004A08 86 83            [24] 6181 	mov	dph,@r0
      004A0A 08               [12] 6182 	inc	r0
      004A0B 86 F0            [24] 6183 	mov	b,@r0
      004A0D 12 58 8D         [24] 6184 	lcall	__gptrget
      004A10 FC               [12] 6185 	mov	r4,a
      004A11 A3               [24] 6186 	inc	dptr
      004A12 12 58 8D         [24] 6187 	lcall	__gptrget
      004A15 FD               [12] 6188 	mov	r5,a
      004A16 A3               [24] 6189 	inc	dptr
      004A17 12 58 8D         [24] 6190 	lcall	__gptrget
      004A1A FE               [12] 6191 	mov	r6,a
      004A1B A3               [24] 6192 	inc	dptr
      004A1C 12 58 8D         [24] 6193 	lcall	__gptrget
      004A1F FF               [12] 6194 	mov	r7,a
      004A20 C0 04            [24] 6195 	push	ar4
      004A22 C0 05            [24] 6196 	push	ar5
      004A24 C0 06            [24] 6197 	push	ar6
      004A26 C0 07            [24] 6198 	push	ar7
      004A28 74 31            [12] 6199 	mov	a,#___str_4
      004A2A C0 E0            [24] 6200 	push	acc
      004A2C 74 71            [12] 6201 	mov	a,#(___str_4 >> 8)
      004A2E C0 E0            [24] 6202 	push	acc
      004A30 74 80            [12] 6203 	mov	a,#0x80
      004A32 C0 E0            [24] 6204 	push	acc
      004A34 12 58 54         [24] 6205 	lcall	_printf
      004A37 E5 81            [12] 6206 	mov	a,sp
      004A39 24 F9            [12] 6207 	add	a,#0xf9
      004A3B F5 81            [12] 6208 	mov	sp,a
                                   6209 ;	calc.c:368: printbin(ctx->acc);
      004A3D A8 08            [24] 6210 	mov	r0,_bp
      004A3F 08               [12] 6211 	inc	r0
      004A40 86 82            [24] 6212 	mov	dpl,@r0
      004A42 08               [12] 6213 	inc	r0
      004A43 86 83            [24] 6214 	mov	dph,@r0
      004A45 08               [12] 6215 	inc	r0
      004A46 86 F0            [24] 6216 	mov	b,@r0
      004A48 E5 08            [12] 6217 	mov	a,_bp
      004A4A 24 07            [12] 6218 	add	a,#0x07
      004A4C F9               [12] 6219 	mov	r1,a
      004A4D 12 58 8D         [24] 6220 	lcall	__gptrget
      004A50 F7               [12] 6221 	mov	@r1,a
      004A51 A3               [24] 6222 	inc	dptr
      004A52 12 58 8D         [24] 6223 	lcall	__gptrget
      004A55 09               [12] 6224 	inc	r1
      004A56 F7               [12] 6225 	mov	@r1,a
      004A57 A3               [24] 6226 	inc	dptr
      004A58 12 58 8D         [24] 6227 	lcall	__gptrget
      004A5B 09               [12] 6228 	inc	r1
      004A5C F7               [12] 6229 	mov	@r1,a
      004A5D A3               [24] 6230 	inc	dptr
      004A5E 12 58 8D         [24] 6231 	lcall	__gptrget
      004A61 09               [12] 6232 	inc	r1
      004A62 F7               [12] 6233 	mov	@r1,a
                                   6234 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      004A63 E5 08            [12] 6235 	mov	a,_bp
      004A65 24 0B            [12] 6236 	add	a,#0x0b
      004A67 F8               [12] 6237 	mov	r0,a
      004A68 E4               [12] 6238 	clr	a
      004A69 F6               [12] 6239 	mov	@r0,a
      004A6A 08               [12] 6240 	inc	r0
      004A6B F6               [12] 6241 	mov	@r0,a
      004A6C 08               [12] 6242 	inc	r0
      004A6D F6               [12] 6243 	mov	@r0,a
      004A6E 08               [12] 6244 	inc	r0
      004A6F 76 80            [12] 6245 	mov	@r0,#0x80
      004A71                       6246 00151$:
                                   6247 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      004A71 E5 08            [12] 6248 	mov	a,_bp
      004A73 24 07            [12] 6249 	add	a,#0x07
      004A75 F8               [12] 6250 	mov	r0,a
      004A76 86 04            [24] 6251 	mov	ar4,@r0
      004A78 08               [12] 6252 	inc	r0
      004A79 86 05            [24] 6253 	mov	ar5,@r0
      004A7B 08               [12] 6254 	inc	r0
      004A7C 86 06            [24] 6255 	mov	ar6,@r0
      004A7E 08               [12] 6256 	inc	r0
      004A7F 86 07            [24] 6257 	mov	ar7,@r0
      004A81 E5 08            [12] 6258 	mov	a,_bp
      004A83 24 0B            [12] 6259 	add	a,#0x0b
      004A85 F8               [12] 6260 	mov	r0,a
      004A86 E6               [12] 6261 	mov	a,@r0
      004A87 52 04            [12] 6262 	anl	ar4,a
      004A89 08               [12] 6263 	inc	r0
      004A8A E6               [12] 6264 	mov	a,@r0
      004A8B 52 05            [12] 6265 	anl	ar5,a
      004A8D 08               [12] 6266 	inc	r0
      004A8E E6               [12] 6267 	mov	a,@r0
      004A8F 52 06            [12] 6268 	anl	ar6,a
      004A91 08               [12] 6269 	inc	r0
      004A92 E6               [12] 6270 	mov	a,@r0
      004A93 52 07            [12] 6271 	anl	ar7,a
      004A95 EC               [12] 6272 	mov	a,r4
      004A96 4D               [12] 6273 	orl	a,r5
      004A97 4E               [12] 6274 	orl	a,r6
      004A98 4F               [12] 6275 	orl	a,r7
      004A99 60 06            [24] 6276 	jz	00227$
      004A9B 7E 31            [12] 6277 	mov	r6,#0x31
      004A9D 7F 00            [12] 6278 	mov	r7,#0x00
      004A9F 80 04            [24] 6279 	sjmp	00228$
      004AA1                       6280 00227$:
      004AA1 7E 30            [12] 6281 	mov	r6,#0x30
      004AA3 7F 00            [12] 6282 	mov	r7,#0x00
      004AA5                       6283 00228$:
      004AA5 8E 82            [24] 6284 	mov	dpl,r6
      004AA7 8F 83            [24] 6285 	mov	dph,r7
      004AA9 12 29 C0         [24] 6286 	lcall	_putchar
                                   6287 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      004AAC E5 08            [12] 6288 	mov	a,_bp
      004AAE 24 0B            [12] 6289 	add	a,#0x0b
      004AB0 F8               [12] 6290 	mov	r0,a
      004AB1 08               [12] 6291 	inc	r0
      004AB2 08               [12] 6292 	inc	r0
      004AB3 08               [12] 6293 	inc	r0
      004AB4 E6               [12] 6294 	mov	a,@r0
      004AB5 C3               [12] 6295 	clr	c
      004AB6 13               [12] 6296 	rrc	a
      004AB7 F6               [12] 6297 	mov	@r0,a
      004AB8 18               [12] 6298 	dec	r0
      004AB9 E6               [12] 6299 	mov	a,@r0
      004ABA 13               [12] 6300 	rrc	a
      004ABB F6               [12] 6301 	mov	@r0,a
      004ABC 18               [12] 6302 	dec	r0
      004ABD E6               [12] 6303 	mov	a,@r0
      004ABE 13               [12] 6304 	rrc	a
      004ABF F6               [12] 6305 	mov	@r0,a
      004AC0 18               [12] 6306 	dec	r0
      004AC1 E6               [12] 6307 	mov	a,@r0
      004AC2 13               [12] 6308 	rrc	a
      004AC3 F6               [12] 6309 	mov	@r0,a
      004AC4 E5 08            [12] 6310 	mov	a,_bp
      004AC6 24 0B            [12] 6311 	add	a,#0x0b
      004AC8 F8               [12] 6312 	mov	r0,a
      004AC9 E6               [12] 6313 	mov	a,@r0
      004ACA 08               [12] 6314 	inc	r0
      004ACB 46               [12] 6315 	orl	a,@r0
      004ACC 08               [12] 6316 	inc	r0
      004ACD 46               [12] 6317 	orl	a,@r0
      004ACE 08               [12] 6318 	inc	r0
      004ACF 46               [12] 6319 	orl	a,@r0
      004AD0 70 9F            [24] 6320 	jnz	00151$
                                   6321 ;	calc.c:369: printf(", acc_valid = %d\r\n\r\n", (int)ctx->acc_valid);
      004AD2 E5 08            [12] 6322 	mov	a,_bp
      004AD4 24 04            [12] 6323 	add	a,#0x04
      004AD6 F8               [12] 6324 	mov	r0,a
      004AD7 74 06            [12] 6325 	mov	a,#0x06
      004AD9 26               [12] 6326 	add	a,@r0
      004ADA FD               [12] 6327 	mov	r5,a
      004ADB E4               [12] 6328 	clr	a
      004ADC 08               [12] 6329 	inc	r0
      004ADD 36               [12] 6330 	addc	a,@r0
      004ADE FE               [12] 6331 	mov	r6,a
      004ADF 08               [12] 6332 	inc	r0
      004AE0 86 07            [24] 6333 	mov	ar7,@r0
      004AE2 8D 82            [24] 6334 	mov	dpl,r5
      004AE4 8E 83            [24] 6335 	mov	dph,r6
      004AE6 8F F0            [24] 6336 	mov	b,r7
      004AE8 12 58 8D         [24] 6337 	lcall	__gptrget
      004AEB FD               [12] 6338 	mov	r5,a
      004AEC 7F 00            [12] 6339 	mov	r7,#0x00
      004AEE C0 05            [24] 6340 	push	ar5
      004AF0 C0 07            [24] 6341 	push	ar7
      004AF2 74 9D            [12] 6342 	mov	a,#___str_13
      004AF4 C0 E0            [24] 6343 	push	acc
      004AF6 74 71            [12] 6344 	mov	a,#(___str_13 >> 8)
      004AF8 C0 E0            [24] 6345 	push	acc
      004AFA 74 80            [12] 6346 	mov	a,#0x80
      004AFC C0 E0            [24] 6347 	push	acc
      004AFE 12 58 54         [24] 6348 	lcall	_printf
      004B01 E5 81            [12] 6349 	mov	a,sp
      004B03 24 FB            [12] 6350 	add	a,#0xfb
      004B05 F5 81            [12] 6351 	mov	sp,a
                                   6352 ;	calc.c:370: printstr("HhOo\tbase 16 10 8 2\r\n");
      004B07 7D B2            [12] 6353 	mov	r5,#___str_14
      004B09 7E 71            [12] 6354 	mov	r6,#(___str_14 >> 8)
      004B0B 7F 80            [12] 6355 	mov	r7,#0x80
                                   6356 ;	calc.c:50: return;
      004B0D                       6357 00154$:
                                   6358 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B0D 8D 82            [24] 6359 	mov	dpl,r5
      004B0F 8E 83            [24] 6360 	mov	dph,r6
      004B11 8F F0            [24] 6361 	mov	b,r7
      004B13 12 58 8D         [24] 6362 	lcall	__gptrget
      004B16 FC               [12] 6363 	mov	r4,a
      004B17 60 10            [24] 6364 	jz	00104$
      004B19 7B 00            [12] 6365 	mov	r3,#0x00
      004B1B 8C 82            [24] 6366 	mov	dpl,r4
      004B1D 8B 83            [24] 6367 	mov	dph,r3
      004B1F 12 29 C0         [24] 6368 	lcall	_putchar
      004B22 0D               [12] 6369 	inc	r5
                                   6370 ;	calc.c:370: printstr("HhOo\tbase 16 10 8 2\r\n");
      004B23 BD 00 E7         [24] 6371 	cjne	r5,#0x00,00154$
      004B26 0E               [12] 6372 	inc	r6
      004B27 80 E4            [24] 6373 	sjmp	00154$
      004B29                       6374 00104$:
                                   6375 ;	calc.c:371: printstr("p\tpeek top\r\n");
      004B29 7D C8            [12] 6376 	mov	r5,#___str_15
      004B2B 7E 71            [12] 6377 	mov	r6,#(___str_15 >> 8)
      004B2D 7F 80            [12] 6378 	mov	r7,#0x80
                                   6379 ;	calc.c:50: return;
      004B2F                       6380 00157$:
                                   6381 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B2F 8D 82            [24] 6382 	mov	dpl,r5
      004B31 8E 83            [24] 6383 	mov	dph,r6
      004B33 8F F0            [24] 6384 	mov	b,r7
      004B35 12 58 8D         [24] 6385 	lcall	__gptrget
      004B38 FC               [12] 6386 	mov	r4,a
      004B39 60 10            [24] 6387 	jz	00106$
      004B3B 7B 00            [12] 6388 	mov	r3,#0x00
      004B3D 8C 82            [24] 6389 	mov	dpl,r4
      004B3F 8B 83            [24] 6390 	mov	dph,r3
      004B41 12 29 C0         [24] 6391 	lcall	_putchar
      004B44 0D               [12] 6392 	inc	r5
                                   6393 ;	calc.c:371: printstr("p\tpeek top\r\n");
      004B45 BD 00 E7         [24] 6394 	cjne	r5,#0x00,00157$
      004B48 0E               [12] 6395 	inc	r6
      004B49 80 E4            [24] 6396 	sjmp	00157$
      004B4B                       6397 00106$:
                                   6398 ;	calc.c:372: printstr("P\tprint stack\r\n");
      004B4B 7D D5            [12] 6399 	mov	r5,#___str_16
      004B4D 7E 71            [12] 6400 	mov	r6,#(___str_16 >> 8)
      004B4F 7F 80            [12] 6401 	mov	r7,#0x80
                                   6402 ;	calc.c:50: return;
      004B51                       6403 00160$:
                                   6404 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B51 8D 82            [24] 6405 	mov	dpl,r5
      004B53 8E 83            [24] 6406 	mov	dph,r6
      004B55 8F F0            [24] 6407 	mov	b,r7
      004B57 12 58 8D         [24] 6408 	lcall	__gptrget
      004B5A FC               [12] 6409 	mov	r4,a
      004B5B 60 10            [24] 6410 	jz	00108$
      004B5D 7B 00            [12] 6411 	mov	r3,#0x00
      004B5F 8C 82            [24] 6412 	mov	dpl,r4
      004B61 8B 83            [24] 6413 	mov	dph,r3
      004B63 12 29 C0         [24] 6414 	lcall	_putchar
      004B66 0D               [12] 6415 	inc	r5
                                   6416 ;	calc.c:372: printstr("P\tprint stack\r\n");
      004B67 BD 00 E7         [24] 6417 	cjne	r5,#0x00,00160$
      004B6A 0E               [12] 6418 	inc	r6
      004B6B 80 E4            [24] 6419 	sjmp	00160$
      004B6D                       6420 00108$:
                                   6421 ;	calc.c:373: printstr("v.\tpop top\r\n");
      004B6D 7D E5            [12] 6422 	mov	r5,#___str_17
      004B6F 7E 71            [12] 6423 	mov	r6,#(___str_17 >> 8)
      004B71 7F 80            [12] 6424 	mov	r7,#0x80
                                   6425 ;	calc.c:50: return;
      004B73                       6426 00163$:
                                   6427 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B73 8D 82            [24] 6428 	mov	dpl,r5
      004B75 8E 83            [24] 6429 	mov	dph,r6
      004B77 8F F0            [24] 6430 	mov	b,r7
      004B79 12 58 8D         [24] 6431 	lcall	__gptrget
      004B7C FC               [12] 6432 	mov	r4,a
      004B7D 60 10            [24] 6433 	jz	00110$
      004B7F 7B 00            [12] 6434 	mov	r3,#0x00
      004B81 8C 82            [24] 6435 	mov	dpl,r4
      004B83 8B 83            [24] 6436 	mov	dph,r3
      004B85 12 29 C0         [24] 6437 	lcall	_putchar
      004B88 0D               [12] 6438 	inc	r5
                                   6439 ;	calc.c:373: printstr("v.\tpop top\r\n");
      004B89 BD 00 E7         [24] 6440 	cjne	r5,#0x00,00163$
      004B8C 0E               [12] 6441 	inc	r6
      004B8D 80 E4            [24] 6442 	sjmp	00163$
      004B8F                       6443 00110$:
                                   6444 ;	calc.c:374: printstr("V\tpop all\r\n");
      004B8F 7D F2            [12] 6445 	mov	r5,#___str_18
      004B91 7E 71            [12] 6446 	mov	r6,#(___str_18 >> 8)
      004B93 7F 80            [12] 6447 	mov	r7,#0x80
                                   6448 ;	calc.c:50: return;
      004B95                       6449 00166$:
                                   6450 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004B95 8D 82            [24] 6451 	mov	dpl,r5
      004B97 8E 83            [24] 6452 	mov	dph,r6
      004B99 8F F0            [24] 6453 	mov	b,r7
      004B9B 12 58 8D         [24] 6454 	lcall	__gptrget
      004B9E FC               [12] 6455 	mov	r4,a
      004B9F 60 10            [24] 6456 	jz	00112$
      004BA1 7B 00            [12] 6457 	mov	r3,#0x00
      004BA3 8C 82            [24] 6458 	mov	dpl,r4
      004BA5 8B 83            [24] 6459 	mov	dph,r3
      004BA7 12 29 C0         [24] 6460 	lcall	_putchar
      004BAA 0D               [12] 6461 	inc	r5
                                   6462 ;	calc.c:374: printstr("V\tpop all\r\n");
      004BAB BD 00 E7         [24] 6463 	cjne	r5,#0x00,00166$
      004BAE 0E               [12] 6464 	inc	r6
      004BAF 80 E4            [24] 6465 	sjmp	00166$
      004BB1                       6466 00112$:
                                   6467 ;	calc.c:375: printstr("i\treset acc\r\n");
      004BB1 7D FE            [12] 6468 	mov	r5,#___str_19
      004BB3 7E 71            [12] 6469 	mov	r6,#(___str_19 >> 8)
      004BB5 7F 80            [12] 6470 	mov	r7,#0x80
                                   6471 ;	calc.c:50: return;
      004BB7                       6472 00169$:
                                   6473 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004BB7 8D 82            [24] 6474 	mov	dpl,r5
      004BB9 8E 83            [24] 6475 	mov	dph,r6
      004BBB 8F F0            [24] 6476 	mov	b,r7
      004BBD 12 58 8D         [24] 6477 	lcall	__gptrget
      004BC0 FC               [12] 6478 	mov	r4,a
      004BC1 60 10            [24] 6479 	jz	00114$
      004BC3 7B 00            [12] 6480 	mov	r3,#0x00
      004BC5 8C 82            [24] 6481 	mov	dpl,r4
      004BC7 8B 83            [24] 6482 	mov	dph,r3
      004BC9 12 29 C0         [24] 6483 	lcall	_putchar
      004BCC 0D               [12] 6484 	inc	r5
                                   6485 ;	calc.c:375: printstr("i\treset acc\r\n");
      004BCD BD 00 E7         [24] 6486 	cjne	r5,#0x00,00169$
      004BD0 0E               [12] 6487 	inc	r6
      004BD1 80 E4            [24] 6488 	sjmp	00169$
      004BD3                       6489 00114$:
                                   6490 ;	calc.c:376: printstr("I\treset and discard acc\r\n");
      004BD3 7D 0C            [12] 6491 	mov	r5,#___str_20
      004BD5 7E 72            [12] 6492 	mov	r6,#(___str_20 >> 8)
      004BD7 7F 80            [12] 6493 	mov	r7,#0x80
                                   6494 ;	calc.c:50: return;
      004BD9                       6495 00172$:
                                   6496 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004BD9 8D 82            [24] 6497 	mov	dpl,r5
      004BDB 8E 83            [24] 6498 	mov	dph,r6
      004BDD 8F F0            [24] 6499 	mov	b,r7
      004BDF 12 58 8D         [24] 6500 	lcall	__gptrget
      004BE2 FC               [12] 6501 	mov	r4,a
      004BE3 60 10            [24] 6502 	jz	00116$
      004BE5 7B 00            [12] 6503 	mov	r3,#0x00
      004BE7 8C 82            [24] 6504 	mov	dpl,r4
      004BE9 8B 83            [24] 6505 	mov	dph,r3
      004BEB 12 29 C0         [24] 6506 	lcall	_putchar
      004BEE 0D               [12] 6507 	inc	r5
                                   6508 ;	calc.c:376: printstr("I\treset and discard acc\r\n");
      004BEF BD 00 E7         [24] 6509 	cjne	r5,#0x00,00172$
      004BF2 0E               [12] 6510 	inc	r6
      004BF3 80 E4            [24] 6511 	sjmp	00172$
      004BF5                       6512 00116$:
                                   6513 ;	calc.c:377: printstr("x\texchange top 2\r\n");
      004BF5 7D 26            [12] 6514 	mov	r5,#___str_21
      004BF7 7E 72            [12] 6515 	mov	r6,#(___str_21 >> 8)
      004BF9 7F 80            [12] 6516 	mov	r7,#0x80
                                   6517 ;	calc.c:50: return;
      004BFB                       6518 00175$:
                                   6519 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004BFB 8D 82            [24] 6520 	mov	dpl,r5
      004BFD 8E 83            [24] 6521 	mov	dph,r6
      004BFF 8F F0            [24] 6522 	mov	b,r7
      004C01 12 58 8D         [24] 6523 	lcall	__gptrget
      004C04 FC               [12] 6524 	mov	r4,a
      004C05 60 10            [24] 6525 	jz	00118$
      004C07 7B 00            [12] 6526 	mov	r3,#0x00
      004C09 8C 82            [24] 6527 	mov	dpl,r4
      004C0B 8B 83            [24] 6528 	mov	dph,r3
      004C0D 12 29 C0         [24] 6529 	lcall	_putchar
      004C10 0D               [12] 6530 	inc	r5
                                   6531 ;	calc.c:377: printstr("x\texchange top 2\r\n");
      004C11 BD 00 E7         [24] 6532 	cjne	r5,#0x00,00175$
      004C14 0E               [12] 6533 	inc	r6
      004C15 80 E4            [24] 6534 	sjmp	00175$
      004C17                       6535 00118$:
                                   6536 ;	calc.c:378: printstr("+\tadd top 2\r\n");
      004C17 7D 39            [12] 6537 	mov	r5,#___str_22
      004C19 7E 72            [12] 6538 	mov	r6,#(___str_22 >> 8)
      004C1B 7F 80            [12] 6539 	mov	r7,#0x80
                                   6540 ;	calc.c:50: return;
      004C1D                       6541 00178$:
                                   6542 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004C1D 8D 82            [24] 6543 	mov	dpl,r5
      004C1F 8E 83            [24] 6544 	mov	dph,r6
      004C21 8F F0            [24] 6545 	mov	b,r7
      004C23 12 58 8D         [24] 6546 	lcall	__gptrget
      004C26 FC               [12] 6547 	mov	r4,a
      004C27 60 10            [24] 6548 	jz	00120$
      004C29 7B 00            [12] 6549 	mov	r3,#0x00
      004C2B 8C 82            [24] 6550 	mov	dpl,r4
      004C2D 8B 83            [24] 6551 	mov	dph,r3
      004C2F 12 29 C0         [24] 6552 	lcall	_putchar
      004C32 0D               [12] 6553 	inc	r5
                                   6554 ;	calc.c:378: printstr("+\tadd top 2\r\n");
      004C33 BD 00 E7         [24] 6555 	cjne	r5,#0x00,00178$
      004C36 0E               [12] 6556 	inc	r6
      004C37 80 E4            [24] 6557 	sjmp	00178$
      004C39                       6558 00120$:
                                   6559 ;	calc.c:379: printstr("-\tsubtract top 2\r\n");
      004C39 7D 47            [12] 6560 	mov	r5,#___str_23
      004C3B 7E 72            [12] 6561 	mov	r6,#(___str_23 >> 8)
      004C3D 7F 80            [12] 6562 	mov	r7,#0x80
                                   6563 ;	calc.c:50: return;
      004C3F                       6564 00181$:
                                   6565 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004C3F 8D 82            [24] 6566 	mov	dpl,r5
      004C41 8E 83            [24] 6567 	mov	dph,r6
      004C43 8F F0            [24] 6568 	mov	b,r7
      004C45 12 58 8D         [24] 6569 	lcall	__gptrget
      004C48 FC               [12] 6570 	mov	r4,a
      004C49 60 10            [24] 6571 	jz	00122$
      004C4B 7B 00            [12] 6572 	mov	r3,#0x00
      004C4D 8C 82            [24] 6573 	mov	dpl,r4
      004C4F 8B 83            [24] 6574 	mov	dph,r3
      004C51 12 29 C0         [24] 6575 	lcall	_putchar
      004C54 0D               [12] 6576 	inc	r5
                                   6577 ;	calc.c:379: printstr("-\tsubtract top 2\r\n");
      004C55 BD 00 E7         [24] 6578 	cjne	r5,#0x00,00181$
      004C58 0E               [12] 6579 	inc	r6
      004C59 80 E4            [24] 6580 	sjmp	00181$
      004C5B                       6581 00122$:
                                   6582 ;	calc.c:380: printstr("*\tmultiply top 2\r\n");
      004C5B 7D 5A            [12] 6583 	mov	r5,#___str_24
      004C5D 7E 72            [12] 6584 	mov	r6,#(___str_24 >> 8)
      004C5F 7F 80            [12] 6585 	mov	r7,#0x80
                                   6586 ;	calc.c:50: return;
      004C61                       6587 00184$:
                                   6588 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004C61 8D 82            [24] 6589 	mov	dpl,r5
      004C63 8E 83            [24] 6590 	mov	dph,r6
      004C65 8F F0            [24] 6591 	mov	b,r7
      004C67 12 58 8D         [24] 6592 	lcall	__gptrget
      004C6A FC               [12] 6593 	mov	r4,a
      004C6B 60 10            [24] 6594 	jz	00124$
      004C6D 7B 00            [12] 6595 	mov	r3,#0x00
      004C6F 8C 82            [24] 6596 	mov	dpl,r4
      004C71 8B 83            [24] 6597 	mov	dph,r3
      004C73 12 29 C0         [24] 6598 	lcall	_putchar
      004C76 0D               [12] 6599 	inc	r5
                                   6600 ;	calc.c:380: printstr("*\tmultiply top 2\r\n");
      004C77 BD 00 E7         [24] 6601 	cjne	r5,#0x00,00184$
      004C7A 0E               [12] 6602 	inc	r6
      004C7B 80 E4            [24] 6603 	sjmp	00184$
      004C7D                       6604 00124$:
                                   6605 ;	calc.c:381: printstr("/\tdivide top 2\r\n");
      004C7D 7D 6D            [12] 6606 	mov	r5,#___str_25
      004C7F 7E 72            [12] 6607 	mov	r6,#(___str_25 >> 8)
      004C81 7F 80            [12] 6608 	mov	r7,#0x80
                                   6609 ;	calc.c:50: return;
      004C83                       6610 00187$:
                                   6611 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004C83 8D 82            [24] 6612 	mov	dpl,r5
      004C85 8E 83            [24] 6613 	mov	dph,r6
      004C87 8F F0            [24] 6614 	mov	b,r7
      004C89 12 58 8D         [24] 6615 	lcall	__gptrget
      004C8C FC               [12] 6616 	mov	r4,a
      004C8D 60 10            [24] 6617 	jz	00126$
      004C8F 7B 00            [12] 6618 	mov	r3,#0x00
      004C91 8C 82            [24] 6619 	mov	dpl,r4
      004C93 8B 83            [24] 6620 	mov	dph,r3
      004C95 12 29 C0         [24] 6621 	lcall	_putchar
      004C98 0D               [12] 6622 	inc	r5
                                   6623 ;	calc.c:381: printstr("/\tdivide top 2\r\n");
      004C99 BD 00 E7         [24] 6624 	cjne	r5,#0x00,00187$
      004C9C 0E               [12] 6625 	inc	r6
      004C9D 80 E4            [24] 6626 	sjmp	00187$
      004C9F                       6627 00126$:
                                   6628 ;	calc.c:382: printstr("\\\tdivide top 2 unsigned\r\n");	
      004C9F 7D 7E            [12] 6629 	mov	r5,#___str_26
      004CA1 7E 72            [12] 6630 	mov	r6,#(___str_26 >> 8)
      004CA3 7F 80            [12] 6631 	mov	r7,#0x80
                                   6632 ;	calc.c:50: return;
      004CA5                       6633 00190$:
                                   6634 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004CA5 8D 82            [24] 6635 	mov	dpl,r5
      004CA7 8E 83            [24] 6636 	mov	dph,r6
      004CA9 8F F0            [24] 6637 	mov	b,r7
      004CAB 12 58 8D         [24] 6638 	lcall	__gptrget
      004CAE FC               [12] 6639 	mov	r4,a
      004CAF 60 10            [24] 6640 	jz	00128$
      004CB1 7B 00            [12] 6641 	mov	r3,#0x00
      004CB3 8C 82            [24] 6642 	mov	dpl,r4
      004CB5 8B 83            [24] 6643 	mov	dph,r3
      004CB7 12 29 C0         [24] 6644 	lcall	_putchar
      004CBA 0D               [12] 6645 	inc	r5
                                   6646 ;	calc.c:382: printstr("\\\tdivide top 2 unsigned\r\n");	
      004CBB BD 00 E7         [24] 6647 	cjne	r5,#0x00,00190$
      004CBE 0E               [12] 6648 	inc	r6
      004CBF 80 E4            [24] 6649 	sjmp	00190$
      004CC1                       6650 00128$:
                                   6651 ;	calc.c:383: printstr("%\tmodulus top 2\r\n");
      004CC1 7D 98            [12] 6652 	mov	r5,#___str_27
      004CC3 7E 72            [12] 6653 	mov	r6,#(___str_27 >> 8)
      004CC5 7F 80            [12] 6654 	mov	r7,#0x80
                                   6655 ;	calc.c:50: return;
      004CC7                       6656 00193$:
                                   6657 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004CC7 8D 82            [24] 6658 	mov	dpl,r5
      004CC9 8E 83            [24] 6659 	mov	dph,r6
      004CCB 8F F0            [24] 6660 	mov	b,r7
      004CCD 12 58 8D         [24] 6661 	lcall	__gptrget
      004CD0 FC               [12] 6662 	mov	r4,a
      004CD1 60 10            [24] 6663 	jz	00130$
      004CD3 7B 00            [12] 6664 	mov	r3,#0x00
      004CD5 8C 82            [24] 6665 	mov	dpl,r4
      004CD7 8B 83            [24] 6666 	mov	dph,r3
      004CD9 12 29 C0         [24] 6667 	lcall	_putchar
      004CDC 0D               [12] 6668 	inc	r5
                                   6669 ;	calc.c:383: printstr("%\tmodulus top 2\r\n");
      004CDD BD 00 E7         [24] 6670 	cjne	r5,#0x00,00193$
      004CE0 0E               [12] 6671 	inc	r6
      004CE1 80 E4            [24] 6672 	sjmp	00193$
      004CE3                       6673 00130$:
                                   6674 ;	calc.c:384: printstr("#\tmodulus top 2 unsigned\r\n");
      004CE3 7D AA            [12] 6675 	mov	r5,#___str_28
      004CE5 7E 72            [12] 6676 	mov	r6,#(___str_28 >> 8)
      004CE7 7F 80            [12] 6677 	mov	r7,#0x80
                                   6678 ;	calc.c:50: return;
      004CE9                       6679 00196$:
                                   6680 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004CE9 8D 82            [24] 6681 	mov	dpl,r5
      004CEB 8E 83            [24] 6682 	mov	dph,r6
      004CED 8F F0            [24] 6683 	mov	b,r7
      004CEF 12 58 8D         [24] 6684 	lcall	__gptrget
      004CF2 FC               [12] 6685 	mov	r4,a
      004CF3 60 10            [24] 6686 	jz	00132$
      004CF5 7B 00            [12] 6687 	mov	r3,#0x00
      004CF7 8C 82            [24] 6688 	mov	dpl,r4
      004CF9 8B 83            [24] 6689 	mov	dph,r3
      004CFB 12 29 C0         [24] 6690 	lcall	_putchar
      004CFE 0D               [12] 6691 	inc	r5
                                   6692 ;	calc.c:384: printstr("#\tmodulus top 2 unsigned\r\n");
      004CFF BD 00 E7         [24] 6693 	cjne	r5,#0x00,00196$
      004D02 0E               [12] 6694 	inc	r6
      004D03 80 E4            [24] 6695 	sjmp	00196$
      004D05                       6696 00132$:
                                   6697 ;	calc.c:385: printstr("&\tand top 2\r\n");
      004D05 7D C5            [12] 6698 	mov	r5,#___str_29
      004D07 7E 72            [12] 6699 	mov	r6,#(___str_29 >> 8)
      004D09 7F 80            [12] 6700 	mov	r7,#0x80
                                   6701 ;	calc.c:50: return;
      004D0B                       6702 00199$:
                                   6703 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D0B 8D 82            [24] 6704 	mov	dpl,r5
      004D0D 8E 83            [24] 6705 	mov	dph,r6
      004D0F 8F F0            [24] 6706 	mov	b,r7
      004D11 12 58 8D         [24] 6707 	lcall	__gptrget
      004D14 FC               [12] 6708 	mov	r4,a
      004D15 60 10            [24] 6709 	jz	00134$
      004D17 7B 00            [12] 6710 	mov	r3,#0x00
      004D19 8C 82            [24] 6711 	mov	dpl,r4
      004D1B 8B 83            [24] 6712 	mov	dph,r3
      004D1D 12 29 C0         [24] 6713 	lcall	_putchar
      004D20 0D               [12] 6714 	inc	r5
                                   6715 ;	calc.c:385: printstr("&\tand top 2\r\n");
      004D21 BD 00 E7         [24] 6716 	cjne	r5,#0x00,00199$
      004D24 0E               [12] 6717 	inc	r6
      004D25 80 E4            [24] 6718 	sjmp	00199$
      004D27                       6719 00134$:
                                   6720 ;	calc.c:386: printstr("|\tor top 2\r\n");
      004D27 7D D3            [12] 6721 	mov	r5,#___str_30
      004D29 7E 72            [12] 6722 	mov	r6,#(___str_30 >> 8)
      004D2B 7F 80            [12] 6723 	mov	r7,#0x80
                                   6724 ;	calc.c:50: return;
      004D2D                       6725 00202$:
                                   6726 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D2D 8D 82            [24] 6727 	mov	dpl,r5
      004D2F 8E 83            [24] 6728 	mov	dph,r6
      004D31 8F F0            [24] 6729 	mov	b,r7
      004D33 12 58 8D         [24] 6730 	lcall	__gptrget
      004D36 FC               [12] 6731 	mov	r4,a
      004D37 60 10            [24] 6732 	jz	00136$
      004D39 7B 00            [12] 6733 	mov	r3,#0x00
      004D3B 8C 82            [24] 6734 	mov	dpl,r4
      004D3D 8B 83            [24] 6735 	mov	dph,r3
      004D3F 12 29 C0         [24] 6736 	lcall	_putchar
      004D42 0D               [12] 6737 	inc	r5
                                   6738 ;	calc.c:386: printstr("|\tor top 2\r\n");
      004D43 BD 00 E7         [24] 6739 	cjne	r5,#0x00,00202$
      004D46 0E               [12] 6740 	inc	r6
      004D47 80 E4            [24] 6741 	sjmp	00202$
      004D49                       6742 00136$:
                                   6743 ;	calc.c:387: printstr("^\txor top 2\r\n");
      004D49 7D E0            [12] 6744 	mov	r5,#___str_31
      004D4B 7E 72            [12] 6745 	mov	r6,#(___str_31 >> 8)
      004D4D 7F 80            [12] 6746 	mov	r7,#0x80
                                   6747 ;	calc.c:50: return;
      004D4F                       6748 00205$:
                                   6749 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D4F 8D 82            [24] 6750 	mov	dpl,r5
      004D51 8E 83            [24] 6751 	mov	dph,r6
      004D53 8F F0            [24] 6752 	mov	b,r7
      004D55 12 58 8D         [24] 6753 	lcall	__gptrget
      004D58 FC               [12] 6754 	mov	r4,a
      004D59 60 10            [24] 6755 	jz	00138$
      004D5B 7B 00            [12] 6756 	mov	r3,#0x00
      004D5D 8C 82            [24] 6757 	mov	dpl,r4
      004D5F 8B 83            [24] 6758 	mov	dph,r3
      004D61 12 29 C0         [24] 6759 	lcall	_putchar
      004D64 0D               [12] 6760 	inc	r5
                                   6761 ;	calc.c:387: printstr("^\txor top 2\r\n");
      004D65 BD 00 E7         [24] 6762 	cjne	r5,#0x00,00205$
      004D68 0E               [12] 6763 	inc	r6
      004D69 80 E4            [24] 6764 	sjmp	00205$
      004D6B                       6765 00138$:
                                   6766 ;	calc.c:388: printstr(">\tshift right top 2\r\n");
      004D6B 7D EE            [12] 6767 	mov	r5,#___str_32
      004D6D 7E 72            [12] 6768 	mov	r6,#(___str_32 >> 8)
      004D6F 7F 80            [12] 6769 	mov	r7,#0x80
                                   6770 ;	calc.c:50: return;
      004D71                       6771 00208$:
                                   6772 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D71 8D 82            [24] 6773 	mov	dpl,r5
      004D73 8E 83            [24] 6774 	mov	dph,r6
      004D75 8F F0            [24] 6775 	mov	b,r7
      004D77 12 58 8D         [24] 6776 	lcall	__gptrget
      004D7A FC               [12] 6777 	mov	r4,a
      004D7B 60 10            [24] 6778 	jz	00140$
      004D7D 7B 00            [12] 6779 	mov	r3,#0x00
      004D7F 8C 82            [24] 6780 	mov	dpl,r4
      004D81 8B 83            [24] 6781 	mov	dph,r3
      004D83 12 29 C0         [24] 6782 	lcall	_putchar
      004D86 0D               [12] 6783 	inc	r5
                                   6784 ;	calc.c:388: printstr(">\tshift right top 2\r\n");
      004D87 BD 00 E7         [24] 6785 	cjne	r5,#0x00,00208$
      004D8A 0E               [12] 6786 	inc	r6
      004D8B 80 E4            [24] 6787 	sjmp	00208$
      004D8D                       6788 00140$:
                                   6789 ;	calc.c:389: printstr("]\tarithmetic shift right top 2\r\n");
      004D8D 7D 04            [12] 6790 	mov	r5,#___str_33
      004D8F 7E 73            [12] 6791 	mov	r6,#(___str_33 >> 8)
      004D91 7F 80            [12] 6792 	mov	r7,#0x80
                                   6793 ;	calc.c:50: return;
      004D93                       6794 00211$:
                                   6795 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004D93 8D 82            [24] 6796 	mov	dpl,r5
      004D95 8E 83            [24] 6797 	mov	dph,r6
      004D97 8F F0            [24] 6798 	mov	b,r7
      004D99 12 58 8D         [24] 6799 	lcall	__gptrget
      004D9C FC               [12] 6800 	mov	r4,a
      004D9D 60 10            [24] 6801 	jz	00142$
      004D9F 7B 00            [12] 6802 	mov	r3,#0x00
      004DA1 8C 82            [24] 6803 	mov	dpl,r4
      004DA3 8B 83            [24] 6804 	mov	dph,r3
      004DA5 12 29 C0         [24] 6805 	lcall	_putchar
      004DA8 0D               [12] 6806 	inc	r5
                                   6807 ;	calc.c:389: printstr("]\tarithmetic shift right top 2\r\n");
      004DA9 BD 00 E7         [24] 6808 	cjne	r5,#0x00,00211$
      004DAC 0E               [12] 6809 	inc	r6
      004DAD 80 E4            [24] 6810 	sjmp	00211$
      004DAF                       6811 00142$:
                                   6812 ;	calc.c:390: printstr("<\tshift left top 2\r\n");
      004DAF 7D 25            [12] 6813 	mov	r5,#___str_34
      004DB1 7E 73            [12] 6814 	mov	r6,#(___str_34 >> 8)
      004DB3 7F 80            [12] 6815 	mov	r7,#0x80
                                   6816 ;	calc.c:50: return;
      004DB5                       6817 00214$:
                                   6818 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004DB5 8D 82            [24] 6819 	mov	dpl,r5
      004DB7 8E 83            [24] 6820 	mov	dph,r6
      004DB9 8F F0            [24] 6821 	mov	b,r7
      004DBB 12 58 8D         [24] 6822 	lcall	__gptrget
      004DBE FC               [12] 6823 	mov	r4,a
      004DBF 60 10            [24] 6824 	jz	00144$
      004DC1 7B 00            [12] 6825 	mov	r3,#0x00
      004DC3 8C 82            [24] 6826 	mov	dpl,r4
      004DC5 8B 83            [24] 6827 	mov	dph,r3
      004DC7 12 29 C0         [24] 6828 	lcall	_putchar
      004DCA 0D               [12] 6829 	inc	r5
                                   6830 ;	calc.c:390: printstr("<\tshift left top 2\r\n");
      004DCB BD 00 E7         [24] 6831 	cjne	r5,#0x00,00214$
      004DCE 0E               [12] 6832 	inc	r6
      004DCF 80 E4            [24] 6833 	sjmp	00214$
      004DD1                       6834 00144$:
                                   6835 ;	calc.c:391: printstr("~\tbitwise not top\r\n");
      004DD1 7D 3A            [12] 6836 	mov	r5,#___str_35
      004DD3 7E 73            [12] 6837 	mov	r6,#(___str_35 >> 8)
      004DD5 7F 80            [12] 6838 	mov	r7,#0x80
                                   6839 ;	calc.c:50: return;
      004DD7                       6840 00217$:
                                   6841 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004DD7 8D 82            [24] 6842 	mov	dpl,r5
      004DD9 8E 83            [24] 6843 	mov	dph,r6
      004DDB 8F F0            [24] 6844 	mov	b,r7
      004DDD 12 58 8D         [24] 6845 	lcall	__gptrget
      004DE0 FC               [12] 6846 	mov	r4,a
      004DE1 60 10            [24] 6847 	jz	00146$
      004DE3 7B 00            [12] 6848 	mov	r3,#0x00
      004DE5 8C 82            [24] 6849 	mov	dpl,r4
      004DE7 8B 83            [24] 6850 	mov	dph,r3
      004DE9 12 29 C0         [24] 6851 	lcall	_putchar
      004DEC 0D               [12] 6852 	inc	r5
                                   6853 ;	calc.c:391: printstr("~\tbitwise not top\r\n");
      004DED BD 00 E7         [24] 6854 	cjne	r5,#0x00,00217$
      004DF0 0E               [12] 6855 	inc	r6
      004DF1 80 E4            [24] 6856 	sjmp	00217$
      004DF3                       6857 00146$:
                                   6858 ;	calc.c:392: printstr("?\thelp\r\n");
      004DF3 7D 4E            [12] 6859 	mov	r5,#___str_36
      004DF5 7E 73            [12] 6860 	mov	r6,#(___str_36 >> 8)
      004DF7 7F 80            [12] 6861 	mov	r7,#0x80
                                   6862 ;	calc.c:50: return;
      004DF9                       6863 00220$:
                                   6864 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004DF9 8D 82            [24] 6865 	mov	dpl,r5
      004DFB 8E 83            [24] 6866 	mov	dph,r6
      004DFD 8F F0            [24] 6867 	mov	b,r7
      004DFF 12 58 8D         [24] 6868 	lcall	__gptrget
      004E02 FC               [12] 6869 	mov	r4,a
      004E03 60 10            [24] 6870 	jz	00148$
      004E05 7B 00            [12] 6871 	mov	r3,#0x00
      004E07 8C 82            [24] 6872 	mov	dpl,r4
      004E09 8B 83            [24] 6873 	mov	dph,r3
      004E0B 12 29 C0         [24] 6874 	lcall	_putchar
      004E0E 0D               [12] 6875 	inc	r5
                                   6876 ;	calc.c:392: printstr("?\thelp\r\n");
      004E0F BD 00 E7         [24] 6877 	cjne	r5,#0x00,00220$
      004E12 0E               [12] 6878 	inc	r6
      004E13 80 E4            [24] 6879 	sjmp	00220$
      004E15                       6880 00148$:
                                   6881 ;	calc.c:393: printstr("q\tquit\r\n");
      004E15 7D 57            [12] 6882 	mov	r5,#___str_37
      004E17 7E 73            [12] 6883 	mov	r6,#(___str_37 >> 8)
      004E19 7F 80            [12] 6884 	mov	r7,#0x80
                                   6885 ;	calc.c:50: return;
      004E1B                       6886 00223$:
                                   6887 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004E1B 8D 82            [24] 6888 	mov	dpl,r5
      004E1D 8E 83            [24] 6889 	mov	dph,r6
      004E1F 8F F0            [24] 6890 	mov	b,r7
      004E21 12 58 8D         [24] 6891 	lcall	__gptrget
      004E24 FC               [12] 6892 	mov	r4,a
      004E25 60 10            [24] 6893 	jz	00150$
      004E27 7B 00            [12] 6894 	mov	r3,#0x00
      004E29 8C 82            [24] 6895 	mov	dpl,r4
      004E2B 8B 83            [24] 6896 	mov	dph,r3
      004E2D 12 29 C0         [24] 6897 	lcall	_putchar
      004E30 0D               [12] 6898 	inc	r5
                                   6899 ;	calc.c:393: printstr("q\tquit\r\n");
      004E31 BD 00 E7         [24] 6900 	cjne	r5,#0x00,00223$
      004E34 0E               [12] 6901 	inc	r6
      004E35 80 E4            [24] 6902 	sjmp	00223$
      004E37                       6903 00150$:
                                   6904 ;	calc.c:395: return 1;
      004E37 90 00 01         [24] 6905 	mov	dptr,#0x0001
                                   6906 ;	calc.c:396: }
      004E3A 85 08 81         [24] 6907 	mov	sp,_bp
      004E3D D0 08            [24] 6908 	pop	_bp
      004E3F 22               [24] 6909 	ret
                                   6910 ;------------------------------------------------------------
                                   6911 ;Allocation info for local variables in function 'main'
                                   6912 ;------------------------------------------------------------
                                   6913 ;input                     Allocated to registers r6 r7 
                                   6914 ;__1966080149              Allocated to registers 
                                   6915 ;s                         Allocated to registers r2 r3 r4 
                                   6916 ;sloc0                     Allocated to stack - _bp +1
                                   6917 ;------------------------------------------------------------
                                   6918 ;	calc.c:425: void main(void) {
                                   6919 ;	-----------------------------------------
                                   6920 ;	 function main
                                   6921 ;	-----------------------------------------
      004E40                       6922 _main:
      004E40 C0 08            [24] 6923 	push	_bp
      004E42 85 81 08         [24] 6924 	mov	_bp,sp
      004E45 05 81            [12] 6925 	inc	sp
                                   6926 ;	calc.c:428: c.base = 10;
      004E47 90 80 0C         [24] 6927 	mov	dptr,#_c
      004E4A 74 0A            [12] 6928 	mov	a,#0x0a
      004E4C F0               [24] 6929 	movx	@dptr,a
      004E4D E4               [12] 6930 	clr	a
      004E4E A3               [24] 6931 	inc	dptr
      004E4F F0               [24] 6932 	movx	@dptr,a
                                   6933 ;	calc.c:429: c.acc = 0l;
      004E50 90 80 0E         [24] 6934 	mov	dptr,#(_c + 0x0002)
      004E53 F0               [24] 6935 	movx	@dptr,a
      004E54 A3               [24] 6936 	inc	dptr
      004E55 F0               [24] 6937 	movx	@dptr,a
      004E56 A3               [24] 6938 	inc	dptr
      004E57 F0               [24] 6939 	movx	@dptr,a
      004E58 A3               [24] 6940 	inc	dptr
      004E59 F0               [24] 6941 	movx	@dptr,a
                                   6942 ;	calc.c:430: c.acc_valid = (char)0;
      004E5A 90 80 12         [24] 6943 	mov	dptr,#(_c + 0x0006)
      004E5D F0               [24] 6944 	movx	@dptr,a
                                   6945 ;	calc.c:431: c.digit[0] = c.digit[1] = '\0';
      004E5E 90 80 14         [24] 6946 	mov	dptr,#(_c + 0x0008)
      004E61 F0               [24] 6947 	movx	@dptr,a
      004E62 90 80 13         [24] 6948 	mov	dptr,#(_c + 0x0007)
      004E65 F0               [24] 6949 	movx	@dptr,a
                                   6950 ;	calc.c:433: stack_init(&c.s);	
      004E66 90 80 15         [24] 6951 	mov	dptr,#(_c + 0x0009)
      004E69 75 F0 00         [24] 6952 	mov	b,#0x00
      004E6C 12 26 80         [24] 6953 	lcall	_stack_init
                                   6954 ;	calc.c:434: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      004E6F 74 0C            [12] 6955 	mov	a,#_c
      004E71 C0 E0            [24] 6956 	push	acc
      004E73 74 80            [12] 6957 	mov	a,#(_c >> 8)
      004E75 C0 E0            [24] 6958 	push	acc
      004E77 E4               [12] 6959 	clr	a
      004E78 C0 E0            [24] 6960 	push	acc
      004E7A 74 1B            [12] 6961 	mov	a,#_deltas
      004E7C C0 E0            [24] 6962 	push	acc
      004E7E 74 A0            [12] 6963 	mov	a,#(_deltas >> 8)
      004E80 C0 E0            [24] 6964 	push	acc
      004E82 E4               [12] 6965 	clr	a
      004E83 C0 E0            [24] 6966 	push	acc
      004E85 C0 E0            [24] 6967 	push	acc
      004E87 74 80            [12] 6968 	mov	a,#0x80
      004E89 C0 E0            [24] 6969 	push	acc
      004E8B 74 03            [12] 6970 	mov	a,#0x03
      004E8D C0 E0            [24] 6971 	push	acc
      004E8F E4               [12] 6972 	clr	a
      004E90 C0 E0            [24] 6973 	push	acc
      004E92 C0 E0            [24] 6974 	push	acc
      004E94 C0 E0            [24] 6975 	push	acc
      004E96 90 80 00         [24] 6976 	mov	dptr,#_s
      004E99 75 F0 00         [24] 6977 	mov	b,#0x00
      004E9C 12 20 90         [24] 6978 	lcall	_state_init
      004E9F E5 81            [12] 6979 	mov	a,sp
      004EA1 24 F4            [12] 6980 	add	a,#0xf4
      004EA3 F5 81            [12] 6981 	mov	sp,a
                                   6982 ;	calc.c:436: while (1) {
      004EA5                       6983 00177$:
                                   6984 ;	calc.c:437: input = getchar();
      004EA5 12 29 C5         [24] 6985 	lcall	_getchar
      004EA8 AE 82            [24] 6986 	mov	r6,dpl
      004EAA AF 83            [24] 6987 	mov	r7,dph
                                   6988 ;	calc.c:438: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      004EAC 8E 05            [24] 6989 	mov	ar5,r6
      004EAE BD 0D 02         [24] 6990 	cjne	r5,#0x0d,00339$
      004EB1 80 03            [24] 6991 	sjmp	00101$
      004EB3                       6992 00339$:
      004EB3 BD 0A 36         [24] 6993 	cjne	r5,#0x0a,00102$
      004EB6                       6994 00101$:
      004EB6 7A 0E            [12] 6995 	mov	r2,#___str_0
      004EB8 7B 71            [12] 6996 	mov	r3,#(___str_0 >> 8)
      004EBA 7C 80            [12] 6997 	mov	r4,#0x80
                                   6998 ;	calc.c:50: return;
      004EBC                       6999 00182$:
                                   7000 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004EBC 8A 82            [24] 7001 	mov	dpl,r2
      004EBE 8B 83            [24] 7002 	mov	dph,r3
      004EC0 8C F0            [24] 7003 	mov	b,r4
      004EC2 A8 08            [24] 7004 	mov	r0,_bp
      004EC4 08               [12] 7005 	inc	r0
      004EC5 12 58 8D         [24] 7006 	lcall	__gptrget
      004EC8 F6               [12] 7007 	mov	@r0,a
      004EC9 A8 08            [24] 7008 	mov	r0,_bp
      004ECB 08               [12] 7009 	inc	r0
      004ECC E6               [12] 7010 	mov	a,@r0
      004ECD 60 24            [24] 7011 	jz	00103$
      004ECF C0 06            [24] 7012 	push	ar6
      004ED1 C0 07            [24] 7013 	push	ar7
      004ED3 A8 08            [24] 7014 	mov	r0,_bp
      004ED5 08               [12] 7015 	inc	r0
      004ED6 86 06            [24] 7016 	mov	ar6,@r0
      004ED8 7F 00            [12] 7017 	mov	r7,#0x00
      004EDA 8E 82            [24] 7018 	mov	dpl,r6
      004EDC 8F 83            [24] 7019 	mov	dph,r7
      004EDE 12 29 C0         [24] 7020 	lcall	_putchar
      004EE1 0A               [12] 7021 	inc	r2
      004EE2 BA 00 01         [24] 7022 	cjne	r2,#0x00,00343$
      004EE5 0B               [12] 7023 	inc	r3
      004EE6                       7024 00343$:
      004EE6 D0 07            [24] 7025 	pop	ar7
      004EE8 D0 06            [24] 7026 	pop	ar6
                                   7027 ;	calc.c:438: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      004EEA 80 D0            [24] 7028 	sjmp	00182$
      004EEC                       7029 00102$:
                                   7030 ;	calc.c:439: else (void)putchar(input);
      004EEC 8E 82            [24] 7031 	mov	dpl,r6
      004EEE 8F 83            [24] 7032 	mov	dph,r7
      004EF0 12 29 C0         [24] 7033 	lcall	_putchar
      004EF3                       7034 00103$:
                                   7035 ;	calc.c:440: c.digit[0] = (char)input;
      004EF3 90 80 13         [24] 7036 	mov	dptr,#(_c + 0x0007)
      004EF6 ED               [12] 7037 	mov	a,r5
      004EF7 F0               [24] 7038 	movx	@dptr,a
                                   7039 ;	calc.c:442: if ((char)input == 'q') {
      004EF8 BD 71 29         [24] 7040 	cjne	r5,#0x71,00174$
                                   7041 ;	calc.c:443: if (state_exec(&s, EVENT_TERM) <= 0) break;
      004EFB 74 07            [12] 7042 	mov	a,#0x07
      004EFD C0 E0            [24] 7043 	push	acc
      004EFF E4               [12] 7044 	clr	a
      004F00 C0 E0            [24] 7045 	push	acc
      004F02 90 80 00         [24] 7046 	mov	dptr,#_s
      004F05 75 F0 00         [24] 7047 	mov	b,#0x00
      004F08 12 21 46         [24] 7048 	lcall	_state_exec
      004F0B AB 82            [24] 7049 	mov	r3,dpl
      004F0D AC 83            [24] 7050 	mov	r4,dph
      004F0F 15 81            [12] 7051 	dec	sp
      004F11 15 81            [12] 7052 	dec	sp
      004F13 C3               [12] 7053 	clr	c
      004F14 E4               [12] 7054 	clr	a
      004F15 9B               [12] 7055 	subb	a,r3
      004F16 74 80            [12] 7056 	mov	a,#(0x00 ^ 0x80)
      004F18 8C F0            [24] 7057 	mov	b,r4
      004F1A 63 F0 80         [24] 7058 	xrl	b,#0x80
      004F1D 95 F0            [12] 7059 	subb	a,b
      004F1F 40 84            [24] 7060 	jc	00177$
      004F21 02 51 5C         [24] 7061 	ljmp	00178$
      004F24                       7062 00174$:
                                   7063 ;	calc.c:444: } else if ((char)input == '?') {
      004F24 BD 3F 2C         [24] 7064 	cjne	r5,#0x3f,00171$
                                   7065 ;	calc.c:445: if (state_exec(&s, EVENT_HELP) <= 0) break;
      004F27 74 03            [12] 7066 	mov	a,#0x03
      004F29 C0 E0            [24] 7067 	push	acc
      004F2B E4               [12] 7068 	clr	a
      004F2C C0 E0            [24] 7069 	push	acc
      004F2E 90 80 00         [24] 7070 	mov	dptr,#_s
      004F31 75 F0 00         [24] 7071 	mov	b,#0x00
      004F34 12 21 46         [24] 7072 	lcall	_state_exec
      004F37 AB 82            [24] 7073 	mov	r3,dpl
      004F39 AC 83            [24] 7074 	mov	r4,dph
      004F3B 15 81            [12] 7075 	dec	sp
      004F3D 15 81            [12] 7076 	dec	sp
      004F3F C3               [12] 7077 	clr	c
      004F40 E4               [12] 7078 	clr	a
      004F41 9B               [12] 7079 	subb	a,r3
      004F42 74 80            [12] 7080 	mov	a,#(0x00 ^ 0x80)
      004F44 8C F0            [24] 7081 	mov	b,r4
      004F46 63 F0 80         [24] 7082 	xrl	b,#0x80
      004F49 95 F0            [12] 7083 	subb	a,b
      004F4B 50 03            [24] 7084 	jnc	00349$
      004F4D 02 4E A5         [24] 7085 	ljmp	00177$
      004F50                       7086 00349$:
      004F50 02 51 5C         [24] 7087 	ljmp	00178$
      004F53                       7088 00171$:
                                   7089 ;	calc.c:446: } else if ((char)input == 'i') {
      004F53 BD 69 2C         [24] 7090 	cjne	r5,#0x69,00168$
                                   7091 ;	calc.c:447: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      004F56 74 05            [12] 7092 	mov	a,#0x05
      004F58 C0 E0            [24] 7093 	push	acc
      004F5A E4               [12] 7094 	clr	a
      004F5B C0 E0            [24] 7095 	push	acc
      004F5D 90 80 00         [24] 7096 	mov	dptr,#_s
      004F60 75 F0 00         [24] 7097 	mov	b,#0x00
      004F63 12 21 46         [24] 7098 	lcall	_state_exec
      004F66 AB 82            [24] 7099 	mov	r3,dpl
      004F68 AC 83            [24] 7100 	mov	r4,dph
      004F6A 15 81            [12] 7101 	dec	sp
      004F6C 15 81            [12] 7102 	dec	sp
      004F6E C3               [12] 7103 	clr	c
      004F6F E4               [12] 7104 	clr	a
      004F70 9B               [12] 7105 	subb	a,r3
      004F71 74 80            [12] 7106 	mov	a,#(0x00 ^ 0x80)
      004F73 8C F0            [24] 7107 	mov	b,r4
      004F75 63 F0 80         [24] 7108 	xrl	b,#0x80
      004F78 95 F0            [12] 7109 	subb	a,b
      004F7A 50 03            [24] 7110 	jnc	00352$
      004F7C 02 4E A5         [24] 7111 	ljmp	00177$
      004F7F                       7112 00352$:
      004F7F 02 51 5C         [24] 7113 	ljmp	00178$
      004F82                       7114 00168$:
                                   7115 ;	calc.c:448: } else if ((char)input == 'I') {
      004F82 BD 49 2C         [24] 7116 	cjne	r5,#0x49,00165$
                                   7117 ;	calc.c:449: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      004F85 74 06            [12] 7118 	mov	a,#0x06
      004F87 C0 E0            [24] 7119 	push	acc
      004F89 E4               [12] 7120 	clr	a
      004F8A C0 E0            [24] 7121 	push	acc
      004F8C 90 80 00         [24] 7122 	mov	dptr,#_s
      004F8F 75 F0 00         [24] 7123 	mov	b,#0x00
      004F92 12 21 46         [24] 7124 	lcall	_state_exec
      004F95 AB 82            [24] 7125 	mov	r3,dpl
      004F97 AC 83            [24] 7126 	mov	r4,dph
      004F99 15 81            [12] 7127 	dec	sp
      004F9B 15 81            [12] 7128 	dec	sp
      004F9D C3               [12] 7129 	clr	c
      004F9E E4               [12] 7130 	clr	a
      004F9F 9B               [12] 7131 	subb	a,r3
      004FA0 74 80            [12] 7132 	mov	a,#(0x00 ^ 0x80)
      004FA2 8C F0            [24] 7133 	mov	b,r4
      004FA4 63 F0 80         [24] 7134 	xrl	b,#0x80
      004FA7 95 F0            [12] 7135 	subb	a,b
      004FA9 50 03            [24] 7136 	jnc	00355$
      004FAB 02 4E A5         [24] 7137 	ljmp	00177$
      004FAE                       7138 00355$:
      004FAE 02 51 5C         [24] 7139 	ljmp	00178$
      004FB1                       7140 00165$:
                                   7141 ;	calc.c:451: ((char)input == 'h') || ((char)input == 'H') ||
      004FB1 BD 68 02         [24] 7142 	cjne	r5,#0x68,00356$
      004FB4 80 0D            [24] 7143 	sjmp	00158$
      004FB6                       7144 00356$:
      004FB6 BD 48 02         [24] 7145 	cjne	r5,#0x48,00357$
      004FB9 80 08            [24] 7146 	sjmp	00158$
      004FBB                       7147 00357$:
                                   7148 ;	calc.c:452: ((char)input == 'o') || ((char)input == 'O')
      004FBB BD 6F 02         [24] 7149 	cjne	r5,#0x6f,00358$
      004FBE 80 03            [24] 7150 	sjmp	00158$
      004FC0                       7151 00358$:
      004FC0 BD 4F 2C         [24] 7152 	cjne	r5,#0x4f,00159$
      004FC3                       7153 00158$:
                                   7154 ;	calc.c:454: if (state_exec(&s, EVENT_BASE) <= 0) break;
      004FC3 74 04            [12] 7155 	mov	a,#0x04
      004FC5 C0 E0            [24] 7156 	push	acc
      004FC7 E4               [12] 7157 	clr	a
      004FC8 C0 E0            [24] 7158 	push	acc
      004FCA 90 80 00         [24] 7159 	mov	dptr,#_s
      004FCD 75 F0 00         [24] 7160 	mov	b,#0x00
      004FD0 12 21 46         [24] 7161 	lcall	_state_exec
      004FD3 AB 82            [24] 7162 	mov	r3,dpl
      004FD5 AC 83            [24] 7163 	mov	r4,dph
      004FD7 15 81            [12] 7164 	dec	sp
      004FD9 15 81            [12] 7165 	dec	sp
      004FDB C3               [12] 7166 	clr	c
      004FDC E4               [12] 7167 	clr	a
      004FDD 9B               [12] 7168 	subb	a,r3
      004FDE 74 80            [12] 7169 	mov	a,#(0x00 ^ 0x80)
      004FE0 8C F0            [24] 7170 	mov	b,r4
      004FE2 63 F0 80         [24] 7171 	xrl	b,#0x80
      004FE5 95 F0            [12] 7172 	subb	a,b
      004FE7 50 03            [24] 7173 	jnc	00361$
      004FE9 02 4E A5         [24] 7174 	ljmp	00177$
      004FEC                       7175 00361$:
      004FEC 02 51 5C         [24] 7176 	ljmp	00178$
      004FEF                       7177 00159$:
                                   7178 ;	calc.c:455: } else if (isxdigit(input)) {
      004FEF 8E 82            [24] 7179 	mov	dpl,r6
      004FF1 8F 83            [24] 7180 	mov	dph,r7
      004FF3 C0 05            [24] 7181 	push	ar5
      004FF5 12 51 64         [24] 7182 	lcall	_isxdigit
      004FF8 E5 82            [12] 7183 	mov	a,dpl
      004FFA 85 83 F0         [24] 7184 	mov	b,dph
      004FFD D0 05            [24] 7185 	pop	ar5
      004FFF 45 F0            [12] 7186 	orl	a,b
      005001 60 2C            [24] 7187 	jz	00156$
                                   7188 ;	calc.c:456: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      005003 74 01            [12] 7189 	mov	a,#0x01
      005005 C0 E0            [24] 7190 	push	acc
      005007 E4               [12] 7191 	clr	a
      005008 C0 E0            [24] 7192 	push	acc
      00500A 90 80 00         [24] 7193 	mov	dptr,#_s
      00500D 75 F0 00         [24] 7194 	mov	b,#0x00
      005010 12 21 46         [24] 7195 	lcall	_state_exec
      005013 AE 82            [24] 7196 	mov	r6,dpl
      005015 AF 83            [24] 7197 	mov	r7,dph
      005017 15 81            [12] 7198 	dec	sp
      005019 15 81            [12] 7199 	dec	sp
      00501B C3               [12] 7200 	clr	c
      00501C E4               [12] 7201 	clr	a
      00501D 9E               [12] 7202 	subb	a,r6
      00501E 74 80            [12] 7203 	mov	a,#(0x00 ^ 0x80)
      005020 8F F0            [24] 7204 	mov	b,r7
      005022 63 F0 80         [24] 7205 	xrl	b,#0x80
      005025 95 F0            [12] 7206 	subb	a,b
      005027 50 03            [24] 7207 	jnc	00363$
      005029 02 4E A5         [24] 7208 	ljmp	00177$
      00502C                       7209 00363$:
      00502C 02 51 5C         [24] 7210 	ljmp	00178$
      00502F                       7211 00156$:
                                   7212 ;	calc.c:458: ((char)input == 'p') || ((char)input == 'P') ||
      00502F BD 70 02         [24] 7213 	cjne	r5,#0x70,00364$
      005032 80 17            [24] 7214 	sjmp	00147$
      005034                       7215 00364$:
      005034 BD 50 02         [24] 7216 	cjne	r5,#0x50,00365$
      005037 80 12            [24] 7217 	sjmp	00147$
      005039                       7218 00365$:
                                   7219 ;	calc.c:459: ((char)input == 'v') || ((char)input == 'V') ||
      005039 BD 76 02         [24] 7220 	cjne	r5,#0x76,00366$
      00503C 80 0D            [24] 7221 	sjmp	00147$
      00503E                       7222 00366$:
      00503E BD 56 02         [24] 7223 	cjne	r5,#0x56,00367$
      005041 80 08            [24] 7224 	sjmp	00147$
      005043                       7225 00367$:
                                   7226 ;	calc.c:460: ((char)input == '.') ||
      005043 BD 2E 02         [24] 7227 	cjne	r5,#0x2e,00368$
      005046 80 03            [24] 7228 	sjmp	00147$
      005048                       7229 00368$:
                                   7230 ;	calc.c:461: ((char)input == 'x')
      005048 BD 78 2C         [24] 7231 	cjne	r5,#0x78,00148$
      00504B                       7232 00147$:
                                   7233 ;	calc.c:463: if (state_exec(&s, EVENT_OP) <= 0) break;
      00504B 74 02            [12] 7234 	mov	a,#0x02
      00504D C0 E0            [24] 7235 	push	acc
      00504F E4               [12] 7236 	clr	a
      005050 C0 E0            [24] 7237 	push	acc
      005052 90 80 00         [24] 7238 	mov	dptr,#_s
      005055 75 F0 00         [24] 7239 	mov	b,#0x00
      005058 12 21 46         [24] 7240 	lcall	_state_exec
      00505B AE 82            [24] 7241 	mov	r6,dpl
      00505D AF 83            [24] 7242 	mov	r7,dph
      00505F 15 81            [12] 7243 	dec	sp
      005061 15 81            [12] 7244 	dec	sp
      005063 C3               [12] 7245 	clr	c
      005064 E4               [12] 7246 	clr	a
      005065 9E               [12] 7247 	subb	a,r6
      005066 74 80            [12] 7248 	mov	a,#(0x00 ^ 0x80)
      005068 8F F0            [24] 7249 	mov	b,r7
      00506A 63 F0 80         [24] 7250 	xrl	b,#0x80
      00506D 95 F0            [12] 7251 	subb	a,b
      00506F 50 03            [24] 7252 	jnc	00371$
      005071 02 4E A5         [24] 7253 	ljmp	00177$
      005074                       7254 00371$:
      005074 02 51 5C         [24] 7255 	ljmp	00178$
      005077                       7256 00148$:
                                   7257 ;	calc.c:465: ((char)input == '+') || ((char)input == '-')
      005077 BD 2B 02         [24] 7258 	cjne	r5,#0x2b,00372$
      00507A 80 03            [24] 7259 	sjmp	00143$
      00507C                       7260 00372$:
      00507C BD 2D 2C         [24] 7261 	cjne	r5,#0x2d,00144$
      00507F                       7262 00143$:
                                   7263 ;	calc.c:467: if (state_exec(&s, EVENT_OP) <= 0) break;
      00507F 74 02            [12] 7264 	mov	a,#0x02
      005081 C0 E0            [24] 7265 	push	acc
      005083 E4               [12] 7266 	clr	a
      005084 C0 E0            [24] 7267 	push	acc
      005086 90 80 00         [24] 7268 	mov	dptr,#_s
      005089 75 F0 00         [24] 7269 	mov	b,#0x00
      00508C 12 21 46         [24] 7270 	lcall	_state_exec
      00508F AE 82            [24] 7271 	mov	r6,dpl
      005091 AF 83            [24] 7272 	mov	r7,dph
      005093 15 81            [12] 7273 	dec	sp
      005095 15 81            [12] 7274 	dec	sp
      005097 C3               [12] 7275 	clr	c
      005098 E4               [12] 7276 	clr	a
      005099 9E               [12] 7277 	subb	a,r6
      00509A 74 80            [12] 7278 	mov	a,#(0x00 ^ 0x80)
      00509C 8F F0            [24] 7279 	mov	b,r7
      00509E 63 F0 80         [24] 7280 	xrl	b,#0x80
      0050A1 95 F0            [12] 7281 	subb	a,b
      0050A3 50 03            [24] 7282 	jnc	00375$
      0050A5 02 4E A5         [24] 7283 	ljmp	00177$
      0050A8                       7284 00375$:
      0050A8 02 51 5C         [24] 7285 	ljmp	00178$
      0050AB                       7286 00144$:
                                   7287 ;	calc.c:469: ((char)input == '*') ||
      0050AB BD 2A 02         [24] 7288 	cjne	r5,#0x2a,00376$
      0050AE 80 12            [24] 7289 	sjmp	00136$
      0050B0                       7290 00376$:
                                   7291 ;	calc.c:470: ((char)input == '/') || ((char)input == '\\') ||
      0050B0 BD 2F 02         [24] 7292 	cjne	r5,#0x2f,00377$
      0050B3 80 0D            [24] 7293 	sjmp	00136$
      0050B5                       7294 00377$:
      0050B5 BD 5C 02         [24] 7295 	cjne	r5,#0x5c,00378$
      0050B8 80 08            [24] 7296 	sjmp	00136$
      0050BA                       7297 00378$:
                                   7298 ;	calc.c:471: ((char)input == '%') || ((char)input == '#')
      0050BA BD 25 02         [24] 7299 	cjne	r5,#0x25,00379$
      0050BD 80 03            [24] 7300 	sjmp	00136$
      0050BF                       7301 00379$:
      0050BF BD 23 29         [24] 7302 	cjne	r5,#0x23,00137$
      0050C2                       7303 00136$:
                                   7304 ;	calc.c:473: if (state_exec(&s, EVENT_OP) <= 0) break;
      0050C2 74 02            [12] 7305 	mov	a,#0x02
      0050C4 C0 E0            [24] 7306 	push	acc
      0050C6 E4               [12] 7307 	clr	a
      0050C7 C0 E0            [24] 7308 	push	acc
      0050C9 90 80 00         [24] 7309 	mov	dptr,#_s
      0050CC 75 F0 00         [24] 7310 	mov	b,#0x00
      0050CF 12 21 46         [24] 7311 	lcall	_state_exec
      0050D2 AE 82            [24] 7312 	mov	r6,dpl
      0050D4 AF 83            [24] 7313 	mov	r7,dph
      0050D6 15 81            [12] 7314 	dec	sp
      0050D8 15 81            [12] 7315 	dec	sp
      0050DA C3               [12] 7316 	clr	c
      0050DB E4               [12] 7317 	clr	a
      0050DC 9E               [12] 7318 	subb	a,r6
      0050DD 74 80            [12] 7319 	mov	a,#(0x00 ^ 0x80)
      0050DF 8F F0            [24] 7320 	mov	b,r7
      0050E1 63 F0 80         [24] 7321 	xrl	b,#0x80
      0050E4 95 F0            [12] 7322 	subb	a,b
      0050E6 50 74            [24] 7323 	jnc	00178$
      0050E8 02 4E A5         [24] 7324 	ljmp	00177$
      0050EB                       7325 00137$:
                                   7326 ;	calc.c:475: ((char)input == '&') ||
      0050EB BD 26 02         [24] 7327 	cjne	r5,#0x26,00383$
      0050EE 80 1C            [24] 7328 	sjmp	00127$
      0050F0                       7329 00383$:
                                   7330 ;	calc.c:476: ((char)input == '|') || ((char)input == '^') ||
      0050F0 BD 7C 02         [24] 7331 	cjne	r5,#0x7c,00384$
      0050F3 80 17            [24] 7332 	sjmp	00127$
      0050F5                       7333 00384$:
      0050F5 BD 5E 02         [24] 7334 	cjne	r5,#0x5e,00385$
      0050F8 80 12            [24] 7335 	sjmp	00127$
      0050FA                       7336 00385$:
                                   7337 ;	calc.c:477: ((char)input == '~') ||
      0050FA BD 7E 02         [24] 7338 	cjne	r5,#0x7e,00386$
      0050FD 80 0D            [24] 7339 	sjmp	00127$
      0050FF                       7340 00386$:
                                   7341 ;	calc.c:478: ((char)input == '>') || ((char)input == ']') ||
      0050FF BD 3E 02         [24] 7342 	cjne	r5,#0x3e,00387$
      005102 80 08            [24] 7343 	sjmp	00127$
      005104                       7344 00387$:
      005104 BD 5D 02         [24] 7345 	cjne	r5,#0x5d,00388$
      005107 80 03            [24] 7346 	sjmp	00127$
      005109                       7347 00388$:
                                   7348 ;	calc.c:479: ((char)input == '<')
      005109 BD 3C 29         [24] 7349 	cjne	r5,#0x3c,00128$
      00510C                       7350 00127$:
                                   7351 ;	calc.c:481: if (state_exec(&s, EVENT_OP) <= 0) break;
      00510C 74 02            [12] 7352 	mov	a,#0x02
      00510E C0 E0            [24] 7353 	push	acc
      005110 E4               [12] 7354 	clr	a
      005111 C0 E0            [24] 7355 	push	acc
      005113 90 80 00         [24] 7356 	mov	dptr,#_s
      005116 75 F0 00         [24] 7357 	mov	b,#0x00
      005119 12 21 46         [24] 7358 	lcall	_state_exec
      00511C AE 82            [24] 7359 	mov	r6,dpl
      00511E AF 83            [24] 7360 	mov	r7,dph
      005120 15 81            [12] 7361 	dec	sp
      005122 15 81            [12] 7362 	dec	sp
      005124 C3               [12] 7363 	clr	c
      005125 E4               [12] 7364 	clr	a
      005126 9E               [12] 7365 	subb	a,r6
      005127 74 80            [12] 7366 	mov	a,#(0x00 ^ 0x80)
      005129 8F F0            [24] 7367 	mov	b,r7
      00512B 63 F0 80         [24] 7368 	xrl	b,#0x80
      00512E 95 F0            [12] 7369 	subb	a,b
      005130 50 2A            [24] 7370 	jnc	00178$
      005132 02 4E A5         [24] 7371 	ljmp	00177$
      005135                       7372 00128$:
                                   7373 ;	calc.c:483: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      005135 E4               [12] 7374 	clr	a
      005136 C0 E0            [24] 7375 	push	acc
      005138 C0 E0            [24] 7376 	push	acc
      00513A 90 80 00         [24] 7377 	mov	dptr,#_s
      00513D 75 F0 00         [24] 7378 	mov	b,#0x00
      005140 12 21 46         [24] 7379 	lcall	_state_exec
      005143 AE 82            [24] 7380 	mov	r6,dpl
      005145 AF 83            [24] 7381 	mov	r7,dph
      005147 15 81            [12] 7382 	dec	sp
      005149 15 81            [12] 7383 	dec	sp
      00514B C3               [12] 7384 	clr	c
      00514C E4               [12] 7385 	clr	a
      00514D 9E               [12] 7386 	subb	a,r6
      00514E 74 80            [12] 7387 	mov	a,#(0x00 ^ 0x80)
      005150 8F F0            [24] 7388 	mov	b,r7
      005152 63 F0 80         [24] 7389 	xrl	b,#0x80
      005155 95 F0            [12] 7390 	subb	a,b
      005157 50 03            [24] 7391 	jnc	00392$
      005159 02 4E A5         [24] 7392 	ljmp	00177$
      00515C                       7393 00392$:
      00515C                       7394 00178$:
                                   7395 ;	calc.c:489: __endasm;
      00515C 43 87 02         [24] 7396 	orl	pcon, #2
                                   7397 ;	calc.c:490: }
      00515F 15 81            [12] 7398 	dec	sp
      005161 D0 08            [24] 7399 	pop	_bp
      005163 22               [24] 7400 	ret
                                   7401 	.area CSEG    (CODE)
                                   7402 	.area CONST   (CODE)
                                   7403 	.area CONST   (CODE)
      00710E                       7404 ___str_0:
      00710E 0D                    7405 	.db 0x0d
      00710F 0A                    7406 	.db 0x0a
      007110 00                    7407 	.db 0x00
                                   7408 	.area CSEG    (CODE)
                                   7409 	.area CONST   (CODE)
      007111                       7410 ___str_1:
      007111 73 74 61 63 6B 20 75  7411 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007120 0D                    7412 	.db 0x0d
      007121 0A                    7413 	.db 0x0a
      007122 00                    7414 	.db 0x00
                                   7415 	.area CSEG    (CODE)
                                   7416 	.area CONST   (CODE)
      007123                       7417 ___str_2:
      007123 56 41 20              7418 	.ascii "VA "
      007126 00                    7419 	.db 0x00
                                   7420 	.area CSEG    (CODE)
                                   7421 	.area CONST   (CODE)
      007127                       7422 ___str_3:
      007127 25 20 31 31 6C 64 20  7423 	.ascii "% 11ld / "
             2F 20
      007130 00                    7424 	.db 0x00
                                   7425 	.area CSEG    (CODE)
                                   7426 	.area CONST   (CODE)
      007131                       7427 ___str_4:
      007131 25 30 38 6C 78 20 2F  7428 	.ascii "%08lx / "
             20
      007139 00                    7429 	.db 0x00
                                   7430 	.area CSEG    (CODE)
                                   7431 	.area CONST   (CODE)
      00713A                       7432 ___str_5:
      00713A 50 41 20              7433 	.ascii "PA "
      00713D 00                    7434 	.db 0x00
                                   7435 	.area CSEG    (CODE)
                                   7436 	.area CONST   (CODE)
      00713E                       7437 ___str_6:
      00713E 50 54 20              7438 	.ascii "PT "
      007141 00                    7439 	.db 0x00
                                   7440 	.area CSEG    (CODE)
                                   7441 	.area CONST   (CODE)
      007142                       7442 ___str_7:
      007142 56 54 20              7443 	.ascii "VT "
      007145 00                    7444 	.db 0x00
                                   7445 	.area CSEG    (CODE)
                                   7446 	.area CONST   (CODE)
      007146                       7447 ___str_8:
      007146 0D                    7448 	.db 0x0d
      007147 0A                    7449 	.db 0x0a
      007148 73 74 61 63 6B 20 75  7450 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007157 0D                    7451 	.db 0x0d
      007158 0A                    7452 	.db 0x0a
      007159 00                    7453 	.db 0x00
                                   7454 	.area CSEG    (CODE)
                                   7455 	.area CONST   (CODE)
      00715A                       7456 ___str_9:
      00715A 0D                    7457 	.db 0x0d
      00715B 0A                    7458 	.db 0x0a
      00715C 64 69 76 69 73 69 6F  7459 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      00716C 0D                    7460 	.db 0x0d
      00716D 0A                    7461 	.db 0x0a
      00716E 00                    7462 	.db 0x00
                                   7463 	.area CSEG    (CODE)
                                   7464 	.area CONST   (CODE)
      00716F                       7465 ___str_10:
      00716F 0D                    7466 	.db 0x0d
      007170 0A                    7467 	.db 0x0a
      007171 73 74 61 63 6B 20 6F  7468 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      00717F 0D                    7469 	.db 0x0d
      007180 0A                    7470 	.db 0x0a
      007181 00                    7471 	.db 0x00
                                   7472 	.area CSEG    (CODE)
                                   7473 	.area CONST   (CODE)
      007182                       7474 ___str_11:
      007182 0D                    7475 	.db 0x0d
      007183 0A                    7476 	.db 0x0a
      007184 62 61 73 65 20 3D 20  7477 	.ascii "base = %d, "
             25 64 2C 20
      00718F 00                    7478 	.db 0x00
                                   7479 	.area CSEG    (CODE)
                                   7480 	.area CONST   (CODE)
      007190                       7481 ___str_12:
      007190 61 63 63 20 3D 20 25  7482 	.ascii "acc = %ld / "
             6C 64 20 2F 20
      00719C 00                    7483 	.db 0x00
                                   7484 	.area CSEG    (CODE)
                                   7485 	.area CONST   (CODE)
      00719D                       7486 ___str_13:
      00719D 2C 20 61 63 63 5F 76  7487 	.ascii ", acc_valid = %d"
             61 6C 69 64 20 3D 20
             25 64
      0071AD 0D                    7488 	.db 0x0d
      0071AE 0A                    7489 	.db 0x0a
      0071AF 0D                    7490 	.db 0x0d
      0071B0 0A                    7491 	.db 0x0a
      0071B1 00                    7492 	.db 0x00
                                   7493 	.area CSEG    (CODE)
                                   7494 	.area CONST   (CODE)
      0071B2                       7495 ___str_14:
      0071B2 48 68 4F 6F           7496 	.ascii "HhOo"
      0071B6 09                    7497 	.db 0x09
      0071B7 62 61 73 65 20 31 36  7498 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      0071C5 0D                    7499 	.db 0x0d
      0071C6 0A                    7500 	.db 0x0a
      0071C7 00                    7501 	.db 0x00
                                   7502 	.area CSEG    (CODE)
                                   7503 	.area CONST   (CODE)
      0071C8                       7504 ___str_15:
      0071C8 70                    7505 	.ascii "p"
      0071C9 09                    7506 	.db 0x09
      0071CA 70 65 65 6B 20 74 6F  7507 	.ascii "peek top"
             70
      0071D2 0D                    7508 	.db 0x0d
      0071D3 0A                    7509 	.db 0x0a
      0071D4 00                    7510 	.db 0x00
                                   7511 	.area CSEG    (CODE)
                                   7512 	.area CONST   (CODE)
      0071D5                       7513 ___str_16:
      0071D5 50                    7514 	.ascii "P"
      0071D6 09                    7515 	.db 0x09
      0071D7 70 72 69 6E 74 20 73  7516 	.ascii "print stack"
             74 61 63 6B
      0071E2 0D                    7517 	.db 0x0d
      0071E3 0A                    7518 	.db 0x0a
      0071E4 00                    7519 	.db 0x00
                                   7520 	.area CSEG    (CODE)
                                   7521 	.area CONST   (CODE)
      0071E5                       7522 ___str_17:
      0071E5 76 2E                 7523 	.ascii "v."
      0071E7 09                    7524 	.db 0x09
      0071E8 70 6F 70 20 74 6F 70  7525 	.ascii "pop top"
      0071EF 0D                    7526 	.db 0x0d
      0071F0 0A                    7527 	.db 0x0a
      0071F1 00                    7528 	.db 0x00
                                   7529 	.area CSEG    (CODE)
                                   7530 	.area CONST   (CODE)
      0071F2                       7531 ___str_18:
      0071F2 56                    7532 	.ascii "V"
      0071F3 09                    7533 	.db 0x09
      0071F4 70 6F 70 20 61 6C 6C  7534 	.ascii "pop all"
      0071FB 0D                    7535 	.db 0x0d
      0071FC 0A                    7536 	.db 0x0a
      0071FD 00                    7537 	.db 0x00
                                   7538 	.area CSEG    (CODE)
                                   7539 	.area CONST   (CODE)
      0071FE                       7540 ___str_19:
      0071FE 69                    7541 	.ascii "i"
      0071FF 09                    7542 	.db 0x09
      007200 72 65 73 65 74 20 61  7543 	.ascii "reset acc"
             63 63
      007209 0D                    7544 	.db 0x0d
      00720A 0A                    7545 	.db 0x0a
      00720B 00                    7546 	.db 0x00
                                   7547 	.area CSEG    (CODE)
                                   7548 	.area CONST   (CODE)
      00720C                       7549 ___str_20:
      00720C 49                    7550 	.ascii "I"
      00720D 09                    7551 	.db 0x09
      00720E 72 65 73 65 74 20 61  7552 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      007223 0D                    7553 	.db 0x0d
      007224 0A                    7554 	.db 0x0a
      007225 00                    7555 	.db 0x00
                                   7556 	.area CSEG    (CODE)
                                   7557 	.area CONST   (CODE)
      007226                       7558 ___str_21:
      007226 78                    7559 	.ascii "x"
      007227 09                    7560 	.db 0x09
      007228 65 78 63 68 61 6E 67  7561 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      007236 0D                    7562 	.db 0x0d
      007237 0A                    7563 	.db 0x0a
      007238 00                    7564 	.db 0x00
                                   7565 	.area CSEG    (CODE)
                                   7566 	.area CONST   (CODE)
      007239                       7567 ___str_22:
      007239 2B                    7568 	.ascii "+"
      00723A 09                    7569 	.db 0x09
      00723B 61 64 64 20 74 6F 70  7570 	.ascii "add top 2"
             20 32
      007244 0D                    7571 	.db 0x0d
      007245 0A                    7572 	.db 0x0a
      007246 00                    7573 	.db 0x00
                                   7574 	.area CSEG    (CODE)
                                   7575 	.area CONST   (CODE)
      007247                       7576 ___str_23:
      007247 2D                    7577 	.ascii "-"
      007248 09                    7578 	.db 0x09
      007249 73 75 62 74 72 61 63  7579 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      007257 0D                    7580 	.db 0x0d
      007258 0A                    7581 	.db 0x0a
      007259 00                    7582 	.db 0x00
                                   7583 	.area CSEG    (CODE)
                                   7584 	.area CONST   (CODE)
      00725A                       7585 ___str_24:
      00725A 2A                    7586 	.ascii "*"
      00725B 09                    7587 	.db 0x09
      00725C 6D 75 6C 74 69 70 6C  7588 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      00726A 0D                    7589 	.db 0x0d
      00726B 0A                    7590 	.db 0x0a
      00726C 00                    7591 	.db 0x00
                                   7592 	.area CSEG    (CODE)
                                   7593 	.area CONST   (CODE)
      00726D                       7594 ___str_25:
      00726D 2F                    7595 	.ascii "/"
      00726E 09                    7596 	.db 0x09
      00726F 64 69 76 69 64 65 20  7597 	.ascii "divide top 2"
             74 6F 70 20 32
      00727B 0D                    7598 	.db 0x0d
      00727C 0A                    7599 	.db 0x0a
      00727D 00                    7600 	.db 0x00
                                   7601 	.area CSEG    (CODE)
                                   7602 	.area CONST   (CODE)
      00727E                       7603 ___str_26:
      00727E 5C                    7604 	.db 0x5c
      00727F 09                    7605 	.db 0x09
      007280 64 69 76 69 64 65 20  7606 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      007295 0D                    7607 	.db 0x0d
      007296 0A                    7608 	.db 0x0a
      007297 00                    7609 	.db 0x00
                                   7610 	.area CSEG    (CODE)
                                   7611 	.area CONST   (CODE)
      007298                       7612 ___str_27:
      007298 25                    7613 	.ascii "%"
      007299 09                    7614 	.db 0x09
      00729A 6D 6F 64 75 6C 75 73  7615 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      0072A7 0D                    7616 	.db 0x0d
      0072A8 0A                    7617 	.db 0x0a
      0072A9 00                    7618 	.db 0x00
                                   7619 	.area CSEG    (CODE)
                                   7620 	.area CONST   (CODE)
      0072AA                       7621 ___str_28:
      0072AA 23                    7622 	.ascii "#"
      0072AB 09                    7623 	.db 0x09
      0072AC 6D 6F 64 75 6C 75 73  7624 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      0072C2 0D                    7625 	.db 0x0d
      0072C3 0A                    7626 	.db 0x0a
      0072C4 00                    7627 	.db 0x00
                                   7628 	.area CSEG    (CODE)
                                   7629 	.area CONST   (CODE)
      0072C5                       7630 ___str_29:
      0072C5 26                    7631 	.ascii "&"
      0072C6 09                    7632 	.db 0x09
      0072C7 61 6E 64 20 74 6F 70  7633 	.ascii "and top 2"
             20 32
      0072D0 0D                    7634 	.db 0x0d
      0072D1 0A                    7635 	.db 0x0a
      0072D2 00                    7636 	.db 0x00
                                   7637 	.area CSEG    (CODE)
                                   7638 	.area CONST   (CODE)
      0072D3                       7639 ___str_30:
      0072D3 7C                    7640 	.ascii "|"
      0072D4 09                    7641 	.db 0x09
      0072D5 6F 72 20 74 6F 70 20  7642 	.ascii "or top 2"
             32
      0072DD 0D                    7643 	.db 0x0d
      0072DE 0A                    7644 	.db 0x0a
      0072DF 00                    7645 	.db 0x00
                                   7646 	.area CSEG    (CODE)
                                   7647 	.area CONST   (CODE)
      0072E0                       7648 ___str_31:
      0072E0 5E                    7649 	.ascii "^"
      0072E1 09                    7650 	.db 0x09
      0072E2 78 6F 72 20 74 6F 70  7651 	.ascii "xor top 2"
             20 32
      0072EB 0D                    7652 	.db 0x0d
      0072EC 0A                    7653 	.db 0x0a
      0072ED 00                    7654 	.db 0x00
                                   7655 	.area CSEG    (CODE)
                                   7656 	.area CONST   (CODE)
      0072EE                       7657 ___str_32:
      0072EE 3E                    7658 	.ascii ">"
      0072EF 09                    7659 	.db 0x09
      0072F0 73 68 69 66 74 20 72  7660 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      007301 0D                    7661 	.db 0x0d
      007302 0A                    7662 	.db 0x0a
      007303 00                    7663 	.db 0x00
                                   7664 	.area CSEG    (CODE)
                                   7665 	.area CONST   (CODE)
      007304                       7666 ___str_33:
      007304 5D                    7667 	.ascii "]"
      007305 09                    7668 	.db 0x09
      007306 61 72 69 74 68 6D 65  7669 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      007322 0D                    7670 	.db 0x0d
      007323 0A                    7671 	.db 0x0a
      007324 00                    7672 	.db 0x00
                                   7673 	.area CSEG    (CODE)
                                   7674 	.area CONST   (CODE)
      007325                       7675 ___str_34:
      007325 3C                    7676 	.ascii "<"
      007326 09                    7677 	.db 0x09
      007327 73 68 69 66 74 20 6C  7678 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      007337 0D                    7679 	.db 0x0d
      007338 0A                    7680 	.db 0x0a
      007339 00                    7681 	.db 0x00
                                   7682 	.area CSEG    (CODE)
                                   7683 	.area CONST   (CODE)
      00733A                       7684 ___str_35:
      00733A 7E                    7685 	.ascii "~"
      00733B 09                    7686 	.db 0x09
      00733C 62 69 74 77 69 73 65  7687 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      00734B 0D                    7688 	.db 0x0d
      00734C 0A                    7689 	.db 0x0a
      00734D 00                    7690 	.db 0x00
                                   7691 	.area CSEG    (CODE)
                                   7692 	.area CONST   (CODE)
      00734E                       7693 ___str_36:
      00734E 3F                    7694 	.ascii "?"
      00734F 09                    7695 	.db 0x09
      007350 68 65 6C 70           7696 	.ascii "help"
      007354 0D                    7697 	.db 0x0d
      007355 0A                    7698 	.db 0x0a
      007356 00                    7699 	.db 0x00
                                   7700 	.area CSEG    (CODE)
                                   7701 	.area CONST   (CODE)
      007357                       7702 ___str_37:
      007357 71                    7703 	.ascii "q"
      007358 09                    7704 	.db 0x09
      007359 71 75 69 74           7705 	.ascii "quit"
      00735D 0D                    7706 	.db 0x0d
      00735E 0A                    7707 	.db 0x0a
      00735F 00                    7708 	.db 0x00
                                   7709 	.area CSEG    (CODE)
                                   7710 	.area XINIT   (CODE)
      007371                       7711 __xinit__deltas:
      007371 00 00                 7712 	.byte #0x00, #0x00	;  0
      007373 00 00                 7713 	.byte #0x00, #0x00	;  0
      007375 00 00                 7714 	.byte #0x00, #0x00	;  0
      007377 00 00                 7715 	.byte #0x00,#0x00
      007379 00 00                 7716 	.byte #0x00,#0x00
      00737B 00 00                 7717 	.byte #0x00, #0x00	;  0
      00737D 01 00                 7718 	.byte #0x01, #0x00	;  1
      00737F 02 00                 7719 	.byte #0x02, #0x00	;  2
      007381 00 00                 7720 	.byte #0x00,#0x00
      007383 8B 2A                 7721 	.byte _accumulate, (_accumulate >> 8)
      007385 00 00                 7722 	.byte #0x00, #0x00	;  0
      007387 02 00                 7723 	.byte #0x02, #0x00	;  2
      007389 01 00                 7724 	.byte #0x01, #0x00	;  1
      00738B 00 00                 7725 	.byte #0x00,#0x00
      00738D E4 2F                 7726 	.byte _operator, (_operator >> 8)
      00738F 01 00                 7727 	.byte #0x01, #0x00	;  1
      007391 00 00                 7728 	.byte #0x00, #0x00	;  0
      007393 00 00                 7729 	.byte #0x00, #0x00	;  0
      007395 00 00                 7730 	.byte #0x00,#0x00
      007397 00 00                 7731 	.byte #0x00,#0x00
      007399 01 00                 7732 	.byte #0x01, #0x00	;  1
      00739B 02 00                 7733 	.byte #0x02, #0x00	;  2
      00739D 01 00                 7734 	.byte #0x01, #0x00	;  1
      00739F 00 00                 7735 	.byte #0x00,#0x00
      0073A1 E4 2F                 7736 	.byte _operator, (_operator >> 8)
      0073A3 01 00                 7737 	.byte #0x01, #0x00	;  1
      0073A5 01 00                 7738 	.byte #0x01, #0x00	;  1
      0073A7 02 00                 7739 	.byte #0x02, #0x00	;  2
      0073A9 00 00                 7740 	.byte #0x00,#0x00
      0073AB 8B 2A                 7741 	.byte _accumulate, (_accumulate >> 8)
      0073AD 02 00                 7742 	.byte #0x02, #0x00	;  2
      0073AF 00 00                 7743 	.byte #0x00, #0x00	;  0
      0073B1 00 00                 7744 	.byte #0x00, #0x00	;  0
      0073B3 00 00                 7745 	.byte #0x00,#0x00
      0073B5 77 47                 7746 	.byte _push_acc, (_push_acc >> 8)
      0073B7 02 00                 7747 	.byte #0x02, #0x00	;  2
      0073B9 06 00                 7748 	.byte #0x06, #0x00	;  6
      0073BB 00 00                 7749 	.byte #0x00, #0x00	;  0
      0073BD 00 00                 7750 	.byte #0x00,#0x00
      0073BF 7E 48                 7751 	.byte _reset_acc, (_reset_acc >> 8)
      0073C1 02 00                 7752 	.byte #0x02, #0x00	;  2
      0073C3 01 00                 7753 	.byte #0x01, #0x00	;  1
      0073C5 02 00                 7754 	.byte #0x02, #0x00	;  2
      0073C7 00 00                 7755 	.byte #0x00,#0x00
      0073C9 8B 2A                 7756 	.byte _accumulate, (_accumulate >> 8)
      0073CB 02 00                 7757 	.byte #0x02, #0x00	;  2
      0073CD 02 00                 7758 	.byte #0x02, #0x00	;  2
      0073CF 01 00                 7759 	.byte #0x01, #0x00	;  1
      0073D1 00 00                 7760 	.byte #0x00,#0x00
      0073D3 77 47                 7761 	.byte _push_acc, (_push_acc >> 8)
      0073D5 FF 7F                 7762 	.byte #0xff, #0x7f	;  32767
      0073D7 05 00                 7763 	.byte #0x05, #0x00	;  5
      0073D9 FF 7F                 7764 	.byte #0xff, #0x7f	;  32767
      0073DB 00 00                 7765 	.byte #0x00,#0x00
      0073DD 7E 48                 7766 	.byte _reset_acc, (_reset_acc >> 8)
      0073DF FF 7F                 7767 	.byte #0xff, #0x7f	;  32767
      0073E1 06 00                 7768 	.byte #0x06, #0x00	;  6
      0073E3 FF 7F                 7769 	.byte #0xff, #0x7f	;  32767
      0073E5 00 00                 7770 	.byte #0x00,#0x00
      0073E7 00 00                 7771 	.byte #0x00,#0x00
      0073E9 FF 7F                 7772 	.byte #0xff, #0x7f	;  32767
      0073EB 04 00                 7773 	.byte #0x04, #0x00	;  4
      0073ED FF 7F                 7774 	.byte #0xff, #0x7f	;  32767
      0073EF 00 00                 7775 	.byte #0x00,#0x00
      0073F1 E8 48                 7776 	.byte _reset_base, (_reset_base >> 8)
      0073F3 FF 7F                 7777 	.byte #0xff, #0x7f	;  32767
      0073F5 03 00                 7778 	.byte #0x03, #0x00	;  3
      0073F7 FF 7F                 7779 	.byte #0xff, #0x7f	;  32767
      0073F9 00 00                 7780 	.byte #0x00,#0x00
      0073FB 66 49                 7781 	.byte _help, (_help >> 8)
      0073FD FF 7F                 7782 	.byte #0xff, #0x7f	;  32767
      0073FF 07 00                 7783 	.byte #0x07, #0x00	;  7
      007401 03 00                 7784 	.byte #0x03, #0x00	;  3
      007403 00 00                 7785 	.byte #0x00,#0x00
      007405 FC 2B                 7786 	.byte _dump_pop, (_dump_pop >> 8)
      007407 00 80                 7787 	.byte #0x00, #0x80	; -32768
      007409 00 80                 7788 	.byte #0x00, #0x80	; -32768
      00740B 00 80                 7789 	.byte #0x00, #0x80	; -32768
      00740D 00 00                 7790 	.byte #0x00,#0x00
      00740F 00 00                 7791 	.byte #0x00,#0x00
                                   7792 	.area CABS    (ABS,CODE)
