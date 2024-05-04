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
                                     20 	.globl _printstr
                                     21 	.globl _getchar_poll
                                     22 	.globl _getchar
                                     23 	.globl _putchar
                                     24 	.globl _toupper
                                     25 	.globl _strncpy
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _FL
                                     33 	.globl _P
                                     34 	.globl _TF2
                                     35 	.globl _EXF2
                                     36 	.globl _RCLK
                                     37 	.globl _TCLK
                                     38 	.globl _EXEN2
                                     39 	.globl _TR2
                                     40 	.globl _C_T2
                                     41 	.globl _CP_RL2
                                     42 	.globl _T2CON_7
                                     43 	.globl _T2CON_6
                                     44 	.globl _T2CON_5
                                     45 	.globl _T2CON_4
                                     46 	.globl _T2CON_3
                                     47 	.globl _T2CON_2
                                     48 	.globl _T2CON_1
                                     49 	.globl _T2CON_0
                                     50 	.globl _PT2
                                     51 	.globl _PS
                                     52 	.globl _PT1
                                     53 	.globl _PX1
                                     54 	.globl _PT0
                                     55 	.globl _PX0
                                     56 	.globl _RD
                                     57 	.globl _WR
                                     58 	.globl _T1
                                     59 	.globl _T0
                                     60 	.globl _INT1
                                     61 	.globl _INT0
                                     62 	.globl _TXD
                                     63 	.globl _RXD
                                     64 	.globl _P3_7
                                     65 	.globl _P3_6
                                     66 	.globl _P3_5
                                     67 	.globl _P3_4
                                     68 	.globl _P3_3
                                     69 	.globl _P3_2
                                     70 	.globl _P3_1
                                     71 	.globl _P3_0
                                     72 	.globl _EA
                                     73 	.globl _ET2
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _SM0
                                     88 	.globl _SM1
                                     89 	.globl _SM2
                                     90 	.globl _REN
                                     91 	.globl _TB8
                                     92 	.globl _RB8
                                     93 	.globl _TI
                                     94 	.globl _RI
                                     95 	.globl _T2EX
                                     96 	.globl _T2
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _TF1
                                    106 	.globl _TR1
                                    107 	.globl _TF0
                                    108 	.globl _TR0
                                    109 	.globl _IE1
                                    110 	.globl _IT1
                                    111 	.globl _IE0
                                    112 	.globl _IT0
                                    113 	.globl _P0_7
                                    114 	.globl _P0_6
                                    115 	.globl _P0_5
                                    116 	.globl _P0_4
                                    117 	.globl _P0_3
                                    118 	.globl _P0_2
                                    119 	.globl _P0_1
                                    120 	.globl _P0_0
                                    121 	.globl _B
                                    122 	.globl _A
                                    123 	.globl _ACC
                                    124 	.globl _PSW
                                    125 	.globl _TH2
                                    126 	.globl _TL2
                                    127 	.globl _RCAP2H
                                    128 	.globl _RCAP2L
                                    129 	.globl _T2MOD
                                    130 	.globl _T2CON
                                    131 	.globl _IP
                                    132 	.globl _P3
                                    133 	.globl _IE
                                    134 	.globl _P2
                                    135 	.globl _SBUF
                                    136 	.globl _SCON
                                    137 	.globl _P1
                                    138 	.globl _TH1
                                    139 	.globl _TH0
                                    140 	.globl _TL1
                                    141 	.globl _TL0
                                    142 	.globl _TMOD
                                    143 	.globl _TCON
                                    144 	.globl _PCON
                                    145 	.globl _DPH
                                    146 	.globl _DPL
                                    147 	.globl _SP
                                    148 	.globl _P0
                                    149 	.globl _gpo
                                    150 	.globl _inv
                                    151 	.globl _OE
                                    152 	.globl _column
                                    153 	.globl _ddata
                                    154 	.globl _sddcol
                                    155 	.globl _dsdcol
                                    156 ;--------------------------------------------------------
                                    157 ; special function registers
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           000080   161 _P0	=	0x0080
                           000081   162 _SP	=	0x0081
                           000082   163 _DPL	=	0x0082
                           000083   164 _DPH	=	0x0083
                           000087   165 _PCON	=	0x0087
                           000088   166 _TCON	=	0x0088
                           000089   167 _TMOD	=	0x0089
                           00008A   168 _TL0	=	0x008a
                           00008B   169 _TL1	=	0x008b
                           00008C   170 _TH0	=	0x008c
                           00008D   171 _TH1	=	0x008d
                           000090   172 _P1	=	0x0090
                           000098   173 _SCON	=	0x0098
                           000099   174 _SBUF	=	0x0099
                           0000A0   175 _P2	=	0x00a0
                           0000A8   176 _IE	=	0x00a8
                           0000B0   177 _P3	=	0x00b0
                           0000B8   178 _IP	=	0x00b8
                           0000C8   179 _T2CON	=	0x00c8
                           0000C9   180 _T2MOD	=	0x00c9
                           0000CA   181 _RCAP2L	=	0x00ca
                           0000CB   182 _RCAP2H	=	0x00cb
                           0000CC   183 _TL2	=	0x00cc
                           0000CD   184 _TH2	=	0x00cd
                           0000D0   185 _PSW	=	0x00d0
                           0000E0   186 _ACC	=	0x00e0
                           0000E0   187 _A	=	0x00e0
                           0000F0   188 _B	=	0x00f0
                                    189 ;--------------------------------------------------------
                                    190 ; special function bits
                                    191 ;--------------------------------------------------------
                                    192 	.area RSEG    (ABS,DATA)
      000000                        193 	.org 0x0000
                           000080   194 _P0_0	=	0x0080
                           000081   195 _P0_1	=	0x0081
                           000082   196 _P0_2	=	0x0082
                           000083   197 _P0_3	=	0x0083
                           000084   198 _P0_4	=	0x0084
                           000085   199 _P0_5	=	0x0085
                           000086   200 _P0_6	=	0x0086
                           000087   201 _P0_7	=	0x0087
                           000088   202 _IT0	=	0x0088
                           000089   203 _IE0	=	0x0089
                           00008A   204 _IT1	=	0x008a
                           00008B   205 _IE1	=	0x008b
                           00008C   206 _TR0	=	0x008c
                           00008D   207 _TF0	=	0x008d
                           00008E   208 _TR1	=	0x008e
                           00008F   209 _TF1	=	0x008f
                           000090   210 _P1_0	=	0x0090
                           000091   211 _P1_1	=	0x0091
                           000092   212 _P1_2	=	0x0092
                           000093   213 _P1_3	=	0x0093
                           000094   214 _P1_4	=	0x0094
                           000095   215 _P1_5	=	0x0095
                           000096   216 _P1_6	=	0x0096
                           000097   217 _P1_7	=	0x0097
                           000090   218 _T2	=	0x0090
                           000091   219 _T2EX	=	0x0091
                           000098   220 _RI	=	0x0098
                           000099   221 _TI	=	0x0099
                           00009A   222 _RB8	=	0x009a
                           00009B   223 _TB8	=	0x009b
                           00009C   224 _REN	=	0x009c
                           00009D   225 _SM2	=	0x009d
                           00009E   226 _SM1	=	0x009e
                           00009F   227 _SM0	=	0x009f
                           0000A0   228 _P2_0	=	0x00a0
                           0000A1   229 _P2_1	=	0x00a1
                           0000A2   230 _P2_2	=	0x00a2
                           0000A3   231 _P2_3	=	0x00a3
                           0000A4   232 _P2_4	=	0x00a4
                           0000A5   233 _P2_5	=	0x00a5
                           0000A6   234 _P2_6	=	0x00a6
                           0000A7   235 _P2_7	=	0x00a7
                           0000A8   236 _EX0	=	0x00a8
                           0000A9   237 _ET0	=	0x00a9
                           0000AA   238 _EX1	=	0x00aa
                           0000AB   239 _ET1	=	0x00ab
                           0000AC   240 _ES	=	0x00ac
                           0000AD   241 _ET2	=	0x00ad
                           0000AF   242 _EA	=	0x00af
                           0000B0   243 _P3_0	=	0x00b0
                           0000B1   244 _P3_1	=	0x00b1
                           0000B2   245 _P3_2	=	0x00b2
                           0000B3   246 _P3_3	=	0x00b3
                           0000B4   247 _P3_4	=	0x00b4
                           0000B5   248 _P3_5	=	0x00b5
                           0000B6   249 _P3_6	=	0x00b6
                           0000B7   250 _P3_7	=	0x00b7
                           0000B0   251 _RXD	=	0x00b0
                           0000B1   252 _TXD	=	0x00b1
                           0000B2   253 _INT0	=	0x00b2
                           0000B3   254 _INT1	=	0x00b3
                           0000B4   255 _T0	=	0x00b4
                           0000B5   256 _T1	=	0x00b5
                           0000B6   257 _WR	=	0x00b6
                           0000B7   258 _RD	=	0x00b7
                           0000B8   259 _PX0	=	0x00b8
                           0000B9   260 _PT0	=	0x00b9
                           0000BA   261 _PX1	=	0x00ba
                           0000BB   262 _PT1	=	0x00bb
                           0000BC   263 _PS	=	0x00bc
                           0000BD   264 _PT2	=	0x00bd
                           0000C8   265 _T2CON_0	=	0x00c8
                           0000C9   266 _T2CON_1	=	0x00c9
                           0000CA   267 _T2CON_2	=	0x00ca
                           0000CB   268 _T2CON_3	=	0x00cb
                           0000CC   269 _T2CON_4	=	0x00cc
                           0000CD   270 _T2CON_5	=	0x00cd
                           0000CE   271 _T2CON_6	=	0x00ce
                           0000CF   272 _T2CON_7	=	0x00cf
                           0000C8   273 _CP_RL2	=	0x00c8
                           0000C9   274 _C_T2	=	0x00c9
                           0000CA   275 _TR2	=	0x00ca
                           0000CB   276 _EXEN2	=	0x00cb
                           0000CC   277 _TCLK	=	0x00cc
                           0000CD   278 _RCLK	=	0x00cd
                           0000CE   279 _EXF2	=	0x00ce
                           0000CF   280 _TF2	=	0x00cf
                           0000D0   281 _P	=	0x00d0
                           0000D1   282 _FL	=	0x00d1
                           0000D2   283 _OV	=	0x00d2
                           0000D3   284 _RS0	=	0x00d3
                           0000D4   285 _RS1	=	0x00d4
                           0000D5   286 _F0	=	0x00d5
                           0000D6   287 _AC	=	0x00d6
                           0000D7   288 _CY	=	0x00d7
                                    289 ;--------------------------------------------------------
                                    290 ; overlayable register banks
                                    291 ;--------------------------------------------------------
                                    292 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        293 	.ds 8
                                    294 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        295 	.ds 8
                                    296 ;--------------------------------------------------------
                                    297 ; internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area DSEG    (DATA)
                                    300 ;--------------------------------------------------------
                                    301 ; overlayable items in internal ram 
                                    302 ;--------------------------------------------------------
                                    303 ;--------------------------------------------------------
                                    304 ; Stack segment in internal ram 
                                    305 ;--------------------------------------------------------
                                    306 	.area	SSEG
      00003C                        307 __start__stack:
      00003C                        308 	.ds	1
                                    309 
                                    310 ;--------------------------------------------------------
                                    311 ; indirectly addressable internal ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area ISEG    (DATA)
      000021                        314 _dsdcol::
      000021                        315 	.ds 8
      000029                        316 _sddcol::
      000029                        317 	.ds 8
      000031                        318 _ddata::
      000031                        319 	.ds 8
      000039                        320 _column::
      000039                        321 	.ds 1
      00003A                        322 _OE::
      00003A                        323 	.ds 1
      00003B                        324 _inv::
      00003B                        325 	.ds 1
                                    326 ;--------------------------------------------------------
                                    327 ; absolute internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area IABS    (ABS,DATA)
                                    330 	.area IABS    (ABS,DATA)
                                    331 ;--------------------------------------------------------
                                    332 ; bit data
                                    333 ;--------------------------------------------------------
                                    334 	.area BSEG    (BIT)
                                    335 ;--------------------------------------------------------
                                    336 ; paged external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area PSEG    (PAG,XDATA)
                           000000   339 _gpo	=	0x0000
                                    340 ;--------------------------------------------------------
                                    341 ; external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XSEG    (XDATA)
      008000                        344 _buf:
      008000                        345 	.ds 257
                                    346 ;--------------------------------------------------------
                                    347 ; absolute external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XABS    (ABS,XDATA)
                                    350 ;--------------------------------------------------------
                                    351 ; external initialized ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area XISEG   (XDATA)
      008101                        354 __ft_font6x8:
      008101                        355 	.ds 2048
      008901                        356 _initial:
      008901                        357 	.ds 3
                                    358 	.area HOME    (CODE)
                                    359 	.area GSINIT0 (CODE)
                                    360 	.area GSINIT1 (CODE)
                                    361 	.area GSINIT2 (CODE)
                                    362 	.area GSINIT3 (CODE)
                                    363 	.area GSINIT4 (CODE)
                                    364 	.area GSINIT5 (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.area GSFINAL (CODE)
                                    367 	.area CSEG    (CODE)
                                    368 ;--------------------------------------------------------
                                    369 ; interrupt vector 
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
      002000                        372 __interrupt_vect:
      002000 02 20 11         [24]  373 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  374 	reti
      002004                        375 	.ds	7
      00200B 02 21 3B         [24]  376 	ljmp	_timer0_intr
                                    377 ;--------------------------------------------------------
                                    378 ; global & static initialisations
                                    379 ;--------------------------------------------------------
                                    380 	.area HOME    (CODE)
                                    381 	.area GSINIT  (CODE)
                                    382 	.area GSFINAL (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.globl __sdcc_gsinit_startup
                                    385 	.globl __sdcc_program_startup
                                    386 	.globl __start__stack
                                    387 	.globl __mcs51_genXINIT
                                    388 	.globl __mcs51_genXRAMCLEAR
                                    389 	.globl __mcs51_genRAMCLEAR
                                    390 ;	disp.c:82: __idata const uint8_t dsdcol[8] = {
      00206A 78 21            [12]  391 	mov	r0,#_dsdcol
      00206C 76 80            [12]  392 	mov	@r0,#0x80
      00206E 78 22            [12]  393 	mov	r0,#(_dsdcol + 0x0001)
      002070 76 40            [12]  394 	mov	@r0,#0x40
      002072 78 23            [12]  395 	mov	r0,#(_dsdcol + 0x0002)
      002074 76 20            [12]  396 	mov	@r0,#0x20
      002076 78 24            [12]  397 	mov	r0,#(_dsdcol + 0x0003)
      002078 76 10            [12]  398 	mov	@r0,#0x10
      00207A 78 25            [12]  399 	mov	r0,#(_dsdcol + 0x0004)
      00207C 76 08            [12]  400 	mov	@r0,#0x08
      00207E 78 26            [12]  401 	mov	r0,#(_dsdcol + 0x0005)
      002080 76 04            [12]  402 	mov	@r0,#0x04
      002082 78 27            [12]  403 	mov	r0,#(_dsdcol + 0x0006)
      002084 76 02            [12]  404 	mov	@r0,#0x02
      002086 78 28            [12]  405 	mov	r0,#(_dsdcol + 0x0007)
      002088 76 01            [12]  406 	mov	@r0,#0x01
                                    407 ;	disp.c:86: __idata const uint8_t sddcol[8] = {
      00208A 78 29            [12]  408 	mov	r0,#_sddcol
      00208C 76 01            [12]  409 	mov	@r0,#0x01
      00208E 78 2A            [12]  410 	mov	r0,#(_sddcol + 0x0001)
      002090 76 02            [12]  411 	mov	@r0,#0x02
      002092 78 2B            [12]  412 	mov	r0,#(_sddcol + 0x0002)
      002094 76 04            [12]  413 	mov	@r0,#0x04
      002096 78 2C            [12]  414 	mov	r0,#(_sddcol + 0x0003)
      002098 76 08            [12]  415 	mov	@r0,#0x08
      00209A 78 2D            [12]  416 	mov	r0,#(_sddcol + 0x0004)
      00209C 76 10            [12]  417 	mov	@r0,#0x10
      00209E 78 2E            [12]  418 	mov	r0,#(_sddcol + 0x0005)
      0020A0 76 20            [12]  419 	mov	@r0,#0x20
      0020A2 78 2F            [12]  420 	mov	r0,#(_sddcol + 0x0006)
      0020A4 76 40            [12]  421 	mov	@r0,#0x40
      0020A6 78 30            [12]  422 	mov	r0,#(_sddcol + 0x0007)
      0020A8 76 80            [12]  423 	mov	@r0,#0x80
                                    424 	.area GSFINAL (CODE)
      0020AA 02 20 0E         [24]  425 	ljmp	__sdcc_program_startup
                                    426 ;--------------------------------------------------------
                                    427 ; Home
                                    428 ;--------------------------------------------------------
                                    429 	.area HOME    (CODE)
                                    430 	.area HOME    (CODE)
      00200E                        431 __sdcc_program_startup:
      00200E 02 23 A8         [24]  432 	ljmp	_main
                                    433 ;	return from main will return to caller
                                    434 ;--------------------------------------------------------
                                    435 ; code
                                    436 ;--------------------------------------------------------
                                    437 	.area CSEG    (CODE)
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'gpo_init'
                                    440 ;------------------------------------------------------------
                                    441 ;	disp.c:41: void gpo_init(void) {
                                    442 ;	-----------------------------------------
                                    443 ;	 function gpo_init
                                    444 ;	-----------------------------------------
      0020AD                        445 _gpo_init:
                           000007   446 	ar7 = 0x07
                           000006   447 	ar6 = 0x06
                           000005   448 	ar5 = 0x05
                           000004   449 	ar4 = 0x04
                           000003   450 	ar3 = 0x03
                           000002   451 	ar2 = 0x02
                           000001   452 	ar1 = 0x01
                           000000   453 	ar0 = 0x00
                                    454 ;	disp.c:42: P1_7 = 0;
                                    455 ;	assignBit
      0020AD C2 97            [12]  456 	clr	_P1_7
                                    457 ;	disp.c:47: __endasm;
      0020AF 00               [12]  458 	nop
      0020B0 00               [12]  459 	nop
      0020B1 00               [12]  460 	nop
                                    461 ;	disp.c:49: P2 = GPO_BASE_H;
      0020B2 75 A0 F0         [24]  462 	mov	_P2,#0xf0
                                    463 ;	disp.c:51: GPO_CLEAR;
      0020B5 78 06            [12]  464 	mov	r0,#(_gpo + 0x0006)
      0020B7 74 3F            [12]  465 	mov	a,#0x3f
      0020B9 F2               [24]  466 	movx	@r0,a
      0020BA 78 00            [12]  467 	mov	r0,#_gpo
      0020BC E4               [12]  468 	clr	a
      0020BD F2               [24]  469 	movx	@r0,a
      0020BE 78 01            [12]  470 	mov	r0,#(_gpo + 0x0001)
      0020C0 F2               [24]  471 	movx	@r0,a
      0020C1 78 02            [12]  472 	mov	r0,#(_gpo + 0x0002)
      0020C3 F2               [24]  473 	movx	@r0,a
      0020C4 78 03            [12]  474 	mov	r0,#(_gpo + 0x0003)
      0020C6 F2               [24]  475 	movx	@r0,a
      0020C7 78 04            [12]  476 	mov	r0,#(_gpo + 0x0004)
      0020C9 F2               [24]  477 	movx	@r0,a
      0020CA 78 05            [12]  478 	mov	r0,#(_gpo + 0x0005)
      0020CC F2               [24]  479 	movx	@r0,a
                                    480 ;	disp.c:53: return;
                                    481 ;	disp.c:54: }
      0020CD 22               [24]  482 	ret
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'gpo_clear'
                                    485 ;------------------------------------------------------------
                                    486 ;	disp.c:56: void gpo_clear(void) {
                                    487 ;	-----------------------------------------
                                    488 ;	 function gpo_clear
                                    489 ;	-----------------------------------------
      0020CE                        490 _gpo_clear:
                                    491 ;	disp.c:57: GPO_CLEAR;
      0020CE 78 06            [12]  492 	mov	r0,#(_gpo + 0x0006)
      0020D0 74 3F            [12]  493 	mov	a,#0x3f
      0020D2 F2               [24]  494 	movx	@r0,a
      0020D3 78 00            [12]  495 	mov	r0,#_gpo
      0020D5 E4               [12]  496 	clr	a
      0020D6 F2               [24]  497 	movx	@r0,a
      0020D7 78 01            [12]  498 	mov	r0,#(_gpo + 0x0001)
      0020D9 F2               [24]  499 	movx	@r0,a
      0020DA 78 02            [12]  500 	mov	r0,#(_gpo + 0x0002)
      0020DC F2               [24]  501 	movx	@r0,a
      0020DD 78 03            [12]  502 	mov	r0,#(_gpo + 0x0003)
      0020DF F2               [24]  503 	movx	@r0,a
      0020E0 78 04            [12]  504 	mov	r0,#(_gpo + 0x0004)
      0020E2 F2               [24]  505 	movx	@r0,a
      0020E3 78 05            [12]  506 	mov	r0,#(_gpo + 0x0005)
      0020E5 F2               [24]  507 	movx	@r0,a
                                    508 ;	disp.c:59: return;
                                    509 ;	disp.c:60: }
      0020E6 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'init_intr'
                                    513 ;------------------------------------------------------------
                                    514 ;	disp.c:126: void init_intr(void) {
                                    515 ;	-----------------------------------------
                                    516 ;	 function init_intr
                                    517 ;	-----------------------------------------
      0020E7                        518 _init_intr:
                                    519 ;	disp.c:127: TR0 = 0;
                                    520 ;	assignBit
      0020E7 C2 8C            [12]  521 	clr	_TR0
                                    522 ;	disp.c:128: TR1 = 0;
                                    523 ;	assignBit
      0020E9 C2 8E            [12]  524 	clr	_TR1
                                    525 ;	disp.c:129: ET0 = 1;
                                    526 ;	assignBit
      0020EB D2 A9            [12]  527 	setb	_ET0
                                    528 ;	disp.c:130: ET1 = 0;
                                    529 ;	assignBit
      0020ED C2 AB            [12]  530 	clr	_ET1
                                    531 ;	disp.c:131: EA = 1;
                                    532 ;	assignBit
      0020EF D2 AF            [12]  533 	setb	_EA
                                    534 ;	disp.c:133: return;
                                    535 ;	disp.c:134: }
      0020F1 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'init_timer0'
                                    539 ;------------------------------------------------------------
                                    540 ;	disp.c:136: void init_timer0(void) {
                                    541 ;	-----------------------------------------
                                    542 ;	 function init_timer0
                                    543 ;	-----------------------------------------
      0020F2                        544 _init_timer0:
                                    545 ;	disp.c:137: TR0 = 0;
                                    546 ;	assignBit
      0020F2 C2 8C            [12]  547 	clr	_TR0
                                    548 ;	disp.c:138: TMOD |= 0x01;
      0020F4 43 89 01         [24]  549 	orl	_TMOD,#0x01
                                    550 ;	disp.c:139: TH0 = TR0_COUNT >> 8;
      0020F7 75 8C F8         [24]  551 	mov	_TH0,#0xf8
                                    552 ;	disp.c:140: TL0 = TR0_COUNT & 0xffu;
      0020FA 75 8A 00         [24]  553 	mov	_TL0,#0x00
                                    554 ;	disp.c:142: return;
                                    555 ;	disp.c:143: }
      0020FD 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'init_timer1'
                                    559 ;------------------------------------------------------------
                                    560 ;	disp.c:145: void init_timer1(void) {
                                    561 ;	-----------------------------------------
                                    562 ;	 function init_timer1
                                    563 ;	-----------------------------------------
      0020FE                        564 _init_timer1:
                                    565 ;	disp.c:146: TR1 = 0;
                                    566 ;	assignBit
      0020FE C2 8E            [12]  567 	clr	_TR1
                                    568 ;	disp.c:147: TMOD |= 0x10;
      002100 43 89 10         [24]  569 	orl	_TMOD,#0x10
                                    570 ;	disp.c:148: TH1 = TR1_COUNT_0 >> 8;
      002103 75 8D 00         [24]  571 	mov	_TH1,#0x00
                                    572 ;	disp.c:149: TL1 = TR1_COUNT_0 & 0xffu;
      002106 75 8B 00         [24]  573 	mov	_TL1,#0x00
                                    574 ;	disp.c:151: return;
                                    575 ;	disp.c:152: }
      002109 22               [24]  576 	ret
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'init_disp'
                                    579 ;------------------------------------------------------------
                                    580 ;	disp.c:154: void init_disp(void) {
                                    581 ;	-----------------------------------------
                                    582 ;	 function init_disp
                                    583 ;	-----------------------------------------
      00210A                        584 _init_disp:
                                    585 ;	disp.c:155: GPO_SETREG(DISP_COL, 0u);
      00210A 78 05            [12]  586 	mov	r0,#(_gpo + 0x0005)
      00210C E4               [12]  587 	clr	a
      00210D F2               [24]  588 	movx	@r0,a
                                    589 ;	disp.c:156: GPO_SETREG(DISP_DATA, 0u);
      00210E 78 04            [12]  590 	mov	r0,#(_gpo + 0x0004)
      002110 F2               [24]  591 	movx	@r0,a
                                    592 ;	disp.c:157: OE = 0x0fu; /* 00_001111 */
      002111 78 3A            [12]  593 	mov	r0,#_OE
      002113 76 0F            [12]  594 	mov	@r0,#0x0f
                                    595 ;	disp.c:158: GPO_SETOE(OE);
      002115 78 06            [12]  596 	mov	r0,#(_gpo + 0x0006)
      002117 74 0F            [12]  597 	mov	a,#0x0f
      002119 F2               [24]  598 	movx	@r0,a
                                    599 ;	disp.c:160: for (column = 0u; column < 8u; column++)
      00211A 78 39            [12]  600 	mov	r0,#_column
      00211C 76 00            [12]  601 	mov	@r0,#0x00
      00211E                        602 00112$:
      00211E 78 39            [12]  603 	mov	r0,#_column
      002120 B6 08 00         [24]  604 	cjne	@r0,#0x08,00124$
      002123                        605 00124$:
      002123 50 11            [24]  606 	jnc	00110$
                                    607 ;	disp.c:161: ddata[column] = 0u;
      002125 78 39            [12]  608 	mov	r0,#_column
      002127 E6               [12]  609 	mov	a,@r0
      002128 24 31            [12]  610 	add	a,#_ddata
      00212A F8               [12]  611 	mov	r0,a
      00212B 76 00            [12]  612 	mov	@r0,#0x00
                                    613 ;	disp.c:160: for (column = 0u; column < 8u; column++)
      00212D 78 39            [12]  614 	mov	r0,#_column
      00212F E6               [12]  615 	mov	a,@r0
      002130 78 39            [12]  616 	mov	r0,#_column
      002132 04               [12]  617 	inc	a
      002133 F6               [12]  618 	mov	@r0,a
      002134 80 E8            [24]  619 	sjmp	00112$
      002136                        620 00110$:
                                    621 ;	disp.c:162: column = 0u;
      002136 78 39            [12]  622 	mov	r0,#_column
      002138 76 00            [12]  623 	mov	@r0,#0x00
                                    624 ;	disp.c:164: return;
                                    625 ;	disp.c:165: }
      00213A 22               [24]  626 	ret
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'timer0_intr'
                                    629 ;------------------------------------------------------------
                                    630 ;t                         Allocated to registers r7 
                                    631 ;------------------------------------------------------------
                                    632 ;	disp.c:167: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    633 ;	-----------------------------------------
                                    634 ;	 function timer0_intr
                                    635 ;	-----------------------------------------
      00213B                        636 _timer0_intr:
                           00000F   637 	ar7 = 0x0f
                           00000E   638 	ar6 = 0x0e
                           00000D   639 	ar5 = 0x0d
                           00000C   640 	ar4 = 0x0c
                           00000B   641 	ar3 = 0x0b
                           00000A   642 	ar2 = 0x0a
                           000009   643 	ar1 = 0x09
                           000008   644 	ar0 = 0x08
      00213B C0 E0            [24]  645 	push	acc
      00213D C0 D0            [24]  646 	push	psw
      00213F 75 D0 08         [24]  647 	mov	psw,#0x08
                                    648 ;	disp.c:170: t = column & 7u;
      002142 78 39            [12]  649 	mov	r0,#_column
      002144 86 0F            [24]  650 	mov	ar7,@r0
      002146 53 0F 07         [24]  651 	anl	ar7,#0x07
                                    652 ;	disp.c:171: GPO_SETREG(DISP_COL, 0u);
      002149 78 05            [12]  653 	mov	r0,#(_gpo + 0x0005)
      00214B E4               [12]  654 	clr	a
      00214C F2               [24]  655 	movx	@r0,a
                                    656 ;	disp.c:172: GPO_SETREG(DISP_DATA, ddata[t]);
      00214D EF               [12]  657 	mov	a,r7
      00214E 24 31            [12]  658 	add	a,#_ddata
      002150 F9               [12]  659 	mov	r1,a
      002151 87 0E            [24]  660 	mov	ar6,@r1
      002153 78 04            [12]  661 	mov	r0,#(_gpo + 0x0004)
      002155 EE               [12]  662 	mov	a,r6
      002156 F2               [24]  663 	movx	@r0,a
                                    664 ;	disp.c:173: GPO_SETREG(DISP_COL, dsdcol[t]);
      002157 EF               [12]  665 	mov	a,r7
      002158 24 21            [12]  666 	add	a,#_dsdcol
      00215A F9               [12]  667 	mov	r1,a
      00215B 87 0F            [24]  668 	mov	ar7,@r1
      00215D 78 05            [12]  669 	mov	r0,#(_gpo + 0x0005)
      00215F EF               [12]  670 	mov	a,r7
      002160 F2               [24]  671 	movx	@r0,a
                                    672 ;	disp.c:174: column++;
      002161 78 39            [12]  673 	mov	r0,#_column
      002163 E6               [12]  674 	mov	a,@r0
      002164 78 39            [12]  675 	mov	r0,#_column
      002166 04               [12]  676 	inc	a
      002167 F6               [12]  677 	mov	@r0,a
                                    678 ;	disp.c:176: TR0 = 0;
                                    679 ;	assignBit
      002168 C2 8C            [12]  680 	clr	_TR0
                                    681 ;	disp.c:177: TH0 = TR0_COUNT >> 8;
      00216A 75 8C F8         [24]  682 	mov	_TH0,#0xf8
                                    683 ;	disp.c:178: TL0 = TR0_COUNT & 0xffu;
      00216D 75 8A 00         [24]  684 	mov	_TL0,#0x00
                                    685 ;	disp.c:179: TR0 = 1;
                                    686 ;	assignBit
      002170 D2 8C            [12]  687 	setb	_TR0
                                    688 ;	disp.c:181: return;
                                    689 ;	disp.c:182: }
      002172 D0 D0            [24]  690 	pop	psw
      002174 D0 E0            [24]  691 	pop	acc
      002176 32               [24]  692 	reti
                                    693 ;	eliminated unneeded push/pop dpl
                                    694 ;	eliminated unneeded push/pop dph
                                    695 ;	eliminated unneeded push/pop b
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'scroll'
                                    698 ;------------------------------------------------------------
                                    699 ;msg                       Allocated to stack - _bp +1
                                    700 ;symbol                    Allocated to stack - _bp +6
                                    701 ;bit                       Allocated to registers r5 
                                    702 ;i                         Allocated to stack - _bp +7
                                    703 ;j                         Allocated to registers r4 
                                    704 ;c                         Allocated to registers r3 r4 
                                    705 ;sloc0                     Allocated to stack - _bp +4
                                    706 ;sloc1                     Allocated to stack - _bp +5
                                    707 ;sloc2                     Allocated to stack - _bp +13
                                    708 ;------------------------------------------------------------
                                    709 ;	disp.c:206: int scroll(uint8_t *msg) {
                                    710 ;	-----------------------------------------
                                    711 ;	 function scroll
                                    712 ;	-----------------------------------------
      002177                        713 _scroll:
                           000007   714 	ar7 = 0x07
                           000006   715 	ar6 = 0x06
                           000005   716 	ar5 = 0x05
                           000004   717 	ar4 = 0x04
                           000003   718 	ar3 = 0x03
                           000002   719 	ar2 = 0x02
                           000001   720 	ar1 = 0x01
                           000000   721 	ar0 = 0x00
      002177 C0 10            [24]  722 	push	_bp
      002179 85 81 10         [24]  723 	mov	_bp,sp
      00217C C0 82            [24]  724 	push	dpl
      00217E C0 83            [24]  725 	push	dph
      002180 C0 F0            [24]  726 	push	b
      002182 E5 81            [12]  727 	mov	a,sp
      002184 24 05            [12]  728 	add	a,#0x05
      002186 F5 81            [12]  729 	mov	sp,a
                                    730 ;	disp.c:212: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002188 7D 00            [12]  731 	mov	r5,#0x00
      00218A E5 10            [12]  732 	mov	a,_bp
      00218C 24 07            [12]  733 	add	a,#0x07
      00218E F8               [12]  734 	mov	r0,a
      00218F E4               [12]  735 	clr	a
      002190 F6               [12]  736 	mov	@r0,a
      002191 08               [12]  737 	inc	r0
      002192 F6               [12]  738 	mov	@r0,a
      002193                        739 00149$:
                                    740 ;	disp.c:213: if (!bit) {
      002193 ED               [12]  741 	mov	a,r5
      002194 70 63            [24]  742 	jnz	00105$
                                    743 ;	disp.c:214: symbol = msg[i];
      002196 C0 05            [24]  744 	push	ar5
      002198 A8 10            [24]  745 	mov	r0,_bp
      00219A 08               [12]  746 	inc	r0
      00219B E5 10            [12]  747 	mov	a,_bp
      00219D 24 07            [12]  748 	add	a,#0x07
      00219F F9               [12]  749 	mov	r1,a
      0021A0 E7               [12]  750 	mov	a,@r1
      0021A1 26               [12]  751 	add	a,@r0
      0021A2 FA               [12]  752 	mov	r2,a
      0021A3 09               [12]  753 	inc	r1
      0021A4 E7               [12]  754 	mov	a,@r1
      0021A5 08               [12]  755 	inc	r0
      0021A6 36               [12]  756 	addc	a,@r0
      0021A7 FB               [12]  757 	mov	r3,a
      0021A8 08               [12]  758 	inc	r0
      0021A9 86 04            [24]  759 	mov	ar4,@r0
      0021AB 8A 82            [24]  760 	mov	dpl,r2
      0021AD 8B 83            [24]  761 	mov	dph,r3
      0021AF 8C F0            [24]  762 	mov	b,r4
      0021B1 12 2A 11         [24]  763 	lcall	__gptrget
      0021B4 FA               [12]  764 	mov	r2,a
      0021B5 E5 10            [12]  765 	mov	a,_bp
      0021B7 24 04            [12]  766 	add	a,#0x04
      0021B9 F8               [12]  767 	mov	r0,a
      0021BA A6 02            [24]  768 	mov	@r0,ar2
                                    769 ;	disp.c:215: if (!symbol) {
      0021BC D0 05            [24]  770 	pop	ar5
      0021BE EA               [12]  771 	mov	a,r2
      0021BF 70 25            [24]  772 	jnz	00102$
                                    773 ;	disp.c:216: i = 0u;
      0021C1 E5 10            [12]  774 	mov	a,_bp
      0021C3 24 07            [12]  775 	add	a,#0x07
      0021C5 F8               [12]  776 	mov	r0,a
      0021C6 E4               [12]  777 	clr	a
      0021C7 F6               [12]  778 	mov	@r0,a
      0021C8 08               [12]  779 	inc	r0
      0021C9 F6               [12]  780 	mov	@r0,a
                                    781 ;	disp.c:217: symbol = msg[i];
      0021CA A8 10            [24]  782 	mov	r0,_bp
      0021CC 08               [12]  783 	inc	r0
      0021CD 86 82            [24]  784 	mov	dpl,@r0
      0021CF 08               [12]  785 	inc	r0
      0021D0 86 83            [24]  786 	mov	dph,@r0
      0021D2 08               [12]  787 	inc	r0
      0021D3 86 F0            [24]  788 	mov	b,@r0
      0021D5 E5 10            [12]  789 	mov	a,_bp
      0021D7 24 04            [12]  790 	add	a,#0x04
      0021D9 F9               [12]  791 	mov	r1,a
      0021DA 12 2A 11         [24]  792 	lcall	__gptrget
      0021DD F7               [12]  793 	mov	@r1,a
                                    794 ;	disp.c:218: OE |= 0x80u;
      0021DE 78 3A            [12]  795 	mov	r0,#_OE
      0021E0 E6               [12]  796 	mov	a,@r0
      0021E1 44 80            [12]  797 	orl	a,#0x80
      0021E3 F6               [12]  798 	mov	@r0,a
      0021E4 80 06            [24]  799 	sjmp	00103$
      0021E6                        800 00102$:
                                    801 ;	disp.c:219: } else OE |= 0x40u;
      0021E6 78 3A            [12]  802 	mov	r0,#_OE
      0021E8 E6               [12]  803 	mov	a,@r0
      0021E9 44 40            [12]  804 	orl	a,#0x40
      0021EB F6               [12]  805 	mov	@r0,a
      0021EC                        806 00103$:
                                    807 ;	disp.c:220: i++;
      0021EC E5 10            [12]  808 	mov	a,_bp
      0021EE 24 07            [12]  809 	add	a,#0x07
      0021F0 F8               [12]  810 	mov	r0,a
      0021F1 06               [12]  811 	inc	@r0
      0021F2 B6 00 02         [24]  812 	cjne	@r0,#0x00,00250$
      0021F5 08               [12]  813 	inc	r0
      0021F6 06               [12]  814 	inc	@r0
      0021F7                        815 00250$:
      0021F7 80 06            [24]  816 	sjmp	00107$
      0021F9                        817 00105$:
                                    818 ;	disp.c:221: } else OE &= ~(0x80u | 0x40u);
      0021F9 78 3A            [12]  819 	mov	r0,#_OE
      0021FB E6               [12]  820 	mov	a,@r0
      0021FC 54 3F            [12]  821 	anl	a,#0x3f
      0021FE F6               [12]  822 	mov	@r0,a
                                    823 ;	disp.c:222: GPO_SETOE(OE);
      0021FF                        824 00107$:
      0021FF 78 06            [12]  825 	mov	r0,#(_gpo + 0x0006)
      002201 79 3A            [12]  826 	mov	r1,#_OE
      002203 E7               [12]  827 	mov	a,@r1
      002204 F2               [24]  828 	movx	@r0,a
                                    829 ;	disp.c:224: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      002205 ED               [12]  830 	mov	a,r5
      002206 24 29            [12]  831 	add	a,#_sddcol
      002208 F9               [12]  832 	mov	r1,a
      002209 E7               [12]  833 	mov	a,@r1
      00220A 54 C0            [12]  834 	anl	a,#0xc0
      00220C 70 79            [24]  835 	jnz	00113$
                                    836 ;	disp.c:185: TR1 = 0;
                                    837 ;	assignBit
      00220E C2 8E            [12]  838 	clr	_TR1
                                    839 ;	disp.c:186: TH1 = TR1_COUNT_0 >> 8;
      002210 75 8D 00         [24]  840 	mov	_TH1,#0x00
                                    841 ;	disp.c:187: TL1 = TR1_COUNT_0 & 0xffu;	
      002213 75 8B 00         [24]  842 	mov	_TL1,#0x00
                                    843 ;	disp.c:188: TF1 = 0;
                                    844 ;	assignBit
      002216 C2 8F            [12]  845 	clr	_TF1
                                    846 ;	disp.c:189: TR1 = 1;
                                    847 ;	assignBit
      002218 D2 8E            [12]  848 	setb	_TR1
                                    849 ;	disp.c:190: while (!TF1);
      00221A                        850 00133$:
                                    851 ;	disp.c:191: TF1 = 0;
                                    852 ;	assignBit
      00221A 10 8F 02         [24]  853 	jbc	_TF1,00253$
      00221D 80 FB            [24]  854 	sjmp	00133$
      00221F                        855 00253$:
                                    856 ;	disp.c:193: TR1 = 0;
                                    857 ;	assignBit
      00221F C2 8E            [12]  858 	clr	_TR1
                                    859 ;	disp.c:194: TH1 = TR1_COUNT_1 >> 8;
      002221 75 8D C0         [24]  860 	mov	_TH1,#0xc0
                                    861 ;	disp.c:195: TL1 = TR1_COUNT_1 & 0xffu;	
      002224 75 8B 00         [24]  862 	mov	_TL1,#0x00
                                    863 ;	disp.c:196: TF1 = 0;
                                    864 ;	assignBit
      002227 C2 8F            [12]  865 	clr	_TF1
                                    866 ;	disp.c:197: TR1 = 1;
                                    867 ;	assignBit
      002229 D2 8E            [12]  868 	setb	_TR1
                                    869 ;	disp.c:198: while (!TF1);
      00222B                        870 00136$:
                                    871 ;	disp.c:199: TF1 = 0;
                                    872 ;	assignBit
      00222B 10 8F 02         [24]  873 	jbc	_TF1,00254$
      00222E 80 FB            [24]  874 	sjmp	00136$
      002230                        875 00254$:
                                    876 ;	disp.c:201: TR1 = 0;
                                    877 ;	assignBit
      002230 C2 8E            [12]  878 	clr	_TR1
                                    879 ;	disp.c:227: for (j = 0u; j < 8u; j++)
      002232 E5 10            [12]  880 	mov	a,_bp
      002234 24 04            [12]  881 	add	a,#0x04
      002236 F8               [12]  882 	mov	r0,a
      002237 E6               [12]  883 	mov	a,@r0
      002238 75 F0 08         [24]  884 	mov	b,#0x08
      00223B A4               [48]  885 	mul	ab
      00223C 24 01            [12]  886 	add	a,#__ft_font6x8
      00223E FA               [12]  887 	mov	r2,a
      00223F 74 81            [12]  888 	mov	a,#(__ft_font6x8 >> 8)
      002241 35 F0            [12]  889 	addc	a,b
      002243 FB               [12]  890 	mov	r3,a
      002244 E5 10            [12]  891 	mov	a,_bp
      002246 24 05            [12]  892 	add	a,#0x05
      002248 F8               [12]  893 	mov	r0,a
      002249 74 07            [12]  894 	mov	a,#0x07
      00224B C3               [12]  895 	clr	c
      00224C 9D               [12]  896 	subb	a,r5
      00224D F6               [12]  897 	mov	@r0,a
      00224E 7C 00            [12]  898 	mov	r4,#0x00
      002250                        899 00147$:
                                    900 ;	disp.c:228: ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      002250 EC               [12]  901 	mov	a,r4
      002251 24 31            [12]  902 	add	a,#_ddata
      002253 F9               [12]  903 	mov	r1,a
      002254 EC               [12]  904 	mov	a,r4
      002255 2A               [12]  905 	add	a,r2
      002256 F5 82            [12]  906 	mov	dpl,a
      002258 E4               [12]  907 	clr	a
      002259 3B               [12]  908 	addc	a,r3
      00225A F5 83            [12]  909 	mov	dph,a
      00225C E0               [24]  910 	movx	a,@dptr
      00225D FF               [12]  911 	mov	r7,a
      00225E 78 3B            [12]  912 	mov	r0,#_inv
      002260 E6               [12]  913 	mov	a,@r0
      002261 62 07            [12]  914 	xrl	ar7,a
      002263 E5 10            [12]  915 	mov	a,_bp
      002265 24 05            [12]  916 	add	a,#0x05
      002267 F8               [12]  917 	mov	r0,a
      002268 86 F0            [24]  918 	mov	b,@r0
      00226A 05 F0            [12]  919 	inc	b
      00226C EF               [12]  920 	mov	a,r7
      00226D 80 02            [24]  921 	sjmp	00257$
      00226F                        922 00255$:
      00226F 25 E0            [12]  923 	add	a,acc
      002271                        924 00257$:
      002271 D5 F0 FB         [24]  925 	djnz	b,00255$
      002274 54 80            [12]  926 	anl	a,#0x80
      002276 FF               [12]  927 	mov	r7,a
      002277 EC               [12]  928 	mov	a,r4
      002278 24 31            [12]  929 	add	a,#_ddata
      00227A F8               [12]  930 	mov	r0,a
      00227B E6               [12]  931 	mov	a,@r0
      00227C C3               [12]  932 	clr	c
      00227D 13               [12]  933 	rrc	a
      00227E FE               [12]  934 	mov	r6,a
      00227F 4F               [12]  935 	orl	a,r7
      002280 F7               [12]  936 	mov	@r1,a
                                    937 ;	disp.c:227: for (j = 0u; j < 8u; j++)
      002281 0C               [12]  938 	inc	r4
      002282 BC 08 00         [24]  939 	cjne	r4,#0x08,00258$
      002285                        940 00258$:
      002285 40 C9            [24]  941 	jc	00147$
                                    942 ;	disp.c:230: skip_shift:
      002287                        943 00113$:
                                    944 ;	disp.c:231: if ((c = getchar_poll()) >= 0) {
      002287 C0 05            [24]  945 	push	ar5
      002289 12 26 34         [24]  946 	lcall	_getchar_poll
      00228C AB 82            [24]  947 	mov	r3,dpl
      00228E AC 83            [24]  948 	mov	r4,dph
      002290 D0 05            [24]  949 	pop	ar5
      002292 8B 07            [24]  950 	mov	ar7,r3
      002294 EC               [12]  951 	mov	a,r4
      002295 FE               [12]  952 	mov	r6,a
      002296 30 E7 03         [24]  953 	jnb	acc.7,00260$
      002299 02 23 94         [24]  954 	ljmp	00150$
      00229C                        955 00260$:
                                    956 ;	disp.c:232: c = toupper(c);
      00229C 8F 82            [24]  957 	mov	dpl,r7
      00229E 8E 83            [24]  958 	mov	dph,r6
      0022A0 C0 05            [24]  959 	push	ar5
      0022A2 12 29 33         [24]  960 	lcall	_toupper
      0022A5 AB 82            [24]  961 	mov	r3,dpl
      0022A7 AC 83            [24]  962 	mov	r4,dph
      0022A9 D0 05            [24]  963 	pop	ar5
                                    964 ;	disp.c:233: if (c == (int)' ') {
      0022AB BB 20 1F         [24]  965 	cjne	r3,#0x20,00128$
      0022AE BC 00 1C         [24]  966 	cjne	r4,#0x00,00128$
                                    967 ;	disp.c:234: printstr("PAUSE\r\n");
      0022B1 90 2A 66         [24]  968 	mov	dptr,#___str_4
      0022B4 75 F0 80         [24]  969 	mov	b,#0x80
      0022B7 C0 05            [24]  970 	push	ar5
      0022B9 12 26 4E         [24]  971 	lcall	_printstr
                                    972 ;	disp.c:235: (void)getchar();
      0022BC 12 26 27         [24]  973 	lcall	_getchar
                                    974 ;	disp.c:236: printstr("RESUME\r\n");
      0022BF 90 2A 6E         [24]  975 	mov	dptr,#___str_5
      0022C2 75 F0 80         [24]  976 	mov	b,#0x80
      0022C5 12 26 4E         [24]  977 	lcall	_printstr
      0022C8 D0 05            [24]  978 	pop	ar5
      0022CA 02 23 94         [24]  979 	ljmp	00150$
      0022CD                        980 00128$:
                                    981 ;	disp.c:237: } else if (c == (int)'?') {
      0022CD BB 3F 45         [24]  982 	cjne	r3,#0x3f,00125$
      0022D0 BC 00 42         [24]  983 	cjne	r4,#0x00,00125$
                                    984 ;	disp.c:118: printstr("? P SP ");
      0022D3 90 2A 55         [24]  985 	mov	dptr,#___str_2
      0022D6 75 F0 80         [24]  986 	mov	b,#0x80
      0022D9 C0 05            [24]  987 	push	ar5
      0022DB 12 26 4E         [24]  988 	lcall	_printstr
                                    989 ;	disp.c:111: putchar((int)'I');
      0022DE 90 00 49         [24]  990 	mov	dptr,#0x0049
      0022E1 12 26 1D         [24]  991 	lcall	_putchar
      0022E4 D0 05            [24]  992 	pop	ar5
                                    993 ;	disp.c:112: putchar(inv ? (int)'1' : (int)'0');
      0022E6 78 3B            [12]  994 	mov	r0,#_inv
      0022E8 E6               [12]  995 	mov	a,@r0
      0022E9 60 06            [24]  996 	jz	00153$
      0022EB 7A 31            [12]  997 	mov	r2,#0x31
      0022ED 7F 00            [12]  998 	mov	r7,#0x00
      0022EF 80 04            [24]  999 	sjmp	00154$
      0022F1                       1000 00153$:
      0022F1 7A 30            [12] 1001 	mov	r2,#0x30
      0022F3 7F 00            [12] 1002 	mov	r7,#0x00
      0022F5                       1003 00154$:
      0022F5 8A 82            [24] 1004 	mov	dpl,r2
      0022F7 8F 83            [24] 1005 	mov	dph,r7
      0022F9 C0 05            [24] 1006 	push	ar5
      0022FB 12 26 1D         [24] 1007 	lcall	_putchar
                                   1008 ;	disp.c:120: printstr(" L S R T");
      0022FE 90 2A 5D         [24] 1009 	mov	dptr,#___str_3
      002301 75 F0 80         [24] 1010 	mov	b,#0x80
      002304 12 26 4E         [24] 1011 	lcall	_printstr
                                   1012 ;	disp.c:97: printstr("\r\n");
      002307 90 2A 4C         [24] 1013 	mov	dptr,#___str_0
      00230A 75 F0 80         [24] 1014 	mov	b,#0x80
      00230D 12 26 4E         [24] 1015 	lcall	_printstr
      002310 D0 05            [24] 1016 	pop	ar5
                                   1017 ;	disp.c:238: pinfo();
      002312 02 23 94         [24] 1018 	ljmp	00150$
      002315                       1019 00125$:
                                   1020 ;	disp.c:239: } else if (c == (int)'P') {
      002315 BB 50 2A         [24] 1021 	cjne	r3,#0x50,00122$
      002318 BC 00 27         [24] 1022 	cjne	r4,#0x00,00122$
                                   1023 ;	disp.c:103: printstr("MSG \"");
      00231B 90 2A 4F         [24] 1024 	mov	dptr,#___str_1
      00231E 75 F0 80         [24] 1025 	mov	b,#0x80
      002321 C0 05            [24] 1026 	push	ar5
      002323 12 26 4E         [24] 1027 	lcall	_printstr
                                   1028 ;	disp.c:104: printstr((char *)buf);
      002326 90 80 00         [24] 1029 	mov	dptr,#_buf
      002329 75 F0 00         [24] 1030 	mov	b,#0x00
      00232C 12 26 4E         [24] 1031 	lcall	_printstr
                                   1032 ;	disp.c:105: putchar((int)'"');
      00232F 90 00 22         [24] 1033 	mov	dptr,#0x0022
      002332 12 26 1D         [24] 1034 	lcall	_putchar
                                   1035 ;	disp.c:97: printstr("\r\n");
      002335 90 2A 4C         [24] 1036 	mov	dptr,#___str_0
      002338 75 F0 80         [24] 1037 	mov	b,#0x80
      00233B 12 26 4E         [24] 1038 	lcall	_printstr
      00233E D0 05            [24] 1039 	pop	ar5
                                   1040 ;	disp.c:241: pnl();
      002340 80 52            [24] 1041 	sjmp	00150$
      002342                       1042 00122$:
                                   1043 ;	disp.c:242: } else if (c == (int)'I') {
      002342 BB 49 37         [24] 1044 	cjne	r3,#0x49,00119$
      002345 BC 00 34         [24] 1045 	cjne	r4,#0x00,00119$
                                   1046 ;	disp.c:243: inv = ~inv;
      002348 78 3B            [12] 1047 	mov	r0,#_inv
      00234A E6               [12] 1048 	mov	a,@r0
      00234B F4               [12] 1049 	cpl	a
      00234C F6               [12] 1050 	mov	@r0,a
                                   1051 ;	disp.c:111: putchar((int)'I');
      00234D 90 00 49         [24] 1052 	mov	dptr,#0x0049
      002350 C0 05            [24] 1053 	push	ar5
      002352 12 26 1D         [24] 1054 	lcall	_putchar
      002355 D0 05            [24] 1055 	pop	ar5
                                   1056 ;	disp.c:112: putchar(inv ? (int)'1' : (int)'0');
      002357 78 3B            [12] 1057 	mov	r0,#_inv
      002359 E6               [12] 1058 	mov	a,@r0
      00235A 60 06            [24] 1059 	jz	00155$
      00235C 7E 31            [12] 1060 	mov	r6,#0x31
      00235E 7F 00            [12] 1061 	mov	r7,#0x00
      002360 80 04            [24] 1062 	sjmp	00156$
      002362                       1063 00155$:
      002362 7E 30            [12] 1064 	mov	r6,#0x30
      002364 7F 00            [12] 1065 	mov	r7,#0x00
      002366                       1066 00156$:
      002366 8E 82            [24] 1067 	mov	dpl,r6
      002368 8F 83            [24] 1068 	mov	dph,r7
      00236A C0 05            [24] 1069 	push	ar5
      00236C 12 26 1D         [24] 1070 	lcall	_putchar
                                   1071 ;	disp.c:97: printstr("\r\n");
      00236F 90 2A 4C         [24] 1072 	mov	dptr,#___str_0
      002372 75 F0 80         [24] 1073 	mov	b,#0x80
      002375 12 26 4E         [24] 1074 	lcall	_printstr
      002378 D0 05            [24] 1075 	pop	ar5
                                   1076 ;	disp.c:245: pnl();
      00237A 80 18            [24] 1077 	sjmp	00150$
      00237C                       1078 00119$:
                                   1079 ;	disp.c:246: } else if ((c == (int)'T') || (c == (int)'R') || (c == (int)'L')) break;
      00237C BB 54 05         [24] 1080 	cjne	r3,#0x54,00271$
      00237F BC 00 02         [24] 1081 	cjne	r4,#0x00,00271$
      002382 80 1A            [24] 1082 	sjmp	00132$
      002384                       1083 00271$:
      002384 BB 52 05         [24] 1084 	cjne	r3,#0x52,00272$
      002387 BC 00 02         [24] 1085 	cjne	r4,#0x00,00272$
      00238A 80 12            [24] 1086 	sjmp	00132$
      00238C                       1087 00272$:
      00238C BB 4C 05         [24] 1088 	cjne	r3,#0x4c,00273$
      00238F BC 00 02         [24] 1089 	cjne	r4,#0x00,00273$
      002392 80 0A            [24] 1090 	sjmp	00132$
      002394                       1091 00273$:
      002394                       1092 00150$:
                                   1093 ;	disp.c:212: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002394 ED               [12] 1094 	mov	a,r5
      002395 04               [12] 1095 	inc	a
      002396 FF               [12] 1096 	mov	r7,a
      002397 74 07            [12] 1097 	mov	a,#0x07
      002399 5F               [12] 1098 	anl	a,r7
      00239A FD               [12] 1099 	mov	r5,a
      00239B 02 21 93         [24] 1100 	ljmp	00149$
      00239E                       1101 00132$:
                                   1102 ;	disp.c:250: return c;
      00239E 8B 82            [24] 1103 	mov	dpl,r3
      0023A0 8C 83            [24] 1104 	mov	dph,r4
                                   1105 ;	disp.c:251: }
      0023A2 85 10 81         [24] 1106 	mov	sp,_bp
      0023A5 D0 10            [24] 1107 	pop	_bp
      0023A7 22               [24] 1108 	ret
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'main'
                                   1111 ;------------------------------------------------------------
                                   1112 ;j                         Allocated to stack - _bp +1
                                   1113 ;c                         Allocated to registers r7 r6 
                                   1114 ;sloc0                     Allocated to stack - _bp +5
                                   1115 ;------------------------------------------------------------
                                   1116 ;	disp.c:253: void main(void) {
                                   1117 ;	-----------------------------------------
                                   1118 ;	 function main
                                   1119 ;	-----------------------------------------
      0023A8                       1120 _main:
      0023A8 C0 10            [24] 1121 	push	_bp
      0023AA 85 81 10         [24] 1122 	mov	_bp,sp
      0023AD 05 81            [12] 1123 	inc	sp
      0023AF 05 81            [12] 1124 	inc	sp
                                   1125 ;	disp.c:257: gpo_init();
      0023B1 12 20 AD         [24] 1126 	lcall	_gpo_init
                                   1127 ;	disp.c:258: gpo_clear();
      0023B4 12 20 CE         [24] 1128 	lcall	_gpo_clear
                                   1129 ;	disp.c:259: init_disp();
      0023B7 12 21 0A         [24] 1130 	lcall	_init_disp
                                   1131 ;	disp.c:260: init_timer0();
      0023BA 12 20 F2         [24] 1132 	lcall	_init_timer0
                                   1133 ;	disp.c:261: init_timer1();
      0023BD 12 20 FE         [24] 1134 	lcall	_init_timer1
                                   1135 ;	disp.c:262: init_intr();
      0023C0 12 20 E7         [24] 1136 	lcall	_init_intr
                                   1137 ;	disp.c:263: TR0 = 1;
                                   1138 ;	assignBit
      0023C3 D2 8C            [12] 1139 	setb	_TR0
                                   1140 ;	disp.c:265: reset:
      0023C5                       1141 00101$:
                                   1142 ;	disp.c:266: init_disp();
      0023C5 12 21 0A         [24] 1143 	lcall	_init_disp
                                   1144 ;	disp.c:267: printstr("RESET\r\n");
      0023C8 90 2A 77         [24] 1145 	mov	dptr,#___str_6
      0023CB 75 F0 80         [24] 1146 	mov	b,#0x80
      0023CE 12 26 4E         [24] 1147 	lcall	_printstr
                                   1148 ;	disp.c:268: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      0023D1 E4               [12] 1149 	clr	a
      0023D2 C0 E0            [24] 1150 	push	acc
      0023D4 04               [12] 1151 	inc	a
      0023D5 C0 E0            [24] 1152 	push	acc
      0023D7 90 89 01         [24] 1153 	mov	dptr,#_initial
      0023DA E0               [24] 1154 	movx	a,@dptr
      0023DB C0 E0            [24] 1155 	push	acc
      0023DD A3               [24] 1156 	inc	dptr
      0023DE E0               [24] 1157 	movx	a,@dptr
      0023DF C0 E0            [24] 1158 	push	acc
      0023E1 A3               [24] 1159 	inc	dptr
      0023E2 E0               [24] 1160 	movx	a,@dptr
      0023E3 C0 E0            [24] 1161 	push	acc
      0023E5 90 80 00         [24] 1162 	mov	dptr,#_buf
      0023E8 75 F0 00         [24] 1163 	mov	b,#0x00
      0023EB 12 29 5A         [24] 1164 	lcall	_strncpy
      0023EE E5 81            [12] 1165 	mov	a,sp
      0023F0 24 FB            [12] 1166 	add	a,#0xfb
      0023F2 F5 81            [12] 1167 	mov	sp,a
                                   1168 ;	disp.c:269: buf[sizeof (buf) - 1u] = 0u;
      0023F4 90 81 00         [24] 1169 	mov	dptr,#(_buf + 0x0100)
      0023F7 E4               [12] 1170 	clr	a
      0023F8 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	disp.c:270: inv = 0u;
      0023F9 78 3B            [12] 1173 	mov	r0,#_inv
      0023FB 76 00            [12] 1174 	mov	@r0,#0x00
                                   1175 ;	disp.c:271: printstr("INITIAL ");
      0023FD 90 2A 7F         [24] 1176 	mov	dptr,#___str_7
      002400 75 F0 80         [24] 1177 	mov	b,#0x80
      002403 12 26 4E         [24] 1178 	lcall	_printstr
                                   1179 ;	disp.c:273: while (1) {
      002406                       1180 00131$:
                                   1181 ;	disp.c:103: printstr("MSG \"");
      002406 90 2A 4F         [24] 1182 	mov	dptr,#___str_1
      002409 75 F0 80         [24] 1183 	mov	b,#0x80
      00240C 12 26 4E         [24] 1184 	lcall	_printstr
                                   1185 ;	disp.c:104: printstr((char *)buf);
      00240F 90 80 00         [24] 1186 	mov	dptr,#_buf
      002412 75 F0 00         [24] 1187 	mov	b,#0x00
      002415 12 26 4E         [24] 1188 	lcall	_printstr
                                   1189 ;	disp.c:105: putchar((int)'"');
      002418 90 00 22         [24] 1190 	mov	dptr,#0x0022
      00241B 12 26 1D         [24] 1191 	lcall	_putchar
                                   1192 ;	disp.c:97: printstr("\r\n");
      00241E 90 2A 4C         [24] 1193 	mov	dptr,#___str_0
      002421 75 F0 80         [24] 1194 	mov	b,#0x80
      002424 12 26 4E         [24] 1195 	lcall	_printstr
                                   1196 ;	disp.c:118: printstr("? P SP ");
      002427 90 2A 55         [24] 1197 	mov	dptr,#___str_2
      00242A 75 F0 80         [24] 1198 	mov	b,#0x80
      00242D 12 26 4E         [24] 1199 	lcall	_printstr
                                   1200 ;	disp.c:111: putchar((int)'I');
      002430 90 00 49         [24] 1201 	mov	dptr,#0x0049
      002433 12 26 1D         [24] 1202 	lcall	_putchar
                                   1203 ;	disp.c:112: putchar(inv ? (int)'1' : (int)'0');
      002436 78 3B            [12] 1204 	mov	r0,#_inv
      002438 E6               [12] 1205 	mov	a,@r0
      002439 60 06            [24] 1206 	jz	00153$
      00243B 7E 31            [12] 1207 	mov	r6,#0x31
      00243D 7F 00            [12] 1208 	mov	r7,#0x00
      00243F 80 04            [24] 1209 	sjmp	00154$
      002441                       1210 00153$:
      002441 7E 30            [12] 1211 	mov	r6,#0x30
      002443 7F 00            [12] 1212 	mov	r7,#0x00
      002445                       1213 00154$:
      002445 8E 82            [24] 1214 	mov	dpl,r6
      002447 8F 83            [24] 1215 	mov	dph,r7
      002449 12 26 1D         [24] 1216 	lcall	_putchar
                                   1217 ;	disp.c:120: printstr(" L S R T");
      00244C 90 2A 5D         [24] 1218 	mov	dptr,#___str_3
      00244F 75 F0 80         [24] 1219 	mov	b,#0x80
      002452 12 26 4E         [24] 1220 	lcall	_printstr
                                   1221 ;	disp.c:97: printstr("\r\n");
      002455 90 2A 4C         [24] 1222 	mov	dptr,#___str_0
      002458 75 F0 80         [24] 1223 	mov	b,#0x80
      00245B 12 26 4E         [24] 1224 	lcall	_printstr
                                   1225 ;	disp.c:278: c = scroll(buf);
      00245E 90 80 00         [24] 1226 	mov	dptr,#_buf
      002461 75 F0 00         [24] 1227 	mov	b,#0x00
      002464 12 21 77         [24] 1228 	lcall	_scroll
      002467 AE 82            [24] 1229 	mov	r6,dpl
      002469 AF 83            [24] 1230 	mov	r7,dph
                                   1231 ;	disp.c:280: while (1) {
      00246B                       1232 00128$:
                                   1233 ;	disp.c:281: if (c == (int)'T') goto term;
      00246B BE 54 06         [24] 1234 	cjne	r6,#0x54,00230$
      00246E BF 00 03         [24] 1235 	cjne	r7,#0x00,00230$
      002471 02 26 06         [24] 1236 	ljmp	00133$
      002474                       1237 00230$:
                                   1238 ;	disp.c:282: else if (c == (int)'R') goto reset;
      002474 BE 52 06         [24] 1239 	cjne	r6,#0x52,00231$
      002477 BF 00 03         [24] 1240 	cjne	r7,#0x00,00231$
      00247A 02 23 C5         [24] 1241 	ljmp	00101$
      00247D                       1242 00231$:
                                   1243 ;	disp.c:283: else if (c == (int)'?') pinfo();
      00247D BE 3F 3D         [24] 1244 	cjne	r6,#0x3f,00119$
      002480 BF 00 3A         [24] 1245 	cjne	r7,#0x00,00119$
                                   1246 ;	disp.c:118: printstr("? P SP ");
      002483 90 2A 55         [24] 1247 	mov	dptr,#___str_2
      002486 75 F0 80         [24] 1248 	mov	b,#0x80
      002489 12 26 4E         [24] 1249 	lcall	_printstr
                                   1250 ;	disp.c:111: putchar((int)'I');
      00248C 90 00 49         [24] 1251 	mov	dptr,#0x0049
      00248F 12 26 1D         [24] 1252 	lcall	_putchar
                                   1253 ;	disp.c:112: putchar(inv ? (int)'1' : (int)'0');
      002492 78 3B            [12] 1254 	mov	r0,#_inv
      002494 E6               [12] 1255 	mov	a,@r0
      002495 60 06            [24] 1256 	jz	00155$
      002497 7C 31            [12] 1257 	mov	r4,#0x31
      002499 7D 00            [12] 1258 	mov	r5,#0x00
      00249B 80 04            [24] 1259 	sjmp	00156$
      00249D                       1260 00155$:
      00249D 7C 30            [12] 1261 	mov	r4,#0x30
      00249F 7D 00            [12] 1262 	mov	r5,#0x00
      0024A1                       1263 00156$:
      0024A1 8C 82            [24] 1264 	mov	dpl,r4
      0024A3 8D 83            [24] 1265 	mov	dph,r5
      0024A5 12 26 1D         [24] 1266 	lcall	_putchar
                                   1267 ;	disp.c:120: printstr(" L S R T");
      0024A8 90 2A 5D         [24] 1268 	mov	dptr,#___str_3
      0024AB 75 F0 80         [24] 1269 	mov	b,#0x80
      0024AE 12 26 4E         [24] 1270 	lcall	_printstr
                                   1271 ;	disp.c:97: printstr("\r\n");
      0024B1 90 2A 4C         [24] 1272 	mov	dptr,#___str_0
      0024B4 75 F0 80         [24] 1273 	mov	b,#0x80
      0024B7 12 26 4E         [24] 1274 	lcall	_printstr
                                   1275 ;	disp.c:283: else if (c == (int)'?') pinfo();
      0024BA 02 25 F9         [24] 1276 	ljmp	00126$
      0024BD                       1277 00119$:
                                   1278 ;	disp.c:284: else if (c == (int)'P') {
      0024BD BE 50 27         [24] 1279 	cjne	r6,#0x50,00116$
      0024C0 BF 00 24         [24] 1280 	cjne	r7,#0x00,00116$
                                   1281 ;	disp.c:103: printstr("MSG \"");
      0024C3 90 2A 4F         [24] 1282 	mov	dptr,#___str_1
      0024C6 75 F0 80         [24] 1283 	mov	b,#0x80
      0024C9 12 26 4E         [24] 1284 	lcall	_printstr
                                   1285 ;	disp.c:104: printstr((char *)buf);
      0024CC 90 80 00         [24] 1286 	mov	dptr,#_buf
      0024CF 75 F0 00         [24] 1287 	mov	b,#0x00
      0024D2 12 26 4E         [24] 1288 	lcall	_printstr
                                   1289 ;	disp.c:105: putchar((int)'"');
      0024D5 90 00 22         [24] 1290 	mov	dptr,#0x0022
      0024D8 12 26 1D         [24] 1291 	lcall	_putchar
                                   1292 ;	disp.c:97: printstr("\r\n");
      0024DB 90 2A 4C         [24] 1293 	mov	dptr,#___str_0
      0024DE 75 F0 80         [24] 1294 	mov	b,#0x80
      0024E1 12 26 4E         [24] 1295 	lcall	_printstr
                                   1296 ;	disp.c:286: pnl();
      0024E4 02 25 F9         [24] 1297 	ljmp	00126$
      0024E7                       1298 00116$:
                                   1299 ;	disp.c:287: } else if (c == (int)'I') {
      0024E7 BE 49 30         [24] 1300 	cjne	r6,#0x49,00113$
      0024EA BF 00 2D         [24] 1301 	cjne	r7,#0x00,00113$
                                   1302 ;	disp.c:288: inv = ~inv;
      0024ED 78 3B            [12] 1303 	mov	r0,#_inv
      0024EF E6               [12] 1304 	mov	a,@r0
      0024F0 F4               [12] 1305 	cpl	a
      0024F1 F6               [12] 1306 	mov	@r0,a
                                   1307 ;	disp.c:111: putchar((int)'I');
      0024F2 90 00 49         [24] 1308 	mov	dptr,#0x0049
      0024F5 12 26 1D         [24] 1309 	lcall	_putchar
                                   1310 ;	disp.c:112: putchar(inv ? (int)'1' : (int)'0');
      0024F8 78 3B            [12] 1311 	mov	r0,#_inv
      0024FA E6               [12] 1312 	mov	a,@r0
      0024FB 60 06            [24] 1313 	jz	00157$
      0024FD 7C 31            [12] 1314 	mov	r4,#0x31
      0024FF 7D 00            [12] 1315 	mov	r5,#0x00
      002501 80 04            [24] 1316 	sjmp	00158$
      002503                       1317 00157$:
      002503 7C 30            [12] 1318 	mov	r4,#0x30
      002505 7D 00            [12] 1319 	mov	r5,#0x00
      002507                       1320 00158$:
      002507 8C 82            [24] 1321 	mov	dpl,r4
      002509 8D 83            [24] 1322 	mov	dph,r5
      00250B 12 26 1D         [24] 1323 	lcall	_putchar
                                   1324 ;	disp.c:97: printstr("\r\n");
      00250E 90 2A 4C         [24] 1325 	mov	dptr,#___str_0
      002511 75 F0 80         [24] 1326 	mov	b,#0x80
      002514 12 26 4E         [24] 1327 	lcall	_printstr
                                   1328 ;	disp.c:290: pnl();
      002517 02 25 F9         [24] 1329 	ljmp	00126$
      00251A                       1330 00113$:
                                   1331 ;	disp.c:291: } else if (c == (int)'L') {
      00251A BE 4C 05         [24] 1332 	cjne	r6,#0x4c,00240$
      00251D BF 00 02         [24] 1333 	cjne	r7,#0x00,00240$
      002520 80 03            [24] 1334 	sjmp	00241$
      002522                       1335 00240$:
      002522 02 25 F0         [24] 1336 	ljmp	00110$
      002525                       1337 00241$:
                                   1338 ;	disp.c:292: init_disp();
      002525 12 21 0A         [24] 1339 	lcall	_init_disp
                                   1340 ;	disp.c:293: printstr("LOAD ");
      002528 90 2A 88         [24] 1341 	mov	dptr,#___str_8
      00252B 75 F0 80         [24] 1342 	mov	b,#0x80
      00252E 12 26 4E         [24] 1343 	lcall	_printstr
                                   1344 ;	disp.c:294: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002531 7C 00            [12] 1345 	mov	r4,#0x00
      002533 7D 00            [12] 1346 	mov	r5,#0x00
      002535 A8 10            [24] 1347 	mov	r0,_bp
      002537 08               [12] 1348 	inc	r0
      002538 E4               [12] 1349 	clr	a
      002539 F6               [12] 1350 	mov	@r0,a
      00253A 08               [12] 1351 	inc	r0
      00253B F6               [12] 1352 	mov	@r0,a
      00253C                       1353 00149$:
                                   1354 ;	disp.c:295: c = getchar();
      00253C C0 04            [24] 1355 	push	ar4
      00253E C0 05            [24] 1356 	push	ar5
      002540 12 26 27         [24] 1357 	lcall	_getchar
      002543 AC 82            [24] 1358 	mov	r4,dpl
      002545 AD 83            [24] 1359 	mov	r5,dph
      002547 8C 07            [24] 1360 	mov	ar7,r4
      002549 8D 06            [24] 1361 	mov	ar6,r5
                                   1362 ;	disp.c:296: (void)putchar(c);
      00254B 8F 82            [24] 1363 	mov	dpl,r7
      00254D 8E 83            [24] 1364 	mov	dph,r6
      00254F C0 07            [24] 1365 	push	ar7
      002551 C0 06            [24] 1366 	push	ar6
      002553 C0 05            [24] 1367 	push	ar5
      002555 C0 04            [24] 1368 	push	ar4
      002557 12 26 1D         [24] 1369 	lcall	_putchar
      00255A D0 04            [24] 1370 	pop	ar4
      00255C D0 05            [24] 1371 	pop	ar5
      00255E D0 06            [24] 1372 	pop	ar6
      002560 D0 07            [24] 1373 	pop	ar7
                                   1374 ;	disp.c:297: if ((c == (int)'\r') || (c == (int)'\n')) {
      002562 BF 0D 09         [24] 1375 	cjne	r7,#0x0d,00242$
      002565 BE 00 06         [24] 1376 	cjne	r6,#0x00,00242$
      002568 D0 05            [24] 1377 	pop	ar5
      00256A D0 04            [24] 1378 	pop	ar4
      00256C 80 0A            [24] 1379 	sjmp	00102$
      00256E                       1380 00242$:
      00256E D0 05            [24] 1381 	pop	ar5
      002570 D0 04            [24] 1382 	pop	ar4
      002572 BF 0A 11         [24] 1383 	cjne	r7,#0x0a,00103$
      002575 BE 00 0E         [24] 1384 	cjne	r6,#0x00,00103$
      002578                       1385 00102$:
                                   1386 ;	disp.c:298: buf[j] = 0u;
      002578 EC               [12] 1387 	mov	a,r4
      002579 24 00            [12] 1388 	add	a,#_buf
      00257B F5 82            [12] 1389 	mov	dpl,a
      00257D ED               [12] 1390 	mov	a,r5
      00257E 34 80            [12] 1391 	addc	a,#(_buf >> 8)
      002580 F5 83            [12] 1392 	mov	dph,a
      002582 E4               [12] 1393 	clr	a
      002583 F0               [24] 1394 	movx	@dptr,a
                                   1395 ;	disp.c:299: break;
      002584 80 32            [24] 1396 	sjmp	00106$
      002586                       1397 00103$:
                                   1398 ;	disp.c:300: } else buf[j] = c & 0xffu;
      002586 A8 10            [24] 1399 	mov	r0,_bp
      002588 08               [12] 1400 	inc	r0
      002589 E6               [12] 1401 	mov	a,@r0
      00258A 24 00            [12] 1402 	add	a,#_buf
      00258C FD               [12] 1403 	mov	r5,a
      00258D 08               [12] 1404 	inc	r0
      00258E E6               [12] 1405 	mov	a,@r0
      00258F 34 80            [12] 1406 	addc	a,#(_buf >> 8)
      002591 FC               [12] 1407 	mov	r4,a
      002592 8F 03            [24] 1408 	mov	ar3,r7
      002594 8D 82            [24] 1409 	mov	dpl,r5
      002596 8C 83            [24] 1410 	mov	dph,r4
      002598 EB               [12] 1411 	mov	a,r3
      002599 F0               [24] 1412 	movx	@dptr,a
                                   1413 ;	disp.c:294: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00259A A8 10            [24] 1414 	mov	r0,_bp
      00259C 08               [12] 1415 	inc	r0
      00259D 06               [12] 1416 	inc	@r0
      00259E B6 00 02         [24] 1417 	cjne	@r0,#0x00,00245$
      0025A1 08               [12] 1418 	inc	r0
      0025A2 06               [12] 1419 	inc	@r0
      0025A3                       1420 00245$:
      0025A3 A8 10            [24] 1421 	mov	r0,_bp
      0025A5 08               [12] 1422 	inc	r0
      0025A6 86 04            [24] 1423 	mov	ar4,@r0
      0025A8 08               [12] 1424 	inc	r0
      0025A9 86 05            [24] 1425 	mov	ar5,@r0
      0025AB A8 10            [24] 1426 	mov	r0,_bp
      0025AD 08               [12] 1427 	inc	r0
      0025AE 86 02            [24] 1428 	mov	ar2,@r0
      0025B0 08               [12] 1429 	inc	r0
      0025B1 86 03            [24] 1430 	mov	ar3,@r0
      0025B3 74 FF            [12] 1431 	mov	a,#0x100 - 0x01
      0025B5 2B               [12] 1432 	add	a,r3
      0025B6 50 84            [24] 1433 	jnc	00149$
      0025B8                       1434 00106$:
                                   1435 ;	disp.c:302: buf[j] = 0u;
      0025B8 EC               [12] 1436 	mov	a,r4
      0025B9 24 00            [12] 1437 	add	a,#_buf
      0025BB F5 82            [12] 1438 	mov	dpl,a
      0025BD ED               [12] 1439 	mov	a,r5
      0025BE 34 80            [12] 1440 	addc	a,#(_buf >> 8)
      0025C0 F5 83            [12] 1441 	mov	dph,a
      0025C2 E4               [12] 1442 	clr	a
      0025C3 F0               [24] 1443 	movx	@dptr,a
                                   1444 ;	disp.c:97: printstr("\r\n");
      0025C4 90 2A 4C         [24] 1445 	mov	dptr,#___str_0
      0025C7 75 F0 80         [24] 1446 	mov	b,#0x80
      0025CA 12 26 4E         [24] 1447 	lcall	_printstr
                                   1448 ;	disp.c:103: printstr("MSG \"");
      0025CD 90 2A 4F         [24] 1449 	mov	dptr,#___str_1
      0025D0 75 F0 80         [24] 1450 	mov	b,#0x80
      0025D3 12 26 4E         [24] 1451 	lcall	_printstr
                                   1452 ;	disp.c:104: printstr((char *)buf);
      0025D6 90 80 00         [24] 1453 	mov	dptr,#_buf
      0025D9 75 F0 00         [24] 1454 	mov	b,#0x00
      0025DC 12 26 4E         [24] 1455 	lcall	_printstr
                                   1456 ;	disp.c:105: putchar((int)'"');
      0025DF 90 00 22         [24] 1457 	mov	dptr,#0x0022
      0025E2 12 26 1D         [24] 1458 	lcall	_putchar
                                   1459 ;	disp.c:97: printstr("\r\n");
      0025E5 90 2A 4C         [24] 1460 	mov	dptr,#___str_0
      0025E8 75 F0 80         [24] 1461 	mov	b,#0x80
      0025EB 12 26 4E         [24] 1462 	lcall	_printstr
                                   1463 ;	disp.c:305: pnl();
      0025EE 80 09            [24] 1464 	sjmp	00126$
      0025F0                       1465 00110$:
                                   1466 ;	disp.c:306: } else if (c == (int)'S') break;
      0025F0 BE 53 06         [24] 1467 	cjne	r6,#0x53,00247$
      0025F3 BF 00 03         [24] 1468 	cjne	r7,#0x00,00247$
      0025F6 02 24 06         [24] 1469 	ljmp	00131$
      0025F9                       1470 00247$:
      0025F9                       1471 00126$:
                                   1472 ;	disp.c:308: c = toupper(getchar());
      0025F9 12 26 27         [24] 1473 	lcall	_getchar
      0025FC 12 29 33         [24] 1474 	lcall	_toupper
      0025FF AE 82            [24] 1475 	mov	r6,dpl
      002601 AF 83            [24] 1476 	mov	r7,dph
      002603 02 24 6B         [24] 1477 	ljmp	00128$
                                   1478 ;	disp.c:312: term:	
      002606                       1479 00133$:
                                   1480 ;	disp.c:313: EA = 0;
                                   1481 ;	assignBit
      002606 C2 AF            [12] 1482 	clr	_EA
                                   1483 ;	disp.c:314: init_disp();
      002608 12 21 0A         [24] 1484 	lcall	_init_disp
                                   1485 ;	disp.c:315: printstr("TERM\r\n");
      00260B 90 2A 8E         [24] 1486 	mov	dptr,#___str_9
      00260E 75 F0 80         [24] 1487 	mov	b,#0x80
      002611 12 26 4E         [24] 1488 	lcall	_printstr
                                   1489 ;	disp.c:317: PCON |= 2;
      002614 43 87 02         [24] 1490 	orl	_PCON,#0x02
                                   1491 ;	disp.c:319: return;
                                   1492 ;	disp.c:320: }
      002617 85 10 81         [24] 1493 	mov	sp,_bp
      00261A D0 10            [24] 1494 	pop	_bp
      00261C 22               [24] 1495 	ret
                                   1496 	.area CSEG    (CODE)
                                   1497 	.area CONST   (CODE)
                                   1498 	.area CONST   (CODE)
      002A4C                       1499 ___str_0:
      002A4C 0D                    1500 	.db 0x0d
      002A4D 0A                    1501 	.db 0x0a
      002A4E 00                    1502 	.db 0x00
                                   1503 	.area CSEG    (CODE)
                                   1504 	.area CONST   (CODE)
      002A4F                       1505 ___str_1:
      002A4F 4D 53 47 20           1506 	.ascii "MSG "
      002A53 22                    1507 	.db 0x22
      002A54 00                    1508 	.db 0x00
                                   1509 	.area CSEG    (CODE)
                                   1510 	.area CONST   (CODE)
      002A55                       1511 ___str_2:
      002A55 3F 20 50 20 53 50 20  1512 	.ascii "? P SP "
      002A5C 00                    1513 	.db 0x00
                                   1514 	.area CSEG    (CODE)
                                   1515 	.area CONST   (CODE)
      002A5D                       1516 ___str_3:
      002A5D 20 4C 20 53 20 52 20  1517 	.ascii " L S R T"
             54
      002A65 00                    1518 	.db 0x00
                                   1519 	.area CSEG    (CODE)
                                   1520 	.area CONST   (CODE)
      002A66                       1521 ___str_4:
      002A66 50 41 55 53 45        1522 	.ascii "PAUSE"
      002A6B 0D                    1523 	.db 0x0d
      002A6C 0A                    1524 	.db 0x0a
      002A6D 00                    1525 	.db 0x00
                                   1526 	.area CSEG    (CODE)
                                   1527 	.area CONST   (CODE)
      002A6E                       1528 ___str_5:
      002A6E 52 45 53 55 4D 45     1529 	.ascii "RESUME"
      002A74 0D                    1530 	.db 0x0d
      002A75 0A                    1531 	.db 0x0a
      002A76 00                    1532 	.db 0x00
                                   1533 	.area CSEG    (CODE)
                                   1534 	.area CONST   (CODE)
      002A77                       1535 ___str_6:
      002A77 52 45 53 45 54        1536 	.ascii "RESET"
      002A7C 0D                    1537 	.db 0x0d
      002A7D 0A                    1538 	.db 0x0a
      002A7E 00                    1539 	.db 0x00
                                   1540 	.area CSEG    (CODE)
                                   1541 	.area CONST   (CODE)
      002A7F                       1542 ___str_7:
      002A7F 49 4E 49 54 49 41 4C  1543 	.ascii "INITIAL "
             20
      002A87 00                    1544 	.db 0x00
                                   1545 	.area CSEG    (CODE)
                                   1546 	.area CONST   (CODE)
      002A88                       1547 ___str_8:
      002A88 4C 4F 41 44 20        1548 	.ascii "LOAD "
      002A8D 00                    1549 	.db 0x00
                                   1550 	.area CSEG    (CODE)
                                   1551 	.area CONST   (CODE)
      002A8E                       1552 ___str_9:
      002A8E 54 45 52 4D           1553 	.ascii "TERM"
      002A92 0D                    1554 	.db 0x0d
      002A93 0A                    1555 	.db 0x0a
      002A94 00                    1556 	.db 0x00
                                   1557 	.area CSEG    (CODE)
                                   1558 	.area CONST   (CODE)
      002A95                       1559 ___str_10:
      002A95 43 41 45 44 49 54 45  1560 	.ascii "CAEDITE EOS : NOVIT ENIM DOMINVS QVI SVNT EIVS : "
             20 45 4F 53 20 3A 20
             4E 4F 56 49 54 20 45
             4E 49 4D 20 44 4F 4D
             49 4E 56 53 20 51 56
             49 20 53 56 4E 54 20
             45 49 56 53 20 3A 20
      002AC6 00                    1561 	.db 0x00
                                   1562 	.area CSEG    (CODE)
                                   1563 	.area XINIT   (CODE)
      002AD7                       1564 __xinit___ft_font6x8:
      002AD7 00                    1565 	.db #0x00	; 0
      002AD8 00                    1566 	.db #0x00	; 0
      002AD9 00                    1567 	.db #0x00	; 0
      002ADA 00                    1568 	.db #0x00	; 0
      002ADB 00                    1569 	.db #0x00	; 0
      002ADC 00                    1570 	.db #0x00	; 0
      002ADD 00                    1571 	.db #0x00	; 0
      002ADE 00                    1572 	.db #0x00	; 0
      002ADF 1C                    1573 	.db #0x1c	; 28
      002AE0 22                    1574 	.db #0x22	; 34
      002AE1 36                    1575 	.db #0x36	; 54	'6'
      002AE2 22                    1576 	.db #0x22	; 34
      002AE3 2A                    1577 	.db #0x2a	; 42
      002AE4 22                    1578 	.db #0x22	; 34
      002AE5 1C                    1579 	.db #0x1c	; 28
      002AE6 00                    1580 	.db #0x00	; 0
      002AE7 1C                    1581 	.db #0x1c	; 28
      002AE8 3E                    1582 	.db #0x3e	; 62
      002AE9 2A                    1583 	.db #0x2a	; 42
      002AEA 3E                    1584 	.db #0x3e	; 62
      002AEB 22                    1585 	.db #0x22	; 34
      002AEC 3E                    1586 	.db #0x3e	; 62
      002AED 1C                    1587 	.db #0x1c	; 28
      002AEE 00                    1588 	.db #0x00	; 0
      002AEF 00                    1589 	.db #0x00	; 0
      002AF0 14                    1590 	.db #0x14	; 20
      002AF1 3E                    1591 	.db #0x3e	; 62
      002AF2 3E                    1592 	.db #0x3e	; 62
      002AF3 3E                    1593 	.db #0x3e	; 62
      002AF4 1C                    1594 	.db #0x1c	; 28
      002AF5 08                    1595 	.db #0x08	; 8
      002AF6 00                    1596 	.db #0x00	; 0
      002AF7 00                    1597 	.db #0x00	; 0
      002AF8 08                    1598 	.db #0x08	; 8
      002AF9 1C                    1599 	.db #0x1c	; 28
      002AFA 3E                    1600 	.db #0x3e	; 62
      002AFB 3E                    1601 	.db #0x3e	; 62
      002AFC 1C                    1602 	.db #0x1c	; 28
      002AFD 08                    1603 	.db #0x08	; 8
      002AFE 00                    1604 	.db #0x00	; 0
      002AFF 08                    1605 	.db #0x08	; 8
      002B00 1C                    1606 	.db #0x1c	; 28
      002B01 1C                    1607 	.db #0x1c	; 28
      002B02 08                    1608 	.db #0x08	; 8
      002B03 3E                    1609 	.db #0x3e	; 62
      002B04 3E                    1610 	.db #0x3e	; 62
      002B05 08                    1611 	.db #0x08	; 8
      002B06 00                    1612 	.db #0x00	; 0
      002B07 00                    1613 	.db #0x00	; 0
      002B08 08                    1614 	.db #0x08	; 8
      002B09 1C                    1615 	.db #0x1c	; 28
      002B0A 3E                    1616 	.db #0x3e	; 62
      002B0B 3E                    1617 	.db #0x3e	; 62
      002B0C 08                    1618 	.db #0x08	; 8
      002B0D 1C                    1619 	.db #0x1c	; 28
      002B0E 00                    1620 	.db #0x00	; 0
      002B0F 00                    1621 	.db #0x00	; 0
      002B10 00                    1622 	.db #0x00	; 0
      002B11 00                    1623 	.db #0x00	; 0
      002B12 0C                    1624 	.db #0x0c	; 12
      002B13 0C                    1625 	.db #0x0c	; 12
      002B14 00                    1626 	.db #0x00	; 0
      002B15 00                    1627 	.db #0x00	; 0
      002B16 00                    1628 	.db #0x00	; 0
      002B17 3F                    1629 	.db #0x3f	; 63
      002B18 3F                    1630 	.db #0x3f	; 63
      002B19 3F                    1631 	.db #0x3f	; 63
      002B1A 33                    1632 	.db #0x33	; 51	'3'
      002B1B 33                    1633 	.db #0x33	; 51	'3'
      002B1C 3F                    1634 	.db #0x3f	; 63
      002B1D 3F                    1635 	.db #0x3f	; 63
      002B1E 3F                    1636 	.db #0x3f	; 63
      002B1F 00                    1637 	.db #0x00	; 0
      002B20 00                    1638 	.db #0x00	; 0
      002B21 1E                    1639 	.db #0x1e	; 30
      002B22 12                    1640 	.db #0x12	; 18
      002B23 12                    1641 	.db #0x12	; 18
      002B24 1E                    1642 	.db #0x1e	; 30
      002B25 00                    1643 	.db #0x00	; 0
      002B26 00                    1644 	.db #0x00	; 0
      002B27 3F                    1645 	.db #0x3f	; 63
      002B28 3F                    1646 	.db #0x3f	; 63
      002B29 21                    1647 	.db #0x21	; 33
      002B2A 2D                    1648 	.db #0x2d	; 45
      002B2B 2D                    1649 	.db #0x2d	; 45
      002B2C 21                    1650 	.db #0x21	; 33
      002B2D 3F                    1651 	.db #0x3f	; 63
      002B2E 3F                    1652 	.db #0x3f	; 63
      002B2F 00                    1653 	.db #0x00	; 0
      002B30 38                    1654 	.db #0x38	; 56	'8'
      002B31 30                    1655 	.db #0x30	; 48	'0'
      002B32 2C                    1656 	.db #0x2c	; 44
      002B33 12                    1657 	.db #0x12	; 18
      002B34 12                    1658 	.db #0x12	; 18
      002B35 0C                    1659 	.db #0x0c	; 12
      002B36 00                    1660 	.db #0x00	; 0
      002B37 1C                    1661 	.db #0x1c	; 28
      002B38 22                    1662 	.db #0x22	; 34
      002B39 22                    1663 	.db #0x22	; 34
      002B3A 1C                    1664 	.db #0x1c	; 28
      002B3B 08                    1665 	.db #0x08	; 8
      002B3C 1C                    1666 	.db #0x1c	; 28
      002B3D 08                    1667 	.db #0x08	; 8
      002B3E 00                    1668 	.db #0x00	; 0
      002B3F 08                    1669 	.db #0x08	; 8
      002B40 18                    1670 	.db #0x18	; 24
      002B41 28                    1671 	.db #0x28	; 40
      002B42 08                    1672 	.db #0x08	; 8
      002B43 0C                    1673 	.db #0x0c	; 12
      002B44 0E                    1674 	.db #0x0e	; 14
      002B45 06                    1675 	.db #0x06	; 6
      002B46 00                    1676 	.db #0x00	; 0
      002B47 30                    1677 	.db #0x30	; 48	'0'
      002B48 2C                    1678 	.db #0x2c	; 44
      002B49 34                    1679 	.db #0x34	; 52	'4'
      002B4A 2C                    1680 	.db #0x2c	; 44
      002B4B 34                    1681 	.db #0x34	; 52	'4'
      002B4C 36                    1682 	.db #0x36	; 54	'6'
      002B4D 06                    1683 	.db #0x06	; 6
      002B4E 00                    1684 	.db #0x00	; 0
      002B4F 00                    1685 	.db #0x00	; 0
      002B50 2A                    1686 	.db #0x2a	; 42
      002B51 1C                    1687 	.db #0x1c	; 28
      002B52 36                    1688 	.db #0x36	; 54	'6'
      002B53 1C                    1689 	.db #0x1c	; 28
      002B54 2A                    1690 	.db #0x2a	; 42
      002B55 00                    1691 	.db #0x00	; 0
      002B56 00                    1692 	.db #0x00	; 0
      002B57 04                    1693 	.db #0x04	; 4
      002B58 0C                    1694 	.db #0x0c	; 12
      002B59 1C                    1695 	.db #0x1c	; 28
      002B5A 3C                    1696 	.db #0x3c	; 60
      002B5B 1C                    1697 	.db #0x1c	; 28
      002B5C 0C                    1698 	.db #0x0c	; 12
      002B5D 04                    1699 	.db #0x04	; 4
      002B5E 00                    1700 	.db #0x00	; 0
      002B5F 10                    1701 	.db #0x10	; 16
      002B60 18                    1702 	.db #0x18	; 24
      002B61 1C                    1703 	.db #0x1c	; 28
      002B62 1E                    1704 	.db #0x1e	; 30
      002B63 1C                    1705 	.db #0x1c	; 28
      002B64 18                    1706 	.db #0x18	; 24
      002B65 10                    1707 	.db #0x10	; 16
      002B66 00                    1708 	.db #0x00	; 0
      002B67 08                    1709 	.db #0x08	; 8
      002B68 1C                    1710 	.db #0x1c	; 28
      002B69 3E                    1711 	.db #0x3e	; 62
      002B6A 08                    1712 	.db #0x08	; 8
      002B6B 3E                    1713 	.db #0x3e	; 62
      002B6C 1C                    1714 	.db #0x1c	; 28
      002B6D 08                    1715 	.db #0x08	; 8
      002B6E 00                    1716 	.db #0x00	; 0
      002B6F 14                    1717 	.db #0x14	; 20
      002B70 14                    1718 	.db #0x14	; 20
      002B71 14                    1719 	.db #0x14	; 20
      002B72 14                    1720 	.db #0x14	; 20
      002B73 14                    1721 	.db #0x14	; 20
      002B74 00                    1722 	.db #0x00	; 0
      002B75 14                    1723 	.db #0x14	; 20
      002B76 00                    1724 	.db #0x00	; 0
      002B77 3C                    1725 	.db #0x3c	; 60
      002B78 2A                    1726 	.db #0x2a	; 42
      002B79 2A                    1727 	.db #0x2a	; 42
      002B7A 2C                    1728 	.db #0x2c	; 44
      002B7B 28                    1729 	.db #0x28	; 40
      002B7C 28                    1730 	.db #0x28	; 40
      002B7D 28                    1731 	.db #0x28	; 40
      002B7E 00                    1732 	.db #0x00	; 0
      002B7F 1C                    1733 	.db #0x1c	; 28
      002B80 22                    1734 	.db #0x22	; 34
      002B81 0C                    1735 	.db #0x0c	; 12
      002B82 14                    1736 	.db #0x14	; 20
      002B83 18                    1737 	.db #0x18	; 24
      002B84 22                    1738 	.db #0x22	; 34
      002B85 1C                    1739 	.db #0x1c	; 28
      002B86 00                    1740 	.db #0x00	; 0
      002B87 00                    1741 	.db #0x00	; 0
      002B88 00                    1742 	.db #0x00	; 0
      002B89 00                    1743 	.db #0x00	; 0
      002B8A 00                    1744 	.db #0x00	; 0
      002B8B 00                    1745 	.db #0x00	; 0
      002B8C 1E                    1746 	.db #0x1e	; 30
      002B8D 1E                    1747 	.db #0x1e	; 30
      002B8E 00                    1748 	.db #0x00	; 0
      002B8F 08                    1749 	.db #0x08	; 8
      002B90 1C                    1750 	.db #0x1c	; 28
      002B91 3E                    1751 	.db #0x3e	; 62
      002B92 08                    1752 	.db #0x08	; 8
      002B93 3E                    1753 	.db #0x3e	; 62
      002B94 1C                    1754 	.db #0x1c	; 28
      002B95 08                    1755 	.db #0x08	; 8
      002B96 1C                    1756 	.db #0x1c	; 28
      002B97 08                    1757 	.db #0x08	; 8
      002B98 1C                    1758 	.db #0x1c	; 28
      002B99 3E                    1759 	.db #0x3e	; 62
      002B9A 08                    1760 	.db #0x08	; 8
      002B9B 08                    1761 	.db #0x08	; 8
      002B9C 08                    1762 	.db #0x08	; 8
      002B9D 08                    1763 	.db #0x08	; 8
      002B9E 00                    1764 	.db #0x00	; 0
      002B9F 08                    1765 	.db #0x08	; 8
      002BA0 08                    1766 	.db #0x08	; 8
      002BA1 08                    1767 	.db #0x08	; 8
      002BA2 08                    1768 	.db #0x08	; 8
      002BA3 3E                    1769 	.db #0x3e	; 62
      002BA4 1C                    1770 	.db #0x1c	; 28
      002BA5 08                    1771 	.db #0x08	; 8
      002BA6 00                    1772 	.db #0x00	; 0
      002BA7 00                    1773 	.db #0x00	; 0
      002BA8 08                    1774 	.db #0x08	; 8
      002BA9 18                    1775 	.db #0x18	; 24
      002BAA 3E                    1776 	.db #0x3e	; 62
      002BAB 18                    1777 	.db #0x18	; 24
      002BAC 08                    1778 	.db #0x08	; 8
      002BAD 00                    1779 	.db #0x00	; 0
      002BAE 00                    1780 	.db #0x00	; 0
      002BAF 00                    1781 	.db #0x00	; 0
      002BB0 08                    1782 	.db #0x08	; 8
      002BB1 0C                    1783 	.db #0x0c	; 12
      002BB2 3E                    1784 	.db #0x3e	; 62
      002BB3 0C                    1785 	.db #0x0c	; 12
      002BB4 08                    1786 	.db #0x08	; 8
      002BB5 00                    1787 	.db #0x00	; 0
      002BB6 00                    1788 	.db #0x00	; 0
      002BB7 00                    1789 	.db #0x00	; 0
      002BB8 00                    1790 	.db #0x00	; 0
      002BB9 00                    1791 	.db #0x00	; 0
      002BBA 02                    1792 	.db #0x02	; 2
      002BBB 02                    1793 	.db #0x02	; 2
      002BBC 02                    1794 	.db #0x02	; 2
      002BBD 3E                    1795 	.db #0x3e	; 62
      002BBE 00                    1796 	.db #0x00	; 0
      002BBF 00                    1797 	.db #0x00	; 0
      002BC0 14                    1798 	.db #0x14	; 20
      002BC1 14                    1799 	.db #0x14	; 20
      002BC2 3E                    1800 	.db #0x3e	; 62
      002BC3 14                    1801 	.db #0x14	; 20
      002BC4 14                    1802 	.db #0x14	; 20
      002BC5 00                    1803 	.db #0x00	; 0
      002BC6 00                    1804 	.db #0x00	; 0
      002BC7 08                    1805 	.db #0x08	; 8
      002BC8 08                    1806 	.db #0x08	; 8
      002BC9 1C                    1807 	.db #0x1c	; 28
      002BCA 1C                    1808 	.db #0x1c	; 28
      002BCB 3E                    1809 	.db #0x3e	; 62
      002BCC 3E                    1810 	.db #0x3e	; 62
      002BCD 00                    1811 	.db #0x00	; 0
      002BCE 00                    1812 	.db #0x00	; 0
      002BCF 3E                    1813 	.db #0x3e	; 62
      002BD0 3E                    1814 	.db #0x3e	; 62
      002BD1 1C                    1815 	.db #0x1c	; 28
      002BD2 1C                    1816 	.db #0x1c	; 28
      002BD3 08                    1817 	.db #0x08	; 8
      002BD4 08                    1818 	.db #0x08	; 8
      002BD5 00                    1819 	.db #0x00	; 0
      002BD6 00                    1820 	.db #0x00	; 0
      002BD7 00                    1821 	.db #0x00	; 0
      002BD8 00                    1822 	.db #0x00	; 0
      002BD9 00                    1823 	.db #0x00	; 0
      002BDA 00                    1824 	.db #0x00	; 0
      002BDB 00                    1825 	.db #0x00	; 0
      002BDC 00                    1826 	.db #0x00	; 0
      002BDD 00                    1827 	.db #0x00	; 0
      002BDE 00                    1828 	.db #0x00	; 0
      002BDF 08                    1829 	.db #0x08	; 8
      002BE0 1C                    1830 	.db #0x1c	; 28
      002BE1 1C                    1831 	.db #0x1c	; 28
      002BE2 08                    1832 	.db #0x08	; 8
      002BE3 08                    1833 	.db #0x08	; 8
      002BE4 00                    1834 	.db #0x00	; 0
      002BE5 08                    1835 	.db #0x08	; 8
      002BE6 00                    1836 	.db #0x00	; 0
      002BE7 36                    1837 	.db #0x36	; 54	'6'
      002BE8 36                    1838 	.db #0x36	; 54	'6'
      002BE9 12                    1839 	.db #0x12	; 18
      002BEA 00                    1840 	.db #0x00	; 0
      002BEB 00                    1841 	.db #0x00	; 0
      002BEC 00                    1842 	.db #0x00	; 0
      002BED 00                    1843 	.db #0x00	; 0
      002BEE 00                    1844 	.db #0x00	; 0
      002BEF 00                    1845 	.db #0x00	; 0
      002BF0 14                    1846 	.db #0x14	; 20
      002BF1 3E                    1847 	.db #0x3e	; 62
      002BF2 14                    1848 	.db #0x14	; 20
      002BF3 14                    1849 	.db #0x14	; 20
      002BF4 3E                    1850 	.db #0x3e	; 62
      002BF5 14                    1851 	.db #0x14	; 20
      002BF6 00                    1852 	.db #0x00	; 0
      002BF7 04                    1853 	.db #0x04	; 4
      002BF8 1C                    1854 	.db #0x1c	; 28
      002BF9 02                    1855 	.db #0x02	; 2
      002BFA 0C                    1856 	.db #0x0c	; 12
      002BFB 10                    1857 	.db #0x10	; 16
      002BFC 0E                    1858 	.db #0x0e	; 14
      002BFD 08                    1859 	.db #0x08	; 8
      002BFE 00                    1860 	.db #0x00	; 0
      002BFF 26                    1861 	.db #0x26	; 38
      002C00 26                    1862 	.db #0x26	; 38
      002C01 10                    1863 	.db #0x10	; 16
      002C02 08                    1864 	.db #0x08	; 8
      002C03 04                    1865 	.db #0x04	; 4
      002C04 32                    1866 	.db #0x32	; 50	'2'
      002C05 32                    1867 	.db #0x32	; 50	'2'
      002C06 00                    1868 	.db #0x00	; 0
      002C07 04                    1869 	.db #0x04	; 4
      002C08 0A                    1870 	.db #0x0a	; 10
      002C09 0A                    1871 	.db #0x0a	; 10
      002C0A 04                    1872 	.db #0x04	; 4
      002C0B 2A                    1873 	.db #0x2a	; 42
      002C0C 12                    1874 	.db #0x12	; 18
      002C0D 2C                    1875 	.db #0x2c	; 44
      002C0E 00                    1876 	.db #0x00	; 0
      002C0F 0C                    1877 	.db #0x0c	; 12
      002C10 0C                    1878 	.db #0x0c	; 12
      002C11 04                    1879 	.db #0x04	; 4
      002C12 00                    1880 	.db #0x00	; 0
      002C13 00                    1881 	.db #0x00	; 0
      002C14 00                    1882 	.db #0x00	; 0
      002C15 00                    1883 	.db #0x00	; 0
      002C16 00                    1884 	.db #0x00	; 0
      002C17 08                    1885 	.db #0x08	; 8
      002C18 04                    1886 	.db #0x04	; 4
      002C19 04                    1887 	.db #0x04	; 4
      002C1A 04                    1888 	.db #0x04	; 4
      002C1B 04                    1889 	.db #0x04	; 4
      002C1C 04                    1890 	.db #0x04	; 4
      002C1D 08                    1891 	.db #0x08	; 8
      002C1E 00                    1892 	.db #0x00	; 0
      002C1F 04                    1893 	.db #0x04	; 4
      002C20 08                    1894 	.db #0x08	; 8
      002C21 08                    1895 	.db #0x08	; 8
      002C22 08                    1896 	.db #0x08	; 8
      002C23 08                    1897 	.db #0x08	; 8
      002C24 08                    1898 	.db #0x08	; 8
      002C25 04                    1899 	.db #0x04	; 4
      002C26 00                    1900 	.db #0x00	; 0
      002C27 00                    1901 	.db #0x00	; 0
      002C28 14                    1902 	.db #0x14	; 20
      002C29 1C                    1903 	.db #0x1c	; 28
      002C2A 3E                    1904 	.db #0x3e	; 62
      002C2B 1C                    1905 	.db #0x1c	; 28
      002C2C 14                    1906 	.db #0x14	; 20
      002C2D 00                    1907 	.db #0x00	; 0
      002C2E 00                    1908 	.db #0x00	; 0
      002C2F 00                    1909 	.db #0x00	; 0
      002C30 08                    1910 	.db #0x08	; 8
      002C31 08                    1911 	.db #0x08	; 8
      002C32 3E                    1912 	.db #0x3e	; 62
      002C33 08                    1913 	.db #0x08	; 8
      002C34 08                    1914 	.db #0x08	; 8
      002C35 00                    1915 	.db #0x00	; 0
      002C36 00                    1916 	.db #0x00	; 0
      002C37 00                    1917 	.db #0x00	; 0
      002C38 00                    1918 	.db #0x00	; 0
      002C39 00                    1919 	.db #0x00	; 0
      002C3A 00                    1920 	.db #0x00	; 0
      002C3B 00                    1921 	.db #0x00	; 0
      002C3C 0C                    1922 	.db #0x0c	; 12
      002C3D 0C                    1923 	.db #0x0c	; 12
      002C3E 04                    1924 	.db #0x04	; 4
      002C3F 00                    1925 	.db #0x00	; 0
      002C40 00                    1926 	.db #0x00	; 0
      002C41 00                    1927 	.db #0x00	; 0
      002C42 3E                    1928 	.db #0x3e	; 62
      002C43 00                    1929 	.db #0x00	; 0
      002C44 00                    1930 	.db #0x00	; 0
      002C45 00                    1931 	.db #0x00	; 0
      002C46 00                    1932 	.db #0x00	; 0
      002C47 00                    1933 	.db #0x00	; 0
      002C48 00                    1934 	.db #0x00	; 0
      002C49 00                    1935 	.db #0x00	; 0
      002C4A 00                    1936 	.db #0x00	; 0
      002C4B 00                    1937 	.db #0x00	; 0
      002C4C 0C                    1938 	.db #0x0c	; 12
      002C4D 0C                    1939 	.db #0x0c	; 12
      002C4E 00                    1940 	.db #0x00	; 0
      002C4F 00                    1941 	.db #0x00	; 0
      002C50 20                    1942 	.db #0x20	; 32
      002C51 10                    1943 	.db #0x10	; 16
      002C52 08                    1944 	.db #0x08	; 8
      002C53 04                    1945 	.db #0x04	; 4
      002C54 02                    1946 	.db #0x02	; 2
      002C55 00                    1947 	.db #0x00	; 0
      002C56 00                    1948 	.db #0x00	; 0
      002C57 1C                    1949 	.db #0x1c	; 28
      002C58 22                    1950 	.db #0x22	; 34
      002C59 32                    1951 	.db #0x32	; 50	'2'
      002C5A 2A                    1952 	.db #0x2a	; 42
      002C5B 26                    1953 	.db #0x26	; 38
      002C5C 22                    1954 	.db #0x22	; 34
      002C5D 1C                    1955 	.db #0x1c	; 28
      002C5E 00                    1956 	.db #0x00	; 0
      002C5F 08                    1957 	.db #0x08	; 8
      002C60 0C                    1958 	.db #0x0c	; 12
      002C61 08                    1959 	.db #0x08	; 8
      002C62 08                    1960 	.db #0x08	; 8
      002C63 08                    1961 	.db #0x08	; 8
      002C64 08                    1962 	.db #0x08	; 8
      002C65 1C                    1963 	.db #0x1c	; 28
      002C66 00                    1964 	.db #0x00	; 0
      002C67 1C                    1965 	.db #0x1c	; 28
      002C68 22                    1966 	.db #0x22	; 34
      002C69 20                    1967 	.db #0x20	; 32
      002C6A 18                    1968 	.db #0x18	; 24
      002C6B 04                    1969 	.db #0x04	; 4
      002C6C 02                    1970 	.db #0x02	; 2
      002C6D 3E                    1971 	.db #0x3e	; 62
      002C6E 00                    1972 	.db #0x00	; 0
      002C6F 1C                    1973 	.db #0x1c	; 28
      002C70 22                    1974 	.db #0x22	; 34
      002C71 20                    1975 	.db #0x20	; 32
      002C72 1C                    1976 	.db #0x1c	; 28
      002C73 20                    1977 	.db #0x20	; 32
      002C74 22                    1978 	.db #0x22	; 34
      002C75 1C                    1979 	.db #0x1c	; 28
      002C76 00                    1980 	.db #0x00	; 0
      002C77 10                    1981 	.db #0x10	; 16
      002C78 18                    1982 	.db #0x18	; 24
      002C79 14                    1983 	.db #0x14	; 20
      002C7A 12                    1984 	.db #0x12	; 18
      002C7B 3E                    1985 	.db #0x3e	; 62
      002C7C 10                    1986 	.db #0x10	; 16
      002C7D 10                    1987 	.db #0x10	; 16
      002C7E 00                    1988 	.db #0x00	; 0
      002C7F 3E                    1989 	.db #0x3e	; 62
      002C80 02                    1990 	.db #0x02	; 2
      002C81 02                    1991 	.db #0x02	; 2
      002C82 1E                    1992 	.db #0x1e	; 30
      002C83 20                    1993 	.db #0x20	; 32
      002C84 22                    1994 	.db #0x22	; 34
      002C85 1C                    1995 	.db #0x1c	; 28
      002C86 00                    1996 	.db #0x00	; 0
      002C87 18                    1997 	.db #0x18	; 24
      002C88 04                    1998 	.db #0x04	; 4
      002C89 02                    1999 	.db #0x02	; 2
      002C8A 1E                    2000 	.db #0x1e	; 30
      002C8B 22                    2001 	.db #0x22	; 34
      002C8C 22                    2002 	.db #0x22	; 34
      002C8D 1C                    2003 	.db #0x1c	; 28
      002C8E 00                    2004 	.db #0x00	; 0
      002C8F 3E                    2005 	.db #0x3e	; 62
      002C90 20                    2006 	.db #0x20	; 32
      002C91 10                    2007 	.db #0x10	; 16
      002C92 08                    2008 	.db #0x08	; 8
      002C93 04                    2009 	.db #0x04	; 4
      002C94 04                    2010 	.db #0x04	; 4
      002C95 04                    2011 	.db #0x04	; 4
      002C96 00                    2012 	.db #0x00	; 0
      002C97 1C                    2013 	.db #0x1c	; 28
      002C98 22                    2014 	.db #0x22	; 34
      002C99 22                    2015 	.db #0x22	; 34
      002C9A 1C                    2016 	.db #0x1c	; 28
      002C9B 22                    2017 	.db #0x22	; 34
      002C9C 22                    2018 	.db #0x22	; 34
      002C9D 1C                    2019 	.db #0x1c	; 28
      002C9E 00                    2020 	.db #0x00	; 0
      002C9F 1C                    2021 	.db #0x1c	; 28
      002CA0 22                    2022 	.db #0x22	; 34
      002CA1 22                    2023 	.db #0x22	; 34
      002CA2 3C                    2024 	.db #0x3c	; 60
      002CA3 20                    2025 	.db #0x20	; 32
      002CA4 10                    2026 	.db #0x10	; 16
      002CA5 0C                    2027 	.db #0x0c	; 12
      002CA6 00                    2028 	.db #0x00	; 0
      002CA7 00                    2029 	.db #0x00	; 0
      002CA8 00                    2030 	.db #0x00	; 0
      002CA9 0C                    2031 	.db #0x0c	; 12
      002CAA 0C                    2032 	.db #0x0c	; 12
      002CAB 00                    2033 	.db #0x00	; 0
      002CAC 0C                    2034 	.db #0x0c	; 12
      002CAD 0C                    2035 	.db #0x0c	; 12
      002CAE 00                    2036 	.db #0x00	; 0
      002CAF 00                    2037 	.db #0x00	; 0
      002CB0 00                    2038 	.db #0x00	; 0
      002CB1 0C                    2039 	.db #0x0c	; 12
      002CB2 0C                    2040 	.db #0x0c	; 12
      002CB3 00                    2041 	.db #0x00	; 0
      002CB4 0C                    2042 	.db #0x0c	; 12
      002CB5 0C                    2043 	.db #0x0c	; 12
      002CB6 04                    2044 	.db #0x04	; 4
      002CB7 10                    2045 	.db #0x10	; 16
      002CB8 08                    2046 	.db #0x08	; 8
      002CB9 04                    2047 	.db #0x04	; 4
      002CBA 02                    2048 	.db #0x02	; 2
      002CBB 04                    2049 	.db #0x04	; 4
      002CBC 08                    2050 	.db #0x08	; 8
      002CBD 10                    2051 	.db #0x10	; 16
      002CBE 00                    2052 	.db #0x00	; 0
      002CBF 00                    2053 	.db #0x00	; 0
      002CC0 00                    2054 	.db #0x00	; 0
      002CC1 3E                    2055 	.db #0x3e	; 62
      002CC2 00                    2056 	.db #0x00	; 0
      002CC3 00                    2057 	.db #0x00	; 0
      002CC4 3E                    2058 	.db #0x3e	; 62
      002CC5 00                    2059 	.db #0x00	; 0
      002CC6 00                    2060 	.db #0x00	; 0
      002CC7 04                    2061 	.db #0x04	; 4
      002CC8 08                    2062 	.db #0x08	; 8
      002CC9 10                    2063 	.db #0x10	; 16
      002CCA 20                    2064 	.db #0x20	; 32
      002CCB 10                    2065 	.db #0x10	; 16
      002CCC 08                    2066 	.db #0x08	; 8
      002CCD 04                    2067 	.db #0x04	; 4
      002CCE 00                    2068 	.db #0x00	; 0
      002CCF 1C                    2069 	.db #0x1c	; 28
      002CD0 22                    2070 	.db #0x22	; 34
      002CD1 20                    2071 	.db #0x20	; 32
      002CD2 18                    2072 	.db #0x18	; 24
      002CD3 08                    2073 	.db #0x08	; 8
      002CD4 00                    2074 	.db #0x00	; 0
      002CD5 08                    2075 	.db #0x08	; 8
      002CD6 00                    2076 	.db #0x00	; 0
      002CD7 1C                    2077 	.db #0x1c	; 28
      002CD8 22                    2078 	.db #0x22	; 34
      002CD9 3A                    2079 	.db #0x3a	; 58
      002CDA 2A                    2080 	.db #0x2a	; 42
      002CDB 3A                    2081 	.db #0x3a	; 58
      002CDC 02                    2082 	.db #0x02	; 2
      002CDD 1C                    2083 	.db #0x1c	; 28
      002CDE 00                    2084 	.db #0x00	; 0
      002CDF 1C                    2085 	.db #0x1c	; 28
      002CE0 22                    2086 	.db #0x22	; 34
      002CE1 22                    2087 	.db #0x22	; 34
      002CE2 22                    2088 	.db #0x22	; 34
      002CE3 3E                    2089 	.db #0x3e	; 62
      002CE4 22                    2090 	.db #0x22	; 34
      002CE5 22                    2091 	.db #0x22	; 34
      002CE6 00                    2092 	.db #0x00	; 0
      002CE7 1E                    2093 	.db #0x1e	; 30
      002CE8 22                    2094 	.db #0x22	; 34
      002CE9 22                    2095 	.db #0x22	; 34
      002CEA 1E                    2096 	.db #0x1e	; 30
      002CEB 22                    2097 	.db #0x22	; 34
      002CEC 22                    2098 	.db #0x22	; 34
      002CED 1E                    2099 	.db #0x1e	; 30
      002CEE 00                    2100 	.db #0x00	; 0
      002CEF 1C                    2101 	.db #0x1c	; 28
      002CF0 22                    2102 	.db #0x22	; 34
      002CF1 02                    2103 	.db #0x02	; 2
      002CF2 02                    2104 	.db #0x02	; 2
      002CF3 02                    2105 	.db #0x02	; 2
      002CF4 22                    2106 	.db #0x22	; 34
      002CF5 1C                    2107 	.db #0x1c	; 28
      002CF6 00                    2108 	.db #0x00	; 0
      002CF7 1E                    2109 	.db #0x1e	; 30
      002CF8 22                    2110 	.db #0x22	; 34
      002CF9 22                    2111 	.db #0x22	; 34
      002CFA 22                    2112 	.db #0x22	; 34
      002CFB 22                    2113 	.db #0x22	; 34
      002CFC 22                    2114 	.db #0x22	; 34
      002CFD 1E                    2115 	.db #0x1e	; 30
      002CFE 00                    2116 	.db #0x00	; 0
      002CFF 3E                    2117 	.db #0x3e	; 62
      002D00 02                    2118 	.db #0x02	; 2
      002D01 02                    2119 	.db #0x02	; 2
      002D02 1E                    2120 	.db #0x1e	; 30
      002D03 02                    2121 	.db #0x02	; 2
      002D04 02                    2122 	.db #0x02	; 2
      002D05 3E                    2123 	.db #0x3e	; 62
      002D06 00                    2124 	.db #0x00	; 0
      002D07 3E                    2125 	.db #0x3e	; 62
      002D08 02                    2126 	.db #0x02	; 2
      002D09 02                    2127 	.db #0x02	; 2
      002D0A 1E                    2128 	.db #0x1e	; 30
      002D0B 02                    2129 	.db #0x02	; 2
      002D0C 02                    2130 	.db #0x02	; 2
      002D0D 02                    2131 	.db #0x02	; 2
      002D0E 00                    2132 	.db #0x00	; 0
      002D0F 1C                    2133 	.db #0x1c	; 28
      002D10 22                    2134 	.db #0x22	; 34
      002D11 02                    2135 	.db #0x02	; 2
      002D12 3A                    2136 	.db #0x3a	; 58
      002D13 22                    2137 	.db #0x22	; 34
      002D14 22                    2138 	.db #0x22	; 34
      002D15 3C                    2139 	.db #0x3c	; 60
      002D16 00                    2140 	.db #0x00	; 0
      002D17 22                    2141 	.db #0x22	; 34
      002D18 22                    2142 	.db #0x22	; 34
      002D19 22                    2143 	.db #0x22	; 34
      002D1A 3E                    2144 	.db #0x3e	; 62
      002D1B 22                    2145 	.db #0x22	; 34
      002D1C 22                    2146 	.db #0x22	; 34
      002D1D 22                    2147 	.db #0x22	; 34
      002D1E 00                    2148 	.db #0x00	; 0
      002D1F 1C                    2149 	.db #0x1c	; 28
      002D20 08                    2150 	.db #0x08	; 8
      002D21 08                    2151 	.db #0x08	; 8
      002D22 08                    2152 	.db #0x08	; 8
      002D23 08                    2153 	.db #0x08	; 8
      002D24 08                    2154 	.db #0x08	; 8
      002D25 1C                    2155 	.db #0x1c	; 28
      002D26 00                    2156 	.db #0x00	; 0
      002D27 20                    2157 	.db #0x20	; 32
      002D28 20                    2158 	.db #0x20	; 32
      002D29 20                    2159 	.db #0x20	; 32
      002D2A 20                    2160 	.db #0x20	; 32
      002D2B 22                    2161 	.db #0x22	; 34
      002D2C 22                    2162 	.db #0x22	; 34
      002D2D 1C                    2163 	.db #0x1c	; 28
      002D2E 00                    2164 	.db #0x00	; 0
      002D2F 22                    2165 	.db #0x22	; 34
      002D30 12                    2166 	.db #0x12	; 18
      002D31 0A                    2167 	.db #0x0a	; 10
      002D32 06                    2168 	.db #0x06	; 6
      002D33 0A                    2169 	.db #0x0a	; 10
      002D34 12                    2170 	.db #0x12	; 18
      002D35 22                    2171 	.db #0x22	; 34
      002D36 00                    2172 	.db #0x00	; 0
      002D37 02                    2173 	.db #0x02	; 2
      002D38 02                    2174 	.db #0x02	; 2
      002D39 02                    2175 	.db #0x02	; 2
      002D3A 02                    2176 	.db #0x02	; 2
      002D3B 02                    2177 	.db #0x02	; 2
      002D3C 02                    2178 	.db #0x02	; 2
      002D3D 3E                    2179 	.db #0x3e	; 62
      002D3E 00                    2180 	.db #0x00	; 0
      002D3F 22                    2181 	.db #0x22	; 34
      002D40 36                    2182 	.db #0x36	; 54	'6'
      002D41 2A                    2183 	.db #0x2a	; 42
      002D42 22                    2184 	.db #0x22	; 34
      002D43 22                    2185 	.db #0x22	; 34
      002D44 22                    2186 	.db #0x22	; 34
      002D45 22                    2187 	.db #0x22	; 34
      002D46 00                    2188 	.db #0x00	; 0
      002D47 22                    2189 	.db #0x22	; 34
      002D48 26                    2190 	.db #0x26	; 38
      002D49 2A                    2191 	.db #0x2a	; 42
      002D4A 32                    2192 	.db #0x32	; 50	'2'
      002D4B 22                    2193 	.db #0x22	; 34
      002D4C 22                    2194 	.db #0x22	; 34
      002D4D 22                    2195 	.db #0x22	; 34
      002D4E 00                    2196 	.db #0x00	; 0
      002D4F 1C                    2197 	.db #0x1c	; 28
      002D50 22                    2198 	.db #0x22	; 34
      002D51 22                    2199 	.db #0x22	; 34
      002D52 22                    2200 	.db #0x22	; 34
      002D53 22                    2201 	.db #0x22	; 34
      002D54 22                    2202 	.db #0x22	; 34
      002D55 1C                    2203 	.db #0x1c	; 28
      002D56 00                    2204 	.db #0x00	; 0
      002D57 1E                    2205 	.db #0x1e	; 30
      002D58 22                    2206 	.db #0x22	; 34
      002D59 22                    2207 	.db #0x22	; 34
      002D5A 1E                    2208 	.db #0x1e	; 30
      002D5B 02                    2209 	.db #0x02	; 2
      002D5C 02                    2210 	.db #0x02	; 2
      002D5D 02                    2211 	.db #0x02	; 2
      002D5E 00                    2212 	.db #0x00	; 0
      002D5F 1C                    2213 	.db #0x1c	; 28
      002D60 22                    2214 	.db #0x22	; 34
      002D61 22                    2215 	.db #0x22	; 34
      002D62 22                    2216 	.db #0x22	; 34
      002D63 2A                    2217 	.db #0x2a	; 42
      002D64 12                    2218 	.db #0x12	; 18
      002D65 2C                    2219 	.db #0x2c	; 44
      002D66 00                    2220 	.db #0x00	; 0
      002D67 1E                    2221 	.db #0x1e	; 30
      002D68 22                    2222 	.db #0x22	; 34
      002D69 22                    2223 	.db #0x22	; 34
      002D6A 1E                    2224 	.db #0x1e	; 30
      002D6B 12                    2225 	.db #0x12	; 18
      002D6C 22                    2226 	.db #0x22	; 34
      002D6D 22                    2227 	.db #0x22	; 34
      002D6E 00                    2228 	.db #0x00	; 0
      002D6F 1C                    2229 	.db #0x1c	; 28
      002D70 22                    2230 	.db #0x22	; 34
      002D71 02                    2231 	.db #0x02	; 2
      002D72 1C                    2232 	.db #0x1c	; 28
      002D73 20                    2233 	.db #0x20	; 32
      002D74 22                    2234 	.db #0x22	; 34
      002D75 1C                    2235 	.db #0x1c	; 28
      002D76 00                    2236 	.db #0x00	; 0
      002D77 3E                    2237 	.db #0x3e	; 62
      002D78 08                    2238 	.db #0x08	; 8
      002D79 08                    2239 	.db #0x08	; 8
      002D7A 08                    2240 	.db #0x08	; 8
      002D7B 08                    2241 	.db #0x08	; 8
      002D7C 08                    2242 	.db #0x08	; 8
      002D7D 08                    2243 	.db #0x08	; 8
      002D7E 00                    2244 	.db #0x00	; 0
      002D7F 22                    2245 	.db #0x22	; 34
      002D80 22                    2246 	.db #0x22	; 34
      002D81 22                    2247 	.db #0x22	; 34
      002D82 22                    2248 	.db #0x22	; 34
      002D83 22                    2249 	.db #0x22	; 34
      002D84 22                    2250 	.db #0x22	; 34
      002D85 1C                    2251 	.db #0x1c	; 28
      002D86 00                    2252 	.db #0x00	; 0
      002D87 22                    2253 	.db #0x22	; 34
      002D88 22                    2254 	.db #0x22	; 34
      002D89 22                    2255 	.db #0x22	; 34
      002D8A 22                    2256 	.db #0x22	; 34
      002D8B 22                    2257 	.db #0x22	; 34
      002D8C 14                    2258 	.db #0x14	; 20
      002D8D 08                    2259 	.db #0x08	; 8
      002D8E 00                    2260 	.db #0x00	; 0
      002D8F 22                    2261 	.db #0x22	; 34
      002D90 22                    2262 	.db #0x22	; 34
      002D91 2A                    2263 	.db #0x2a	; 42
      002D92 2A                    2264 	.db #0x2a	; 42
      002D93 2A                    2265 	.db #0x2a	; 42
      002D94 2A                    2266 	.db #0x2a	; 42
      002D95 14                    2267 	.db #0x14	; 20
      002D96 00                    2268 	.db #0x00	; 0
      002D97 22                    2269 	.db #0x22	; 34
      002D98 22                    2270 	.db #0x22	; 34
      002D99 14                    2271 	.db #0x14	; 20
      002D9A 08                    2272 	.db #0x08	; 8
      002D9B 14                    2273 	.db #0x14	; 20
      002D9C 22                    2274 	.db #0x22	; 34
      002D9D 22                    2275 	.db #0x22	; 34
      002D9E 00                    2276 	.db #0x00	; 0
      002D9F 22                    2277 	.db #0x22	; 34
      002DA0 22                    2278 	.db #0x22	; 34
      002DA1 22                    2279 	.db #0x22	; 34
      002DA2 14                    2280 	.db #0x14	; 20
      002DA3 08                    2281 	.db #0x08	; 8
      002DA4 08                    2282 	.db #0x08	; 8
      002DA5 08                    2283 	.db #0x08	; 8
      002DA6 00                    2284 	.db #0x00	; 0
      002DA7 1E                    2285 	.db #0x1e	; 30
      002DA8 10                    2286 	.db #0x10	; 16
      002DA9 08                    2287 	.db #0x08	; 8
      002DAA 04                    2288 	.db #0x04	; 4
      002DAB 02                    2289 	.db #0x02	; 2
      002DAC 02                    2290 	.db #0x02	; 2
      002DAD 1E                    2291 	.db #0x1e	; 30
      002DAE 00                    2292 	.db #0x00	; 0
      002DAF 1C                    2293 	.db #0x1c	; 28
      002DB0 04                    2294 	.db #0x04	; 4
      002DB1 04                    2295 	.db #0x04	; 4
      002DB2 04                    2296 	.db #0x04	; 4
      002DB3 04                    2297 	.db #0x04	; 4
      002DB4 04                    2298 	.db #0x04	; 4
      002DB5 1C                    2299 	.db #0x1c	; 28
      002DB6 00                    2300 	.db #0x00	; 0
      002DB7 00                    2301 	.db #0x00	; 0
      002DB8 02                    2302 	.db #0x02	; 2
      002DB9 04                    2303 	.db #0x04	; 4
      002DBA 08                    2304 	.db #0x08	; 8
      002DBB 10                    2305 	.db #0x10	; 16
      002DBC 20                    2306 	.db #0x20	; 32
      002DBD 00                    2307 	.db #0x00	; 0
      002DBE 00                    2308 	.db #0x00	; 0
      002DBF 1C                    2309 	.db #0x1c	; 28
      002DC0 10                    2310 	.db #0x10	; 16
      002DC1 10                    2311 	.db #0x10	; 16
      002DC2 10                    2312 	.db #0x10	; 16
      002DC3 10                    2313 	.db #0x10	; 16
      002DC4 10                    2314 	.db #0x10	; 16
      002DC5 1C                    2315 	.db #0x1c	; 28
      002DC6 00                    2316 	.db #0x00	; 0
      002DC7 08                    2317 	.db #0x08	; 8
      002DC8 14                    2318 	.db #0x14	; 20
      002DC9 22                    2319 	.db #0x22	; 34
      002DCA 00                    2320 	.db #0x00	; 0
      002DCB 00                    2321 	.db #0x00	; 0
      002DCC 00                    2322 	.db #0x00	; 0
      002DCD 00                    2323 	.db #0x00	; 0
      002DCE 00                    2324 	.db #0x00	; 0
      002DCF 00                    2325 	.db #0x00	; 0
      002DD0 00                    2326 	.db #0x00	; 0
      002DD1 00                    2327 	.db #0x00	; 0
      002DD2 00                    2328 	.db #0x00	; 0
      002DD3 00                    2329 	.db #0x00	; 0
      002DD4 00                    2330 	.db #0x00	; 0
      002DD5 00                    2331 	.db #0x00	; 0
      002DD6 3F                    2332 	.db #0x3f	; 63
      002DD7 0C                    2333 	.db #0x0c	; 12
      002DD8 0C                    2334 	.db #0x0c	; 12
      002DD9 08                    2335 	.db #0x08	; 8
      002DDA 00                    2336 	.db #0x00	; 0
      002DDB 00                    2337 	.db #0x00	; 0
      002DDC 00                    2338 	.db #0x00	; 0
      002DDD 00                    2339 	.db #0x00	; 0
      002DDE 00                    2340 	.db #0x00	; 0
      002DDF 00                    2341 	.db #0x00	; 0
      002DE0 00                    2342 	.db #0x00	; 0
      002DE1 1C                    2343 	.db #0x1c	; 28
      002DE2 20                    2344 	.db #0x20	; 32
      002DE3 3C                    2345 	.db #0x3c	; 60
      002DE4 22                    2346 	.db #0x22	; 34
      002DE5 3C                    2347 	.db #0x3c	; 60
      002DE6 00                    2348 	.db #0x00	; 0
      002DE7 02                    2349 	.db #0x02	; 2
      002DE8 02                    2350 	.db #0x02	; 2
      002DE9 1E                    2351 	.db #0x1e	; 30
      002DEA 22                    2352 	.db #0x22	; 34
      002DEB 22                    2353 	.db #0x22	; 34
      002DEC 22                    2354 	.db #0x22	; 34
      002DED 1E                    2355 	.db #0x1e	; 30
      002DEE 00                    2356 	.db #0x00	; 0
      002DEF 00                    2357 	.db #0x00	; 0
      002DF0 00                    2358 	.db #0x00	; 0
      002DF1 1C                    2359 	.db #0x1c	; 28
      002DF2 22                    2360 	.db #0x22	; 34
      002DF3 02                    2361 	.db #0x02	; 2
      002DF4 22                    2362 	.db #0x22	; 34
      002DF5 1C                    2363 	.db #0x1c	; 28
      002DF6 00                    2364 	.db #0x00	; 0
      002DF7 20                    2365 	.db #0x20	; 32
      002DF8 20                    2366 	.db #0x20	; 32
      002DF9 3C                    2367 	.db #0x3c	; 60
      002DFA 22                    2368 	.db #0x22	; 34
      002DFB 22                    2369 	.db #0x22	; 34
      002DFC 22                    2370 	.db #0x22	; 34
      002DFD 3C                    2371 	.db #0x3c	; 60
      002DFE 00                    2372 	.db #0x00	; 0
      002DFF 00                    2373 	.db #0x00	; 0
      002E00 00                    2374 	.db #0x00	; 0
      002E01 1C                    2375 	.db #0x1c	; 28
      002E02 22                    2376 	.db #0x22	; 34
      002E03 1E                    2377 	.db #0x1e	; 30
      002E04 02                    2378 	.db #0x02	; 2
      002E05 1C                    2379 	.db #0x1c	; 28
      002E06 00                    2380 	.db #0x00	; 0
      002E07 18                    2381 	.db #0x18	; 24
      002E08 04                    2382 	.db #0x04	; 4
      002E09 04                    2383 	.db #0x04	; 4
      002E0A 1E                    2384 	.db #0x1e	; 30
      002E0B 04                    2385 	.db #0x04	; 4
      002E0C 04                    2386 	.db #0x04	; 4
      002E0D 04                    2387 	.db #0x04	; 4
      002E0E 00                    2388 	.db #0x00	; 0
      002E0F 00                    2389 	.db #0x00	; 0
      002E10 00                    2390 	.db #0x00	; 0
      002E11 3C                    2391 	.db #0x3c	; 60
      002E12 22                    2392 	.db #0x22	; 34
      002E13 22                    2393 	.db #0x22	; 34
      002E14 3C                    2394 	.db #0x3c	; 60
      002E15 20                    2395 	.db #0x20	; 32
      002E16 1C                    2396 	.db #0x1c	; 28
      002E17 02                    2397 	.db #0x02	; 2
      002E18 02                    2398 	.db #0x02	; 2
      002E19 0E                    2399 	.db #0x0e	; 14
      002E1A 12                    2400 	.db #0x12	; 18
      002E1B 12                    2401 	.db #0x12	; 18
      002E1C 12                    2402 	.db #0x12	; 18
      002E1D 12                    2403 	.db #0x12	; 18
      002E1E 00                    2404 	.db #0x00	; 0
      002E1F 08                    2405 	.db #0x08	; 8
      002E20 00                    2406 	.db #0x00	; 0
      002E21 08                    2407 	.db #0x08	; 8
      002E22 08                    2408 	.db #0x08	; 8
      002E23 08                    2409 	.db #0x08	; 8
      002E24 08                    2410 	.db #0x08	; 8
      002E25 18                    2411 	.db #0x18	; 24
      002E26 00                    2412 	.db #0x00	; 0
      002E27 10                    2413 	.db #0x10	; 16
      002E28 00                    2414 	.db #0x00	; 0
      002E29 18                    2415 	.db #0x18	; 24
      002E2A 10                    2416 	.db #0x10	; 16
      002E2B 10                    2417 	.db #0x10	; 16
      002E2C 10                    2418 	.db #0x10	; 16
      002E2D 12                    2419 	.db #0x12	; 18
      002E2E 0C                    2420 	.db #0x0c	; 12
      002E2F 02                    2421 	.db #0x02	; 2
      002E30 02                    2422 	.db #0x02	; 2
      002E31 12                    2423 	.db #0x12	; 18
      002E32 0A                    2424 	.db #0x0a	; 10
      002E33 06                    2425 	.db #0x06	; 6
      002E34 0A                    2426 	.db #0x0a	; 10
      002E35 12                    2427 	.db #0x12	; 18
      002E36 00                    2428 	.db #0x00	; 0
      002E37 08                    2429 	.db #0x08	; 8
      002E38 08                    2430 	.db #0x08	; 8
      002E39 08                    2431 	.db #0x08	; 8
      002E3A 08                    2432 	.db #0x08	; 8
      002E3B 08                    2433 	.db #0x08	; 8
      002E3C 08                    2434 	.db #0x08	; 8
      002E3D 18                    2435 	.db #0x18	; 24
      002E3E 00                    2436 	.db #0x00	; 0
      002E3F 00                    2437 	.db #0x00	; 0
      002E40 00                    2438 	.db #0x00	; 0
      002E41 16                    2439 	.db #0x16	; 22
      002E42 2A                    2440 	.db #0x2a	; 42
      002E43 2A                    2441 	.db #0x2a	; 42
      002E44 22                    2442 	.db #0x22	; 34
      002E45 22                    2443 	.db #0x22	; 34
      002E46 00                    2444 	.db #0x00	; 0
      002E47 00                    2445 	.db #0x00	; 0
      002E48 00                    2446 	.db #0x00	; 0
      002E49 0E                    2447 	.db #0x0e	; 14
      002E4A 12                    2448 	.db #0x12	; 18
      002E4B 12                    2449 	.db #0x12	; 18
      002E4C 12                    2450 	.db #0x12	; 18
      002E4D 12                    2451 	.db #0x12	; 18
      002E4E 00                    2452 	.db #0x00	; 0
      002E4F 00                    2453 	.db #0x00	; 0
      002E50 00                    2454 	.db #0x00	; 0
      002E51 1C                    2455 	.db #0x1c	; 28
      002E52 22                    2456 	.db #0x22	; 34
      002E53 22                    2457 	.db #0x22	; 34
      002E54 22                    2458 	.db #0x22	; 34
      002E55 1C                    2459 	.db #0x1c	; 28
      002E56 00                    2460 	.db #0x00	; 0
      002E57 00                    2461 	.db #0x00	; 0
      002E58 00                    2462 	.db #0x00	; 0
      002E59 1E                    2463 	.db #0x1e	; 30
      002E5A 22                    2464 	.db #0x22	; 34
      002E5B 22                    2465 	.db #0x22	; 34
      002E5C 22                    2466 	.db #0x22	; 34
      002E5D 1E                    2467 	.db #0x1e	; 30
      002E5E 02                    2468 	.db #0x02	; 2
      002E5F 00                    2469 	.db #0x00	; 0
      002E60 00                    2470 	.db #0x00	; 0
      002E61 3C                    2471 	.db #0x3c	; 60
      002E62 22                    2472 	.db #0x22	; 34
      002E63 22                    2473 	.db #0x22	; 34
      002E64 22                    2474 	.db #0x22	; 34
      002E65 3C                    2475 	.db #0x3c	; 60
      002E66 20                    2476 	.db #0x20	; 32
      002E67 00                    2477 	.db #0x00	; 0
      002E68 00                    2478 	.db #0x00	; 0
      002E69 1A                    2479 	.db #0x1a	; 26
      002E6A 24                    2480 	.db #0x24	; 36
      002E6B 04                    2481 	.db #0x04	; 4
      002E6C 04                    2482 	.db #0x04	; 4
      002E6D 0E                    2483 	.db #0x0e	; 14
      002E6E 00                    2484 	.db #0x00	; 0
      002E6F 00                    2485 	.db #0x00	; 0
      002E70 00                    2486 	.db #0x00	; 0
      002E71 1C                    2487 	.db #0x1c	; 28
      002E72 02                    2488 	.db #0x02	; 2
      002E73 1C                    2489 	.db #0x1c	; 28
      002E74 20                    2490 	.db #0x20	; 32
      002E75 1C                    2491 	.db #0x1c	; 28
      002E76 00                    2492 	.db #0x00	; 0
      002E77 00                    2493 	.db #0x00	; 0
      002E78 04                    2494 	.db #0x04	; 4
      002E79 1E                    2495 	.db #0x1e	; 30
      002E7A 04                    2496 	.db #0x04	; 4
      002E7B 04                    2497 	.db #0x04	; 4
      002E7C 14                    2498 	.db #0x14	; 20
      002E7D 08                    2499 	.db #0x08	; 8
      002E7E 00                    2500 	.db #0x00	; 0
      002E7F 00                    2501 	.db #0x00	; 0
      002E80 00                    2502 	.db #0x00	; 0
      002E81 12                    2503 	.db #0x12	; 18
      002E82 12                    2504 	.db #0x12	; 18
      002E83 12                    2505 	.db #0x12	; 18
      002E84 1A                    2506 	.db #0x1a	; 26
      002E85 14                    2507 	.db #0x14	; 20
      002E86 00                    2508 	.db #0x00	; 0
      002E87 00                    2509 	.db #0x00	; 0
      002E88 00                    2510 	.db #0x00	; 0
      002E89 22                    2511 	.db #0x22	; 34
      002E8A 22                    2512 	.db #0x22	; 34
      002E8B 22                    2513 	.db #0x22	; 34
      002E8C 14                    2514 	.db #0x14	; 20
      002E8D 08                    2515 	.db #0x08	; 8
      002E8E 00                    2516 	.db #0x00	; 0
      002E8F 00                    2517 	.db #0x00	; 0
      002E90 00                    2518 	.db #0x00	; 0
      002E91 22                    2519 	.db #0x22	; 34
      002E92 22                    2520 	.db #0x22	; 34
      002E93 2A                    2521 	.db #0x2a	; 42
      002E94 3E                    2522 	.db #0x3e	; 62
      002E95 14                    2523 	.db #0x14	; 20
      002E96 00                    2524 	.db #0x00	; 0
      002E97 00                    2525 	.db #0x00	; 0
      002E98 00                    2526 	.db #0x00	; 0
      002E99 12                    2527 	.db #0x12	; 18
      002E9A 12                    2528 	.db #0x12	; 18
      002E9B 0C                    2529 	.db #0x0c	; 12
      002E9C 12                    2530 	.db #0x12	; 18
      002E9D 12                    2531 	.db #0x12	; 18
      002E9E 00                    2532 	.db #0x00	; 0
      002E9F 00                    2533 	.db #0x00	; 0
      002EA0 00                    2534 	.db #0x00	; 0
      002EA1 12                    2535 	.db #0x12	; 18
      002EA2 12                    2536 	.db #0x12	; 18
      002EA3 12                    2537 	.db #0x12	; 18
      002EA4 1C                    2538 	.db #0x1c	; 28
      002EA5 08                    2539 	.db #0x08	; 8
      002EA6 06                    2540 	.db #0x06	; 6
      002EA7 00                    2541 	.db #0x00	; 0
      002EA8 00                    2542 	.db #0x00	; 0
      002EA9 1E                    2543 	.db #0x1e	; 30
      002EAA 10                    2544 	.db #0x10	; 16
      002EAB 0C                    2545 	.db #0x0c	; 12
      002EAC 02                    2546 	.db #0x02	; 2
      002EAD 1E                    2547 	.db #0x1e	; 30
      002EAE 00                    2548 	.db #0x00	; 0
      002EAF 18                    2549 	.db #0x18	; 24
      002EB0 04                    2550 	.db #0x04	; 4
      002EB1 04                    2551 	.db #0x04	; 4
      002EB2 06                    2552 	.db #0x06	; 6
      002EB3 04                    2553 	.db #0x04	; 4
      002EB4 04                    2554 	.db #0x04	; 4
      002EB5 18                    2555 	.db #0x18	; 24
      002EB6 00                    2556 	.db #0x00	; 0
      002EB7 08                    2557 	.db #0x08	; 8
      002EB8 08                    2558 	.db #0x08	; 8
      002EB9 08                    2559 	.db #0x08	; 8
      002EBA 00                    2560 	.db #0x00	; 0
      002EBB 08                    2561 	.db #0x08	; 8
      002EBC 08                    2562 	.db #0x08	; 8
      002EBD 08                    2563 	.db #0x08	; 8
      002EBE 00                    2564 	.db #0x00	; 0
      002EBF 0C                    2565 	.db #0x0c	; 12
      002EC0 10                    2566 	.db #0x10	; 16
      002EC1 10                    2567 	.db #0x10	; 16
      002EC2 30                    2568 	.db #0x30	; 48	'0'
      002EC3 10                    2569 	.db #0x10	; 16
      002EC4 10                    2570 	.db #0x10	; 16
      002EC5 0C                    2571 	.db #0x0c	; 12
      002EC6 00                    2572 	.db #0x00	; 0
      002EC7 14                    2573 	.db #0x14	; 20
      002EC8 0A                    2574 	.db #0x0a	; 10
      002EC9 00                    2575 	.db #0x00	; 0
      002ECA 00                    2576 	.db #0x00	; 0
      002ECB 00                    2577 	.db #0x00	; 0
      002ECC 00                    2578 	.db #0x00	; 0
      002ECD 00                    2579 	.db #0x00	; 0
      002ECE 00                    2580 	.db #0x00	; 0
      002ECF 08                    2581 	.db #0x08	; 8
      002ED0 1C                    2582 	.db #0x1c	; 28
      002ED1 36                    2583 	.db #0x36	; 54	'6'
      002ED2 22                    2584 	.db #0x22	; 34
      002ED3 22                    2585 	.db #0x22	; 34
      002ED4 3E                    2586 	.db #0x3e	; 62
      002ED5 00                    2587 	.db #0x00	; 0
      002ED6 00                    2588 	.db #0x00	; 0
      002ED7 1C                    2589 	.db #0x1c	; 28
      002ED8 22                    2590 	.db #0x22	; 34
      002ED9 02                    2591 	.db #0x02	; 2
      002EDA 02                    2592 	.db #0x02	; 2
      002EDB 22                    2593 	.db #0x22	; 34
      002EDC 1C                    2594 	.db #0x1c	; 28
      002EDD 08                    2595 	.db #0x08	; 8
      002EDE 0C                    2596 	.db #0x0c	; 12
      002EDF 12                    2597 	.db #0x12	; 18
      002EE0 00                    2598 	.db #0x00	; 0
      002EE1 12                    2599 	.db #0x12	; 18
      002EE2 12                    2600 	.db #0x12	; 18
      002EE3 12                    2601 	.db #0x12	; 18
      002EE4 1A                    2602 	.db #0x1a	; 26
      002EE5 14                    2603 	.db #0x14	; 20
      002EE6 00                    2604 	.db #0x00	; 0
      002EE7 30                    2605 	.db #0x30	; 48	'0'
      002EE8 00                    2606 	.db #0x00	; 0
      002EE9 1C                    2607 	.db #0x1c	; 28
      002EEA 22                    2608 	.db #0x22	; 34
      002EEB 1E                    2609 	.db #0x1e	; 30
      002EEC 02                    2610 	.db #0x02	; 2
      002EED 1C                    2611 	.db #0x1c	; 28
      002EEE 00                    2612 	.db #0x00	; 0
      002EEF 1C                    2613 	.db #0x1c	; 28
      002EF0 00                    2614 	.db #0x00	; 0
      002EF1 1C                    2615 	.db #0x1c	; 28
      002EF2 20                    2616 	.db #0x20	; 32
      002EF3 3C                    2617 	.db #0x3c	; 60
      002EF4 22                    2618 	.db #0x22	; 34
      002EF5 3C                    2619 	.db #0x3c	; 60
      002EF6 00                    2620 	.db #0x00	; 0
      002EF7 14                    2621 	.db #0x14	; 20
      002EF8 00                    2622 	.db #0x00	; 0
      002EF9 1C                    2623 	.db #0x1c	; 28
      002EFA 20                    2624 	.db #0x20	; 32
      002EFB 3C                    2625 	.db #0x3c	; 60
      002EFC 22                    2626 	.db #0x22	; 34
      002EFD 3C                    2627 	.db #0x3c	; 60
      002EFE 00                    2628 	.db #0x00	; 0
      002EFF 0C                    2629 	.db #0x0c	; 12
      002F00 00                    2630 	.db #0x00	; 0
      002F01 1C                    2631 	.db #0x1c	; 28
      002F02 20                    2632 	.db #0x20	; 32
      002F03 3C                    2633 	.db #0x3c	; 60
      002F04 22                    2634 	.db #0x22	; 34
      002F05 3C                    2635 	.db #0x3c	; 60
      002F06 00                    2636 	.db #0x00	; 0
      002F07 1C                    2637 	.db #0x1c	; 28
      002F08 14                    2638 	.db #0x14	; 20
      002F09 1C                    2639 	.db #0x1c	; 28
      002F0A 20                    2640 	.db #0x20	; 32
      002F0B 3C                    2641 	.db #0x3c	; 60
      002F0C 22                    2642 	.db #0x22	; 34
      002F0D 3C                    2643 	.db #0x3c	; 60
      002F0E 00                    2644 	.db #0x00	; 0
      002F0F 00                    2645 	.db #0x00	; 0
      002F10 1C                    2646 	.db #0x1c	; 28
      002F11 22                    2647 	.db #0x22	; 34
      002F12 02                    2648 	.db #0x02	; 2
      002F13 22                    2649 	.db #0x22	; 34
      002F14 1C                    2650 	.db #0x1c	; 28
      002F15 08                    2651 	.db #0x08	; 8
      002F16 0C                    2652 	.db #0x0c	; 12
      002F17 1C                    2653 	.db #0x1c	; 28
      002F18 00                    2654 	.db #0x00	; 0
      002F19 1C                    2655 	.db #0x1c	; 28
      002F1A 22                    2656 	.db #0x22	; 34
      002F1B 1E                    2657 	.db #0x1e	; 30
      002F1C 02                    2658 	.db #0x02	; 2
      002F1D 1C                    2659 	.db #0x1c	; 28
      002F1E 00                    2660 	.db #0x00	; 0
      002F1F 14                    2661 	.db #0x14	; 20
      002F20 00                    2662 	.db #0x00	; 0
      002F21 1C                    2663 	.db #0x1c	; 28
      002F22 22                    2664 	.db #0x22	; 34
      002F23 1E                    2665 	.db #0x1e	; 30
      002F24 02                    2666 	.db #0x02	; 2
      002F25 1C                    2667 	.db #0x1c	; 28
      002F26 00                    2668 	.db #0x00	; 0
      002F27 0C                    2669 	.db #0x0c	; 12
      002F28 00                    2670 	.db #0x00	; 0
      002F29 1C                    2671 	.db #0x1c	; 28
      002F2A 22                    2672 	.db #0x22	; 34
      002F2B 1E                    2673 	.db #0x1e	; 30
      002F2C 02                    2674 	.db #0x02	; 2
      002F2D 1C                    2675 	.db #0x1c	; 28
      002F2E 00                    2676 	.db #0x00	; 0
      002F2F 14                    2677 	.db #0x14	; 20
      002F30 00                    2678 	.db #0x00	; 0
      002F31 08                    2679 	.db #0x08	; 8
      002F32 08                    2680 	.db #0x08	; 8
      002F33 08                    2681 	.db #0x08	; 8
      002F34 08                    2682 	.db #0x08	; 8
      002F35 18                    2683 	.db #0x18	; 24
      002F36 00                    2684 	.db #0x00	; 0
      002F37 08                    2685 	.db #0x08	; 8
      002F38 14                    2686 	.db #0x14	; 20
      002F39 00                    2687 	.db #0x00	; 0
      002F3A 08                    2688 	.db #0x08	; 8
      002F3B 08                    2689 	.db #0x08	; 8
      002F3C 08                    2690 	.db #0x08	; 8
      002F3D 18                    2691 	.db #0x18	; 24
      002F3E 00                    2692 	.db #0x00	; 0
      002F3F 04                    2693 	.db #0x04	; 4
      002F40 00                    2694 	.db #0x00	; 0
      002F41 08                    2695 	.db #0x08	; 8
      002F42 08                    2696 	.db #0x08	; 8
      002F43 08                    2697 	.db #0x08	; 8
      002F44 08                    2698 	.db #0x08	; 8
      002F45 18                    2699 	.db #0x18	; 24
      002F46 00                    2700 	.db #0x00	; 0
      002F47 14                    2701 	.db #0x14	; 20
      002F48 00                    2702 	.db #0x00	; 0
      002F49 08                    2703 	.db #0x08	; 8
      002F4A 14                    2704 	.db #0x14	; 20
      002F4B 22                    2705 	.db #0x22	; 34
      002F4C 3E                    2706 	.db #0x3e	; 62
      002F4D 22                    2707 	.db #0x22	; 34
      002F4E 00                    2708 	.db #0x00	; 0
      002F4F 1C                    2709 	.db #0x1c	; 28
      002F50 14                    2710 	.db #0x14	; 20
      002F51 1C                    2711 	.db #0x1c	; 28
      002F52 36                    2712 	.db #0x36	; 54	'6'
      002F53 22                    2713 	.db #0x22	; 34
      002F54 3E                    2714 	.db #0x3e	; 62
      002F55 22                    2715 	.db #0x22	; 34
      002F56 00                    2716 	.db #0x00	; 0
      002F57 30                    2717 	.db #0x30	; 48	'0'
      002F58 00                    2718 	.db #0x00	; 0
      002F59 3E                    2719 	.db #0x3e	; 62
      002F5A 02                    2720 	.db #0x02	; 2
      002F5B 1E                    2721 	.db #0x1e	; 30
      002F5C 02                    2722 	.db #0x02	; 2
      002F5D 3E                    2723 	.db #0x3e	; 62
      002F5E 00                    2724 	.db #0x00	; 0
      002F5F 00                    2725 	.db #0x00	; 0
      002F60 00                    2726 	.db #0x00	; 0
      002F61 1E                    2727 	.db #0x1e	; 30
      002F62 28                    2728 	.db #0x28	; 40
      002F63 3E                    2729 	.db #0x3e	; 62
      002F64 0A                    2730 	.db #0x0a	; 10
      002F65 3C                    2731 	.db #0x3c	; 60
      002F66 00                    2732 	.db #0x00	; 0
      002F67 3C                    2733 	.db #0x3c	; 60
      002F68 0A                    2734 	.db #0x0a	; 10
      002F69 0A                    2735 	.db #0x0a	; 10
      002F6A 3E                    2736 	.db #0x3e	; 62
      002F6B 0A                    2737 	.db #0x0a	; 10
      002F6C 0A                    2738 	.db #0x0a	; 10
      002F6D 3A                    2739 	.db #0x3a	; 58
      002F6E 00                    2740 	.db #0x00	; 0
      002F6F 1C                    2741 	.db #0x1c	; 28
      002F70 00                    2742 	.db #0x00	; 0
      002F71 0C                    2743 	.db #0x0c	; 12
      002F72 12                    2744 	.db #0x12	; 18
      002F73 12                    2745 	.db #0x12	; 18
      002F74 12                    2746 	.db #0x12	; 18
      002F75 0C                    2747 	.db #0x0c	; 12
      002F76 00                    2748 	.db #0x00	; 0
      002F77 14                    2749 	.db #0x14	; 20
      002F78 00                    2750 	.db #0x00	; 0
      002F79 0C                    2751 	.db #0x0c	; 12
      002F7A 12                    2752 	.db #0x12	; 18
      002F7B 12                    2753 	.db #0x12	; 18
      002F7C 12                    2754 	.db #0x12	; 18
      002F7D 0C                    2755 	.db #0x0c	; 12
      002F7E 00                    2756 	.db #0x00	; 0
      002F7F 06                    2757 	.db #0x06	; 6
      002F80 00                    2758 	.db #0x00	; 0
      002F81 0C                    2759 	.db #0x0c	; 12
      002F82 12                    2760 	.db #0x12	; 18
      002F83 12                    2761 	.db #0x12	; 18
      002F84 12                    2762 	.db #0x12	; 18
      002F85 0C                    2763 	.db #0x0c	; 12
      002F86 00                    2764 	.db #0x00	; 0
      002F87 1C                    2765 	.db #0x1c	; 28
      002F88 00                    2766 	.db #0x00	; 0
      002F89 12                    2767 	.db #0x12	; 18
      002F8A 12                    2768 	.db #0x12	; 18
      002F8B 12                    2769 	.db #0x12	; 18
      002F8C 1A                    2770 	.db #0x1a	; 26
      002F8D 14                    2771 	.db #0x14	; 20
      002F8E 00                    2772 	.db #0x00	; 0
      002F8F 06                    2773 	.db #0x06	; 6
      002F90 00                    2774 	.db #0x00	; 0
      002F91 12                    2775 	.db #0x12	; 18
      002F92 12                    2776 	.db #0x12	; 18
      002F93 12                    2777 	.db #0x12	; 18
      002F94 1A                    2778 	.db #0x1a	; 26
      002F95 14                    2779 	.db #0x14	; 20
      002F96 00                    2780 	.db #0x00	; 0
      002F97 14                    2781 	.db #0x14	; 20
      002F98 00                    2782 	.db #0x00	; 0
      002F99 12                    2783 	.db #0x12	; 18
      002F9A 12                    2784 	.db #0x12	; 18
      002F9B 12                    2785 	.db #0x12	; 18
      002F9C 1C                    2786 	.db #0x1c	; 28
      002F9D 08                    2787 	.db #0x08	; 8
      002F9E 06                    2788 	.db #0x06	; 6
      002F9F 12                    2789 	.db #0x12	; 18
      002FA0 0C                    2790 	.db #0x0c	; 12
      002FA1 12                    2791 	.db #0x12	; 18
      002FA2 12                    2792 	.db #0x12	; 18
      002FA3 12                    2793 	.db #0x12	; 18
      002FA4 12                    2794 	.db #0x12	; 18
      002FA5 0C                    2795 	.db #0x0c	; 12
      002FA6 00                    2796 	.db #0x00	; 0
      002FA7 14                    2797 	.db #0x14	; 20
      002FA8 00                    2798 	.db #0x00	; 0
      002FA9 12                    2799 	.db #0x12	; 18
      002FAA 12                    2800 	.db #0x12	; 18
      002FAB 12                    2801 	.db #0x12	; 18
      002FAC 12                    2802 	.db #0x12	; 18
      002FAD 0C                    2803 	.db #0x0c	; 12
      002FAE 00                    2804 	.db #0x00	; 0
      002FAF 00                    2805 	.db #0x00	; 0
      002FB0 08                    2806 	.db #0x08	; 8
      002FB1 1C                    2807 	.db #0x1c	; 28
      002FB2 02                    2808 	.db #0x02	; 2
      002FB3 02                    2809 	.db #0x02	; 2
      002FB4 1C                    2810 	.db #0x1c	; 28
      002FB5 08                    2811 	.db #0x08	; 8
      002FB6 00                    2812 	.db #0x00	; 0
      002FB7 18                    2813 	.db #0x18	; 24
      002FB8 24                    2814 	.db #0x24	; 36
      002FB9 04                    2815 	.db #0x04	; 4
      002FBA 1E                    2816 	.db #0x1e	; 30
      002FBB 04                    2817 	.db #0x04	; 4
      002FBC 24                    2818 	.db #0x24	; 36
      002FBD 3A                    2819 	.db #0x3a	; 58
      002FBE 00                    2820 	.db #0x00	; 0
      002FBF 22                    2821 	.db #0x22	; 34
      002FC0 14                    2822 	.db #0x14	; 20
      002FC1 08                    2823 	.db #0x08	; 8
      002FC2 3E                    2824 	.db #0x3e	; 62
      002FC3 08                    2825 	.db #0x08	; 8
      002FC4 3E                    2826 	.db #0x3e	; 62
      002FC5 08                    2827 	.db #0x08	; 8
      002FC6 00                    2828 	.db #0x00	; 0
      002FC7 06                    2829 	.db #0x06	; 6
      002FC8 0A                    2830 	.db #0x0a	; 10
      002FC9 0A                    2831 	.db #0x0a	; 10
      002FCA 16                    2832 	.db #0x16	; 22
      002FCB 3A                    2833 	.db #0x3a	; 58
      002FCC 12                    2834 	.db #0x12	; 18
      002FCD 12                    2835 	.db #0x12	; 18
      002FCE 00                    2836 	.db #0x00	; 0
      002FCF 10                    2837 	.db #0x10	; 16
      002FD0 28                    2838 	.db #0x28	; 40
      002FD1 08                    2839 	.db #0x08	; 8
      002FD2 1C                    2840 	.db #0x1c	; 28
      002FD3 08                    2841 	.db #0x08	; 8
      002FD4 08                    2842 	.db #0x08	; 8
      002FD5 0A                    2843 	.db #0x0a	; 10
      002FD6 04                    2844 	.db #0x04	; 4
      002FD7 18                    2845 	.db #0x18	; 24
      002FD8 00                    2846 	.db #0x00	; 0
      002FD9 1C                    2847 	.db #0x1c	; 28
      002FDA 20                    2848 	.db #0x20	; 32
      002FDB 3C                    2849 	.db #0x3c	; 60
      002FDC 22                    2850 	.db #0x22	; 34
      002FDD 3C                    2851 	.db #0x3c	; 60
      002FDE 00                    2852 	.db #0x00	; 0
      002FDF 18                    2853 	.db #0x18	; 24
      002FE0 00                    2854 	.db #0x00	; 0
      002FE1 08                    2855 	.db #0x08	; 8
      002FE2 08                    2856 	.db #0x08	; 8
      002FE3 08                    2857 	.db #0x08	; 8
      002FE4 08                    2858 	.db #0x08	; 8
      002FE5 18                    2859 	.db #0x18	; 24
      002FE6 00                    2860 	.db #0x00	; 0
      002FE7 18                    2861 	.db #0x18	; 24
      002FE8 00                    2862 	.db #0x00	; 0
      002FE9 0C                    2863 	.db #0x0c	; 12
      002FEA 12                    2864 	.db #0x12	; 18
      002FEB 12                    2865 	.db #0x12	; 18
      002FEC 12                    2866 	.db #0x12	; 18
      002FED 0C                    2867 	.db #0x0c	; 12
      002FEE 00                    2868 	.db #0x00	; 0
      002FEF 18                    2869 	.db #0x18	; 24
      002FF0 00                    2870 	.db #0x00	; 0
      002FF1 12                    2871 	.db #0x12	; 18
      002FF2 12                    2872 	.db #0x12	; 18
      002FF3 12                    2873 	.db #0x12	; 18
      002FF4 1A                    2874 	.db #0x1a	; 26
      002FF5 14                    2875 	.db #0x14	; 20
      002FF6 00                    2876 	.db #0x00	; 0
      002FF7 14                    2877 	.db #0x14	; 20
      002FF8 0A                    2878 	.db #0x0a	; 10
      002FF9 00                    2879 	.db #0x00	; 0
      002FFA 0E                    2880 	.db #0x0e	; 14
      002FFB 12                    2881 	.db #0x12	; 18
      002FFC 12                    2882 	.db #0x12	; 18
      002FFD 12                    2883 	.db #0x12	; 18
      002FFE 00                    2884 	.db #0x00	; 0
      002FFF 14                    2885 	.db #0x14	; 20
      003000 0A                    2886 	.db #0x0a	; 10
      003001 00                    2887 	.db #0x00	; 0
      003002 12                    2888 	.db #0x12	; 18
      003003 16                    2889 	.db #0x16	; 22
      003004 1A                    2890 	.db #0x1a	; 26
      003005 12                    2891 	.db #0x12	; 18
      003006 00                    2892 	.db #0x00	; 0
      003007 1C                    2893 	.db #0x1c	; 28
      003008 20                    2894 	.db #0x20	; 32
      003009 3C                    2895 	.db #0x3c	; 60
      00300A 22                    2896 	.db #0x22	; 34
      00300B 3C                    2897 	.db #0x3c	; 60
      00300C 00                    2898 	.db #0x00	; 0
      00300D 3C                    2899 	.db #0x3c	; 60
      00300E 00                    2900 	.db #0x00	; 0
      00300F 0C                    2901 	.db #0x0c	; 12
      003010 12                    2902 	.db #0x12	; 18
      003011 12                    2903 	.db #0x12	; 18
      003012 12                    2904 	.db #0x12	; 18
      003013 0C                    2905 	.db #0x0c	; 12
      003014 00                    2906 	.db #0x00	; 0
      003015 1E                    2907 	.db #0x1e	; 30
      003016 00                    2908 	.db #0x00	; 0
      003017 08                    2909 	.db #0x08	; 8
      003018 00                    2910 	.db #0x00	; 0
      003019 08                    2911 	.db #0x08	; 8
      00301A 0C                    2912 	.db #0x0c	; 12
      00301B 02                    2913 	.db #0x02	; 2
      00301C 22                    2914 	.db #0x22	; 34
      00301D 1C                    2915 	.db #0x1c	; 28
      00301E 00                    2916 	.db #0x00	; 0
      00301F 00                    2917 	.db #0x00	; 0
      003020 00                    2918 	.db #0x00	; 0
      003021 3E                    2919 	.db #0x3e	; 62
      003022 02                    2920 	.db #0x02	; 2
      003023 02                    2921 	.db #0x02	; 2
      003024 02                    2922 	.db #0x02	; 2
      003025 00                    2923 	.db #0x00	; 0
      003026 00                    2924 	.db #0x00	; 0
      003027 00                    2925 	.db #0x00	; 0
      003028 00                    2926 	.db #0x00	; 0
      003029 3F                    2927 	.db #0x3f	; 63
      00302A 20                    2928 	.db #0x20	; 32
      00302B 20                    2929 	.db #0x20	; 32
      00302C 00                    2930 	.db #0x00	; 0
      00302D 00                    2931 	.db #0x00	; 0
      00302E 00                    2932 	.db #0x00	; 0
      00302F 02                    2933 	.db #0x02	; 2
      003030 12                    2934 	.db #0x12	; 18
      003031 0A                    2935 	.db #0x0a	; 10
      003032 1C                    2936 	.db #0x1c	; 28
      003033 22                    2937 	.db #0x22	; 34
      003034 10                    2938 	.db #0x10	; 16
      003035 38                    2939 	.db #0x38	; 56	'8'
      003036 00                    2940 	.db #0x00	; 0
      003037 02                    2941 	.db #0x02	; 2
      003038 12                    2942 	.db #0x12	; 18
      003039 0A                    2943 	.db #0x0a	; 10
      00303A 34                    2944 	.db #0x34	; 52	'4'
      00303B 2A                    2945 	.db #0x2a	; 42
      00303C 38                    2946 	.db #0x38	; 56	'8'
      00303D 20                    2947 	.db #0x20	; 32
      00303E 00                    2948 	.db #0x00	; 0
      00303F 08                    2949 	.db #0x08	; 8
      003040 00                    2950 	.db #0x00	; 0
      003041 08                    2951 	.db #0x08	; 8
      003042 08                    2952 	.db #0x08	; 8
      003043 1C                    2953 	.db #0x1c	; 28
      003044 1C                    2954 	.db #0x1c	; 28
      003045 08                    2955 	.db #0x08	; 8
      003046 00                    2956 	.db #0x00	; 0
      003047 00                    2957 	.db #0x00	; 0
      003048 00                    2958 	.db #0x00	; 0
      003049 24                    2959 	.db #0x24	; 36
      00304A 12                    2960 	.db #0x12	; 18
      00304B 24                    2961 	.db #0x24	; 36
      00304C 00                    2962 	.db #0x00	; 0
      00304D 00                    2963 	.db #0x00	; 0
      00304E 00                    2964 	.db #0x00	; 0
      00304F 00                    2965 	.db #0x00	; 0
      003050 00                    2966 	.db #0x00	; 0
      003051 12                    2967 	.db #0x12	; 18
      003052 24                    2968 	.db #0x24	; 36
      003053 12                    2969 	.db #0x12	; 18
      003054 00                    2970 	.db #0x00	; 0
      003055 00                    2971 	.db #0x00	; 0
      003056 00                    2972 	.db #0x00	; 0
      003057 2A                    2973 	.db #0x2a	; 42
      003058 00                    2974 	.db #0x00	; 0
      003059 15                    2975 	.db #0x15	; 21
      00305A 00                    2976 	.db #0x00	; 0
      00305B 2A                    2977 	.db #0x2a	; 42
      00305C 00                    2978 	.db #0x00	; 0
      00305D 15                    2979 	.db #0x15	; 21
      00305E 00                    2980 	.db #0x00	; 0
      00305F 2A                    2981 	.db #0x2a	; 42
      003060 15                    2982 	.db #0x15	; 21
      003061 2A                    2983 	.db #0x2a	; 42
      003062 15                    2984 	.db #0x15	; 21
      003063 2A                    2985 	.db #0x2a	; 42
      003064 15                    2986 	.db #0x15	; 21
      003065 2A                    2987 	.db #0x2a	; 42
      003066 15                    2988 	.db #0x15	; 21
      003067 15                    2989 	.db #0x15	; 21
      003068 3F                    2990 	.db #0x3f	; 63
      003069 2A                    2991 	.db #0x2a	; 42
      00306A 3F                    2992 	.db #0x3f	; 63
      00306B 15                    2993 	.db #0x15	; 21
      00306C 3F                    2994 	.db #0x3f	; 63
      00306D 2A                    2995 	.db #0x2a	; 42
      00306E 3F                    2996 	.db #0x3f	; 63
      00306F 08                    2997 	.db #0x08	; 8
      003070 08                    2998 	.db #0x08	; 8
      003071 08                    2999 	.db #0x08	; 8
      003072 08                    3000 	.db #0x08	; 8
      003073 08                    3001 	.db #0x08	; 8
      003074 08                    3002 	.db #0x08	; 8
      003075 08                    3003 	.db #0x08	; 8
      003076 08                    3004 	.db #0x08	; 8
      003077 08                    3005 	.db #0x08	; 8
      003078 08                    3006 	.db #0x08	; 8
      003079 08                    3007 	.db #0x08	; 8
      00307A 0F                    3008 	.db #0x0f	; 15
      00307B 08                    3009 	.db #0x08	; 8
      00307C 08                    3010 	.db #0x08	; 8
      00307D 08                    3011 	.db #0x08	; 8
      00307E 08                    3012 	.db #0x08	; 8
      00307F 08                    3013 	.db #0x08	; 8
      003080 0F                    3014 	.db #0x0f	; 15
      003081 08                    3015 	.db #0x08	; 8
      003082 0F                    3016 	.db #0x0f	; 15
      003083 08                    3017 	.db #0x08	; 8
      003084 08                    3018 	.db #0x08	; 8
      003085 08                    3019 	.db #0x08	; 8
      003086 08                    3020 	.db #0x08	; 8
      003087 0A                    3021 	.db #0x0a	; 10
      003088 0A                    3022 	.db #0x0a	; 10
      003089 0A                    3023 	.db #0x0a	; 10
      00308A 0B                    3024 	.db #0x0b	; 11
      00308B 0A                    3025 	.db #0x0a	; 10
      00308C 0A                    3026 	.db #0x0a	; 10
      00308D 0A                    3027 	.db #0x0a	; 10
      00308E 0A                    3028 	.db #0x0a	; 10
      00308F 00                    3029 	.db #0x00	; 0
      003090 00                    3030 	.db #0x00	; 0
      003091 00                    3031 	.db #0x00	; 0
      003092 0F                    3032 	.db #0x0f	; 15
      003093 0A                    3033 	.db #0x0a	; 10
      003094 0A                    3034 	.db #0x0a	; 10
      003095 0A                    3035 	.db #0x0a	; 10
      003096 0A                    3036 	.db #0x0a	; 10
      003097 00                    3037 	.db #0x00	; 0
      003098 0F                    3038 	.db #0x0f	; 15
      003099 08                    3039 	.db #0x08	; 8
      00309A 0F                    3040 	.db #0x0f	; 15
      00309B 08                    3041 	.db #0x08	; 8
      00309C 08                    3042 	.db #0x08	; 8
      00309D 08                    3043 	.db #0x08	; 8
      00309E 08                    3044 	.db #0x08	; 8
      00309F 0A                    3045 	.db #0x0a	; 10
      0030A0 0B                    3046 	.db #0x0b	; 11
      0030A1 08                    3047 	.db #0x08	; 8
      0030A2 0B                    3048 	.db #0x0b	; 11
      0030A3 0A                    3049 	.db #0x0a	; 10
      0030A4 0A                    3050 	.db #0x0a	; 10
      0030A5 0A                    3051 	.db #0x0a	; 10
      0030A6 0A                    3052 	.db #0x0a	; 10
      0030A7 0A                    3053 	.db #0x0a	; 10
      0030A8 0A                    3054 	.db #0x0a	; 10
      0030A9 0A                    3055 	.db #0x0a	; 10
      0030AA 0A                    3056 	.db #0x0a	; 10
      0030AB 0A                    3057 	.db #0x0a	; 10
      0030AC 0A                    3058 	.db #0x0a	; 10
      0030AD 0A                    3059 	.db #0x0a	; 10
      0030AE 0A                    3060 	.db #0x0a	; 10
      0030AF 00                    3061 	.db #0x00	; 0
      0030B0 0F                    3062 	.db #0x0f	; 15
      0030B1 08                    3063 	.db #0x08	; 8
      0030B2 0B                    3064 	.db #0x0b	; 11
      0030B3 0A                    3065 	.db #0x0a	; 10
      0030B4 0A                    3066 	.db #0x0a	; 10
      0030B5 0A                    3067 	.db #0x0a	; 10
      0030B6 0A                    3068 	.db #0x0a	; 10
      0030B7 0A                    3069 	.db #0x0a	; 10
      0030B8 0B                    3070 	.db #0x0b	; 11
      0030B9 08                    3071 	.db #0x08	; 8
      0030BA 0F                    3072 	.db #0x0f	; 15
      0030BB 00                    3073 	.db #0x00	; 0
      0030BC 00                    3074 	.db #0x00	; 0
      0030BD 00                    3075 	.db #0x00	; 0
      0030BE 00                    3076 	.db #0x00	; 0
      0030BF 0A                    3077 	.db #0x0a	; 10
      0030C0 0A                    3078 	.db #0x0a	; 10
      0030C1 0A                    3079 	.db #0x0a	; 10
      0030C2 0F                    3080 	.db #0x0f	; 15
      0030C3 00                    3081 	.db #0x00	; 0
      0030C4 00                    3082 	.db #0x00	; 0
      0030C5 00                    3083 	.db #0x00	; 0
      0030C6 00                    3084 	.db #0x00	; 0
      0030C7 08                    3085 	.db #0x08	; 8
      0030C8 0F                    3086 	.db #0x0f	; 15
      0030C9 08                    3087 	.db #0x08	; 8
      0030CA 0F                    3088 	.db #0x0f	; 15
      0030CB 00                    3089 	.db #0x00	; 0
      0030CC 00                    3090 	.db #0x00	; 0
      0030CD 00                    3091 	.db #0x00	; 0
      0030CE 00                    3092 	.db #0x00	; 0
      0030CF 00                    3093 	.db #0x00	; 0
      0030D0 00                    3094 	.db #0x00	; 0
      0030D1 00                    3095 	.db #0x00	; 0
      0030D2 0F                    3096 	.db #0x0f	; 15
      0030D3 08                    3097 	.db #0x08	; 8
      0030D4 08                    3098 	.db #0x08	; 8
      0030D5 08                    3099 	.db #0x08	; 8
      0030D6 08                    3100 	.db #0x08	; 8
      0030D7 08                    3101 	.db #0x08	; 8
      0030D8 08                    3102 	.db #0x08	; 8
      0030D9 08                    3103 	.db #0x08	; 8
      0030DA 38                    3104 	.db #0x38	; 56	'8'
      0030DB 00                    3105 	.db #0x00	; 0
      0030DC 00                    3106 	.db #0x00	; 0
      0030DD 00                    3107 	.db #0x00	; 0
      0030DE 00                    3108 	.db #0x00	; 0
      0030DF 08                    3109 	.db #0x08	; 8
      0030E0 08                    3110 	.db #0x08	; 8
      0030E1 08                    3111 	.db #0x08	; 8
      0030E2 3F                    3112 	.db #0x3f	; 63
      0030E3 00                    3113 	.db #0x00	; 0
      0030E4 00                    3114 	.db #0x00	; 0
      0030E5 00                    3115 	.db #0x00	; 0
      0030E6 00                    3116 	.db #0x00	; 0
      0030E7 00                    3117 	.db #0x00	; 0
      0030E8 00                    3118 	.db #0x00	; 0
      0030E9 00                    3119 	.db #0x00	; 0
      0030EA 3F                    3120 	.db #0x3f	; 63
      0030EB 08                    3121 	.db #0x08	; 8
      0030EC 08                    3122 	.db #0x08	; 8
      0030ED 08                    3123 	.db #0x08	; 8
      0030EE 08                    3124 	.db #0x08	; 8
      0030EF 08                    3125 	.db #0x08	; 8
      0030F0 08                    3126 	.db #0x08	; 8
      0030F1 08                    3127 	.db #0x08	; 8
      0030F2 38                    3128 	.db #0x38	; 56	'8'
      0030F3 08                    3129 	.db #0x08	; 8
      0030F4 08                    3130 	.db #0x08	; 8
      0030F5 08                    3131 	.db #0x08	; 8
      0030F6 08                    3132 	.db #0x08	; 8
      0030F7 00                    3133 	.db #0x00	; 0
      0030F8 00                    3134 	.db #0x00	; 0
      0030F9 00                    3135 	.db #0x00	; 0
      0030FA 3F                    3136 	.db #0x3f	; 63
      0030FB 00                    3137 	.db #0x00	; 0
      0030FC 00                    3138 	.db #0x00	; 0
      0030FD 00                    3139 	.db #0x00	; 0
      0030FE 00                    3140 	.db #0x00	; 0
      0030FF 08                    3141 	.db #0x08	; 8
      003100 08                    3142 	.db #0x08	; 8
      003101 08                    3143 	.db #0x08	; 8
      003102 3F                    3144 	.db #0x3f	; 63
      003103 08                    3145 	.db #0x08	; 8
      003104 08                    3146 	.db #0x08	; 8
      003105 08                    3147 	.db #0x08	; 8
      003106 08                    3148 	.db #0x08	; 8
      003107 08                    3149 	.db #0x08	; 8
      003108 38                    3150 	.db #0x38	; 56	'8'
      003109 08                    3151 	.db #0x08	; 8
      00310A 38                    3152 	.db #0x38	; 56	'8'
      00310B 08                    3153 	.db #0x08	; 8
      00310C 08                    3154 	.db #0x08	; 8
      00310D 08                    3155 	.db #0x08	; 8
      00310E 08                    3156 	.db #0x08	; 8
      00310F 0A                    3157 	.db #0x0a	; 10
      003110 0A                    3158 	.db #0x0a	; 10
      003111 0A                    3159 	.db #0x0a	; 10
      003112 3A                    3160 	.db #0x3a	; 58
      003113 0A                    3161 	.db #0x0a	; 10
      003114 0A                    3162 	.db #0x0a	; 10
      003115 0A                    3163 	.db #0x0a	; 10
      003116 0A                    3164 	.db #0x0a	; 10
      003117 0A                    3165 	.db #0x0a	; 10
      003118 3A                    3166 	.db #0x3a	; 58
      003119 02                    3167 	.db #0x02	; 2
      00311A 3E                    3168 	.db #0x3e	; 62
      00311B 00                    3169 	.db #0x00	; 0
      00311C 00                    3170 	.db #0x00	; 0
      00311D 00                    3171 	.db #0x00	; 0
      00311E 00                    3172 	.db #0x00	; 0
      00311F 00                    3173 	.db #0x00	; 0
      003120 3E                    3174 	.db #0x3e	; 62
      003121 02                    3175 	.db #0x02	; 2
      003122 3A                    3176 	.db #0x3a	; 58
      003123 0A                    3177 	.db #0x0a	; 10
      003124 0A                    3178 	.db #0x0a	; 10
      003125 0A                    3179 	.db #0x0a	; 10
      003126 0A                    3180 	.db #0x0a	; 10
      003127 0A                    3181 	.db #0x0a	; 10
      003128 3B                    3182 	.db #0x3b	; 59
      003129 00                    3183 	.db #0x00	; 0
      00312A 3F                    3184 	.db #0x3f	; 63
      00312B 00                    3185 	.db #0x00	; 0
      00312C 00                    3186 	.db #0x00	; 0
      00312D 00                    3187 	.db #0x00	; 0
      00312E 00                    3188 	.db #0x00	; 0
      00312F 00                    3189 	.db #0x00	; 0
      003130 3F                    3190 	.db #0x3f	; 63
      003131 00                    3191 	.db #0x00	; 0
      003132 3B                    3192 	.db #0x3b	; 59
      003133 0A                    3193 	.db #0x0a	; 10
      003134 0A                    3194 	.db #0x0a	; 10
      003135 0A                    3195 	.db #0x0a	; 10
      003136 0A                    3196 	.db #0x0a	; 10
      003137 0A                    3197 	.db #0x0a	; 10
      003138 3A                    3198 	.db #0x3a	; 58
      003139 02                    3199 	.db #0x02	; 2
      00313A 3A                    3200 	.db #0x3a	; 58
      00313B 0A                    3201 	.db #0x0a	; 10
      00313C 0A                    3202 	.db #0x0a	; 10
      00313D 0A                    3203 	.db #0x0a	; 10
      00313E 0A                    3204 	.db #0x0a	; 10
      00313F 00                    3205 	.db #0x00	; 0
      003140 3F                    3206 	.db #0x3f	; 63
      003141 00                    3207 	.db #0x00	; 0
      003142 3F                    3208 	.db #0x3f	; 63
      003143 00                    3209 	.db #0x00	; 0
      003144 00                    3210 	.db #0x00	; 0
      003145 00                    3211 	.db #0x00	; 0
      003146 00                    3212 	.db #0x00	; 0
      003147 0A                    3213 	.db #0x0a	; 10
      003148 3B                    3214 	.db #0x3b	; 59
      003149 00                    3215 	.db #0x00	; 0
      00314A 3B                    3216 	.db #0x3b	; 59
      00314B 0A                    3217 	.db #0x0a	; 10
      00314C 0A                    3218 	.db #0x0a	; 10
      00314D 0A                    3219 	.db #0x0a	; 10
      00314E 0A                    3220 	.db #0x0a	; 10
      00314F 08                    3221 	.db #0x08	; 8
      003150 3F                    3222 	.db #0x3f	; 63
      003151 00                    3223 	.db #0x00	; 0
      003152 3F                    3224 	.db #0x3f	; 63
      003153 00                    3225 	.db #0x00	; 0
      003154 00                    3226 	.db #0x00	; 0
      003155 00                    3227 	.db #0x00	; 0
      003156 00                    3228 	.db #0x00	; 0
      003157 0A                    3229 	.db #0x0a	; 10
      003158 0A                    3230 	.db #0x0a	; 10
      003159 0A                    3231 	.db #0x0a	; 10
      00315A 3F                    3232 	.db #0x3f	; 63
      00315B 00                    3233 	.db #0x00	; 0
      00315C 00                    3234 	.db #0x00	; 0
      00315D 00                    3235 	.db #0x00	; 0
      00315E 00                    3236 	.db #0x00	; 0
      00315F 00                    3237 	.db #0x00	; 0
      003160 3F                    3238 	.db #0x3f	; 63
      003161 00                    3239 	.db #0x00	; 0
      003162 3F                    3240 	.db #0x3f	; 63
      003163 08                    3241 	.db #0x08	; 8
      003164 08                    3242 	.db #0x08	; 8
      003165 08                    3243 	.db #0x08	; 8
      003166 08                    3244 	.db #0x08	; 8
      003167 00                    3245 	.db #0x00	; 0
      003168 00                    3246 	.db #0x00	; 0
      003169 00                    3247 	.db #0x00	; 0
      00316A 3F                    3248 	.db #0x3f	; 63
      00316B 0A                    3249 	.db #0x0a	; 10
      00316C 0A                    3250 	.db #0x0a	; 10
      00316D 0A                    3251 	.db #0x0a	; 10
      00316E 0A                    3252 	.db #0x0a	; 10
      00316F 0A                    3253 	.db #0x0a	; 10
      003170 0A                    3254 	.db #0x0a	; 10
      003171 0A                    3255 	.db #0x0a	; 10
      003172 3E                    3256 	.db #0x3e	; 62
      003173 00                    3257 	.db #0x00	; 0
      003174 00                    3258 	.db #0x00	; 0
      003175 00                    3259 	.db #0x00	; 0
      003176 00                    3260 	.db #0x00	; 0
      003177 08                    3261 	.db #0x08	; 8
      003178 38                    3262 	.db #0x38	; 56	'8'
      003179 08                    3263 	.db #0x08	; 8
      00317A 38                    3264 	.db #0x38	; 56	'8'
      00317B 00                    3265 	.db #0x00	; 0
      00317C 00                    3266 	.db #0x00	; 0
      00317D 00                    3267 	.db #0x00	; 0
      00317E 00                    3268 	.db #0x00	; 0
      00317F 00                    3269 	.db #0x00	; 0
      003180 38                    3270 	.db #0x38	; 56	'8'
      003181 08                    3271 	.db #0x08	; 8
      003182 38                    3272 	.db #0x38	; 56	'8'
      003183 08                    3273 	.db #0x08	; 8
      003184 08                    3274 	.db #0x08	; 8
      003185 08                    3275 	.db #0x08	; 8
      003186 08                    3276 	.db #0x08	; 8
      003187 00                    3277 	.db #0x00	; 0
      003188 00                    3278 	.db #0x00	; 0
      003189 00                    3279 	.db #0x00	; 0
      00318A 3E                    3280 	.db #0x3e	; 62
      00318B 0A                    3281 	.db #0x0a	; 10
      00318C 0A                    3282 	.db #0x0a	; 10
      00318D 0A                    3283 	.db #0x0a	; 10
      00318E 0A                    3284 	.db #0x0a	; 10
      00318F 0A                    3285 	.db #0x0a	; 10
      003190 0A                    3286 	.db #0x0a	; 10
      003191 0A                    3287 	.db #0x0a	; 10
      003192 3B                    3288 	.db #0x3b	; 59
      003193 0A                    3289 	.db #0x0a	; 10
      003194 0A                    3290 	.db #0x0a	; 10
      003195 0A                    3291 	.db #0x0a	; 10
      003196 0A                    3292 	.db #0x0a	; 10
      003197 08                    3293 	.db #0x08	; 8
      003198 3F                    3294 	.db #0x3f	; 63
      003199 00                    3295 	.db #0x00	; 0
      00319A 3F                    3296 	.db #0x3f	; 63
      00319B 08                    3297 	.db #0x08	; 8
      00319C 08                    3298 	.db #0x08	; 8
      00319D 08                    3299 	.db #0x08	; 8
      00319E 08                    3300 	.db #0x08	; 8
      00319F 08                    3301 	.db #0x08	; 8
      0031A0 08                    3302 	.db #0x08	; 8
      0031A1 08                    3303 	.db #0x08	; 8
      0031A2 0F                    3304 	.db #0x0f	; 15
      0031A3 00                    3305 	.db #0x00	; 0
      0031A4 00                    3306 	.db #0x00	; 0
      0031A5 00                    3307 	.db #0x00	; 0
      0031A6 00                    3308 	.db #0x00	; 0
      0031A7 00                    3309 	.db #0x00	; 0
      0031A8 00                    3310 	.db #0x00	; 0
      0031A9 00                    3311 	.db #0x00	; 0
      0031AA 38                    3312 	.db #0x38	; 56	'8'
      0031AB 08                    3313 	.db #0x08	; 8
      0031AC 08                    3314 	.db #0x08	; 8
      0031AD 08                    3315 	.db #0x08	; 8
      0031AE 08                    3316 	.db #0x08	; 8
      0031AF 3F                    3317 	.db #0x3f	; 63
      0031B0 3F                    3318 	.db #0x3f	; 63
      0031B1 3F                    3319 	.db #0x3f	; 63
      0031B2 3F                    3320 	.db #0x3f	; 63
      0031B3 3F                    3321 	.db #0x3f	; 63
      0031B4 3F                    3322 	.db #0x3f	; 63
      0031B5 3F                    3323 	.db #0x3f	; 63
      0031B6 3F                    3324 	.db #0x3f	; 63
      0031B7 00                    3325 	.db #0x00	; 0
      0031B8 00                    3326 	.db #0x00	; 0
      0031B9 00                    3327 	.db #0x00	; 0
      0031BA 00                    3328 	.db #0x00	; 0
      0031BB 3F                    3329 	.db #0x3f	; 63
      0031BC 3F                    3330 	.db #0x3f	; 63
      0031BD 3F                    3331 	.db #0x3f	; 63
      0031BE 3F                    3332 	.db #0x3f	; 63
      0031BF 07                    3333 	.db #0x07	; 7
      0031C0 07                    3334 	.db #0x07	; 7
      0031C1 07                    3335 	.db #0x07	; 7
      0031C2 07                    3336 	.db #0x07	; 7
      0031C3 07                    3337 	.db #0x07	; 7
      0031C4 07                    3338 	.db #0x07	; 7
      0031C5 07                    3339 	.db #0x07	; 7
      0031C6 07                    3340 	.db #0x07	; 7
      0031C7 38                    3341 	.db #0x38	; 56	'8'
      0031C8 38                    3342 	.db #0x38	; 56	'8'
      0031C9 38                    3343 	.db #0x38	; 56	'8'
      0031CA 38                    3344 	.db #0x38	; 56	'8'
      0031CB 38                    3345 	.db #0x38	; 56	'8'
      0031CC 38                    3346 	.db #0x38	; 56	'8'
      0031CD 38                    3347 	.db #0x38	; 56	'8'
      0031CE 38                    3348 	.db #0x38	; 56	'8'
      0031CF 3F                    3349 	.db #0x3f	; 63
      0031D0 3F                    3350 	.db #0x3f	; 63
      0031D1 3F                    3351 	.db #0x3f	; 63
      0031D2 3F                    3352 	.db #0x3f	; 63
      0031D3 00                    3353 	.db #0x00	; 0
      0031D4 00                    3354 	.db #0x00	; 0
      0031D5 00                    3355 	.db #0x00	; 0
      0031D6 00                    3356 	.db #0x00	; 0
      0031D7 00                    3357 	.db #0x00	; 0
      0031D8 00                    3358 	.db #0x00	; 0
      0031D9 2C                    3359 	.db #0x2c	; 44
      0031DA 12                    3360 	.db #0x12	; 18
      0031DB 12                    3361 	.db #0x12	; 18
      0031DC 2C                    3362 	.db #0x2c	; 44
      0031DD 00                    3363 	.db #0x00	; 0
      0031DE 00                    3364 	.db #0x00	; 0
      0031DF 00                    3365 	.db #0x00	; 0
      0031E0 0E                    3366 	.db #0x0e	; 14
      0031E1 12                    3367 	.db #0x12	; 18
      0031E2 0E                    3368 	.db #0x0e	; 14
      0031E3 12                    3369 	.db #0x12	; 18
      0031E4 12                    3370 	.db #0x12	; 18
      0031E5 0E                    3371 	.db #0x0e	; 14
      0031E6 02                    3372 	.db #0x02	; 2
      0031E7 1E                    3373 	.db #0x1e	; 30
      0031E8 12                    3374 	.db #0x12	; 18
      0031E9 02                    3375 	.db #0x02	; 2
      0031EA 02                    3376 	.db #0x02	; 2
      0031EB 02                    3377 	.db #0x02	; 2
      0031EC 02                    3378 	.db #0x02	; 2
      0031ED 02                    3379 	.db #0x02	; 2
      0031EE 00                    3380 	.db #0x00	; 0
      0031EF 00                    3381 	.db #0x00	; 0
      0031F0 3E                    3382 	.db #0x3e	; 62
      0031F1 14                    3383 	.db #0x14	; 20
      0031F2 14                    3384 	.db #0x14	; 20
      0031F3 14                    3385 	.db #0x14	; 20
      0031F4 14                    3386 	.db #0x14	; 20
      0031F5 14                    3387 	.db #0x14	; 20
      0031F6 00                    3388 	.db #0x00	; 0
      0031F7 1E                    3389 	.db #0x1e	; 30
      0031F8 12                    3390 	.db #0x12	; 18
      0031F9 04                    3391 	.db #0x04	; 4
      0031FA 08                    3392 	.db #0x08	; 8
      0031FB 04                    3393 	.db #0x04	; 4
      0031FC 12                    3394 	.db #0x12	; 18
      0031FD 1E                    3395 	.db #0x1e	; 30
      0031FE 00                    3396 	.db #0x00	; 0
      0031FF 00                    3397 	.db #0x00	; 0
      003200 00                    3398 	.db #0x00	; 0
      003201 3C                    3399 	.db #0x3c	; 60
      003202 12                    3400 	.db #0x12	; 18
      003203 12                    3401 	.db #0x12	; 18
      003204 0C                    3402 	.db #0x0c	; 12
      003205 00                    3403 	.db #0x00	; 0
      003206 00                    3404 	.db #0x00	; 0
      003207 00                    3405 	.db #0x00	; 0
      003208 00                    3406 	.db #0x00	; 0
      003209 12                    3407 	.db #0x12	; 18
      00320A 12                    3408 	.db #0x12	; 18
      00320B 12                    3409 	.db #0x12	; 18
      00320C 0E                    3410 	.db #0x0e	; 14
      00320D 02                    3411 	.db #0x02	; 2
      00320E 02                    3412 	.db #0x02	; 2
      00320F 00                    3413 	.db #0x00	; 0
      003210 00                    3414 	.db #0x00	; 0
      003211 14                    3415 	.db #0x14	; 20
      003212 0A                    3416 	.db #0x0a	; 10
      003213 08                    3417 	.db #0x08	; 8
      003214 08                    3418 	.db #0x08	; 8
      003215 08                    3419 	.db #0x08	; 8
      003216 00                    3420 	.db #0x00	; 0
      003217 1C                    3421 	.db #0x1c	; 28
      003218 08                    3422 	.db #0x08	; 8
      003219 1C                    3423 	.db #0x1c	; 28
      00321A 22                    3424 	.db #0x22	; 34
      00321B 1C                    3425 	.db #0x1c	; 28
      00321C 08                    3426 	.db #0x08	; 8
      00321D 1C                    3427 	.db #0x1c	; 28
      00321E 00                    3428 	.db #0x00	; 0
      00321F 0C                    3429 	.db #0x0c	; 12
      003220 12                    3430 	.db #0x12	; 18
      003221 12                    3431 	.db #0x12	; 18
      003222 1E                    3432 	.db #0x1e	; 30
      003223 12                    3433 	.db #0x12	; 18
      003224 12                    3434 	.db #0x12	; 18
      003225 0C                    3435 	.db #0x0c	; 12
      003226 00                    3436 	.db #0x00	; 0
      003227 00                    3437 	.db #0x00	; 0
      003228 1C                    3438 	.db #0x1c	; 28
      003229 22                    3439 	.db #0x22	; 34
      00322A 22                    3440 	.db #0x22	; 34
      00322B 14                    3441 	.db #0x14	; 20
      00322C 14                    3442 	.db #0x14	; 20
      00322D 36                    3443 	.db #0x36	; 54	'6'
      00322E 00                    3444 	.db #0x00	; 0
      00322F 0C                    3445 	.db #0x0c	; 12
      003230 02                    3446 	.db #0x02	; 2
      003231 04                    3447 	.db #0x04	; 4
      003232 08                    3448 	.db #0x08	; 8
      003233 1C                    3449 	.db #0x1c	; 28
      003234 12                    3450 	.db #0x12	; 18
      003235 0C                    3451 	.db #0x0c	; 12
      003236 00                    3452 	.db #0x00	; 0
      003237 00                    3453 	.db #0x00	; 0
      003238 00                    3454 	.db #0x00	; 0
      003239 14                    3455 	.db #0x14	; 20
      00323A 2A                    3456 	.db #0x2a	; 42
      00323B 2A                    3457 	.db #0x2a	; 42
      00323C 14                    3458 	.db #0x14	; 20
      00323D 00                    3459 	.db #0x00	; 0
      00323E 00                    3460 	.db #0x00	; 0
      00323F 00                    3461 	.db #0x00	; 0
      003240 08                    3462 	.db #0x08	; 8
      003241 1C                    3463 	.db #0x1c	; 28
      003242 2A                    3464 	.db #0x2a	; 42
      003243 2A                    3465 	.db #0x2a	; 42
      003244 1C                    3466 	.db #0x1c	; 28
      003245 08                    3467 	.db #0x08	; 8
      003246 00                    3468 	.db #0x00	; 0
      003247 00                    3469 	.db #0x00	; 0
      003248 1C                    3470 	.db #0x1c	; 28
      003249 02                    3471 	.db #0x02	; 2
      00324A 1E                    3472 	.db #0x1e	; 30
      00324B 02                    3473 	.db #0x02	; 2
      00324C 1C                    3474 	.db #0x1c	; 28
      00324D 00                    3475 	.db #0x00	; 0
      00324E 00                    3476 	.db #0x00	; 0
      00324F 00                    3477 	.db #0x00	; 0
      003250 0C                    3478 	.db #0x0c	; 12
      003251 12                    3479 	.db #0x12	; 18
      003252 12                    3480 	.db #0x12	; 18
      003253 12                    3481 	.db #0x12	; 18
      003254 12                    3482 	.db #0x12	; 18
      003255 00                    3483 	.db #0x00	; 0
      003256 00                    3484 	.db #0x00	; 0
      003257 00                    3485 	.db #0x00	; 0
      003258 1E                    3486 	.db #0x1e	; 30
      003259 00                    3487 	.db #0x00	; 0
      00325A 1E                    3488 	.db #0x1e	; 30
      00325B 00                    3489 	.db #0x00	; 0
      00325C 1E                    3490 	.db #0x1e	; 30
      00325D 00                    3491 	.db #0x00	; 0
      00325E 00                    3492 	.db #0x00	; 0
      00325F 00                    3493 	.db #0x00	; 0
      003260 08                    3494 	.db #0x08	; 8
      003261 1C                    3495 	.db #0x1c	; 28
      003262 08                    3496 	.db #0x08	; 8
      003263 00                    3497 	.db #0x00	; 0
      003264 1C                    3498 	.db #0x1c	; 28
      003265 00                    3499 	.db #0x00	; 0
      003266 00                    3500 	.db #0x00	; 0
      003267 02                    3501 	.db #0x02	; 2
      003268 0C                    3502 	.db #0x0c	; 12
      003269 10                    3503 	.db #0x10	; 16
      00326A 0C                    3504 	.db #0x0c	; 12
      00326B 02                    3505 	.db #0x02	; 2
      00326C 00                    3506 	.db #0x00	; 0
      00326D 1E                    3507 	.db #0x1e	; 30
      00326E 00                    3508 	.db #0x00	; 0
      00326F 10                    3509 	.db #0x10	; 16
      003270 0C                    3510 	.db #0x0c	; 12
      003271 02                    3511 	.db #0x02	; 2
      003272 0C                    3512 	.db #0x0c	; 12
      003273 10                    3513 	.db #0x10	; 16
      003274 00                    3514 	.db #0x00	; 0
      003275 1E                    3515 	.db #0x1e	; 30
      003276 00                    3516 	.db #0x00	; 0
      003277 00                    3517 	.db #0x00	; 0
      003278 10                    3518 	.db #0x10	; 16
      003279 28                    3519 	.db #0x28	; 40
      00327A 08                    3520 	.db #0x08	; 8
      00327B 08                    3521 	.db #0x08	; 8
      00327C 08                    3522 	.db #0x08	; 8
      00327D 08                    3523 	.db #0x08	; 8
      00327E 08                    3524 	.db #0x08	; 8
      00327F 08                    3525 	.db #0x08	; 8
      003280 08                    3526 	.db #0x08	; 8
      003281 08                    3527 	.db #0x08	; 8
      003282 08                    3528 	.db #0x08	; 8
      003283 08                    3529 	.db #0x08	; 8
      003284 0A                    3530 	.db #0x0a	; 10
      003285 04                    3531 	.db #0x04	; 4
      003286 00                    3532 	.db #0x00	; 0
      003287 00                    3533 	.db #0x00	; 0
      003288 08                    3534 	.db #0x08	; 8
      003289 00                    3535 	.db #0x00	; 0
      00328A 3E                    3536 	.db #0x3e	; 62
      00328B 00                    3537 	.db #0x00	; 0
      00328C 08                    3538 	.db #0x08	; 8
      00328D 00                    3539 	.db #0x00	; 0
      00328E 00                    3540 	.db #0x00	; 0
      00328F 00                    3541 	.db #0x00	; 0
      003290 14                    3542 	.db #0x14	; 20
      003291 0A                    3543 	.db #0x0a	; 10
      003292 00                    3544 	.db #0x00	; 0
      003293 14                    3545 	.db #0x14	; 20
      003294 0A                    3546 	.db #0x0a	; 10
      003295 00                    3547 	.db #0x00	; 0
      003296 00                    3548 	.db #0x00	; 0
      003297 0C                    3549 	.db #0x0c	; 12
      003298 12                    3550 	.db #0x12	; 18
      003299 12                    3551 	.db #0x12	; 18
      00329A 0C                    3552 	.db #0x0c	; 12
      00329B 00                    3553 	.db #0x00	; 0
      00329C 00                    3554 	.db #0x00	; 0
      00329D 00                    3555 	.db #0x00	; 0
      00329E 00                    3556 	.db #0x00	; 0
      00329F 00                    3557 	.db #0x00	; 0
      0032A0 00                    3558 	.db #0x00	; 0
      0032A1 00                    3559 	.db #0x00	; 0
      0032A2 0C                    3560 	.db #0x0c	; 12
      0032A3 0C                    3561 	.db #0x0c	; 12
      0032A4 00                    3562 	.db #0x00	; 0
      0032A5 00                    3563 	.db #0x00	; 0
      0032A6 00                    3564 	.db #0x00	; 0
      0032A7 00                    3565 	.db #0x00	; 0
      0032A8 00                    3566 	.db #0x00	; 0
      0032A9 00                    3567 	.db #0x00	; 0
      0032AA 04                    3568 	.db #0x04	; 4
      0032AB 00                    3569 	.db #0x00	; 0
      0032AC 00                    3570 	.db #0x00	; 0
      0032AD 00                    3571 	.db #0x00	; 0
      0032AE 00                    3572 	.db #0x00	; 0
      0032AF 00                    3573 	.db #0x00	; 0
      0032B0 38                    3574 	.db #0x38	; 56	'8'
      0032B1 08                    3575 	.db #0x08	; 8
      0032B2 08                    3576 	.db #0x08	; 8
      0032B3 0A                    3577 	.db #0x0a	; 10
      0032B4 0A                    3578 	.db #0x0a	; 10
      0032B5 04                    3579 	.db #0x04	; 4
      0032B6 00                    3580 	.db #0x00	; 0
      0032B7 0A                    3581 	.db #0x0a	; 10
      0032B8 14                    3582 	.db #0x14	; 20
      0032B9 14                    3583 	.db #0x14	; 20
      0032BA 14                    3584 	.db #0x14	; 20
      0032BB 00                    3585 	.db #0x00	; 0
      0032BC 00                    3586 	.db #0x00	; 0
      0032BD 00                    3587 	.db #0x00	; 0
      0032BE 00                    3588 	.db #0x00	; 0
      0032BF 06                    3589 	.db #0x06	; 6
      0032C0 08                    3590 	.db #0x08	; 8
      0032C1 04                    3591 	.db #0x04	; 4
      0032C2 0E                    3592 	.db #0x0e	; 14
      0032C3 00                    3593 	.db #0x00	; 0
      0032C4 00                    3594 	.db #0x00	; 0
      0032C5 00                    3595 	.db #0x00	; 0
      0032C6 00                    3596 	.db #0x00	; 0
      0032C7 00                    3597 	.db #0x00	; 0
      0032C8 00                    3598 	.db #0x00	; 0
      0032C9 1E                    3599 	.db #0x1e	; 30
      0032CA 1E                    3600 	.db #0x1e	; 30
      0032CB 1E                    3601 	.db #0x1e	; 30
      0032CC 1E                    3602 	.db #0x1e	; 30
      0032CD 00                    3603 	.db #0x00	; 0
      0032CE 00                    3604 	.db #0x00	; 0
      0032CF 00                    3605 	.db #0x00	; 0
      0032D0 00                    3606 	.db #0x00	; 0
      0032D1 00                    3607 	.db #0x00	; 0
      0032D2 00                    3608 	.db #0x00	; 0
      0032D3 00                    3609 	.db #0x00	; 0
      0032D4 00                    3610 	.db #0x00	; 0
      0032D5 00                    3611 	.db #0x00	; 0
      0032D6 00                    3612 	.db #0x00	; 0
      0032D7                       3613 __xinit__initial:
      0032D7 95 2A 80              3614 	.byte ___str_10, (___str_10 >> 8),#0x80
                                   3615 	.area CABS    (ABS,CODE)
