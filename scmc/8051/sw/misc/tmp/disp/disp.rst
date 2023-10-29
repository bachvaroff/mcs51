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
      000022                        299 __start__stack:
      000022                        300 	.ds	1
                                    301 
                                    302 ;--------------------------------------------------------
                                    303 ; indirectly addressable internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area ISEG    (DATA)
      000010                        306 _dcol::
      000010                        307 	.ds 8
      000018                        308 _ddata::
      000018                        309 	.ds 8
      000020                        310 _column::
      000020                        311 	.ds 1
      000021                        312 _OE::
      000021                        313 	.ds 1
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
                                    340 	.area HOME    (CODE)
                                    341 	.area GSINIT0 (CODE)
                                    342 	.area GSINIT1 (CODE)
                                    343 	.area GSINIT2 (CODE)
                                    344 	.area GSINIT3 (CODE)
                                    345 	.area GSINIT4 (CODE)
                                    346 	.area GSINIT5 (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.area GSFINAL (CODE)
                                    349 	.area CSEG    (CODE)
                                    350 ;--------------------------------------------------------
                                    351 ; interrupt vector 
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
      002000                        354 __interrupt_vect:
      002000 02 20 11         [24]  355 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  356 	reti
      002004                        357 	.ds	7
      00200B 02 21 16         [24]  358 	ljmp	_timer0_intr
                                    359 ;--------------------------------------------------------
                                    360 ; global & static initialisations
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.area GSFINAL (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.globl __sdcc_gsinit_startup
                                    367 	.globl __sdcc_program_startup
                                    368 	.globl __start__stack
                                    369 	.globl __mcs51_genXINIT
                                    370 	.globl __mcs51_genXRAMCLEAR
                                    371 	.globl __mcs51_genRAMCLEAR
                                    372 ;	disp.c:42: __idata const uint8_t dcol[8] = {
      00206A 78 10            [12]  373 	mov	r0,#_dcol
      00206C 76 01            [12]  374 	mov	@r0,#0x01
      00206E 78 11            [12]  375 	mov	r0,#(_dcol + 0x0001)
      002070 76 02            [12]  376 	mov	@r0,#0x02
      002072 78 12            [12]  377 	mov	r0,#(_dcol + 0x0002)
      002074 76 04            [12]  378 	mov	@r0,#0x04
      002076 78 13            [12]  379 	mov	r0,#(_dcol + 0x0003)
      002078 76 08            [12]  380 	mov	@r0,#0x08
      00207A 78 14            [12]  381 	mov	r0,#(_dcol + 0x0004)
      00207C 76 10            [12]  382 	mov	@r0,#0x10
      00207E 78 15            [12]  383 	mov	r0,#(_dcol + 0x0005)
      002080 76 20            [12]  384 	mov	@r0,#0x20
      002082 78 16            [12]  385 	mov	r0,#(_dcol + 0x0006)
      002084 76 40            [12]  386 	mov	@r0,#0x40
      002086 78 17            [12]  387 	mov	r0,#(_dcol + 0x0007)
      002088 76 80            [12]  388 	mov	@r0,#0x80
                                    389 	.area GSFINAL (CODE)
      00208A 02 20 0E         [24]  390 	ljmp	__sdcc_program_startup
                                    391 ;--------------------------------------------------------
                                    392 ; Home
                                    393 ;--------------------------------------------------------
                                    394 	.area HOME    (CODE)
                                    395 	.area HOME    (CODE)
      00200E                        396 __sdcc_program_startup:
      00200E 02 21 4E         [24]  397 	ljmp	_main
                                    398 ;	return from main will return to caller
                                    399 ;--------------------------------------------------------
                                    400 ; code
                                    401 ;--------------------------------------------------------
                                    402 	.area CSEG    (CODE)
                                    403 ;------------------------------------------------------------
                                    404 ;Allocation info for local variables in function 'putchar'
                                    405 ;------------------------------------------------------------
                                    406 ;c                         Allocated to registers 
                                    407 ;------------------------------------------------------------
                                    408 ;	disp.c:7: int putchar(int c) __naked {
                                    409 ;	-----------------------------------------
                                    410 ;	 function putchar
                                    411 ;	-----------------------------------------
      00208D                        412 _putchar:
                                    413 ;	naked function: no prologue.
                                    414 ;	disp.c:12: __endasm;
      00208D E5 82            [12]  415 	mov	a, dpl
      00208F 02 00 30         [24]  416 	ljmp	0x0030
                                    417 ;	disp.c:13: }
                                    418 ;	naked function: no epilogue.
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'getchar'
                                    421 ;------------------------------------------------------------
                                    422 ;	disp.c:15: int getchar(void) __naked {
                                    423 ;	-----------------------------------------
                                    424 ;	 function getchar
                                    425 ;	-----------------------------------------
      002092                        426 _getchar:
                                    427 ;	naked function: no prologue.
                                    428 ;	disp.c:21: __endasm;
      002092 12 00 32         [24]  429 	lcall	0x0032
      002095 F5 82            [12]  430 	mov	dpl, a
      002097 75 83 00         [24]  431 	mov	dph, #0
      00209A 22               [24]  432 	ret
                                    433 ;	disp.c:22: }
                                    434 ;	naked function: no epilogue.
                                    435 ;------------------------------------------------------------
                                    436 ;Allocation info for local variables in function 'init_gpo'
                                    437 ;------------------------------------------------------------
                                    438 ;	disp.c:59: void init_gpo(void) {
                                    439 ;	-----------------------------------------
                                    440 ;	 function init_gpo
                                    441 ;	-----------------------------------------
      00209B                        442 _init_gpo:
                           000007   443 	ar7 = 0x07
                           000006   444 	ar6 = 0x06
                           000005   445 	ar5 = 0x05
                           000004   446 	ar4 = 0x04
                           000003   447 	ar3 = 0x03
                           000002   448 	ar2 = 0x02
                           000001   449 	ar1 = 0x01
                           000000   450 	ar0 = 0x00
                                    451 ;	disp.c:60: P1_7 = 0;
                                    452 ;	assignBit
      00209B C2 97            [12]  453 	clr	_P1_7
                                    454 ;	disp.c:62: P2 = GPO_BASE_H;
      00209D 75 A0 F0         [24]  455 	mov	_P2,#0xf0
                                    456 ;	disp.c:64: CLEAR_GPO;
      0020A0 78 06            [12]  457 	mov	r0,#(_gpo + 0x0006)
      0020A2 74 FF            [12]  458 	mov	a,#0xff
      0020A4 F2               [24]  459 	movx	@r0,a
      0020A5 78 00            [12]  460 	mov	r0,#_gpo
      0020A7 E4               [12]  461 	clr	a
      0020A8 F2               [24]  462 	movx	@r0,a
      0020A9 78 01            [12]  463 	mov	r0,#(_gpo + 0x0001)
      0020AB F2               [24]  464 	movx	@r0,a
      0020AC 78 02            [12]  465 	mov	r0,#(_gpo + 0x0002)
      0020AE F2               [24]  466 	movx	@r0,a
      0020AF 78 03            [12]  467 	mov	r0,#(_gpo + 0x0003)
      0020B1 F2               [24]  468 	movx	@r0,a
      0020B2 78 04            [12]  469 	mov	r0,#(_gpo + 0x0004)
      0020B4 F2               [24]  470 	movx	@r0,a
      0020B5 78 05            [12]  471 	mov	r0,#(_gpo + 0x0005)
      0020B7 F2               [24]  472 	movx	@r0,a
                                    473 ;	disp.c:66: return;
                                    474 ;	disp.c:67: }
      0020B8 22               [24]  475 	ret
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'clear_gpo'
                                    478 ;------------------------------------------------------------
                                    479 ;	disp.c:69: void clear_gpo(void) {
                                    480 ;	-----------------------------------------
                                    481 ;	 function clear_gpo
                                    482 ;	-----------------------------------------
      0020B9                        483 _clear_gpo:
                                    484 ;	disp.c:70: CLEAR_GPO;
      0020B9 78 06            [12]  485 	mov	r0,#(_gpo + 0x0006)
      0020BB 74 FF            [12]  486 	mov	a,#0xff
      0020BD F2               [24]  487 	movx	@r0,a
      0020BE 78 00            [12]  488 	mov	r0,#_gpo
      0020C0 E4               [12]  489 	clr	a
      0020C1 F2               [24]  490 	movx	@r0,a
      0020C2 78 01            [12]  491 	mov	r0,#(_gpo + 0x0001)
      0020C4 F2               [24]  492 	movx	@r0,a
      0020C5 78 02            [12]  493 	mov	r0,#(_gpo + 0x0002)
      0020C7 F2               [24]  494 	movx	@r0,a
      0020C8 78 03            [12]  495 	mov	r0,#(_gpo + 0x0003)
      0020CA F2               [24]  496 	movx	@r0,a
      0020CB 78 04            [12]  497 	mov	r0,#(_gpo + 0x0004)
      0020CD F2               [24]  498 	movx	@r0,a
      0020CE 78 05            [12]  499 	mov	r0,#(_gpo + 0x0005)
      0020D0 F2               [24]  500 	movx	@r0,a
                                    501 ;	disp.c:72: return;
                                    502 ;	disp.c:73: }
      0020D1 22               [24]  503 	ret
                                    504 ;------------------------------------------------------------
                                    505 ;Allocation info for local variables in function 'init_intr'
                                    506 ;------------------------------------------------------------
                                    507 ;	disp.c:75: void init_intr(void) {
                                    508 ;	-----------------------------------------
                                    509 ;	 function init_intr
                                    510 ;	-----------------------------------------
      0020D2                        511 _init_intr:
                                    512 ;	disp.c:76: DIS_TR0;
                                    513 ;	assignBit
      0020D2 C2 8C            [12]  514 	clr	_TR0
                                    515 ;	disp.c:77: ET0 = 1;
                                    516 ;	assignBit
      0020D4 D2 A9            [12]  517 	setb	_ET0
                                    518 ;	disp.c:78: EA  = 1;
                                    519 ;	assignBit
      0020D6 D2 AF            [12]  520 	setb	_EA
                                    521 ;	disp.c:80: return;
                                    522 ;	disp.c:81: }
      0020D8 22               [24]  523 	ret
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'init_timer0'
                                    526 ;------------------------------------------------------------
                                    527 ;	disp.c:83: void init_timer0(void) {
                                    528 ;	-----------------------------------------
                                    529 ;	 function init_timer0
                                    530 ;	-----------------------------------------
      0020D9                        531 _init_timer0:
                                    532 ;	disp.c:84: DIS_TR0;
                                    533 ;	assignBit
      0020D9 C2 8C            [12]  534 	clr	_TR0
                                    535 ;	disp.c:85: TMOD = 0x01;
      0020DB 75 89 01         [24]  536 	mov	_TMOD,#0x01
                                    537 ;	disp.c:86: TH0 = 0xf8;
      0020DE 75 8C F8         [24]  538 	mov	_TH0,#0xf8
                                    539 ;	disp.c:87: TL0 = 0x00;
      0020E1 75 8A 00         [24]  540 	mov	_TL0,#0x00
                                    541 ;	disp.c:89: return;
                                    542 ;	disp.c:90: }
      0020E4 22               [24]  543 	ret
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'init_disp'
                                    546 ;------------------------------------------------------------
                                    547 ;	disp.c:92: void init_disp(void) {
                                    548 ;	-----------------------------------------
                                    549 ;	 function init_disp
                                    550 ;	-----------------------------------------
      0020E5                        551 _init_disp:
                                    552 ;	disp.c:93: gpo[4] = 0u;
      0020E5 78 04            [12]  553 	mov	r0,#(_gpo + 0x0004)
      0020E7 E4               [12]  554 	clr	a
      0020E8 F2               [24]  555 	movx	@r0,a
                                    556 ;	disp.c:94: gpo[5] = 0u;
      0020E9 78 05            [12]  557 	mov	r0,#(_gpo + 0x0005)
      0020EB F2               [24]  558 	movx	@r0,a
                                    559 ;	disp.c:95: OE = 0x0fu; /* 00_001111 */
      0020EC 78 21            [12]  560 	mov	r0,#_OE
      0020EE 76 0F            [12]  561 	mov	@r0,#0x0f
                                    562 ;	disp.c:96: gpo[GPO_OE] = OE; /* 00_001111 */
      0020F0 78 06            [12]  563 	mov	r0,#(_gpo + 0x0006)
      0020F2 74 0F            [12]  564 	mov	a,#0x0f
      0020F4 F2               [24]  565 	movx	@r0,a
                                    566 ;	disp.c:98: for (column = 0u; column < 8u; column++)
      0020F5 78 20            [12]  567 	mov	r0,#_column
      0020F7 76 00            [12]  568 	mov	@r0,#0x00
      0020F9                        569 00103$:
      0020F9 78 20            [12]  570 	mov	r0,#_column
      0020FB B6 08 00         [24]  571 	cjne	@r0,#0x08,00115$
      0020FE                        572 00115$:
      0020FE 50 11            [24]  573 	jnc	00101$
                                    574 ;	disp.c:99: ddata[column] = 0u;
      002100 78 20            [12]  575 	mov	r0,#_column
      002102 E6               [12]  576 	mov	a,@r0
      002103 24 18            [12]  577 	add	a,#_ddata
      002105 F8               [12]  578 	mov	r0,a
      002106 76 00            [12]  579 	mov	@r0,#0x00
                                    580 ;	disp.c:98: for (column = 0u; column < 8u; column++)
      002108 78 20            [12]  581 	mov	r0,#_column
      00210A E6               [12]  582 	mov	a,@r0
      00210B 78 20            [12]  583 	mov	r0,#_column
      00210D 04               [12]  584 	inc	a
      00210E F6               [12]  585 	mov	@r0,a
      00210F 80 E8            [24]  586 	sjmp	00103$
      002111                        587 00101$:
                                    588 ;	disp.c:101: column = 0u;
      002111 78 20            [12]  589 	mov	r0,#_column
      002113 76 00            [12]  590 	mov	@r0,#0x00
                                    591 ;	disp.c:103: return;
                                    592 ;	disp.c:104: }
      002115 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'timer0_intr'
                                    596 ;------------------------------------------------------------
                                    597 ;t                         Allocated to registers r7 
                                    598 ;------------------------------------------------------------
                                    599 ;	disp.c:106: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    600 ;	-----------------------------------------
                                    601 ;	 function timer0_intr
                                    602 ;	-----------------------------------------
      002116                        603 _timer0_intr:
                           00000F   604 	ar7 = 0x0f
                           00000E   605 	ar6 = 0x0e
                           00000D   606 	ar5 = 0x0d
                           00000C   607 	ar4 = 0x0c
                           00000B   608 	ar3 = 0x0b
                           00000A   609 	ar2 = 0x0a
                           000009   610 	ar1 = 0x09
                           000008   611 	ar0 = 0x08
      002116 C0 E0            [24]  612 	push	acc
      002118 C0 D0            [24]  613 	push	psw
      00211A 75 D0 08         [24]  614 	mov	psw,#0x08
                                    615 ;	disp.c:109: t = column & 7u;
      00211D 78 20            [12]  616 	mov	r0,#_column
      00211F 86 0F            [24]  617 	mov	ar7,@r0
      002121 53 0F 07         [24]  618 	anl	ar7,#0x07
                                    619 ;	disp.c:110: gpo[4] = ddata[t];
      002124 EF               [12]  620 	mov	a,r7
      002125 24 18            [12]  621 	add	a,#_ddata
      002127 F9               [12]  622 	mov	r1,a
      002128 87 0E            [24]  623 	mov	ar6,@r1
      00212A 78 04            [12]  624 	mov	r0,#(_gpo + 0x0004)
      00212C EE               [12]  625 	mov	a,r6
      00212D F2               [24]  626 	movx	@r0,a
                                    627 ;	disp.c:111: gpo[5] = dcol[t];
      00212E EF               [12]  628 	mov	a,r7
      00212F 24 10            [12]  629 	add	a,#_dcol
      002131 F9               [12]  630 	mov	r1,a
      002132 87 0F            [24]  631 	mov	ar7,@r1
      002134 78 05            [12]  632 	mov	r0,#(_gpo + 0x0005)
      002136 EF               [12]  633 	mov	a,r7
      002137 F2               [24]  634 	movx	@r0,a
                                    635 ;	disp.c:112: column++;
      002138 78 20            [12]  636 	mov	r0,#_column
      00213A E6               [12]  637 	mov	a,@r0
      00213B 78 20            [12]  638 	mov	r0,#_column
      00213D 04               [12]  639 	inc	a
      00213E F6               [12]  640 	mov	@r0,a
                                    641 ;	disp.c:114: DIS_TR0;
                                    642 ;	assignBit
      00213F C2 8C            [12]  643 	clr	_TR0
                                    644 ;	disp.c:115: TH0 = 0xf8;
      002141 75 8C F8         [24]  645 	mov	_TH0,#0xf8
                                    646 ;	disp.c:116: TL0 = 0x00;
      002144 75 8A 00         [24]  647 	mov	_TL0,#0x00
                                    648 ;	disp.c:117: EN_TR0;
                                    649 ;	assignBit
      002147 D2 8C            [12]  650 	setb	_TR0
                                    651 ;	disp.c:119: return;
                                    652 ;	disp.c:120: }
      002149 D0 D0            [24]  653 	pop	psw
      00214B D0 E0            [24]  654 	pop	acc
      00214D 32               [24]  655 	reti
                                    656 ;	eliminated unneeded push/pop dpl
                                    657 ;	eliminated unneeded push/pop dph
                                    658 ;	eliminated unneeded push/pop b
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'main'
                                    661 ;------------------------------------------------------------
                                    662 ;i                         Allocated to registers r7 
                                    663 ;j                         Allocated to registers r7 
                                    664 ;------------------------------------------------------------
                                    665 ;	disp.c:122: void main(void) {
                                    666 ;	-----------------------------------------
                                    667 ;	 function main
                                    668 ;	-----------------------------------------
      00214E                        669 _main:
                           000007   670 	ar7 = 0x07
                           000006   671 	ar6 = 0x06
                           000005   672 	ar5 = 0x05
                           000004   673 	ar4 = 0x04
                           000003   674 	ar3 = 0x03
                           000002   675 	ar2 = 0x02
                           000001   676 	ar1 = 0x01
                           000000   677 	ar0 = 0x00
                                    678 ;	disp.c:125: init_gpo();
      00214E 12 20 9B         [24]  679 	lcall	_init_gpo
                                    680 ;	disp.c:126: clear_gpo();
      002151 12 20 B9         [24]  681 	lcall	_clear_gpo
                                    682 ;	disp.c:127: init_disp();
      002154 12 20 E5         [24]  683 	lcall	_init_disp
                                    684 ;	disp.c:129: for (j = 0u; j < 8u; j++)
      002157 7F 00            [12]  685 	mov	r7,#0x00
      002159                        686 00121$:
                                    687 ;	disp.c:130: if (!j) ddata[j] = 0u;
      002159 EF               [12]  688 	mov	a,r7
      00215A 70 08            [24]  689 	jnz	00102$
      00215C EF               [12]  690 	mov	a,r7
      00215D 24 18            [12]  691 	add	a,#_ddata
      00215F F8               [12]  692 	mov	r0,a
      002160 76 00            [12]  693 	mov	@r0,#0x00
      002162 80 0C            [24]  694 	sjmp	00122$
      002164                        695 00102$:
                                    696 ;	disp.c:131: else ddata[j] = ddata[j - 1u] + 1u;
      002164 EF               [12]  697 	mov	a,r7
      002165 24 18            [12]  698 	add	a,#_ddata
      002167 F9               [12]  699 	mov	r1,a
      002168 EF               [12]  700 	mov	a,r7
      002169 14               [12]  701 	dec	a
      00216A 24 18            [12]  702 	add	a,#_ddata
      00216C F8               [12]  703 	mov	r0,a
      00216D E6               [12]  704 	mov	a,@r0
      00216E 04               [12]  705 	inc	a
      00216F F7               [12]  706 	mov	@r1,a
      002170                        707 00122$:
                                    708 ;	disp.c:129: for (j = 0u; j < 8u; j++)
      002170 0F               [12]  709 	inc	r7
      002171 BF 08 00         [24]  710 	cjne	r7,#0x08,00175$
      002174                        711 00175$:
      002174 40 E3            [24]  712 	jc	00121$
                                    713 ;	disp.c:133: init_timer0();
      002176 12 20 D9         [24]  714 	lcall	_init_timer0
                                    715 ;	disp.c:134: init_intr();
      002179 12 20 D2         [24]  716 	lcall	_init_intr
                                    717 ;	disp.c:136: EN_TR0;
                                    718 ;	assignBit
      00217C D2 8C            [12]  719 	setb	_TR0
                                    720 ;	disp.c:138: while (1) {
      00217E                        721 00119$:
                                    722 ;	disp.c:139: gpo[GPO_OE] = OE;
      00217E 78 06            [12]  723 	mov	r0,#(_gpo + 0x0006)
      002180 79 21            [12]  724 	mov	r1,#_OE
      002182 E7               [12]  725 	mov	a,@r1
      002183 F2               [24]  726 	movx	@r0,a
                                    727 ;	disp.c:140: i = 0u;
      002184 7F 00            [12]  728 	mov	r7,#0x00
                                    729 ;	disp.c:143: do {
      002186                        730 00130$:
      002186 7E 00            [12]  731 	mov	r6,#0x00
      002188                        732 00108$:
                                    733 ;	disp.c:153: __endasm;
      002188 00               [12]  734 	nop
      002189 00               [12]  735 	nop
      00218A 00               [12]  736 	nop
      00218B 00               [12]  737 	nop
      00218C 00               [12]  738 	nop
      00218D 00               [12]  739 	nop
      00218E 00               [12]  740 	nop
      00218F 00               [12]  741 	nop
                                    742 ;	disp.c:154: } while (++j);
      002190 0E               [12]  743 	inc	r6
      002191 EE               [12]  744 	mov	a,r6
      002192 70 F4            [24]  745 	jnz	00108$
                                    746 ;	disp.c:155: } while (++i);
      002194 EF               [12]  747 	mov	a,r7
      002195 04               [12]  748 	inc	a
      002196 FE               [12]  749 	mov	r6,a
      002197 FF               [12]  750 	mov	r7,a
                                    751 ;	disp.c:157: for (j = 0u; j < 8u; j++)
      002198 70 EC            [24]  752 	jnz	00130$
      00219A FF               [12]  753 	mov	r7,a
      00219B                        754 00123$:
                                    755 ;	disp.c:158: if (!j) ddata[j]++;
      00219B EF               [12]  756 	mov	a,r7
      00219C 70 0A            [24]  757 	jnz	00115$
      00219E EF               [12]  758 	mov	a,r7
      00219F 24 18            [12]  759 	add	a,#_ddata
      0021A1 F9               [12]  760 	mov	r1,a
      0021A2 E7               [12]  761 	mov	a,@r1
      0021A3 FE               [12]  762 	mov	r6,a
      0021A4 04               [12]  763 	inc	a
      0021A5 F7               [12]  764 	mov	@r1,a
      0021A6 80 0D            [24]  765 	sjmp	00124$
      0021A8                        766 00115$:
                                    767 ;	disp.c:159: else ddata[j] = ddata[j - 1u] + 1u;
      0021A8 EF               [12]  768 	mov	a,r7
      0021A9 24 18            [12]  769 	add	a,#_ddata
      0021AB F9               [12]  770 	mov	r1,a
      0021AC EF               [12]  771 	mov	a,r7
      0021AD 14               [12]  772 	dec	a
      0021AE 24 18            [12]  773 	add	a,#_ddata
      0021B0 F8               [12]  774 	mov	r0,a
      0021B1 E6               [12]  775 	mov	a,@r0
      0021B2 FE               [12]  776 	mov	r6,a
      0021B3 04               [12]  777 	inc	a
      0021B4 F7               [12]  778 	mov	@r1,a
      0021B5                        779 00124$:
                                    780 ;	disp.c:157: for (j = 0u; j < 8u; j++)
      0021B5 0F               [12]  781 	inc	r7
      0021B6 BF 08 00         [24]  782 	cjne	r7,#0x08,00180$
      0021B9                        783 00180$:
      0021B9 40 E0            [24]  784 	jc	00123$
                                    785 ;	disp.c:160: OE ^= 0x80u; /* (~)0_001111 */
      0021BB 78 21            [12]  786 	mov	r0,#_OE
      0021BD 86 06            [24]  787 	mov	ar6,@r0
      0021BF 7F 00            [12]  788 	mov	r7,#0x00
      0021C1 63 06 80         [24]  789 	xrl	ar6,#0x80
      0021C4 78 21            [12]  790 	mov	r0,#_OE
      0021C6 A6 06            [24]  791 	mov	@r0,ar6
                                    792 ;	disp.c:163: return;
                                    793 ;	disp.c:164: }
      0021C8 80 B4            [24]  794 	sjmp	00119$
                                    795 	.area CSEG    (CODE)
                                    796 	.area CONST   (CODE)
                                    797 	.area XINIT   (CODE)
                                    798 	.area CABS    (ABS,CODE)
