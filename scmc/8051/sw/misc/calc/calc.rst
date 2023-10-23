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
      002003 02 49 BD         [24]  372 	ljmp	_main
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
      0029EE 12 53 AB         [24]  459 	lcall	__gptrget
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
      002ABE 12 53 AB         [24]  633 	lcall	__gptrget
      002AC1 70 31            [24]  634 	jnz	00102$
                                    635 ;	calc.c:91: ctx->acc_valid = 1;
      002AC3 8A 82            [24]  636 	mov	dpl,r2
      002AC5 8B 83            [24]  637 	mov	dph,r3
      002AC7 8C F0            [24]  638 	mov	b,r4
      002AC9 74 01            [12]  639 	mov	a,#0x01
      002ACB 12 4F 30         [24]  640 	lcall	__gptrput
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
      002AE5 12 4F 30         [24]  658 	lcall	__gptrput
      002AE8 A3               [24]  659 	inc	dptr
      002AE9 12 4F 30         [24]  660 	lcall	__gptrput
      002AEC A3               [24]  661 	inc	dptr
      002AED 12 4F 30         [24]  662 	lcall	__gptrput
      002AF0 A3               [24]  663 	inc	dptr
      002AF1 12 4F 30         [24]  664 	lcall	__gptrput
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
      002B01 12 53 AB         [24]  675 	lcall	__gptrget
      002B04 FB               [12]  676 	mov	r3,a
      002B05 A3               [24]  677 	inc	dptr
      002B06 12 53 AB         [24]  678 	lcall	__gptrget
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
      002B2B 12 4C F2         [24]  701 	lcall	_strtol
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
      002B69 12 53 AB         [24]  744 	lcall	__gptrget
      002B6C F7               [12]  745 	mov	@r1,a
      002B6D A3               [24]  746 	inc	dptr
      002B6E 12 53 AB         [24]  747 	lcall	__gptrget
      002B71 09               [12]  748 	inc	r1
      002B72 F7               [12]  749 	mov	@r1,a
      002B73 A3               [24]  750 	inc	dptr
      002B74 12 53 AB         [24]  751 	lcall	__gptrget
      002B77 09               [12]  752 	inc	r1
      002B78 F7               [12]  753 	mov	@r1,a
      002B79 A3               [24]  754 	inc	dptr
      002B7A 12 53 AB         [24]  755 	lcall	__gptrget
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
      002B8C 12 53 AB         [24]  766 	lcall	__gptrget
      002B8F FA               [12]  767 	mov	r2,a
      002B90 A3               [24]  768 	inc	dptr
      002B91 12 53 AB         [24]  769 	lcall	__gptrget
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
      002BB1 12 57 A4         [24]  789 	lcall	__mullong
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
      002BE1 12 4F 30         [24]  823 	lcall	__gptrput
      002BE4 A3               [24]  824 	inc	dptr
      002BE5 ED               [12]  825 	mov	a,r5
      002BE6 12 4F 30         [24]  826 	lcall	__gptrput
      002BE9 A3               [24]  827 	inc	dptr
      002BEA EE               [12]  828 	mov	a,r6
      002BEB 12 4F 30         [24]  829 	lcall	__gptrput
      002BEE A3               [24]  830 	inc	dptr
      002BEF EF               [12]  831 	mov	a,r7
      002BF0 12 4F 30         [24]  832 	lcall	__gptrput
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
      002C33 12 53 AB         [24]  901 	lcall	__gptrget
      002C36 FE               [12]  902 	mov	r6,a
      002C37 A3               [24]  903 	inc	dptr
      002C38 12 53 AB         [24]  904 	lcall	__gptrget
      002C3B FF               [12]  905 	mov	r7,a
      002C3C BE 07 3D         [24]  906 	cjne	r6,#0x07,00102$
      002C3F BF 00 3A         [24]  907 	cjne	r7,#0x00,00102$
      002C42 7D 2C            [12]  908 	mov	r5,#___str_0
      002C44 7E 6C            [12]  909 	mov	r6,#(___str_0 >> 8)
      002C46 7F 80            [12]  910 	mov	r7,#0x80
                                    911 ;	calc.c:50: return;
      002C48                        912 00122$:
                                    913 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002C48 8D 82            [24]  914 	mov	dpl,r5
      002C4A 8E 83            [24]  915 	mov	dph,r6
      002C4C 8F F0            [24]  916 	mov	b,r7
      002C4E A8 08            [24]  917 	mov	r0,_bp
      002C50 08               [12]  918 	inc	r0
      002C51 12 53 AB         [24]  919 	lcall	__gptrget
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
      002CEE 12 53 AB         [24] 1017 	lcall	__gptrget
      002CF1 FA               [12] 1018 	mov	r2,a
      002CF2 A3               [24] 1019 	inc	dptr
      002CF3 12 53 AB         [24] 1020 	lcall	__gptrget
      002CF6 FB               [12] 1021 	mov	r3,a
      002CF7 BA 07 06         [24] 1022 	cjne	r2,#0x07,00212$
      002CFA BB 00 03         [24] 1023 	cjne	r3,#0x00,00212$
      002CFD 02 2E A7         [24] 1024 	ljmp	00110$
      002D00                       1025 00212$:
      002D00 7C 2F            [12] 1026 	mov	r4,#___str_1
      002D02 7D 6C            [12] 1027 	mov	r5,#(___str_1 >> 8)
      002D04 7E 80            [12] 1028 	mov	r6,#0x80
                                   1029 ;	calc.c:50: return;
      002D06                       1030 00125$:
                                   1031 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002D06 8C 82            [24] 1032 	mov	dpl,r4
      002D08 8D 83            [24] 1033 	mov	dph,r5
      002D0A 8E F0            [24] 1034 	mov	b,r6
      002D0C 12 53 AB         [24] 1035 	lcall	__gptrget
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
      002D3B 7C 41            [12] 1066 	mov	r4,#___str_2
      002D3D 7D 6C            [12] 1067 	mov	r5,#(___str_2 >> 8)
      002D3F 7E 80            [12] 1068 	mov	r6,#0x80
                                   1069 ;	calc.c:50: return;
      002D41                       1070 00128$:
                                   1071 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002D41 8C 82            [24] 1072 	mov	dpl,r4
      002D43 8D 83            [24] 1073 	mov	dph,r5
      002D45 8E F0            [24] 1074 	mov	b,r6
      002D47 12 53 AB         [24] 1075 	lcall	__gptrget
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
      002D73 74 45            [12] 1104 	mov	a,#___str_3
      002D75 C0 E0            [24] 1105 	push	acc
      002D77 74 6C            [12] 1106 	mov	a,#(___str_3 >> 8)
      002D79 C0 E0            [24] 1107 	push	acc
      002D7B 74 80            [12] 1108 	mov	a,#0x80
      002D7D C0 E0            [24] 1109 	push	acc
      002D7F 12 53 72         [24] 1110 	lcall	_printf
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
      002D9C 74 4F            [12] 1129 	mov	a,#___str_4
      002D9E C0 E0            [24] 1130 	push	acc
      002DA0 74 6C            [12] 1131 	mov	a,#(___str_4 >> 8)
      002DA2 C0 E0            [24] 1132 	push	acc
      002DA4 74 80            [12] 1133 	mov	a,#0x80
      002DA6 C0 E0            [24] 1134 	push	acc
      002DA8 12 53 72         [24] 1135 	lcall	_printf
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
      002E46 7C 2C            [12] 1251 	mov	r4,#___str_0
      002E48 7D 6C            [12] 1252 	mov	r5,#(___str_0 >> 8)
      002E4A 7E 80            [12] 1253 	mov	r6,#0x80
                                   1254 ;	calc.c:50: return;
      002E4C                       1255 00133$:
                                   1256 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002E4C 8C 82            [24] 1257 	mov	dpl,r4
      002E4E 8D 83            [24] 1258 	mov	dph,r5
      002E50 8E F0            [24] 1259 	mov	b,r6
      002E52 12 53 AB         [24] 1260 	lcall	__gptrget
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
      002EBA 7D 58            [12] 1341 	mov	r5,#___str_5
      002EBC 7E 6C            [12] 1342 	mov	r6,#(___str_5 >> 8)
      002EBE 7F 80            [12] 1343 	mov	r7,#0x80
                                   1344 ;	calc.c:50: return;
      002EC0                       1345 00108$:
                                   1346 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002EC0 8D 82            [24] 1347 	mov	dpl,r5
      002EC2 8E 83            [24] 1348 	mov	dph,r6
      002EC4 8F F0            [24] 1349 	mov	b,r7
      002EC6 12 53 AB         [24] 1350 	lcall	__gptrget
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
      002EF0 74 45            [12] 1378 	mov	a,#___str_3
      002EF2 C0 E0            [24] 1379 	push	acc
      002EF4 74 6C            [12] 1380 	mov	a,#(___str_3 >> 8)
      002EF6 C0 E0            [24] 1381 	push	acc
      002EF8 74 80            [12] 1382 	mov	a,#0x80
      002EFA C0 E0            [24] 1383 	push	acc
      002EFC 12 53 72         [24] 1384 	lcall	_printf
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
      002F19 74 4F            [12] 1403 	mov	a,#___str_4
      002F1B C0 E0            [24] 1404 	push	acc
      002F1D 74 6C            [12] 1405 	mov	a,#(___str_4 >> 8)
      002F1F C0 E0            [24] 1406 	push	acc
      002F21 74 80            [12] 1407 	mov	a,#0x80
      002F23 C0 E0            [24] 1408 	push	acc
      002F25 12 53 72         [24] 1409 	lcall	_printf
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
      002FB9 7D 2C            [12] 1520 	mov	r5,#___str_0
      002FBB 7E 6C            [12] 1521 	mov	r6,#(___str_0 >> 8)
      002FBD 7F 80            [12] 1522 	mov	r7,#0x80
                                   1523 ;	calc.c:50: return;
      002FBF                       1524 00113$:
                                   1525 ;	calc.c:48: for (; *s; s++) putchar(*s);
      002FBF 8D 82            [24] 1526 	mov	dpl,r5
      002FC1 8E 83            [24] 1527 	mov	dph,r6
      002FC3 8F F0            [24] 1528 	mov	b,r7
      002FC5 12 53 AB         [24] 1529 	lcall	__gptrget
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
                                   1626 ;sloc0                     Allocated to stack - _bp +231
                                   1627 ;sloc1                     Allocated to stack - _bp +232
                                   1628 ;sloc2                     Allocated to stack - _bp +4
                                   1629 ;sloc3                     Allocated to stack - _bp +8
                                   1630 ;------------------------------------------------------------
                                   1631 ;	calc.c:135: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1632 ;	-----------------------------------------
                                   1633 ;	 function operator
                                   1634 ;	-----------------------------------------
      002FE4                       1635 _operator:
      002FE4 C0 08            [24] 1636 	push	_bp
      002FE6 85 81 08         [24] 1637 	mov	_bp,sp
      002FE9 C0 82            [24] 1638 	push	dpl
      002FEB C0 83            [24] 1639 	push	dph
      002FED C0 F0            [24] 1640 	push	b
      002FEF E5 81            [12] 1641 	mov	a,sp
      002FF1 24 1B            [12] 1642 	add	a,#0x1b
      002FF3 F5 81            [12] 1643 	mov	sp,a
                                   1644 ;	calc.c:136: struct ctx *ctx = (struct ctx *)_ctx;
      002FF5 A8 08            [24] 1645 	mov	r0,_bp
      002FF7 08               [12] 1646 	inc	r0
      002FF8 E5 08            [12] 1647 	mov	a,_bp
      002FFA 24 0C            [12] 1648 	add	a,#0x0c
      002FFC F9               [12] 1649 	mov	r1,a
      002FFD E6               [12] 1650 	mov	a,@r0
      002FFE F7               [12] 1651 	mov	@r1,a
      002FFF 08               [12] 1652 	inc	r0
      003000 09               [12] 1653 	inc	r1
      003001 E6               [12] 1654 	mov	a,@r0
      003002 F7               [12] 1655 	mov	@r1,a
      003003 08               [12] 1656 	inc	r0
      003004 09               [12] 1657 	inc	r1
      003005 E6               [12] 1658 	mov	a,@r0
      003006 F7               [12] 1659 	mov	@r1,a
                                   1660 ;	calc.c:139: switch (ctx->digit[0]) {
      003007 E5 08            [12] 1661 	mov	a,_bp
      003009 24 0C            [12] 1662 	add	a,#0x0c
      00300B F8               [12] 1663 	mov	r0,a
      00300C 74 07            [12] 1664 	mov	a,#0x07
      00300E 26               [12] 1665 	add	a,@r0
      00300F FD               [12] 1666 	mov	r5,a
      003010 E4               [12] 1667 	clr	a
      003011 08               [12] 1668 	inc	r0
      003012 36               [12] 1669 	addc	a,@r0
      003013 FE               [12] 1670 	mov	r6,a
      003014 08               [12] 1671 	inc	r0
      003015 86 07            [24] 1672 	mov	ar7,@r0
      003017 8D 82            [24] 1673 	mov	dpl,r5
      003019 8E 83            [24] 1674 	mov	dph,r6
      00301B 8F F0            [24] 1675 	mov	b,r7
      00301D 12 53 AB         [24] 1676 	lcall	__gptrget
      003020 FC               [12] 1677 	mov	r4,a
      003021 BC 23 03         [24] 1678 	cjne	r4,#0x23,00855$
      003024 02 3C 67         [24] 1679 	ljmp	00157$
      003027                       1680 00855$:
      003027 BC 25 03         [24] 1681 	cjne	r4,#0x25,00856$
      00302A 02 3C 67         [24] 1682 	ljmp	00157$
      00302D                       1683 00856$:
      00302D BC 26 03         [24] 1684 	cjne	r4,#0x26,00857$
      003030 02 3E F3         [24] 1685 	ljmp	00170$
      003033                       1686 00857$:
      003033 BC 2A 03         [24] 1687 	cjne	r4,#0x2a,00858$
      003036 02 38 75         [24] 1688 	ljmp	00135$
      003039                       1689 00858$:
      003039 BC 2B 03         [24] 1690 	cjne	r4,#0x2b,00859$
      00303C 02 35 FE         [24] 1691 	ljmp	00121$
      00303F                       1692 00859$:
      00303F BC 2D 03         [24] 1693 	cjne	r4,#0x2d,00860$
      003042 02 37 39         [24] 1694 	ljmp	00128$
      003045                       1695 00860$:
      003045 BC 2E 03         [24] 1696 	cjne	r4,#0x2e,00861$
      003048 02 32 BC         [24] 1697 	ljmp	00109$
      00304B                       1698 00861$:
      00304B BC 2F 03         [24] 1699 	cjne	r4,#0x2f,00862$
      00304E 02 39 D7         [24] 1700 	ljmp	00143$
      003051                       1701 00862$:
      003051 BC 50 03         [24] 1702 	cjne	r4,#0x50,00863$
      003054 02 32 30         [24] 1703 	ljmp	00105$
      003057                       1704 00863$:
      003057 BC 56 03         [24] 1705 	cjne	r4,#0x56,00864$
      00305A 02 34 63         [24] 1706 	ljmp	00113$
      00305D                       1707 00864$:
      00305D BC 5C 03         [24] 1708 	cjne	r4,#0x5c,00865$
      003060 02 39 D7         [24] 1709 	ljmp	00143$
      003063                       1710 00865$:
      003063 BC 5E 03         [24] 1711 	cjne	r4,#0x5e,00866$
      003066 02 41 69         [24] 1712 	ljmp	00184$
      003069                       1713 00866$:
      003069 BC 70 02         [24] 1714 	cjne	r4,#0x70,00867$
      00306C 80 1B            [24] 1715 	sjmp	00101$
      00306E                       1716 00867$:
      00306E BC 76 03         [24] 1717 	cjne	r4,#0x76,00868$
      003071 02 32 BC         [24] 1718 	ljmp	00109$
      003074                       1719 00868$:
      003074 BC 78 03         [24] 1720 	cjne	r4,#0x78,00869$
      003077 02 34 AC         [24] 1721 	ljmp	00114$
      00307A                       1722 00869$:
      00307A BC 7C 03         [24] 1723 	cjne	r4,#0x7c,00870$
      00307D 02 40 2E         [24] 1724 	ljmp	00177$
      003080                       1725 00870$:
      003080 BC 7E 03         [24] 1726 	cjne	r4,#0x7e,00871$
      003083 02 42 A4         [24] 1727 	ljmp	00191$
      003086                       1728 00871$:
      003086 02 43 45         [24] 1729 	ljmp	00195$
                                   1730 ;	calc.c:140: case 'p':
      003089                       1731 00101$:
                                   1732 ;	calc.c:141: printstr("\r\n");
      003089 7F 2C            [12] 1733 	mov	r7,#___str_0
      00308B 7E 6C            [12] 1734 	mov	r6,#(___str_0 >> 8)
      00308D 7D 80            [12] 1735 	mov	r5,#0x80
                                   1736 ;	calc.c:50: return;
      00308F                       1737 00266$:
                                   1738 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00308F 8F 82            [24] 1739 	mov	dpl,r7
      003091 8E 83            [24] 1740 	mov	dph,r6
      003093 8D F0            [24] 1741 	mov	b,r5
      003095 12 53 AB         [24] 1742 	lcall	__gptrget
      003098 FC               [12] 1743 	mov	r4,a
      003099 60 10            [24] 1744 	jz	00198$
      00309B 7B 00            [12] 1745 	mov	r3,#0x00
      00309D 8C 82            [24] 1746 	mov	dpl,r4
      00309F 8B 83            [24] 1747 	mov	dph,r3
      0030A1 12 29 C0         [24] 1748 	lcall	_putchar
      0030A4 0F               [12] 1749 	inc	r7
                                   1750 ;	calc.c:141: printstr("\r\n");
      0030A5 BF 00 E7         [24] 1751 	cjne	r7,#0x00,00266$
      0030A8 0E               [12] 1752 	inc	r6
      0030A9 80 E4            [24] 1753 	sjmp	00266$
      0030AB                       1754 00198$:
                                   1755 ;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      0030AB E5 08            [12] 1756 	mov	a,_bp
      0030AD 24 0F            [12] 1757 	add	a,#0x0f
      0030AF FF               [12] 1758 	mov	r7,a
      0030B0 7E 00            [12] 1759 	mov	r6,#0x00
      0030B2 7D 40            [12] 1760 	mov	r5,#0x40
      0030B4 E5 08            [12] 1761 	mov	a,_bp
      0030B6 24 0C            [12] 1762 	add	a,#0x0c
      0030B8 F8               [12] 1763 	mov	r0,a
      0030B9 74 09            [12] 1764 	mov	a,#0x09
      0030BB 26               [12] 1765 	add	a,@r0
      0030BC FA               [12] 1766 	mov	r2,a
      0030BD E4               [12] 1767 	clr	a
      0030BE 08               [12] 1768 	inc	r0
      0030BF 36               [12] 1769 	addc	a,@r0
      0030C0 FB               [12] 1770 	mov	r3,a
      0030C1 08               [12] 1771 	inc	r0
      0030C2 86 04            [24] 1772 	mov	ar4,@r0
      0030C4 C0 07            [24] 1773 	push	ar7
      0030C6 C0 06            [24] 1774 	push	ar6
      0030C8 C0 05            [24] 1775 	push	ar5
      0030CA 8A 82            [24] 1776 	mov	dpl,r2
      0030CC 8B 83            [24] 1777 	mov	dph,r3
      0030CE 8C F0            [24] 1778 	mov	b,r4
      0030D0 12 28 56         [24] 1779 	lcall	_stack_peek
      0030D3 AB 82            [24] 1780 	mov	r3,dpl
      0030D5 AC 83            [24] 1781 	mov	r4,dph
      0030D7 15 81            [12] 1782 	dec	sp
      0030D9 15 81            [12] 1783 	dec	sp
      0030DB 15 81            [12] 1784 	dec	sp
      0030DD EB               [12] 1785 	mov	a,r3
      0030DE 4C               [12] 1786 	orl	a,r4
      0030DF 70 25            [24] 1787 	jnz	00103$
      0030E1 7F 2F            [12] 1788 	mov	r7,#___str_1
      0030E3 7E 6C            [12] 1789 	mov	r6,#(___str_1 >> 8)
      0030E5 7D 80            [12] 1790 	mov	r5,#0x80
                                   1791 ;	calc.c:50: return;
      0030E7                       1792 00269$:
                                   1793 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0030E7 8F 82            [24] 1794 	mov	dpl,r7
      0030E9 8E 83            [24] 1795 	mov	dph,r6
      0030EB 8D F0            [24] 1796 	mov	b,r5
      0030ED 12 53 AB         [24] 1797 	lcall	__gptrget
      0030F0 FC               [12] 1798 	mov	r4,a
      0030F1 70 03            [24] 1799 	jnz	00875$
      0030F3 02 43 4A         [24] 1800 	ljmp	00196$
      0030F6                       1801 00875$:
      0030F6 7B 00            [12] 1802 	mov	r3,#0x00
      0030F8 8C 82            [24] 1803 	mov	dpl,r4
      0030FA 8B 83            [24] 1804 	mov	dph,r3
      0030FC 12 29 C0         [24] 1805 	lcall	_putchar
      0030FF 0F               [12] 1806 	inc	r7
                                   1807 ;	calc.c:142: if (!stack_peek(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003100 BF 00 E4         [24] 1808 	cjne	r7,#0x00,00269$
      003103 0E               [12] 1809 	inc	r6
      003104 80 E1            [24] 1810 	sjmp	00269$
      003106                       1811 00103$:
                                   1812 ;	calc.c:144: printstr("PT ");
      003106 7F 5C            [12] 1813 	mov	r7,#___str_6
      003108 7E 6C            [12] 1814 	mov	r6,#(___str_6 >> 8)
      00310A 7D 80            [12] 1815 	mov	r5,#0x80
                                   1816 ;	calc.c:50: return;
      00310C                       1817 00272$:
                                   1818 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00310C 8F 82            [24] 1819 	mov	dpl,r7
      00310E 8E 83            [24] 1820 	mov	dph,r6
      003110 8D F0            [24] 1821 	mov	b,r5
      003112 12 53 AB         [24] 1822 	lcall	__gptrget
      003115 FC               [12] 1823 	mov	r4,a
      003116 60 10            [24] 1824 	jz	00202$
      003118 7B 00            [12] 1825 	mov	r3,#0x00
      00311A 8C 82            [24] 1826 	mov	dpl,r4
      00311C 8B 83            [24] 1827 	mov	dph,r3
      00311E 12 29 C0         [24] 1828 	lcall	_putchar
      003121 0F               [12] 1829 	inc	r7
                                   1830 ;	calc.c:144: printstr("PT ");
      003122 BF 00 E7         [24] 1831 	cjne	r7,#0x00,00272$
      003125 0E               [12] 1832 	inc	r6
      003126 80 E4            [24] 1833 	sjmp	00272$
      003128                       1834 00202$:
                                   1835 ;	calc.c:145: printf("% 11ld / ", d0);
      003128 E5 08            [12] 1836 	mov	a,_bp
      00312A 24 0F            [12] 1837 	add	a,#0x0f
      00312C F8               [12] 1838 	mov	r0,a
      00312D E6               [12] 1839 	mov	a,@r0
      00312E C0 E0            [24] 1840 	push	acc
      003130 08               [12] 1841 	inc	r0
      003131 E6               [12] 1842 	mov	a,@r0
      003132 C0 E0            [24] 1843 	push	acc
      003134 08               [12] 1844 	inc	r0
      003135 E6               [12] 1845 	mov	a,@r0
      003136 C0 E0            [24] 1846 	push	acc
      003138 08               [12] 1847 	inc	r0
      003139 E6               [12] 1848 	mov	a,@r0
      00313A C0 E0            [24] 1849 	push	acc
      00313C 74 45            [12] 1850 	mov	a,#___str_3
      00313E C0 E0            [24] 1851 	push	acc
      003140 74 6C            [12] 1852 	mov	a,#(___str_3 >> 8)
      003142 C0 E0            [24] 1853 	push	acc
      003144 74 80            [12] 1854 	mov	a,#0x80
      003146 C0 E0            [24] 1855 	push	acc
      003148 12 53 72         [24] 1856 	lcall	_printf
      00314B E5 81            [12] 1857 	mov	a,sp
      00314D 24 F9            [12] 1858 	add	a,#0xf9
      00314F F5 81            [12] 1859 	mov	sp,a
                                   1860 ;	calc.c:146: printf("%08lx / ", d0);
      003151 E5 08            [12] 1861 	mov	a,_bp
      003153 24 0F            [12] 1862 	add	a,#0x0f
      003155 F8               [12] 1863 	mov	r0,a
      003156 E6               [12] 1864 	mov	a,@r0
      003157 C0 E0            [24] 1865 	push	acc
      003159 08               [12] 1866 	inc	r0
      00315A E6               [12] 1867 	mov	a,@r0
      00315B C0 E0            [24] 1868 	push	acc
      00315D 08               [12] 1869 	inc	r0
      00315E E6               [12] 1870 	mov	a,@r0
      00315F C0 E0            [24] 1871 	push	acc
      003161 08               [12] 1872 	inc	r0
      003162 E6               [12] 1873 	mov	a,@r0
      003163 C0 E0            [24] 1874 	push	acc
      003165 74 4F            [12] 1875 	mov	a,#___str_4
      003167 C0 E0            [24] 1876 	push	acc
      003169 74 6C            [12] 1877 	mov	a,#(___str_4 >> 8)
      00316B C0 E0            [24] 1878 	push	acc
      00316D 74 80            [12] 1879 	mov	a,#0x80
      00316F C0 E0            [24] 1880 	push	acc
      003171 12 53 72         [24] 1881 	lcall	_printf
      003174 E5 81            [12] 1882 	mov	a,sp
      003176 24 F9            [12] 1883 	add	a,#0xf9
      003178 F5 81            [12] 1884 	mov	sp,a
                                   1885 ;	calc.c:147: printbin(d0);
      00317A E5 08            [12] 1886 	mov	a,_bp
      00317C 24 0F            [12] 1887 	add	a,#0x0f
      00317E F8               [12] 1888 	mov	r0,a
      00317F 86 07            [24] 1889 	mov	ar7,@r0
      003181 08               [12] 1890 	inc	r0
      003182 86 06            [24] 1891 	mov	ar6,@r0
      003184 08               [12] 1892 	inc	r0
      003185 86 05            [24] 1893 	mov	ar5,@r0
      003187 08               [12] 1894 	inc	r0
      003188 86 04            [24] 1895 	mov	ar4,@r0
      00318A 8C 02            [24] 1896 	mov	ar2,r4
                                   1897 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      00318C E5 08            [12] 1898 	mov	a,_bp
      00318E 24 1B            [12] 1899 	add	a,#0x1b
      003190 F8               [12] 1900 	mov	r0,a
      003191 E4               [12] 1901 	clr	a
      003192 F6               [12] 1902 	mov	@r0,a
      003193 08               [12] 1903 	inc	r0
      003194 F6               [12] 1904 	mov	@r0,a
      003195 08               [12] 1905 	inc	r0
      003196 F6               [12] 1906 	mov	@r0,a
      003197 08               [12] 1907 	inc	r0
      003198 76 80            [12] 1908 	mov	@r0,#0x80
      00319A                       1909 00274$:
                                   1910 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      00319A E5 08            [12] 1911 	mov	a,_bp
      00319C 24 04            [12] 1912 	add	a,#0x04
      00319E F8               [12] 1913 	mov	r0,a
      00319F A6 07            [24] 1914 	mov	@r0,ar7
      0031A1 08               [12] 1915 	inc	r0
      0031A2 A6 06            [24] 1916 	mov	@r0,ar6
      0031A4 08               [12] 1917 	inc	r0
      0031A5 A6 05            [24] 1918 	mov	@r0,ar5
      0031A7 08               [12] 1919 	inc	r0
      0031A8 A6 02            [24] 1920 	mov	@r0,ar2
      0031AA E5 08            [12] 1921 	mov	a,_bp
      0031AC 24 04            [12] 1922 	add	a,#0x04
      0031AE F8               [12] 1923 	mov	r0,a
      0031AF E5 08            [12] 1924 	mov	a,_bp
      0031B1 24 1B            [12] 1925 	add	a,#0x1b
      0031B3 F9               [12] 1926 	mov	r1,a
      0031B4 E7               [12] 1927 	mov	a,@r1
      0031B5 56               [12] 1928 	anl	a,@r0
      0031B6 F6               [12] 1929 	mov	@r0,a
      0031B7 09               [12] 1930 	inc	r1
      0031B8 E7               [12] 1931 	mov	a,@r1
      0031B9 08               [12] 1932 	inc	r0
      0031BA 56               [12] 1933 	anl	a,@r0
      0031BB F6               [12] 1934 	mov	@r0,a
      0031BC 09               [12] 1935 	inc	r1
      0031BD E7               [12] 1936 	mov	a,@r1
      0031BE 08               [12] 1937 	inc	r0
      0031BF 56               [12] 1938 	anl	a,@r0
      0031C0 F6               [12] 1939 	mov	@r0,a
      0031C1 09               [12] 1940 	inc	r1
      0031C2 E7               [12] 1941 	mov	a,@r1
      0031C3 08               [12] 1942 	inc	r0
      0031C4 56               [12] 1943 	anl	a,@r0
      0031C5 F6               [12] 1944 	mov	@r0,a
      0031C6 E5 08            [12] 1945 	mov	a,_bp
      0031C8 24 04            [12] 1946 	add	a,#0x04
      0031CA F8               [12] 1947 	mov	r0,a
      0031CB E6               [12] 1948 	mov	a,@r0
      0031CC 08               [12] 1949 	inc	r0
      0031CD 46               [12] 1950 	orl	a,@r0
      0031CE 08               [12] 1951 	inc	r0
      0031CF 46               [12] 1952 	orl	a,@r0
      0031D0 08               [12] 1953 	inc	r0
      0031D1 46               [12] 1954 	orl	a,@r0
      0031D2 60 06            [24] 1955 	jz	00367$
      0031D4 7B 31            [12] 1956 	mov	r3,#0x31
      0031D6 7C 00            [12] 1957 	mov	r4,#0x00
      0031D8 80 04            [24] 1958 	sjmp	00368$
      0031DA                       1959 00367$:
      0031DA 7B 30            [12] 1960 	mov	r3,#0x30
      0031DC 7C 00            [12] 1961 	mov	r4,#0x00
      0031DE                       1962 00368$:
      0031DE 8B 82            [24] 1963 	mov	dpl,r3
      0031E0 8C 83            [24] 1964 	mov	dph,r4
      0031E2 12 29 C0         [24] 1965 	lcall	_putchar
                                   1966 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      0031E5 E5 08            [12] 1967 	mov	a,_bp
      0031E7 24 1B            [12] 1968 	add	a,#0x1b
      0031E9 F8               [12] 1969 	mov	r0,a
      0031EA 08               [12] 1970 	inc	r0
      0031EB 08               [12] 1971 	inc	r0
      0031EC 08               [12] 1972 	inc	r0
      0031ED E6               [12] 1973 	mov	a,@r0
      0031EE C3               [12] 1974 	clr	c
      0031EF 13               [12] 1975 	rrc	a
      0031F0 F6               [12] 1976 	mov	@r0,a
      0031F1 18               [12] 1977 	dec	r0
      0031F2 E6               [12] 1978 	mov	a,@r0
      0031F3 13               [12] 1979 	rrc	a
      0031F4 F6               [12] 1980 	mov	@r0,a
      0031F5 18               [12] 1981 	dec	r0
      0031F6 E6               [12] 1982 	mov	a,@r0
      0031F7 13               [12] 1983 	rrc	a
      0031F8 F6               [12] 1984 	mov	@r0,a
      0031F9 18               [12] 1985 	dec	r0
      0031FA E6               [12] 1986 	mov	a,@r0
      0031FB 13               [12] 1987 	rrc	a
      0031FC F6               [12] 1988 	mov	@r0,a
      0031FD E5 08            [12] 1989 	mov	a,_bp
      0031FF 24 1B            [12] 1990 	add	a,#0x1b
      003201 F8               [12] 1991 	mov	r0,a
      003202 E6               [12] 1992 	mov	a,@r0
      003203 08               [12] 1993 	inc	r0
      003204 46               [12] 1994 	orl	a,@r0
      003205 08               [12] 1995 	inc	r0
      003206 46               [12] 1996 	orl	a,@r0
      003207 08               [12] 1997 	inc	r0
      003208 46               [12] 1998 	orl	a,@r0
      003209 70 8F            [24] 1999 	jnz	00274$
                                   2000 ;	calc.c:148: printstr("\r\n");
      00320B 7F 2C            [12] 2001 	mov	r7,#___str_0
      00320D 7E 6C            [12] 2002 	mov	r6,#(___str_0 >> 8)
      00320F 7D 80            [12] 2003 	mov	r5,#0x80
                                   2004 ;	calc.c:50: return;
      003211                       2005 00277$:
                                   2006 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003211 8F 82            [24] 2007 	mov	dpl,r7
      003213 8E 83            [24] 2008 	mov	dph,r6
      003215 8D F0            [24] 2009 	mov	b,r5
      003217 12 53 AB         [24] 2010 	lcall	__gptrget
      00321A FC               [12] 2011 	mov	r4,a
      00321B 70 03            [24] 2012 	jnz	00881$
      00321D 02 43 4A         [24] 2013 	ljmp	00196$
      003220                       2014 00881$:
      003220 7B 00            [12] 2015 	mov	r3,#0x00
      003222 8C 82            [24] 2016 	mov	dpl,r4
      003224 8B 83            [24] 2017 	mov	dph,r3
      003226 12 29 C0         [24] 2018 	lcall	_putchar
      003229 0F               [12] 2019 	inc	r7
                                   2020 ;	calc.c:151: case 'P':
      00322A BF 00 E4         [24] 2021 	cjne	r7,#0x00,00277$
      00322D 0E               [12] 2022 	inc	r6
      00322E 80 E1            [24] 2023 	sjmp	00277$
      003230                       2024 00105$:
                                   2025 ;	calc.c:152: printstr("\r\n");
      003230 7F 2C            [12] 2026 	mov	r7,#___str_0
      003232 7E 6C            [12] 2027 	mov	r6,#(___str_0 >> 8)
      003234 7D 80            [12] 2028 	mov	r5,#0x80
                                   2029 ;	calc.c:50: return;
      003236                       2030 00280$:
                                   2031 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003236 8F 82            [24] 2032 	mov	dpl,r7
      003238 8E 83            [24] 2033 	mov	dph,r6
      00323A 8D F0            [24] 2034 	mov	b,r5
      00323C 12 53 AB         [24] 2035 	lcall	__gptrget
      00323F FC               [12] 2036 	mov	r4,a
      003240 60 10            [24] 2037 	jz	00208$
      003242 7B 00            [12] 2038 	mov	r3,#0x00
      003244 8C 82            [24] 2039 	mov	dpl,r4
      003246 8B 83            [24] 2040 	mov	dph,r3
      003248 12 29 C0         [24] 2041 	lcall	_putchar
      00324B 0F               [12] 2042 	inc	r7
                                   2043 ;	calc.c:152: printstr("\r\n");
      00324C BF 00 E7         [24] 2044 	cjne	r7,#0x00,00280$
      00324F 0E               [12] 2045 	inc	r6
      003250 80 E4            [24] 2046 	sjmp	00280$
      003252                       2047 00208$:
                                   2048 ;	calc.c:153: if (!stack_iter_peek(&ctx->s, dump_peek, ctx)) printstr("stack underflow\r\n");
      003252 E5 08            [12] 2049 	mov	a,_bp
      003254 24 0C            [12] 2050 	add	a,#0x0c
      003256 F8               [12] 2051 	mov	r0,a
      003257 86 07            [24] 2052 	mov	ar7,@r0
      003259 08               [12] 2053 	inc	r0
      00325A 86 06            [24] 2054 	mov	ar6,@r0
      00325C 08               [12] 2055 	inc	r0
      00325D 86 05            [24] 2056 	mov	ar5,@r0
      00325F E5 08            [12] 2057 	mov	a,_bp
      003261 24 0C            [12] 2058 	add	a,#0x0c
      003263 F8               [12] 2059 	mov	r0,a
      003264 74 09            [12] 2060 	mov	a,#0x09
      003266 26               [12] 2061 	add	a,@r0
      003267 FA               [12] 2062 	mov	r2,a
      003268 E4               [12] 2063 	clr	a
      003269 08               [12] 2064 	inc	r0
      00326A 36               [12] 2065 	addc	a,@r0
      00326B FB               [12] 2066 	mov	r3,a
      00326C 08               [12] 2067 	inc	r0
      00326D 86 04            [24] 2068 	mov	ar4,@r0
      00326F C0 07            [24] 2069 	push	ar7
      003271 C0 06            [24] 2070 	push	ar6
      003273 C0 05            [24] 2071 	push	ar5
      003275 74 B0            [12] 2072 	mov	a,#_dump_peek
      003277 C0 E0            [24] 2073 	push	acc
      003279 74 2E            [12] 2074 	mov	a,#(_dump_peek >> 8)
      00327B C0 E0            [24] 2075 	push	acc
      00327D 8A 82            [24] 2076 	mov	dpl,r2
      00327F 8B 83            [24] 2077 	mov	dph,r3
      003281 8C F0            [24] 2078 	mov	b,r4
      003283 12 28 EC         [24] 2079 	lcall	_stack_iter_peek
      003286 AB 82            [24] 2080 	mov	r3,dpl
      003288 AC 83            [24] 2081 	mov	r4,dph
      00328A E5 81            [12] 2082 	mov	a,sp
      00328C 24 FB            [12] 2083 	add	a,#0xfb
      00328E F5 81            [12] 2084 	mov	sp,a
      003290 EB               [12] 2085 	mov	a,r3
      003291 4C               [12] 2086 	orl	a,r4
      003292 60 03            [24] 2087 	jz	00885$
      003294 02 43 4A         [24] 2088 	ljmp	00196$
      003297                       2089 00885$:
      003297 7F 2F            [12] 2090 	mov	r7,#___str_1
      003299 7E 6C            [12] 2091 	mov	r6,#(___str_1 >> 8)
      00329B 7D 80            [12] 2092 	mov	r5,#0x80
                                   2093 ;	calc.c:50: return;
      00329D                       2094 00283$:
                                   2095 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00329D 8F 82            [24] 2096 	mov	dpl,r7
      00329F 8E 83            [24] 2097 	mov	dph,r6
      0032A1 8D F0            [24] 2098 	mov	b,r5
      0032A3 12 53 AB         [24] 2099 	lcall	__gptrget
      0032A6 FC               [12] 2100 	mov	r4,a
      0032A7 70 03            [24] 2101 	jnz	00886$
      0032A9 02 43 4A         [24] 2102 	ljmp	00196$
      0032AC                       2103 00886$:
      0032AC 7B 00            [12] 2104 	mov	r3,#0x00
      0032AE 8C 82            [24] 2105 	mov	dpl,r4
      0032B0 8B 83            [24] 2106 	mov	dph,r3
      0032B2 12 29 C0         [24] 2107 	lcall	_putchar
      0032B5 0F               [12] 2108 	inc	r7
                                   2109 ;	calc.c:156: case 'v':
      0032B6 BF 00 E4         [24] 2110 	cjne	r7,#0x00,00283$
      0032B9 0E               [12] 2111 	inc	r6
      0032BA 80 E1            [24] 2112 	sjmp	00283$
      0032BC                       2113 00109$:
                                   2114 ;	calc.c:157: printstr("\r\n");
      0032BC 7F 2C            [12] 2115 	mov	r7,#___str_0
      0032BE 7E 6C            [12] 2116 	mov	r6,#(___str_0 >> 8)
      0032C0 7D 80            [12] 2117 	mov	r5,#0x80
                                   2118 ;	calc.c:50: return;
      0032C2                       2119 00286$:
                                   2120 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0032C2 8F 82            [24] 2121 	mov	dpl,r7
      0032C4 8E 83            [24] 2122 	mov	dph,r6
      0032C6 8D F0            [24] 2123 	mov	b,r5
      0032C8 12 53 AB         [24] 2124 	lcall	__gptrget
      0032CB FC               [12] 2125 	mov	r4,a
      0032CC 60 10            [24] 2126 	jz	00212$
      0032CE 7B 00            [12] 2127 	mov	r3,#0x00
      0032D0 8C 82            [24] 2128 	mov	dpl,r4
      0032D2 8B 83            [24] 2129 	mov	dph,r3
      0032D4 12 29 C0         [24] 2130 	lcall	_putchar
      0032D7 0F               [12] 2131 	inc	r7
                                   2132 ;	calc.c:157: printstr("\r\n");
      0032D8 BF 00 E7         [24] 2133 	cjne	r7,#0x00,00286$
      0032DB 0E               [12] 2134 	inc	r6
      0032DC 80 E4            [24] 2135 	sjmp	00286$
      0032DE                       2136 00212$:
                                   2137 ;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      0032DE E5 08            [12] 2138 	mov	a,_bp
      0032E0 24 0F            [12] 2139 	add	a,#0x0f
      0032E2 FF               [12] 2140 	mov	r7,a
      0032E3 7E 00            [12] 2141 	mov	r6,#0x00
      0032E5 7D 40            [12] 2142 	mov	r5,#0x40
      0032E7 E5 08            [12] 2143 	mov	a,_bp
      0032E9 24 0C            [12] 2144 	add	a,#0x0c
      0032EB F8               [12] 2145 	mov	r0,a
      0032EC 74 09            [12] 2146 	mov	a,#0x09
      0032EE 26               [12] 2147 	add	a,@r0
      0032EF FA               [12] 2148 	mov	r2,a
      0032F0 E4               [12] 2149 	clr	a
      0032F1 08               [12] 2150 	inc	r0
      0032F2 36               [12] 2151 	addc	a,@r0
      0032F3 FB               [12] 2152 	mov	r3,a
      0032F4 08               [12] 2153 	inc	r0
      0032F5 86 04            [24] 2154 	mov	ar4,@r0
      0032F7 C0 07            [24] 2155 	push	ar7
      0032F9 C0 06            [24] 2156 	push	ar6
      0032FB C0 05            [24] 2157 	push	ar5
      0032FD 8A 82            [24] 2158 	mov	dpl,r2
      0032FF 8B 83            [24] 2159 	mov	dph,r3
      003301 8C F0            [24] 2160 	mov	b,r4
      003303 12 27 7F         [24] 2161 	lcall	_stack_pop
      003306 AB 82            [24] 2162 	mov	r3,dpl
      003308 AC 83            [24] 2163 	mov	r4,dph
      00330A 15 81            [12] 2164 	dec	sp
      00330C 15 81            [12] 2165 	dec	sp
      00330E 15 81            [12] 2166 	dec	sp
      003310 EB               [12] 2167 	mov	a,r3
      003311 4C               [12] 2168 	orl	a,r4
      003312 70 25            [24] 2169 	jnz	00111$
      003314 7F 2F            [12] 2170 	mov	r7,#___str_1
      003316 7E 6C            [12] 2171 	mov	r6,#(___str_1 >> 8)
      003318 7D 80            [12] 2172 	mov	r5,#0x80
                                   2173 ;	calc.c:50: return;
      00331A                       2174 00289$:
                                   2175 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00331A 8F 82            [24] 2176 	mov	dpl,r7
      00331C 8E 83            [24] 2177 	mov	dph,r6
      00331E 8D F0            [24] 2178 	mov	b,r5
      003320 12 53 AB         [24] 2179 	lcall	__gptrget
      003323 FC               [12] 2180 	mov	r4,a
      003324 70 03            [24] 2181 	jnz	00891$
      003326 02 43 4A         [24] 2182 	ljmp	00196$
      003329                       2183 00891$:
      003329 7B 00            [12] 2184 	mov	r3,#0x00
      00332B 8C 82            [24] 2185 	mov	dpl,r4
      00332D 8B 83            [24] 2186 	mov	dph,r3
      00332F 12 29 C0         [24] 2187 	lcall	_putchar
      003332 0F               [12] 2188 	inc	r7
                                   2189 ;	calc.c:158: if (!stack_pop(&ctx->s, &d0)) printstr("stack underflow\r\n");
      003333 BF 00 E4         [24] 2190 	cjne	r7,#0x00,00289$
      003336 0E               [12] 2191 	inc	r6
      003337 80 E1            [24] 2192 	sjmp	00289$
      003339                       2193 00111$:
                                   2194 ;	calc.c:160: printstr("VT ");
      003339 7F 60            [12] 2195 	mov	r7,#___str_7
      00333B 7E 6C            [12] 2196 	mov	r6,#(___str_7 >> 8)
      00333D 7D 80            [12] 2197 	mov	r5,#0x80
                                   2198 ;	calc.c:50: return;
      00333F                       2199 00292$:
                                   2200 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00333F 8F 82            [24] 2201 	mov	dpl,r7
      003341 8E 83            [24] 2202 	mov	dph,r6
      003343 8D F0            [24] 2203 	mov	b,r5
      003345 12 53 AB         [24] 2204 	lcall	__gptrget
      003348 FC               [12] 2205 	mov	r4,a
      003349 60 10            [24] 2206 	jz	00216$
      00334B 7B 00            [12] 2207 	mov	r3,#0x00
      00334D 8C 82            [24] 2208 	mov	dpl,r4
      00334F 8B 83            [24] 2209 	mov	dph,r3
      003351 12 29 C0         [24] 2210 	lcall	_putchar
      003354 0F               [12] 2211 	inc	r7
                                   2212 ;	calc.c:160: printstr("VT ");
      003355 BF 00 E7         [24] 2213 	cjne	r7,#0x00,00292$
      003358 0E               [12] 2214 	inc	r6
      003359 80 E4            [24] 2215 	sjmp	00292$
      00335B                       2216 00216$:
                                   2217 ;	calc.c:161: printf("% 11ld / ", d0);
      00335B E5 08            [12] 2218 	mov	a,_bp
      00335D 24 0F            [12] 2219 	add	a,#0x0f
      00335F F8               [12] 2220 	mov	r0,a
      003360 E6               [12] 2221 	mov	a,@r0
      003361 C0 E0            [24] 2222 	push	acc
      003363 08               [12] 2223 	inc	r0
      003364 E6               [12] 2224 	mov	a,@r0
      003365 C0 E0            [24] 2225 	push	acc
      003367 08               [12] 2226 	inc	r0
      003368 E6               [12] 2227 	mov	a,@r0
      003369 C0 E0            [24] 2228 	push	acc
      00336B 08               [12] 2229 	inc	r0
      00336C E6               [12] 2230 	mov	a,@r0
      00336D C0 E0            [24] 2231 	push	acc
      00336F 74 45            [12] 2232 	mov	a,#___str_3
      003371 C0 E0            [24] 2233 	push	acc
      003373 74 6C            [12] 2234 	mov	a,#(___str_3 >> 8)
      003375 C0 E0            [24] 2235 	push	acc
      003377 74 80            [12] 2236 	mov	a,#0x80
      003379 C0 E0            [24] 2237 	push	acc
      00337B 12 53 72         [24] 2238 	lcall	_printf
      00337E E5 81            [12] 2239 	mov	a,sp
      003380 24 F9            [12] 2240 	add	a,#0xf9
      003382 F5 81            [12] 2241 	mov	sp,a
                                   2242 ;	calc.c:162: printf("%08lx / ", d0);
      003384 E5 08            [12] 2243 	mov	a,_bp
      003386 24 0F            [12] 2244 	add	a,#0x0f
      003388 F8               [12] 2245 	mov	r0,a
      003389 E6               [12] 2246 	mov	a,@r0
      00338A C0 E0            [24] 2247 	push	acc
      00338C 08               [12] 2248 	inc	r0
      00338D E6               [12] 2249 	mov	a,@r0
      00338E C0 E0            [24] 2250 	push	acc
      003390 08               [12] 2251 	inc	r0
      003391 E6               [12] 2252 	mov	a,@r0
      003392 C0 E0            [24] 2253 	push	acc
      003394 08               [12] 2254 	inc	r0
      003395 E6               [12] 2255 	mov	a,@r0
      003396 C0 E0            [24] 2256 	push	acc
      003398 74 4F            [12] 2257 	mov	a,#___str_4
      00339A C0 E0            [24] 2258 	push	acc
      00339C 74 6C            [12] 2259 	mov	a,#(___str_4 >> 8)
      00339E C0 E0            [24] 2260 	push	acc
      0033A0 74 80            [12] 2261 	mov	a,#0x80
      0033A2 C0 E0            [24] 2262 	push	acc
      0033A4 12 53 72         [24] 2263 	lcall	_printf
      0033A7 E5 81            [12] 2264 	mov	a,sp
      0033A9 24 F9            [12] 2265 	add	a,#0xf9
      0033AB F5 81            [12] 2266 	mov	sp,a
                                   2267 ;	calc.c:163: printbin(d0);
      0033AD E5 08            [12] 2268 	mov	a,_bp
      0033AF 24 0F            [12] 2269 	add	a,#0x0f
      0033B1 F8               [12] 2270 	mov	r0,a
      0033B2 86 07            [24] 2271 	mov	ar7,@r0
      0033B4 08               [12] 2272 	inc	r0
      0033B5 86 06            [24] 2273 	mov	ar6,@r0
      0033B7 08               [12] 2274 	inc	r0
      0033B8 86 05            [24] 2275 	mov	ar5,@r0
      0033BA 08               [12] 2276 	inc	r0
      0033BB 86 04            [24] 2277 	mov	ar4,@r0
      0033BD 8C 02            [24] 2278 	mov	ar2,r4
                                   2279 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      0033BF E5 08            [12] 2280 	mov	a,_bp
      0033C1 24 1B            [12] 2281 	add	a,#0x1b
      0033C3 F8               [12] 2282 	mov	r0,a
      0033C4 E4               [12] 2283 	clr	a
      0033C5 F6               [12] 2284 	mov	@r0,a
      0033C6 08               [12] 2285 	inc	r0
      0033C7 F6               [12] 2286 	mov	@r0,a
      0033C8 08               [12] 2287 	inc	r0
      0033C9 F6               [12] 2288 	mov	@r0,a
      0033CA 08               [12] 2289 	inc	r0
      0033CB 76 80            [12] 2290 	mov	@r0,#0x80
      0033CD                       2291 00294$:
                                   2292 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      0033CD E5 08            [12] 2293 	mov	a,_bp
      0033CF 24 04            [12] 2294 	add	a,#0x04
      0033D1 F8               [12] 2295 	mov	r0,a
      0033D2 A6 07            [24] 2296 	mov	@r0,ar7
      0033D4 08               [12] 2297 	inc	r0
      0033D5 A6 06            [24] 2298 	mov	@r0,ar6
      0033D7 08               [12] 2299 	inc	r0
      0033D8 A6 05            [24] 2300 	mov	@r0,ar5
      0033DA 08               [12] 2301 	inc	r0
      0033DB A6 02            [24] 2302 	mov	@r0,ar2
      0033DD E5 08            [12] 2303 	mov	a,_bp
      0033DF 24 04            [12] 2304 	add	a,#0x04
      0033E1 F8               [12] 2305 	mov	r0,a
      0033E2 E5 08            [12] 2306 	mov	a,_bp
      0033E4 24 1B            [12] 2307 	add	a,#0x1b
      0033E6 F9               [12] 2308 	mov	r1,a
      0033E7 E7               [12] 2309 	mov	a,@r1
      0033E8 56               [12] 2310 	anl	a,@r0
      0033E9 F6               [12] 2311 	mov	@r0,a
      0033EA 09               [12] 2312 	inc	r1
      0033EB E7               [12] 2313 	mov	a,@r1
      0033EC 08               [12] 2314 	inc	r0
      0033ED 56               [12] 2315 	anl	a,@r0
      0033EE F6               [12] 2316 	mov	@r0,a
      0033EF 09               [12] 2317 	inc	r1
      0033F0 E7               [12] 2318 	mov	a,@r1
      0033F1 08               [12] 2319 	inc	r0
      0033F2 56               [12] 2320 	anl	a,@r0
      0033F3 F6               [12] 2321 	mov	@r0,a
      0033F4 09               [12] 2322 	inc	r1
      0033F5 E7               [12] 2323 	mov	a,@r1
      0033F6 08               [12] 2324 	inc	r0
      0033F7 56               [12] 2325 	anl	a,@r0
      0033F8 F6               [12] 2326 	mov	@r0,a
      0033F9 E5 08            [12] 2327 	mov	a,_bp
      0033FB 24 04            [12] 2328 	add	a,#0x04
      0033FD F8               [12] 2329 	mov	r0,a
      0033FE E6               [12] 2330 	mov	a,@r0
      0033FF 08               [12] 2331 	inc	r0
      003400 46               [12] 2332 	orl	a,@r0
      003401 08               [12] 2333 	inc	r0
      003402 46               [12] 2334 	orl	a,@r0
      003403 08               [12] 2335 	inc	r0
      003404 46               [12] 2336 	orl	a,@r0
      003405 60 06            [24] 2337 	jz	00369$
      003407 7B 31            [12] 2338 	mov	r3,#0x31
      003409 7C 00            [12] 2339 	mov	r4,#0x00
      00340B 80 04            [24] 2340 	sjmp	00370$
      00340D                       2341 00369$:
      00340D 7B 30            [12] 2342 	mov	r3,#0x30
      00340F 7C 00            [12] 2343 	mov	r4,#0x00
      003411                       2344 00370$:
      003411 8B 82            [24] 2345 	mov	dpl,r3
      003413 8C 83            [24] 2346 	mov	dph,r4
      003415 12 29 C0         [24] 2347 	lcall	_putchar
                                   2348 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      003418 E5 08            [12] 2349 	mov	a,_bp
      00341A 24 1B            [12] 2350 	add	a,#0x1b
      00341C F8               [12] 2351 	mov	r0,a
      00341D 08               [12] 2352 	inc	r0
      00341E 08               [12] 2353 	inc	r0
      00341F 08               [12] 2354 	inc	r0
      003420 E6               [12] 2355 	mov	a,@r0
      003421 C3               [12] 2356 	clr	c
      003422 13               [12] 2357 	rrc	a
      003423 F6               [12] 2358 	mov	@r0,a
      003424 18               [12] 2359 	dec	r0
      003425 E6               [12] 2360 	mov	a,@r0
      003426 13               [12] 2361 	rrc	a
      003427 F6               [12] 2362 	mov	@r0,a
      003428 18               [12] 2363 	dec	r0
      003429 E6               [12] 2364 	mov	a,@r0
      00342A 13               [12] 2365 	rrc	a
      00342B F6               [12] 2366 	mov	@r0,a
      00342C 18               [12] 2367 	dec	r0
      00342D E6               [12] 2368 	mov	a,@r0
      00342E 13               [12] 2369 	rrc	a
      00342F F6               [12] 2370 	mov	@r0,a
      003430 E5 08            [12] 2371 	mov	a,_bp
      003432 24 1B            [12] 2372 	add	a,#0x1b
      003434 F8               [12] 2373 	mov	r0,a
      003435 E6               [12] 2374 	mov	a,@r0
      003436 08               [12] 2375 	inc	r0
      003437 46               [12] 2376 	orl	a,@r0
      003438 08               [12] 2377 	inc	r0
      003439 46               [12] 2378 	orl	a,@r0
      00343A 08               [12] 2379 	inc	r0
      00343B 46               [12] 2380 	orl	a,@r0
      00343C 70 8F            [24] 2381 	jnz	00294$
                                   2382 ;	calc.c:164: printstr("\r\n");
      00343E 7F 2C            [12] 2383 	mov	r7,#___str_0
      003440 7E 6C            [12] 2384 	mov	r6,#(___str_0 >> 8)
      003442 7D 80            [12] 2385 	mov	r5,#0x80
                                   2386 ;	calc.c:50: return;
      003444                       2387 00297$:
                                   2388 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003444 8F 82            [24] 2389 	mov	dpl,r7
      003446 8E 83            [24] 2390 	mov	dph,r6
      003448 8D F0            [24] 2391 	mov	b,r5
      00344A 12 53 AB         [24] 2392 	lcall	__gptrget
      00344D FC               [12] 2393 	mov	r4,a
      00344E 70 03            [24] 2394 	jnz	00897$
      003450 02 43 4A         [24] 2395 	ljmp	00196$
      003453                       2396 00897$:
      003453 7B 00            [12] 2397 	mov	r3,#0x00
      003455 8C 82            [24] 2398 	mov	dpl,r4
      003457 8B 83            [24] 2399 	mov	dph,r3
      003459 12 29 C0         [24] 2400 	lcall	_putchar
      00345C 0F               [12] 2401 	inc	r7
                                   2402 ;	calc.c:167: case 'V':
      00345D BF 00 E4         [24] 2403 	cjne	r7,#0x00,00297$
      003460 0E               [12] 2404 	inc	r6
      003461 80 E1            [24] 2405 	sjmp	00297$
      003463                       2406 00113$:
                                   2407 ;	calc.c:168: printstr("\r\n");
      003463 7F 2C            [12] 2408 	mov	r7,#___str_0
      003465 7E 6C            [12] 2409 	mov	r6,#(___str_0 >> 8)
      003467 7D 80            [12] 2410 	mov	r5,#0x80
                                   2411 ;	calc.c:50: return;
      003469                       2412 00300$:
                                   2413 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003469 8F 82            [24] 2414 	mov	dpl,r7
      00346B 8E 83            [24] 2415 	mov	dph,r6
      00346D 8D F0            [24] 2416 	mov	b,r5
      00346F 12 53 AB         [24] 2417 	lcall	__gptrget
      003472 FC               [12] 2418 	mov	r4,a
      003473 60 10            [24] 2419 	jz	00222$
      003475 7B 00            [12] 2420 	mov	r3,#0x00
      003477 8C 82            [24] 2421 	mov	dpl,r4
      003479 8B 83            [24] 2422 	mov	dph,r3
      00347B 12 29 C0         [24] 2423 	lcall	_putchar
      00347E 0F               [12] 2424 	inc	r7
                                   2425 ;	calc.c:168: printstr("\r\n");
      00347F BF 00 E7         [24] 2426 	cjne	r7,#0x00,00300$
      003482 0E               [12] 2427 	inc	r6
      003483 80 E4            [24] 2428 	sjmp	00300$
      003485                       2429 00222$:
                                   2430 ;	calc.c:169: (void)dump_pop(_ctx, delta);
      003485 E5 08            [12] 2431 	mov	a,_bp
      003487 24 FB            [12] 2432 	add	a,#0xfb
      003489 F8               [12] 2433 	mov	r0,a
      00348A E6               [12] 2434 	mov	a,@r0
      00348B C0 E0            [24] 2435 	push	acc
      00348D 08               [12] 2436 	inc	r0
      00348E E6               [12] 2437 	mov	a,@r0
      00348F C0 E0            [24] 2438 	push	acc
      003491 08               [12] 2439 	inc	r0
      003492 E6               [12] 2440 	mov	a,@r0
      003493 C0 E0            [24] 2441 	push	acc
      003495 A8 08            [24] 2442 	mov	r0,_bp
      003497 08               [12] 2443 	inc	r0
      003498 86 82            [24] 2444 	mov	dpl,@r0
      00349A 08               [12] 2445 	inc	r0
      00349B 86 83            [24] 2446 	mov	dph,@r0
      00349D 08               [12] 2447 	inc	r0
      00349E 86 F0            [24] 2448 	mov	b,@r0
      0034A0 12 2B FC         [24] 2449 	lcall	_dump_pop
      0034A3 15 81            [12] 2450 	dec	sp
      0034A5 15 81            [12] 2451 	dec	sp
      0034A7 15 81            [12] 2452 	dec	sp
                                   2453 ;	calc.c:170: break;
      0034A9 02 43 4A         [24] 2454 	ljmp	00196$
                                   2455 ;	calc.c:171: case 'x':
      0034AC                       2456 00114$:
                                   2457 ;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0034AC E5 08            [12] 2458 	mov	a,_bp
      0034AE 24 0F            [12] 2459 	add	a,#0x0f
      0034B0 FF               [12] 2460 	mov	r7,a
      0034B1 7E 00            [12] 2461 	mov	r6,#0x00
      0034B3 7D 40            [12] 2462 	mov	r5,#0x40
      0034B5 E5 08            [12] 2463 	mov	a,_bp
      0034B7 24 0C            [12] 2464 	add	a,#0x0c
      0034B9 F8               [12] 2465 	mov	r0,a
      0034BA 74 09            [12] 2466 	mov	a,#0x09
      0034BC 26               [12] 2467 	add	a,@r0
      0034BD FA               [12] 2468 	mov	r2,a
      0034BE E4               [12] 2469 	clr	a
      0034BF 08               [12] 2470 	inc	r0
      0034C0 36               [12] 2471 	addc	a,@r0
      0034C1 FB               [12] 2472 	mov	r3,a
      0034C2 08               [12] 2473 	inc	r0
      0034C3 86 04            [24] 2474 	mov	ar4,@r0
      0034C5 C0 07            [24] 2475 	push	ar7
      0034C7 C0 06            [24] 2476 	push	ar6
      0034C9 C0 05            [24] 2477 	push	ar5
      0034CB 8A 82            [24] 2478 	mov	dpl,r2
      0034CD 8B 83            [24] 2479 	mov	dph,r3
      0034CF 8C F0            [24] 2480 	mov	b,r4
      0034D1 12 27 7F         [24] 2481 	lcall	_stack_pop
      0034D4 AB 82            [24] 2482 	mov	r3,dpl
      0034D6 AC 83            [24] 2483 	mov	r4,dph
      0034D8 15 81            [12] 2484 	dec	sp
      0034DA 15 81            [12] 2485 	dec	sp
      0034DC 15 81            [12] 2486 	dec	sp
      0034DE EB               [12] 2487 	mov	a,r3
      0034DF 4C               [12] 2488 	orl	a,r4
      0034E0 70 25            [24] 2489 	jnz	00119$
      0034E2 7F 64            [12] 2490 	mov	r7,#___str_8
      0034E4 7E 6C            [12] 2491 	mov	r6,#(___str_8 >> 8)
      0034E6 7D 80            [12] 2492 	mov	r5,#0x80
                                   2493 ;	calc.c:50: return;
      0034E8                       2494 00303$:
                                   2495 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0034E8 8F 82            [24] 2496 	mov	dpl,r7
      0034EA 8E 83            [24] 2497 	mov	dph,r6
      0034EC 8D F0            [24] 2498 	mov	b,r5
      0034EE 12 53 AB         [24] 2499 	lcall	__gptrget
      0034F1 FC               [12] 2500 	mov	r4,a
      0034F2 70 03            [24] 2501 	jnz	00902$
      0034F4 02 43 4A         [24] 2502 	ljmp	00196$
      0034F7                       2503 00902$:
      0034F7 7B 00            [12] 2504 	mov	r3,#0x00
      0034F9 8C 82            [24] 2505 	mov	dpl,r4
      0034FB 8B 83            [24] 2506 	mov	dph,r3
      0034FD 12 29 C0         [24] 2507 	lcall	_putchar
      003500 0F               [12] 2508 	inc	r7
                                   2509 ;	calc.c:172: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003501 BF 00 E4         [24] 2510 	cjne	r7,#0x00,00303$
      003504 0E               [12] 2511 	inc	r6
      003505 80 E1            [24] 2512 	sjmp	00303$
      003507                       2513 00119$:
                                   2514 ;	calc.c:173: else if (!stack_pop(&ctx->s, &d1)) {
      003507 E5 08            [12] 2515 	mov	a,_bp
      003509 24 13            [12] 2516 	add	a,#0x13
      00350B FF               [12] 2517 	mov	r7,a
      00350C 7E 00            [12] 2518 	mov	r6,#0x00
      00350E 7D 40            [12] 2519 	mov	r5,#0x40
      003510 E5 08            [12] 2520 	mov	a,_bp
      003512 24 0C            [12] 2521 	add	a,#0x0c
      003514 F8               [12] 2522 	mov	r0,a
      003515 74 09            [12] 2523 	mov	a,#0x09
      003517 26               [12] 2524 	add	a,@r0
      003518 FA               [12] 2525 	mov	r2,a
      003519 E4               [12] 2526 	clr	a
      00351A 08               [12] 2527 	inc	r0
      00351B 36               [12] 2528 	addc	a,@r0
      00351C FB               [12] 2529 	mov	r3,a
      00351D 08               [12] 2530 	inc	r0
      00351E 86 04            [24] 2531 	mov	ar4,@r0
      003520 C0 07            [24] 2532 	push	ar7
      003522 C0 06            [24] 2533 	push	ar6
      003524 C0 05            [24] 2534 	push	ar5
      003526 8A 82            [24] 2535 	mov	dpl,r2
      003528 8B 83            [24] 2536 	mov	dph,r3
      00352A 8C F0            [24] 2537 	mov	b,r4
      00352C 12 27 7F         [24] 2538 	lcall	_stack_pop
      00352F AB 82            [24] 2539 	mov	r3,dpl
      003531 AC 83            [24] 2540 	mov	r4,dph
      003533 15 81            [12] 2541 	dec	sp
      003535 15 81            [12] 2542 	dec	sp
      003537 15 81            [12] 2543 	dec	sp
      003539 EB               [12] 2544 	mov	a,r3
      00353A 4C               [12] 2545 	orl	a,r4
      00353B 70 58            [24] 2546 	jnz	00116$
                                   2547 ;	calc.c:174: (void)stack_push(&ctx->s, d0);
      00353D E5 08            [12] 2548 	mov	a,_bp
      00353F 24 0C            [12] 2549 	add	a,#0x0c
      003541 F8               [12] 2550 	mov	r0,a
      003542 74 09            [12] 2551 	mov	a,#0x09
      003544 26               [12] 2552 	add	a,@r0
      003545 FA               [12] 2553 	mov	r2,a
      003546 E4               [12] 2554 	clr	a
      003547 08               [12] 2555 	inc	r0
      003548 36               [12] 2556 	addc	a,@r0
      003549 FB               [12] 2557 	mov	r3,a
      00354A 08               [12] 2558 	inc	r0
      00354B 86 04            [24] 2559 	mov	ar4,@r0
      00354D E5 08            [12] 2560 	mov	a,_bp
      00354F 24 0F            [12] 2561 	add	a,#0x0f
      003551 F8               [12] 2562 	mov	r0,a
      003552 E6               [12] 2563 	mov	a,@r0
      003553 C0 E0            [24] 2564 	push	acc
      003555 08               [12] 2565 	inc	r0
      003556 E6               [12] 2566 	mov	a,@r0
      003557 C0 E0            [24] 2567 	push	acc
      003559 08               [12] 2568 	inc	r0
      00355A E6               [12] 2569 	mov	a,@r0
      00355B C0 E0            [24] 2570 	push	acc
      00355D 08               [12] 2571 	inc	r0
      00355E E6               [12] 2572 	mov	a,@r0
      00355F C0 E0            [24] 2573 	push	acc
      003561 8A 82            [24] 2574 	mov	dpl,r2
      003563 8B 83            [24] 2575 	mov	dph,r3
      003565 8C F0            [24] 2576 	mov	b,r4
      003567 12 26 B5         [24] 2577 	lcall	_stack_push
      00356A E5 81            [12] 2578 	mov	a,sp
      00356C 24 FC            [12] 2579 	add	a,#0xfc
      00356E F5 81            [12] 2580 	mov	sp,a
                                   2581 ;	calc.c:175: printstr("\r\nstack underflow\r\n");
      003570 7F 64            [12] 2582 	mov	r7,#___str_8
      003572 7E 6C            [12] 2583 	mov	r6,#(___str_8 >> 8)
      003574 7D 80            [12] 2584 	mov	r5,#0x80
                                   2585 ;	calc.c:50: return;
      003576                       2586 00306$:
                                   2587 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003576 8F 82            [24] 2588 	mov	dpl,r7
      003578 8E 83            [24] 2589 	mov	dph,r6
      00357A 8D F0            [24] 2590 	mov	b,r5
      00357C 12 53 AB         [24] 2591 	lcall	__gptrget
      00357F FC               [12] 2592 	mov	r4,a
      003580 70 03            [24] 2593 	jnz	00905$
      003582 02 43 4A         [24] 2594 	ljmp	00196$
      003585                       2595 00905$:
      003585 7B 00            [12] 2596 	mov	r3,#0x00
      003587 8C 82            [24] 2597 	mov	dpl,r4
      003589 8B 83            [24] 2598 	mov	dph,r3
      00358B 12 29 C0         [24] 2599 	lcall	_putchar
      00358E 0F               [12] 2600 	inc	r7
                                   2601 ;	calc.c:175: printstr("\r\nstack underflow\r\n");
      00358F BF 00 E4         [24] 2602 	cjne	r7,#0x00,00306$
      003592 0E               [12] 2603 	inc	r6
      003593 80 E1            [24] 2604 	sjmp	00306$
      003595                       2605 00116$:
                                   2606 ;	calc.c:177: (void)stack_push(&ctx->s, d0);
      003595 E5 08            [12] 2607 	mov	a,_bp
      003597 24 0C            [12] 2608 	add	a,#0x0c
      003599 F8               [12] 2609 	mov	r0,a
      00359A 74 09            [12] 2610 	mov	a,#0x09
      00359C 26               [12] 2611 	add	a,@r0
      00359D FA               [12] 2612 	mov	r2,a
      00359E E4               [12] 2613 	clr	a
      00359F 08               [12] 2614 	inc	r0
      0035A0 36               [12] 2615 	addc	a,@r0
      0035A1 FB               [12] 2616 	mov	r3,a
      0035A2 08               [12] 2617 	inc	r0
      0035A3 86 04            [24] 2618 	mov	ar4,@r0
      0035A5 E5 08            [12] 2619 	mov	a,_bp
      0035A7 24 0F            [12] 2620 	add	a,#0x0f
      0035A9 F8               [12] 2621 	mov	r0,a
      0035AA E6               [12] 2622 	mov	a,@r0
      0035AB C0 E0            [24] 2623 	push	acc
      0035AD 08               [12] 2624 	inc	r0
      0035AE E6               [12] 2625 	mov	a,@r0
      0035AF C0 E0            [24] 2626 	push	acc
      0035B1 08               [12] 2627 	inc	r0
      0035B2 E6               [12] 2628 	mov	a,@r0
      0035B3 C0 E0            [24] 2629 	push	acc
      0035B5 08               [12] 2630 	inc	r0
      0035B6 E6               [12] 2631 	mov	a,@r0
      0035B7 C0 E0            [24] 2632 	push	acc
      0035B9 8A 82            [24] 2633 	mov	dpl,r2
      0035BB 8B 83            [24] 2634 	mov	dph,r3
      0035BD 8C F0            [24] 2635 	mov	b,r4
      0035BF 12 26 B5         [24] 2636 	lcall	_stack_push
      0035C2 E5 81            [12] 2637 	mov	a,sp
      0035C4 24 FC            [12] 2638 	add	a,#0xfc
      0035C6 F5 81            [12] 2639 	mov	sp,a
                                   2640 ;	calc.c:178: (void)stack_push(&ctx->s, d1);
      0035C8 E5 08            [12] 2641 	mov	a,_bp
      0035CA 24 0C            [12] 2642 	add	a,#0x0c
      0035CC F8               [12] 2643 	mov	r0,a
      0035CD 74 09            [12] 2644 	mov	a,#0x09
      0035CF 26               [12] 2645 	add	a,@r0
      0035D0 FA               [12] 2646 	mov	r2,a
      0035D1 E4               [12] 2647 	clr	a
      0035D2 08               [12] 2648 	inc	r0
      0035D3 36               [12] 2649 	addc	a,@r0
      0035D4 FB               [12] 2650 	mov	r3,a
      0035D5 08               [12] 2651 	inc	r0
      0035D6 86 04            [24] 2652 	mov	ar4,@r0
      0035D8 E5 08            [12] 2653 	mov	a,_bp
      0035DA 24 13            [12] 2654 	add	a,#0x13
      0035DC F8               [12] 2655 	mov	r0,a
      0035DD E6               [12] 2656 	mov	a,@r0
      0035DE C0 E0            [24] 2657 	push	acc
      0035E0 08               [12] 2658 	inc	r0
      0035E1 E6               [12] 2659 	mov	a,@r0
      0035E2 C0 E0            [24] 2660 	push	acc
      0035E4 08               [12] 2661 	inc	r0
      0035E5 E6               [12] 2662 	mov	a,@r0
      0035E6 C0 E0            [24] 2663 	push	acc
      0035E8 08               [12] 2664 	inc	r0
      0035E9 E6               [12] 2665 	mov	a,@r0
      0035EA C0 E0            [24] 2666 	push	acc
      0035EC 8A 82            [24] 2667 	mov	dpl,r2
      0035EE 8B 83            [24] 2668 	mov	dph,r3
      0035F0 8C F0            [24] 2669 	mov	b,r4
      0035F2 12 26 B5         [24] 2670 	lcall	_stack_push
      0035F5 E5 81            [12] 2671 	mov	a,sp
      0035F7 24 FC            [12] 2672 	add	a,#0xfc
      0035F9 F5 81            [12] 2673 	mov	sp,a
                                   2674 ;	calc.c:180: break;
      0035FB 02 43 4A         [24] 2675 	ljmp	00196$
                                   2676 ;	calc.c:181: case '+':
      0035FE                       2677 00121$:
                                   2678 ;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0035FE E5 08            [12] 2679 	mov	a,_bp
      003600 24 0F            [12] 2680 	add	a,#0x0f
      003602 FF               [12] 2681 	mov	r7,a
      003603 7E 00            [12] 2682 	mov	r6,#0x00
      003605 7D 40            [12] 2683 	mov	r5,#0x40
      003607 E5 08            [12] 2684 	mov	a,_bp
      003609 24 0C            [12] 2685 	add	a,#0x0c
      00360B F8               [12] 2686 	mov	r0,a
      00360C 74 09            [12] 2687 	mov	a,#0x09
      00360E 26               [12] 2688 	add	a,@r0
      00360F FA               [12] 2689 	mov	r2,a
      003610 E4               [12] 2690 	clr	a
      003611 08               [12] 2691 	inc	r0
      003612 36               [12] 2692 	addc	a,@r0
      003613 FB               [12] 2693 	mov	r3,a
      003614 08               [12] 2694 	inc	r0
      003615 86 04            [24] 2695 	mov	ar4,@r0
      003617 C0 07            [24] 2696 	push	ar7
      003619 C0 06            [24] 2697 	push	ar6
      00361B C0 05            [24] 2698 	push	ar5
      00361D 8A 82            [24] 2699 	mov	dpl,r2
      00361F 8B 83            [24] 2700 	mov	dph,r3
      003621 8C F0            [24] 2701 	mov	b,r4
      003623 12 27 7F         [24] 2702 	lcall	_stack_pop
      003626 AB 82            [24] 2703 	mov	r3,dpl
      003628 AC 83            [24] 2704 	mov	r4,dph
      00362A 15 81            [12] 2705 	dec	sp
      00362C 15 81            [12] 2706 	dec	sp
      00362E 15 81            [12] 2707 	dec	sp
      003630 EB               [12] 2708 	mov	a,r3
      003631 4C               [12] 2709 	orl	a,r4
      003632 70 25            [24] 2710 	jnz	00126$
      003634 7F 64            [12] 2711 	mov	r7,#___str_8
      003636 7E 6C            [12] 2712 	mov	r6,#(___str_8 >> 8)
      003638 7D 80            [12] 2713 	mov	r5,#0x80
                                   2714 ;	calc.c:50: return;
      00363A                       2715 00309$:
                                   2716 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00363A 8F 82            [24] 2717 	mov	dpl,r7
      00363C 8E 83            [24] 2718 	mov	dph,r6
      00363E 8D F0            [24] 2719 	mov	b,r5
      003640 12 53 AB         [24] 2720 	lcall	__gptrget
      003643 FC               [12] 2721 	mov	r4,a
      003644 70 03            [24] 2722 	jnz	00908$
      003646 02 43 4A         [24] 2723 	ljmp	00196$
      003649                       2724 00908$:
      003649 7B 00            [12] 2725 	mov	r3,#0x00
      00364B 8C 82            [24] 2726 	mov	dpl,r4
      00364D 8B 83            [24] 2727 	mov	dph,r3
      00364F 12 29 C0         [24] 2728 	lcall	_putchar
      003652 0F               [12] 2729 	inc	r7
                                   2730 ;	calc.c:182: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003653 BF 00 E4         [24] 2731 	cjne	r7,#0x00,00309$
      003656 0E               [12] 2732 	inc	r6
      003657 80 E1            [24] 2733 	sjmp	00309$
      003659                       2734 00126$:
                                   2735 ;	calc.c:183: else if (!stack_pop(&ctx->s, &d1)) {
      003659 E5 08            [12] 2736 	mov	a,_bp
      00365B 24 13            [12] 2737 	add	a,#0x13
      00365D FF               [12] 2738 	mov	r7,a
      00365E 7E 00            [12] 2739 	mov	r6,#0x00
      003660 7D 40            [12] 2740 	mov	r5,#0x40
      003662 E5 08            [12] 2741 	mov	a,_bp
      003664 24 0C            [12] 2742 	add	a,#0x0c
      003666 F8               [12] 2743 	mov	r0,a
      003667 74 09            [12] 2744 	mov	a,#0x09
      003669 26               [12] 2745 	add	a,@r0
      00366A FA               [12] 2746 	mov	r2,a
      00366B E4               [12] 2747 	clr	a
      00366C 08               [12] 2748 	inc	r0
      00366D 36               [12] 2749 	addc	a,@r0
      00366E FB               [12] 2750 	mov	r3,a
      00366F 08               [12] 2751 	inc	r0
      003670 86 04            [24] 2752 	mov	ar4,@r0
      003672 C0 07            [24] 2753 	push	ar7
      003674 C0 06            [24] 2754 	push	ar6
      003676 C0 05            [24] 2755 	push	ar5
      003678 8A 82            [24] 2756 	mov	dpl,r2
      00367A 8B 83            [24] 2757 	mov	dph,r3
      00367C 8C F0            [24] 2758 	mov	b,r4
      00367E 12 27 7F         [24] 2759 	lcall	_stack_pop
      003681 AB 82            [24] 2760 	mov	r3,dpl
      003683 AC 83            [24] 2761 	mov	r4,dph
      003685 15 81            [12] 2762 	dec	sp
      003687 15 81            [12] 2763 	dec	sp
      003689 15 81            [12] 2764 	dec	sp
      00368B EB               [12] 2765 	mov	a,r3
      00368C 4C               [12] 2766 	orl	a,r4
      00368D 70 58            [24] 2767 	jnz	00123$
                                   2768 ;	calc.c:184: (void)stack_push(&ctx->s, d0);
      00368F E5 08            [12] 2769 	mov	a,_bp
      003691 24 0C            [12] 2770 	add	a,#0x0c
      003693 F8               [12] 2771 	mov	r0,a
      003694 74 09            [12] 2772 	mov	a,#0x09
      003696 26               [12] 2773 	add	a,@r0
      003697 FA               [12] 2774 	mov	r2,a
      003698 E4               [12] 2775 	clr	a
      003699 08               [12] 2776 	inc	r0
      00369A 36               [12] 2777 	addc	a,@r0
      00369B FB               [12] 2778 	mov	r3,a
      00369C 08               [12] 2779 	inc	r0
      00369D 86 04            [24] 2780 	mov	ar4,@r0
      00369F E5 08            [12] 2781 	mov	a,_bp
      0036A1 24 0F            [12] 2782 	add	a,#0x0f
      0036A3 F8               [12] 2783 	mov	r0,a
      0036A4 E6               [12] 2784 	mov	a,@r0
      0036A5 C0 E0            [24] 2785 	push	acc
      0036A7 08               [12] 2786 	inc	r0
      0036A8 E6               [12] 2787 	mov	a,@r0
      0036A9 C0 E0            [24] 2788 	push	acc
      0036AB 08               [12] 2789 	inc	r0
      0036AC E6               [12] 2790 	mov	a,@r0
      0036AD C0 E0            [24] 2791 	push	acc
      0036AF 08               [12] 2792 	inc	r0
      0036B0 E6               [12] 2793 	mov	a,@r0
      0036B1 C0 E0            [24] 2794 	push	acc
      0036B3 8A 82            [24] 2795 	mov	dpl,r2
      0036B5 8B 83            [24] 2796 	mov	dph,r3
      0036B7 8C F0            [24] 2797 	mov	b,r4
      0036B9 12 26 B5         [24] 2798 	lcall	_stack_push
      0036BC E5 81            [12] 2799 	mov	a,sp
      0036BE 24 FC            [12] 2800 	add	a,#0xfc
      0036C0 F5 81            [12] 2801 	mov	sp,a
                                   2802 ;	calc.c:185: printstr("\r\nstack underflow\r\n");
      0036C2 7F 64            [12] 2803 	mov	r7,#___str_8
      0036C4 7E 6C            [12] 2804 	mov	r6,#(___str_8 >> 8)
      0036C6 7D 80            [12] 2805 	mov	r5,#0x80
                                   2806 ;	calc.c:50: return;
      0036C8                       2807 00312$:
                                   2808 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0036C8 8F 82            [24] 2809 	mov	dpl,r7
      0036CA 8E 83            [24] 2810 	mov	dph,r6
      0036CC 8D F0            [24] 2811 	mov	b,r5
      0036CE 12 53 AB         [24] 2812 	lcall	__gptrget
      0036D1 FC               [12] 2813 	mov	r4,a
      0036D2 70 03            [24] 2814 	jnz	00911$
      0036D4 02 43 4A         [24] 2815 	ljmp	00196$
      0036D7                       2816 00911$:
      0036D7 7B 00            [12] 2817 	mov	r3,#0x00
      0036D9 8C 82            [24] 2818 	mov	dpl,r4
      0036DB 8B 83            [24] 2819 	mov	dph,r3
      0036DD 12 29 C0         [24] 2820 	lcall	_putchar
      0036E0 0F               [12] 2821 	inc	r7
                                   2822 ;	calc.c:185: printstr("\r\nstack underflow\r\n");
      0036E1 BF 00 E4         [24] 2823 	cjne	r7,#0x00,00312$
      0036E4 0E               [12] 2824 	inc	r6
      0036E5 80 E1            [24] 2825 	sjmp	00312$
      0036E7                       2826 00123$:
                                   2827 ;	calc.c:187: d1 += d0;
      0036E7 E5 08            [12] 2828 	mov	a,_bp
      0036E9 24 13            [12] 2829 	add	a,#0x13
      0036EB F8               [12] 2830 	mov	r0,a
      0036EC E5 08            [12] 2831 	mov	a,_bp
      0036EE 24 0F            [12] 2832 	add	a,#0x0f
      0036F0 F9               [12] 2833 	mov	r1,a
      0036F1 E7               [12] 2834 	mov	a,@r1
      0036F2 26               [12] 2835 	add	a,@r0
      0036F3 F6               [12] 2836 	mov	@r0,a
      0036F4 09               [12] 2837 	inc	r1
      0036F5 E7               [12] 2838 	mov	a,@r1
      0036F6 08               [12] 2839 	inc	r0
      0036F7 36               [12] 2840 	addc	a,@r0
      0036F8 F6               [12] 2841 	mov	@r0,a
      0036F9 09               [12] 2842 	inc	r1
      0036FA E7               [12] 2843 	mov	a,@r1
      0036FB 08               [12] 2844 	inc	r0
      0036FC 36               [12] 2845 	addc	a,@r0
      0036FD F6               [12] 2846 	mov	@r0,a
      0036FE 09               [12] 2847 	inc	r1
      0036FF E7               [12] 2848 	mov	a,@r1
      003700 08               [12] 2849 	inc	r0
      003701 36               [12] 2850 	addc	a,@r0
      003702 F6               [12] 2851 	mov	@r0,a
                                   2852 ;	calc.c:188: (void)stack_push(&ctx->s, d1);
      003703 E5 08            [12] 2853 	mov	a,_bp
      003705 24 0C            [12] 2854 	add	a,#0x0c
      003707 F8               [12] 2855 	mov	r0,a
      003708 74 09            [12] 2856 	mov	a,#0x09
      00370A 26               [12] 2857 	add	a,@r0
      00370B FA               [12] 2858 	mov	r2,a
      00370C E4               [12] 2859 	clr	a
      00370D 08               [12] 2860 	inc	r0
      00370E 36               [12] 2861 	addc	a,@r0
      00370F FB               [12] 2862 	mov	r3,a
      003710 08               [12] 2863 	inc	r0
      003711 86 04            [24] 2864 	mov	ar4,@r0
      003713 E5 08            [12] 2865 	mov	a,_bp
      003715 24 13            [12] 2866 	add	a,#0x13
      003717 F8               [12] 2867 	mov	r0,a
      003718 E6               [12] 2868 	mov	a,@r0
      003719 C0 E0            [24] 2869 	push	acc
      00371B 08               [12] 2870 	inc	r0
      00371C E6               [12] 2871 	mov	a,@r0
      00371D C0 E0            [24] 2872 	push	acc
      00371F 08               [12] 2873 	inc	r0
      003720 E6               [12] 2874 	mov	a,@r0
      003721 C0 E0            [24] 2875 	push	acc
      003723 08               [12] 2876 	inc	r0
      003724 E6               [12] 2877 	mov	a,@r0
      003725 C0 E0            [24] 2878 	push	acc
      003727 8A 82            [24] 2879 	mov	dpl,r2
      003729 8B 83            [24] 2880 	mov	dph,r3
      00372B 8C F0            [24] 2881 	mov	b,r4
      00372D 12 26 B5         [24] 2882 	lcall	_stack_push
      003730 E5 81            [12] 2883 	mov	a,sp
      003732 24 FC            [12] 2884 	add	a,#0xfc
      003734 F5 81            [12] 2885 	mov	sp,a
                                   2886 ;	calc.c:190: break;
      003736 02 43 4A         [24] 2887 	ljmp	00196$
                                   2888 ;	calc.c:191: case '-':
      003739                       2889 00128$:
                                   2890 ;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003739 E5 08            [12] 2891 	mov	a,_bp
      00373B 24 0F            [12] 2892 	add	a,#0x0f
      00373D FF               [12] 2893 	mov	r7,a
      00373E 7E 00            [12] 2894 	mov	r6,#0x00
      003740 7D 40            [12] 2895 	mov	r5,#0x40
      003742 E5 08            [12] 2896 	mov	a,_bp
      003744 24 0C            [12] 2897 	add	a,#0x0c
      003746 F8               [12] 2898 	mov	r0,a
      003747 74 09            [12] 2899 	mov	a,#0x09
      003749 26               [12] 2900 	add	a,@r0
      00374A FA               [12] 2901 	mov	r2,a
      00374B E4               [12] 2902 	clr	a
      00374C 08               [12] 2903 	inc	r0
      00374D 36               [12] 2904 	addc	a,@r0
      00374E FB               [12] 2905 	mov	r3,a
      00374F 08               [12] 2906 	inc	r0
      003750 86 04            [24] 2907 	mov	ar4,@r0
      003752 C0 07            [24] 2908 	push	ar7
      003754 C0 06            [24] 2909 	push	ar6
      003756 C0 05            [24] 2910 	push	ar5
      003758 8A 82            [24] 2911 	mov	dpl,r2
      00375A 8B 83            [24] 2912 	mov	dph,r3
      00375C 8C F0            [24] 2913 	mov	b,r4
      00375E 12 27 7F         [24] 2914 	lcall	_stack_pop
      003761 AB 82            [24] 2915 	mov	r3,dpl
      003763 AC 83            [24] 2916 	mov	r4,dph
      003765 15 81            [12] 2917 	dec	sp
      003767 15 81            [12] 2918 	dec	sp
      003769 15 81            [12] 2919 	dec	sp
      00376B EB               [12] 2920 	mov	a,r3
      00376C 4C               [12] 2921 	orl	a,r4
      00376D 70 25            [24] 2922 	jnz	00133$
      00376F 7F 64            [12] 2923 	mov	r7,#___str_8
      003771 7E 6C            [12] 2924 	mov	r6,#(___str_8 >> 8)
      003773 7D 80            [12] 2925 	mov	r5,#0x80
                                   2926 ;	calc.c:50: return;
      003775                       2927 00315$:
                                   2928 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003775 8F 82            [24] 2929 	mov	dpl,r7
      003777 8E 83            [24] 2930 	mov	dph,r6
      003779 8D F0            [24] 2931 	mov	b,r5
      00377B 12 53 AB         [24] 2932 	lcall	__gptrget
      00377E FC               [12] 2933 	mov	r4,a
      00377F 70 03            [24] 2934 	jnz	00914$
      003781 02 43 4A         [24] 2935 	ljmp	00196$
      003784                       2936 00914$:
      003784 7B 00            [12] 2937 	mov	r3,#0x00
      003786 8C 82            [24] 2938 	mov	dpl,r4
      003788 8B 83            [24] 2939 	mov	dph,r3
      00378A 12 29 C0         [24] 2940 	lcall	_putchar
      00378D 0F               [12] 2941 	inc	r7
                                   2942 ;	calc.c:192: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00378E BF 00 E4         [24] 2943 	cjne	r7,#0x00,00315$
      003791 0E               [12] 2944 	inc	r6
      003792 80 E1            [24] 2945 	sjmp	00315$
      003794                       2946 00133$:
                                   2947 ;	calc.c:193: else if (!stack_pop(&ctx->s, &d1)) {
      003794 E5 08            [12] 2948 	mov	a,_bp
      003796 24 13            [12] 2949 	add	a,#0x13
      003798 FF               [12] 2950 	mov	r7,a
      003799 7E 00            [12] 2951 	mov	r6,#0x00
      00379B 7D 40            [12] 2952 	mov	r5,#0x40
      00379D E5 08            [12] 2953 	mov	a,_bp
      00379F 24 0C            [12] 2954 	add	a,#0x0c
      0037A1 F8               [12] 2955 	mov	r0,a
      0037A2 74 09            [12] 2956 	mov	a,#0x09
      0037A4 26               [12] 2957 	add	a,@r0
      0037A5 FA               [12] 2958 	mov	r2,a
      0037A6 E4               [12] 2959 	clr	a
      0037A7 08               [12] 2960 	inc	r0
      0037A8 36               [12] 2961 	addc	a,@r0
      0037A9 FB               [12] 2962 	mov	r3,a
      0037AA 08               [12] 2963 	inc	r0
      0037AB 86 04            [24] 2964 	mov	ar4,@r0
      0037AD C0 07            [24] 2965 	push	ar7
      0037AF C0 06            [24] 2966 	push	ar6
      0037B1 C0 05            [24] 2967 	push	ar5
      0037B3 8A 82            [24] 2968 	mov	dpl,r2
      0037B5 8B 83            [24] 2969 	mov	dph,r3
      0037B7 8C F0            [24] 2970 	mov	b,r4
      0037B9 12 27 7F         [24] 2971 	lcall	_stack_pop
      0037BC AB 82            [24] 2972 	mov	r3,dpl
      0037BE AC 83            [24] 2973 	mov	r4,dph
      0037C0 15 81            [12] 2974 	dec	sp
      0037C2 15 81            [12] 2975 	dec	sp
      0037C4 15 81            [12] 2976 	dec	sp
      0037C6 EB               [12] 2977 	mov	a,r3
      0037C7 4C               [12] 2978 	orl	a,r4
      0037C8 70 58            [24] 2979 	jnz	00130$
                                   2980 ;	calc.c:194: (void)stack_push(&ctx->s, d0);
      0037CA E5 08            [12] 2981 	mov	a,_bp
      0037CC 24 0C            [12] 2982 	add	a,#0x0c
      0037CE F8               [12] 2983 	mov	r0,a
      0037CF 74 09            [12] 2984 	mov	a,#0x09
      0037D1 26               [12] 2985 	add	a,@r0
      0037D2 FA               [12] 2986 	mov	r2,a
      0037D3 E4               [12] 2987 	clr	a
      0037D4 08               [12] 2988 	inc	r0
      0037D5 36               [12] 2989 	addc	a,@r0
      0037D6 FB               [12] 2990 	mov	r3,a
      0037D7 08               [12] 2991 	inc	r0
      0037D8 86 04            [24] 2992 	mov	ar4,@r0
      0037DA E5 08            [12] 2993 	mov	a,_bp
      0037DC 24 0F            [12] 2994 	add	a,#0x0f
      0037DE F8               [12] 2995 	mov	r0,a
      0037DF E6               [12] 2996 	mov	a,@r0
      0037E0 C0 E0            [24] 2997 	push	acc
      0037E2 08               [12] 2998 	inc	r0
      0037E3 E6               [12] 2999 	mov	a,@r0
      0037E4 C0 E0            [24] 3000 	push	acc
      0037E6 08               [12] 3001 	inc	r0
      0037E7 E6               [12] 3002 	mov	a,@r0
      0037E8 C0 E0            [24] 3003 	push	acc
      0037EA 08               [12] 3004 	inc	r0
      0037EB E6               [12] 3005 	mov	a,@r0
      0037EC C0 E0            [24] 3006 	push	acc
      0037EE 8A 82            [24] 3007 	mov	dpl,r2
      0037F0 8B 83            [24] 3008 	mov	dph,r3
      0037F2 8C F0            [24] 3009 	mov	b,r4
      0037F4 12 26 B5         [24] 3010 	lcall	_stack_push
      0037F7 E5 81            [12] 3011 	mov	a,sp
      0037F9 24 FC            [12] 3012 	add	a,#0xfc
      0037FB F5 81            [12] 3013 	mov	sp,a
                                   3014 ;	calc.c:195: printstr("\r\nstack underflow\r\n");
      0037FD 7F 64            [12] 3015 	mov	r7,#___str_8
      0037FF 7E 6C            [12] 3016 	mov	r6,#(___str_8 >> 8)
      003801 7D 80            [12] 3017 	mov	r5,#0x80
                                   3018 ;	calc.c:50: return;
      003803                       3019 00318$:
                                   3020 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003803 8F 82            [24] 3021 	mov	dpl,r7
      003805 8E 83            [24] 3022 	mov	dph,r6
      003807 8D F0            [24] 3023 	mov	b,r5
      003809 12 53 AB         [24] 3024 	lcall	__gptrget
      00380C FC               [12] 3025 	mov	r4,a
      00380D 70 03            [24] 3026 	jnz	00917$
      00380F 02 43 4A         [24] 3027 	ljmp	00196$
      003812                       3028 00917$:
      003812 7B 00            [12] 3029 	mov	r3,#0x00
      003814 8C 82            [24] 3030 	mov	dpl,r4
      003816 8B 83            [24] 3031 	mov	dph,r3
      003818 12 29 C0         [24] 3032 	lcall	_putchar
      00381B 0F               [12] 3033 	inc	r7
                                   3034 ;	calc.c:195: printstr("\r\nstack underflow\r\n");
      00381C BF 00 E4         [24] 3035 	cjne	r7,#0x00,00318$
      00381F 0E               [12] 3036 	inc	r6
      003820 80 E1            [24] 3037 	sjmp	00318$
      003822                       3038 00130$:
                                   3039 ;	calc.c:197: d1 -= d0;
      003822 E5 08            [12] 3040 	mov	a,_bp
      003824 24 13            [12] 3041 	add	a,#0x13
      003826 F8               [12] 3042 	mov	r0,a
      003827 E5 08            [12] 3043 	mov	a,_bp
      003829 24 0F            [12] 3044 	add	a,#0x0f
      00382B F9               [12] 3045 	mov	r1,a
      00382C E6               [12] 3046 	mov	a,@r0
      00382D C3               [12] 3047 	clr	c
      00382E 97               [12] 3048 	subb	a,@r1
      00382F F6               [12] 3049 	mov	@r0,a
      003830 08               [12] 3050 	inc	r0
      003831 E6               [12] 3051 	mov	a,@r0
      003832 09               [12] 3052 	inc	r1
      003833 97               [12] 3053 	subb	a,@r1
      003834 F6               [12] 3054 	mov	@r0,a
      003835 08               [12] 3055 	inc	r0
      003836 E6               [12] 3056 	mov	a,@r0
      003837 09               [12] 3057 	inc	r1
      003838 97               [12] 3058 	subb	a,@r1
      003839 F6               [12] 3059 	mov	@r0,a
      00383A 08               [12] 3060 	inc	r0
      00383B E6               [12] 3061 	mov	a,@r0
      00383C 09               [12] 3062 	inc	r1
      00383D 97               [12] 3063 	subb	a,@r1
      00383E F6               [12] 3064 	mov	@r0,a
                                   3065 ;	calc.c:198: (void)stack_push(&ctx->s, d1);
      00383F E5 08            [12] 3066 	mov	a,_bp
      003841 24 0C            [12] 3067 	add	a,#0x0c
      003843 F8               [12] 3068 	mov	r0,a
      003844 74 09            [12] 3069 	mov	a,#0x09
      003846 26               [12] 3070 	add	a,@r0
      003847 FA               [12] 3071 	mov	r2,a
      003848 E4               [12] 3072 	clr	a
      003849 08               [12] 3073 	inc	r0
      00384A 36               [12] 3074 	addc	a,@r0
      00384B FB               [12] 3075 	mov	r3,a
      00384C 08               [12] 3076 	inc	r0
      00384D 86 04            [24] 3077 	mov	ar4,@r0
      00384F E5 08            [12] 3078 	mov	a,_bp
      003851 24 13            [12] 3079 	add	a,#0x13
      003853 F8               [12] 3080 	mov	r0,a
      003854 E6               [12] 3081 	mov	a,@r0
      003855 C0 E0            [24] 3082 	push	acc
      003857 08               [12] 3083 	inc	r0
      003858 E6               [12] 3084 	mov	a,@r0
      003859 C0 E0            [24] 3085 	push	acc
      00385B 08               [12] 3086 	inc	r0
      00385C E6               [12] 3087 	mov	a,@r0
      00385D C0 E0            [24] 3088 	push	acc
      00385F 08               [12] 3089 	inc	r0
      003860 E6               [12] 3090 	mov	a,@r0
      003861 C0 E0            [24] 3091 	push	acc
      003863 8A 82            [24] 3092 	mov	dpl,r2
      003865 8B 83            [24] 3093 	mov	dph,r3
      003867 8C F0            [24] 3094 	mov	b,r4
      003869 12 26 B5         [24] 3095 	lcall	_stack_push
      00386C E5 81            [12] 3096 	mov	a,sp
      00386E 24 FC            [12] 3097 	add	a,#0xfc
      003870 F5 81            [12] 3098 	mov	sp,a
                                   3099 ;	calc.c:200: break;
      003872 02 43 4A         [24] 3100 	ljmp	00196$
                                   3101 ;	calc.c:201: case '*':
      003875                       3102 00135$:
                                   3103 ;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003875 E5 08            [12] 3104 	mov	a,_bp
      003877 24 0F            [12] 3105 	add	a,#0x0f
      003879 FF               [12] 3106 	mov	r7,a
      00387A 7E 00            [12] 3107 	mov	r6,#0x00
      00387C 7D 40            [12] 3108 	mov	r5,#0x40
      00387E E5 08            [12] 3109 	mov	a,_bp
      003880 24 0C            [12] 3110 	add	a,#0x0c
      003882 F8               [12] 3111 	mov	r0,a
      003883 74 09            [12] 3112 	mov	a,#0x09
      003885 26               [12] 3113 	add	a,@r0
      003886 FA               [12] 3114 	mov	r2,a
      003887 E4               [12] 3115 	clr	a
      003888 08               [12] 3116 	inc	r0
      003889 36               [12] 3117 	addc	a,@r0
      00388A FB               [12] 3118 	mov	r3,a
      00388B 08               [12] 3119 	inc	r0
      00388C 86 04            [24] 3120 	mov	ar4,@r0
      00388E C0 07            [24] 3121 	push	ar7
      003890 C0 06            [24] 3122 	push	ar6
      003892 C0 05            [24] 3123 	push	ar5
      003894 8A 82            [24] 3124 	mov	dpl,r2
      003896 8B 83            [24] 3125 	mov	dph,r3
      003898 8C F0            [24] 3126 	mov	b,r4
      00389A 12 27 7F         [24] 3127 	lcall	_stack_pop
      00389D AB 82            [24] 3128 	mov	r3,dpl
      00389F AC 83            [24] 3129 	mov	r4,dph
      0038A1 15 81            [12] 3130 	dec	sp
      0038A3 15 81            [12] 3131 	dec	sp
      0038A5 15 81            [12] 3132 	dec	sp
      0038A7 EB               [12] 3133 	mov	a,r3
      0038A8 4C               [12] 3134 	orl	a,r4
      0038A9 70 25            [24] 3135 	jnz	00140$
      0038AB 7F 64            [12] 3136 	mov	r7,#___str_8
      0038AD 7E 6C            [12] 3137 	mov	r6,#(___str_8 >> 8)
      0038AF 7D 80            [12] 3138 	mov	r5,#0x80
                                   3139 ;	calc.c:50: return;
      0038B1                       3140 00321$:
                                   3141 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0038B1 8F 82            [24] 3142 	mov	dpl,r7
      0038B3 8E 83            [24] 3143 	mov	dph,r6
      0038B5 8D F0            [24] 3144 	mov	b,r5
      0038B7 12 53 AB         [24] 3145 	lcall	__gptrget
      0038BA FC               [12] 3146 	mov	r4,a
      0038BB 70 03            [24] 3147 	jnz	00920$
      0038BD 02 43 4A         [24] 3148 	ljmp	00196$
      0038C0                       3149 00920$:
      0038C0 7B 00            [12] 3150 	mov	r3,#0x00
      0038C2 8C 82            [24] 3151 	mov	dpl,r4
      0038C4 8B 83            [24] 3152 	mov	dph,r3
      0038C6 12 29 C0         [24] 3153 	lcall	_putchar
      0038C9 0F               [12] 3154 	inc	r7
                                   3155 ;	calc.c:202: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0038CA BF 00 E4         [24] 3156 	cjne	r7,#0x00,00321$
      0038CD 0E               [12] 3157 	inc	r6
      0038CE 80 E1            [24] 3158 	sjmp	00321$
      0038D0                       3159 00140$:
                                   3160 ;	calc.c:203: else if (!stack_pop(&ctx->s, &d1)) {
      0038D0 E5 08            [12] 3161 	mov	a,_bp
      0038D2 24 13            [12] 3162 	add	a,#0x13
      0038D4 FF               [12] 3163 	mov	r7,a
      0038D5 7E 00            [12] 3164 	mov	r6,#0x00
      0038D7 7D 40            [12] 3165 	mov	r5,#0x40
      0038D9 E5 08            [12] 3166 	mov	a,_bp
      0038DB 24 0C            [12] 3167 	add	a,#0x0c
      0038DD F8               [12] 3168 	mov	r0,a
      0038DE 74 09            [12] 3169 	mov	a,#0x09
      0038E0 26               [12] 3170 	add	a,@r0
      0038E1 FA               [12] 3171 	mov	r2,a
      0038E2 E4               [12] 3172 	clr	a
      0038E3 08               [12] 3173 	inc	r0
      0038E4 36               [12] 3174 	addc	a,@r0
      0038E5 FB               [12] 3175 	mov	r3,a
      0038E6 08               [12] 3176 	inc	r0
      0038E7 86 04            [24] 3177 	mov	ar4,@r0
      0038E9 C0 07            [24] 3178 	push	ar7
      0038EB C0 06            [24] 3179 	push	ar6
      0038ED C0 05            [24] 3180 	push	ar5
      0038EF 8A 82            [24] 3181 	mov	dpl,r2
      0038F1 8B 83            [24] 3182 	mov	dph,r3
      0038F3 8C F0            [24] 3183 	mov	b,r4
      0038F5 12 27 7F         [24] 3184 	lcall	_stack_pop
      0038F8 AB 82            [24] 3185 	mov	r3,dpl
      0038FA AC 83            [24] 3186 	mov	r4,dph
      0038FC 15 81            [12] 3187 	dec	sp
      0038FE 15 81            [12] 3188 	dec	sp
      003900 15 81            [12] 3189 	dec	sp
      003902 EB               [12] 3190 	mov	a,r3
      003903 4C               [12] 3191 	orl	a,r4
      003904 70 58            [24] 3192 	jnz	00137$
                                   3193 ;	calc.c:204: (void)stack_push(&ctx->s, d0);
      003906 E5 08            [12] 3194 	mov	a,_bp
      003908 24 0C            [12] 3195 	add	a,#0x0c
      00390A F8               [12] 3196 	mov	r0,a
      00390B 74 09            [12] 3197 	mov	a,#0x09
      00390D 26               [12] 3198 	add	a,@r0
      00390E FA               [12] 3199 	mov	r2,a
      00390F E4               [12] 3200 	clr	a
      003910 08               [12] 3201 	inc	r0
      003911 36               [12] 3202 	addc	a,@r0
      003912 FB               [12] 3203 	mov	r3,a
      003913 08               [12] 3204 	inc	r0
      003914 86 04            [24] 3205 	mov	ar4,@r0
      003916 E5 08            [12] 3206 	mov	a,_bp
      003918 24 0F            [12] 3207 	add	a,#0x0f
      00391A F8               [12] 3208 	mov	r0,a
      00391B E6               [12] 3209 	mov	a,@r0
      00391C C0 E0            [24] 3210 	push	acc
      00391E 08               [12] 3211 	inc	r0
      00391F E6               [12] 3212 	mov	a,@r0
      003920 C0 E0            [24] 3213 	push	acc
      003922 08               [12] 3214 	inc	r0
      003923 E6               [12] 3215 	mov	a,@r0
      003924 C0 E0            [24] 3216 	push	acc
      003926 08               [12] 3217 	inc	r0
      003927 E6               [12] 3218 	mov	a,@r0
      003928 C0 E0            [24] 3219 	push	acc
      00392A 8A 82            [24] 3220 	mov	dpl,r2
      00392C 8B 83            [24] 3221 	mov	dph,r3
      00392E 8C F0            [24] 3222 	mov	b,r4
      003930 12 26 B5         [24] 3223 	lcall	_stack_push
      003933 E5 81            [12] 3224 	mov	a,sp
      003935 24 FC            [12] 3225 	add	a,#0xfc
      003937 F5 81            [12] 3226 	mov	sp,a
                                   3227 ;	calc.c:205: printstr("\r\nstack underflow\r\n");
      003939 7F 64            [12] 3228 	mov	r7,#___str_8
      00393B 7E 6C            [12] 3229 	mov	r6,#(___str_8 >> 8)
      00393D 7D 80            [12] 3230 	mov	r5,#0x80
                                   3231 ;	calc.c:50: return;
      00393F                       3232 00324$:
                                   3233 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00393F 8F 82            [24] 3234 	mov	dpl,r7
      003941 8E 83            [24] 3235 	mov	dph,r6
      003943 8D F0            [24] 3236 	mov	b,r5
      003945 12 53 AB         [24] 3237 	lcall	__gptrget
      003948 FC               [12] 3238 	mov	r4,a
      003949 70 03            [24] 3239 	jnz	00923$
      00394B 02 43 4A         [24] 3240 	ljmp	00196$
      00394E                       3241 00923$:
      00394E 7B 00            [12] 3242 	mov	r3,#0x00
      003950 8C 82            [24] 3243 	mov	dpl,r4
      003952 8B 83            [24] 3244 	mov	dph,r3
      003954 12 29 C0         [24] 3245 	lcall	_putchar
      003957 0F               [12] 3246 	inc	r7
                                   3247 ;	calc.c:205: printstr("\r\nstack underflow\r\n");
      003958 BF 00 E4         [24] 3248 	cjne	r7,#0x00,00324$
      00395B 0E               [12] 3249 	inc	r6
      00395C 80 E1            [24] 3250 	sjmp	00324$
      00395E                       3251 00137$:
                                   3252 ;	calc.c:207: d1 *= d0;
      00395E E5 08            [12] 3253 	mov	a,_bp
      003960 24 0F            [12] 3254 	add	a,#0x0f
      003962 F8               [12] 3255 	mov	r0,a
      003963 E6               [12] 3256 	mov	a,@r0
      003964 C0 E0            [24] 3257 	push	acc
      003966 08               [12] 3258 	inc	r0
      003967 E6               [12] 3259 	mov	a,@r0
      003968 C0 E0            [24] 3260 	push	acc
      00396A 08               [12] 3261 	inc	r0
      00396B E6               [12] 3262 	mov	a,@r0
      00396C C0 E0            [24] 3263 	push	acc
      00396E 08               [12] 3264 	inc	r0
      00396F E6               [12] 3265 	mov	a,@r0
      003970 C0 E0            [24] 3266 	push	acc
      003972 E5 08            [12] 3267 	mov	a,_bp
      003974 24 13            [12] 3268 	add	a,#0x13
      003976 F8               [12] 3269 	mov	r0,a
      003977 86 82            [24] 3270 	mov	dpl,@r0
      003979 08               [12] 3271 	inc	r0
      00397A 86 83            [24] 3272 	mov	dph,@r0
      00397C 08               [12] 3273 	inc	r0
      00397D 86 F0            [24] 3274 	mov	b,@r0
      00397F 08               [12] 3275 	inc	r0
      003980 E6               [12] 3276 	mov	a,@r0
      003981 12 57 A4         [24] 3277 	lcall	__mullong
      003984 AF 82            [24] 3278 	mov	r7,dpl
      003986 AE 83            [24] 3279 	mov	r6,dph
      003988 AD F0            [24] 3280 	mov	r5,b
      00398A FC               [12] 3281 	mov	r4,a
      00398B E5 81            [12] 3282 	mov	a,sp
      00398D 24 FC            [12] 3283 	add	a,#0xfc
      00398F F5 81            [12] 3284 	mov	sp,a
      003991 E5 08            [12] 3285 	mov	a,_bp
      003993 24 13            [12] 3286 	add	a,#0x13
      003995 F8               [12] 3287 	mov	r0,a
      003996 A6 07            [24] 3288 	mov	@r0,ar7
      003998 08               [12] 3289 	inc	r0
      003999 A6 06            [24] 3290 	mov	@r0,ar6
      00399B 08               [12] 3291 	inc	r0
      00399C A6 05            [24] 3292 	mov	@r0,ar5
      00399E 08               [12] 3293 	inc	r0
      00399F A6 04            [24] 3294 	mov	@r0,ar4
                                   3295 ;	calc.c:208: (void)stack_push(&ctx->s, d1);
      0039A1 E5 08            [12] 3296 	mov	a,_bp
      0039A3 24 0C            [12] 3297 	add	a,#0x0c
      0039A5 F8               [12] 3298 	mov	r0,a
      0039A6 74 09            [12] 3299 	mov	a,#0x09
      0039A8 26               [12] 3300 	add	a,@r0
      0039A9 FA               [12] 3301 	mov	r2,a
      0039AA E4               [12] 3302 	clr	a
      0039AB 08               [12] 3303 	inc	r0
      0039AC 36               [12] 3304 	addc	a,@r0
      0039AD FB               [12] 3305 	mov	r3,a
      0039AE 08               [12] 3306 	inc	r0
      0039AF 86 04            [24] 3307 	mov	ar4,@r0
      0039B1 E5 08            [12] 3308 	mov	a,_bp
      0039B3 24 13            [12] 3309 	add	a,#0x13
      0039B5 F8               [12] 3310 	mov	r0,a
      0039B6 E6               [12] 3311 	mov	a,@r0
      0039B7 C0 E0            [24] 3312 	push	acc
      0039B9 08               [12] 3313 	inc	r0
      0039BA E6               [12] 3314 	mov	a,@r0
      0039BB C0 E0            [24] 3315 	push	acc
      0039BD 08               [12] 3316 	inc	r0
      0039BE E6               [12] 3317 	mov	a,@r0
      0039BF C0 E0            [24] 3318 	push	acc
      0039C1 08               [12] 3319 	inc	r0
      0039C2 E6               [12] 3320 	mov	a,@r0
      0039C3 C0 E0            [24] 3321 	push	acc
      0039C5 8A 82            [24] 3322 	mov	dpl,r2
      0039C7 8B 83            [24] 3323 	mov	dph,r3
      0039C9 8C F0            [24] 3324 	mov	b,r4
      0039CB 12 26 B5         [24] 3325 	lcall	_stack_push
      0039CE E5 81            [12] 3326 	mov	a,sp
      0039D0 24 FC            [12] 3327 	add	a,#0xfc
      0039D2 F5 81            [12] 3328 	mov	sp,a
                                   3329 ;	calc.c:210: break;
      0039D4 02 43 4A         [24] 3330 	ljmp	00196$
                                   3331 ;	calc.c:212: case '\\':
      0039D7                       3332 00143$:
                                   3333 ;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0039D7 C0 05            [24] 3334 	push	ar5
      0039D9 C0 06            [24] 3335 	push	ar6
      0039DB C0 07            [24] 3336 	push	ar7
      0039DD E5 08            [12] 3337 	mov	a,_bp
      0039DF 24 0F            [12] 3338 	add	a,#0x0f
      0039E1 FC               [12] 3339 	mov	r4,a
      0039E2 7B 00            [12] 3340 	mov	r3,#0x00
      0039E4 7A 40            [12] 3341 	mov	r2,#0x40
      0039E6 E5 08            [12] 3342 	mov	a,_bp
      0039E8 24 0C            [12] 3343 	add	a,#0x0c
      0039EA F8               [12] 3344 	mov	r0,a
      0039EB 74 09            [12] 3345 	mov	a,#0x09
      0039ED 26               [12] 3346 	add	a,@r0
      0039EE FD               [12] 3347 	mov	r5,a
      0039EF E4               [12] 3348 	clr	a
      0039F0 08               [12] 3349 	inc	r0
      0039F1 36               [12] 3350 	addc	a,@r0
      0039F2 FE               [12] 3351 	mov	r6,a
      0039F3 08               [12] 3352 	inc	r0
      0039F4 86 07            [24] 3353 	mov	ar7,@r0
      0039F6 C0 05            [24] 3354 	push	ar5
      0039F8 C0 04            [24] 3355 	push	ar4
      0039FA C0 03            [24] 3356 	push	ar3
      0039FC C0 02            [24] 3357 	push	ar2
      0039FE 8D 82            [24] 3358 	mov	dpl,r5
      003A00 8E 83            [24] 3359 	mov	dph,r6
      003A02 8F F0            [24] 3360 	mov	b,r7
      003A04 12 27 7F         [24] 3361 	lcall	_stack_pop
      003A07 AE 82            [24] 3362 	mov	r6,dpl
      003A09 AF 83            [24] 3363 	mov	r7,dph
      003A0B 15 81            [12] 3364 	dec	sp
      003A0D 15 81            [12] 3365 	dec	sp
      003A0F 15 81            [12] 3366 	dec	sp
      003A11 D0 05            [24] 3367 	pop	ar5
      003A13 EE               [12] 3368 	mov	a,r6
      003A14 4F               [12] 3369 	orl	a,r7
      003A15 D0 07            [24] 3370 	pop	ar7
      003A17 D0 06            [24] 3371 	pop	ar6
      003A19 D0 05            [24] 3372 	pop	ar5
      003A1B 70 25            [24] 3373 	jnz	00154$
      003A1D 7F 64            [12] 3374 	mov	r7,#___str_8
      003A1F 7E 6C            [12] 3375 	mov	r6,#(___str_8 >> 8)
      003A21 7D 80            [12] 3376 	mov	r5,#0x80
                                   3377 ;	calc.c:50: return;
      003A23                       3378 00327$:
                                   3379 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003A23 8F 82            [24] 3380 	mov	dpl,r7
      003A25 8E 83            [24] 3381 	mov	dph,r6
      003A27 8D F0            [24] 3382 	mov	b,r5
      003A29 12 53 AB         [24] 3383 	lcall	__gptrget
      003A2C FC               [12] 3384 	mov	r4,a
      003A2D 70 03            [24] 3385 	jnz	00926$
      003A2F 02 43 4A         [24] 3386 	ljmp	00196$
      003A32                       3387 00926$:
      003A32 7B 00            [12] 3388 	mov	r3,#0x00
      003A34 8C 82            [24] 3389 	mov	dpl,r4
      003A36 8B 83            [24] 3390 	mov	dph,r3
      003A38 12 29 C0         [24] 3391 	lcall	_putchar
      003A3B 0F               [12] 3392 	inc	r7
                                   3393 ;	calc.c:213: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003A3C BF 00 E4         [24] 3394 	cjne	r7,#0x00,00327$
      003A3F 0E               [12] 3395 	inc	r6
      003A40 80 E1            [24] 3396 	sjmp	00327$
      003A42                       3397 00154$:
                                   3398 ;	calc.c:214: else if (!stack_pop(&ctx->s, &d1)) {
      003A42 C0 05            [24] 3399 	push	ar5
      003A44 C0 06            [24] 3400 	push	ar6
      003A46 C0 07            [24] 3401 	push	ar7
      003A48 E5 08            [12] 3402 	mov	a,_bp
      003A4A 24 13            [12] 3403 	add	a,#0x13
      003A4C FC               [12] 3404 	mov	r4,a
      003A4D 7B 00            [12] 3405 	mov	r3,#0x00
      003A4F 7A 40            [12] 3406 	mov	r2,#0x40
      003A51 E5 08            [12] 3407 	mov	a,_bp
      003A53 24 0C            [12] 3408 	add	a,#0x0c
      003A55 F8               [12] 3409 	mov	r0,a
      003A56 74 09            [12] 3410 	mov	a,#0x09
      003A58 26               [12] 3411 	add	a,@r0
      003A59 FD               [12] 3412 	mov	r5,a
      003A5A E4               [12] 3413 	clr	a
      003A5B 08               [12] 3414 	inc	r0
      003A5C 36               [12] 3415 	addc	a,@r0
      003A5D FE               [12] 3416 	mov	r6,a
      003A5E 08               [12] 3417 	inc	r0
      003A5F 86 07            [24] 3418 	mov	ar7,@r0
      003A61 C0 05            [24] 3419 	push	ar5
      003A63 C0 04            [24] 3420 	push	ar4
      003A65 C0 03            [24] 3421 	push	ar3
      003A67 C0 02            [24] 3422 	push	ar2
      003A69 8D 82            [24] 3423 	mov	dpl,r5
      003A6B 8E 83            [24] 3424 	mov	dph,r6
      003A6D 8F F0            [24] 3425 	mov	b,r7
      003A6F 12 27 7F         [24] 3426 	lcall	_stack_pop
      003A72 AE 82            [24] 3427 	mov	r6,dpl
      003A74 AF 83            [24] 3428 	mov	r7,dph
      003A76 15 81            [12] 3429 	dec	sp
      003A78 15 81            [12] 3430 	dec	sp
      003A7A 15 81            [12] 3431 	dec	sp
      003A7C D0 05            [24] 3432 	pop	ar5
      003A7E EE               [12] 3433 	mov	a,r6
      003A7F 4F               [12] 3434 	orl	a,r7
      003A80 D0 07            [24] 3435 	pop	ar7
      003A82 D0 06            [24] 3436 	pop	ar6
      003A84 D0 05            [24] 3437 	pop	ar5
      003A86 70 58            [24] 3438 	jnz	00151$
                                   3439 ;	calc.c:215: (void)stack_push(&ctx->s, d0);
      003A88 E5 08            [12] 3440 	mov	a,_bp
      003A8A 24 0C            [12] 3441 	add	a,#0x0c
      003A8C F8               [12] 3442 	mov	r0,a
      003A8D 74 09            [12] 3443 	mov	a,#0x09
      003A8F 26               [12] 3444 	add	a,@r0
      003A90 FA               [12] 3445 	mov	r2,a
      003A91 E4               [12] 3446 	clr	a
      003A92 08               [12] 3447 	inc	r0
      003A93 36               [12] 3448 	addc	a,@r0
      003A94 FB               [12] 3449 	mov	r3,a
      003A95 08               [12] 3450 	inc	r0
      003A96 86 04            [24] 3451 	mov	ar4,@r0
      003A98 E5 08            [12] 3452 	mov	a,_bp
      003A9A 24 0F            [12] 3453 	add	a,#0x0f
      003A9C F8               [12] 3454 	mov	r0,a
      003A9D E6               [12] 3455 	mov	a,@r0
      003A9E C0 E0            [24] 3456 	push	acc
      003AA0 08               [12] 3457 	inc	r0
      003AA1 E6               [12] 3458 	mov	a,@r0
      003AA2 C0 E0            [24] 3459 	push	acc
      003AA4 08               [12] 3460 	inc	r0
      003AA5 E6               [12] 3461 	mov	a,@r0
      003AA6 C0 E0            [24] 3462 	push	acc
      003AA8 08               [12] 3463 	inc	r0
      003AA9 E6               [12] 3464 	mov	a,@r0
      003AAA C0 E0            [24] 3465 	push	acc
      003AAC 8A 82            [24] 3466 	mov	dpl,r2
      003AAE 8B 83            [24] 3467 	mov	dph,r3
      003AB0 8C F0            [24] 3468 	mov	b,r4
      003AB2 12 26 B5         [24] 3469 	lcall	_stack_push
      003AB5 E5 81            [12] 3470 	mov	a,sp
      003AB7 24 FC            [12] 3471 	add	a,#0xfc
      003AB9 F5 81            [12] 3472 	mov	sp,a
                                   3473 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      003ABB 7F 64            [12] 3474 	mov	r7,#___str_8
      003ABD 7E 6C            [12] 3475 	mov	r6,#(___str_8 >> 8)
      003ABF 7D 80            [12] 3476 	mov	r5,#0x80
                                   3477 ;	calc.c:50: return;
      003AC1                       3478 00330$:
                                   3479 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003AC1 8F 82            [24] 3480 	mov	dpl,r7
      003AC3 8E 83            [24] 3481 	mov	dph,r6
      003AC5 8D F0            [24] 3482 	mov	b,r5
      003AC7 12 53 AB         [24] 3483 	lcall	__gptrget
      003ACA FC               [12] 3484 	mov	r4,a
      003ACB 70 03            [24] 3485 	jnz	00929$
      003ACD 02 43 4A         [24] 3486 	ljmp	00196$
      003AD0                       3487 00929$:
      003AD0 7B 00            [12] 3488 	mov	r3,#0x00
      003AD2 8C 82            [24] 3489 	mov	dpl,r4
      003AD4 8B 83            [24] 3490 	mov	dph,r3
      003AD6 12 29 C0         [24] 3491 	lcall	_putchar
      003AD9 0F               [12] 3492 	inc	r7
                                   3493 ;	calc.c:216: printstr("\r\nstack underflow\r\n");
      003ADA BF 00 E4         [24] 3494 	cjne	r7,#0x00,00330$
      003ADD 0E               [12] 3495 	inc	r6
      003ADE 80 E1            [24] 3496 	sjmp	00330$
      003AE0                       3497 00151$:
                                   3498 ;	calc.c:217: } else if (!d0) {
      003AE0 E5 08            [12] 3499 	mov	a,_bp
      003AE2 24 0F            [12] 3500 	add	a,#0x0f
      003AE4 F8               [12] 3501 	mov	r0,a
      003AE5 E6               [12] 3502 	mov	a,@r0
      003AE6 08               [12] 3503 	inc	r0
      003AE7 46               [12] 3504 	orl	a,@r0
      003AE8 08               [12] 3505 	inc	r0
      003AE9 46               [12] 3506 	orl	a,@r0
      003AEA 08               [12] 3507 	inc	r0
      003AEB 46               [12] 3508 	orl	a,@r0
      003AEC 60 03            [24] 3509 	jz	00931$
      003AEE 02 3B 7C         [24] 3510 	ljmp	00148$
      003AF1                       3511 00931$:
                                   3512 ;	calc.c:218: (void)stack_push(&ctx->s, d1);
      003AF1 E5 08            [12] 3513 	mov	a,_bp
      003AF3 24 0C            [12] 3514 	add	a,#0x0c
      003AF5 F8               [12] 3515 	mov	r0,a
      003AF6 74 09            [12] 3516 	mov	a,#0x09
      003AF8 26               [12] 3517 	add	a,@r0
      003AF9 FA               [12] 3518 	mov	r2,a
      003AFA E4               [12] 3519 	clr	a
      003AFB 08               [12] 3520 	inc	r0
      003AFC 36               [12] 3521 	addc	a,@r0
      003AFD FB               [12] 3522 	mov	r3,a
      003AFE 08               [12] 3523 	inc	r0
      003AFF 86 04            [24] 3524 	mov	ar4,@r0
      003B01 E5 08            [12] 3525 	mov	a,_bp
      003B03 24 13            [12] 3526 	add	a,#0x13
      003B05 F8               [12] 3527 	mov	r0,a
      003B06 E6               [12] 3528 	mov	a,@r0
      003B07 C0 E0            [24] 3529 	push	acc
      003B09 08               [12] 3530 	inc	r0
      003B0A E6               [12] 3531 	mov	a,@r0
      003B0B C0 E0            [24] 3532 	push	acc
      003B0D 08               [12] 3533 	inc	r0
      003B0E E6               [12] 3534 	mov	a,@r0
      003B0F C0 E0            [24] 3535 	push	acc
      003B11 08               [12] 3536 	inc	r0
      003B12 E6               [12] 3537 	mov	a,@r0
      003B13 C0 E0            [24] 3538 	push	acc
      003B15 8A 82            [24] 3539 	mov	dpl,r2
      003B17 8B 83            [24] 3540 	mov	dph,r3
      003B19 8C F0            [24] 3541 	mov	b,r4
      003B1B 12 26 B5         [24] 3542 	lcall	_stack_push
      003B1E E5 81            [12] 3543 	mov	a,sp
      003B20 24 FC            [12] 3544 	add	a,#0xfc
      003B22 F5 81            [12] 3545 	mov	sp,a
                                   3546 ;	calc.c:219: (void)stack_push(&ctx->s, d0);			
      003B24 E5 08            [12] 3547 	mov	a,_bp
      003B26 24 0C            [12] 3548 	add	a,#0x0c
      003B28 F8               [12] 3549 	mov	r0,a
      003B29 74 09            [12] 3550 	mov	a,#0x09
      003B2B 26               [12] 3551 	add	a,@r0
      003B2C FA               [12] 3552 	mov	r2,a
      003B2D E4               [12] 3553 	clr	a
      003B2E 08               [12] 3554 	inc	r0
      003B2F 36               [12] 3555 	addc	a,@r0
      003B30 FB               [12] 3556 	mov	r3,a
      003B31 08               [12] 3557 	inc	r0
      003B32 86 04            [24] 3558 	mov	ar4,@r0
      003B34 E5 08            [12] 3559 	mov	a,_bp
      003B36 24 0F            [12] 3560 	add	a,#0x0f
      003B38 F8               [12] 3561 	mov	r0,a
      003B39 E6               [12] 3562 	mov	a,@r0
      003B3A C0 E0            [24] 3563 	push	acc
      003B3C 08               [12] 3564 	inc	r0
      003B3D E6               [12] 3565 	mov	a,@r0
      003B3E C0 E0            [24] 3566 	push	acc
      003B40 08               [12] 3567 	inc	r0
      003B41 E6               [12] 3568 	mov	a,@r0
      003B42 C0 E0            [24] 3569 	push	acc
      003B44 08               [12] 3570 	inc	r0
      003B45 E6               [12] 3571 	mov	a,@r0
      003B46 C0 E0            [24] 3572 	push	acc
      003B48 8A 82            [24] 3573 	mov	dpl,r2
      003B4A 8B 83            [24] 3574 	mov	dph,r3
      003B4C 8C F0            [24] 3575 	mov	b,r4
      003B4E 12 26 B5         [24] 3576 	lcall	_stack_push
      003B51 E5 81            [12] 3577 	mov	a,sp
      003B53 24 FC            [12] 3578 	add	a,#0xfc
      003B55 F5 81            [12] 3579 	mov	sp,a
                                   3580 ;	calc.c:220: printstr("\r\ndivision by zero\r\n");
      003B57 7F 78            [12] 3581 	mov	r7,#___str_9
      003B59 7E 6C            [12] 3582 	mov	r6,#(___str_9 >> 8)
      003B5B 7D 80            [12] 3583 	mov	r5,#0x80
                                   3584 ;	calc.c:50: return;
      003B5D                       3585 00333$:
                                   3586 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003B5D 8F 82            [24] 3587 	mov	dpl,r7
      003B5F 8E 83            [24] 3588 	mov	dph,r6
      003B61 8D F0            [24] 3589 	mov	b,r5
      003B63 12 53 AB         [24] 3590 	lcall	__gptrget
      003B66 FC               [12] 3591 	mov	r4,a
      003B67 70 03            [24] 3592 	jnz	00932$
      003B69 02 43 4A         [24] 3593 	ljmp	00196$
      003B6C                       3594 00932$:
      003B6C 7B 00            [12] 3595 	mov	r3,#0x00
      003B6E 8C 82            [24] 3596 	mov	dpl,r4
      003B70 8B 83            [24] 3597 	mov	dph,r3
      003B72 12 29 C0         [24] 3598 	lcall	_putchar
      003B75 0F               [12] 3599 	inc	r7
                                   3600 ;	calc.c:220: printstr("\r\ndivision by zero\r\n");
      003B76 BF 00 E4         [24] 3601 	cjne	r7,#0x00,00333$
      003B79 0E               [12] 3602 	inc	r6
      003B7A 80 E1            [24] 3603 	sjmp	00333$
      003B7C                       3604 00148$:
                                   3605 ;	calc.c:222: if (ctx->digit[0] == '/') d1 /= d0;
      003B7C 8D 82            [24] 3606 	mov	dpl,r5
      003B7E 8E 83            [24] 3607 	mov	dph,r6
      003B80 8F F0            [24] 3608 	mov	b,r7
      003B82 12 53 AB         [24] 3609 	lcall	__gptrget
      003B85 FC               [12] 3610 	mov	r4,a
      003B86 BC 2F 45         [24] 3611 	cjne	r4,#0x2f,00145$
      003B89 E5 08            [12] 3612 	mov	a,_bp
      003B8B 24 0F            [12] 3613 	add	a,#0x0f
      003B8D F8               [12] 3614 	mov	r0,a
      003B8E E6               [12] 3615 	mov	a,@r0
      003B8F C0 E0            [24] 3616 	push	acc
      003B91 08               [12] 3617 	inc	r0
      003B92 E6               [12] 3618 	mov	a,@r0
      003B93 C0 E0            [24] 3619 	push	acc
      003B95 08               [12] 3620 	inc	r0
      003B96 E6               [12] 3621 	mov	a,@r0
      003B97 C0 E0            [24] 3622 	push	acc
      003B99 08               [12] 3623 	inc	r0
      003B9A E6               [12] 3624 	mov	a,@r0
      003B9B C0 E0            [24] 3625 	push	acc
      003B9D E5 08            [12] 3626 	mov	a,_bp
      003B9F 24 13            [12] 3627 	add	a,#0x13
      003BA1 F8               [12] 3628 	mov	r0,a
      003BA2 86 82            [24] 3629 	mov	dpl,@r0
      003BA4 08               [12] 3630 	inc	r0
      003BA5 86 83            [24] 3631 	mov	dph,@r0
      003BA7 08               [12] 3632 	inc	r0
      003BA8 86 F0            [24] 3633 	mov	b,@r0
      003BAA 08               [12] 3634 	inc	r0
      003BAB E6               [12] 3635 	mov	a,@r0
      003BAC 12 51 A2         [24] 3636 	lcall	__divslong
      003BAF AF 82            [24] 3637 	mov	r7,dpl
      003BB1 AE 83            [24] 3638 	mov	r6,dph
      003BB3 AD F0            [24] 3639 	mov	r5,b
      003BB5 FC               [12] 3640 	mov	r4,a
      003BB6 E5 81            [12] 3641 	mov	a,sp
      003BB8 24 FC            [12] 3642 	add	a,#0xfc
      003BBA F5 81            [12] 3643 	mov	sp,a
      003BBC E5 08            [12] 3644 	mov	a,_bp
      003BBE 24 13            [12] 3645 	add	a,#0x13
      003BC0 F8               [12] 3646 	mov	r0,a
      003BC1 A6 07            [24] 3647 	mov	@r0,ar7
      003BC3 08               [12] 3648 	inc	r0
      003BC4 A6 06            [24] 3649 	mov	@r0,ar6
      003BC6 08               [12] 3650 	inc	r0
      003BC7 A6 05            [24] 3651 	mov	@r0,ar5
      003BC9 08               [12] 3652 	inc	r0
      003BCA A6 04            [24] 3653 	mov	@r0,ar4
      003BCC 80 63            [24] 3654 	sjmp	00146$
      003BCE                       3655 00145$:
                                   3656 ;	calc.c:223: else d1 = (unsigned long)d1 / (unsigned long)d0;
      003BCE E5 08            [12] 3657 	mov	a,_bp
      003BD0 24 13            [12] 3658 	add	a,#0x13
      003BD2 F8               [12] 3659 	mov	r0,a
      003BD3 86 07            [24] 3660 	mov	ar7,@r0
      003BD5 08               [12] 3661 	inc	r0
      003BD6 86 06            [24] 3662 	mov	ar6,@r0
      003BD8 08               [12] 3663 	inc	r0
      003BD9 86 05            [24] 3664 	mov	ar5,@r0
      003BDB 08               [12] 3665 	inc	r0
      003BDC 86 04            [24] 3666 	mov	ar4,@r0
      003BDE E5 08            [12] 3667 	mov	a,_bp
      003BE0 24 0F            [12] 3668 	add	a,#0x0f
      003BE2 F8               [12] 3669 	mov	r0,a
      003BE3 E5 08            [12] 3670 	mov	a,_bp
      003BE5 24 08            [12] 3671 	add	a,#0x08
      003BE7 F9               [12] 3672 	mov	r1,a
      003BE8 E6               [12] 3673 	mov	a,@r0
      003BE9 F7               [12] 3674 	mov	@r1,a
      003BEA 08               [12] 3675 	inc	r0
      003BEB 09               [12] 3676 	inc	r1
      003BEC E6               [12] 3677 	mov	a,@r0
      003BED F7               [12] 3678 	mov	@r1,a
      003BEE 08               [12] 3679 	inc	r0
      003BEF 09               [12] 3680 	inc	r1
      003BF0 E6               [12] 3681 	mov	a,@r0
      003BF1 F7               [12] 3682 	mov	@r1,a
      003BF2 08               [12] 3683 	inc	r0
      003BF3 09               [12] 3684 	inc	r1
      003BF4 E6               [12] 3685 	mov	a,@r0
      003BF5 F7               [12] 3686 	mov	@r1,a
      003BF6 E5 08            [12] 3687 	mov	a,_bp
      003BF8 24 08            [12] 3688 	add	a,#0x08
      003BFA F8               [12] 3689 	mov	r0,a
      003BFB E6               [12] 3690 	mov	a,@r0
      003BFC C0 E0            [24] 3691 	push	acc
      003BFE 08               [12] 3692 	inc	r0
      003BFF E6               [12] 3693 	mov	a,@r0
      003C00 C0 E0            [24] 3694 	push	acc
      003C02 08               [12] 3695 	inc	r0
      003C03 E6               [12] 3696 	mov	a,@r0
      003C04 C0 E0            [24] 3697 	push	acc
      003C06 08               [12] 3698 	inc	r0
      003C07 E6               [12] 3699 	mov	a,@r0
      003C08 C0 E0            [24] 3700 	push	acc
      003C0A 8F 82            [24] 3701 	mov	dpl,r7
      003C0C 8E 83            [24] 3702 	mov	dph,r6
      003C0E 8D F0            [24] 3703 	mov	b,r5
      003C10 EC               [12] 3704 	mov	a,r4
      003C11 12 52 9F         [24] 3705 	lcall	__divulong
      003C14 AF 82            [24] 3706 	mov	r7,dpl
      003C16 AE 83            [24] 3707 	mov	r6,dph
      003C18 AD F0            [24] 3708 	mov	r5,b
      003C1A FC               [12] 3709 	mov	r4,a
      003C1B E5 81            [12] 3710 	mov	a,sp
      003C1D 24 FC            [12] 3711 	add	a,#0xfc
      003C1F F5 81            [12] 3712 	mov	sp,a
      003C21 E5 08            [12] 3713 	mov	a,_bp
      003C23 24 13            [12] 3714 	add	a,#0x13
      003C25 F8               [12] 3715 	mov	r0,a
      003C26 A6 07            [24] 3716 	mov	@r0,ar7
      003C28 08               [12] 3717 	inc	r0
      003C29 A6 06            [24] 3718 	mov	@r0,ar6
      003C2B 08               [12] 3719 	inc	r0
      003C2C A6 05            [24] 3720 	mov	@r0,ar5
      003C2E 08               [12] 3721 	inc	r0
      003C2F A6 04            [24] 3722 	mov	@r0,ar4
      003C31                       3723 00146$:
                                   3724 ;	calc.c:224: (void)stack_push(&ctx->s, d1);
      003C31 E5 08            [12] 3725 	mov	a,_bp
      003C33 24 0C            [12] 3726 	add	a,#0x0c
      003C35 F8               [12] 3727 	mov	r0,a
      003C36 74 09            [12] 3728 	mov	a,#0x09
      003C38 26               [12] 3729 	add	a,@r0
      003C39 FA               [12] 3730 	mov	r2,a
      003C3A E4               [12] 3731 	clr	a
      003C3B 08               [12] 3732 	inc	r0
      003C3C 36               [12] 3733 	addc	a,@r0
      003C3D FB               [12] 3734 	mov	r3,a
      003C3E 08               [12] 3735 	inc	r0
      003C3F 86 04            [24] 3736 	mov	ar4,@r0
      003C41 E5 08            [12] 3737 	mov	a,_bp
      003C43 24 13            [12] 3738 	add	a,#0x13
      003C45 F8               [12] 3739 	mov	r0,a
      003C46 E6               [12] 3740 	mov	a,@r0
      003C47 C0 E0            [24] 3741 	push	acc
      003C49 08               [12] 3742 	inc	r0
      003C4A E6               [12] 3743 	mov	a,@r0
      003C4B C0 E0            [24] 3744 	push	acc
      003C4D 08               [12] 3745 	inc	r0
      003C4E E6               [12] 3746 	mov	a,@r0
      003C4F C0 E0            [24] 3747 	push	acc
      003C51 08               [12] 3748 	inc	r0
      003C52 E6               [12] 3749 	mov	a,@r0
      003C53 C0 E0            [24] 3750 	push	acc
      003C55 8A 82            [24] 3751 	mov	dpl,r2
      003C57 8B 83            [24] 3752 	mov	dph,r3
      003C59 8C F0            [24] 3753 	mov	b,r4
      003C5B 12 26 B5         [24] 3754 	lcall	_stack_push
      003C5E E5 81            [12] 3755 	mov	a,sp
      003C60 24 FC            [12] 3756 	add	a,#0xfc
      003C62 F5 81            [12] 3757 	mov	sp,a
                                   3758 ;	calc.c:226: break;
      003C64 02 43 4A         [24] 3759 	ljmp	00196$
                                   3760 ;	calc.c:228: case '#':
      003C67                       3761 00157$:
                                   3762 ;	calc.c:229: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003C67 C0 05            [24] 3763 	push	ar5
      003C69 C0 06            [24] 3764 	push	ar6
      003C6B C0 07            [24] 3765 	push	ar7
      003C6D E5 08            [12] 3766 	mov	a,_bp
      003C6F 24 0F            [12] 3767 	add	a,#0x0f
      003C71 FC               [12] 3768 	mov	r4,a
      003C72 7B 00            [12] 3769 	mov	r3,#0x00
      003C74 7A 40            [12] 3770 	mov	r2,#0x40
      003C76 E5 08            [12] 3771 	mov	a,_bp
      003C78 24 0C            [12] 3772 	add	a,#0x0c
      003C7A F8               [12] 3773 	mov	r0,a
      003C7B 74 09            [12] 3774 	mov	a,#0x09
      003C7D 26               [12] 3775 	add	a,@r0
      003C7E FD               [12] 3776 	mov	r5,a
      003C7F E4               [12] 3777 	clr	a
      003C80 08               [12] 3778 	inc	r0
      003C81 36               [12] 3779 	addc	a,@r0
      003C82 FE               [12] 3780 	mov	r6,a
      003C83 08               [12] 3781 	inc	r0
      003C84 86 07            [24] 3782 	mov	ar7,@r0
      003C86 C0 05            [24] 3783 	push	ar5
      003C88 C0 04            [24] 3784 	push	ar4
      003C8A C0 03            [24] 3785 	push	ar3
      003C8C C0 02            [24] 3786 	push	ar2
      003C8E 8D 82            [24] 3787 	mov	dpl,r5
      003C90 8E 83            [24] 3788 	mov	dph,r6
      003C92 8F F0            [24] 3789 	mov	b,r7
      003C94 12 27 7F         [24] 3790 	lcall	_stack_pop
      003C97 AE 82            [24] 3791 	mov	r6,dpl
      003C99 AF 83            [24] 3792 	mov	r7,dph
      003C9B 15 81            [12] 3793 	dec	sp
      003C9D 15 81            [12] 3794 	dec	sp
      003C9F 15 81            [12] 3795 	dec	sp
      003CA1 D0 05            [24] 3796 	pop	ar5
      003CA3 EE               [12] 3797 	mov	a,r6
      003CA4 4F               [12] 3798 	orl	a,r7
      003CA5 D0 07            [24] 3799 	pop	ar7
      003CA7 D0 06            [24] 3800 	pop	ar6
      003CA9 D0 05            [24] 3801 	pop	ar5
      003CAB 70 25            [24] 3802 	jnz	00168$
      003CAD 7F 64            [12] 3803 	mov	r7,#___str_8
      003CAF 7E 6C            [12] 3804 	mov	r6,#(___str_8 >> 8)
      003CB1 7D 80            [12] 3805 	mov	r5,#0x80
                                   3806 ;	calc.c:50: return;
      003CB3                       3807 00336$:
                                   3808 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003CB3 8F 82            [24] 3809 	mov	dpl,r7
      003CB5 8E 83            [24] 3810 	mov	dph,r6
      003CB7 8D F0            [24] 3811 	mov	b,r5
      003CB9 12 53 AB         [24] 3812 	lcall	__gptrget
      003CBC FC               [12] 3813 	mov	r4,a
      003CBD 70 03            [24] 3814 	jnz	00937$
      003CBF 02 43 4A         [24] 3815 	ljmp	00196$
      003CC2                       3816 00937$:
      003CC2 7B 00            [12] 3817 	mov	r3,#0x00
      003CC4 8C 82            [24] 3818 	mov	dpl,r4
      003CC6 8B 83            [24] 3819 	mov	dph,r3
      003CC8 12 29 C0         [24] 3820 	lcall	_putchar
      003CCB 0F               [12] 3821 	inc	r7
                                   3822 ;	calc.c:229: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003CCC BF 00 E4         [24] 3823 	cjne	r7,#0x00,00336$
      003CCF 0E               [12] 3824 	inc	r6
      003CD0 80 E1            [24] 3825 	sjmp	00336$
      003CD2                       3826 00168$:
                                   3827 ;	calc.c:230: else if (!stack_pop(&ctx->s, &d1)) {
      003CD2 C0 05            [24] 3828 	push	ar5
      003CD4 C0 06            [24] 3829 	push	ar6
      003CD6 C0 07            [24] 3830 	push	ar7
      003CD8 E5 08            [12] 3831 	mov	a,_bp
      003CDA 24 13            [12] 3832 	add	a,#0x13
      003CDC FC               [12] 3833 	mov	r4,a
      003CDD 7B 00            [12] 3834 	mov	r3,#0x00
      003CDF 7A 40            [12] 3835 	mov	r2,#0x40
      003CE1 E5 08            [12] 3836 	mov	a,_bp
      003CE3 24 0C            [12] 3837 	add	a,#0x0c
      003CE5 F8               [12] 3838 	mov	r0,a
      003CE6 74 09            [12] 3839 	mov	a,#0x09
      003CE8 26               [12] 3840 	add	a,@r0
      003CE9 FD               [12] 3841 	mov	r5,a
      003CEA E4               [12] 3842 	clr	a
      003CEB 08               [12] 3843 	inc	r0
      003CEC 36               [12] 3844 	addc	a,@r0
      003CED FE               [12] 3845 	mov	r6,a
      003CEE 08               [12] 3846 	inc	r0
      003CEF 86 07            [24] 3847 	mov	ar7,@r0
      003CF1 C0 05            [24] 3848 	push	ar5
      003CF3 C0 04            [24] 3849 	push	ar4
      003CF5 C0 03            [24] 3850 	push	ar3
      003CF7 C0 02            [24] 3851 	push	ar2
      003CF9 8D 82            [24] 3852 	mov	dpl,r5
      003CFB 8E 83            [24] 3853 	mov	dph,r6
      003CFD 8F F0            [24] 3854 	mov	b,r7
      003CFF 12 27 7F         [24] 3855 	lcall	_stack_pop
      003D02 AE 82            [24] 3856 	mov	r6,dpl
      003D04 AF 83            [24] 3857 	mov	r7,dph
      003D06 15 81            [12] 3858 	dec	sp
      003D08 15 81            [12] 3859 	dec	sp
      003D0A 15 81            [12] 3860 	dec	sp
      003D0C D0 05            [24] 3861 	pop	ar5
      003D0E EE               [12] 3862 	mov	a,r6
      003D0F 4F               [12] 3863 	orl	a,r7
      003D10 D0 07            [24] 3864 	pop	ar7
      003D12 D0 06            [24] 3865 	pop	ar6
      003D14 D0 05            [24] 3866 	pop	ar5
      003D16 70 58            [24] 3867 	jnz	00165$
                                   3868 ;	calc.c:231: (void)stack_push(&ctx->s, d0);
      003D18 E5 08            [12] 3869 	mov	a,_bp
      003D1A 24 0C            [12] 3870 	add	a,#0x0c
      003D1C F8               [12] 3871 	mov	r0,a
      003D1D 74 09            [12] 3872 	mov	a,#0x09
      003D1F 26               [12] 3873 	add	a,@r0
      003D20 FA               [12] 3874 	mov	r2,a
      003D21 E4               [12] 3875 	clr	a
      003D22 08               [12] 3876 	inc	r0
      003D23 36               [12] 3877 	addc	a,@r0
      003D24 FB               [12] 3878 	mov	r3,a
      003D25 08               [12] 3879 	inc	r0
      003D26 86 04            [24] 3880 	mov	ar4,@r0
      003D28 E5 08            [12] 3881 	mov	a,_bp
      003D2A 24 0F            [12] 3882 	add	a,#0x0f
      003D2C F8               [12] 3883 	mov	r0,a
      003D2D E6               [12] 3884 	mov	a,@r0
      003D2E C0 E0            [24] 3885 	push	acc
      003D30 08               [12] 3886 	inc	r0
      003D31 E6               [12] 3887 	mov	a,@r0
      003D32 C0 E0            [24] 3888 	push	acc
      003D34 08               [12] 3889 	inc	r0
      003D35 E6               [12] 3890 	mov	a,@r0
      003D36 C0 E0            [24] 3891 	push	acc
      003D38 08               [12] 3892 	inc	r0
      003D39 E6               [12] 3893 	mov	a,@r0
      003D3A C0 E0            [24] 3894 	push	acc
      003D3C 8A 82            [24] 3895 	mov	dpl,r2
      003D3E 8B 83            [24] 3896 	mov	dph,r3
      003D40 8C F0            [24] 3897 	mov	b,r4
      003D42 12 26 B5         [24] 3898 	lcall	_stack_push
      003D45 E5 81            [12] 3899 	mov	a,sp
      003D47 24 FC            [12] 3900 	add	a,#0xfc
      003D49 F5 81            [12] 3901 	mov	sp,a
                                   3902 ;	calc.c:232: printstr("\r\nstack underflow\r\n");
      003D4B 7F 64            [12] 3903 	mov	r7,#___str_8
      003D4D 7E 6C            [12] 3904 	mov	r6,#(___str_8 >> 8)
      003D4F 7D 80            [12] 3905 	mov	r5,#0x80
                                   3906 ;	calc.c:50: return;
      003D51                       3907 00339$:
                                   3908 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003D51 8F 82            [24] 3909 	mov	dpl,r7
      003D53 8E 83            [24] 3910 	mov	dph,r6
      003D55 8D F0            [24] 3911 	mov	b,r5
      003D57 12 53 AB         [24] 3912 	lcall	__gptrget
      003D5A FC               [12] 3913 	mov	r4,a
      003D5B 70 03            [24] 3914 	jnz	00940$
      003D5D 02 43 4A         [24] 3915 	ljmp	00196$
      003D60                       3916 00940$:
      003D60 7B 00            [12] 3917 	mov	r3,#0x00
      003D62 8C 82            [24] 3918 	mov	dpl,r4
      003D64 8B 83            [24] 3919 	mov	dph,r3
      003D66 12 29 C0         [24] 3920 	lcall	_putchar
      003D69 0F               [12] 3921 	inc	r7
                                   3922 ;	calc.c:232: printstr("\r\nstack underflow\r\n");
      003D6A BF 00 E4         [24] 3923 	cjne	r7,#0x00,00339$
      003D6D 0E               [12] 3924 	inc	r6
      003D6E 80 E1            [24] 3925 	sjmp	00339$
      003D70                       3926 00165$:
                                   3927 ;	calc.c:233: } else if (!d0) {
      003D70 E5 08            [12] 3928 	mov	a,_bp
      003D72 24 0F            [12] 3929 	add	a,#0x0f
      003D74 F8               [12] 3930 	mov	r0,a
      003D75 E6               [12] 3931 	mov	a,@r0
      003D76 08               [12] 3932 	inc	r0
      003D77 46               [12] 3933 	orl	a,@r0
      003D78 08               [12] 3934 	inc	r0
      003D79 46               [12] 3935 	orl	a,@r0
      003D7A 08               [12] 3936 	inc	r0
      003D7B 46               [12] 3937 	orl	a,@r0
      003D7C 60 03            [24] 3938 	jz	00942$
      003D7E 02 3E 0C         [24] 3939 	ljmp	00162$
      003D81                       3940 00942$:
                                   3941 ;	calc.c:234: (void)stack_push(&ctx->s, d1);
      003D81 E5 08            [12] 3942 	mov	a,_bp
      003D83 24 0C            [12] 3943 	add	a,#0x0c
      003D85 F8               [12] 3944 	mov	r0,a
      003D86 74 09            [12] 3945 	mov	a,#0x09
      003D88 26               [12] 3946 	add	a,@r0
      003D89 FA               [12] 3947 	mov	r2,a
      003D8A E4               [12] 3948 	clr	a
      003D8B 08               [12] 3949 	inc	r0
      003D8C 36               [12] 3950 	addc	a,@r0
      003D8D FB               [12] 3951 	mov	r3,a
      003D8E 08               [12] 3952 	inc	r0
      003D8F 86 04            [24] 3953 	mov	ar4,@r0
      003D91 E5 08            [12] 3954 	mov	a,_bp
      003D93 24 13            [12] 3955 	add	a,#0x13
      003D95 F8               [12] 3956 	mov	r0,a
      003D96 E6               [12] 3957 	mov	a,@r0
      003D97 C0 E0            [24] 3958 	push	acc
      003D99 08               [12] 3959 	inc	r0
      003D9A E6               [12] 3960 	mov	a,@r0
      003D9B C0 E0            [24] 3961 	push	acc
      003D9D 08               [12] 3962 	inc	r0
      003D9E E6               [12] 3963 	mov	a,@r0
      003D9F C0 E0            [24] 3964 	push	acc
      003DA1 08               [12] 3965 	inc	r0
      003DA2 E6               [12] 3966 	mov	a,@r0
      003DA3 C0 E0            [24] 3967 	push	acc
      003DA5 8A 82            [24] 3968 	mov	dpl,r2
      003DA7 8B 83            [24] 3969 	mov	dph,r3
      003DA9 8C F0            [24] 3970 	mov	b,r4
      003DAB 12 26 B5         [24] 3971 	lcall	_stack_push
      003DAE E5 81            [12] 3972 	mov	a,sp
      003DB0 24 FC            [12] 3973 	add	a,#0xfc
      003DB2 F5 81            [12] 3974 	mov	sp,a
                                   3975 ;	calc.c:235: (void)stack_push(&ctx->s, d0);			
      003DB4 E5 08            [12] 3976 	mov	a,_bp
      003DB6 24 0C            [12] 3977 	add	a,#0x0c
      003DB8 F8               [12] 3978 	mov	r0,a
      003DB9 74 09            [12] 3979 	mov	a,#0x09
      003DBB 26               [12] 3980 	add	a,@r0
      003DBC FA               [12] 3981 	mov	r2,a
      003DBD E4               [12] 3982 	clr	a
      003DBE 08               [12] 3983 	inc	r0
      003DBF 36               [12] 3984 	addc	a,@r0
      003DC0 FB               [12] 3985 	mov	r3,a
      003DC1 08               [12] 3986 	inc	r0
      003DC2 86 04            [24] 3987 	mov	ar4,@r0
      003DC4 E5 08            [12] 3988 	mov	a,_bp
      003DC6 24 0F            [12] 3989 	add	a,#0x0f
      003DC8 F8               [12] 3990 	mov	r0,a
      003DC9 E6               [12] 3991 	mov	a,@r0
      003DCA C0 E0            [24] 3992 	push	acc
      003DCC 08               [12] 3993 	inc	r0
      003DCD E6               [12] 3994 	mov	a,@r0
      003DCE C0 E0            [24] 3995 	push	acc
      003DD0 08               [12] 3996 	inc	r0
      003DD1 E6               [12] 3997 	mov	a,@r0
      003DD2 C0 E0            [24] 3998 	push	acc
      003DD4 08               [12] 3999 	inc	r0
      003DD5 E6               [12] 4000 	mov	a,@r0
      003DD6 C0 E0            [24] 4001 	push	acc
      003DD8 8A 82            [24] 4002 	mov	dpl,r2
      003DDA 8B 83            [24] 4003 	mov	dph,r3
      003DDC 8C F0            [24] 4004 	mov	b,r4
      003DDE 12 26 B5         [24] 4005 	lcall	_stack_push
      003DE1 E5 81            [12] 4006 	mov	a,sp
      003DE3 24 FC            [12] 4007 	add	a,#0xfc
      003DE5 F5 81            [12] 4008 	mov	sp,a
                                   4009 ;	calc.c:236: printstr("\r\ndivision by zero\r\n");
      003DE7 7F 78            [12] 4010 	mov	r7,#___str_9
      003DE9 7E 6C            [12] 4011 	mov	r6,#(___str_9 >> 8)
      003DEB 7D 80            [12] 4012 	mov	r5,#0x80
                                   4013 ;	calc.c:50: return;
      003DED                       4014 00342$:
                                   4015 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003DED 8F 82            [24] 4016 	mov	dpl,r7
      003DEF 8E 83            [24] 4017 	mov	dph,r6
      003DF1 8D F0            [24] 4018 	mov	b,r5
      003DF3 12 53 AB         [24] 4019 	lcall	__gptrget
      003DF6 FC               [12] 4020 	mov	r4,a
      003DF7 70 03            [24] 4021 	jnz	00943$
      003DF9 02 43 4A         [24] 4022 	ljmp	00196$
      003DFC                       4023 00943$:
      003DFC 7B 00            [12] 4024 	mov	r3,#0x00
      003DFE 8C 82            [24] 4025 	mov	dpl,r4
      003E00 8B 83            [24] 4026 	mov	dph,r3
      003E02 12 29 C0         [24] 4027 	lcall	_putchar
      003E05 0F               [12] 4028 	inc	r7
                                   4029 ;	calc.c:236: printstr("\r\ndivision by zero\r\n");
      003E06 BF 00 E4         [24] 4030 	cjne	r7,#0x00,00342$
      003E09 0E               [12] 4031 	inc	r6
      003E0A 80 E1            [24] 4032 	sjmp	00342$
      003E0C                       4033 00162$:
                                   4034 ;	calc.c:238: if (ctx->digit[0] == '%') d1 %= d0;
      003E0C 8D 82            [24] 4035 	mov	dpl,r5
      003E0E 8E 83            [24] 4036 	mov	dph,r6
      003E10 8F F0            [24] 4037 	mov	b,r7
      003E12 12 53 AB         [24] 4038 	lcall	__gptrget
      003E15 FD               [12] 4039 	mov	r5,a
      003E16 BD 25 45         [24] 4040 	cjne	r5,#0x25,00159$
      003E19 E5 08            [12] 4041 	mov	a,_bp
      003E1B 24 0F            [12] 4042 	add	a,#0x0f
      003E1D F8               [12] 4043 	mov	r0,a
      003E1E E6               [12] 4044 	mov	a,@r0
      003E1F C0 E0            [24] 4045 	push	acc
      003E21 08               [12] 4046 	inc	r0
      003E22 E6               [12] 4047 	mov	a,@r0
      003E23 C0 E0            [24] 4048 	push	acc
      003E25 08               [12] 4049 	inc	r0
      003E26 E6               [12] 4050 	mov	a,@r0
      003E27 C0 E0            [24] 4051 	push	acc
      003E29 08               [12] 4052 	inc	r0
      003E2A E6               [12] 4053 	mov	a,@r0
      003E2B C0 E0            [24] 4054 	push	acc
      003E2D E5 08            [12] 4055 	mov	a,_bp
      003E2F 24 13            [12] 4056 	add	a,#0x13
      003E31 F8               [12] 4057 	mov	r0,a
      003E32 86 82            [24] 4058 	mov	dpl,@r0
      003E34 08               [12] 4059 	inc	r0
      003E35 86 83            [24] 4060 	mov	dph,@r0
      003E37 08               [12] 4061 	inc	r0
      003E38 86 F0            [24] 4062 	mov	b,@r0
      003E3A 08               [12] 4063 	inc	r0
      003E3B E6               [12] 4064 	mov	a,@r0
      003E3C 12 4F E9         [24] 4065 	lcall	__modslong
      003E3F AC 82            [24] 4066 	mov	r4,dpl
      003E41 AD 83            [24] 4067 	mov	r5,dph
      003E43 AE F0            [24] 4068 	mov	r6,b
      003E45 FF               [12] 4069 	mov	r7,a
      003E46 E5 81            [12] 4070 	mov	a,sp
      003E48 24 FC            [12] 4071 	add	a,#0xfc
      003E4A F5 81            [12] 4072 	mov	sp,a
      003E4C E5 08            [12] 4073 	mov	a,_bp
      003E4E 24 13            [12] 4074 	add	a,#0x13
      003E50 F8               [12] 4075 	mov	r0,a
      003E51 A6 04            [24] 4076 	mov	@r0,ar4
      003E53 08               [12] 4077 	inc	r0
      003E54 A6 05            [24] 4078 	mov	@r0,ar5
      003E56 08               [12] 4079 	inc	r0
      003E57 A6 06            [24] 4080 	mov	@r0,ar6
      003E59 08               [12] 4081 	inc	r0
      003E5A A6 07            [24] 4082 	mov	@r0,ar7
      003E5C 80 5F            [24] 4083 	sjmp	00160$
      003E5E                       4084 00159$:
                                   4085 ;	calc.c:239: else d1 = (unsigned long)d1 % (unsigned long)d0;
      003E5E E5 08            [12] 4086 	mov	a,_bp
      003E60 24 13            [12] 4087 	add	a,#0x13
      003E62 F8               [12] 4088 	mov	r0,a
      003E63 E5 08            [12] 4089 	mov	a,_bp
      003E65 24 08            [12] 4090 	add	a,#0x08
      003E67 F9               [12] 4091 	mov	r1,a
      003E68 E6               [12] 4092 	mov	a,@r0
      003E69 F7               [12] 4093 	mov	@r1,a
      003E6A 08               [12] 4094 	inc	r0
      003E6B 09               [12] 4095 	inc	r1
      003E6C E6               [12] 4096 	mov	a,@r0
      003E6D F7               [12] 4097 	mov	@r1,a
      003E6E 08               [12] 4098 	inc	r0
      003E6F 09               [12] 4099 	inc	r1
      003E70 E6               [12] 4100 	mov	a,@r0
      003E71 F7               [12] 4101 	mov	@r1,a
      003E72 08               [12] 4102 	inc	r0
      003E73 09               [12] 4103 	inc	r1
      003E74 E6               [12] 4104 	mov	a,@r0
      003E75 F7               [12] 4105 	mov	@r1,a
      003E76 E5 08            [12] 4106 	mov	a,_bp
      003E78 24 0F            [12] 4107 	add	a,#0x0f
      003E7A F8               [12] 4108 	mov	r0,a
      003E7B 86 02            [24] 4109 	mov	ar2,@r0
      003E7D 08               [12] 4110 	inc	r0
      003E7E 86 03            [24] 4111 	mov	ar3,@r0
      003E80 08               [12] 4112 	inc	r0
      003E81 86 06            [24] 4113 	mov	ar6,@r0
      003E83 08               [12] 4114 	inc	r0
      003E84 86 07            [24] 4115 	mov	ar7,@r0
      003E86 C0 02            [24] 4116 	push	ar2
      003E88 C0 03            [24] 4117 	push	ar3
      003E8A C0 06            [24] 4118 	push	ar6
      003E8C C0 07            [24] 4119 	push	ar7
      003E8E E5 08            [12] 4120 	mov	a,_bp
      003E90 24 08            [12] 4121 	add	a,#0x08
      003E92 F8               [12] 4122 	mov	r0,a
      003E93 86 82            [24] 4123 	mov	dpl,@r0
      003E95 08               [12] 4124 	inc	r0
      003E96 86 83            [24] 4125 	mov	dph,@r0
      003E98 08               [12] 4126 	inc	r0
      003E99 86 F0            [24] 4127 	mov	b,@r0
      003E9B 08               [12] 4128 	inc	r0
      003E9C E6               [12] 4129 	mov	a,@r0
      003E9D 12 50 E0         [24] 4130 	lcall	__modulong
      003EA0 AC 82            [24] 4131 	mov	r4,dpl
      003EA2 AD 83            [24] 4132 	mov	r5,dph
      003EA4 AE F0            [24] 4133 	mov	r6,b
      003EA6 FF               [12] 4134 	mov	r7,a
      003EA7 E5 81            [12] 4135 	mov	a,sp
      003EA9 24 FC            [12] 4136 	add	a,#0xfc
      003EAB F5 81            [12] 4137 	mov	sp,a
      003EAD E5 08            [12] 4138 	mov	a,_bp
      003EAF 24 13            [12] 4139 	add	a,#0x13
      003EB1 F8               [12] 4140 	mov	r0,a
      003EB2 A6 04            [24] 4141 	mov	@r0,ar4
      003EB4 08               [12] 4142 	inc	r0
      003EB5 A6 05            [24] 4143 	mov	@r0,ar5
      003EB7 08               [12] 4144 	inc	r0
      003EB8 A6 06            [24] 4145 	mov	@r0,ar6
      003EBA 08               [12] 4146 	inc	r0
      003EBB A6 07            [24] 4147 	mov	@r0,ar7
      003EBD                       4148 00160$:
                                   4149 ;	calc.c:240: (void)stack_push(&ctx->s, d1);
      003EBD E5 08            [12] 4150 	mov	a,_bp
      003EBF 24 0C            [12] 4151 	add	a,#0x0c
      003EC1 F8               [12] 4152 	mov	r0,a
      003EC2 74 09            [12] 4153 	mov	a,#0x09
      003EC4 26               [12] 4154 	add	a,@r0
      003EC5 FD               [12] 4155 	mov	r5,a
      003EC6 E4               [12] 4156 	clr	a
      003EC7 08               [12] 4157 	inc	r0
      003EC8 36               [12] 4158 	addc	a,@r0
      003EC9 FE               [12] 4159 	mov	r6,a
      003ECA 08               [12] 4160 	inc	r0
      003ECB 86 07            [24] 4161 	mov	ar7,@r0
      003ECD E5 08            [12] 4162 	mov	a,_bp
      003ECF 24 13            [12] 4163 	add	a,#0x13
      003ED1 F8               [12] 4164 	mov	r0,a
      003ED2 E6               [12] 4165 	mov	a,@r0
      003ED3 C0 E0            [24] 4166 	push	acc
      003ED5 08               [12] 4167 	inc	r0
      003ED6 E6               [12] 4168 	mov	a,@r0
      003ED7 C0 E0            [24] 4169 	push	acc
      003ED9 08               [12] 4170 	inc	r0
      003EDA E6               [12] 4171 	mov	a,@r0
      003EDB C0 E0            [24] 4172 	push	acc
      003EDD 08               [12] 4173 	inc	r0
      003EDE E6               [12] 4174 	mov	a,@r0
      003EDF C0 E0            [24] 4175 	push	acc
      003EE1 8D 82            [24] 4176 	mov	dpl,r5
      003EE3 8E 83            [24] 4177 	mov	dph,r6
      003EE5 8F F0            [24] 4178 	mov	b,r7
      003EE7 12 26 B5         [24] 4179 	lcall	_stack_push
      003EEA E5 81            [12] 4180 	mov	a,sp
      003EEC 24 FC            [12] 4181 	add	a,#0xfc
      003EEE F5 81            [12] 4182 	mov	sp,a
                                   4183 ;	calc.c:242: break;
      003EF0 02 43 4A         [24] 4184 	ljmp	00196$
                                   4185 ;	calc.c:243: case '&':
      003EF3                       4186 00170$:
                                   4187 ;	calc.c:244: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003EF3 E5 08            [12] 4188 	mov	a,_bp
      003EF5 24 0F            [12] 4189 	add	a,#0x0f
      003EF7 FF               [12] 4190 	mov	r7,a
      003EF8 7E 00            [12] 4191 	mov	r6,#0x00
      003EFA 7D 40            [12] 4192 	mov	r5,#0x40
      003EFC E5 08            [12] 4193 	mov	a,_bp
      003EFE 24 0C            [12] 4194 	add	a,#0x0c
      003F00 F8               [12] 4195 	mov	r0,a
      003F01 74 09            [12] 4196 	mov	a,#0x09
      003F03 26               [12] 4197 	add	a,@r0
      003F04 FA               [12] 4198 	mov	r2,a
      003F05 E4               [12] 4199 	clr	a
      003F06 08               [12] 4200 	inc	r0
      003F07 36               [12] 4201 	addc	a,@r0
      003F08 FB               [12] 4202 	mov	r3,a
      003F09 08               [12] 4203 	inc	r0
      003F0A 86 04            [24] 4204 	mov	ar4,@r0
      003F0C C0 07            [24] 4205 	push	ar7
      003F0E C0 06            [24] 4206 	push	ar6
      003F10 C0 05            [24] 4207 	push	ar5
      003F12 8A 82            [24] 4208 	mov	dpl,r2
      003F14 8B 83            [24] 4209 	mov	dph,r3
      003F16 8C F0            [24] 4210 	mov	b,r4
      003F18 12 27 7F         [24] 4211 	lcall	_stack_pop
      003F1B AE 82            [24] 4212 	mov	r6,dpl
      003F1D AF 83            [24] 4213 	mov	r7,dph
      003F1F 15 81            [12] 4214 	dec	sp
      003F21 15 81            [12] 4215 	dec	sp
      003F23 15 81            [12] 4216 	dec	sp
      003F25 EE               [12] 4217 	mov	a,r6
      003F26 4F               [12] 4218 	orl	a,r7
      003F27 70 25            [24] 4219 	jnz	00175$
      003F29 7D 64            [12] 4220 	mov	r5,#___str_8
      003F2B 7E 6C            [12] 4221 	mov	r6,#(___str_8 >> 8)
      003F2D 7F 80            [12] 4222 	mov	r7,#0x80
                                   4223 ;	calc.c:50: return;
      003F2F                       4224 00345$:
                                   4225 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003F2F 8D 82            [24] 4226 	mov	dpl,r5
      003F31 8E 83            [24] 4227 	mov	dph,r6
      003F33 8F F0            [24] 4228 	mov	b,r7
      003F35 12 53 AB         [24] 4229 	lcall	__gptrget
      003F38 FC               [12] 4230 	mov	r4,a
      003F39 70 03            [24] 4231 	jnz	00948$
      003F3B 02 43 4A         [24] 4232 	ljmp	00196$
      003F3E                       4233 00948$:
      003F3E 7B 00            [12] 4234 	mov	r3,#0x00
      003F40 8C 82            [24] 4235 	mov	dpl,r4
      003F42 8B 83            [24] 4236 	mov	dph,r3
      003F44 12 29 C0         [24] 4237 	lcall	_putchar
      003F47 0D               [12] 4238 	inc	r5
                                   4239 ;	calc.c:244: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      003F48 BD 00 E4         [24] 4240 	cjne	r5,#0x00,00345$
      003F4B 0E               [12] 4241 	inc	r6
      003F4C 80 E1            [24] 4242 	sjmp	00345$
      003F4E                       4243 00175$:
                                   4244 ;	calc.c:245: else if (!stack_pop(&ctx->s, &d1)) {
      003F4E E5 08            [12] 4245 	mov	a,_bp
      003F50 24 13            [12] 4246 	add	a,#0x13
      003F52 FF               [12] 4247 	mov	r7,a
      003F53 7E 00            [12] 4248 	mov	r6,#0x00
      003F55 7D 40            [12] 4249 	mov	r5,#0x40
      003F57 E5 08            [12] 4250 	mov	a,_bp
      003F59 24 0C            [12] 4251 	add	a,#0x0c
      003F5B F8               [12] 4252 	mov	r0,a
      003F5C 74 09            [12] 4253 	mov	a,#0x09
      003F5E 26               [12] 4254 	add	a,@r0
      003F5F FA               [12] 4255 	mov	r2,a
      003F60 E4               [12] 4256 	clr	a
      003F61 08               [12] 4257 	inc	r0
      003F62 36               [12] 4258 	addc	a,@r0
      003F63 FB               [12] 4259 	mov	r3,a
      003F64 08               [12] 4260 	inc	r0
      003F65 86 04            [24] 4261 	mov	ar4,@r0
      003F67 C0 07            [24] 4262 	push	ar7
      003F69 C0 06            [24] 4263 	push	ar6
      003F6B C0 05            [24] 4264 	push	ar5
      003F6D 8A 82            [24] 4265 	mov	dpl,r2
      003F6F 8B 83            [24] 4266 	mov	dph,r3
      003F71 8C F0            [24] 4267 	mov	b,r4
      003F73 12 27 7F         [24] 4268 	lcall	_stack_pop
      003F76 AE 82            [24] 4269 	mov	r6,dpl
      003F78 AF 83            [24] 4270 	mov	r7,dph
      003F7A 15 81            [12] 4271 	dec	sp
      003F7C 15 81            [12] 4272 	dec	sp
      003F7E 15 81            [12] 4273 	dec	sp
      003F80 EE               [12] 4274 	mov	a,r6
      003F81 4F               [12] 4275 	orl	a,r7
      003F82 70 58            [24] 4276 	jnz	00172$
                                   4277 ;	calc.c:246: (void)stack_push(&ctx->s, d0);
      003F84 E5 08            [12] 4278 	mov	a,_bp
      003F86 24 0C            [12] 4279 	add	a,#0x0c
      003F88 F8               [12] 4280 	mov	r0,a
      003F89 74 09            [12] 4281 	mov	a,#0x09
      003F8B 26               [12] 4282 	add	a,@r0
      003F8C FD               [12] 4283 	mov	r5,a
      003F8D E4               [12] 4284 	clr	a
      003F8E 08               [12] 4285 	inc	r0
      003F8F 36               [12] 4286 	addc	a,@r0
      003F90 FE               [12] 4287 	mov	r6,a
      003F91 08               [12] 4288 	inc	r0
      003F92 86 07            [24] 4289 	mov	ar7,@r0
      003F94 E5 08            [12] 4290 	mov	a,_bp
      003F96 24 0F            [12] 4291 	add	a,#0x0f
      003F98 F8               [12] 4292 	mov	r0,a
      003F99 E6               [12] 4293 	mov	a,@r0
      003F9A C0 E0            [24] 4294 	push	acc
      003F9C 08               [12] 4295 	inc	r0
      003F9D E6               [12] 4296 	mov	a,@r0
      003F9E C0 E0            [24] 4297 	push	acc
      003FA0 08               [12] 4298 	inc	r0
      003FA1 E6               [12] 4299 	mov	a,@r0
      003FA2 C0 E0            [24] 4300 	push	acc
      003FA4 08               [12] 4301 	inc	r0
      003FA5 E6               [12] 4302 	mov	a,@r0
      003FA6 C0 E0            [24] 4303 	push	acc
      003FA8 8D 82            [24] 4304 	mov	dpl,r5
      003FAA 8E 83            [24] 4305 	mov	dph,r6
      003FAC 8F F0            [24] 4306 	mov	b,r7
      003FAE 12 26 B5         [24] 4307 	lcall	_stack_push
      003FB1 E5 81            [12] 4308 	mov	a,sp
      003FB3 24 FC            [12] 4309 	add	a,#0xfc
      003FB5 F5 81            [12] 4310 	mov	sp,a
                                   4311 ;	calc.c:247: printstr("\r\nstack underflow\r\n");
      003FB7 7D 64            [12] 4312 	mov	r5,#___str_8
      003FB9 7E 6C            [12] 4313 	mov	r6,#(___str_8 >> 8)
      003FBB 7F 80            [12] 4314 	mov	r7,#0x80
                                   4315 ;	calc.c:50: return;
      003FBD                       4316 00348$:
                                   4317 ;	calc.c:48: for (; *s; s++) putchar(*s);
      003FBD 8D 82            [24] 4318 	mov	dpl,r5
      003FBF 8E 83            [24] 4319 	mov	dph,r6
      003FC1 8F F0            [24] 4320 	mov	b,r7
      003FC3 12 53 AB         [24] 4321 	lcall	__gptrget
      003FC6 FC               [12] 4322 	mov	r4,a
      003FC7 70 03            [24] 4323 	jnz	00951$
      003FC9 02 43 4A         [24] 4324 	ljmp	00196$
      003FCC                       4325 00951$:
      003FCC 7B 00            [12] 4326 	mov	r3,#0x00
      003FCE 8C 82            [24] 4327 	mov	dpl,r4
      003FD0 8B 83            [24] 4328 	mov	dph,r3
      003FD2 12 29 C0         [24] 4329 	lcall	_putchar
      003FD5 0D               [12] 4330 	inc	r5
                                   4331 ;	calc.c:247: printstr("\r\nstack underflow\r\n");
      003FD6 BD 00 E4         [24] 4332 	cjne	r5,#0x00,00348$
      003FD9 0E               [12] 4333 	inc	r6
      003FDA 80 E1            [24] 4334 	sjmp	00348$
      003FDC                       4335 00172$:
                                   4336 ;	calc.c:249: d1 &= d0;
      003FDC E5 08            [12] 4337 	mov	a,_bp
      003FDE 24 13            [12] 4338 	add	a,#0x13
      003FE0 F8               [12] 4339 	mov	r0,a
      003FE1 E5 08            [12] 4340 	mov	a,_bp
      003FE3 24 0F            [12] 4341 	add	a,#0x0f
      003FE5 F9               [12] 4342 	mov	r1,a
      003FE6 E7               [12] 4343 	mov	a,@r1
      003FE7 56               [12] 4344 	anl	a,@r0
      003FE8 F6               [12] 4345 	mov	@r0,a
      003FE9 09               [12] 4346 	inc	r1
      003FEA E7               [12] 4347 	mov	a,@r1
      003FEB 08               [12] 4348 	inc	r0
      003FEC 56               [12] 4349 	anl	a,@r0
      003FED F6               [12] 4350 	mov	@r0,a
      003FEE 09               [12] 4351 	inc	r1
      003FEF E7               [12] 4352 	mov	a,@r1
      003FF0 08               [12] 4353 	inc	r0
      003FF1 56               [12] 4354 	anl	a,@r0
      003FF2 F6               [12] 4355 	mov	@r0,a
      003FF3 09               [12] 4356 	inc	r1
      003FF4 E7               [12] 4357 	mov	a,@r1
      003FF5 08               [12] 4358 	inc	r0
      003FF6 56               [12] 4359 	anl	a,@r0
      003FF7 F6               [12] 4360 	mov	@r0,a
                                   4361 ;	calc.c:250: (void)stack_push(&ctx->s, d1);
      003FF8 E5 08            [12] 4362 	mov	a,_bp
      003FFA 24 0C            [12] 4363 	add	a,#0x0c
      003FFC F8               [12] 4364 	mov	r0,a
      003FFD 74 09            [12] 4365 	mov	a,#0x09
      003FFF 26               [12] 4366 	add	a,@r0
      004000 FD               [12] 4367 	mov	r5,a
      004001 E4               [12] 4368 	clr	a
      004002 08               [12] 4369 	inc	r0
      004003 36               [12] 4370 	addc	a,@r0
      004004 FE               [12] 4371 	mov	r6,a
      004005 08               [12] 4372 	inc	r0
      004006 86 07            [24] 4373 	mov	ar7,@r0
      004008 E5 08            [12] 4374 	mov	a,_bp
      00400A 24 13            [12] 4375 	add	a,#0x13
      00400C F8               [12] 4376 	mov	r0,a
      00400D E6               [12] 4377 	mov	a,@r0
      00400E C0 E0            [24] 4378 	push	acc
      004010 08               [12] 4379 	inc	r0
      004011 E6               [12] 4380 	mov	a,@r0
      004012 C0 E0            [24] 4381 	push	acc
      004014 08               [12] 4382 	inc	r0
      004015 E6               [12] 4383 	mov	a,@r0
      004016 C0 E0            [24] 4384 	push	acc
      004018 08               [12] 4385 	inc	r0
      004019 E6               [12] 4386 	mov	a,@r0
      00401A C0 E0            [24] 4387 	push	acc
      00401C 8D 82            [24] 4388 	mov	dpl,r5
      00401E 8E 83            [24] 4389 	mov	dph,r6
      004020 8F F0            [24] 4390 	mov	b,r7
      004022 12 26 B5         [24] 4391 	lcall	_stack_push
      004025 E5 81            [12] 4392 	mov	a,sp
      004027 24 FC            [12] 4393 	add	a,#0xfc
      004029 F5 81            [12] 4394 	mov	sp,a
                                   4395 ;	calc.c:252: break;
      00402B 02 43 4A         [24] 4396 	ljmp	00196$
                                   4397 ;	calc.c:253: case '|':
      00402E                       4398 00177$:
                                   4399 ;	calc.c:254: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      00402E E5 08            [12] 4400 	mov	a,_bp
      004030 24 0F            [12] 4401 	add	a,#0x0f
      004032 FF               [12] 4402 	mov	r7,a
      004033 7E 00            [12] 4403 	mov	r6,#0x00
      004035 7D 40            [12] 4404 	mov	r5,#0x40
      004037 E5 08            [12] 4405 	mov	a,_bp
      004039 24 0C            [12] 4406 	add	a,#0x0c
      00403B F8               [12] 4407 	mov	r0,a
      00403C 74 09            [12] 4408 	mov	a,#0x09
      00403E 26               [12] 4409 	add	a,@r0
      00403F FA               [12] 4410 	mov	r2,a
      004040 E4               [12] 4411 	clr	a
      004041 08               [12] 4412 	inc	r0
      004042 36               [12] 4413 	addc	a,@r0
      004043 FB               [12] 4414 	mov	r3,a
      004044 08               [12] 4415 	inc	r0
      004045 86 04            [24] 4416 	mov	ar4,@r0
      004047 C0 07            [24] 4417 	push	ar7
      004049 C0 06            [24] 4418 	push	ar6
      00404B C0 05            [24] 4419 	push	ar5
      00404D 8A 82            [24] 4420 	mov	dpl,r2
      00404F 8B 83            [24] 4421 	mov	dph,r3
      004051 8C F0            [24] 4422 	mov	b,r4
      004053 12 27 7F         [24] 4423 	lcall	_stack_pop
      004056 AE 82            [24] 4424 	mov	r6,dpl
      004058 AF 83            [24] 4425 	mov	r7,dph
      00405A 15 81            [12] 4426 	dec	sp
      00405C 15 81            [12] 4427 	dec	sp
      00405E 15 81            [12] 4428 	dec	sp
      004060 EE               [12] 4429 	mov	a,r6
      004061 4F               [12] 4430 	orl	a,r7
      004062 70 25            [24] 4431 	jnz	00182$
      004064 7D 64            [12] 4432 	mov	r5,#___str_8
      004066 7E 6C            [12] 4433 	mov	r6,#(___str_8 >> 8)
      004068 7F 80            [12] 4434 	mov	r7,#0x80
                                   4435 ;	calc.c:50: return;
      00406A                       4436 00351$:
                                   4437 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00406A 8D 82            [24] 4438 	mov	dpl,r5
      00406C 8E 83            [24] 4439 	mov	dph,r6
      00406E 8F F0            [24] 4440 	mov	b,r7
      004070 12 53 AB         [24] 4441 	lcall	__gptrget
      004073 FC               [12] 4442 	mov	r4,a
      004074 70 03            [24] 4443 	jnz	00954$
      004076 02 43 4A         [24] 4444 	ljmp	00196$
      004079                       4445 00954$:
      004079 7B 00            [12] 4446 	mov	r3,#0x00
      00407B 8C 82            [24] 4447 	mov	dpl,r4
      00407D 8B 83            [24] 4448 	mov	dph,r3
      00407F 12 29 C0         [24] 4449 	lcall	_putchar
      004082 0D               [12] 4450 	inc	r5
                                   4451 ;	calc.c:254: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004083 BD 00 E4         [24] 4452 	cjne	r5,#0x00,00351$
      004086 0E               [12] 4453 	inc	r6
      004087 80 E1            [24] 4454 	sjmp	00351$
      004089                       4455 00182$:
                                   4456 ;	calc.c:255: else if (!stack_pop(&ctx->s, &d1)) {
      004089 E5 08            [12] 4457 	mov	a,_bp
      00408B 24 13            [12] 4458 	add	a,#0x13
      00408D FF               [12] 4459 	mov	r7,a
      00408E 7E 00            [12] 4460 	mov	r6,#0x00
      004090 7D 40            [12] 4461 	mov	r5,#0x40
      004092 E5 08            [12] 4462 	mov	a,_bp
      004094 24 0C            [12] 4463 	add	a,#0x0c
      004096 F8               [12] 4464 	mov	r0,a
      004097 74 09            [12] 4465 	mov	a,#0x09
      004099 26               [12] 4466 	add	a,@r0
      00409A FA               [12] 4467 	mov	r2,a
      00409B E4               [12] 4468 	clr	a
      00409C 08               [12] 4469 	inc	r0
      00409D 36               [12] 4470 	addc	a,@r0
      00409E FB               [12] 4471 	mov	r3,a
      00409F 08               [12] 4472 	inc	r0
      0040A0 86 04            [24] 4473 	mov	ar4,@r0
      0040A2 C0 07            [24] 4474 	push	ar7
      0040A4 C0 06            [24] 4475 	push	ar6
      0040A6 C0 05            [24] 4476 	push	ar5
      0040A8 8A 82            [24] 4477 	mov	dpl,r2
      0040AA 8B 83            [24] 4478 	mov	dph,r3
      0040AC 8C F0            [24] 4479 	mov	b,r4
      0040AE 12 27 7F         [24] 4480 	lcall	_stack_pop
      0040B1 AE 82            [24] 4481 	mov	r6,dpl
      0040B3 AF 83            [24] 4482 	mov	r7,dph
      0040B5 15 81            [12] 4483 	dec	sp
      0040B7 15 81            [12] 4484 	dec	sp
      0040B9 15 81            [12] 4485 	dec	sp
      0040BB EE               [12] 4486 	mov	a,r6
      0040BC 4F               [12] 4487 	orl	a,r7
      0040BD 70 58            [24] 4488 	jnz	00179$
                                   4489 ;	calc.c:256: (void)stack_push(&ctx->s, d0);
      0040BF E5 08            [12] 4490 	mov	a,_bp
      0040C1 24 0C            [12] 4491 	add	a,#0x0c
      0040C3 F8               [12] 4492 	mov	r0,a
      0040C4 74 09            [12] 4493 	mov	a,#0x09
      0040C6 26               [12] 4494 	add	a,@r0
      0040C7 FD               [12] 4495 	mov	r5,a
      0040C8 E4               [12] 4496 	clr	a
      0040C9 08               [12] 4497 	inc	r0
      0040CA 36               [12] 4498 	addc	a,@r0
      0040CB FE               [12] 4499 	mov	r6,a
      0040CC 08               [12] 4500 	inc	r0
      0040CD 86 07            [24] 4501 	mov	ar7,@r0
      0040CF E5 08            [12] 4502 	mov	a,_bp
      0040D1 24 0F            [12] 4503 	add	a,#0x0f
      0040D3 F8               [12] 4504 	mov	r0,a
      0040D4 E6               [12] 4505 	mov	a,@r0
      0040D5 C0 E0            [24] 4506 	push	acc
      0040D7 08               [12] 4507 	inc	r0
      0040D8 E6               [12] 4508 	mov	a,@r0
      0040D9 C0 E0            [24] 4509 	push	acc
      0040DB 08               [12] 4510 	inc	r0
      0040DC E6               [12] 4511 	mov	a,@r0
      0040DD C0 E0            [24] 4512 	push	acc
      0040DF 08               [12] 4513 	inc	r0
      0040E0 E6               [12] 4514 	mov	a,@r0
      0040E1 C0 E0            [24] 4515 	push	acc
      0040E3 8D 82            [24] 4516 	mov	dpl,r5
      0040E5 8E 83            [24] 4517 	mov	dph,r6
      0040E7 8F F0            [24] 4518 	mov	b,r7
      0040E9 12 26 B5         [24] 4519 	lcall	_stack_push
      0040EC E5 81            [12] 4520 	mov	a,sp
      0040EE 24 FC            [12] 4521 	add	a,#0xfc
      0040F0 F5 81            [12] 4522 	mov	sp,a
                                   4523 ;	calc.c:257: printstr("\r\nstack underflow\r\n");
      0040F2 7D 64            [12] 4524 	mov	r5,#___str_8
      0040F4 7E 6C            [12] 4525 	mov	r6,#(___str_8 >> 8)
      0040F6 7F 80            [12] 4526 	mov	r7,#0x80
                                   4527 ;	calc.c:50: return;
      0040F8                       4528 00354$:
                                   4529 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0040F8 8D 82            [24] 4530 	mov	dpl,r5
      0040FA 8E 83            [24] 4531 	mov	dph,r6
      0040FC 8F F0            [24] 4532 	mov	b,r7
      0040FE 12 53 AB         [24] 4533 	lcall	__gptrget
      004101 FC               [12] 4534 	mov	r4,a
      004102 70 03            [24] 4535 	jnz	00957$
      004104 02 43 4A         [24] 4536 	ljmp	00196$
      004107                       4537 00957$:
      004107 7B 00            [12] 4538 	mov	r3,#0x00
      004109 8C 82            [24] 4539 	mov	dpl,r4
      00410B 8B 83            [24] 4540 	mov	dph,r3
      00410D 12 29 C0         [24] 4541 	lcall	_putchar
      004110 0D               [12] 4542 	inc	r5
                                   4543 ;	calc.c:257: printstr("\r\nstack underflow\r\n");
      004111 BD 00 E4         [24] 4544 	cjne	r5,#0x00,00354$
      004114 0E               [12] 4545 	inc	r6
      004115 80 E1            [24] 4546 	sjmp	00354$
      004117                       4547 00179$:
                                   4548 ;	calc.c:259: d1 |= d0;
      004117 E5 08            [12] 4549 	mov	a,_bp
      004119 24 13            [12] 4550 	add	a,#0x13
      00411B F8               [12] 4551 	mov	r0,a
      00411C E5 08            [12] 4552 	mov	a,_bp
      00411E 24 0F            [12] 4553 	add	a,#0x0f
      004120 F9               [12] 4554 	mov	r1,a
      004121 E7               [12] 4555 	mov	a,@r1
      004122 46               [12] 4556 	orl	a,@r0
      004123 F6               [12] 4557 	mov	@r0,a
      004124 09               [12] 4558 	inc	r1
      004125 E7               [12] 4559 	mov	a,@r1
      004126 08               [12] 4560 	inc	r0
      004127 46               [12] 4561 	orl	a,@r0
      004128 F6               [12] 4562 	mov	@r0,a
      004129 09               [12] 4563 	inc	r1
      00412A E7               [12] 4564 	mov	a,@r1
      00412B 08               [12] 4565 	inc	r0
      00412C 46               [12] 4566 	orl	a,@r0
      00412D F6               [12] 4567 	mov	@r0,a
      00412E 09               [12] 4568 	inc	r1
      00412F E7               [12] 4569 	mov	a,@r1
      004130 08               [12] 4570 	inc	r0
      004131 46               [12] 4571 	orl	a,@r0
      004132 F6               [12] 4572 	mov	@r0,a
                                   4573 ;	calc.c:260: (void)stack_push(&ctx->s, d1);
      004133 E5 08            [12] 4574 	mov	a,_bp
      004135 24 0C            [12] 4575 	add	a,#0x0c
      004137 F8               [12] 4576 	mov	r0,a
      004138 74 09            [12] 4577 	mov	a,#0x09
      00413A 26               [12] 4578 	add	a,@r0
      00413B FD               [12] 4579 	mov	r5,a
      00413C E4               [12] 4580 	clr	a
      00413D 08               [12] 4581 	inc	r0
      00413E 36               [12] 4582 	addc	a,@r0
      00413F FE               [12] 4583 	mov	r6,a
      004140 08               [12] 4584 	inc	r0
      004141 86 07            [24] 4585 	mov	ar7,@r0
      004143 E5 08            [12] 4586 	mov	a,_bp
      004145 24 13            [12] 4587 	add	a,#0x13
      004147 F8               [12] 4588 	mov	r0,a
      004148 E6               [12] 4589 	mov	a,@r0
      004149 C0 E0            [24] 4590 	push	acc
      00414B 08               [12] 4591 	inc	r0
      00414C E6               [12] 4592 	mov	a,@r0
      00414D C0 E0            [24] 4593 	push	acc
      00414F 08               [12] 4594 	inc	r0
      004150 E6               [12] 4595 	mov	a,@r0
      004151 C0 E0            [24] 4596 	push	acc
      004153 08               [12] 4597 	inc	r0
      004154 E6               [12] 4598 	mov	a,@r0
      004155 C0 E0            [24] 4599 	push	acc
      004157 8D 82            [24] 4600 	mov	dpl,r5
      004159 8E 83            [24] 4601 	mov	dph,r6
      00415B 8F F0            [24] 4602 	mov	b,r7
      00415D 12 26 B5         [24] 4603 	lcall	_stack_push
      004160 E5 81            [12] 4604 	mov	a,sp
      004162 24 FC            [12] 4605 	add	a,#0xfc
      004164 F5 81            [12] 4606 	mov	sp,a
                                   4607 ;	calc.c:262: break;
      004166 02 43 4A         [24] 4608 	ljmp	00196$
                                   4609 ;	calc.c:263: case '^':
      004169                       4610 00184$:
                                   4611 ;	calc.c:264: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      004169 E5 08            [12] 4612 	mov	a,_bp
      00416B 24 0F            [12] 4613 	add	a,#0x0f
      00416D FF               [12] 4614 	mov	r7,a
      00416E 7E 00            [12] 4615 	mov	r6,#0x00
      004170 7D 40            [12] 4616 	mov	r5,#0x40
      004172 E5 08            [12] 4617 	mov	a,_bp
      004174 24 0C            [12] 4618 	add	a,#0x0c
      004176 F8               [12] 4619 	mov	r0,a
      004177 74 09            [12] 4620 	mov	a,#0x09
      004179 26               [12] 4621 	add	a,@r0
      00417A FA               [12] 4622 	mov	r2,a
      00417B E4               [12] 4623 	clr	a
      00417C 08               [12] 4624 	inc	r0
      00417D 36               [12] 4625 	addc	a,@r0
      00417E FB               [12] 4626 	mov	r3,a
      00417F 08               [12] 4627 	inc	r0
      004180 86 04            [24] 4628 	mov	ar4,@r0
      004182 C0 07            [24] 4629 	push	ar7
      004184 C0 06            [24] 4630 	push	ar6
      004186 C0 05            [24] 4631 	push	ar5
      004188 8A 82            [24] 4632 	mov	dpl,r2
      00418A 8B 83            [24] 4633 	mov	dph,r3
      00418C 8C F0            [24] 4634 	mov	b,r4
      00418E 12 27 7F         [24] 4635 	lcall	_stack_pop
      004191 AE 82            [24] 4636 	mov	r6,dpl
      004193 AF 83            [24] 4637 	mov	r7,dph
      004195 15 81            [12] 4638 	dec	sp
      004197 15 81            [12] 4639 	dec	sp
      004199 15 81            [12] 4640 	dec	sp
      00419B EE               [12] 4641 	mov	a,r6
      00419C 4F               [12] 4642 	orl	a,r7
      00419D 70 25            [24] 4643 	jnz	00189$
      00419F 7D 64            [12] 4644 	mov	r5,#___str_8
      0041A1 7E 6C            [12] 4645 	mov	r6,#(___str_8 >> 8)
      0041A3 7F 80            [12] 4646 	mov	r7,#0x80
                                   4647 ;	calc.c:50: return;
      0041A5                       4648 00357$:
                                   4649 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0041A5 8D 82            [24] 4650 	mov	dpl,r5
      0041A7 8E 83            [24] 4651 	mov	dph,r6
      0041A9 8F F0            [24] 4652 	mov	b,r7
      0041AB 12 53 AB         [24] 4653 	lcall	__gptrget
      0041AE FC               [12] 4654 	mov	r4,a
      0041AF 70 03            [24] 4655 	jnz	00960$
      0041B1 02 43 4A         [24] 4656 	ljmp	00196$
      0041B4                       4657 00960$:
      0041B4 7B 00            [12] 4658 	mov	r3,#0x00
      0041B6 8C 82            [24] 4659 	mov	dpl,r4
      0041B8 8B 83            [24] 4660 	mov	dph,r3
      0041BA 12 29 C0         [24] 4661 	lcall	_putchar
      0041BD 0D               [12] 4662 	inc	r5
                                   4663 ;	calc.c:264: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0041BE BD 00 E4         [24] 4664 	cjne	r5,#0x00,00357$
      0041C1 0E               [12] 4665 	inc	r6
      0041C2 80 E1            [24] 4666 	sjmp	00357$
      0041C4                       4667 00189$:
                                   4668 ;	calc.c:265: else if (!stack_pop(&ctx->s, &d1)) {
      0041C4 E5 08            [12] 4669 	mov	a,_bp
      0041C6 24 13            [12] 4670 	add	a,#0x13
      0041C8 FF               [12] 4671 	mov	r7,a
      0041C9 7E 00            [12] 4672 	mov	r6,#0x00
      0041CB 7D 40            [12] 4673 	mov	r5,#0x40
      0041CD E5 08            [12] 4674 	mov	a,_bp
      0041CF 24 0C            [12] 4675 	add	a,#0x0c
      0041D1 F8               [12] 4676 	mov	r0,a
      0041D2 74 09            [12] 4677 	mov	a,#0x09
      0041D4 26               [12] 4678 	add	a,@r0
      0041D5 FA               [12] 4679 	mov	r2,a
      0041D6 E4               [12] 4680 	clr	a
      0041D7 08               [12] 4681 	inc	r0
      0041D8 36               [12] 4682 	addc	a,@r0
      0041D9 FB               [12] 4683 	mov	r3,a
      0041DA 08               [12] 4684 	inc	r0
      0041DB 86 04            [24] 4685 	mov	ar4,@r0
      0041DD C0 07            [24] 4686 	push	ar7
      0041DF C0 06            [24] 4687 	push	ar6
      0041E1 C0 05            [24] 4688 	push	ar5
      0041E3 8A 82            [24] 4689 	mov	dpl,r2
      0041E5 8B 83            [24] 4690 	mov	dph,r3
      0041E7 8C F0            [24] 4691 	mov	b,r4
      0041E9 12 27 7F         [24] 4692 	lcall	_stack_pop
      0041EC AE 82            [24] 4693 	mov	r6,dpl
      0041EE AF 83            [24] 4694 	mov	r7,dph
      0041F0 15 81            [12] 4695 	dec	sp
      0041F2 15 81            [12] 4696 	dec	sp
      0041F4 15 81            [12] 4697 	dec	sp
      0041F6 EE               [12] 4698 	mov	a,r6
      0041F7 4F               [12] 4699 	orl	a,r7
      0041F8 70 58            [24] 4700 	jnz	00186$
                                   4701 ;	calc.c:266: (void)stack_push(&ctx->s, d0);
      0041FA E5 08            [12] 4702 	mov	a,_bp
      0041FC 24 0C            [12] 4703 	add	a,#0x0c
      0041FE F8               [12] 4704 	mov	r0,a
      0041FF 74 09            [12] 4705 	mov	a,#0x09
      004201 26               [12] 4706 	add	a,@r0
      004202 FD               [12] 4707 	mov	r5,a
      004203 E4               [12] 4708 	clr	a
      004204 08               [12] 4709 	inc	r0
      004205 36               [12] 4710 	addc	a,@r0
      004206 FE               [12] 4711 	mov	r6,a
      004207 08               [12] 4712 	inc	r0
      004208 86 07            [24] 4713 	mov	ar7,@r0
      00420A E5 08            [12] 4714 	mov	a,_bp
      00420C 24 0F            [12] 4715 	add	a,#0x0f
      00420E F8               [12] 4716 	mov	r0,a
      00420F E6               [12] 4717 	mov	a,@r0
      004210 C0 E0            [24] 4718 	push	acc
      004212 08               [12] 4719 	inc	r0
      004213 E6               [12] 4720 	mov	a,@r0
      004214 C0 E0            [24] 4721 	push	acc
      004216 08               [12] 4722 	inc	r0
      004217 E6               [12] 4723 	mov	a,@r0
      004218 C0 E0            [24] 4724 	push	acc
      00421A 08               [12] 4725 	inc	r0
      00421B E6               [12] 4726 	mov	a,@r0
      00421C C0 E0            [24] 4727 	push	acc
      00421E 8D 82            [24] 4728 	mov	dpl,r5
      004220 8E 83            [24] 4729 	mov	dph,r6
      004222 8F F0            [24] 4730 	mov	b,r7
      004224 12 26 B5         [24] 4731 	lcall	_stack_push
      004227 E5 81            [12] 4732 	mov	a,sp
      004229 24 FC            [12] 4733 	add	a,#0xfc
      00422B F5 81            [12] 4734 	mov	sp,a
                                   4735 ;	calc.c:267: printstr("\r\nstack underflow\r\n");
      00422D 7D 64            [12] 4736 	mov	r5,#___str_8
      00422F 7E 6C            [12] 4737 	mov	r6,#(___str_8 >> 8)
      004231 7F 80            [12] 4738 	mov	r7,#0x80
                                   4739 ;	calc.c:50: return;
      004233                       4740 00360$:
                                   4741 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004233 8D 82            [24] 4742 	mov	dpl,r5
      004235 8E 83            [24] 4743 	mov	dph,r6
      004237 8F F0            [24] 4744 	mov	b,r7
      004239 12 53 AB         [24] 4745 	lcall	__gptrget
      00423C FC               [12] 4746 	mov	r4,a
      00423D 70 03            [24] 4747 	jnz	00963$
      00423F 02 43 4A         [24] 4748 	ljmp	00196$
      004242                       4749 00963$:
      004242 7B 00            [12] 4750 	mov	r3,#0x00
      004244 8C 82            [24] 4751 	mov	dpl,r4
      004246 8B 83            [24] 4752 	mov	dph,r3
      004248 12 29 C0         [24] 4753 	lcall	_putchar
      00424B 0D               [12] 4754 	inc	r5
                                   4755 ;	calc.c:267: printstr("\r\nstack underflow\r\n");
      00424C BD 00 E4         [24] 4756 	cjne	r5,#0x00,00360$
      00424F 0E               [12] 4757 	inc	r6
      004250 80 E1            [24] 4758 	sjmp	00360$
      004252                       4759 00186$:
                                   4760 ;	calc.c:269: d1 ^= d0;
      004252 E5 08            [12] 4761 	mov	a,_bp
      004254 24 13            [12] 4762 	add	a,#0x13
      004256 F8               [12] 4763 	mov	r0,a
      004257 E5 08            [12] 4764 	mov	a,_bp
      004259 24 0F            [12] 4765 	add	a,#0x0f
      00425B F9               [12] 4766 	mov	r1,a
      00425C E7               [12] 4767 	mov	a,@r1
      00425D 66               [12] 4768 	xrl	a,@r0
      00425E F6               [12] 4769 	mov	@r0,a
      00425F 09               [12] 4770 	inc	r1
      004260 E7               [12] 4771 	mov	a,@r1
      004261 08               [12] 4772 	inc	r0
      004262 66               [12] 4773 	xrl	a,@r0
      004263 F6               [12] 4774 	mov	@r0,a
      004264 09               [12] 4775 	inc	r1
      004265 E7               [12] 4776 	mov	a,@r1
      004266 08               [12] 4777 	inc	r0
      004267 66               [12] 4778 	xrl	a,@r0
      004268 F6               [12] 4779 	mov	@r0,a
      004269 09               [12] 4780 	inc	r1
      00426A E7               [12] 4781 	mov	a,@r1
      00426B 08               [12] 4782 	inc	r0
      00426C 66               [12] 4783 	xrl	a,@r0
      00426D F6               [12] 4784 	mov	@r0,a
                                   4785 ;	calc.c:270: (void)stack_push(&ctx->s, d1);
      00426E E5 08            [12] 4786 	mov	a,_bp
      004270 24 0C            [12] 4787 	add	a,#0x0c
      004272 F8               [12] 4788 	mov	r0,a
      004273 74 09            [12] 4789 	mov	a,#0x09
      004275 26               [12] 4790 	add	a,@r0
      004276 FD               [12] 4791 	mov	r5,a
      004277 E4               [12] 4792 	clr	a
      004278 08               [12] 4793 	inc	r0
      004279 36               [12] 4794 	addc	a,@r0
      00427A FE               [12] 4795 	mov	r6,a
      00427B 08               [12] 4796 	inc	r0
      00427C 86 07            [24] 4797 	mov	ar7,@r0
      00427E E5 08            [12] 4798 	mov	a,_bp
      004280 24 13            [12] 4799 	add	a,#0x13
      004282 F8               [12] 4800 	mov	r0,a
      004283 E6               [12] 4801 	mov	a,@r0
      004284 C0 E0            [24] 4802 	push	acc
      004286 08               [12] 4803 	inc	r0
      004287 E6               [12] 4804 	mov	a,@r0
      004288 C0 E0            [24] 4805 	push	acc
      00428A 08               [12] 4806 	inc	r0
      00428B E6               [12] 4807 	mov	a,@r0
      00428C C0 E0            [24] 4808 	push	acc
      00428E 08               [12] 4809 	inc	r0
      00428F E6               [12] 4810 	mov	a,@r0
      004290 C0 E0            [24] 4811 	push	acc
      004292 8D 82            [24] 4812 	mov	dpl,r5
      004294 8E 83            [24] 4813 	mov	dph,r6
      004296 8F F0            [24] 4814 	mov	b,r7
      004298 12 26 B5         [24] 4815 	lcall	_stack_push
      00429B E5 81            [12] 4816 	mov	a,sp
      00429D 24 FC            [12] 4817 	add	a,#0xfc
      00429F F5 81            [12] 4818 	mov	sp,a
                                   4819 ;	calc.c:272: break;
      0042A1 02 43 4A         [24] 4820 	ljmp	00196$
                                   4821 ;	calc.c:273: case '~':
      0042A4                       4822 00191$:
                                   4823 ;	calc.c:274: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0042A4 E5 08            [12] 4824 	mov	a,_bp
      0042A6 24 0F            [12] 4825 	add	a,#0x0f
      0042A8 FF               [12] 4826 	mov	r7,a
      0042A9 7E 00            [12] 4827 	mov	r6,#0x00
      0042AB 7D 40            [12] 4828 	mov	r5,#0x40
      0042AD E5 08            [12] 4829 	mov	a,_bp
      0042AF 24 0C            [12] 4830 	add	a,#0x0c
      0042B1 F8               [12] 4831 	mov	r0,a
      0042B2 74 09            [12] 4832 	mov	a,#0x09
      0042B4 26               [12] 4833 	add	a,@r0
      0042B5 FA               [12] 4834 	mov	r2,a
      0042B6 E4               [12] 4835 	clr	a
      0042B7 08               [12] 4836 	inc	r0
      0042B8 36               [12] 4837 	addc	a,@r0
      0042B9 FB               [12] 4838 	mov	r3,a
      0042BA 08               [12] 4839 	inc	r0
      0042BB 86 04            [24] 4840 	mov	ar4,@r0
      0042BD C0 07            [24] 4841 	push	ar7
      0042BF C0 06            [24] 4842 	push	ar6
      0042C1 C0 05            [24] 4843 	push	ar5
      0042C3 8A 82            [24] 4844 	mov	dpl,r2
      0042C5 8B 83            [24] 4845 	mov	dph,r3
      0042C7 8C F0            [24] 4846 	mov	b,r4
      0042C9 12 27 7F         [24] 4847 	lcall	_stack_pop
      0042CC AE 82            [24] 4848 	mov	r6,dpl
      0042CE AF 83            [24] 4849 	mov	r7,dph
      0042D0 15 81            [12] 4850 	dec	sp
      0042D2 15 81            [12] 4851 	dec	sp
      0042D4 15 81            [12] 4852 	dec	sp
      0042D6 EE               [12] 4853 	mov	a,r6
      0042D7 4F               [12] 4854 	orl	a,r7
      0042D8 70 22            [24] 4855 	jnz	00193$
      0042DA 7D 64            [12] 4856 	mov	r5,#___str_8
      0042DC 7E 6C            [12] 4857 	mov	r6,#(___str_8 >> 8)
      0042DE 7F 80            [12] 4858 	mov	r7,#0x80
                                   4859 ;	calc.c:50: return;
      0042E0                       4860 00363$:
                                   4861 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0042E0 8D 82            [24] 4862 	mov	dpl,r5
      0042E2 8E 83            [24] 4863 	mov	dph,r6
      0042E4 8F F0            [24] 4864 	mov	b,r7
      0042E6 12 53 AB         [24] 4865 	lcall	__gptrget
      0042E9 FC               [12] 4866 	mov	r4,a
      0042EA 60 5E            [24] 4867 	jz	00196$
      0042EC 7B 00            [12] 4868 	mov	r3,#0x00
      0042EE 8C 82            [24] 4869 	mov	dpl,r4
      0042F0 8B 83            [24] 4870 	mov	dph,r3
      0042F2 12 29 C0         [24] 4871 	lcall	_putchar
      0042F5 0D               [12] 4872 	inc	r5
                                   4873 ;	calc.c:274: if (!stack_pop(&ctx->s, &d0)) printstr("\r\nstack underflow\r\n");
      0042F6 BD 00 E7         [24] 4874 	cjne	r5,#0x00,00363$
      0042F9 0E               [12] 4875 	inc	r6
      0042FA 80 E4            [24] 4876 	sjmp	00363$
      0042FC                       4877 00193$:
                                   4878 ;	calc.c:276: d0 = ~d0;
      0042FC E5 08            [12] 4879 	mov	a,_bp
      0042FE 24 0F            [12] 4880 	add	a,#0x0f
      004300 F8               [12] 4881 	mov	r0,a
      004301 E6               [12] 4882 	mov	a,@r0
      004302 F4               [12] 4883 	cpl	a
      004303 F6               [12] 4884 	mov	@r0,a
      004304 08               [12] 4885 	inc	r0
      004305 E6               [12] 4886 	mov	a,@r0
      004306 F4               [12] 4887 	cpl	a
      004307 F6               [12] 4888 	mov	@r0,a
      004308 08               [12] 4889 	inc	r0
      004309 E6               [12] 4890 	mov	a,@r0
      00430A F4               [12] 4891 	cpl	a
      00430B F6               [12] 4892 	mov	@r0,a
      00430C 08               [12] 4893 	inc	r0
      00430D E6               [12] 4894 	mov	a,@r0
      00430E F4               [12] 4895 	cpl	a
      00430F F6               [12] 4896 	mov	@r0,a
                                   4897 ;	calc.c:277: (void)stack_push(&ctx->s, d0);
      004310 E5 08            [12] 4898 	mov	a,_bp
      004312 24 0C            [12] 4899 	add	a,#0x0c
      004314 F8               [12] 4900 	mov	r0,a
      004315 74 09            [12] 4901 	mov	a,#0x09
      004317 26               [12] 4902 	add	a,@r0
      004318 FD               [12] 4903 	mov	r5,a
      004319 E4               [12] 4904 	clr	a
      00431A 08               [12] 4905 	inc	r0
      00431B 36               [12] 4906 	addc	a,@r0
      00431C FE               [12] 4907 	mov	r6,a
      00431D 08               [12] 4908 	inc	r0
      00431E 86 07            [24] 4909 	mov	ar7,@r0
      004320 E5 08            [12] 4910 	mov	a,_bp
      004322 24 0F            [12] 4911 	add	a,#0x0f
      004324 F8               [12] 4912 	mov	r0,a
      004325 E6               [12] 4913 	mov	a,@r0
      004326 C0 E0            [24] 4914 	push	acc
      004328 08               [12] 4915 	inc	r0
      004329 E6               [12] 4916 	mov	a,@r0
      00432A C0 E0            [24] 4917 	push	acc
      00432C 08               [12] 4918 	inc	r0
      00432D E6               [12] 4919 	mov	a,@r0
      00432E C0 E0            [24] 4920 	push	acc
      004330 08               [12] 4921 	inc	r0
      004331 E6               [12] 4922 	mov	a,@r0
      004332 C0 E0            [24] 4923 	push	acc
      004334 8D 82            [24] 4924 	mov	dpl,r5
      004336 8E 83            [24] 4925 	mov	dph,r6
      004338 8F F0            [24] 4926 	mov	b,r7
      00433A 12 26 B5         [24] 4927 	lcall	_stack_push
      00433D E5 81            [12] 4928 	mov	a,sp
      00433F 24 FC            [12] 4929 	add	a,#0xfc
      004341 F5 81            [12] 4930 	mov	sp,a
                                   4931 ;	calc.c:279: break;
                                   4932 ;	calc.c:280: default:
      004343 80 05            [24] 4933 	sjmp	00196$
      004345                       4934 00195$:
                                   4935 ;	calc.c:281: return UNDEF;
      004345 90 80 00         [24] 4936 	mov	dptr,#0x8000
                                   4937 ;	calc.c:282: }
      004348 80 03            [24] 4938 	sjmp	00365$
      00434A                       4939 00196$:
                                   4940 ;	calc.c:284: return 1;
      00434A 90 00 01         [24] 4941 	mov	dptr,#0x0001
      00434D                       4942 00365$:
                                   4943 ;	calc.c:285: }
      00434D 85 08 81         [24] 4944 	mov	sp,_bp
      004350 D0 08            [24] 4945 	pop	_bp
      004352 22               [24] 4946 	ret
                                   4947 ;------------------------------------------------------------
                                   4948 ;Allocation info for local variables in function 'push_acc'
                                   4949 ;------------------------------------------------------------
                                   4950 ;delta                     Allocated to stack - _bp -5
                                   4951 ;_ctx                      Allocated to stack - _bp +5
                                   4952 ;ctx                       Allocated to registers r2 r3 r4 
                                   4953 ;__1310720085              Allocated to registers 
                                   4954 ;s                         Allocated to registers r5 r6 r7 
                                   4955 ;sloc0                     Allocated to stack - _bp +1
                                   4956 ;------------------------------------------------------------
                                   4957 ;	calc.c:287: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   4958 ;	-----------------------------------------
                                   4959 ;	 function push_acc
                                   4960 ;	-----------------------------------------
      004353                       4961 _push_acc:
      004353 C0 08            [24] 4962 	push	_bp
      004355 E5 81            [12] 4963 	mov	a,sp
      004357 F5 08            [12] 4964 	mov	_bp,a
      004359 24 07            [12] 4965 	add	a,#0x07
      00435B F5 81            [12] 4966 	mov	sp,a
      00435D C8               [12] 4967 	xch	a,r0
      00435E E5 08            [12] 4968 	mov	a,_bp
      004360 24 05            [12] 4969 	add	a,#0x05
      004362 C8               [12] 4970 	xch	a,r0
      004363 A6 82            [24] 4971 	mov	@r0,dpl
      004365 08               [12] 4972 	inc	r0
      004366 A6 83            [24] 4973 	mov	@r0,dph
      004368 08               [12] 4974 	inc	r0
      004369 A6 F0            [24] 4975 	mov	@r0,b
                                   4976 ;	calc.c:288: struct ctx *ctx = (struct ctx *)_ctx;
      00436B E5 08            [12] 4977 	mov	a,_bp
      00436D 24 05            [12] 4978 	add	a,#0x05
      00436F F8               [12] 4979 	mov	r0,a
      004370 86 02            [24] 4980 	mov	ar2,@r0
      004372 08               [12] 4981 	inc	r0
      004373 86 03            [24] 4982 	mov	ar3,@r0
      004375 08               [12] 4983 	inc	r0
      004376 86 04            [24] 4984 	mov	ar4,@r0
                                   4985 ;	calc.c:292: ctx->acc_valid = 0;
      004378 74 06            [12] 4986 	mov	a,#0x06
      00437A 2A               [12] 4987 	add	a,r2
      00437B FD               [12] 4988 	mov	r5,a
      00437C E4               [12] 4989 	clr	a
      00437D 3B               [12] 4990 	addc	a,r3
      00437E FE               [12] 4991 	mov	r6,a
      00437F 8C 07            [24] 4992 	mov	ar7,r4
      004381 8D 82            [24] 4993 	mov	dpl,r5
      004383 8E 83            [24] 4994 	mov	dph,r6
      004385 8F F0            [24] 4995 	mov	b,r7
      004387 E4               [12] 4996 	clr	a
      004388 12 4F 30         [24] 4997 	lcall	__gptrput
                                   4998 ;	calc.c:293: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      00438B 74 02            [12] 4999 	mov	a,#0x02
      00438D 2A               [12] 5000 	add	a,r2
      00438E FF               [12] 5001 	mov	r7,a
      00438F E4               [12] 5002 	clr	a
      004390 3B               [12] 5003 	addc	a,r3
      004391 FD               [12] 5004 	mov	r5,a
      004392 8C 06            [24] 5005 	mov	ar6,r4
      004394 8F 82            [24] 5006 	mov	dpl,r7
      004396 8D 83            [24] 5007 	mov	dph,r5
      004398 8E F0            [24] 5008 	mov	b,r6
      00439A A8 08            [24] 5009 	mov	r0,_bp
      00439C 08               [12] 5010 	inc	r0
      00439D 12 53 AB         [24] 5011 	lcall	__gptrget
      0043A0 F6               [12] 5012 	mov	@r0,a
      0043A1 A3               [24] 5013 	inc	dptr
      0043A2 12 53 AB         [24] 5014 	lcall	__gptrget
      0043A5 08               [12] 5015 	inc	r0
      0043A6 F6               [12] 5016 	mov	@r0,a
      0043A7 A3               [24] 5017 	inc	dptr
      0043A8 12 53 AB         [24] 5018 	lcall	__gptrget
      0043AB 08               [12] 5019 	inc	r0
      0043AC F6               [12] 5020 	mov	@r0,a
      0043AD A3               [24] 5021 	inc	dptr
      0043AE 12 53 AB         [24] 5022 	lcall	__gptrget
      0043B1 08               [12] 5023 	inc	r0
      0043B2 F6               [12] 5024 	mov	@r0,a
      0043B3 74 09            [12] 5025 	mov	a,#0x09
      0043B5 2A               [12] 5026 	add	a,r2
      0043B6 FA               [12] 5027 	mov	r2,a
      0043B7 E4               [12] 5028 	clr	a
      0043B8 3B               [12] 5029 	addc	a,r3
      0043B9 FB               [12] 5030 	mov	r3,a
      0043BA 8C 07            [24] 5031 	mov	ar7,r4
      0043BC A8 08            [24] 5032 	mov	r0,_bp
      0043BE 08               [12] 5033 	inc	r0
      0043BF E6               [12] 5034 	mov	a,@r0
      0043C0 C0 E0            [24] 5035 	push	acc
      0043C2 08               [12] 5036 	inc	r0
      0043C3 E6               [12] 5037 	mov	a,@r0
      0043C4 C0 E0            [24] 5038 	push	acc
      0043C6 08               [12] 5039 	inc	r0
      0043C7 E6               [12] 5040 	mov	a,@r0
      0043C8 C0 E0            [24] 5041 	push	acc
      0043CA 08               [12] 5042 	inc	r0
      0043CB E6               [12] 5043 	mov	a,@r0
      0043CC C0 E0            [24] 5044 	push	acc
      0043CE 8A 82            [24] 5045 	mov	dpl,r2
      0043D0 8B 83            [24] 5046 	mov	dph,r3
      0043D2 8F F0            [24] 5047 	mov	b,r7
      0043D4 12 26 B5         [24] 5048 	lcall	_stack_push
      0043D7 AE 82            [24] 5049 	mov	r6,dpl
      0043D9 AF 83            [24] 5050 	mov	r7,dph
      0043DB E5 81            [12] 5051 	mov	a,sp
      0043DD 24 FC            [12] 5052 	add	a,#0xfc
      0043DF F5 81            [12] 5053 	mov	sp,a
      0043E1 EE               [12] 5054 	mov	a,r6
      0043E2 4F               [12] 5055 	orl	a,r7
      0043E3 70 22            [24] 5056 	jnz	00102$
      0043E5 7D 8D            [12] 5057 	mov	r5,#___str_10
      0043E7 7E 6C            [12] 5058 	mov	r6,#(___str_10 >> 8)
      0043E9 7F 80            [12] 5059 	mov	r7,#0x80
                                   5060 ;	calc.c:50: return;
      0043EB                       5061 00109$:
                                   5062 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0043EB 8D 82            [24] 5063 	mov	dpl,r5
      0043ED 8E 83            [24] 5064 	mov	dph,r6
      0043EF 8F F0            [24] 5065 	mov	b,r7
      0043F1 12 53 AB         [24] 5066 	lcall	__gptrget
      0043F4 FC               [12] 5067 	mov	r4,a
      0043F5 60 10            [24] 5068 	jz	00102$
      0043F7 7B 00            [12] 5069 	mov	r3,#0x00
      0043F9 8C 82            [24] 5070 	mov	dpl,r4
      0043FB 8B 83            [24] 5071 	mov	dph,r3
      0043FD 12 29 C0         [24] 5072 	lcall	_putchar
      004400 0D               [12] 5073 	inc	r5
                                   5074 ;	calc.c:293: if (!stack_push(&ctx->s, ctx->acc)) printstr("\r\nstack overflow\r\n");
      004401 BD 00 E7         [24] 5075 	cjne	r5,#0x00,00109$
      004404 0E               [12] 5076 	inc	r6
      004405 80 E4            [24] 5077 	sjmp	00109$
      004407                       5078 00102$:
                                   5079 ;	calc.c:295: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      004407 E5 08            [12] 5080 	mov	a,_bp
      004409 24 FB            [12] 5081 	add	a,#0xfb
      00440B F8               [12] 5082 	mov	r0,a
      00440C 86 05            [24] 5083 	mov	ar5,@r0
      00440E 08               [12] 5084 	inc	r0
      00440F 86 06            [24] 5085 	mov	ar6,@r0
      004411 08               [12] 5086 	inc	r0
      004412 86 07            [24] 5087 	mov	ar7,@r0
      004414 74 02            [12] 5088 	mov	a,#0x02
      004416 2D               [12] 5089 	add	a,r5
      004417 FA               [12] 5090 	mov	r2,a
      004418 E4               [12] 5091 	clr	a
      004419 3E               [12] 5092 	addc	a,r6
      00441A FB               [12] 5093 	mov	r3,a
      00441B 8F 04            [24] 5094 	mov	ar4,r7
      00441D 8A 82            [24] 5095 	mov	dpl,r2
      00441F 8B 83            [24] 5096 	mov	dph,r3
      004421 8C F0            [24] 5097 	mov	b,r4
      004423 12 53 AB         [24] 5098 	lcall	__gptrget
      004426 FA               [12] 5099 	mov	r2,a
      004427 A3               [24] 5100 	inc	dptr
      004428 12 53 AB         [24] 5101 	lcall	__gptrget
      00442B FB               [12] 5102 	mov	r3,a
      00442C BA 02 29         [24] 5103 	cjne	r2,#0x02,00104$
      00442F BB 00 26         [24] 5104 	cjne	r3,#0x00,00104$
      004432 C0 05            [24] 5105 	push	ar5
      004434 C0 06            [24] 5106 	push	ar6
      004436 C0 07            [24] 5107 	push	ar7
      004438 E5 08            [12] 5108 	mov	a,_bp
      00443A 24 05            [12] 5109 	add	a,#0x05
      00443C F8               [12] 5110 	mov	r0,a
      00443D 86 82            [24] 5111 	mov	dpl,@r0
      00443F 08               [12] 5112 	inc	r0
      004440 86 83            [24] 5113 	mov	dph,@r0
      004442 08               [12] 5114 	inc	r0
      004443 86 F0            [24] 5115 	mov	b,@r0
      004445 12 2F E4         [24] 5116 	lcall	_operator
      004448 AE 82            [24] 5117 	mov	r6,dpl
      00444A AF 83            [24] 5118 	mov	r7,dph
      00444C 15 81            [12] 5119 	dec	sp
      00444E 15 81            [12] 5120 	dec	sp
      004450 15 81            [12] 5121 	dec	sp
      004452 8E 82            [24] 5122 	mov	dpl,r6
      004454 8F 83            [24] 5123 	mov	dph,r7
      004456 80 03            [24] 5124 	sjmp	00111$
      004458                       5125 00104$:
                                   5126 ;	calc.c:296: else return 1;
      004458 90 00 01         [24] 5127 	mov	dptr,#0x0001
      00445B                       5128 00111$:
                                   5129 ;	calc.c:297: }
      00445B 85 08 81         [24] 5130 	mov	sp,_bp
      00445E D0 08            [24] 5131 	pop	_bp
      004460 22               [24] 5132 	ret
                                   5133 ;------------------------------------------------------------
                                   5134 ;Allocation info for local variables in function 'reset_acc'
                                   5135 ;------------------------------------------------------------
                                   5136 ;delta                     Allocated to stack - _bp -5
                                   5137 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5138 ;ctx                       Allocated to registers r5 r6 r7 
                                   5139 ;------------------------------------------------------------
                                   5140 ;	calc.c:299: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   5141 ;	-----------------------------------------
                                   5142 ;	 function reset_acc
                                   5143 ;	-----------------------------------------
      004461                       5144 _reset_acc:
      004461 C0 08            [24] 5145 	push	_bp
      004463 85 81 08         [24] 5146 	mov	_bp,sp
      004466 AD 82            [24] 5147 	mov	r5,dpl
      004468 AE 83            [24] 5148 	mov	r6,dph
      00446A AF F0            [24] 5149 	mov	r7,b
                                   5150 ;	calc.c:300: struct ctx *ctx = (struct ctx *)_ctx;
                                   5151 ;	calc.c:302: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      00446C E5 08            [12] 5152 	mov	a,_bp
      00446E 24 FB            [12] 5153 	add	a,#0xfb
      004470 F8               [12] 5154 	mov	r0,a
      004471 86 02            [24] 5155 	mov	ar2,@r0
      004473 08               [12] 5156 	inc	r0
      004474 86 03            [24] 5157 	mov	ar3,@r0
      004476 08               [12] 5158 	inc	r0
      004477 86 04            [24] 5159 	mov	ar4,@r0
      004479 74 02            [12] 5160 	mov	a,#0x02
      00447B 2A               [12] 5161 	add	a,r2
      00447C FA               [12] 5162 	mov	r2,a
      00447D E4               [12] 5163 	clr	a
      00447E 3B               [12] 5164 	addc	a,r3
      00447F FB               [12] 5165 	mov	r3,a
      004480 8A 82            [24] 5166 	mov	dpl,r2
      004482 8B 83            [24] 5167 	mov	dph,r3
      004484 8C F0            [24] 5168 	mov	b,r4
      004486 12 53 AB         [24] 5169 	lcall	__gptrget
      004489 FA               [12] 5170 	mov	r2,a
      00448A A3               [24] 5171 	inc	dptr
      00448B 12 53 AB         [24] 5172 	lcall	__gptrget
      00448E FB               [12] 5173 	mov	r3,a
      00448F BA 06 16         [24] 5174 	cjne	r2,#0x06,00102$
      004492 BB 00 13         [24] 5175 	cjne	r3,#0x00,00102$
      004495 74 06            [12] 5176 	mov	a,#0x06
      004497 2D               [12] 5177 	add	a,r5
      004498 FA               [12] 5178 	mov	r2,a
      004499 E4               [12] 5179 	clr	a
      00449A 3E               [12] 5180 	addc	a,r6
      00449B FB               [12] 5181 	mov	r3,a
      00449C 8F 04            [24] 5182 	mov	ar4,r7
      00449E 8A 82            [24] 5183 	mov	dpl,r2
      0044A0 8B 83            [24] 5184 	mov	dph,r3
      0044A2 8C F0            [24] 5185 	mov	b,r4
      0044A4 E4               [12] 5186 	clr	a
      0044A5 12 4F 30         [24] 5187 	lcall	__gptrput
      0044A8                       5188 00102$:
                                   5189 ;	calc.c:303: ctx->acc = 0l;
      0044A8 74 02            [12] 5190 	mov	a,#0x02
      0044AA 2D               [12] 5191 	add	a,r5
      0044AB FD               [12] 5192 	mov	r5,a
      0044AC E4               [12] 5193 	clr	a
      0044AD 3E               [12] 5194 	addc	a,r6
      0044AE FE               [12] 5195 	mov	r6,a
      0044AF 8D 82            [24] 5196 	mov	dpl,r5
      0044B1 8E 83            [24] 5197 	mov	dph,r6
      0044B3 8F F0            [24] 5198 	mov	b,r7
      0044B5 E4               [12] 5199 	clr	a
      0044B6 12 4F 30         [24] 5200 	lcall	__gptrput
      0044B9 A3               [24] 5201 	inc	dptr
      0044BA 12 4F 30         [24] 5202 	lcall	__gptrput
      0044BD A3               [24] 5203 	inc	dptr
      0044BE 12 4F 30         [24] 5204 	lcall	__gptrput
      0044C1 A3               [24] 5205 	inc	dptr
      0044C2 12 4F 30         [24] 5206 	lcall	__gptrput
                                   5207 ;	calc.c:305: return 1;
      0044C5 90 00 01         [24] 5208 	mov	dptr,#0x0001
                                   5209 ;	calc.c:306: }
      0044C8 D0 08            [24] 5210 	pop	_bp
      0044CA 22               [24] 5211 	ret
                                   5212 ;------------------------------------------------------------
                                   5213 ;Allocation info for local variables in function 'reset_base'
                                   5214 ;------------------------------------------------------------
                                   5215 ;delta                     Allocated to stack - _bp -5
                                   5216 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5217 ;ctx                       Allocated to registers r5 r6 r7 
                                   5218 ;------------------------------------------------------------
                                   5219 ;	calc.c:308: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   5220 ;	-----------------------------------------
                                   5221 ;	 function reset_base
                                   5222 ;	-----------------------------------------
      0044CB                       5223 _reset_base:
      0044CB C0 08            [24] 5224 	push	_bp
      0044CD 85 81 08         [24] 5225 	mov	_bp,sp
      0044D0 AD 82            [24] 5226 	mov	r5,dpl
      0044D2 AE 83            [24] 5227 	mov	r6,dph
      0044D4 AF F0            [24] 5228 	mov	r7,b
                                   5229 ;	calc.c:309: struct ctx *ctx = (struct ctx *)_ctx;
                                   5230 ;	calc.c:313: switch (ctx->digit[0]) {
      0044D6 74 07            [12] 5231 	mov	a,#0x07
      0044D8 2D               [12] 5232 	add	a,r5
      0044D9 FA               [12] 5233 	mov	r2,a
      0044DA E4               [12] 5234 	clr	a
      0044DB 3E               [12] 5235 	addc	a,r6
      0044DC FB               [12] 5236 	mov	r3,a
      0044DD 8F 04            [24] 5237 	mov	ar4,r7
      0044DF 8A 82            [24] 5238 	mov	dpl,r2
      0044E1 8B 83            [24] 5239 	mov	dph,r3
      0044E3 8C F0            [24] 5240 	mov	b,r4
      0044E5 12 53 AB         [24] 5241 	lcall	__gptrget
      0044E8 FC               [12] 5242 	mov	r4,a
      0044E9 BC 48 02         [24] 5243 	cjne	r4,#0x48,00124$
      0044EC 80 0F            [24] 5244 	sjmp	00101$
      0044EE                       5245 00124$:
      0044EE BC 4F 02         [24] 5246 	cjne	r4,#0x4f,00125$
      0044F1 80 2E            [24] 5247 	sjmp	00103$
      0044F3                       5248 00125$:
      0044F3 BC 68 02         [24] 5249 	cjne	r4,#0x68,00126$
      0044F6 80 17            [24] 5250 	sjmp	00102$
      0044F8                       5251 00126$:
                                   5252 ;	calc.c:314: case 'H':
      0044F8 BC 6F 48         [24] 5253 	cjne	r4,#0x6f,00105$
      0044FB 80 36            [24] 5254 	sjmp	00104$
      0044FD                       5255 00101$:
                                   5256 ;	calc.c:315: ctx->base = 16;
      0044FD 8D 82            [24] 5257 	mov	dpl,r5
      0044FF 8E 83            [24] 5258 	mov	dph,r6
      004501 8F F0            [24] 5259 	mov	b,r7
      004503 74 10            [12] 5260 	mov	a,#0x10
      004505 12 4F 30         [24] 5261 	lcall	__gptrput
      004508 A3               [24] 5262 	inc	dptr
      004509 E4               [12] 5263 	clr	a
      00450A 12 4F 30         [24] 5264 	lcall	__gptrput
                                   5265 ;	calc.c:316: break;
                                   5266 ;	calc.c:317: case 'h':
      00450D 80 34            [24] 5267 	sjmp	00105$
      00450F                       5268 00102$:
                                   5269 ;	calc.c:318: ctx->base = 10;
      00450F 8D 82            [24] 5270 	mov	dpl,r5
      004511 8E 83            [24] 5271 	mov	dph,r6
      004513 8F F0            [24] 5272 	mov	b,r7
      004515 74 0A            [12] 5273 	mov	a,#0x0a
      004517 12 4F 30         [24] 5274 	lcall	__gptrput
      00451A A3               [24] 5275 	inc	dptr
      00451B E4               [12] 5276 	clr	a
      00451C 12 4F 30         [24] 5277 	lcall	__gptrput
                                   5278 ;	calc.c:319: break;
                                   5279 ;	calc.c:320: case 'O':
      00451F 80 22            [24] 5280 	sjmp	00105$
      004521                       5281 00103$:
                                   5282 ;	calc.c:321: ctx->base = 8;
      004521 8D 82            [24] 5283 	mov	dpl,r5
      004523 8E 83            [24] 5284 	mov	dph,r6
      004525 8F F0            [24] 5285 	mov	b,r7
      004527 74 08            [12] 5286 	mov	a,#0x08
      004529 12 4F 30         [24] 5287 	lcall	__gptrput
      00452C A3               [24] 5288 	inc	dptr
      00452D E4               [12] 5289 	clr	a
      00452E 12 4F 30         [24] 5290 	lcall	__gptrput
                                   5291 ;	calc.c:322: break;
                                   5292 ;	calc.c:323: case 'o':
      004531 80 10            [24] 5293 	sjmp	00105$
      004533                       5294 00104$:
                                   5295 ;	calc.c:324: ctx->base = 2;
      004533 8D 82            [24] 5296 	mov	dpl,r5
      004535 8E 83            [24] 5297 	mov	dph,r6
      004537 8F F0            [24] 5298 	mov	b,r7
      004539 74 02            [12] 5299 	mov	a,#0x02
      00453B 12 4F 30         [24] 5300 	lcall	__gptrput
      00453E A3               [24] 5301 	inc	dptr
      00453F E4               [12] 5302 	clr	a
      004540 12 4F 30         [24] 5303 	lcall	__gptrput
                                   5304 ;	calc.c:326: }
      004543                       5305 00105$:
                                   5306 ;	calc.c:328: return 1;
      004543 90 00 01         [24] 5307 	mov	dptr,#0x0001
                                   5308 ;	calc.c:329: }
      004546 D0 08            [24] 5309 	pop	_bp
      004548 22               [24] 5310 	ret
                                   5311 ;------------------------------------------------------------
                                   5312 ;Allocation info for local variables in function 'help'
                                   5313 ;------------------------------------------------------------
                                   5314 ;delta                     Allocated to stack - _bp -5
                                   5315 ;_ctx                      Allocated to registers r5 r6 r7 
                                   5316 ;ctx                       Allocated to stack - _bp +4
                                   5317 ;__1310720087              Allocated to registers 
                                   5318 ;d                         Allocated to stack - _bp +7
                                   5319 ;mask                      Allocated to stack - _bp +11
                                   5320 ;__1310720089              Allocated to registers 
                                   5321 ;s                         Allocated to registers r5 r6 r7 
                                   5322 ;__1310720091              Allocated to registers 
                                   5323 ;s                         Allocated to registers r5 r6 r7 
                                   5324 ;__1310720093              Allocated to registers 
                                   5325 ;s                         Allocated to registers r5 r6 r7 
                                   5326 ;__1310720095              Allocated to registers 
                                   5327 ;s                         Allocated to registers r5 r6 r7 
                                   5328 ;__1310720097              Allocated to registers 
                                   5329 ;s                         Allocated to registers r5 r6 r7 
                                   5330 ;__1310720099              Allocated to registers 
                                   5331 ;s                         Allocated to registers r5 r6 r7 
                                   5332 ;__1310720101              Allocated to registers 
                                   5333 ;s                         Allocated to registers r5 r6 r7 
                                   5334 ;__1310720103              Allocated to registers 
                                   5335 ;s                         Allocated to registers r5 r6 r7 
                                   5336 ;__1310720105              Allocated to registers 
                                   5337 ;s                         Allocated to registers r5 r6 r7 
                                   5338 ;__1310720107              Allocated to registers 
                                   5339 ;s                         Allocated to registers r5 r6 r7 
                                   5340 ;__1310720109              Allocated to registers 
                                   5341 ;s                         Allocated to registers r5 r6 r7 
                                   5342 ;__1310720111              Allocated to registers 
                                   5343 ;s                         Allocated to registers r5 r6 r7 
                                   5344 ;__1310720113              Allocated to registers 
                                   5345 ;s                         Allocated to registers r5 r6 r7 
                                   5346 ;__1310720115              Allocated to registers 
                                   5347 ;s                         Allocated to registers r5 r6 r7 
                                   5348 ;__1310720117              Allocated to registers 
                                   5349 ;s                         Allocated to registers r5 r6 r7 
                                   5350 ;__1310720119              Allocated to registers 
                                   5351 ;s                         Allocated to registers r5 r6 r7 
                                   5352 ;__1310720121              Allocated to registers 
                                   5353 ;s                         Allocated to registers r5 r6 r7 
                                   5354 ;__1310720123              Allocated to registers 
                                   5355 ;s                         Allocated to registers r5 r6 r7 
                                   5356 ;__1310720125              Allocated to registers 
                                   5357 ;s                         Allocated to registers r5 r6 r7 
                                   5358 ;__1310720127              Allocated to registers 
                                   5359 ;s                         Allocated to registers r5 r6 r7 
                                   5360 ;__1310720129              Allocated to registers 
                                   5361 ;s                         Allocated to registers r5 r6 r7 
                                   5362 ;sloc0                     Allocated to stack - _bp +1
                                   5363 ;------------------------------------------------------------
                                   5364 ;	calc.c:331: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   5365 ;	-----------------------------------------
                                   5366 ;	 function help
                                   5367 ;	-----------------------------------------
      004549                       5368 _help:
      004549 C0 08            [24] 5369 	push	_bp
      00454B E5 81            [12] 5370 	mov	a,sp
      00454D F5 08            [12] 5371 	mov	_bp,a
      00454F 24 0E            [12] 5372 	add	a,#0x0e
      004551 F5 81            [12] 5373 	mov	sp,a
      004553 AD 82            [24] 5374 	mov	r5,dpl
      004555 AE 83            [24] 5375 	mov	r6,dph
      004557 AF F0            [24] 5376 	mov	r7,b
                                   5377 ;	calc.c:332: struct ctx *ctx = (struct ctx *)_ctx;
      004559 E5 08            [12] 5378 	mov	a,_bp
      00455B 24 04            [12] 5379 	add	a,#0x04
      00455D F8               [12] 5380 	mov	r0,a
      00455E A6 05            [24] 5381 	mov	@r0,ar5
      004560 08               [12] 5382 	inc	r0
      004561 A6 06            [24] 5383 	mov	@r0,ar6
      004563 08               [12] 5384 	inc	r0
      004564 A6 07            [24] 5385 	mov	@r0,ar7
                                   5386 ;	calc.c:335: printf("\r\nbase = %d, ", ctx->base);
      004566 E5 08            [12] 5387 	mov	a,_bp
      004568 24 04            [12] 5388 	add	a,#0x04
      00456A F8               [12] 5389 	mov	r0,a
      00456B 86 82            [24] 5390 	mov	dpl,@r0
      00456D 08               [12] 5391 	inc	r0
      00456E 86 83            [24] 5392 	mov	dph,@r0
      004570 08               [12] 5393 	inc	r0
      004571 86 F0            [24] 5394 	mov	b,@r0
      004573 12 53 AB         [24] 5395 	lcall	__gptrget
      004576 FB               [12] 5396 	mov	r3,a
      004577 A3               [24] 5397 	inc	dptr
      004578 12 53 AB         [24] 5398 	lcall	__gptrget
      00457B FC               [12] 5399 	mov	r4,a
      00457C C0 03            [24] 5400 	push	ar3
      00457E C0 04            [24] 5401 	push	ar4
      004580 74 A0            [12] 5402 	mov	a,#___str_11
      004582 C0 E0            [24] 5403 	push	acc
      004584 74 6C            [12] 5404 	mov	a,#(___str_11 >> 8)
      004586 C0 E0            [24] 5405 	push	acc
      004588 74 80            [12] 5406 	mov	a,#0x80
      00458A C0 E0            [24] 5407 	push	acc
      00458C 12 53 72         [24] 5408 	lcall	_printf
      00458F E5 81            [12] 5409 	mov	a,sp
      004591 24 FB            [12] 5410 	add	a,#0xfb
      004593 F5 81            [12] 5411 	mov	sp,a
                                   5412 ;	calc.c:336: printf("acc = %ld / ", ctx->acc);
      004595 E5 08            [12] 5413 	mov	a,_bp
      004597 24 04            [12] 5414 	add	a,#0x04
      004599 F8               [12] 5415 	mov	r0,a
      00459A A9 08            [24] 5416 	mov	r1,_bp
      00459C 09               [12] 5417 	inc	r1
      00459D 74 02            [12] 5418 	mov	a,#0x02
      00459F 26               [12] 5419 	add	a,@r0
      0045A0 F7               [12] 5420 	mov	@r1,a
      0045A1 E4               [12] 5421 	clr	a
      0045A2 08               [12] 5422 	inc	r0
      0045A3 36               [12] 5423 	addc	a,@r0
      0045A4 09               [12] 5424 	inc	r1
      0045A5 F7               [12] 5425 	mov	@r1,a
      0045A6 08               [12] 5426 	inc	r0
      0045A7 09               [12] 5427 	inc	r1
      0045A8 E6               [12] 5428 	mov	a,@r0
      0045A9 F7               [12] 5429 	mov	@r1,a
      0045AA A8 08            [24] 5430 	mov	r0,_bp
      0045AC 08               [12] 5431 	inc	r0
      0045AD 86 82            [24] 5432 	mov	dpl,@r0
      0045AF 08               [12] 5433 	inc	r0
      0045B0 86 83            [24] 5434 	mov	dph,@r0
      0045B2 08               [12] 5435 	inc	r0
      0045B3 86 F0            [24] 5436 	mov	b,@r0
      0045B5 12 53 AB         [24] 5437 	lcall	__gptrget
      0045B8 FC               [12] 5438 	mov	r4,a
      0045B9 A3               [24] 5439 	inc	dptr
      0045BA 12 53 AB         [24] 5440 	lcall	__gptrget
      0045BD FD               [12] 5441 	mov	r5,a
      0045BE A3               [24] 5442 	inc	dptr
      0045BF 12 53 AB         [24] 5443 	lcall	__gptrget
      0045C2 FE               [12] 5444 	mov	r6,a
      0045C3 A3               [24] 5445 	inc	dptr
      0045C4 12 53 AB         [24] 5446 	lcall	__gptrget
      0045C7 FF               [12] 5447 	mov	r7,a
      0045C8 C0 04            [24] 5448 	push	ar4
      0045CA C0 05            [24] 5449 	push	ar5
      0045CC C0 06            [24] 5450 	push	ar6
      0045CE C0 07            [24] 5451 	push	ar7
      0045D0 74 AE            [12] 5452 	mov	a,#___str_12
      0045D2 C0 E0            [24] 5453 	push	acc
      0045D4 74 6C            [12] 5454 	mov	a,#(___str_12 >> 8)
      0045D6 C0 E0            [24] 5455 	push	acc
      0045D8 74 80            [12] 5456 	mov	a,#0x80
      0045DA C0 E0            [24] 5457 	push	acc
      0045DC 12 53 72         [24] 5458 	lcall	_printf
      0045DF E5 81            [12] 5459 	mov	a,sp
      0045E1 24 F9            [12] 5460 	add	a,#0xf9
      0045E3 F5 81            [12] 5461 	mov	sp,a
                                   5462 ;	calc.c:337: printf("%08lx / ", ctx->acc);
      0045E5 A8 08            [24] 5463 	mov	r0,_bp
      0045E7 08               [12] 5464 	inc	r0
      0045E8 86 82            [24] 5465 	mov	dpl,@r0
      0045EA 08               [12] 5466 	inc	r0
      0045EB 86 83            [24] 5467 	mov	dph,@r0
      0045ED 08               [12] 5468 	inc	r0
      0045EE 86 F0            [24] 5469 	mov	b,@r0
      0045F0 12 53 AB         [24] 5470 	lcall	__gptrget
      0045F3 FC               [12] 5471 	mov	r4,a
      0045F4 A3               [24] 5472 	inc	dptr
      0045F5 12 53 AB         [24] 5473 	lcall	__gptrget
      0045F8 FD               [12] 5474 	mov	r5,a
      0045F9 A3               [24] 5475 	inc	dptr
      0045FA 12 53 AB         [24] 5476 	lcall	__gptrget
      0045FD FE               [12] 5477 	mov	r6,a
      0045FE A3               [24] 5478 	inc	dptr
      0045FF 12 53 AB         [24] 5479 	lcall	__gptrget
      004602 FF               [12] 5480 	mov	r7,a
      004603 C0 04            [24] 5481 	push	ar4
      004605 C0 05            [24] 5482 	push	ar5
      004607 C0 06            [24] 5483 	push	ar6
      004609 C0 07            [24] 5484 	push	ar7
      00460B 74 4F            [12] 5485 	mov	a,#___str_4
      00460D C0 E0            [24] 5486 	push	acc
      00460F 74 6C            [12] 5487 	mov	a,#(___str_4 >> 8)
      004611 C0 E0            [24] 5488 	push	acc
      004613 74 80            [12] 5489 	mov	a,#0x80
      004615 C0 E0            [24] 5490 	push	acc
      004617 12 53 72         [24] 5491 	lcall	_printf
      00461A E5 81            [12] 5492 	mov	a,sp
      00461C 24 F9            [12] 5493 	add	a,#0xf9
      00461E F5 81            [12] 5494 	mov	sp,a
                                   5495 ;	calc.c:338: printbin(ctx->acc);
      004620 A8 08            [24] 5496 	mov	r0,_bp
      004622 08               [12] 5497 	inc	r0
      004623 86 82            [24] 5498 	mov	dpl,@r0
      004625 08               [12] 5499 	inc	r0
      004626 86 83            [24] 5500 	mov	dph,@r0
      004628 08               [12] 5501 	inc	r0
      004629 86 F0            [24] 5502 	mov	b,@r0
      00462B E5 08            [12] 5503 	mov	a,_bp
      00462D 24 07            [12] 5504 	add	a,#0x07
      00462F F9               [12] 5505 	mov	r1,a
      004630 12 53 AB         [24] 5506 	lcall	__gptrget
      004633 F7               [12] 5507 	mov	@r1,a
      004634 A3               [24] 5508 	inc	dptr
      004635 12 53 AB         [24] 5509 	lcall	__gptrget
      004638 09               [12] 5510 	inc	r1
      004639 F7               [12] 5511 	mov	@r1,a
      00463A A3               [24] 5512 	inc	dptr
      00463B 12 53 AB         [24] 5513 	lcall	__gptrget
      00463E 09               [12] 5514 	inc	r1
      00463F F7               [12] 5515 	mov	@r1,a
      004640 A3               [24] 5516 	inc	dptr
      004641 12 53 AB         [24] 5517 	lcall	__gptrget
      004644 09               [12] 5518 	inc	r1
      004645 F7               [12] 5519 	mov	@r1,a
                                   5520 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      004646 E5 08            [12] 5521 	mov	a,_bp
      004648 24 0B            [12] 5522 	add	a,#0x0b
      00464A F8               [12] 5523 	mov	r0,a
      00464B E4               [12] 5524 	clr	a
      00464C F6               [12] 5525 	mov	@r0,a
      00464D 08               [12] 5526 	inc	r0
      00464E F6               [12] 5527 	mov	@r0,a
      00464F 08               [12] 5528 	inc	r0
      004650 F6               [12] 5529 	mov	@r0,a
      004651 08               [12] 5530 	inc	r0
      004652 76 80            [12] 5531 	mov	@r0,#0x80
      004654                       5532 00145$:
                                   5533 ;	calc.c:57: (void)putchar((d & mask) ? (int)'1' : (int)'0');
      004654 E5 08            [12] 5534 	mov	a,_bp
      004656 24 07            [12] 5535 	add	a,#0x07
      004658 F8               [12] 5536 	mov	r0,a
      004659 86 04            [24] 5537 	mov	ar4,@r0
      00465B 08               [12] 5538 	inc	r0
      00465C 86 05            [24] 5539 	mov	ar5,@r0
      00465E 08               [12] 5540 	inc	r0
      00465F 86 06            [24] 5541 	mov	ar6,@r0
      004661 08               [12] 5542 	inc	r0
      004662 86 07            [24] 5543 	mov	ar7,@r0
      004664 E5 08            [12] 5544 	mov	a,_bp
      004666 24 0B            [12] 5545 	add	a,#0x0b
      004668 F8               [12] 5546 	mov	r0,a
      004669 E6               [12] 5547 	mov	a,@r0
      00466A 52 04            [12] 5548 	anl	ar4,a
      00466C 08               [12] 5549 	inc	r0
      00466D E6               [12] 5550 	mov	a,@r0
      00466E 52 05            [12] 5551 	anl	ar5,a
      004670 08               [12] 5552 	inc	r0
      004671 E6               [12] 5553 	mov	a,@r0
      004672 52 06            [12] 5554 	anl	ar6,a
      004674 08               [12] 5555 	inc	r0
      004675 E6               [12] 5556 	mov	a,@r0
      004676 52 07            [12] 5557 	anl	ar7,a
      004678 EC               [12] 5558 	mov	a,r4
      004679 4D               [12] 5559 	orl	a,r5
      00467A 4E               [12] 5560 	orl	a,r6
      00467B 4F               [12] 5561 	orl	a,r7
      00467C 60 06            [24] 5562 	jz	00212$
      00467E 7E 31            [12] 5563 	mov	r6,#0x31
      004680 7F 00            [12] 5564 	mov	r7,#0x00
      004682 80 04            [24] 5565 	sjmp	00213$
      004684                       5566 00212$:
      004684 7E 30            [12] 5567 	mov	r6,#0x30
      004686 7F 00            [12] 5568 	mov	r7,#0x00
      004688                       5569 00213$:
      004688 8E 82            [24] 5570 	mov	dpl,r6
      00468A 8F 83            [24] 5571 	mov	dph,r7
      00468C 12 29 C0         [24] 5572 	lcall	_putchar
                                   5573 ;	calc.c:56: for (mask = 0x80000000lu; mask; mask >>= 1)
      00468F E5 08            [12] 5574 	mov	a,_bp
      004691 24 0B            [12] 5575 	add	a,#0x0b
      004693 F8               [12] 5576 	mov	r0,a
      004694 08               [12] 5577 	inc	r0
      004695 08               [12] 5578 	inc	r0
      004696 08               [12] 5579 	inc	r0
      004697 E6               [12] 5580 	mov	a,@r0
      004698 C3               [12] 5581 	clr	c
      004699 13               [12] 5582 	rrc	a
      00469A F6               [12] 5583 	mov	@r0,a
      00469B 18               [12] 5584 	dec	r0
      00469C E6               [12] 5585 	mov	a,@r0
      00469D 13               [12] 5586 	rrc	a
      00469E F6               [12] 5587 	mov	@r0,a
      00469F 18               [12] 5588 	dec	r0
      0046A0 E6               [12] 5589 	mov	a,@r0
      0046A1 13               [12] 5590 	rrc	a
      0046A2 F6               [12] 5591 	mov	@r0,a
      0046A3 18               [12] 5592 	dec	r0
      0046A4 E6               [12] 5593 	mov	a,@r0
      0046A5 13               [12] 5594 	rrc	a
      0046A6 F6               [12] 5595 	mov	@r0,a
      0046A7 E5 08            [12] 5596 	mov	a,_bp
      0046A9 24 0B            [12] 5597 	add	a,#0x0b
      0046AB F8               [12] 5598 	mov	r0,a
      0046AC E6               [12] 5599 	mov	a,@r0
      0046AD 08               [12] 5600 	inc	r0
      0046AE 46               [12] 5601 	orl	a,@r0
      0046AF 08               [12] 5602 	inc	r0
      0046B0 46               [12] 5603 	orl	a,@r0
      0046B1 08               [12] 5604 	inc	r0
      0046B2 46               [12] 5605 	orl	a,@r0
      0046B3 70 9F            [24] 5606 	jnz	00145$
                                   5607 ;	calc.c:339: printf(", acc_valid = %d\r\n\r\n", (int)ctx->acc_valid);
      0046B5 E5 08            [12] 5608 	mov	a,_bp
      0046B7 24 04            [12] 5609 	add	a,#0x04
      0046B9 F8               [12] 5610 	mov	r0,a
      0046BA 74 06            [12] 5611 	mov	a,#0x06
      0046BC 26               [12] 5612 	add	a,@r0
      0046BD FD               [12] 5613 	mov	r5,a
      0046BE E4               [12] 5614 	clr	a
      0046BF 08               [12] 5615 	inc	r0
      0046C0 36               [12] 5616 	addc	a,@r0
      0046C1 FE               [12] 5617 	mov	r6,a
      0046C2 08               [12] 5618 	inc	r0
      0046C3 86 07            [24] 5619 	mov	ar7,@r0
      0046C5 8D 82            [24] 5620 	mov	dpl,r5
      0046C7 8E 83            [24] 5621 	mov	dph,r6
      0046C9 8F F0            [24] 5622 	mov	b,r7
      0046CB 12 53 AB         [24] 5623 	lcall	__gptrget
      0046CE FD               [12] 5624 	mov	r5,a
      0046CF 7F 00            [12] 5625 	mov	r7,#0x00
      0046D1 C0 05            [24] 5626 	push	ar5
      0046D3 C0 07            [24] 5627 	push	ar7
      0046D5 74 BB            [12] 5628 	mov	a,#___str_13
      0046D7 C0 E0            [24] 5629 	push	acc
      0046D9 74 6C            [12] 5630 	mov	a,#(___str_13 >> 8)
      0046DB C0 E0            [24] 5631 	push	acc
      0046DD 74 80            [12] 5632 	mov	a,#0x80
      0046DF C0 E0            [24] 5633 	push	acc
      0046E1 12 53 72         [24] 5634 	lcall	_printf
      0046E4 E5 81            [12] 5635 	mov	a,sp
      0046E6 24 FB            [12] 5636 	add	a,#0xfb
      0046E8 F5 81            [12] 5637 	mov	sp,a
                                   5638 ;	calc.c:340: printstr("HhOo\tbase 16 10 8 2\r\n");
      0046EA 7D D0            [12] 5639 	mov	r5,#___str_14
      0046EC 7E 6C            [12] 5640 	mov	r6,#(___str_14 >> 8)
      0046EE 7F 80            [12] 5641 	mov	r7,#0x80
                                   5642 ;	calc.c:50: return;
      0046F0                       5643 00148$:
                                   5644 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0046F0 8D 82            [24] 5645 	mov	dpl,r5
      0046F2 8E 83            [24] 5646 	mov	dph,r6
      0046F4 8F F0            [24] 5647 	mov	b,r7
      0046F6 12 53 AB         [24] 5648 	lcall	__gptrget
      0046F9 FC               [12] 5649 	mov	r4,a
      0046FA 60 10            [24] 5650 	jz	00104$
      0046FC 7B 00            [12] 5651 	mov	r3,#0x00
      0046FE 8C 82            [24] 5652 	mov	dpl,r4
      004700 8B 83            [24] 5653 	mov	dph,r3
      004702 12 29 C0         [24] 5654 	lcall	_putchar
      004705 0D               [12] 5655 	inc	r5
                                   5656 ;	calc.c:340: printstr("HhOo\tbase 16 10 8 2\r\n");
      004706 BD 00 E7         [24] 5657 	cjne	r5,#0x00,00148$
      004709 0E               [12] 5658 	inc	r6
      00470A 80 E4            [24] 5659 	sjmp	00148$
      00470C                       5660 00104$:
                                   5661 ;	calc.c:341: printstr("p\tpeek top\r\n");
      00470C 7D E6            [12] 5662 	mov	r5,#___str_15
      00470E 7E 6C            [12] 5663 	mov	r6,#(___str_15 >> 8)
      004710 7F 80            [12] 5664 	mov	r7,#0x80
                                   5665 ;	calc.c:50: return;
      004712                       5666 00151$:
                                   5667 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004712 8D 82            [24] 5668 	mov	dpl,r5
      004714 8E 83            [24] 5669 	mov	dph,r6
      004716 8F F0            [24] 5670 	mov	b,r7
      004718 12 53 AB         [24] 5671 	lcall	__gptrget
      00471B FC               [12] 5672 	mov	r4,a
      00471C 60 10            [24] 5673 	jz	00106$
      00471E 7B 00            [12] 5674 	mov	r3,#0x00
      004720 8C 82            [24] 5675 	mov	dpl,r4
      004722 8B 83            [24] 5676 	mov	dph,r3
      004724 12 29 C0         [24] 5677 	lcall	_putchar
      004727 0D               [12] 5678 	inc	r5
                                   5679 ;	calc.c:341: printstr("p\tpeek top\r\n");
      004728 BD 00 E7         [24] 5680 	cjne	r5,#0x00,00151$
      00472B 0E               [12] 5681 	inc	r6
      00472C 80 E4            [24] 5682 	sjmp	00151$
      00472E                       5683 00106$:
                                   5684 ;	calc.c:342: printstr("P\tprint stack\r\n");
      00472E 7D F3            [12] 5685 	mov	r5,#___str_16
      004730 7E 6C            [12] 5686 	mov	r6,#(___str_16 >> 8)
      004732 7F 80            [12] 5687 	mov	r7,#0x80
                                   5688 ;	calc.c:50: return;
      004734                       5689 00154$:
                                   5690 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004734 8D 82            [24] 5691 	mov	dpl,r5
      004736 8E 83            [24] 5692 	mov	dph,r6
      004738 8F F0            [24] 5693 	mov	b,r7
      00473A 12 53 AB         [24] 5694 	lcall	__gptrget
      00473D FC               [12] 5695 	mov	r4,a
      00473E 60 10            [24] 5696 	jz	00108$
      004740 7B 00            [12] 5697 	mov	r3,#0x00
      004742 8C 82            [24] 5698 	mov	dpl,r4
      004744 8B 83            [24] 5699 	mov	dph,r3
      004746 12 29 C0         [24] 5700 	lcall	_putchar
      004749 0D               [12] 5701 	inc	r5
                                   5702 ;	calc.c:342: printstr("P\tprint stack\r\n");
      00474A BD 00 E7         [24] 5703 	cjne	r5,#0x00,00154$
      00474D 0E               [12] 5704 	inc	r6
      00474E 80 E4            [24] 5705 	sjmp	00154$
      004750                       5706 00108$:
                                   5707 ;	calc.c:343: printstr("v.\tpop top\r\n");
      004750 7D 03            [12] 5708 	mov	r5,#___str_17
      004752 7E 6D            [12] 5709 	mov	r6,#(___str_17 >> 8)
      004754 7F 80            [12] 5710 	mov	r7,#0x80
                                   5711 ;	calc.c:50: return;
      004756                       5712 00157$:
                                   5713 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004756 8D 82            [24] 5714 	mov	dpl,r5
      004758 8E 83            [24] 5715 	mov	dph,r6
      00475A 8F F0            [24] 5716 	mov	b,r7
      00475C 12 53 AB         [24] 5717 	lcall	__gptrget
      00475F FC               [12] 5718 	mov	r4,a
      004760 60 10            [24] 5719 	jz	00110$
      004762 7B 00            [12] 5720 	mov	r3,#0x00
      004764 8C 82            [24] 5721 	mov	dpl,r4
      004766 8B 83            [24] 5722 	mov	dph,r3
      004768 12 29 C0         [24] 5723 	lcall	_putchar
      00476B 0D               [12] 5724 	inc	r5
                                   5725 ;	calc.c:343: printstr("v.\tpop top\r\n");
      00476C BD 00 E7         [24] 5726 	cjne	r5,#0x00,00157$
      00476F 0E               [12] 5727 	inc	r6
      004770 80 E4            [24] 5728 	sjmp	00157$
      004772                       5729 00110$:
                                   5730 ;	calc.c:344: printstr("V\tpop all\r\n");
      004772 7D 10            [12] 5731 	mov	r5,#___str_18
      004774 7E 6D            [12] 5732 	mov	r6,#(___str_18 >> 8)
      004776 7F 80            [12] 5733 	mov	r7,#0x80
                                   5734 ;	calc.c:50: return;
      004778                       5735 00160$:
                                   5736 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004778 8D 82            [24] 5737 	mov	dpl,r5
      00477A 8E 83            [24] 5738 	mov	dph,r6
      00477C 8F F0            [24] 5739 	mov	b,r7
      00477E 12 53 AB         [24] 5740 	lcall	__gptrget
      004781 FC               [12] 5741 	mov	r4,a
      004782 60 10            [24] 5742 	jz	00112$
      004784 7B 00            [12] 5743 	mov	r3,#0x00
      004786 8C 82            [24] 5744 	mov	dpl,r4
      004788 8B 83            [24] 5745 	mov	dph,r3
      00478A 12 29 C0         [24] 5746 	lcall	_putchar
      00478D 0D               [12] 5747 	inc	r5
                                   5748 ;	calc.c:344: printstr("V\tpop all\r\n");
      00478E BD 00 E7         [24] 5749 	cjne	r5,#0x00,00160$
      004791 0E               [12] 5750 	inc	r6
      004792 80 E4            [24] 5751 	sjmp	00160$
      004794                       5752 00112$:
                                   5753 ;	calc.c:345: printstr("i\treset acc\r\n");
      004794 7D 1C            [12] 5754 	mov	r5,#___str_19
      004796 7E 6D            [12] 5755 	mov	r6,#(___str_19 >> 8)
      004798 7F 80            [12] 5756 	mov	r7,#0x80
                                   5757 ;	calc.c:50: return;
      00479A                       5758 00163$:
                                   5759 ;	calc.c:48: for (; *s; s++) putchar(*s);
      00479A 8D 82            [24] 5760 	mov	dpl,r5
      00479C 8E 83            [24] 5761 	mov	dph,r6
      00479E 8F F0            [24] 5762 	mov	b,r7
      0047A0 12 53 AB         [24] 5763 	lcall	__gptrget
      0047A3 FC               [12] 5764 	mov	r4,a
      0047A4 60 10            [24] 5765 	jz	00114$
      0047A6 7B 00            [12] 5766 	mov	r3,#0x00
      0047A8 8C 82            [24] 5767 	mov	dpl,r4
      0047AA 8B 83            [24] 5768 	mov	dph,r3
      0047AC 12 29 C0         [24] 5769 	lcall	_putchar
      0047AF 0D               [12] 5770 	inc	r5
                                   5771 ;	calc.c:345: printstr("i\treset acc\r\n");
      0047B0 BD 00 E7         [24] 5772 	cjne	r5,#0x00,00163$
      0047B3 0E               [12] 5773 	inc	r6
      0047B4 80 E4            [24] 5774 	sjmp	00163$
      0047B6                       5775 00114$:
                                   5776 ;	calc.c:346: printstr("I\treset and discard acc\r\n");
      0047B6 7D 2A            [12] 5777 	mov	r5,#___str_20
      0047B8 7E 6D            [12] 5778 	mov	r6,#(___str_20 >> 8)
      0047BA 7F 80            [12] 5779 	mov	r7,#0x80
                                   5780 ;	calc.c:50: return;
      0047BC                       5781 00166$:
                                   5782 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0047BC 8D 82            [24] 5783 	mov	dpl,r5
      0047BE 8E 83            [24] 5784 	mov	dph,r6
      0047C0 8F F0            [24] 5785 	mov	b,r7
      0047C2 12 53 AB         [24] 5786 	lcall	__gptrget
      0047C5 FC               [12] 5787 	mov	r4,a
      0047C6 60 10            [24] 5788 	jz	00116$
      0047C8 7B 00            [12] 5789 	mov	r3,#0x00
      0047CA 8C 82            [24] 5790 	mov	dpl,r4
      0047CC 8B 83            [24] 5791 	mov	dph,r3
      0047CE 12 29 C0         [24] 5792 	lcall	_putchar
      0047D1 0D               [12] 5793 	inc	r5
                                   5794 ;	calc.c:346: printstr("I\treset and discard acc\r\n");
      0047D2 BD 00 E7         [24] 5795 	cjne	r5,#0x00,00166$
      0047D5 0E               [12] 5796 	inc	r6
      0047D6 80 E4            [24] 5797 	sjmp	00166$
      0047D8                       5798 00116$:
                                   5799 ;	calc.c:347: printstr("x\texchange top 2\r\n");
      0047D8 7D 44            [12] 5800 	mov	r5,#___str_21
      0047DA 7E 6D            [12] 5801 	mov	r6,#(___str_21 >> 8)
      0047DC 7F 80            [12] 5802 	mov	r7,#0x80
                                   5803 ;	calc.c:50: return;
      0047DE                       5804 00169$:
                                   5805 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0047DE 8D 82            [24] 5806 	mov	dpl,r5
      0047E0 8E 83            [24] 5807 	mov	dph,r6
      0047E2 8F F0            [24] 5808 	mov	b,r7
      0047E4 12 53 AB         [24] 5809 	lcall	__gptrget
      0047E7 FC               [12] 5810 	mov	r4,a
      0047E8 60 10            [24] 5811 	jz	00118$
      0047EA 7B 00            [12] 5812 	mov	r3,#0x00
      0047EC 8C 82            [24] 5813 	mov	dpl,r4
      0047EE 8B 83            [24] 5814 	mov	dph,r3
      0047F0 12 29 C0         [24] 5815 	lcall	_putchar
      0047F3 0D               [12] 5816 	inc	r5
                                   5817 ;	calc.c:347: printstr("x\texchange top 2\r\n");
      0047F4 BD 00 E7         [24] 5818 	cjne	r5,#0x00,00169$
      0047F7 0E               [12] 5819 	inc	r6
      0047F8 80 E4            [24] 5820 	sjmp	00169$
      0047FA                       5821 00118$:
                                   5822 ;	calc.c:348: printstr("+\tadd top 2\r\n");
      0047FA 7D 57            [12] 5823 	mov	r5,#___str_22
      0047FC 7E 6D            [12] 5824 	mov	r6,#(___str_22 >> 8)
      0047FE 7F 80            [12] 5825 	mov	r7,#0x80
                                   5826 ;	calc.c:50: return;
      004800                       5827 00172$:
                                   5828 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004800 8D 82            [24] 5829 	mov	dpl,r5
      004802 8E 83            [24] 5830 	mov	dph,r6
      004804 8F F0            [24] 5831 	mov	b,r7
      004806 12 53 AB         [24] 5832 	lcall	__gptrget
      004809 FC               [12] 5833 	mov	r4,a
      00480A 60 10            [24] 5834 	jz	00120$
      00480C 7B 00            [12] 5835 	mov	r3,#0x00
      00480E 8C 82            [24] 5836 	mov	dpl,r4
      004810 8B 83            [24] 5837 	mov	dph,r3
      004812 12 29 C0         [24] 5838 	lcall	_putchar
      004815 0D               [12] 5839 	inc	r5
                                   5840 ;	calc.c:348: printstr("+\tadd top 2\r\n");
      004816 BD 00 E7         [24] 5841 	cjne	r5,#0x00,00172$
      004819 0E               [12] 5842 	inc	r6
      00481A 80 E4            [24] 5843 	sjmp	00172$
      00481C                       5844 00120$:
                                   5845 ;	calc.c:349: printstr("-\tsubtract top 2\r\n");
      00481C 7D 65            [12] 5846 	mov	r5,#___str_23
      00481E 7E 6D            [12] 5847 	mov	r6,#(___str_23 >> 8)
      004820 7F 80            [12] 5848 	mov	r7,#0x80
                                   5849 ;	calc.c:50: return;
      004822                       5850 00175$:
                                   5851 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004822 8D 82            [24] 5852 	mov	dpl,r5
      004824 8E 83            [24] 5853 	mov	dph,r6
      004826 8F F0            [24] 5854 	mov	b,r7
      004828 12 53 AB         [24] 5855 	lcall	__gptrget
      00482B FC               [12] 5856 	mov	r4,a
      00482C 60 10            [24] 5857 	jz	00122$
      00482E 7B 00            [12] 5858 	mov	r3,#0x00
      004830 8C 82            [24] 5859 	mov	dpl,r4
      004832 8B 83            [24] 5860 	mov	dph,r3
      004834 12 29 C0         [24] 5861 	lcall	_putchar
      004837 0D               [12] 5862 	inc	r5
                                   5863 ;	calc.c:349: printstr("-\tsubtract top 2\r\n");
      004838 BD 00 E7         [24] 5864 	cjne	r5,#0x00,00175$
      00483B 0E               [12] 5865 	inc	r6
      00483C 80 E4            [24] 5866 	sjmp	00175$
      00483E                       5867 00122$:
                                   5868 ;	calc.c:350: printstr("*\tmultiply top 2\r\n");
      00483E 7D 78            [12] 5869 	mov	r5,#___str_24
      004840 7E 6D            [12] 5870 	mov	r6,#(___str_24 >> 8)
      004842 7F 80            [12] 5871 	mov	r7,#0x80
                                   5872 ;	calc.c:50: return;
      004844                       5873 00178$:
                                   5874 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004844 8D 82            [24] 5875 	mov	dpl,r5
      004846 8E 83            [24] 5876 	mov	dph,r6
      004848 8F F0            [24] 5877 	mov	b,r7
      00484A 12 53 AB         [24] 5878 	lcall	__gptrget
      00484D FC               [12] 5879 	mov	r4,a
      00484E 60 10            [24] 5880 	jz	00124$
      004850 7B 00            [12] 5881 	mov	r3,#0x00
      004852 8C 82            [24] 5882 	mov	dpl,r4
      004854 8B 83            [24] 5883 	mov	dph,r3
      004856 12 29 C0         [24] 5884 	lcall	_putchar
      004859 0D               [12] 5885 	inc	r5
                                   5886 ;	calc.c:350: printstr("*\tmultiply top 2\r\n");
      00485A BD 00 E7         [24] 5887 	cjne	r5,#0x00,00178$
      00485D 0E               [12] 5888 	inc	r6
      00485E 80 E4            [24] 5889 	sjmp	00178$
      004860                       5890 00124$:
                                   5891 ;	calc.c:351: printstr("/\tdivide top 2\r\n");
      004860 7D 8B            [12] 5892 	mov	r5,#___str_25
      004862 7E 6D            [12] 5893 	mov	r6,#(___str_25 >> 8)
      004864 7F 80            [12] 5894 	mov	r7,#0x80
                                   5895 ;	calc.c:50: return;
      004866                       5896 00181$:
                                   5897 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004866 8D 82            [24] 5898 	mov	dpl,r5
      004868 8E 83            [24] 5899 	mov	dph,r6
      00486A 8F F0            [24] 5900 	mov	b,r7
      00486C 12 53 AB         [24] 5901 	lcall	__gptrget
      00486F FC               [12] 5902 	mov	r4,a
      004870 60 10            [24] 5903 	jz	00126$
      004872 7B 00            [12] 5904 	mov	r3,#0x00
      004874 8C 82            [24] 5905 	mov	dpl,r4
      004876 8B 83            [24] 5906 	mov	dph,r3
      004878 12 29 C0         [24] 5907 	lcall	_putchar
      00487B 0D               [12] 5908 	inc	r5
                                   5909 ;	calc.c:351: printstr("/\tdivide top 2\r\n");
      00487C BD 00 E7         [24] 5910 	cjne	r5,#0x00,00181$
      00487F 0E               [12] 5911 	inc	r6
      004880 80 E4            [24] 5912 	sjmp	00181$
      004882                       5913 00126$:
                                   5914 ;	calc.c:352: printstr("\\\tdivide top 2 unsigned\r\n");	
      004882 7D 9C            [12] 5915 	mov	r5,#___str_26
      004884 7E 6D            [12] 5916 	mov	r6,#(___str_26 >> 8)
      004886 7F 80            [12] 5917 	mov	r7,#0x80
                                   5918 ;	calc.c:50: return;
      004888                       5919 00184$:
                                   5920 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004888 8D 82            [24] 5921 	mov	dpl,r5
      00488A 8E 83            [24] 5922 	mov	dph,r6
      00488C 8F F0            [24] 5923 	mov	b,r7
      00488E 12 53 AB         [24] 5924 	lcall	__gptrget
      004891 FC               [12] 5925 	mov	r4,a
      004892 60 10            [24] 5926 	jz	00128$
      004894 7B 00            [12] 5927 	mov	r3,#0x00
      004896 8C 82            [24] 5928 	mov	dpl,r4
      004898 8B 83            [24] 5929 	mov	dph,r3
      00489A 12 29 C0         [24] 5930 	lcall	_putchar
      00489D 0D               [12] 5931 	inc	r5
                                   5932 ;	calc.c:352: printstr("\\\tdivide top 2 unsigned\r\n");	
      00489E BD 00 E7         [24] 5933 	cjne	r5,#0x00,00184$
      0048A1 0E               [12] 5934 	inc	r6
      0048A2 80 E4            [24] 5935 	sjmp	00184$
      0048A4                       5936 00128$:
                                   5937 ;	calc.c:353: printstr("%\tmodulus top 2\r\n");
      0048A4 7D B6            [12] 5938 	mov	r5,#___str_27
      0048A6 7E 6D            [12] 5939 	mov	r6,#(___str_27 >> 8)
      0048A8 7F 80            [12] 5940 	mov	r7,#0x80
                                   5941 ;	calc.c:50: return;
      0048AA                       5942 00187$:
                                   5943 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0048AA 8D 82            [24] 5944 	mov	dpl,r5
      0048AC 8E 83            [24] 5945 	mov	dph,r6
      0048AE 8F F0            [24] 5946 	mov	b,r7
      0048B0 12 53 AB         [24] 5947 	lcall	__gptrget
      0048B3 FC               [12] 5948 	mov	r4,a
      0048B4 60 10            [24] 5949 	jz	00130$
      0048B6 7B 00            [12] 5950 	mov	r3,#0x00
      0048B8 8C 82            [24] 5951 	mov	dpl,r4
      0048BA 8B 83            [24] 5952 	mov	dph,r3
      0048BC 12 29 C0         [24] 5953 	lcall	_putchar
      0048BF 0D               [12] 5954 	inc	r5
                                   5955 ;	calc.c:353: printstr("%\tmodulus top 2\r\n");
      0048C0 BD 00 E7         [24] 5956 	cjne	r5,#0x00,00187$
      0048C3 0E               [12] 5957 	inc	r6
      0048C4 80 E4            [24] 5958 	sjmp	00187$
      0048C6                       5959 00130$:
                                   5960 ;	calc.c:354: printstr("#\tmodulus top 2 unsigned\r\n");
      0048C6 7D C8            [12] 5961 	mov	r5,#___str_28
      0048C8 7E 6D            [12] 5962 	mov	r6,#(___str_28 >> 8)
      0048CA 7F 80            [12] 5963 	mov	r7,#0x80
                                   5964 ;	calc.c:50: return;
      0048CC                       5965 00190$:
                                   5966 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0048CC 8D 82            [24] 5967 	mov	dpl,r5
      0048CE 8E 83            [24] 5968 	mov	dph,r6
      0048D0 8F F0            [24] 5969 	mov	b,r7
      0048D2 12 53 AB         [24] 5970 	lcall	__gptrget
      0048D5 FC               [12] 5971 	mov	r4,a
      0048D6 60 10            [24] 5972 	jz	00132$
      0048D8 7B 00            [12] 5973 	mov	r3,#0x00
      0048DA 8C 82            [24] 5974 	mov	dpl,r4
      0048DC 8B 83            [24] 5975 	mov	dph,r3
      0048DE 12 29 C0         [24] 5976 	lcall	_putchar
      0048E1 0D               [12] 5977 	inc	r5
                                   5978 ;	calc.c:354: printstr("#\tmodulus top 2 unsigned\r\n");
      0048E2 BD 00 E7         [24] 5979 	cjne	r5,#0x00,00190$
      0048E5 0E               [12] 5980 	inc	r6
      0048E6 80 E4            [24] 5981 	sjmp	00190$
      0048E8                       5982 00132$:
                                   5983 ;	calc.c:355: printstr("&\tand top 2\r\n");
      0048E8 7D E3            [12] 5984 	mov	r5,#___str_29
      0048EA 7E 6D            [12] 5985 	mov	r6,#(___str_29 >> 8)
      0048EC 7F 80            [12] 5986 	mov	r7,#0x80
                                   5987 ;	calc.c:50: return;
      0048EE                       5988 00193$:
                                   5989 ;	calc.c:48: for (; *s; s++) putchar(*s);
      0048EE 8D 82            [24] 5990 	mov	dpl,r5
      0048F0 8E 83            [24] 5991 	mov	dph,r6
      0048F2 8F F0            [24] 5992 	mov	b,r7
      0048F4 12 53 AB         [24] 5993 	lcall	__gptrget
      0048F7 FC               [12] 5994 	mov	r4,a
      0048F8 60 10            [24] 5995 	jz	00134$
      0048FA 7B 00            [12] 5996 	mov	r3,#0x00
      0048FC 8C 82            [24] 5997 	mov	dpl,r4
      0048FE 8B 83            [24] 5998 	mov	dph,r3
      004900 12 29 C0         [24] 5999 	lcall	_putchar
      004903 0D               [12] 6000 	inc	r5
                                   6001 ;	calc.c:355: printstr("&\tand top 2\r\n");
      004904 BD 00 E7         [24] 6002 	cjne	r5,#0x00,00193$
      004907 0E               [12] 6003 	inc	r6
      004908 80 E4            [24] 6004 	sjmp	00193$
      00490A                       6005 00134$:
                                   6006 ;	calc.c:356: printstr("|\tor top 2\r\n");
      00490A 7D F1            [12] 6007 	mov	r5,#___str_30
      00490C 7E 6D            [12] 6008 	mov	r6,#(___str_30 >> 8)
      00490E 7F 80            [12] 6009 	mov	r7,#0x80
                                   6010 ;	calc.c:50: return;
      004910                       6011 00196$:
                                   6012 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004910 8D 82            [24] 6013 	mov	dpl,r5
      004912 8E 83            [24] 6014 	mov	dph,r6
      004914 8F F0            [24] 6015 	mov	b,r7
      004916 12 53 AB         [24] 6016 	lcall	__gptrget
      004919 FC               [12] 6017 	mov	r4,a
      00491A 60 10            [24] 6018 	jz	00136$
      00491C 7B 00            [12] 6019 	mov	r3,#0x00
      00491E 8C 82            [24] 6020 	mov	dpl,r4
      004920 8B 83            [24] 6021 	mov	dph,r3
      004922 12 29 C0         [24] 6022 	lcall	_putchar
      004925 0D               [12] 6023 	inc	r5
                                   6024 ;	calc.c:356: printstr("|\tor top 2\r\n");
      004926 BD 00 E7         [24] 6025 	cjne	r5,#0x00,00196$
      004929 0E               [12] 6026 	inc	r6
      00492A 80 E4            [24] 6027 	sjmp	00196$
      00492C                       6028 00136$:
                                   6029 ;	calc.c:357: printstr("^\txor top 2\r\n");
      00492C 7D FE            [12] 6030 	mov	r5,#___str_31
      00492E 7E 6D            [12] 6031 	mov	r6,#(___str_31 >> 8)
      004930 7F 80            [12] 6032 	mov	r7,#0x80
                                   6033 ;	calc.c:50: return;
      004932                       6034 00199$:
                                   6035 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004932 8D 82            [24] 6036 	mov	dpl,r5
      004934 8E 83            [24] 6037 	mov	dph,r6
      004936 8F F0            [24] 6038 	mov	b,r7
      004938 12 53 AB         [24] 6039 	lcall	__gptrget
      00493B FC               [12] 6040 	mov	r4,a
      00493C 60 10            [24] 6041 	jz	00138$
      00493E 7B 00            [12] 6042 	mov	r3,#0x00
      004940 8C 82            [24] 6043 	mov	dpl,r4
      004942 8B 83            [24] 6044 	mov	dph,r3
      004944 12 29 C0         [24] 6045 	lcall	_putchar
      004947 0D               [12] 6046 	inc	r5
                                   6047 ;	calc.c:357: printstr("^\txor top 2\r\n");
      004948 BD 00 E7         [24] 6048 	cjne	r5,#0x00,00199$
      00494B 0E               [12] 6049 	inc	r6
      00494C 80 E4            [24] 6050 	sjmp	00199$
      00494E                       6051 00138$:
                                   6052 ;	calc.c:358: printstr("~\tbitwise not top\r\n");
      00494E 7D 0C            [12] 6053 	mov	r5,#___str_32
      004950 7E 6E            [12] 6054 	mov	r6,#(___str_32 >> 8)
      004952 7F 80            [12] 6055 	mov	r7,#0x80
                                   6056 ;	calc.c:50: return;
      004954                       6057 00202$:
                                   6058 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004954 8D 82            [24] 6059 	mov	dpl,r5
      004956 8E 83            [24] 6060 	mov	dph,r6
      004958 8F F0            [24] 6061 	mov	b,r7
      00495A 12 53 AB         [24] 6062 	lcall	__gptrget
      00495D FC               [12] 6063 	mov	r4,a
      00495E 60 10            [24] 6064 	jz	00140$
      004960 7B 00            [12] 6065 	mov	r3,#0x00
      004962 8C 82            [24] 6066 	mov	dpl,r4
      004964 8B 83            [24] 6067 	mov	dph,r3
      004966 12 29 C0         [24] 6068 	lcall	_putchar
      004969 0D               [12] 6069 	inc	r5
                                   6070 ;	calc.c:358: printstr("~\tbitwise not top\r\n");
      00496A BD 00 E7         [24] 6071 	cjne	r5,#0x00,00202$
      00496D 0E               [12] 6072 	inc	r6
      00496E 80 E4            [24] 6073 	sjmp	00202$
      004970                       6074 00140$:
                                   6075 ;	calc.c:359: printstr("?\thelp\r\n");
      004970 7D 20            [12] 6076 	mov	r5,#___str_33
      004972 7E 6E            [12] 6077 	mov	r6,#(___str_33 >> 8)
      004974 7F 80            [12] 6078 	mov	r7,#0x80
                                   6079 ;	calc.c:50: return;
      004976                       6080 00205$:
                                   6081 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004976 8D 82            [24] 6082 	mov	dpl,r5
      004978 8E 83            [24] 6083 	mov	dph,r6
      00497A 8F F0            [24] 6084 	mov	b,r7
      00497C 12 53 AB         [24] 6085 	lcall	__gptrget
      00497F FC               [12] 6086 	mov	r4,a
      004980 60 10            [24] 6087 	jz	00142$
      004982 7B 00            [12] 6088 	mov	r3,#0x00
      004984 8C 82            [24] 6089 	mov	dpl,r4
      004986 8B 83            [24] 6090 	mov	dph,r3
      004988 12 29 C0         [24] 6091 	lcall	_putchar
      00498B 0D               [12] 6092 	inc	r5
                                   6093 ;	calc.c:359: printstr("?\thelp\r\n");
      00498C BD 00 E7         [24] 6094 	cjne	r5,#0x00,00205$
      00498F 0E               [12] 6095 	inc	r6
      004990 80 E4            [24] 6096 	sjmp	00205$
      004992                       6097 00142$:
                                   6098 ;	calc.c:360: printstr("q\tquit\r\n");
      004992 7D 29            [12] 6099 	mov	r5,#___str_34
      004994 7E 6E            [12] 6100 	mov	r6,#(___str_34 >> 8)
      004996 7F 80            [12] 6101 	mov	r7,#0x80
                                   6102 ;	calc.c:50: return;
      004998                       6103 00208$:
                                   6104 ;	calc.c:48: for (; *s; s++) putchar(*s);
      004998 8D 82            [24] 6105 	mov	dpl,r5
      00499A 8E 83            [24] 6106 	mov	dph,r6
      00499C 8F F0            [24] 6107 	mov	b,r7
      00499E 12 53 AB         [24] 6108 	lcall	__gptrget
      0049A1 FC               [12] 6109 	mov	r4,a
      0049A2 60 10            [24] 6110 	jz	00144$
      0049A4 7B 00            [12] 6111 	mov	r3,#0x00
      0049A6 8C 82            [24] 6112 	mov	dpl,r4
      0049A8 8B 83            [24] 6113 	mov	dph,r3
      0049AA 12 29 C0         [24] 6114 	lcall	_putchar
      0049AD 0D               [12] 6115 	inc	r5
                                   6116 ;	calc.c:360: printstr("q\tquit\r\n");
      0049AE BD 00 E7         [24] 6117 	cjne	r5,#0x00,00208$
      0049B1 0E               [12] 6118 	inc	r6
      0049B2 80 E4            [24] 6119 	sjmp	00208$
      0049B4                       6120 00144$:
                                   6121 ;	calc.c:362: return 1;
      0049B4 90 00 01         [24] 6122 	mov	dptr,#0x0001
                                   6123 ;	calc.c:363: }
      0049B7 85 08 81         [24] 6124 	mov	sp,_bp
      0049BA D0 08            [24] 6125 	pop	_bp
      0049BC 22               [24] 6126 	ret
                                   6127 ;------------------------------------------------------------
                                   6128 ;Allocation info for local variables in function 'main'
                                   6129 ;------------------------------------------------------------
                                   6130 ;input                     Allocated to registers r6 r7 
                                   6131 ;------------------------------------------------------------
                                   6132 ;	calc.c:392: void main(void) {
                                   6133 ;	-----------------------------------------
                                   6134 ;	 function main
                                   6135 ;	-----------------------------------------
      0049BD                       6136 _main:
                                   6137 ;	calc.c:395: c.base = 10;
      0049BD 90 80 0C         [24] 6138 	mov	dptr,#_c
      0049C0 74 0A            [12] 6139 	mov	a,#0x0a
      0049C2 F0               [24] 6140 	movx	@dptr,a
      0049C3 E4               [12] 6141 	clr	a
      0049C4 A3               [24] 6142 	inc	dptr
      0049C5 F0               [24] 6143 	movx	@dptr,a
                                   6144 ;	calc.c:396: c.acc = 0l;
      0049C6 90 80 0E         [24] 6145 	mov	dptr,#(_c + 0x0002)
      0049C9 F0               [24] 6146 	movx	@dptr,a
      0049CA A3               [24] 6147 	inc	dptr
      0049CB F0               [24] 6148 	movx	@dptr,a
      0049CC A3               [24] 6149 	inc	dptr
      0049CD F0               [24] 6150 	movx	@dptr,a
      0049CE A3               [24] 6151 	inc	dptr
      0049CF F0               [24] 6152 	movx	@dptr,a
                                   6153 ;	calc.c:397: c.acc_valid = (char)0;
      0049D0 90 80 12         [24] 6154 	mov	dptr,#(_c + 0x0006)
      0049D3 F0               [24] 6155 	movx	@dptr,a
                                   6156 ;	calc.c:398: c.digit[0] = c.digit[1] = '\0';
      0049D4 90 80 14         [24] 6157 	mov	dptr,#(_c + 0x0008)
      0049D7 F0               [24] 6158 	movx	@dptr,a
      0049D8 90 80 13         [24] 6159 	mov	dptr,#(_c + 0x0007)
      0049DB F0               [24] 6160 	movx	@dptr,a
                                   6161 ;	calc.c:399: stack_init(&c.s);	
      0049DC 90 80 15         [24] 6162 	mov	dptr,#(_c + 0x0009)
      0049DF 75 F0 00         [24] 6163 	mov	b,#0x00
      0049E2 12 26 80         [24] 6164 	lcall	_stack_init
                                   6165 ;	calc.c:400: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0049E5 74 0C            [12] 6166 	mov	a,#_c
      0049E7 C0 E0            [24] 6167 	push	acc
      0049E9 74 80            [12] 6168 	mov	a,#(_c >> 8)
      0049EB C0 E0            [24] 6169 	push	acc
      0049ED E4               [12] 6170 	clr	a
      0049EE C0 E0            [24] 6171 	push	acc
      0049F0 74 1B            [12] 6172 	mov	a,#_deltas
      0049F2 C0 E0            [24] 6173 	push	acc
      0049F4 74 A0            [12] 6174 	mov	a,#(_deltas >> 8)
      0049F6 C0 E0            [24] 6175 	push	acc
      0049F8 E4               [12] 6176 	clr	a
      0049F9 C0 E0            [24] 6177 	push	acc
      0049FB C0 E0            [24] 6178 	push	acc
      0049FD 74 80            [12] 6179 	mov	a,#0x80
      0049FF C0 E0            [24] 6180 	push	acc
      004A01 74 03            [12] 6181 	mov	a,#0x03
      004A03 C0 E0            [24] 6182 	push	acc
      004A05 E4               [12] 6183 	clr	a
      004A06 C0 E0            [24] 6184 	push	acc
      004A08 C0 E0            [24] 6185 	push	acc
      004A0A C0 E0            [24] 6186 	push	acc
      004A0C 90 80 00         [24] 6187 	mov	dptr,#_s
      004A0F 75 F0 00         [24] 6188 	mov	b,#0x00
      004A12 12 20 90         [24] 6189 	lcall	_state_init
      004A15 E5 81            [12] 6190 	mov	a,sp
      004A17 24 F4            [12] 6191 	add	a,#0xf4
      004A19 F5 81            [12] 6192 	mov	sp,a
                                   6193 ;	calc.c:402: while (1) {
      004A1B                       6194 00170$:
                                   6195 ;	calc.c:403: input = getchar();
      004A1B 12 29 C5         [24] 6196 	lcall	_getchar
                                   6197 ;	calc.c:404: (void)putchar(input);
      004A1E AE 82            [24] 6198 	mov	r6,dpl
      004A20 AF 83            [24] 6199 	mov  r7,dph
      004A22 12 29 C0         [24] 6200 	lcall	_putchar
                                   6201 ;	calc.c:405: c.digit[0] = (char)input;
      004A25 8E 05            [24] 6202 	mov	ar5,r6
      004A27 90 80 13         [24] 6203 	mov	dptr,#(_c + 0x0007)
      004A2A ED               [12] 6204 	mov	a,r5
      004A2B F0               [24] 6205 	movx	@dptr,a
                                   6206 ;	calc.c:407: if ((char)input == 'q') {
      004A2C BD 71 29         [24] 6207 	cjne	r5,#0x71,00167$
                                   6208 ;	calc.c:408: if (state_exec(&s, EVENT_TERM) <= 0) break;
      004A2F 74 07            [12] 6209 	mov	a,#0x07
      004A31 C0 E0            [24] 6210 	push	acc
      004A33 E4               [12] 6211 	clr	a
      004A34 C0 E0            [24] 6212 	push	acc
      004A36 90 80 00         [24] 6213 	mov	dptr,#_s
      004A39 75 F0 00         [24] 6214 	mov	b,#0x00
      004A3C 12 21 46         [24] 6215 	lcall	_state_exec
      004A3F AB 82            [24] 6216 	mov	r3,dpl
      004A41 AC 83            [24] 6217 	mov	r4,dph
      004A43 15 81            [12] 6218 	dec	sp
      004A45 15 81            [12] 6219 	dec	sp
      004A47 C3               [12] 6220 	clr	c
      004A48 E4               [12] 6221 	clr	a
      004A49 9B               [12] 6222 	subb	a,r3
      004A4A 74 80            [12] 6223 	mov	a,#(0x00 ^ 0x80)
      004A4C 8C F0            [24] 6224 	mov	b,r4
      004A4E 63 F0 80         [24] 6225 	xrl	b,#0x80
      004A51 95 F0            [12] 6226 	subb	a,b
      004A53 40 C6            [24] 6227 	jc	00170$
      004A55 02 4C 7E         [24] 6228 	ljmp	00171$
      004A58                       6229 00167$:
                                   6230 ;	calc.c:409: } else if ((char)input == '?') {
      004A58 BD 3F 29         [24] 6231 	cjne	r5,#0x3f,00164$
                                   6232 ;	calc.c:410: if (state_exec(&s, EVENT_HELP) <= 0) break;
      004A5B 74 03            [12] 6233 	mov	a,#0x03
      004A5D C0 E0            [24] 6234 	push	acc
      004A5F E4               [12] 6235 	clr	a
      004A60 C0 E0            [24] 6236 	push	acc
      004A62 90 80 00         [24] 6237 	mov	dptr,#_s
      004A65 75 F0 00         [24] 6238 	mov	b,#0x00
      004A68 12 21 46         [24] 6239 	lcall	_state_exec
      004A6B AB 82            [24] 6240 	mov	r3,dpl
      004A6D AC 83            [24] 6241 	mov	r4,dph
      004A6F 15 81            [12] 6242 	dec	sp
      004A71 15 81            [12] 6243 	dec	sp
      004A73 C3               [12] 6244 	clr	c
      004A74 E4               [12] 6245 	clr	a
      004A75 9B               [12] 6246 	subb	a,r3
      004A76 74 80            [12] 6247 	mov	a,#(0x00 ^ 0x80)
      004A78 8C F0            [24] 6248 	mov	b,r4
      004A7A 63 F0 80         [24] 6249 	xrl	b,#0x80
      004A7D 95 F0            [12] 6250 	subb	a,b
      004A7F 40 9A            [24] 6251 	jc	00170$
      004A81 02 4C 7E         [24] 6252 	ljmp	00171$
      004A84                       6253 00164$:
                                   6254 ;	calc.c:411: } else if ((char)input == 'i') {
      004A84 BD 69 2C         [24] 6255 	cjne	r5,#0x69,00161$
                                   6256 ;	calc.c:412: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      004A87 74 05            [12] 6257 	mov	a,#0x05
      004A89 C0 E0            [24] 6258 	push	acc
      004A8B E4               [12] 6259 	clr	a
      004A8C C0 E0            [24] 6260 	push	acc
      004A8E 90 80 00         [24] 6261 	mov	dptr,#_s
      004A91 75 F0 00         [24] 6262 	mov	b,#0x00
      004A94 12 21 46         [24] 6263 	lcall	_state_exec
      004A97 AB 82            [24] 6264 	mov	r3,dpl
      004A99 AC 83            [24] 6265 	mov	r4,dph
      004A9B 15 81            [12] 6266 	dec	sp
      004A9D 15 81            [12] 6267 	dec	sp
      004A9F C3               [12] 6268 	clr	c
      004AA0 E4               [12] 6269 	clr	a
      004AA1 9B               [12] 6270 	subb	a,r3
      004AA2 74 80            [12] 6271 	mov	a,#(0x00 ^ 0x80)
      004AA4 8C F0            [24] 6272 	mov	b,r4
      004AA6 63 F0 80         [24] 6273 	xrl	b,#0x80
      004AA9 95 F0            [12] 6274 	subb	a,b
      004AAB 50 03            [24] 6275 	jnc	00310$
      004AAD 02 4A 1B         [24] 6276 	ljmp	00170$
      004AB0                       6277 00310$:
      004AB0 02 4C 7E         [24] 6278 	ljmp	00171$
      004AB3                       6279 00161$:
                                   6280 ;	calc.c:413: } else if ((char)input == 'I') {
      004AB3 BD 49 2C         [24] 6281 	cjne	r5,#0x49,00158$
                                   6282 ;	calc.c:414: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      004AB6 74 06            [12] 6283 	mov	a,#0x06
      004AB8 C0 E0            [24] 6284 	push	acc
      004ABA E4               [12] 6285 	clr	a
      004ABB C0 E0            [24] 6286 	push	acc
      004ABD 90 80 00         [24] 6287 	mov	dptr,#_s
      004AC0 75 F0 00         [24] 6288 	mov	b,#0x00
      004AC3 12 21 46         [24] 6289 	lcall	_state_exec
      004AC6 AB 82            [24] 6290 	mov	r3,dpl
      004AC8 AC 83            [24] 6291 	mov	r4,dph
      004ACA 15 81            [12] 6292 	dec	sp
      004ACC 15 81            [12] 6293 	dec	sp
      004ACE C3               [12] 6294 	clr	c
      004ACF E4               [12] 6295 	clr	a
      004AD0 9B               [12] 6296 	subb	a,r3
      004AD1 74 80            [12] 6297 	mov	a,#(0x00 ^ 0x80)
      004AD3 8C F0            [24] 6298 	mov	b,r4
      004AD5 63 F0 80         [24] 6299 	xrl	b,#0x80
      004AD8 95 F0            [12] 6300 	subb	a,b
      004ADA 50 03            [24] 6301 	jnc	00313$
      004ADC 02 4A 1B         [24] 6302 	ljmp	00170$
      004ADF                       6303 00313$:
      004ADF 02 4C 7E         [24] 6304 	ljmp	00171$
      004AE2                       6305 00158$:
                                   6306 ;	calc.c:416: ((char)input == 'h') || ((char)input == 'H') ||
      004AE2 BD 68 02         [24] 6307 	cjne	r5,#0x68,00314$
      004AE5 80 0D            [24] 6308 	sjmp	00151$
      004AE7                       6309 00314$:
      004AE7 BD 48 02         [24] 6310 	cjne	r5,#0x48,00315$
      004AEA 80 08            [24] 6311 	sjmp	00151$
      004AEC                       6312 00315$:
                                   6313 ;	calc.c:417: ((char)input == 'o') || ((char)input == 'O')
      004AEC BD 6F 02         [24] 6314 	cjne	r5,#0x6f,00316$
      004AEF 80 03            [24] 6315 	sjmp	00151$
      004AF1                       6316 00316$:
      004AF1 BD 4F 2C         [24] 6317 	cjne	r5,#0x4f,00152$
      004AF4                       6318 00151$:
                                   6319 ;	calc.c:419: if (state_exec(&s, EVENT_BASE) <= 0) break;
      004AF4 74 04            [12] 6320 	mov	a,#0x04
      004AF6 C0 E0            [24] 6321 	push	acc
      004AF8 E4               [12] 6322 	clr	a
      004AF9 C0 E0            [24] 6323 	push	acc
      004AFB 90 80 00         [24] 6324 	mov	dptr,#_s
      004AFE 75 F0 00         [24] 6325 	mov	b,#0x00
      004B01 12 21 46         [24] 6326 	lcall	_state_exec
      004B04 AB 82            [24] 6327 	mov	r3,dpl
      004B06 AC 83            [24] 6328 	mov	r4,dph
      004B08 15 81            [12] 6329 	dec	sp
      004B0A 15 81            [12] 6330 	dec	sp
      004B0C C3               [12] 6331 	clr	c
      004B0D E4               [12] 6332 	clr	a
      004B0E 9B               [12] 6333 	subb	a,r3
      004B0F 74 80            [12] 6334 	mov	a,#(0x00 ^ 0x80)
      004B11 8C F0            [24] 6335 	mov	b,r4
      004B13 63 F0 80         [24] 6336 	xrl	b,#0x80
      004B16 95 F0            [12] 6337 	subb	a,b
      004B18 50 03            [24] 6338 	jnc	00319$
      004B1A 02 4A 1B         [24] 6339 	ljmp	00170$
      004B1D                       6340 00319$:
      004B1D 02 4C 7E         [24] 6341 	ljmp	00171$
      004B20                       6342 00152$:
                                   6343 ;	calc.c:420: } else if (isxdigit(input)) {
      004B20 8E 82            [24] 6344 	mov	dpl,r6
      004B22 8F 83            [24] 6345 	mov	dph,r7
      004B24 C0 05            [24] 6346 	push	ar5
      004B26 12 4C 82         [24] 6347 	lcall	_isxdigit
      004B29 E5 82            [12] 6348 	mov	a,dpl
      004B2B 85 83 F0         [24] 6349 	mov	b,dph
      004B2E D0 05            [24] 6350 	pop	ar5
      004B30 45 F0            [12] 6351 	orl	a,b
      004B32 60 2C            [24] 6352 	jz	00149$
                                   6353 ;	calc.c:421: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      004B34 74 01            [12] 6354 	mov	a,#0x01
      004B36 C0 E0            [24] 6355 	push	acc
      004B38 E4               [12] 6356 	clr	a
      004B39 C0 E0            [24] 6357 	push	acc
      004B3B 90 80 00         [24] 6358 	mov	dptr,#_s
      004B3E 75 F0 00         [24] 6359 	mov	b,#0x00
      004B41 12 21 46         [24] 6360 	lcall	_state_exec
      004B44 AE 82            [24] 6361 	mov	r6,dpl
      004B46 AF 83            [24] 6362 	mov	r7,dph
      004B48 15 81            [12] 6363 	dec	sp
      004B4A 15 81            [12] 6364 	dec	sp
      004B4C C3               [12] 6365 	clr	c
      004B4D E4               [12] 6366 	clr	a
      004B4E 9E               [12] 6367 	subb	a,r6
      004B4F 74 80            [12] 6368 	mov	a,#(0x00 ^ 0x80)
      004B51 8F F0            [24] 6369 	mov	b,r7
      004B53 63 F0 80         [24] 6370 	xrl	b,#0x80
      004B56 95 F0            [12] 6371 	subb	a,b
      004B58 50 03            [24] 6372 	jnc	00321$
      004B5A 02 4A 1B         [24] 6373 	ljmp	00170$
      004B5D                       6374 00321$:
      004B5D 02 4C 7E         [24] 6375 	ljmp	00171$
      004B60                       6376 00149$:
                                   6377 ;	calc.c:423: ((char)input == 'p') || ((char)input == 'P') ||
      004B60 BD 70 02         [24] 6378 	cjne	r5,#0x70,00322$
      004B63 80 17            [24] 6379 	sjmp	00140$
      004B65                       6380 00322$:
      004B65 BD 50 02         [24] 6381 	cjne	r5,#0x50,00323$
      004B68 80 12            [24] 6382 	sjmp	00140$
      004B6A                       6383 00323$:
                                   6384 ;	calc.c:424: ((char)input == 'v') || ((char)input == 'V') ||
      004B6A BD 76 02         [24] 6385 	cjne	r5,#0x76,00324$
      004B6D 80 0D            [24] 6386 	sjmp	00140$
      004B6F                       6387 00324$:
      004B6F BD 56 02         [24] 6388 	cjne	r5,#0x56,00325$
      004B72 80 08            [24] 6389 	sjmp	00140$
      004B74                       6390 00325$:
                                   6391 ;	calc.c:425: ((char)input == '.') ||
      004B74 BD 2E 02         [24] 6392 	cjne	r5,#0x2e,00326$
      004B77 80 03            [24] 6393 	sjmp	00140$
      004B79                       6394 00326$:
                                   6395 ;	calc.c:426: ((char)input == 'x')
      004B79 BD 78 2C         [24] 6396 	cjne	r5,#0x78,00141$
      004B7C                       6397 00140$:
                                   6398 ;	calc.c:428: if (state_exec(&s, EVENT_OP) <= 0) break;
      004B7C 74 02            [12] 6399 	mov	a,#0x02
      004B7E C0 E0            [24] 6400 	push	acc
      004B80 E4               [12] 6401 	clr	a
      004B81 C0 E0            [24] 6402 	push	acc
      004B83 90 80 00         [24] 6403 	mov	dptr,#_s
      004B86 75 F0 00         [24] 6404 	mov	b,#0x00
      004B89 12 21 46         [24] 6405 	lcall	_state_exec
      004B8C AE 82            [24] 6406 	mov	r6,dpl
      004B8E AF 83            [24] 6407 	mov	r7,dph
      004B90 15 81            [12] 6408 	dec	sp
      004B92 15 81            [12] 6409 	dec	sp
      004B94 C3               [12] 6410 	clr	c
      004B95 E4               [12] 6411 	clr	a
      004B96 9E               [12] 6412 	subb	a,r6
      004B97 74 80            [12] 6413 	mov	a,#(0x00 ^ 0x80)
      004B99 8F F0            [24] 6414 	mov	b,r7
      004B9B 63 F0 80         [24] 6415 	xrl	b,#0x80
      004B9E 95 F0            [12] 6416 	subb	a,b
      004BA0 50 03            [24] 6417 	jnc	00329$
      004BA2 02 4A 1B         [24] 6418 	ljmp	00170$
      004BA5                       6419 00329$:
      004BA5 02 4C 7E         [24] 6420 	ljmp	00171$
      004BA8                       6421 00141$:
                                   6422 ;	calc.c:430: ((char)input == '+') || ((char)input == '-')
      004BA8 BD 2B 02         [24] 6423 	cjne	r5,#0x2b,00330$
      004BAB 80 03            [24] 6424 	sjmp	00136$
      004BAD                       6425 00330$:
      004BAD BD 2D 2C         [24] 6426 	cjne	r5,#0x2d,00137$
      004BB0                       6427 00136$:
                                   6428 ;	calc.c:432: if (state_exec(&s, EVENT_OP) <= 0) break;
      004BB0 74 02            [12] 6429 	mov	a,#0x02
      004BB2 C0 E0            [24] 6430 	push	acc
      004BB4 E4               [12] 6431 	clr	a
      004BB5 C0 E0            [24] 6432 	push	acc
      004BB7 90 80 00         [24] 6433 	mov	dptr,#_s
      004BBA 75 F0 00         [24] 6434 	mov	b,#0x00
      004BBD 12 21 46         [24] 6435 	lcall	_state_exec
      004BC0 AE 82            [24] 6436 	mov	r6,dpl
      004BC2 AF 83            [24] 6437 	mov	r7,dph
      004BC4 15 81            [12] 6438 	dec	sp
      004BC6 15 81            [12] 6439 	dec	sp
      004BC8 C3               [12] 6440 	clr	c
      004BC9 E4               [12] 6441 	clr	a
      004BCA 9E               [12] 6442 	subb	a,r6
      004BCB 74 80            [12] 6443 	mov	a,#(0x00 ^ 0x80)
      004BCD 8F F0            [24] 6444 	mov	b,r7
      004BCF 63 F0 80         [24] 6445 	xrl	b,#0x80
      004BD2 95 F0            [12] 6446 	subb	a,b
      004BD4 50 03            [24] 6447 	jnc	00333$
      004BD6 02 4A 1B         [24] 6448 	ljmp	00170$
      004BD9                       6449 00333$:
      004BD9 02 4C 7E         [24] 6450 	ljmp	00171$
      004BDC                       6451 00137$:
                                   6452 ;	calc.c:434: ((char)input == '*') ||
      004BDC BD 2A 02         [24] 6453 	cjne	r5,#0x2a,00334$
      004BDF 80 12            [24] 6454 	sjmp	00129$
      004BE1                       6455 00334$:
                                   6456 ;	calc.c:435: ((char)input == '/') || ((char)input == '\\') ||
      004BE1 BD 2F 02         [24] 6457 	cjne	r5,#0x2f,00335$
      004BE4 80 0D            [24] 6458 	sjmp	00129$
      004BE6                       6459 00335$:
      004BE6 BD 5C 02         [24] 6460 	cjne	r5,#0x5c,00336$
      004BE9 80 08            [24] 6461 	sjmp	00129$
      004BEB                       6462 00336$:
                                   6463 ;	calc.c:436: ((char)input == '%') || ((char)input == '#')
      004BEB BD 25 02         [24] 6464 	cjne	r5,#0x25,00337$
      004BEE 80 03            [24] 6465 	sjmp	00129$
      004BF0                       6466 00337$:
      004BF0 BD 23 29         [24] 6467 	cjne	r5,#0x23,00130$
      004BF3                       6468 00129$:
                                   6469 ;	calc.c:438: if (state_exec(&s, EVENT_OP) <= 0) break;
      004BF3 74 02            [12] 6470 	mov	a,#0x02
      004BF5 C0 E0            [24] 6471 	push	acc
      004BF7 E4               [12] 6472 	clr	a
      004BF8 C0 E0            [24] 6473 	push	acc
      004BFA 90 80 00         [24] 6474 	mov	dptr,#_s
      004BFD 75 F0 00         [24] 6475 	mov	b,#0x00
      004C00 12 21 46         [24] 6476 	lcall	_state_exec
      004C03 AE 82            [24] 6477 	mov	r6,dpl
      004C05 AF 83            [24] 6478 	mov	r7,dph
      004C07 15 81            [12] 6479 	dec	sp
      004C09 15 81            [12] 6480 	dec	sp
      004C0B C3               [12] 6481 	clr	c
      004C0C E4               [12] 6482 	clr	a
      004C0D 9E               [12] 6483 	subb	a,r6
      004C0E 74 80            [12] 6484 	mov	a,#(0x00 ^ 0x80)
      004C10 8F F0            [24] 6485 	mov	b,r7
      004C12 63 F0 80         [24] 6486 	xrl	b,#0x80
      004C15 95 F0            [12] 6487 	subb	a,b
      004C17 50 65            [24] 6488 	jnc	00171$
      004C19 02 4A 1B         [24] 6489 	ljmp	00170$
      004C1C                       6490 00130$:
                                   6491 ;	calc.c:440: ((char)input == '&') ||
      004C1C BD 26 02         [24] 6492 	cjne	r5,#0x26,00341$
      004C1F 80 0D            [24] 6493 	sjmp	00123$
      004C21                       6494 00341$:
                                   6495 ;	calc.c:441: ((char)input == '|') || ((char)input == '^') ||
      004C21 BD 7C 02         [24] 6496 	cjne	r5,#0x7c,00342$
      004C24 80 08            [24] 6497 	sjmp	00123$
      004C26                       6498 00342$:
      004C26 BD 5E 02         [24] 6499 	cjne	r5,#0x5e,00343$
      004C29 80 03            [24] 6500 	sjmp	00123$
      004C2B                       6501 00343$:
                                   6502 ;	calc.c:442: ((char)input == '~')
      004C2B BD 7E 29         [24] 6503 	cjne	r5,#0x7e,00124$
      004C2E                       6504 00123$:
                                   6505 ;	calc.c:444: if (state_exec(&s, EVENT_OP) <= 0) break;
      004C2E 74 02            [12] 6506 	mov	a,#0x02
      004C30 C0 E0            [24] 6507 	push	acc
      004C32 E4               [12] 6508 	clr	a
      004C33 C0 E0            [24] 6509 	push	acc
      004C35 90 80 00         [24] 6510 	mov	dptr,#_s
      004C38 75 F0 00         [24] 6511 	mov	b,#0x00
      004C3B 12 21 46         [24] 6512 	lcall	_state_exec
      004C3E AE 82            [24] 6513 	mov	r6,dpl
      004C40 AF 83            [24] 6514 	mov	r7,dph
      004C42 15 81            [12] 6515 	dec	sp
      004C44 15 81            [12] 6516 	dec	sp
      004C46 C3               [12] 6517 	clr	c
      004C47 E4               [12] 6518 	clr	a
      004C48 9E               [12] 6519 	subb	a,r6
      004C49 74 80            [12] 6520 	mov	a,#(0x00 ^ 0x80)
      004C4B 8F F0            [24] 6521 	mov	b,r7
      004C4D 63 F0 80         [24] 6522 	xrl	b,#0x80
      004C50 95 F0            [12] 6523 	subb	a,b
      004C52 50 2A            [24] 6524 	jnc	00171$
      004C54 02 4A 1B         [24] 6525 	ljmp	00170$
      004C57                       6526 00124$:
                                   6527 ;	calc.c:446: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      004C57 E4               [12] 6528 	clr	a
      004C58 C0 E0            [24] 6529 	push	acc
      004C5A C0 E0            [24] 6530 	push	acc
      004C5C 90 80 00         [24] 6531 	mov	dptr,#_s
      004C5F 75 F0 00         [24] 6532 	mov	b,#0x00
      004C62 12 21 46         [24] 6533 	lcall	_state_exec
      004C65 AE 82            [24] 6534 	mov	r6,dpl
      004C67 AF 83            [24] 6535 	mov	r7,dph
      004C69 15 81            [12] 6536 	dec	sp
      004C6B 15 81            [12] 6537 	dec	sp
      004C6D C3               [12] 6538 	clr	c
      004C6E E4               [12] 6539 	clr	a
      004C6F 9E               [12] 6540 	subb	a,r6
      004C70 74 80            [12] 6541 	mov	a,#(0x00 ^ 0x80)
      004C72 8F F0            [24] 6542 	mov	b,r7
      004C74 63 F0 80         [24] 6543 	xrl	b,#0x80
      004C77 95 F0            [12] 6544 	subb	a,b
      004C79 50 03            [24] 6545 	jnc	00347$
      004C7B 02 4A 1B         [24] 6546 	ljmp	00170$
      004C7E                       6547 00347$:
      004C7E                       6548 00171$:
                                   6549 ;	calc.c:452: __endasm;
      004C7E 43 87 02         [24] 6550 	orl	pcon, #2
                                   6551 ;	calc.c:453: }
      004C81 22               [24] 6552 	ret
                                   6553 	.area CSEG    (CODE)
                                   6554 	.area CONST   (CODE)
                                   6555 	.area CONST   (CODE)
      006C2C                       6556 ___str_0:
      006C2C 0D                    6557 	.db 0x0d
      006C2D 0A                    6558 	.db 0x0a
      006C2E 00                    6559 	.db 0x00
                                   6560 	.area CSEG    (CODE)
                                   6561 	.area CONST   (CODE)
      006C2F                       6562 ___str_1:
      006C2F 73 74 61 63 6B 20 75  6563 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      006C3E 0D                    6564 	.db 0x0d
      006C3F 0A                    6565 	.db 0x0a
      006C40 00                    6566 	.db 0x00
                                   6567 	.area CSEG    (CODE)
                                   6568 	.area CONST   (CODE)
      006C41                       6569 ___str_2:
      006C41 56 41 20              6570 	.ascii "VA "
      006C44 00                    6571 	.db 0x00
                                   6572 	.area CSEG    (CODE)
                                   6573 	.area CONST   (CODE)
      006C45                       6574 ___str_3:
      006C45 25 20 31 31 6C 64 20  6575 	.ascii "% 11ld / "
             2F 20
      006C4E 00                    6576 	.db 0x00
                                   6577 	.area CSEG    (CODE)
                                   6578 	.area CONST   (CODE)
      006C4F                       6579 ___str_4:
      006C4F 25 30 38 6C 78 20 2F  6580 	.ascii "%08lx / "
             20
      006C57 00                    6581 	.db 0x00
                                   6582 	.area CSEG    (CODE)
                                   6583 	.area CONST   (CODE)
      006C58                       6584 ___str_5:
      006C58 50 41 20              6585 	.ascii "PA "
      006C5B 00                    6586 	.db 0x00
                                   6587 	.area CSEG    (CODE)
                                   6588 	.area CONST   (CODE)
      006C5C                       6589 ___str_6:
      006C5C 50 54 20              6590 	.ascii "PT "
      006C5F 00                    6591 	.db 0x00
                                   6592 	.area CSEG    (CODE)
                                   6593 	.area CONST   (CODE)
      006C60                       6594 ___str_7:
      006C60 56 54 20              6595 	.ascii "VT "
      006C63 00                    6596 	.db 0x00
                                   6597 	.area CSEG    (CODE)
                                   6598 	.area CONST   (CODE)
      006C64                       6599 ___str_8:
      006C64 0D                    6600 	.db 0x0d
      006C65 0A                    6601 	.db 0x0a
      006C66 73 74 61 63 6B 20 75  6602 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      006C75 0D                    6603 	.db 0x0d
      006C76 0A                    6604 	.db 0x0a
      006C77 00                    6605 	.db 0x00
                                   6606 	.area CSEG    (CODE)
                                   6607 	.area CONST   (CODE)
      006C78                       6608 ___str_9:
      006C78 0D                    6609 	.db 0x0d
      006C79 0A                    6610 	.db 0x0a
      006C7A 64 69 76 69 73 69 6F  6611 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      006C8A 0D                    6612 	.db 0x0d
      006C8B 0A                    6613 	.db 0x0a
      006C8C 00                    6614 	.db 0x00
                                   6615 	.area CSEG    (CODE)
                                   6616 	.area CONST   (CODE)
      006C8D                       6617 ___str_10:
      006C8D 0D                    6618 	.db 0x0d
      006C8E 0A                    6619 	.db 0x0a
      006C8F 73 74 61 63 6B 20 6F  6620 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      006C9D 0D                    6621 	.db 0x0d
      006C9E 0A                    6622 	.db 0x0a
      006C9F 00                    6623 	.db 0x00
                                   6624 	.area CSEG    (CODE)
                                   6625 	.area CONST   (CODE)
      006CA0                       6626 ___str_11:
      006CA0 0D                    6627 	.db 0x0d
      006CA1 0A                    6628 	.db 0x0a
      006CA2 62 61 73 65 20 3D 20  6629 	.ascii "base = %d, "
             25 64 2C 20
      006CAD 00                    6630 	.db 0x00
                                   6631 	.area CSEG    (CODE)
                                   6632 	.area CONST   (CODE)
      006CAE                       6633 ___str_12:
      006CAE 61 63 63 20 3D 20 25  6634 	.ascii "acc = %ld / "
             6C 64 20 2F 20
      006CBA 00                    6635 	.db 0x00
                                   6636 	.area CSEG    (CODE)
                                   6637 	.area CONST   (CODE)
      006CBB                       6638 ___str_13:
      006CBB 2C 20 61 63 63 5F 76  6639 	.ascii ", acc_valid = %d"
             61 6C 69 64 20 3D 20
             25 64
      006CCB 0D                    6640 	.db 0x0d
      006CCC 0A                    6641 	.db 0x0a
      006CCD 0D                    6642 	.db 0x0d
      006CCE 0A                    6643 	.db 0x0a
      006CCF 00                    6644 	.db 0x00
                                   6645 	.area CSEG    (CODE)
                                   6646 	.area CONST   (CODE)
      006CD0                       6647 ___str_14:
      006CD0 48 68 4F 6F           6648 	.ascii "HhOo"
      006CD4 09                    6649 	.db 0x09
      006CD5 62 61 73 65 20 31 36  6650 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      006CE3 0D                    6651 	.db 0x0d
      006CE4 0A                    6652 	.db 0x0a
      006CE5 00                    6653 	.db 0x00
                                   6654 	.area CSEG    (CODE)
                                   6655 	.area CONST   (CODE)
      006CE6                       6656 ___str_15:
      006CE6 70                    6657 	.ascii "p"
      006CE7 09                    6658 	.db 0x09
      006CE8 70 65 65 6B 20 74 6F  6659 	.ascii "peek top"
             70
      006CF0 0D                    6660 	.db 0x0d
      006CF1 0A                    6661 	.db 0x0a
      006CF2 00                    6662 	.db 0x00
                                   6663 	.area CSEG    (CODE)
                                   6664 	.area CONST   (CODE)
      006CF3                       6665 ___str_16:
      006CF3 50                    6666 	.ascii "P"
      006CF4 09                    6667 	.db 0x09
      006CF5 70 72 69 6E 74 20 73  6668 	.ascii "print stack"
             74 61 63 6B
      006D00 0D                    6669 	.db 0x0d
      006D01 0A                    6670 	.db 0x0a
      006D02 00                    6671 	.db 0x00
                                   6672 	.area CSEG    (CODE)
                                   6673 	.area CONST   (CODE)
      006D03                       6674 ___str_17:
      006D03 76 2E                 6675 	.ascii "v."
      006D05 09                    6676 	.db 0x09
      006D06 70 6F 70 20 74 6F 70  6677 	.ascii "pop top"
      006D0D 0D                    6678 	.db 0x0d
      006D0E 0A                    6679 	.db 0x0a
      006D0F 00                    6680 	.db 0x00
                                   6681 	.area CSEG    (CODE)
                                   6682 	.area CONST   (CODE)
      006D10                       6683 ___str_18:
      006D10 56                    6684 	.ascii "V"
      006D11 09                    6685 	.db 0x09
      006D12 70 6F 70 20 61 6C 6C  6686 	.ascii "pop all"
      006D19 0D                    6687 	.db 0x0d
      006D1A 0A                    6688 	.db 0x0a
      006D1B 00                    6689 	.db 0x00
                                   6690 	.area CSEG    (CODE)
                                   6691 	.area CONST   (CODE)
      006D1C                       6692 ___str_19:
      006D1C 69                    6693 	.ascii "i"
      006D1D 09                    6694 	.db 0x09
      006D1E 72 65 73 65 74 20 61  6695 	.ascii "reset acc"
             63 63
      006D27 0D                    6696 	.db 0x0d
      006D28 0A                    6697 	.db 0x0a
      006D29 00                    6698 	.db 0x00
                                   6699 	.area CSEG    (CODE)
                                   6700 	.area CONST   (CODE)
      006D2A                       6701 ___str_20:
      006D2A 49                    6702 	.ascii "I"
      006D2B 09                    6703 	.db 0x09
      006D2C 72 65 73 65 74 20 61  6704 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      006D41 0D                    6705 	.db 0x0d
      006D42 0A                    6706 	.db 0x0a
      006D43 00                    6707 	.db 0x00
                                   6708 	.area CSEG    (CODE)
                                   6709 	.area CONST   (CODE)
      006D44                       6710 ___str_21:
      006D44 78                    6711 	.ascii "x"
      006D45 09                    6712 	.db 0x09
      006D46 65 78 63 68 61 6E 67  6713 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      006D54 0D                    6714 	.db 0x0d
      006D55 0A                    6715 	.db 0x0a
      006D56 00                    6716 	.db 0x00
                                   6717 	.area CSEG    (CODE)
                                   6718 	.area CONST   (CODE)
      006D57                       6719 ___str_22:
      006D57 2B                    6720 	.ascii "+"
      006D58 09                    6721 	.db 0x09
      006D59 61 64 64 20 74 6F 70  6722 	.ascii "add top 2"
             20 32
      006D62 0D                    6723 	.db 0x0d
      006D63 0A                    6724 	.db 0x0a
      006D64 00                    6725 	.db 0x00
                                   6726 	.area CSEG    (CODE)
                                   6727 	.area CONST   (CODE)
      006D65                       6728 ___str_23:
      006D65 2D                    6729 	.ascii "-"
      006D66 09                    6730 	.db 0x09
      006D67 73 75 62 74 72 61 63  6731 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      006D75 0D                    6732 	.db 0x0d
      006D76 0A                    6733 	.db 0x0a
      006D77 00                    6734 	.db 0x00
                                   6735 	.area CSEG    (CODE)
                                   6736 	.area CONST   (CODE)
      006D78                       6737 ___str_24:
      006D78 2A                    6738 	.ascii "*"
      006D79 09                    6739 	.db 0x09
      006D7A 6D 75 6C 74 69 70 6C  6740 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      006D88 0D                    6741 	.db 0x0d
      006D89 0A                    6742 	.db 0x0a
      006D8A 00                    6743 	.db 0x00
                                   6744 	.area CSEG    (CODE)
                                   6745 	.area CONST   (CODE)
      006D8B                       6746 ___str_25:
      006D8B 2F                    6747 	.ascii "/"
      006D8C 09                    6748 	.db 0x09
      006D8D 64 69 76 69 64 65 20  6749 	.ascii "divide top 2"
             74 6F 70 20 32
      006D99 0D                    6750 	.db 0x0d
      006D9A 0A                    6751 	.db 0x0a
      006D9B 00                    6752 	.db 0x00
                                   6753 	.area CSEG    (CODE)
                                   6754 	.area CONST   (CODE)
      006D9C                       6755 ___str_26:
      006D9C 5C                    6756 	.db 0x5c
      006D9D 09                    6757 	.db 0x09
      006D9E 64 69 76 69 64 65 20  6758 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      006DB3 0D                    6759 	.db 0x0d
      006DB4 0A                    6760 	.db 0x0a
      006DB5 00                    6761 	.db 0x00
                                   6762 	.area CSEG    (CODE)
                                   6763 	.area CONST   (CODE)
      006DB6                       6764 ___str_27:
      006DB6 25                    6765 	.ascii "%"
      006DB7 09                    6766 	.db 0x09
      006DB8 6D 6F 64 75 6C 75 73  6767 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      006DC5 0D                    6768 	.db 0x0d
      006DC6 0A                    6769 	.db 0x0a
      006DC7 00                    6770 	.db 0x00
                                   6771 	.area CSEG    (CODE)
                                   6772 	.area CONST   (CODE)
      006DC8                       6773 ___str_28:
      006DC8 23                    6774 	.ascii "#"
      006DC9 09                    6775 	.db 0x09
      006DCA 6D 6F 64 75 6C 75 73  6776 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      006DE0 0D                    6777 	.db 0x0d
      006DE1 0A                    6778 	.db 0x0a
      006DE2 00                    6779 	.db 0x00
                                   6780 	.area CSEG    (CODE)
                                   6781 	.area CONST   (CODE)
      006DE3                       6782 ___str_29:
      006DE3 26                    6783 	.ascii "&"
      006DE4 09                    6784 	.db 0x09
      006DE5 61 6E 64 20 74 6F 70  6785 	.ascii "and top 2"
             20 32
      006DEE 0D                    6786 	.db 0x0d
      006DEF 0A                    6787 	.db 0x0a
      006DF0 00                    6788 	.db 0x00
                                   6789 	.area CSEG    (CODE)
                                   6790 	.area CONST   (CODE)
      006DF1                       6791 ___str_30:
      006DF1 7C                    6792 	.ascii "|"
      006DF2 09                    6793 	.db 0x09
      006DF3 6F 72 20 74 6F 70 20  6794 	.ascii "or top 2"
             32
      006DFB 0D                    6795 	.db 0x0d
      006DFC 0A                    6796 	.db 0x0a
      006DFD 00                    6797 	.db 0x00
                                   6798 	.area CSEG    (CODE)
                                   6799 	.area CONST   (CODE)
      006DFE                       6800 ___str_31:
      006DFE 5E                    6801 	.ascii "^"
      006DFF 09                    6802 	.db 0x09
      006E00 78 6F 72 20 74 6F 70  6803 	.ascii "xor top 2"
             20 32
      006E09 0D                    6804 	.db 0x0d
      006E0A 0A                    6805 	.db 0x0a
      006E0B 00                    6806 	.db 0x00
                                   6807 	.area CSEG    (CODE)
                                   6808 	.area CONST   (CODE)
      006E0C                       6809 ___str_32:
      006E0C 7E                    6810 	.ascii "~"
      006E0D 09                    6811 	.db 0x09
      006E0E 62 69 74 77 69 73 65  6812 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      006E1D 0D                    6813 	.db 0x0d
      006E1E 0A                    6814 	.db 0x0a
      006E1F 00                    6815 	.db 0x00
                                   6816 	.area CSEG    (CODE)
                                   6817 	.area CONST   (CODE)
      006E20                       6818 ___str_33:
      006E20 3F                    6819 	.ascii "?"
      006E21 09                    6820 	.db 0x09
      006E22 68 65 6C 70           6821 	.ascii "help"
      006E26 0D                    6822 	.db 0x0d
      006E27 0A                    6823 	.db 0x0a
      006E28 00                    6824 	.db 0x00
                                   6825 	.area CSEG    (CODE)
                                   6826 	.area CONST   (CODE)
      006E29                       6827 ___str_34:
      006E29 71                    6828 	.ascii "q"
      006E2A 09                    6829 	.db 0x09
      006E2B 71 75 69 74           6830 	.ascii "quit"
      006E2F 0D                    6831 	.db 0x0d
      006E30 0A                    6832 	.db 0x0a
      006E31 00                    6833 	.db 0x00
                                   6834 	.area CSEG    (CODE)
                                   6835 	.area XINIT   (CODE)
      006E43                       6836 __xinit__deltas:
      006E43 00 00                 6837 	.byte #0x00, #0x00	;  0
      006E45 00 00                 6838 	.byte #0x00, #0x00	;  0
      006E47 00 00                 6839 	.byte #0x00, #0x00	;  0
      006E49 00 00                 6840 	.byte #0x00,#0x00
      006E4B 00 00                 6841 	.byte #0x00,#0x00
      006E4D 00 00                 6842 	.byte #0x00, #0x00	;  0
      006E4F 01 00                 6843 	.byte #0x01, #0x00	;  1
      006E51 02 00                 6844 	.byte #0x02, #0x00	;  2
      006E53 00 00                 6845 	.byte #0x00,#0x00
      006E55 8B 2A                 6846 	.byte _accumulate, (_accumulate >> 8)
      006E57 00 00                 6847 	.byte #0x00, #0x00	;  0
      006E59 02 00                 6848 	.byte #0x02, #0x00	;  2
      006E5B 01 00                 6849 	.byte #0x01, #0x00	;  1
      006E5D 00 00                 6850 	.byte #0x00,#0x00
      006E5F E4 2F                 6851 	.byte _operator, (_operator >> 8)
      006E61 01 00                 6852 	.byte #0x01, #0x00	;  1
      006E63 00 00                 6853 	.byte #0x00, #0x00	;  0
      006E65 00 00                 6854 	.byte #0x00, #0x00	;  0
      006E67 00 00                 6855 	.byte #0x00,#0x00
      006E69 00 00                 6856 	.byte #0x00,#0x00
      006E6B 01 00                 6857 	.byte #0x01, #0x00	;  1
      006E6D 02 00                 6858 	.byte #0x02, #0x00	;  2
      006E6F 01 00                 6859 	.byte #0x01, #0x00	;  1
      006E71 00 00                 6860 	.byte #0x00,#0x00
      006E73 E4 2F                 6861 	.byte _operator, (_operator >> 8)
      006E75 01 00                 6862 	.byte #0x01, #0x00	;  1
      006E77 01 00                 6863 	.byte #0x01, #0x00	;  1
      006E79 02 00                 6864 	.byte #0x02, #0x00	;  2
      006E7B 00 00                 6865 	.byte #0x00,#0x00
      006E7D 8B 2A                 6866 	.byte _accumulate, (_accumulate >> 8)
      006E7F 02 00                 6867 	.byte #0x02, #0x00	;  2
      006E81 00 00                 6868 	.byte #0x00, #0x00	;  0
      006E83 00 00                 6869 	.byte #0x00, #0x00	;  0
      006E85 00 00                 6870 	.byte #0x00,#0x00
      006E87 53 43                 6871 	.byte _push_acc, (_push_acc >> 8)
      006E89 02 00                 6872 	.byte #0x02, #0x00	;  2
      006E8B 06 00                 6873 	.byte #0x06, #0x00	;  6
      006E8D 00 00                 6874 	.byte #0x00, #0x00	;  0
      006E8F 00 00                 6875 	.byte #0x00,#0x00
      006E91 61 44                 6876 	.byte _reset_acc, (_reset_acc >> 8)
      006E93 02 00                 6877 	.byte #0x02, #0x00	;  2
      006E95 01 00                 6878 	.byte #0x01, #0x00	;  1
      006E97 02 00                 6879 	.byte #0x02, #0x00	;  2
      006E99 00 00                 6880 	.byte #0x00,#0x00
      006E9B 8B 2A                 6881 	.byte _accumulate, (_accumulate >> 8)
      006E9D 02 00                 6882 	.byte #0x02, #0x00	;  2
      006E9F 02 00                 6883 	.byte #0x02, #0x00	;  2
      006EA1 01 00                 6884 	.byte #0x01, #0x00	;  1
      006EA3 00 00                 6885 	.byte #0x00,#0x00
      006EA5 53 43                 6886 	.byte _push_acc, (_push_acc >> 8)
      006EA7 FF 7F                 6887 	.byte #0xff, #0x7f	;  32767
      006EA9 05 00                 6888 	.byte #0x05, #0x00	;  5
      006EAB FF 7F                 6889 	.byte #0xff, #0x7f	;  32767
      006EAD 00 00                 6890 	.byte #0x00,#0x00
      006EAF 61 44                 6891 	.byte _reset_acc, (_reset_acc >> 8)
      006EB1 FF 7F                 6892 	.byte #0xff, #0x7f	;  32767
      006EB3 06 00                 6893 	.byte #0x06, #0x00	;  6
      006EB5 FF 7F                 6894 	.byte #0xff, #0x7f	;  32767
      006EB7 00 00                 6895 	.byte #0x00,#0x00
      006EB9 00 00                 6896 	.byte #0x00,#0x00
      006EBB FF 7F                 6897 	.byte #0xff, #0x7f	;  32767
      006EBD 04 00                 6898 	.byte #0x04, #0x00	;  4
      006EBF FF 7F                 6899 	.byte #0xff, #0x7f	;  32767
      006EC1 00 00                 6900 	.byte #0x00,#0x00
      006EC3 CB 44                 6901 	.byte _reset_base, (_reset_base >> 8)
      006EC5 FF 7F                 6902 	.byte #0xff, #0x7f	;  32767
      006EC7 03 00                 6903 	.byte #0x03, #0x00	;  3
      006EC9 FF 7F                 6904 	.byte #0xff, #0x7f	;  32767
      006ECB 00 00                 6905 	.byte #0x00,#0x00
      006ECD 49 45                 6906 	.byte _help, (_help >> 8)
      006ECF FF 7F                 6907 	.byte #0xff, #0x7f	;  32767
      006ED1 07 00                 6908 	.byte #0x07, #0x00	;  7
      006ED3 03 00                 6909 	.byte #0x03, #0x00	;  3
      006ED5 00 00                 6910 	.byte #0x00,#0x00
      006ED7 FC 2B                 6911 	.byte _dump_pop, (_dump_pop >> 8)
      006ED9 00 80                 6912 	.byte #0x00, #0x80	; -32768
      006EDB 00 80                 6913 	.byte #0x00, #0x80	; -32768
      006EDD 00 80                 6914 	.byte #0x00, #0x80	; -32768
      006EDF 00 00                 6915 	.byte #0x00,#0x00
      006EE1 00 00                 6916 	.byte #0x00,#0x00
                                   6917 	.area CABS    (ABS,CODE)
