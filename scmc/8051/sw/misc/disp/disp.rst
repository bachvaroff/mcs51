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
                                    376 ;	disp.c:44: __idata const uint8_t dcol[8] = {
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
      00200E 02 21 55         [24]  401 	ljmp	_main
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
                                    442 ;	disp.c:63: void init_gpo(void) {
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
                                    455 ;	disp.c:64: P1_7 = 0;
                                    456 ;	assignBit
      00209B C2 97            [12]  457 	clr	_P1_7
                                    458 ;	disp.c:66: P2 = GPO_BASE_H;
      00209D 75 A0 F0         [24]  459 	mov	_P2,#0xf0
                                    460 ;	disp.c:68: CLEAR_GPO;
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
                                    477 ;	disp.c:70: return;
                                    478 ;	disp.c:71: }
      0020B8 22               [24]  479 	ret
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'clear_gpo'
                                    482 ;------------------------------------------------------------
                                    483 ;	disp.c:73: void clear_gpo(void) {
                                    484 ;	-----------------------------------------
                                    485 ;	 function clear_gpo
                                    486 ;	-----------------------------------------
      0020B9                        487 _clear_gpo:
                                    488 ;	disp.c:74: CLEAR_GPO;
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
                                    505 ;	disp.c:76: return;
                                    506 ;	disp.c:77: }
      0020D1 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'init_intr'
                                    510 ;------------------------------------------------------------
                                    511 ;	disp.c:79: void init_intr(void) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function init_intr
                                    514 ;	-----------------------------------------
      0020D2                        515 _init_intr:
                                    516 ;	disp.c:80: DIS_TR0;
                                    517 ;	assignBit
      0020D2 C2 8C            [12]  518 	clr	_TR0
                                    519 ;	disp.c:81: ET0 = 1;
                                    520 ;	assignBit
      0020D4 D2 A9            [12]  521 	setb	_ET0
                                    522 ;	disp.c:82: EA  = 1;
                                    523 ;	assignBit
      0020D6 D2 AF            [12]  524 	setb	_EA
                                    525 ;	disp.c:84: return;
                                    526 ;	disp.c:85: }
      0020D8 22               [24]  527 	ret
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'init_timer0'
                                    530 ;------------------------------------------------------------
                                    531 ;	disp.c:87: void init_timer0(void) {
                                    532 ;	-----------------------------------------
                                    533 ;	 function init_timer0
                                    534 ;	-----------------------------------------
      0020D9                        535 _init_timer0:
                                    536 ;	disp.c:88: DIS_TR0;
                                    537 ;	assignBit
      0020D9 C2 8C            [12]  538 	clr	_TR0
                                    539 ;	disp.c:89: TMOD = 0x01;
      0020DB 75 89 01         [24]  540 	mov	_TMOD,#0x01
                                    541 ;	disp.c:90: TH0 = 0xf8;
      0020DE 75 8C F8         [24]  542 	mov	_TH0,#0xf8
                                    543 ;	disp.c:91: TL0 = 0x00;
      0020E1 75 8A 00         [24]  544 	mov	_TL0,#0x00
                                    545 ;	disp.c:93: return;
                                    546 ;	disp.c:94: }
      0020E4 22               [24]  547 	ret
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'init_disp'
                                    550 ;------------------------------------------------------------
                                    551 ;	disp.c:96: void init_disp(void) {
                                    552 ;	-----------------------------------------
                                    553 ;	 function init_disp
                                    554 ;	-----------------------------------------
      0020E5                        555 _init_disp:
                                    556 ;	disp.c:97: gpo[DISP_COL] = 0u;
      0020E5 78 05            [12]  557 	mov	r0,#(_gpo + 0x0005)
      0020E7 E4               [12]  558 	clr	a
      0020E8 F2               [24]  559 	movx	@r0,a
                                    560 ;	disp.c:98: gpo[DISP_DATA] = 0u;
      0020E9 78 04            [12]  561 	mov	r0,#(_gpo + 0x0004)
      0020EB F2               [24]  562 	movx	@r0,a
                                    563 ;	disp.c:100: OE = 0x0fu; /* 00_001111 */
      0020EC 78 22            [12]  564 	mov	r0,#_OE
      0020EE 76 0F            [12]  565 	mov	@r0,#0x0f
                                    566 ;	disp.c:101: gpo[GPO_OE] = OE; /* 00_001111 */
      0020F0 78 06            [12]  567 	mov	r0,#(_gpo + 0x0006)
      0020F2 74 0F            [12]  568 	mov	a,#0x0f
      0020F4 F2               [24]  569 	movx	@r0,a
                                    570 ;	disp.c:103: for (column = 0u; column < 8u; column++)
      0020F5 78 21            [12]  571 	mov	r0,#_column
      0020F7 76 00            [12]  572 	mov	@r0,#0x00
      0020F9                        573 00103$:
      0020F9 78 21            [12]  574 	mov	r0,#_column
      0020FB B6 08 00         [24]  575 	cjne	@r0,#0x08,00115$
      0020FE                        576 00115$:
      0020FE 50 11            [24]  577 	jnc	00101$
                                    578 ;	disp.c:104: ddata[column] = 0u;
      002100 78 21            [12]  579 	mov	r0,#_column
      002102 E6               [12]  580 	mov	a,@r0
      002103 24 19            [12]  581 	add	a,#_ddata
      002105 F8               [12]  582 	mov	r0,a
      002106 76 00            [12]  583 	mov	@r0,#0x00
                                    584 ;	disp.c:103: for (column = 0u; column < 8u; column++)
      002108 78 21            [12]  585 	mov	r0,#_column
      00210A E6               [12]  586 	mov	a,@r0
      00210B 78 21            [12]  587 	mov	r0,#_column
      00210D 04               [12]  588 	inc	a
      00210E F6               [12]  589 	mov	@r0,a
      00210F 80 E8            [24]  590 	sjmp	00103$
      002111                        591 00101$:
                                    592 ;	disp.c:106: column = 0u;
      002111 78 21            [12]  593 	mov	r0,#_column
      002113 76 00            [12]  594 	mov	@r0,#0x00
                                    595 ;	disp.c:108: return;
                                    596 ;	disp.c:109: }
      002115 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'timer0_intr'
                                    600 ;------------------------------------------------------------
                                    601 ;t                         Allocated to registers r7 
                                    602 ;------------------------------------------------------------
                                    603 ;	disp.c:111: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
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
                                    619 ;	disp.c:114: t = column & 7u;
      00211D 78 21            [12]  620 	mov	r0,#_column
      00211F 86 0F            [24]  621 	mov	ar7,@r0
      002121 53 0F 07         [24]  622 	anl	ar7,#0x07
                                    623 ;	disp.c:115: gpo[DISP_COL] = gpo[DISP_DATA] = 0u;
      002124 78 04            [12]  624 	mov	r0,#(_gpo + 0x0004)
      002126 E4               [12]  625 	clr	a
      002127 F2               [24]  626 	movx	@r0,a
      002128 78 05            [12]  627 	mov	r0,#(_gpo + 0x0005)
      00212A F2               [24]  628 	movx	@r0,a
                                    629 ;	disp.c:116: gpo[DISP_COL] = dcol[t];
      00212B EF               [12]  630 	mov	a,r7
      00212C 24 11            [12]  631 	add	a,#_dcol
      00212E F9               [12]  632 	mov	r1,a
      00212F 87 0E            [24]  633 	mov	ar6,@r1
      002131 78 05            [12]  634 	mov	r0,#(_gpo + 0x0005)
      002133 EE               [12]  635 	mov	a,r6
      002134 F2               [24]  636 	movx	@r0,a
                                    637 ;	disp.c:117: gpo[DISP_DATA] = ddata[t];
      002135 EF               [12]  638 	mov	a,r7
      002136 24 19            [12]  639 	add	a,#_ddata
      002138 F9               [12]  640 	mov	r1,a
      002139 87 0F            [24]  641 	mov	ar7,@r1
      00213B 78 04            [12]  642 	mov	r0,#(_gpo + 0x0004)
      00213D EF               [12]  643 	mov	a,r7
      00213E F2               [24]  644 	movx	@r0,a
                                    645 ;	disp.c:118: column++;
      00213F 78 21            [12]  646 	mov	r0,#_column
      002141 E6               [12]  647 	mov	a,@r0
      002142 78 21            [12]  648 	mov	r0,#_column
      002144 04               [12]  649 	inc	a
      002145 F6               [12]  650 	mov	@r0,a
                                    651 ;	disp.c:120: DIS_TR0;
                                    652 ;	assignBit
      002146 C2 8C            [12]  653 	clr	_TR0
                                    654 ;	disp.c:121: TH0 = 0xf8;
      002148 75 8C F8         [24]  655 	mov	_TH0,#0xf8
                                    656 ;	disp.c:122: TL0 = 0x00;
      00214B 75 8A 00         [24]  657 	mov	_TL0,#0x00
                                    658 ;	disp.c:123: EN_TR0;
                                    659 ;	assignBit
      00214E D2 8C            [12]  660 	setb	_TR0
                                    661 ;	disp.c:125: return;
                                    662 ;	disp.c:126: }
      002150 D0 D0            [24]  663 	pop	psw
      002152 D0 E0            [24]  664 	pop	acc
      002154 32               [24]  665 	reti
                                    666 ;	eliminated unneeded push/pop dpl
                                    667 ;	eliminated unneeded push/pop dph
                                    668 ;	eliminated unneeded push/pop b
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'main'
                                    671 ;------------------------------------------------------------
                                    672 ;symbol                    Allocated to stack - _bp +2
                                    673 ;counter                   Allocated to registers r7 
                                    674 ;i                         Allocated to stack - _bp +3
                                    675 ;j                         Allocated to registers r3 
                                    676 ;i                         Allocated to registers r6 
                                    677 ;j                         Allocated to registers r5 
                                    678 ;sloc0                     Allocated to stack - _bp +1
                                    679 ;------------------------------------------------------------
                                    680 ;	disp.c:155: void main(void) {
                                    681 ;	-----------------------------------------
                                    682 ;	 function main
                                    683 ;	-----------------------------------------
      002155                        684 _main:
                           000007   685 	ar7 = 0x07
                           000006   686 	ar6 = 0x06
                           000005   687 	ar5 = 0x05
                           000004   688 	ar4 = 0x04
                           000003   689 	ar3 = 0x03
                           000002   690 	ar2 = 0x02
                           000001   691 	ar1 = 0x01
                           000000   692 	ar0 = 0x00
      002155 C0 10            [24]  693 	push	_bp
      002157 85 81 10         [24]  694 	mov	_bp,sp
      00215A 05 81            [12]  695 	inc	sp
      00215C 05 81            [12]  696 	inc	sp
      00215E 05 81            [12]  697 	inc	sp
                                    698 ;	disp.c:159: init_gpo();
      002160 12 20 9B         [24]  699 	lcall	_init_gpo
                                    700 ;	disp.c:160: clear_gpo();
      002163 12 20 B9         [24]  701 	lcall	_clear_gpo
                                    702 ;	disp.c:161: init_disp();	
      002166 12 20 E5         [24]  703 	lcall	_init_disp
                                    704 ;	disp.c:162: init_timer0();
      002169 12 20 D9         [24]  705 	lcall	_init_timer0
                                    706 ;	disp.c:163: init_intr();
      00216C 12 20 D2         [24]  707 	lcall	_init_intr
                                    708 ;	disp.c:164: EN_TR0;
                                    709 ;	assignBit
      00216F D2 8C            [12]  710 	setb	_TR0
                                    711 ;	disp.c:166: for (counter = 0u, i = 0u; ; counter = (counter + 1u) & 0x07u) {
      002171 7F 00            [12]  712 	mov	r7,#0x00
      002173 E5 10            [12]  713 	mov	a,_bp
      002175 24 03            [12]  714 	add	a,#0x03
      002177 F8               [12]  715 	mov	r0,a
      002178 76 00            [12]  716 	mov	@r0,#0x00
      00217A                        717 00120$:
                                    718 ;	disp.c:167: if (!counter) {
      00217A EF               [12]  719 	mov	a,r7
      00217B 70 4E            [24]  720 	jnz	00107$
                                    721 ;	disp.c:168: symbol = msg[i];
      00217D C0 07            [24]  722 	push	ar7
      00217F 90 38 00         [24]  723 	mov	dptr,#_msg
      002182 E0               [24]  724 	movx	a,@dptr
      002183 FB               [12]  725 	mov	r3,a
      002184 A3               [24]  726 	inc	dptr
      002185 E0               [24]  727 	movx	a,@dptr
      002186 FC               [12]  728 	mov	r4,a
      002187 A3               [24]  729 	inc	dptr
      002188 E0               [24]  730 	movx	a,@dptr
      002189 FD               [12]  731 	mov	r5,a
      00218A E5 10            [12]  732 	mov	a,_bp
      00218C 24 03            [12]  733 	add	a,#0x03
      00218E F8               [12]  734 	mov	r0,a
      00218F E6               [12]  735 	mov	a,@r0
      002190 2B               [12]  736 	add	a,r3
      002191 FA               [12]  737 	mov	r2,a
      002192 E4               [12]  738 	clr	a
      002193 3C               [12]  739 	addc	a,r4
      002194 FE               [12]  740 	mov	r6,a
      002195 8D 07            [24]  741 	mov	ar7,r5
      002197 8A 82            [24]  742 	mov	dpl,r2
      002199 8E 83            [24]  743 	mov	dph,r6
      00219B 8F F0            [24]  744 	mov	b,r7
      00219D 12 22 4E         [24]  745 	lcall	__gptrget
      0021A0 FA               [12]  746 	mov	r2,a
      0021A1 A8 10            [24]  747 	mov	r0,_bp
      0021A3 08               [12]  748 	inc	r0
      0021A4 A6 02            [24]  749 	mov	@r0,ar2
                                    750 ;	disp.c:169: if (!symbol) {
      0021A6 D0 07            [24]  751 	pop	ar7
      0021A8 EA               [12]  752 	mov	a,r2
      0021A9 70 14            [24]  753 	jnz	00105$
                                    754 ;	disp.c:170: i = 0u;
      0021AB E5 10            [12]  755 	mov	a,_bp
      0021AD 24 03            [12]  756 	add	a,#0x03
      0021AF F8               [12]  757 	mov	r0,a
      0021B0 76 00            [12]  758 	mov	@r0,#0x00
                                    759 ;	disp.c:171: symbol = msg[i];
      0021B2 8B 82            [24]  760 	mov	dpl,r3
      0021B4 8C 83            [24]  761 	mov	dph,r4
      0021B6 8D F0            [24]  762 	mov	b,r5
      0021B8 A8 10            [24]  763 	mov	r0,_bp
      0021BA 08               [12]  764 	inc	r0
      0021BB 12 22 4E         [24]  765 	lcall	__gptrget
      0021BE F6               [12]  766 	mov	@r0,a
      0021BF                        767 00105$:
                                    768 ;	disp.c:173: i++;
      0021BF E5 10            [12]  769 	mov	a,_bp
      0021C1 24 03            [12]  770 	add	a,#0x03
      0021C3 F8               [12]  771 	mov	r0,a
      0021C4 06               [12]  772 	inc	@r0
                                    773 ;	disp.c:174: OE = 0x8fu;
      0021C5 78 22            [12]  774 	mov	r0,#_OE
      0021C7 76 8F            [12]  775 	mov	@r0,#0x8f
      0021C9 80 04            [24]  776 	sjmp	00108$
      0021CB                        777 00107$:
                                    778 ;	disp.c:175: } else OE = 0x0fu;
      0021CB 78 22            [12]  779 	mov	r0,#_OE
      0021CD 76 0F            [12]  780 	mov	@r0,#0x0f
      0021CF                        781 00108$:
                                    782 ;	disp.c:176: gpo[GPO_OE] = OE;
      0021CF 78 06            [12]  783 	mov	r0,#(_gpo + 0x0006)
      0021D1 79 22            [12]  784 	mov	r1,#_OE
      0021D3 E7               [12]  785 	mov	a,@r1
      0021D4 F2               [24]  786 	movx	@r0,a
                                    787 ;	disp.c:132: do {
      0021D5 7E 00            [12]  788 	mov	r6,#0x00
                                    789 ;	disp.c:134: do {
      0021D7                        790 00126$:
      0021D7 7D 00            [12]  791 	mov	r5,#0x00
      0021D9                        792 00111$:
                                    793 ;	disp.c:146: __endasm;
      0021D9 00               [12]  794 	nop
      0021DA 00               [12]  795 	nop
      0021DB 00               [12]  796 	nop
      0021DC 00               [12]  797 	nop
                                    798 ;	disp.c:147: } while ((++j) ^ 0x80u);
      0021DD 0D               [12]  799 	inc	r5
      0021DE 8D 03            [24]  800 	mov	ar3,r5
      0021E0 7C 00            [12]  801 	mov	r4,#0x00
      0021E2 74 80            [12]  802 	mov	a,#0x80
      0021E4 6B               [12]  803 	xrl	a,r3
      0021E5 70 F2            [24]  804 	jnz	00111$
      0021E7 EC               [12]  805 	mov	a,r4
      0021E8 70 EF            [24]  806 	jnz	00111$
                                    807 ;	disp.c:148: } while ((++i) ^ 0x80u);
      0021EA 0E               [12]  808 	inc	r6
      0021EB 8E 04            [24]  809 	mov	ar4,r6
      0021ED 7D 00            [12]  810 	mov	r5,#0x00
      0021EF 74 80            [12]  811 	mov	a,#0x80
      0021F1 6C               [12]  812 	xrl	a,r4
      0021F2 70 E3            [24]  813 	jnz	00126$
      0021F4 ED               [12]  814 	mov	a,r5
      0021F5 70 E0            [24]  815 	jnz	00126$
                                    816 ;	disp.c:180: for (j = 0u; j < 8u; j++)
      0021F7 A8 10            [24]  817 	mov	r0,_bp
      0021F9 08               [12]  818 	inc	r0
      0021FA E6               [12]  819 	mov	a,@r0
      0021FB 75 F0 08         [24]  820 	mov	b,#0x08
      0021FE A4               [48]  821 	mul	ab
      0021FF 24 00            [12]  822 	add	a,#_font8x8
      002201 FD               [12]  823 	mov	r5,a
      002202 74 30            [12]  824 	mov	a,#(_font8x8 >> 8)
      002204 35 F0            [12]  825 	addc	a,b
      002206 FE               [12]  826 	mov	r6,a
      002207 74 07            [12]  827 	mov	a,#0x07
      002209 C3               [12]  828 	clr	c
      00220A 9F               [12]  829 	subb	a,r7
      00220B FC               [12]  830 	mov	r4,a
      00220C 7B 00            [12]  831 	mov	r3,#0x00
      00220E                        832 00118$:
                                    833 ;	disp.c:181: ddata[j] = (ddata[j] >> 1u) | ((font8x8[symbol][j] << (7u - counter)) & 0x80u);
      00220E C0 07            [24]  834 	push	ar7
      002210 EB               [12]  835 	mov	a,r3
      002211 24 19            [12]  836 	add	a,#_ddata
      002213 F9               [12]  837 	mov	r1,a
      002214 EB               [12]  838 	mov	a,r3
      002215 24 19            [12]  839 	add	a,#_ddata
      002217 F8               [12]  840 	mov	r0,a
      002218 E6               [12]  841 	mov	a,@r0
      002219 C3               [12]  842 	clr	c
      00221A 13               [12]  843 	rrc	a
      00221B FA               [12]  844 	mov	r2,a
      00221C EB               [12]  845 	mov	a,r3
      00221D 2D               [12]  846 	add	a,r5
      00221E F5 82            [12]  847 	mov	dpl,a
      002220 E4               [12]  848 	clr	a
      002221 3E               [12]  849 	addc	a,r6
      002222 F5 83            [12]  850 	mov	dph,a
      002224 E0               [24]  851 	movx	a,@dptr
      002225 FF               [12]  852 	mov	r7,a
      002226 8C F0            [24]  853 	mov	b,r4
      002228 05 F0            [12]  854 	inc	b
      00222A EF               [12]  855 	mov	a,r7
      00222B 80 02            [24]  856 	sjmp	00171$
      00222D                        857 00169$:
      00222D 25 E0            [12]  858 	add	a,acc
      00222F                        859 00171$:
      00222F D5 F0 FB         [24]  860 	djnz	b,00169$
      002232 54 80            [12]  861 	anl	a,#0x80
      002234 4A               [12]  862 	orl	a,r2
      002235 F7               [12]  863 	mov	@r1,a
                                    864 ;	disp.c:180: for (j = 0u; j < 8u; j++)
      002236 0B               [12]  865 	inc	r3
      002237 BB 08 00         [24]  866 	cjne	r3,#0x08,00172$
      00223A                        867 00172$:
      00223A D0 07            [24]  868 	pop	ar7
      00223C 40 D0            [24]  869 	jc	00118$
                                    870 ;	disp.c:166: for (counter = 0u, i = 0u; ; counter = (counter + 1u) & 0x07u) {
      00223E EF               [12]  871 	mov	a,r7
      00223F 04               [12]  872 	inc	a
      002240 FE               [12]  873 	mov	r6,a
      002241 74 07            [12]  874 	mov	a,#0x07
      002243 5E               [12]  875 	anl	a,r6
      002244 FF               [12]  876 	mov	r7,a
      002245 02 21 7A         [24]  877 	ljmp	00120$
                                    878 ;	disp.c:186: __endasm;
                                    879 ;	disp.c:187: }
      002248 85 10 81         [24]  880 	mov	sp,_bp
      00224B D0 10            [24]  881 	pop	_bp
      00224D 22               [24]  882 	ret
                                    883 	.area CSEG    (CODE)
                                    884 	.area CONST   (CODE)
                                    885 	.area CONST   (CODE)
      00226E                        886 ___str_0:
      00226E 47 6F 20 66 75 63 6B   887 	.ascii "Go fuck yourselves you sons of bitches! "
             20 79 6F 75 72 73 65
             6C 76 65 73 20 79 6F
             75 20 73 6F 6E 73 20
             6F 66 20 62 69 74 63
             68 65 73 21 20
      002296 00                     888 	.db 0x00
                                    889 	.area CSEG    (CODE)
                                    890 	.area XINIT   (CODE)
      002297                        891 __xinit__font8x8:
      002297 00                     892 	.db #0x00	; 0
      002298 00                     893 	.db #0x00	; 0
      002299 00                     894 	.db #0x00	; 0
      00229A 00                     895 	.db #0x00	; 0
      00229B 00                     896 	.db #0x00	; 0
      00229C 00                     897 	.db #0x00	; 0
      00229D 00                     898 	.db #0x00	; 0
      00229E 00                     899 	.db #0x00	; 0
      00229F 00                     900 	.db #0x00	; 0
      0022A0 00                     901 	.db #0x00	; 0
      0022A1 00                     902 	.db #0x00	; 0
      0022A2 00                     903 	.db #0x00	; 0
      0022A3 00                     904 	.db #0x00	; 0
      0022A4 00                     905 	.db #0x00	; 0
      0022A5 00                     906 	.db #0x00	; 0
      0022A6 00                     907 	.db #0x00	; 0
      0022A7 00                     908 	.db #0x00	; 0
      0022A8 00                     909 	.db #0x00	; 0
      0022A9 00                     910 	.db #0x00	; 0
      0022AA 00                     911 	.db #0x00	; 0
      0022AB 00                     912 	.db #0x00	; 0
      0022AC 00                     913 	.db #0x00	; 0
      0022AD 00                     914 	.db #0x00	; 0
      0022AE 00                     915 	.db #0x00	; 0
      0022AF 00                     916 	.db #0x00	; 0
      0022B0 00                     917 	.db #0x00	; 0
      0022B1 00                     918 	.db #0x00	; 0
      0022B2 00                     919 	.db #0x00	; 0
      0022B3 00                     920 	.db #0x00	; 0
      0022B4 00                     921 	.db #0x00	; 0
      0022B5 00                     922 	.db #0x00	; 0
      0022B6 00                     923 	.db #0x00	; 0
      0022B7 00                     924 	.db #0x00	; 0
      0022B8 00                     925 	.db #0x00	; 0
      0022B9 00                     926 	.db #0x00	; 0
      0022BA 00                     927 	.db #0x00	; 0
      0022BB 00                     928 	.db #0x00	; 0
      0022BC 00                     929 	.db #0x00	; 0
      0022BD 00                     930 	.db #0x00	; 0
      0022BE 00                     931 	.db #0x00	; 0
      0022BF 00                     932 	.db #0x00	; 0
      0022C0 00                     933 	.db #0x00	; 0
      0022C1 00                     934 	.db #0x00	; 0
      0022C2 00                     935 	.db #0x00	; 0
      0022C3 00                     936 	.db #0x00	; 0
      0022C4 00                     937 	.db #0x00	; 0
      0022C5 00                     938 	.db #0x00	; 0
      0022C6 00                     939 	.db #0x00	; 0
      0022C7 00                     940 	.db #0x00	; 0
      0022C8 00                     941 	.db #0x00	; 0
      0022C9 00                     942 	.db #0x00	; 0
      0022CA 00                     943 	.db #0x00	; 0
      0022CB 00                     944 	.db #0x00	; 0
      0022CC 00                     945 	.db #0x00	; 0
      0022CD 00                     946 	.db #0x00	; 0
      0022CE 00                     947 	.db #0x00	; 0
      0022CF 00                     948 	.db #0x00	; 0
      0022D0 00                     949 	.db #0x00	; 0
      0022D1 00                     950 	.db #0x00	; 0
      0022D2 00                     951 	.db #0x00	; 0
      0022D3 00                     952 	.db #0x00	; 0
      0022D4 00                     953 	.db #0x00	; 0
      0022D5 00                     954 	.db #0x00	; 0
      0022D6 00                     955 	.db #0x00	; 0
      0022D7 00                     956 	.db #0x00	; 0
      0022D8 00                     957 	.db #0x00	; 0
      0022D9 00                     958 	.db #0x00	; 0
      0022DA 00                     959 	.db #0x00	; 0
      0022DB 00                     960 	.db #0x00	; 0
      0022DC 00                     961 	.db #0x00	; 0
      0022DD 00                     962 	.db #0x00	; 0
      0022DE 00                     963 	.db #0x00	; 0
      0022DF 00                     964 	.db #0x00	; 0
      0022E0 00                     965 	.db #0x00	; 0
      0022E1 00                     966 	.db #0x00	; 0
      0022E2 00                     967 	.db #0x00	; 0
      0022E3 00                     968 	.db #0x00	; 0
      0022E4 00                     969 	.db #0x00	; 0
      0022E5 00                     970 	.db #0x00	; 0
      0022E6 00                     971 	.db #0x00	; 0
      0022E7 00                     972 	.db #0x00	; 0
      0022E8 00                     973 	.db #0x00	; 0
      0022E9 00                     974 	.db #0x00	; 0
      0022EA 00                     975 	.db #0x00	; 0
      0022EB 00                     976 	.db #0x00	; 0
      0022EC 00                     977 	.db #0x00	; 0
      0022ED 00                     978 	.db #0x00	; 0
      0022EE 00                     979 	.db #0x00	; 0
      0022EF 00                     980 	.db #0x00	; 0
      0022F0 00                     981 	.db #0x00	; 0
      0022F1 00                     982 	.db #0x00	; 0
      0022F2 00                     983 	.db #0x00	; 0
      0022F3 00                     984 	.db #0x00	; 0
      0022F4 00                     985 	.db #0x00	; 0
      0022F5 00                     986 	.db #0x00	; 0
      0022F6 00                     987 	.db #0x00	; 0
      0022F7 00                     988 	.db #0x00	; 0
      0022F8 00                     989 	.db #0x00	; 0
      0022F9 00                     990 	.db #0x00	; 0
      0022FA 00                     991 	.db #0x00	; 0
      0022FB 00                     992 	.db #0x00	; 0
      0022FC 00                     993 	.db #0x00	; 0
      0022FD 00                     994 	.db #0x00	; 0
      0022FE 00                     995 	.db #0x00	; 0
      0022FF 00                     996 	.db #0x00	; 0
      002300 00                     997 	.db #0x00	; 0
      002301 00                     998 	.db #0x00	; 0
      002302 00                     999 	.db #0x00	; 0
      002303 00                    1000 	.db #0x00	; 0
      002304 00                    1001 	.db #0x00	; 0
      002305 00                    1002 	.db #0x00	; 0
      002306 00                    1003 	.db #0x00	; 0
      002307 00                    1004 	.db #0x00	; 0
      002308 00                    1005 	.db #0x00	; 0
      002309 00                    1006 	.db #0x00	; 0
      00230A 00                    1007 	.db #0x00	; 0
      00230B 00                    1008 	.db #0x00	; 0
      00230C 00                    1009 	.db #0x00	; 0
      00230D 00                    1010 	.db #0x00	; 0
      00230E 00                    1011 	.db #0x00	; 0
      00230F 00                    1012 	.db #0x00	; 0
      002310 00                    1013 	.db #0x00	; 0
      002311 00                    1014 	.db #0x00	; 0
      002312 00                    1015 	.db #0x00	; 0
      002313 00                    1016 	.db #0x00	; 0
      002314 00                    1017 	.db #0x00	; 0
      002315 00                    1018 	.db #0x00	; 0
      002316 00                    1019 	.db #0x00	; 0
      002317 00                    1020 	.db #0x00	; 0
      002318 00                    1021 	.db #0x00	; 0
      002319 00                    1022 	.db #0x00	; 0
      00231A 00                    1023 	.db #0x00	; 0
      00231B 00                    1024 	.db #0x00	; 0
      00231C 00                    1025 	.db #0x00	; 0
      00231D 00                    1026 	.db #0x00	; 0
      00231E 00                    1027 	.db #0x00	; 0
      00231F 00                    1028 	.db #0x00	; 0
      002320 00                    1029 	.db #0x00	; 0
      002321 00                    1030 	.db #0x00	; 0
      002322 00                    1031 	.db #0x00	; 0
      002323 00                    1032 	.db #0x00	; 0
      002324 00                    1033 	.db #0x00	; 0
      002325 00                    1034 	.db #0x00	; 0
      002326 00                    1035 	.db #0x00	; 0
      002327 00                    1036 	.db #0x00	; 0
      002328 00                    1037 	.db #0x00	; 0
      002329 00                    1038 	.db #0x00	; 0
      00232A 00                    1039 	.db #0x00	; 0
      00232B 00                    1040 	.db #0x00	; 0
      00232C 00                    1041 	.db #0x00	; 0
      00232D 00                    1042 	.db #0x00	; 0
      00232E 00                    1043 	.db #0x00	; 0
      00232F 00                    1044 	.db #0x00	; 0
      002330 00                    1045 	.db #0x00	; 0
      002331 00                    1046 	.db #0x00	; 0
      002332 00                    1047 	.db #0x00	; 0
      002333 00                    1048 	.db #0x00	; 0
      002334 00                    1049 	.db #0x00	; 0
      002335 00                    1050 	.db #0x00	; 0
      002336 00                    1051 	.db #0x00	; 0
      002337 00                    1052 	.db #0x00	; 0
      002338 00                    1053 	.db #0x00	; 0
      002339 00                    1054 	.db #0x00	; 0
      00233A 00                    1055 	.db #0x00	; 0
      00233B 00                    1056 	.db #0x00	; 0
      00233C 00                    1057 	.db #0x00	; 0
      00233D 00                    1058 	.db #0x00	; 0
      00233E 00                    1059 	.db #0x00	; 0
      00233F 00                    1060 	.db #0x00	; 0
      002340 00                    1061 	.db #0x00	; 0
      002341 00                    1062 	.db #0x00	; 0
      002342 00                    1063 	.db #0x00	; 0
      002343 00                    1064 	.db #0x00	; 0
      002344 00                    1065 	.db #0x00	; 0
      002345 00                    1066 	.db #0x00	; 0
      002346 00                    1067 	.db #0x00	; 0
      002347 00                    1068 	.db #0x00	; 0
      002348 00                    1069 	.db #0x00	; 0
      002349 00                    1070 	.db #0x00	; 0
      00234A 00                    1071 	.db #0x00	; 0
      00234B 00                    1072 	.db #0x00	; 0
      00234C 00                    1073 	.db #0x00	; 0
      00234D 00                    1074 	.db #0x00	; 0
      00234E 00                    1075 	.db #0x00	; 0
      00234F 00                    1076 	.db #0x00	; 0
      002350 00                    1077 	.db #0x00	; 0
      002351 00                    1078 	.db #0x00	; 0
      002352 00                    1079 	.db #0x00	; 0
      002353 00                    1080 	.db #0x00	; 0
      002354 00                    1081 	.db #0x00	; 0
      002355 00                    1082 	.db #0x00	; 0
      002356 00                    1083 	.db #0x00	; 0
      002357 00                    1084 	.db #0x00	; 0
      002358 00                    1085 	.db #0x00	; 0
      002359 00                    1086 	.db #0x00	; 0
      00235A 00                    1087 	.db #0x00	; 0
      00235B 00                    1088 	.db #0x00	; 0
      00235C 00                    1089 	.db #0x00	; 0
      00235D 00                    1090 	.db #0x00	; 0
      00235E 00                    1091 	.db #0x00	; 0
      00235F 00                    1092 	.db #0x00	; 0
      002360 00                    1093 	.db #0x00	; 0
      002361 00                    1094 	.db #0x00	; 0
      002362 00                    1095 	.db #0x00	; 0
      002363 00                    1096 	.db #0x00	; 0
      002364 00                    1097 	.db #0x00	; 0
      002365 00                    1098 	.db #0x00	; 0
      002366 00                    1099 	.db #0x00	; 0
      002367 00                    1100 	.db #0x00	; 0
      002368 00                    1101 	.db #0x00	; 0
      002369 00                    1102 	.db #0x00	; 0
      00236A 00                    1103 	.db #0x00	; 0
      00236B 00                    1104 	.db #0x00	; 0
      00236C 00                    1105 	.db #0x00	; 0
      00236D 00                    1106 	.db #0x00	; 0
      00236E 00                    1107 	.db #0x00	; 0
      00236F 00                    1108 	.db #0x00	; 0
      002370 00                    1109 	.db #0x00	; 0
      002371 00                    1110 	.db #0x00	; 0
      002372 00                    1111 	.db #0x00	; 0
      002373 00                    1112 	.db #0x00	; 0
      002374 00                    1113 	.db #0x00	; 0
      002375 00                    1114 	.db #0x00	; 0
      002376 00                    1115 	.db #0x00	; 0
      002377 00                    1116 	.db #0x00	; 0
      002378 00                    1117 	.db #0x00	; 0
      002379 00                    1118 	.db #0x00	; 0
      00237A 00                    1119 	.db #0x00	; 0
      00237B 00                    1120 	.db #0x00	; 0
      00237C 00                    1121 	.db #0x00	; 0
      00237D 00                    1122 	.db #0x00	; 0
      00237E 00                    1123 	.db #0x00	; 0
      00237F 00                    1124 	.db #0x00	; 0
      002380 00                    1125 	.db #0x00	; 0
      002381 00                    1126 	.db #0x00	; 0
      002382 00                    1127 	.db #0x00	; 0
      002383 00                    1128 	.db #0x00	; 0
      002384 00                    1129 	.db #0x00	; 0
      002385 00                    1130 	.db #0x00	; 0
      002386 00                    1131 	.db #0x00	; 0
      002387 00                    1132 	.db #0x00	; 0
      002388 00                    1133 	.db #0x00	; 0
      002389 00                    1134 	.db #0x00	; 0
      00238A 00                    1135 	.db #0x00	; 0
      00238B 00                    1136 	.db #0x00	; 0
      00238C 00                    1137 	.db #0x00	; 0
      00238D 00                    1138 	.db #0x00	; 0
      00238E 00                    1139 	.db #0x00	; 0
      00238F 00                    1140 	.db #0x00	; 0
      002390 00                    1141 	.db #0x00	; 0
      002391 00                    1142 	.db #0x00	; 0
      002392 00                    1143 	.db #0x00	; 0
      002393 00                    1144 	.db #0x00	; 0
      002394 00                    1145 	.db #0x00	; 0
      002395 00                    1146 	.db #0x00	; 0
      002396 00                    1147 	.db #0x00	; 0
      002397 00                    1148 	.db #0x00	; 0
      002398 00                    1149 	.db #0x00	; 0
      002399 00                    1150 	.db #0x00	; 0
      00239A 00                    1151 	.db #0x00	; 0
      00239B 00                    1152 	.db #0x00	; 0
      00239C 00                    1153 	.db #0x00	; 0
      00239D 00                    1154 	.db #0x00	; 0
      00239E 00                    1155 	.db #0x00	; 0
      00239F 18                    1156 	.db #0x18	; 24
      0023A0 3C                    1157 	.db #0x3c	; 60
      0023A1 3C                    1158 	.db #0x3c	; 60
      0023A2 18                    1159 	.db #0x18	; 24
      0023A3 18                    1160 	.db #0x18	; 24
      0023A4 00                    1161 	.db #0x00	; 0
      0023A5 18                    1162 	.db #0x18	; 24
      0023A6 00                    1163 	.db #0x00	; 0
      0023A7 36                    1164 	.db #0x36	; 54	'6'
      0023A8 36                    1165 	.db #0x36	; 54	'6'
      0023A9 00                    1166 	.db #0x00	; 0
      0023AA 00                    1167 	.db #0x00	; 0
      0023AB 00                    1168 	.db #0x00	; 0
      0023AC 00                    1169 	.db #0x00	; 0
      0023AD 00                    1170 	.db #0x00	; 0
      0023AE 00                    1171 	.db #0x00	; 0
      0023AF 36                    1172 	.db #0x36	; 54	'6'
      0023B0 36                    1173 	.db #0x36	; 54	'6'
      0023B1 7F                    1174 	.db #0x7f	; 127
      0023B2 36                    1175 	.db #0x36	; 54	'6'
      0023B3 7F                    1176 	.db #0x7f	; 127
      0023B4 36                    1177 	.db #0x36	; 54	'6'
      0023B5 36                    1178 	.db #0x36	; 54	'6'
      0023B6 00                    1179 	.db #0x00	; 0
      0023B7 0C                    1180 	.db #0x0c	; 12
      0023B8 3E                    1181 	.db #0x3e	; 62
      0023B9 03                    1182 	.db #0x03	; 3
      0023BA 1E                    1183 	.db #0x1e	; 30
      0023BB 30                    1184 	.db #0x30	; 48	'0'
      0023BC 1F                    1185 	.db #0x1f	; 31
      0023BD 0C                    1186 	.db #0x0c	; 12
      0023BE 00                    1187 	.db #0x00	; 0
      0023BF 00                    1188 	.db #0x00	; 0
      0023C0 63                    1189 	.db #0x63	; 99	'c'
      0023C1 33                    1190 	.db #0x33	; 51	'3'
      0023C2 18                    1191 	.db #0x18	; 24
      0023C3 0C                    1192 	.db #0x0c	; 12
      0023C4 66                    1193 	.db #0x66	; 102	'f'
      0023C5 63                    1194 	.db #0x63	; 99	'c'
      0023C6 00                    1195 	.db #0x00	; 0
      0023C7 1C                    1196 	.db #0x1c	; 28
      0023C8 36                    1197 	.db #0x36	; 54	'6'
      0023C9 1C                    1198 	.db #0x1c	; 28
      0023CA 6E                    1199 	.db #0x6e	; 110	'n'
      0023CB 3B                    1200 	.db #0x3b	; 59
      0023CC 33                    1201 	.db #0x33	; 51	'3'
      0023CD 6E                    1202 	.db #0x6e	; 110	'n'
      0023CE 00                    1203 	.db #0x00	; 0
      0023CF 06                    1204 	.db #0x06	; 6
      0023D0 06                    1205 	.db #0x06	; 6
      0023D1 03                    1206 	.db #0x03	; 3
      0023D2 00                    1207 	.db #0x00	; 0
      0023D3 00                    1208 	.db #0x00	; 0
      0023D4 00                    1209 	.db #0x00	; 0
      0023D5 00                    1210 	.db #0x00	; 0
      0023D6 00                    1211 	.db #0x00	; 0
      0023D7 18                    1212 	.db #0x18	; 24
      0023D8 0C                    1213 	.db #0x0c	; 12
      0023D9 06                    1214 	.db #0x06	; 6
      0023DA 06                    1215 	.db #0x06	; 6
      0023DB 06                    1216 	.db #0x06	; 6
      0023DC 0C                    1217 	.db #0x0c	; 12
      0023DD 18                    1218 	.db #0x18	; 24
      0023DE 00                    1219 	.db #0x00	; 0
      0023DF 06                    1220 	.db #0x06	; 6
      0023E0 0C                    1221 	.db #0x0c	; 12
      0023E1 18                    1222 	.db #0x18	; 24
      0023E2 18                    1223 	.db #0x18	; 24
      0023E3 18                    1224 	.db #0x18	; 24
      0023E4 0C                    1225 	.db #0x0c	; 12
      0023E5 06                    1226 	.db #0x06	; 6
      0023E6 00                    1227 	.db #0x00	; 0
      0023E7 00                    1228 	.db #0x00	; 0
      0023E8 66                    1229 	.db #0x66	; 102	'f'
      0023E9 3C                    1230 	.db #0x3c	; 60
      0023EA FF                    1231 	.db #0xff	; 255
      0023EB 3C                    1232 	.db #0x3c	; 60
      0023EC 66                    1233 	.db #0x66	; 102	'f'
      0023ED 00                    1234 	.db #0x00	; 0
      0023EE 00                    1235 	.db #0x00	; 0
      0023EF 00                    1236 	.db #0x00	; 0
      0023F0 0C                    1237 	.db #0x0c	; 12
      0023F1 0C                    1238 	.db #0x0c	; 12
      0023F2 3F                    1239 	.db #0x3f	; 63
      0023F3 0C                    1240 	.db #0x0c	; 12
      0023F4 0C                    1241 	.db #0x0c	; 12
      0023F5 00                    1242 	.db #0x00	; 0
      0023F6 00                    1243 	.db #0x00	; 0
      0023F7 00                    1244 	.db #0x00	; 0
      0023F8 00                    1245 	.db #0x00	; 0
      0023F9 00                    1246 	.db #0x00	; 0
      0023FA 00                    1247 	.db #0x00	; 0
      0023FB 00                    1248 	.db #0x00	; 0
      0023FC 0C                    1249 	.db #0x0c	; 12
      0023FD 0C                    1250 	.db #0x0c	; 12
      0023FE 06                    1251 	.db #0x06	; 6
      0023FF 00                    1252 	.db #0x00	; 0
      002400 00                    1253 	.db #0x00	; 0
      002401 00                    1254 	.db #0x00	; 0
      002402 3F                    1255 	.db #0x3f	; 63
      002403 00                    1256 	.db #0x00	; 0
      002404 00                    1257 	.db #0x00	; 0
      002405 00                    1258 	.db #0x00	; 0
      002406 00                    1259 	.db #0x00	; 0
      002407 00                    1260 	.db #0x00	; 0
      002408 00                    1261 	.db #0x00	; 0
      002409 00                    1262 	.db #0x00	; 0
      00240A 00                    1263 	.db #0x00	; 0
      00240B 00                    1264 	.db #0x00	; 0
      00240C 0C                    1265 	.db #0x0c	; 12
      00240D 0C                    1266 	.db #0x0c	; 12
      00240E 00                    1267 	.db #0x00	; 0
      00240F 60                    1268 	.db #0x60	; 96
      002410 30                    1269 	.db #0x30	; 48	'0'
      002411 18                    1270 	.db #0x18	; 24
      002412 0C                    1271 	.db #0x0c	; 12
      002413 06                    1272 	.db #0x06	; 6
      002414 03                    1273 	.db #0x03	; 3
      002415 01                    1274 	.db #0x01	; 1
      002416 00                    1275 	.db #0x00	; 0
      002417 3E                    1276 	.db #0x3e	; 62
      002418 63                    1277 	.db #0x63	; 99	'c'
      002419 73                    1278 	.db #0x73	; 115	's'
      00241A 7B                    1279 	.db #0x7b	; 123
      00241B 6F                    1280 	.db #0x6f	; 111	'o'
      00241C 67                    1281 	.db #0x67	; 103	'g'
      00241D 3E                    1282 	.db #0x3e	; 62
      00241E 00                    1283 	.db #0x00	; 0
      00241F 0C                    1284 	.db #0x0c	; 12
      002420 0E                    1285 	.db #0x0e	; 14
      002421 0C                    1286 	.db #0x0c	; 12
      002422 0C                    1287 	.db #0x0c	; 12
      002423 0C                    1288 	.db #0x0c	; 12
      002424 0C                    1289 	.db #0x0c	; 12
      002425 3F                    1290 	.db #0x3f	; 63
      002426 00                    1291 	.db #0x00	; 0
      002427 1E                    1292 	.db #0x1e	; 30
      002428 33                    1293 	.db #0x33	; 51	'3'
      002429 30                    1294 	.db #0x30	; 48	'0'
      00242A 1C                    1295 	.db #0x1c	; 28
      00242B 06                    1296 	.db #0x06	; 6
      00242C 33                    1297 	.db #0x33	; 51	'3'
      00242D 3F                    1298 	.db #0x3f	; 63
      00242E 00                    1299 	.db #0x00	; 0
      00242F 1E                    1300 	.db #0x1e	; 30
      002430 33                    1301 	.db #0x33	; 51	'3'
      002431 30                    1302 	.db #0x30	; 48	'0'
      002432 1C                    1303 	.db #0x1c	; 28
      002433 30                    1304 	.db #0x30	; 48	'0'
      002434 33                    1305 	.db #0x33	; 51	'3'
      002435 1E                    1306 	.db #0x1e	; 30
      002436 00                    1307 	.db #0x00	; 0
      002437 38                    1308 	.db #0x38	; 56	'8'
      002438 3C                    1309 	.db #0x3c	; 60
      002439 36                    1310 	.db #0x36	; 54	'6'
      00243A 33                    1311 	.db #0x33	; 51	'3'
      00243B 7F                    1312 	.db #0x7f	; 127
      00243C 30                    1313 	.db #0x30	; 48	'0'
      00243D 78                    1314 	.db #0x78	; 120	'x'
      00243E 00                    1315 	.db #0x00	; 0
      00243F 3F                    1316 	.db #0x3f	; 63
      002440 03                    1317 	.db #0x03	; 3
      002441 1F                    1318 	.db #0x1f	; 31
      002442 30                    1319 	.db #0x30	; 48	'0'
      002443 30                    1320 	.db #0x30	; 48	'0'
      002444 33                    1321 	.db #0x33	; 51	'3'
      002445 1E                    1322 	.db #0x1e	; 30
      002446 00                    1323 	.db #0x00	; 0
      002447 1C                    1324 	.db #0x1c	; 28
      002448 06                    1325 	.db #0x06	; 6
      002449 03                    1326 	.db #0x03	; 3
      00244A 1F                    1327 	.db #0x1f	; 31
      00244B 33                    1328 	.db #0x33	; 51	'3'
      00244C 33                    1329 	.db #0x33	; 51	'3'
      00244D 1E                    1330 	.db #0x1e	; 30
      00244E 00                    1331 	.db #0x00	; 0
      00244F 3F                    1332 	.db #0x3f	; 63
      002450 33                    1333 	.db #0x33	; 51	'3'
      002451 30                    1334 	.db #0x30	; 48	'0'
      002452 18                    1335 	.db #0x18	; 24
      002453 0C                    1336 	.db #0x0c	; 12
      002454 0C                    1337 	.db #0x0c	; 12
      002455 0C                    1338 	.db #0x0c	; 12
      002456 00                    1339 	.db #0x00	; 0
      002457 1E                    1340 	.db #0x1e	; 30
      002458 33                    1341 	.db #0x33	; 51	'3'
      002459 33                    1342 	.db #0x33	; 51	'3'
      00245A 1E                    1343 	.db #0x1e	; 30
      00245B 33                    1344 	.db #0x33	; 51	'3'
      00245C 33                    1345 	.db #0x33	; 51	'3'
      00245D 1E                    1346 	.db #0x1e	; 30
      00245E 00                    1347 	.db #0x00	; 0
      00245F 1E                    1348 	.db #0x1e	; 30
      002460 33                    1349 	.db #0x33	; 51	'3'
      002461 33                    1350 	.db #0x33	; 51	'3'
      002462 3E                    1351 	.db #0x3e	; 62
      002463 30                    1352 	.db #0x30	; 48	'0'
      002464 18                    1353 	.db #0x18	; 24
      002465 0E                    1354 	.db #0x0e	; 14
      002466 00                    1355 	.db #0x00	; 0
      002467 00                    1356 	.db #0x00	; 0
      002468 0C                    1357 	.db #0x0c	; 12
      002469 0C                    1358 	.db #0x0c	; 12
      00246A 00                    1359 	.db #0x00	; 0
      00246B 00                    1360 	.db #0x00	; 0
      00246C 0C                    1361 	.db #0x0c	; 12
      00246D 0C                    1362 	.db #0x0c	; 12
      00246E 00                    1363 	.db #0x00	; 0
      00246F 00                    1364 	.db #0x00	; 0
      002470 0C                    1365 	.db #0x0c	; 12
      002471 0C                    1366 	.db #0x0c	; 12
      002472 00                    1367 	.db #0x00	; 0
      002473 00                    1368 	.db #0x00	; 0
      002474 0C                    1369 	.db #0x0c	; 12
      002475 0C                    1370 	.db #0x0c	; 12
      002476 06                    1371 	.db #0x06	; 6
      002477 18                    1372 	.db #0x18	; 24
      002478 0C                    1373 	.db #0x0c	; 12
      002479 06                    1374 	.db #0x06	; 6
      00247A 03                    1375 	.db #0x03	; 3
      00247B 06                    1376 	.db #0x06	; 6
      00247C 0C                    1377 	.db #0x0c	; 12
      00247D 18                    1378 	.db #0x18	; 24
      00247E 00                    1379 	.db #0x00	; 0
      00247F 00                    1380 	.db #0x00	; 0
      002480 00                    1381 	.db #0x00	; 0
      002481 3F                    1382 	.db #0x3f	; 63
      002482 00                    1383 	.db #0x00	; 0
      002483 00                    1384 	.db #0x00	; 0
      002484 3F                    1385 	.db #0x3f	; 63
      002485 00                    1386 	.db #0x00	; 0
      002486 00                    1387 	.db #0x00	; 0
      002487 06                    1388 	.db #0x06	; 6
      002488 0C                    1389 	.db #0x0c	; 12
      002489 18                    1390 	.db #0x18	; 24
      00248A 30                    1391 	.db #0x30	; 48	'0'
      00248B 18                    1392 	.db #0x18	; 24
      00248C 0C                    1393 	.db #0x0c	; 12
      00248D 06                    1394 	.db #0x06	; 6
      00248E 00                    1395 	.db #0x00	; 0
      00248F 1E                    1396 	.db #0x1e	; 30
      002490 33                    1397 	.db #0x33	; 51	'3'
      002491 30                    1398 	.db #0x30	; 48	'0'
      002492 18                    1399 	.db #0x18	; 24
      002493 0C                    1400 	.db #0x0c	; 12
      002494 00                    1401 	.db #0x00	; 0
      002495 0C                    1402 	.db #0x0c	; 12
      002496 00                    1403 	.db #0x00	; 0
      002497 3E                    1404 	.db #0x3e	; 62
      002498 63                    1405 	.db #0x63	; 99	'c'
      002499 7B                    1406 	.db #0x7b	; 123
      00249A 7B                    1407 	.db #0x7b	; 123
      00249B 7B                    1408 	.db #0x7b	; 123
      00249C 03                    1409 	.db #0x03	; 3
      00249D 1E                    1410 	.db #0x1e	; 30
      00249E 00                    1411 	.db #0x00	; 0
      00249F 0C                    1412 	.db #0x0c	; 12
      0024A0 1E                    1413 	.db #0x1e	; 30
      0024A1 33                    1414 	.db #0x33	; 51	'3'
      0024A2 33                    1415 	.db #0x33	; 51	'3'
      0024A3 3F                    1416 	.db #0x3f	; 63
      0024A4 33                    1417 	.db #0x33	; 51	'3'
      0024A5 33                    1418 	.db #0x33	; 51	'3'
      0024A6 00                    1419 	.db #0x00	; 0
      0024A7 3F                    1420 	.db #0x3f	; 63
      0024A8 66                    1421 	.db #0x66	; 102	'f'
      0024A9 66                    1422 	.db #0x66	; 102	'f'
      0024AA 3E                    1423 	.db #0x3e	; 62
      0024AB 66                    1424 	.db #0x66	; 102	'f'
      0024AC 66                    1425 	.db #0x66	; 102	'f'
      0024AD 3F                    1426 	.db #0x3f	; 63
      0024AE 00                    1427 	.db #0x00	; 0
      0024AF 3C                    1428 	.db #0x3c	; 60
      0024B0 66                    1429 	.db #0x66	; 102	'f'
      0024B1 03                    1430 	.db #0x03	; 3
      0024B2 03                    1431 	.db #0x03	; 3
      0024B3 03                    1432 	.db #0x03	; 3
      0024B4 66                    1433 	.db #0x66	; 102	'f'
      0024B5 3C                    1434 	.db #0x3c	; 60
      0024B6 00                    1435 	.db #0x00	; 0
      0024B7 1F                    1436 	.db #0x1f	; 31
      0024B8 36                    1437 	.db #0x36	; 54	'6'
      0024B9 66                    1438 	.db #0x66	; 102	'f'
      0024BA 66                    1439 	.db #0x66	; 102	'f'
      0024BB 66                    1440 	.db #0x66	; 102	'f'
      0024BC 36                    1441 	.db #0x36	; 54	'6'
      0024BD 1F                    1442 	.db #0x1f	; 31
      0024BE 00                    1443 	.db #0x00	; 0
      0024BF 7F                    1444 	.db #0x7f	; 127
      0024C0 46                    1445 	.db #0x46	; 70	'F'
      0024C1 16                    1446 	.db #0x16	; 22
      0024C2 1E                    1447 	.db #0x1e	; 30
      0024C3 16                    1448 	.db #0x16	; 22
      0024C4 46                    1449 	.db #0x46	; 70	'F'
      0024C5 7F                    1450 	.db #0x7f	; 127
      0024C6 00                    1451 	.db #0x00	; 0
      0024C7 7F                    1452 	.db #0x7f	; 127
      0024C8 46                    1453 	.db #0x46	; 70	'F'
      0024C9 16                    1454 	.db #0x16	; 22
      0024CA 1E                    1455 	.db #0x1e	; 30
      0024CB 16                    1456 	.db #0x16	; 22
      0024CC 06                    1457 	.db #0x06	; 6
      0024CD 0F                    1458 	.db #0x0f	; 15
      0024CE 00                    1459 	.db #0x00	; 0
      0024CF 3C                    1460 	.db #0x3c	; 60
      0024D0 66                    1461 	.db #0x66	; 102	'f'
      0024D1 03                    1462 	.db #0x03	; 3
      0024D2 03                    1463 	.db #0x03	; 3
      0024D3 73                    1464 	.db #0x73	; 115	's'
      0024D4 66                    1465 	.db #0x66	; 102	'f'
      0024D5 7C                    1466 	.db #0x7c	; 124
      0024D6 00                    1467 	.db #0x00	; 0
      0024D7 33                    1468 	.db #0x33	; 51	'3'
      0024D8 33                    1469 	.db #0x33	; 51	'3'
      0024D9 33                    1470 	.db #0x33	; 51	'3'
      0024DA 3F                    1471 	.db #0x3f	; 63
      0024DB 33                    1472 	.db #0x33	; 51	'3'
      0024DC 33                    1473 	.db #0x33	; 51	'3'
      0024DD 33                    1474 	.db #0x33	; 51	'3'
      0024DE 00                    1475 	.db #0x00	; 0
      0024DF 1E                    1476 	.db #0x1e	; 30
      0024E0 0C                    1477 	.db #0x0c	; 12
      0024E1 0C                    1478 	.db #0x0c	; 12
      0024E2 0C                    1479 	.db #0x0c	; 12
      0024E3 0C                    1480 	.db #0x0c	; 12
      0024E4 0C                    1481 	.db #0x0c	; 12
      0024E5 1E                    1482 	.db #0x1e	; 30
      0024E6 00                    1483 	.db #0x00	; 0
      0024E7 78                    1484 	.db #0x78	; 120	'x'
      0024E8 30                    1485 	.db #0x30	; 48	'0'
      0024E9 30                    1486 	.db #0x30	; 48	'0'
      0024EA 30                    1487 	.db #0x30	; 48	'0'
      0024EB 33                    1488 	.db #0x33	; 51	'3'
      0024EC 33                    1489 	.db #0x33	; 51	'3'
      0024ED 1E                    1490 	.db #0x1e	; 30
      0024EE 00                    1491 	.db #0x00	; 0
      0024EF 67                    1492 	.db #0x67	; 103	'g'
      0024F0 66                    1493 	.db #0x66	; 102	'f'
      0024F1 36                    1494 	.db #0x36	; 54	'6'
      0024F2 1E                    1495 	.db #0x1e	; 30
      0024F3 36                    1496 	.db #0x36	; 54	'6'
      0024F4 66                    1497 	.db #0x66	; 102	'f'
      0024F5 67                    1498 	.db #0x67	; 103	'g'
      0024F6 00                    1499 	.db #0x00	; 0
      0024F7 0F                    1500 	.db #0x0f	; 15
      0024F8 06                    1501 	.db #0x06	; 6
      0024F9 06                    1502 	.db #0x06	; 6
      0024FA 06                    1503 	.db #0x06	; 6
      0024FB 46                    1504 	.db #0x46	; 70	'F'
      0024FC 66                    1505 	.db #0x66	; 102	'f'
      0024FD 7F                    1506 	.db #0x7f	; 127
      0024FE 00                    1507 	.db #0x00	; 0
      0024FF 63                    1508 	.db #0x63	; 99	'c'
      002500 77                    1509 	.db #0x77	; 119	'w'
      002501 7F                    1510 	.db #0x7f	; 127
      002502 7F                    1511 	.db #0x7f	; 127
      002503 6B                    1512 	.db #0x6b	; 107	'k'
      002504 63                    1513 	.db #0x63	; 99	'c'
      002505 63                    1514 	.db #0x63	; 99	'c'
      002506 00                    1515 	.db #0x00	; 0
      002507 63                    1516 	.db #0x63	; 99	'c'
      002508 67                    1517 	.db #0x67	; 103	'g'
      002509 6F                    1518 	.db #0x6f	; 111	'o'
      00250A 7B                    1519 	.db #0x7b	; 123
      00250B 73                    1520 	.db #0x73	; 115	's'
      00250C 63                    1521 	.db #0x63	; 99	'c'
      00250D 63                    1522 	.db #0x63	; 99	'c'
      00250E 00                    1523 	.db #0x00	; 0
      00250F 1C                    1524 	.db #0x1c	; 28
      002510 36                    1525 	.db #0x36	; 54	'6'
      002511 63                    1526 	.db #0x63	; 99	'c'
      002512 63                    1527 	.db #0x63	; 99	'c'
      002513 63                    1528 	.db #0x63	; 99	'c'
      002514 36                    1529 	.db #0x36	; 54	'6'
      002515 1C                    1530 	.db #0x1c	; 28
      002516 00                    1531 	.db #0x00	; 0
      002517 3F                    1532 	.db #0x3f	; 63
      002518 66                    1533 	.db #0x66	; 102	'f'
      002519 66                    1534 	.db #0x66	; 102	'f'
      00251A 3E                    1535 	.db #0x3e	; 62
      00251B 06                    1536 	.db #0x06	; 6
      00251C 06                    1537 	.db #0x06	; 6
      00251D 0F                    1538 	.db #0x0f	; 15
      00251E 00                    1539 	.db #0x00	; 0
      00251F 1E                    1540 	.db #0x1e	; 30
      002520 33                    1541 	.db #0x33	; 51	'3'
      002521 33                    1542 	.db #0x33	; 51	'3'
      002522 33                    1543 	.db #0x33	; 51	'3'
      002523 3B                    1544 	.db #0x3b	; 59
      002524 1E                    1545 	.db #0x1e	; 30
      002525 38                    1546 	.db #0x38	; 56	'8'
      002526 00                    1547 	.db #0x00	; 0
      002527 3F                    1548 	.db #0x3f	; 63
      002528 66                    1549 	.db #0x66	; 102	'f'
      002529 66                    1550 	.db #0x66	; 102	'f'
      00252A 3E                    1551 	.db #0x3e	; 62
      00252B 36                    1552 	.db #0x36	; 54	'6'
      00252C 66                    1553 	.db #0x66	; 102	'f'
      00252D 67                    1554 	.db #0x67	; 103	'g'
      00252E 00                    1555 	.db #0x00	; 0
      00252F 1E                    1556 	.db #0x1e	; 30
      002530 33                    1557 	.db #0x33	; 51	'3'
      002531 07                    1558 	.db #0x07	; 7
      002532 0E                    1559 	.db #0x0e	; 14
      002533 38                    1560 	.db #0x38	; 56	'8'
      002534 33                    1561 	.db #0x33	; 51	'3'
      002535 1E                    1562 	.db #0x1e	; 30
      002536 00                    1563 	.db #0x00	; 0
      002537 3F                    1564 	.db #0x3f	; 63
      002538 2D                    1565 	.db #0x2d	; 45
      002539 0C                    1566 	.db #0x0c	; 12
      00253A 0C                    1567 	.db #0x0c	; 12
      00253B 0C                    1568 	.db #0x0c	; 12
      00253C 0C                    1569 	.db #0x0c	; 12
      00253D 1E                    1570 	.db #0x1e	; 30
      00253E 00                    1571 	.db #0x00	; 0
      00253F 33                    1572 	.db #0x33	; 51	'3'
      002540 33                    1573 	.db #0x33	; 51	'3'
      002541 33                    1574 	.db #0x33	; 51	'3'
      002542 33                    1575 	.db #0x33	; 51	'3'
      002543 33                    1576 	.db #0x33	; 51	'3'
      002544 33                    1577 	.db #0x33	; 51	'3'
      002545 3F                    1578 	.db #0x3f	; 63
      002546 00                    1579 	.db #0x00	; 0
      002547 33                    1580 	.db #0x33	; 51	'3'
      002548 33                    1581 	.db #0x33	; 51	'3'
      002549 33                    1582 	.db #0x33	; 51	'3'
      00254A 33                    1583 	.db #0x33	; 51	'3'
      00254B 33                    1584 	.db #0x33	; 51	'3'
      00254C 1E                    1585 	.db #0x1e	; 30
      00254D 0C                    1586 	.db #0x0c	; 12
      00254E 00                    1587 	.db #0x00	; 0
      00254F 63                    1588 	.db #0x63	; 99	'c'
      002550 63                    1589 	.db #0x63	; 99	'c'
      002551 63                    1590 	.db #0x63	; 99	'c'
      002552 6B                    1591 	.db #0x6b	; 107	'k'
      002553 7F                    1592 	.db #0x7f	; 127
      002554 77                    1593 	.db #0x77	; 119	'w'
      002555 63                    1594 	.db #0x63	; 99	'c'
      002556 00                    1595 	.db #0x00	; 0
      002557 63                    1596 	.db #0x63	; 99	'c'
      002558 63                    1597 	.db #0x63	; 99	'c'
      002559 36                    1598 	.db #0x36	; 54	'6'
      00255A 1C                    1599 	.db #0x1c	; 28
      00255B 1C                    1600 	.db #0x1c	; 28
      00255C 36                    1601 	.db #0x36	; 54	'6'
      00255D 63                    1602 	.db #0x63	; 99	'c'
      00255E 00                    1603 	.db #0x00	; 0
      00255F 33                    1604 	.db #0x33	; 51	'3'
      002560 33                    1605 	.db #0x33	; 51	'3'
      002561 33                    1606 	.db #0x33	; 51	'3'
      002562 1E                    1607 	.db #0x1e	; 30
      002563 0C                    1608 	.db #0x0c	; 12
      002564 0C                    1609 	.db #0x0c	; 12
      002565 1E                    1610 	.db #0x1e	; 30
      002566 00                    1611 	.db #0x00	; 0
      002567 7F                    1612 	.db #0x7f	; 127
      002568 63                    1613 	.db #0x63	; 99	'c'
      002569 31                    1614 	.db #0x31	; 49	'1'
      00256A 18                    1615 	.db #0x18	; 24
      00256B 4C                    1616 	.db #0x4c	; 76	'L'
      00256C 66                    1617 	.db #0x66	; 102	'f'
      00256D 7F                    1618 	.db #0x7f	; 127
      00256E 00                    1619 	.db #0x00	; 0
      00256F 1E                    1620 	.db #0x1e	; 30
      002570 06                    1621 	.db #0x06	; 6
      002571 06                    1622 	.db #0x06	; 6
      002572 06                    1623 	.db #0x06	; 6
      002573 06                    1624 	.db #0x06	; 6
      002574 06                    1625 	.db #0x06	; 6
      002575 1E                    1626 	.db #0x1e	; 30
      002576 00                    1627 	.db #0x00	; 0
      002577 03                    1628 	.db #0x03	; 3
      002578 06                    1629 	.db #0x06	; 6
      002579 0C                    1630 	.db #0x0c	; 12
      00257A 18                    1631 	.db #0x18	; 24
      00257B 30                    1632 	.db #0x30	; 48	'0'
      00257C 60                    1633 	.db #0x60	; 96
      00257D 40                    1634 	.db #0x40	; 64
      00257E 00                    1635 	.db #0x00	; 0
      00257F 1E                    1636 	.db #0x1e	; 30
      002580 18                    1637 	.db #0x18	; 24
      002581 18                    1638 	.db #0x18	; 24
      002582 18                    1639 	.db #0x18	; 24
      002583 18                    1640 	.db #0x18	; 24
      002584 18                    1641 	.db #0x18	; 24
      002585 1E                    1642 	.db #0x1e	; 30
      002586 00                    1643 	.db #0x00	; 0
      002587 08                    1644 	.db #0x08	; 8
      002588 1C                    1645 	.db #0x1c	; 28
      002589 36                    1646 	.db #0x36	; 54	'6'
      00258A 63                    1647 	.db #0x63	; 99	'c'
      00258B 00                    1648 	.db #0x00	; 0
      00258C 00                    1649 	.db #0x00	; 0
      00258D 00                    1650 	.db #0x00	; 0
      00258E 00                    1651 	.db #0x00	; 0
      00258F 00                    1652 	.db #0x00	; 0
      002590 00                    1653 	.db #0x00	; 0
      002591 00                    1654 	.db #0x00	; 0
      002592 00                    1655 	.db #0x00	; 0
      002593 00                    1656 	.db #0x00	; 0
      002594 00                    1657 	.db #0x00	; 0
      002595 00                    1658 	.db #0x00	; 0
      002596 FF                    1659 	.db #0xff	; 255
      002597 0C                    1660 	.db #0x0c	; 12
      002598 0C                    1661 	.db #0x0c	; 12
      002599 18                    1662 	.db #0x18	; 24
      00259A 00                    1663 	.db #0x00	; 0
      00259B 00                    1664 	.db #0x00	; 0
      00259C 00                    1665 	.db #0x00	; 0
      00259D 00                    1666 	.db #0x00	; 0
      00259E 00                    1667 	.db #0x00	; 0
      00259F 00                    1668 	.db #0x00	; 0
      0025A0 00                    1669 	.db #0x00	; 0
      0025A1 1E                    1670 	.db #0x1e	; 30
      0025A2 30                    1671 	.db #0x30	; 48	'0'
      0025A3 3E                    1672 	.db #0x3e	; 62
      0025A4 33                    1673 	.db #0x33	; 51	'3'
      0025A5 6E                    1674 	.db #0x6e	; 110	'n'
      0025A6 00                    1675 	.db #0x00	; 0
      0025A7 07                    1676 	.db #0x07	; 7
      0025A8 06                    1677 	.db #0x06	; 6
      0025A9 06                    1678 	.db #0x06	; 6
      0025AA 3E                    1679 	.db #0x3e	; 62
      0025AB 66                    1680 	.db #0x66	; 102	'f'
      0025AC 66                    1681 	.db #0x66	; 102	'f'
      0025AD 3B                    1682 	.db #0x3b	; 59
      0025AE 00                    1683 	.db #0x00	; 0
      0025AF 00                    1684 	.db #0x00	; 0
      0025B0 00                    1685 	.db #0x00	; 0
      0025B1 1E                    1686 	.db #0x1e	; 30
      0025B2 33                    1687 	.db #0x33	; 51	'3'
      0025B3 03                    1688 	.db #0x03	; 3
      0025B4 33                    1689 	.db #0x33	; 51	'3'
      0025B5 1E                    1690 	.db #0x1e	; 30
      0025B6 00                    1691 	.db #0x00	; 0
      0025B7 38                    1692 	.db #0x38	; 56	'8'
      0025B8 30                    1693 	.db #0x30	; 48	'0'
      0025B9 30                    1694 	.db #0x30	; 48	'0'
      0025BA 3E                    1695 	.db #0x3e	; 62
      0025BB 33                    1696 	.db #0x33	; 51	'3'
      0025BC 33                    1697 	.db #0x33	; 51	'3'
      0025BD 6E                    1698 	.db #0x6e	; 110	'n'
      0025BE 00                    1699 	.db #0x00	; 0
      0025BF 00                    1700 	.db #0x00	; 0
      0025C0 00                    1701 	.db #0x00	; 0
      0025C1 1E                    1702 	.db #0x1e	; 30
      0025C2 33                    1703 	.db #0x33	; 51	'3'
      0025C3 3F                    1704 	.db #0x3f	; 63
      0025C4 03                    1705 	.db #0x03	; 3
      0025C5 1E                    1706 	.db #0x1e	; 30
      0025C6 00                    1707 	.db #0x00	; 0
      0025C7 1C                    1708 	.db #0x1c	; 28
      0025C8 36                    1709 	.db #0x36	; 54	'6'
      0025C9 06                    1710 	.db #0x06	; 6
      0025CA 0F                    1711 	.db #0x0f	; 15
      0025CB 06                    1712 	.db #0x06	; 6
      0025CC 06                    1713 	.db #0x06	; 6
      0025CD 0F                    1714 	.db #0x0f	; 15
      0025CE 00                    1715 	.db #0x00	; 0
      0025CF 00                    1716 	.db #0x00	; 0
      0025D0 00                    1717 	.db #0x00	; 0
      0025D1 6E                    1718 	.db #0x6e	; 110	'n'
      0025D2 33                    1719 	.db #0x33	; 51	'3'
      0025D3 33                    1720 	.db #0x33	; 51	'3'
      0025D4 3E                    1721 	.db #0x3e	; 62
      0025D5 30                    1722 	.db #0x30	; 48	'0'
      0025D6 1F                    1723 	.db #0x1f	; 31
      0025D7 07                    1724 	.db #0x07	; 7
      0025D8 06                    1725 	.db #0x06	; 6
      0025D9 36                    1726 	.db #0x36	; 54	'6'
      0025DA 6E                    1727 	.db #0x6e	; 110	'n'
      0025DB 66                    1728 	.db #0x66	; 102	'f'
      0025DC 66                    1729 	.db #0x66	; 102	'f'
      0025DD 67                    1730 	.db #0x67	; 103	'g'
      0025DE 00                    1731 	.db #0x00	; 0
      0025DF 0C                    1732 	.db #0x0c	; 12
      0025E0 00                    1733 	.db #0x00	; 0
      0025E1 0E                    1734 	.db #0x0e	; 14
      0025E2 0C                    1735 	.db #0x0c	; 12
      0025E3 0C                    1736 	.db #0x0c	; 12
      0025E4 0C                    1737 	.db #0x0c	; 12
      0025E5 1E                    1738 	.db #0x1e	; 30
      0025E6 00                    1739 	.db #0x00	; 0
      0025E7 30                    1740 	.db #0x30	; 48	'0'
      0025E8 00                    1741 	.db #0x00	; 0
      0025E9 30                    1742 	.db #0x30	; 48	'0'
      0025EA 30                    1743 	.db #0x30	; 48	'0'
      0025EB 30                    1744 	.db #0x30	; 48	'0'
      0025EC 33                    1745 	.db #0x33	; 51	'3'
      0025ED 33                    1746 	.db #0x33	; 51	'3'
      0025EE 1E                    1747 	.db #0x1e	; 30
      0025EF 07                    1748 	.db #0x07	; 7
      0025F0 06                    1749 	.db #0x06	; 6
      0025F1 66                    1750 	.db #0x66	; 102	'f'
      0025F2 36                    1751 	.db #0x36	; 54	'6'
      0025F3 1E                    1752 	.db #0x1e	; 30
      0025F4 36                    1753 	.db #0x36	; 54	'6'
      0025F5 67                    1754 	.db #0x67	; 103	'g'
      0025F6 00                    1755 	.db #0x00	; 0
      0025F7 0E                    1756 	.db #0x0e	; 14
      0025F8 0C                    1757 	.db #0x0c	; 12
      0025F9 0C                    1758 	.db #0x0c	; 12
      0025FA 0C                    1759 	.db #0x0c	; 12
      0025FB 0C                    1760 	.db #0x0c	; 12
      0025FC 0C                    1761 	.db #0x0c	; 12
      0025FD 1E                    1762 	.db #0x1e	; 30
      0025FE 00                    1763 	.db #0x00	; 0
      0025FF 00                    1764 	.db #0x00	; 0
      002600 00                    1765 	.db #0x00	; 0
      002601 33                    1766 	.db #0x33	; 51	'3'
      002602 7F                    1767 	.db #0x7f	; 127
      002603 7F                    1768 	.db #0x7f	; 127
      002604 6B                    1769 	.db #0x6b	; 107	'k'
      002605 63                    1770 	.db #0x63	; 99	'c'
      002606 00                    1771 	.db #0x00	; 0
      002607 00                    1772 	.db #0x00	; 0
      002608 00                    1773 	.db #0x00	; 0
      002609 1F                    1774 	.db #0x1f	; 31
      00260A 33                    1775 	.db #0x33	; 51	'3'
      00260B 33                    1776 	.db #0x33	; 51	'3'
      00260C 33                    1777 	.db #0x33	; 51	'3'
      00260D 33                    1778 	.db #0x33	; 51	'3'
      00260E 00                    1779 	.db #0x00	; 0
      00260F 00                    1780 	.db #0x00	; 0
      002610 00                    1781 	.db #0x00	; 0
      002611 1E                    1782 	.db #0x1e	; 30
      002612 33                    1783 	.db #0x33	; 51	'3'
      002613 33                    1784 	.db #0x33	; 51	'3'
      002614 33                    1785 	.db #0x33	; 51	'3'
      002615 1E                    1786 	.db #0x1e	; 30
      002616 00                    1787 	.db #0x00	; 0
      002617 00                    1788 	.db #0x00	; 0
      002618 00                    1789 	.db #0x00	; 0
      002619 3B                    1790 	.db #0x3b	; 59
      00261A 66                    1791 	.db #0x66	; 102	'f'
      00261B 66                    1792 	.db #0x66	; 102	'f'
      00261C 3E                    1793 	.db #0x3e	; 62
      00261D 06                    1794 	.db #0x06	; 6
      00261E 0F                    1795 	.db #0x0f	; 15
      00261F 00                    1796 	.db #0x00	; 0
      002620 00                    1797 	.db #0x00	; 0
      002621 6E                    1798 	.db #0x6e	; 110	'n'
      002622 33                    1799 	.db #0x33	; 51	'3'
      002623 33                    1800 	.db #0x33	; 51	'3'
      002624 3E                    1801 	.db #0x3e	; 62
      002625 30                    1802 	.db #0x30	; 48	'0'
      002626 78                    1803 	.db #0x78	; 120	'x'
      002627 00                    1804 	.db #0x00	; 0
      002628 00                    1805 	.db #0x00	; 0
      002629 3B                    1806 	.db #0x3b	; 59
      00262A 6E                    1807 	.db #0x6e	; 110	'n'
      00262B 66                    1808 	.db #0x66	; 102	'f'
      00262C 06                    1809 	.db #0x06	; 6
      00262D 0F                    1810 	.db #0x0f	; 15
      00262E 00                    1811 	.db #0x00	; 0
      00262F 00                    1812 	.db #0x00	; 0
      002630 00                    1813 	.db #0x00	; 0
      002631 3E                    1814 	.db #0x3e	; 62
      002632 03                    1815 	.db #0x03	; 3
      002633 1E                    1816 	.db #0x1e	; 30
      002634 30                    1817 	.db #0x30	; 48	'0'
      002635 1F                    1818 	.db #0x1f	; 31
      002636 00                    1819 	.db #0x00	; 0
      002637 08                    1820 	.db #0x08	; 8
      002638 0C                    1821 	.db #0x0c	; 12
      002639 3E                    1822 	.db #0x3e	; 62
      00263A 0C                    1823 	.db #0x0c	; 12
      00263B 0C                    1824 	.db #0x0c	; 12
      00263C 2C                    1825 	.db #0x2c	; 44
      00263D 18                    1826 	.db #0x18	; 24
      00263E 00                    1827 	.db #0x00	; 0
      00263F 00                    1828 	.db #0x00	; 0
      002640 00                    1829 	.db #0x00	; 0
      002641 33                    1830 	.db #0x33	; 51	'3'
      002642 33                    1831 	.db #0x33	; 51	'3'
      002643 33                    1832 	.db #0x33	; 51	'3'
      002644 33                    1833 	.db #0x33	; 51	'3'
      002645 6E                    1834 	.db #0x6e	; 110	'n'
      002646 00                    1835 	.db #0x00	; 0
      002647 00                    1836 	.db #0x00	; 0
      002648 00                    1837 	.db #0x00	; 0
      002649 33                    1838 	.db #0x33	; 51	'3'
      00264A 33                    1839 	.db #0x33	; 51	'3'
      00264B 33                    1840 	.db #0x33	; 51	'3'
      00264C 1E                    1841 	.db #0x1e	; 30
      00264D 0C                    1842 	.db #0x0c	; 12
      00264E 00                    1843 	.db #0x00	; 0
      00264F 00                    1844 	.db #0x00	; 0
      002650 00                    1845 	.db #0x00	; 0
      002651 63                    1846 	.db #0x63	; 99	'c'
      002652 6B                    1847 	.db #0x6b	; 107	'k'
      002653 7F                    1848 	.db #0x7f	; 127
      002654 7F                    1849 	.db #0x7f	; 127
      002655 36                    1850 	.db #0x36	; 54	'6'
      002656 00                    1851 	.db #0x00	; 0
      002657 00                    1852 	.db #0x00	; 0
      002658 00                    1853 	.db #0x00	; 0
      002659 63                    1854 	.db #0x63	; 99	'c'
      00265A 36                    1855 	.db #0x36	; 54	'6'
      00265B 1C                    1856 	.db #0x1c	; 28
      00265C 36                    1857 	.db #0x36	; 54	'6'
      00265D 63                    1858 	.db #0x63	; 99	'c'
      00265E 00                    1859 	.db #0x00	; 0
      00265F 00                    1860 	.db #0x00	; 0
      002660 00                    1861 	.db #0x00	; 0
      002661 33                    1862 	.db #0x33	; 51	'3'
      002662 33                    1863 	.db #0x33	; 51	'3'
      002663 33                    1864 	.db #0x33	; 51	'3'
      002664 3E                    1865 	.db #0x3e	; 62
      002665 30                    1866 	.db #0x30	; 48	'0'
      002666 1F                    1867 	.db #0x1f	; 31
      002667 00                    1868 	.db #0x00	; 0
      002668 00                    1869 	.db #0x00	; 0
      002669 3F                    1870 	.db #0x3f	; 63
      00266A 19                    1871 	.db #0x19	; 25
      00266B 0C                    1872 	.db #0x0c	; 12
      00266C 26                    1873 	.db #0x26	; 38
      00266D 3F                    1874 	.db #0x3f	; 63
      00266E 00                    1875 	.db #0x00	; 0
      00266F 38                    1876 	.db #0x38	; 56	'8'
      002670 0C                    1877 	.db #0x0c	; 12
      002671 0C                    1878 	.db #0x0c	; 12
      002672 07                    1879 	.db #0x07	; 7
      002673 0C                    1880 	.db #0x0c	; 12
      002674 0C                    1881 	.db #0x0c	; 12
      002675 38                    1882 	.db #0x38	; 56	'8'
      002676 00                    1883 	.db #0x00	; 0
      002677 18                    1884 	.db #0x18	; 24
      002678 18                    1885 	.db #0x18	; 24
      002679 18                    1886 	.db #0x18	; 24
      00267A 00                    1887 	.db #0x00	; 0
      00267B 18                    1888 	.db #0x18	; 24
      00267C 18                    1889 	.db #0x18	; 24
      00267D 18                    1890 	.db #0x18	; 24
      00267E 00                    1891 	.db #0x00	; 0
      00267F 07                    1892 	.db #0x07	; 7
      002680 0C                    1893 	.db #0x0c	; 12
      002681 0C                    1894 	.db #0x0c	; 12
      002682 38                    1895 	.db #0x38	; 56	'8'
      002683 0C                    1896 	.db #0x0c	; 12
      002684 0C                    1897 	.db #0x0c	; 12
      002685 07                    1898 	.db #0x07	; 7
      002686 00                    1899 	.db #0x00	; 0
      002687 6E                    1900 	.db #0x6e	; 110	'n'
      002688 3B                    1901 	.db #0x3b	; 59
      002689 00                    1902 	.db #0x00	; 0
      00268A 00                    1903 	.db #0x00	; 0
      00268B 00                    1904 	.db #0x00	; 0
      00268C 00                    1905 	.db #0x00	; 0
      00268D 00                    1906 	.db #0x00	; 0
      00268E 00                    1907 	.db #0x00	; 0
      00268F 00                    1908 	.db #0x00	; 0
      002690 00                    1909 	.db #0x00	; 0
      002691 00                    1910 	.db #0x00	; 0
      002692 00                    1911 	.db #0x00	; 0
      002693 00                    1912 	.db #0x00	; 0
      002694 00                    1913 	.db #0x00	; 0
      002695 00                    1914 	.db #0x00	; 0
      002696 00                    1915 	.db #0x00	; 0
      002697 00                    1916 	.db #0x00	; 0
      002698 00                    1917 	.db #0x00	; 0
      002699 00                    1918 	.db #0x00	; 0
      00269A 00                    1919 	.db #0x00	; 0
      00269B 00                    1920 	.db #0x00	; 0
      00269C 00                    1921 	.db #0x00	; 0
      00269D 00                    1922 	.db #0x00	; 0
      00269E 00                    1923 	.db #0x00	; 0
      00269F 00                    1924 	.db #0x00	; 0
      0026A0 00                    1925 	.db #0x00	; 0
      0026A1 00                    1926 	.db #0x00	; 0
      0026A2 00                    1927 	.db #0x00	; 0
      0026A3 00                    1928 	.db #0x00	; 0
      0026A4 00                    1929 	.db #0x00	; 0
      0026A5 00                    1930 	.db #0x00	; 0
      0026A6 00                    1931 	.db #0x00	; 0
      0026A7 00                    1932 	.db #0x00	; 0
      0026A8 00                    1933 	.db #0x00	; 0
      0026A9 00                    1934 	.db #0x00	; 0
      0026AA 00                    1935 	.db #0x00	; 0
      0026AB 00                    1936 	.db #0x00	; 0
      0026AC 00                    1937 	.db #0x00	; 0
      0026AD 00                    1938 	.db #0x00	; 0
      0026AE 00                    1939 	.db #0x00	; 0
      0026AF 00                    1940 	.db #0x00	; 0
      0026B0 00                    1941 	.db #0x00	; 0
      0026B1 00                    1942 	.db #0x00	; 0
      0026B2 00                    1943 	.db #0x00	; 0
      0026B3 00                    1944 	.db #0x00	; 0
      0026B4 00                    1945 	.db #0x00	; 0
      0026B5 00                    1946 	.db #0x00	; 0
      0026B6 00                    1947 	.db #0x00	; 0
      0026B7 00                    1948 	.db #0x00	; 0
      0026B8 00                    1949 	.db #0x00	; 0
      0026B9 00                    1950 	.db #0x00	; 0
      0026BA 00                    1951 	.db #0x00	; 0
      0026BB 00                    1952 	.db #0x00	; 0
      0026BC 00                    1953 	.db #0x00	; 0
      0026BD 00                    1954 	.db #0x00	; 0
      0026BE 00                    1955 	.db #0x00	; 0
      0026BF 00                    1956 	.db #0x00	; 0
      0026C0 00                    1957 	.db #0x00	; 0
      0026C1 00                    1958 	.db #0x00	; 0
      0026C2 00                    1959 	.db #0x00	; 0
      0026C3 00                    1960 	.db #0x00	; 0
      0026C4 00                    1961 	.db #0x00	; 0
      0026C5 00                    1962 	.db #0x00	; 0
      0026C6 00                    1963 	.db #0x00	; 0
      0026C7 00                    1964 	.db #0x00	; 0
      0026C8 00                    1965 	.db #0x00	; 0
      0026C9 00                    1966 	.db #0x00	; 0
      0026CA 00                    1967 	.db #0x00	; 0
      0026CB 00                    1968 	.db #0x00	; 0
      0026CC 00                    1969 	.db #0x00	; 0
      0026CD 00                    1970 	.db #0x00	; 0
      0026CE 00                    1971 	.db #0x00	; 0
      0026CF 00                    1972 	.db #0x00	; 0
      0026D0 00                    1973 	.db #0x00	; 0
      0026D1 00                    1974 	.db #0x00	; 0
      0026D2 00                    1975 	.db #0x00	; 0
      0026D3 00                    1976 	.db #0x00	; 0
      0026D4 00                    1977 	.db #0x00	; 0
      0026D5 00                    1978 	.db #0x00	; 0
      0026D6 00                    1979 	.db #0x00	; 0
      0026D7 00                    1980 	.db #0x00	; 0
      0026D8 00                    1981 	.db #0x00	; 0
      0026D9 00                    1982 	.db #0x00	; 0
      0026DA 00                    1983 	.db #0x00	; 0
      0026DB 00                    1984 	.db #0x00	; 0
      0026DC 00                    1985 	.db #0x00	; 0
      0026DD 00                    1986 	.db #0x00	; 0
      0026DE 00                    1987 	.db #0x00	; 0
      0026DF 00                    1988 	.db #0x00	; 0
      0026E0 00                    1989 	.db #0x00	; 0
      0026E1 00                    1990 	.db #0x00	; 0
      0026E2 00                    1991 	.db #0x00	; 0
      0026E3 00                    1992 	.db #0x00	; 0
      0026E4 00                    1993 	.db #0x00	; 0
      0026E5 00                    1994 	.db #0x00	; 0
      0026E6 00                    1995 	.db #0x00	; 0
      0026E7 00                    1996 	.db #0x00	; 0
      0026E8 00                    1997 	.db #0x00	; 0
      0026E9 00                    1998 	.db #0x00	; 0
      0026EA 00                    1999 	.db #0x00	; 0
      0026EB 00                    2000 	.db #0x00	; 0
      0026EC 00                    2001 	.db #0x00	; 0
      0026ED 00                    2002 	.db #0x00	; 0
      0026EE 00                    2003 	.db #0x00	; 0
      0026EF 00                    2004 	.db #0x00	; 0
      0026F0 00                    2005 	.db #0x00	; 0
      0026F1 00                    2006 	.db #0x00	; 0
      0026F2 00                    2007 	.db #0x00	; 0
      0026F3 00                    2008 	.db #0x00	; 0
      0026F4 00                    2009 	.db #0x00	; 0
      0026F5 00                    2010 	.db #0x00	; 0
      0026F6 00                    2011 	.db #0x00	; 0
      0026F7 00                    2012 	.db #0x00	; 0
      0026F8 00                    2013 	.db #0x00	; 0
      0026F9 00                    2014 	.db #0x00	; 0
      0026FA 00                    2015 	.db #0x00	; 0
      0026FB 00                    2016 	.db #0x00	; 0
      0026FC 00                    2017 	.db #0x00	; 0
      0026FD 00                    2018 	.db #0x00	; 0
      0026FE 00                    2019 	.db #0x00	; 0
      0026FF 00                    2020 	.db #0x00	; 0
      002700 00                    2021 	.db #0x00	; 0
      002701 00                    2022 	.db #0x00	; 0
      002702 00                    2023 	.db #0x00	; 0
      002703 00                    2024 	.db #0x00	; 0
      002704 00                    2025 	.db #0x00	; 0
      002705 00                    2026 	.db #0x00	; 0
      002706 00                    2027 	.db #0x00	; 0
      002707 00                    2028 	.db #0x00	; 0
      002708 00                    2029 	.db #0x00	; 0
      002709 00                    2030 	.db #0x00	; 0
      00270A 00                    2031 	.db #0x00	; 0
      00270B 00                    2032 	.db #0x00	; 0
      00270C 00                    2033 	.db #0x00	; 0
      00270D 00                    2034 	.db #0x00	; 0
      00270E 00                    2035 	.db #0x00	; 0
      00270F 00                    2036 	.db #0x00	; 0
      002710 00                    2037 	.db #0x00	; 0
      002711 00                    2038 	.db #0x00	; 0
      002712 00                    2039 	.db #0x00	; 0
      002713 00                    2040 	.db #0x00	; 0
      002714 00                    2041 	.db #0x00	; 0
      002715 00                    2042 	.db #0x00	; 0
      002716 00                    2043 	.db #0x00	; 0
      002717 00                    2044 	.db #0x00	; 0
      002718 00                    2045 	.db #0x00	; 0
      002719 00                    2046 	.db #0x00	; 0
      00271A 00                    2047 	.db #0x00	; 0
      00271B 00                    2048 	.db #0x00	; 0
      00271C 00                    2049 	.db #0x00	; 0
      00271D 00                    2050 	.db #0x00	; 0
      00271E 00                    2051 	.db #0x00	; 0
      00271F 00                    2052 	.db #0x00	; 0
      002720 00                    2053 	.db #0x00	; 0
      002721 00                    2054 	.db #0x00	; 0
      002722 00                    2055 	.db #0x00	; 0
      002723 00                    2056 	.db #0x00	; 0
      002724 00                    2057 	.db #0x00	; 0
      002725 00                    2058 	.db #0x00	; 0
      002726 00                    2059 	.db #0x00	; 0
      002727 00                    2060 	.db #0x00	; 0
      002728 00                    2061 	.db #0x00	; 0
      002729 00                    2062 	.db #0x00	; 0
      00272A 00                    2063 	.db #0x00	; 0
      00272B 00                    2064 	.db #0x00	; 0
      00272C 00                    2065 	.db #0x00	; 0
      00272D 00                    2066 	.db #0x00	; 0
      00272E 00                    2067 	.db #0x00	; 0
      00272F 00                    2068 	.db #0x00	; 0
      002730 00                    2069 	.db #0x00	; 0
      002731 00                    2070 	.db #0x00	; 0
      002732 00                    2071 	.db #0x00	; 0
      002733 00                    2072 	.db #0x00	; 0
      002734 00                    2073 	.db #0x00	; 0
      002735 00                    2074 	.db #0x00	; 0
      002736 00                    2075 	.db #0x00	; 0
      002737 00                    2076 	.db #0x00	; 0
      002738 00                    2077 	.db #0x00	; 0
      002739 00                    2078 	.db #0x00	; 0
      00273A 00                    2079 	.db #0x00	; 0
      00273B 00                    2080 	.db #0x00	; 0
      00273C 00                    2081 	.db #0x00	; 0
      00273D 00                    2082 	.db #0x00	; 0
      00273E 00                    2083 	.db #0x00	; 0
      00273F 00                    2084 	.db #0x00	; 0
      002740 00                    2085 	.db #0x00	; 0
      002741 00                    2086 	.db #0x00	; 0
      002742 00                    2087 	.db #0x00	; 0
      002743 00                    2088 	.db #0x00	; 0
      002744 00                    2089 	.db #0x00	; 0
      002745 00                    2090 	.db #0x00	; 0
      002746 00                    2091 	.db #0x00	; 0
      002747 00                    2092 	.db #0x00	; 0
      002748 00                    2093 	.db #0x00	; 0
      002749 00                    2094 	.db #0x00	; 0
      00274A 00                    2095 	.db #0x00	; 0
      00274B 00                    2096 	.db #0x00	; 0
      00274C 00                    2097 	.db #0x00	; 0
      00274D 00                    2098 	.db #0x00	; 0
      00274E 00                    2099 	.db #0x00	; 0
      00274F 00                    2100 	.db #0x00	; 0
      002750 00                    2101 	.db #0x00	; 0
      002751 00                    2102 	.db #0x00	; 0
      002752 00                    2103 	.db #0x00	; 0
      002753 00                    2104 	.db #0x00	; 0
      002754 00                    2105 	.db #0x00	; 0
      002755 00                    2106 	.db #0x00	; 0
      002756 00                    2107 	.db #0x00	; 0
      002757 00                    2108 	.db #0x00	; 0
      002758 00                    2109 	.db #0x00	; 0
      002759 00                    2110 	.db #0x00	; 0
      00275A 00                    2111 	.db #0x00	; 0
      00275B 00                    2112 	.db #0x00	; 0
      00275C 00                    2113 	.db #0x00	; 0
      00275D 00                    2114 	.db #0x00	; 0
      00275E 00                    2115 	.db #0x00	; 0
      00275F 00                    2116 	.db #0x00	; 0
      002760 00                    2117 	.db #0x00	; 0
      002761 00                    2118 	.db #0x00	; 0
      002762 00                    2119 	.db #0x00	; 0
      002763 00                    2120 	.db #0x00	; 0
      002764 00                    2121 	.db #0x00	; 0
      002765 00                    2122 	.db #0x00	; 0
      002766 00                    2123 	.db #0x00	; 0
      002767 00                    2124 	.db #0x00	; 0
      002768 00                    2125 	.db #0x00	; 0
      002769 00                    2126 	.db #0x00	; 0
      00276A 00                    2127 	.db #0x00	; 0
      00276B 00                    2128 	.db #0x00	; 0
      00276C 00                    2129 	.db #0x00	; 0
      00276D 00                    2130 	.db #0x00	; 0
      00276E 00                    2131 	.db #0x00	; 0
      00276F 00                    2132 	.db #0x00	; 0
      002770 00                    2133 	.db #0x00	; 0
      002771 00                    2134 	.db #0x00	; 0
      002772 00                    2135 	.db #0x00	; 0
      002773 00                    2136 	.db #0x00	; 0
      002774 00                    2137 	.db #0x00	; 0
      002775 00                    2138 	.db #0x00	; 0
      002776 00                    2139 	.db #0x00	; 0
      002777 00                    2140 	.db #0x00	; 0
      002778 00                    2141 	.db #0x00	; 0
      002779 00                    2142 	.db #0x00	; 0
      00277A 00                    2143 	.db #0x00	; 0
      00277B 00                    2144 	.db #0x00	; 0
      00277C 00                    2145 	.db #0x00	; 0
      00277D 00                    2146 	.db #0x00	; 0
      00277E 00                    2147 	.db #0x00	; 0
      00277F 00                    2148 	.db #0x00	; 0
      002780 00                    2149 	.db #0x00	; 0
      002781 00                    2150 	.db #0x00	; 0
      002782 00                    2151 	.db #0x00	; 0
      002783 00                    2152 	.db #0x00	; 0
      002784 00                    2153 	.db #0x00	; 0
      002785 00                    2154 	.db #0x00	; 0
      002786 00                    2155 	.db #0x00	; 0
      002787 00                    2156 	.db #0x00	; 0
      002788 00                    2157 	.db #0x00	; 0
      002789 00                    2158 	.db #0x00	; 0
      00278A 00                    2159 	.db #0x00	; 0
      00278B 00                    2160 	.db #0x00	; 0
      00278C 00                    2161 	.db #0x00	; 0
      00278D 00                    2162 	.db #0x00	; 0
      00278E 00                    2163 	.db #0x00	; 0
      00278F 00                    2164 	.db #0x00	; 0
      002790 00                    2165 	.db #0x00	; 0
      002791 00                    2166 	.db #0x00	; 0
      002792 00                    2167 	.db #0x00	; 0
      002793 00                    2168 	.db #0x00	; 0
      002794 00                    2169 	.db #0x00	; 0
      002795 00                    2170 	.db #0x00	; 0
      002796 00                    2171 	.db #0x00	; 0
      002797 00                    2172 	.db #0x00	; 0
      002798 00                    2173 	.db #0x00	; 0
      002799 00                    2174 	.db #0x00	; 0
      00279A 00                    2175 	.db #0x00	; 0
      00279B 00                    2176 	.db #0x00	; 0
      00279C 00                    2177 	.db #0x00	; 0
      00279D 00                    2178 	.db #0x00	; 0
      00279E 00                    2179 	.db #0x00	; 0
      00279F 18                    2180 	.db #0x18	; 24
      0027A0 18                    2181 	.db #0x18	; 24
      0027A1 00                    2182 	.db #0x00	; 0
      0027A2 18                    2183 	.db #0x18	; 24
      0027A3 18                    2184 	.db #0x18	; 24
      0027A4 18                    2185 	.db #0x18	; 24
      0027A5 18                    2186 	.db #0x18	; 24
      0027A6 00                    2187 	.db #0x00	; 0
      0027A7 18                    2188 	.db #0x18	; 24
      0027A8 18                    2189 	.db #0x18	; 24
      0027A9 7E                    2190 	.db #0x7e	; 126
      0027AA 03                    2191 	.db #0x03	; 3
      0027AB 03                    2192 	.db #0x03	; 3
      0027AC 7E                    2193 	.db #0x7e	; 126
      0027AD 18                    2194 	.db #0x18	; 24
      0027AE 18                    2195 	.db #0x18	; 24
      0027AF 1C                    2196 	.db #0x1c	; 28
      0027B0 36                    2197 	.db #0x36	; 54	'6'
      0027B1 26                    2198 	.db #0x26	; 38
      0027B2 0F                    2199 	.db #0x0f	; 15
      0027B3 06                    2200 	.db #0x06	; 6
      0027B4 67                    2201 	.db #0x67	; 103	'g'
      0027B5 3F                    2202 	.db #0x3f	; 63
      0027B6 00                    2203 	.db #0x00	; 0
      0027B7 00                    2204 	.db #0x00	; 0
      0027B8 00                    2205 	.db #0x00	; 0
      0027B9 63                    2206 	.db #0x63	; 99	'c'
      0027BA 3E                    2207 	.db #0x3e	; 62
      0027BB 36                    2208 	.db #0x36	; 54	'6'
      0027BC 3E                    2209 	.db #0x3e	; 62
      0027BD 63                    2210 	.db #0x63	; 99	'c'
      0027BE 00                    2211 	.db #0x00	; 0
      0027BF 33                    2212 	.db #0x33	; 51	'3'
      0027C0 33                    2213 	.db #0x33	; 51	'3'
      0027C1 1E                    2214 	.db #0x1e	; 30
      0027C2 3F                    2215 	.db #0x3f	; 63
      0027C3 0C                    2216 	.db #0x0c	; 12
      0027C4 3F                    2217 	.db #0x3f	; 63
      0027C5 0C                    2218 	.db #0x0c	; 12
      0027C6 0C                    2219 	.db #0x0c	; 12
      0027C7 18                    2220 	.db #0x18	; 24
      0027C8 18                    2221 	.db #0x18	; 24
      0027C9 18                    2222 	.db #0x18	; 24
      0027CA 00                    2223 	.db #0x00	; 0
      0027CB 18                    2224 	.db #0x18	; 24
      0027CC 18                    2225 	.db #0x18	; 24
      0027CD 18                    2226 	.db #0x18	; 24
      0027CE 00                    2227 	.db #0x00	; 0
      0027CF 7C                    2228 	.db #0x7c	; 124
      0027D0 C6                    2229 	.db #0xc6	; 198
      0027D1 1C                    2230 	.db #0x1c	; 28
      0027D2 36                    2231 	.db #0x36	; 54	'6'
      0027D3 36                    2232 	.db #0x36	; 54	'6'
      0027D4 1C                    2233 	.db #0x1c	; 28
      0027D5 33                    2234 	.db #0x33	; 51	'3'
      0027D6 1E                    2235 	.db #0x1e	; 30
      0027D7 33                    2236 	.db #0x33	; 51	'3'
      0027D8 00                    2237 	.db #0x00	; 0
      0027D9 00                    2238 	.db #0x00	; 0
      0027DA 00                    2239 	.db #0x00	; 0
      0027DB 00                    2240 	.db #0x00	; 0
      0027DC 00                    2241 	.db #0x00	; 0
      0027DD 00                    2242 	.db #0x00	; 0
      0027DE 00                    2243 	.db #0x00	; 0
      0027DF 3C                    2244 	.db #0x3c	; 60
      0027E0 42                    2245 	.db #0x42	; 66	'B'
      0027E1 99                    2246 	.db #0x99	; 153
      0027E2 85                    2247 	.db #0x85	; 133
      0027E3 85                    2248 	.db #0x85	; 133
      0027E4 99                    2249 	.db #0x99	; 153
      0027E5 42                    2250 	.db #0x42	; 66	'B'
      0027E6 3C                    2251 	.db #0x3c	; 60
      0027E7 3C                    2252 	.db #0x3c	; 60
      0027E8 36                    2253 	.db #0x36	; 54	'6'
      0027E9 36                    2254 	.db #0x36	; 54	'6'
      0027EA 7C                    2255 	.db #0x7c	; 124
      0027EB 00                    2256 	.db #0x00	; 0
      0027EC 00                    2257 	.db #0x00	; 0
      0027ED 00                    2258 	.db #0x00	; 0
      0027EE 00                    2259 	.db #0x00	; 0
      0027EF 00                    2260 	.db #0x00	; 0
      0027F0 CC                    2261 	.db #0xcc	; 204
      0027F1 66                    2262 	.db #0x66	; 102	'f'
      0027F2 33                    2263 	.db #0x33	; 51	'3'
      0027F3 66                    2264 	.db #0x66	; 102	'f'
      0027F4 CC                    2265 	.db #0xcc	; 204
      0027F5 00                    2266 	.db #0x00	; 0
      0027F6 00                    2267 	.db #0x00	; 0
      0027F7 00                    2268 	.db #0x00	; 0
      0027F8 00                    2269 	.db #0x00	; 0
      0027F9 00                    2270 	.db #0x00	; 0
      0027FA 3F                    2271 	.db #0x3f	; 63
      0027FB 30                    2272 	.db #0x30	; 48	'0'
      0027FC 30                    2273 	.db #0x30	; 48	'0'
      0027FD 00                    2274 	.db #0x00	; 0
      0027FE 00                    2275 	.db #0x00	; 0
      0027FF 00                    2276 	.db #0x00	; 0
      002800 00                    2277 	.db #0x00	; 0
      002801 00                    2278 	.db #0x00	; 0
      002802 00                    2279 	.db #0x00	; 0
      002803 00                    2280 	.db #0x00	; 0
      002804 00                    2281 	.db #0x00	; 0
      002805 00                    2282 	.db #0x00	; 0
      002806 00                    2283 	.db #0x00	; 0
      002807 3C                    2284 	.db #0x3c	; 60
      002808 42                    2285 	.db #0x42	; 66	'B'
      002809 9D                    2286 	.db #0x9d	; 157
      00280A A5                    2287 	.db #0xa5	; 165
      00280B 9D                    2288 	.db #0x9d	; 157
      00280C A5                    2289 	.db #0xa5	; 165
      00280D 42                    2290 	.db #0x42	; 66	'B'
      00280E 3C                    2291 	.db #0x3c	; 60
      00280F 7E                    2292 	.db #0x7e	; 126
      002810 00                    2293 	.db #0x00	; 0
      002811 00                    2294 	.db #0x00	; 0
      002812 00                    2295 	.db #0x00	; 0
      002813 00                    2296 	.db #0x00	; 0
      002814 00                    2297 	.db #0x00	; 0
      002815 00                    2298 	.db #0x00	; 0
      002816 00                    2299 	.db #0x00	; 0
      002817 1C                    2300 	.db #0x1c	; 28
      002818 36                    2301 	.db #0x36	; 54	'6'
      002819 36                    2302 	.db #0x36	; 54	'6'
      00281A 1C                    2303 	.db #0x1c	; 28
      00281B 00                    2304 	.db #0x00	; 0
      00281C 00                    2305 	.db #0x00	; 0
      00281D 00                    2306 	.db #0x00	; 0
      00281E 00                    2307 	.db #0x00	; 0
      00281F 18                    2308 	.db #0x18	; 24
      002820 18                    2309 	.db #0x18	; 24
      002821 7E                    2310 	.db #0x7e	; 126
      002822 18                    2311 	.db #0x18	; 24
      002823 18                    2312 	.db #0x18	; 24
      002824 00                    2313 	.db #0x00	; 0
      002825 7E                    2314 	.db #0x7e	; 126
      002826 00                    2315 	.db #0x00	; 0
      002827 1C                    2316 	.db #0x1c	; 28
      002828 30                    2317 	.db #0x30	; 48	'0'
      002829 18                    2318 	.db #0x18	; 24
      00282A 0C                    2319 	.db #0x0c	; 12
      00282B 3C                    2320 	.db #0x3c	; 60
      00282C 00                    2321 	.db #0x00	; 0
      00282D 00                    2322 	.db #0x00	; 0
      00282E 00                    2323 	.db #0x00	; 0
      00282F 1C                    2324 	.db #0x1c	; 28
      002830 30                    2325 	.db #0x30	; 48	'0'
      002831 18                    2326 	.db #0x18	; 24
      002832 30                    2327 	.db #0x30	; 48	'0'
      002833 1C                    2328 	.db #0x1c	; 28
      002834 00                    2329 	.db #0x00	; 0
      002835 00                    2330 	.db #0x00	; 0
      002836 00                    2331 	.db #0x00	; 0
      002837 18                    2332 	.db #0x18	; 24
      002838 0C                    2333 	.db #0x0c	; 12
      002839 00                    2334 	.db #0x00	; 0
      00283A 00                    2335 	.db #0x00	; 0
      00283B 00                    2336 	.db #0x00	; 0
      00283C 00                    2337 	.db #0x00	; 0
      00283D 00                    2338 	.db #0x00	; 0
      00283E 00                    2339 	.db #0x00	; 0
      00283F 00                    2340 	.db #0x00	; 0
      002840 00                    2341 	.db #0x00	; 0
      002841 66                    2342 	.db #0x66	; 102	'f'
      002842 66                    2343 	.db #0x66	; 102	'f'
      002843 66                    2344 	.db #0x66	; 102	'f'
      002844 3E                    2345 	.db #0x3e	; 62
      002845 06                    2346 	.db #0x06	; 6
      002846 03                    2347 	.db #0x03	; 3
      002847 FE                    2348 	.db #0xfe	; 254
      002848 DB                    2349 	.db #0xdb	; 219
      002849 DB                    2350 	.db #0xdb	; 219
      00284A DE                    2351 	.db #0xde	; 222
      00284B D8                    2352 	.db #0xd8	; 216
      00284C D8                    2353 	.db #0xd8	; 216
      00284D D8                    2354 	.db #0xd8	; 216
      00284E 00                    2355 	.db #0x00	; 0
      00284F 00                    2356 	.db #0x00	; 0
      002850 00                    2357 	.db #0x00	; 0
      002851 00                    2358 	.db #0x00	; 0
      002852 18                    2359 	.db #0x18	; 24
      002853 18                    2360 	.db #0x18	; 24
      002854 00                    2361 	.db #0x00	; 0
      002855 00                    2362 	.db #0x00	; 0
      002856 00                    2363 	.db #0x00	; 0
      002857 00                    2364 	.db #0x00	; 0
      002858 00                    2365 	.db #0x00	; 0
      002859 00                    2366 	.db #0x00	; 0
      00285A 00                    2367 	.db #0x00	; 0
      00285B 00                    2368 	.db #0x00	; 0
      00285C 18                    2369 	.db #0x18	; 24
      00285D 30                    2370 	.db #0x30	; 48	'0'
      00285E 1E                    2371 	.db #0x1e	; 30
      00285F 08                    2372 	.db #0x08	; 8
      002860 0C                    2373 	.db #0x0c	; 12
      002861 08                    2374 	.db #0x08	; 8
      002862 1C                    2375 	.db #0x1c	; 28
      002863 00                    2376 	.db #0x00	; 0
      002864 00                    2377 	.db #0x00	; 0
      002865 00                    2378 	.db #0x00	; 0
      002866 00                    2379 	.db #0x00	; 0
      002867 1C                    2380 	.db #0x1c	; 28
      002868 36                    2381 	.db #0x36	; 54	'6'
      002869 36                    2382 	.db #0x36	; 54	'6'
      00286A 1C                    2383 	.db #0x1c	; 28
      00286B 00                    2384 	.db #0x00	; 0
      00286C 00                    2385 	.db #0x00	; 0
      00286D 00                    2386 	.db #0x00	; 0
      00286E 00                    2387 	.db #0x00	; 0
      00286F 00                    2388 	.db #0x00	; 0
      002870 33                    2389 	.db #0x33	; 51	'3'
      002871 66                    2390 	.db #0x66	; 102	'f'
      002872 CC                    2391 	.db #0xcc	; 204
      002873 66                    2392 	.db #0x66	; 102	'f'
      002874 33                    2393 	.db #0x33	; 51	'3'
      002875 00                    2394 	.db #0x00	; 0
      002876 00                    2395 	.db #0x00	; 0
      002877 C3                    2396 	.db #0xc3	; 195
      002878 63                    2397 	.db #0x63	; 99	'c'
      002879 33                    2398 	.db #0x33	; 51	'3'
      00287A BD                    2399 	.db #0xbd	; 189
      00287B EC                    2400 	.db #0xec	; 236
      00287C F6                    2401 	.db #0xf6	; 246
      00287D F3                    2402 	.db #0xf3	; 243
      00287E 03                    2403 	.db #0x03	; 3
      00287F C3                    2404 	.db #0xc3	; 195
      002880 63                    2405 	.db #0x63	; 99	'c'
      002881 33                    2406 	.db #0x33	; 51	'3'
      002882 7B                    2407 	.db #0x7b	; 123
      002883 CC                    2408 	.db #0xcc	; 204
      002884 66                    2409 	.db #0x66	; 102	'f'
      002885 33                    2410 	.db #0x33	; 51	'3'
      002886 F0                    2411 	.db #0xf0	; 240
      002887 03                    2412 	.db #0x03	; 3
      002888 C4                    2413 	.db #0xc4	; 196
      002889 63                    2414 	.db #0x63	; 99	'c'
      00288A B4                    2415 	.db #0xb4	; 180
      00288B DB                    2416 	.db #0xdb	; 219
      00288C AC                    2417 	.db #0xac	; 172
      00288D E6                    2418 	.db #0xe6	; 230
      00288E 80                    2419 	.db #0x80	; 128
      00288F 0C                    2420 	.db #0x0c	; 12
      002890 00                    2421 	.db #0x00	; 0
      002891 0C                    2422 	.db #0x0c	; 12
      002892 06                    2423 	.db #0x06	; 6
      002893 03                    2424 	.db #0x03	; 3
      002894 33                    2425 	.db #0x33	; 51	'3'
      002895 1E                    2426 	.db #0x1e	; 30
      002896 00                    2427 	.db #0x00	; 0
      002897 07                    2428 	.db #0x07	; 7
      002898 00                    2429 	.db #0x00	; 0
      002899 1C                    2430 	.db #0x1c	; 28
      00289A 36                    2431 	.db #0x36	; 54	'6'
      00289B 63                    2432 	.db #0x63	; 99	'c'
      00289C 7F                    2433 	.db #0x7f	; 127
      00289D 63                    2434 	.db #0x63	; 99	'c'
      00289E 00                    2435 	.db #0x00	; 0
      00289F 70                    2436 	.db #0x70	; 112	'p'
      0028A0 00                    2437 	.db #0x00	; 0
      0028A1 1C                    2438 	.db #0x1c	; 28
      0028A2 36                    2439 	.db #0x36	; 54	'6'
      0028A3 63                    2440 	.db #0x63	; 99	'c'
      0028A4 7F                    2441 	.db #0x7f	; 127
      0028A5 63                    2442 	.db #0x63	; 99	'c'
      0028A6 00                    2443 	.db #0x00	; 0
      0028A7 1C                    2444 	.db #0x1c	; 28
      0028A8 36                    2445 	.db #0x36	; 54	'6'
      0028A9 00                    2446 	.db #0x00	; 0
      0028AA 3E                    2447 	.db #0x3e	; 62
      0028AB 63                    2448 	.db #0x63	; 99	'c'
      0028AC 7F                    2449 	.db #0x7f	; 127
      0028AD 63                    2450 	.db #0x63	; 99	'c'
      0028AE 00                    2451 	.db #0x00	; 0
      0028AF 6E                    2452 	.db #0x6e	; 110	'n'
      0028B0 3B                    2453 	.db #0x3b	; 59
      0028B1 00                    2454 	.db #0x00	; 0
      0028B2 3E                    2455 	.db #0x3e	; 62
      0028B3 63                    2456 	.db #0x63	; 99	'c'
      0028B4 7F                    2457 	.db #0x7f	; 127
      0028B5 63                    2458 	.db #0x63	; 99	'c'
      0028B6 00                    2459 	.db #0x00	; 0
      0028B7 63                    2460 	.db #0x63	; 99	'c'
      0028B8 1C                    2461 	.db #0x1c	; 28
      0028B9 36                    2462 	.db #0x36	; 54	'6'
      0028BA 63                    2463 	.db #0x63	; 99	'c'
      0028BB 7F                    2464 	.db #0x7f	; 127
      0028BC 63                    2465 	.db #0x63	; 99	'c'
      0028BD 63                    2466 	.db #0x63	; 99	'c'
      0028BE 00                    2467 	.db #0x00	; 0
      0028BF 0C                    2468 	.db #0x0c	; 12
      0028C0 0C                    2469 	.db #0x0c	; 12
      0028C1 00                    2470 	.db #0x00	; 0
      0028C2 1E                    2471 	.db #0x1e	; 30
      0028C3 33                    2472 	.db #0x33	; 51	'3'
      0028C4 3F                    2473 	.db #0x3f	; 63
      0028C5 33                    2474 	.db #0x33	; 51	'3'
      0028C6 00                    2475 	.db #0x00	; 0
      0028C7 7C                    2476 	.db #0x7c	; 124
      0028C8 36                    2477 	.db #0x36	; 54	'6'
      0028C9 33                    2478 	.db #0x33	; 51	'3'
      0028CA 7F                    2479 	.db #0x7f	; 127
      0028CB 33                    2480 	.db #0x33	; 51	'3'
      0028CC 33                    2481 	.db #0x33	; 51	'3'
      0028CD 73                    2482 	.db #0x73	; 115	's'
      0028CE 00                    2483 	.db #0x00	; 0
      0028CF 1E                    2484 	.db #0x1e	; 30
      0028D0 33                    2485 	.db #0x33	; 51	'3'
      0028D1 03                    2486 	.db #0x03	; 3
      0028D2 33                    2487 	.db #0x33	; 51	'3'
      0028D3 1E                    2488 	.db #0x1e	; 30
      0028D4 18                    2489 	.db #0x18	; 24
      0028D5 30                    2490 	.db #0x30	; 48	'0'
      0028D6 1E                    2491 	.db #0x1e	; 30
      0028D7 07                    2492 	.db #0x07	; 7
      0028D8 00                    2493 	.db #0x00	; 0
      0028D9 3F                    2494 	.db #0x3f	; 63
      0028DA 06                    2495 	.db #0x06	; 6
      0028DB 1E                    2496 	.db #0x1e	; 30
      0028DC 06                    2497 	.db #0x06	; 6
      0028DD 3F                    2498 	.db #0x3f	; 63
      0028DE 00                    2499 	.db #0x00	; 0
      0028DF 38                    2500 	.db #0x38	; 56	'8'
      0028E0 00                    2501 	.db #0x00	; 0
      0028E1 3F                    2502 	.db #0x3f	; 63
      0028E2 06                    2503 	.db #0x06	; 6
      0028E3 1E                    2504 	.db #0x1e	; 30
      0028E4 06                    2505 	.db #0x06	; 6
      0028E5 3F                    2506 	.db #0x3f	; 63
      0028E6 00                    2507 	.db #0x00	; 0
      0028E7 0C                    2508 	.db #0x0c	; 12
      0028E8 12                    2509 	.db #0x12	; 18
      0028E9 3F                    2510 	.db #0x3f	; 63
      0028EA 06                    2511 	.db #0x06	; 6
      0028EB 1E                    2512 	.db #0x1e	; 30
      0028EC 06                    2513 	.db #0x06	; 6
      0028ED 3F                    2514 	.db #0x3f	; 63
      0028EE 00                    2515 	.db #0x00	; 0
      0028EF 36                    2516 	.db #0x36	; 54	'6'
      0028F0 00                    2517 	.db #0x00	; 0
      0028F1 3F                    2518 	.db #0x3f	; 63
      0028F2 06                    2519 	.db #0x06	; 6
      0028F3 1E                    2520 	.db #0x1e	; 30
      0028F4 06                    2521 	.db #0x06	; 6
      0028F5 3F                    2522 	.db #0x3f	; 63
      0028F6 00                    2523 	.db #0x00	; 0
      0028F7 07                    2524 	.db #0x07	; 7
      0028F8 00                    2525 	.db #0x00	; 0
      0028F9 1E                    2526 	.db #0x1e	; 30
      0028FA 0C                    2527 	.db #0x0c	; 12
      0028FB 0C                    2528 	.db #0x0c	; 12
      0028FC 0C                    2529 	.db #0x0c	; 12
      0028FD 1E                    2530 	.db #0x1e	; 30
      0028FE 00                    2531 	.db #0x00	; 0
      0028FF 38                    2532 	.db #0x38	; 56	'8'
      002900 00                    2533 	.db #0x00	; 0
      002901 1E                    2534 	.db #0x1e	; 30
      002902 0C                    2535 	.db #0x0c	; 12
      002903 0C                    2536 	.db #0x0c	; 12
      002904 0C                    2537 	.db #0x0c	; 12
      002905 1E                    2538 	.db #0x1e	; 30
      002906 00                    2539 	.db #0x00	; 0
      002907 0C                    2540 	.db #0x0c	; 12
      002908 12                    2541 	.db #0x12	; 18
      002909 00                    2542 	.db #0x00	; 0
      00290A 1E                    2543 	.db #0x1e	; 30
      00290B 0C                    2544 	.db #0x0c	; 12
      00290C 0C                    2545 	.db #0x0c	; 12
      00290D 1E                    2546 	.db #0x1e	; 30
      00290E 00                    2547 	.db #0x00	; 0
      00290F 33                    2548 	.db #0x33	; 51	'3'
      002910 00                    2549 	.db #0x00	; 0
      002911 1E                    2550 	.db #0x1e	; 30
      002912 0C                    2551 	.db #0x0c	; 12
      002913 0C                    2552 	.db #0x0c	; 12
      002914 0C                    2553 	.db #0x0c	; 12
      002915 1E                    2554 	.db #0x1e	; 30
      002916 00                    2555 	.db #0x00	; 0
      002917 3F                    2556 	.db #0x3f	; 63
      002918 66                    2557 	.db #0x66	; 102	'f'
      002919 6F                    2558 	.db #0x6f	; 111	'o'
      00291A 6F                    2559 	.db #0x6f	; 111	'o'
      00291B 66                    2560 	.db #0x66	; 102	'f'
      00291C 66                    2561 	.db #0x66	; 102	'f'
      00291D 3F                    2562 	.db #0x3f	; 63
      00291E 00                    2563 	.db #0x00	; 0
      00291F 3F                    2564 	.db #0x3f	; 63
      002920 00                    2565 	.db #0x00	; 0
      002921 33                    2566 	.db #0x33	; 51	'3'
      002922 37                    2567 	.db #0x37	; 55	'7'
      002923 3F                    2568 	.db #0x3f	; 63
      002924 3B                    2569 	.db #0x3b	; 59
      002925 33                    2570 	.db #0x33	; 51	'3'
      002926 00                    2571 	.db #0x00	; 0
      002927 0E                    2572 	.db #0x0e	; 14
      002928 00                    2573 	.db #0x00	; 0
      002929 18                    2574 	.db #0x18	; 24
      00292A 3C                    2575 	.db #0x3c	; 60
      00292B 66                    2576 	.db #0x66	; 102	'f'
      00292C 3C                    2577 	.db #0x3c	; 60
      00292D 18                    2578 	.db #0x18	; 24
      00292E 00                    2579 	.db #0x00	; 0
      00292F 70                    2580 	.db #0x70	; 112	'p'
      002930 00                    2581 	.db #0x00	; 0
      002931 18                    2582 	.db #0x18	; 24
      002932 3C                    2583 	.db #0x3c	; 60
      002933 66                    2584 	.db #0x66	; 102	'f'
      002934 3C                    2585 	.db #0x3c	; 60
      002935 18                    2586 	.db #0x18	; 24
      002936 00                    2587 	.db #0x00	; 0
      002937 3C                    2588 	.db #0x3c	; 60
      002938 66                    2589 	.db #0x66	; 102	'f'
      002939 18                    2590 	.db #0x18	; 24
      00293A 3C                    2591 	.db #0x3c	; 60
      00293B 66                    2592 	.db #0x66	; 102	'f'
      00293C 3C                    2593 	.db #0x3c	; 60
      00293D 18                    2594 	.db #0x18	; 24
      00293E 00                    2595 	.db #0x00	; 0
      00293F 6E                    2596 	.db #0x6e	; 110	'n'
      002940 3B                    2597 	.db #0x3b	; 59
      002941 00                    2598 	.db #0x00	; 0
      002942 3E                    2599 	.db #0x3e	; 62
      002943 63                    2600 	.db #0x63	; 99	'c'
      002944 63                    2601 	.db #0x63	; 99	'c'
      002945 3E                    2602 	.db #0x3e	; 62
      002946 00                    2603 	.db #0x00	; 0
      002947 C3                    2604 	.db #0xc3	; 195
      002948 18                    2605 	.db #0x18	; 24
      002949 3C                    2606 	.db #0x3c	; 60
      00294A 66                    2607 	.db #0x66	; 102	'f'
      00294B 66                    2608 	.db #0x66	; 102	'f'
      00294C 3C                    2609 	.db #0x3c	; 60
      00294D 18                    2610 	.db #0x18	; 24
      00294E 00                    2611 	.db #0x00	; 0
      00294F 00                    2612 	.db #0x00	; 0
      002950 36                    2613 	.db #0x36	; 54	'6'
      002951 1C                    2614 	.db #0x1c	; 28
      002952 08                    2615 	.db #0x08	; 8
      002953 1C                    2616 	.db #0x1c	; 28
      002954 36                    2617 	.db #0x36	; 54	'6'
      002955 00                    2618 	.db #0x00	; 0
      002956 00                    2619 	.db #0x00	; 0
      002957 5C                    2620 	.db #0x5c	; 92
      002958 36                    2621 	.db #0x36	; 54	'6'
      002959 73                    2622 	.db #0x73	; 115	's'
      00295A 7B                    2623 	.db #0x7b	; 123
      00295B 6F                    2624 	.db #0x6f	; 111	'o'
      00295C 36                    2625 	.db #0x36	; 54	'6'
      00295D 1D                    2626 	.db #0x1d	; 29
      00295E 00                    2627 	.db #0x00	; 0
      00295F 0E                    2628 	.db #0x0e	; 14
      002960 00                    2629 	.db #0x00	; 0
      002961 66                    2630 	.db #0x66	; 102	'f'
      002962 66                    2631 	.db #0x66	; 102	'f'
      002963 66                    2632 	.db #0x66	; 102	'f'
      002964 66                    2633 	.db #0x66	; 102	'f'
      002965 3C                    2634 	.db #0x3c	; 60
      002966 00                    2635 	.db #0x00	; 0
      002967 70                    2636 	.db #0x70	; 112	'p'
      002968 00                    2637 	.db #0x00	; 0
      002969 66                    2638 	.db #0x66	; 102	'f'
      00296A 66                    2639 	.db #0x66	; 102	'f'
      00296B 66                    2640 	.db #0x66	; 102	'f'
      00296C 66                    2641 	.db #0x66	; 102	'f'
      00296D 3C                    2642 	.db #0x3c	; 60
      00296E 00                    2643 	.db #0x00	; 0
      00296F 3C                    2644 	.db #0x3c	; 60
      002970 66                    2645 	.db #0x66	; 102	'f'
      002971 00                    2646 	.db #0x00	; 0
      002972 66                    2647 	.db #0x66	; 102	'f'
      002973 66                    2648 	.db #0x66	; 102	'f'
      002974 66                    2649 	.db #0x66	; 102	'f'
      002975 3C                    2650 	.db #0x3c	; 60
      002976 00                    2651 	.db #0x00	; 0
      002977 33                    2652 	.db #0x33	; 51	'3'
      002978 00                    2653 	.db #0x00	; 0
      002979 33                    2654 	.db #0x33	; 51	'3'
      00297A 33                    2655 	.db #0x33	; 51	'3'
      00297B 33                    2656 	.db #0x33	; 51	'3'
      00297C 33                    2657 	.db #0x33	; 51	'3'
      00297D 1E                    2658 	.db #0x1e	; 30
      00297E 00                    2659 	.db #0x00	; 0
      00297F 70                    2660 	.db #0x70	; 112	'p'
      002980 00                    2661 	.db #0x00	; 0
      002981 66                    2662 	.db #0x66	; 102	'f'
      002982 66                    2663 	.db #0x66	; 102	'f'
      002983 3C                    2664 	.db #0x3c	; 60
      002984 18                    2665 	.db #0x18	; 24
      002985 18                    2666 	.db #0x18	; 24
      002986 00                    2667 	.db #0x00	; 0
      002987 0F                    2668 	.db #0x0f	; 15
      002988 06                    2669 	.db #0x06	; 6
      002989 3E                    2670 	.db #0x3e	; 62
      00298A 66                    2671 	.db #0x66	; 102	'f'
      00298B 66                    2672 	.db #0x66	; 102	'f'
      00298C 3E                    2673 	.db #0x3e	; 62
      00298D 06                    2674 	.db #0x06	; 6
      00298E 0F                    2675 	.db #0x0f	; 15
      00298F 00                    2676 	.db #0x00	; 0
      002990 1E                    2677 	.db #0x1e	; 30
      002991 33                    2678 	.db #0x33	; 51	'3'
      002992 1F                    2679 	.db #0x1f	; 31
      002993 33                    2680 	.db #0x33	; 51	'3'
      002994 1F                    2681 	.db #0x1f	; 31
      002995 03                    2682 	.db #0x03	; 3
      002996 03                    2683 	.db #0x03	; 3
      002997 07                    2684 	.db #0x07	; 7
      002998 00                    2685 	.db #0x00	; 0
      002999 1E                    2686 	.db #0x1e	; 30
      00299A 30                    2687 	.db #0x30	; 48	'0'
      00299B 3E                    2688 	.db #0x3e	; 62
      00299C 33                    2689 	.db #0x33	; 51	'3'
      00299D 7E                    2690 	.db #0x7e	; 126
      00299E 00                    2691 	.db #0x00	; 0
      00299F 38                    2692 	.db #0x38	; 56	'8'
      0029A0 00                    2693 	.db #0x00	; 0
      0029A1 1E                    2694 	.db #0x1e	; 30
      0029A2 30                    2695 	.db #0x30	; 48	'0'
      0029A3 3E                    2696 	.db #0x3e	; 62
      0029A4 33                    2697 	.db #0x33	; 51	'3'
      0029A5 7E                    2698 	.db #0x7e	; 126
      0029A6 00                    2699 	.db #0x00	; 0
      0029A7 7E                    2700 	.db #0x7e	; 126
      0029A8 C3                    2701 	.db #0xc3	; 195
      0029A9 3C                    2702 	.db #0x3c	; 60
      0029AA 60                    2703 	.db #0x60	; 96
      0029AB 7C                    2704 	.db #0x7c	; 124
      0029AC 66                    2705 	.db #0x66	; 102	'f'
      0029AD FC                    2706 	.db #0xfc	; 252
      0029AE 00                    2707 	.db #0x00	; 0
      0029AF 6E                    2708 	.db #0x6e	; 110	'n'
      0029B0 3B                    2709 	.db #0x3b	; 59
      0029B1 1E                    2710 	.db #0x1e	; 30
      0029B2 30                    2711 	.db #0x30	; 48	'0'
      0029B3 3E                    2712 	.db #0x3e	; 62
      0029B4 33                    2713 	.db #0x33	; 51	'3'
      0029B5 7E                    2714 	.db #0x7e	; 126
      0029B6 00                    2715 	.db #0x00	; 0
      0029B7 33                    2716 	.db #0x33	; 51	'3'
      0029B8 00                    2717 	.db #0x00	; 0
      0029B9 1E                    2718 	.db #0x1e	; 30
      0029BA 30                    2719 	.db #0x30	; 48	'0'
      0029BB 3E                    2720 	.db #0x3e	; 62
      0029BC 33                    2721 	.db #0x33	; 51	'3'
      0029BD 7E                    2722 	.db #0x7e	; 126
      0029BE 00                    2723 	.db #0x00	; 0
      0029BF 0C                    2724 	.db #0x0c	; 12
      0029C0 0C                    2725 	.db #0x0c	; 12
      0029C1 1E                    2726 	.db #0x1e	; 30
      0029C2 30                    2727 	.db #0x30	; 48	'0'
      0029C3 3E                    2728 	.db #0x3e	; 62
      0029C4 33                    2729 	.db #0x33	; 51	'3'
      0029C5 7E                    2730 	.db #0x7e	; 126
      0029C6 00                    2731 	.db #0x00	; 0
      0029C7 00                    2732 	.db #0x00	; 0
      0029C8 00                    2733 	.db #0x00	; 0
      0029C9 FE                    2734 	.db #0xfe	; 254
      0029CA 30                    2735 	.db #0x30	; 48	'0'
      0029CB FE                    2736 	.db #0xfe	; 254
      0029CC 33                    2737 	.db #0x33	; 51	'3'
      0029CD FE                    2738 	.db #0xfe	; 254
      0029CE 00                    2739 	.db #0x00	; 0
      0029CF 00                    2740 	.db #0x00	; 0
      0029D0 00                    2741 	.db #0x00	; 0
      0029D1 1E                    2742 	.db #0x1e	; 30
      0029D2 03                    2743 	.db #0x03	; 3
      0029D3 03                    2744 	.db #0x03	; 3
      0029D4 1E                    2745 	.db #0x1e	; 30
      0029D5 30                    2746 	.db #0x30	; 48	'0'
      0029D6 1C                    2747 	.db #0x1c	; 28
      0029D7 07                    2748 	.db #0x07	; 7
      0029D8 00                    2749 	.db #0x00	; 0
      0029D9 1E                    2750 	.db #0x1e	; 30
      0029DA 33                    2751 	.db #0x33	; 51	'3'
      0029DB 3F                    2752 	.db #0x3f	; 63
      0029DC 03                    2753 	.db #0x03	; 3
      0029DD 1E                    2754 	.db #0x1e	; 30
      0029DE 00                    2755 	.db #0x00	; 0
      0029DF 38                    2756 	.db #0x38	; 56	'8'
      0029E0 00                    2757 	.db #0x00	; 0
      0029E1 1E                    2758 	.db #0x1e	; 30
      0029E2 33                    2759 	.db #0x33	; 51	'3'
      0029E3 3F                    2760 	.db #0x3f	; 63
      0029E4 03                    2761 	.db #0x03	; 3
      0029E5 1E                    2762 	.db #0x1e	; 30
      0029E6 00                    2763 	.db #0x00	; 0
      0029E7 7E                    2764 	.db #0x7e	; 126
      0029E8 C3                    2765 	.db #0xc3	; 195
      0029E9 3C                    2766 	.db #0x3c	; 60
      0029EA 66                    2767 	.db #0x66	; 102	'f'
      0029EB 7E                    2768 	.db #0x7e	; 126
      0029EC 06                    2769 	.db #0x06	; 6
      0029ED 3C                    2770 	.db #0x3c	; 60
      0029EE 00                    2771 	.db #0x00	; 0
      0029EF 33                    2772 	.db #0x33	; 51	'3'
      0029F0 00                    2773 	.db #0x00	; 0
      0029F1 1E                    2774 	.db #0x1e	; 30
      0029F2 33                    2775 	.db #0x33	; 51	'3'
      0029F3 3F                    2776 	.db #0x3f	; 63
      0029F4 03                    2777 	.db #0x03	; 3
      0029F5 1E                    2778 	.db #0x1e	; 30
      0029F6 00                    2779 	.db #0x00	; 0
      0029F7 07                    2780 	.db #0x07	; 7
      0029F8 00                    2781 	.db #0x00	; 0
      0029F9 0E                    2782 	.db #0x0e	; 14
      0029FA 0C                    2783 	.db #0x0c	; 12
      0029FB 0C                    2784 	.db #0x0c	; 12
      0029FC 0C                    2785 	.db #0x0c	; 12
      0029FD 1E                    2786 	.db #0x1e	; 30
      0029FE 00                    2787 	.db #0x00	; 0
      0029FF 1C                    2788 	.db #0x1c	; 28
      002A00 00                    2789 	.db #0x00	; 0
      002A01 0E                    2790 	.db #0x0e	; 14
      002A02 0C                    2791 	.db #0x0c	; 12
      002A03 0C                    2792 	.db #0x0c	; 12
      002A04 0C                    2793 	.db #0x0c	; 12
      002A05 1E                    2794 	.db #0x1e	; 30
      002A06 00                    2795 	.db #0x00	; 0
      002A07 3E                    2796 	.db #0x3e	; 62
      002A08 63                    2797 	.db #0x63	; 99	'c'
      002A09 1C                    2798 	.db #0x1c	; 28
      002A0A 18                    2799 	.db #0x18	; 24
      002A0B 18                    2800 	.db #0x18	; 24
      002A0C 18                    2801 	.db #0x18	; 24
      002A0D 3C                    2802 	.db #0x3c	; 60
      002A0E 00                    2803 	.db #0x00	; 0
      002A0F 33                    2804 	.db #0x33	; 51	'3'
      002A10 00                    2805 	.db #0x00	; 0
      002A11 0E                    2806 	.db #0x0e	; 14
      002A12 0C                    2807 	.db #0x0c	; 12
      002A13 0C                    2808 	.db #0x0c	; 12
      002A14 0C                    2809 	.db #0x0c	; 12
      002A15 1E                    2810 	.db #0x1e	; 30
      002A16 00                    2811 	.db #0x00	; 0
      002A17 1B                    2812 	.db #0x1b	; 27
      002A18 0E                    2813 	.db #0x0e	; 14
      002A19 1B                    2814 	.db #0x1b	; 27
      002A1A 30                    2815 	.db #0x30	; 48	'0'
      002A1B 3E                    2816 	.db #0x3e	; 62
      002A1C 33                    2817 	.db #0x33	; 51	'3'
      002A1D 1E                    2818 	.db #0x1e	; 30
      002A1E 00                    2819 	.db #0x00	; 0
      002A1F 00                    2820 	.db #0x00	; 0
      002A20 1F                    2821 	.db #0x1f	; 31
      002A21 00                    2822 	.db #0x00	; 0
      002A22 1F                    2823 	.db #0x1f	; 31
      002A23 33                    2824 	.db #0x33	; 51	'3'
      002A24 33                    2825 	.db #0x33	; 51	'3'
      002A25 33                    2826 	.db #0x33	; 51	'3'
      002A26 00                    2827 	.db #0x00	; 0
      002A27 00                    2828 	.db #0x00	; 0
      002A28 07                    2829 	.db #0x07	; 7
      002A29 00                    2830 	.db #0x00	; 0
      002A2A 1E                    2831 	.db #0x1e	; 30
      002A2B 33                    2832 	.db #0x33	; 51	'3'
      002A2C 33                    2833 	.db #0x33	; 51	'3'
      002A2D 1E                    2834 	.db #0x1e	; 30
      002A2E 00                    2835 	.db #0x00	; 0
      002A2F 00                    2836 	.db #0x00	; 0
      002A30 38                    2837 	.db #0x38	; 56	'8'
      002A31 00                    2838 	.db #0x00	; 0
      002A32 1E                    2839 	.db #0x1e	; 30
      002A33 33                    2840 	.db #0x33	; 51	'3'
      002A34 33                    2841 	.db #0x33	; 51	'3'
      002A35 1E                    2842 	.db #0x1e	; 30
      002A36 00                    2843 	.db #0x00	; 0
      002A37 1E                    2844 	.db #0x1e	; 30
      002A38 33                    2845 	.db #0x33	; 51	'3'
      002A39 00                    2846 	.db #0x00	; 0
      002A3A 1E                    2847 	.db #0x1e	; 30
      002A3B 33                    2848 	.db #0x33	; 51	'3'
      002A3C 33                    2849 	.db #0x33	; 51	'3'
      002A3D 1E                    2850 	.db #0x1e	; 30
      002A3E 00                    2851 	.db #0x00	; 0
      002A3F 6E                    2852 	.db #0x6e	; 110	'n'
      002A40 3B                    2853 	.db #0x3b	; 59
      002A41 00                    2854 	.db #0x00	; 0
      002A42 1E                    2855 	.db #0x1e	; 30
      002A43 33                    2856 	.db #0x33	; 51	'3'
      002A44 33                    2857 	.db #0x33	; 51	'3'
      002A45 1E                    2858 	.db #0x1e	; 30
      002A46 00                    2859 	.db #0x00	; 0
      002A47 00                    2860 	.db #0x00	; 0
      002A48 33                    2861 	.db #0x33	; 51	'3'
      002A49 00                    2862 	.db #0x00	; 0
      002A4A 1E                    2863 	.db #0x1e	; 30
      002A4B 33                    2864 	.db #0x33	; 51	'3'
      002A4C 33                    2865 	.db #0x33	; 51	'3'
      002A4D 1E                    2866 	.db #0x1e	; 30
      002A4E 00                    2867 	.db #0x00	; 0
      002A4F 18                    2868 	.db #0x18	; 24
      002A50 18                    2869 	.db #0x18	; 24
      002A51 00                    2870 	.db #0x00	; 0
      002A52 7E                    2871 	.db #0x7e	; 126
      002A53 00                    2872 	.db #0x00	; 0
      002A54 18                    2873 	.db #0x18	; 24
      002A55 18                    2874 	.db #0x18	; 24
      002A56 00                    2875 	.db #0x00	; 0
      002A57 00                    2876 	.db #0x00	; 0
      002A58 60                    2877 	.db #0x60	; 96
      002A59 3C                    2878 	.db #0x3c	; 60
      002A5A 76                    2879 	.db #0x76	; 118	'v'
      002A5B 7E                    2880 	.db #0x7e	; 126
      002A5C 6E                    2881 	.db #0x6e	; 110	'n'
      002A5D 3C                    2882 	.db #0x3c	; 60
      002A5E 06                    2883 	.db #0x06	; 6
      002A5F 00                    2884 	.db #0x00	; 0
      002A60 07                    2885 	.db #0x07	; 7
      002A61 00                    2886 	.db #0x00	; 0
      002A62 33                    2887 	.db #0x33	; 51	'3'
      002A63 33                    2888 	.db #0x33	; 51	'3'
      002A64 33                    2889 	.db #0x33	; 51	'3'
      002A65 7E                    2890 	.db #0x7e	; 126
      002A66 00                    2891 	.db #0x00	; 0
      002A67 00                    2892 	.db #0x00	; 0
      002A68 38                    2893 	.db #0x38	; 56	'8'
      002A69 00                    2894 	.db #0x00	; 0
      002A6A 33                    2895 	.db #0x33	; 51	'3'
      002A6B 33                    2896 	.db #0x33	; 51	'3'
      002A6C 33                    2897 	.db #0x33	; 51	'3'
      002A6D 7E                    2898 	.db #0x7e	; 126
      002A6E 00                    2899 	.db #0x00	; 0
      002A6F 1E                    2900 	.db #0x1e	; 30
      002A70 33                    2901 	.db #0x33	; 51	'3'
      002A71 00                    2902 	.db #0x00	; 0
      002A72 33                    2903 	.db #0x33	; 51	'3'
      002A73 33                    2904 	.db #0x33	; 51	'3'
      002A74 33                    2905 	.db #0x33	; 51	'3'
      002A75 7E                    2906 	.db #0x7e	; 126
      002A76 00                    2907 	.db #0x00	; 0
      002A77 00                    2908 	.db #0x00	; 0
      002A78 33                    2909 	.db #0x33	; 51	'3'
      002A79 00                    2910 	.db #0x00	; 0
      002A7A 33                    2911 	.db #0x33	; 51	'3'
      002A7B 33                    2912 	.db #0x33	; 51	'3'
      002A7C 33                    2913 	.db #0x33	; 51	'3'
      002A7D 7E                    2914 	.db #0x7e	; 126
      002A7E 00                    2915 	.db #0x00	; 0
      002A7F 00                    2916 	.db #0x00	; 0
      002A80 38                    2917 	.db #0x38	; 56	'8'
      002A81 00                    2918 	.db #0x00	; 0
      002A82 33                    2919 	.db #0x33	; 51	'3'
      002A83 33                    2920 	.db #0x33	; 51	'3'
      002A84 3E                    2921 	.db #0x3e	; 62
      002A85 30                    2922 	.db #0x30	; 48	'0'
      002A86 1F                    2923 	.db #0x1f	; 31
      002A87 00                    2924 	.db #0x00	; 0
      002A88 00                    2925 	.db #0x00	; 0
      002A89 06                    2926 	.db #0x06	; 6
      002A8A 3E                    2927 	.db #0x3e	; 62
      002A8B 66                    2928 	.db #0x66	; 102	'f'
      002A8C 3E                    2929 	.db #0x3e	; 62
      002A8D 06                    2930 	.db #0x06	; 6
      002A8E 00                    2931 	.db #0x00	; 0
      002A8F 00                    2932 	.db #0x00	; 0
      002A90 33                    2933 	.db #0x33	; 51	'3'
      002A91 00                    2934 	.db #0x00	; 0
      002A92 33                    2935 	.db #0x33	; 51	'3'
      002A93 33                    2936 	.db #0x33	; 51	'3'
      002A94 3E                    2937 	.db #0x3e	; 62
      002A95 30                    2938 	.db #0x30	; 48	'0'
      002A96 1F                    2939 	.db #0x1f	; 31
      002A97                       2940 __xinit__msg:
      002A97 6E 22 80              2941 	.byte ___str_0, (___str_0 >> 8),#0x80
                                   2942 	.area CABS    (ABS,CODE)
