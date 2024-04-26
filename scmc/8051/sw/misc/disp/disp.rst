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
                                     12 	.globl _scroll
                                     13 	.globl _timer0_intr
                                     14 	.globl _init_disp
                                     15 	.globl _init_timer1
                                     16 	.globl _init_timer0
                                     17 	.globl _init_intr
                                     18 	.globl _gpo_clear
                                     19 	.globl _gpo_init
                                     20 	.globl _getchar_poll
                                     21 	.globl _getchar
                                     22 	.globl _putchar
                                     23 	.globl _toupper
                                     24 	.globl _strncpy
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _FL
                                     32 	.globl _P
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _T2CON_7
                                     42 	.globl _T2CON_6
                                     43 	.globl _T2CON_5
                                     44 	.globl _T2CON_4
                                     45 	.globl _T2CON_3
                                     46 	.globl _T2CON_2
                                     47 	.globl _T2CON_1
                                     48 	.globl _T2CON_0
                                     49 	.globl _PT2
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ET2
                                     73 	.globl _ES
                                     74 	.globl _ET1
                                     75 	.globl _EX1
                                     76 	.globl _ET0
                                     77 	.globl _EX0
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _T2EX
                                     95 	.globl _T2
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _B
                                    121 	.globl _A
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _TH2
                                    125 	.globl _TL2
                                    126 	.globl _RCAP2H
                                    127 	.globl _RCAP2L
                                    128 	.globl _T2MOD
                                    129 	.globl _T2CON
                                    130 	.globl _IP
                                    131 	.globl _P3
                                    132 	.globl _IE
                                    133 	.globl _P2
                                    134 	.globl _SBUF
                                    135 	.globl _SCON
                                    136 	.globl _P1
                                    137 	.globl _TH1
                                    138 	.globl _TH0
                                    139 	.globl _TL1
                                    140 	.globl _TL0
                                    141 	.globl _TMOD
                                    142 	.globl _TCON
                                    143 	.globl _PCON
                                    144 	.globl _DPH
                                    145 	.globl _DPL
                                    146 	.globl _SP
                                    147 	.globl _P0
                                    148 	.globl _gpo
                                    149 	.globl _inv
                                    150 	.globl _OE
                                    151 	.globl _column
                                    152 	.globl _ddata
                                    153 	.globl _sddcol
                                    154 	.globl _dsdcol
                                    155 ;--------------------------------------------------------
                                    156 ; special function registers
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0	=	0x0080
                           000081   161 _SP	=	0x0081
                           000082   162 _DPL	=	0x0082
                           000083   163 _DPH	=	0x0083
                           000087   164 _PCON	=	0x0087
                           000088   165 _TCON	=	0x0088
                           000089   166 _TMOD	=	0x0089
                           00008A   167 _TL0	=	0x008a
                           00008B   168 _TL1	=	0x008b
                           00008C   169 _TH0	=	0x008c
                           00008D   170 _TH1	=	0x008d
                           000090   171 _P1	=	0x0090
                           000098   172 _SCON	=	0x0098
                           000099   173 _SBUF	=	0x0099
                           0000A0   174 _P2	=	0x00a0
                           0000A8   175 _IE	=	0x00a8
                           0000B0   176 _P3	=	0x00b0
                           0000B8   177 _IP	=	0x00b8
                           0000C8   178 _T2CON	=	0x00c8
                           0000C9   179 _T2MOD	=	0x00c9
                           0000CA   180 _RCAP2L	=	0x00ca
                           0000CB   181 _RCAP2H	=	0x00cb
                           0000CC   182 _TL2	=	0x00cc
                           0000CD   183 _TH2	=	0x00cd
                           0000D0   184 _PSW	=	0x00d0
                           0000E0   185 _ACC	=	0x00e0
                           0000E0   186 _A	=	0x00e0
                           0000F0   187 _B	=	0x00f0
                                    188 ;--------------------------------------------------------
                                    189 ; special function bits
                                    190 ;--------------------------------------------------------
                                    191 	.area RSEG    (ABS,DATA)
      000000                        192 	.org 0x0000
                           000080   193 _P0_0	=	0x0080
                           000081   194 _P0_1	=	0x0081
                           000082   195 _P0_2	=	0x0082
                           000083   196 _P0_3	=	0x0083
                           000084   197 _P0_4	=	0x0084
                           000085   198 _P0_5	=	0x0085
                           000086   199 _P0_6	=	0x0086
                           000087   200 _P0_7	=	0x0087
                           000088   201 _IT0	=	0x0088
                           000089   202 _IE0	=	0x0089
                           00008A   203 _IT1	=	0x008a
                           00008B   204 _IE1	=	0x008b
                           00008C   205 _TR0	=	0x008c
                           00008D   206 _TF0	=	0x008d
                           00008E   207 _TR1	=	0x008e
                           00008F   208 _TF1	=	0x008f
                           000090   209 _P1_0	=	0x0090
                           000091   210 _P1_1	=	0x0091
                           000092   211 _P1_2	=	0x0092
                           000093   212 _P1_3	=	0x0093
                           000094   213 _P1_4	=	0x0094
                           000095   214 _P1_5	=	0x0095
                           000096   215 _P1_6	=	0x0096
                           000097   216 _P1_7	=	0x0097
                           000090   217 _T2	=	0x0090
                           000091   218 _T2EX	=	0x0091
                           000098   219 _RI	=	0x0098
                           000099   220 _TI	=	0x0099
                           00009A   221 _RB8	=	0x009a
                           00009B   222 _TB8	=	0x009b
                           00009C   223 _REN	=	0x009c
                           00009D   224 _SM2	=	0x009d
                           00009E   225 _SM1	=	0x009e
                           00009F   226 _SM0	=	0x009f
                           0000A0   227 _P2_0	=	0x00a0
                           0000A1   228 _P2_1	=	0x00a1
                           0000A2   229 _P2_2	=	0x00a2
                           0000A3   230 _P2_3	=	0x00a3
                           0000A4   231 _P2_4	=	0x00a4
                           0000A5   232 _P2_5	=	0x00a5
                           0000A6   233 _P2_6	=	0x00a6
                           0000A7   234 _P2_7	=	0x00a7
                           0000A8   235 _EX0	=	0x00a8
                           0000A9   236 _ET0	=	0x00a9
                           0000AA   237 _EX1	=	0x00aa
                           0000AB   238 _ET1	=	0x00ab
                           0000AC   239 _ES	=	0x00ac
                           0000AD   240 _ET2	=	0x00ad
                           0000AF   241 _EA	=	0x00af
                           0000B0   242 _P3_0	=	0x00b0
                           0000B1   243 _P3_1	=	0x00b1
                           0000B2   244 _P3_2	=	0x00b2
                           0000B3   245 _P3_3	=	0x00b3
                           0000B4   246 _P3_4	=	0x00b4
                           0000B5   247 _P3_5	=	0x00b5
                           0000B6   248 _P3_6	=	0x00b6
                           0000B7   249 _P3_7	=	0x00b7
                           0000B0   250 _RXD	=	0x00b0
                           0000B1   251 _TXD	=	0x00b1
                           0000B2   252 _INT0	=	0x00b2
                           0000B3   253 _INT1	=	0x00b3
                           0000B4   254 _T0	=	0x00b4
                           0000B5   255 _T1	=	0x00b5
                           0000B6   256 _WR	=	0x00b6
                           0000B7   257 _RD	=	0x00b7
                           0000B8   258 _PX0	=	0x00b8
                           0000B9   259 _PT0	=	0x00b9
                           0000BA   260 _PX1	=	0x00ba
                           0000BB   261 _PT1	=	0x00bb
                           0000BC   262 _PS	=	0x00bc
                           0000BD   263 _PT2	=	0x00bd
                           0000C8   264 _T2CON_0	=	0x00c8
                           0000C9   265 _T2CON_1	=	0x00c9
                           0000CA   266 _T2CON_2	=	0x00ca
                           0000CB   267 _T2CON_3	=	0x00cb
                           0000CC   268 _T2CON_4	=	0x00cc
                           0000CD   269 _T2CON_5	=	0x00cd
                           0000CE   270 _T2CON_6	=	0x00ce
                           0000CF   271 _T2CON_7	=	0x00cf
                           0000C8   272 _CP_RL2	=	0x00c8
                           0000C9   273 _C_T2	=	0x00c9
                           0000CA   274 _TR2	=	0x00ca
                           0000CB   275 _EXEN2	=	0x00cb
                           0000CC   276 _TCLK	=	0x00cc
                           0000CD   277 _RCLK	=	0x00cd
                           0000CE   278 _EXF2	=	0x00ce
                           0000CF   279 _TF2	=	0x00cf
                           0000D0   280 _P	=	0x00d0
                           0000D1   281 _FL	=	0x00d1
                           0000D2   282 _OV	=	0x00d2
                           0000D3   283 _RS0	=	0x00d3
                           0000D4   284 _RS1	=	0x00d4
                           0000D5   285 _F0	=	0x00d5
                           0000D6   286 _AC	=	0x00d6
                           0000D7   287 _CY	=	0x00d7
                                    288 ;--------------------------------------------------------
                                    289 ; overlayable register banks
                                    290 ;--------------------------------------------------------
                                    291 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        292 	.ds 8
                                    293 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        294 	.ds 8
                                    295 ;--------------------------------------------------------
                                    296 ; internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area DSEG    (DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; overlayable items in internal ram 
                                    301 ;--------------------------------------------------------
                                    302 ;--------------------------------------------------------
                                    303 ; Stack segment in internal ram 
                                    304 ;--------------------------------------------------------
                                    305 	.area	SSEG
      00003C                        306 __start__stack:
      00003C                        307 	.ds	1
                                    308 
                                    309 ;--------------------------------------------------------
                                    310 ; indirectly addressable internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area ISEG    (DATA)
      000021                        313 _dsdcol::
      000021                        314 	.ds 8
      000029                        315 _sddcol::
      000029                        316 	.ds 8
      000031                        317 _ddata::
      000031                        318 	.ds 8
      000039                        319 _column::
      000039                        320 	.ds 1
      00003A                        321 _OE::
      00003A                        322 	.ds 1
      00003B                        323 _inv::
      00003B                        324 	.ds 1
                                    325 ;--------------------------------------------------------
                                    326 ; absolute internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area IABS    (ABS,DATA)
                                    329 	.area IABS    (ABS,DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; bit data
                                    332 ;--------------------------------------------------------
                                    333 	.area BSEG    (BIT)
                                    334 ;--------------------------------------------------------
                                    335 ; paged external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area PSEG    (PAG,XDATA)
                           000000   338 _gpo	=	0x0000
                                    339 ;--------------------------------------------------------
                                    340 ; external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XSEG    (XDATA)
      008000                        343 _buf:
      008000                        344 	.ds 257
                                    345 ;--------------------------------------------------------
                                    346 ; absolute external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XABS    (ABS,XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; external initialized ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XISEG   (XDATA)
      008101                        353 __ft_font6x8:
      008101                        354 	.ds 2048
      008901                        355 _initial:
      008901                        356 	.ds 3
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT0 (CODE)
                                    359 	.area GSINIT1 (CODE)
                                    360 	.area GSINIT2 (CODE)
                                    361 	.area GSINIT3 (CODE)
                                    362 	.area GSINIT4 (CODE)
                                    363 	.area GSINIT5 (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.area GSFINAL (CODE)
                                    366 	.area CSEG    (CODE)
                                    367 ;--------------------------------------------------------
                                    368 ; interrupt vector 
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
      002000                        371 __interrupt_vect:
      002000 02 20 11         [24]  372 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  373 	reti
      002004                        374 	.ds	7
      00200B 02 21 3B         [24]  375 	ljmp	_timer0_intr
                                    376 ;--------------------------------------------------------
                                    377 ; global & static initialisations
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area GSINIT  (CODE)
                                    381 	.area GSFINAL (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 	.globl __sdcc_gsinit_startup
                                    384 	.globl __sdcc_program_startup
                                    385 	.globl __start__stack
                                    386 	.globl __mcs51_genXINIT
                                    387 	.globl __mcs51_genXRAMCLEAR
                                    388 	.globl __mcs51_genRAMCLEAR
                                    389 ;	disp.c:88: __idata const uint8_t dsdcol[8] = {
      00206A 78 21            [12]  390 	mov	r0,#_dsdcol
      00206C 76 80            [12]  391 	mov	@r0,#0x80
      00206E 78 22            [12]  392 	mov	r0,#(_dsdcol + 0x0001)
      002070 76 40            [12]  393 	mov	@r0,#0x40
      002072 78 23            [12]  394 	mov	r0,#(_dsdcol + 0x0002)
      002074 76 20            [12]  395 	mov	@r0,#0x20
      002076 78 24            [12]  396 	mov	r0,#(_dsdcol + 0x0003)
      002078 76 10            [12]  397 	mov	@r0,#0x10
      00207A 78 25            [12]  398 	mov	r0,#(_dsdcol + 0x0004)
      00207C 76 08            [12]  399 	mov	@r0,#0x08
      00207E 78 26            [12]  400 	mov	r0,#(_dsdcol + 0x0005)
      002080 76 04            [12]  401 	mov	@r0,#0x04
      002082 78 27            [12]  402 	mov	r0,#(_dsdcol + 0x0006)
      002084 76 02            [12]  403 	mov	@r0,#0x02
      002086 78 28            [12]  404 	mov	r0,#(_dsdcol + 0x0007)
      002088 76 01            [12]  405 	mov	@r0,#0x01
                                    406 ;	disp.c:92: __idata const uint8_t sddcol[8] = {
      00208A 78 29            [12]  407 	mov	r0,#_sddcol
      00208C 76 01            [12]  408 	mov	@r0,#0x01
      00208E 78 2A            [12]  409 	mov	r0,#(_sddcol + 0x0001)
      002090 76 02            [12]  410 	mov	@r0,#0x02
      002092 78 2B            [12]  411 	mov	r0,#(_sddcol + 0x0002)
      002094 76 04            [12]  412 	mov	@r0,#0x04
      002096 78 2C            [12]  413 	mov	r0,#(_sddcol + 0x0003)
      002098 76 08            [12]  414 	mov	@r0,#0x08
      00209A 78 2D            [12]  415 	mov	r0,#(_sddcol + 0x0004)
      00209C 76 10            [12]  416 	mov	@r0,#0x10
      00209E 78 2E            [12]  417 	mov	r0,#(_sddcol + 0x0005)
      0020A0 76 20            [12]  418 	mov	@r0,#0x20
      0020A2 78 2F            [12]  419 	mov	r0,#(_sddcol + 0x0006)
      0020A4 76 40            [12]  420 	mov	@r0,#0x40
      0020A6 78 30            [12]  421 	mov	r0,#(_sddcol + 0x0007)
      0020A8 76 80            [12]  422 	mov	@r0,#0x80
                                    423 	.area GSFINAL (CODE)
      0020AA 02 20 0E         [24]  424 	ljmp	__sdcc_program_startup
                                    425 ;--------------------------------------------------------
                                    426 ; Home
                                    427 ;--------------------------------------------------------
                                    428 	.area HOME    (CODE)
                                    429 	.area HOME    (CODE)
      00200E                        430 __sdcc_program_startup:
      00200E 02 23 30         [24]  431 	ljmp	_main
                                    432 ;	return from main will return to caller
                                    433 ;--------------------------------------------------------
                                    434 ; code
                                    435 ;--------------------------------------------------------
                                    436 	.area CSEG    (CODE)
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'gpo_init'
                                    439 ;------------------------------------------------------------
                                    440 ;	disp.c:47: void gpo_init(void) {
                                    441 ;	-----------------------------------------
                                    442 ;	 function gpo_init
                                    443 ;	-----------------------------------------
      0020AD                        444 _gpo_init:
                           000007   445 	ar7 = 0x07
                           000006   446 	ar6 = 0x06
                           000005   447 	ar5 = 0x05
                           000004   448 	ar4 = 0x04
                           000003   449 	ar3 = 0x03
                           000002   450 	ar2 = 0x02
                           000001   451 	ar1 = 0x01
                           000000   452 	ar0 = 0x00
                                    453 ;	disp.c:48: P1_7 = 0;
                                    454 ;	assignBit
      0020AD C2 97            [12]  455 	clr	_P1_7
                                    456 ;	disp.c:53: __endasm;
      0020AF 00               [12]  457 	nop
      0020B0 00               [12]  458 	nop
      0020B1 00               [12]  459 	nop
                                    460 ;	disp.c:55: P2 = GPO_BASE_H;
      0020B2 75 A0 F0         [24]  461 	mov	_P2,#0xf0
                                    462 ;	disp.c:57: GPO_CLEAR;
      0020B5 78 06            [12]  463 	mov	r0,#(_gpo + 0x0006)
      0020B7 74 3F            [12]  464 	mov	a,#0x3f
      0020B9 F2               [24]  465 	movx	@r0,a
      0020BA 78 00            [12]  466 	mov	r0,#_gpo
      0020BC E4               [12]  467 	clr	a
      0020BD F2               [24]  468 	movx	@r0,a
      0020BE 78 01            [12]  469 	mov	r0,#(_gpo + 0x0001)
      0020C0 F2               [24]  470 	movx	@r0,a
      0020C1 78 02            [12]  471 	mov	r0,#(_gpo + 0x0002)
      0020C3 F2               [24]  472 	movx	@r0,a
      0020C4 78 03            [12]  473 	mov	r0,#(_gpo + 0x0003)
      0020C6 F2               [24]  474 	movx	@r0,a
      0020C7 78 04            [12]  475 	mov	r0,#(_gpo + 0x0004)
      0020C9 F2               [24]  476 	movx	@r0,a
      0020CA 78 05            [12]  477 	mov	r0,#(_gpo + 0x0005)
      0020CC F2               [24]  478 	movx	@r0,a
                                    479 ;	disp.c:59: return;
                                    480 ;	disp.c:60: }
      0020CD 22               [24]  481 	ret
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'gpo_clear'
                                    484 ;------------------------------------------------------------
                                    485 ;	disp.c:62: void gpo_clear(void) {
                                    486 ;	-----------------------------------------
                                    487 ;	 function gpo_clear
                                    488 ;	-----------------------------------------
      0020CE                        489 _gpo_clear:
                                    490 ;	disp.c:63: GPO_CLEAR;
      0020CE 78 06            [12]  491 	mov	r0,#(_gpo + 0x0006)
      0020D0 74 3F            [12]  492 	mov	a,#0x3f
      0020D2 F2               [24]  493 	movx	@r0,a
      0020D3 78 00            [12]  494 	mov	r0,#_gpo
      0020D5 E4               [12]  495 	clr	a
      0020D6 F2               [24]  496 	movx	@r0,a
      0020D7 78 01            [12]  497 	mov	r0,#(_gpo + 0x0001)
      0020D9 F2               [24]  498 	movx	@r0,a
      0020DA 78 02            [12]  499 	mov	r0,#(_gpo + 0x0002)
      0020DC F2               [24]  500 	movx	@r0,a
      0020DD 78 03            [12]  501 	mov	r0,#(_gpo + 0x0003)
      0020DF F2               [24]  502 	movx	@r0,a
      0020E0 78 04            [12]  503 	mov	r0,#(_gpo + 0x0004)
      0020E2 F2               [24]  504 	movx	@r0,a
      0020E3 78 05            [12]  505 	mov	r0,#(_gpo + 0x0005)
      0020E5 F2               [24]  506 	movx	@r0,a
                                    507 ;	disp.c:65: return;
                                    508 ;	disp.c:66: }
      0020E6 22               [24]  509 	ret
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'init_intr'
                                    512 ;------------------------------------------------------------
                                    513 ;	disp.c:100: void init_intr(void) {
                                    514 ;	-----------------------------------------
                                    515 ;	 function init_intr
                                    516 ;	-----------------------------------------
      0020E7                        517 _init_intr:
                                    518 ;	disp.c:101: TR0 = 0;
                                    519 ;	assignBit
      0020E7 C2 8C            [12]  520 	clr	_TR0
                                    521 ;	disp.c:102: TR1 = 0;
                                    522 ;	assignBit
      0020E9 C2 8E            [12]  523 	clr	_TR1
                                    524 ;	disp.c:103: ET0 = 1;
                                    525 ;	assignBit
      0020EB D2 A9            [12]  526 	setb	_ET0
                                    527 ;	disp.c:104: ET1 = 0;
                                    528 ;	assignBit
      0020ED C2 AB            [12]  529 	clr	_ET1
                                    530 ;	disp.c:105: EA = 1;
                                    531 ;	assignBit
      0020EF D2 AF            [12]  532 	setb	_EA
                                    533 ;	disp.c:107: return;
                                    534 ;	disp.c:108: }
      0020F1 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'init_timer0'
                                    538 ;------------------------------------------------------------
                                    539 ;	disp.c:110: void init_timer0(void) {
                                    540 ;	-----------------------------------------
                                    541 ;	 function init_timer0
                                    542 ;	-----------------------------------------
      0020F2                        543 _init_timer0:
                                    544 ;	disp.c:111: TR0 = 0;
                                    545 ;	assignBit
      0020F2 C2 8C            [12]  546 	clr	_TR0
                                    547 ;	disp.c:112: TMOD |= 0x01;
      0020F4 43 89 01         [24]  548 	orl	_TMOD,#0x01
                                    549 ;	disp.c:113: TH0 = TR0_COUNT >> 8;
      0020F7 75 8C F8         [24]  550 	mov	_TH0,#0xf8
                                    551 ;	disp.c:114: TL0 = TR0_COUNT & 0xffu;
      0020FA 75 8A 00         [24]  552 	mov	_TL0,#0x00
                                    553 ;	disp.c:116: return;
                                    554 ;	disp.c:117: }
      0020FD 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'init_timer1'
                                    558 ;------------------------------------------------------------
                                    559 ;	disp.c:119: void init_timer1(void) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function init_timer1
                                    562 ;	-----------------------------------------
      0020FE                        563 _init_timer1:
                                    564 ;	disp.c:120: TR1 = 0;
                                    565 ;	assignBit
      0020FE C2 8E            [12]  566 	clr	_TR1
                                    567 ;	disp.c:121: TMOD |= 0x10;
      002100 43 89 10         [24]  568 	orl	_TMOD,#0x10
                                    569 ;	disp.c:122: TH1 = TR1_COUNT_0 >> 8;
      002103 75 8D 00         [24]  570 	mov	_TH1,#0x00
                                    571 ;	disp.c:123: TL1 = TR1_COUNT_0 & 0xffu;
      002106 75 8B 00         [24]  572 	mov	_TL1,#0x00
                                    573 ;	disp.c:125: return;
                                    574 ;	disp.c:126: }
      002109 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'init_disp'
                                    578 ;------------------------------------------------------------
                                    579 ;	disp.c:128: void init_disp(void) {
                                    580 ;	-----------------------------------------
                                    581 ;	 function init_disp
                                    582 ;	-----------------------------------------
      00210A                        583 _init_disp:
                                    584 ;	disp.c:129: GPO_SETREG(DISP_COL, 0u);
      00210A 78 05            [12]  585 	mov	r0,#(_gpo + 0x0005)
      00210C E4               [12]  586 	clr	a
      00210D F2               [24]  587 	movx	@r0,a
                                    588 ;	disp.c:130: GPO_SETREG(DISP_DATA, 0u);
      00210E 78 04            [12]  589 	mov	r0,#(_gpo + 0x0004)
      002110 F2               [24]  590 	movx	@r0,a
                                    591 ;	disp.c:131: OE = 0x0fu; /* 00_001111 */
      002111 78 3A            [12]  592 	mov	r0,#_OE
      002113 76 0F            [12]  593 	mov	@r0,#0x0f
                                    594 ;	disp.c:132: GPO_SETOE(OE);
      002115 78 06            [12]  595 	mov	r0,#(_gpo + 0x0006)
      002117 74 0F            [12]  596 	mov	a,#0x0f
      002119 F2               [24]  597 	movx	@r0,a
                                    598 ;	disp.c:134: for (column = 0u; column < 8u; column++)
      00211A 78 39            [12]  599 	mov	r0,#_column
      00211C 76 00            [12]  600 	mov	@r0,#0x00
      00211E                        601 00112$:
      00211E 78 39            [12]  602 	mov	r0,#_column
      002120 B6 08 00         [24]  603 	cjne	@r0,#0x08,00124$
      002123                        604 00124$:
      002123 50 11            [24]  605 	jnc	00110$
                                    606 ;	disp.c:135: ddata[column] = 0u;
      002125 78 39            [12]  607 	mov	r0,#_column
      002127 E6               [12]  608 	mov	a,@r0
      002128 24 31            [12]  609 	add	a,#_ddata
      00212A F8               [12]  610 	mov	r0,a
      00212B 76 00            [12]  611 	mov	@r0,#0x00
                                    612 ;	disp.c:134: for (column = 0u; column < 8u; column++)
      00212D 78 39            [12]  613 	mov	r0,#_column
      00212F E6               [12]  614 	mov	a,@r0
      002130 78 39            [12]  615 	mov	r0,#_column
      002132 04               [12]  616 	inc	a
      002133 F6               [12]  617 	mov	@r0,a
      002134 80 E8            [24]  618 	sjmp	00112$
      002136                        619 00110$:
                                    620 ;	disp.c:136: column = 0u;
      002136 78 39            [12]  621 	mov	r0,#_column
      002138 76 00            [12]  622 	mov	@r0,#0x00
                                    623 ;	disp.c:138: return;
                                    624 ;	disp.c:139: }
      00213A 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'timer0_intr'
                                    628 ;------------------------------------------------------------
                                    629 ;t                         Allocated to registers r7 
                                    630 ;------------------------------------------------------------
                                    631 ;	disp.c:141: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    632 ;	-----------------------------------------
                                    633 ;	 function timer0_intr
                                    634 ;	-----------------------------------------
      00213B                        635 _timer0_intr:
                           00000F   636 	ar7 = 0x0f
                           00000E   637 	ar6 = 0x0e
                           00000D   638 	ar5 = 0x0d
                           00000C   639 	ar4 = 0x0c
                           00000B   640 	ar3 = 0x0b
                           00000A   641 	ar2 = 0x0a
                           000009   642 	ar1 = 0x09
                           000008   643 	ar0 = 0x08
      00213B C0 E0            [24]  644 	push	acc
      00213D C0 D0            [24]  645 	push	psw
      00213F 75 D0 08         [24]  646 	mov	psw,#0x08
                                    647 ;	disp.c:144: t = column & 7u;
      002142 78 39            [12]  648 	mov	r0,#_column
      002144 86 0F            [24]  649 	mov	ar7,@r0
      002146 53 0F 07         [24]  650 	anl	ar7,#0x07
                                    651 ;	disp.c:145: GPO_SETREG(DISP_COL, 0u);
      002149 78 05            [12]  652 	mov	r0,#(_gpo + 0x0005)
      00214B E4               [12]  653 	clr	a
      00214C F2               [24]  654 	movx	@r0,a
                                    655 ;	disp.c:146: GPO_SETREG(DISP_DATA, ddata[t]);
      00214D EF               [12]  656 	mov	a,r7
      00214E 24 31            [12]  657 	add	a,#_ddata
      002150 F9               [12]  658 	mov	r1,a
      002151 87 0E            [24]  659 	mov	ar6,@r1
      002153 78 04            [12]  660 	mov	r0,#(_gpo + 0x0004)
      002155 EE               [12]  661 	mov	a,r6
      002156 F2               [24]  662 	movx	@r0,a
                                    663 ;	disp.c:147: GPO_SETREG(DISP_COL, dsdcol[t]);
      002157 EF               [12]  664 	mov	a,r7
      002158 24 21            [12]  665 	add	a,#_dsdcol
      00215A F9               [12]  666 	mov	r1,a
      00215B 87 0F            [24]  667 	mov	ar7,@r1
      00215D 78 05            [12]  668 	mov	r0,#(_gpo + 0x0005)
      00215F EF               [12]  669 	mov	a,r7
      002160 F2               [24]  670 	movx	@r0,a
                                    671 ;	disp.c:148: column++;
      002161 78 39            [12]  672 	mov	r0,#_column
      002163 E6               [12]  673 	mov	a,@r0
      002164 78 39            [12]  674 	mov	r0,#_column
      002166 04               [12]  675 	inc	a
      002167 F6               [12]  676 	mov	@r0,a
                                    677 ;	disp.c:150: TR0 = 0;
                                    678 ;	assignBit
      002168 C2 8C            [12]  679 	clr	_TR0
                                    680 ;	disp.c:151: TH0 = TR0_COUNT >> 8;
      00216A 75 8C F8         [24]  681 	mov	_TH0,#0xf8
                                    682 ;	disp.c:152: TL0 = TR0_COUNT & 0xffu;
      00216D 75 8A 00         [24]  683 	mov	_TL0,#0x00
                                    684 ;	disp.c:153: TR0 = 1;
                                    685 ;	assignBit
      002170 D2 8C            [12]  686 	setb	_TR0
                                    687 ;	disp.c:155: return;
                                    688 ;	disp.c:156: }
      002172 D0 D0            [24]  689 	pop	psw
      002174 D0 E0            [24]  690 	pop	acc
      002176 32               [24]  691 	reti
                                    692 ;	eliminated unneeded push/pop dpl
                                    693 ;	eliminated unneeded push/pop dph
                                    694 ;	eliminated unneeded push/pop b
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'scroll'
                                    697 ;------------------------------------------------------------
                                    698 ;msg                       Allocated to stack - _bp +1
                                    699 ;symbol                    Allocated to stack - _bp +5
                                    700 ;bit                       Allocated to stack - _bp +6
                                    701 ;i                         Allocated to stack - _bp +7
                                    702 ;j                         Allocated to registers r4 
                                    703 ;r                         Allocated to registers r3 r4 
                                    704 ;__3932160002              Allocated to registers 
                                    705 ;s                         Allocated to registers r6 r4 r3 
                                    706 ;sloc0                     Allocated to stack - _bp +4
                                    707 ;sloc1                     Allocated to stack - _bp +18
                                    708 ;sloc2                     Allocated to stack - _bp +19
                                    709 ;------------------------------------------------------------
                                    710 ;	disp.c:183: int scroll(uint8_t *msg) {
                                    711 ;	-----------------------------------------
                                    712 ;	 function scroll
                                    713 ;	-----------------------------------------
      002177                        714 _scroll:
                           000007   715 	ar7 = 0x07
                           000006   716 	ar6 = 0x06
                           000005   717 	ar5 = 0x05
                           000004   718 	ar4 = 0x04
                           000003   719 	ar3 = 0x03
                           000002   720 	ar2 = 0x02
                           000001   721 	ar1 = 0x01
                           000000   722 	ar0 = 0x00
      002177 C0 10            [24]  723 	push	_bp
      002179 85 81 10         [24]  724 	mov	_bp,sp
      00217C C0 82            [24]  725 	push	dpl
      00217E C0 83            [24]  726 	push	dph
      002180 C0 F0            [24]  727 	push	b
      002182 E5 81            [12]  728 	mov	a,sp
      002184 24 05            [12]  729 	add	a,#0x05
      002186 F5 81            [12]  730 	mov	sp,a
                                    731 ;	disp.c:189: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002188 E5 10            [12]  732 	mov	a,_bp
      00218A 24 06            [12]  733 	add	a,#0x06
      00218C F8               [12]  734 	mov	r0,a
      00218D 76 00            [12]  735 	mov	@r0,#0x00
      00218F E5 10            [12]  736 	mov	a,_bp
      002191 24 07            [12]  737 	add	a,#0x07
      002193 F8               [12]  738 	mov	r0,a
      002194 E4               [12]  739 	clr	a
      002195 F6               [12]  740 	mov	@r0,a
      002196 08               [12]  741 	inc	r0
      002197 F6               [12]  742 	mov	@r0,a
      002198                        743 00142$:
                                    744 ;	disp.c:190: if (!bit) {
      002198 E5 10            [12]  745 	mov	a,_bp
      00219A 24 06            [12]  746 	add	a,#0x06
      00219C F8               [12]  747 	mov	r0,a
      00219D E6               [12]  748 	mov	a,@r0
      00219E 70 5F            [24]  749 	jnz	00105$
                                    750 ;	disp.c:191: symbol = msg[i];
      0021A0 A8 10            [24]  751 	mov	r0,_bp
      0021A2 08               [12]  752 	inc	r0
      0021A3 E5 10            [12]  753 	mov	a,_bp
      0021A5 24 07            [12]  754 	add	a,#0x07
      0021A7 F9               [12]  755 	mov	r1,a
      0021A8 E7               [12]  756 	mov	a,@r1
      0021A9 26               [12]  757 	add	a,@r0
      0021AA FA               [12]  758 	mov	r2,a
      0021AB 09               [12]  759 	inc	r1
      0021AC E7               [12]  760 	mov	a,@r1
      0021AD 08               [12]  761 	inc	r0
      0021AE 36               [12]  762 	addc	a,@r0
      0021AF FB               [12]  763 	mov	r3,a
      0021B0 08               [12]  764 	inc	r0
      0021B1 86 04            [24]  765 	mov	ar4,@r0
      0021B3 8A 82            [24]  766 	mov	dpl,r2
      0021B5 8B 83            [24]  767 	mov	dph,r3
      0021B7 8C F0            [24]  768 	mov	b,r4
      0021B9 12 27 4C         [24]  769 	lcall	__gptrget
      0021BC FA               [12]  770 	mov	r2,a
      0021BD E5 10            [12]  771 	mov	a,_bp
      0021BF 24 04            [12]  772 	add	a,#0x04
      0021C1 F8               [12]  773 	mov	r0,a
      0021C2 A6 02            [24]  774 	mov	@r0,ar2
                                    775 ;	disp.c:192: if (!symbol) {
      0021C4 EA               [12]  776 	mov	a,r2
      0021C5 70 25            [24]  777 	jnz	00102$
                                    778 ;	disp.c:193: i = 0u;
      0021C7 E5 10            [12]  779 	mov	a,_bp
      0021C9 24 07            [12]  780 	add	a,#0x07
      0021CB F8               [12]  781 	mov	r0,a
      0021CC E4               [12]  782 	clr	a
      0021CD F6               [12]  783 	mov	@r0,a
      0021CE 08               [12]  784 	inc	r0
      0021CF F6               [12]  785 	mov	@r0,a
                                    786 ;	disp.c:194: symbol = msg[i];
      0021D0 A8 10            [24]  787 	mov	r0,_bp
      0021D2 08               [12]  788 	inc	r0
      0021D3 86 82            [24]  789 	mov	dpl,@r0
      0021D5 08               [12]  790 	inc	r0
      0021D6 86 83            [24]  791 	mov	dph,@r0
      0021D8 08               [12]  792 	inc	r0
      0021D9 86 F0            [24]  793 	mov	b,@r0
      0021DB E5 10            [12]  794 	mov	a,_bp
      0021DD 24 04            [12]  795 	add	a,#0x04
      0021DF F9               [12]  796 	mov	r1,a
      0021E0 12 27 4C         [24]  797 	lcall	__gptrget
      0021E3 F7               [12]  798 	mov	@r1,a
                                    799 ;	disp.c:195: OE |= 0x80u;
      0021E4 78 3A            [12]  800 	mov	r0,#_OE
      0021E6 E6               [12]  801 	mov	a,@r0
      0021E7 44 80            [12]  802 	orl	a,#0x80
      0021E9 F6               [12]  803 	mov	@r0,a
      0021EA 80 06            [24]  804 	sjmp	00103$
      0021EC                        805 00102$:
                                    806 ;	disp.c:196: } else OE |= 0x40u;
      0021EC 78 3A            [12]  807 	mov	r0,#_OE
      0021EE E6               [12]  808 	mov	a,@r0
      0021EF 44 40            [12]  809 	orl	a,#0x40
      0021F1 F6               [12]  810 	mov	@r0,a
      0021F2                        811 00103$:
                                    812 ;	disp.c:197: i++;
      0021F2 E5 10            [12]  813 	mov	a,_bp
      0021F4 24 07            [12]  814 	add	a,#0x07
      0021F6 F8               [12]  815 	mov	r0,a
      0021F7 06               [12]  816 	inc	@r0
      0021F8 B6 00 02         [24]  817 	cjne	@r0,#0x00,00230$
      0021FB 08               [12]  818 	inc	r0
      0021FC 06               [12]  819 	inc	@r0
      0021FD                        820 00230$:
      0021FD 80 06            [24]  821 	sjmp	00107$
      0021FF                        822 00105$:
                                    823 ;	disp.c:198: } else OE &= ~(0x80u | 0x40u);
      0021FF 78 3A            [12]  824 	mov	r0,#_OE
      002201 E6               [12]  825 	mov	a,@r0
      002202 54 3F            [12]  826 	anl	a,#0x3f
      002204 F6               [12]  827 	mov	@r0,a
                                    828 ;	disp.c:199: GPO_SETOE(OE);
      002205                        829 00107$:
      002205 78 06            [12]  830 	mov	r0,#(_gpo + 0x0006)
      002207 79 3A            [12]  831 	mov	r1,#_OE
      002209 E7               [12]  832 	mov	a,@r1
      00220A F2               [24]  833 	movx	@r0,a
                                    834 ;	disp.c:201: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      00220B E5 10            [12]  835 	mov	a,_bp
      00220D 24 06            [12]  836 	add	a,#0x06
      00220F F8               [12]  837 	mov	r0,a
      002210 E6               [12]  838 	mov	a,@r0
      002211 24 29            [12]  839 	add	a,#_sddcol
      002213 F9               [12]  840 	mov	r1,a
      002214 E7               [12]  841 	mov	a,@r1
      002215 FB               [12]  842 	mov	r3,a
      002216 54 C0            [12]  843 	anl	a,#0xc0
      002218 60 02            [24]  844 	jz	00232$
      00221A 80 74            [24]  845 	sjmp	00113$
      00221C                        846 00232$:
                                    847 ;	disp.c:159: TR1 = 0;
                                    848 ;	assignBit
      00221C C2 8E            [12]  849 	clr	_TR1
                                    850 ;	disp.c:160: TH1 = TR1_COUNT_0 >> 8;
      00221E 75 8D 00         [24]  851 	mov	_TH1,#0x00
                                    852 ;	disp.c:161: TL1 = TR1_COUNT_0 & 0xffu;	
      002221 75 8B 00         [24]  853 	mov	_TL1,#0x00
                                    854 ;	disp.c:162: TF1 = 0;
                                    855 ;	assignBit
      002224 C2 8F            [12]  856 	clr	_TF1
                                    857 ;	disp.c:163: TR1 = 1;
                                    858 ;	assignBit
      002226 D2 8E            [12]  859 	setb	_TR1
                                    860 ;	disp.c:164: while (!TF1);
      002228                        861 00128$:
                                    862 ;	disp.c:165: TF1 = 0;
                                    863 ;	assignBit
      002228 10 8F 02         [24]  864 	jbc	_TF1,00233$
      00222B 80 FB            [24]  865 	sjmp	00128$
      00222D                        866 00233$:
                                    867 ;	disp.c:167: TR1 = 0;
                                    868 ;	assignBit
      00222D C2 8E            [12]  869 	clr	_TR1
                                    870 ;	disp.c:168: TH1 = TR1_COUNT_1 >> 8;
      00222F 75 8D C0         [24]  871 	mov	_TH1,#0xc0
                                    872 ;	disp.c:169: TL1 = TR1_COUNT_1 & 0xffu;	
      002232 75 8B 00         [24]  873 	mov	_TL1,#0x00
                                    874 ;	disp.c:170: TF1 = 0;
                                    875 ;	assignBit
      002235 C2 8F            [12]  876 	clr	_TF1
                                    877 ;	disp.c:171: TR1 = 1;
                                    878 ;	assignBit
      002237 D2 8E            [12]  879 	setb	_TR1
                                    880 ;	disp.c:172: while (!TF1);
      002239                        881 00131$:
                                    882 ;	disp.c:173: TF1 = 0;
                                    883 ;	assignBit
      002239 10 8F 02         [24]  884 	jbc	_TF1,00234$
      00223C 80 FB            [24]  885 	sjmp	00131$
      00223E                        886 00234$:
                                    887 ;	disp.c:175: TR1 = 0;
                                    888 ;	assignBit
      00223E C2 8E            [12]  889 	clr	_TR1
                                    890 ;	disp.c:204: for (j = 0u; j < 8u; j++)
      002240 E5 10            [12]  891 	mov	a,_bp
      002242 24 04            [12]  892 	add	a,#0x04
      002244 F8               [12]  893 	mov	r0,a
      002245 E6               [12]  894 	mov	a,@r0
      002246 75 F0 08         [24]  895 	mov	b,#0x08
      002249 A4               [48]  896 	mul	ab
      00224A 24 01            [12]  897 	add	a,#__ft_font6x8
      00224C FA               [12]  898 	mov	r2,a
      00224D 74 81            [12]  899 	mov	a,#(__ft_font6x8 >> 8)
      00224F 35 F0            [12]  900 	addc	a,b
      002251 FB               [12]  901 	mov	r3,a
      002252 E5 10            [12]  902 	mov	a,_bp
      002254 24 06            [12]  903 	add	a,#0x06
      002256 F8               [12]  904 	mov	r0,a
      002257 74 07            [12]  905 	mov	a,#0x07
      002259 C3               [12]  906 	clr	c
      00225A 96               [12]  907 	subb	a,@r0
      00225B FD               [12]  908 	mov	r5,a
      00225C 7C 00            [12]  909 	mov	r4,#0x00
      00225E                        910 00137$:
                                    911 ;	disp.c:205: ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00225E EC               [12]  912 	mov	a,r4
      00225F 24 31            [12]  913 	add	a,#_ddata
      002261 F9               [12]  914 	mov	r1,a
      002262 EC               [12]  915 	mov	a,r4
      002263 2A               [12]  916 	add	a,r2
      002264 F5 82            [12]  917 	mov	dpl,a
      002266 E4               [12]  918 	clr	a
      002267 3B               [12]  919 	addc	a,r3
      002268 F5 83            [12]  920 	mov	dph,a
      00226A E0               [24]  921 	movx	a,@dptr
      00226B FF               [12]  922 	mov	r7,a
      00226C 78 3B            [12]  923 	mov	r0,#_inv
      00226E E6               [12]  924 	mov	a,@r0
      00226F 62 07            [12]  925 	xrl	ar7,a
      002271 8D F0            [24]  926 	mov	b,r5
      002273 05 F0            [12]  927 	inc	b
      002275 EF               [12]  928 	mov	a,r7
      002276 80 02            [24]  929 	sjmp	00237$
      002278                        930 00235$:
      002278 25 E0            [12]  931 	add	a,acc
      00227A                        932 00237$:
      00227A D5 F0 FB         [24]  933 	djnz	b,00235$
      00227D 54 80            [12]  934 	anl	a,#0x80
      00227F FF               [12]  935 	mov	r7,a
      002280 EC               [12]  936 	mov	a,r4
      002281 24 31            [12]  937 	add	a,#_ddata
      002283 F8               [12]  938 	mov	r0,a
      002284 E6               [12]  939 	mov	a,@r0
      002285 C3               [12]  940 	clr	c
      002286 13               [12]  941 	rrc	a
      002287 FE               [12]  942 	mov	r6,a
      002288 4F               [12]  943 	orl	a,r7
      002289 F7               [12]  944 	mov	@r1,a
                                    945 ;	disp.c:204: for (j = 0u; j < 8u; j++)
      00228A 0C               [12]  946 	inc	r4
      00228B BC 08 00         [24]  947 	cjne	r4,#0x08,00238$
      00228E                        948 00238$:
      00228E 40 CE            [24]  949 	jc	00137$
                                    950 ;	disp.c:207: skip_shift:
      002290                        951 00113$:
                                    952 ;	disp.c:208: if ((r = getchar_poll()) >= 0) {
      002290 12 26 54         [24]  953 	lcall	_getchar_poll
      002293 AB 82            [24]  954 	mov	r3,dpl
      002295 AC 83            [24]  955 	mov	r4,dph
      002297 8B 07            [24]  956 	mov	ar7,r3
      002299 EC               [12]  957 	mov	a,r4
      00229A FE               [12]  958 	mov	r6,a
      00229B 30 E7 03         [24]  959 	jnb	acc.7,00240$
      00229E 02 23 12         [24]  960 	ljmp	00143$
      0022A1                        961 00240$:
                                    962 ;	disp.c:209: r = toupper(r);
      0022A1 8F 82            [24]  963 	mov	dpl,r7
      0022A3 8E 83            [24]  964 	mov	dph,r6
      0022A5 12 26 6E         [24]  965 	lcall	_toupper
      0022A8 AB 82            [24]  966 	mov	r3,dpl
      0022AA AC 83            [24]  967 	mov	r4,dph
                                    968 ;	disp.c:210: if ((r == (int)'P') || (r == (int)' ')) {
      0022AC BB 50 05         [24]  969 	cjne	r3,#0x50,00241$
      0022AF BC 00 02         [24]  970 	cjne	r4,#0x00,00241$
      0022B2 80 06            [24]  971 	sjmp	00121$
      0022B4                        972 00241$:
      0022B4 BB 20 36         [24]  973 	cjne	r3,#0x20,00122$
      0022B7 BC 00 33         [24]  974 	cjne	r4,#0x00,00122$
      0022BA                        975 00121$:
                                    976 ;	disp.c:211: printstr("PAUSE\r\n");
      0022BA 7E 87            [12]  977 	mov	r6,#___str_0
      0022BC 7C 27            [12]  978 	mov	r4,#(___str_0 >> 8)
      0022BE 7B 80            [12]  979 	mov	r3,#0x80
                                    980 ;	disp.c:14: return;
      0022C0                        981 00140$:
                                    982 ;	disp.c:12: for (; *s; s++) putchar(*s);
      0022C0 8E 82            [24]  983 	mov	dpl,r6
      0022C2 8C 83            [24]  984 	mov	dph,r4
      0022C4 8B F0            [24]  985 	mov	b,r3
      0022C6 12 27 4C         [24]  986 	lcall	__gptrget
      0022C9 FD               [12]  987 	mov	r5,a
      0022CA 60 1C            [24]  988 	jz	00136$
      0022CC 7F 00            [12]  989 	mov	r7,#0x00
      0022CE 8D 82            [24]  990 	mov	dpl,r5
      0022D0 8F 83            [24]  991 	mov	dph,r7
      0022D2 C0 06            [24]  992 	push	ar6
      0022D4 C0 04            [24]  993 	push	ar4
      0022D6 C0 03            [24]  994 	push	ar3
      0022D8 12 26 3D         [24]  995 	lcall	_putchar
      0022DB D0 03            [24]  996 	pop	ar3
      0022DD D0 04            [24]  997 	pop	ar4
      0022DF D0 06            [24]  998 	pop	ar6
      0022E1 0E               [12]  999 	inc	r6
                                   1000 ;	disp.c:211: printstr("PAUSE\r\n");
      0022E2 BE 00 DB         [24] 1001 	cjne	r6,#0x00,00140$
      0022E5 0C               [12] 1002 	inc	r4
      0022E6 80 D8            [24] 1003 	sjmp	00140$
      0022E8                       1004 00136$:
                                   1005 ;	disp.c:212: (void)getchar();
      0022E8 12 26 47         [24] 1006 	lcall	_getchar
      0022EB 80 25            [24] 1007 	sjmp	00143$
      0022ED                       1008 00122$:
                                   1009 ;	disp.c:213: } else if (r == (int)'I') inv = ~inv;
      0022ED BB 49 0A         [24] 1010 	cjne	r3,#0x49,00119$
      0022F0 BC 00 07         [24] 1011 	cjne	r4,#0x00,00119$
      0022F3 78 3B            [12] 1012 	mov	r0,#_inv
      0022F5 E6               [12] 1013 	mov	a,@r0
      0022F6 F4               [12] 1014 	cpl	a
      0022F7 F6               [12] 1015 	mov	@r0,a
      0022F8 80 18            [24] 1016 	sjmp	00143$
      0022FA                       1017 00119$:
                                   1018 ;	disp.c:214: else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      0022FA BB 54 05         [24] 1019 	cjne	r3,#0x54,00248$
      0022FD BC 00 02         [24] 1020 	cjne	r4,#0x00,00248$
      002300 80 24            [24] 1021 	sjmp	00127$
      002302                       1022 00248$:
      002302 BB 52 05         [24] 1023 	cjne	r3,#0x52,00249$
      002305 BC 00 02         [24] 1024 	cjne	r4,#0x00,00249$
      002308 80 1C            [24] 1025 	sjmp	00127$
      00230A                       1026 00249$:
      00230A BB 4C 05         [24] 1027 	cjne	r3,#0x4c,00250$
      00230D BC 00 02         [24] 1028 	cjne	r4,#0x00,00250$
      002310 80 14            [24] 1029 	sjmp	00127$
      002312                       1030 00250$:
      002312                       1031 00143$:
                                   1032 ;	disp.c:189: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002312 E5 10            [12] 1033 	mov	a,_bp
      002314 24 06            [12] 1034 	add	a,#0x06
      002316 F8               [12] 1035 	mov	r0,a
      002317 E6               [12] 1036 	mov	a,@r0
      002318 04               [12] 1037 	inc	a
      002319 FF               [12] 1038 	mov	r7,a
      00231A E5 10            [12] 1039 	mov	a,_bp
      00231C 24 06            [12] 1040 	add	a,#0x06
      00231E F8               [12] 1041 	mov	r0,a
      00231F 74 07            [12] 1042 	mov	a,#0x07
      002321 5F               [12] 1043 	anl	a,r7
      002322 F6               [12] 1044 	mov	@r0,a
      002323 02 21 98         [24] 1045 	ljmp	00142$
      002326                       1046 00127$:
                                   1047 ;	disp.c:218: return r;
      002326 8B 82            [24] 1048 	mov	dpl,r3
      002328 8C 83            [24] 1049 	mov	dph,r4
                                   1050 ;	disp.c:219: }
      00232A 85 10 81         [24] 1051 	mov	sp,_bp
      00232D D0 10            [24] 1052 	pop	_bp
      00232F 22               [24] 1053 	ret
                                   1054 ;------------------------------------------------------------
                                   1055 ;Allocation info for local variables in function 'main'
                                   1056 ;------------------------------------------------------------
                                   1057 ;j                         Allocated to stack - _bp +1
                                   1058 ;c                         Allocated to registers r7 r6 
                                   1059 ;__1310720004              Allocated to registers 
                                   1060 ;s                         Allocated to registers r5 r6 r7 
                                   1061 ;__1966080006              Allocated to registers 
                                   1062 ;s                         Allocated to registers r5 r6 r7 
                                   1063 ;__1966080008              Allocated to registers 
                                   1064 ;s                         Allocated to registers r5 r6 r7 
                                   1065 ;__1966080010              Allocated to registers 
                                   1066 ;s                         Allocated to registers r5 r6 r7 
                                   1067 ;__3276800012              Allocated to registers 
                                   1068 ;s                         Allocated to registers r7 r6 r4 
                                   1069 ;__3276800014              Allocated to registers 
                                   1070 ;s                         Allocated to registers r7 r6 r4 
                                   1071 ;__3276800016              Allocated to registers 
                                   1072 ;s                         Allocated to registers r7 r6 r4 
                                   1073 ;__3276800018              Allocated to registers 
                                   1074 ;s                         Allocated to registers r7 r6 r4 
                                   1075 ;__3276800020              Allocated to registers 
                                   1076 ;s                         Allocated to registers r7 r6 r4 
                                   1077 ;__1310720022              Allocated to registers 
                                   1078 ;s                         Allocated to registers r5 r6 r7 
                                   1079 ;sloc0                     Allocated to stack - _bp +65
                                   1080 ;------------------------------------------------------------
                                   1081 ;	disp.c:221: void main(void) {
                                   1082 ;	-----------------------------------------
                                   1083 ;	 function main
                                   1084 ;	-----------------------------------------
      002330                       1085 _main:
      002330 C0 10            [24] 1086 	push	_bp
      002332 85 81 10         [24] 1087 	mov	_bp,sp
      002335 05 81            [12] 1088 	inc	sp
      002337 05 81            [12] 1089 	inc	sp
                                   1090 ;	disp.c:225: gpo_init();
      002339 12 20 AD         [24] 1091 	lcall	_gpo_init
                                   1092 ;	disp.c:226: gpo_clear();
      00233C 12 20 CE         [24] 1093 	lcall	_gpo_clear
                                   1094 ;	disp.c:227: init_disp();
      00233F 12 21 0A         [24] 1095 	lcall	_init_disp
                                   1096 ;	disp.c:228: init_timer0();
      002342 12 20 F2         [24] 1097 	lcall	_init_timer0
                                   1098 ;	disp.c:229: init_timer1();
      002345 12 20 FE         [24] 1099 	lcall	_init_timer1
                                   1100 ;	disp.c:230: init_intr();
      002348 12 20 E7         [24] 1101 	lcall	_init_intr
                                   1102 ;	disp.c:231: TR0 = 1;
                                   1103 ;	assignBit
      00234B D2 8C            [12] 1104 	setb	_TR0
                                   1105 ;	disp.c:233: reset:
      00234D                       1106 00101$:
                                   1107 ;	disp.c:234: init_disp();
      00234D 12 21 0A         [24] 1108 	lcall	_init_disp
                                   1109 ;	disp.c:235: printstr("RESET\r\n");
      002350 7D 8F            [12] 1110 	mov	r5,#___str_1
      002352 7E 27            [12] 1111 	mov	r6,#(___str_1 >> 8)
      002354 7F 80            [12] 1112 	mov	r7,#0x80
                                   1113 ;	disp.c:14: return;
      002356                       1114 00149$:
                                   1115 ;	disp.c:12: for (; *s; s++) putchar(*s);
      002356 8D 82            [24] 1116 	mov	dpl,r5
      002358 8E 83            [24] 1117 	mov	dph,r6
      00235A 8F F0            [24] 1118 	mov	b,r7
      00235C 12 27 4C         [24] 1119 	lcall	__gptrget
      00235F FC               [12] 1120 	mov	r4,a
      002360 60 1C            [24] 1121 	jz	00129$
      002362 7B 00            [12] 1122 	mov	r3,#0x00
      002364 8C 82            [24] 1123 	mov	dpl,r4
      002366 8B 83            [24] 1124 	mov	dph,r3
      002368 C0 07            [24] 1125 	push	ar7
      00236A C0 06            [24] 1126 	push	ar6
      00236C C0 05            [24] 1127 	push	ar5
      00236E 12 26 3D         [24] 1128 	lcall	_putchar
      002371 D0 05            [24] 1129 	pop	ar5
      002373 D0 06            [24] 1130 	pop	ar6
      002375 D0 07            [24] 1131 	pop	ar7
      002377 0D               [12] 1132 	inc	r5
                                   1133 ;	disp.c:235: printstr("RESET\r\n");
      002378 BD 00 DB         [24] 1134 	cjne	r5,#0x00,00149$
      00237B 0E               [12] 1135 	inc	r6
      00237C 80 D8            [24] 1136 	sjmp	00149$
      00237E                       1137 00129$:
                                   1138 ;	disp.c:236: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      00237E E4               [12] 1139 	clr	a
      00237F C0 E0            [24] 1140 	push	acc
      002381 04               [12] 1141 	inc	a
      002382 C0 E0            [24] 1142 	push	acc
      002384 90 89 01         [24] 1143 	mov	dptr,#_initial
      002387 E0               [24] 1144 	movx	a,@dptr
      002388 C0 E0            [24] 1145 	push	acc
      00238A A3               [24] 1146 	inc	dptr
      00238B E0               [24] 1147 	movx	a,@dptr
      00238C C0 E0            [24] 1148 	push	acc
      00238E A3               [24] 1149 	inc	dptr
      00238F E0               [24] 1150 	movx	a,@dptr
      002390 C0 E0            [24] 1151 	push	acc
      002392 90 80 00         [24] 1152 	mov	dptr,#_buf
      002395 75 F0 00         [24] 1153 	mov	b,#0x00
      002398 12 26 95         [24] 1154 	lcall	_strncpy
      00239B E5 81            [12] 1155 	mov	a,sp
      00239D 24 FB            [12] 1156 	add	a,#0xfb
      00239F F5 81            [12] 1157 	mov	sp,a
                                   1158 ;	disp.c:237: buf[sizeof (buf) - 1u] = 0u;
      0023A1 90 81 00         [24] 1159 	mov	dptr,#(_buf + 0x0100)
      0023A4 E4               [12] 1160 	clr	a
      0023A5 F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	disp.c:238: inv = 0u;
      0023A6 78 3B            [12] 1163 	mov	r0,#_inv
      0023A8 76 00            [12] 1164 	mov	@r0,#0x00
                                   1165 ;	disp.c:240: while (1) {
      0023AA                       1166 00125$:
                                   1167 ;	disp.c:241: printstr("P SP I L ENT S R T START MSG \"");
      0023AA 7D 97            [12] 1168 	mov	r5,#___str_2
      0023AC 7E 27            [12] 1169 	mov	r6,#(___str_2 >> 8)
      0023AE 7F 80            [12] 1170 	mov	r7,#0x80
                                   1171 ;	disp.c:14: return;
      0023B0                       1172 00152$:
                                   1173 ;	disp.c:12: for (; *s; s++) putchar(*s);
      0023B0 8D 82            [24] 1174 	mov	dpl,r5
      0023B2 8E 83            [24] 1175 	mov	dph,r6
      0023B4 8F F0            [24] 1176 	mov	b,r7
      0023B6 12 27 4C         [24] 1177 	lcall	__gptrget
      0023B9 FC               [12] 1178 	mov	r4,a
      0023BA 60 1C            [24] 1179 	jz	00131$
      0023BC 7B 00            [12] 1180 	mov	r3,#0x00
      0023BE 8C 82            [24] 1181 	mov	dpl,r4
      0023C0 8B 83            [24] 1182 	mov	dph,r3
      0023C2 C0 07            [24] 1183 	push	ar7
      0023C4 C0 06            [24] 1184 	push	ar6
      0023C6 C0 05            [24] 1185 	push	ar5
      0023C8 12 26 3D         [24] 1186 	lcall	_putchar
      0023CB D0 05            [24] 1187 	pop	ar5
      0023CD D0 06            [24] 1188 	pop	ar6
      0023CF D0 07            [24] 1189 	pop	ar7
      0023D1 0D               [12] 1190 	inc	r5
                                   1191 ;	disp.c:241: printstr("P SP I L ENT S R T START MSG \"");
      0023D2 BD 00 DB         [24] 1192 	cjne	r5,#0x00,00152$
      0023D5 0E               [12] 1193 	inc	r6
      0023D6 80 D8            [24] 1194 	sjmp	00152$
      0023D8                       1195 00131$:
                                   1196 ;	disp.c:242: printstr((char *)buf);
      0023D8 7D 00            [12] 1197 	mov	r5,#_buf
      0023DA 7E 80            [12] 1198 	mov	r6,#(_buf >> 8)
      0023DC 7F 00            [12] 1199 	mov	r7,#0x00
                                   1200 ;	disp.c:14: return;
      0023DE                       1201 00155$:
                                   1202 ;	disp.c:12: for (; *s; s++) putchar(*s);
      0023DE 8D 82            [24] 1203 	mov	dpl,r5
      0023E0 8E 83            [24] 1204 	mov	dph,r6
      0023E2 8F F0            [24] 1205 	mov	b,r7
      0023E4 12 27 4C         [24] 1206 	lcall	__gptrget
      0023E7 FC               [12] 1207 	mov	r4,a
      0023E8 60 1C            [24] 1208 	jz	00133$
      0023EA 7B 00            [12] 1209 	mov	r3,#0x00
      0023EC 8C 82            [24] 1210 	mov	dpl,r4
      0023EE 8B 83            [24] 1211 	mov	dph,r3
      0023F0 C0 07            [24] 1212 	push	ar7
      0023F2 C0 06            [24] 1213 	push	ar6
      0023F4 C0 05            [24] 1214 	push	ar5
      0023F6 12 26 3D         [24] 1215 	lcall	_putchar
      0023F9 D0 05            [24] 1216 	pop	ar5
      0023FB D0 06            [24] 1217 	pop	ar6
      0023FD D0 07            [24] 1218 	pop	ar7
      0023FF 0D               [12] 1219 	inc	r5
                                   1220 ;	disp.c:242: printstr((char *)buf);
      002400 BD 00 DB         [24] 1221 	cjne	r5,#0x00,00155$
      002403 0E               [12] 1222 	inc	r6
      002404 80 D8            [24] 1223 	sjmp	00155$
      002406                       1224 00133$:
                                   1225 ;	disp.c:243: printstr("\"\r\n");
      002406 7D B6            [12] 1226 	mov	r5,#___str_3
      002408 7E 27            [12] 1227 	mov	r6,#(___str_3 >> 8)
      00240A 7F 80            [12] 1228 	mov	r7,#0x80
                                   1229 ;	disp.c:14: return;
      00240C                       1230 00158$:
                                   1231 ;	disp.c:12: for (; *s; s++) putchar(*s);
      00240C 8D 82            [24] 1232 	mov	dpl,r5
      00240E 8E 83            [24] 1233 	mov	dph,r6
      002410 8F F0            [24] 1234 	mov	b,r7
      002412 12 27 4C         [24] 1235 	lcall	__gptrget
      002415 FC               [12] 1236 	mov	r4,a
      002416 60 1C            [24] 1237 	jz	00135$
      002418 7B 00            [12] 1238 	mov	r3,#0x00
      00241A 8C 82            [24] 1239 	mov	dpl,r4
      00241C 8B 83            [24] 1240 	mov	dph,r3
      00241E C0 07            [24] 1241 	push	ar7
      002420 C0 06            [24] 1242 	push	ar6
      002422 C0 05            [24] 1243 	push	ar5
      002424 12 26 3D         [24] 1244 	lcall	_putchar
      002427 D0 05            [24] 1245 	pop	ar5
      002429 D0 06            [24] 1246 	pop	ar6
      00242B D0 07            [24] 1247 	pop	ar7
      00242D 0D               [12] 1248 	inc	r5
                                   1249 ;	disp.c:243: printstr("\"\r\n");
      00242E BD 00 DB         [24] 1250 	cjne	r5,#0x00,00158$
      002431 0E               [12] 1251 	inc	r6
      002432 80 D8            [24] 1252 	sjmp	00158$
      002434                       1253 00135$:
                                   1254 ;	disp.c:245: c = scroll(buf);
      002434 90 80 00         [24] 1255 	mov	dptr,#_buf
      002437 75 F0 00         [24] 1256 	mov	b,#0x00
      00243A 12 21 77         [24] 1257 	lcall	_scroll
      00243D AE 82            [24] 1258 	mov	r6,dpl
      00243F AF 83            [24] 1259 	mov	r7,dph
                                   1260 ;	disp.c:247: while (1) {
      002441                       1261 00122$:
                                   1262 ;	disp.c:248: if (c == (int)'T') goto term;
      002441 BE 54 06         [24] 1263 	cjne	r6,#0x54,00345$
      002444 BF 00 03         [24] 1264 	cjne	r7,#0x00,00345$
      002447 02 25 FE         [24] 1265 	ljmp	00127$
      00244A                       1266 00345$:
                                   1267 ;	disp.c:249: else if (c == (int)'R') goto reset;
      00244A BE 52 06         [24] 1268 	cjne	r6,#0x52,00346$
      00244D BF 00 03         [24] 1269 	cjne	r7,#0x00,00346$
      002450 02 23 4D         [24] 1270 	ljmp	00101$
      002453                       1271 00346$:
                                   1272 ;	disp.c:250: else if (c == (int)'I') inv = ~inv;
      002453 BE 49 0B         [24] 1273 	cjne	r6,#0x49,00113$
      002456 BF 00 08         [24] 1274 	cjne	r7,#0x00,00113$
      002459 78 3B            [12] 1275 	mov	r0,#_inv
      00245B E6               [12] 1276 	mov	a,@r0
      00245C F4               [12] 1277 	cpl	a
      00245D F6               [12] 1278 	mov	@r0,a
      00245E 02 25 F1         [24] 1279 	ljmp	00120$
      002461                       1280 00113$:
                                   1281 ;	disp.c:251: else if (c == (int)'L') {
      002461 BE 4C 05         [24] 1282 	cjne	r6,#0x4c,00349$
      002464 BF 00 02         [24] 1283 	cjne	r7,#0x00,00349$
      002467 80 03            [24] 1284 	sjmp	00350$
      002469                       1285 00349$:
      002469 02 25 E8         [24] 1286 	ljmp	00110$
      00246C                       1287 00350$:
                                   1288 ;	disp.c:252: init_disp();
      00246C 12 21 0A         [24] 1289 	lcall	_init_disp
                                   1290 ;	disp.c:253: printstr("LOAD ");
      00246F 7F BA            [12] 1291 	mov	r7,#___str_4
      002471 7E 27            [12] 1292 	mov	r6,#(___str_4 >> 8)
      002473 7C 80            [12] 1293 	mov	r4,#0x80
                                   1294 ;	disp.c:14: return;
      002475                       1295 00161$:
                                   1296 ;	disp.c:12: for (; *s; s++) putchar(*s);
      002475 8F 82            [24] 1297 	mov	dpl,r7
      002477 8E 83            [24] 1298 	mov	dph,r6
      002479 8C F0            [24] 1299 	mov	b,r4
      00247B 12 27 4C         [24] 1300 	lcall	__gptrget
      00247E FA               [12] 1301 	mov	r2,a
      00247F 60 1C            [24] 1302 	jz	00137$
      002481 7D 00            [12] 1303 	mov	r5,#0x00
      002483 8A 82            [24] 1304 	mov	dpl,r2
      002485 8D 83            [24] 1305 	mov	dph,r5
      002487 C0 07            [24] 1306 	push	ar7
      002489 C0 06            [24] 1307 	push	ar6
      00248B C0 04            [24] 1308 	push	ar4
      00248D 12 26 3D         [24] 1309 	lcall	_putchar
      002490 D0 04            [24] 1310 	pop	ar4
      002492 D0 06            [24] 1311 	pop	ar6
      002494 D0 07            [24] 1312 	pop	ar7
      002496 0F               [12] 1313 	inc	r7
                                   1314 ;	disp.c:253: printstr("LOAD ");
      002497 BF 00 DB         [24] 1315 	cjne	r7,#0x00,00161$
      00249A 0E               [12] 1316 	inc	r6
      00249B 80 D8            [24] 1317 	sjmp	00161$
      00249D                       1318 00137$:
                                   1319 ;	disp.c:254: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00249D 7C 00            [12] 1320 	mov	r4,#0x00
      00249F 7D 00            [12] 1321 	mov	r5,#0x00
      0024A1 A8 10            [24] 1322 	mov	r0,_bp
      0024A3 08               [12] 1323 	inc	r0
      0024A4 E4               [12] 1324 	clr	a
      0024A5 F6               [12] 1325 	mov	@r0,a
      0024A6 08               [12] 1326 	inc	r0
      0024A7 F6               [12] 1327 	mov	@r0,a
      0024A8                       1328 00163$:
                                   1329 ;	disp.c:255: c = getchar();
      0024A8 C0 04            [24] 1330 	push	ar4
      0024AA C0 05            [24] 1331 	push	ar5
      0024AC 12 26 47         [24] 1332 	lcall	_getchar
      0024AF AC 82            [24] 1333 	mov	r4,dpl
      0024B1 AD 83            [24] 1334 	mov	r5,dph
      0024B3 8C 07            [24] 1335 	mov	ar7,r4
      0024B5 8D 06            [24] 1336 	mov	ar6,r5
                                   1337 ;	disp.c:256: (void)putchar(c);
      0024B7 8F 82            [24] 1338 	mov	dpl,r7
      0024B9 8E 83            [24] 1339 	mov	dph,r6
      0024BB C0 07            [24] 1340 	push	ar7
      0024BD C0 06            [24] 1341 	push	ar6
      0024BF C0 05            [24] 1342 	push	ar5
      0024C1 C0 04            [24] 1343 	push	ar4
      0024C3 12 26 3D         [24] 1344 	lcall	_putchar
      0024C6 D0 04            [24] 1345 	pop	ar4
      0024C8 D0 05            [24] 1346 	pop	ar5
      0024CA D0 06            [24] 1347 	pop	ar6
      0024CC D0 07            [24] 1348 	pop	ar7
                                   1349 ;	disp.c:257: if ((c == (int)'\r') || (c == (int)'\n')) {
      0024CE BF 0D 09         [24] 1350 	cjne	r7,#0x0d,00353$
      0024D1 BE 00 06         [24] 1351 	cjne	r6,#0x00,00353$
      0024D4 D0 05            [24] 1352 	pop	ar5
      0024D6 D0 04            [24] 1353 	pop	ar4
      0024D8 80 0A            [24] 1354 	sjmp	00102$
      0024DA                       1355 00353$:
      0024DA D0 05            [24] 1356 	pop	ar5
      0024DC D0 04            [24] 1357 	pop	ar4
      0024DE BF 0A 11         [24] 1358 	cjne	r7,#0x0a,00103$
      0024E1 BE 00 0E         [24] 1359 	cjne	r6,#0x00,00103$
      0024E4                       1360 00102$:
                                   1361 ;	disp.c:258: buf[j] = 0u;
      0024E4 EC               [12] 1362 	mov	a,r4
      0024E5 24 00            [12] 1363 	add	a,#_buf
      0024E7 F5 82            [12] 1364 	mov	dpl,a
      0024E9 ED               [12] 1365 	mov	a,r5
      0024EA 34 80            [12] 1366 	addc	a,#(_buf >> 8)
      0024EC F5 83            [12] 1367 	mov	dph,a
      0024EE E4               [12] 1368 	clr	a
      0024EF F0               [24] 1369 	movx	@dptr,a
                                   1370 ;	disp.c:259: break;
      0024F0 80 32            [24] 1371 	sjmp	00106$
      0024F2                       1372 00103$:
                                   1373 ;	disp.c:260: } else buf[j] = c & 0xffu;
      0024F2 A8 10            [24] 1374 	mov	r0,_bp
      0024F4 08               [12] 1375 	inc	r0
      0024F5 E6               [12] 1376 	mov	a,@r0
      0024F6 24 00            [12] 1377 	add	a,#_buf
      0024F8 FD               [12] 1378 	mov	r5,a
      0024F9 08               [12] 1379 	inc	r0
      0024FA E6               [12] 1380 	mov	a,@r0
      0024FB 34 80            [12] 1381 	addc	a,#(_buf >> 8)
      0024FD FC               [12] 1382 	mov	r4,a
      0024FE 8F 03            [24] 1383 	mov	ar3,r7
      002500 8D 82            [24] 1384 	mov	dpl,r5
      002502 8C 83            [24] 1385 	mov	dph,r4
      002504 EB               [12] 1386 	mov	a,r3
      002505 F0               [24] 1387 	movx	@dptr,a
                                   1388 ;	disp.c:254: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002506 A8 10            [24] 1389 	mov	r0,_bp
      002508 08               [12] 1390 	inc	r0
      002509 06               [12] 1391 	inc	@r0
      00250A B6 00 02         [24] 1392 	cjne	@r0,#0x00,00356$
      00250D 08               [12] 1393 	inc	r0
      00250E 06               [12] 1394 	inc	@r0
      00250F                       1395 00356$:
      00250F A8 10            [24] 1396 	mov	r0,_bp
      002511 08               [12] 1397 	inc	r0
      002512 86 04            [24] 1398 	mov	ar4,@r0
      002514 08               [12] 1399 	inc	r0
      002515 86 05            [24] 1400 	mov	ar5,@r0
      002517 A8 10            [24] 1401 	mov	r0,_bp
      002519 08               [12] 1402 	inc	r0
      00251A 86 02            [24] 1403 	mov	ar2,@r0
      00251C 08               [12] 1404 	inc	r0
      00251D 86 03            [24] 1405 	mov	ar3,@r0
      00251F 74 FF            [12] 1406 	mov	a,#0x100 - 0x01
      002521 2B               [12] 1407 	add	a,r3
      002522 50 84            [24] 1408 	jnc	00163$
      002524                       1409 00106$:
                                   1410 ;	disp.c:262: buf[j] = 0u;
      002524 EC               [12] 1411 	mov	a,r4
      002525 24 00            [12] 1412 	add	a,#_buf
      002527 F5 82            [12] 1413 	mov	dpl,a
      002529 ED               [12] 1414 	mov	a,r5
      00252A 34 80            [12] 1415 	addc	a,#(_buf >> 8)
      00252C F5 83            [12] 1416 	mov	dph,a
      00252E E4               [12] 1417 	clr	a
      00252F F0               [24] 1418 	movx	@dptr,a
                                   1419 ;	disp.c:263: printstr("\r\n");
      002530 7F C0            [12] 1420 	mov	r7,#___str_5
      002532 7E 27            [12] 1421 	mov	r6,#(___str_5 >> 8)
      002534 7C 80            [12] 1422 	mov	r4,#0x80
                                   1423 ;	disp.c:14: return;
      002536                       1424 00166$:
                                   1425 ;	disp.c:12: for (; *s; s++) putchar(*s);
      002536 8F 82            [24] 1426 	mov	dpl,r7
      002538 8E 83            [24] 1427 	mov	dph,r6
      00253A 8C F0            [24] 1428 	mov	b,r4
      00253C 12 27 4C         [24] 1429 	lcall	__gptrget
      00253F FA               [12] 1430 	mov	r2,a
      002540 60 1C            [24] 1431 	jz	00139$
      002542 7D 00            [12] 1432 	mov	r5,#0x00
      002544 8A 82            [24] 1433 	mov	dpl,r2
      002546 8D 83            [24] 1434 	mov	dph,r5
      002548 C0 07            [24] 1435 	push	ar7
      00254A C0 06            [24] 1436 	push	ar6
      00254C C0 04            [24] 1437 	push	ar4
      00254E 12 26 3D         [24] 1438 	lcall	_putchar
      002551 D0 04            [24] 1439 	pop	ar4
      002553 D0 06            [24] 1440 	pop	ar6
      002555 D0 07            [24] 1441 	pop	ar7
      002557 0F               [12] 1442 	inc	r7
                                   1443 ;	disp.c:263: printstr("\r\n");
      002558 BF 00 DB         [24] 1444 	cjne	r7,#0x00,00166$
      00255B 0E               [12] 1445 	inc	r6
      00255C 80 D8            [24] 1446 	sjmp	00166$
      00255E                       1447 00139$:
                                   1448 ;	disp.c:264: printstr("MSG \"");
      00255E 7F C3            [12] 1449 	mov	r7,#___str_6
      002560 7E 27            [12] 1450 	mov	r6,#(___str_6 >> 8)
      002562 7C 80            [12] 1451 	mov	r4,#0x80
                                   1452 ;	disp.c:14: return;
      002564                       1453 00169$:
                                   1454 ;	disp.c:12: for (; *s; s++) putchar(*s);
      002564 8F 82            [24] 1455 	mov	dpl,r7
      002566 8E 83            [24] 1456 	mov	dph,r6
      002568 8C F0            [24] 1457 	mov	b,r4
      00256A 12 27 4C         [24] 1458 	lcall	__gptrget
      00256D FA               [12] 1459 	mov	r2,a
      00256E 60 1C            [24] 1460 	jz	00141$
      002570 7D 00            [12] 1461 	mov	r5,#0x00
      002572 8A 82            [24] 1462 	mov	dpl,r2
      002574 8D 83            [24] 1463 	mov	dph,r5
      002576 C0 07            [24] 1464 	push	ar7
      002578 C0 06            [24] 1465 	push	ar6
      00257A C0 04            [24] 1466 	push	ar4
      00257C 12 26 3D         [24] 1467 	lcall	_putchar
      00257F D0 04            [24] 1468 	pop	ar4
      002581 D0 06            [24] 1469 	pop	ar6
      002583 D0 07            [24] 1470 	pop	ar7
      002585 0F               [12] 1471 	inc	r7
                                   1472 ;	disp.c:264: printstr("MSG \"");
      002586 BF 00 DB         [24] 1473 	cjne	r7,#0x00,00169$
      002589 0E               [12] 1474 	inc	r6
      00258A 80 D8            [24] 1475 	sjmp	00169$
      00258C                       1476 00141$:
                                   1477 ;	disp.c:265: printstr((char *)buf);
      00258C 7F 00            [12] 1478 	mov	r7,#_buf
      00258E 7E 80            [12] 1479 	mov	r6,#(_buf >> 8)
      002590 7C 00            [12] 1480 	mov	r4,#0x00
                                   1481 ;	disp.c:14: return;
      002592                       1482 00172$:
                                   1483 ;	disp.c:12: for (; *s; s++) putchar(*s);
      002592 8F 82            [24] 1484 	mov	dpl,r7
      002594 8E 83            [24] 1485 	mov	dph,r6
      002596 8C F0            [24] 1486 	mov	b,r4
      002598 12 27 4C         [24] 1487 	lcall	__gptrget
      00259B FA               [12] 1488 	mov	r2,a
      00259C 60 1C            [24] 1489 	jz	00143$
      00259E 7D 00            [12] 1490 	mov	r5,#0x00
      0025A0 8A 82            [24] 1491 	mov	dpl,r2
      0025A2 8D 83            [24] 1492 	mov	dph,r5
      0025A4 C0 07            [24] 1493 	push	ar7
      0025A6 C0 06            [24] 1494 	push	ar6
      0025A8 C0 04            [24] 1495 	push	ar4
      0025AA 12 26 3D         [24] 1496 	lcall	_putchar
      0025AD D0 04            [24] 1497 	pop	ar4
      0025AF D0 06            [24] 1498 	pop	ar6
      0025B1 D0 07            [24] 1499 	pop	ar7
      0025B3 0F               [12] 1500 	inc	r7
                                   1501 ;	disp.c:265: printstr((char *)buf);
      0025B4 BF 00 DB         [24] 1502 	cjne	r7,#0x00,00172$
      0025B7 0E               [12] 1503 	inc	r6
      0025B8 80 D8            [24] 1504 	sjmp	00172$
      0025BA                       1505 00143$:
                                   1506 ;	disp.c:266: printstr("\"\r\n");
      0025BA 7F B6            [12] 1507 	mov	r7,#___str_3
      0025BC 7E 27            [12] 1508 	mov	r6,#(___str_3 >> 8)
      0025BE 7C 80            [12] 1509 	mov	r4,#0x80
                                   1510 ;	disp.c:14: return;
      0025C0                       1511 00175$:
                                   1512 ;	disp.c:12: for (; *s; s++) putchar(*s);
      0025C0 8F 82            [24] 1513 	mov	dpl,r7
      0025C2 8E 83            [24] 1514 	mov	dph,r6
      0025C4 8C F0            [24] 1515 	mov	b,r4
      0025C6 12 27 4C         [24] 1516 	lcall	__gptrget
      0025C9 FA               [12] 1517 	mov	r2,a
      0025CA 60 25            [24] 1518 	jz	00120$
      0025CC 7D 00            [12] 1519 	mov	r5,#0x00
      0025CE 8A 82            [24] 1520 	mov	dpl,r2
      0025D0 8D 83            [24] 1521 	mov	dph,r5
      0025D2 C0 07            [24] 1522 	push	ar7
      0025D4 C0 06            [24] 1523 	push	ar6
      0025D6 C0 04            [24] 1524 	push	ar4
      0025D8 12 26 3D         [24] 1525 	lcall	_putchar
      0025DB D0 04            [24] 1526 	pop	ar4
      0025DD D0 06            [24] 1527 	pop	ar6
      0025DF D0 07            [24] 1528 	pop	ar7
      0025E1 0F               [12] 1529 	inc	r7
                                   1530 ;	disp.c:266: printstr("\"\r\n");
      0025E2 BF 00 DB         [24] 1531 	cjne	r7,#0x00,00175$
      0025E5 0E               [12] 1532 	inc	r6
      0025E6 80 D8            [24] 1533 	sjmp	00175$
      0025E8                       1534 00110$:
                                   1535 ;	disp.c:267: } else if (c == (int)'S') break;
      0025E8 BE 53 06         [24] 1536 	cjne	r6,#0x53,00366$
      0025EB BF 00 03         [24] 1537 	cjne	r7,#0x00,00366$
      0025EE 02 23 AA         [24] 1538 	ljmp	00125$
      0025F1                       1539 00366$:
      0025F1                       1540 00120$:
                                   1541 ;	disp.c:269: c = toupper(getchar());
      0025F1 12 26 47         [24] 1542 	lcall	_getchar
      0025F4 12 26 6E         [24] 1543 	lcall	_toupper
      0025F7 AE 82            [24] 1544 	mov	r6,dpl
      0025F9 AF 83            [24] 1545 	mov	r7,dph
      0025FB 02 24 41         [24] 1546 	ljmp	00122$
                                   1547 ;	disp.c:273: term:	
      0025FE                       1548 00127$:
                                   1549 ;	disp.c:274: EA = 0;
                                   1550 ;	assignBit
      0025FE C2 AF            [12] 1551 	clr	_EA
                                   1552 ;	disp.c:275: init_disp();
      002600 12 21 0A         [24] 1553 	lcall	_init_disp
                                   1554 ;	disp.c:276: printstr("TERM\r\n");
      002603 7D C9            [12] 1555 	mov	r5,#___str_7
      002605 7E 27            [12] 1556 	mov	r6,#(___str_7 >> 8)
      002607 7F 80            [12] 1557 	mov	r7,#0x80
                                   1558 ;	disp.c:14: return;
      002609                       1559 00178$:
                                   1560 ;	disp.c:12: for (; *s; s++) putchar(*s);
      002609 8D 82            [24] 1561 	mov	dpl,r5
      00260B 8E 83            [24] 1562 	mov	dph,r6
      00260D 8F F0            [24] 1563 	mov	b,r7
      00260F 12 27 4C         [24] 1564 	lcall	__gptrget
      002612 FC               [12] 1565 	mov	r4,a
      002613 60 1C            [24] 1566 	jz	00147$
      002615 7B 00            [12] 1567 	mov	r3,#0x00
      002617 8C 82            [24] 1568 	mov	dpl,r4
      002619 8B 83            [24] 1569 	mov	dph,r3
      00261B C0 07            [24] 1570 	push	ar7
      00261D C0 06            [24] 1571 	push	ar6
      00261F C0 05            [24] 1572 	push	ar5
      002621 12 26 3D         [24] 1573 	lcall	_putchar
      002624 D0 05            [24] 1574 	pop	ar5
      002626 D0 06            [24] 1575 	pop	ar6
      002628 D0 07            [24] 1576 	pop	ar7
      00262A 0D               [12] 1577 	inc	r5
                                   1578 ;	disp.c:276: printstr("TERM\r\n");
      00262B BD 00 DB         [24] 1579 	cjne	r5,#0x00,00178$
      00262E 0E               [12] 1580 	inc	r6
      00262F 80 D8            [24] 1581 	sjmp	00178$
      002631                       1582 00147$:
                                   1583 ;	disp.c:277: (void)getchar();
      002631 12 26 47         [24] 1584 	lcall	_getchar
                                   1585 ;	disp.c:279: PCON |= 2;
      002634 43 87 02         [24] 1586 	orl	_PCON,#0x02
                                   1587 ;	disp.c:281: return;
                                   1588 ;	disp.c:282: }
      002637 85 10 81         [24] 1589 	mov	sp,_bp
      00263A D0 10            [24] 1590 	pop	_bp
      00263C 22               [24] 1591 	ret
                                   1592 	.area CSEG    (CODE)
                                   1593 	.area CONST   (CODE)
                                   1594 	.area CONST   (CODE)
      002787                       1595 ___str_0:
      002787 50 41 55 53 45        1596 	.ascii "PAUSE"
      00278C 0D                    1597 	.db 0x0d
      00278D 0A                    1598 	.db 0x0a
      00278E 00                    1599 	.db 0x00
                                   1600 	.area CSEG    (CODE)
                                   1601 	.area CONST   (CODE)
      00278F                       1602 ___str_1:
      00278F 52 45 53 45 54        1603 	.ascii "RESET"
      002794 0D                    1604 	.db 0x0d
      002795 0A                    1605 	.db 0x0a
      002796 00                    1606 	.db 0x00
                                   1607 	.area CSEG    (CODE)
                                   1608 	.area CONST   (CODE)
      002797                       1609 ___str_2:
      002797 50 20 53 50 20 49 20  1610 	.ascii "P SP I L ENT S R T START MSG "
             4C 20 45 4E 54 20 53
             20 52 20 54 20 53 54
             41 52 54 20 4D 53 47
             20
      0027B4 22                    1611 	.db 0x22
      0027B5 00                    1612 	.db 0x00
                                   1613 	.area CSEG    (CODE)
                                   1614 	.area CONST   (CODE)
      0027B6                       1615 ___str_3:
      0027B6 22                    1616 	.db 0x22
      0027B7 0D                    1617 	.db 0x0d
      0027B8 0A                    1618 	.db 0x0a
      0027B9 00                    1619 	.db 0x00
                                   1620 	.area CSEG    (CODE)
                                   1621 	.area CONST   (CODE)
      0027BA                       1622 ___str_4:
      0027BA 4C 4F 41 44 20        1623 	.ascii "LOAD "
      0027BF 00                    1624 	.db 0x00
                                   1625 	.area CSEG    (CODE)
                                   1626 	.area CONST   (CODE)
      0027C0                       1627 ___str_5:
      0027C0 0D                    1628 	.db 0x0d
      0027C1 0A                    1629 	.db 0x0a
      0027C2 00                    1630 	.db 0x00
                                   1631 	.area CSEG    (CODE)
                                   1632 	.area CONST   (CODE)
      0027C3                       1633 ___str_6:
      0027C3 4D 53 47 20           1634 	.ascii "MSG "
      0027C7 22                    1635 	.db 0x22
      0027C8 00                    1636 	.db 0x00
                                   1637 	.area CSEG    (CODE)
                                   1638 	.area CONST   (CODE)
      0027C9                       1639 ___str_7:
      0027C9 54 45 52 4D           1640 	.ascii "TERM"
      0027CD 0D                    1641 	.db 0x0d
      0027CE 0A                    1642 	.db 0x0a
      0027CF 00                    1643 	.db 0x00
                                   1644 	.area CSEG    (CODE)
                                   1645 	.area CONST   (CODE)
      0027D0                       1646 ___str_8:
      0027D0 43 41 45 44 49 54 45  1647 	.ascii "CAEDITE EOS : NOVIT ENIM DOMINVS QVI SVNT EIVS : "
             20 45 4F 53 20 3A 20
             4E 4F 56 49 54 20 45
             4E 49 4D 20 44 4F 4D
             49 4E 56 53 20 51 56
             49 20 53 56 4E 54 20
             45 49 56 53 20 3A 20
      002801 00                    1648 	.db 0x00
                                   1649 	.area CSEG    (CODE)
                                   1650 	.area XINIT   (CODE)
      002802                       1651 __xinit___ft_font6x8:
      002802 00                    1652 	.db #0x00	; 0
      002803 00                    1653 	.db #0x00	; 0
      002804 00                    1654 	.db #0x00	; 0
      002805 00                    1655 	.db #0x00	; 0
      002806 00                    1656 	.db #0x00	; 0
      002807 00                    1657 	.db #0x00	; 0
      002808 00                    1658 	.db #0x00	; 0
      002809 00                    1659 	.db #0x00	; 0
      00280A 1C                    1660 	.db #0x1c	; 28
      00280B 22                    1661 	.db #0x22	; 34
      00280C 36                    1662 	.db #0x36	; 54	'6'
      00280D 22                    1663 	.db #0x22	; 34
      00280E 2A                    1664 	.db #0x2a	; 42
      00280F 22                    1665 	.db #0x22	; 34
      002810 1C                    1666 	.db #0x1c	; 28
      002811 00                    1667 	.db #0x00	; 0
      002812 1C                    1668 	.db #0x1c	; 28
      002813 3E                    1669 	.db #0x3e	; 62
      002814 2A                    1670 	.db #0x2a	; 42
      002815 3E                    1671 	.db #0x3e	; 62
      002816 22                    1672 	.db #0x22	; 34
      002817 3E                    1673 	.db #0x3e	; 62
      002818 1C                    1674 	.db #0x1c	; 28
      002819 00                    1675 	.db #0x00	; 0
      00281A 00                    1676 	.db #0x00	; 0
      00281B 14                    1677 	.db #0x14	; 20
      00281C 3E                    1678 	.db #0x3e	; 62
      00281D 3E                    1679 	.db #0x3e	; 62
      00281E 3E                    1680 	.db #0x3e	; 62
      00281F 1C                    1681 	.db #0x1c	; 28
      002820 08                    1682 	.db #0x08	; 8
      002821 00                    1683 	.db #0x00	; 0
      002822 00                    1684 	.db #0x00	; 0
      002823 08                    1685 	.db #0x08	; 8
      002824 1C                    1686 	.db #0x1c	; 28
      002825 3E                    1687 	.db #0x3e	; 62
      002826 3E                    1688 	.db #0x3e	; 62
      002827 1C                    1689 	.db #0x1c	; 28
      002828 08                    1690 	.db #0x08	; 8
      002829 00                    1691 	.db #0x00	; 0
      00282A 08                    1692 	.db #0x08	; 8
      00282B 1C                    1693 	.db #0x1c	; 28
      00282C 1C                    1694 	.db #0x1c	; 28
      00282D 08                    1695 	.db #0x08	; 8
      00282E 3E                    1696 	.db #0x3e	; 62
      00282F 3E                    1697 	.db #0x3e	; 62
      002830 08                    1698 	.db #0x08	; 8
      002831 00                    1699 	.db #0x00	; 0
      002832 00                    1700 	.db #0x00	; 0
      002833 08                    1701 	.db #0x08	; 8
      002834 1C                    1702 	.db #0x1c	; 28
      002835 3E                    1703 	.db #0x3e	; 62
      002836 3E                    1704 	.db #0x3e	; 62
      002837 08                    1705 	.db #0x08	; 8
      002838 1C                    1706 	.db #0x1c	; 28
      002839 00                    1707 	.db #0x00	; 0
      00283A 00                    1708 	.db #0x00	; 0
      00283B 00                    1709 	.db #0x00	; 0
      00283C 00                    1710 	.db #0x00	; 0
      00283D 0C                    1711 	.db #0x0c	; 12
      00283E 0C                    1712 	.db #0x0c	; 12
      00283F 00                    1713 	.db #0x00	; 0
      002840 00                    1714 	.db #0x00	; 0
      002841 00                    1715 	.db #0x00	; 0
      002842 3F                    1716 	.db #0x3f	; 63
      002843 3F                    1717 	.db #0x3f	; 63
      002844 3F                    1718 	.db #0x3f	; 63
      002845 33                    1719 	.db #0x33	; 51	'3'
      002846 33                    1720 	.db #0x33	; 51	'3'
      002847 3F                    1721 	.db #0x3f	; 63
      002848 3F                    1722 	.db #0x3f	; 63
      002849 3F                    1723 	.db #0x3f	; 63
      00284A 00                    1724 	.db #0x00	; 0
      00284B 00                    1725 	.db #0x00	; 0
      00284C 1E                    1726 	.db #0x1e	; 30
      00284D 12                    1727 	.db #0x12	; 18
      00284E 12                    1728 	.db #0x12	; 18
      00284F 1E                    1729 	.db #0x1e	; 30
      002850 00                    1730 	.db #0x00	; 0
      002851 00                    1731 	.db #0x00	; 0
      002852 3F                    1732 	.db #0x3f	; 63
      002853 3F                    1733 	.db #0x3f	; 63
      002854 21                    1734 	.db #0x21	; 33
      002855 2D                    1735 	.db #0x2d	; 45
      002856 2D                    1736 	.db #0x2d	; 45
      002857 21                    1737 	.db #0x21	; 33
      002858 3F                    1738 	.db #0x3f	; 63
      002859 3F                    1739 	.db #0x3f	; 63
      00285A 00                    1740 	.db #0x00	; 0
      00285B 38                    1741 	.db #0x38	; 56	'8'
      00285C 30                    1742 	.db #0x30	; 48	'0'
      00285D 2C                    1743 	.db #0x2c	; 44
      00285E 12                    1744 	.db #0x12	; 18
      00285F 12                    1745 	.db #0x12	; 18
      002860 0C                    1746 	.db #0x0c	; 12
      002861 00                    1747 	.db #0x00	; 0
      002862 1C                    1748 	.db #0x1c	; 28
      002863 22                    1749 	.db #0x22	; 34
      002864 22                    1750 	.db #0x22	; 34
      002865 1C                    1751 	.db #0x1c	; 28
      002866 08                    1752 	.db #0x08	; 8
      002867 1C                    1753 	.db #0x1c	; 28
      002868 08                    1754 	.db #0x08	; 8
      002869 00                    1755 	.db #0x00	; 0
      00286A 08                    1756 	.db #0x08	; 8
      00286B 18                    1757 	.db #0x18	; 24
      00286C 28                    1758 	.db #0x28	; 40
      00286D 08                    1759 	.db #0x08	; 8
      00286E 0C                    1760 	.db #0x0c	; 12
      00286F 0E                    1761 	.db #0x0e	; 14
      002870 06                    1762 	.db #0x06	; 6
      002871 00                    1763 	.db #0x00	; 0
      002872 30                    1764 	.db #0x30	; 48	'0'
      002873 2C                    1765 	.db #0x2c	; 44
      002874 34                    1766 	.db #0x34	; 52	'4'
      002875 2C                    1767 	.db #0x2c	; 44
      002876 34                    1768 	.db #0x34	; 52	'4'
      002877 36                    1769 	.db #0x36	; 54	'6'
      002878 06                    1770 	.db #0x06	; 6
      002879 00                    1771 	.db #0x00	; 0
      00287A 00                    1772 	.db #0x00	; 0
      00287B 2A                    1773 	.db #0x2a	; 42
      00287C 1C                    1774 	.db #0x1c	; 28
      00287D 36                    1775 	.db #0x36	; 54	'6'
      00287E 1C                    1776 	.db #0x1c	; 28
      00287F 2A                    1777 	.db #0x2a	; 42
      002880 00                    1778 	.db #0x00	; 0
      002881 00                    1779 	.db #0x00	; 0
      002882 04                    1780 	.db #0x04	; 4
      002883 0C                    1781 	.db #0x0c	; 12
      002884 1C                    1782 	.db #0x1c	; 28
      002885 3C                    1783 	.db #0x3c	; 60
      002886 1C                    1784 	.db #0x1c	; 28
      002887 0C                    1785 	.db #0x0c	; 12
      002888 04                    1786 	.db #0x04	; 4
      002889 00                    1787 	.db #0x00	; 0
      00288A 10                    1788 	.db #0x10	; 16
      00288B 18                    1789 	.db #0x18	; 24
      00288C 1C                    1790 	.db #0x1c	; 28
      00288D 1E                    1791 	.db #0x1e	; 30
      00288E 1C                    1792 	.db #0x1c	; 28
      00288F 18                    1793 	.db #0x18	; 24
      002890 10                    1794 	.db #0x10	; 16
      002891 00                    1795 	.db #0x00	; 0
      002892 08                    1796 	.db #0x08	; 8
      002893 1C                    1797 	.db #0x1c	; 28
      002894 3E                    1798 	.db #0x3e	; 62
      002895 08                    1799 	.db #0x08	; 8
      002896 3E                    1800 	.db #0x3e	; 62
      002897 1C                    1801 	.db #0x1c	; 28
      002898 08                    1802 	.db #0x08	; 8
      002899 00                    1803 	.db #0x00	; 0
      00289A 14                    1804 	.db #0x14	; 20
      00289B 14                    1805 	.db #0x14	; 20
      00289C 14                    1806 	.db #0x14	; 20
      00289D 14                    1807 	.db #0x14	; 20
      00289E 14                    1808 	.db #0x14	; 20
      00289F 00                    1809 	.db #0x00	; 0
      0028A0 14                    1810 	.db #0x14	; 20
      0028A1 00                    1811 	.db #0x00	; 0
      0028A2 3C                    1812 	.db #0x3c	; 60
      0028A3 2A                    1813 	.db #0x2a	; 42
      0028A4 2A                    1814 	.db #0x2a	; 42
      0028A5 2C                    1815 	.db #0x2c	; 44
      0028A6 28                    1816 	.db #0x28	; 40
      0028A7 28                    1817 	.db #0x28	; 40
      0028A8 28                    1818 	.db #0x28	; 40
      0028A9 00                    1819 	.db #0x00	; 0
      0028AA 1C                    1820 	.db #0x1c	; 28
      0028AB 22                    1821 	.db #0x22	; 34
      0028AC 0C                    1822 	.db #0x0c	; 12
      0028AD 14                    1823 	.db #0x14	; 20
      0028AE 18                    1824 	.db #0x18	; 24
      0028AF 22                    1825 	.db #0x22	; 34
      0028B0 1C                    1826 	.db #0x1c	; 28
      0028B1 00                    1827 	.db #0x00	; 0
      0028B2 00                    1828 	.db #0x00	; 0
      0028B3 00                    1829 	.db #0x00	; 0
      0028B4 00                    1830 	.db #0x00	; 0
      0028B5 00                    1831 	.db #0x00	; 0
      0028B6 00                    1832 	.db #0x00	; 0
      0028B7 1E                    1833 	.db #0x1e	; 30
      0028B8 1E                    1834 	.db #0x1e	; 30
      0028B9 00                    1835 	.db #0x00	; 0
      0028BA 08                    1836 	.db #0x08	; 8
      0028BB 1C                    1837 	.db #0x1c	; 28
      0028BC 3E                    1838 	.db #0x3e	; 62
      0028BD 08                    1839 	.db #0x08	; 8
      0028BE 3E                    1840 	.db #0x3e	; 62
      0028BF 1C                    1841 	.db #0x1c	; 28
      0028C0 08                    1842 	.db #0x08	; 8
      0028C1 1C                    1843 	.db #0x1c	; 28
      0028C2 08                    1844 	.db #0x08	; 8
      0028C3 1C                    1845 	.db #0x1c	; 28
      0028C4 3E                    1846 	.db #0x3e	; 62
      0028C5 08                    1847 	.db #0x08	; 8
      0028C6 08                    1848 	.db #0x08	; 8
      0028C7 08                    1849 	.db #0x08	; 8
      0028C8 08                    1850 	.db #0x08	; 8
      0028C9 00                    1851 	.db #0x00	; 0
      0028CA 08                    1852 	.db #0x08	; 8
      0028CB 08                    1853 	.db #0x08	; 8
      0028CC 08                    1854 	.db #0x08	; 8
      0028CD 08                    1855 	.db #0x08	; 8
      0028CE 3E                    1856 	.db #0x3e	; 62
      0028CF 1C                    1857 	.db #0x1c	; 28
      0028D0 08                    1858 	.db #0x08	; 8
      0028D1 00                    1859 	.db #0x00	; 0
      0028D2 00                    1860 	.db #0x00	; 0
      0028D3 08                    1861 	.db #0x08	; 8
      0028D4 18                    1862 	.db #0x18	; 24
      0028D5 3E                    1863 	.db #0x3e	; 62
      0028D6 18                    1864 	.db #0x18	; 24
      0028D7 08                    1865 	.db #0x08	; 8
      0028D8 00                    1866 	.db #0x00	; 0
      0028D9 00                    1867 	.db #0x00	; 0
      0028DA 00                    1868 	.db #0x00	; 0
      0028DB 08                    1869 	.db #0x08	; 8
      0028DC 0C                    1870 	.db #0x0c	; 12
      0028DD 3E                    1871 	.db #0x3e	; 62
      0028DE 0C                    1872 	.db #0x0c	; 12
      0028DF 08                    1873 	.db #0x08	; 8
      0028E0 00                    1874 	.db #0x00	; 0
      0028E1 00                    1875 	.db #0x00	; 0
      0028E2 00                    1876 	.db #0x00	; 0
      0028E3 00                    1877 	.db #0x00	; 0
      0028E4 00                    1878 	.db #0x00	; 0
      0028E5 02                    1879 	.db #0x02	; 2
      0028E6 02                    1880 	.db #0x02	; 2
      0028E7 02                    1881 	.db #0x02	; 2
      0028E8 3E                    1882 	.db #0x3e	; 62
      0028E9 00                    1883 	.db #0x00	; 0
      0028EA 00                    1884 	.db #0x00	; 0
      0028EB 14                    1885 	.db #0x14	; 20
      0028EC 14                    1886 	.db #0x14	; 20
      0028ED 3E                    1887 	.db #0x3e	; 62
      0028EE 14                    1888 	.db #0x14	; 20
      0028EF 14                    1889 	.db #0x14	; 20
      0028F0 00                    1890 	.db #0x00	; 0
      0028F1 00                    1891 	.db #0x00	; 0
      0028F2 08                    1892 	.db #0x08	; 8
      0028F3 08                    1893 	.db #0x08	; 8
      0028F4 1C                    1894 	.db #0x1c	; 28
      0028F5 1C                    1895 	.db #0x1c	; 28
      0028F6 3E                    1896 	.db #0x3e	; 62
      0028F7 3E                    1897 	.db #0x3e	; 62
      0028F8 00                    1898 	.db #0x00	; 0
      0028F9 00                    1899 	.db #0x00	; 0
      0028FA 3E                    1900 	.db #0x3e	; 62
      0028FB 3E                    1901 	.db #0x3e	; 62
      0028FC 1C                    1902 	.db #0x1c	; 28
      0028FD 1C                    1903 	.db #0x1c	; 28
      0028FE 08                    1904 	.db #0x08	; 8
      0028FF 08                    1905 	.db #0x08	; 8
      002900 00                    1906 	.db #0x00	; 0
      002901 00                    1907 	.db #0x00	; 0
      002902 00                    1908 	.db #0x00	; 0
      002903 00                    1909 	.db #0x00	; 0
      002904 00                    1910 	.db #0x00	; 0
      002905 00                    1911 	.db #0x00	; 0
      002906 00                    1912 	.db #0x00	; 0
      002907 00                    1913 	.db #0x00	; 0
      002908 00                    1914 	.db #0x00	; 0
      002909 00                    1915 	.db #0x00	; 0
      00290A 08                    1916 	.db #0x08	; 8
      00290B 1C                    1917 	.db #0x1c	; 28
      00290C 1C                    1918 	.db #0x1c	; 28
      00290D 08                    1919 	.db #0x08	; 8
      00290E 08                    1920 	.db #0x08	; 8
      00290F 00                    1921 	.db #0x00	; 0
      002910 08                    1922 	.db #0x08	; 8
      002911 00                    1923 	.db #0x00	; 0
      002912 36                    1924 	.db #0x36	; 54	'6'
      002913 36                    1925 	.db #0x36	; 54	'6'
      002914 12                    1926 	.db #0x12	; 18
      002915 00                    1927 	.db #0x00	; 0
      002916 00                    1928 	.db #0x00	; 0
      002917 00                    1929 	.db #0x00	; 0
      002918 00                    1930 	.db #0x00	; 0
      002919 00                    1931 	.db #0x00	; 0
      00291A 00                    1932 	.db #0x00	; 0
      00291B 14                    1933 	.db #0x14	; 20
      00291C 3E                    1934 	.db #0x3e	; 62
      00291D 14                    1935 	.db #0x14	; 20
      00291E 14                    1936 	.db #0x14	; 20
      00291F 3E                    1937 	.db #0x3e	; 62
      002920 14                    1938 	.db #0x14	; 20
      002921 00                    1939 	.db #0x00	; 0
      002922 04                    1940 	.db #0x04	; 4
      002923 1C                    1941 	.db #0x1c	; 28
      002924 02                    1942 	.db #0x02	; 2
      002925 0C                    1943 	.db #0x0c	; 12
      002926 10                    1944 	.db #0x10	; 16
      002927 0E                    1945 	.db #0x0e	; 14
      002928 08                    1946 	.db #0x08	; 8
      002929 00                    1947 	.db #0x00	; 0
      00292A 26                    1948 	.db #0x26	; 38
      00292B 26                    1949 	.db #0x26	; 38
      00292C 10                    1950 	.db #0x10	; 16
      00292D 08                    1951 	.db #0x08	; 8
      00292E 04                    1952 	.db #0x04	; 4
      00292F 32                    1953 	.db #0x32	; 50	'2'
      002930 32                    1954 	.db #0x32	; 50	'2'
      002931 00                    1955 	.db #0x00	; 0
      002932 04                    1956 	.db #0x04	; 4
      002933 0A                    1957 	.db #0x0a	; 10
      002934 0A                    1958 	.db #0x0a	; 10
      002935 04                    1959 	.db #0x04	; 4
      002936 2A                    1960 	.db #0x2a	; 42
      002937 12                    1961 	.db #0x12	; 18
      002938 2C                    1962 	.db #0x2c	; 44
      002939 00                    1963 	.db #0x00	; 0
      00293A 0C                    1964 	.db #0x0c	; 12
      00293B 0C                    1965 	.db #0x0c	; 12
      00293C 04                    1966 	.db #0x04	; 4
      00293D 00                    1967 	.db #0x00	; 0
      00293E 00                    1968 	.db #0x00	; 0
      00293F 00                    1969 	.db #0x00	; 0
      002940 00                    1970 	.db #0x00	; 0
      002941 00                    1971 	.db #0x00	; 0
      002942 08                    1972 	.db #0x08	; 8
      002943 04                    1973 	.db #0x04	; 4
      002944 04                    1974 	.db #0x04	; 4
      002945 04                    1975 	.db #0x04	; 4
      002946 04                    1976 	.db #0x04	; 4
      002947 04                    1977 	.db #0x04	; 4
      002948 08                    1978 	.db #0x08	; 8
      002949 00                    1979 	.db #0x00	; 0
      00294A 04                    1980 	.db #0x04	; 4
      00294B 08                    1981 	.db #0x08	; 8
      00294C 08                    1982 	.db #0x08	; 8
      00294D 08                    1983 	.db #0x08	; 8
      00294E 08                    1984 	.db #0x08	; 8
      00294F 08                    1985 	.db #0x08	; 8
      002950 04                    1986 	.db #0x04	; 4
      002951 00                    1987 	.db #0x00	; 0
      002952 00                    1988 	.db #0x00	; 0
      002953 14                    1989 	.db #0x14	; 20
      002954 1C                    1990 	.db #0x1c	; 28
      002955 3E                    1991 	.db #0x3e	; 62
      002956 1C                    1992 	.db #0x1c	; 28
      002957 14                    1993 	.db #0x14	; 20
      002958 00                    1994 	.db #0x00	; 0
      002959 00                    1995 	.db #0x00	; 0
      00295A 00                    1996 	.db #0x00	; 0
      00295B 08                    1997 	.db #0x08	; 8
      00295C 08                    1998 	.db #0x08	; 8
      00295D 3E                    1999 	.db #0x3e	; 62
      00295E 08                    2000 	.db #0x08	; 8
      00295F 08                    2001 	.db #0x08	; 8
      002960 00                    2002 	.db #0x00	; 0
      002961 00                    2003 	.db #0x00	; 0
      002962 00                    2004 	.db #0x00	; 0
      002963 00                    2005 	.db #0x00	; 0
      002964 00                    2006 	.db #0x00	; 0
      002965 00                    2007 	.db #0x00	; 0
      002966 00                    2008 	.db #0x00	; 0
      002967 0C                    2009 	.db #0x0c	; 12
      002968 0C                    2010 	.db #0x0c	; 12
      002969 04                    2011 	.db #0x04	; 4
      00296A 00                    2012 	.db #0x00	; 0
      00296B 00                    2013 	.db #0x00	; 0
      00296C 00                    2014 	.db #0x00	; 0
      00296D 3E                    2015 	.db #0x3e	; 62
      00296E 00                    2016 	.db #0x00	; 0
      00296F 00                    2017 	.db #0x00	; 0
      002970 00                    2018 	.db #0x00	; 0
      002971 00                    2019 	.db #0x00	; 0
      002972 00                    2020 	.db #0x00	; 0
      002973 00                    2021 	.db #0x00	; 0
      002974 00                    2022 	.db #0x00	; 0
      002975 00                    2023 	.db #0x00	; 0
      002976 00                    2024 	.db #0x00	; 0
      002977 0C                    2025 	.db #0x0c	; 12
      002978 0C                    2026 	.db #0x0c	; 12
      002979 00                    2027 	.db #0x00	; 0
      00297A 00                    2028 	.db #0x00	; 0
      00297B 20                    2029 	.db #0x20	; 32
      00297C 10                    2030 	.db #0x10	; 16
      00297D 08                    2031 	.db #0x08	; 8
      00297E 04                    2032 	.db #0x04	; 4
      00297F 02                    2033 	.db #0x02	; 2
      002980 00                    2034 	.db #0x00	; 0
      002981 00                    2035 	.db #0x00	; 0
      002982 1C                    2036 	.db #0x1c	; 28
      002983 22                    2037 	.db #0x22	; 34
      002984 32                    2038 	.db #0x32	; 50	'2'
      002985 2A                    2039 	.db #0x2a	; 42
      002986 26                    2040 	.db #0x26	; 38
      002987 22                    2041 	.db #0x22	; 34
      002988 1C                    2042 	.db #0x1c	; 28
      002989 00                    2043 	.db #0x00	; 0
      00298A 08                    2044 	.db #0x08	; 8
      00298B 0C                    2045 	.db #0x0c	; 12
      00298C 08                    2046 	.db #0x08	; 8
      00298D 08                    2047 	.db #0x08	; 8
      00298E 08                    2048 	.db #0x08	; 8
      00298F 08                    2049 	.db #0x08	; 8
      002990 1C                    2050 	.db #0x1c	; 28
      002991 00                    2051 	.db #0x00	; 0
      002992 1C                    2052 	.db #0x1c	; 28
      002993 22                    2053 	.db #0x22	; 34
      002994 20                    2054 	.db #0x20	; 32
      002995 18                    2055 	.db #0x18	; 24
      002996 04                    2056 	.db #0x04	; 4
      002997 02                    2057 	.db #0x02	; 2
      002998 3E                    2058 	.db #0x3e	; 62
      002999 00                    2059 	.db #0x00	; 0
      00299A 1C                    2060 	.db #0x1c	; 28
      00299B 22                    2061 	.db #0x22	; 34
      00299C 20                    2062 	.db #0x20	; 32
      00299D 1C                    2063 	.db #0x1c	; 28
      00299E 20                    2064 	.db #0x20	; 32
      00299F 22                    2065 	.db #0x22	; 34
      0029A0 1C                    2066 	.db #0x1c	; 28
      0029A1 00                    2067 	.db #0x00	; 0
      0029A2 10                    2068 	.db #0x10	; 16
      0029A3 18                    2069 	.db #0x18	; 24
      0029A4 14                    2070 	.db #0x14	; 20
      0029A5 12                    2071 	.db #0x12	; 18
      0029A6 3E                    2072 	.db #0x3e	; 62
      0029A7 10                    2073 	.db #0x10	; 16
      0029A8 10                    2074 	.db #0x10	; 16
      0029A9 00                    2075 	.db #0x00	; 0
      0029AA 3E                    2076 	.db #0x3e	; 62
      0029AB 02                    2077 	.db #0x02	; 2
      0029AC 02                    2078 	.db #0x02	; 2
      0029AD 1E                    2079 	.db #0x1e	; 30
      0029AE 20                    2080 	.db #0x20	; 32
      0029AF 22                    2081 	.db #0x22	; 34
      0029B0 1C                    2082 	.db #0x1c	; 28
      0029B1 00                    2083 	.db #0x00	; 0
      0029B2 18                    2084 	.db #0x18	; 24
      0029B3 04                    2085 	.db #0x04	; 4
      0029B4 02                    2086 	.db #0x02	; 2
      0029B5 1E                    2087 	.db #0x1e	; 30
      0029B6 22                    2088 	.db #0x22	; 34
      0029B7 22                    2089 	.db #0x22	; 34
      0029B8 1C                    2090 	.db #0x1c	; 28
      0029B9 00                    2091 	.db #0x00	; 0
      0029BA 3E                    2092 	.db #0x3e	; 62
      0029BB 20                    2093 	.db #0x20	; 32
      0029BC 10                    2094 	.db #0x10	; 16
      0029BD 08                    2095 	.db #0x08	; 8
      0029BE 04                    2096 	.db #0x04	; 4
      0029BF 04                    2097 	.db #0x04	; 4
      0029C0 04                    2098 	.db #0x04	; 4
      0029C1 00                    2099 	.db #0x00	; 0
      0029C2 1C                    2100 	.db #0x1c	; 28
      0029C3 22                    2101 	.db #0x22	; 34
      0029C4 22                    2102 	.db #0x22	; 34
      0029C5 1C                    2103 	.db #0x1c	; 28
      0029C6 22                    2104 	.db #0x22	; 34
      0029C7 22                    2105 	.db #0x22	; 34
      0029C8 1C                    2106 	.db #0x1c	; 28
      0029C9 00                    2107 	.db #0x00	; 0
      0029CA 1C                    2108 	.db #0x1c	; 28
      0029CB 22                    2109 	.db #0x22	; 34
      0029CC 22                    2110 	.db #0x22	; 34
      0029CD 3C                    2111 	.db #0x3c	; 60
      0029CE 20                    2112 	.db #0x20	; 32
      0029CF 10                    2113 	.db #0x10	; 16
      0029D0 0C                    2114 	.db #0x0c	; 12
      0029D1 00                    2115 	.db #0x00	; 0
      0029D2 00                    2116 	.db #0x00	; 0
      0029D3 00                    2117 	.db #0x00	; 0
      0029D4 0C                    2118 	.db #0x0c	; 12
      0029D5 0C                    2119 	.db #0x0c	; 12
      0029D6 00                    2120 	.db #0x00	; 0
      0029D7 0C                    2121 	.db #0x0c	; 12
      0029D8 0C                    2122 	.db #0x0c	; 12
      0029D9 00                    2123 	.db #0x00	; 0
      0029DA 00                    2124 	.db #0x00	; 0
      0029DB 00                    2125 	.db #0x00	; 0
      0029DC 0C                    2126 	.db #0x0c	; 12
      0029DD 0C                    2127 	.db #0x0c	; 12
      0029DE 00                    2128 	.db #0x00	; 0
      0029DF 0C                    2129 	.db #0x0c	; 12
      0029E0 0C                    2130 	.db #0x0c	; 12
      0029E1 04                    2131 	.db #0x04	; 4
      0029E2 10                    2132 	.db #0x10	; 16
      0029E3 08                    2133 	.db #0x08	; 8
      0029E4 04                    2134 	.db #0x04	; 4
      0029E5 02                    2135 	.db #0x02	; 2
      0029E6 04                    2136 	.db #0x04	; 4
      0029E7 08                    2137 	.db #0x08	; 8
      0029E8 10                    2138 	.db #0x10	; 16
      0029E9 00                    2139 	.db #0x00	; 0
      0029EA 00                    2140 	.db #0x00	; 0
      0029EB 00                    2141 	.db #0x00	; 0
      0029EC 3E                    2142 	.db #0x3e	; 62
      0029ED 00                    2143 	.db #0x00	; 0
      0029EE 00                    2144 	.db #0x00	; 0
      0029EF 3E                    2145 	.db #0x3e	; 62
      0029F0 00                    2146 	.db #0x00	; 0
      0029F1 00                    2147 	.db #0x00	; 0
      0029F2 04                    2148 	.db #0x04	; 4
      0029F3 08                    2149 	.db #0x08	; 8
      0029F4 10                    2150 	.db #0x10	; 16
      0029F5 20                    2151 	.db #0x20	; 32
      0029F6 10                    2152 	.db #0x10	; 16
      0029F7 08                    2153 	.db #0x08	; 8
      0029F8 04                    2154 	.db #0x04	; 4
      0029F9 00                    2155 	.db #0x00	; 0
      0029FA 1C                    2156 	.db #0x1c	; 28
      0029FB 22                    2157 	.db #0x22	; 34
      0029FC 20                    2158 	.db #0x20	; 32
      0029FD 18                    2159 	.db #0x18	; 24
      0029FE 08                    2160 	.db #0x08	; 8
      0029FF 00                    2161 	.db #0x00	; 0
      002A00 08                    2162 	.db #0x08	; 8
      002A01 00                    2163 	.db #0x00	; 0
      002A02 1C                    2164 	.db #0x1c	; 28
      002A03 22                    2165 	.db #0x22	; 34
      002A04 3A                    2166 	.db #0x3a	; 58
      002A05 2A                    2167 	.db #0x2a	; 42
      002A06 3A                    2168 	.db #0x3a	; 58
      002A07 02                    2169 	.db #0x02	; 2
      002A08 1C                    2170 	.db #0x1c	; 28
      002A09 00                    2171 	.db #0x00	; 0
      002A0A 1C                    2172 	.db #0x1c	; 28
      002A0B 22                    2173 	.db #0x22	; 34
      002A0C 22                    2174 	.db #0x22	; 34
      002A0D 22                    2175 	.db #0x22	; 34
      002A0E 3E                    2176 	.db #0x3e	; 62
      002A0F 22                    2177 	.db #0x22	; 34
      002A10 22                    2178 	.db #0x22	; 34
      002A11 00                    2179 	.db #0x00	; 0
      002A12 1E                    2180 	.db #0x1e	; 30
      002A13 22                    2181 	.db #0x22	; 34
      002A14 22                    2182 	.db #0x22	; 34
      002A15 1E                    2183 	.db #0x1e	; 30
      002A16 22                    2184 	.db #0x22	; 34
      002A17 22                    2185 	.db #0x22	; 34
      002A18 1E                    2186 	.db #0x1e	; 30
      002A19 00                    2187 	.db #0x00	; 0
      002A1A 1C                    2188 	.db #0x1c	; 28
      002A1B 22                    2189 	.db #0x22	; 34
      002A1C 02                    2190 	.db #0x02	; 2
      002A1D 02                    2191 	.db #0x02	; 2
      002A1E 02                    2192 	.db #0x02	; 2
      002A1F 22                    2193 	.db #0x22	; 34
      002A20 1C                    2194 	.db #0x1c	; 28
      002A21 00                    2195 	.db #0x00	; 0
      002A22 1E                    2196 	.db #0x1e	; 30
      002A23 22                    2197 	.db #0x22	; 34
      002A24 22                    2198 	.db #0x22	; 34
      002A25 22                    2199 	.db #0x22	; 34
      002A26 22                    2200 	.db #0x22	; 34
      002A27 22                    2201 	.db #0x22	; 34
      002A28 1E                    2202 	.db #0x1e	; 30
      002A29 00                    2203 	.db #0x00	; 0
      002A2A 3E                    2204 	.db #0x3e	; 62
      002A2B 02                    2205 	.db #0x02	; 2
      002A2C 02                    2206 	.db #0x02	; 2
      002A2D 1E                    2207 	.db #0x1e	; 30
      002A2E 02                    2208 	.db #0x02	; 2
      002A2F 02                    2209 	.db #0x02	; 2
      002A30 3E                    2210 	.db #0x3e	; 62
      002A31 00                    2211 	.db #0x00	; 0
      002A32 3E                    2212 	.db #0x3e	; 62
      002A33 02                    2213 	.db #0x02	; 2
      002A34 02                    2214 	.db #0x02	; 2
      002A35 1E                    2215 	.db #0x1e	; 30
      002A36 02                    2216 	.db #0x02	; 2
      002A37 02                    2217 	.db #0x02	; 2
      002A38 02                    2218 	.db #0x02	; 2
      002A39 00                    2219 	.db #0x00	; 0
      002A3A 1C                    2220 	.db #0x1c	; 28
      002A3B 22                    2221 	.db #0x22	; 34
      002A3C 02                    2222 	.db #0x02	; 2
      002A3D 3A                    2223 	.db #0x3a	; 58
      002A3E 22                    2224 	.db #0x22	; 34
      002A3F 22                    2225 	.db #0x22	; 34
      002A40 3C                    2226 	.db #0x3c	; 60
      002A41 00                    2227 	.db #0x00	; 0
      002A42 22                    2228 	.db #0x22	; 34
      002A43 22                    2229 	.db #0x22	; 34
      002A44 22                    2230 	.db #0x22	; 34
      002A45 3E                    2231 	.db #0x3e	; 62
      002A46 22                    2232 	.db #0x22	; 34
      002A47 22                    2233 	.db #0x22	; 34
      002A48 22                    2234 	.db #0x22	; 34
      002A49 00                    2235 	.db #0x00	; 0
      002A4A 1C                    2236 	.db #0x1c	; 28
      002A4B 08                    2237 	.db #0x08	; 8
      002A4C 08                    2238 	.db #0x08	; 8
      002A4D 08                    2239 	.db #0x08	; 8
      002A4E 08                    2240 	.db #0x08	; 8
      002A4F 08                    2241 	.db #0x08	; 8
      002A50 1C                    2242 	.db #0x1c	; 28
      002A51 00                    2243 	.db #0x00	; 0
      002A52 20                    2244 	.db #0x20	; 32
      002A53 20                    2245 	.db #0x20	; 32
      002A54 20                    2246 	.db #0x20	; 32
      002A55 20                    2247 	.db #0x20	; 32
      002A56 22                    2248 	.db #0x22	; 34
      002A57 22                    2249 	.db #0x22	; 34
      002A58 1C                    2250 	.db #0x1c	; 28
      002A59 00                    2251 	.db #0x00	; 0
      002A5A 22                    2252 	.db #0x22	; 34
      002A5B 12                    2253 	.db #0x12	; 18
      002A5C 0A                    2254 	.db #0x0a	; 10
      002A5D 06                    2255 	.db #0x06	; 6
      002A5E 0A                    2256 	.db #0x0a	; 10
      002A5F 12                    2257 	.db #0x12	; 18
      002A60 22                    2258 	.db #0x22	; 34
      002A61 00                    2259 	.db #0x00	; 0
      002A62 02                    2260 	.db #0x02	; 2
      002A63 02                    2261 	.db #0x02	; 2
      002A64 02                    2262 	.db #0x02	; 2
      002A65 02                    2263 	.db #0x02	; 2
      002A66 02                    2264 	.db #0x02	; 2
      002A67 02                    2265 	.db #0x02	; 2
      002A68 3E                    2266 	.db #0x3e	; 62
      002A69 00                    2267 	.db #0x00	; 0
      002A6A 22                    2268 	.db #0x22	; 34
      002A6B 36                    2269 	.db #0x36	; 54	'6'
      002A6C 2A                    2270 	.db #0x2a	; 42
      002A6D 22                    2271 	.db #0x22	; 34
      002A6E 22                    2272 	.db #0x22	; 34
      002A6F 22                    2273 	.db #0x22	; 34
      002A70 22                    2274 	.db #0x22	; 34
      002A71 00                    2275 	.db #0x00	; 0
      002A72 22                    2276 	.db #0x22	; 34
      002A73 26                    2277 	.db #0x26	; 38
      002A74 2A                    2278 	.db #0x2a	; 42
      002A75 32                    2279 	.db #0x32	; 50	'2'
      002A76 22                    2280 	.db #0x22	; 34
      002A77 22                    2281 	.db #0x22	; 34
      002A78 22                    2282 	.db #0x22	; 34
      002A79 00                    2283 	.db #0x00	; 0
      002A7A 1C                    2284 	.db #0x1c	; 28
      002A7B 22                    2285 	.db #0x22	; 34
      002A7C 22                    2286 	.db #0x22	; 34
      002A7D 22                    2287 	.db #0x22	; 34
      002A7E 22                    2288 	.db #0x22	; 34
      002A7F 22                    2289 	.db #0x22	; 34
      002A80 1C                    2290 	.db #0x1c	; 28
      002A81 00                    2291 	.db #0x00	; 0
      002A82 1E                    2292 	.db #0x1e	; 30
      002A83 22                    2293 	.db #0x22	; 34
      002A84 22                    2294 	.db #0x22	; 34
      002A85 1E                    2295 	.db #0x1e	; 30
      002A86 02                    2296 	.db #0x02	; 2
      002A87 02                    2297 	.db #0x02	; 2
      002A88 02                    2298 	.db #0x02	; 2
      002A89 00                    2299 	.db #0x00	; 0
      002A8A 1C                    2300 	.db #0x1c	; 28
      002A8B 22                    2301 	.db #0x22	; 34
      002A8C 22                    2302 	.db #0x22	; 34
      002A8D 22                    2303 	.db #0x22	; 34
      002A8E 2A                    2304 	.db #0x2a	; 42
      002A8F 12                    2305 	.db #0x12	; 18
      002A90 2C                    2306 	.db #0x2c	; 44
      002A91 00                    2307 	.db #0x00	; 0
      002A92 1E                    2308 	.db #0x1e	; 30
      002A93 22                    2309 	.db #0x22	; 34
      002A94 22                    2310 	.db #0x22	; 34
      002A95 1E                    2311 	.db #0x1e	; 30
      002A96 12                    2312 	.db #0x12	; 18
      002A97 22                    2313 	.db #0x22	; 34
      002A98 22                    2314 	.db #0x22	; 34
      002A99 00                    2315 	.db #0x00	; 0
      002A9A 1C                    2316 	.db #0x1c	; 28
      002A9B 22                    2317 	.db #0x22	; 34
      002A9C 02                    2318 	.db #0x02	; 2
      002A9D 1C                    2319 	.db #0x1c	; 28
      002A9E 20                    2320 	.db #0x20	; 32
      002A9F 22                    2321 	.db #0x22	; 34
      002AA0 1C                    2322 	.db #0x1c	; 28
      002AA1 00                    2323 	.db #0x00	; 0
      002AA2 3E                    2324 	.db #0x3e	; 62
      002AA3 08                    2325 	.db #0x08	; 8
      002AA4 08                    2326 	.db #0x08	; 8
      002AA5 08                    2327 	.db #0x08	; 8
      002AA6 08                    2328 	.db #0x08	; 8
      002AA7 08                    2329 	.db #0x08	; 8
      002AA8 08                    2330 	.db #0x08	; 8
      002AA9 00                    2331 	.db #0x00	; 0
      002AAA 22                    2332 	.db #0x22	; 34
      002AAB 22                    2333 	.db #0x22	; 34
      002AAC 22                    2334 	.db #0x22	; 34
      002AAD 22                    2335 	.db #0x22	; 34
      002AAE 22                    2336 	.db #0x22	; 34
      002AAF 22                    2337 	.db #0x22	; 34
      002AB0 1C                    2338 	.db #0x1c	; 28
      002AB1 00                    2339 	.db #0x00	; 0
      002AB2 22                    2340 	.db #0x22	; 34
      002AB3 22                    2341 	.db #0x22	; 34
      002AB4 22                    2342 	.db #0x22	; 34
      002AB5 22                    2343 	.db #0x22	; 34
      002AB6 22                    2344 	.db #0x22	; 34
      002AB7 14                    2345 	.db #0x14	; 20
      002AB8 08                    2346 	.db #0x08	; 8
      002AB9 00                    2347 	.db #0x00	; 0
      002ABA 22                    2348 	.db #0x22	; 34
      002ABB 22                    2349 	.db #0x22	; 34
      002ABC 2A                    2350 	.db #0x2a	; 42
      002ABD 2A                    2351 	.db #0x2a	; 42
      002ABE 2A                    2352 	.db #0x2a	; 42
      002ABF 2A                    2353 	.db #0x2a	; 42
      002AC0 14                    2354 	.db #0x14	; 20
      002AC1 00                    2355 	.db #0x00	; 0
      002AC2 22                    2356 	.db #0x22	; 34
      002AC3 22                    2357 	.db #0x22	; 34
      002AC4 14                    2358 	.db #0x14	; 20
      002AC5 08                    2359 	.db #0x08	; 8
      002AC6 14                    2360 	.db #0x14	; 20
      002AC7 22                    2361 	.db #0x22	; 34
      002AC8 22                    2362 	.db #0x22	; 34
      002AC9 00                    2363 	.db #0x00	; 0
      002ACA 22                    2364 	.db #0x22	; 34
      002ACB 22                    2365 	.db #0x22	; 34
      002ACC 22                    2366 	.db #0x22	; 34
      002ACD 14                    2367 	.db #0x14	; 20
      002ACE 08                    2368 	.db #0x08	; 8
      002ACF 08                    2369 	.db #0x08	; 8
      002AD0 08                    2370 	.db #0x08	; 8
      002AD1 00                    2371 	.db #0x00	; 0
      002AD2 1E                    2372 	.db #0x1e	; 30
      002AD3 10                    2373 	.db #0x10	; 16
      002AD4 08                    2374 	.db #0x08	; 8
      002AD5 04                    2375 	.db #0x04	; 4
      002AD6 02                    2376 	.db #0x02	; 2
      002AD7 02                    2377 	.db #0x02	; 2
      002AD8 1E                    2378 	.db #0x1e	; 30
      002AD9 00                    2379 	.db #0x00	; 0
      002ADA 1C                    2380 	.db #0x1c	; 28
      002ADB 04                    2381 	.db #0x04	; 4
      002ADC 04                    2382 	.db #0x04	; 4
      002ADD 04                    2383 	.db #0x04	; 4
      002ADE 04                    2384 	.db #0x04	; 4
      002ADF 04                    2385 	.db #0x04	; 4
      002AE0 1C                    2386 	.db #0x1c	; 28
      002AE1 00                    2387 	.db #0x00	; 0
      002AE2 00                    2388 	.db #0x00	; 0
      002AE3 02                    2389 	.db #0x02	; 2
      002AE4 04                    2390 	.db #0x04	; 4
      002AE5 08                    2391 	.db #0x08	; 8
      002AE6 10                    2392 	.db #0x10	; 16
      002AE7 20                    2393 	.db #0x20	; 32
      002AE8 00                    2394 	.db #0x00	; 0
      002AE9 00                    2395 	.db #0x00	; 0
      002AEA 1C                    2396 	.db #0x1c	; 28
      002AEB 10                    2397 	.db #0x10	; 16
      002AEC 10                    2398 	.db #0x10	; 16
      002AED 10                    2399 	.db #0x10	; 16
      002AEE 10                    2400 	.db #0x10	; 16
      002AEF 10                    2401 	.db #0x10	; 16
      002AF0 1C                    2402 	.db #0x1c	; 28
      002AF1 00                    2403 	.db #0x00	; 0
      002AF2 08                    2404 	.db #0x08	; 8
      002AF3 14                    2405 	.db #0x14	; 20
      002AF4 22                    2406 	.db #0x22	; 34
      002AF5 00                    2407 	.db #0x00	; 0
      002AF6 00                    2408 	.db #0x00	; 0
      002AF7 00                    2409 	.db #0x00	; 0
      002AF8 00                    2410 	.db #0x00	; 0
      002AF9 00                    2411 	.db #0x00	; 0
      002AFA 00                    2412 	.db #0x00	; 0
      002AFB 00                    2413 	.db #0x00	; 0
      002AFC 00                    2414 	.db #0x00	; 0
      002AFD 00                    2415 	.db #0x00	; 0
      002AFE 00                    2416 	.db #0x00	; 0
      002AFF 00                    2417 	.db #0x00	; 0
      002B00 00                    2418 	.db #0x00	; 0
      002B01 3F                    2419 	.db #0x3f	; 63
      002B02 0C                    2420 	.db #0x0c	; 12
      002B03 0C                    2421 	.db #0x0c	; 12
      002B04 08                    2422 	.db #0x08	; 8
      002B05 00                    2423 	.db #0x00	; 0
      002B06 00                    2424 	.db #0x00	; 0
      002B07 00                    2425 	.db #0x00	; 0
      002B08 00                    2426 	.db #0x00	; 0
      002B09 00                    2427 	.db #0x00	; 0
      002B0A 00                    2428 	.db #0x00	; 0
      002B0B 00                    2429 	.db #0x00	; 0
      002B0C 1C                    2430 	.db #0x1c	; 28
      002B0D 20                    2431 	.db #0x20	; 32
      002B0E 3C                    2432 	.db #0x3c	; 60
      002B0F 22                    2433 	.db #0x22	; 34
      002B10 3C                    2434 	.db #0x3c	; 60
      002B11 00                    2435 	.db #0x00	; 0
      002B12 02                    2436 	.db #0x02	; 2
      002B13 02                    2437 	.db #0x02	; 2
      002B14 1E                    2438 	.db #0x1e	; 30
      002B15 22                    2439 	.db #0x22	; 34
      002B16 22                    2440 	.db #0x22	; 34
      002B17 22                    2441 	.db #0x22	; 34
      002B18 1E                    2442 	.db #0x1e	; 30
      002B19 00                    2443 	.db #0x00	; 0
      002B1A 00                    2444 	.db #0x00	; 0
      002B1B 00                    2445 	.db #0x00	; 0
      002B1C 1C                    2446 	.db #0x1c	; 28
      002B1D 22                    2447 	.db #0x22	; 34
      002B1E 02                    2448 	.db #0x02	; 2
      002B1F 22                    2449 	.db #0x22	; 34
      002B20 1C                    2450 	.db #0x1c	; 28
      002B21 00                    2451 	.db #0x00	; 0
      002B22 20                    2452 	.db #0x20	; 32
      002B23 20                    2453 	.db #0x20	; 32
      002B24 3C                    2454 	.db #0x3c	; 60
      002B25 22                    2455 	.db #0x22	; 34
      002B26 22                    2456 	.db #0x22	; 34
      002B27 22                    2457 	.db #0x22	; 34
      002B28 3C                    2458 	.db #0x3c	; 60
      002B29 00                    2459 	.db #0x00	; 0
      002B2A 00                    2460 	.db #0x00	; 0
      002B2B 00                    2461 	.db #0x00	; 0
      002B2C 1C                    2462 	.db #0x1c	; 28
      002B2D 22                    2463 	.db #0x22	; 34
      002B2E 1E                    2464 	.db #0x1e	; 30
      002B2F 02                    2465 	.db #0x02	; 2
      002B30 1C                    2466 	.db #0x1c	; 28
      002B31 00                    2467 	.db #0x00	; 0
      002B32 18                    2468 	.db #0x18	; 24
      002B33 04                    2469 	.db #0x04	; 4
      002B34 04                    2470 	.db #0x04	; 4
      002B35 1E                    2471 	.db #0x1e	; 30
      002B36 04                    2472 	.db #0x04	; 4
      002B37 04                    2473 	.db #0x04	; 4
      002B38 04                    2474 	.db #0x04	; 4
      002B39 00                    2475 	.db #0x00	; 0
      002B3A 00                    2476 	.db #0x00	; 0
      002B3B 00                    2477 	.db #0x00	; 0
      002B3C 3C                    2478 	.db #0x3c	; 60
      002B3D 22                    2479 	.db #0x22	; 34
      002B3E 22                    2480 	.db #0x22	; 34
      002B3F 3C                    2481 	.db #0x3c	; 60
      002B40 20                    2482 	.db #0x20	; 32
      002B41 1C                    2483 	.db #0x1c	; 28
      002B42 02                    2484 	.db #0x02	; 2
      002B43 02                    2485 	.db #0x02	; 2
      002B44 0E                    2486 	.db #0x0e	; 14
      002B45 12                    2487 	.db #0x12	; 18
      002B46 12                    2488 	.db #0x12	; 18
      002B47 12                    2489 	.db #0x12	; 18
      002B48 12                    2490 	.db #0x12	; 18
      002B49 00                    2491 	.db #0x00	; 0
      002B4A 08                    2492 	.db #0x08	; 8
      002B4B 00                    2493 	.db #0x00	; 0
      002B4C 08                    2494 	.db #0x08	; 8
      002B4D 08                    2495 	.db #0x08	; 8
      002B4E 08                    2496 	.db #0x08	; 8
      002B4F 08                    2497 	.db #0x08	; 8
      002B50 18                    2498 	.db #0x18	; 24
      002B51 00                    2499 	.db #0x00	; 0
      002B52 10                    2500 	.db #0x10	; 16
      002B53 00                    2501 	.db #0x00	; 0
      002B54 18                    2502 	.db #0x18	; 24
      002B55 10                    2503 	.db #0x10	; 16
      002B56 10                    2504 	.db #0x10	; 16
      002B57 10                    2505 	.db #0x10	; 16
      002B58 12                    2506 	.db #0x12	; 18
      002B59 0C                    2507 	.db #0x0c	; 12
      002B5A 02                    2508 	.db #0x02	; 2
      002B5B 02                    2509 	.db #0x02	; 2
      002B5C 12                    2510 	.db #0x12	; 18
      002B5D 0A                    2511 	.db #0x0a	; 10
      002B5E 06                    2512 	.db #0x06	; 6
      002B5F 0A                    2513 	.db #0x0a	; 10
      002B60 12                    2514 	.db #0x12	; 18
      002B61 00                    2515 	.db #0x00	; 0
      002B62 08                    2516 	.db #0x08	; 8
      002B63 08                    2517 	.db #0x08	; 8
      002B64 08                    2518 	.db #0x08	; 8
      002B65 08                    2519 	.db #0x08	; 8
      002B66 08                    2520 	.db #0x08	; 8
      002B67 08                    2521 	.db #0x08	; 8
      002B68 18                    2522 	.db #0x18	; 24
      002B69 00                    2523 	.db #0x00	; 0
      002B6A 00                    2524 	.db #0x00	; 0
      002B6B 00                    2525 	.db #0x00	; 0
      002B6C 16                    2526 	.db #0x16	; 22
      002B6D 2A                    2527 	.db #0x2a	; 42
      002B6E 2A                    2528 	.db #0x2a	; 42
      002B6F 22                    2529 	.db #0x22	; 34
      002B70 22                    2530 	.db #0x22	; 34
      002B71 00                    2531 	.db #0x00	; 0
      002B72 00                    2532 	.db #0x00	; 0
      002B73 00                    2533 	.db #0x00	; 0
      002B74 0E                    2534 	.db #0x0e	; 14
      002B75 12                    2535 	.db #0x12	; 18
      002B76 12                    2536 	.db #0x12	; 18
      002B77 12                    2537 	.db #0x12	; 18
      002B78 12                    2538 	.db #0x12	; 18
      002B79 00                    2539 	.db #0x00	; 0
      002B7A 00                    2540 	.db #0x00	; 0
      002B7B 00                    2541 	.db #0x00	; 0
      002B7C 1C                    2542 	.db #0x1c	; 28
      002B7D 22                    2543 	.db #0x22	; 34
      002B7E 22                    2544 	.db #0x22	; 34
      002B7F 22                    2545 	.db #0x22	; 34
      002B80 1C                    2546 	.db #0x1c	; 28
      002B81 00                    2547 	.db #0x00	; 0
      002B82 00                    2548 	.db #0x00	; 0
      002B83 00                    2549 	.db #0x00	; 0
      002B84 1E                    2550 	.db #0x1e	; 30
      002B85 22                    2551 	.db #0x22	; 34
      002B86 22                    2552 	.db #0x22	; 34
      002B87 22                    2553 	.db #0x22	; 34
      002B88 1E                    2554 	.db #0x1e	; 30
      002B89 02                    2555 	.db #0x02	; 2
      002B8A 00                    2556 	.db #0x00	; 0
      002B8B 00                    2557 	.db #0x00	; 0
      002B8C 3C                    2558 	.db #0x3c	; 60
      002B8D 22                    2559 	.db #0x22	; 34
      002B8E 22                    2560 	.db #0x22	; 34
      002B8F 22                    2561 	.db #0x22	; 34
      002B90 3C                    2562 	.db #0x3c	; 60
      002B91 20                    2563 	.db #0x20	; 32
      002B92 00                    2564 	.db #0x00	; 0
      002B93 00                    2565 	.db #0x00	; 0
      002B94 1A                    2566 	.db #0x1a	; 26
      002B95 24                    2567 	.db #0x24	; 36
      002B96 04                    2568 	.db #0x04	; 4
      002B97 04                    2569 	.db #0x04	; 4
      002B98 0E                    2570 	.db #0x0e	; 14
      002B99 00                    2571 	.db #0x00	; 0
      002B9A 00                    2572 	.db #0x00	; 0
      002B9B 00                    2573 	.db #0x00	; 0
      002B9C 1C                    2574 	.db #0x1c	; 28
      002B9D 02                    2575 	.db #0x02	; 2
      002B9E 1C                    2576 	.db #0x1c	; 28
      002B9F 20                    2577 	.db #0x20	; 32
      002BA0 1C                    2578 	.db #0x1c	; 28
      002BA1 00                    2579 	.db #0x00	; 0
      002BA2 00                    2580 	.db #0x00	; 0
      002BA3 04                    2581 	.db #0x04	; 4
      002BA4 1E                    2582 	.db #0x1e	; 30
      002BA5 04                    2583 	.db #0x04	; 4
      002BA6 04                    2584 	.db #0x04	; 4
      002BA7 14                    2585 	.db #0x14	; 20
      002BA8 08                    2586 	.db #0x08	; 8
      002BA9 00                    2587 	.db #0x00	; 0
      002BAA 00                    2588 	.db #0x00	; 0
      002BAB 00                    2589 	.db #0x00	; 0
      002BAC 12                    2590 	.db #0x12	; 18
      002BAD 12                    2591 	.db #0x12	; 18
      002BAE 12                    2592 	.db #0x12	; 18
      002BAF 1A                    2593 	.db #0x1a	; 26
      002BB0 14                    2594 	.db #0x14	; 20
      002BB1 00                    2595 	.db #0x00	; 0
      002BB2 00                    2596 	.db #0x00	; 0
      002BB3 00                    2597 	.db #0x00	; 0
      002BB4 22                    2598 	.db #0x22	; 34
      002BB5 22                    2599 	.db #0x22	; 34
      002BB6 22                    2600 	.db #0x22	; 34
      002BB7 14                    2601 	.db #0x14	; 20
      002BB8 08                    2602 	.db #0x08	; 8
      002BB9 00                    2603 	.db #0x00	; 0
      002BBA 00                    2604 	.db #0x00	; 0
      002BBB 00                    2605 	.db #0x00	; 0
      002BBC 22                    2606 	.db #0x22	; 34
      002BBD 22                    2607 	.db #0x22	; 34
      002BBE 2A                    2608 	.db #0x2a	; 42
      002BBF 3E                    2609 	.db #0x3e	; 62
      002BC0 14                    2610 	.db #0x14	; 20
      002BC1 00                    2611 	.db #0x00	; 0
      002BC2 00                    2612 	.db #0x00	; 0
      002BC3 00                    2613 	.db #0x00	; 0
      002BC4 12                    2614 	.db #0x12	; 18
      002BC5 12                    2615 	.db #0x12	; 18
      002BC6 0C                    2616 	.db #0x0c	; 12
      002BC7 12                    2617 	.db #0x12	; 18
      002BC8 12                    2618 	.db #0x12	; 18
      002BC9 00                    2619 	.db #0x00	; 0
      002BCA 00                    2620 	.db #0x00	; 0
      002BCB 00                    2621 	.db #0x00	; 0
      002BCC 12                    2622 	.db #0x12	; 18
      002BCD 12                    2623 	.db #0x12	; 18
      002BCE 12                    2624 	.db #0x12	; 18
      002BCF 1C                    2625 	.db #0x1c	; 28
      002BD0 08                    2626 	.db #0x08	; 8
      002BD1 06                    2627 	.db #0x06	; 6
      002BD2 00                    2628 	.db #0x00	; 0
      002BD3 00                    2629 	.db #0x00	; 0
      002BD4 1E                    2630 	.db #0x1e	; 30
      002BD5 10                    2631 	.db #0x10	; 16
      002BD6 0C                    2632 	.db #0x0c	; 12
      002BD7 02                    2633 	.db #0x02	; 2
      002BD8 1E                    2634 	.db #0x1e	; 30
      002BD9 00                    2635 	.db #0x00	; 0
      002BDA 18                    2636 	.db #0x18	; 24
      002BDB 04                    2637 	.db #0x04	; 4
      002BDC 04                    2638 	.db #0x04	; 4
      002BDD 06                    2639 	.db #0x06	; 6
      002BDE 04                    2640 	.db #0x04	; 4
      002BDF 04                    2641 	.db #0x04	; 4
      002BE0 18                    2642 	.db #0x18	; 24
      002BE1 00                    2643 	.db #0x00	; 0
      002BE2 08                    2644 	.db #0x08	; 8
      002BE3 08                    2645 	.db #0x08	; 8
      002BE4 08                    2646 	.db #0x08	; 8
      002BE5 00                    2647 	.db #0x00	; 0
      002BE6 08                    2648 	.db #0x08	; 8
      002BE7 08                    2649 	.db #0x08	; 8
      002BE8 08                    2650 	.db #0x08	; 8
      002BE9 00                    2651 	.db #0x00	; 0
      002BEA 0C                    2652 	.db #0x0c	; 12
      002BEB 10                    2653 	.db #0x10	; 16
      002BEC 10                    2654 	.db #0x10	; 16
      002BED 30                    2655 	.db #0x30	; 48	'0'
      002BEE 10                    2656 	.db #0x10	; 16
      002BEF 10                    2657 	.db #0x10	; 16
      002BF0 0C                    2658 	.db #0x0c	; 12
      002BF1 00                    2659 	.db #0x00	; 0
      002BF2 14                    2660 	.db #0x14	; 20
      002BF3 0A                    2661 	.db #0x0a	; 10
      002BF4 00                    2662 	.db #0x00	; 0
      002BF5 00                    2663 	.db #0x00	; 0
      002BF6 00                    2664 	.db #0x00	; 0
      002BF7 00                    2665 	.db #0x00	; 0
      002BF8 00                    2666 	.db #0x00	; 0
      002BF9 00                    2667 	.db #0x00	; 0
      002BFA 08                    2668 	.db #0x08	; 8
      002BFB 1C                    2669 	.db #0x1c	; 28
      002BFC 36                    2670 	.db #0x36	; 54	'6'
      002BFD 22                    2671 	.db #0x22	; 34
      002BFE 22                    2672 	.db #0x22	; 34
      002BFF 3E                    2673 	.db #0x3e	; 62
      002C00 00                    2674 	.db #0x00	; 0
      002C01 00                    2675 	.db #0x00	; 0
      002C02 1C                    2676 	.db #0x1c	; 28
      002C03 22                    2677 	.db #0x22	; 34
      002C04 02                    2678 	.db #0x02	; 2
      002C05 02                    2679 	.db #0x02	; 2
      002C06 22                    2680 	.db #0x22	; 34
      002C07 1C                    2681 	.db #0x1c	; 28
      002C08 08                    2682 	.db #0x08	; 8
      002C09 0C                    2683 	.db #0x0c	; 12
      002C0A 12                    2684 	.db #0x12	; 18
      002C0B 00                    2685 	.db #0x00	; 0
      002C0C 12                    2686 	.db #0x12	; 18
      002C0D 12                    2687 	.db #0x12	; 18
      002C0E 12                    2688 	.db #0x12	; 18
      002C0F 1A                    2689 	.db #0x1a	; 26
      002C10 14                    2690 	.db #0x14	; 20
      002C11 00                    2691 	.db #0x00	; 0
      002C12 30                    2692 	.db #0x30	; 48	'0'
      002C13 00                    2693 	.db #0x00	; 0
      002C14 1C                    2694 	.db #0x1c	; 28
      002C15 22                    2695 	.db #0x22	; 34
      002C16 1E                    2696 	.db #0x1e	; 30
      002C17 02                    2697 	.db #0x02	; 2
      002C18 1C                    2698 	.db #0x1c	; 28
      002C19 00                    2699 	.db #0x00	; 0
      002C1A 1C                    2700 	.db #0x1c	; 28
      002C1B 00                    2701 	.db #0x00	; 0
      002C1C 1C                    2702 	.db #0x1c	; 28
      002C1D 20                    2703 	.db #0x20	; 32
      002C1E 3C                    2704 	.db #0x3c	; 60
      002C1F 22                    2705 	.db #0x22	; 34
      002C20 3C                    2706 	.db #0x3c	; 60
      002C21 00                    2707 	.db #0x00	; 0
      002C22 14                    2708 	.db #0x14	; 20
      002C23 00                    2709 	.db #0x00	; 0
      002C24 1C                    2710 	.db #0x1c	; 28
      002C25 20                    2711 	.db #0x20	; 32
      002C26 3C                    2712 	.db #0x3c	; 60
      002C27 22                    2713 	.db #0x22	; 34
      002C28 3C                    2714 	.db #0x3c	; 60
      002C29 00                    2715 	.db #0x00	; 0
      002C2A 0C                    2716 	.db #0x0c	; 12
      002C2B 00                    2717 	.db #0x00	; 0
      002C2C 1C                    2718 	.db #0x1c	; 28
      002C2D 20                    2719 	.db #0x20	; 32
      002C2E 3C                    2720 	.db #0x3c	; 60
      002C2F 22                    2721 	.db #0x22	; 34
      002C30 3C                    2722 	.db #0x3c	; 60
      002C31 00                    2723 	.db #0x00	; 0
      002C32 1C                    2724 	.db #0x1c	; 28
      002C33 14                    2725 	.db #0x14	; 20
      002C34 1C                    2726 	.db #0x1c	; 28
      002C35 20                    2727 	.db #0x20	; 32
      002C36 3C                    2728 	.db #0x3c	; 60
      002C37 22                    2729 	.db #0x22	; 34
      002C38 3C                    2730 	.db #0x3c	; 60
      002C39 00                    2731 	.db #0x00	; 0
      002C3A 00                    2732 	.db #0x00	; 0
      002C3B 1C                    2733 	.db #0x1c	; 28
      002C3C 22                    2734 	.db #0x22	; 34
      002C3D 02                    2735 	.db #0x02	; 2
      002C3E 22                    2736 	.db #0x22	; 34
      002C3F 1C                    2737 	.db #0x1c	; 28
      002C40 08                    2738 	.db #0x08	; 8
      002C41 0C                    2739 	.db #0x0c	; 12
      002C42 1C                    2740 	.db #0x1c	; 28
      002C43 00                    2741 	.db #0x00	; 0
      002C44 1C                    2742 	.db #0x1c	; 28
      002C45 22                    2743 	.db #0x22	; 34
      002C46 1E                    2744 	.db #0x1e	; 30
      002C47 02                    2745 	.db #0x02	; 2
      002C48 1C                    2746 	.db #0x1c	; 28
      002C49 00                    2747 	.db #0x00	; 0
      002C4A 14                    2748 	.db #0x14	; 20
      002C4B 00                    2749 	.db #0x00	; 0
      002C4C 1C                    2750 	.db #0x1c	; 28
      002C4D 22                    2751 	.db #0x22	; 34
      002C4E 1E                    2752 	.db #0x1e	; 30
      002C4F 02                    2753 	.db #0x02	; 2
      002C50 1C                    2754 	.db #0x1c	; 28
      002C51 00                    2755 	.db #0x00	; 0
      002C52 0C                    2756 	.db #0x0c	; 12
      002C53 00                    2757 	.db #0x00	; 0
      002C54 1C                    2758 	.db #0x1c	; 28
      002C55 22                    2759 	.db #0x22	; 34
      002C56 1E                    2760 	.db #0x1e	; 30
      002C57 02                    2761 	.db #0x02	; 2
      002C58 1C                    2762 	.db #0x1c	; 28
      002C59 00                    2763 	.db #0x00	; 0
      002C5A 14                    2764 	.db #0x14	; 20
      002C5B 00                    2765 	.db #0x00	; 0
      002C5C 08                    2766 	.db #0x08	; 8
      002C5D 08                    2767 	.db #0x08	; 8
      002C5E 08                    2768 	.db #0x08	; 8
      002C5F 08                    2769 	.db #0x08	; 8
      002C60 18                    2770 	.db #0x18	; 24
      002C61 00                    2771 	.db #0x00	; 0
      002C62 08                    2772 	.db #0x08	; 8
      002C63 14                    2773 	.db #0x14	; 20
      002C64 00                    2774 	.db #0x00	; 0
      002C65 08                    2775 	.db #0x08	; 8
      002C66 08                    2776 	.db #0x08	; 8
      002C67 08                    2777 	.db #0x08	; 8
      002C68 18                    2778 	.db #0x18	; 24
      002C69 00                    2779 	.db #0x00	; 0
      002C6A 04                    2780 	.db #0x04	; 4
      002C6B 00                    2781 	.db #0x00	; 0
      002C6C 08                    2782 	.db #0x08	; 8
      002C6D 08                    2783 	.db #0x08	; 8
      002C6E 08                    2784 	.db #0x08	; 8
      002C6F 08                    2785 	.db #0x08	; 8
      002C70 18                    2786 	.db #0x18	; 24
      002C71 00                    2787 	.db #0x00	; 0
      002C72 14                    2788 	.db #0x14	; 20
      002C73 00                    2789 	.db #0x00	; 0
      002C74 08                    2790 	.db #0x08	; 8
      002C75 14                    2791 	.db #0x14	; 20
      002C76 22                    2792 	.db #0x22	; 34
      002C77 3E                    2793 	.db #0x3e	; 62
      002C78 22                    2794 	.db #0x22	; 34
      002C79 00                    2795 	.db #0x00	; 0
      002C7A 1C                    2796 	.db #0x1c	; 28
      002C7B 14                    2797 	.db #0x14	; 20
      002C7C 1C                    2798 	.db #0x1c	; 28
      002C7D 36                    2799 	.db #0x36	; 54	'6'
      002C7E 22                    2800 	.db #0x22	; 34
      002C7F 3E                    2801 	.db #0x3e	; 62
      002C80 22                    2802 	.db #0x22	; 34
      002C81 00                    2803 	.db #0x00	; 0
      002C82 30                    2804 	.db #0x30	; 48	'0'
      002C83 00                    2805 	.db #0x00	; 0
      002C84 3E                    2806 	.db #0x3e	; 62
      002C85 02                    2807 	.db #0x02	; 2
      002C86 1E                    2808 	.db #0x1e	; 30
      002C87 02                    2809 	.db #0x02	; 2
      002C88 3E                    2810 	.db #0x3e	; 62
      002C89 00                    2811 	.db #0x00	; 0
      002C8A 00                    2812 	.db #0x00	; 0
      002C8B 00                    2813 	.db #0x00	; 0
      002C8C 1E                    2814 	.db #0x1e	; 30
      002C8D 28                    2815 	.db #0x28	; 40
      002C8E 3E                    2816 	.db #0x3e	; 62
      002C8F 0A                    2817 	.db #0x0a	; 10
      002C90 3C                    2818 	.db #0x3c	; 60
      002C91 00                    2819 	.db #0x00	; 0
      002C92 3C                    2820 	.db #0x3c	; 60
      002C93 0A                    2821 	.db #0x0a	; 10
      002C94 0A                    2822 	.db #0x0a	; 10
      002C95 3E                    2823 	.db #0x3e	; 62
      002C96 0A                    2824 	.db #0x0a	; 10
      002C97 0A                    2825 	.db #0x0a	; 10
      002C98 3A                    2826 	.db #0x3a	; 58
      002C99 00                    2827 	.db #0x00	; 0
      002C9A 1C                    2828 	.db #0x1c	; 28
      002C9B 00                    2829 	.db #0x00	; 0
      002C9C 0C                    2830 	.db #0x0c	; 12
      002C9D 12                    2831 	.db #0x12	; 18
      002C9E 12                    2832 	.db #0x12	; 18
      002C9F 12                    2833 	.db #0x12	; 18
      002CA0 0C                    2834 	.db #0x0c	; 12
      002CA1 00                    2835 	.db #0x00	; 0
      002CA2 14                    2836 	.db #0x14	; 20
      002CA3 00                    2837 	.db #0x00	; 0
      002CA4 0C                    2838 	.db #0x0c	; 12
      002CA5 12                    2839 	.db #0x12	; 18
      002CA6 12                    2840 	.db #0x12	; 18
      002CA7 12                    2841 	.db #0x12	; 18
      002CA8 0C                    2842 	.db #0x0c	; 12
      002CA9 00                    2843 	.db #0x00	; 0
      002CAA 06                    2844 	.db #0x06	; 6
      002CAB 00                    2845 	.db #0x00	; 0
      002CAC 0C                    2846 	.db #0x0c	; 12
      002CAD 12                    2847 	.db #0x12	; 18
      002CAE 12                    2848 	.db #0x12	; 18
      002CAF 12                    2849 	.db #0x12	; 18
      002CB0 0C                    2850 	.db #0x0c	; 12
      002CB1 00                    2851 	.db #0x00	; 0
      002CB2 1C                    2852 	.db #0x1c	; 28
      002CB3 00                    2853 	.db #0x00	; 0
      002CB4 12                    2854 	.db #0x12	; 18
      002CB5 12                    2855 	.db #0x12	; 18
      002CB6 12                    2856 	.db #0x12	; 18
      002CB7 1A                    2857 	.db #0x1a	; 26
      002CB8 14                    2858 	.db #0x14	; 20
      002CB9 00                    2859 	.db #0x00	; 0
      002CBA 06                    2860 	.db #0x06	; 6
      002CBB 00                    2861 	.db #0x00	; 0
      002CBC 12                    2862 	.db #0x12	; 18
      002CBD 12                    2863 	.db #0x12	; 18
      002CBE 12                    2864 	.db #0x12	; 18
      002CBF 1A                    2865 	.db #0x1a	; 26
      002CC0 14                    2866 	.db #0x14	; 20
      002CC1 00                    2867 	.db #0x00	; 0
      002CC2 14                    2868 	.db #0x14	; 20
      002CC3 00                    2869 	.db #0x00	; 0
      002CC4 12                    2870 	.db #0x12	; 18
      002CC5 12                    2871 	.db #0x12	; 18
      002CC6 12                    2872 	.db #0x12	; 18
      002CC7 1C                    2873 	.db #0x1c	; 28
      002CC8 08                    2874 	.db #0x08	; 8
      002CC9 06                    2875 	.db #0x06	; 6
      002CCA 12                    2876 	.db #0x12	; 18
      002CCB 0C                    2877 	.db #0x0c	; 12
      002CCC 12                    2878 	.db #0x12	; 18
      002CCD 12                    2879 	.db #0x12	; 18
      002CCE 12                    2880 	.db #0x12	; 18
      002CCF 12                    2881 	.db #0x12	; 18
      002CD0 0C                    2882 	.db #0x0c	; 12
      002CD1 00                    2883 	.db #0x00	; 0
      002CD2 14                    2884 	.db #0x14	; 20
      002CD3 00                    2885 	.db #0x00	; 0
      002CD4 12                    2886 	.db #0x12	; 18
      002CD5 12                    2887 	.db #0x12	; 18
      002CD6 12                    2888 	.db #0x12	; 18
      002CD7 12                    2889 	.db #0x12	; 18
      002CD8 0C                    2890 	.db #0x0c	; 12
      002CD9 00                    2891 	.db #0x00	; 0
      002CDA 00                    2892 	.db #0x00	; 0
      002CDB 08                    2893 	.db #0x08	; 8
      002CDC 1C                    2894 	.db #0x1c	; 28
      002CDD 02                    2895 	.db #0x02	; 2
      002CDE 02                    2896 	.db #0x02	; 2
      002CDF 1C                    2897 	.db #0x1c	; 28
      002CE0 08                    2898 	.db #0x08	; 8
      002CE1 00                    2899 	.db #0x00	; 0
      002CE2 18                    2900 	.db #0x18	; 24
      002CE3 24                    2901 	.db #0x24	; 36
      002CE4 04                    2902 	.db #0x04	; 4
      002CE5 1E                    2903 	.db #0x1e	; 30
      002CE6 04                    2904 	.db #0x04	; 4
      002CE7 24                    2905 	.db #0x24	; 36
      002CE8 3A                    2906 	.db #0x3a	; 58
      002CE9 00                    2907 	.db #0x00	; 0
      002CEA 22                    2908 	.db #0x22	; 34
      002CEB 14                    2909 	.db #0x14	; 20
      002CEC 08                    2910 	.db #0x08	; 8
      002CED 3E                    2911 	.db #0x3e	; 62
      002CEE 08                    2912 	.db #0x08	; 8
      002CEF 3E                    2913 	.db #0x3e	; 62
      002CF0 08                    2914 	.db #0x08	; 8
      002CF1 00                    2915 	.db #0x00	; 0
      002CF2 06                    2916 	.db #0x06	; 6
      002CF3 0A                    2917 	.db #0x0a	; 10
      002CF4 0A                    2918 	.db #0x0a	; 10
      002CF5 16                    2919 	.db #0x16	; 22
      002CF6 3A                    2920 	.db #0x3a	; 58
      002CF7 12                    2921 	.db #0x12	; 18
      002CF8 12                    2922 	.db #0x12	; 18
      002CF9 00                    2923 	.db #0x00	; 0
      002CFA 10                    2924 	.db #0x10	; 16
      002CFB 28                    2925 	.db #0x28	; 40
      002CFC 08                    2926 	.db #0x08	; 8
      002CFD 1C                    2927 	.db #0x1c	; 28
      002CFE 08                    2928 	.db #0x08	; 8
      002CFF 08                    2929 	.db #0x08	; 8
      002D00 0A                    2930 	.db #0x0a	; 10
      002D01 04                    2931 	.db #0x04	; 4
      002D02 18                    2932 	.db #0x18	; 24
      002D03 00                    2933 	.db #0x00	; 0
      002D04 1C                    2934 	.db #0x1c	; 28
      002D05 20                    2935 	.db #0x20	; 32
      002D06 3C                    2936 	.db #0x3c	; 60
      002D07 22                    2937 	.db #0x22	; 34
      002D08 3C                    2938 	.db #0x3c	; 60
      002D09 00                    2939 	.db #0x00	; 0
      002D0A 18                    2940 	.db #0x18	; 24
      002D0B 00                    2941 	.db #0x00	; 0
      002D0C 08                    2942 	.db #0x08	; 8
      002D0D 08                    2943 	.db #0x08	; 8
      002D0E 08                    2944 	.db #0x08	; 8
      002D0F 08                    2945 	.db #0x08	; 8
      002D10 18                    2946 	.db #0x18	; 24
      002D11 00                    2947 	.db #0x00	; 0
      002D12 18                    2948 	.db #0x18	; 24
      002D13 00                    2949 	.db #0x00	; 0
      002D14 0C                    2950 	.db #0x0c	; 12
      002D15 12                    2951 	.db #0x12	; 18
      002D16 12                    2952 	.db #0x12	; 18
      002D17 12                    2953 	.db #0x12	; 18
      002D18 0C                    2954 	.db #0x0c	; 12
      002D19 00                    2955 	.db #0x00	; 0
      002D1A 18                    2956 	.db #0x18	; 24
      002D1B 00                    2957 	.db #0x00	; 0
      002D1C 12                    2958 	.db #0x12	; 18
      002D1D 12                    2959 	.db #0x12	; 18
      002D1E 12                    2960 	.db #0x12	; 18
      002D1F 1A                    2961 	.db #0x1a	; 26
      002D20 14                    2962 	.db #0x14	; 20
      002D21 00                    2963 	.db #0x00	; 0
      002D22 14                    2964 	.db #0x14	; 20
      002D23 0A                    2965 	.db #0x0a	; 10
      002D24 00                    2966 	.db #0x00	; 0
      002D25 0E                    2967 	.db #0x0e	; 14
      002D26 12                    2968 	.db #0x12	; 18
      002D27 12                    2969 	.db #0x12	; 18
      002D28 12                    2970 	.db #0x12	; 18
      002D29 00                    2971 	.db #0x00	; 0
      002D2A 14                    2972 	.db #0x14	; 20
      002D2B 0A                    2973 	.db #0x0a	; 10
      002D2C 00                    2974 	.db #0x00	; 0
      002D2D 12                    2975 	.db #0x12	; 18
      002D2E 16                    2976 	.db #0x16	; 22
      002D2F 1A                    2977 	.db #0x1a	; 26
      002D30 12                    2978 	.db #0x12	; 18
      002D31 00                    2979 	.db #0x00	; 0
      002D32 1C                    2980 	.db #0x1c	; 28
      002D33 20                    2981 	.db #0x20	; 32
      002D34 3C                    2982 	.db #0x3c	; 60
      002D35 22                    2983 	.db #0x22	; 34
      002D36 3C                    2984 	.db #0x3c	; 60
      002D37 00                    2985 	.db #0x00	; 0
      002D38 3C                    2986 	.db #0x3c	; 60
      002D39 00                    2987 	.db #0x00	; 0
      002D3A 0C                    2988 	.db #0x0c	; 12
      002D3B 12                    2989 	.db #0x12	; 18
      002D3C 12                    2990 	.db #0x12	; 18
      002D3D 12                    2991 	.db #0x12	; 18
      002D3E 0C                    2992 	.db #0x0c	; 12
      002D3F 00                    2993 	.db #0x00	; 0
      002D40 1E                    2994 	.db #0x1e	; 30
      002D41 00                    2995 	.db #0x00	; 0
      002D42 08                    2996 	.db #0x08	; 8
      002D43 00                    2997 	.db #0x00	; 0
      002D44 08                    2998 	.db #0x08	; 8
      002D45 0C                    2999 	.db #0x0c	; 12
      002D46 02                    3000 	.db #0x02	; 2
      002D47 22                    3001 	.db #0x22	; 34
      002D48 1C                    3002 	.db #0x1c	; 28
      002D49 00                    3003 	.db #0x00	; 0
      002D4A 00                    3004 	.db #0x00	; 0
      002D4B 00                    3005 	.db #0x00	; 0
      002D4C 3E                    3006 	.db #0x3e	; 62
      002D4D 02                    3007 	.db #0x02	; 2
      002D4E 02                    3008 	.db #0x02	; 2
      002D4F 02                    3009 	.db #0x02	; 2
      002D50 00                    3010 	.db #0x00	; 0
      002D51 00                    3011 	.db #0x00	; 0
      002D52 00                    3012 	.db #0x00	; 0
      002D53 00                    3013 	.db #0x00	; 0
      002D54 3F                    3014 	.db #0x3f	; 63
      002D55 20                    3015 	.db #0x20	; 32
      002D56 20                    3016 	.db #0x20	; 32
      002D57 00                    3017 	.db #0x00	; 0
      002D58 00                    3018 	.db #0x00	; 0
      002D59 00                    3019 	.db #0x00	; 0
      002D5A 02                    3020 	.db #0x02	; 2
      002D5B 12                    3021 	.db #0x12	; 18
      002D5C 0A                    3022 	.db #0x0a	; 10
      002D5D 1C                    3023 	.db #0x1c	; 28
      002D5E 22                    3024 	.db #0x22	; 34
      002D5F 10                    3025 	.db #0x10	; 16
      002D60 38                    3026 	.db #0x38	; 56	'8'
      002D61 00                    3027 	.db #0x00	; 0
      002D62 02                    3028 	.db #0x02	; 2
      002D63 12                    3029 	.db #0x12	; 18
      002D64 0A                    3030 	.db #0x0a	; 10
      002D65 34                    3031 	.db #0x34	; 52	'4'
      002D66 2A                    3032 	.db #0x2a	; 42
      002D67 38                    3033 	.db #0x38	; 56	'8'
      002D68 20                    3034 	.db #0x20	; 32
      002D69 00                    3035 	.db #0x00	; 0
      002D6A 08                    3036 	.db #0x08	; 8
      002D6B 00                    3037 	.db #0x00	; 0
      002D6C 08                    3038 	.db #0x08	; 8
      002D6D 08                    3039 	.db #0x08	; 8
      002D6E 1C                    3040 	.db #0x1c	; 28
      002D6F 1C                    3041 	.db #0x1c	; 28
      002D70 08                    3042 	.db #0x08	; 8
      002D71 00                    3043 	.db #0x00	; 0
      002D72 00                    3044 	.db #0x00	; 0
      002D73 00                    3045 	.db #0x00	; 0
      002D74 24                    3046 	.db #0x24	; 36
      002D75 12                    3047 	.db #0x12	; 18
      002D76 24                    3048 	.db #0x24	; 36
      002D77 00                    3049 	.db #0x00	; 0
      002D78 00                    3050 	.db #0x00	; 0
      002D79 00                    3051 	.db #0x00	; 0
      002D7A 00                    3052 	.db #0x00	; 0
      002D7B 00                    3053 	.db #0x00	; 0
      002D7C 12                    3054 	.db #0x12	; 18
      002D7D 24                    3055 	.db #0x24	; 36
      002D7E 12                    3056 	.db #0x12	; 18
      002D7F 00                    3057 	.db #0x00	; 0
      002D80 00                    3058 	.db #0x00	; 0
      002D81 00                    3059 	.db #0x00	; 0
      002D82 2A                    3060 	.db #0x2a	; 42
      002D83 00                    3061 	.db #0x00	; 0
      002D84 15                    3062 	.db #0x15	; 21
      002D85 00                    3063 	.db #0x00	; 0
      002D86 2A                    3064 	.db #0x2a	; 42
      002D87 00                    3065 	.db #0x00	; 0
      002D88 15                    3066 	.db #0x15	; 21
      002D89 00                    3067 	.db #0x00	; 0
      002D8A 2A                    3068 	.db #0x2a	; 42
      002D8B 15                    3069 	.db #0x15	; 21
      002D8C 2A                    3070 	.db #0x2a	; 42
      002D8D 15                    3071 	.db #0x15	; 21
      002D8E 2A                    3072 	.db #0x2a	; 42
      002D8F 15                    3073 	.db #0x15	; 21
      002D90 2A                    3074 	.db #0x2a	; 42
      002D91 15                    3075 	.db #0x15	; 21
      002D92 15                    3076 	.db #0x15	; 21
      002D93 3F                    3077 	.db #0x3f	; 63
      002D94 2A                    3078 	.db #0x2a	; 42
      002D95 3F                    3079 	.db #0x3f	; 63
      002D96 15                    3080 	.db #0x15	; 21
      002D97 3F                    3081 	.db #0x3f	; 63
      002D98 2A                    3082 	.db #0x2a	; 42
      002D99 3F                    3083 	.db #0x3f	; 63
      002D9A 08                    3084 	.db #0x08	; 8
      002D9B 08                    3085 	.db #0x08	; 8
      002D9C 08                    3086 	.db #0x08	; 8
      002D9D 08                    3087 	.db #0x08	; 8
      002D9E 08                    3088 	.db #0x08	; 8
      002D9F 08                    3089 	.db #0x08	; 8
      002DA0 08                    3090 	.db #0x08	; 8
      002DA1 08                    3091 	.db #0x08	; 8
      002DA2 08                    3092 	.db #0x08	; 8
      002DA3 08                    3093 	.db #0x08	; 8
      002DA4 08                    3094 	.db #0x08	; 8
      002DA5 0F                    3095 	.db #0x0f	; 15
      002DA6 08                    3096 	.db #0x08	; 8
      002DA7 08                    3097 	.db #0x08	; 8
      002DA8 08                    3098 	.db #0x08	; 8
      002DA9 08                    3099 	.db #0x08	; 8
      002DAA 08                    3100 	.db #0x08	; 8
      002DAB 0F                    3101 	.db #0x0f	; 15
      002DAC 08                    3102 	.db #0x08	; 8
      002DAD 0F                    3103 	.db #0x0f	; 15
      002DAE 08                    3104 	.db #0x08	; 8
      002DAF 08                    3105 	.db #0x08	; 8
      002DB0 08                    3106 	.db #0x08	; 8
      002DB1 08                    3107 	.db #0x08	; 8
      002DB2 0A                    3108 	.db #0x0a	; 10
      002DB3 0A                    3109 	.db #0x0a	; 10
      002DB4 0A                    3110 	.db #0x0a	; 10
      002DB5 0B                    3111 	.db #0x0b	; 11
      002DB6 0A                    3112 	.db #0x0a	; 10
      002DB7 0A                    3113 	.db #0x0a	; 10
      002DB8 0A                    3114 	.db #0x0a	; 10
      002DB9 0A                    3115 	.db #0x0a	; 10
      002DBA 00                    3116 	.db #0x00	; 0
      002DBB 00                    3117 	.db #0x00	; 0
      002DBC 00                    3118 	.db #0x00	; 0
      002DBD 0F                    3119 	.db #0x0f	; 15
      002DBE 0A                    3120 	.db #0x0a	; 10
      002DBF 0A                    3121 	.db #0x0a	; 10
      002DC0 0A                    3122 	.db #0x0a	; 10
      002DC1 0A                    3123 	.db #0x0a	; 10
      002DC2 00                    3124 	.db #0x00	; 0
      002DC3 0F                    3125 	.db #0x0f	; 15
      002DC4 08                    3126 	.db #0x08	; 8
      002DC5 0F                    3127 	.db #0x0f	; 15
      002DC6 08                    3128 	.db #0x08	; 8
      002DC7 08                    3129 	.db #0x08	; 8
      002DC8 08                    3130 	.db #0x08	; 8
      002DC9 08                    3131 	.db #0x08	; 8
      002DCA 0A                    3132 	.db #0x0a	; 10
      002DCB 0B                    3133 	.db #0x0b	; 11
      002DCC 08                    3134 	.db #0x08	; 8
      002DCD 0B                    3135 	.db #0x0b	; 11
      002DCE 0A                    3136 	.db #0x0a	; 10
      002DCF 0A                    3137 	.db #0x0a	; 10
      002DD0 0A                    3138 	.db #0x0a	; 10
      002DD1 0A                    3139 	.db #0x0a	; 10
      002DD2 0A                    3140 	.db #0x0a	; 10
      002DD3 0A                    3141 	.db #0x0a	; 10
      002DD4 0A                    3142 	.db #0x0a	; 10
      002DD5 0A                    3143 	.db #0x0a	; 10
      002DD6 0A                    3144 	.db #0x0a	; 10
      002DD7 0A                    3145 	.db #0x0a	; 10
      002DD8 0A                    3146 	.db #0x0a	; 10
      002DD9 0A                    3147 	.db #0x0a	; 10
      002DDA 00                    3148 	.db #0x00	; 0
      002DDB 0F                    3149 	.db #0x0f	; 15
      002DDC 08                    3150 	.db #0x08	; 8
      002DDD 0B                    3151 	.db #0x0b	; 11
      002DDE 0A                    3152 	.db #0x0a	; 10
      002DDF 0A                    3153 	.db #0x0a	; 10
      002DE0 0A                    3154 	.db #0x0a	; 10
      002DE1 0A                    3155 	.db #0x0a	; 10
      002DE2 0A                    3156 	.db #0x0a	; 10
      002DE3 0B                    3157 	.db #0x0b	; 11
      002DE4 08                    3158 	.db #0x08	; 8
      002DE5 0F                    3159 	.db #0x0f	; 15
      002DE6 00                    3160 	.db #0x00	; 0
      002DE7 00                    3161 	.db #0x00	; 0
      002DE8 00                    3162 	.db #0x00	; 0
      002DE9 00                    3163 	.db #0x00	; 0
      002DEA 0A                    3164 	.db #0x0a	; 10
      002DEB 0A                    3165 	.db #0x0a	; 10
      002DEC 0A                    3166 	.db #0x0a	; 10
      002DED 0F                    3167 	.db #0x0f	; 15
      002DEE 00                    3168 	.db #0x00	; 0
      002DEF 00                    3169 	.db #0x00	; 0
      002DF0 00                    3170 	.db #0x00	; 0
      002DF1 00                    3171 	.db #0x00	; 0
      002DF2 08                    3172 	.db #0x08	; 8
      002DF3 0F                    3173 	.db #0x0f	; 15
      002DF4 08                    3174 	.db #0x08	; 8
      002DF5 0F                    3175 	.db #0x0f	; 15
      002DF6 00                    3176 	.db #0x00	; 0
      002DF7 00                    3177 	.db #0x00	; 0
      002DF8 00                    3178 	.db #0x00	; 0
      002DF9 00                    3179 	.db #0x00	; 0
      002DFA 00                    3180 	.db #0x00	; 0
      002DFB 00                    3181 	.db #0x00	; 0
      002DFC 00                    3182 	.db #0x00	; 0
      002DFD 0F                    3183 	.db #0x0f	; 15
      002DFE 08                    3184 	.db #0x08	; 8
      002DFF 08                    3185 	.db #0x08	; 8
      002E00 08                    3186 	.db #0x08	; 8
      002E01 08                    3187 	.db #0x08	; 8
      002E02 08                    3188 	.db #0x08	; 8
      002E03 08                    3189 	.db #0x08	; 8
      002E04 08                    3190 	.db #0x08	; 8
      002E05 38                    3191 	.db #0x38	; 56	'8'
      002E06 00                    3192 	.db #0x00	; 0
      002E07 00                    3193 	.db #0x00	; 0
      002E08 00                    3194 	.db #0x00	; 0
      002E09 00                    3195 	.db #0x00	; 0
      002E0A 08                    3196 	.db #0x08	; 8
      002E0B 08                    3197 	.db #0x08	; 8
      002E0C 08                    3198 	.db #0x08	; 8
      002E0D 3F                    3199 	.db #0x3f	; 63
      002E0E 00                    3200 	.db #0x00	; 0
      002E0F 00                    3201 	.db #0x00	; 0
      002E10 00                    3202 	.db #0x00	; 0
      002E11 00                    3203 	.db #0x00	; 0
      002E12 00                    3204 	.db #0x00	; 0
      002E13 00                    3205 	.db #0x00	; 0
      002E14 00                    3206 	.db #0x00	; 0
      002E15 3F                    3207 	.db #0x3f	; 63
      002E16 08                    3208 	.db #0x08	; 8
      002E17 08                    3209 	.db #0x08	; 8
      002E18 08                    3210 	.db #0x08	; 8
      002E19 08                    3211 	.db #0x08	; 8
      002E1A 08                    3212 	.db #0x08	; 8
      002E1B 08                    3213 	.db #0x08	; 8
      002E1C 08                    3214 	.db #0x08	; 8
      002E1D 38                    3215 	.db #0x38	; 56	'8'
      002E1E 08                    3216 	.db #0x08	; 8
      002E1F 08                    3217 	.db #0x08	; 8
      002E20 08                    3218 	.db #0x08	; 8
      002E21 08                    3219 	.db #0x08	; 8
      002E22 00                    3220 	.db #0x00	; 0
      002E23 00                    3221 	.db #0x00	; 0
      002E24 00                    3222 	.db #0x00	; 0
      002E25 3F                    3223 	.db #0x3f	; 63
      002E26 00                    3224 	.db #0x00	; 0
      002E27 00                    3225 	.db #0x00	; 0
      002E28 00                    3226 	.db #0x00	; 0
      002E29 00                    3227 	.db #0x00	; 0
      002E2A 08                    3228 	.db #0x08	; 8
      002E2B 08                    3229 	.db #0x08	; 8
      002E2C 08                    3230 	.db #0x08	; 8
      002E2D 3F                    3231 	.db #0x3f	; 63
      002E2E 08                    3232 	.db #0x08	; 8
      002E2F 08                    3233 	.db #0x08	; 8
      002E30 08                    3234 	.db #0x08	; 8
      002E31 08                    3235 	.db #0x08	; 8
      002E32 08                    3236 	.db #0x08	; 8
      002E33 38                    3237 	.db #0x38	; 56	'8'
      002E34 08                    3238 	.db #0x08	; 8
      002E35 38                    3239 	.db #0x38	; 56	'8'
      002E36 08                    3240 	.db #0x08	; 8
      002E37 08                    3241 	.db #0x08	; 8
      002E38 08                    3242 	.db #0x08	; 8
      002E39 08                    3243 	.db #0x08	; 8
      002E3A 0A                    3244 	.db #0x0a	; 10
      002E3B 0A                    3245 	.db #0x0a	; 10
      002E3C 0A                    3246 	.db #0x0a	; 10
      002E3D 3A                    3247 	.db #0x3a	; 58
      002E3E 0A                    3248 	.db #0x0a	; 10
      002E3F 0A                    3249 	.db #0x0a	; 10
      002E40 0A                    3250 	.db #0x0a	; 10
      002E41 0A                    3251 	.db #0x0a	; 10
      002E42 0A                    3252 	.db #0x0a	; 10
      002E43 3A                    3253 	.db #0x3a	; 58
      002E44 02                    3254 	.db #0x02	; 2
      002E45 3E                    3255 	.db #0x3e	; 62
      002E46 00                    3256 	.db #0x00	; 0
      002E47 00                    3257 	.db #0x00	; 0
      002E48 00                    3258 	.db #0x00	; 0
      002E49 00                    3259 	.db #0x00	; 0
      002E4A 00                    3260 	.db #0x00	; 0
      002E4B 3E                    3261 	.db #0x3e	; 62
      002E4C 02                    3262 	.db #0x02	; 2
      002E4D 3A                    3263 	.db #0x3a	; 58
      002E4E 0A                    3264 	.db #0x0a	; 10
      002E4F 0A                    3265 	.db #0x0a	; 10
      002E50 0A                    3266 	.db #0x0a	; 10
      002E51 0A                    3267 	.db #0x0a	; 10
      002E52 0A                    3268 	.db #0x0a	; 10
      002E53 3B                    3269 	.db #0x3b	; 59
      002E54 00                    3270 	.db #0x00	; 0
      002E55 3F                    3271 	.db #0x3f	; 63
      002E56 00                    3272 	.db #0x00	; 0
      002E57 00                    3273 	.db #0x00	; 0
      002E58 00                    3274 	.db #0x00	; 0
      002E59 00                    3275 	.db #0x00	; 0
      002E5A 00                    3276 	.db #0x00	; 0
      002E5B 3F                    3277 	.db #0x3f	; 63
      002E5C 00                    3278 	.db #0x00	; 0
      002E5D 3B                    3279 	.db #0x3b	; 59
      002E5E 0A                    3280 	.db #0x0a	; 10
      002E5F 0A                    3281 	.db #0x0a	; 10
      002E60 0A                    3282 	.db #0x0a	; 10
      002E61 0A                    3283 	.db #0x0a	; 10
      002E62 0A                    3284 	.db #0x0a	; 10
      002E63 3A                    3285 	.db #0x3a	; 58
      002E64 02                    3286 	.db #0x02	; 2
      002E65 3A                    3287 	.db #0x3a	; 58
      002E66 0A                    3288 	.db #0x0a	; 10
      002E67 0A                    3289 	.db #0x0a	; 10
      002E68 0A                    3290 	.db #0x0a	; 10
      002E69 0A                    3291 	.db #0x0a	; 10
      002E6A 00                    3292 	.db #0x00	; 0
      002E6B 3F                    3293 	.db #0x3f	; 63
      002E6C 00                    3294 	.db #0x00	; 0
      002E6D 3F                    3295 	.db #0x3f	; 63
      002E6E 00                    3296 	.db #0x00	; 0
      002E6F 00                    3297 	.db #0x00	; 0
      002E70 00                    3298 	.db #0x00	; 0
      002E71 00                    3299 	.db #0x00	; 0
      002E72 0A                    3300 	.db #0x0a	; 10
      002E73 3B                    3301 	.db #0x3b	; 59
      002E74 00                    3302 	.db #0x00	; 0
      002E75 3B                    3303 	.db #0x3b	; 59
      002E76 0A                    3304 	.db #0x0a	; 10
      002E77 0A                    3305 	.db #0x0a	; 10
      002E78 0A                    3306 	.db #0x0a	; 10
      002E79 0A                    3307 	.db #0x0a	; 10
      002E7A 08                    3308 	.db #0x08	; 8
      002E7B 3F                    3309 	.db #0x3f	; 63
      002E7C 00                    3310 	.db #0x00	; 0
      002E7D 3F                    3311 	.db #0x3f	; 63
      002E7E 00                    3312 	.db #0x00	; 0
      002E7F 00                    3313 	.db #0x00	; 0
      002E80 00                    3314 	.db #0x00	; 0
      002E81 00                    3315 	.db #0x00	; 0
      002E82 0A                    3316 	.db #0x0a	; 10
      002E83 0A                    3317 	.db #0x0a	; 10
      002E84 0A                    3318 	.db #0x0a	; 10
      002E85 3F                    3319 	.db #0x3f	; 63
      002E86 00                    3320 	.db #0x00	; 0
      002E87 00                    3321 	.db #0x00	; 0
      002E88 00                    3322 	.db #0x00	; 0
      002E89 00                    3323 	.db #0x00	; 0
      002E8A 00                    3324 	.db #0x00	; 0
      002E8B 3F                    3325 	.db #0x3f	; 63
      002E8C 00                    3326 	.db #0x00	; 0
      002E8D 3F                    3327 	.db #0x3f	; 63
      002E8E 08                    3328 	.db #0x08	; 8
      002E8F 08                    3329 	.db #0x08	; 8
      002E90 08                    3330 	.db #0x08	; 8
      002E91 08                    3331 	.db #0x08	; 8
      002E92 00                    3332 	.db #0x00	; 0
      002E93 00                    3333 	.db #0x00	; 0
      002E94 00                    3334 	.db #0x00	; 0
      002E95 3F                    3335 	.db #0x3f	; 63
      002E96 0A                    3336 	.db #0x0a	; 10
      002E97 0A                    3337 	.db #0x0a	; 10
      002E98 0A                    3338 	.db #0x0a	; 10
      002E99 0A                    3339 	.db #0x0a	; 10
      002E9A 0A                    3340 	.db #0x0a	; 10
      002E9B 0A                    3341 	.db #0x0a	; 10
      002E9C 0A                    3342 	.db #0x0a	; 10
      002E9D 3E                    3343 	.db #0x3e	; 62
      002E9E 00                    3344 	.db #0x00	; 0
      002E9F 00                    3345 	.db #0x00	; 0
      002EA0 00                    3346 	.db #0x00	; 0
      002EA1 00                    3347 	.db #0x00	; 0
      002EA2 08                    3348 	.db #0x08	; 8
      002EA3 38                    3349 	.db #0x38	; 56	'8'
      002EA4 08                    3350 	.db #0x08	; 8
      002EA5 38                    3351 	.db #0x38	; 56	'8'
      002EA6 00                    3352 	.db #0x00	; 0
      002EA7 00                    3353 	.db #0x00	; 0
      002EA8 00                    3354 	.db #0x00	; 0
      002EA9 00                    3355 	.db #0x00	; 0
      002EAA 00                    3356 	.db #0x00	; 0
      002EAB 38                    3357 	.db #0x38	; 56	'8'
      002EAC 08                    3358 	.db #0x08	; 8
      002EAD 38                    3359 	.db #0x38	; 56	'8'
      002EAE 08                    3360 	.db #0x08	; 8
      002EAF 08                    3361 	.db #0x08	; 8
      002EB0 08                    3362 	.db #0x08	; 8
      002EB1 08                    3363 	.db #0x08	; 8
      002EB2 00                    3364 	.db #0x00	; 0
      002EB3 00                    3365 	.db #0x00	; 0
      002EB4 00                    3366 	.db #0x00	; 0
      002EB5 3E                    3367 	.db #0x3e	; 62
      002EB6 0A                    3368 	.db #0x0a	; 10
      002EB7 0A                    3369 	.db #0x0a	; 10
      002EB8 0A                    3370 	.db #0x0a	; 10
      002EB9 0A                    3371 	.db #0x0a	; 10
      002EBA 0A                    3372 	.db #0x0a	; 10
      002EBB 0A                    3373 	.db #0x0a	; 10
      002EBC 0A                    3374 	.db #0x0a	; 10
      002EBD 3B                    3375 	.db #0x3b	; 59
      002EBE 0A                    3376 	.db #0x0a	; 10
      002EBF 0A                    3377 	.db #0x0a	; 10
      002EC0 0A                    3378 	.db #0x0a	; 10
      002EC1 0A                    3379 	.db #0x0a	; 10
      002EC2 08                    3380 	.db #0x08	; 8
      002EC3 3F                    3381 	.db #0x3f	; 63
      002EC4 00                    3382 	.db #0x00	; 0
      002EC5 3F                    3383 	.db #0x3f	; 63
      002EC6 08                    3384 	.db #0x08	; 8
      002EC7 08                    3385 	.db #0x08	; 8
      002EC8 08                    3386 	.db #0x08	; 8
      002EC9 08                    3387 	.db #0x08	; 8
      002ECA 08                    3388 	.db #0x08	; 8
      002ECB 08                    3389 	.db #0x08	; 8
      002ECC 08                    3390 	.db #0x08	; 8
      002ECD 0F                    3391 	.db #0x0f	; 15
      002ECE 00                    3392 	.db #0x00	; 0
      002ECF 00                    3393 	.db #0x00	; 0
      002ED0 00                    3394 	.db #0x00	; 0
      002ED1 00                    3395 	.db #0x00	; 0
      002ED2 00                    3396 	.db #0x00	; 0
      002ED3 00                    3397 	.db #0x00	; 0
      002ED4 00                    3398 	.db #0x00	; 0
      002ED5 38                    3399 	.db #0x38	; 56	'8'
      002ED6 08                    3400 	.db #0x08	; 8
      002ED7 08                    3401 	.db #0x08	; 8
      002ED8 08                    3402 	.db #0x08	; 8
      002ED9 08                    3403 	.db #0x08	; 8
      002EDA 3F                    3404 	.db #0x3f	; 63
      002EDB 3F                    3405 	.db #0x3f	; 63
      002EDC 3F                    3406 	.db #0x3f	; 63
      002EDD 3F                    3407 	.db #0x3f	; 63
      002EDE 3F                    3408 	.db #0x3f	; 63
      002EDF 3F                    3409 	.db #0x3f	; 63
      002EE0 3F                    3410 	.db #0x3f	; 63
      002EE1 3F                    3411 	.db #0x3f	; 63
      002EE2 00                    3412 	.db #0x00	; 0
      002EE3 00                    3413 	.db #0x00	; 0
      002EE4 00                    3414 	.db #0x00	; 0
      002EE5 00                    3415 	.db #0x00	; 0
      002EE6 3F                    3416 	.db #0x3f	; 63
      002EE7 3F                    3417 	.db #0x3f	; 63
      002EE8 3F                    3418 	.db #0x3f	; 63
      002EE9 3F                    3419 	.db #0x3f	; 63
      002EEA 07                    3420 	.db #0x07	; 7
      002EEB 07                    3421 	.db #0x07	; 7
      002EEC 07                    3422 	.db #0x07	; 7
      002EED 07                    3423 	.db #0x07	; 7
      002EEE 07                    3424 	.db #0x07	; 7
      002EEF 07                    3425 	.db #0x07	; 7
      002EF0 07                    3426 	.db #0x07	; 7
      002EF1 07                    3427 	.db #0x07	; 7
      002EF2 38                    3428 	.db #0x38	; 56	'8'
      002EF3 38                    3429 	.db #0x38	; 56	'8'
      002EF4 38                    3430 	.db #0x38	; 56	'8'
      002EF5 38                    3431 	.db #0x38	; 56	'8'
      002EF6 38                    3432 	.db #0x38	; 56	'8'
      002EF7 38                    3433 	.db #0x38	; 56	'8'
      002EF8 38                    3434 	.db #0x38	; 56	'8'
      002EF9 38                    3435 	.db #0x38	; 56	'8'
      002EFA 3F                    3436 	.db #0x3f	; 63
      002EFB 3F                    3437 	.db #0x3f	; 63
      002EFC 3F                    3438 	.db #0x3f	; 63
      002EFD 3F                    3439 	.db #0x3f	; 63
      002EFE 00                    3440 	.db #0x00	; 0
      002EFF 00                    3441 	.db #0x00	; 0
      002F00 00                    3442 	.db #0x00	; 0
      002F01 00                    3443 	.db #0x00	; 0
      002F02 00                    3444 	.db #0x00	; 0
      002F03 00                    3445 	.db #0x00	; 0
      002F04 2C                    3446 	.db #0x2c	; 44
      002F05 12                    3447 	.db #0x12	; 18
      002F06 12                    3448 	.db #0x12	; 18
      002F07 2C                    3449 	.db #0x2c	; 44
      002F08 00                    3450 	.db #0x00	; 0
      002F09 00                    3451 	.db #0x00	; 0
      002F0A 00                    3452 	.db #0x00	; 0
      002F0B 0E                    3453 	.db #0x0e	; 14
      002F0C 12                    3454 	.db #0x12	; 18
      002F0D 0E                    3455 	.db #0x0e	; 14
      002F0E 12                    3456 	.db #0x12	; 18
      002F0F 12                    3457 	.db #0x12	; 18
      002F10 0E                    3458 	.db #0x0e	; 14
      002F11 02                    3459 	.db #0x02	; 2
      002F12 1E                    3460 	.db #0x1e	; 30
      002F13 12                    3461 	.db #0x12	; 18
      002F14 02                    3462 	.db #0x02	; 2
      002F15 02                    3463 	.db #0x02	; 2
      002F16 02                    3464 	.db #0x02	; 2
      002F17 02                    3465 	.db #0x02	; 2
      002F18 02                    3466 	.db #0x02	; 2
      002F19 00                    3467 	.db #0x00	; 0
      002F1A 00                    3468 	.db #0x00	; 0
      002F1B 3E                    3469 	.db #0x3e	; 62
      002F1C 14                    3470 	.db #0x14	; 20
      002F1D 14                    3471 	.db #0x14	; 20
      002F1E 14                    3472 	.db #0x14	; 20
      002F1F 14                    3473 	.db #0x14	; 20
      002F20 14                    3474 	.db #0x14	; 20
      002F21 00                    3475 	.db #0x00	; 0
      002F22 1E                    3476 	.db #0x1e	; 30
      002F23 12                    3477 	.db #0x12	; 18
      002F24 04                    3478 	.db #0x04	; 4
      002F25 08                    3479 	.db #0x08	; 8
      002F26 04                    3480 	.db #0x04	; 4
      002F27 12                    3481 	.db #0x12	; 18
      002F28 1E                    3482 	.db #0x1e	; 30
      002F29 00                    3483 	.db #0x00	; 0
      002F2A 00                    3484 	.db #0x00	; 0
      002F2B 00                    3485 	.db #0x00	; 0
      002F2C 3C                    3486 	.db #0x3c	; 60
      002F2D 12                    3487 	.db #0x12	; 18
      002F2E 12                    3488 	.db #0x12	; 18
      002F2F 0C                    3489 	.db #0x0c	; 12
      002F30 00                    3490 	.db #0x00	; 0
      002F31 00                    3491 	.db #0x00	; 0
      002F32 00                    3492 	.db #0x00	; 0
      002F33 00                    3493 	.db #0x00	; 0
      002F34 12                    3494 	.db #0x12	; 18
      002F35 12                    3495 	.db #0x12	; 18
      002F36 12                    3496 	.db #0x12	; 18
      002F37 0E                    3497 	.db #0x0e	; 14
      002F38 02                    3498 	.db #0x02	; 2
      002F39 02                    3499 	.db #0x02	; 2
      002F3A 00                    3500 	.db #0x00	; 0
      002F3B 00                    3501 	.db #0x00	; 0
      002F3C 14                    3502 	.db #0x14	; 20
      002F3D 0A                    3503 	.db #0x0a	; 10
      002F3E 08                    3504 	.db #0x08	; 8
      002F3F 08                    3505 	.db #0x08	; 8
      002F40 08                    3506 	.db #0x08	; 8
      002F41 00                    3507 	.db #0x00	; 0
      002F42 1C                    3508 	.db #0x1c	; 28
      002F43 08                    3509 	.db #0x08	; 8
      002F44 1C                    3510 	.db #0x1c	; 28
      002F45 22                    3511 	.db #0x22	; 34
      002F46 1C                    3512 	.db #0x1c	; 28
      002F47 08                    3513 	.db #0x08	; 8
      002F48 1C                    3514 	.db #0x1c	; 28
      002F49 00                    3515 	.db #0x00	; 0
      002F4A 0C                    3516 	.db #0x0c	; 12
      002F4B 12                    3517 	.db #0x12	; 18
      002F4C 12                    3518 	.db #0x12	; 18
      002F4D 1E                    3519 	.db #0x1e	; 30
      002F4E 12                    3520 	.db #0x12	; 18
      002F4F 12                    3521 	.db #0x12	; 18
      002F50 0C                    3522 	.db #0x0c	; 12
      002F51 00                    3523 	.db #0x00	; 0
      002F52 00                    3524 	.db #0x00	; 0
      002F53 1C                    3525 	.db #0x1c	; 28
      002F54 22                    3526 	.db #0x22	; 34
      002F55 22                    3527 	.db #0x22	; 34
      002F56 14                    3528 	.db #0x14	; 20
      002F57 14                    3529 	.db #0x14	; 20
      002F58 36                    3530 	.db #0x36	; 54	'6'
      002F59 00                    3531 	.db #0x00	; 0
      002F5A 0C                    3532 	.db #0x0c	; 12
      002F5B 02                    3533 	.db #0x02	; 2
      002F5C 04                    3534 	.db #0x04	; 4
      002F5D 08                    3535 	.db #0x08	; 8
      002F5E 1C                    3536 	.db #0x1c	; 28
      002F5F 12                    3537 	.db #0x12	; 18
      002F60 0C                    3538 	.db #0x0c	; 12
      002F61 00                    3539 	.db #0x00	; 0
      002F62 00                    3540 	.db #0x00	; 0
      002F63 00                    3541 	.db #0x00	; 0
      002F64 14                    3542 	.db #0x14	; 20
      002F65 2A                    3543 	.db #0x2a	; 42
      002F66 2A                    3544 	.db #0x2a	; 42
      002F67 14                    3545 	.db #0x14	; 20
      002F68 00                    3546 	.db #0x00	; 0
      002F69 00                    3547 	.db #0x00	; 0
      002F6A 00                    3548 	.db #0x00	; 0
      002F6B 08                    3549 	.db #0x08	; 8
      002F6C 1C                    3550 	.db #0x1c	; 28
      002F6D 2A                    3551 	.db #0x2a	; 42
      002F6E 2A                    3552 	.db #0x2a	; 42
      002F6F 1C                    3553 	.db #0x1c	; 28
      002F70 08                    3554 	.db #0x08	; 8
      002F71 00                    3555 	.db #0x00	; 0
      002F72 00                    3556 	.db #0x00	; 0
      002F73 1C                    3557 	.db #0x1c	; 28
      002F74 02                    3558 	.db #0x02	; 2
      002F75 1E                    3559 	.db #0x1e	; 30
      002F76 02                    3560 	.db #0x02	; 2
      002F77 1C                    3561 	.db #0x1c	; 28
      002F78 00                    3562 	.db #0x00	; 0
      002F79 00                    3563 	.db #0x00	; 0
      002F7A 00                    3564 	.db #0x00	; 0
      002F7B 0C                    3565 	.db #0x0c	; 12
      002F7C 12                    3566 	.db #0x12	; 18
      002F7D 12                    3567 	.db #0x12	; 18
      002F7E 12                    3568 	.db #0x12	; 18
      002F7F 12                    3569 	.db #0x12	; 18
      002F80 00                    3570 	.db #0x00	; 0
      002F81 00                    3571 	.db #0x00	; 0
      002F82 00                    3572 	.db #0x00	; 0
      002F83 1E                    3573 	.db #0x1e	; 30
      002F84 00                    3574 	.db #0x00	; 0
      002F85 1E                    3575 	.db #0x1e	; 30
      002F86 00                    3576 	.db #0x00	; 0
      002F87 1E                    3577 	.db #0x1e	; 30
      002F88 00                    3578 	.db #0x00	; 0
      002F89 00                    3579 	.db #0x00	; 0
      002F8A 00                    3580 	.db #0x00	; 0
      002F8B 08                    3581 	.db #0x08	; 8
      002F8C 1C                    3582 	.db #0x1c	; 28
      002F8D 08                    3583 	.db #0x08	; 8
      002F8E 00                    3584 	.db #0x00	; 0
      002F8F 1C                    3585 	.db #0x1c	; 28
      002F90 00                    3586 	.db #0x00	; 0
      002F91 00                    3587 	.db #0x00	; 0
      002F92 02                    3588 	.db #0x02	; 2
      002F93 0C                    3589 	.db #0x0c	; 12
      002F94 10                    3590 	.db #0x10	; 16
      002F95 0C                    3591 	.db #0x0c	; 12
      002F96 02                    3592 	.db #0x02	; 2
      002F97 00                    3593 	.db #0x00	; 0
      002F98 1E                    3594 	.db #0x1e	; 30
      002F99 00                    3595 	.db #0x00	; 0
      002F9A 10                    3596 	.db #0x10	; 16
      002F9B 0C                    3597 	.db #0x0c	; 12
      002F9C 02                    3598 	.db #0x02	; 2
      002F9D 0C                    3599 	.db #0x0c	; 12
      002F9E 10                    3600 	.db #0x10	; 16
      002F9F 00                    3601 	.db #0x00	; 0
      002FA0 1E                    3602 	.db #0x1e	; 30
      002FA1 00                    3603 	.db #0x00	; 0
      002FA2 00                    3604 	.db #0x00	; 0
      002FA3 10                    3605 	.db #0x10	; 16
      002FA4 28                    3606 	.db #0x28	; 40
      002FA5 08                    3607 	.db #0x08	; 8
      002FA6 08                    3608 	.db #0x08	; 8
      002FA7 08                    3609 	.db #0x08	; 8
      002FA8 08                    3610 	.db #0x08	; 8
      002FA9 08                    3611 	.db #0x08	; 8
      002FAA 08                    3612 	.db #0x08	; 8
      002FAB 08                    3613 	.db #0x08	; 8
      002FAC 08                    3614 	.db #0x08	; 8
      002FAD 08                    3615 	.db #0x08	; 8
      002FAE 08                    3616 	.db #0x08	; 8
      002FAF 0A                    3617 	.db #0x0a	; 10
      002FB0 04                    3618 	.db #0x04	; 4
      002FB1 00                    3619 	.db #0x00	; 0
      002FB2 00                    3620 	.db #0x00	; 0
      002FB3 08                    3621 	.db #0x08	; 8
      002FB4 00                    3622 	.db #0x00	; 0
      002FB5 3E                    3623 	.db #0x3e	; 62
      002FB6 00                    3624 	.db #0x00	; 0
      002FB7 08                    3625 	.db #0x08	; 8
      002FB8 00                    3626 	.db #0x00	; 0
      002FB9 00                    3627 	.db #0x00	; 0
      002FBA 00                    3628 	.db #0x00	; 0
      002FBB 14                    3629 	.db #0x14	; 20
      002FBC 0A                    3630 	.db #0x0a	; 10
      002FBD 00                    3631 	.db #0x00	; 0
      002FBE 14                    3632 	.db #0x14	; 20
      002FBF 0A                    3633 	.db #0x0a	; 10
      002FC0 00                    3634 	.db #0x00	; 0
      002FC1 00                    3635 	.db #0x00	; 0
      002FC2 0C                    3636 	.db #0x0c	; 12
      002FC3 12                    3637 	.db #0x12	; 18
      002FC4 12                    3638 	.db #0x12	; 18
      002FC5 0C                    3639 	.db #0x0c	; 12
      002FC6 00                    3640 	.db #0x00	; 0
      002FC7 00                    3641 	.db #0x00	; 0
      002FC8 00                    3642 	.db #0x00	; 0
      002FC9 00                    3643 	.db #0x00	; 0
      002FCA 00                    3644 	.db #0x00	; 0
      002FCB 00                    3645 	.db #0x00	; 0
      002FCC 00                    3646 	.db #0x00	; 0
      002FCD 0C                    3647 	.db #0x0c	; 12
      002FCE 0C                    3648 	.db #0x0c	; 12
      002FCF 00                    3649 	.db #0x00	; 0
      002FD0 00                    3650 	.db #0x00	; 0
      002FD1 00                    3651 	.db #0x00	; 0
      002FD2 00                    3652 	.db #0x00	; 0
      002FD3 00                    3653 	.db #0x00	; 0
      002FD4 00                    3654 	.db #0x00	; 0
      002FD5 04                    3655 	.db #0x04	; 4
      002FD6 00                    3656 	.db #0x00	; 0
      002FD7 00                    3657 	.db #0x00	; 0
      002FD8 00                    3658 	.db #0x00	; 0
      002FD9 00                    3659 	.db #0x00	; 0
      002FDA 00                    3660 	.db #0x00	; 0
      002FDB 38                    3661 	.db #0x38	; 56	'8'
      002FDC 08                    3662 	.db #0x08	; 8
      002FDD 08                    3663 	.db #0x08	; 8
      002FDE 0A                    3664 	.db #0x0a	; 10
      002FDF 0A                    3665 	.db #0x0a	; 10
      002FE0 04                    3666 	.db #0x04	; 4
      002FE1 00                    3667 	.db #0x00	; 0
      002FE2 0A                    3668 	.db #0x0a	; 10
      002FE3 14                    3669 	.db #0x14	; 20
      002FE4 14                    3670 	.db #0x14	; 20
      002FE5 14                    3671 	.db #0x14	; 20
      002FE6 00                    3672 	.db #0x00	; 0
      002FE7 00                    3673 	.db #0x00	; 0
      002FE8 00                    3674 	.db #0x00	; 0
      002FE9 00                    3675 	.db #0x00	; 0
      002FEA 06                    3676 	.db #0x06	; 6
      002FEB 08                    3677 	.db #0x08	; 8
      002FEC 04                    3678 	.db #0x04	; 4
      002FED 0E                    3679 	.db #0x0e	; 14
      002FEE 00                    3680 	.db #0x00	; 0
      002FEF 00                    3681 	.db #0x00	; 0
      002FF0 00                    3682 	.db #0x00	; 0
      002FF1 00                    3683 	.db #0x00	; 0
      002FF2 00                    3684 	.db #0x00	; 0
      002FF3 00                    3685 	.db #0x00	; 0
      002FF4 1E                    3686 	.db #0x1e	; 30
      002FF5 1E                    3687 	.db #0x1e	; 30
      002FF6 1E                    3688 	.db #0x1e	; 30
      002FF7 1E                    3689 	.db #0x1e	; 30
      002FF8 00                    3690 	.db #0x00	; 0
      002FF9 00                    3691 	.db #0x00	; 0
      002FFA 00                    3692 	.db #0x00	; 0
      002FFB 00                    3693 	.db #0x00	; 0
      002FFC 00                    3694 	.db #0x00	; 0
      002FFD 00                    3695 	.db #0x00	; 0
      002FFE 00                    3696 	.db #0x00	; 0
      002FFF 00                    3697 	.db #0x00	; 0
      003000 00                    3698 	.db #0x00	; 0
      003001 00                    3699 	.db #0x00	; 0
      003002                       3700 __xinit__initial:
      003002 D0 27 80              3701 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3702 	.area CABS    (ABS,CODE)
