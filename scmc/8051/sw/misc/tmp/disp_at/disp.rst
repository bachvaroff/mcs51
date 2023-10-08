                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module disp
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_intr
                                     13 	.globl _init_disp
                                     14 	.globl _init_timer0
                                     15 	.globl _init_intr
                                     16 	.globl _clear_gpo
                                     17 	.globl _init_gpo
                                     18 	.globl _printf
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _FL
                                     26 	.globl _P
                                     27 	.globl _TF2
                                     28 	.globl _EXF2
                                     29 	.globl _RCLK
                                     30 	.globl _TCLK
                                     31 	.globl _EXEN2
                                     32 	.globl _TR2
                                     33 	.globl _C_T2
                                     34 	.globl _CP_RL2
                                     35 	.globl _T2CON_7
                                     36 	.globl _T2CON_6
                                     37 	.globl _T2CON_5
                                     38 	.globl _T2CON_4
                                     39 	.globl _T2CON_3
                                     40 	.globl _T2CON_2
                                     41 	.globl _T2CON_1
                                     42 	.globl _T2CON_0
                                     43 	.globl _PT2
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ET2
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _T2EX
                                     89 	.globl _T2
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _TF1
                                     99 	.globl _TR1
                                    100 	.globl _TF0
                                    101 	.globl _TR0
                                    102 	.globl _IE1
                                    103 	.globl _IT1
                                    104 	.globl _IE0
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _B
                                    115 	.globl _A
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _TH2
                                    119 	.globl _TL2
                                    120 	.globl _RCAP2H
                                    121 	.globl _RCAP2L
                                    122 	.globl _T2MOD
                                    123 	.globl _T2CON
                                    124 	.globl _IP
                                    125 	.globl _P3
                                    126 	.globl _IE
                                    127 	.globl _P2
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _P1
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _P0
                                    142 	.globl _gpo
                                    143 	.globl _column
                                    144 	.globl _ddata
                                    145 	.globl _dcol
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
                                    286 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        287 	.ds 8
                                    288 ;--------------------------------------------------------
                                    289 ; internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area DSEG    (DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; overlayable items in internal ram 
                                    294 ;--------------------------------------------------------
                                    295 ;--------------------------------------------------------
                                    296 ; Stack segment in internal ram 
                                    297 ;--------------------------------------------------------
                                    298 	.area	SSEG
      000032                        299 __start__stack:
      000032                        300 	.ds	1
                                    301 
                                    302 ;--------------------------------------------------------
                                    303 ; indirectly addressable internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area ISEG    (DATA)
      000021                        306 _dcol::
      000021                        307 	.ds 8
      000029                        308 _ddata::
      000029                        309 	.ds 8
      000031                        310 _column::
      000031                        311 	.ds 1
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
                           00F000   329 _gpo	=	0xf000
                                    330 ;--------------------------------------------------------
                                    331 ; absolute external ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area XABS    (ABS,XDATA)
                                    334 ;--------------------------------------------------------
                                    335 ; external initialized ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area XISEG   (XDATA)
                                    338 	.area HOME    (CODE)
                                    339 	.area GSINIT0 (CODE)
                                    340 	.area GSINIT1 (CODE)
                                    341 	.area GSINIT2 (CODE)
                                    342 	.area GSINIT3 (CODE)
                                    343 	.area GSINIT4 (CODE)
                                    344 	.area GSINIT5 (CODE)
                                    345 	.area GSINIT  (CODE)
                                    346 	.area GSFINAL (CODE)
                                    347 	.area CSEG    (CODE)
                                    348 ;--------------------------------------------------------
                                    349 ; interrupt vector 
                                    350 ;--------------------------------------------------------
                                    351 	.area HOME    (CODE)
      002000                        352 __interrupt_vect:
      002000 02 20 11         [24]  353 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  354 	reti
      002004                        355 	.ds	7
      00200B 02 21 12         [24]  356 	ljmp	_timer0_intr
                                    357 ;--------------------------------------------------------
                                    358 ; global & static initialisations
                                    359 ;--------------------------------------------------------
                                    360 	.area HOME    (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.area GSFINAL (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.globl __sdcc_gsinit_startup
                                    365 	.globl __sdcc_program_startup
                                    366 	.globl __start__stack
                                    367 	.globl __mcs51_genXINIT
                                    368 	.globl __mcs51_genXRAMCLEAR
                                    369 	.globl __mcs51_genRAMCLEAR
                                    370 ;	disp.c:35: __idata const uint8_t dcol[8] = {
      00206A 78 21            [12]  371 	mov	r0,#_dcol
      00206C 76 01            [12]  372 	mov	@r0,#0x01
      00206E 78 22            [12]  373 	mov	r0,#(_dcol + 0x0001)
      002070 76 02            [12]  374 	mov	@r0,#0x02
      002072 78 23            [12]  375 	mov	r0,#(_dcol + 0x0002)
      002074 76 04            [12]  376 	mov	@r0,#0x04
      002076 78 24            [12]  377 	mov	r0,#(_dcol + 0x0003)
      002078 76 08            [12]  378 	mov	@r0,#0x08
      00207A 78 25            [12]  379 	mov	r0,#(_dcol + 0x0004)
      00207C 76 10            [12]  380 	mov	@r0,#0x10
      00207E 78 26            [12]  381 	mov	r0,#(_dcol + 0x0005)
      002080 76 20            [12]  382 	mov	@r0,#0x20
      002082 78 27            [12]  383 	mov	r0,#(_dcol + 0x0006)
      002084 76 40            [12]  384 	mov	@r0,#0x40
      002086 78 28            [12]  385 	mov	r0,#(_dcol + 0x0007)
      002088 76 80            [12]  386 	mov	@r0,#0x80
                                    387 	.area GSFINAL (CODE)
      00208A 02 20 0E         [24]  388 	ljmp	__sdcc_program_startup
                                    389 ;--------------------------------------------------------
                                    390 ; Home
                                    391 ;--------------------------------------------------------
                                    392 	.area HOME    (CODE)
                                    393 	.area HOME    (CODE)
      00200E                        394 __sdcc_program_startup:
      00200E 02 21 54         [24]  395 	ljmp	_main
                                    396 ;	return from main will return to caller
                                    397 ;--------------------------------------------------------
                                    398 ; code
                                    399 ;--------------------------------------------------------
                                    400 	.area CSEG    (CODE)
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'putchar'
                                    403 ;------------------------------------------------------------
                                    404 ;c                         Allocated to registers 
                                    405 ;------------------------------------------------------------
                                    406 ;	disp.c:8: int putchar(int c) __naked {
                                    407 ;	-----------------------------------------
                                    408 ;	 function putchar
                                    409 ;	-----------------------------------------
      00208D                        410 _putchar:
                                    411 ;	naked function: no prologue.
                                    412 ;	disp.c:13: __endasm;
      00208D E5 82            [12]  413 	mov	a, dpl
      00208F 02 00 30         [24]  414 	ljmp	0x0030
                                    415 ;	disp.c:14: }
                                    416 ;	naked function: no epilogue.
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'getchar'
                                    419 ;------------------------------------------------------------
                                    420 ;	disp.c:16: int getchar(void) __naked {
                                    421 ;	-----------------------------------------
                                    422 ;	 function getchar
                                    423 ;	-----------------------------------------
      002092                        424 _getchar:
                                    425 ;	naked function: no prologue.
                                    426 ;	disp.c:22: __endasm;
      002092 12 00 32         [24]  427 	lcall	0x0032
      002095 F5 82            [12]  428 	mov	dpl, a
      002097 75 83 00         [24]  429 	mov	dph, #0
      00209A 22               [24]  430 	ret
                                    431 ;	disp.c:23: }
                                    432 ;	naked function: no epilogue.
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'init_gpo'
                                    435 ;------------------------------------------------------------
                                    436 ;	disp.c:51: void init_gpo(void) {
                                    437 ;	-----------------------------------------
                                    438 ;	 function init_gpo
                                    439 ;	-----------------------------------------
      00209B                        440 _init_gpo:
                           000007   441 	ar7 = 0x07
                           000006   442 	ar6 = 0x06
                           000005   443 	ar5 = 0x05
                           000004   444 	ar4 = 0x04
                           000003   445 	ar3 = 0x03
                           000002   446 	ar2 = 0x02
                           000001   447 	ar1 = 0x01
                           000000   448 	ar0 = 0x00
                                    449 ;	disp.c:52: P1_7 = 0;
                                    450 ;	assignBit
      00209B C2 97            [12]  451 	clr	_P1_7
                                    452 ;	disp.c:53: CLEAR_GPO;
      00209D 90 F0 06         [24]  453 	mov	dptr,#(_gpo + 0x0006)
      0020A0 74 FF            [12]  454 	mov	a,#0xff
      0020A2 F0               [24]  455 	movx	@dptr,a
      0020A3 90 F0 00         [24]  456 	mov	dptr,#_gpo
      0020A6 E4               [12]  457 	clr	a
      0020A7 F0               [24]  458 	movx	@dptr,a
      0020A8 90 F0 01         [24]  459 	mov	dptr,#(_gpo + 0x0001)
      0020AB F0               [24]  460 	movx	@dptr,a
      0020AC 90 F0 02         [24]  461 	mov	dptr,#(_gpo + 0x0002)
      0020AF F0               [24]  462 	movx	@dptr,a
      0020B0 90 F0 03         [24]  463 	mov	dptr,#(_gpo + 0x0003)
      0020B3 F0               [24]  464 	movx	@dptr,a
      0020B4 90 F0 04         [24]  465 	mov	dptr,#(_gpo + 0x0004)
      0020B7 F0               [24]  466 	movx	@dptr,a
      0020B8 90 F0 05         [24]  467 	mov	dptr,#(_gpo + 0x0005)
      0020BB F0               [24]  468 	movx	@dptr,a
                                    469 ;	disp.c:55: return;
                                    470 ;	disp.c:56: }
      0020BC 22               [24]  471 	ret
                                    472 ;------------------------------------------------------------
                                    473 ;Allocation info for local variables in function 'clear_gpo'
                                    474 ;------------------------------------------------------------
                                    475 ;	disp.c:58: void clear_gpo(void) {
                                    476 ;	-----------------------------------------
                                    477 ;	 function clear_gpo
                                    478 ;	-----------------------------------------
      0020BD                        479 _clear_gpo:
                                    480 ;	disp.c:59: CLEAR_GPO;
      0020BD 90 F0 06         [24]  481 	mov	dptr,#(_gpo + 0x0006)
      0020C0 74 FF            [12]  482 	mov	a,#0xff
      0020C2 F0               [24]  483 	movx	@dptr,a
      0020C3 90 F0 00         [24]  484 	mov	dptr,#_gpo
      0020C6 E4               [12]  485 	clr	a
      0020C7 F0               [24]  486 	movx	@dptr,a
      0020C8 90 F0 01         [24]  487 	mov	dptr,#(_gpo + 0x0001)
      0020CB F0               [24]  488 	movx	@dptr,a
      0020CC 90 F0 02         [24]  489 	mov	dptr,#(_gpo + 0x0002)
      0020CF F0               [24]  490 	movx	@dptr,a
      0020D0 90 F0 03         [24]  491 	mov	dptr,#(_gpo + 0x0003)
      0020D3 F0               [24]  492 	movx	@dptr,a
      0020D4 90 F0 04         [24]  493 	mov	dptr,#(_gpo + 0x0004)
      0020D7 F0               [24]  494 	movx	@dptr,a
      0020D8 90 F0 05         [24]  495 	mov	dptr,#(_gpo + 0x0005)
      0020DB F0               [24]  496 	movx	@dptr,a
                                    497 ;	disp.c:61: return;
                                    498 ;	disp.c:62: }
      0020DC 22               [24]  499 	ret
                                    500 ;------------------------------------------------------------
                                    501 ;Allocation info for local variables in function 'init_intr'
                                    502 ;------------------------------------------------------------
                                    503 ;	disp.c:64: void init_intr(void) {
                                    504 ;	-----------------------------------------
                                    505 ;	 function init_intr
                                    506 ;	-----------------------------------------
      0020DD                        507 _init_intr:
                                    508 ;	disp.c:65: DIS_TR0;
                                    509 ;	assignBit
      0020DD C2 8C            [12]  510 	clr	_TR0
                                    511 ;	disp.c:66: ET0 = 1;
                                    512 ;	assignBit
      0020DF D2 A9            [12]  513 	setb	_ET0
                                    514 ;	disp.c:67: EA  = 1;
                                    515 ;	assignBit
      0020E1 D2 AF            [12]  516 	setb	_EA
                                    517 ;	disp.c:69: return;
                                    518 ;	disp.c:70: }
      0020E3 22               [24]  519 	ret
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'init_timer0'
                                    522 ;------------------------------------------------------------
                                    523 ;	disp.c:72: void init_timer0(void) {
                                    524 ;	-----------------------------------------
                                    525 ;	 function init_timer0
                                    526 ;	-----------------------------------------
      0020E4                        527 _init_timer0:
                                    528 ;	disp.c:73: DIS_TR0;
                                    529 ;	assignBit
      0020E4 C2 8C            [12]  530 	clr	_TR0
                                    531 ;	disp.c:74: TMOD = 0x01;
      0020E6 75 89 01         [24]  532 	mov	_TMOD,#0x01
                                    533 ;	disp.c:75: TH0 = 0xf8;
      0020E9 75 8C F8         [24]  534 	mov	_TH0,#0xf8
                                    535 ;	disp.c:76: TL0 = 0x00;
      0020EC 75 8A 00         [24]  536 	mov	_TL0,#0x00
                                    537 ;	disp.c:78: return;
                                    538 ;	disp.c:79: }
      0020EF 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'init_disp'
                                    542 ;------------------------------------------------------------
                                    543 ;j                         Allocated to registers r7 
                                    544 ;------------------------------------------------------------
                                    545 ;	disp.c:81: void init_disp(void) {
                                    546 ;	-----------------------------------------
                                    547 ;	 function init_disp
                                    548 ;	-----------------------------------------
      0020F0                        549 _init_disp:
                                    550 ;	disp.c:84: gpo[4] = 0u;
      0020F0 90 F0 04         [24]  551 	mov	dptr,#(_gpo + 0x0004)
      0020F3 E4               [12]  552 	clr	a
      0020F4 F0               [24]  553 	movx	@dptr,a
                                    554 ;	disp.c:85: gpo[5] = 0u;
      0020F5 90 F0 05         [24]  555 	mov	dptr,#(_gpo + 0x0005)
      0020F8 F0               [24]  556 	movx	@dptr,a
                                    557 ;	disp.c:86: gpo[GPO_OE] = 0xcfu;
      0020F9 90 F0 06         [24]  558 	mov	dptr,#(_gpo + 0x0006)
      0020FC 74 CF            [12]  559 	mov	a,#0xcf
      0020FE F0               [24]  560 	movx	@dptr,a
                                    561 ;	disp.c:88: column = 0u;
      0020FF 78 31            [12]  562 	mov	r0,#_column
      002101 76 00            [12]  563 	mov	@r0,#0x00
                                    564 ;	disp.c:90: for (j = 0u; j < 8u; j++)
      002103 7F 00            [12]  565 	mov	r7,#0x00
      002105                        566 00102$:
                                    567 ;	disp.c:91: ddata[j] = 0u;
      002105 EF               [12]  568 	mov	a,r7
      002106 24 29            [12]  569 	add	a,#_ddata
      002108 F8               [12]  570 	mov	r0,a
      002109 76 00            [12]  571 	mov	@r0,#0x00
                                    572 ;	disp.c:90: for (j = 0u; j < 8u; j++)
      00210B 0F               [12]  573 	inc	r7
      00210C BF 08 00         [24]  574 	cjne	r7,#0x08,00115$
      00210F                        575 00115$:
      00210F 40 F4            [24]  576 	jc	00102$
                                    577 ;	disp.c:93: return;
                                    578 ;	disp.c:94: }
      002111 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'timer0_intr'
                                    582 ;------------------------------------------------------------
                                    583 ;t                         Allocated to registers r7 
                                    584 ;------------------------------------------------------------
                                    585 ;	disp.c:96: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    586 ;	-----------------------------------------
                                    587 ;	 function timer0_intr
                                    588 ;	-----------------------------------------
      002112                        589 _timer0_intr:
                           00000F   590 	ar7 = 0x0f
                           00000E   591 	ar6 = 0x0e
                           00000D   592 	ar5 = 0x0d
                           00000C   593 	ar4 = 0x0c
                           00000B   594 	ar3 = 0x0b
                           00000A   595 	ar2 = 0x0a
                           000009   596 	ar1 = 0x09
                           000008   597 	ar0 = 0x08
      002112 C0 E0            [24]  598 	push	acc
      002114 C0 82            [24]  599 	push	dpl
      002116 C0 83            [24]  600 	push	dph
      002118 C0 D0            [24]  601 	push	psw
      00211A 75 D0 08         [24]  602 	mov	psw,#0x08
                                    603 ;	disp.c:99: DIS_TR0;
                                    604 ;	assignBit
      00211D C2 8C            [12]  605 	clr	_TR0
                                    606 ;	disp.c:101: t = column & 7u;
      00211F 78 31            [12]  607 	mov	r0,#_column
      002121 86 0F            [24]  608 	mov	ar7,@r0
      002123 53 0F 07         [24]  609 	anl	ar7,#0x07
                                    610 ;	disp.c:102: gpo[4] = ddata[t];
      002126 EF               [12]  611 	mov	a,r7
      002127 24 29            [12]  612 	add	a,#_ddata
      002129 F9               [12]  613 	mov	r1,a
      00212A 87 0E            [24]  614 	mov	ar6,@r1
      00212C 90 F0 04         [24]  615 	mov	dptr,#(_gpo + 0x0004)
      00212F EE               [12]  616 	mov	a,r6
      002130 F0               [24]  617 	movx	@dptr,a
                                    618 ;	disp.c:103: gpo[5] = dcol[t];
      002131 EF               [12]  619 	mov	a,r7
      002132 24 21            [12]  620 	add	a,#_dcol
      002134 F9               [12]  621 	mov	r1,a
      002135 87 0F            [24]  622 	mov	ar7,@r1
      002137 90 F0 05         [24]  623 	mov	dptr,#(_gpo + 0x0005)
      00213A EF               [12]  624 	mov	a,r7
      00213B F0               [24]  625 	movx	@dptr,a
                                    626 ;	disp.c:104: column++;
      00213C 78 31            [12]  627 	mov	r0,#_column
      00213E E6               [12]  628 	mov	a,@r0
      00213F 78 31            [12]  629 	mov	r0,#_column
      002141 04               [12]  630 	inc	a
      002142 F6               [12]  631 	mov	@r0,a
                                    632 ;	disp.c:106: TH0 = 0xf8;
      002143 75 8C F8         [24]  633 	mov	_TH0,#0xf8
                                    634 ;	disp.c:107: TL0 = 0x00;
      002146 75 8A 00         [24]  635 	mov	_TL0,#0x00
                                    636 ;	disp.c:109: EN_TR0;
                                    637 ;	assignBit
      002149 D2 8C            [12]  638 	setb	_TR0
                                    639 ;	disp.c:111: return;
                                    640 ;	disp.c:112: }
      00214B D0 D0            [24]  641 	pop	psw
      00214D D0 83            [24]  642 	pop	dph
      00214F D0 82            [24]  643 	pop	dpl
      002151 D0 E0            [24]  644 	pop	acc
      002153 32               [24]  645 	reti
                                    646 ;	eliminated unneeded push/pop b
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'main'
                                    649 ;------------------------------------------------------------
                                    650 ;i                         Allocated to registers r5 
                                    651 ;j                         Allocated to registers r7 
                                    652 ;cycle                     Allocated to registers 
                                    653 ;------------------------------------------------------------
                                    654 ;	disp.c:114: void main(void) {
                                    655 ;	-----------------------------------------
                                    656 ;	 function main
                                    657 ;	-----------------------------------------
      002154                        658 _main:
                           000007   659 	ar7 = 0x07
                           000006   660 	ar6 = 0x06
                           000005   661 	ar5 = 0x05
                           000004   662 	ar4 = 0x04
                           000003   663 	ar3 = 0x03
                           000002   664 	ar2 = 0x02
                           000001   665 	ar1 = 0x01
                           000000   666 	ar0 = 0x00
                                    667 ;	disp.c:118: init_gpo();
      002154 12 20 9B         [24]  668 	lcall	_init_gpo
                                    669 ;	disp.c:119: clear_gpo();
      002157 12 20 BD         [24]  670 	lcall	_clear_gpo
                                    671 ;	disp.c:120: init_disp();
      00215A 12 20 F0         [24]  672 	lcall	_init_disp
                                    673 ;	disp.c:122: for (j = 0u; j < 8u; j++)
      00215D 7F 00            [12]  674 	mov	r7,#0x00
      00215F                        675 00119$:
                                    676 ;	disp.c:123: if (!j) ddata[j] = 0u;
      00215F EF               [12]  677 	mov	a,r7
      002160 70 08            [24]  678 	jnz	00102$
      002162 EF               [12]  679 	mov	a,r7
      002163 24 29            [12]  680 	add	a,#_ddata
      002165 F8               [12]  681 	mov	r0,a
      002166 76 00            [12]  682 	mov	@r0,#0x00
      002168 80 0C            [24]  683 	sjmp	00120$
      00216A                        684 00102$:
                                    685 ;	disp.c:124: else ddata[j] = ddata[j - 1u] + 1u;
      00216A EF               [12]  686 	mov	a,r7
      00216B 24 29            [12]  687 	add	a,#_ddata
      00216D F9               [12]  688 	mov	r1,a
      00216E EF               [12]  689 	mov	a,r7
      00216F 14               [12]  690 	dec	a
      002170 24 29            [12]  691 	add	a,#_ddata
      002172 F8               [12]  692 	mov	r0,a
      002173 E6               [12]  693 	mov	a,@r0
      002174 04               [12]  694 	inc	a
      002175 F7               [12]  695 	mov	@r1,a
      002176                        696 00120$:
                                    697 ;	disp.c:122: for (j = 0u; j < 8u; j++)
      002176 0F               [12]  698 	inc	r7
      002177 BF 08 00         [24]  699 	cjne	r7,#0x08,00175$
      00217A                        700 00175$:
      00217A 40 E3            [24]  701 	jc	00119$
                                    702 ;	disp.c:126: init_timer0();
      00217C 12 20 E4         [24]  703 	lcall	_init_timer0
                                    704 ;	disp.c:127: init_intr();
      00217F 12 20 DD         [24]  705 	lcall	_init_intr
                                    706 ;	disp.c:129: EN_TR0;
                                    707 ;	assignBit
      002182 D2 8C            [12]  708 	setb	_TR0
                                    709 ;	disp.c:131: for (cycle = 0u; ; cycle++) {
      002184 7E 00            [12]  710 	mov	r6,#0x00
      002186 7F 00            [12]  711 	mov	r7,#0x00
      002188                        712 00123$:
                                    713 ;	disp.c:132: printf("%0.4x\r\n", cycle);
      002188 C0 07            [24]  714 	push	ar7
      00218A C0 06            [24]  715 	push	ar6
      00218C C0 06            [24]  716 	push	ar6
      00218E C0 07            [24]  717 	push	ar7
      002190 74 11            [12]  718 	mov	a,#___str_0
      002192 C0 E0            [24]  719 	push	acc
      002194 74 35            [12]  720 	mov	a,#(___str_0 >> 8)
      002196 C0 E0            [24]  721 	push	acc
      002198 74 80            [12]  722 	mov	a,#0x80
      00219A C0 E0            [24]  723 	push	acc
      00219C 12 22 2D         [24]  724 	lcall	_printf
      00219F E5 81            [12]  725 	mov	a,sp
      0021A1 24 FB            [12]  726 	add	a,#0xfb
      0021A3 F5 81            [12]  727 	mov	sp,a
      0021A5 D0 06            [24]  728 	pop	ar6
      0021A7 D0 07            [24]  729 	pop	ar7
                                    730 ;	disp.c:133: i = 0u;
      0021A9 7D 00            [12]  731 	mov	r5,#0x00
                                    732 ;	disp.c:136: do {
      0021AB                        733 00130$:
      0021AB 7C 00            [12]  734 	mov	r4,#0x00
      0021AD                        735 00108$:
                                    736 ;	disp.c:146: __endasm;
      0021AD 00               [12]  737 	nop
      0021AE 00               [12]  738 	nop
      0021AF 00               [12]  739 	nop
      0021B0 00               [12]  740 	nop
      0021B1 00               [12]  741 	nop
      0021B2 00               [12]  742 	nop
      0021B3 00               [12]  743 	nop
      0021B4 00               [12]  744 	nop
                                    745 ;	disp.c:147: j++;
      0021B5 0C               [12]  746 	inc	r4
                                    747 ;	disp.c:148: } while (j);
      0021B6 EC               [12]  748 	mov	a,r4
      0021B7 70 F4            [24]  749 	jnz	00108$
                                    750 ;	disp.c:149: i++;
      0021B9 ED               [12]  751 	mov	a,r5
      0021BA 04               [12]  752 	inc	a
                                    753 ;	disp.c:150: } while (i);
      0021BB FC               [12]  754 	mov	r4,a
      0021BC FD               [12]  755 	mov	r5,a
                                    756 ;	disp.c:152: for (j = 0u; j < 8u; j++)
      0021BD 70 EC            [24]  757 	jnz	00130$
      0021BF FD               [12]  758 	mov	r5,a
      0021C0                        759 00121$:
                                    760 ;	disp.c:153: if (!j) ddata[j]++;
      0021C0 ED               [12]  761 	mov	a,r5
      0021C1 70 0A            [24]  762 	jnz	00115$
      0021C3 ED               [12]  763 	mov	a,r5
      0021C4 24 29            [12]  764 	add	a,#_ddata
      0021C6 F9               [12]  765 	mov	r1,a
      0021C7 E7               [12]  766 	mov	a,@r1
      0021C8 FC               [12]  767 	mov	r4,a
      0021C9 04               [12]  768 	inc	a
      0021CA F7               [12]  769 	mov	@r1,a
      0021CB 80 0D            [24]  770 	sjmp	00122$
      0021CD                        771 00115$:
                                    772 ;	disp.c:154: else ddata[j] = ddata[j - 1u] + 1u;
      0021CD ED               [12]  773 	mov	a,r5
      0021CE 24 29            [12]  774 	add	a,#_ddata
      0021D0 F9               [12]  775 	mov	r1,a
      0021D1 ED               [12]  776 	mov	a,r5
      0021D2 14               [12]  777 	dec	a
      0021D3 24 29            [12]  778 	add	a,#_ddata
      0021D5 F8               [12]  779 	mov	r0,a
      0021D6 E6               [12]  780 	mov	a,@r0
      0021D7 FC               [12]  781 	mov	r4,a
      0021D8 04               [12]  782 	inc	a
      0021D9 F7               [12]  783 	mov	@r1,a
      0021DA                        784 00122$:
                                    785 ;	disp.c:152: for (j = 0u; j < 8u; j++)
      0021DA 0D               [12]  786 	inc	r5
      0021DB BD 08 00         [24]  787 	cjne	r5,#0x08,00180$
      0021DE                        788 00180$:
      0021DE 40 E0            [24]  789 	jc	00121$
                                    790 ;	disp.c:131: for (cycle = 0u; ; cycle++) {
      0021E0 0E               [12]  791 	inc	r6
                                    792 ;	disp.c:157: return;
      0021E1 BE 00 A4         [24]  793 	cjne	r6,#0x00,00123$
      0021E4 0F               [12]  794 	inc	r7
                                    795 ;	disp.c:158: }
      0021E5 80 A1            [24]  796 	sjmp	00123$
                                    797 	.area CSEG    (CODE)
                                    798 	.area CONST   (CODE)
                                    799 	.area CONST   (CODE)
      003511                        800 ___str_0:
      003511 25 30 2E 34 78         801 	.ascii "%0.4x"
      003516 0D                     802 	.db 0x0d
      003517 0A                     803 	.db 0x0a
      003518 00                     804 	.db 0x00
                                    805 	.area CSEG    (CODE)
                                    806 	.area XINIT   (CODE)
                                    807 	.area CABS    (ABS,CODE)
