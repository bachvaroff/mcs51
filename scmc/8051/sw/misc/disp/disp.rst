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
      00200E 02 24 3D         [24]  431 	ljmp	_main
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
                                    513 ;	disp.c:123: void init_intr(void) {
                                    514 ;	-----------------------------------------
                                    515 ;	 function init_intr
                                    516 ;	-----------------------------------------
      0020E7                        517 _init_intr:
                                    518 ;	disp.c:124: TR0 = 0;
                                    519 ;	assignBit
      0020E7 C2 8C            [12]  520 	clr	_TR0
                                    521 ;	disp.c:125: TR1 = 0;
                                    522 ;	assignBit
      0020E9 C2 8E            [12]  523 	clr	_TR1
                                    524 ;	disp.c:126: ET0 = 1;
                                    525 ;	assignBit
      0020EB D2 A9            [12]  526 	setb	_ET0
                                    527 ;	disp.c:127: ET1 = 0;
                                    528 ;	assignBit
      0020ED C2 AB            [12]  529 	clr	_ET1
                                    530 ;	disp.c:128: EA = 1;
                                    531 ;	assignBit
      0020EF D2 AF            [12]  532 	setb	_EA
                                    533 ;	disp.c:130: return;
                                    534 ;	disp.c:131: }
      0020F1 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'init_timer0'
                                    538 ;------------------------------------------------------------
                                    539 ;	disp.c:133: void init_timer0(void) {
                                    540 ;	-----------------------------------------
                                    541 ;	 function init_timer0
                                    542 ;	-----------------------------------------
      0020F2                        543 _init_timer0:
                                    544 ;	disp.c:134: TR0 = 0;
                                    545 ;	assignBit
      0020F2 C2 8C            [12]  546 	clr	_TR0
                                    547 ;	disp.c:135: TMOD |= 0x01;
      0020F4 43 89 01         [24]  548 	orl	_TMOD,#0x01
                                    549 ;	disp.c:136: TH0 = TR0_COUNT >> 8;
      0020F7 75 8C F8         [24]  550 	mov	_TH0,#0xf8
                                    551 ;	disp.c:137: TL0 = TR0_COUNT & 0xffu;
      0020FA 75 8A 00         [24]  552 	mov	_TL0,#0x00
                                    553 ;	disp.c:139: return;
                                    554 ;	disp.c:140: }
      0020FD 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'init_timer1'
                                    558 ;------------------------------------------------------------
                                    559 ;	disp.c:142: void init_timer1(void) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function init_timer1
                                    562 ;	-----------------------------------------
      0020FE                        563 _init_timer1:
                                    564 ;	disp.c:143: TR1 = 0;
                                    565 ;	assignBit
      0020FE C2 8E            [12]  566 	clr	_TR1
                                    567 ;	disp.c:144: TMOD |= 0x10;
      002100 43 89 10         [24]  568 	orl	_TMOD,#0x10
                                    569 ;	disp.c:145: TH1 = TR1_COUNT_0 >> 8;
      002103 75 8D 00         [24]  570 	mov	_TH1,#0x00
                                    571 ;	disp.c:146: TL1 = TR1_COUNT_0 & 0xffu;
      002106 75 8B 00         [24]  572 	mov	_TL1,#0x00
                                    573 ;	disp.c:148: return;
                                    574 ;	disp.c:149: }
      002109 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'init_disp'
                                    578 ;------------------------------------------------------------
                                    579 ;	disp.c:151: void init_disp(void) {
                                    580 ;	-----------------------------------------
                                    581 ;	 function init_disp
                                    582 ;	-----------------------------------------
      00210A                        583 _init_disp:
                                    584 ;	disp.c:152: GPO_SETREG(DISP_COL, 0u);
      00210A 78 05            [12]  585 	mov	r0,#(_gpo + 0x0005)
      00210C E4               [12]  586 	clr	a
      00210D F2               [24]  587 	movx	@r0,a
                                    588 ;	disp.c:153: GPO_SETREG(DISP_DATA, 0u);
      00210E 78 04            [12]  589 	mov	r0,#(_gpo + 0x0004)
      002110 F2               [24]  590 	movx	@r0,a
                                    591 ;	disp.c:154: OE = 0x0fu; /* 00_001111 */
      002111 78 3A            [12]  592 	mov	r0,#_OE
      002113 76 0F            [12]  593 	mov	@r0,#0x0f
                                    594 ;	disp.c:155: GPO_SETOE(OE);
      002115 78 06            [12]  595 	mov	r0,#(_gpo + 0x0006)
      002117 74 0F            [12]  596 	mov	a,#0x0f
      002119 F2               [24]  597 	movx	@r0,a
                                    598 ;	disp.c:157: for (column = 0u; column < 8u; column++)
      00211A 78 39            [12]  599 	mov	r0,#_column
      00211C 76 00            [12]  600 	mov	@r0,#0x00
      00211E                        601 00112$:
      00211E 78 39            [12]  602 	mov	r0,#_column
      002120 B6 08 00         [24]  603 	cjne	@r0,#0x08,00124$
      002123                        604 00124$:
      002123 50 11            [24]  605 	jnc	00110$
                                    606 ;	disp.c:158: ddata[column] = 0u;
      002125 78 39            [12]  607 	mov	r0,#_column
      002127 E6               [12]  608 	mov	a,@r0
      002128 24 31            [12]  609 	add	a,#_ddata
      00212A F8               [12]  610 	mov	r0,a
      00212B 76 00            [12]  611 	mov	@r0,#0x00
                                    612 ;	disp.c:157: for (column = 0u; column < 8u; column++)
      00212D 78 39            [12]  613 	mov	r0,#_column
      00212F E6               [12]  614 	mov	a,@r0
      002130 78 39            [12]  615 	mov	r0,#_column
      002132 04               [12]  616 	inc	a
      002133 F6               [12]  617 	mov	@r0,a
      002134 80 E8            [24]  618 	sjmp	00112$
      002136                        619 00110$:
                                    620 ;	disp.c:159: column = 0u;
      002136 78 39            [12]  621 	mov	r0,#_column
      002138 76 00            [12]  622 	mov	@r0,#0x00
                                    623 ;	disp.c:161: return;
                                    624 ;	disp.c:162: }
      00213A 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'timer0_intr'
                                    628 ;------------------------------------------------------------
                                    629 ;t                         Allocated to registers r7 
                                    630 ;------------------------------------------------------------
                                    631 ;	disp.c:164: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
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
                                    647 ;	disp.c:167: t = column & 7u;
      002142 78 39            [12]  648 	mov	r0,#_column
      002144 86 0F            [24]  649 	mov	ar7,@r0
      002146 53 0F 07         [24]  650 	anl	ar7,#0x07
                                    651 ;	disp.c:168: GPO_SETREG(DISP_COL, 0u);
      002149 78 05            [12]  652 	mov	r0,#(_gpo + 0x0005)
      00214B E4               [12]  653 	clr	a
      00214C F2               [24]  654 	movx	@r0,a
                                    655 ;	disp.c:169: GPO_SETREG(DISP_DATA, ddata[t]);
      00214D EF               [12]  656 	mov	a,r7
      00214E 24 31            [12]  657 	add	a,#_ddata
      002150 F9               [12]  658 	mov	r1,a
      002151 87 0E            [24]  659 	mov	ar6,@r1
      002153 78 04            [12]  660 	mov	r0,#(_gpo + 0x0004)
      002155 EE               [12]  661 	mov	a,r6
      002156 F2               [24]  662 	movx	@r0,a
                                    663 ;	disp.c:170: GPO_SETREG(DISP_COL, dsdcol[t]);
      002157 EF               [12]  664 	mov	a,r7
      002158 24 21            [12]  665 	add	a,#_dsdcol
      00215A F9               [12]  666 	mov	r1,a
      00215B 87 0F            [24]  667 	mov	ar7,@r1
      00215D 78 05            [12]  668 	mov	r0,#(_gpo + 0x0005)
      00215F EF               [12]  669 	mov	a,r7
      002160 F2               [24]  670 	movx	@r0,a
                                    671 ;	disp.c:171: column++;
      002161 78 39            [12]  672 	mov	r0,#_column
      002163 E6               [12]  673 	mov	a,@r0
      002164 78 39            [12]  674 	mov	r0,#_column
      002166 04               [12]  675 	inc	a
      002167 F6               [12]  676 	mov	@r0,a
                                    677 ;	disp.c:173: TR0 = 0;
                                    678 ;	assignBit
      002168 C2 8C            [12]  679 	clr	_TR0
                                    680 ;	disp.c:174: TH0 = TR0_COUNT >> 8;
      00216A 75 8C F8         [24]  681 	mov	_TH0,#0xf8
                                    682 ;	disp.c:175: TL0 = TR0_COUNT & 0xffu;
      00216D 75 8A 00         [24]  683 	mov	_TL0,#0x00
                                    684 ;	disp.c:176: TR0 = 1;
                                    685 ;	assignBit
      002170 D2 8C            [12]  686 	setb	_TR0
                                    687 ;	disp.c:178: return;
                                    688 ;	disp.c:179: }
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
                                    703 ;c                         Allocated to registers r3 r4 
                                    704 ;__3932160008              Allocated to registers 
                                    705 ;s                         Allocated to registers r6 r4 r3 
                                    706 ;__3932160010              Allocated to registers 
                                    707 ;s                         Allocated to registers r6 r5 r4 
                                    708 ;__1310720001              Allocated to registers 
                                    709 ;s                         Allocated to registers r6 r5 r4 
                                    710 ;__1310720003              Allocated to registers 
                                    711 ;s                         Allocated to registers r6 r5 r4 
                                    712 ;__1310720005              Allocated to registers 
                                    713 ;s                         Allocated to registers r6 r5 r4 
                                    714 ;__1310720005              Allocated to registers 
                                    715 ;s                         Allocated to registers r6 r5 r4 
                                    716 ;sloc0                     Allocated to stack - _bp +4
                                    717 ;sloc1                     Allocated to stack - _bp +48
                                    718 ;sloc2                     Allocated to stack - _bp +49
                                    719 ;------------------------------------------------------------
                                    720 ;	disp.c:203: int scroll(uint8_t *msg) {
                                    721 ;	-----------------------------------------
                                    722 ;	 function scroll
                                    723 ;	-----------------------------------------
      002177                        724 _scroll:
                           000007   725 	ar7 = 0x07
                           000006   726 	ar6 = 0x06
                           000005   727 	ar5 = 0x05
                           000004   728 	ar4 = 0x04
                           000003   729 	ar3 = 0x03
                           000002   730 	ar2 = 0x02
                           000001   731 	ar1 = 0x01
                           000000   732 	ar0 = 0x00
      002177 C0 10            [24]  733 	push	_bp
      002179 85 81 10         [24]  734 	mov	_bp,sp
      00217C C0 82            [24]  735 	push	dpl
      00217E C0 83            [24]  736 	push	dph
      002180 C0 F0            [24]  737 	push	b
      002182 E5 81            [12]  738 	mov	a,sp
      002184 24 05            [12]  739 	add	a,#0x05
      002186 F5 81            [12]  740 	mov	sp,a
                                    741 ;	disp.c:209: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002188 E5 10            [12]  742 	mov	a,_bp
      00218A 24 06            [12]  743 	add	a,#0x06
      00218C F8               [12]  744 	mov	r0,a
      00218D 76 00            [12]  745 	mov	@r0,#0x00
      00218F E5 10            [12]  746 	mov	a,_bp
      002191 24 07            [12]  747 	add	a,#0x07
      002193 F8               [12]  748 	mov	r0,a
      002194 E4               [12]  749 	clr	a
      002195 F6               [12]  750 	mov	@r0,a
      002196 08               [12]  751 	inc	r0
      002197 F6               [12]  752 	mov	@r0,a
      002198                        753 00173$:
                                    754 ;	disp.c:210: if (!bit) {
      002198 E5 10            [12]  755 	mov	a,_bp
      00219A 24 06            [12]  756 	add	a,#0x06
      00219C F8               [12]  757 	mov	r0,a
      00219D E6               [12]  758 	mov	a,@r0
      00219E 70 5F            [24]  759 	jnz	00105$
                                    760 ;	disp.c:211: symbol = msg[i];
      0021A0 A8 10            [24]  761 	mov	r0,_bp
      0021A2 08               [12]  762 	inc	r0
      0021A3 E5 10            [12]  763 	mov	a,_bp
      0021A5 24 07            [12]  764 	add	a,#0x07
      0021A7 F9               [12]  765 	mov	r1,a
      0021A8 E7               [12]  766 	mov	a,@r1
      0021A9 26               [12]  767 	add	a,@r0
      0021AA FA               [12]  768 	mov	r2,a
      0021AB 09               [12]  769 	inc	r1
      0021AC E7               [12]  770 	mov	a,@r1
      0021AD 08               [12]  771 	inc	r0
      0021AE 36               [12]  772 	addc	a,@r0
      0021AF FB               [12]  773 	mov	r3,a
      0021B0 08               [12]  774 	inc	r0
      0021B1 86 04            [24]  775 	mov	ar4,@r0
      0021B3 8A 82            [24]  776 	mov	dpl,r2
      0021B5 8B 83            [24]  777 	mov	dph,r3
      0021B7 8C F0            [24]  778 	mov	b,r4
      0021B9 12 2A 21         [24]  779 	lcall	__gptrget
      0021BC FA               [12]  780 	mov	r2,a
      0021BD E5 10            [12]  781 	mov	a,_bp
      0021BF 24 04            [12]  782 	add	a,#0x04
      0021C1 F8               [12]  783 	mov	r0,a
      0021C2 A6 02            [24]  784 	mov	@r0,ar2
                                    785 ;	disp.c:212: if (!symbol) {
      0021C4 EA               [12]  786 	mov	a,r2
      0021C5 70 25            [24]  787 	jnz	00102$
                                    788 ;	disp.c:213: i = 0u;
      0021C7 E5 10            [12]  789 	mov	a,_bp
      0021C9 24 07            [12]  790 	add	a,#0x07
      0021CB F8               [12]  791 	mov	r0,a
      0021CC E4               [12]  792 	clr	a
      0021CD F6               [12]  793 	mov	@r0,a
      0021CE 08               [12]  794 	inc	r0
      0021CF F6               [12]  795 	mov	@r0,a
                                    796 ;	disp.c:214: symbol = msg[i];
      0021D0 A8 10            [24]  797 	mov	r0,_bp
      0021D2 08               [12]  798 	inc	r0
      0021D3 86 82            [24]  799 	mov	dpl,@r0
      0021D5 08               [12]  800 	inc	r0
      0021D6 86 83            [24]  801 	mov	dph,@r0
      0021D8 08               [12]  802 	inc	r0
      0021D9 86 F0            [24]  803 	mov	b,@r0
      0021DB E5 10            [12]  804 	mov	a,_bp
      0021DD 24 04            [12]  805 	add	a,#0x04
      0021DF F9               [12]  806 	mov	r1,a
      0021E0 12 2A 21         [24]  807 	lcall	__gptrget
      0021E3 F7               [12]  808 	mov	@r1,a
                                    809 ;	disp.c:215: OE |= 0x80u;
      0021E4 78 3A            [12]  810 	mov	r0,#_OE
      0021E6 E6               [12]  811 	mov	a,@r0
      0021E7 44 80            [12]  812 	orl	a,#0x80
      0021E9 F6               [12]  813 	mov	@r0,a
      0021EA 80 06            [24]  814 	sjmp	00103$
      0021EC                        815 00102$:
                                    816 ;	disp.c:216: } else OE |= 0x40u;
      0021EC 78 3A            [12]  817 	mov	r0,#_OE
      0021EE E6               [12]  818 	mov	a,@r0
      0021EF 44 40            [12]  819 	orl	a,#0x40
      0021F1 F6               [12]  820 	mov	@r0,a
      0021F2                        821 00103$:
                                    822 ;	disp.c:217: i++;
      0021F2 E5 10            [12]  823 	mov	a,_bp
      0021F4 24 07            [12]  824 	add	a,#0x07
      0021F6 F8               [12]  825 	mov	r0,a
      0021F7 06               [12]  826 	inc	@r0
      0021F8 B6 00 02         [24]  827 	cjne	@r0,#0x00,00328$
      0021FB 08               [12]  828 	inc	r0
      0021FC 06               [12]  829 	inc	@r0
      0021FD                        830 00328$:
      0021FD 80 06            [24]  831 	sjmp	00107$
      0021FF                        832 00105$:
                                    833 ;	disp.c:218: } else OE &= ~(0x80u | 0x40u);
      0021FF 78 3A            [12]  834 	mov	r0,#_OE
      002201 E6               [12]  835 	mov	a,@r0
      002202 54 3F            [12]  836 	anl	a,#0x3f
      002204 F6               [12]  837 	mov	@r0,a
                                    838 ;	disp.c:219: GPO_SETOE(OE);
      002205                        839 00107$:
      002205 78 06            [12]  840 	mov	r0,#(_gpo + 0x0006)
      002207 79 3A            [12]  841 	mov	r1,#_OE
      002209 E7               [12]  842 	mov	a,@r1
      00220A F2               [24]  843 	movx	@r0,a
                                    844 ;	disp.c:221: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      00220B E5 10            [12]  845 	mov	a,_bp
      00220D 24 06            [12]  846 	add	a,#0x06
      00220F F8               [12]  847 	mov	r0,a
      002210 E6               [12]  848 	mov	a,@r0
      002211 24 29            [12]  849 	add	a,#_sddcol
      002213 F9               [12]  850 	mov	r1,a
      002214 E7               [12]  851 	mov	a,@r1
      002215 FB               [12]  852 	mov	r3,a
      002216 54 C0            [12]  853 	anl	a,#0xc0
      002218 60 02            [24]  854 	jz	00330$
      00221A 80 74            [24]  855 	sjmp	00113$
      00221C                        856 00330$:
                                    857 ;	disp.c:182: TR1 = 0;
                                    858 ;	assignBit
      00221C C2 8E            [12]  859 	clr	_TR1
                                    860 ;	disp.c:183: TH1 = TR1_COUNT_0 >> 8;
      00221E 75 8D 00         [24]  861 	mov	_TH1,#0x00
                                    862 ;	disp.c:184: TL1 = TR1_COUNT_0 & 0xffu;	
      002221 75 8B 00         [24]  863 	mov	_TL1,#0x00
                                    864 ;	disp.c:185: TF1 = 0;
                                    865 ;	assignBit
      002224 C2 8F            [12]  866 	clr	_TF1
                                    867 ;	disp.c:186: TR1 = 1;
                                    868 ;	assignBit
      002226 D2 8E            [12]  869 	setb	_TR1
                                    870 ;	disp.c:187: while (!TF1);
      002228                        871 00130$:
                                    872 ;	disp.c:188: TF1 = 0;
                                    873 ;	assignBit
      002228 10 8F 02         [24]  874 	jbc	_TF1,00331$
      00222B 80 FB            [24]  875 	sjmp	00130$
      00222D                        876 00331$:
                                    877 ;	disp.c:190: TR1 = 0;
                                    878 ;	assignBit
      00222D C2 8E            [12]  879 	clr	_TR1
                                    880 ;	disp.c:191: TH1 = TR1_COUNT_1 >> 8;
      00222F 75 8D C0         [24]  881 	mov	_TH1,#0xc0
                                    882 ;	disp.c:192: TL1 = TR1_COUNT_1 & 0xffu;	
      002232 75 8B 00         [24]  883 	mov	_TL1,#0x00
                                    884 ;	disp.c:193: TF1 = 0;
                                    885 ;	assignBit
      002235 C2 8F            [12]  886 	clr	_TF1
                                    887 ;	disp.c:194: TR1 = 1;
                                    888 ;	assignBit
      002237 D2 8E            [12]  889 	setb	_TR1
                                    890 ;	disp.c:195: while (!TF1);
      002239                        891 00133$:
                                    892 ;	disp.c:196: TF1 = 0;
                                    893 ;	assignBit
      002239 10 8F 02         [24]  894 	jbc	_TF1,00332$
      00223C 80 FB            [24]  895 	sjmp	00133$
      00223E                        896 00332$:
                                    897 ;	disp.c:198: TR1 = 0;
                                    898 ;	assignBit
      00223E C2 8E            [12]  899 	clr	_TR1
                                    900 ;	disp.c:224: for (j = 0u; j < 8u; j++)
      002240 E5 10            [12]  901 	mov	a,_bp
      002242 24 04            [12]  902 	add	a,#0x04
      002244 F8               [12]  903 	mov	r0,a
      002245 E6               [12]  904 	mov	a,@r0
      002246 75 F0 08         [24]  905 	mov	b,#0x08
      002249 A4               [48]  906 	mul	ab
      00224A 24 01            [12]  907 	add	a,#__ft_font6x8
      00224C FA               [12]  908 	mov	r2,a
      00224D 74 81            [12]  909 	mov	a,#(__ft_font6x8 >> 8)
      00224F 35 F0            [12]  910 	addc	a,b
      002251 FB               [12]  911 	mov	r3,a
      002252 E5 10            [12]  912 	mov	a,_bp
      002254 24 06            [12]  913 	add	a,#0x06
      002256 F8               [12]  914 	mov	r0,a
      002257 74 07            [12]  915 	mov	a,#0x07
      002259 C3               [12]  916 	clr	c
      00225A 96               [12]  917 	subb	a,@r0
      00225B FD               [12]  918 	mov	r5,a
      00225C 7C 00            [12]  919 	mov	r4,#0x00
      00225E                        920 00153$:
                                    921 ;	disp.c:225: ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00225E EC               [12]  922 	mov	a,r4
      00225F 24 31            [12]  923 	add	a,#_ddata
      002261 F9               [12]  924 	mov	r1,a
      002262 EC               [12]  925 	mov	a,r4
      002263 2A               [12]  926 	add	a,r2
      002264 F5 82            [12]  927 	mov	dpl,a
      002266 E4               [12]  928 	clr	a
      002267 3B               [12]  929 	addc	a,r3
      002268 F5 83            [12]  930 	mov	dph,a
      00226A E0               [24]  931 	movx	a,@dptr
      00226B FF               [12]  932 	mov	r7,a
      00226C 78 3B            [12]  933 	mov	r0,#_inv
      00226E E6               [12]  934 	mov	a,@r0
      00226F 62 07            [12]  935 	xrl	ar7,a
      002271 8D F0            [24]  936 	mov	b,r5
      002273 05 F0            [12]  937 	inc	b
      002275 EF               [12]  938 	mov	a,r7
      002276 80 02            [24]  939 	sjmp	00335$
      002278                        940 00333$:
      002278 25 E0            [12]  941 	add	a,acc
      00227A                        942 00335$:
      00227A D5 F0 FB         [24]  943 	djnz	b,00333$
      00227D 54 80            [12]  944 	anl	a,#0x80
      00227F FF               [12]  945 	mov	r7,a
      002280 EC               [12]  946 	mov	a,r4
      002281 24 31            [12]  947 	add	a,#_ddata
      002283 F8               [12]  948 	mov	r0,a
      002284 E6               [12]  949 	mov	a,@r0
      002285 C3               [12]  950 	clr	c
      002286 13               [12]  951 	rrc	a
      002287 FE               [12]  952 	mov	r6,a
      002288 4F               [12]  953 	orl	a,r7
      002289 F7               [12]  954 	mov	@r1,a
                                    955 ;	disp.c:224: for (j = 0u; j < 8u; j++)
      00228A 0C               [12]  956 	inc	r4
      00228B BC 08 00         [24]  957 	cjne	r4,#0x08,00336$
      00228E                        958 00336$:
      00228E 40 CE            [24]  959 	jc	00153$
                                    960 ;	disp.c:227: skip_shift:
      002290                        961 00113$:
                                    962 ;	disp.c:228: if ((c = getchar_poll()) >= 0) {
      002290 12 29 29         [24]  963 	lcall	_getchar_poll
      002293 AB 82            [24]  964 	mov	r3,dpl
      002295 AC 83            [24]  965 	mov	r4,dph
      002297 8B 07            [24]  966 	mov	ar7,r3
      002299 EC               [12]  967 	mov	a,r4
      00229A FE               [12]  968 	mov	r6,a
      00229B 30 E7 03         [24]  969 	jnb	acc.7,00338$
      00229E 02 24 1F         [24]  970 	ljmp	00174$
      0022A1                        971 00338$:
                                    972 ;	disp.c:229: c = toupper(c);
      0022A1 8F 82            [24]  973 	mov	dpl,r7
      0022A3 8E 83            [24]  974 	mov	dph,r6
      0022A5 12 29 43         [24]  975 	lcall	_toupper
      0022A8 AB 82            [24]  976 	mov	r3,dpl
      0022AA AC 83            [24]  977 	mov	r4,dph
                                    978 ;	disp.c:230: if (c == (int)' ') {
      0022AC BB 20 65         [24]  979 	cjne	r3,#0x20,00125$
      0022AF BC 00 62         [24]  980 	cjne	r4,#0x00,00125$
                                    981 ;	disp.c:231: printstr("PAUSE\r\n");
      0022B2 7E 65            [12]  982 	mov	r6,#___str_2
      0022B4 7C 2A            [12]  983 	mov	r4,#(___str_2 >> 8)
      0022B6 7B 80            [12]  984 	mov	r3,#0x80
                                    985 ;	disp.c:14: return;
      0022B8                        986 00156$:
                                    987 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0022B8 8E 82            [24]  988 	mov	dpl,r6
      0022BA 8C 83            [24]  989 	mov	dph,r4
      0022BC 8B F0            [24]  990 	mov	b,r3
      0022BE 12 2A 21         [24]  991 	lcall	__gptrget
      0022C1 FD               [12]  992 	mov	r5,a
      0022C2 60 1C            [24]  993 	jz	00138$
      0022C4 7F 00            [12]  994 	mov	r7,#0x00
      0022C6 8D 82            [24]  995 	mov	dpl,r5
      0022C8 8F 83            [24]  996 	mov	dph,r7
      0022CA C0 06            [24]  997 	push	ar6
      0022CC C0 04            [24]  998 	push	ar4
      0022CE C0 03            [24]  999 	push	ar3
      0022D0 12 29 12         [24] 1000 	lcall	_putchar
      0022D3 D0 03            [24] 1001 	pop	ar3
      0022D5 D0 04            [24] 1002 	pop	ar4
      0022D7 D0 06            [24] 1003 	pop	ar6
      0022D9 0E               [12] 1004 	inc	r6
                                   1005 ;	disp.c:231: printstr("PAUSE\r\n");
      0022DA BE 00 DB         [24] 1006 	cjne	r6,#0x00,00156$
      0022DD 0C               [12] 1007 	inc	r4
      0022DE 80 D8            [24] 1008 	sjmp	00156$
      0022E0                       1009 00138$:
                                   1010 ;	disp.c:232: (void)getchar();
      0022E0 12 29 1C         [24] 1011 	lcall	_getchar
                                   1012 ;	disp.c:233: printstr("RESUME\r\n");
      0022E3 7E 6D            [12] 1013 	mov	r6,#___str_3
      0022E5 7D 2A            [12] 1014 	mov	r5,#(___str_3 >> 8)
      0022E7 7C 80            [12] 1015 	mov	r4,#0x80
                                   1016 ;	disp.c:14: return;
      0022E9                       1017 00159$:
                                   1018 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0022E9 8E 82            [24] 1019 	mov	dpl,r6
      0022EB 8D 83            [24] 1020 	mov	dph,r5
      0022ED 8C F0            [24] 1021 	mov	b,r4
      0022EF 12 2A 21         [24] 1022 	lcall	__gptrget
      0022F2 FA               [12] 1023 	mov	r2,a
      0022F3 70 03            [24] 1024 	jnz	00343$
      0022F5 02 24 1F         [24] 1025 	ljmp	00174$
      0022F8                       1026 00343$:
      0022F8 7F 00            [12] 1027 	mov	r7,#0x00
      0022FA 8A 82            [24] 1028 	mov	dpl,r2
      0022FC 8F 83            [24] 1029 	mov	dph,r7
      0022FE C0 06            [24] 1030 	push	ar6
      002300 C0 05            [24] 1031 	push	ar5
      002302 C0 04            [24] 1032 	push	ar4
      002304 12 29 12         [24] 1033 	lcall	_putchar
      002307 D0 04            [24] 1034 	pop	ar4
      002309 D0 05            [24] 1035 	pop	ar5
      00230B D0 06            [24] 1036 	pop	ar6
      00230D 0E               [12] 1037 	inc	r6
                                   1038 ;	disp.c:233: printstr("RESUME\r\n");
      00230E BE 00 D8         [24] 1039 	cjne	r6,#0x00,00159$
      002311 0D               [12] 1040 	inc	r5
      002312 80 D5            [24] 1041 	sjmp	00159$
      002314                       1042 00125$:
                                   1043 ;	disp.c:234: } else if (c == (int)'P') {
      002314 BB 50 05         [24] 1044 	cjne	r3,#0x50,00345$
      002317 BC 00 02         [24] 1045 	cjne	r4,#0x00,00345$
      00231A 80 03            [24] 1046 	sjmp	00346$
      00231C                       1047 00345$:
      00231C 02 23 B2         [24] 1048 	ljmp	00122$
      00231F                       1049 00346$:
                                   1050 ;	disp.c:110: printstr("MSG \"");
      00231F 7E 5C            [12] 1051 	mov	r6,#___str_0
      002321 7D 2A            [12] 1052 	mov	r5,#(___str_0 >> 8)
      002323 7C 80            [12] 1053 	mov	r4,#0x80
                                   1054 ;	disp.c:14: return;
      002325                       1055 00162$:
                                   1056 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002325 8E 82            [24] 1057 	mov	dpl,r6
      002327 8D 83            [24] 1058 	mov	dph,r5
      002329 8C F0            [24] 1059 	mov	b,r4
      00232B 12 2A 21         [24] 1060 	lcall	__gptrget
      00232E FA               [12] 1061 	mov	r2,a
      00232F 60 1C            [24] 1062 	jz	00142$
      002331 7F 00            [12] 1063 	mov	r7,#0x00
      002333 8A 82            [24] 1064 	mov	dpl,r2
      002335 8F 83            [24] 1065 	mov	dph,r7
      002337 C0 06            [24] 1066 	push	ar6
      002339 C0 05            [24] 1067 	push	ar5
      00233B C0 04            [24] 1068 	push	ar4
      00233D 12 29 12         [24] 1069 	lcall	_putchar
      002340 D0 04            [24] 1070 	pop	ar4
      002342 D0 05            [24] 1071 	pop	ar5
      002344 D0 06            [24] 1072 	pop	ar6
      002346 0E               [12] 1073 	inc	r6
                                   1074 ;	disp.c:110: printstr("MSG \"");
      002347 BE 00 DB         [24] 1075 	cjne	r6,#0x00,00162$
      00234A 0D               [12] 1076 	inc	r5
      00234B 80 D8            [24] 1077 	sjmp	00162$
      00234D                       1078 00142$:
                                   1079 ;	disp.c:111: printstr((char *)buf);
      00234D 7E 00            [12] 1080 	mov	r6,#_buf
      00234F 7D 80            [12] 1081 	mov	r5,#(_buf >> 8)
      002351 7C 00            [12] 1082 	mov	r4,#0x00
                                   1083 ;	disp.c:14: return;
      002353                       1084 00165$:
                                   1085 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002353 8E 82            [24] 1086 	mov	dpl,r6
      002355 8D 83            [24] 1087 	mov	dph,r5
      002357 8C F0            [24] 1088 	mov	b,r4
      002359 12 2A 21         [24] 1089 	lcall	__gptrget
      00235C FA               [12] 1090 	mov	r2,a
      00235D 60 1C            [24] 1091 	jz	00144$
      00235F 7F 00            [12] 1092 	mov	r7,#0x00
      002361 8A 82            [24] 1093 	mov	dpl,r2
      002363 8F 83            [24] 1094 	mov	dph,r7
      002365 C0 06            [24] 1095 	push	ar6
      002367 C0 05            [24] 1096 	push	ar5
      002369 C0 04            [24] 1097 	push	ar4
      00236B 12 29 12         [24] 1098 	lcall	_putchar
      00236E D0 04            [24] 1099 	pop	ar4
      002370 D0 05            [24] 1100 	pop	ar5
      002372 D0 06            [24] 1101 	pop	ar6
      002374 0E               [12] 1102 	inc	r6
                                   1103 ;	disp.c:111: printstr((char *)buf);
      002375 BE 00 DB         [24] 1104 	cjne	r6,#0x00,00165$
      002378 0D               [12] 1105 	inc	r5
      002379 80 D8            [24] 1106 	sjmp	00165$
      00237B                       1107 00144$:
                                   1108 ;	disp.c:112: putchar((int)'"');
      00237B 90 00 22         [24] 1109 	mov	dptr,#0x0022
      00237E 12 29 12         [24] 1110 	lcall	_putchar
                                   1111 ;	disp.c:118: printstr("\r\n");
      002381 7E 62            [12] 1112 	mov	r6,#___str_1
      002383 7D 2A            [12] 1113 	mov	r5,#(___str_1 >> 8)
      002385 7C 80            [12] 1114 	mov	r4,#0x80
                                   1115 ;	disp.c:14: return;
      002387                       1116 00168$:
                                   1117 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002387 8E 82            [24] 1118 	mov	dpl,r6
      002389 8D 83            [24] 1119 	mov	dph,r5
      00238B 8C F0            [24] 1120 	mov	b,r4
      00238D 12 2A 21         [24] 1121 	lcall	__gptrget
      002390 FA               [12] 1122 	mov	r2,a
      002391 70 03            [24] 1123 	jnz	00351$
      002393 02 24 1F         [24] 1124 	ljmp	00174$
      002396                       1125 00351$:
      002396 7F 00            [12] 1126 	mov	r7,#0x00
      002398 8A 82            [24] 1127 	mov	dpl,r2
      00239A 8F 83            [24] 1128 	mov	dph,r7
      00239C C0 06            [24] 1129 	push	ar6
      00239E C0 05            [24] 1130 	push	ar5
      0023A0 C0 04            [24] 1131 	push	ar4
      0023A2 12 29 12         [24] 1132 	lcall	_putchar
      0023A5 D0 04            [24] 1133 	pop	ar4
      0023A7 D0 05            [24] 1134 	pop	ar5
      0023A9 D0 06            [24] 1135 	pop	ar6
      0023AB 0E               [12] 1136 	inc	r6
                                   1137 ;	disp.c:236: pnl();
      0023AC BE 00 D8         [24] 1138 	cjne	r6,#0x00,00168$
      0023AF 0D               [12] 1139 	inc	r5
      0023B0 80 D5            [24] 1140 	sjmp	00168$
      0023B2                       1141 00122$:
                                   1142 ;	disp.c:237: } else if (c == (int)'I') {
      0023B2 BB 49 52         [24] 1143 	cjne	r3,#0x49,00119$
      0023B5 BC 00 4F         [24] 1144 	cjne	r4,#0x00,00119$
                                   1145 ;	disp.c:238: inv = ~inv;
      0023B8 78 3B            [12] 1146 	mov	r0,#_inv
      0023BA E6               [12] 1147 	mov	a,@r0
      0023BB F4               [12] 1148 	cpl	a
      0023BC F6               [12] 1149 	mov	@r0,a
                                   1150 ;	disp.c:103: putchar((int)'I');
      0023BD 90 00 49         [24] 1151 	mov	dptr,#0x0049
      0023C0 12 29 12         [24] 1152 	lcall	_putchar
                                   1153 ;	disp.c:104: putchar(inv ? (int)'1' : (int)'0');
      0023C3 78 3B            [12] 1154 	mov	r0,#_inv
      0023C5 E6               [12] 1155 	mov	a,@r0
      0023C6 60 06            [24] 1156 	jz	00177$
      0023C8 7E 31            [12] 1157 	mov	r6,#0x31
      0023CA 7F 00            [12] 1158 	mov	r7,#0x00
      0023CC 80 04            [24] 1159 	sjmp	00178$
      0023CE                       1160 00177$:
      0023CE 7E 30            [12] 1161 	mov	r6,#0x30
      0023D0 7F 00            [12] 1162 	mov	r7,#0x00
      0023D2                       1163 00178$:
      0023D2 8E 82            [24] 1164 	mov	dpl,r6
      0023D4 8F 83            [24] 1165 	mov	dph,r7
      0023D6 12 29 12         [24] 1166 	lcall	_putchar
                                   1167 ;	disp.c:118: printstr("\r\n");
      0023D9 7E 62            [12] 1168 	mov	r6,#___str_1
      0023DB 7D 2A            [12] 1169 	mov	r5,#(___str_1 >> 8)
      0023DD 7C 80            [12] 1170 	mov	r4,#0x80
                                   1171 ;	disp.c:14: return;
      0023DF                       1172 00171$:
                                   1173 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0023DF 8E 82            [24] 1174 	mov	dpl,r6
      0023E1 8D 83            [24] 1175 	mov	dph,r5
      0023E3 8C F0            [24] 1176 	mov	b,r4
      0023E5 12 2A 21         [24] 1177 	lcall	__gptrget
      0023E8 FA               [12] 1178 	mov	r2,a
      0023E9 60 34            [24] 1179 	jz	00174$
      0023EB 7F 00            [12] 1180 	mov	r7,#0x00
      0023ED 8A 82            [24] 1181 	mov	dpl,r2
      0023EF 8F 83            [24] 1182 	mov	dph,r7
      0023F1 C0 06            [24] 1183 	push	ar6
      0023F3 C0 05            [24] 1184 	push	ar5
      0023F5 C0 04            [24] 1185 	push	ar4
      0023F7 12 29 12         [24] 1186 	lcall	_putchar
      0023FA D0 04            [24] 1187 	pop	ar4
      0023FC D0 05            [24] 1188 	pop	ar5
      0023FE D0 06            [24] 1189 	pop	ar6
      002400 0E               [12] 1190 	inc	r6
                                   1191 ;	disp.c:240: pnl();
      002401 BE 00 DB         [24] 1192 	cjne	r6,#0x00,00171$
      002404 0D               [12] 1193 	inc	r5
      002405 80 D8            [24] 1194 	sjmp	00171$
      002407                       1195 00119$:
                                   1196 ;	disp.c:241: } else if ((c == (int)'T') || (c == (int)'R') || (c == (int)'L')) break;
      002407 BB 54 05         [24] 1197 	cjne	r3,#0x54,00358$
      00240A BC 00 02         [24] 1198 	cjne	r4,#0x00,00358$
      00240D 80 24            [24] 1199 	sjmp	00129$
      00240F                       1200 00358$:
      00240F BB 52 05         [24] 1201 	cjne	r3,#0x52,00359$
      002412 BC 00 02         [24] 1202 	cjne	r4,#0x00,00359$
      002415 80 1C            [24] 1203 	sjmp	00129$
      002417                       1204 00359$:
      002417 BB 4C 05         [24] 1205 	cjne	r3,#0x4c,00360$
      00241A BC 00 02         [24] 1206 	cjne	r4,#0x00,00360$
      00241D 80 14            [24] 1207 	sjmp	00129$
      00241F                       1208 00360$:
      00241F                       1209 00174$:
                                   1210 ;	disp.c:209: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      00241F E5 10            [12] 1211 	mov	a,_bp
      002421 24 06            [12] 1212 	add	a,#0x06
      002423 F8               [12] 1213 	mov	r0,a
      002424 E6               [12] 1214 	mov	a,@r0
      002425 04               [12] 1215 	inc	a
      002426 FF               [12] 1216 	mov	r7,a
      002427 E5 10            [12] 1217 	mov	a,_bp
      002429 24 06            [12] 1218 	add	a,#0x06
      00242B F8               [12] 1219 	mov	r0,a
      00242C 74 07            [12] 1220 	mov	a,#0x07
      00242E 5F               [12] 1221 	anl	a,r7
      00242F F6               [12] 1222 	mov	@r0,a
      002430 02 21 98         [24] 1223 	ljmp	00173$
      002433                       1224 00129$:
                                   1225 ;	disp.c:245: return c;
      002433 8B 82            [24] 1226 	mov	dpl,r3
      002435 8C 83            [24] 1227 	mov	dph,r4
                                   1228 ;	disp.c:246: }
      002437 85 10 81         [24] 1229 	mov	sp,_bp
      00243A D0 10            [24] 1230 	pop	_bp
      00243C 22               [24] 1231 	ret
                                   1232 ;------------------------------------------------------------
                                   1233 ;Allocation info for local variables in function 'main'
                                   1234 ;------------------------------------------------------------
                                   1235 ;j                         Allocated to stack - _bp +1
                                   1236 ;c                         Allocated to registers r7 r6 
                                   1237 ;__1310720016              Allocated to registers 
                                   1238 ;s                         Allocated to registers r5 r6 r7 
                                   1239 ;__1310720018              Allocated to registers 
                                   1240 ;s                         Allocated to registers r5 r6 r7 
                                   1241 ;__1310720001              Allocated to registers 
                                   1242 ;s                         Allocated to registers r5 r6 r7 
                                   1243 ;__1310720003              Allocated to registers 
                                   1244 ;s                         Allocated to registers r5 r6 r7 
                                   1245 ;__1310720005              Allocated to registers 
                                   1246 ;s                         Allocated to registers r5 r6 r7 
                                   1247 ;__1966080022              Allocated to registers 
                                   1248 ;s                         Allocated to registers r5 r6 r7 
                                   1249 ;__1966080025              Allocated to registers 
                                   1250 ;s                         Allocated to registers r5 r6 r7 
                                   1251 ;__1310720005              Allocated to registers 
                                   1252 ;s                         Allocated to registers r5 r6 r7 
                                   1253 ;__1310720001              Allocated to registers 
                                   1254 ;s                         Allocated to registers r7 r6 r4 
                                   1255 ;__1310720003              Allocated to registers 
                                   1256 ;s                         Allocated to registers r7 r6 r4 
                                   1257 ;__1310720005              Allocated to registers 
                                   1258 ;s                         Allocated to registers r7 r6 r4 
                                   1259 ;__1310720005              Allocated to registers 
                                   1260 ;s                         Allocated to registers r7 r6 r4 
                                   1261 ;__3276800032              Allocated to registers 
                                   1262 ;s                         Allocated to registers r7 r6 r4 
                                   1263 ;__1310720005              Allocated to registers 
                                   1264 ;s                         Allocated to registers r7 r6 r4 
                                   1265 ;__1310720001              Allocated to registers 
                                   1266 ;s                         Allocated to registers r7 r6 r4 
                                   1267 ;__1310720003              Allocated to registers 
                                   1268 ;s                         Allocated to registers r7 r6 r4 
                                   1269 ;__1310720005              Allocated to registers 
                                   1270 ;s                         Allocated to registers r7 r6 r4 
                                   1271 ;__1310720037              Allocated to registers 
                                   1272 ;s                         Allocated to registers r5 r6 r7 
                                   1273 ;sloc0                     Allocated to stack - _bp +113
                                   1274 ;------------------------------------------------------------
                                   1275 ;	disp.c:248: void main(void) {
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function main
                                   1278 ;	-----------------------------------------
      00243D                       1279 _main:
      00243D C0 10            [24] 1280 	push	_bp
      00243F 85 81 10         [24] 1281 	mov	_bp,sp
      002442 05 81            [12] 1282 	inc	sp
      002444 05 81            [12] 1283 	inc	sp
                                   1284 ;	disp.c:252: gpo_init();
      002446 12 20 AD         [24] 1285 	lcall	_gpo_init
                                   1286 ;	disp.c:253: gpo_clear();
      002449 12 20 CE         [24] 1287 	lcall	_gpo_clear
                                   1288 ;	disp.c:254: init_disp();
      00244C 12 21 0A         [24] 1289 	lcall	_init_disp
                                   1290 ;	disp.c:255: init_timer0();
      00244F 12 20 F2         [24] 1291 	lcall	_init_timer0
                                   1292 ;	disp.c:256: init_timer1();
      002452 12 20 FE         [24] 1293 	lcall	_init_timer1
                                   1294 ;	disp.c:257: init_intr();
      002455 12 20 E7         [24] 1295 	lcall	_init_intr
                                   1296 ;	disp.c:258: TR0 = 1;
                                   1297 ;	assignBit
      002458 D2 8C            [12] 1298 	setb	_TR0
                                   1299 ;	disp.c:260: reset:
      00245A                       1300 00101$:
                                   1301 ;	disp.c:261: init_disp();
      00245A 12 21 0A         [24] 1302 	lcall	_init_disp
                                   1303 ;	disp.c:262: printstr("RESET\r\n");
      00245D 7D 76            [12] 1304 	mov	r5,#___str_4
      00245F 7E 2A            [12] 1305 	mov	r6,#(___str_4 >> 8)
      002461 7F 80            [12] 1306 	mov	r7,#0x80
                                   1307 ;	disp.c:14: return;
      002463                       1308 00179$:
                                   1309 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002463 8D 82            [24] 1310 	mov	dpl,r5
      002465 8E 83            [24] 1311 	mov	dph,r6
      002467 8F F0            [24] 1312 	mov	b,r7
      002469 12 2A 21         [24] 1313 	lcall	__gptrget
      00246C FC               [12] 1314 	mov	r4,a
      00246D 60 1C            [24] 1315 	jz	00132$
      00246F 7B 00            [12] 1316 	mov	r3,#0x00
      002471 8C 82            [24] 1317 	mov	dpl,r4
      002473 8B 83            [24] 1318 	mov	dph,r3
      002475 C0 07            [24] 1319 	push	ar7
      002477 C0 06            [24] 1320 	push	ar6
      002479 C0 05            [24] 1321 	push	ar5
      00247B 12 29 12         [24] 1322 	lcall	_putchar
      00247E D0 05            [24] 1323 	pop	ar5
      002480 D0 06            [24] 1324 	pop	ar6
      002482 D0 07            [24] 1325 	pop	ar7
      002484 0D               [12] 1326 	inc	r5
                                   1327 ;	disp.c:262: printstr("RESET\r\n");
      002485 BD 00 DB         [24] 1328 	cjne	r5,#0x00,00179$
      002488 0E               [12] 1329 	inc	r6
      002489 80 D8            [24] 1330 	sjmp	00179$
      00248B                       1331 00132$:
                                   1332 ;	disp.c:263: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      00248B E4               [12] 1333 	clr	a
      00248C C0 E0            [24] 1334 	push	acc
      00248E 04               [12] 1335 	inc	a
      00248F C0 E0            [24] 1336 	push	acc
      002491 90 89 01         [24] 1337 	mov	dptr,#_initial
      002494 E0               [24] 1338 	movx	a,@dptr
      002495 C0 E0            [24] 1339 	push	acc
      002497 A3               [24] 1340 	inc	dptr
      002498 E0               [24] 1341 	movx	a,@dptr
      002499 C0 E0            [24] 1342 	push	acc
      00249B A3               [24] 1343 	inc	dptr
      00249C E0               [24] 1344 	movx	a,@dptr
      00249D C0 E0            [24] 1345 	push	acc
      00249F 90 80 00         [24] 1346 	mov	dptr,#_buf
      0024A2 75 F0 00         [24] 1347 	mov	b,#0x00
      0024A5 12 29 6A         [24] 1348 	lcall	_strncpy
      0024A8 E5 81            [12] 1349 	mov	a,sp
      0024AA 24 FB            [12] 1350 	add	a,#0xfb
      0024AC F5 81            [12] 1351 	mov	sp,a
                                   1352 ;	disp.c:264: buf[sizeof (buf) - 1u] = 0u;
      0024AE 90 81 00         [24] 1353 	mov	dptr,#(_buf + 0x0100)
      0024B1 E4               [12] 1354 	clr	a
      0024B2 F0               [24] 1355 	movx	@dptr,a
                                   1356 ;	disp.c:265: inv = 0u;
      0024B3 78 3B            [12] 1357 	mov	r0,#_inv
      0024B5 76 00            [12] 1358 	mov	@r0,#0x00
                                   1359 ;	disp.c:266: printstr("INITIAL ");
      0024B7 7D 7E            [12] 1360 	mov	r5,#___str_5
      0024B9 7E 2A            [12] 1361 	mov	r6,#(___str_5 >> 8)
      0024BB 7F 80            [12] 1362 	mov	r7,#0x80
                                   1363 ;	disp.c:14: return;
      0024BD                       1364 00182$:
                                   1365 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0024BD 8D 82            [24] 1366 	mov	dpl,r5
      0024BF 8E 83            [24] 1367 	mov	dph,r6
      0024C1 8F F0            [24] 1368 	mov	b,r7
      0024C3 12 2A 21         [24] 1369 	lcall	__gptrget
      0024C6 FC               [12] 1370 	mov	r4,a
      0024C7 60 1C            [24] 1371 	jz	00128$
      0024C9 7B 00            [12] 1372 	mov	r3,#0x00
      0024CB 8C 82            [24] 1373 	mov	dpl,r4
      0024CD 8B 83            [24] 1374 	mov	dph,r3
      0024CF C0 07            [24] 1375 	push	ar7
      0024D1 C0 06            [24] 1376 	push	ar6
      0024D3 C0 05            [24] 1377 	push	ar5
      0024D5 12 29 12         [24] 1378 	lcall	_putchar
      0024D8 D0 05            [24] 1379 	pop	ar5
      0024DA D0 06            [24] 1380 	pop	ar6
      0024DC D0 07            [24] 1381 	pop	ar7
      0024DE 0D               [12] 1382 	inc	r5
                                   1383 ;	disp.c:268: while (1) {
      0024DF BD 00 DB         [24] 1384 	cjne	r5,#0x00,00182$
      0024E2 0E               [12] 1385 	inc	r6
      0024E3 80 D8            [24] 1386 	sjmp	00182$
      0024E5                       1387 00128$:
                                   1388 ;	disp.c:110: printstr("MSG \"");
      0024E5 7D 5C            [12] 1389 	mov	r5,#___str_0
      0024E7 7E 2A            [12] 1390 	mov	r6,#(___str_0 >> 8)
      0024E9 7F 80            [12] 1391 	mov	r7,#0x80
                                   1392 ;	disp.c:14: return;
      0024EB                       1393 00185$:
                                   1394 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0024EB 8D 82            [24] 1395 	mov	dpl,r5
      0024ED 8E 83            [24] 1396 	mov	dph,r6
      0024EF 8F F0            [24] 1397 	mov	b,r7
      0024F1 12 2A 21         [24] 1398 	lcall	__gptrget
      0024F4 FC               [12] 1399 	mov	r4,a
      0024F5 60 1C            [24] 1400 	jz	00136$
      0024F7 7B 00            [12] 1401 	mov	r3,#0x00
      0024F9 8C 82            [24] 1402 	mov	dpl,r4
      0024FB 8B 83            [24] 1403 	mov	dph,r3
      0024FD C0 07            [24] 1404 	push	ar7
      0024FF C0 06            [24] 1405 	push	ar6
      002501 C0 05            [24] 1406 	push	ar5
      002503 12 29 12         [24] 1407 	lcall	_putchar
      002506 D0 05            [24] 1408 	pop	ar5
      002508 D0 06            [24] 1409 	pop	ar6
      00250A D0 07            [24] 1410 	pop	ar7
      00250C 0D               [12] 1411 	inc	r5
                                   1412 ;	disp.c:110: printstr("MSG \"");
      00250D BD 00 DB         [24] 1413 	cjne	r5,#0x00,00185$
      002510 0E               [12] 1414 	inc	r6
      002511 80 D8            [24] 1415 	sjmp	00185$
      002513                       1416 00136$:
                                   1417 ;	disp.c:111: printstr((char *)buf);
      002513 7D 00            [12] 1418 	mov	r5,#_buf
      002515 7E 80            [12] 1419 	mov	r6,#(_buf >> 8)
      002517 7F 00            [12] 1420 	mov	r7,#0x00
                                   1421 ;	disp.c:14: return;
      002519                       1422 00188$:
                                   1423 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002519 8D 82            [24] 1424 	mov	dpl,r5
      00251B 8E 83            [24] 1425 	mov	dph,r6
      00251D 8F F0            [24] 1426 	mov	b,r7
      00251F 12 2A 21         [24] 1427 	lcall	__gptrget
      002522 FC               [12] 1428 	mov	r4,a
      002523 60 1C            [24] 1429 	jz	00138$
      002525 7B 00            [12] 1430 	mov	r3,#0x00
      002527 8C 82            [24] 1431 	mov	dpl,r4
      002529 8B 83            [24] 1432 	mov	dph,r3
      00252B C0 07            [24] 1433 	push	ar7
      00252D C0 06            [24] 1434 	push	ar6
      00252F C0 05            [24] 1435 	push	ar5
      002531 12 29 12         [24] 1436 	lcall	_putchar
      002534 D0 05            [24] 1437 	pop	ar5
      002536 D0 06            [24] 1438 	pop	ar6
      002538 D0 07            [24] 1439 	pop	ar7
      00253A 0D               [12] 1440 	inc	r5
                                   1441 ;	disp.c:111: printstr((char *)buf);
      00253B BD 00 DB         [24] 1442 	cjne	r5,#0x00,00188$
      00253E 0E               [12] 1443 	inc	r6
      00253F 80 D8            [24] 1444 	sjmp	00188$
      002541                       1445 00138$:
                                   1446 ;	disp.c:112: putchar((int)'"');
      002541 90 00 22         [24] 1447 	mov	dptr,#0x0022
      002544 12 29 12         [24] 1448 	lcall	_putchar
                                   1449 ;	disp.c:118: printstr("\r\n");
      002547 7D 62            [12] 1450 	mov	r5,#___str_1
      002549 7E 2A            [12] 1451 	mov	r6,#(___str_1 >> 8)
      00254B 7F 80            [12] 1452 	mov	r7,#0x80
                                   1453 ;	disp.c:14: return;
      00254D                       1454 00191$:
                                   1455 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      00254D 8D 82            [24] 1456 	mov	dpl,r5
      00254F 8E 83            [24] 1457 	mov	dph,r6
      002551 8F F0            [24] 1458 	mov	b,r7
      002553 12 2A 21         [24] 1459 	lcall	__gptrget
      002556 FC               [12] 1460 	mov	r4,a
      002557 60 1C            [24] 1461 	jz	00141$
      002559 7B 00            [12] 1462 	mov	r3,#0x00
      00255B 8C 82            [24] 1463 	mov	dpl,r4
      00255D 8B 83            [24] 1464 	mov	dph,r3
      00255F C0 07            [24] 1465 	push	ar7
      002561 C0 06            [24] 1466 	push	ar6
      002563 C0 05            [24] 1467 	push	ar5
      002565 12 29 12         [24] 1468 	lcall	_putchar
      002568 D0 05            [24] 1469 	pop	ar5
      00256A D0 06            [24] 1470 	pop	ar6
      00256C D0 07            [24] 1471 	pop	ar7
      00256E 0D               [12] 1472 	inc	r5
                                   1473 ;	disp.c:118: printstr("\r\n");
      00256F BD 00 DB         [24] 1474 	cjne	r5,#0x00,00191$
      002572 0E               [12] 1475 	inc	r6
      002573 80 D8            [24] 1476 	sjmp	00191$
      002575                       1477 00141$:
                                   1478 ;	disp.c:271: printstr("P SP ");
      002575 7D 87            [12] 1479 	mov	r5,#___str_6
      002577 7E 2A            [12] 1480 	mov	r6,#(___str_6 >> 8)
      002579 7F 80            [12] 1481 	mov	r7,#0x80
                                   1482 ;	disp.c:14: return;
      00257B                       1483 00194$:
                                   1484 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      00257B 8D 82            [24] 1485 	mov	dpl,r5
      00257D 8E 83            [24] 1486 	mov	dph,r6
      00257F 8F F0            [24] 1487 	mov	b,r7
      002581 12 2A 21         [24] 1488 	lcall	__gptrget
      002584 FC               [12] 1489 	mov	r4,a
      002585 60 1C            [24] 1490 	jz	00144$
      002587 7B 00            [12] 1491 	mov	r3,#0x00
      002589 8C 82            [24] 1492 	mov	dpl,r4
      00258B 8B 83            [24] 1493 	mov	dph,r3
      00258D C0 07            [24] 1494 	push	ar7
      00258F C0 06            [24] 1495 	push	ar6
      002591 C0 05            [24] 1496 	push	ar5
      002593 12 29 12         [24] 1497 	lcall	_putchar
      002596 D0 05            [24] 1498 	pop	ar5
      002598 D0 06            [24] 1499 	pop	ar6
      00259A D0 07            [24] 1500 	pop	ar7
      00259C 0D               [12] 1501 	inc	r5
                                   1502 ;	disp.c:271: printstr("P SP ");
      00259D BD 00 DB         [24] 1503 	cjne	r5,#0x00,00194$
      0025A0 0E               [12] 1504 	inc	r6
      0025A1 80 D8            [24] 1505 	sjmp	00194$
      0025A3                       1506 00144$:
                                   1507 ;	disp.c:103: putchar((int)'I');
      0025A3 90 00 49         [24] 1508 	mov	dptr,#0x0049
      0025A6 12 29 12         [24] 1509 	lcall	_putchar
                                   1510 ;	disp.c:104: putchar(inv ? (int)'1' : (int)'0');
      0025A9 78 3B            [12] 1511 	mov	r0,#_inv
      0025AB E6               [12] 1512 	mov	a,@r0
      0025AC 60 06            [24] 1513 	jz	00236$
      0025AE 7E 31            [12] 1514 	mov	r6,#0x31
      0025B0 7F 00            [12] 1515 	mov	r7,#0x00
      0025B2 80 04            [24] 1516 	sjmp	00237$
      0025B4                       1517 00236$:
      0025B4 7E 30            [12] 1518 	mov	r6,#0x30
      0025B6 7F 00            [12] 1519 	mov	r7,#0x00
      0025B8                       1520 00237$:
      0025B8 8E 82            [24] 1521 	mov	dpl,r6
      0025BA 8F 83            [24] 1522 	mov	dph,r7
      0025BC 12 29 12         [24] 1523 	lcall	_putchar
                                   1524 ;	disp.c:273: printstr(" L S R T");
      0025BF 7D 8D            [12] 1525 	mov	r5,#___str_7
      0025C1 7E 2A            [12] 1526 	mov	r6,#(___str_7 >> 8)
      0025C3 7F 80            [12] 1527 	mov	r7,#0x80
                                   1528 ;	disp.c:14: return;
      0025C5                       1529 00197$:
                                   1530 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0025C5 8D 82            [24] 1531 	mov	dpl,r5
      0025C7 8E 83            [24] 1532 	mov	dph,r6
      0025C9 8F F0            [24] 1533 	mov	b,r7
      0025CB 12 2A 21         [24] 1534 	lcall	__gptrget
      0025CE FC               [12] 1535 	mov	r4,a
      0025CF 60 1C            [24] 1536 	jz	00147$
      0025D1 7B 00            [12] 1537 	mov	r3,#0x00
      0025D3 8C 82            [24] 1538 	mov	dpl,r4
      0025D5 8B 83            [24] 1539 	mov	dph,r3
      0025D7 C0 07            [24] 1540 	push	ar7
      0025D9 C0 06            [24] 1541 	push	ar6
      0025DB C0 05            [24] 1542 	push	ar5
      0025DD 12 29 12         [24] 1543 	lcall	_putchar
      0025E0 D0 05            [24] 1544 	pop	ar5
      0025E2 D0 06            [24] 1545 	pop	ar6
      0025E4 D0 07            [24] 1546 	pop	ar7
      0025E6 0D               [12] 1547 	inc	r5
                                   1548 ;	disp.c:273: printstr(" L S R T");
      0025E7 BD 00 DB         [24] 1549 	cjne	r5,#0x00,00197$
      0025EA 0E               [12] 1550 	inc	r6
      0025EB 80 D8            [24] 1551 	sjmp	00197$
      0025ED                       1552 00147$:
                                   1553 ;	disp.c:118: printstr("\r\n");
      0025ED 7D 62            [12] 1554 	mov	r5,#___str_1
      0025EF 7E 2A            [12] 1555 	mov	r6,#(___str_1 >> 8)
      0025F1 7F 80            [12] 1556 	mov	r7,#0x80
                                   1557 ;	disp.c:14: return;
      0025F3                       1558 00200$:
                                   1559 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0025F3 8D 82            [24] 1560 	mov	dpl,r5
      0025F5 8E 83            [24] 1561 	mov	dph,r6
      0025F7 8F F0            [24] 1562 	mov	b,r7
      0025F9 12 2A 21         [24] 1563 	lcall	__gptrget
      0025FC FC               [12] 1564 	mov	r4,a
      0025FD 60 1C            [24] 1565 	jz	00149$
      0025FF 7B 00            [12] 1566 	mov	r3,#0x00
      002601 8C 82            [24] 1567 	mov	dpl,r4
      002603 8B 83            [24] 1568 	mov	dph,r3
      002605 C0 07            [24] 1569 	push	ar7
      002607 C0 06            [24] 1570 	push	ar6
      002609 C0 05            [24] 1571 	push	ar5
      00260B 12 29 12         [24] 1572 	lcall	_putchar
      00260E D0 05            [24] 1573 	pop	ar5
      002610 D0 06            [24] 1574 	pop	ar6
      002612 D0 07            [24] 1575 	pop	ar7
      002614 0D               [12] 1576 	inc	r5
                                   1577 ;	disp.c:118: printstr("\r\n");
      002615 BD 00 DB         [24] 1578 	cjne	r5,#0x00,00200$
      002618 0E               [12] 1579 	inc	r6
      002619 80 D8            [24] 1580 	sjmp	00200$
      00261B                       1581 00149$:
                                   1582 ;	disp.c:276: c = scroll(buf);
      00261B 90 80 00         [24] 1583 	mov	dptr,#_buf
      00261E 75 F0 00         [24] 1584 	mov	b,#0x00
      002621 12 21 77         [24] 1585 	lcall	_scroll
      002624 AE 82            [24] 1586 	mov	r6,dpl
      002626 AF 83            [24] 1587 	mov	r7,dph
                                   1588 ;	disp.c:278: while (1) {
      002628                       1589 00125$:
                                   1590 ;	disp.c:279: if (c == (int)'T') goto term;
      002628 BE 54 06         [24] 1591 	cjne	r6,#0x54,00515$
      00262B BF 00 03         [24] 1592 	cjne	r7,#0x00,00515$
      00262E 02 28 D3         [24] 1593 	ljmp	00130$
      002631                       1594 00515$:
                                   1595 ;	disp.c:280: else if (c == (int)'R') goto reset;
      002631 BE 52 06         [24] 1596 	cjne	r6,#0x52,00516$
      002634 BF 00 03         [24] 1597 	cjne	r7,#0x00,00516$
      002637 02 24 5A         [24] 1598 	ljmp	00101$
      00263A                       1599 00516$:
                                   1600 ;	disp.c:281: else if (c == (int)'P') {
      00263A BE 50 05         [24] 1601 	cjne	r6,#0x50,00517$
      00263D BF 00 02         [24] 1602 	cjne	r7,#0x00,00517$
      002640 80 03            [24] 1603 	sjmp	00518$
      002642                       1604 00517$:
      002642 02 26 D8         [24] 1605 	ljmp	00116$
      002645                       1606 00518$:
                                   1607 ;	disp.c:110: printstr("MSG \"");
      002645 7F 5C            [12] 1608 	mov	r7,#___str_0
      002647 7E 2A            [12] 1609 	mov	r6,#(___str_0 >> 8)
      002649 7C 80            [12] 1610 	mov	r4,#0x80
                                   1611 ;	disp.c:14: return;
      00264B                       1612 00203$:
                                   1613 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      00264B 8F 82            [24] 1614 	mov	dpl,r7
      00264D 8E 83            [24] 1615 	mov	dph,r6
      00264F 8C F0            [24] 1616 	mov	b,r4
      002651 12 2A 21         [24] 1617 	lcall	__gptrget
      002654 FA               [12] 1618 	mov	r2,a
      002655 60 1C            [24] 1619 	jz	00152$
      002657 7D 00            [12] 1620 	mov	r5,#0x00
      002659 8A 82            [24] 1621 	mov	dpl,r2
      00265B 8D 83            [24] 1622 	mov	dph,r5
      00265D C0 07            [24] 1623 	push	ar7
      00265F C0 06            [24] 1624 	push	ar6
      002661 C0 04            [24] 1625 	push	ar4
      002663 12 29 12         [24] 1626 	lcall	_putchar
      002666 D0 04            [24] 1627 	pop	ar4
      002668 D0 06            [24] 1628 	pop	ar6
      00266A D0 07            [24] 1629 	pop	ar7
      00266C 0F               [12] 1630 	inc	r7
                                   1631 ;	disp.c:110: printstr("MSG \"");
      00266D BF 00 DB         [24] 1632 	cjne	r7,#0x00,00203$
      002670 0E               [12] 1633 	inc	r6
      002671 80 D8            [24] 1634 	sjmp	00203$
      002673                       1635 00152$:
                                   1636 ;	disp.c:111: printstr((char *)buf);
      002673 7F 00            [12] 1637 	mov	r7,#_buf
      002675 7E 80            [12] 1638 	mov	r6,#(_buf >> 8)
      002677 7C 00            [12] 1639 	mov	r4,#0x00
                                   1640 ;	disp.c:14: return;
      002679                       1641 00206$:
                                   1642 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002679 8F 82            [24] 1643 	mov	dpl,r7
      00267B 8E 83            [24] 1644 	mov	dph,r6
      00267D 8C F0            [24] 1645 	mov	b,r4
      00267F 12 2A 21         [24] 1646 	lcall	__gptrget
      002682 FA               [12] 1647 	mov	r2,a
      002683 60 1C            [24] 1648 	jz	00154$
      002685 7D 00            [12] 1649 	mov	r5,#0x00
      002687 8A 82            [24] 1650 	mov	dpl,r2
      002689 8D 83            [24] 1651 	mov	dph,r5
      00268B C0 07            [24] 1652 	push	ar7
      00268D C0 06            [24] 1653 	push	ar6
      00268F C0 04            [24] 1654 	push	ar4
      002691 12 29 12         [24] 1655 	lcall	_putchar
      002694 D0 04            [24] 1656 	pop	ar4
      002696 D0 06            [24] 1657 	pop	ar6
      002698 D0 07            [24] 1658 	pop	ar7
      00269A 0F               [12] 1659 	inc	r7
                                   1660 ;	disp.c:111: printstr((char *)buf);
      00269B BF 00 DB         [24] 1661 	cjne	r7,#0x00,00206$
      00269E 0E               [12] 1662 	inc	r6
      00269F 80 D8            [24] 1663 	sjmp	00206$
      0026A1                       1664 00154$:
                                   1665 ;	disp.c:112: putchar((int)'"');
      0026A1 90 00 22         [24] 1666 	mov	dptr,#0x0022
      0026A4 12 29 12         [24] 1667 	lcall	_putchar
                                   1668 ;	disp.c:118: printstr("\r\n");
      0026A7 7F 62            [12] 1669 	mov	r7,#___str_1
      0026A9 7E 2A            [12] 1670 	mov	r6,#(___str_1 >> 8)
      0026AB 7C 80            [12] 1671 	mov	r4,#0x80
                                   1672 ;	disp.c:14: return;
      0026AD                       1673 00209$:
                                   1674 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0026AD 8F 82            [24] 1675 	mov	dpl,r7
      0026AF 8E 83            [24] 1676 	mov	dph,r6
      0026B1 8C F0            [24] 1677 	mov	b,r4
      0026B3 12 2A 21         [24] 1678 	lcall	__gptrget
      0026B6 FA               [12] 1679 	mov	r2,a
      0026B7 70 03            [24] 1680 	jnz	00523$
      0026B9 02 28 C6         [24] 1681 	ljmp	00123$
      0026BC                       1682 00523$:
      0026BC 7D 00            [12] 1683 	mov	r5,#0x00
      0026BE 8A 82            [24] 1684 	mov	dpl,r2
      0026C0 8D 83            [24] 1685 	mov	dph,r5
      0026C2 C0 07            [24] 1686 	push	ar7
      0026C4 C0 06            [24] 1687 	push	ar6
      0026C6 C0 04            [24] 1688 	push	ar4
      0026C8 12 29 12         [24] 1689 	lcall	_putchar
      0026CB D0 04            [24] 1690 	pop	ar4
      0026CD D0 06            [24] 1691 	pop	ar6
      0026CF D0 07            [24] 1692 	pop	ar7
      0026D1 0F               [12] 1693 	inc	r7
                                   1694 ;	disp.c:283: pnl();
      0026D2 BF 00 D8         [24] 1695 	cjne	r7,#0x00,00209$
      0026D5 0E               [12] 1696 	inc	r6
      0026D6 80 D5            [24] 1697 	sjmp	00209$
      0026D8                       1698 00116$:
                                   1699 ;	disp.c:284: } else if (c == (int)'I') {
      0026D8 BE 49 55         [24] 1700 	cjne	r6,#0x49,00113$
      0026DB BF 00 52         [24] 1701 	cjne	r7,#0x00,00113$
                                   1702 ;	disp.c:285: inv = ~inv;
      0026DE 78 3B            [12] 1703 	mov	r0,#_inv
      0026E0 E6               [12] 1704 	mov	a,@r0
      0026E1 F4               [12] 1705 	cpl	a
      0026E2 F6               [12] 1706 	mov	@r0,a
                                   1707 ;	disp.c:103: putchar((int)'I');
      0026E3 90 00 49         [24] 1708 	mov	dptr,#0x0049
      0026E6 12 29 12         [24] 1709 	lcall	_putchar
                                   1710 ;	disp.c:104: putchar(inv ? (int)'1' : (int)'0');
      0026E9 78 3B            [12] 1711 	mov	r0,#_inv
      0026EB E6               [12] 1712 	mov	a,@r0
      0026EC 60 06            [24] 1713 	jz	00238$
      0026EE 7C 31            [12] 1714 	mov	r4,#0x31
      0026F0 7D 00            [12] 1715 	mov	r5,#0x00
      0026F2 80 04            [24] 1716 	sjmp	00239$
      0026F4                       1717 00238$:
      0026F4 7C 30            [12] 1718 	mov	r4,#0x30
      0026F6 7D 00            [12] 1719 	mov	r5,#0x00
      0026F8                       1720 00239$:
      0026F8 8C 82            [24] 1721 	mov	dpl,r4
      0026FA 8D 83            [24] 1722 	mov	dph,r5
      0026FC 12 29 12         [24] 1723 	lcall	_putchar
                                   1724 ;	disp.c:118: printstr("\r\n");
      0026FF 7F 62            [12] 1725 	mov	r7,#___str_1
      002701 7E 2A            [12] 1726 	mov	r6,#(___str_1 >> 8)
      002703 7C 80            [12] 1727 	mov	r4,#0x80
                                   1728 ;	disp.c:14: return;
      002705                       1729 00212$:
                                   1730 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002705 8F 82            [24] 1731 	mov	dpl,r7
      002707 8E 83            [24] 1732 	mov	dph,r6
      002709 8C F0            [24] 1733 	mov	b,r4
      00270B 12 2A 21         [24] 1734 	lcall	__gptrget
      00270E FA               [12] 1735 	mov	r2,a
      00270F 70 03            [24] 1736 	jnz	00528$
      002711 02 28 C6         [24] 1737 	ljmp	00123$
      002714                       1738 00528$:
      002714 7D 00            [12] 1739 	mov	r5,#0x00
      002716 8A 82            [24] 1740 	mov	dpl,r2
      002718 8D 83            [24] 1741 	mov	dph,r5
      00271A C0 07            [24] 1742 	push	ar7
      00271C C0 06            [24] 1743 	push	ar6
      00271E C0 04            [24] 1744 	push	ar4
      002720 12 29 12         [24] 1745 	lcall	_putchar
      002723 D0 04            [24] 1746 	pop	ar4
      002725 D0 06            [24] 1747 	pop	ar6
      002727 D0 07            [24] 1748 	pop	ar7
      002729 0F               [12] 1749 	inc	r7
                                   1750 ;	disp.c:287: pnl();
      00272A BF 00 D8         [24] 1751 	cjne	r7,#0x00,00212$
      00272D 0E               [12] 1752 	inc	r6
      00272E 80 D5            [24] 1753 	sjmp	00212$
      002730                       1754 00113$:
                                   1755 ;	disp.c:288: } else if (c == (int)'L') {
      002730 BE 4C 05         [24] 1756 	cjne	r6,#0x4c,00530$
      002733 BF 00 02         [24] 1757 	cjne	r7,#0x00,00530$
      002736 80 03            [24] 1758 	sjmp	00531$
      002738                       1759 00530$:
      002738 02 28 BD         [24] 1760 	ljmp	00110$
      00273B                       1761 00531$:
                                   1762 ;	disp.c:289: init_disp();
      00273B 12 21 0A         [24] 1763 	lcall	_init_disp
                                   1764 ;	disp.c:290: printstr("LOAD ");
      00273E 7F 96            [12] 1765 	mov	r7,#___str_8
      002740 7E 2A            [12] 1766 	mov	r6,#(___str_8 >> 8)
      002742 7C 80            [12] 1767 	mov	r4,#0x80
                                   1768 ;	disp.c:14: return;
      002744                       1769 00215$:
                                   1770 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002744 8F 82            [24] 1771 	mov	dpl,r7
      002746 8E 83            [24] 1772 	mov	dph,r6
      002748 8C F0            [24] 1773 	mov	b,r4
      00274A 12 2A 21         [24] 1774 	lcall	__gptrget
      00274D FA               [12] 1775 	mov	r2,a
      00274E 60 1C            [24] 1776 	jz	00164$
      002750 7D 00            [12] 1777 	mov	r5,#0x00
      002752 8A 82            [24] 1778 	mov	dpl,r2
      002754 8D 83            [24] 1779 	mov	dph,r5
      002756 C0 07            [24] 1780 	push	ar7
      002758 C0 06            [24] 1781 	push	ar6
      00275A C0 04            [24] 1782 	push	ar4
      00275C 12 29 12         [24] 1783 	lcall	_putchar
      00275F D0 04            [24] 1784 	pop	ar4
      002761 D0 06            [24] 1785 	pop	ar6
      002763 D0 07            [24] 1786 	pop	ar7
      002765 0F               [12] 1787 	inc	r7
                                   1788 ;	disp.c:290: printstr("LOAD ");
      002766 BF 00 DB         [24] 1789 	cjne	r7,#0x00,00215$
      002769 0E               [12] 1790 	inc	r6
      00276A 80 D8            [24] 1791 	sjmp	00215$
      00276C                       1792 00164$:
                                   1793 ;	disp.c:291: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00276C 7C 00            [12] 1794 	mov	r4,#0x00
      00276E 7D 00            [12] 1795 	mov	r5,#0x00
      002770 A8 10            [24] 1796 	mov	r0,_bp
      002772 08               [12] 1797 	inc	r0
      002773 E4               [12] 1798 	clr	a
      002774 F6               [12] 1799 	mov	@r0,a
      002775 08               [12] 1800 	inc	r0
      002776 F6               [12] 1801 	mov	@r0,a
      002777                       1802 00217$:
                                   1803 ;	disp.c:292: c = getchar();
      002777 C0 04            [24] 1804 	push	ar4
      002779 C0 05            [24] 1805 	push	ar5
      00277B 12 29 1C         [24] 1806 	lcall	_getchar
      00277E AC 82            [24] 1807 	mov	r4,dpl
      002780 AD 83            [24] 1808 	mov	r5,dph
      002782 8C 07            [24] 1809 	mov	ar7,r4
      002784 8D 06            [24] 1810 	mov	ar6,r5
                                   1811 ;	disp.c:293: (void)putchar(c);
      002786 8F 82            [24] 1812 	mov	dpl,r7
      002788 8E 83            [24] 1813 	mov	dph,r6
      00278A C0 07            [24] 1814 	push	ar7
      00278C C0 06            [24] 1815 	push	ar6
      00278E C0 05            [24] 1816 	push	ar5
      002790 C0 04            [24] 1817 	push	ar4
      002792 12 29 12         [24] 1818 	lcall	_putchar
      002795 D0 04            [24] 1819 	pop	ar4
      002797 D0 05            [24] 1820 	pop	ar5
      002799 D0 06            [24] 1821 	pop	ar6
      00279B D0 07            [24] 1822 	pop	ar7
                                   1823 ;	disp.c:294: if ((c == (int)'\r') || (c == (int)'\n')) {
      00279D BF 0D 09         [24] 1824 	cjne	r7,#0x0d,00534$
      0027A0 BE 00 06         [24] 1825 	cjne	r6,#0x00,00534$
      0027A3 D0 05            [24] 1826 	pop	ar5
      0027A5 D0 04            [24] 1827 	pop	ar4
      0027A7 80 0A            [24] 1828 	sjmp	00102$
      0027A9                       1829 00534$:
      0027A9 D0 05            [24] 1830 	pop	ar5
      0027AB D0 04            [24] 1831 	pop	ar4
      0027AD BF 0A 11         [24] 1832 	cjne	r7,#0x0a,00103$
      0027B0 BE 00 0E         [24] 1833 	cjne	r6,#0x00,00103$
      0027B3                       1834 00102$:
                                   1835 ;	disp.c:295: buf[j] = 0u;
      0027B3 EC               [12] 1836 	mov	a,r4
      0027B4 24 00            [12] 1837 	add	a,#_buf
      0027B6 F5 82            [12] 1838 	mov	dpl,a
      0027B8 ED               [12] 1839 	mov	a,r5
      0027B9 34 80            [12] 1840 	addc	a,#(_buf >> 8)
      0027BB F5 83            [12] 1841 	mov	dph,a
      0027BD E4               [12] 1842 	clr	a
      0027BE F0               [24] 1843 	movx	@dptr,a
                                   1844 ;	disp.c:296: break;
      0027BF 80 32            [24] 1845 	sjmp	00106$
      0027C1                       1846 00103$:
                                   1847 ;	disp.c:297: } else buf[j] = c & 0xffu;
      0027C1 A8 10            [24] 1848 	mov	r0,_bp
      0027C3 08               [12] 1849 	inc	r0
      0027C4 E6               [12] 1850 	mov	a,@r0
      0027C5 24 00            [12] 1851 	add	a,#_buf
      0027C7 FD               [12] 1852 	mov	r5,a
      0027C8 08               [12] 1853 	inc	r0
      0027C9 E6               [12] 1854 	mov	a,@r0
      0027CA 34 80            [12] 1855 	addc	a,#(_buf >> 8)
      0027CC FC               [12] 1856 	mov	r4,a
      0027CD 8F 03            [24] 1857 	mov	ar3,r7
      0027CF 8D 82            [24] 1858 	mov	dpl,r5
      0027D1 8C 83            [24] 1859 	mov	dph,r4
      0027D3 EB               [12] 1860 	mov	a,r3
      0027D4 F0               [24] 1861 	movx	@dptr,a
                                   1862 ;	disp.c:291: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      0027D5 A8 10            [24] 1863 	mov	r0,_bp
      0027D7 08               [12] 1864 	inc	r0
      0027D8 06               [12] 1865 	inc	@r0
      0027D9 B6 00 02         [24] 1866 	cjne	@r0,#0x00,00537$
      0027DC 08               [12] 1867 	inc	r0
      0027DD 06               [12] 1868 	inc	@r0
      0027DE                       1869 00537$:
      0027DE A8 10            [24] 1870 	mov	r0,_bp
      0027E0 08               [12] 1871 	inc	r0
      0027E1 86 04            [24] 1872 	mov	ar4,@r0
      0027E3 08               [12] 1873 	inc	r0
      0027E4 86 05            [24] 1874 	mov	ar5,@r0
      0027E6 A8 10            [24] 1875 	mov	r0,_bp
      0027E8 08               [12] 1876 	inc	r0
      0027E9 86 02            [24] 1877 	mov	ar2,@r0
      0027EB 08               [12] 1878 	inc	r0
      0027EC 86 03            [24] 1879 	mov	ar3,@r0
      0027EE 74 FF            [12] 1880 	mov	a,#0x100 - 0x01
      0027F0 2B               [12] 1881 	add	a,r3
      0027F1 50 84            [24] 1882 	jnc	00217$
      0027F3                       1883 00106$:
                                   1884 ;	disp.c:299: buf[j] = 0u;
      0027F3 EC               [12] 1885 	mov	a,r4
      0027F4 24 00            [12] 1886 	add	a,#_buf
      0027F6 F5 82            [12] 1887 	mov	dpl,a
      0027F8 ED               [12] 1888 	mov	a,r5
      0027F9 34 80            [12] 1889 	addc	a,#(_buf >> 8)
      0027FB F5 83            [12] 1890 	mov	dph,a
      0027FD E4               [12] 1891 	clr	a
      0027FE F0               [24] 1892 	movx	@dptr,a
                                   1893 ;	disp.c:118: printstr("\r\n");
      0027FF 7F 62            [12] 1894 	mov	r7,#___str_1
      002801 7E 2A            [12] 1895 	mov	r6,#(___str_1 >> 8)
      002803 7C 80            [12] 1896 	mov	r4,#0x80
                                   1897 ;	disp.c:14: return;
      002805                       1898 00220$:
                                   1899 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002805 8F 82            [24] 1900 	mov	dpl,r7
      002807 8E 83            [24] 1901 	mov	dph,r6
      002809 8C F0            [24] 1902 	mov	b,r4
      00280B 12 2A 21         [24] 1903 	lcall	__gptrget
      00280E FA               [12] 1904 	mov	r2,a
      00280F 60 1C            [24] 1905 	jz	00166$
      002811 7D 00            [12] 1906 	mov	r5,#0x00
      002813 8A 82            [24] 1907 	mov	dpl,r2
      002815 8D 83            [24] 1908 	mov	dph,r5
      002817 C0 07            [24] 1909 	push	ar7
      002819 C0 06            [24] 1910 	push	ar6
      00281B C0 04            [24] 1911 	push	ar4
      00281D 12 29 12         [24] 1912 	lcall	_putchar
      002820 D0 04            [24] 1913 	pop	ar4
      002822 D0 06            [24] 1914 	pop	ar6
      002824 D0 07            [24] 1915 	pop	ar7
      002826 0F               [12] 1916 	inc	r7
                                   1917 ;	disp.c:118: printstr("\r\n");
      002827 BF 00 DB         [24] 1918 	cjne	r7,#0x00,00220$
      00282A 0E               [12] 1919 	inc	r6
      00282B 80 D8            [24] 1920 	sjmp	00220$
      00282D                       1921 00166$:
                                   1922 ;	disp.c:110: printstr("MSG \"");
      00282D 7F 5C            [12] 1923 	mov	r7,#___str_0
      00282F 7E 2A            [12] 1924 	mov	r6,#(___str_0 >> 8)
      002831 7C 80            [12] 1925 	mov	r4,#0x80
                                   1926 ;	disp.c:14: return;
      002833                       1927 00223$:
                                   1928 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002833 8F 82            [24] 1929 	mov	dpl,r7
      002835 8E 83            [24] 1930 	mov	dph,r6
      002837 8C F0            [24] 1931 	mov	b,r4
      002839 12 2A 21         [24] 1932 	lcall	__gptrget
      00283C FA               [12] 1933 	mov	r2,a
      00283D 60 1C            [24] 1934 	jz	00169$
      00283F 7D 00            [12] 1935 	mov	r5,#0x00
      002841 8A 82            [24] 1936 	mov	dpl,r2
      002843 8D 83            [24] 1937 	mov	dph,r5
      002845 C0 07            [24] 1938 	push	ar7
      002847 C0 06            [24] 1939 	push	ar6
      002849 C0 04            [24] 1940 	push	ar4
      00284B 12 29 12         [24] 1941 	lcall	_putchar
      00284E D0 04            [24] 1942 	pop	ar4
      002850 D0 06            [24] 1943 	pop	ar6
      002852 D0 07            [24] 1944 	pop	ar7
      002854 0F               [12] 1945 	inc	r7
                                   1946 ;	disp.c:110: printstr("MSG \"");
      002855 BF 00 DB         [24] 1947 	cjne	r7,#0x00,00223$
      002858 0E               [12] 1948 	inc	r6
      002859 80 D8            [24] 1949 	sjmp	00223$
      00285B                       1950 00169$:
                                   1951 ;	disp.c:111: printstr((char *)buf);
      00285B 7F 00            [12] 1952 	mov	r7,#_buf
      00285D 7E 80            [12] 1953 	mov	r6,#(_buf >> 8)
      00285F 7C 00            [12] 1954 	mov	r4,#0x00
                                   1955 ;	disp.c:14: return;
      002861                       1956 00226$:
                                   1957 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002861 8F 82            [24] 1958 	mov	dpl,r7
      002863 8E 83            [24] 1959 	mov	dph,r6
      002865 8C F0            [24] 1960 	mov	b,r4
      002867 12 2A 21         [24] 1961 	lcall	__gptrget
      00286A FA               [12] 1962 	mov	r2,a
      00286B 60 1C            [24] 1963 	jz	00171$
      00286D 7D 00            [12] 1964 	mov	r5,#0x00
      00286F 8A 82            [24] 1965 	mov	dpl,r2
      002871 8D 83            [24] 1966 	mov	dph,r5
      002873 C0 07            [24] 1967 	push	ar7
      002875 C0 06            [24] 1968 	push	ar6
      002877 C0 04            [24] 1969 	push	ar4
      002879 12 29 12         [24] 1970 	lcall	_putchar
      00287C D0 04            [24] 1971 	pop	ar4
      00287E D0 06            [24] 1972 	pop	ar6
      002880 D0 07            [24] 1973 	pop	ar7
      002882 0F               [12] 1974 	inc	r7
                                   1975 ;	disp.c:111: printstr((char *)buf);
      002883 BF 00 DB         [24] 1976 	cjne	r7,#0x00,00226$
      002886 0E               [12] 1977 	inc	r6
      002887 80 D8            [24] 1978 	sjmp	00226$
      002889                       1979 00171$:
                                   1980 ;	disp.c:112: putchar((int)'"');
      002889 90 00 22         [24] 1981 	mov	dptr,#0x0022
      00288C 12 29 12         [24] 1982 	lcall	_putchar
                                   1983 ;	disp.c:118: printstr("\r\n");
      00288F 7F 62            [12] 1984 	mov	r7,#___str_1
      002891 7E 2A            [12] 1985 	mov	r6,#(___str_1 >> 8)
      002893 7C 80            [12] 1986 	mov	r4,#0x80
                                   1987 ;	disp.c:14: return;
      002895                       1988 00229$:
                                   1989 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      002895 8F 82            [24] 1990 	mov	dpl,r7
      002897 8E 83            [24] 1991 	mov	dph,r6
      002899 8C F0            [24] 1992 	mov	b,r4
      00289B 12 2A 21         [24] 1993 	lcall	__gptrget
      00289E FA               [12] 1994 	mov	r2,a
      00289F 60 25            [24] 1995 	jz	00123$
      0028A1 7D 00            [12] 1996 	mov	r5,#0x00
      0028A3 8A 82            [24] 1997 	mov	dpl,r2
      0028A5 8D 83            [24] 1998 	mov	dph,r5
      0028A7 C0 07            [24] 1999 	push	ar7
      0028A9 C0 06            [24] 2000 	push	ar6
      0028AB C0 04            [24] 2001 	push	ar4
      0028AD 12 29 12         [24] 2002 	lcall	_putchar
      0028B0 D0 04            [24] 2003 	pop	ar4
      0028B2 D0 06            [24] 2004 	pop	ar6
      0028B4 D0 07            [24] 2005 	pop	ar7
      0028B6 0F               [12] 2006 	inc	r7
                                   2007 ;	disp.c:302: pnl();
      0028B7 BF 00 DB         [24] 2008 	cjne	r7,#0x00,00229$
      0028BA 0E               [12] 2009 	inc	r6
      0028BB 80 D8            [24] 2010 	sjmp	00229$
      0028BD                       2011 00110$:
                                   2012 ;	disp.c:303: } else if (c == (int)'S') break;
      0028BD BE 53 06         [24] 2013 	cjne	r6,#0x53,00547$
      0028C0 BF 00 03         [24] 2014 	cjne	r7,#0x00,00547$
      0028C3 02 24 E5         [24] 2015 	ljmp	00128$
      0028C6                       2016 00547$:
      0028C6                       2017 00123$:
                                   2018 ;	disp.c:305: c = toupper(getchar());
      0028C6 12 29 1C         [24] 2019 	lcall	_getchar
      0028C9 12 29 43         [24] 2020 	lcall	_toupper
      0028CC AE 82            [24] 2021 	mov	r6,dpl
      0028CE AF 83            [24] 2022 	mov	r7,dph
      0028D0 02 26 28         [24] 2023 	ljmp	00125$
                                   2024 ;	disp.c:309: term:	
      0028D3                       2025 00130$:
                                   2026 ;	disp.c:310: EA = 0;
                                   2027 ;	assignBit
      0028D3 C2 AF            [12] 2028 	clr	_EA
                                   2029 ;	disp.c:311: init_disp();
      0028D5 12 21 0A         [24] 2030 	lcall	_init_disp
                                   2031 ;	disp.c:312: printstr("TERM\r\n");
      0028D8 7D 9C            [12] 2032 	mov	r5,#___str_9
      0028DA 7E 2A            [12] 2033 	mov	r6,#(___str_9 >> 8)
      0028DC 7F 80            [12] 2034 	mov	r7,#0x80
                                   2035 ;	disp.c:14: return;
      0028DE                       2036 00232$:
                                   2037 ;	disp.c:12: for (; *s; s++) putchar((int)*s);
      0028DE 8D 82            [24] 2038 	mov	dpl,r5
      0028E0 8E 83            [24] 2039 	mov	dph,r6
      0028E2 8F F0            [24] 2040 	mov	b,r7
      0028E4 12 2A 21         [24] 2041 	lcall	__gptrget
      0028E7 FC               [12] 2042 	mov	r4,a
      0028E8 60 1C            [24] 2043 	jz	00177$
      0028EA 7B 00            [12] 2044 	mov	r3,#0x00
      0028EC 8C 82            [24] 2045 	mov	dpl,r4
      0028EE 8B 83            [24] 2046 	mov	dph,r3
      0028F0 C0 07            [24] 2047 	push	ar7
      0028F2 C0 06            [24] 2048 	push	ar6
      0028F4 C0 05            [24] 2049 	push	ar5
      0028F6 12 29 12         [24] 2050 	lcall	_putchar
      0028F9 D0 05            [24] 2051 	pop	ar5
      0028FB D0 06            [24] 2052 	pop	ar6
      0028FD D0 07            [24] 2053 	pop	ar7
      0028FF 0D               [12] 2054 	inc	r5
                                   2055 ;	disp.c:312: printstr("TERM\r\n");
      002900 BD 00 DB         [24] 2056 	cjne	r5,#0x00,00232$
      002903 0E               [12] 2057 	inc	r6
      002904 80 D8            [24] 2058 	sjmp	00232$
      002906                       2059 00177$:
                                   2060 ;	disp.c:313: (void)getchar();
      002906 12 29 1C         [24] 2061 	lcall	_getchar
                                   2062 ;	disp.c:315: PCON |= 2;
      002909 43 87 02         [24] 2063 	orl	_PCON,#0x02
                                   2064 ;	disp.c:317: return;
                                   2065 ;	disp.c:318: }
      00290C 85 10 81         [24] 2066 	mov	sp,_bp
      00290F D0 10            [24] 2067 	pop	_bp
      002911 22               [24] 2068 	ret
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
                                   2071 	.area CONST   (CODE)
      002A5C                       2072 ___str_0:
      002A5C 4D 53 47 20           2073 	.ascii "MSG "
      002A60 22                    2074 	.db 0x22
      002A61 00                    2075 	.db 0x00
                                   2076 	.area CSEG    (CODE)
                                   2077 	.area CONST   (CODE)
      002A62                       2078 ___str_1:
      002A62 0D                    2079 	.db 0x0d
      002A63 0A                    2080 	.db 0x0a
      002A64 00                    2081 	.db 0x00
                                   2082 	.area CSEG    (CODE)
                                   2083 	.area CONST   (CODE)
      002A65                       2084 ___str_2:
      002A65 50 41 55 53 45        2085 	.ascii "PAUSE"
      002A6A 0D                    2086 	.db 0x0d
      002A6B 0A                    2087 	.db 0x0a
      002A6C 00                    2088 	.db 0x00
                                   2089 	.area CSEG    (CODE)
                                   2090 	.area CONST   (CODE)
      002A6D                       2091 ___str_3:
      002A6D 52 45 53 55 4D 45     2092 	.ascii "RESUME"
      002A73 0D                    2093 	.db 0x0d
      002A74 0A                    2094 	.db 0x0a
      002A75 00                    2095 	.db 0x00
                                   2096 	.area CSEG    (CODE)
                                   2097 	.area CONST   (CODE)
      002A76                       2098 ___str_4:
      002A76 52 45 53 45 54        2099 	.ascii "RESET"
      002A7B 0D                    2100 	.db 0x0d
      002A7C 0A                    2101 	.db 0x0a
      002A7D 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
      002A7E                       2105 ___str_5:
      002A7E 49 4E 49 54 49 41 4C  2106 	.ascii "INITIAL "
             20
      002A86 00                    2107 	.db 0x00
                                   2108 	.area CSEG    (CODE)
                                   2109 	.area CONST   (CODE)
      002A87                       2110 ___str_6:
      002A87 50 20 53 50 20        2111 	.ascii "P SP "
      002A8C 00                    2112 	.db 0x00
                                   2113 	.area CSEG    (CODE)
                                   2114 	.area CONST   (CODE)
      002A8D                       2115 ___str_7:
      002A8D 20 4C 20 53 20 52 20  2116 	.ascii " L S R T"
             54
      002A95 00                    2117 	.db 0x00
                                   2118 	.area CSEG    (CODE)
                                   2119 	.area CONST   (CODE)
      002A96                       2120 ___str_8:
      002A96 4C 4F 41 44 20        2121 	.ascii "LOAD "
      002A9B 00                    2122 	.db 0x00
                                   2123 	.area CSEG    (CODE)
                                   2124 	.area CONST   (CODE)
      002A9C                       2125 ___str_9:
      002A9C 54 45 52 4D           2126 	.ascii "TERM"
      002AA0 0D                    2127 	.db 0x0d
      002AA1 0A                    2128 	.db 0x0a
      002AA2 00                    2129 	.db 0x00
                                   2130 	.area CSEG    (CODE)
                                   2131 	.area CONST   (CODE)
      002AA3                       2132 ___str_10:
      002AA3 43 41 45 44 49 54 45  2133 	.ascii "CAEDITE EOS : NOVIT ENIM DOMINVS QVI SVNT EIVS : "
             20 45 4F 53 20 3A 20
             4E 4F 56 49 54 20 45
             4E 49 4D 20 44 4F 4D
             49 4E 56 53 20 51 56
             49 20 53 56 4E 54 20
             45 49 56 53 20 3A 20
      002AD4 00                    2134 	.db 0x00
                                   2135 	.area CSEG    (CODE)
                                   2136 	.area XINIT   (CODE)
      002AD5                       2137 __xinit___ft_font6x8:
      002AD5 00                    2138 	.db #0x00	; 0
      002AD6 00                    2139 	.db #0x00	; 0
      002AD7 00                    2140 	.db #0x00	; 0
      002AD8 00                    2141 	.db #0x00	; 0
      002AD9 00                    2142 	.db #0x00	; 0
      002ADA 00                    2143 	.db #0x00	; 0
      002ADB 00                    2144 	.db #0x00	; 0
      002ADC 00                    2145 	.db #0x00	; 0
      002ADD 1C                    2146 	.db #0x1c	; 28
      002ADE 22                    2147 	.db #0x22	; 34
      002ADF 36                    2148 	.db #0x36	; 54	'6'
      002AE0 22                    2149 	.db #0x22	; 34
      002AE1 2A                    2150 	.db #0x2a	; 42
      002AE2 22                    2151 	.db #0x22	; 34
      002AE3 1C                    2152 	.db #0x1c	; 28
      002AE4 00                    2153 	.db #0x00	; 0
      002AE5 1C                    2154 	.db #0x1c	; 28
      002AE6 3E                    2155 	.db #0x3e	; 62
      002AE7 2A                    2156 	.db #0x2a	; 42
      002AE8 3E                    2157 	.db #0x3e	; 62
      002AE9 22                    2158 	.db #0x22	; 34
      002AEA 3E                    2159 	.db #0x3e	; 62
      002AEB 1C                    2160 	.db #0x1c	; 28
      002AEC 00                    2161 	.db #0x00	; 0
      002AED 00                    2162 	.db #0x00	; 0
      002AEE 14                    2163 	.db #0x14	; 20
      002AEF 3E                    2164 	.db #0x3e	; 62
      002AF0 3E                    2165 	.db #0x3e	; 62
      002AF1 3E                    2166 	.db #0x3e	; 62
      002AF2 1C                    2167 	.db #0x1c	; 28
      002AF3 08                    2168 	.db #0x08	; 8
      002AF4 00                    2169 	.db #0x00	; 0
      002AF5 00                    2170 	.db #0x00	; 0
      002AF6 08                    2171 	.db #0x08	; 8
      002AF7 1C                    2172 	.db #0x1c	; 28
      002AF8 3E                    2173 	.db #0x3e	; 62
      002AF9 3E                    2174 	.db #0x3e	; 62
      002AFA 1C                    2175 	.db #0x1c	; 28
      002AFB 08                    2176 	.db #0x08	; 8
      002AFC 00                    2177 	.db #0x00	; 0
      002AFD 08                    2178 	.db #0x08	; 8
      002AFE 1C                    2179 	.db #0x1c	; 28
      002AFF 1C                    2180 	.db #0x1c	; 28
      002B00 08                    2181 	.db #0x08	; 8
      002B01 3E                    2182 	.db #0x3e	; 62
      002B02 3E                    2183 	.db #0x3e	; 62
      002B03 08                    2184 	.db #0x08	; 8
      002B04 00                    2185 	.db #0x00	; 0
      002B05 00                    2186 	.db #0x00	; 0
      002B06 08                    2187 	.db #0x08	; 8
      002B07 1C                    2188 	.db #0x1c	; 28
      002B08 3E                    2189 	.db #0x3e	; 62
      002B09 3E                    2190 	.db #0x3e	; 62
      002B0A 08                    2191 	.db #0x08	; 8
      002B0B 1C                    2192 	.db #0x1c	; 28
      002B0C 00                    2193 	.db #0x00	; 0
      002B0D 00                    2194 	.db #0x00	; 0
      002B0E 00                    2195 	.db #0x00	; 0
      002B0F 00                    2196 	.db #0x00	; 0
      002B10 0C                    2197 	.db #0x0c	; 12
      002B11 0C                    2198 	.db #0x0c	; 12
      002B12 00                    2199 	.db #0x00	; 0
      002B13 00                    2200 	.db #0x00	; 0
      002B14 00                    2201 	.db #0x00	; 0
      002B15 3F                    2202 	.db #0x3f	; 63
      002B16 3F                    2203 	.db #0x3f	; 63
      002B17 3F                    2204 	.db #0x3f	; 63
      002B18 33                    2205 	.db #0x33	; 51	'3'
      002B19 33                    2206 	.db #0x33	; 51	'3'
      002B1A 3F                    2207 	.db #0x3f	; 63
      002B1B 3F                    2208 	.db #0x3f	; 63
      002B1C 3F                    2209 	.db #0x3f	; 63
      002B1D 00                    2210 	.db #0x00	; 0
      002B1E 00                    2211 	.db #0x00	; 0
      002B1F 1E                    2212 	.db #0x1e	; 30
      002B20 12                    2213 	.db #0x12	; 18
      002B21 12                    2214 	.db #0x12	; 18
      002B22 1E                    2215 	.db #0x1e	; 30
      002B23 00                    2216 	.db #0x00	; 0
      002B24 00                    2217 	.db #0x00	; 0
      002B25 3F                    2218 	.db #0x3f	; 63
      002B26 3F                    2219 	.db #0x3f	; 63
      002B27 21                    2220 	.db #0x21	; 33
      002B28 2D                    2221 	.db #0x2d	; 45
      002B29 2D                    2222 	.db #0x2d	; 45
      002B2A 21                    2223 	.db #0x21	; 33
      002B2B 3F                    2224 	.db #0x3f	; 63
      002B2C 3F                    2225 	.db #0x3f	; 63
      002B2D 00                    2226 	.db #0x00	; 0
      002B2E 38                    2227 	.db #0x38	; 56	'8'
      002B2F 30                    2228 	.db #0x30	; 48	'0'
      002B30 2C                    2229 	.db #0x2c	; 44
      002B31 12                    2230 	.db #0x12	; 18
      002B32 12                    2231 	.db #0x12	; 18
      002B33 0C                    2232 	.db #0x0c	; 12
      002B34 00                    2233 	.db #0x00	; 0
      002B35 1C                    2234 	.db #0x1c	; 28
      002B36 22                    2235 	.db #0x22	; 34
      002B37 22                    2236 	.db #0x22	; 34
      002B38 1C                    2237 	.db #0x1c	; 28
      002B39 08                    2238 	.db #0x08	; 8
      002B3A 1C                    2239 	.db #0x1c	; 28
      002B3B 08                    2240 	.db #0x08	; 8
      002B3C 00                    2241 	.db #0x00	; 0
      002B3D 08                    2242 	.db #0x08	; 8
      002B3E 18                    2243 	.db #0x18	; 24
      002B3F 28                    2244 	.db #0x28	; 40
      002B40 08                    2245 	.db #0x08	; 8
      002B41 0C                    2246 	.db #0x0c	; 12
      002B42 0E                    2247 	.db #0x0e	; 14
      002B43 06                    2248 	.db #0x06	; 6
      002B44 00                    2249 	.db #0x00	; 0
      002B45 30                    2250 	.db #0x30	; 48	'0'
      002B46 2C                    2251 	.db #0x2c	; 44
      002B47 34                    2252 	.db #0x34	; 52	'4'
      002B48 2C                    2253 	.db #0x2c	; 44
      002B49 34                    2254 	.db #0x34	; 52	'4'
      002B4A 36                    2255 	.db #0x36	; 54	'6'
      002B4B 06                    2256 	.db #0x06	; 6
      002B4C 00                    2257 	.db #0x00	; 0
      002B4D 00                    2258 	.db #0x00	; 0
      002B4E 2A                    2259 	.db #0x2a	; 42
      002B4F 1C                    2260 	.db #0x1c	; 28
      002B50 36                    2261 	.db #0x36	; 54	'6'
      002B51 1C                    2262 	.db #0x1c	; 28
      002B52 2A                    2263 	.db #0x2a	; 42
      002B53 00                    2264 	.db #0x00	; 0
      002B54 00                    2265 	.db #0x00	; 0
      002B55 04                    2266 	.db #0x04	; 4
      002B56 0C                    2267 	.db #0x0c	; 12
      002B57 1C                    2268 	.db #0x1c	; 28
      002B58 3C                    2269 	.db #0x3c	; 60
      002B59 1C                    2270 	.db #0x1c	; 28
      002B5A 0C                    2271 	.db #0x0c	; 12
      002B5B 04                    2272 	.db #0x04	; 4
      002B5C 00                    2273 	.db #0x00	; 0
      002B5D 10                    2274 	.db #0x10	; 16
      002B5E 18                    2275 	.db #0x18	; 24
      002B5F 1C                    2276 	.db #0x1c	; 28
      002B60 1E                    2277 	.db #0x1e	; 30
      002B61 1C                    2278 	.db #0x1c	; 28
      002B62 18                    2279 	.db #0x18	; 24
      002B63 10                    2280 	.db #0x10	; 16
      002B64 00                    2281 	.db #0x00	; 0
      002B65 08                    2282 	.db #0x08	; 8
      002B66 1C                    2283 	.db #0x1c	; 28
      002B67 3E                    2284 	.db #0x3e	; 62
      002B68 08                    2285 	.db #0x08	; 8
      002B69 3E                    2286 	.db #0x3e	; 62
      002B6A 1C                    2287 	.db #0x1c	; 28
      002B6B 08                    2288 	.db #0x08	; 8
      002B6C 00                    2289 	.db #0x00	; 0
      002B6D 14                    2290 	.db #0x14	; 20
      002B6E 14                    2291 	.db #0x14	; 20
      002B6F 14                    2292 	.db #0x14	; 20
      002B70 14                    2293 	.db #0x14	; 20
      002B71 14                    2294 	.db #0x14	; 20
      002B72 00                    2295 	.db #0x00	; 0
      002B73 14                    2296 	.db #0x14	; 20
      002B74 00                    2297 	.db #0x00	; 0
      002B75 3C                    2298 	.db #0x3c	; 60
      002B76 2A                    2299 	.db #0x2a	; 42
      002B77 2A                    2300 	.db #0x2a	; 42
      002B78 2C                    2301 	.db #0x2c	; 44
      002B79 28                    2302 	.db #0x28	; 40
      002B7A 28                    2303 	.db #0x28	; 40
      002B7B 28                    2304 	.db #0x28	; 40
      002B7C 00                    2305 	.db #0x00	; 0
      002B7D 1C                    2306 	.db #0x1c	; 28
      002B7E 22                    2307 	.db #0x22	; 34
      002B7F 0C                    2308 	.db #0x0c	; 12
      002B80 14                    2309 	.db #0x14	; 20
      002B81 18                    2310 	.db #0x18	; 24
      002B82 22                    2311 	.db #0x22	; 34
      002B83 1C                    2312 	.db #0x1c	; 28
      002B84 00                    2313 	.db #0x00	; 0
      002B85 00                    2314 	.db #0x00	; 0
      002B86 00                    2315 	.db #0x00	; 0
      002B87 00                    2316 	.db #0x00	; 0
      002B88 00                    2317 	.db #0x00	; 0
      002B89 00                    2318 	.db #0x00	; 0
      002B8A 1E                    2319 	.db #0x1e	; 30
      002B8B 1E                    2320 	.db #0x1e	; 30
      002B8C 00                    2321 	.db #0x00	; 0
      002B8D 08                    2322 	.db #0x08	; 8
      002B8E 1C                    2323 	.db #0x1c	; 28
      002B8F 3E                    2324 	.db #0x3e	; 62
      002B90 08                    2325 	.db #0x08	; 8
      002B91 3E                    2326 	.db #0x3e	; 62
      002B92 1C                    2327 	.db #0x1c	; 28
      002B93 08                    2328 	.db #0x08	; 8
      002B94 1C                    2329 	.db #0x1c	; 28
      002B95 08                    2330 	.db #0x08	; 8
      002B96 1C                    2331 	.db #0x1c	; 28
      002B97 3E                    2332 	.db #0x3e	; 62
      002B98 08                    2333 	.db #0x08	; 8
      002B99 08                    2334 	.db #0x08	; 8
      002B9A 08                    2335 	.db #0x08	; 8
      002B9B 08                    2336 	.db #0x08	; 8
      002B9C 00                    2337 	.db #0x00	; 0
      002B9D 08                    2338 	.db #0x08	; 8
      002B9E 08                    2339 	.db #0x08	; 8
      002B9F 08                    2340 	.db #0x08	; 8
      002BA0 08                    2341 	.db #0x08	; 8
      002BA1 3E                    2342 	.db #0x3e	; 62
      002BA2 1C                    2343 	.db #0x1c	; 28
      002BA3 08                    2344 	.db #0x08	; 8
      002BA4 00                    2345 	.db #0x00	; 0
      002BA5 00                    2346 	.db #0x00	; 0
      002BA6 08                    2347 	.db #0x08	; 8
      002BA7 18                    2348 	.db #0x18	; 24
      002BA8 3E                    2349 	.db #0x3e	; 62
      002BA9 18                    2350 	.db #0x18	; 24
      002BAA 08                    2351 	.db #0x08	; 8
      002BAB 00                    2352 	.db #0x00	; 0
      002BAC 00                    2353 	.db #0x00	; 0
      002BAD 00                    2354 	.db #0x00	; 0
      002BAE 08                    2355 	.db #0x08	; 8
      002BAF 0C                    2356 	.db #0x0c	; 12
      002BB0 3E                    2357 	.db #0x3e	; 62
      002BB1 0C                    2358 	.db #0x0c	; 12
      002BB2 08                    2359 	.db #0x08	; 8
      002BB3 00                    2360 	.db #0x00	; 0
      002BB4 00                    2361 	.db #0x00	; 0
      002BB5 00                    2362 	.db #0x00	; 0
      002BB6 00                    2363 	.db #0x00	; 0
      002BB7 00                    2364 	.db #0x00	; 0
      002BB8 02                    2365 	.db #0x02	; 2
      002BB9 02                    2366 	.db #0x02	; 2
      002BBA 02                    2367 	.db #0x02	; 2
      002BBB 3E                    2368 	.db #0x3e	; 62
      002BBC 00                    2369 	.db #0x00	; 0
      002BBD 00                    2370 	.db #0x00	; 0
      002BBE 14                    2371 	.db #0x14	; 20
      002BBF 14                    2372 	.db #0x14	; 20
      002BC0 3E                    2373 	.db #0x3e	; 62
      002BC1 14                    2374 	.db #0x14	; 20
      002BC2 14                    2375 	.db #0x14	; 20
      002BC3 00                    2376 	.db #0x00	; 0
      002BC4 00                    2377 	.db #0x00	; 0
      002BC5 08                    2378 	.db #0x08	; 8
      002BC6 08                    2379 	.db #0x08	; 8
      002BC7 1C                    2380 	.db #0x1c	; 28
      002BC8 1C                    2381 	.db #0x1c	; 28
      002BC9 3E                    2382 	.db #0x3e	; 62
      002BCA 3E                    2383 	.db #0x3e	; 62
      002BCB 00                    2384 	.db #0x00	; 0
      002BCC 00                    2385 	.db #0x00	; 0
      002BCD 3E                    2386 	.db #0x3e	; 62
      002BCE 3E                    2387 	.db #0x3e	; 62
      002BCF 1C                    2388 	.db #0x1c	; 28
      002BD0 1C                    2389 	.db #0x1c	; 28
      002BD1 08                    2390 	.db #0x08	; 8
      002BD2 08                    2391 	.db #0x08	; 8
      002BD3 00                    2392 	.db #0x00	; 0
      002BD4 00                    2393 	.db #0x00	; 0
      002BD5 00                    2394 	.db #0x00	; 0
      002BD6 00                    2395 	.db #0x00	; 0
      002BD7 00                    2396 	.db #0x00	; 0
      002BD8 00                    2397 	.db #0x00	; 0
      002BD9 00                    2398 	.db #0x00	; 0
      002BDA 00                    2399 	.db #0x00	; 0
      002BDB 00                    2400 	.db #0x00	; 0
      002BDC 00                    2401 	.db #0x00	; 0
      002BDD 08                    2402 	.db #0x08	; 8
      002BDE 1C                    2403 	.db #0x1c	; 28
      002BDF 1C                    2404 	.db #0x1c	; 28
      002BE0 08                    2405 	.db #0x08	; 8
      002BE1 08                    2406 	.db #0x08	; 8
      002BE2 00                    2407 	.db #0x00	; 0
      002BE3 08                    2408 	.db #0x08	; 8
      002BE4 00                    2409 	.db #0x00	; 0
      002BE5 36                    2410 	.db #0x36	; 54	'6'
      002BE6 36                    2411 	.db #0x36	; 54	'6'
      002BE7 12                    2412 	.db #0x12	; 18
      002BE8 00                    2413 	.db #0x00	; 0
      002BE9 00                    2414 	.db #0x00	; 0
      002BEA 00                    2415 	.db #0x00	; 0
      002BEB 00                    2416 	.db #0x00	; 0
      002BEC 00                    2417 	.db #0x00	; 0
      002BED 00                    2418 	.db #0x00	; 0
      002BEE 14                    2419 	.db #0x14	; 20
      002BEF 3E                    2420 	.db #0x3e	; 62
      002BF0 14                    2421 	.db #0x14	; 20
      002BF1 14                    2422 	.db #0x14	; 20
      002BF2 3E                    2423 	.db #0x3e	; 62
      002BF3 14                    2424 	.db #0x14	; 20
      002BF4 00                    2425 	.db #0x00	; 0
      002BF5 04                    2426 	.db #0x04	; 4
      002BF6 1C                    2427 	.db #0x1c	; 28
      002BF7 02                    2428 	.db #0x02	; 2
      002BF8 0C                    2429 	.db #0x0c	; 12
      002BF9 10                    2430 	.db #0x10	; 16
      002BFA 0E                    2431 	.db #0x0e	; 14
      002BFB 08                    2432 	.db #0x08	; 8
      002BFC 00                    2433 	.db #0x00	; 0
      002BFD 26                    2434 	.db #0x26	; 38
      002BFE 26                    2435 	.db #0x26	; 38
      002BFF 10                    2436 	.db #0x10	; 16
      002C00 08                    2437 	.db #0x08	; 8
      002C01 04                    2438 	.db #0x04	; 4
      002C02 32                    2439 	.db #0x32	; 50	'2'
      002C03 32                    2440 	.db #0x32	; 50	'2'
      002C04 00                    2441 	.db #0x00	; 0
      002C05 04                    2442 	.db #0x04	; 4
      002C06 0A                    2443 	.db #0x0a	; 10
      002C07 0A                    2444 	.db #0x0a	; 10
      002C08 04                    2445 	.db #0x04	; 4
      002C09 2A                    2446 	.db #0x2a	; 42
      002C0A 12                    2447 	.db #0x12	; 18
      002C0B 2C                    2448 	.db #0x2c	; 44
      002C0C 00                    2449 	.db #0x00	; 0
      002C0D 0C                    2450 	.db #0x0c	; 12
      002C0E 0C                    2451 	.db #0x0c	; 12
      002C0F 04                    2452 	.db #0x04	; 4
      002C10 00                    2453 	.db #0x00	; 0
      002C11 00                    2454 	.db #0x00	; 0
      002C12 00                    2455 	.db #0x00	; 0
      002C13 00                    2456 	.db #0x00	; 0
      002C14 00                    2457 	.db #0x00	; 0
      002C15 08                    2458 	.db #0x08	; 8
      002C16 04                    2459 	.db #0x04	; 4
      002C17 04                    2460 	.db #0x04	; 4
      002C18 04                    2461 	.db #0x04	; 4
      002C19 04                    2462 	.db #0x04	; 4
      002C1A 04                    2463 	.db #0x04	; 4
      002C1B 08                    2464 	.db #0x08	; 8
      002C1C 00                    2465 	.db #0x00	; 0
      002C1D 04                    2466 	.db #0x04	; 4
      002C1E 08                    2467 	.db #0x08	; 8
      002C1F 08                    2468 	.db #0x08	; 8
      002C20 08                    2469 	.db #0x08	; 8
      002C21 08                    2470 	.db #0x08	; 8
      002C22 08                    2471 	.db #0x08	; 8
      002C23 04                    2472 	.db #0x04	; 4
      002C24 00                    2473 	.db #0x00	; 0
      002C25 00                    2474 	.db #0x00	; 0
      002C26 14                    2475 	.db #0x14	; 20
      002C27 1C                    2476 	.db #0x1c	; 28
      002C28 3E                    2477 	.db #0x3e	; 62
      002C29 1C                    2478 	.db #0x1c	; 28
      002C2A 14                    2479 	.db #0x14	; 20
      002C2B 00                    2480 	.db #0x00	; 0
      002C2C 00                    2481 	.db #0x00	; 0
      002C2D 00                    2482 	.db #0x00	; 0
      002C2E 08                    2483 	.db #0x08	; 8
      002C2F 08                    2484 	.db #0x08	; 8
      002C30 3E                    2485 	.db #0x3e	; 62
      002C31 08                    2486 	.db #0x08	; 8
      002C32 08                    2487 	.db #0x08	; 8
      002C33 00                    2488 	.db #0x00	; 0
      002C34 00                    2489 	.db #0x00	; 0
      002C35 00                    2490 	.db #0x00	; 0
      002C36 00                    2491 	.db #0x00	; 0
      002C37 00                    2492 	.db #0x00	; 0
      002C38 00                    2493 	.db #0x00	; 0
      002C39 00                    2494 	.db #0x00	; 0
      002C3A 0C                    2495 	.db #0x0c	; 12
      002C3B 0C                    2496 	.db #0x0c	; 12
      002C3C 04                    2497 	.db #0x04	; 4
      002C3D 00                    2498 	.db #0x00	; 0
      002C3E 00                    2499 	.db #0x00	; 0
      002C3F 00                    2500 	.db #0x00	; 0
      002C40 3E                    2501 	.db #0x3e	; 62
      002C41 00                    2502 	.db #0x00	; 0
      002C42 00                    2503 	.db #0x00	; 0
      002C43 00                    2504 	.db #0x00	; 0
      002C44 00                    2505 	.db #0x00	; 0
      002C45 00                    2506 	.db #0x00	; 0
      002C46 00                    2507 	.db #0x00	; 0
      002C47 00                    2508 	.db #0x00	; 0
      002C48 00                    2509 	.db #0x00	; 0
      002C49 00                    2510 	.db #0x00	; 0
      002C4A 0C                    2511 	.db #0x0c	; 12
      002C4B 0C                    2512 	.db #0x0c	; 12
      002C4C 00                    2513 	.db #0x00	; 0
      002C4D 00                    2514 	.db #0x00	; 0
      002C4E 20                    2515 	.db #0x20	; 32
      002C4F 10                    2516 	.db #0x10	; 16
      002C50 08                    2517 	.db #0x08	; 8
      002C51 04                    2518 	.db #0x04	; 4
      002C52 02                    2519 	.db #0x02	; 2
      002C53 00                    2520 	.db #0x00	; 0
      002C54 00                    2521 	.db #0x00	; 0
      002C55 1C                    2522 	.db #0x1c	; 28
      002C56 22                    2523 	.db #0x22	; 34
      002C57 32                    2524 	.db #0x32	; 50	'2'
      002C58 2A                    2525 	.db #0x2a	; 42
      002C59 26                    2526 	.db #0x26	; 38
      002C5A 22                    2527 	.db #0x22	; 34
      002C5B 1C                    2528 	.db #0x1c	; 28
      002C5C 00                    2529 	.db #0x00	; 0
      002C5D 08                    2530 	.db #0x08	; 8
      002C5E 0C                    2531 	.db #0x0c	; 12
      002C5F 08                    2532 	.db #0x08	; 8
      002C60 08                    2533 	.db #0x08	; 8
      002C61 08                    2534 	.db #0x08	; 8
      002C62 08                    2535 	.db #0x08	; 8
      002C63 1C                    2536 	.db #0x1c	; 28
      002C64 00                    2537 	.db #0x00	; 0
      002C65 1C                    2538 	.db #0x1c	; 28
      002C66 22                    2539 	.db #0x22	; 34
      002C67 20                    2540 	.db #0x20	; 32
      002C68 18                    2541 	.db #0x18	; 24
      002C69 04                    2542 	.db #0x04	; 4
      002C6A 02                    2543 	.db #0x02	; 2
      002C6B 3E                    2544 	.db #0x3e	; 62
      002C6C 00                    2545 	.db #0x00	; 0
      002C6D 1C                    2546 	.db #0x1c	; 28
      002C6E 22                    2547 	.db #0x22	; 34
      002C6F 20                    2548 	.db #0x20	; 32
      002C70 1C                    2549 	.db #0x1c	; 28
      002C71 20                    2550 	.db #0x20	; 32
      002C72 22                    2551 	.db #0x22	; 34
      002C73 1C                    2552 	.db #0x1c	; 28
      002C74 00                    2553 	.db #0x00	; 0
      002C75 10                    2554 	.db #0x10	; 16
      002C76 18                    2555 	.db #0x18	; 24
      002C77 14                    2556 	.db #0x14	; 20
      002C78 12                    2557 	.db #0x12	; 18
      002C79 3E                    2558 	.db #0x3e	; 62
      002C7A 10                    2559 	.db #0x10	; 16
      002C7B 10                    2560 	.db #0x10	; 16
      002C7C 00                    2561 	.db #0x00	; 0
      002C7D 3E                    2562 	.db #0x3e	; 62
      002C7E 02                    2563 	.db #0x02	; 2
      002C7F 02                    2564 	.db #0x02	; 2
      002C80 1E                    2565 	.db #0x1e	; 30
      002C81 20                    2566 	.db #0x20	; 32
      002C82 22                    2567 	.db #0x22	; 34
      002C83 1C                    2568 	.db #0x1c	; 28
      002C84 00                    2569 	.db #0x00	; 0
      002C85 18                    2570 	.db #0x18	; 24
      002C86 04                    2571 	.db #0x04	; 4
      002C87 02                    2572 	.db #0x02	; 2
      002C88 1E                    2573 	.db #0x1e	; 30
      002C89 22                    2574 	.db #0x22	; 34
      002C8A 22                    2575 	.db #0x22	; 34
      002C8B 1C                    2576 	.db #0x1c	; 28
      002C8C 00                    2577 	.db #0x00	; 0
      002C8D 3E                    2578 	.db #0x3e	; 62
      002C8E 20                    2579 	.db #0x20	; 32
      002C8F 10                    2580 	.db #0x10	; 16
      002C90 08                    2581 	.db #0x08	; 8
      002C91 04                    2582 	.db #0x04	; 4
      002C92 04                    2583 	.db #0x04	; 4
      002C93 04                    2584 	.db #0x04	; 4
      002C94 00                    2585 	.db #0x00	; 0
      002C95 1C                    2586 	.db #0x1c	; 28
      002C96 22                    2587 	.db #0x22	; 34
      002C97 22                    2588 	.db #0x22	; 34
      002C98 1C                    2589 	.db #0x1c	; 28
      002C99 22                    2590 	.db #0x22	; 34
      002C9A 22                    2591 	.db #0x22	; 34
      002C9B 1C                    2592 	.db #0x1c	; 28
      002C9C 00                    2593 	.db #0x00	; 0
      002C9D 1C                    2594 	.db #0x1c	; 28
      002C9E 22                    2595 	.db #0x22	; 34
      002C9F 22                    2596 	.db #0x22	; 34
      002CA0 3C                    2597 	.db #0x3c	; 60
      002CA1 20                    2598 	.db #0x20	; 32
      002CA2 10                    2599 	.db #0x10	; 16
      002CA3 0C                    2600 	.db #0x0c	; 12
      002CA4 00                    2601 	.db #0x00	; 0
      002CA5 00                    2602 	.db #0x00	; 0
      002CA6 00                    2603 	.db #0x00	; 0
      002CA7 0C                    2604 	.db #0x0c	; 12
      002CA8 0C                    2605 	.db #0x0c	; 12
      002CA9 00                    2606 	.db #0x00	; 0
      002CAA 0C                    2607 	.db #0x0c	; 12
      002CAB 0C                    2608 	.db #0x0c	; 12
      002CAC 00                    2609 	.db #0x00	; 0
      002CAD 00                    2610 	.db #0x00	; 0
      002CAE 00                    2611 	.db #0x00	; 0
      002CAF 0C                    2612 	.db #0x0c	; 12
      002CB0 0C                    2613 	.db #0x0c	; 12
      002CB1 00                    2614 	.db #0x00	; 0
      002CB2 0C                    2615 	.db #0x0c	; 12
      002CB3 0C                    2616 	.db #0x0c	; 12
      002CB4 04                    2617 	.db #0x04	; 4
      002CB5 10                    2618 	.db #0x10	; 16
      002CB6 08                    2619 	.db #0x08	; 8
      002CB7 04                    2620 	.db #0x04	; 4
      002CB8 02                    2621 	.db #0x02	; 2
      002CB9 04                    2622 	.db #0x04	; 4
      002CBA 08                    2623 	.db #0x08	; 8
      002CBB 10                    2624 	.db #0x10	; 16
      002CBC 00                    2625 	.db #0x00	; 0
      002CBD 00                    2626 	.db #0x00	; 0
      002CBE 00                    2627 	.db #0x00	; 0
      002CBF 3E                    2628 	.db #0x3e	; 62
      002CC0 00                    2629 	.db #0x00	; 0
      002CC1 00                    2630 	.db #0x00	; 0
      002CC2 3E                    2631 	.db #0x3e	; 62
      002CC3 00                    2632 	.db #0x00	; 0
      002CC4 00                    2633 	.db #0x00	; 0
      002CC5 04                    2634 	.db #0x04	; 4
      002CC6 08                    2635 	.db #0x08	; 8
      002CC7 10                    2636 	.db #0x10	; 16
      002CC8 20                    2637 	.db #0x20	; 32
      002CC9 10                    2638 	.db #0x10	; 16
      002CCA 08                    2639 	.db #0x08	; 8
      002CCB 04                    2640 	.db #0x04	; 4
      002CCC 00                    2641 	.db #0x00	; 0
      002CCD 1C                    2642 	.db #0x1c	; 28
      002CCE 22                    2643 	.db #0x22	; 34
      002CCF 20                    2644 	.db #0x20	; 32
      002CD0 18                    2645 	.db #0x18	; 24
      002CD1 08                    2646 	.db #0x08	; 8
      002CD2 00                    2647 	.db #0x00	; 0
      002CD3 08                    2648 	.db #0x08	; 8
      002CD4 00                    2649 	.db #0x00	; 0
      002CD5 1C                    2650 	.db #0x1c	; 28
      002CD6 22                    2651 	.db #0x22	; 34
      002CD7 3A                    2652 	.db #0x3a	; 58
      002CD8 2A                    2653 	.db #0x2a	; 42
      002CD9 3A                    2654 	.db #0x3a	; 58
      002CDA 02                    2655 	.db #0x02	; 2
      002CDB 1C                    2656 	.db #0x1c	; 28
      002CDC 00                    2657 	.db #0x00	; 0
      002CDD 1C                    2658 	.db #0x1c	; 28
      002CDE 22                    2659 	.db #0x22	; 34
      002CDF 22                    2660 	.db #0x22	; 34
      002CE0 22                    2661 	.db #0x22	; 34
      002CE1 3E                    2662 	.db #0x3e	; 62
      002CE2 22                    2663 	.db #0x22	; 34
      002CE3 22                    2664 	.db #0x22	; 34
      002CE4 00                    2665 	.db #0x00	; 0
      002CE5 1E                    2666 	.db #0x1e	; 30
      002CE6 22                    2667 	.db #0x22	; 34
      002CE7 22                    2668 	.db #0x22	; 34
      002CE8 1E                    2669 	.db #0x1e	; 30
      002CE9 22                    2670 	.db #0x22	; 34
      002CEA 22                    2671 	.db #0x22	; 34
      002CEB 1E                    2672 	.db #0x1e	; 30
      002CEC 00                    2673 	.db #0x00	; 0
      002CED 1C                    2674 	.db #0x1c	; 28
      002CEE 22                    2675 	.db #0x22	; 34
      002CEF 02                    2676 	.db #0x02	; 2
      002CF0 02                    2677 	.db #0x02	; 2
      002CF1 02                    2678 	.db #0x02	; 2
      002CF2 22                    2679 	.db #0x22	; 34
      002CF3 1C                    2680 	.db #0x1c	; 28
      002CF4 00                    2681 	.db #0x00	; 0
      002CF5 1E                    2682 	.db #0x1e	; 30
      002CF6 22                    2683 	.db #0x22	; 34
      002CF7 22                    2684 	.db #0x22	; 34
      002CF8 22                    2685 	.db #0x22	; 34
      002CF9 22                    2686 	.db #0x22	; 34
      002CFA 22                    2687 	.db #0x22	; 34
      002CFB 1E                    2688 	.db #0x1e	; 30
      002CFC 00                    2689 	.db #0x00	; 0
      002CFD 3E                    2690 	.db #0x3e	; 62
      002CFE 02                    2691 	.db #0x02	; 2
      002CFF 02                    2692 	.db #0x02	; 2
      002D00 1E                    2693 	.db #0x1e	; 30
      002D01 02                    2694 	.db #0x02	; 2
      002D02 02                    2695 	.db #0x02	; 2
      002D03 3E                    2696 	.db #0x3e	; 62
      002D04 00                    2697 	.db #0x00	; 0
      002D05 3E                    2698 	.db #0x3e	; 62
      002D06 02                    2699 	.db #0x02	; 2
      002D07 02                    2700 	.db #0x02	; 2
      002D08 1E                    2701 	.db #0x1e	; 30
      002D09 02                    2702 	.db #0x02	; 2
      002D0A 02                    2703 	.db #0x02	; 2
      002D0B 02                    2704 	.db #0x02	; 2
      002D0C 00                    2705 	.db #0x00	; 0
      002D0D 1C                    2706 	.db #0x1c	; 28
      002D0E 22                    2707 	.db #0x22	; 34
      002D0F 02                    2708 	.db #0x02	; 2
      002D10 3A                    2709 	.db #0x3a	; 58
      002D11 22                    2710 	.db #0x22	; 34
      002D12 22                    2711 	.db #0x22	; 34
      002D13 3C                    2712 	.db #0x3c	; 60
      002D14 00                    2713 	.db #0x00	; 0
      002D15 22                    2714 	.db #0x22	; 34
      002D16 22                    2715 	.db #0x22	; 34
      002D17 22                    2716 	.db #0x22	; 34
      002D18 3E                    2717 	.db #0x3e	; 62
      002D19 22                    2718 	.db #0x22	; 34
      002D1A 22                    2719 	.db #0x22	; 34
      002D1B 22                    2720 	.db #0x22	; 34
      002D1C 00                    2721 	.db #0x00	; 0
      002D1D 1C                    2722 	.db #0x1c	; 28
      002D1E 08                    2723 	.db #0x08	; 8
      002D1F 08                    2724 	.db #0x08	; 8
      002D20 08                    2725 	.db #0x08	; 8
      002D21 08                    2726 	.db #0x08	; 8
      002D22 08                    2727 	.db #0x08	; 8
      002D23 1C                    2728 	.db #0x1c	; 28
      002D24 00                    2729 	.db #0x00	; 0
      002D25 20                    2730 	.db #0x20	; 32
      002D26 20                    2731 	.db #0x20	; 32
      002D27 20                    2732 	.db #0x20	; 32
      002D28 20                    2733 	.db #0x20	; 32
      002D29 22                    2734 	.db #0x22	; 34
      002D2A 22                    2735 	.db #0x22	; 34
      002D2B 1C                    2736 	.db #0x1c	; 28
      002D2C 00                    2737 	.db #0x00	; 0
      002D2D 22                    2738 	.db #0x22	; 34
      002D2E 12                    2739 	.db #0x12	; 18
      002D2F 0A                    2740 	.db #0x0a	; 10
      002D30 06                    2741 	.db #0x06	; 6
      002D31 0A                    2742 	.db #0x0a	; 10
      002D32 12                    2743 	.db #0x12	; 18
      002D33 22                    2744 	.db #0x22	; 34
      002D34 00                    2745 	.db #0x00	; 0
      002D35 02                    2746 	.db #0x02	; 2
      002D36 02                    2747 	.db #0x02	; 2
      002D37 02                    2748 	.db #0x02	; 2
      002D38 02                    2749 	.db #0x02	; 2
      002D39 02                    2750 	.db #0x02	; 2
      002D3A 02                    2751 	.db #0x02	; 2
      002D3B 3E                    2752 	.db #0x3e	; 62
      002D3C 00                    2753 	.db #0x00	; 0
      002D3D 22                    2754 	.db #0x22	; 34
      002D3E 36                    2755 	.db #0x36	; 54	'6'
      002D3F 2A                    2756 	.db #0x2a	; 42
      002D40 22                    2757 	.db #0x22	; 34
      002D41 22                    2758 	.db #0x22	; 34
      002D42 22                    2759 	.db #0x22	; 34
      002D43 22                    2760 	.db #0x22	; 34
      002D44 00                    2761 	.db #0x00	; 0
      002D45 22                    2762 	.db #0x22	; 34
      002D46 26                    2763 	.db #0x26	; 38
      002D47 2A                    2764 	.db #0x2a	; 42
      002D48 32                    2765 	.db #0x32	; 50	'2'
      002D49 22                    2766 	.db #0x22	; 34
      002D4A 22                    2767 	.db #0x22	; 34
      002D4B 22                    2768 	.db #0x22	; 34
      002D4C 00                    2769 	.db #0x00	; 0
      002D4D 1C                    2770 	.db #0x1c	; 28
      002D4E 22                    2771 	.db #0x22	; 34
      002D4F 22                    2772 	.db #0x22	; 34
      002D50 22                    2773 	.db #0x22	; 34
      002D51 22                    2774 	.db #0x22	; 34
      002D52 22                    2775 	.db #0x22	; 34
      002D53 1C                    2776 	.db #0x1c	; 28
      002D54 00                    2777 	.db #0x00	; 0
      002D55 1E                    2778 	.db #0x1e	; 30
      002D56 22                    2779 	.db #0x22	; 34
      002D57 22                    2780 	.db #0x22	; 34
      002D58 1E                    2781 	.db #0x1e	; 30
      002D59 02                    2782 	.db #0x02	; 2
      002D5A 02                    2783 	.db #0x02	; 2
      002D5B 02                    2784 	.db #0x02	; 2
      002D5C 00                    2785 	.db #0x00	; 0
      002D5D 1C                    2786 	.db #0x1c	; 28
      002D5E 22                    2787 	.db #0x22	; 34
      002D5F 22                    2788 	.db #0x22	; 34
      002D60 22                    2789 	.db #0x22	; 34
      002D61 2A                    2790 	.db #0x2a	; 42
      002D62 12                    2791 	.db #0x12	; 18
      002D63 2C                    2792 	.db #0x2c	; 44
      002D64 00                    2793 	.db #0x00	; 0
      002D65 1E                    2794 	.db #0x1e	; 30
      002D66 22                    2795 	.db #0x22	; 34
      002D67 22                    2796 	.db #0x22	; 34
      002D68 1E                    2797 	.db #0x1e	; 30
      002D69 12                    2798 	.db #0x12	; 18
      002D6A 22                    2799 	.db #0x22	; 34
      002D6B 22                    2800 	.db #0x22	; 34
      002D6C 00                    2801 	.db #0x00	; 0
      002D6D 1C                    2802 	.db #0x1c	; 28
      002D6E 22                    2803 	.db #0x22	; 34
      002D6F 02                    2804 	.db #0x02	; 2
      002D70 1C                    2805 	.db #0x1c	; 28
      002D71 20                    2806 	.db #0x20	; 32
      002D72 22                    2807 	.db #0x22	; 34
      002D73 1C                    2808 	.db #0x1c	; 28
      002D74 00                    2809 	.db #0x00	; 0
      002D75 3E                    2810 	.db #0x3e	; 62
      002D76 08                    2811 	.db #0x08	; 8
      002D77 08                    2812 	.db #0x08	; 8
      002D78 08                    2813 	.db #0x08	; 8
      002D79 08                    2814 	.db #0x08	; 8
      002D7A 08                    2815 	.db #0x08	; 8
      002D7B 08                    2816 	.db #0x08	; 8
      002D7C 00                    2817 	.db #0x00	; 0
      002D7D 22                    2818 	.db #0x22	; 34
      002D7E 22                    2819 	.db #0x22	; 34
      002D7F 22                    2820 	.db #0x22	; 34
      002D80 22                    2821 	.db #0x22	; 34
      002D81 22                    2822 	.db #0x22	; 34
      002D82 22                    2823 	.db #0x22	; 34
      002D83 1C                    2824 	.db #0x1c	; 28
      002D84 00                    2825 	.db #0x00	; 0
      002D85 22                    2826 	.db #0x22	; 34
      002D86 22                    2827 	.db #0x22	; 34
      002D87 22                    2828 	.db #0x22	; 34
      002D88 22                    2829 	.db #0x22	; 34
      002D89 22                    2830 	.db #0x22	; 34
      002D8A 14                    2831 	.db #0x14	; 20
      002D8B 08                    2832 	.db #0x08	; 8
      002D8C 00                    2833 	.db #0x00	; 0
      002D8D 22                    2834 	.db #0x22	; 34
      002D8E 22                    2835 	.db #0x22	; 34
      002D8F 2A                    2836 	.db #0x2a	; 42
      002D90 2A                    2837 	.db #0x2a	; 42
      002D91 2A                    2838 	.db #0x2a	; 42
      002D92 2A                    2839 	.db #0x2a	; 42
      002D93 14                    2840 	.db #0x14	; 20
      002D94 00                    2841 	.db #0x00	; 0
      002D95 22                    2842 	.db #0x22	; 34
      002D96 22                    2843 	.db #0x22	; 34
      002D97 14                    2844 	.db #0x14	; 20
      002D98 08                    2845 	.db #0x08	; 8
      002D99 14                    2846 	.db #0x14	; 20
      002D9A 22                    2847 	.db #0x22	; 34
      002D9B 22                    2848 	.db #0x22	; 34
      002D9C 00                    2849 	.db #0x00	; 0
      002D9D 22                    2850 	.db #0x22	; 34
      002D9E 22                    2851 	.db #0x22	; 34
      002D9F 22                    2852 	.db #0x22	; 34
      002DA0 14                    2853 	.db #0x14	; 20
      002DA1 08                    2854 	.db #0x08	; 8
      002DA2 08                    2855 	.db #0x08	; 8
      002DA3 08                    2856 	.db #0x08	; 8
      002DA4 00                    2857 	.db #0x00	; 0
      002DA5 1E                    2858 	.db #0x1e	; 30
      002DA6 10                    2859 	.db #0x10	; 16
      002DA7 08                    2860 	.db #0x08	; 8
      002DA8 04                    2861 	.db #0x04	; 4
      002DA9 02                    2862 	.db #0x02	; 2
      002DAA 02                    2863 	.db #0x02	; 2
      002DAB 1E                    2864 	.db #0x1e	; 30
      002DAC 00                    2865 	.db #0x00	; 0
      002DAD 1C                    2866 	.db #0x1c	; 28
      002DAE 04                    2867 	.db #0x04	; 4
      002DAF 04                    2868 	.db #0x04	; 4
      002DB0 04                    2869 	.db #0x04	; 4
      002DB1 04                    2870 	.db #0x04	; 4
      002DB2 04                    2871 	.db #0x04	; 4
      002DB3 1C                    2872 	.db #0x1c	; 28
      002DB4 00                    2873 	.db #0x00	; 0
      002DB5 00                    2874 	.db #0x00	; 0
      002DB6 02                    2875 	.db #0x02	; 2
      002DB7 04                    2876 	.db #0x04	; 4
      002DB8 08                    2877 	.db #0x08	; 8
      002DB9 10                    2878 	.db #0x10	; 16
      002DBA 20                    2879 	.db #0x20	; 32
      002DBB 00                    2880 	.db #0x00	; 0
      002DBC 00                    2881 	.db #0x00	; 0
      002DBD 1C                    2882 	.db #0x1c	; 28
      002DBE 10                    2883 	.db #0x10	; 16
      002DBF 10                    2884 	.db #0x10	; 16
      002DC0 10                    2885 	.db #0x10	; 16
      002DC1 10                    2886 	.db #0x10	; 16
      002DC2 10                    2887 	.db #0x10	; 16
      002DC3 1C                    2888 	.db #0x1c	; 28
      002DC4 00                    2889 	.db #0x00	; 0
      002DC5 08                    2890 	.db #0x08	; 8
      002DC6 14                    2891 	.db #0x14	; 20
      002DC7 22                    2892 	.db #0x22	; 34
      002DC8 00                    2893 	.db #0x00	; 0
      002DC9 00                    2894 	.db #0x00	; 0
      002DCA 00                    2895 	.db #0x00	; 0
      002DCB 00                    2896 	.db #0x00	; 0
      002DCC 00                    2897 	.db #0x00	; 0
      002DCD 00                    2898 	.db #0x00	; 0
      002DCE 00                    2899 	.db #0x00	; 0
      002DCF 00                    2900 	.db #0x00	; 0
      002DD0 00                    2901 	.db #0x00	; 0
      002DD1 00                    2902 	.db #0x00	; 0
      002DD2 00                    2903 	.db #0x00	; 0
      002DD3 00                    2904 	.db #0x00	; 0
      002DD4 3F                    2905 	.db #0x3f	; 63
      002DD5 0C                    2906 	.db #0x0c	; 12
      002DD6 0C                    2907 	.db #0x0c	; 12
      002DD7 08                    2908 	.db #0x08	; 8
      002DD8 00                    2909 	.db #0x00	; 0
      002DD9 00                    2910 	.db #0x00	; 0
      002DDA 00                    2911 	.db #0x00	; 0
      002DDB 00                    2912 	.db #0x00	; 0
      002DDC 00                    2913 	.db #0x00	; 0
      002DDD 00                    2914 	.db #0x00	; 0
      002DDE 00                    2915 	.db #0x00	; 0
      002DDF 1C                    2916 	.db #0x1c	; 28
      002DE0 20                    2917 	.db #0x20	; 32
      002DE1 3C                    2918 	.db #0x3c	; 60
      002DE2 22                    2919 	.db #0x22	; 34
      002DE3 3C                    2920 	.db #0x3c	; 60
      002DE4 00                    2921 	.db #0x00	; 0
      002DE5 02                    2922 	.db #0x02	; 2
      002DE6 02                    2923 	.db #0x02	; 2
      002DE7 1E                    2924 	.db #0x1e	; 30
      002DE8 22                    2925 	.db #0x22	; 34
      002DE9 22                    2926 	.db #0x22	; 34
      002DEA 22                    2927 	.db #0x22	; 34
      002DEB 1E                    2928 	.db #0x1e	; 30
      002DEC 00                    2929 	.db #0x00	; 0
      002DED 00                    2930 	.db #0x00	; 0
      002DEE 00                    2931 	.db #0x00	; 0
      002DEF 1C                    2932 	.db #0x1c	; 28
      002DF0 22                    2933 	.db #0x22	; 34
      002DF1 02                    2934 	.db #0x02	; 2
      002DF2 22                    2935 	.db #0x22	; 34
      002DF3 1C                    2936 	.db #0x1c	; 28
      002DF4 00                    2937 	.db #0x00	; 0
      002DF5 20                    2938 	.db #0x20	; 32
      002DF6 20                    2939 	.db #0x20	; 32
      002DF7 3C                    2940 	.db #0x3c	; 60
      002DF8 22                    2941 	.db #0x22	; 34
      002DF9 22                    2942 	.db #0x22	; 34
      002DFA 22                    2943 	.db #0x22	; 34
      002DFB 3C                    2944 	.db #0x3c	; 60
      002DFC 00                    2945 	.db #0x00	; 0
      002DFD 00                    2946 	.db #0x00	; 0
      002DFE 00                    2947 	.db #0x00	; 0
      002DFF 1C                    2948 	.db #0x1c	; 28
      002E00 22                    2949 	.db #0x22	; 34
      002E01 1E                    2950 	.db #0x1e	; 30
      002E02 02                    2951 	.db #0x02	; 2
      002E03 1C                    2952 	.db #0x1c	; 28
      002E04 00                    2953 	.db #0x00	; 0
      002E05 18                    2954 	.db #0x18	; 24
      002E06 04                    2955 	.db #0x04	; 4
      002E07 04                    2956 	.db #0x04	; 4
      002E08 1E                    2957 	.db #0x1e	; 30
      002E09 04                    2958 	.db #0x04	; 4
      002E0A 04                    2959 	.db #0x04	; 4
      002E0B 04                    2960 	.db #0x04	; 4
      002E0C 00                    2961 	.db #0x00	; 0
      002E0D 00                    2962 	.db #0x00	; 0
      002E0E 00                    2963 	.db #0x00	; 0
      002E0F 3C                    2964 	.db #0x3c	; 60
      002E10 22                    2965 	.db #0x22	; 34
      002E11 22                    2966 	.db #0x22	; 34
      002E12 3C                    2967 	.db #0x3c	; 60
      002E13 20                    2968 	.db #0x20	; 32
      002E14 1C                    2969 	.db #0x1c	; 28
      002E15 02                    2970 	.db #0x02	; 2
      002E16 02                    2971 	.db #0x02	; 2
      002E17 0E                    2972 	.db #0x0e	; 14
      002E18 12                    2973 	.db #0x12	; 18
      002E19 12                    2974 	.db #0x12	; 18
      002E1A 12                    2975 	.db #0x12	; 18
      002E1B 12                    2976 	.db #0x12	; 18
      002E1C 00                    2977 	.db #0x00	; 0
      002E1D 08                    2978 	.db #0x08	; 8
      002E1E 00                    2979 	.db #0x00	; 0
      002E1F 08                    2980 	.db #0x08	; 8
      002E20 08                    2981 	.db #0x08	; 8
      002E21 08                    2982 	.db #0x08	; 8
      002E22 08                    2983 	.db #0x08	; 8
      002E23 18                    2984 	.db #0x18	; 24
      002E24 00                    2985 	.db #0x00	; 0
      002E25 10                    2986 	.db #0x10	; 16
      002E26 00                    2987 	.db #0x00	; 0
      002E27 18                    2988 	.db #0x18	; 24
      002E28 10                    2989 	.db #0x10	; 16
      002E29 10                    2990 	.db #0x10	; 16
      002E2A 10                    2991 	.db #0x10	; 16
      002E2B 12                    2992 	.db #0x12	; 18
      002E2C 0C                    2993 	.db #0x0c	; 12
      002E2D 02                    2994 	.db #0x02	; 2
      002E2E 02                    2995 	.db #0x02	; 2
      002E2F 12                    2996 	.db #0x12	; 18
      002E30 0A                    2997 	.db #0x0a	; 10
      002E31 06                    2998 	.db #0x06	; 6
      002E32 0A                    2999 	.db #0x0a	; 10
      002E33 12                    3000 	.db #0x12	; 18
      002E34 00                    3001 	.db #0x00	; 0
      002E35 08                    3002 	.db #0x08	; 8
      002E36 08                    3003 	.db #0x08	; 8
      002E37 08                    3004 	.db #0x08	; 8
      002E38 08                    3005 	.db #0x08	; 8
      002E39 08                    3006 	.db #0x08	; 8
      002E3A 08                    3007 	.db #0x08	; 8
      002E3B 18                    3008 	.db #0x18	; 24
      002E3C 00                    3009 	.db #0x00	; 0
      002E3D 00                    3010 	.db #0x00	; 0
      002E3E 00                    3011 	.db #0x00	; 0
      002E3F 16                    3012 	.db #0x16	; 22
      002E40 2A                    3013 	.db #0x2a	; 42
      002E41 2A                    3014 	.db #0x2a	; 42
      002E42 22                    3015 	.db #0x22	; 34
      002E43 22                    3016 	.db #0x22	; 34
      002E44 00                    3017 	.db #0x00	; 0
      002E45 00                    3018 	.db #0x00	; 0
      002E46 00                    3019 	.db #0x00	; 0
      002E47 0E                    3020 	.db #0x0e	; 14
      002E48 12                    3021 	.db #0x12	; 18
      002E49 12                    3022 	.db #0x12	; 18
      002E4A 12                    3023 	.db #0x12	; 18
      002E4B 12                    3024 	.db #0x12	; 18
      002E4C 00                    3025 	.db #0x00	; 0
      002E4D 00                    3026 	.db #0x00	; 0
      002E4E 00                    3027 	.db #0x00	; 0
      002E4F 1C                    3028 	.db #0x1c	; 28
      002E50 22                    3029 	.db #0x22	; 34
      002E51 22                    3030 	.db #0x22	; 34
      002E52 22                    3031 	.db #0x22	; 34
      002E53 1C                    3032 	.db #0x1c	; 28
      002E54 00                    3033 	.db #0x00	; 0
      002E55 00                    3034 	.db #0x00	; 0
      002E56 00                    3035 	.db #0x00	; 0
      002E57 1E                    3036 	.db #0x1e	; 30
      002E58 22                    3037 	.db #0x22	; 34
      002E59 22                    3038 	.db #0x22	; 34
      002E5A 22                    3039 	.db #0x22	; 34
      002E5B 1E                    3040 	.db #0x1e	; 30
      002E5C 02                    3041 	.db #0x02	; 2
      002E5D 00                    3042 	.db #0x00	; 0
      002E5E 00                    3043 	.db #0x00	; 0
      002E5F 3C                    3044 	.db #0x3c	; 60
      002E60 22                    3045 	.db #0x22	; 34
      002E61 22                    3046 	.db #0x22	; 34
      002E62 22                    3047 	.db #0x22	; 34
      002E63 3C                    3048 	.db #0x3c	; 60
      002E64 20                    3049 	.db #0x20	; 32
      002E65 00                    3050 	.db #0x00	; 0
      002E66 00                    3051 	.db #0x00	; 0
      002E67 1A                    3052 	.db #0x1a	; 26
      002E68 24                    3053 	.db #0x24	; 36
      002E69 04                    3054 	.db #0x04	; 4
      002E6A 04                    3055 	.db #0x04	; 4
      002E6B 0E                    3056 	.db #0x0e	; 14
      002E6C 00                    3057 	.db #0x00	; 0
      002E6D 00                    3058 	.db #0x00	; 0
      002E6E 00                    3059 	.db #0x00	; 0
      002E6F 1C                    3060 	.db #0x1c	; 28
      002E70 02                    3061 	.db #0x02	; 2
      002E71 1C                    3062 	.db #0x1c	; 28
      002E72 20                    3063 	.db #0x20	; 32
      002E73 1C                    3064 	.db #0x1c	; 28
      002E74 00                    3065 	.db #0x00	; 0
      002E75 00                    3066 	.db #0x00	; 0
      002E76 04                    3067 	.db #0x04	; 4
      002E77 1E                    3068 	.db #0x1e	; 30
      002E78 04                    3069 	.db #0x04	; 4
      002E79 04                    3070 	.db #0x04	; 4
      002E7A 14                    3071 	.db #0x14	; 20
      002E7B 08                    3072 	.db #0x08	; 8
      002E7C 00                    3073 	.db #0x00	; 0
      002E7D 00                    3074 	.db #0x00	; 0
      002E7E 00                    3075 	.db #0x00	; 0
      002E7F 12                    3076 	.db #0x12	; 18
      002E80 12                    3077 	.db #0x12	; 18
      002E81 12                    3078 	.db #0x12	; 18
      002E82 1A                    3079 	.db #0x1a	; 26
      002E83 14                    3080 	.db #0x14	; 20
      002E84 00                    3081 	.db #0x00	; 0
      002E85 00                    3082 	.db #0x00	; 0
      002E86 00                    3083 	.db #0x00	; 0
      002E87 22                    3084 	.db #0x22	; 34
      002E88 22                    3085 	.db #0x22	; 34
      002E89 22                    3086 	.db #0x22	; 34
      002E8A 14                    3087 	.db #0x14	; 20
      002E8B 08                    3088 	.db #0x08	; 8
      002E8C 00                    3089 	.db #0x00	; 0
      002E8D 00                    3090 	.db #0x00	; 0
      002E8E 00                    3091 	.db #0x00	; 0
      002E8F 22                    3092 	.db #0x22	; 34
      002E90 22                    3093 	.db #0x22	; 34
      002E91 2A                    3094 	.db #0x2a	; 42
      002E92 3E                    3095 	.db #0x3e	; 62
      002E93 14                    3096 	.db #0x14	; 20
      002E94 00                    3097 	.db #0x00	; 0
      002E95 00                    3098 	.db #0x00	; 0
      002E96 00                    3099 	.db #0x00	; 0
      002E97 12                    3100 	.db #0x12	; 18
      002E98 12                    3101 	.db #0x12	; 18
      002E99 0C                    3102 	.db #0x0c	; 12
      002E9A 12                    3103 	.db #0x12	; 18
      002E9B 12                    3104 	.db #0x12	; 18
      002E9C 00                    3105 	.db #0x00	; 0
      002E9D 00                    3106 	.db #0x00	; 0
      002E9E 00                    3107 	.db #0x00	; 0
      002E9F 12                    3108 	.db #0x12	; 18
      002EA0 12                    3109 	.db #0x12	; 18
      002EA1 12                    3110 	.db #0x12	; 18
      002EA2 1C                    3111 	.db #0x1c	; 28
      002EA3 08                    3112 	.db #0x08	; 8
      002EA4 06                    3113 	.db #0x06	; 6
      002EA5 00                    3114 	.db #0x00	; 0
      002EA6 00                    3115 	.db #0x00	; 0
      002EA7 1E                    3116 	.db #0x1e	; 30
      002EA8 10                    3117 	.db #0x10	; 16
      002EA9 0C                    3118 	.db #0x0c	; 12
      002EAA 02                    3119 	.db #0x02	; 2
      002EAB 1E                    3120 	.db #0x1e	; 30
      002EAC 00                    3121 	.db #0x00	; 0
      002EAD 18                    3122 	.db #0x18	; 24
      002EAE 04                    3123 	.db #0x04	; 4
      002EAF 04                    3124 	.db #0x04	; 4
      002EB0 06                    3125 	.db #0x06	; 6
      002EB1 04                    3126 	.db #0x04	; 4
      002EB2 04                    3127 	.db #0x04	; 4
      002EB3 18                    3128 	.db #0x18	; 24
      002EB4 00                    3129 	.db #0x00	; 0
      002EB5 08                    3130 	.db #0x08	; 8
      002EB6 08                    3131 	.db #0x08	; 8
      002EB7 08                    3132 	.db #0x08	; 8
      002EB8 00                    3133 	.db #0x00	; 0
      002EB9 08                    3134 	.db #0x08	; 8
      002EBA 08                    3135 	.db #0x08	; 8
      002EBB 08                    3136 	.db #0x08	; 8
      002EBC 00                    3137 	.db #0x00	; 0
      002EBD 0C                    3138 	.db #0x0c	; 12
      002EBE 10                    3139 	.db #0x10	; 16
      002EBF 10                    3140 	.db #0x10	; 16
      002EC0 30                    3141 	.db #0x30	; 48	'0'
      002EC1 10                    3142 	.db #0x10	; 16
      002EC2 10                    3143 	.db #0x10	; 16
      002EC3 0C                    3144 	.db #0x0c	; 12
      002EC4 00                    3145 	.db #0x00	; 0
      002EC5 14                    3146 	.db #0x14	; 20
      002EC6 0A                    3147 	.db #0x0a	; 10
      002EC7 00                    3148 	.db #0x00	; 0
      002EC8 00                    3149 	.db #0x00	; 0
      002EC9 00                    3150 	.db #0x00	; 0
      002ECA 00                    3151 	.db #0x00	; 0
      002ECB 00                    3152 	.db #0x00	; 0
      002ECC 00                    3153 	.db #0x00	; 0
      002ECD 08                    3154 	.db #0x08	; 8
      002ECE 1C                    3155 	.db #0x1c	; 28
      002ECF 36                    3156 	.db #0x36	; 54	'6'
      002ED0 22                    3157 	.db #0x22	; 34
      002ED1 22                    3158 	.db #0x22	; 34
      002ED2 3E                    3159 	.db #0x3e	; 62
      002ED3 00                    3160 	.db #0x00	; 0
      002ED4 00                    3161 	.db #0x00	; 0
      002ED5 1C                    3162 	.db #0x1c	; 28
      002ED6 22                    3163 	.db #0x22	; 34
      002ED7 02                    3164 	.db #0x02	; 2
      002ED8 02                    3165 	.db #0x02	; 2
      002ED9 22                    3166 	.db #0x22	; 34
      002EDA 1C                    3167 	.db #0x1c	; 28
      002EDB 08                    3168 	.db #0x08	; 8
      002EDC 0C                    3169 	.db #0x0c	; 12
      002EDD 12                    3170 	.db #0x12	; 18
      002EDE 00                    3171 	.db #0x00	; 0
      002EDF 12                    3172 	.db #0x12	; 18
      002EE0 12                    3173 	.db #0x12	; 18
      002EE1 12                    3174 	.db #0x12	; 18
      002EE2 1A                    3175 	.db #0x1a	; 26
      002EE3 14                    3176 	.db #0x14	; 20
      002EE4 00                    3177 	.db #0x00	; 0
      002EE5 30                    3178 	.db #0x30	; 48	'0'
      002EE6 00                    3179 	.db #0x00	; 0
      002EE7 1C                    3180 	.db #0x1c	; 28
      002EE8 22                    3181 	.db #0x22	; 34
      002EE9 1E                    3182 	.db #0x1e	; 30
      002EEA 02                    3183 	.db #0x02	; 2
      002EEB 1C                    3184 	.db #0x1c	; 28
      002EEC 00                    3185 	.db #0x00	; 0
      002EED 1C                    3186 	.db #0x1c	; 28
      002EEE 00                    3187 	.db #0x00	; 0
      002EEF 1C                    3188 	.db #0x1c	; 28
      002EF0 20                    3189 	.db #0x20	; 32
      002EF1 3C                    3190 	.db #0x3c	; 60
      002EF2 22                    3191 	.db #0x22	; 34
      002EF3 3C                    3192 	.db #0x3c	; 60
      002EF4 00                    3193 	.db #0x00	; 0
      002EF5 14                    3194 	.db #0x14	; 20
      002EF6 00                    3195 	.db #0x00	; 0
      002EF7 1C                    3196 	.db #0x1c	; 28
      002EF8 20                    3197 	.db #0x20	; 32
      002EF9 3C                    3198 	.db #0x3c	; 60
      002EFA 22                    3199 	.db #0x22	; 34
      002EFB 3C                    3200 	.db #0x3c	; 60
      002EFC 00                    3201 	.db #0x00	; 0
      002EFD 0C                    3202 	.db #0x0c	; 12
      002EFE 00                    3203 	.db #0x00	; 0
      002EFF 1C                    3204 	.db #0x1c	; 28
      002F00 20                    3205 	.db #0x20	; 32
      002F01 3C                    3206 	.db #0x3c	; 60
      002F02 22                    3207 	.db #0x22	; 34
      002F03 3C                    3208 	.db #0x3c	; 60
      002F04 00                    3209 	.db #0x00	; 0
      002F05 1C                    3210 	.db #0x1c	; 28
      002F06 14                    3211 	.db #0x14	; 20
      002F07 1C                    3212 	.db #0x1c	; 28
      002F08 20                    3213 	.db #0x20	; 32
      002F09 3C                    3214 	.db #0x3c	; 60
      002F0A 22                    3215 	.db #0x22	; 34
      002F0B 3C                    3216 	.db #0x3c	; 60
      002F0C 00                    3217 	.db #0x00	; 0
      002F0D 00                    3218 	.db #0x00	; 0
      002F0E 1C                    3219 	.db #0x1c	; 28
      002F0F 22                    3220 	.db #0x22	; 34
      002F10 02                    3221 	.db #0x02	; 2
      002F11 22                    3222 	.db #0x22	; 34
      002F12 1C                    3223 	.db #0x1c	; 28
      002F13 08                    3224 	.db #0x08	; 8
      002F14 0C                    3225 	.db #0x0c	; 12
      002F15 1C                    3226 	.db #0x1c	; 28
      002F16 00                    3227 	.db #0x00	; 0
      002F17 1C                    3228 	.db #0x1c	; 28
      002F18 22                    3229 	.db #0x22	; 34
      002F19 1E                    3230 	.db #0x1e	; 30
      002F1A 02                    3231 	.db #0x02	; 2
      002F1B 1C                    3232 	.db #0x1c	; 28
      002F1C 00                    3233 	.db #0x00	; 0
      002F1D 14                    3234 	.db #0x14	; 20
      002F1E 00                    3235 	.db #0x00	; 0
      002F1F 1C                    3236 	.db #0x1c	; 28
      002F20 22                    3237 	.db #0x22	; 34
      002F21 1E                    3238 	.db #0x1e	; 30
      002F22 02                    3239 	.db #0x02	; 2
      002F23 1C                    3240 	.db #0x1c	; 28
      002F24 00                    3241 	.db #0x00	; 0
      002F25 0C                    3242 	.db #0x0c	; 12
      002F26 00                    3243 	.db #0x00	; 0
      002F27 1C                    3244 	.db #0x1c	; 28
      002F28 22                    3245 	.db #0x22	; 34
      002F29 1E                    3246 	.db #0x1e	; 30
      002F2A 02                    3247 	.db #0x02	; 2
      002F2B 1C                    3248 	.db #0x1c	; 28
      002F2C 00                    3249 	.db #0x00	; 0
      002F2D 14                    3250 	.db #0x14	; 20
      002F2E 00                    3251 	.db #0x00	; 0
      002F2F 08                    3252 	.db #0x08	; 8
      002F30 08                    3253 	.db #0x08	; 8
      002F31 08                    3254 	.db #0x08	; 8
      002F32 08                    3255 	.db #0x08	; 8
      002F33 18                    3256 	.db #0x18	; 24
      002F34 00                    3257 	.db #0x00	; 0
      002F35 08                    3258 	.db #0x08	; 8
      002F36 14                    3259 	.db #0x14	; 20
      002F37 00                    3260 	.db #0x00	; 0
      002F38 08                    3261 	.db #0x08	; 8
      002F39 08                    3262 	.db #0x08	; 8
      002F3A 08                    3263 	.db #0x08	; 8
      002F3B 18                    3264 	.db #0x18	; 24
      002F3C 00                    3265 	.db #0x00	; 0
      002F3D 04                    3266 	.db #0x04	; 4
      002F3E 00                    3267 	.db #0x00	; 0
      002F3F 08                    3268 	.db #0x08	; 8
      002F40 08                    3269 	.db #0x08	; 8
      002F41 08                    3270 	.db #0x08	; 8
      002F42 08                    3271 	.db #0x08	; 8
      002F43 18                    3272 	.db #0x18	; 24
      002F44 00                    3273 	.db #0x00	; 0
      002F45 14                    3274 	.db #0x14	; 20
      002F46 00                    3275 	.db #0x00	; 0
      002F47 08                    3276 	.db #0x08	; 8
      002F48 14                    3277 	.db #0x14	; 20
      002F49 22                    3278 	.db #0x22	; 34
      002F4A 3E                    3279 	.db #0x3e	; 62
      002F4B 22                    3280 	.db #0x22	; 34
      002F4C 00                    3281 	.db #0x00	; 0
      002F4D 1C                    3282 	.db #0x1c	; 28
      002F4E 14                    3283 	.db #0x14	; 20
      002F4F 1C                    3284 	.db #0x1c	; 28
      002F50 36                    3285 	.db #0x36	; 54	'6'
      002F51 22                    3286 	.db #0x22	; 34
      002F52 3E                    3287 	.db #0x3e	; 62
      002F53 22                    3288 	.db #0x22	; 34
      002F54 00                    3289 	.db #0x00	; 0
      002F55 30                    3290 	.db #0x30	; 48	'0'
      002F56 00                    3291 	.db #0x00	; 0
      002F57 3E                    3292 	.db #0x3e	; 62
      002F58 02                    3293 	.db #0x02	; 2
      002F59 1E                    3294 	.db #0x1e	; 30
      002F5A 02                    3295 	.db #0x02	; 2
      002F5B 3E                    3296 	.db #0x3e	; 62
      002F5C 00                    3297 	.db #0x00	; 0
      002F5D 00                    3298 	.db #0x00	; 0
      002F5E 00                    3299 	.db #0x00	; 0
      002F5F 1E                    3300 	.db #0x1e	; 30
      002F60 28                    3301 	.db #0x28	; 40
      002F61 3E                    3302 	.db #0x3e	; 62
      002F62 0A                    3303 	.db #0x0a	; 10
      002F63 3C                    3304 	.db #0x3c	; 60
      002F64 00                    3305 	.db #0x00	; 0
      002F65 3C                    3306 	.db #0x3c	; 60
      002F66 0A                    3307 	.db #0x0a	; 10
      002F67 0A                    3308 	.db #0x0a	; 10
      002F68 3E                    3309 	.db #0x3e	; 62
      002F69 0A                    3310 	.db #0x0a	; 10
      002F6A 0A                    3311 	.db #0x0a	; 10
      002F6B 3A                    3312 	.db #0x3a	; 58
      002F6C 00                    3313 	.db #0x00	; 0
      002F6D 1C                    3314 	.db #0x1c	; 28
      002F6E 00                    3315 	.db #0x00	; 0
      002F6F 0C                    3316 	.db #0x0c	; 12
      002F70 12                    3317 	.db #0x12	; 18
      002F71 12                    3318 	.db #0x12	; 18
      002F72 12                    3319 	.db #0x12	; 18
      002F73 0C                    3320 	.db #0x0c	; 12
      002F74 00                    3321 	.db #0x00	; 0
      002F75 14                    3322 	.db #0x14	; 20
      002F76 00                    3323 	.db #0x00	; 0
      002F77 0C                    3324 	.db #0x0c	; 12
      002F78 12                    3325 	.db #0x12	; 18
      002F79 12                    3326 	.db #0x12	; 18
      002F7A 12                    3327 	.db #0x12	; 18
      002F7B 0C                    3328 	.db #0x0c	; 12
      002F7C 00                    3329 	.db #0x00	; 0
      002F7D 06                    3330 	.db #0x06	; 6
      002F7E 00                    3331 	.db #0x00	; 0
      002F7F 0C                    3332 	.db #0x0c	; 12
      002F80 12                    3333 	.db #0x12	; 18
      002F81 12                    3334 	.db #0x12	; 18
      002F82 12                    3335 	.db #0x12	; 18
      002F83 0C                    3336 	.db #0x0c	; 12
      002F84 00                    3337 	.db #0x00	; 0
      002F85 1C                    3338 	.db #0x1c	; 28
      002F86 00                    3339 	.db #0x00	; 0
      002F87 12                    3340 	.db #0x12	; 18
      002F88 12                    3341 	.db #0x12	; 18
      002F89 12                    3342 	.db #0x12	; 18
      002F8A 1A                    3343 	.db #0x1a	; 26
      002F8B 14                    3344 	.db #0x14	; 20
      002F8C 00                    3345 	.db #0x00	; 0
      002F8D 06                    3346 	.db #0x06	; 6
      002F8E 00                    3347 	.db #0x00	; 0
      002F8F 12                    3348 	.db #0x12	; 18
      002F90 12                    3349 	.db #0x12	; 18
      002F91 12                    3350 	.db #0x12	; 18
      002F92 1A                    3351 	.db #0x1a	; 26
      002F93 14                    3352 	.db #0x14	; 20
      002F94 00                    3353 	.db #0x00	; 0
      002F95 14                    3354 	.db #0x14	; 20
      002F96 00                    3355 	.db #0x00	; 0
      002F97 12                    3356 	.db #0x12	; 18
      002F98 12                    3357 	.db #0x12	; 18
      002F99 12                    3358 	.db #0x12	; 18
      002F9A 1C                    3359 	.db #0x1c	; 28
      002F9B 08                    3360 	.db #0x08	; 8
      002F9C 06                    3361 	.db #0x06	; 6
      002F9D 12                    3362 	.db #0x12	; 18
      002F9E 0C                    3363 	.db #0x0c	; 12
      002F9F 12                    3364 	.db #0x12	; 18
      002FA0 12                    3365 	.db #0x12	; 18
      002FA1 12                    3366 	.db #0x12	; 18
      002FA2 12                    3367 	.db #0x12	; 18
      002FA3 0C                    3368 	.db #0x0c	; 12
      002FA4 00                    3369 	.db #0x00	; 0
      002FA5 14                    3370 	.db #0x14	; 20
      002FA6 00                    3371 	.db #0x00	; 0
      002FA7 12                    3372 	.db #0x12	; 18
      002FA8 12                    3373 	.db #0x12	; 18
      002FA9 12                    3374 	.db #0x12	; 18
      002FAA 12                    3375 	.db #0x12	; 18
      002FAB 0C                    3376 	.db #0x0c	; 12
      002FAC 00                    3377 	.db #0x00	; 0
      002FAD 00                    3378 	.db #0x00	; 0
      002FAE 08                    3379 	.db #0x08	; 8
      002FAF 1C                    3380 	.db #0x1c	; 28
      002FB0 02                    3381 	.db #0x02	; 2
      002FB1 02                    3382 	.db #0x02	; 2
      002FB2 1C                    3383 	.db #0x1c	; 28
      002FB3 08                    3384 	.db #0x08	; 8
      002FB4 00                    3385 	.db #0x00	; 0
      002FB5 18                    3386 	.db #0x18	; 24
      002FB6 24                    3387 	.db #0x24	; 36
      002FB7 04                    3388 	.db #0x04	; 4
      002FB8 1E                    3389 	.db #0x1e	; 30
      002FB9 04                    3390 	.db #0x04	; 4
      002FBA 24                    3391 	.db #0x24	; 36
      002FBB 3A                    3392 	.db #0x3a	; 58
      002FBC 00                    3393 	.db #0x00	; 0
      002FBD 22                    3394 	.db #0x22	; 34
      002FBE 14                    3395 	.db #0x14	; 20
      002FBF 08                    3396 	.db #0x08	; 8
      002FC0 3E                    3397 	.db #0x3e	; 62
      002FC1 08                    3398 	.db #0x08	; 8
      002FC2 3E                    3399 	.db #0x3e	; 62
      002FC3 08                    3400 	.db #0x08	; 8
      002FC4 00                    3401 	.db #0x00	; 0
      002FC5 06                    3402 	.db #0x06	; 6
      002FC6 0A                    3403 	.db #0x0a	; 10
      002FC7 0A                    3404 	.db #0x0a	; 10
      002FC8 16                    3405 	.db #0x16	; 22
      002FC9 3A                    3406 	.db #0x3a	; 58
      002FCA 12                    3407 	.db #0x12	; 18
      002FCB 12                    3408 	.db #0x12	; 18
      002FCC 00                    3409 	.db #0x00	; 0
      002FCD 10                    3410 	.db #0x10	; 16
      002FCE 28                    3411 	.db #0x28	; 40
      002FCF 08                    3412 	.db #0x08	; 8
      002FD0 1C                    3413 	.db #0x1c	; 28
      002FD1 08                    3414 	.db #0x08	; 8
      002FD2 08                    3415 	.db #0x08	; 8
      002FD3 0A                    3416 	.db #0x0a	; 10
      002FD4 04                    3417 	.db #0x04	; 4
      002FD5 18                    3418 	.db #0x18	; 24
      002FD6 00                    3419 	.db #0x00	; 0
      002FD7 1C                    3420 	.db #0x1c	; 28
      002FD8 20                    3421 	.db #0x20	; 32
      002FD9 3C                    3422 	.db #0x3c	; 60
      002FDA 22                    3423 	.db #0x22	; 34
      002FDB 3C                    3424 	.db #0x3c	; 60
      002FDC 00                    3425 	.db #0x00	; 0
      002FDD 18                    3426 	.db #0x18	; 24
      002FDE 00                    3427 	.db #0x00	; 0
      002FDF 08                    3428 	.db #0x08	; 8
      002FE0 08                    3429 	.db #0x08	; 8
      002FE1 08                    3430 	.db #0x08	; 8
      002FE2 08                    3431 	.db #0x08	; 8
      002FE3 18                    3432 	.db #0x18	; 24
      002FE4 00                    3433 	.db #0x00	; 0
      002FE5 18                    3434 	.db #0x18	; 24
      002FE6 00                    3435 	.db #0x00	; 0
      002FE7 0C                    3436 	.db #0x0c	; 12
      002FE8 12                    3437 	.db #0x12	; 18
      002FE9 12                    3438 	.db #0x12	; 18
      002FEA 12                    3439 	.db #0x12	; 18
      002FEB 0C                    3440 	.db #0x0c	; 12
      002FEC 00                    3441 	.db #0x00	; 0
      002FED 18                    3442 	.db #0x18	; 24
      002FEE 00                    3443 	.db #0x00	; 0
      002FEF 12                    3444 	.db #0x12	; 18
      002FF0 12                    3445 	.db #0x12	; 18
      002FF1 12                    3446 	.db #0x12	; 18
      002FF2 1A                    3447 	.db #0x1a	; 26
      002FF3 14                    3448 	.db #0x14	; 20
      002FF4 00                    3449 	.db #0x00	; 0
      002FF5 14                    3450 	.db #0x14	; 20
      002FF6 0A                    3451 	.db #0x0a	; 10
      002FF7 00                    3452 	.db #0x00	; 0
      002FF8 0E                    3453 	.db #0x0e	; 14
      002FF9 12                    3454 	.db #0x12	; 18
      002FFA 12                    3455 	.db #0x12	; 18
      002FFB 12                    3456 	.db #0x12	; 18
      002FFC 00                    3457 	.db #0x00	; 0
      002FFD 14                    3458 	.db #0x14	; 20
      002FFE 0A                    3459 	.db #0x0a	; 10
      002FFF 00                    3460 	.db #0x00	; 0
      003000 12                    3461 	.db #0x12	; 18
      003001 16                    3462 	.db #0x16	; 22
      003002 1A                    3463 	.db #0x1a	; 26
      003003 12                    3464 	.db #0x12	; 18
      003004 00                    3465 	.db #0x00	; 0
      003005 1C                    3466 	.db #0x1c	; 28
      003006 20                    3467 	.db #0x20	; 32
      003007 3C                    3468 	.db #0x3c	; 60
      003008 22                    3469 	.db #0x22	; 34
      003009 3C                    3470 	.db #0x3c	; 60
      00300A 00                    3471 	.db #0x00	; 0
      00300B 3C                    3472 	.db #0x3c	; 60
      00300C 00                    3473 	.db #0x00	; 0
      00300D 0C                    3474 	.db #0x0c	; 12
      00300E 12                    3475 	.db #0x12	; 18
      00300F 12                    3476 	.db #0x12	; 18
      003010 12                    3477 	.db #0x12	; 18
      003011 0C                    3478 	.db #0x0c	; 12
      003012 00                    3479 	.db #0x00	; 0
      003013 1E                    3480 	.db #0x1e	; 30
      003014 00                    3481 	.db #0x00	; 0
      003015 08                    3482 	.db #0x08	; 8
      003016 00                    3483 	.db #0x00	; 0
      003017 08                    3484 	.db #0x08	; 8
      003018 0C                    3485 	.db #0x0c	; 12
      003019 02                    3486 	.db #0x02	; 2
      00301A 22                    3487 	.db #0x22	; 34
      00301B 1C                    3488 	.db #0x1c	; 28
      00301C 00                    3489 	.db #0x00	; 0
      00301D 00                    3490 	.db #0x00	; 0
      00301E 00                    3491 	.db #0x00	; 0
      00301F 3E                    3492 	.db #0x3e	; 62
      003020 02                    3493 	.db #0x02	; 2
      003021 02                    3494 	.db #0x02	; 2
      003022 02                    3495 	.db #0x02	; 2
      003023 00                    3496 	.db #0x00	; 0
      003024 00                    3497 	.db #0x00	; 0
      003025 00                    3498 	.db #0x00	; 0
      003026 00                    3499 	.db #0x00	; 0
      003027 3F                    3500 	.db #0x3f	; 63
      003028 20                    3501 	.db #0x20	; 32
      003029 20                    3502 	.db #0x20	; 32
      00302A 00                    3503 	.db #0x00	; 0
      00302B 00                    3504 	.db #0x00	; 0
      00302C 00                    3505 	.db #0x00	; 0
      00302D 02                    3506 	.db #0x02	; 2
      00302E 12                    3507 	.db #0x12	; 18
      00302F 0A                    3508 	.db #0x0a	; 10
      003030 1C                    3509 	.db #0x1c	; 28
      003031 22                    3510 	.db #0x22	; 34
      003032 10                    3511 	.db #0x10	; 16
      003033 38                    3512 	.db #0x38	; 56	'8'
      003034 00                    3513 	.db #0x00	; 0
      003035 02                    3514 	.db #0x02	; 2
      003036 12                    3515 	.db #0x12	; 18
      003037 0A                    3516 	.db #0x0a	; 10
      003038 34                    3517 	.db #0x34	; 52	'4'
      003039 2A                    3518 	.db #0x2a	; 42
      00303A 38                    3519 	.db #0x38	; 56	'8'
      00303B 20                    3520 	.db #0x20	; 32
      00303C 00                    3521 	.db #0x00	; 0
      00303D 08                    3522 	.db #0x08	; 8
      00303E 00                    3523 	.db #0x00	; 0
      00303F 08                    3524 	.db #0x08	; 8
      003040 08                    3525 	.db #0x08	; 8
      003041 1C                    3526 	.db #0x1c	; 28
      003042 1C                    3527 	.db #0x1c	; 28
      003043 08                    3528 	.db #0x08	; 8
      003044 00                    3529 	.db #0x00	; 0
      003045 00                    3530 	.db #0x00	; 0
      003046 00                    3531 	.db #0x00	; 0
      003047 24                    3532 	.db #0x24	; 36
      003048 12                    3533 	.db #0x12	; 18
      003049 24                    3534 	.db #0x24	; 36
      00304A 00                    3535 	.db #0x00	; 0
      00304B 00                    3536 	.db #0x00	; 0
      00304C 00                    3537 	.db #0x00	; 0
      00304D 00                    3538 	.db #0x00	; 0
      00304E 00                    3539 	.db #0x00	; 0
      00304F 12                    3540 	.db #0x12	; 18
      003050 24                    3541 	.db #0x24	; 36
      003051 12                    3542 	.db #0x12	; 18
      003052 00                    3543 	.db #0x00	; 0
      003053 00                    3544 	.db #0x00	; 0
      003054 00                    3545 	.db #0x00	; 0
      003055 2A                    3546 	.db #0x2a	; 42
      003056 00                    3547 	.db #0x00	; 0
      003057 15                    3548 	.db #0x15	; 21
      003058 00                    3549 	.db #0x00	; 0
      003059 2A                    3550 	.db #0x2a	; 42
      00305A 00                    3551 	.db #0x00	; 0
      00305B 15                    3552 	.db #0x15	; 21
      00305C 00                    3553 	.db #0x00	; 0
      00305D 2A                    3554 	.db #0x2a	; 42
      00305E 15                    3555 	.db #0x15	; 21
      00305F 2A                    3556 	.db #0x2a	; 42
      003060 15                    3557 	.db #0x15	; 21
      003061 2A                    3558 	.db #0x2a	; 42
      003062 15                    3559 	.db #0x15	; 21
      003063 2A                    3560 	.db #0x2a	; 42
      003064 15                    3561 	.db #0x15	; 21
      003065 15                    3562 	.db #0x15	; 21
      003066 3F                    3563 	.db #0x3f	; 63
      003067 2A                    3564 	.db #0x2a	; 42
      003068 3F                    3565 	.db #0x3f	; 63
      003069 15                    3566 	.db #0x15	; 21
      00306A 3F                    3567 	.db #0x3f	; 63
      00306B 2A                    3568 	.db #0x2a	; 42
      00306C 3F                    3569 	.db #0x3f	; 63
      00306D 08                    3570 	.db #0x08	; 8
      00306E 08                    3571 	.db #0x08	; 8
      00306F 08                    3572 	.db #0x08	; 8
      003070 08                    3573 	.db #0x08	; 8
      003071 08                    3574 	.db #0x08	; 8
      003072 08                    3575 	.db #0x08	; 8
      003073 08                    3576 	.db #0x08	; 8
      003074 08                    3577 	.db #0x08	; 8
      003075 08                    3578 	.db #0x08	; 8
      003076 08                    3579 	.db #0x08	; 8
      003077 08                    3580 	.db #0x08	; 8
      003078 0F                    3581 	.db #0x0f	; 15
      003079 08                    3582 	.db #0x08	; 8
      00307A 08                    3583 	.db #0x08	; 8
      00307B 08                    3584 	.db #0x08	; 8
      00307C 08                    3585 	.db #0x08	; 8
      00307D 08                    3586 	.db #0x08	; 8
      00307E 0F                    3587 	.db #0x0f	; 15
      00307F 08                    3588 	.db #0x08	; 8
      003080 0F                    3589 	.db #0x0f	; 15
      003081 08                    3590 	.db #0x08	; 8
      003082 08                    3591 	.db #0x08	; 8
      003083 08                    3592 	.db #0x08	; 8
      003084 08                    3593 	.db #0x08	; 8
      003085 0A                    3594 	.db #0x0a	; 10
      003086 0A                    3595 	.db #0x0a	; 10
      003087 0A                    3596 	.db #0x0a	; 10
      003088 0B                    3597 	.db #0x0b	; 11
      003089 0A                    3598 	.db #0x0a	; 10
      00308A 0A                    3599 	.db #0x0a	; 10
      00308B 0A                    3600 	.db #0x0a	; 10
      00308C 0A                    3601 	.db #0x0a	; 10
      00308D 00                    3602 	.db #0x00	; 0
      00308E 00                    3603 	.db #0x00	; 0
      00308F 00                    3604 	.db #0x00	; 0
      003090 0F                    3605 	.db #0x0f	; 15
      003091 0A                    3606 	.db #0x0a	; 10
      003092 0A                    3607 	.db #0x0a	; 10
      003093 0A                    3608 	.db #0x0a	; 10
      003094 0A                    3609 	.db #0x0a	; 10
      003095 00                    3610 	.db #0x00	; 0
      003096 0F                    3611 	.db #0x0f	; 15
      003097 08                    3612 	.db #0x08	; 8
      003098 0F                    3613 	.db #0x0f	; 15
      003099 08                    3614 	.db #0x08	; 8
      00309A 08                    3615 	.db #0x08	; 8
      00309B 08                    3616 	.db #0x08	; 8
      00309C 08                    3617 	.db #0x08	; 8
      00309D 0A                    3618 	.db #0x0a	; 10
      00309E 0B                    3619 	.db #0x0b	; 11
      00309F 08                    3620 	.db #0x08	; 8
      0030A0 0B                    3621 	.db #0x0b	; 11
      0030A1 0A                    3622 	.db #0x0a	; 10
      0030A2 0A                    3623 	.db #0x0a	; 10
      0030A3 0A                    3624 	.db #0x0a	; 10
      0030A4 0A                    3625 	.db #0x0a	; 10
      0030A5 0A                    3626 	.db #0x0a	; 10
      0030A6 0A                    3627 	.db #0x0a	; 10
      0030A7 0A                    3628 	.db #0x0a	; 10
      0030A8 0A                    3629 	.db #0x0a	; 10
      0030A9 0A                    3630 	.db #0x0a	; 10
      0030AA 0A                    3631 	.db #0x0a	; 10
      0030AB 0A                    3632 	.db #0x0a	; 10
      0030AC 0A                    3633 	.db #0x0a	; 10
      0030AD 00                    3634 	.db #0x00	; 0
      0030AE 0F                    3635 	.db #0x0f	; 15
      0030AF 08                    3636 	.db #0x08	; 8
      0030B0 0B                    3637 	.db #0x0b	; 11
      0030B1 0A                    3638 	.db #0x0a	; 10
      0030B2 0A                    3639 	.db #0x0a	; 10
      0030B3 0A                    3640 	.db #0x0a	; 10
      0030B4 0A                    3641 	.db #0x0a	; 10
      0030B5 0A                    3642 	.db #0x0a	; 10
      0030B6 0B                    3643 	.db #0x0b	; 11
      0030B7 08                    3644 	.db #0x08	; 8
      0030B8 0F                    3645 	.db #0x0f	; 15
      0030B9 00                    3646 	.db #0x00	; 0
      0030BA 00                    3647 	.db #0x00	; 0
      0030BB 00                    3648 	.db #0x00	; 0
      0030BC 00                    3649 	.db #0x00	; 0
      0030BD 0A                    3650 	.db #0x0a	; 10
      0030BE 0A                    3651 	.db #0x0a	; 10
      0030BF 0A                    3652 	.db #0x0a	; 10
      0030C0 0F                    3653 	.db #0x0f	; 15
      0030C1 00                    3654 	.db #0x00	; 0
      0030C2 00                    3655 	.db #0x00	; 0
      0030C3 00                    3656 	.db #0x00	; 0
      0030C4 00                    3657 	.db #0x00	; 0
      0030C5 08                    3658 	.db #0x08	; 8
      0030C6 0F                    3659 	.db #0x0f	; 15
      0030C7 08                    3660 	.db #0x08	; 8
      0030C8 0F                    3661 	.db #0x0f	; 15
      0030C9 00                    3662 	.db #0x00	; 0
      0030CA 00                    3663 	.db #0x00	; 0
      0030CB 00                    3664 	.db #0x00	; 0
      0030CC 00                    3665 	.db #0x00	; 0
      0030CD 00                    3666 	.db #0x00	; 0
      0030CE 00                    3667 	.db #0x00	; 0
      0030CF 00                    3668 	.db #0x00	; 0
      0030D0 0F                    3669 	.db #0x0f	; 15
      0030D1 08                    3670 	.db #0x08	; 8
      0030D2 08                    3671 	.db #0x08	; 8
      0030D3 08                    3672 	.db #0x08	; 8
      0030D4 08                    3673 	.db #0x08	; 8
      0030D5 08                    3674 	.db #0x08	; 8
      0030D6 08                    3675 	.db #0x08	; 8
      0030D7 08                    3676 	.db #0x08	; 8
      0030D8 38                    3677 	.db #0x38	; 56	'8'
      0030D9 00                    3678 	.db #0x00	; 0
      0030DA 00                    3679 	.db #0x00	; 0
      0030DB 00                    3680 	.db #0x00	; 0
      0030DC 00                    3681 	.db #0x00	; 0
      0030DD 08                    3682 	.db #0x08	; 8
      0030DE 08                    3683 	.db #0x08	; 8
      0030DF 08                    3684 	.db #0x08	; 8
      0030E0 3F                    3685 	.db #0x3f	; 63
      0030E1 00                    3686 	.db #0x00	; 0
      0030E2 00                    3687 	.db #0x00	; 0
      0030E3 00                    3688 	.db #0x00	; 0
      0030E4 00                    3689 	.db #0x00	; 0
      0030E5 00                    3690 	.db #0x00	; 0
      0030E6 00                    3691 	.db #0x00	; 0
      0030E7 00                    3692 	.db #0x00	; 0
      0030E8 3F                    3693 	.db #0x3f	; 63
      0030E9 08                    3694 	.db #0x08	; 8
      0030EA 08                    3695 	.db #0x08	; 8
      0030EB 08                    3696 	.db #0x08	; 8
      0030EC 08                    3697 	.db #0x08	; 8
      0030ED 08                    3698 	.db #0x08	; 8
      0030EE 08                    3699 	.db #0x08	; 8
      0030EF 08                    3700 	.db #0x08	; 8
      0030F0 38                    3701 	.db #0x38	; 56	'8'
      0030F1 08                    3702 	.db #0x08	; 8
      0030F2 08                    3703 	.db #0x08	; 8
      0030F3 08                    3704 	.db #0x08	; 8
      0030F4 08                    3705 	.db #0x08	; 8
      0030F5 00                    3706 	.db #0x00	; 0
      0030F6 00                    3707 	.db #0x00	; 0
      0030F7 00                    3708 	.db #0x00	; 0
      0030F8 3F                    3709 	.db #0x3f	; 63
      0030F9 00                    3710 	.db #0x00	; 0
      0030FA 00                    3711 	.db #0x00	; 0
      0030FB 00                    3712 	.db #0x00	; 0
      0030FC 00                    3713 	.db #0x00	; 0
      0030FD 08                    3714 	.db #0x08	; 8
      0030FE 08                    3715 	.db #0x08	; 8
      0030FF 08                    3716 	.db #0x08	; 8
      003100 3F                    3717 	.db #0x3f	; 63
      003101 08                    3718 	.db #0x08	; 8
      003102 08                    3719 	.db #0x08	; 8
      003103 08                    3720 	.db #0x08	; 8
      003104 08                    3721 	.db #0x08	; 8
      003105 08                    3722 	.db #0x08	; 8
      003106 38                    3723 	.db #0x38	; 56	'8'
      003107 08                    3724 	.db #0x08	; 8
      003108 38                    3725 	.db #0x38	; 56	'8'
      003109 08                    3726 	.db #0x08	; 8
      00310A 08                    3727 	.db #0x08	; 8
      00310B 08                    3728 	.db #0x08	; 8
      00310C 08                    3729 	.db #0x08	; 8
      00310D 0A                    3730 	.db #0x0a	; 10
      00310E 0A                    3731 	.db #0x0a	; 10
      00310F 0A                    3732 	.db #0x0a	; 10
      003110 3A                    3733 	.db #0x3a	; 58
      003111 0A                    3734 	.db #0x0a	; 10
      003112 0A                    3735 	.db #0x0a	; 10
      003113 0A                    3736 	.db #0x0a	; 10
      003114 0A                    3737 	.db #0x0a	; 10
      003115 0A                    3738 	.db #0x0a	; 10
      003116 3A                    3739 	.db #0x3a	; 58
      003117 02                    3740 	.db #0x02	; 2
      003118 3E                    3741 	.db #0x3e	; 62
      003119 00                    3742 	.db #0x00	; 0
      00311A 00                    3743 	.db #0x00	; 0
      00311B 00                    3744 	.db #0x00	; 0
      00311C 00                    3745 	.db #0x00	; 0
      00311D 00                    3746 	.db #0x00	; 0
      00311E 3E                    3747 	.db #0x3e	; 62
      00311F 02                    3748 	.db #0x02	; 2
      003120 3A                    3749 	.db #0x3a	; 58
      003121 0A                    3750 	.db #0x0a	; 10
      003122 0A                    3751 	.db #0x0a	; 10
      003123 0A                    3752 	.db #0x0a	; 10
      003124 0A                    3753 	.db #0x0a	; 10
      003125 0A                    3754 	.db #0x0a	; 10
      003126 3B                    3755 	.db #0x3b	; 59
      003127 00                    3756 	.db #0x00	; 0
      003128 3F                    3757 	.db #0x3f	; 63
      003129 00                    3758 	.db #0x00	; 0
      00312A 00                    3759 	.db #0x00	; 0
      00312B 00                    3760 	.db #0x00	; 0
      00312C 00                    3761 	.db #0x00	; 0
      00312D 00                    3762 	.db #0x00	; 0
      00312E 3F                    3763 	.db #0x3f	; 63
      00312F 00                    3764 	.db #0x00	; 0
      003130 3B                    3765 	.db #0x3b	; 59
      003131 0A                    3766 	.db #0x0a	; 10
      003132 0A                    3767 	.db #0x0a	; 10
      003133 0A                    3768 	.db #0x0a	; 10
      003134 0A                    3769 	.db #0x0a	; 10
      003135 0A                    3770 	.db #0x0a	; 10
      003136 3A                    3771 	.db #0x3a	; 58
      003137 02                    3772 	.db #0x02	; 2
      003138 3A                    3773 	.db #0x3a	; 58
      003139 0A                    3774 	.db #0x0a	; 10
      00313A 0A                    3775 	.db #0x0a	; 10
      00313B 0A                    3776 	.db #0x0a	; 10
      00313C 0A                    3777 	.db #0x0a	; 10
      00313D 00                    3778 	.db #0x00	; 0
      00313E 3F                    3779 	.db #0x3f	; 63
      00313F 00                    3780 	.db #0x00	; 0
      003140 3F                    3781 	.db #0x3f	; 63
      003141 00                    3782 	.db #0x00	; 0
      003142 00                    3783 	.db #0x00	; 0
      003143 00                    3784 	.db #0x00	; 0
      003144 00                    3785 	.db #0x00	; 0
      003145 0A                    3786 	.db #0x0a	; 10
      003146 3B                    3787 	.db #0x3b	; 59
      003147 00                    3788 	.db #0x00	; 0
      003148 3B                    3789 	.db #0x3b	; 59
      003149 0A                    3790 	.db #0x0a	; 10
      00314A 0A                    3791 	.db #0x0a	; 10
      00314B 0A                    3792 	.db #0x0a	; 10
      00314C 0A                    3793 	.db #0x0a	; 10
      00314D 08                    3794 	.db #0x08	; 8
      00314E 3F                    3795 	.db #0x3f	; 63
      00314F 00                    3796 	.db #0x00	; 0
      003150 3F                    3797 	.db #0x3f	; 63
      003151 00                    3798 	.db #0x00	; 0
      003152 00                    3799 	.db #0x00	; 0
      003153 00                    3800 	.db #0x00	; 0
      003154 00                    3801 	.db #0x00	; 0
      003155 0A                    3802 	.db #0x0a	; 10
      003156 0A                    3803 	.db #0x0a	; 10
      003157 0A                    3804 	.db #0x0a	; 10
      003158 3F                    3805 	.db #0x3f	; 63
      003159 00                    3806 	.db #0x00	; 0
      00315A 00                    3807 	.db #0x00	; 0
      00315B 00                    3808 	.db #0x00	; 0
      00315C 00                    3809 	.db #0x00	; 0
      00315D 00                    3810 	.db #0x00	; 0
      00315E 3F                    3811 	.db #0x3f	; 63
      00315F 00                    3812 	.db #0x00	; 0
      003160 3F                    3813 	.db #0x3f	; 63
      003161 08                    3814 	.db #0x08	; 8
      003162 08                    3815 	.db #0x08	; 8
      003163 08                    3816 	.db #0x08	; 8
      003164 08                    3817 	.db #0x08	; 8
      003165 00                    3818 	.db #0x00	; 0
      003166 00                    3819 	.db #0x00	; 0
      003167 00                    3820 	.db #0x00	; 0
      003168 3F                    3821 	.db #0x3f	; 63
      003169 0A                    3822 	.db #0x0a	; 10
      00316A 0A                    3823 	.db #0x0a	; 10
      00316B 0A                    3824 	.db #0x0a	; 10
      00316C 0A                    3825 	.db #0x0a	; 10
      00316D 0A                    3826 	.db #0x0a	; 10
      00316E 0A                    3827 	.db #0x0a	; 10
      00316F 0A                    3828 	.db #0x0a	; 10
      003170 3E                    3829 	.db #0x3e	; 62
      003171 00                    3830 	.db #0x00	; 0
      003172 00                    3831 	.db #0x00	; 0
      003173 00                    3832 	.db #0x00	; 0
      003174 00                    3833 	.db #0x00	; 0
      003175 08                    3834 	.db #0x08	; 8
      003176 38                    3835 	.db #0x38	; 56	'8'
      003177 08                    3836 	.db #0x08	; 8
      003178 38                    3837 	.db #0x38	; 56	'8'
      003179 00                    3838 	.db #0x00	; 0
      00317A 00                    3839 	.db #0x00	; 0
      00317B 00                    3840 	.db #0x00	; 0
      00317C 00                    3841 	.db #0x00	; 0
      00317D 00                    3842 	.db #0x00	; 0
      00317E 38                    3843 	.db #0x38	; 56	'8'
      00317F 08                    3844 	.db #0x08	; 8
      003180 38                    3845 	.db #0x38	; 56	'8'
      003181 08                    3846 	.db #0x08	; 8
      003182 08                    3847 	.db #0x08	; 8
      003183 08                    3848 	.db #0x08	; 8
      003184 08                    3849 	.db #0x08	; 8
      003185 00                    3850 	.db #0x00	; 0
      003186 00                    3851 	.db #0x00	; 0
      003187 00                    3852 	.db #0x00	; 0
      003188 3E                    3853 	.db #0x3e	; 62
      003189 0A                    3854 	.db #0x0a	; 10
      00318A 0A                    3855 	.db #0x0a	; 10
      00318B 0A                    3856 	.db #0x0a	; 10
      00318C 0A                    3857 	.db #0x0a	; 10
      00318D 0A                    3858 	.db #0x0a	; 10
      00318E 0A                    3859 	.db #0x0a	; 10
      00318F 0A                    3860 	.db #0x0a	; 10
      003190 3B                    3861 	.db #0x3b	; 59
      003191 0A                    3862 	.db #0x0a	; 10
      003192 0A                    3863 	.db #0x0a	; 10
      003193 0A                    3864 	.db #0x0a	; 10
      003194 0A                    3865 	.db #0x0a	; 10
      003195 08                    3866 	.db #0x08	; 8
      003196 3F                    3867 	.db #0x3f	; 63
      003197 00                    3868 	.db #0x00	; 0
      003198 3F                    3869 	.db #0x3f	; 63
      003199 08                    3870 	.db #0x08	; 8
      00319A 08                    3871 	.db #0x08	; 8
      00319B 08                    3872 	.db #0x08	; 8
      00319C 08                    3873 	.db #0x08	; 8
      00319D 08                    3874 	.db #0x08	; 8
      00319E 08                    3875 	.db #0x08	; 8
      00319F 08                    3876 	.db #0x08	; 8
      0031A0 0F                    3877 	.db #0x0f	; 15
      0031A1 00                    3878 	.db #0x00	; 0
      0031A2 00                    3879 	.db #0x00	; 0
      0031A3 00                    3880 	.db #0x00	; 0
      0031A4 00                    3881 	.db #0x00	; 0
      0031A5 00                    3882 	.db #0x00	; 0
      0031A6 00                    3883 	.db #0x00	; 0
      0031A7 00                    3884 	.db #0x00	; 0
      0031A8 38                    3885 	.db #0x38	; 56	'8'
      0031A9 08                    3886 	.db #0x08	; 8
      0031AA 08                    3887 	.db #0x08	; 8
      0031AB 08                    3888 	.db #0x08	; 8
      0031AC 08                    3889 	.db #0x08	; 8
      0031AD 3F                    3890 	.db #0x3f	; 63
      0031AE 3F                    3891 	.db #0x3f	; 63
      0031AF 3F                    3892 	.db #0x3f	; 63
      0031B0 3F                    3893 	.db #0x3f	; 63
      0031B1 3F                    3894 	.db #0x3f	; 63
      0031B2 3F                    3895 	.db #0x3f	; 63
      0031B3 3F                    3896 	.db #0x3f	; 63
      0031B4 3F                    3897 	.db #0x3f	; 63
      0031B5 00                    3898 	.db #0x00	; 0
      0031B6 00                    3899 	.db #0x00	; 0
      0031B7 00                    3900 	.db #0x00	; 0
      0031B8 00                    3901 	.db #0x00	; 0
      0031B9 3F                    3902 	.db #0x3f	; 63
      0031BA 3F                    3903 	.db #0x3f	; 63
      0031BB 3F                    3904 	.db #0x3f	; 63
      0031BC 3F                    3905 	.db #0x3f	; 63
      0031BD 07                    3906 	.db #0x07	; 7
      0031BE 07                    3907 	.db #0x07	; 7
      0031BF 07                    3908 	.db #0x07	; 7
      0031C0 07                    3909 	.db #0x07	; 7
      0031C1 07                    3910 	.db #0x07	; 7
      0031C2 07                    3911 	.db #0x07	; 7
      0031C3 07                    3912 	.db #0x07	; 7
      0031C4 07                    3913 	.db #0x07	; 7
      0031C5 38                    3914 	.db #0x38	; 56	'8'
      0031C6 38                    3915 	.db #0x38	; 56	'8'
      0031C7 38                    3916 	.db #0x38	; 56	'8'
      0031C8 38                    3917 	.db #0x38	; 56	'8'
      0031C9 38                    3918 	.db #0x38	; 56	'8'
      0031CA 38                    3919 	.db #0x38	; 56	'8'
      0031CB 38                    3920 	.db #0x38	; 56	'8'
      0031CC 38                    3921 	.db #0x38	; 56	'8'
      0031CD 3F                    3922 	.db #0x3f	; 63
      0031CE 3F                    3923 	.db #0x3f	; 63
      0031CF 3F                    3924 	.db #0x3f	; 63
      0031D0 3F                    3925 	.db #0x3f	; 63
      0031D1 00                    3926 	.db #0x00	; 0
      0031D2 00                    3927 	.db #0x00	; 0
      0031D3 00                    3928 	.db #0x00	; 0
      0031D4 00                    3929 	.db #0x00	; 0
      0031D5 00                    3930 	.db #0x00	; 0
      0031D6 00                    3931 	.db #0x00	; 0
      0031D7 2C                    3932 	.db #0x2c	; 44
      0031D8 12                    3933 	.db #0x12	; 18
      0031D9 12                    3934 	.db #0x12	; 18
      0031DA 2C                    3935 	.db #0x2c	; 44
      0031DB 00                    3936 	.db #0x00	; 0
      0031DC 00                    3937 	.db #0x00	; 0
      0031DD 00                    3938 	.db #0x00	; 0
      0031DE 0E                    3939 	.db #0x0e	; 14
      0031DF 12                    3940 	.db #0x12	; 18
      0031E0 0E                    3941 	.db #0x0e	; 14
      0031E1 12                    3942 	.db #0x12	; 18
      0031E2 12                    3943 	.db #0x12	; 18
      0031E3 0E                    3944 	.db #0x0e	; 14
      0031E4 02                    3945 	.db #0x02	; 2
      0031E5 1E                    3946 	.db #0x1e	; 30
      0031E6 12                    3947 	.db #0x12	; 18
      0031E7 02                    3948 	.db #0x02	; 2
      0031E8 02                    3949 	.db #0x02	; 2
      0031E9 02                    3950 	.db #0x02	; 2
      0031EA 02                    3951 	.db #0x02	; 2
      0031EB 02                    3952 	.db #0x02	; 2
      0031EC 00                    3953 	.db #0x00	; 0
      0031ED 00                    3954 	.db #0x00	; 0
      0031EE 3E                    3955 	.db #0x3e	; 62
      0031EF 14                    3956 	.db #0x14	; 20
      0031F0 14                    3957 	.db #0x14	; 20
      0031F1 14                    3958 	.db #0x14	; 20
      0031F2 14                    3959 	.db #0x14	; 20
      0031F3 14                    3960 	.db #0x14	; 20
      0031F4 00                    3961 	.db #0x00	; 0
      0031F5 1E                    3962 	.db #0x1e	; 30
      0031F6 12                    3963 	.db #0x12	; 18
      0031F7 04                    3964 	.db #0x04	; 4
      0031F8 08                    3965 	.db #0x08	; 8
      0031F9 04                    3966 	.db #0x04	; 4
      0031FA 12                    3967 	.db #0x12	; 18
      0031FB 1E                    3968 	.db #0x1e	; 30
      0031FC 00                    3969 	.db #0x00	; 0
      0031FD 00                    3970 	.db #0x00	; 0
      0031FE 00                    3971 	.db #0x00	; 0
      0031FF 3C                    3972 	.db #0x3c	; 60
      003200 12                    3973 	.db #0x12	; 18
      003201 12                    3974 	.db #0x12	; 18
      003202 0C                    3975 	.db #0x0c	; 12
      003203 00                    3976 	.db #0x00	; 0
      003204 00                    3977 	.db #0x00	; 0
      003205 00                    3978 	.db #0x00	; 0
      003206 00                    3979 	.db #0x00	; 0
      003207 12                    3980 	.db #0x12	; 18
      003208 12                    3981 	.db #0x12	; 18
      003209 12                    3982 	.db #0x12	; 18
      00320A 0E                    3983 	.db #0x0e	; 14
      00320B 02                    3984 	.db #0x02	; 2
      00320C 02                    3985 	.db #0x02	; 2
      00320D 00                    3986 	.db #0x00	; 0
      00320E 00                    3987 	.db #0x00	; 0
      00320F 14                    3988 	.db #0x14	; 20
      003210 0A                    3989 	.db #0x0a	; 10
      003211 08                    3990 	.db #0x08	; 8
      003212 08                    3991 	.db #0x08	; 8
      003213 08                    3992 	.db #0x08	; 8
      003214 00                    3993 	.db #0x00	; 0
      003215 1C                    3994 	.db #0x1c	; 28
      003216 08                    3995 	.db #0x08	; 8
      003217 1C                    3996 	.db #0x1c	; 28
      003218 22                    3997 	.db #0x22	; 34
      003219 1C                    3998 	.db #0x1c	; 28
      00321A 08                    3999 	.db #0x08	; 8
      00321B 1C                    4000 	.db #0x1c	; 28
      00321C 00                    4001 	.db #0x00	; 0
      00321D 0C                    4002 	.db #0x0c	; 12
      00321E 12                    4003 	.db #0x12	; 18
      00321F 12                    4004 	.db #0x12	; 18
      003220 1E                    4005 	.db #0x1e	; 30
      003221 12                    4006 	.db #0x12	; 18
      003222 12                    4007 	.db #0x12	; 18
      003223 0C                    4008 	.db #0x0c	; 12
      003224 00                    4009 	.db #0x00	; 0
      003225 00                    4010 	.db #0x00	; 0
      003226 1C                    4011 	.db #0x1c	; 28
      003227 22                    4012 	.db #0x22	; 34
      003228 22                    4013 	.db #0x22	; 34
      003229 14                    4014 	.db #0x14	; 20
      00322A 14                    4015 	.db #0x14	; 20
      00322B 36                    4016 	.db #0x36	; 54	'6'
      00322C 00                    4017 	.db #0x00	; 0
      00322D 0C                    4018 	.db #0x0c	; 12
      00322E 02                    4019 	.db #0x02	; 2
      00322F 04                    4020 	.db #0x04	; 4
      003230 08                    4021 	.db #0x08	; 8
      003231 1C                    4022 	.db #0x1c	; 28
      003232 12                    4023 	.db #0x12	; 18
      003233 0C                    4024 	.db #0x0c	; 12
      003234 00                    4025 	.db #0x00	; 0
      003235 00                    4026 	.db #0x00	; 0
      003236 00                    4027 	.db #0x00	; 0
      003237 14                    4028 	.db #0x14	; 20
      003238 2A                    4029 	.db #0x2a	; 42
      003239 2A                    4030 	.db #0x2a	; 42
      00323A 14                    4031 	.db #0x14	; 20
      00323B 00                    4032 	.db #0x00	; 0
      00323C 00                    4033 	.db #0x00	; 0
      00323D 00                    4034 	.db #0x00	; 0
      00323E 08                    4035 	.db #0x08	; 8
      00323F 1C                    4036 	.db #0x1c	; 28
      003240 2A                    4037 	.db #0x2a	; 42
      003241 2A                    4038 	.db #0x2a	; 42
      003242 1C                    4039 	.db #0x1c	; 28
      003243 08                    4040 	.db #0x08	; 8
      003244 00                    4041 	.db #0x00	; 0
      003245 00                    4042 	.db #0x00	; 0
      003246 1C                    4043 	.db #0x1c	; 28
      003247 02                    4044 	.db #0x02	; 2
      003248 1E                    4045 	.db #0x1e	; 30
      003249 02                    4046 	.db #0x02	; 2
      00324A 1C                    4047 	.db #0x1c	; 28
      00324B 00                    4048 	.db #0x00	; 0
      00324C 00                    4049 	.db #0x00	; 0
      00324D 00                    4050 	.db #0x00	; 0
      00324E 0C                    4051 	.db #0x0c	; 12
      00324F 12                    4052 	.db #0x12	; 18
      003250 12                    4053 	.db #0x12	; 18
      003251 12                    4054 	.db #0x12	; 18
      003252 12                    4055 	.db #0x12	; 18
      003253 00                    4056 	.db #0x00	; 0
      003254 00                    4057 	.db #0x00	; 0
      003255 00                    4058 	.db #0x00	; 0
      003256 1E                    4059 	.db #0x1e	; 30
      003257 00                    4060 	.db #0x00	; 0
      003258 1E                    4061 	.db #0x1e	; 30
      003259 00                    4062 	.db #0x00	; 0
      00325A 1E                    4063 	.db #0x1e	; 30
      00325B 00                    4064 	.db #0x00	; 0
      00325C 00                    4065 	.db #0x00	; 0
      00325D 00                    4066 	.db #0x00	; 0
      00325E 08                    4067 	.db #0x08	; 8
      00325F 1C                    4068 	.db #0x1c	; 28
      003260 08                    4069 	.db #0x08	; 8
      003261 00                    4070 	.db #0x00	; 0
      003262 1C                    4071 	.db #0x1c	; 28
      003263 00                    4072 	.db #0x00	; 0
      003264 00                    4073 	.db #0x00	; 0
      003265 02                    4074 	.db #0x02	; 2
      003266 0C                    4075 	.db #0x0c	; 12
      003267 10                    4076 	.db #0x10	; 16
      003268 0C                    4077 	.db #0x0c	; 12
      003269 02                    4078 	.db #0x02	; 2
      00326A 00                    4079 	.db #0x00	; 0
      00326B 1E                    4080 	.db #0x1e	; 30
      00326C 00                    4081 	.db #0x00	; 0
      00326D 10                    4082 	.db #0x10	; 16
      00326E 0C                    4083 	.db #0x0c	; 12
      00326F 02                    4084 	.db #0x02	; 2
      003270 0C                    4085 	.db #0x0c	; 12
      003271 10                    4086 	.db #0x10	; 16
      003272 00                    4087 	.db #0x00	; 0
      003273 1E                    4088 	.db #0x1e	; 30
      003274 00                    4089 	.db #0x00	; 0
      003275 00                    4090 	.db #0x00	; 0
      003276 10                    4091 	.db #0x10	; 16
      003277 28                    4092 	.db #0x28	; 40
      003278 08                    4093 	.db #0x08	; 8
      003279 08                    4094 	.db #0x08	; 8
      00327A 08                    4095 	.db #0x08	; 8
      00327B 08                    4096 	.db #0x08	; 8
      00327C 08                    4097 	.db #0x08	; 8
      00327D 08                    4098 	.db #0x08	; 8
      00327E 08                    4099 	.db #0x08	; 8
      00327F 08                    4100 	.db #0x08	; 8
      003280 08                    4101 	.db #0x08	; 8
      003281 08                    4102 	.db #0x08	; 8
      003282 0A                    4103 	.db #0x0a	; 10
      003283 04                    4104 	.db #0x04	; 4
      003284 00                    4105 	.db #0x00	; 0
      003285 00                    4106 	.db #0x00	; 0
      003286 08                    4107 	.db #0x08	; 8
      003287 00                    4108 	.db #0x00	; 0
      003288 3E                    4109 	.db #0x3e	; 62
      003289 00                    4110 	.db #0x00	; 0
      00328A 08                    4111 	.db #0x08	; 8
      00328B 00                    4112 	.db #0x00	; 0
      00328C 00                    4113 	.db #0x00	; 0
      00328D 00                    4114 	.db #0x00	; 0
      00328E 14                    4115 	.db #0x14	; 20
      00328F 0A                    4116 	.db #0x0a	; 10
      003290 00                    4117 	.db #0x00	; 0
      003291 14                    4118 	.db #0x14	; 20
      003292 0A                    4119 	.db #0x0a	; 10
      003293 00                    4120 	.db #0x00	; 0
      003294 00                    4121 	.db #0x00	; 0
      003295 0C                    4122 	.db #0x0c	; 12
      003296 12                    4123 	.db #0x12	; 18
      003297 12                    4124 	.db #0x12	; 18
      003298 0C                    4125 	.db #0x0c	; 12
      003299 00                    4126 	.db #0x00	; 0
      00329A 00                    4127 	.db #0x00	; 0
      00329B 00                    4128 	.db #0x00	; 0
      00329C 00                    4129 	.db #0x00	; 0
      00329D 00                    4130 	.db #0x00	; 0
      00329E 00                    4131 	.db #0x00	; 0
      00329F 00                    4132 	.db #0x00	; 0
      0032A0 0C                    4133 	.db #0x0c	; 12
      0032A1 0C                    4134 	.db #0x0c	; 12
      0032A2 00                    4135 	.db #0x00	; 0
      0032A3 00                    4136 	.db #0x00	; 0
      0032A4 00                    4137 	.db #0x00	; 0
      0032A5 00                    4138 	.db #0x00	; 0
      0032A6 00                    4139 	.db #0x00	; 0
      0032A7 00                    4140 	.db #0x00	; 0
      0032A8 04                    4141 	.db #0x04	; 4
      0032A9 00                    4142 	.db #0x00	; 0
      0032AA 00                    4143 	.db #0x00	; 0
      0032AB 00                    4144 	.db #0x00	; 0
      0032AC 00                    4145 	.db #0x00	; 0
      0032AD 00                    4146 	.db #0x00	; 0
      0032AE 38                    4147 	.db #0x38	; 56	'8'
      0032AF 08                    4148 	.db #0x08	; 8
      0032B0 08                    4149 	.db #0x08	; 8
      0032B1 0A                    4150 	.db #0x0a	; 10
      0032B2 0A                    4151 	.db #0x0a	; 10
      0032B3 04                    4152 	.db #0x04	; 4
      0032B4 00                    4153 	.db #0x00	; 0
      0032B5 0A                    4154 	.db #0x0a	; 10
      0032B6 14                    4155 	.db #0x14	; 20
      0032B7 14                    4156 	.db #0x14	; 20
      0032B8 14                    4157 	.db #0x14	; 20
      0032B9 00                    4158 	.db #0x00	; 0
      0032BA 00                    4159 	.db #0x00	; 0
      0032BB 00                    4160 	.db #0x00	; 0
      0032BC 00                    4161 	.db #0x00	; 0
      0032BD 06                    4162 	.db #0x06	; 6
      0032BE 08                    4163 	.db #0x08	; 8
      0032BF 04                    4164 	.db #0x04	; 4
      0032C0 0E                    4165 	.db #0x0e	; 14
      0032C1 00                    4166 	.db #0x00	; 0
      0032C2 00                    4167 	.db #0x00	; 0
      0032C3 00                    4168 	.db #0x00	; 0
      0032C4 00                    4169 	.db #0x00	; 0
      0032C5 00                    4170 	.db #0x00	; 0
      0032C6 00                    4171 	.db #0x00	; 0
      0032C7 1E                    4172 	.db #0x1e	; 30
      0032C8 1E                    4173 	.db #0x1e	; 30
      0032C9 1E                    4174 	.db #0x1e	; 30
      0032CA 1E                    4175 	.db #0x1e	; 30
      0032CB 00                    4176 	.db #0x00	; 0
      0032CC 00                    4177 	.db #0x00	; 0
      0032CD 00                    4178 	.db #0x00	; 0
      0032CE 00                    4179 	.db #0x00	; 0
      0032CF 00                    4180 	.db #0x00	; 0
      0032D0 00                    4181 	.db #0x00	; 0
      0032D1 00                    4182 	.db #0x00	; 0
      0032D2 00                    4183 	.db #0x00	; 0
      0032D3 00                    4184 	.db #0x00	; 0
      0032D4 00                    4185 	.db #0x00	; 0
      0032D5                       4186 __xinit__initial:
      0032D5 A3 2A 80              4187 	.byte ___str_10, (___str_10 >> 8),#0x80
                                   4188 	.area CABS    (ABS,CODE)
