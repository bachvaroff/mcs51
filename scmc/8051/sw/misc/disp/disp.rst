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
                                     18 	.globl _getchar
                                     19 	.globl _putchar
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _FL
                                     27 	.globl _P
                                     28 	.globl _TF2
                                     29 	.globl _EXF2
                                     30 	.globl _RCLK
                                     31 	.globl _TCLK
                                     32 	.globl _EXEN2
                                     33 	.globl _TR2
                                     34 	.globl _C_T2
                                     35 	.globl _CP_RL2
                                     36 	.globl _T2CON_7
                                     37 	.globl _T2CON_6
                                     38 	.globl _T2CON_5
                                     39 	.globl _T2CON_4
                                     40 	.globl _T2CON_3
                                     41 	.globl _T2CON_2
                                     42 	.globl _T2CON_1
                                     43 	.globl _T2CON_0
                                     44 	.globl _PT2
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ET2
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _T2EX
                                     90 	.globl _T2
                                     91 	.globl _P1_7
                                     92 	.globl _P1_6
                                     93 	.globl _P1_5
                                     94 	.globl _P1_4
                                     95 	.globl _P1_3
                                     96 	.globl _P1_2
                                     97 	.globl _P1_1
                                     98 	.globl _P1_0
                                     99 	.globl _TF1
                                    100 	.globl _TR1
                                    101 	.globl _TF0
                                    102 	.globl _TR0
                                    103 	.globl _IE1
                                    104 	.globl _IT1
                                    105 	.globl _IE0
                                    106 	.globl _IT0
                                    107 	.globl _P0_7
                                    108 	.globl _P0_6
                                    109 	.globl _P0_5
                                    110 	.globl _P0_4
                                    111 	.globl _P0_3
                                    112 	.globl _P0_2
                                    113 	.globl _P0_1
                                    114 	.globl _P0_0
                                    115 	.globl _B
                                    116 	.globl _A
                                    117 	.globl _ACC
                                    118 	.globl _PSW
                                    119 	.globl _TH2
                                    120 	.globl _TL2
                                    121 	.globl _RCAP2H
                                    122 	.globl _RCAP2L
                                    123 	.globl _T2MOD
                                    124 	.globl _T2CON
                                    125 	.globl _IP
                                    126 	.globl _P3
                                    127 	.globl _IE
                                    128 	.globl _P2
                                    129 	.globl _SBUF
                                    130 	.globl _SCON
                                    131 	.globl _P1
                                    132 	.globl _TH1
                                    133 	.globl _TH0
                                    134 	.globl _TL1
                                    135 	.globl _TL0
                                    136 	.globl _TMOD
                                    137 	.globl _TCON
                                    138 	.globl _PCON
                                    139 	.globl _DPH
                                    140 	.globl _DPL
                                    141 	.globl _SP
                                    142 	.globl _P0
                                    143 	.globl _gpo
                                    144 	.globl _OE
                                    145 	.globl _column
                                    146 	.globl _ddata
                                    147 	.globl _dcol
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
      000023                        299 __start__stack:
      000023                        300 	.ds	1
                                    301 
                                    302 ;--------------------------------------------------------
                                    303 ; indirectly addressable internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area ISEG    (DATA)
      000011                        306 _dcol::
      000011                        307 	.ds 8
      000019                        308 _ddata::
      000019                        309 	.ds 8
      000021                        310 _column::
      000021                        311 	.ds 1
      000022                        312 _OE::
      000022                        313 	.ds 1
                                    314 ;--------------------------------------------------------
                                    315 ; absolute internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area IABS    (ABS,DATA)
                                    318 	.area IABS    (ABS,DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; bit data
                                    321 ;--------------------------------------------------------
                                    322 	.area BSEG    (BIT)
                                    323 ;--------------------------------------------------------
                                    324 ; paged external ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area PSEG    (PAG,XDATA)
                           000000   327 _gpo	=	0x0000
                                    328 ;--------------------------------------------------------
                                    329 ; external ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area XSEG    (XDATA)
                                    332 ;--------------------------------------------------------
                                    333 ; absolute external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area XABS    (ABS,XDATA)
                                    336 ;--------------------------------------------------------
                                    337 ; external initialized ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XISEG   (XDATA)
      003000                        340 _font8x8:
      003000                        341 	.ds 2048
      003800                        342 _msg:
      003800                        343 	.ds 3
                                    344 	.area HOME    (CODE)
                                    345 	.area GSINIT0 (CODE)
                                    346 	.area GSINIT1 (CODE)
                                    347 	.area GSINIT2 (CODE)
                                    348 	.area GSINIT3 (CODE)
                                    349 	.area GSINIT4 (CODE)
                                    350 	.area GSINIT5 (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.area GSFINAL (CODE)
                                    353 	.area CSEG    (CODE)
                                    354 ;--------------------------------------------------------
                                    355 ; interrupt vector 
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
      002000                        358 __interrupt_vect:
      002000 02 20 11         [24]  359 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  360 	reti
      002004                        361 	.ds	7
      00200B 02 21 16         [24]  362 	ljmp	_timer0_intr
                                    363 ;--------------------------------------------------------
                                    364 ; global & static initialisations
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.area GSFINAL (CODE)
                                    369 	.area GSINIT  (CODE)
                                    370 	.globl __sdcc_gsinit_startup
                                    371 	.globl __sdcc_program_startup
                                    372 	.globl __start__stack
                                    373 	.globl __mcs51_genXINIT
                                    374 	.globl __mcs51_genXRAMCLEAR
                                    375 	.globl __mcs51_genRAMCLEAR
                                    376 ;	disp.c:39: __idata const uint8_t dcol[8] = {
      00206A 78 11            [12]  377 	mov	r0,#_dcol
      00206C 76 80            [12]  378 	mov	@r0,#0x80
      00206E 78 12            [12]  379 	mov	r0,#(_dcol + 0x0001)
      002070 76 40            [12]  380 	mov	@r0,#0x40
      002072 78 13            [12]  381 	mov	r0,#(_dcol + 0x0002)
      002074 76 20            [12]  382 	mov	@r0,#0x20
      002076 78 14            [12]  383 	mov	r0,#(_dcol + 0x0003)
      002078 76 10            [12]  384 	mov	@r0,#0x10
      00207A 78 15            [12]  385 	mov	r0,#(_dcol + 0x0004)
      00207C 76 08            [12]  386 	mov	@r0,#0x08
      00207E 78 16            [12]  387 	mov	r0,#(_dcol + 0x0005)
      002080 76 04            [12]  388 	mov	@r0,#0x04
      002082 78 17            [12]  389 	mov	r0,#(_dcol + 0x0006)
      002084 76 02            [12]  390 	mov	@r0,#0x02
      002086 78 18            [12]  391 	mov	r0,#(_dcol + 0x0007)
      002088 76 01            [12]  392 	mov	@r0,#0x01
                                    393 	.area GSFINAL (CODE)
      00208A 02 20 0E         [24]  394 	ljmp	__sdcc_program_startup
                                    395 ;--------------------------------------------------------
                                    396 ; Home
                                    397 ;--------------------------------------------------------
                                    398 	.area HOME    (CODE)
                                    399 	.area HOME    (CODE)
      00200E                        400 __sdcc_program_startup:
      00200E 02 21 52         [24]  401 	ljmp	_main
                                    402 ;	return from main will return to caller
                                    403 ;--------------------------------------------------------
                                    404 ; code
                                    405 ;--------------------------------------------------------
                                    406 	.area CSEG    (CODE)
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'putchar'
                                    409 ;------------------------------------------------------------
                                    410 ;c                         Allocated to registers 
                                    411 ;------------------------------------------------------------
                                    412 ;	disp.c:9: int putchar(int c) __naked {
                                    413 ;	-----------------------------------------
                                    414 ;	 function putchar
                                    415 ;	-----------------------------------------
      00208D                        416 _putchar:
                                    417 ;	naked function: no prologue.
                                    418 ;	disp.c:14: __endasm;
      00208D E5 82            [12]  419 	mov	a, dpl
      00208F 02 00 30         [24]  420 	ljmp	0x0030
                                    421 ;	disp.c:15: }
                                    422 ;	naked function: no epilogue.
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'getchar'
                                    425 ;------------------------------------------------------------
                                    426 ;	disp.c:17: int getchar(void) __naked {
                                    427 ;	-----------------------------------------
                                    428 ;	 function getchar
                                    429 ;	-----------------------------------------
      002092                        430 _getchar:
                                    431 ;	naked function: no prologue.
                                    432 ;	disp.c:23: __endasm;
      002092 12 00 32         [24]  433 	lcall	0x0032
      002095 F5 82            [12]  434 	mov	dpl, a
      002097 75 83 00         [24]  435 	mov	dph, #0
      00209A 22               [24]  436 	ret
                                    437 ;	disp.c:24: }
                                    438 ;	naked function: no epilogue.
                                    439 ;------------------------------------------------------------
                                    440 ;Allocation info for local variables in function 'init_gpo'
                                    441 ;------------------------------------------------------------
                                    442 ;	disp.c:58: void init_gpo(void) {
                                    443 ;	-----------------------------------------
                                    444 ;	 function init_gpo
                                    445 ;	-----------------------------------------
      00209B                        446 _init_gpo:
                           000007   447 	ar7 = 0x07
                           000006   448 	ar6 = 0x06
                           000005   449 	ar5 = 0x05
                           000004   450 	ar4 = 0x04
                           000003   451 	ar3 = 0x03
                           000002   452 	ar2 = 0x02
                           000001   453 	ar1 = 0x01
                           000000   454 	ar0 = 0x00
                                    455 ;	disp.c:59: P1_7 = 0;
                                    456 ;	assignBit
      00209B C2 97            [12]  457 	clr	_P1_7
                                    458 ;	disp.c:61: P2 = GPO_BASE_H;
      00209D 75 A0 F0         [24]  459 	mov	_P2,#0xf0
                                    460 ;	disp.c:63: CLEAR_GPO;
      0020A0 78 06            [12]  461 	mov	r0,#(_gpo + 0x0006)
      0020A2 74 3F            [12]  462 	mov	a,#0x3f
      0020A4 F2               [24]  463 	movx	@r0,a
      0020A5 78 00            [12]  464 	mov	r0,#_gpo
      0020A7 E4               [12]  465 	clr	a
      0020A8 F2               [24]  466 	movx	@r0,a
      0020A9 78 01            [12]  467 	mov	r0,#(_gpo + 0x0001)
      0020AB F2               [24]  468 	movx	@r0,a
      0020AC 78 02            [12]  469 	mov	r0,#(_gpo + 0x0002)
      0020AE F2               [24]  470 	movx	@r0,a
      0020AF 78 03            [12]  471 	mov	r0,#(_gpo + 0x0003)
      0020B1 F2               [24]  472 	movx	@r0,a
      0020B2 78 04            [12]  473 	mov	r0,#(_gpo + 0x0004)
      0020B4 F2               [24]  474 	movx	@r0,a
      0020B5 78 05            [12]  475 	mov	r0,#(_gpo + 0x0005)
      0020B7 F2               [24]  476 	movx	@r0,a
                                    477 ;	disp.c:65: return;
                                    478 ;	disp.c:66: }
      0020B8 22               [24]  479 	ret
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'clear_gpo'
                                    482 ;------------------------------------------------------------
                                    483 ;	disp.c:68: void clear_gpo(void) {
                                    484 ;	-----------------------------------------
                                    485 ;	 function clear_gpo
                                    486 ;	-----------------------------------------
      0020B9                        487 _clear_gpo:
                                    488 ;	disp.c:69: CLEAR_GPO;
      0020B9 78 06            [12]  489 	mov	r0,#(_gpo + 0x0006)
      0020BB 74 3F            [12]  490 	mov	a,#0x3f
      0020BD F2               [24]  491 	movx	@r0,a
      0020BE 78 00            [12]  492 	mov	r0,#_gpo
      0020C0 E4               [12]  493 	clr	a
      0020C1 F2               [24]  494 	movx	@r0,a
      0020C2 78 01            [12]  495 	mov	r0,#(_gpo + 0x0001)
      0020C4 F2               [24]  496 	movx	@r0,a
      0020C5 78 02            [12]  497 	mov	r0,#(_gpo + 0x0002)
      0020C7 F2               [24]  498 	movx	@r0,a
      0020C8 78 03            [12]  499 	mov	r0,#(_gpo + 0x0003)
      0020CA F2               [24]  500 	movx	@r0,a
      0020CB 78 04            [12]  501 	mov	r0,#(_gpo + 0x0004)
      0020CD F2               [24]  502 	movx	@r0,a
      0020CE 78 05            [12]  503 	mov	r0,#(_gpo + 0x0005)
      0020D0 F2               [24]  504 	movx	@r0,a
                                    505 ;	disp.c:71: return;
                                    506 ;	disp.c:72: }
      0020D1 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'init_intr'
                                    510 ;------------------------------------------------------------
                                    511 ;	disp.c:74: void init_intr(void) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function init_intr
                                    514 ;	-----------------------------------------
      0020D2                        515 _init_intr:
                                    516 ;	disp.c:75: TR0 = 0;
                                    517 ;	assignBit
      0020D2 C2 8C            [12]  518 	clr	_TR0
                                    519 ;	disp.c:76: ET0 = 1;
                                    520 ;	assignBit
      0020D4 D2 A9            [12]  521 	setb	_ET0
                                    522 ;	disp.c:77: EA  = 1;
                                    523 ;	assignBit
      0020D6 D2 AF            [12]  524 	setb	_EA
                                    525 ;	disp.c:79: return;
                                    526 ;	disp.c:80: }
      0020D8 22               [24]  527 	ret
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'init_timer0'
                                    530 ;------------------------------------------------------------
                                    531 ;	disp.c:82: void init_timer0(void) {
                                    532 ;	-----------------------------------------
                                    533 ;	 function init_timer0
                                    534 ;	-----------------------------------------
      0020D9                        535 _init_timer0:
                                    536 ;	disp.c:83: TR0 = 0;
                                    537 ;	assignBit
      0020D9 C2 8C            [12]  538 	clr	_TR0
                                    539 ;	disp.c:84: TMOD = 0x01;
      0020DB 75 89 01         [24]  540 	mov	_TMOD,#0x01
                                    541 ;	disp.c:85: TH0 = 0xf8;
      0020DE 75 8C F8         [24]  542 	mov	_TH0,#0xf8
                                    543 ;	disp.c:86: TL0 = 0x00;
      0020E1 75 8A 00         [24]  544 	mov	_TL0,#0x00
                                    545 ;	disp.c:88: return;
                                    546 ;	disp.c:89: }
      0020E4 22               [24]  547 	ret
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'init_disp'
                                    550 ;------------------------------------------------------------
                                    551 ;	disp.c:91: void init_disp(void) {
                                    552 ;	-----------------------------------------
                                    553 ;	 function init_disp
                                    554 ;	-----------------------------------------
      0020E5                        555 _init_disp:
                                    556 ;	disp.c:92: gpo[DISP_COL] = 0u;
      0020E5 78 05            [12]  557 	mov	r0,#(_gpo + 0x0005)
      0020E7 E4               [12]  558 	clr	a
      0020E8 F2               [24]  559 	movx	@r0,a
                                    560 ;	disp.c:93: gpo[DISP_DATA] = 0u;
      0020E9 78 04            [12]  561 	mov	r0,#(_gpo + 0x0004)
      0020EB F2               [24]  562 	movx	@r0,a
                                    563 ;	disp.c:94: OE = 0x0fu; /* 00_001111 */
      0020EC 78 22            [12]  564 	mov	r0,#_OE
      0020EE 76 0F            [12]  565 	mov	@r0,#0x0f
                                    566 ;	disp.c:95: gpo[GPO_OE] = OE; /* 00_001111 */
      0020F0 78 06            [12]  567 	mov	r0,#(_gpo + 0x0006)
      0020F2 74 0F            [12]  568 	mov	a,#0x0f
      0020F4 F2               [24]  569 	movx	@r0,a
                                    570 ;	disp.c:97: for (column = 0u; column < 8u; column++)
      0020F5 78 21            [12]  571 	mov	r0,#_column
      0020F7 76 00            [12]  572 	mov	@r0,#0x00
      0020F9                        573 00103$:
      0020F9 78 21            [12]  574 	mov	r0,#_column
      0020FB B6 08 00         [24]  575 	cjne	@r0,#0x08,00115$
      0020FE                        576 00115$:
      0020FE 50 11            [24]  577 	jnc	00101$
                                    578 ;	disp.c:98: ddata[column] = 0u;
      002100 78 21            [12]  579 	mov	r0,#_column
      002102 E6               [12]  580 	mov	a,@r0
      002103 24 19            [12]  581 	add	a,#_ddata
      002105 F8               [12]  582 	mov	r0,a
      002106 76 00            [12]  583 	mov	@r0,#0x00
                                    584 ;	disp.c:97: for (column = 0u; column < 8u; column++)
      002108 78 21            [12]  585 	mov	r0,#_column
      00210A E6               [12]  586 	mov	a,@r0
      00210B 78 21            [12]  587 	mov	r0,#_column
      00210D 04               [12]  588 	inc	a
      00210E F6               [12]  589 	mov	@r0,a
      00210F 80 E8            [24]  590 	sjmp	00103$
      002111                        591 00101$:
                                    592 ;	disp.c:99: column = 0u;
      002111 78 21            [12]  593 	mov	r0,#_column
      002113 76 00            [12]  594 	mov	@r0,#0x00
                                    595 ;	disp.c:101: return;
                                    596 ;	disp.c:102: }
      002115 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'timer0_intr'
                                    600 ;------------------------------------------------------------
                                    601 ;t                         Allocated to registers r7 
                                    602 ;------------------------------------------------------------
                                    603 ;	disp.c:104: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    604 ;	-----------------------------------------
                                    605 ;	 function timer0_intr
                                    606 ;	-----------------------------------------
      002116                        607 _timer0_intr:
                           00000F   608 	ar7 = 0x0f
                           00000E   609 	ar6 = 0x0e
                           00000D   610 	ar5 = 0x0d
                           00000C   611 	ar4 = 0x0c
                           00000B   612 	ar3 = 0x0b
                           00000A   613 	ar2 = 0x0a
                           000009   614 	ar1 = 0x09
                           000008   615 	ar0 = 0x08
      002116 C0 E0            [24]  616 	push	acc
      002118 C0 D0            [24]  617 	push	psw
      00211A 75 D0 08         [24]  618 	mov	psw,#0x08
                                    619 ;	disp.c:107: t = column & 7u;
      00211D 78 21            [12]  620 	mov	r0,#_column
      00211F 86 0F            [24]  621 	mov	ar7,@r0
      002121 53 0F 07         [24]  622 	anl	ar7,#0x07
                                    623 ;	disp.c:108: gpo[DISP_COL] = 0u;
      002124 78 05            [12]  624 	mov	r0,#(_gpo + 0x0005)
      002126 E4               [12]  625 	clr	a
      002127 F2               [24]  626 	movx	@r0,a
                                    627 ;	disp.c:109: gpo[DISP_DATA] = ddata[t];
      002128 EF               [12]  628 	mov	a,r7
      002129 24 19            [12]  629 	add	a,#_ddata
      00212B F9               [12]  630 	mov	r1,a
      00212C 87 0E            [24]  631 	mov	ar6,@r1
      00212E 78 04            [12]  632 	mov	r0,#(_gpo + 0x0004)
      002130 EE               [12]  633 	mov	a,r6
      002131 F2               [24]  634 	movx	@r0,a
                                    635 ;	disp.c:110: gpo[DISP_COL] = dcol[t];
      002132 EF               [12]  636 	mov	a,r7
      002133 24 11            [12]  637 	add	a,#_dcol
      002135 F9               [12]  638 	mov	r1,a
      002136 87 0F            [24]  639 	mov	ar7,@r1
      002138 78 05            [12]  640 	mov	r0,#(_gpo + 0x0005)
      00213A EF               [12]  641 	mov	a,r7
      00213B F2               [24]  642 	movx	@r0,a
                                    643 ;	disp.c:111: column++;
      00213C 78 21            [12]  644 	mov	r0,#_column
      00213E E6               [12]  645 	mov	a,@r0
      00213F 78 21            [12]  646 	mov	r0,#_column
      002141 04               [12]  647 	inc	a
      002142 F6               [12]  648 	mov	@r0,a
                                    649 ;	disp.c:113: TR0 = 0;
                                    650 ;	assignBit
      002143 C2 8C            [12]  651 	clr	_TR0
                                    652 ;	disp.c:114: TH0 = 0xf8;
      002145 75 8C F8         [24]  653 	mov	_TH0,#0xf8
                                    654 ;	disp.c:115: TL0 = 0x00;
      002148 75 8A 00         [24]  655 	mov	_TL0,#0x00
                                    656 ;	disp.c:116: TR0 = 1;
                                    657 ;	assignBit
      00214B D2 8C            [12]  658 	setb	_TR0
                                    659 ;	disp.c:118: return;
                                    660 ;	disp.c:119: }
      00214D D0 D0            [24]  661 	pop	psw
      00214F D0 E0            [24]  662 	pop	acc
      002151 32               [24]  663 	reti
                                    664 ;	eliminated unneeded push/pop dpl
                                    665 ;	eliminated unneeded push/pop dph
                                    666 ;	eliminated unneeded push/pop b
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'main'
                                    669 ;------------------------------------------------------------
                                    670 ;symbol                    Allocated to stack - _bp +2
                                    671 ;bit                       Allocated to registers r7 
                                    672 ;i                         Allocated to stack - _bp +3
                                    673 ;j                         Allocated to registers r3 
                                    674 ;i                         Allocated to registers r6 
                                    675 ;j                         Allocated to registers r5 
                                    676 ;sloc0                     Allocated to stack - _bp +1
                                    677 ;------------------------------------------------------------
                                    678 ;	disp.c:148: void main(void) {
                                    679 ;	-----------------------------------------
                                    680 ;	 function main
                                    681 ;	-----------------------------------------
      002152                        682 _main:
                           000007   683 	ar7 = 0x07
                           000006   684 	ar6 = 0x06
                           000005   685 	ar5 = 0x05
                           000004   686 	ar4 = 0x04
                           000003   687 	ar3 = 0x03
                           000002   688 	ar2 = 0x02
                           000001   689 	ar1 = 0x01
                           000000   690 	ar0 = 0x00
      002152 C0 10            [24]  691 	push	_bp
      002154 85 81 10         [24]  692 	mov	_bp,sp
      002157 05 81            [12]  693 	inc	sp
      002159 05 81            [12]  694 	inc	sp
      00215B 05 81            [12]  695 	inc	sp
                                    696 ;	disp.c:152: init_gpo();
      00215D 12 20 9B         [24]  697 	lcall	_init_gpo
                                    698 ;	disp.c:153: clear_gpo();
      002160 12 20 B9         [24]  699 	lcall	_clear_gpo
                                    700 ;	disp.c:154: init_disp();	
      002163 12 20 E5         [24]  701 	lcall	_init_disp
                                    702 ;	disp.c:155: init_timer0();
      002166 12 20 D9         [24]  703 	lcall	_init_timer0
                                    704 ;	disp.c:156: init_intr();
      002169 12 20 D2         [24]  705 	lcall	_init_intr
                                    706 ;	disp.c:157: TR0 = 1;
                                    707 ;	assignBit
      00216C D2 8C            [12]  708 	setb	_TR0
                                    709 ;	disp.c:159: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      00216E 7F 00            [12]  710 	mov	r7,#0x00
      002170 E5 10            [12]  711 	mov	a,_bp
      002172 24 03            [12]  712 	add	a,#0x03
      002174 F8               [12]  713 	mov	r0,a
      002175 76 00            [12]  714 	mov	@r0,#0x00
      002177                        715 00117$:
                                    716 ;	disp.c:160: if (!bit) {
      002177 EF               [12]  717 	mov	a,r7
      002178 70 4E            [24]  718 	jnz	00104$
                                    719 ;	disp.c:161: symbol = msg[i];
      00217A C0 07            [24]  720 	push	ar7
      00217C 90 38 00         [24]  721 	mov	dptr,#_msg
      00217F E0               [24]  722 	movx	a,@dptr
      002180 FB               [12]  723 	mov	r3,a
      002181 A3               [24]  724 	inc	dptr
      002182 E0               [24]  725 	movx	a,@dptr
      002183 FC               [12]  726 	mov	r4,a
      002184 A3               [24]  727 	inc	dptr
      002185 E0               [24]  728 	movx	a,@dptr
      002186 FD               [12]  729 	mov	r5,a
      002187 E5 10            [12]  730 	mov	a,_bp
      002189 24 03            [12]  731 	add	a,#0x03
      00218B F8               [12]  732 	mov	r0,a
      00218C E6               [12]  733 	mov	a,@r0
      00218D 2B               [12]  734 	add	a,r3
      00218E FA               [12]  735 	mov	r2,a
      00218F E4               [12]  736 	clr	a
      002190 3C               [12]  737 	addc	a,r4
      002191 FE               [12]  738 	mov	r6,a
      002192 8D 07            [24]  739 	mov	ar7,r5
      002194 8A 82            [24]  740 	mov	dpl,r2
      002196 8E 83            [24]  741 	mov	dph,r6
      002198 8F F0            [24]  742 	mov	b,r7
      00219A 12 22 4B         [24]  743 	lcall	__gptrget
      00219D FA               [12]  744 	mov	r2,a
      00219E A8 10            [24]  745 	mov	r0,_bp
      0021A0 08               [12]  746 	inc	r0
      0021A1 A6 02            [24]  747 	mov	@r0,ar2
                                    748 ;	disp.c:162: if (!symbol) {
      0021A3 D0 07            [24]  749 	pop	ar7
      0021A5 EA               [12]  750 	mov	a,r2
      0021A6 70 14            [24]  751 	jnz	00102$
                                    752 ;	disp.c:163: i = 0u;
      0021A8 E5 10            [12]  753 	mov	a,_bp
      0021AA 24 03            [12]  754 	add	a,#0x03
      0021AC F8               [12]  755 	mov	r0,a
      0021AD 76 00            [12]  756 	mov	@r0,#0x00
                                    757 ;	disp.c:164: symbol = msg[i];
      0021AF 8B 82            [24]  758 	mov	dpl,r3
      0021B1 8C 83            [24]  759 	mov	dph,r4
      0021B3 8D F0            [24]  760 	mov	b,r5
      0021B5 A8 10            [24]  761 	mov	r0,_bp
      0021B7 08               [12]  762 	inc	r0
      0021B8 12 22 4B         [24]  763 	lcall	__gptrget
      0021BB F6               [12]  764 	mov	@r0,a
      0021BC                        765 00102$:
                                    766 ;	disp.c:166: i++;
      0021BC E5 10            [12]  767 	mov	a,_bp
      0021BE 24 03            [12]  768 	add	a,#0x03
      0021C0 F8               [12]  769 	mov	r0,a
      0021C1 06               [12]  770 	inc	@r0
                                    771 ;	disp.c:167: OE = 0x8fu;
      0021C2 78 22            [12]  772 	mov	r0,#_OE
      0021C4 76 8F            [12]  773 	mov	@r0,#0x8f
      0021C6 80 04            [24]  774 	sjmp	00105$
      0021C8                        775 00104$:
                                    776 ;	disp.c:168: } else OE = 0x0fu;
      0021C8 78 22            [12]  777 	mov	r0,#_OE
      0021CA 76 0F            [12]  778 	mov	@r0,#0x0f
      0021CC                        779 00105$:
                                    780 ;	disp.c:169: gpo[GPO_OE] = OE;
      0021CC 78 06            [12]  781 	mov	r0,#(_gpo + 0x0006)
      0021CE 79 22            [12]  782 	mov	r1,#_OE
      0021D0 E7               [12]  783 	mov	a,@r1
      0021D1 F2               [24]  784 	movx	@r0,a
                                    785 ;	disp.c:125: do {
      0021D2 7E 00            [12]  786 	mov	r6,#0x00
                                    787 ;	disp.c:127: do {
      0021D4                        788 00123$:
      0021D4 7D 00            [12]  789 	mov	r5,#0x00
      0021D6                        790 00108$:
                                    791 ;	disp.c:139: __endasm;
      0021D6 00               [12]  792 	nop
      0021D7 00               [12]  793 	nop
      0021D8 00               [12]  794 	nop
      0021D9 00               [12]  795 	nop
                                    796 ;	disp.c:140: } while ((++j) ^ 0x80u);
      0021DA 0D               [12]  797 	inc	r5
      0021DB 8D 03            [24]  798 	mov	ar3,r5
      0021DD 7C 00            [12]  799 	mov	r4,#0x00
      0021DF 74 80            [12]  800 	mov	a,#0x80
      0021E1 6B               [12]  801 	xrl	a,r3
      0021E2 70 F2            [24]  802 	jnz	00108$
      0021E4 EC               [12]  803 	mov	a,r4
      0021E5 70 EF            [24]  804 	jnz	00108$
                                    805 ;	disp.c:141: } while ((++i) ^ 0x80u);
      0021E7 0E               [12]  806 	inc	r6
      0021E8 8E 04            [24]  807 	mov	ar4,r6
      0021EA 7D 00            [12]  808 	mov	r5,#0x00
      0021EC 74 80            [12]  809 	mov	a,#0x80
      0021EE 6C               [12]  810 	xrl	a,r4
      0021EF 70 E3            [24]  811 	jnz	00123$
      0021F1 ED               [12]  812 	mov	a,r5
      0021F2 70 E0            [24]  813 	jnz	00123$
                                    814 ;	disp.c:173: for (j = 0u; j < 8u; j++)
      0021F4 A8 10            [24]  815 	mov	r0,_bp
      0021F6 08               [12]  816 	inc	r0
      0021F7 E6               [12]  817 	mov	a,@r0
      0021F8 75 F0 08         [24]  818 	mov	b,#0x08
      0021FB A4               [48]  819 	mul	ab
      0021FC 24 00            [12]  820 	add	a,#_font8x8
      0021FE FD               [12]  821 	mov	r5,a
      0021FF 74 30            [12]  822 	mov	a,#(_font8x8 >> 8)
      002201 35 F0            [12]  823 	addc	a,b
      002203 FE               [12]  824 	mov	r6,a
      002204 74 07            [12]  825 	mov	a,#0x07
      002206 C3               [12]  826 	clr	c
      002207 9F               [12]  827 	subb	a,r7
      002208 FC               [12]  828 	mov	r4,a
      002209 7B 00            [12]  829 	mov	r3,#0x00
      00220B                        830 00115$:
                                    831 ;	disp.c:174: ddata[j] = ((font8x8[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00220B C0 07            [24]  832 	push	ar7
      00220D EB               [12]  833 	mov	a,r3
      00220E 24 19            [12]  834 	add	a,#_ddata
      002210 F9               [12]  835 	mov	r1,a
      002211 EB               [12]  836 	mov	a,r3
      002212 2D               [12]  837 	add	a,r5
      002213 F5 82            [12]  838 	mov	dpl,a
      002215 E4               [12]  839 	clr	a
      002216 3E               [12]  840 	addc	a,r6
      002217 F5 83            [12]  841 	mov	dph,a
      002219 E0               [24]  842 	movx	a,@dptr
      00221A FA               [12]  843 	mov	r2,a
      00221B 8C F0            [24]  844 	mov	b,r4
      00221D 05 F0            [12]  845 	inc	b
      00221F EA               [12]  846 	mov	a,r2
      002220 80 02            [24]  847 	sjmp	00168$
      002222                        848 00166$:
      002222 25 E0            [12]  849 	add	a,acc
      002224                        850 00168$:
      002224 D5 F0 FB         [24]  851 	djnz	b,00166$
      002227 54 80            [12]  852 	anl	a,#0x80
      002229 FA               [12]  853 	mov	r2,a
      00222A EB               [12]  854 	mov	a,r3
      00222B 24 19            [12]  855 	add	a,#_ddata
      00222D F8               [12]  856 	mov	r0,a
      00222E E6               [12]  857 	mov	a,@r0
      00222F C3               [12]  858 	clr	c
      002230 13               [12]  859 	rrc	a
      002231 4A               [12]  860 	orl	a,r2
      002232 F7               [12]  861 	mov	@r1,a
                                    862 ;	disp.c:173: for (j = 0u; j < 8u; j++)
      002233 0B               [12]  863 	inc	r3
      002234 BB 08 00         [24]  864 	cjne	r3,#0x08,00169$
      002237                        865 00169$:
      002237 D0 07            [24]  866 	pop	ar7
      002239 40 D0            [24]  867 	jc	00115$
                                    868 ;	disp.c:159: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      00223B EF               [12]  869 	mov	a,r7
      00223C 04               [12]  870 	inc	a
      00223D FE               [12]  871 	mov	r6,a
      00223E 74 07            [12]  872 	mov	a,#0x07
      002240 5E               [12]  873 	anl	a,r6
      002241 FF               [12]  874 	mov	r7,a
      002242 02 21 77         [24]  875 	ljmp	00117$
                                    876 ;	disp.c:179: __endasm;
                                    877 ;	disp.c:180: }
      002245 85 10 81         [24]  878 	mov	sp,_bp
      002248 D0 10            [24]  879 	pop	_bp
      00224A 22               [24]  880 	ret
                                    881 	.area CSEG    (CODE)
                                    882 	.area CONST   (CODE)
                                    883 	.area CONST   (CODE)
      00226B                        884 ___str_0:
      00226B 47 6F 20 66 75 63 6B   885 	.ascii "Go fuck yourselves you sons of bitches! "
             20 79 6F 75 72 73 65
             6C 76 65 73 20 79 6F
             75 20 73 6F 6E 73 20
             6F 66 20 62 69 74 63
             68 65 73 21 20
      002293 00                     886 	.db 0x00
                                    887 	.area CSEG    (CODE)
                                    888 	.area XINIT   (CODE)
      002294                        889 __xinit__font8x8:
      002294 00                     890 	.db #0x00	; 0
      002295 00                     891 	.db #0x00	; 0
      002296 00                     892 	.db #0x00	; 0
      002297 00                     893 	.db #0x00	; 0
      002298 00                     894 	.db #0x00	; 0
      002299 00                     895 	.db #0x00	; 0
      00229A 00                     896 	.db #0x00	; 0
      00229B 00                     897 	.db #0x00	; 0
      00229C 00                     898 	.db #0x00	; 0
      00229D 00                     899 	.db #0x00	; 0
      00229E 00                     900 	.db #0x00	; 0
      00229F 00                     901 	.db #0x00	; 0
      0022A0 00                     902 	.db #0x00	; 0
      0022A1 00                     903 	.db #0x00	; 0
      0022A2 00                     904 	.db #0x00	; 0
      0022A3 00                     905 	.db #0x00	; 0
      0022A4 00                     906 	.db #0x00	; 0
      0022A5 00                     907 	.db #0x00	; 0
      0022A6 00                     908 	.db #0x00	; 0
      0022A7 00                     909 	.db #0x00	; 0
      0022A8 00                     910 	.db #0x00	; 0
      0022A9 00                     911 	.db #0x00	; 0
      0022AA 00                     912 	.db #0x00	; 0
      0022AB 00                     913 	.db #0x00	; 0
      0022AC 00                     914 	.db #0x00	; 0
      0022AD 00                     915 	.db #0x00	; 0
      0022AE 00                     916 	.db #0x00	; 0
      0022AF 00                     917 	.db #0x00	; 0
      0022B0 00                     918 	.db #0x00	; 0
      0022B1 00                     919 	.db #0x00	; 0
      0022B2 00                     920 	.db #0x00	; 0
      0022B3 00                     921 	.db #0x00	; 0
      0022B4 00                     922 	.db #0x00	; 0
      0022B5 00                     923 	.db #0x00	; 0
      0022B6 00                     924 	.db #0x00	; 0
      0022B7 00                     925 	.db #0x00	; 0
      0022B8 00                     926 	.db #0x00	; 0
      0022B9 00                     927 	.db #0x00	; 0
      0022BA 00                     928 	.db #0x00	; 0
      0022BB 00                     929 	.db #0x00	; 0
      0022BC 00                     930 	.db #0x00	; 0
      0022BD 00                     931 	.db #0x00	; 0
      0022BE 00                     932 	.db #0x00	; 0
      0022BF 00                     933 	.db #0x00	; 0
      0022C0 00                     934 	.db #0x00	; 0
      0022C1 00                     935 	.db #0x00	; 0
      0022C2 00                     936 	.db #0x00	; 0
      0022C3 00                     937 	.db #0x00	; 0
      0022C4 00                     938 	.db #0x00	; 0
      0022C5 00                     939 	.db #0x00	; 0
      0022C6 00                     940 	.db #0x00	; 0
      0022C7 00                     941 	.db #0x00	; 0
      0022C8 00                     942 	.db #0x00	; 0
      0022C9 00                     943 	.db #0x00	; 0
      0022CA 00                     944 	.db #0x00	; 0
      0022CB 00                     945 	.db #0x00	; 0
      0022CC 00                     946 	.db #0x00	; 0
      0022CD 00                     947 	.db #0x00	; 0
      0022CE 00                     948 	.db #0x00	; 0
      0022CF 00                     949 	.db #0x00	; 0
      0022D0 00                     950 	.db #0x00	; 0
      0022D1 00                     951 	.db #0x00	; 0
      0022D2 00                     952 	.db #0x00	; 0
      0022D3 00                     953 	.db #0x00	; 0
      0022D4 00                     954 	.db #0x00	; 0
      0022D5 00                     955 	.db #0x00	; 0
      0022D6 00                     956 	.db #0x00	; 0
      0022D7 00                     957 	.db #0x00	; 0
      0022D8 00                     958 	.db #0x00	; 0
      0022D9 00                     959 	.db #0x00	; 0
      0022DA 00                     960 	.db #0x00	; 0
      0022DB 00                     961 	.db #0x00	; 0
      0022DC 00                     962 	.db #0x00	; 0
      0022DD 00                     963 	.db #0x00	; 0
      0022DE 00                     964 	.db #0x00	; 0
      0022DF 00                     965 	.db #0x00	; 0
      0022E0 00                     966 	.db #0x00	; 0
      0022E1 00                     967 	.db #0x00	; 0
      0022E2 00                     968 	.db #0x00	; 0
      0022E3 00                     969 	.db #0x00	; 0
      0022E4 00                     970 	.db #0x00	; 0
      0022E5 00                     971 	.db #0x00	; 0
      0022E6 00                     972 	.db #0x00	; 0
      0022E7 00                     973 	.db #0x00	; 0
      0022E8 00                     974 	.db #0x00	; 0
      0022E9 00                     975 	.db #0x00	; 0
      0022EA 00                     976 	.db #0x00	; 0
      0022EB 00                     977 	.db #0x00	; 0
      0022EC 00                     978 	.db #0x00	; 0
      0022ED 00                     979 	.db #0x00	; 0
      0022EE 00                     980 	.db #0x00	; 0
      0022EF 00                     981 	.db #0x00	; 0
      0022F0 00                     982 	.db #0x00	; 0
      0022F1 00                     983 	.db #0x00	; 0
      0022F2 00                     984 	.db #0x00	; 0
      0022F3 00                     985 	.db #0x00	; 0
      0022F4 00                     986 	.db #0x00	; 0
      0022F5 00                     987 	.db #0x00	; 0
      0022F6 00                     988 	.db #0x00	; 0
      0022F7 00                     989 	.db #0x00	; 0
      0022F8 00                     990 	.db #0x00	; 0
      0022F9 00                     991 	.db #0x00	; 0
      0022FA 00                     992 	.db #0x00	; 0
      0022FB 00                     993 	.db #0x00	; 0
      0022FC 00                     994 	.db #0x00	; 0
      0022FD 00                     995 	.db #0x00	; 0
      0022FE 00                     996 	.db #0x00	; 0
      0022FF 00                     997 	.db #0x00	; 0
      002300 00                     998 	.db #0x00	; 0
      002301 00                     999 	.db #0x00	; 0
      002302 00                    1000 	.db #0x00	; 0
      002303 00                    1001 	.db #0x00	; 0
      002304 00                    1002 	.db #0x00	; 0
      002305 00                    1003 	.db #0x00	; 0
      002306 00                    1004 	.db #0x00	; 0
      002307 00                    1005 	.db #0x00	; 0
      002308 00                    1006 	.db #0x00	; 0
      002309 00                    1007 	.db #0x00	; 0
      00230A 00                    1008 	.db #0x00	; 0
      00230B 00                    1009 	.db #0x00	; 0
      00230C 00                    1010 	.db #0x00	; 0
      00230D 00                    1011 	.db #0x00	; 0
      00230E 00                    1012 	.db #0x00	; 0
      00230F 00                    1013 	.db #0x00	; 0
      002310 00                    1014 	.db #0x00	; 0
      002311 00                    1015 	.db #0x00	; 0
      002312 00                    1016 	.db #0x00	; 0
      002313 00                    1017 	.db #0x00	; 0
      002314 00                    1018 	.db #0x00	; 0
      002315 00                    1019 	.db #0x00	; 0
      002316 00                    1020 	.db #0x00	; 0
      002317 00                    1021 	.db #0x00	; 0
      002318 00                    1022 	.db #0x00	; 0
      002319 00                    1023 	.db #0x00	; 0
      00231A 00                    1024 	.db #0x00	; 0
      00231B 00                    1025 	.db #0x00	; 0
      00231C 00                    1026 	.db #0x00	; 0
      00231D 00                    1027 	.db #0x00	; 0
      00231E 00                    1028 	.db #0x00	; 0
      00231F 00                    1029 	.db #0x00	; 0
      002320 00                    1030 	.db #0x00	; 0
      002321 00                    1031 	.db #0x00	; 0
      002322 00                    1032 	.db #0x00	; 0
      002323 00                    1033 	.db #0x00	; 0
      002324 00                    1034 	.db #0x00	; 0
      002325 00                    1035 	.db #0x00	; 0
      002326 00                    1036 	.db #0x00	; 0
      002327 00                    1037 	.db #0x00	; 0
      002328 00                    1038 	.db #0x00	; 0
      002329 00                    1039 	.db #0x00	; 0
      00232A 00                    1040 	.db #0x00	; 0
      00232B 00                    1041 	.db #0x00	; 0
      00232C 00                    1042 	.db #0x00	; 0
      00232D 00                    1043 	.db #0x00	; 0
      00232E 00                    1044 	.db #0x00	; 0
      00232F 00                    1045 	.db #0x00	; 0
      002330 00                    1046 	.db #0x00	; 0
      002331 00                    1047 	.db #0x00	; 0
      002332 00                    1048 	.db #0x00	; 0
      002333 00                    1049 	.db #0x00	; 0
      002334 00                    1050 	.db #0x00	; 0
      002335 00                    1051 	.db #0x00	; 0
      002336 00                    1052 	.db #0x00	; 0
      002337 00                    1053 	.db #0x00	; 0
      002338 00                    1054 	.db #0x00	; 0
      002339 00                    1055 	.db #0x00	; 0
      00233A 00                    1056 	.db #0x00	; 0
      00233B 00                    1057 	.db #0x00	; 0
      00233C 00                    1058 	.db #0x00	; 0
      00233D 00                    1059 	.db #0x00	; 0
      00233E 00                    1060 	.db #0x00	; 0
      00233F 00                    1061 	.db #0x00	; 0
      002340 00                    1062 	.db #0x00	; 0
      002341 00                    1063 	.db #0x00	; 0
      002342 00                    1064 	.db #0x00	; 0
      002343 00                    1065 	.db #0x00	; 0
      002344 00                    1066 	.db #0x00	; 0
      002345 00                    1067 	.db #0x00	; 0
      002346 00                    1068 	.db #0x00	; 0
      002347 00                    1069 	.db #0x00	; 0
      002348 00                    1070 	.db #0x00	; 0
      002349 00                    1071 	.db #0x00	; 0
      00234A 00                    1072 	.db #0x00	; 0
      00234B 00                    1073 	.db #0x00	; 0
      00234C 00                    1074 	.db #0x00	; 0
      00234D 00                    1075 	.db #0x00	; 0
      00234E 00                    1076 	.db #0x00	; 0
      00234F 00                    1077 	.db #0x00	; 0
      002350 00                    1078 	.db #0x00	; 0
      002351 00                    1079 	.db #0x00	; 0
      002352 00                    1080 	.db #0x00	; 0
      002353 00                    1081 	.db #0x00	; 0
      002354 00                    1082 	.db #0x00	; 0
      002355 00                    1083 	.db #0x00	; 0
      002356 00                    1084 	.db #0x00	; 0
      002357 00                    1085 	.db #0x00	; 0
      002358 00                    1086 	.db #0x00	; 0
      002359 00                    1087 	.db #0x00	; 0
      00235A 00                    1088 	.db #0x00	; 0
      00235B 00                    1089 	.db #0x00	; 0
      00235C 00                    1090 	.db #0x00	; 0
      00235D 00                    1091 	.db #0x00	; 0
      00235E 00                    1092 	.db #0x00	; 0
      00235F 00                    1093 	.db #0x00	; 0
      002360 00                    1094 	.db #0x00	; 0
      002361 00                    1095 	.db #0x00	; 0
      002362 00                    1096 	.db #0x00	; 0
      002363 00                    1097 	.db #0x00	; 0
      002364 00                    1098 	.db #0x00	; 0
      002365 00                    1099 	.db #0x00	; 0
      002366 00                    1100 	.db #0x00	; 0
      002367 00                    1101 	.db #0x00	; 0
      002368 00                    1102 	.db #0x00	; 0
      002369 00                    1103 	.db #0x00	; 0
      00236A 00                    1104 	.db #0x00	; 0
      00236B 00                    1105 	.db #0x00	; 0
      00236C 00                    1106 	.db #0x00	; 0
      00236D 00                    1107 	.db #0x00	; 0
      00236E 00                    1108 	.db #0x00	; 0
      00236F 00                    1109 	.db #0x00	; 0
      002370 00                    1110 	.db #0x00	; 0
      002371 00                    1111 	.db #0x00	; 0
      002372 00                    1112 	.db #0x00	; 0
      002373 00                    1113 	.db #0x00	; 0
      002374 00                    1114 	.db #0x00	; 0
      002375 00                    1115 	.db #0x00	; 0
      002376 00                    1116 	.db #0x00	; 0
      002377 00                    1117 	.db #0x00	; 0
      002378 00                    1118 	.db #0x00	; 0
      002379 00                    1119 	.db #0x00	; 0
      00237A 00                    1120 	.db #0x00	; 0
      00237B 00                    1121 	.db #0x00	; 0
      00237C 00                    1122 	.db #0x00	; 0
      00237D 00                    1123 	.db #0x00	; 0
      00237E 00                    1124 	.db #0x00	; 0
      00237F 00                    1125 	.db #0x00	; 0
      002380 00                    1126 	.db #0x00	; 0
      002381 00                    1127 	.db #0x00	; 0
      002382 00                    1128 	.db #0x00	; 0
      002383 00                    1129 	.db #0x00	; 0
      002384 00                    1130 	.db #0x00	; 0
      002385 00                    1131 	.db #0x00	; 0
      002386 00                    1132 	.db #0x00	; 0
      002387 00                    1133 	.db #0x00	; 0
      002388 00                    1134 	.db #0x00	; 0
      002389 00                    1135 	.db #0x00	; 0
      00238A 00                    1136 	.db #0x00	; 0
      00238B 00                    1137 	.db #0x00	; 0
      00238C 00                    1138 	.db #0x00	; 0
      00238D 00                    1139 	.db #0x00	; 0
      00238E 00                    1140 	.db #0x00	; 0
      00238F 00                    1141 	.db #0x00	; 0
      002390 00                    1142 	.db #0x00	; 0
      002391 00                    1143 	.db #0x00	; 0
      002392 00                    1144 	.db #0x00	; 0
      002393 00                    1145 	.db #0x00	; 0
      002394 00                    1146 	.db #0x00	; 0
      002395 00                    1147 	.db #0x00	; 0
      002396 00                    1148 	.db #0x00	; 0
      002397 00                    1149 	.db #0x00	; 0
      002398 00                    1150 	.db #0x00	; 0
      002399 00                    1151 	.db #0x00	; 0
      00239A 00                    1152 	.db #0x00	; 0
      00239B 00                    1153 	.db #0x00	; 0
      00239C 18                    1154 	.db #0x18	; 24
      00239D 3C                    1155 	.db #0x3c	; 60
      00239E 3C                    1156 	.db #0x3c	; 60
      00239F 18                    1157 	.db #0x18	; 24
      0023A0 18                    1158 	.db #0x18	; 24
      0023A1 00                    1159 	.db #0x00	; 0
      0023A2 18                    1160 	.db #0x18	; 24
      0023A3 00                    1161 	.db #0x00	; 0
      0023A4 36                    1162 	.db #0x36	; 54	'6'
      0023A5 36                    1163 	.db #0x36	; 54	'6'
      0023A6 00                    1164 	.db #0x00	; 0
      0023A7 00                    1165 	.db #0x00	; 0
      0023A8 00                    1166 	.db #0x00	; 0
      0023A9 00                    1167 	.db #0x00	; 0
      0023AA 00                    1168 	.db #0x00	; 0
      0023AB 00                    1169 	.db #0x00	; 0
      0023AC 36                    1170 	.db #0x36	; 54	'6'
      0023AD 36                    1171 	.db #0x36	; 54	'6'
      0023AE 7F                    1172 	.db #0x7f	; 127
      0023AF 36                    1173 	.db #0x36	; 54	'6'
      0023B0 7F                    1174 	.db #0x7f	; 127
      0023B1 36                    1175 	.db #0x36	; 54	'6'
      0023B2 36                    1176 	.db #0x36	; 54	'6'
      0023B3 00                    1177 	.db #0x00	; 0
      0023B4 0C                    1178 	.db #0x0c	; 12
      0023B5 3E                    1179 	.db #0x3e	; 62
      0023B6 03                    1180 	.db #0x03	; 3
      0023B7 1E                    1181 	.db #0x1e	; 30
      0023B8 30                    1182 	.db #0x30	; 48	'0'
      0023B9 1F                    1183 	.db #0x1f	; 31
      0023BA 0C                    1184 	.db #0x0c	; 12
      0023BB 00                    1185 	.db #0x00	; 0
      0023BC 00                    1186 	.db #0x00	; 0
      0023BD 63                    1187 	.db #0x63	; 99	'c'
      0023BE 33                    1188 	.db #0x33	; 51	'3'
      0023BF 18                    1189 	.db #0x18	; 24
      0023C0 0C                    1190 	.db #0x0c	; 12
      0023C1 66                    1191 	.db #0x66	; 102	'f'
      0023C2 63                    1192 	.db #0x63	; 99	'c'
      0023C3 00                    1193 	.db #0x00	; 0
      0023C4 1C                    1194 	.db #0x1c	; 28
      0023C5 36                    1195 	.db #0x36	; 54	'6'
      0023C6 1C                    1196 	.db #0x1c	; 28
      0023C7 6E                    1197 	.db #0x6e	; 110	'n'
      0023C8 3B                    1198 	.db #0x3b	; 59
      0023C9 33                    1199 	.db #0x33	; 51	'3'
      0023CA 6E                    1200 	.db #0x6e	; 110	'n'
      0023CB 00                    1201 	.db #0x00	; 0
      0023CC 06                    1202 	.db #0x06	; 6
      0023CD 06                    1203 	.db #0x06	; 6
      0023CE 03                    1204 	.db #0x03	; 3
      0023CF 00                    1205 	.db #0x00	; 0
      0023D0 00                    1206 	.db #0x00	; 0
      0023D1 00                    1207 	.db #0x00	; 0
      0023D2 00                    1208 	.db #0x00	; 0
      0023D3 00                    1209 	.db #0x00	; 0
      0023D4 18                    1210 	.db #0x18	; 24
      0023D5 0C                    1211 	.db #0x0c	; 12
      0023D6 06                    1212 	.db #0x06	; 6
      0023D7 06                    1213 	.db #0x06	; 6
      0023D8 06                    1214 	.db #0x06	; 6
      0023D9 0C                    1215 	.db #0x0c	; 12
      0023DA 18                    1216 	.db #0x18	; 24
      0023DB 00                    1217 	.db #0x00	; 0
      0023DC 06                    1218 	.db #0x06	; 6
      0023DD 0C                    1219 	.db #0x0c	; 12
      0023DE 18                    1220 	.db #0x18	; 24
      0023DF 18                    1221 	.db #0x18	; 24
      0023E0 18                    1222 	.db #0x18	; 24
      0023E1 0C                    1223 	.db #0x0c	; 12
      0023E2 06                    1224 	.db #0x06	; 6
      0023E3 00                    1225 	.db #0x00	; 0
      0023E4 00                    1226 	.db #0x00	; 0
      0023E5 66                    1227 	.db #0x66	; 102	'f'
      0023E6 3C                    1228 	.db #0x3c	; 60
      0023E7 FF                    1229 	.db #0xff	; 255
      0023E8 3C                    1230 	.db #0x3c	; 60
      0023E9 66                    1231 	.db #0x66	; 102	'f'
      0023EA 00                    1232 	.db #0x00	; 0
      0023EB 00                    1233 	.db #0x00	; 0
      0023EC 00                    1234 	.db #0x00	; 0
      0023ED 0C                    1235 	.db #0x0c	; 12
      0023EE 0C                    1236 	.db #0x0c	; 12
      0023EF 3F                    1237 	.db #0x3f	; 63
      0023F0 0C                    1238 	.db #0x0c	; 12
      0023F1 0C                    1239 	.db #0x0c	; 12
      0023F2 00                    1240 	.db #0x00	; 0
      0023F3 00                    1241 	.db #0x00	; 0
      0023F4 00                    1242 	.db #0x00	; 0
      0023F5 00                    1243 	.db #0x00	; 0
      0023F6 00                    1244 	.db #0x00	; 0
      0023F7 00                    1245 	.db #0x00	; 0
      0023F8 00                    1246 	.db #0x00	; 0
      0023F9 0C                    1247 	.db #0x0c	; 12
      0023FA 0C                    1248 	.db #0x0c	; 12
      0023FB 06                    1249 	.db #0x06	; 6
      0023FC 00                    1250 	.db #0x00	; 0
      0023FD 00                    1251 	.db #0x00	; 0
      0023FE 00                    1252 	.db #0x00	; 0
      0023FF 3F                    1253 	.db #0x3f	; 63
      002400 00                    1254 	.db #0x00	; 0
      002401 00                    1255 	.db #0x00	; 0
      002402 00                    1256 	.db #0x00	; 0
      002403 00                    1257 	.db #0x00	; 0
      002404 00                    1258 	.db #0x00	; 0
      002405 00                    1259 	.db #0x00	; 0
      002406 00                    1260 	.db #0x00	; 0
      002407 00                    1261 	.db #0x00	; 0
      002408 00                    1262 	.db #0x00	; 0
      002409 0C                    1263 	.db #0x0c	; 12
      00240A 0C                    1264 	.db #0x0c	; 12
      00240B 00                    1265 	.db #0x00	; 0
      00240C 60                    1266 	.db #0x60	; 96
      00240D 30                    1267 	.db #0x30	; 48	'0'
      00240E 18                    1268 	.db #0x18	; 24
      00240F 0C                    1269 	.db #0x0c	; 12
      002410 06                    1270 	.db #0x06	; 6
      002411 03                    1271 	.db #0x03	; 3
      002412 01                    1272 	.db #0x01	; 1
      002413 00                    1273 	.db #0x00	; 0
      002414 3E                    1274 	.db #0x3e	; 62
      002415 63                    1275 	.db #0x63	; 99	'c'
      002416 73                    1276 	.db #0x73	; 115	's'
      002417 7B                    1277 	.db #0x7b	; 123
      002418 6F                    1278 	.db #0x6f	; 111	'o'
      002419 67                    1279 	.db #0x67	; 103	'g'
      00241A 3E                    1280 	.db #0x3e	; 62
      00241B 00                    1281 	.db #0x00	; 0
      00241C 0C                    1282 	.db #0x0c	; 12
      00241D 0E                    1283 	.db #0x0e	; 14
      00241E 0C                    1284 	.db #0x0c	; 12
      00241F 0C                    1285 	.db #0x0c	; 12
      002420 0C                    1286 	.db #0x0c	; 12
      002421 0C                    1287 	.db #0x0c	; 12
      002422 3F                    1288 	.db #0x3f	; 63
      002423 00                    1289 	.db #0x00	; 0
      002424 1E                    1290 	.db #0x1e	; 30
      002425 33                    1291 	.db #0x33	; 51	'3'
      002426 30                    1292 	.db #0x30	; 48	'0'
      002427 1C                    1293 	.db #0x1c	; 28
      002428 06                    1294 	.db #0x06	; 6
      002429 33                    1295 	.db #0x33	; 51	'3'
      00242A 3F                    1296 	.db #0x3f	; 63
      00242B 00                    1297 	.db #0x00	; 0
      00242C 1E                    1298 	.db #0x1e	; 30
      00242D 33                    1299 	.db #0x33	; 51	'3'
      00242E 30                    1300 	.db #0x30	; 48	'0'
      00242F 1C                    1301 	.db #0x1c	; 28
      002430 30                    1302 	.db #0x30	; 48	'0'
      002431 33                    1303 	.db #0x33	; 51	'3'
      002432 1E                    1304 	.db #0x1e	; 30
      002433 00                    1305 	.db #0x00	; 0
      002434 38                    1306 	.db #0x38	; 56	'8'
      002435 3C                    1307 	.db #0x3c	; 60
      002436 36                    1308 	.db #0x36	; 54	'6'
      002437 33                    1309 	.db #0x33	; 51	'3'
      002438 7F                    1310 	.db #0x7f	; 127
      002439 30                    1311 	.db #0x30	; 48	'0'
      00243A 78                    1312 	.db #0x78	; 120	'x'
      00243B 00                    1313 	.db #0x00	; 0
      00243C 3F                    1314 	.db #0x3f	; 63
      00243D 03                    1315 	.db #0x03	; 3
      00243E 1F                    1316 	.db #0x1f	; 31
      00243F 30                    1317 	.db #0x30	; 48	'0'
      002440 30                    1318 	.db #0x30	; 48	'0'
      002441 33                    1319 	.db #0x33	; 51	'3'
      002442 1E                    1320 	.db #0x1e	; 30
      002443 00                    1321 	.db #0x00	; 0
      002444 1C                    1322 	.db #0x1c	; 28
      002445 06                    1323 	.db #0x06	; 6
      002446 03                    1324 	.db #0x03	; 3
      002447 1F                    1325 	.db #0x1f	; 31
      002448 33                    1326 	.db #0x33	; 51	'3'
      002449 33                    1327 	.db #0x33	; 51	'3'
      00244A 1E                    1328 	.db #0x1e	; 30
      00244B 00                    1329 	.db #0x00	; 0
      00244C 3F                    1330 	.db #0x3f	; 63
      00244D 33                    1331 	.db #0x33	; 51	'3'
      00244E 30                    1332 	.db #0x30	; 48	'0'
      00244F 18                    1333 	.db #0x18	; 24
      002450 0C                    1334 	.db #0x0c	; 12
      002451 0C                    1335 	.db #0x0c	; 12
      002452 0C                    1336 	.db #0x0c	; 12
      002453 00                    1337 	.db #0x00	; 0
      002454 1E                    1338 	.db #0x1e	; 30
      002455 33                    1339 	.db #0x33	; 51	'3'
      002456 33                    1340 	.db #0x33	; 51	'3'
      002457 1E                    1341 	.db #0x1e	; 30
      002458 33                    1342 	.db #0x33	; 51	'3'
      002459 33                    1343 	.db #0x33	; 51	'3'
      00245A 1E                    1344 	.db #0x1e	; 30
      00245B 00                    1345 	.db #0x00	; 0
      00245C 1E                    1346 	.db #0x1e	; 30
      00245D 33                    1347 	.db #0x33	; 51	'3'
      00245E 33                    1348 	.db #0x33	; 51	'3'
      00245F 3E                    1349 	.db #0x3e	; 62
      002460 30                    1350 	.db #0x30	; 48	'0'
      002461 18                    1351 	.db #0x18	; 24
      002462 0E                    1352 	.db #0x0e	; 14
      002463 00                    1353 	.db #0x00	; 0
      002464 00                    1354 	.db #0x00	; 0
      002465 0C                    1355 	.db #0x0c	; 12
      002466 0C                    1356 	.db #0x0c	; 12
      002467 00                    1357 	.db #0x00	; 0
      002468 00                    1358 	.db #0x00	; 0
      002469 0C                    1359 	.db #0x0c	; 12
      00246A 0C                    1360 	.db #0x0c	; 12
      00246B 00                    1361 	.db #0x00	; 0
      00246C 00                    1362 	.db #0x00	; 0
      00246D 0C                    1363 	.db #0x0c	; 12
      00246E 0C                    1364 	.db #0x0c	; 12
      00246F 00                    1365 	.db #0x00	; 0
      002470 00                    1366 	.db #0x00	; 0
      002471 0C                    1367 	.db #0x0c	; 12
      002472 0C                    1368 	.db #0x0c	; 12
      002473 06                    1369 	.db #0x06	; 6
      002474 18                    1370 	.db #0x18	; 24
      002475 0C                    1371 	.db #0x0c	; 12
      002476 06                    1372 	.db #0x06	; 6
      002477 03                    1373 	.db #0x03	; 3
      002478 06                    1374 	.db #0x06	; 6
      002479 0C                    1375 	.db #0x0c	; 12
      00247A 18                    1376 	.db #0x18	; 24
      00247B 00                    1377 	.db #0x00	; 0
      00247C 00                    1378 	.db #0x00	; 0
      00247D 00                    1379 	.db #0x00	; 0
      00247E 3F                    1380 	.db #0x3f	; 63
      00247F 00                    1381 	.db #0x00	; 0
      002480 00                    1382 	.db #0x00	; 0
      002481 3F                    1383 	.db #0x3f	; 63
      002482 00                    1384 	.db #0x00	; 0
      002483 00                    1385 	.db #0x00	; 0
      002484 06                    1386 	.db #0x06	; 6
      002485 0C                    1387 	.db #0x0c	; 12
      002486 18                    1388 	.db #0x18	; 24
      002487 30                    1389 	.db #0x30	; 48	'0'
      002488 18                    1390 	.db #0x18	; 24
      002489 0C                    1391 	.db #0x0c	; 12
      00248A 06                    1392 	.db #0x06	; 6
      00248B 00                    1393 	.db #0x00	; 0
      00248C 1E                    1394 	.db #0x1e	; 30
      00248D 33                    1395 	.db #0x33	; 51	'3'
      00248E 30                    1396 	.db #0x30	; 48	'0'
      00248F 18                    1397 	.db #0x18	; 24
      002490 0C                    1398 	.db #0x0c	; 12
      002491 00                    1399 	.db #0x00	; 0
      002492 0C                    1400 	.db #0x0c	; 12
      002493 00                    1401 	.db #0x00	; 0
      002494 3E                    1402 	.db #0x3e	; 62
      002495 63                    1403 	.db #0x63	; 99	'c'
      002496 7B                    1404 	.db #0x7b	; 123
      002497 7B                    1405 	.db #0x7b	; 123
      002498 7B                    1406 	.db #0x7b	; 123
      002499 03                    1407 	.db #0x03	; 3
      00249A 1E                    1408 	.db #0x1e	; 30
      00249B 00                    1409 	.db #0x00	; 0
      00249C 0C                    1410 	.db #0x0c	; 12
      00249D 1E                    1411 	.db #0x1e	; 30
      00249E 33                    1412 	.db #0x33	; 51	'3'
      00249F 33                    1413 	.db #0x33	; 51	'3'
      0024A0 3F                    1414 	.db #0x3f	; 63
      0024A1 33                    1415 	.db #0x33	; 51	'3'
      0024A2 33                    1416 	.db #0x33	; 51	'3'
      0024A3 00                    1417 	.db #0x00	; 0
      0024A4 3F                    1418 	.db #0x3f	; 63
      0024A5 66                    1419 	.db #0x66	; 102	'f'
      0024A6 66                    1420 	.db #0x66	; 102	'f'
      0024A7 3E                    1421 	.db #0x3e	; 62
      0024A8 66                    1422 	.db #0x66	; 102	'f'
      0024A9 66                    1423 	.db #0x66	; 102	'f'
      0024AA 3F                    1424 	.db #0x3f	; 63
      0024AB 00                    1425 	.db #0x00	; 0
      0024AC 3C                    1426 	.db #0x3c	; 60
      0024AD 66                    1427 	.db #0x66	; 102	'f'
      0024AE 03                    1428 	.db #0x03	; 3
      0024AF 03                    1429 	.db #0x03	; 3
      0024B0 03                    1430 	.db #0x03	; 3
      0024B1 66                    1431 	.db #0x66	; 102	'f'
      0024B2 3C                    1432 	.db #0x3c	; 60
      0024B3 00                    1433 	.db #0x00	; 0
      0024B4 1F                    1434 	.db #0x1f	; 31
      0024B5 36                    1435 	.db #0x36	; 54	'6'
      0024B6 66                    1436 	.db #0x66	; 102	'f'
      0024B7 66                    1437 	.db #0x66	; 102	'f'
      0024B8 66                    1438 	.db #0x66	; 102	'f'
      0024B9 36                    1439 	.db #0x36	; 54	'6'
      0024BA 1F                    1440 	.db #0x1f	; 31
      0024BB 00                    1441 	.db #0x00	; 0
      0024BC 7F                    1442 	.db #0x7f	; 127
      0024BD 46                    1443 	.db #0x46	; 70	'F'
      0024BE 16                    1444 	.db #0x16	; 22
      0024BF 1E                    1445 	.db #0x1e	; 30
      0024C0 16                    1446 	.db #0x16	; 22
      0024C1 46                    1447 	.db #0x46	; 70	'F'
      0024C2 7F                    1448 	.db #0x7f	; 127
      0024C3 00                    1449 	.db #0x00	; 0
      0024C4 7F                    1450 	.db #0x7f	; 127
      0024C5 46                    1451 	.db #0x46	; 70	'F'
      0024C6 16                    1452 	.db #0x16	; 22
      0024C7 1E                    1453 	.db #0x1e	; 30
      0024C8 16                    1454 	.db #0x16	; 22
      0024C9 06                    1455 	.db #0x06	; 6
      0024CA 0F                    1456 	.db #0x0f	; 15
      0024CB 00                    1457 	.db #0x00	; 0
      0024CC 3C                    1458 	.db #0x3c	; 60
      0024CD 66                    1459 	.db #0x66	; 102	'f'
      0024CE 03                    1460 	.db #0x03	; 3
      0024CF 03                    1461 	.db #0x03	; 3
      0024D0 73                    1462 	.db #0x73	; 115	's'
      0024D1 66                    1463 	.db #0x66	; 102	'f'
      0024D2 7C                    1464 	.db #0x7c	; 124
      0024D3 00                    1465 	.db #0x00	; 0
      0024D4 33                    1466 	.db #0x33	; 51	'3'
      0024D5 33                    1467 	.db #0x33	; 51	'3'
      0024D6 33                    1468 	.db #0x33	; 51	'3'
      0024D7 3F                    1469 	.db #0x3f	; 63
      0024D8 33                    1470 	.db #0x33	; 51	'3'
      0024D9 33                    1471 	.db #0x33	; 51	'3'
      0024DA 33                    1472 	.db #0x33	; 51	'3'
      0024DB 00                    1473 	.db #0x00	; 0
      0024DC 1E                    1474 	.db #0x1e	; 30
      0024DD 0C                    1475 	.db #0x0c	; 12
      0024DE 0C                    1476 	.db #0x0c	; 12
      0024DF 0C                    1477 	.db #0x0c	; 12
      0024E0 0C                    1478 	.db #0x0c	; 12
      0024E1 0C                    1479 	.db #0x0c	; 12
      0024E2 1E                    1480 	.db #0x1e	; 30
      0024E3 00                    1481 	.db #0x00	; 0
      0024E4 78                    1482 	.db #0x78	; 120	'x'
      0024E5 30                    1483 	.db #0x30	; 48	'0'
      0024E6 30                    1484 	.db #0x30	; 48	'0'
      0024E7 30                    1485 	.db #0x30	; 48	'0'
      0024E8 33                    1486 	.db #0x33	; 51	'3'
      0024E9 33                    1487 	.db #0x33	; 51	'3'
      0024EA 1E                    1488 	.db #0x1e	; 30
      0024EB 00                    1489 	.db #0x00	; 0
      0024EC 67                    1490 	.db #0x67	; 103	'g'
      0024ED 66                    1491 	.db #0x66	; 102	'f'
      0024EE 36                    1492 	.db #0x36	; 54	'6'
      0024EF 1E                    1493 	.db #0x1e	; 30
      0024F0 36                    1494 	.db #0x36	; 54	'6'
      0024F1 66                    1495 	.db #0x66	; 102	'f'
      0024F2 67                    1496 	.db #0x67	; 103	'g'
      0024F3 00                    1497 	.db #0x00	; 0
      0024F4 0F                    1498 	.db #0x0f	; 15
      0024F5 06                    1499 	.db #0x06	; 6
      0024F6 06                    1500 	.db #0x06	; 6
      0024F7 06                    1501 	.db #0x06	; 6
      0024F8 46                    1502 	.db #0x46	; 70	'F'
      0024F9 66                    1503 	.db #0x66	; 102	'f'
      0024FA 7F                    1504 	.db #0x7f	; 127
      0024FB 00                    1505 	.db #0x00	; 0
      0024FC 63                    1506 	.db #0x63	; 99	'c'
      0024FD 77                    1507 	.db #0x77	; 119	'w'
      0024FE 7F                    1508 	.db #0x7f	; 127
      0024FF 7F                    1509 	.db #0x7f	; 127
      002500 6B                    1510 	.db #0x6b	; 107	'k'
      002501 63                    1511 	.db #0x63	; 99	'c'
      002502 63                    1512 	.db #0x63	; 99	'c'
      002503 00                    1513 	.db #0x00	; 0
      002504 63                    1514 	.db #0x63	; 99	'c'
      002505 67                    1515 	.db #0x67	; 103	'g'
      002506 6F                    1516 	.db #0x6f	; 111	'o'
      002507 7B                    1517 	.db #0x7b	; 123
      002508 73                    1518 	.db #0x73	; 115	's'
      002509 63                    1519 	.db #0x63	; 99	'c'
      00250A 63                    1520 	.db #0x63	; 99	'c'
      00250B 00                    1521 	.db #0x00	; 0
      00250C 1C                    1522 	.db #0x1c	; 28
      00250D 36                    1523 	.db #0x36	; 54	'6'
      00250E 63                    1524 	.db #0x63	; 99	'c'
      00250F 63                    1525 	.db #0x63	; 99	'c'
      002510 63                    1526 	.db #0x63	; 99	'c'
      002511 36                    1527 	.db #0x36	; 54	'6'
      002512 1C                    1528 	.db #0x1c	; 28
      002513 00                    1529 	.db #0x00	; 0
      002514 3F                    1530 	.db #0x3f	; 63
      002515 66                    1531 	.db #0x66	; 102	'f'
      002516 66                    1532 	.db #0x66	; 102	'f'
      002517 3E                    1533 	.db #0x3e	; 62
      002518 06                    1534 	.db #0x06	; 6
      002519 06                    1535 	.db #0x06	; 6
      00251A 0F                    1536 	.db #0x0f	; 15
      00251B 00                    1537 	.db #0x00	; 0
      00251C 1E                    1538 	.db #0x1e	; 30
      00251D 33                    1539 	.db #0x33	; 51	'3'
      00251E 33                    1540 	.db #0x33	; 51	'3'
      00251F 33                    1541 	.db #0x33	; 51	'3'
      002520 3B                    1542 	.db #0x3b	; 59
      002521 1E                    1543 	.db #0x1e	; 30
      002522 38                    1544 	.db #0x38	; 56	'8'
      002523 00                    1545 	.db #0x00	; 0
      002524 3F                    1546 	.db #0x3f	; 63
      002525 66                    1547 	.db #0x66	; 102	'f'
      002526 66                    1548 	.db #0x66	; 102	'f'
      002527 3E                    1549 	.db #0x3e	; 62
      002528 36                    1550 	.db #0x36	; 54	'6'
      002529 66                    1551 	.db #0x66	; 102	'f'
      00252A 67                    1552 	.db #0x67	; 103	'g'
      00252B 00                    1553 	.db #0x00	; 0
      00252C 1E                    1554 	.db #0x1e	; 30
      00252D 33                    1555 	.db #0x33	; 51	'3'
      00252E 07                    1556 	.db #0x07	; 7
      00252F 0E                    1557 	.db #0x0e	; 14
      002530 38                    1558 	.db #0x38	; 56	'8'
      002531 33                    1559 	.db #0x33	; 51	'3'
      002532 1E                    1560 	.db #0x1e	; 30
      002533 00                    1561 	.db #0x00	; 0
      002534 3F                    1562 	.db #0x3f	; 63
      002535 2D                    1563 	.db #0x2d	; 45
      002536 0C                    1564 	.db #0x0c	; 12
      002537 0C                    1565 	.db #0x0c	; 12
      002538 0C                    1566 	.db #0x0c	; 12
      002539 0C                    1567 	.db #0x0c	; 12
      00253A 1E                    1568 	.db #0x1e	; 30
      00253B 00                    1569 	.db #0x00	; 0
      00253C 33                    1570 	.db #0x33	; 51	'3'
      00253D 33                    1571 	.db #0x33	; 51	'3'
      00253E 33                    1572 	.db #0x33	; 51	'3'
      00253F 33                    1573 	.db #0x33	; 51	'3'
      002540 33                    1574 	.db #0x33	; 51	'3'
      002541 33                    1575 	.db #0x33	; 51	'3'
      002542 3F                    1576 	.db #0x3f	; 63
      002543 00                    1577 	.db #0x00	; 0
      002544 33                    1578 	.db #0x33	; 51	'3'
      002545 33                    1579 	.db #0x33	; 51	'3'
      002546 33                    1580 	.db #0x33	; 51	'3'
      002547 33                    1581 	.db #0x33	; 51	'3'
      002548 33                    1582 	.db #0x33	; 51	'3'
      002549 1E                    1583 	.db #0x1e	; 30
      00254A 0C                    1584 	.db #0x0c	; 12
      00254B 00                    1585 	.db #0x00	; 0
      00254C 63                    1586 	.db #0x63	; 99	'c'
      00254D 63                    1587 	.db #0x63	; 99	'c'
      00254E 63                    1588 	.db #0x63	; 99	'c'
      00254F 6B                    1589 	.db #0x6b	; 107	'k'
      002550 7F                    1590 	.db #0x7f	; 127
      002551 77                    1591 	.db #0x77	; 119	'w'
      002552 63                    1592 	.db #0x63	; 99	'c'
      002553 00                    1593 	.db #0x00	; 0
      002554 63                    1594 	.db #0x63	; 99	'c'
      002555 63                    1595 	.db #0x63	; 99	'c'
      002556 36                    1596 	.db #0x36	; 54	'6'
      002557 1C                    1597 	.db #0x1c	; 28
      002558 1C                    1598 	.db #0x1c	; 28
      002559 36                    1599 	.db #0x36	; 54	'6'
      00255A 63                    1600 	.db #0x63	; 99	'c'
      00255B 00                    1601 	.db #0x00	; 0
      00255C 33                    1602 	.db #0x33	; 51	'3'
      00255D 33                    1603 	.db #0x33	; 51	'3'
      00255E 33                    1604 	.db #0x33	; 51	'3'
      00255F 1E                    1605 	.db #0x1e	; 30
      002560 0C                    1606 	.db #0x0c	; 12
      002561 0C                    1607 	.db #0x0c	; 12
      002562 1E                    1608 	.db #0x1e	; 30
      002563 00                    1609 	.db #0x00	; 0
      002564 7F                    1610 	.db #0x7f	; 127
      002565 63                    1611 	.db #0x63	; 99	'c'
      002566 31                    1612 	.db #0x31	; 49	'1'
      002567 18                    1613 	.db #0x18	; 24
      002568 4C                    1614 	.db #0x4c	; 76	'L'
      002569 66                    1615 	.db #0x66	; 102	'f'
      00256A 7F                    1616 	.db #0x7f	; 127
      00256B 00                    1617 	.db #0x00	; 0
      00256C 1E                    1618 	.db #0x1e	; 30
      00256D 06                    1619 	.db #0x06	; 6
      00256E 06                    1620 	.db #0x06	; 6
      00256F 06                    1621 	.db #0x06	; 6
      002570 06                    1622 	.db #0x06	; 6
      002571 06                    1623 	.db #0x06	; 6
      002572 1E                    1624 	.db #0x1e	; 30
      002573 00                    1625 	.db #0x00	; 0
      002574 03                    1626 	.db #0x03	; 3
      002575 06                    1627 	.db #0x06	; 6
      002576 0C                    1628 	.db #0x0c	; 12
      002577 18                    1629 	.db #0x18	; 24
      002578 30                    1630 	.db #0x30	; 48	'0'
      002579 60                    1631 	.db #0x60	; 96
      00257A 40                    1632 	.db #0x40	; 64
      00257B 00                    1633 	.db #0x00	; 0
      00257C 1E                    1634 	.db #0x1e	; 30
      00257D 18                    1635 	.db #0x18	; 24
      00257E 18                    1636 	.db #0x18	; 24
      00257F 18                    1637 	.db #0x18	; 24
      002580 18                    1638 	.db #0x18	; 24
      002581 18                    1639 	.db #0x18	; 24
      002582 1E                    1640 	.db #0x1e	; 30
      002583 00                    1641 	.db #0x00	; 0
      002584 08                    1642 	.db #0x08	; 8
      002585 1C                    1643 	.db #0x1c	; 28
      002586 36                    1644 	.db #0x36	; 54	'6'
      002587 63                    1645 	.db #0x63	; 99	'c'
      002588 00                    1646 	.db #0x00	; 0
      002589 00                    1647 	.db #0x00	; 0
      00258A 00                    1648 	.db #0x00	; 0
      00258B 00                    1649 	.db #0x00	; 0
      00258C 00                    1650 	.db #0x00	; 0
      00258D 00                    1651 	.db #0x00	; 0
      00258E 00                    1652 	.db #0x00	; 0
      00258F 00                    1653 	.db #0x00	; 0
      002590 00                    1654 	.db #0x00	; 0
      002591 00                    1655 	.db #0x00	; 0
      002592 00                    1656 	.db #0x00	; 0
      002593 FF                    1657 	.db #0xff	; 255
      002594 0C                    1658 	.db #0x0c	; 12
      002595 0C                    1659 	.db #0x0c	; 12
      002596 18                    1660 	.db #0x18	; 24
      002597 00                    1661 	.db #0x00	; 0
      002598 00                    1662 	.db #0x00	; 0
      002599 00                    1663 	.db #0x00	; 0
      00259A 00                    1664 	.db #0x00	; 0
      00259B 00                    1665 	.db #0x00	; 0
      00259C 00                    1666 	.db #0x00	; 0
      00259D 00                    1667 	.db #0x00	; 0
      00259E 1E                    1668 	.db #0x1e	; 30
      00259F 30                    1669 	.db #0x30	; 48	'0'
      0025A0 3E                    1670 	.db #0x3e	; 62
      0025A1 33                    1671 	.db #0x33	; 51	'3'
      0025A2 6E                    1672 	.db #0x6e	; 110	'n'
      0025A3 00                    1673 	.db #0x00	; 0
      0025A4 07                    1674 	.db #0x07	; 7
      0025A5 06                    1675 	.db #0x06	; 6
      0025A6 06                    1676 	.db #0x06	; 6
      0025A7 3E                    1677 	.db #0x3e	; 62
      0025A8 66                    1678 	.db #0x66	; 102	'f'
      0025A9 66                    1679 	.db #0x66	; 102	'f'
      0025AA 3B                    1680 	.db #0x3b	; 59
      0025AB 00                    1681 	.db #0x00	; 0
      0025AC 00                    1682 	.db #0x00	; 0
      0025AD 00                    1683 	.db #0x00	; 0
      0025AE 1E                    1684 	.db #0x1e	; 30
      0025AF 33                    1685 	.db #0x33	; 51	'3'
      0025B0 03                    1686 	.db #0x03	; 3
      0025B1 33                    1687 	.db #0x33	; 51	'3'
      0025B2 1E                    1688 	.db #0x1e	; 30
      0025B3 00                    1689 	.db #0x00	; 0
      0025B4 38                    1690 	.db #0x38	; 56	'8'
      0025B5 30                    1691 	.db #0x30	; 48	'0'
      0025B6 30                    1692 	.db #0x30	; 48	'0'
      0025B7 3E                    1693 	.db #0x3e	; 62
      0025B8 33                    1694 	.db #0x33	; 51	'3'
      0025B9 33                    1695 	.db #0x33	; 51	'3'
      0025BA 6E                    1696 	.db #0x6e	; 110	'n'
      0025BB 00                    1697 	.db #0x00	; 0
      0025BC 00                    1698 	.db #0x00	; 0
      0025BD 00                    1699 	.db #0x00	; 0
      0025BE 1E                    1700 	.db #0x1e	; 30
      0025BF 33                    1701 	.db #0x33	; 51	'3'
      0025C0 3F                    1702 	.db #0x3f	; 63
      0025C1 03                    1703 	.db #0x03	; 3
      0025C2 1E                    1704 	.db #0x1e	; 30
      0025C3 00                    1705 	.db #0x00	; 0
      0025C4 1C                    1706 	.db #0x1c	; 28
      0025C5 36                    1707 	.db #0x36	; 54	'6'
      0025C6 06                    1708 	.db #0x06	; 6
      0025C7 0F                    1709 	.db #0x0f	; 15
      0025C8 06                    1710 	.db #0x06	; 6
      0025C9 06                    1711 	.db #0x06	; 6
      0025CA 0F                    1712 	.db #0x0f	; 15
      0025CB 00                    1713 	.db #0x00	; 0
      0025CC 00                    1714 	.db #0x00	; 0
      0025CD 00                    1715 	.db #0x00	; 0
      0025CE 6E                    1716 	.db #0x6e	; 110	'n'
      0025CF 33                    1717 	.db #0x33	; 51	'3'
      0025D0 33                    1718 	.db #0x33	; 51	'3'
      0025D1 3E                    1719 	.db #0x3e	; 62
      0025D2 30                    1720 	.db #0x30	; 48	'0'
      0025D3 1F                    1721 	.db #0x1f	; 31
      0025D4 07                    1722 	.db #0x07	; 7
      0025D5 06                    1723 	.db #0x06	; 6
      0025D6 36                    1724 	.db #0x36	; 54	'6'
      0025D7 6E                    1725 	.db #0x6e	; 110	'n'
      0025D8 66                    1726 	.db #0x66	; 102	'f'
      0025D9 66                    1727 	.db #0x66	; 102	'f'
      0025DA 67                    1728 	.db #0x67	; 103	'g'
      0025DB 00                    1729 	.db #0x00	; 0
      0025DC 0C                    1730 	.db #0x0c	; 12
      0025DD 00                    1731 	.db #0x00	; 0
      0025DE 0E                    1732 	.db #0x0e	; 14
      0025DF 0C                    1733 	.db #0x0c	; 12
      0025E0 0C                    1734 	.db #0x0c	; 12
      0025E1 0C                    1735 	.db #0x0c	; 12
      0025E2 1E                    1736 	.db #0x1e	; 30
      0025E3 00                    1737 	.db #0x00	; 0
      0025E4 30                    1738 	.db #0x30	; 48	'0'
      0025E5 00                    1739 	.db #0x00	; 0
      0025E6 30                    1740 	.db #0x30	; 48	'0'
      0025E7 30                    1741 	.db #0x30	; 48	'0'
      0025E8 30                    1742 	.db #0x30	; 48	'0'
      0025E9 33                    1743 	.db #0x33	; 51	'3'
      0025EA 33                    1744 	.db #0x33	; 51	'3'
      0025EB 1E                    1745 	.db #0x1e	; 30
      0025EC 07                    1746 	.db #0x07	; 7
      0025ED 06                    1747 	.db #0x06	; 6
      0025EE 66                    1748 	.db #0x66	; 102	'f'
      0025EF 36                    1749 	.db #0x36	; 54	'6'
      0025F0 1E                    1750 	.db #0x1e	; 30
      0025F1 36                    1751 	.db #0x36	; 54	'6'
      0025F2 67                    1752 	.db #0x67	; 103	'g'
      0025F3 00                    1753 	.db #0x00	; 0
      0025F4 0E                    1754 	.db #0x0e	; 14
      0025F5 0C                    1755 	.db #0x0c	; 12
      0025F6 0C                    1756 	.db #0x0c	; 12
      0025F7 0C                    1757 	.db #0x0c	; 12
      0025F8 0C                    1758 	.db #0x0c	; 12
      0025F9 0C                    1759 	.db #0x0c	; 12
      0025FA 1E                    1760 	.db #0x1e	; 30
      0025FB 00                    1761 	.db #0x00	; 0
      0025FC 00                    1762 	.db #0x00	; 0
      0025FD 00                    1763 	.db #0x00	; 0
      0025FE 33                    1764 	.db #0x33	; 51	'3'
      0025FF 7F                    1765 	.db #0x7f	; 127
      002600 7F                    1766 	.db #0x7f	; 127
      002601 6B                    1767 	.db #0x6b	; 107	'k'
      002602 63                    1768 	.db #0x63	; 99	'c'
      002603 00                    1769 	.db #0x00	; 0
      002604 00                    1770 	.db #0x00	; 0
      002605 00                    1771 	.db #0x00	; 0
      002606 1F                    1772 	.db #0x1f	; 31
      002607 33                    1773 	.db #0x33	; 51	'3'
      002608 33                    1774 	.db #0x33	; 51	'3'
      002609 33                    1775 	.db #0x33	; 51	'3'
      00260A 33                    1776 	.db #0x33	; 51	'3'
      00260B 00                    1777 	.db #0x00	; 0
      00260C 00                    1778 	.db #0x00	; 0
      00260D 00                    1779 	.db #0x00	; 0
      00260E 1E                    1780 	.db #0x1e	; 30
      00260F 33                    1781 	.db #0x33	; 51	'3'
      002610 33                    1782 	.db #0x33	; 51	'3'
      002611 33                    1783 	.db #0x33	; 51	'3'
      002612 1E                    1784 	.db #0x1e	; 30
      002613 00                    1785 	.db #0x00	; 0
      002614 00                    1786 	.db #0x00	; 0
      002615 00                    1787 	.db #0x00	; 0
      002616 3B                    1788 	.db #0x3b	; 59
      002617 66                    1789 	.db #0x66	; 102	'f'
      002618 66                    1790 	.db #0x66	; 102	'f'
      002619 3E                    1791 	.db #0x3e	; 62
      00261A 06                    1792 	.db #0x06	; 6
      00261B 0F                    1793 	.db #0x0f	; 15
      00261C 00                    1794 	.db #0x00	; 0
      00261D 00                    1795 	.db #0x00	; 0
      00261E 6E                    1796 	.db #0x6e	; 110	'n'
      00261F 33                    1797 	.db #0x33	; 51	'3'
      002620 33                    1798 	.db #0x33	; 51	'3'
      002621 3E                    1799 	.db #0x3e	; 62
      002622 30                    1800 	.db #0x30	; 48	'0'
      002623 78                    1801 	.db #0x78	; 120	'x'
      002624 00                    1802 	.db #0x00	; 0
      002625 00                    1803 	.db #0x00	; 0
      002626 3B                    1804 	.db #0x3b	; 59
      002627 6E                    1805 	.db #0x6e	; 110	'n'
      002628 66                    1806 	.db #0x66	; 102	'f'
      002629 06                    1807 	.db #0x06	; 6
      00262A 0F                    1808 	.db #0x0f	; 15
      00262B 00                    1809 	.db #0x00	; 0
      00262C 00                    1810 	.db #0x00	; 0
      00262D 00                    1811 	.db #0x00	; 0
      00262E 3E                    1812 	.db #0x3e	; 62
      00262F 03                    1813 	.db #0x03	; 3
      002630 1E                    1814 	.db #0x1e	; 30
      002631 30                    1815 	.db #0x30	; 48	'0'
      002632 1F                    1816 	.db #0x1f	; 31
      002633 00                    1817 	.db #0x00	; 0
      002634 08                    1818 	.db #0x08	; 8
      002635 0C                    1819 	.db #0x0c	; 12
      002636 3E                    1820 	.db #0x3e	; 62
      002637 0C                    1821 	.db #0x0c	; 12
      002638 0C                    1822 	.db #0x0c	; 12
      002639 2C                    1823 	.db #0x2c	; 44
      00263A 18                    1824 	.db #0x18	; 24
      00263B 00                    1825 	.db #0x00	; 0
      00263C 00                    1826 	.db #0x00	; 0
      00263D 00                    1827 	.db #0x00	; 0
      00263E 33                    1828 	.db #0x33	; 51	'3'
      00263F 33                    1829 	.db #0x33	; 51	'3'
      002640 33                    1830 	.db #0x33	; 51	'3'
      002641 33                    1831 	.db #0x33	; 51	'3'
      002642 6E                    1832 	.db #0x6e	; 110	'n'
      002643 00                    1833 	.db #0x00	; 0
      002644 00                    1834 	.db #0x00	; 0
      002645 00                    1835 	.db #0x00	; 0
      002646 33                    1836 	.db #0x33	; 51	'3'
      002647 33                    1837 	.db #0x33	; 51	'3'
      002648 33                    1838 	.db #0x33	; 51	'3'
      002649 1E                    1839 	.db #0x1e	; 30
      00264A 0C                    1840 	.db #0x0c	; 12
      00264B 00                    1841 	.db #0x00	; 0
      00264C 00                    1842 	.db #0x00	; 0
      00264D 00                    1843 	.db #0x00	; 0
      00264E 63                    1844 	.db #0x63	; 99	'c'
      00264F 6B                    1845 	.db #0x6b	; 107	'k'
      002650 7F                    1846 	.db #0x7f	; 127
      002651 7F                    1847 	.db #0x7f	; 127
      002652 36                    1848 	.db #0x36	; 54	'6'
      002653 00                    1849 	.db #0x00	; 0
      002654 00                    1850 	.db #0x00	; 0
      002655 00                    1851 	.db #0x00	; 0
      002656 63                    1852 	.db #0x63	; 99	'c'
      002657 36                    1853 	.db #0x36	; 54	'6'
      002658 1C                    1854 	.db #0x1c	; 28
      002659 36                    1855 	.db #0x36	; 54	'6'
      00265A 63                    1856 	.db #0x63	; 99	'c'
      00265B 00                    1857 	.db #0x00	; 0
      00265C 00                    1858 	.db #0x00	; 0
      00265D 00                    1859 	.db #0x00	; 0
      00265E 33                    1860 	.db #0x33	; 51	'3'
      00265F 33                    1861 	.db #0x33	; 51	'3'
      002660 33                    1862 	.db #0x33	; 51	'3'
      002661 3E                    1863 	.db #0x3e	; 62
      002662 30                    1864 	.db #0x30	; 48	'0'
      002663 1F                    1865 	.db #0x1f	; 31
      002664 00                    1866 	.db #0x00	; 0
      002665 00                    1867 	.db #0x00	; 0
      002666 3F                    1868 	.db #0x3f	; 63
      002667 19                    1869 	.db #0x19	; 25
      002668 0C                    1870 	.db #0x0c	; 12
      002669 26                    1871 	.db #0x26	; 38
      00266A 3F                    1872 	.db #0x3f	; 63
      00266B 00                    1873 	.db #0x00	; 0
      00266C 38                    1874 	.db #0x38	; 56	'8'
      00266D 0C                    1875 	.db #0x0c	; 12
      00266E 0C                    1876 	.db #0x0c	; 12
      00266F 07                    1877 	.db #0x07	; 7
      002670 0C                    1878 	.db #0x0c	; 12
      002671 0C                    1879 	.db #0x0c	; 12
      002672 38                    1880 	.db #0x38	; 56	'8'
      002673 00                    1881 	.db #0x00	; 0
      002674 18                    1882 	.db #0x18	; 24
      002675 18                    1883 	.db #0x18	; 24
      002676 18                    1884 	.db #0x18	; 24
      002677 00                    1885 	.db #0x00	; 0
      002678 18                    1886 	.db #0x18	; 24
      002679 18                    1887 	.db #0x18	; 24
      00267A 18                    1888 	.db #0x18	; 24
      00267B 00                    1889 	.db #0x00	; 0
      00267C 07                    1890 	.db #0x07	; 7
      00267D 0C                    1891 	.db #0x0c	; 12
      00267E 0C                    1892 	.db #0x0c	; 12
      00267F 38                    1893 	.db #0x38	; 56	'8'
      002680 0C                    1894 	.db #0x0c	; 12
      002681 0C                    1895 	.db #0x0c	; 12
      002682 07                    1896 	.db #0x07	; 7
      002683 00                    1897 	.db #0x00	; 0
      002684 6E                    1898 	.db #0x6e	; 110	'n'
      002685 3B                    1899 	.db #0x3b	; 59
      002686 00                    1900 	.db #0x00	; 0
      002687 00                    1901 	.db #0x00	; 0
      002688 00                    1902 	.db #0x00	; 0
      002689 00                    1903 	.db #0x00	; 0
      00268A 00                    1904 	.db #0x00	; 0
      00268B 00                    1905 	.db #0x00	; 0
      00268C 00                    1906 	.db #0x00	; 0
      00268D 00                    1907 	.db #0x00	; 0
      00268E 00                    1908 	.db #0x00	; 0
      00268F 00                    1909 	.db #0x00	; 0
      002690 00                    1910 	.db #0x00	; 0
      002691 00                    1911 	.db #0x00	; 0
      002692 00                    1912 	.db #0x00	; 0
      002693 00                    1913 	.db #0x00	; 0
      002694 00                    1914 	.db #0x00	; 0
      002695 00                    1915 	.db #0x00	; 0
      002696 00                    1916 	.db #0x00	; 0
      002697 00                    1917 	.db #0x00	; 0
      002698 00                    1918 	.db #0x00	; 0
      002699 00                    1919 	.db #0x00	; 0
      00269A 00                    1920 	.db #0x00	; 0
      00269B 00                    1921 	.db #0x00	; 0
      00269C 00                    1922 	.db #0x00	; 0
      00269D 00                    1923 	.db #0x00	; 0
      00269E 00                    1924 	.db #0x00	; 0
      00269F 00                    1925 	.db #0x00	; 0
      0026A0 00                    1926 	.db #0x00	; 0
      0026A1 00                    1927 	.db #0x00	; 0
      0026A2 00                    1928 	.db #0x00	; 0
      0026A3 00                    1929 	.db #0x00	; 0
      0026A4 00                    1930 	.db #0x00	; 0
      0026A5 00                    1931 	.db #0x00	; 0
      0026A6 00                    1932 	.db #0x00	; 0
      0026A7 00                    1933 	.db #0x00	; 0
      0026A8 00                    1934 	.db #0x00	; 0
      0026A9 00                    1935 	.db #0x00	; 0
      0026AA 00                    1936 	.db #0x00	; 0
      0026AB 00                    1937 	.db #0x00	; 0
      0026AC 00                    1938 	.db #0x00	; 0
      0026AD 00                    1939 	.db #0x00	; 0
      0026AE 00                    1940 	.db #0x00	; 0
      0026AF 00                    1941 	.db #0x00	; 0
      0026B0 00                    1942 	.db #0x00	; 0
      0026B1 00                    1943 	.db #0x00	; 0
      0026B2 00                    1944 	.db #0x00	; 0
      0026B3 00                    1945 	.db #0x00	; 0
      0026B4 00                    1946 	.db #0x00	; 0
      0026B5 00                    1947 	.db #0x00	; 0
      0026B6 00                    1948 	.db #0x00	; 0
      0026B7 00                    1949 	.db #0x00	; 0
      0026B8 00                    1950 	.db #0x00	; 0
      0026B9 00                    1951 	.db #0x00	; 0
      0026BA 00                    1952 	.db #0x00	; 0
      0026BB 00                    1953 	.db #0x00	; 0
      0026BC 00                    1954 	.db #0x00	; 0
      0026BD 00                    1955 	.db #0x00	; 0
      0026BE 00                    1956 	.db #0x00	; 0
      0026BF 00                    1957 	.db #0x00	; 0
      0026C0 00                    1958 	.db #0x00	; 0
      0026C1 00                    1959 	.db #0x00	; 0
      0026C2 00                    1960 	.db #0x00	; 0
      0026C3 00                    1961 	.db #0x00	; 0
      0026C4 00                    1962 	.db #0x00	; 0
      0026C5 00                    1963 	.db #0x00	; 0
      0026C6 00                    1964 	.db #0x00	; 0
      0026C7 00                    1965 	.db #0x00	; 0
      0026C8 00                    1966 	.db #0x00	; 0
      0026C9 00                    1967 	.db #0x00	; 0
      0026CA 00                    1968 	.db #0x00	; 0
      0026CB 00                    1969 	.db #0x00	; 0
      0026CC 00                    1970 	.db #0x00	; 0
      0026CD 00                    1971 	.db #0x00	; 0
      0026CE 00                    1972 	.db #0x00	; 0
      0026CF 00                    1973 	.db #0x00	; 0
      0026D0 00                    1974 	.db #0x00	; 0
      0026D1 00                    1975 	.db #0x00	; 0
      0026D2 00                    1976 	.db #0x00	; 0
      0026D3 00                    1977 	.db #0x00	; 0
      0026D4 00                    1978 	.db #0x00	; 0
      0026D5 00                    1979 	.db #0x00	; 0
      0026D6 00                    1980 	.db #0x00	; 0
      0026D7 00                    1981 	.db #0x00	; 0
      0026D8 00                    1982 	.db #0x00	; 0
      0026D9 00                    1983 	.db #0x00	; 0
      0026DA 00                    1984 	.db #0x00	; 0
      0026DB 00                    1985 	.db #0x00	; 0
      0026DC 00                    1986 	.db #0x00	; 0
      0026DD 00                    1987 	.db #0x00	; 0
      0026DE 00                    1988 	.db #0x00	; 0
      0026DF 00                    1989 	.db #0x00	; 0
      0026E0 00                    1990 	.db #0x00	; 0
      0026E1 00                    1991 	.db #0x00	; 0
      0026E2 00                    1992 	.db #0x00	; 0
      0026E3 00                    1993 	.db #0x00	; 0
      0026E4 00                    1994 	.db #0x00	; 0
      0026E5 00                    1995 	.db #0x00	; 0
      0026E6 00                    1996 	.db #0x00	; 0
      0026E7 00                    1997 	.db #0x00	; 0
      0026E8 00                    1998 	.db #0x00	; 0
      0026E9 00                    1999 	.db #0x00	; 0
      0026EA 00                    2000 	.db #0x00	; 0
      0026EB 00                    2001 	.db #0x00	; 0
      0026EC 00                    2002 	.db #0x00	; 0
      0026ED 00                    2003 	.db #0x00	; 0
      0026EE 00                    2004 	.db #0x00	; 0
      0026EF 00                    2005 	.db #0x00	; 0
      0026F0 00                    2006 	.db #0x00	; 0
      0026F1 00                    2007 	.db #0x00	; 0
      0026F2 00                    2008 	.db #0x00	; 0
      0026F3 00                    2009 	.db #0x00	; 0
      0026F4 00                    2010 	.db #0x00	; 0
      0026F5 00                    2011 	.db #0x00	; 0
      0026F6 00                    2012 	.db #0x00	; 0
      0026F7 00                    2013 	.db #0x00	; 0
      0026F8 00                    2014 	.db #0x00	; 0
      0026F9 00                    2015 	.db #0x00	; 0
      0026FA 00                    2016 	.db #0x00	; 0
      0026FB 00                    2017 	.db #0x00	; 0
      0026FC 00                    2018 	.db #0x00	; 0
      0026FD 00                    2019 	.db #0x00	; 0
      0026FE 00                    2020 	.db #0x00	; 0
      0026FF 00                    2021 	.db #0x00	; 0
      002700 00                    2022 	.db #0x00	; 0
      002701 00                    2023 	.db #0x00	; 0
      002702 00                    2024 	.db #0x00	; 0
      002703 00                    2025 	.db #0x00	; 0
      002704 00                    2026 	.db #0x00	; 0
      002705 00                    2027 	.db #0x00	; 0
      002706 00                    2028 	.db #0x00	; 0
      002707 00                    2029 	.db #0x00	; 0
      002708 00                    2030 	.db #0x00	; 0
      002709 00                    2031 	.db #0x00	; 0
      00270A 00                    2032 	.db #0x00	; 0
      00270B 00                    2033 	.db #0x00	; 0
      00270C 00                    2034 	.db #0x00	; 0
      00270D 00                    2035 	.db #0x00	; 0
      00270E 00                    2036 	.db #0x00	; 0
      00270F 00                    2037 	.db #0x00	; 0
      002710 00                    2038 	.db #0x00	; 0
      002711 00                    2039 	.db #0x00	; 0
      002712 00                    2040 	.db #0x00	; 0
      002713 00                    2041 	.db #0x00	; 0
      002714 00                    2042 	.db #0x00	; 0
      002715 00                    2043 	.db #0x00	; 0
      002716 00                    2044 	.db #0x00	; 0
      002717 00                    2045 	.db #0x00	; 0
      002718 00                    2046 	.db #0x00	; 0
      002719 00                    2047 	.db #0x00	; 0
      00271A 00                    2048 	.db #0x00	; 0
      00271B 00                    2049 	.db #0x00	; 0
      00271C 00                    2050 	.db #0x00	; 0
      00271D 00                    2051 	.db #0x00	; 0
      00271E 00                    2052 	.db #0x00	; 0
      00271F 00                    2053 	.db #0x00	; 0
      002720 00                    2054 	.db #0x00	; 0
      002721 00                    2055 	.db #0x00	; 0
      002722 00                    2056 	.db #0x00	; 0
      002723 00                    2057 	.db #0x00	; 0
      002724 00                    2058 	.db #0x00	; 0
      002725 00                    2059 	.db #0x00	; 0
      002726 00                    2060 	.db #0x00	; 0
      002727 00                    2061 	.db #0x00	; 0
      002728 00                    2062 	.db #0x00	; 0
      002729 00                    2063 	.db #0x00	; 0
      00272A 00                    2064 	.db #0x00	; 0
      00272B 00                    2065 	.db #0x00	; 0
      00272C 00                    2066 	.db #0x00	; 0
      00272D 00                    2067 	.db #0x00	; 0
      00272E 00                    2068 	.db #0x00	; 0
      00272F 00                    2069 	.db #0x00	; 0
      002730 00                    2070 	.db #0x00	; 0
      002731 00                    2071 	.db #0x00	; 0
      002732 00                    2072 	.db #0x00	; 0
      002733 00                    2073 	.db #0x00	; 0
      002734 00                    2074 	.db #0x00	; 0
      002735 00                    2075 	.db #0x00	; 0
      002736 00                    2076 	.db #0x00	; 0
      002737 00                    2077 	.db #0x00	; 0
      002738 00                    2078 	.db #0x00	; 0
      002739 00                    2079 	.db #0x00	; 0
      00273A 00                    2080 	.db #0x00	; 0
      00273B 00                    2081 	.db #0x00	; 0
      00273C 00                    2082 	.db #0x00	; 0
      00273D 00                    2083 	.db #0x00	; 0
      00273E 00                    2084 	.db #0x00	; 0
      00273F 00                    2085 	.db #0x00	; 0
      002740 00                    2086 	.db #0x00	; 0
      002741 00                    2087 	.db #0x00	; 0
      002742 00                    2088 	.db #0x00	; 0
      002743 00                    2089 	.db #0x00	; 0
      002744 00                    2090 	.db #0x00	; 0
      002745 00                    2091 	.db #0x00	; 0
      002746 00                    2092 	.db #0x00	; 0
      002747 00                    2093 	.db #0x00	; 0
      002748 00                    2094 	.db #0x00	; 0
      002749 00                    2095 	.db #0x00	; 0
      00274A 00                    2096 	.db #0x00	; 0
      00274B 00                    2097 	.db #0x00	; 0
      00274C 00                    2098 	.db #0x00	; 0
      00274D 00                    2099 	.db #0x00	; 0
      00274E 00                    2100 	.db #0x00	; 0
      00274F 00                    2101 	.db #0x00	; 0
      002750 00                    2102 	.db #0x00	; 0
      002751 00                    2103 	.db #0x00	; 0
      002752 00                    2104 	.db #0x00	; 0
      002753 00                    2105 	.db #0x00	; 0
      002754 00                    2106 	.db #0x00	; 0
      002755 00                    2107 	.db #0x00	; 0
      002756 00                    2108 	.db #0x00	; 0
      002757 00                    2109 	.db #0x00	; 0
      002758 00                    2110 	.db #0x00	; 0
      002759 00                    2111 	.db #0x00	; 0
      00275A 00                    2112 	.db #0x00	; 0
      00275B 00                    2113 	.db #0x00	; 0
      00275C 00                    2114 	.db #0x00	; 0
      00275D 00                    2115 	.db #0x00	; 0
      00275E 00                    2116 	.db #0x00	; 0
      00275F 00                    2117 	.db #0x00	; 0
      002760 00                    2118 	.db #0x00	; 0
      002761 00                    2119 	.db #0x00	; 0
      002762 00                    2120 	.db #0x00	; 0
      002763 00                    2121 	.db #0x00	; 0
      002764 00                    2122 	.db #0x00	; 0
      002765 00                    2123 	.db #0x00	; 0
      002766 00                    2124 	.db #0x00	; 0
      002767 00                    2125 	.db #0x00	; 0
      002768 00                    2126 	.db #0x00	; 0
      002769 00                    2127 	.db #0x00	; 0
      00276A 00                    2128 	.db #0x00	; 0
      00276B 00                    2129 	.db #0x00	; 0
      00276C 00                    2130 	.db #0x00	; 0
      00276D 00                    2131 	.db #0x00	; 0
      00276E 00                    2132 	.db #0x00	; 0
      00276F 00                    2133 	.db #0x00	; 0
      002770 00                    2134 	.db #0x00	; 0
      002771 00                    2135 	.db #0x00	; 0
      002772 00                    2136 	.db #0x00	; 0
      002773 00                    2137 	.db #0x00	; 0
      002774 00                    2138 	.db #0x00	; 0
      002775 00                    2139 	.db #0x00	; 0
      002776 00                    2140 	.db #0x00	; 0
      002777 00                    2141 	.db #0x00	; 0
      002778 00                    2142 	.db #0x00	; 0
      002779 00                    2143 	.db #0x00	; 0
      00277A 00                    2144 	.db #0x00	; 0
      00277B 00                    2145 	.db #0x00	; 0
      00277C 00                    2146 	.db #0x00	; 0
      00277D 00                    2147 	.db #0x00	; 0
      00277E 00                    2148 	.db #0x00	; 0
      00277F 00                    2149 	.db #0x00	; 0
      002780 00                    2150 	.db #0x00	; 0
      002781 00                    2151 	.db #0x00	; 0
      002782 00                    2152 	.db #0x00	; 0
      002783 00                    2153 	.db #0x00	; 0
      002784 00                    2154 	.db #0x00	; 0
      002785 00                    2155 	.db #0x00	; 0
      002786 00                    2156 	.db #0x00	; 0
      002787 00                    2157 	.db #0x00	; 0
      002788 00                    2158 	.db #0x00	; 0
      002789 00                    2159 	.db #0x00	; 0
      00278A 00                    2160 	.db #0x00	; 0
      00278B 00                    2161 	.db #0x00	; 0
      00278C 00                    2162 	.db #0x00	; 0
      00278D 00                    2163 	.db #0x00	; 0
      00278E 00                    2164 	.db #0x00	; 0
      00278F 00                    2165 	.db #0x00	; 0
      002790 00                    2166 	.db #0x00	; 0
      002791 00                    2167 	.db #0x00	; 0
      002792 00                    2168 	.db #0x00	; 0
      002793 00                    2169 	.db #0x00	; 0
      002794 00                    2170 	.db #0x00	; 0
      002795 00                    2171 	.db #0x00	; 0
      002796 00                    2172 	.db #0x00	; 0
      002797 00                    2173 	.db #0x00	; 0
      002798 00                    2174 	.db #0x00	; 0
      002799 00                    2175 	.db #0x00	; 0
      00279A 00                    2176 	.db #0x00	; 0
      00279B 00                    2177 	.db #0x00	; 0
      00279C 18                    2178 	.db #0x18	; 24
      00279D 18                    2179 	.db #0x18	; 24
      00279E 00                    2180 	.db #0x00	; 0
      00279F 18                    2181 	.db #0x18	; 24
      0027A0 18                    2182 	.db #0x18	; 24
      0027A1 18                    2183 	.db #0x18	; 24
      0027A2 18                    2184 	.db #0x18	; 24
      0027A3 00                    2185 	.db #0x00	; 0
      0027A4 18                    2186 	.db #0x18	; 24
      0027A5 18                    2187 	.db #0x18	; 24
      0027A6 7E                    2188 	.db #0x7e	; 126
      0027A7 03                    2189 	.db #0x03	; 3
      0027A8 03                    2190 	.db #0x03	; 3
      0027A9 7E                    2191 	.db #0x7e	; 126
      0027AA 18                    2192 	.db #0x18	; 24
      0027AB 18                    2193 	.db #0x18	; 24
      0027AC 1C                    2194 	.db #0x1c	; 28
      0027AD 36                    2195 	.db #0x36	; 54	'6'
      0027AE 26                    2196 	.db #0x26	; 38
      0027AF 0F                    2197 	.db #0x0f	; 15
      0027B0 06                    2198 	.db #0x06	; 6
      0027B1 67                    2199 	.db #0x67	; 103	'g'
      0027B2 3F                    2200 	.db #0x3f	; 63
      0027B3 00                    2201 	.db #0x00	; 0
      0027B4 00                    2202 	.db #0x00	; 0
      0027B5 00                    2203 	.db #0x00	; 0
      0027B6 63                    2204 	.db #0x63	; 99	'c'
      0027B7 3E                    2205 	.db #0x3e	; 62
      0027B8 36                    2206 	.db #0x36	; 54	'6'
      0027B9 3E                    2207 	.db #0x3e	; 62
      0027BA 63                    2208 	.db #0x63	; 99	'c'
      0027BB 00                    2209 	.db #0x00	; 0
      0027BC 33                    2210 	.db #0x33	; 51	'3'
      0027BD 33                    2211 	.db #0x33	; 51	'3'
      0027BE 1E                    2212 	.db #0x1e	; 30
      0027BF 3F                    2213 	.db #0x3f	; 63
      0027C0 0C                    2214 	.db #0x0c	; 12
      0027C1 3F                    2215 	.db #0x3f	; 63
      0027C2 0C                    2216 	.db #0x0c	; 12
      0027C3 0C                    2217 	.db #0x0c	; 12
      0027C4 18                    2218 	.db #0x18	; 24
      0027C5 18                    2219 	.db #0x18	; 24
      0027C6 18                    2220 	.db #0x18	; 24
      0027C7 00                    2221 	.db #0x00	; 0
      0027C8 18                    2222 	.db #0x18	; 24
      0027C9 18                    2223 	.db #0x18	; 24
      0027CA 18                    2224 	.db #0x18	; 24
      0027CB 00                    2225 	.db #0x00	; 0
      0027CC 7C                    2226 	.db #0x7c	; 124
      0027CD C6                    2227 	.db #0xc6	; 198
      0027CE 1C                    2228 	.db #0x1c	; 28
      0027CF 36                    2229 	.db #0x36	; 54	'6'
      0027D0 36                    2230 	.db #0x36	; 54	'6'
      0027D1 1C                    2231 	.db #0x1c	; 28
      0027D2 33                    2232 	.db #0x33	; 51	'3'
      0027D3 1E                    2233 	.db #0x1e	; 30
      0027D4 33                    2234 	.db #0x33	; 51	'3'
      0027D5 00                    2235 	.db #0x00	; 0
      0027D6 00                    2236 	.db #0x00	; 0
      0027D7 00                    2237 	.db #0x00	; 0
      0027D8 00                    2238 	.db #0x00	; 0
      0027D9 00                    2239 	.db #0x00	; 0
      0027DA 00                    2240 	.db #0x00	; 0
      0027DB 00                    2241 	.db #0x00	; 0
      0027DC 3C                    2242 	.db #0x3c	; 60
      0027DD 42                    2243 	.db #0x42	; 66	'B'
      0027DE 99                    2244 	.db #0x99	; 153
      0027DF 85                    2245 	.db #0x85	; 133
      0027E0 85                    2246 	.db #0x85	; 133
      0027E1 99                    2247 	.db #0x99	; 153
      0027E2 42                    2248 	.db #0x42	; 66	'B'
      0027E3 3C                    2249 	.db #0x3c	; 60
      0027E4 3C                    2250 	.db #0x3c	; 60
      0027E5 36                    2251 	.db #0x36	; 54	'6'
      0027E6 36                    2252 	.db #0x36	; 54	'6'
      0027E7 7C                    2253 	.db #0x7c	; 124
      0027E8 00                    2254 	.db #0x00	; 0
      0027E9 00                    2255 	.db #0x00	; 0
      0027EA 00                    2256 	.db #0x00	; 0
      0027EB 00                    2257 	.db #0x00	; 0
      0027EC 00                    2258 	.db #0x00	; 0
      0027ED CC                    2259 	.db #0xcc	; 204
      0027EE 66                    2260 	.db #0x66	; 102	'f'
      0027EF 33                    2261 	.db #0x33	; 51	'3'
      0027F0 66                    2262 	.db #0x66	; 102	'f'
      0027F1 CC                    2263 	.db #0xcc	; 204
      0027F2 00                    2264 	.db #0x00	; 0
      0027F3 00                    2265 	.db #0x00	; 0
      0027F4 00                    2266 	.db #0x00	; 0
      0027F5 00                    2267 	.db #0x00	; 0
      0027F6 00                    2268 	.db #0x00	; 0
      0027F7 3F                    2269 	.db #0x3f	; 63
      0027F8 30                    2270 	.db #0x30	; 48	'0'
      0027F9 30                    2271 	.db #0x30	; 48	'0'
      0027FA 00                    2272 	.db #0x00	; 0
      0027FB 00                    2273 	.db #0x00	; 0
      0027FC 00                    2274 	.db #0x00	; 0
      0027FD 00                    2275 	.db #0x00	; 0
      0027FE 00                    2276 	.db #0x00	; 0
      0027FF 00                    2277 	.db #0x00	; 0
      002800 00                    2278 	.db #0x00	; 0
      002801 00                    2279 	.db #0x00	; 0
      002802 00                    2280 	.db #0x00	; 0
      002803 00                    2281 	.db #0x00	; 0
      002804 3C                    2282 	.db #0x3c	; 60
      002805 42                    2283 	.db #0x42	; 66	'B'
      002806 9D                    2284 	.db #0x9d	; 157
      002807 A5                    2285 	.db #0xa5	; 165
      002808 9D                    2286 	.db #0x9d	; 157
      002809 A5                    2287 	.db #0xa5	; 165
      00280A 42                    2288 	.db #0x42	; 66	'B'
      00280B 3C                    2289 	.db #0x3c	; 60
      00280C 7E                    2290 	.db #0x7e	; 126
      00280D 00                    2291 	.db #0x00	; 0
      00280E 00                    2292 	.db #0x00	; 0
      00280F 00                    2293 	.db #0x00	; 0
      002810 00                    2294 	.db #0x00	; 0
      002811 00                    2295 	.db #0x00	; 0
      002812 00                    2296 	.db #0x00	; 0
      002813 00                    2297 	.db #0x00	; 0
      002814 1C                    2298 	.db #0x1c	; 28
      002815 36                    2299 	.db #0x36	; 54	'6'
      002816 36                    2300 	.db #0x36	; 54	'6'
      002817 1C                    2301 	.db #0x1c	; 28
      002818 00                    2302 	.db #0x00	; 0
      002819 00                    2303 	.db #0x00	; 0
      00281A 00                    2304 	.db #0x00	; 0
      00281B 00                    2305 	.db #0x00	; 0
      00281C 18                    2306 	.db #0x18	; 24
      00281D 18                    2307 	.db #0x18	; 24
      00281E 7E                    2308 	.db #0x7e	; 126
      00281F 18                    2309 	.db #0x18	; 24
      002820 18                    2310 	.db #0x18	; 24
      002821 00                    2311 	.db #0x00	; 0
      002822 7E                    2312 	.db #0x7e	; 126
      002823 00                    2313 	.db #0x00	; 0
      002824 1C                    2314 	.db #0x1c	; 28
      002825 30                    2315 	.db #0x30	; 48	'0'
      002826 18                    2316 	.db #0x18	; 24
      002827 0C                    2317 	.db #0x0c	; 12
      002828 3C                    2318 	.db #0x3c	; 60
      002829 00                    2319 	.db #0x00	; 0
      00282A 00                    2320 	.db #0x00	; 0
      00282B 00                    2321 	.db #0x00	; 0
      00282C 1C                    2322 	.db #0x1c	; 28
      00282D 30                    2323 	.db #0x30	; 48	'0'
      00282E 18                    2324 	.db #0x18	; 24
      00282F 30                    2325 	.db #0x30	; 48	'0'
      002830 1C                    2326 	.db #0x1c	; 28
      002831 00                    2327 	.db #0x00	; 0
      002832 00                    2328 	.db #0x00	; 0
      002833 00                    2329 	.db #0x00	; 0
      002834 18                    2330 	.db #0x18	; 24
      002835 0C                    2331 	.db #0x0c	; 12
      002836 00                    2332 	.db #0x00	; 0
      002837 00                    2333 	.db #0x00	; 0
      002838 00                    2334 	.db #0x00	; 0
      002839 00                    2335 	.db #0x00	; 0
      00283A 00                    2336 	.db #0x00	; 0
      00283B 00                    2337 	.db #0x00	; 0
      00283C 00                    2338 	.db #0x00	; 0
      00283D 00                    2339 	.db #0x00	; 0
      00283E 66                    2340 	.db #0x66	; 102	'f'
      00283F 66                    2341 	.db #0x66	; 102	'f'
      002840 66                    2342 	.db #0x66	; 102	'f'
      002841 3E                    2343 	.db #0x3e	; 62
      002842 06                    2344 	.db #0x06	; 6
      002843 03                    2345 	.db #0x03	; 3
      002844 FE                    2346 	.db #0xfe	; 254
      002845 DB                    2347 	.db #0xdb	; 219
      002846 DB                    2348 	.db #0xdb	; 219
      002847 DE                    2349 	.db #0xde	; 222
      002848 D8                    2350 	.db #0xd8	; 216
      002849 D8                    2351 	.db #0xd8	; 216
      00284A D8                    2352 	.db #0xd8	; 216
      00284B 00                    2353 	.db #0x00	; 0
      00284C 00                    2354 	.db #0x00	; 0
      00284D 00                    2355 	.db #0x00	; 0
      00284E 00                    2356 	.db #0x00	; 0
      00284F 18                    2357 	.db #0x18	; 24
      002850 18                    2358 	.db #0x18	; 24
      002851 00                    2359 	.db #0x00	; 0
      002852 00                    2360 	.db #0x00	; 0
      002853 00                    2361 	.db #0x00	; 0
      002854 00                    2362 	.db #0x00	; 0
      002855 00                    2363 	.db #0x00	; 0
      002856 00                    2364 	.db #0x00	; 0
      002857 00                    2365 	.db #0x00	; 0
      002858 00                    2366 	.db #0x00	; 0
      002859 18                    2367 	.db #0x18	; 24
      00285A 30                    2368 	.db #0x30	; 48	'0'
      00285B 1E                    2369 	.db #0x1e	; 30
      00285C 08                    2370 	.db #0x08	; 8
      00285D 0C                    2371 	.db #0x0c	; 12
      00285E 08                    2372 	.db #0x08	; 8
      00285F 1C                    2373 	.db #0x1c	; 28
      002860 00                    2374 	.db #0x00	; 0
      002861 00                    2375 	.db #0x00	; 0
      002862 00                    2376 	.db #0x00	; 0
      002863 00                    2377 	.db #0x00	; 0
      002864 1C                    2378 	.db #0x1c	; 28
      002865 36                    2379 	.db #0x36	; 54	'6'
      002866 36                    2380 	.db #0x36	; 54	'6'
      002867 1C                    2381 	.db #0x1c	; 28
      002868 00                    2382 	.db #0x00	; 0
      002869 00                    2383 	.db #0x00	; 0
      00286A 00                    2384 	.db #0x00	; 0
      00286B 00                    2385 	.db #0x00	; 0
      00286C 00                    2386 	.db #0x00	; 0
      00286D 33                    2387 	.db #0x33	; 51	'3'
      00286E 66                    2388 	.db #0x66	; 102	'f'
      00286F CC                    2389 	.db #0xcc	; 204
      002870 66                    2390 	.db #0x66	; 102	'f'
      002871 33                    2391 	.db #0x33	; 51	'3'
      002872 00                    2392 	.db #0x00	; 0
      002873 00                    2393 	.db #0x00	; 0
      002874 C3                    2394 	.db #0xc3	; 195
      002875 63                    2395 	.db #0x63	; 99	'c'
      002876 33                    2396 	.db #0x33	; 51	'3'
      002877 BD                    2397 	.db #0xbd	; 189
      002878 EC                    2398 	.db #0xec	; 236
      002879 F6                    2399 	.db #0xf6	; 246
      00287A F3                    2400 	.db #0xf3	; 243
      00287B 03                    2401 	.db #0x03	; 3
      00287C C3                    2402 	.db #0xc3	; 195
      00287D 63                    2403 	.db #0x63	; 99	'c'
      00287E 33                    2404 	.db #0x33	; 51	'3'
      00287F 7B                    2405 	.db #0x7b	; 123
      002880 CC                    2406 	.db #0xcc	; 204
      002881 66                    2407 	.db #0x66	; 102	'f'
      002882 33                    2408 	.db #0x33	; 51	'3'
      002883 F0                    2409 	.db #0xf0	; 240
      002884 03                    2410 	.db #0x03	; 3
      002885 C4                    2411 	.db #0xc4	; 196
      002886 63                    2412 	.db #0x63	; 99	'c'
      002887 B4                    2413 	.db #0xb4	; 180
      002888 DB                    2414 	.db #0xdb	; 219
      002889 AC                    2415 	.db #0xac	; 172
      00288A E6                    2416 	.db #0xe6	; 230
      00288B 80                    2417 	.db #0x80	; 128
      00288C 0C                    2418 	.db #0x0c	; 12
      00288D 00                    2419 	.db #0x00	; 0
      00288E 0C                    2420 	.db #0x0c	; 12
      00288F 06                    2421 	.db #0x06	; 6
      002890 03                    2422 	.db #0x03	; 3
      002891 33                    2423 	.db #0x33	; 51	'3'
      002892 1E                    2424 	.db #0x1e	; 30
      002893 00                    2425 	.db #0x00	; 0
      002894 07                    2426 	.db #0x07	; 7
      002895 00                    2427 	.db #0x00	; 0
      002896 1C                    2428 	.db #0x1c	; 28
      002897 36                    2429 	.db #0x36	; 54	'6'
      002898 63                    2430 	.db #0x63	; 99	'c'
      002899 7F                    2431 	.db #0x7f	; 127
      00289A 63                    2432 	.db #0x63	; 99	'c'
      00289B 00                    2433 	.db #0x00	; 0
      00289C 70                    2434 	.db #0x70	; 112	'p'
      00289D 00                    2435 	.db #0x00	; 0
      00289E 1C                    2436 	.db #0x1c	; 28
      00289F 36                    2437 	.db #0x36	; 54	'6'
      0028A0 63                    2438 	.db #0x63	; 99	'c'
      0028A1 7F                    2439 	.db #0x7f	; 127
      0028A2 63                    2440 	.db #0x63	; 99	'c'
      0028A3 00                    2441 	.db #0x00	; 0
      0028A4 1C                    2442 	.db #0x1c	; 28
      0028A5 36                    2443 	.db #0x36	; 54	'6'
      0028A6 00                    2444 	.db #0x00	; 0
      0028A7 3E                    2445 	.db #0x3e	; 62
      0028A8 63                    2446 	.db #0x63	; 99	'c'
      0028A9 7F                    2447 	.db #0x7f	; 127
      0028AA 63                    2448 	.db #0x63	; 99	'c'
      0028AB 00                    2449 	.db #0x00	; 0
      0028AC 6E                    2450 	.db #0x6e	; 110	'n'
      0028AD 3B                    2451 	.db #0x3b	; 59
      0028AE 00                    2452 	.db #0x00	; 0
      0028AF 3E                    2453 	.db #0x3e	; 62
      0028B0 63                    2454 	.db #0x63	; 99	'c'
      0028B1 7F                    2455 	.db #0x7f	; 127
      0028B2 63                    2456 	.db #0x63	; 99	'c'
      0028B3 00                    2457 	.db #0x00	; 0
      0028B4 63                    2458 	.db #0x63	; 99	'c'
      0028B5 1C                    2459 	.db #0x1c	; 28
      0028B6 36                    2460 	.db #0x36	; 54	'6'
      0028B7 63                    2461 	.db #0x63	; 99	'c'
      0028B8 7F                    2462 	.db #0x7f	; 127
      0028B9 63                    2463 	.db #0x63	; 99	'c'
      0028BA 63                    2464 	.db #0x63	; 99	'c'
      0028BB 00                    2465 	.db #0x00	; 0
      0028BC 0C                    2466 	.db #0x0c	; 12
      0028BD 0C                    2467 	.db #0x0c	; 12
      0028BE 00                    2468 	.db #0x00	; 0
      0028BF 1E                    2469 	.db #0x1e	; 30
      0028C0 33                    2470 	.db #0x33	; 51	'3'
      0028C1 3F                    2471 	.db #0x3f	; 63
      0028C2 33                    2472 	.db #0x33	; 51	'3'
      0028C3 00                    2473 	.db #0x00	; 0
      0028C4 7C                    2474 	.db #0x7c	; 124
      0028C5 36                    2475 	.db #0x36	; 54	'6'
      0028C6 33                    2476 	.db #0x33	; 51	'3'
      0028C7 7F                    2477 	.db #0x7f	; 127
      0028C8 33                    2478 	.db #0x33	; 51	'3'
      0028C9 33                    2479 	.db #0x33	; 51	'3'
      0028CA 73                    2480 	.db #0x73	; 115	's'
      0028CB 00                    2481 	.db #0x00	; 0
      0028CC 1E                    2482 	.db #0x1e	; 30
      0028CD 33                    2483 	.db #0x33	; 51	'3'
      0028CE 03                    2484 	.db #0x03	; 3
      0028CF 33                    2485 	.db #0x33	; 51	'3'
      0028D0 1E                    2486 	.db #0x1e	; 30
      0028D1 18                    2487 	.db #0x18	; 24
      0028D2 30                    2488 	.db #0x30	; 48	'0'
      0028D3 1E                    2489 	.db #0x1e	; 30
      0028D4 07                    2490 	.db #0x07	; 7
      0028D5 00                    2491 	.db #0x00	; 0
      0028D6 3F                    2492 	.db #0x3f	; 63
      0028D7 06                    2493 	.db #0x06	; 6
      0028D8 1E                    2494 	.db #0x1e	; 30
      0028D9 06                    2495 	.db #0x06	; 6
      0028DA 3F                    2496 	.db #0x3f	; 63
      0028DB 00                    2497 	.db #0x00	; 0
      0028DC 38                    2498 	.db #0x38	; 56	'8'
      0028DD 00                    2499 	.db #0x00	; 0
      0028DE 3F                    2500 	.db #0x3f	; 63
      0028DF 06                    2501 	.db #0x06	; 6
      0028E0 1E                    2502 	.db #0x1e	; 30
      0028E1 06                    2503 	.db #0x06	; 6
      0028E2 3F                    2504 	.db #0x3f	; 63
      0028E3 00                    2505 	.db #0x00	; 0
      0028E4 0C                    2506 	.db #0x0c	; 12
      0028E5 12                    2507 	.db #0x12	; 18
      0028E6 3F                    2508 	.db #0x3f	; 63
      0028E7 06                    2509 	.db #0x06	; 6
      0028E8 1E                    2510 	.db #0x1e	; 30
      0028E9 06                    2511 	.db #0x06	; 6
      0028EA 3F                    2512 	.db #0x3f	; 63
      0028EB 00                    2513 	.db #0x00	; 0
      0028EC 36                    2514 	.db #0x36	; 54	'6'
      0028ED 00                    2515 	.db #0x00	; 0
      0028EE 3F                    2516 	.db #0x3f	; 63
      0028EF 06                    2517 	.db #0x06	; 6
      0028F0 1E                    2518 	.db #0x1e	; 30
      0028F1 06                    2519 	.db #0x06	; 6
      0028F2 3F                    2520 	.db #0x3f	; 63
      0028F3 00                    2521 	.db #0x00	; 0
      0028F4 07                    2522 	.db #0x07	; 7
      0028F5 00                    2523 	.db #0x00	; 0
      0028F6 1E                    2524 	.db #0x1e	; 30
      0028F7 0C                    2525 	.db #0x0c	; 12
      0028F8 0C                    2526 	.db #0x0c	; 12
      0028F9 0C                    2527 	.db #0x0c	; 12
      0028FA 1E                    2528 	.db #0x1e	; 30
      0028FB 00                    2529 	.db #0x00	; 0
      0028FC 38                    2530 	.db #0x38	; 56	'8'
      0028FD 00                    2531 	.db #0x00	; 0
      0028FE 1E                    2532 	.db #0x1e	; 30
      0028FF 0C                    2533 	.db #0x0c	; 12
      002900 0C                    2534 	.db #0x0c	; 12
      002901 0C                    2535 	.db #0x0c	; 12
      002902 1E                    2536 	.db #0x1e	; 30
      002903 00                    2537 	.db #0x00	; 0
      002904 0C                    2538 	.db #0x0c	; 12
      002905 12                    2539 	.db #0x12	; 18
      002906 00                    2540 	.db #0x00	; 0
      002907 1E                    2541 	.db #0x1e	; 30
      002908 0C                    2542 	.db #0x0c	; 12
      002909 0C                    2543 	.db #0x0c	; 12
      00290A 1E                    2544 	.db #0x1e	; 30
      00290B 00                    2545 	.db #0x00	; 0
      00290C 33                    2546 	.db #0x33	; 51	'3'
      00290D 00                    2547 	.db #0x00	; 0
      00290E 1E                    2548 	.db #0x1e	; 30
      00290F 0C                    2549 	.db #0x0c	; 12
      002910 0C                    2550 	.db #0x0c	; 12
      002911 0C                    2551 	.db #0x0c	; 12
      002912 1E                    2552 	.db #0x1e	; 30
      002913 00                    2553 	.db #0x00	; 0
      002914 3F                    2554 	.db #0x3f	; 63
      002915 66                    2555 	.db #0x66	; 102	'f'
      002916 6F                    2556 	.db #0x6f	; 111	'o'
      002917 6F                    2557 	.db #0x6f	; 111	'o'
      002918 66                    2558 	.db #0x66	; 102	'f'
      002919 66                    2559 	.db #0x66	; 102	'f'
      00291A 3F                    2560 	.db #0x3f	; 63
      00291B 00                    2561 	.db #0x00	; 0
      00291C 3F                    2562 	.db #0x3f	; 63
      00291D 00                    2563 	.db #0x00	; 0
      00291E 33                    2564 	.db #0x33	; 51	'3'
      00291F 37                    2565 	.db #0x37	; 55	'7'
      002920 3F                    2566 	.db #0x3f	; 63
      002921 3B                    2567 	.db #0x3b	; 59
      002922 33                    2568 	.db #0x33	; 51	'3'
      002923 00                    2569 	.db #0x00	; 0
      002924 0E                    2570 	.db #0x0e	; 14
      002925 00                    2571 	.db #0x00	; 0
      002926 18                    2572 	.db #0x18	; 24
      002927 3C                    2573 	.db #0x3c	; 60
      002928 66                    2574 	.db #0x66	; 102	'f'
      002929 3C                    2575 	.db #0x3c	; 60
      00292A 18                    2576 	.db #0x18	; 24
      00292B 00                    2577 	.db #0x00	; 0
      00292C 70                    2578 	.db #0x70	; 112	'p'
      00292D 00                    2579 	.db #0x00	; 0
      00292E 18                    2580 	.db #0x18	; 24
      00292F 3C                    2581 	.db #0x3c	; 60
      002930 66                    2582 	.db #0x66	; 102	'f'
      002931 3C                    2583 	.db #0x3c	; 60
      002932 18                    2584 	.db #0x18	; 24
      002933 00                    2585 	.db #0x00	; 0
      002934 3C                    2586 	.db #0x3c	; 60
      002935 66                    2587 	.db #0x66	; 102	'f'
      002936 18                    2588 	.db #0x18	; 24
      002937 3C                    2589 	.db #0x3c	; 60
      002938 66                    2590 	.db #0x66	; 102	'f'
      002939 3C                    2591 	.db #0x3c	; 60
      00293A 18                    2592 	.db #0x18	; 24
      00293B 00                    2593 	.db #0x00	; 0
      00293C 6E                    2594 	.db #0x6e	; 110	'n'
      00293D 3B                    2595 	.db #0x3b	; 59
      00293E 00                    2596 	.db #0x00	; 0
      00293F 3E                    2597 	.db #0x3e	; 62
      002940 63                    2598 	.db #0x63	; 99	'c'
      002941 63                    2599 	.db #0x63	; 99	'c'
      002942 3E                    2600 	.db #0x3e	; 62
      002943 00                    2601 	.db #0x00	; 0
      002944 C3                    2602 	.db #0xc3	; 195
      002945 18                    2603 	.db #0x18	; 24
      002946 3C                    2604 	.db #0x3c	; 60
      002947 66                    2605 	.db #0x66	; 102	'f'
      002948 66                    2606 	.db #0x66	; 102	'f'
      002949 3C                    2607 	.db #0x3c	; 60
      00294A 18                    2608 	.db #0x18	; 24
      00294B 00                    2609 	.db #0x00	; 0
      00294C 00                    2610 	.db #0x00	; 0
      00294D 36                    2611 	.db #0x36	; 54	'6'
      00294E 1C                    2612 	.db #0x1c	; 28
      00294F 08                    2613 	.db #0x08	; 8
      002950 1C                    2614 	.db #0x1c	; 28
      002951 36                    2615 	.db #0x36	; 54	'6'
      002952 00                    2616 	.db #0x00	; 0
      002953 00                    2617 	.db #0x00	; 0
      002954 5C                    2618 	.db #0x5c	; 92
      002955 36                    2619 	.db #0x36	; 54	'6'
      002956 73                    2620 	.db #0x73	; 115	's'
      002957 7B                    2621 	.db #0x7b	; 123
      002958 6F                    2622 	.db #0x6f	; 111	'o'
      002959 36                    2623 	.db #0x36	; 54	'6'
      00295A 1D                    2624 	.db #0x1d	; 29
      00295B 00                    2625 	.db #0x00	; 0
      00295C 0E                    2626 	.db #0x0e	; 14
      00295D 00                    2627 	.db #0x00	; 0
      00295E 66                    2628 	.db #0x66	; 102	'f'
      00295F 66                    2629 	.db #0x66	; 102	'f'
      002960 66                    2630 	.db #0x66	; 102	'f'
      002961 66                    2631 	.db #0x66	; 102	'f'
      002962 3C                    2632 	.db #0x3c	; 60
      002963 00                    2633 	.db #0x00	; 0
      002964 70                    2634 	.db #0x70	; 112	'p'
      002965 00                    2635 	.db #0x00	; 0
      002966 66                    2636 	.db #0x66	; 102	'f'
      002967 66                    2637 	.db #0x66	; 102	'f'
      002968 66                    2638 	.db #0x66	; 102	'f'
      002969 66                    2639 	.db #0x66	; 102	'f'
      00296A 3C                    2640 	.db #0x3c	; 60
      00296B 00                    2641 	.db #0x00	; 0
      00296C 3C                    2642 	.db #0x3c	; 60
      00296D 66                    2643 	.db #0x66	; 102	'f'
      00296E 00                    2644 	.db #0x00	; 0
      00296F 66                    2645 	.db #0x66	; 102	'f'
      002970 66                    2646 	.db #0x66	; 102	'f'
      002971 66                    2647 	.db #0x66	; 102	'f'
      002972 3C                    2648 	.db #0x3c	; 60
      002973 00                    2649 	.db #0x00	; 0
      002974 33                    2650 	.db #0x33	; 51	'3'
      002975 00                    2651 	.db #0x00	; 0
      002976 33                    2652 	.db #0x33	; 51	'3'
      002977 33                    2653 	.db #0x33	; 51	'3'
      002978 33                    2654 	.db #0x33	; 51	'3'
      002979 33                    2655 	.db #0x33	; 51	'3'
      00297A 1E                    2656 	.db #0x1e	; 30
      00297B 00                    2657 	.db #0x00	; 0
      00297C 70                    2658 	.db #0x70	; 112	'p'
      00297D 00                    2659 	.db #0x00	; 0
      00297E 66                    2660 	.db #0x66	; 102	'f'
      00297F 66                    2661 	.db #0x66	; 102	'f'
      002980 3C                    2662 	.db #0x3c	; 60
      002981 18                    2663 	.db #0x18	; 24
      002982 18                    2664 	.db #0x18	; 24
      002983 00                    2665 	.db #0x00	; 0
      002984 0F                    2666 	.db #0x0f	; 15
      002985 06                    2667 	.db #0x06	; 6
      002986 3E                    2668 	.db #0x3e	; 62
      002987 66                    2669 	.db #0x66	; 102	'f'
      002988 66                    2670 	.db #0x66	; 102	'f'
      002989 3E                    2671 	.db #0x3e	; 62
      00298A 06                    2672 	.db #0x06	; 6
      00298B 0F                    2673 	.db #0x0f	; 15
      00298C 00                    2674 	.db #0x00	; 0
      00298D 1E                    2675 	.db #0x1e	; 30
      00298E 33                    2676 	.db #0x33	; 51	'3'
      00298F 1F                    2677 	.db #0x1f	; 31
      002990 33                    2678 	.db #0x33	; 51	'3'
      002991 1F                    2679 	.db #0x1f	; 31
      002992 03                    2680 	.db #0x03	; 3
      002993 03                    2681 	.db #0x03	; 3
      002994 07                    2682 	.db #0x07	; 7
      002995 00                    2683 	.db #0x00	; 0
      002996 1E                    2684 	.db #0x1e	; 30
      002997 30                    2685 	.db #0x30	; 48	'0'
      002998 3E                    2686 	.db #0x3e	; 62
      002999 33                    2687 	.db #0x33	; 51	'3'
      00299A 7E                    2688 	.db #0x7e	; 126
      00299B 00                    2689 	.db #0x00	; 0
      00299C 38                    2690 	.db #0x38	; 56	'8'
      00299D 00                    2691 	.db #0x00	; 0
      00299E 1E                    2692 	.db #0x1e	; 30
      00299F 30                    2693 	.db #0x30	; 48	'0'
      0029A0 3E                    2694 	.db #0x3e	; 62
      0029A1 33                    2695 	.db #0x33	; 51	'3'
      0029A2 7E                    2696 	.db #0x7e	; 126
      0029A3 00                    2697 	.db #0x00	; 0
      0029A4 7E                    2698 	.db #0x7e	; 126
      0029A5 C3                    2699 	.db #0xc3	; 195
      0029A6 3C                    2700 	.db #0x3c	; 60
      0029A7 60                    2701 	.db #0x60	; 96
      0029A8 7C                    2702 	.db #0x7c	; 124
      0029A9 66                    2703 	.db #0x66	; 102	'f'
      0029AA FC                    2704 	.db #0xfc	; 252
      0029AB 00                    2705 	.db #0x00	; 0
      0029AC 6E                    2706 	.db #0x6e	; 110	'n'
      0029AD 3B                    2707 	.db #0x3b	; 59
      0029AE 1E                    2708 	.db #0x1e	; 30
      0029AF 30                    2709 	.db #0x30	; 48	'0'
      0029B0 3E                    2710 	.db #0x3e	; 62
      0029B1 33                    2711 	.db #0x33	; 51	'3'
      0029B2 7E                    2712 	.db #0x7e	; 126
      0029B3 00                    2713 	.db #0x00	; 0
      0029B4 33                    2714 	.db #0x33	; 51	'3'
      0029B5 00                    2715 	.db #0x00	; 0
      0029B6 1E                    2716 	.db #0x1e	; 30
      0029B7 30                    2717 	.db #0x30	; 48	'0'
      0029B8 3E                    2718 	.db #0x3e	; 62
      0029B9 33                    2719 	.db #0x33	; 51	'3'
      0029BA 7E                    2720 	.db #0x7e	; 126
      0029BB 00                    2721 	.db #0x00	; 0
      0029BC 0C                    2722 	.db #0x0c	; 12
      0029BD 0C                    2723 	.db #0x0c	; 12
      0029BE 1E                    2724 	.db #0x1e	; 30
      0029BF 30                    2725 	.db #0x30	; 48	'0'
      0029C0 3E                    2726 	.db #0x3e	; 62
      0029C1 33                    2727 	.db #0x33	; 51	'3'
      0029C2 7E                    2728 	.db #0x7e	; 126
      0029C3 00                    2729 	.db #0x00	; 0
      0029C4 00                    2730 	.db #0x00	; 0
      0029C5 00                    2731 	.db #0x00	; 0
      0029C6 FE                    2732 	.db #0xfe	; 254
      0029C7 30                    2733 	.db #0x30	; 48	'0'
      0029C8 FE                    2734 	.db #0xfe	; 254
      0029C9 33                    2735 	.db #0x33	; 51	'3'
      0029CA FE                    2736 	.db #0xfe	; 254
      0029CB 00                    2737 	.db #0x00	; 0
      0029CC 00                    2738 	.db #0x00	; 0
      0029CD 00                    2739 	.db #0x00	; 0
      0029CE 1E                    2740 	.db #0x1e	; 30
      0029CF 03                    2741 	.db #0x03	; 3
      0029D0 03                    2742 	.db #0x03	; 3
      0029D1 1E                    2743 	.db #0x1e	; 30
      0029D2 30                    2744 	.db #0x30	; 48	'0'
      0029D3 1C                    2745 	.db #0x1c	; 28
      0029D4 07                    2746 	.db #0x07	; 7
      0029D5 00                    2747 	.db #0x00	; 0
      0029D6 1E                    2748 	.db #0x1e	; 30
      0029D7 33                    2749 	.db #0x33	; 51	'3'
      0029D8 3F                    2750 	.db #0x3f	; 63
      0029D9 03                    2751 	.db #0x03	; 3
      0029DA 1E                    2752 	.db #0x1e	; 30
      0029DB 00                    2753 	.db #0x00	; 0
      0029DC 38                    2754 	.db #0x38	; 56	'8'
      0029DD 00                    2755 	.db #0x00	; 0
      0029DE 1E                    2756 	.db #0x1e	; 30
      0029DF 33                    2757 	.db #0x33	; 51	'3'
      0029E0 3F                    2758 	.db #0x3f	; 63
      0029E1 03                    2759 	.db #0x03	; 3
      0029E2 1E                    2760 	.db #0x1e	; 30
      0029E3 00                    2761 	.db #0x00	; 0
      0029E4 7E                    2762 	.db #0x7e	; 126
      0029E5 C3                    2763 	.db #0xc3	; 195
      0029E6 3C                    2764 	.db #0x3c	; 60
      0029E7 66                    2765 	.db #0x66	; 102	'f'
      0029E8 7E                    2766 	.db #0x7e	; 126
      0029E9 06                    2767 	.db #0x06	; 6
      0029EA 3C                    2768 	.db #0x3c	; 60
      0029EB 00                    2769 	.db #0x00	; 0
      0029EC 33                    2770 	.db #0x33	; 51	'3'
      0029ED 00                    2771 	.db #0x00	; 0
      0029EE 1E                    2772 	.db #0x1e	; 30
      0029EF 33                    2773 	.db #0x33	; 51	'3'
      0029F0 3F                    2774 	.db #0x3f	; 63
      0029F1 03                    2775 	.db #0x03	; 3
      0029F2 1E                    2776 	.db #0x1e	; 30
      0029F3 00                    2777 	.db #0x00	; 0
      0029F4 07                    2778 	.db #0x07	; 7
      0029F5 00                    2779 	.db #0x00	; 0
      0029F6 0E                    2780 	.db #0x0e	; 14
      0029F7 0C                    2781 	.db #0x0c	; 12
      0029F8 0C                    2782 	.db #0x0c	; 12
      0029F9 0C                    2783 	.db #0x0c	; 12
      0029FA 1E                    2784 	.db #0x1e	; 30
      0029FB 00                    2785 	.db #0x00	; 0
      0029FC 1C                    2786 	.db #0x1c	; 28
      0029FD 00                    2787 	.db #0x00	; 0
      0029FE 0E                    2788 	.db #0x0e	; 14
      0029FF 0C                    2789 	.db #0x0c	; 12
      002A00 0C                    2790 	.db #0x0c	; 12
      002A01 0C                    2791 	.db #0x0c	; 12
      002A02 1E                    2792 	.db #0x1e	; 30
      002A03 00                    2793 	.db #0x00	; 0
      002A04 3E                    2794 	.db #0x3e	; 62
      002A05 63                    2795 	.db #0x63	; 99	'c'
      002A06 1C                    2796 	.db #0x1c	; 28
      002A07 18                    2797 	.db #0x18	; 24
      002A08 18                    2798 	.db #0x18	; 24
      002A09 18                    2799 	.db #0x18	; 24
      002A0A 3C                    2800 	.db #0x3c	; 60
      002A0B 00                    2801 	.db #0x00	; 0
      002A0C 33                    2802 	.db #0x33	; 51	'3'
      002A0D 00                    2803 	.db #0x00	; 0
      002A0E 0E                    2804 	.db #0x0e	; 14
      002A0F 0C                    2805 	.db #0x0c	; 12
      002A10 0C                    2806 	.db #0x0c	; 12
      002A11 0C                    2807 	.db #0x0c	; 12
      002A12 1E                    2808 	.db #0x1e	; 30
      002A13 00                    2809 	.db #0x00	; 0
      002A14 1B                    2810 	.db #0x1b	; 27
      002A15 0E                    2811 	.db #0x0e	; 14
      002A16 1B                    2812 	.db #0x1b	; 27
      002A17 30                    2813 	.db #0x30	; 48	'0'
      002A18 3E                    2814 	.db #0x3e	; 62
      002A19 33                    2815 	.db #0x33	; 51	'3'
      002A1A 1E                    2816 	.db #0x1e	; 30
      002A1B 00                    2817 	.db #0x00	; 0
      002A1C 00                    2818 	.db #0x00	; 0
      002A1D 1F                    2819 	.db #0x1f	; 31
      002A1E 00                    2820 	.db #0x00	; 0
      002A1F 1F                    2821 	.db #0x1f	; 31
      002A20 33                    2822 	.db #0x33	; 51	'3'
      002A21 33                    2823 	.db #0x33	; 51	'3'
      002A22 33                    2824 	.db #0x33	; 51	'3'
      002A23 00                    2825 	.db #0x00	; 0
      002A24 00                    2826 	.db #0x00	; 0
      002A25 07                    2827 	.db #0x07	; 7
      002A26 00                    2828 	.db #0x00	; 0
      002A27 1E                    2829 	.db #0x1e	; 30
      002A28 33                    2830 	.db #0x33	; 51	'3'
      002A29 33                    2831 	.db #0x33	; 51	'3'
      002A2A 1E                    2832 	.db #0x1e	; 30
      002A2B 00                    2833 	.db #0x00	; 0
      002A2C 00                    2834 	.db #0x00	; 0
      002A2D 38                    2835 	.db #0x38	; 56	'8'
      002A2E 00                    2836 	.db #0x00	; 0
      002A2F 1E                    2837 	.db #0x1e	; 30
      002A30 33                    2838 	.db #0x33	; 51	'3'
      002A31 33                    2839 	.db #0x33	; 51	'3'
      002A32 1E                    2840 	.db #0x1e	; 30
      002A33 00                    2841 	.db #0x00	; 0
      002A34 1E                    2842 	.db #0x1e	; 30
      002A35 33                    2843 	.db #0x33	; 51	'3'
      002A36 00                    2844 	.db #0x00	; 0
      002A37 1E                    2845 	.db #0x1e	; 30
      002A38 33                    2846 	.db #0x33	; 51	'3'
      002A39 33                    2847 	.db #0x33	; 51	'3'
      002A3A 1E                    2848 	.db #0x1e	; 30
      002A3B 00                    2849 	.db #0x00	; 0
      002A3C 6E                    2850 	.db #0x6e	; 110	'n'
      002A3D 3B                    2851 	.db #0x3b	; 59
      002A3E 00                    2852 	.db #0x00	; 0
      002A3F 1E                    2853 	.db #0x1e	; 30
      002A40 33                    2854 	.db #0x33	; 51	'3'
      002A41 33                    2855 	.db #0x33	; 51	'3'
      002A42 1E                    2856 	.db #0x1e	; 30
      002A43 00                    2857 	.db #0x00	; 0
      002A44 00                    2858 	.db #0x00	; 0
      002A45 33                    2859 	.db #0x33	; 51	'3'
      002A46 00                    2860 	.db #0x00	; 0
      002A47 1E                    2861 	.db #0x1e	; 30
      002A48 33                    2862 	.db #0x33	; 51	'3'
      002A49 33                    2863 	.db #0x33	; 51	'3'
      002A4A 1E                    2864 	.db #0x1e	; 30
      002A4B 00                    2865 	.db #0x00	; 0
      002A4C 18                    2866 	.db #0x18	; 24
      002A4D 18                    2867 	.db #0x18	; 24
      002A4E 00                    2868 	.db #0x00	; 0
      002A4F 7E                    2869 	.db #0x7e	; 126
      002A50 00                    2870 	.db #0x00	; 0
      002A51 18                    2871 	.db #0x18	; 24
      002A52 18                    2872 	.db #0x18	; 24
      002A53 00                    2873 	.db #0x00	; 0
      002A54 00                    2874 	.db #0x00	; 0
      002A55 60                    2875 	.db #0x60	; 96
      002A56 3C                    2876 	.db #0x3c	; 60
      002A57 76                    2877 	.db #0x76	; 118	'v'
      002A58 7E                    2878 	.db #0x7e	; 126
      002A59 6E                    2879 	.db #0x6e	; 110	'n'
      002A5A 3C                    2880 	.db #0x3c	; 60
      002A5B 06                    2881 	.db #0x06	; 6
      002A5C 00                    2882 	.db #0x00	; 0
      002A5D 07                    2883 	.db #0x07	; 7
      002A5E 00                    2884 	.db #0x00	; 0
      002A5F 33                    2885 	.db #0x33	; 51	'3'
      002A60 33                    2886 	.db #0x33	; 51	'3'
      002A61 33                    2887 	.db #0x33	; 51	'3'
      002A62 7E                    2888 	.db #0x7e	; 126
      002A63 00                    2889 	.db #0x00	; 0
      002A64 00                    2890 	.db #0x00	; 0
      002A65 38                    2891 	.db #0x38	; 56	'8'
      002A66 00                    2892 	.db #0x00	; 0
      002A67 33                    2893 	.db #0x33	; 51	'3'
      002A68 33                    2894 	.db #0x33	; 51	'3'
      002A69 33                    2895 	.db #0x33	; 51	'3'
      002A6A 7E                    2896 	.db #0x7e	; 126
      002A6B 00                    2897 	.db #0x00	; 0
      002A6C 1E                    2898 	.db #0x1e	; 30
      002A6D 33                    2899 	.db #0x33	; 51	'3'
      002A6E 00                    2900 	.db #0x00	; 0
      002A6F 33                    2901 	.db #0x33	; 51	'3'
      002A70 33                    2902 	.db #0x33	; 51	'3'
      002A71 33                    2903 	.db #0x33	; 51	'3'
      002A72 7E                    2904 	.db #0x7e	; 126
      002A73 00                    2905 	.db #0x00	; 0
      002A74 00                    2906 	.db #0x00	; 0
      002A75 33                    2907 	.db #0x33	; 51	'3'
      002A76 00                    2908 	.db #0x00	; 0
      002A77 33                    2909 	.db #0x33	; 51	'3'
      002A78 33                    2910 	.db #0x33	; 51	'3'
      002A79 33                    2911 	.db #0x33	; 51	'3'
      002A7A 7E                    2912 	.db #0x7e	; 126
      002A7B 00                    2913 	.db #0x00	; 0
      002A7C 00                    2914 	.db #0x00	; 0
      002A7D 38                    2915 	.db #0x38	; 56	'8'
      002A7E 00                    2916 	.db #0x00	; 0
      002A7F 33                    2917 	.db #0x33	; 51	'3'
      002A80 33                    2918 	.db #0x33	; 51	'3'
      002A81 3E                    2919 	.db #0x3e	; 62
      002A82 30                    2920 	.db #0x30	; 48	'0'
      002A83 1F                    2921 	.db #0x1f	; 31
      002A84 00                    2922 	.db #0x00	; 0
      002A85 00                    2923 	.db #0x00	; 0
      002A86 06                    2924 	.db #0x06	; 6
      002A87 3E                    2925 	.db #0x3e	; 62
      002A88 66                    2926 	.db #0x66	; 102	'f'
      002A89 3E                    2927 	.db #0x3e	; 62
      002A8A 06                    2928 	.db #0x06	; 6
      002A8B 00                    2929 	.db #0x00	; 0
      002A8C 00                    2930 	.db #0x00	; 0
      002A8D 33                    2931 	.db #0x33	; 51	'3'
      002A8E 00                    2932 	.db #0x00	; 0
      002A8F 33                    2933 	.db #0x33	; 51	'3'
      002A90 33                    2934 	.db #0x33	; 51	'3'
      002A91 3E                    2935 	.db #0x3e	; 62
      002A92 30                    2936 	.db #0x30	; 48	'0'
      002A93 1F                    2937 	.db #0x1f	; 31
      002A94                       2938 __xinit__msg:
      002A94 6B 22 80              2939 	.byte ___str_0, (___str_0 >> 8),#0x80
                                   2940 	.area CABS    (ABS,CODE)
