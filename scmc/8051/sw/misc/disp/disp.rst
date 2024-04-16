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
      00200B 02 21 6B         [24]  375 	ljmp	_timer0_intr
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
                                    389 ;	disp.c:128: __idata const uint8_t dsdcol[8] = {
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
                                    406 ;	disp.c:132: __idata const uint8_t sddcol[8] = {
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
      00200E 02 23 51         [24]  431 	ljmp	_main
                                    432 ;	return from main will return to caller
                                    433 ;--------------------------------------------------------
                                    434 ; code
                                    435 ;--------------------------------------------------------
                                    436 	.area CSEG    (CODE)
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'putchar'
                                    439 ;------------------------------------------------------------
                                    440 ;c                         Allocated to registers 
                                    441 ;------------------------------------------------------------
                                    442 ;	disp.c:11: int putchar(int c) __naked {
                                    443 ;	-----------------------------------------
                                    444 ;	 function putchar
                                    445 ;	-----------------------------------------
      0020AD                        446 _putchar:
                                    447 ;	naked function: no prologue.
                                    448 ;	disp.c:18: __endasm;
      0020AD C0 E0            [24]  449 	push	acc
      0020AF E5 82            [12]  450 	mov	a, dpl
      0020B1 12 00 3C         [24]  451 	lcall	0x003c
      0020B4 D0 E0            [24]  452 	pop	acc
                                    453 ;	disp.c:19: }
                                    454 ;	naked function: no epilogue.
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'getchar'
                                    457 ;------------------------------------------------------------
                                    458 ;	disp.c:21: int getchar(void) __naked {
                                    459 ;	-----------------------------------------
                                    460 ;	 function getchar
                                    461 ;	-----------------------------------------
      0020B6                        462 _getchar:
                                    463 ;	naked function: no prologue.
                                    464 ;	disp.c:29: __endasm;
      0020B6 C0 E0            [24]  465 	push	acc
      0020B8 12 00 36         [24]  466 	lcall	0x0036
      0020BB F5 82            [12]  467 	mov	dpl, a
      0020BD 75 83 00         [24]  468 	mov	dph, #0
      0020C0 D0 E0            [24]  469 	pop	acc
      0020C2 22               [24]  470 	ret
                                    471 ;	disp.c:30: }
                                    472 ;	naked function: no epilogue.
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'getchar_poll'
                                    475 ;------------------------------------------------------------
                                    476 ;	disp.c:32: int getchar_poll(void) __naked {
                                    477 ;	-----------------------------------------
                                    478 ;	 function getchar_poll
                                    479 ;	-----------------------------------------
      0020C3                        480 _getchar_poll:
                                    481 ;	naked function: no prologue.
                                    482 ;	disp.c:47: __endasm;
      0020C3 C0 E0            [24]  483 	push	acc
      0020C5 C0 F0            [24]  484 	push	b
      0020C7 74 FF            [12]  485 	mov	a, #0xff
      0020C9 F5 F0            [12]  486 	mov	b, a
      0020CB 12 00 39         [24]  487 	lcall	0x0039
      0020CE 40 03            [24]  488 	jc	nochar
      0020D0 75 F0 00         [24]  489 	mov	b, #0x00
      0020D3                        490 	nochar:
      0020D3 F5 82            [12]  491 	mov	dpl, a
      0020D5 85 F0 83         [24]  492 	mov	dph, b
      0020D8 D0 F0            [24]  493 	pop	b
      0020DA D0 E0            [24]  494 	pop	acc
      0020DC 22               [24]  495 	ret
                                    496 ;	disp.c:48: }
                                    497 ;	naked function: no epilogue.
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'gpo_init'
                                    500 ;------------------------------------------------------------
                                    501 ;	disp.c:87: void gpo_init(void) {
                                    502 ;	-----------------------------------------
                                    503 ;	 function gpo_init
                                    504 ;	-----------------------------------------
      0020DD                        505 _gpo_init:
                           000007   506 	ar7 = 0x07
                           000006   507 	ar6 = 0x06
                           000005   508 	ar5 = 0x05
                           000004   509 	ar4 = 0x04
                           000003   510 	ar3 = 0x03
                           000002   511 	ar2 = 0x02
                           000001   512 	ar1 = 0x01
                           000000   513 	ar0 = 0x00
                                    514 ;	disp.c:88: P1_7 = 0;
                                    515 ;	assignBit
      0020DD C2 97            [12]  516 	clr	_P1_7
                                    517 ;	disp.c:93: __endasm;
      0020DF 00               [12]  518 	nop
      0020E0 00               [12]  519 	nop
      0020E1 00               [12]  520 	nop
                                    521 ;	disp.c:95: P2 = GPO_BASE_H;
      0020E2 75 A0 F0         [24]  522 	mov	_P2,#0xf0
                                    523 ;	disp.c:97: GPO_CLEAR;
      0020E5 78 06            [12]  524 	mov	r0,#(_gpo + 0x0006)
      0020E7 74 3F            [12]  525 	mov	a,#0x3f
      0020E9 F2               [24]  526 	movx	@r0,a
      0020EA 78 00            [12]  527 	mov	r0,#_gpo
      0020EC E4               [12]  528 	clr	a
      0020ED F2               [24]  529 	movx	@r0,a
      0020EE 78 01            [12]  530 	mov	r0,#(_gpo + 0x0001)
      0020F0 F2               [24]  531 	movx	@r0,a
      0020F1 78 02            [12]  532 	mov	r0,#(_gpo + 0x0002)
      0020F3 F2               [24]  533 	movx	@r0,a
      0020F4 78 03            [12]  534 	mov	r0,#(_gpo + 0x0003)
      0020F6 F2               [24]  535 	movx	@r0,a
      0020F7 78 04            [12]  536 	mov	r0,#(_gpo + 0x0004)
      0020F9 F2               [24]  537 	movx	@r0,a
      0020FA 78 05            [12]  538 	mov	r0,#(_gpo + 0x0005)
      0020FC F2               [24]  539 	movx	@r0,a
                                    540 ;	disp.c:99: return;
                                    541 ;	disp.c:100: }
      0020FD 22               [24]  542 	ret
                                    543 ;------------------------------------------------------------
                                    544 ;Allocation info for local variables in function 'gpo_clear'
                                    545 ;------------------------------------------------------------
                                    546 ;	disp.c:102: void gpo_clear(void) {
                                    547 ;	-----------------------------------------
                                    548 ;	 function gpo_clear
                                    549 ;	-----------------------------------------
      0020FE                        550 _gpo_clear:
                                    551 ;	disp.c:103: GPO_CLEAR;
      0020FE 78 06            [12]  552 	mov	r0,#(_gpo + 0x0006)
      002100 74 3F            [12]  553 	mov	a,#0x3f
      002102 F2               [24]  554 	movx	@r0,a
      002103 78 00            [12]  555 	mov	r0,#_gpo
      002105 E4               [12]  556 	clr	a
      002106 F2               [24]  557 	movx	@r0,a
      002107 78 01            [12]  558 	mov	r0,#(_gpo + 0x0001)
      002109 F2               [24]  559 	movx	@r0,a
      00210A 78 02            [12]  560 	mov	r0,#(_gpo + 0x0002)
      00210C F2               [24]  561 	movx	@r0,a
      00210D 78 03            [12]  562 	mov	r0,#(_gpo + 0x0003)
      00210F F2               [24]  563 	movx	@r0,a
      002110 78 04            [12]  564 	mov	r0,#(_gpo + 0x0004)
      002112 F2               [24]  565 	movx	@r0,a
      002113 78 05            [12]  566 	mov	r0,#(_gpo + 0x0005)
      002115 F2               [24]  567 	movx	@r0,a
                                    568 ;	disp.c:105: return;
                                    569 ;	disp.c:106: }
      002116 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'init_intr'
                                    573 ;------------------------------------------------------------
                                    574 ;	disp.c:140: void init_intr(void) {
                                    575 ;	-----------------------------------------
                                    576 ;	 function init_intr
                                    577 ;	-----------------------------------------
      002117                        578 _init_intr:
                                    579 ;	disp.c:141: TR0 = 0;
                                    580 ;	assignBit
      002117 C2 8C            [12]  581 	clr	_TR0
                                    582 ;	disp.c:142: TR1 = 0;
                                    583 ;	assignBit
      002119 C2 8E            [12]  584 	clr	_TR1
                                    585 ;	disp.c:143: ET0 = 1;
                                    586 ;	assignBit
      00211B D2 A9            [12]  587 	setb	_ET0
                                    588 ;	disp.c:144: ET1 = 0;
                                    589 ;	assignBit
      00211D C2 AB            [12]  590 	clr	_ET1
                                    591 ;	disp.c:145: EA = 1;
                                    592 ;	assignBit
      00211F D2 AF            [12]  593 	setb	_EA
                                    594 ;	disp.c:147: return;
                                    595 ;	disp.c:148: }
      002121 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'init_timer0'
                                    599 ;------------------------------------------------------------
                                    600 ;	disp.c:150: void init_timer0(void) {
                                    601 ;	-----------------------------------------
                                    602 ;	 function init_timer0
                                    603 ;	-----------------------------------------
      002122                        604 _init_timer0:
                                    605 ;	disp.c:151: TR0 = 0;
                                    606 ;	assignBit
      002122 C2 8C            [12]  607 	clr	_TR0
                                    608 ;	disp.c:152: TMOD |= 0x01;
      002124 43 89 01         [24]  609 	orl	_TMOD,#0x01
                                    610 ;	disp.c:153: TH0 = TR0_COUNT >> 8;
      002127 75 8C F8         [24]  611 	mov	_TH0,#0xf8
                                    612 ;	disp.c:154: TL0 = TR0_COUNT & 0xffu;
      00212A 75 8A 00         [24]  613 	mov	_TL0,#0x00
                                    614 ;	disp.c:156: return;
                                    615 ;	disp.c:157: }
      00212D 22               [24]  616 	ret
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'init_timer1'
                                    619 ;------------------------------------------------------------
                                    620 ;	disp.c:159: void init_timer1(void) {
                                    621 ;	-----------------------------------------
                                    622 ;	 function init_timer1
                                    623 ;	-----------------------------------------
      00212E                        624 _init_timer1:
                                    625 ;	disp.c:160: TR1 = 0;
                                    626 ;	assignBit
      00212E C2 8E            [12]  627 	clr	_TR1
                                    628 ;	disp.c:161: TMOD |= 0x10;
      002130 43 89 10         [24]  629 	orl	_TMOD,#0x10
                                    630 ;	disp.c:162: TH1 = TR1_COUNT_0 >> 8;
      002133 75 8D 00         [24]  631 	mov	_TH1,#0x00
                                    632 ;	disp.c:163: TL1 = TR1_COUNT_0 & 0xffu;
      002136 75 8B 00         [24]  633 	mov	_TL1,#0x00
                                    634 ;	disp.c:165: return;
                                    635 ;	disp.c:166: }
      002139 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'init_disp'
                                    639 ;------------------------------------------------------------
                                    640 ;	disp.c:168: void init_disp(void) {
                                    641 ;	-----------------------------------------
                                    642 ;	 function init_disp
                                    643 ;	-----------------------------------------
      00213A                        644 _init_disp:
                                    645 ;	disp.c:169: GPO_SETREG(DISP_COL, 0u);
      00213A 78 05            [12]  646 	mov	r0,#(_gpo + 0x0005)
      00213C E4               [12]  647 	clr	a
      00213D F2               [24]  648 	movx	@r0,a
                                    649 ;	disp.c:170: GPO_SETREG(DISP_DATA, 0u);
      00213E 78 04            [12]  650 	mov	r0,#(_gpo + 0x0004)
      002140 F2               [24]  651 	movx	@r0,a
                                    652 ;	disp.c:171: OE = 0x0fu; /* 00_001111 */
      002141 78 3A            [12]  653 	mov	r0,#_OE
      002143 76 0F            [12]  654 	mov	@r0,#0x0f
                                    655 ;	disp.c:172: GPO_SETOE(OE);
      002145 78 06            [12]  656 	mov	r0,#(_gpo + 0x0006)
      002147 74 0F            [12]  657 	mov	a,#0x0f
      002149 F2               [24]  658 	movx	@r0,a
                                    659 ;	disp.c:174: for (column = 0u; column < 8u; column++)
      00214A 78 39            [12]  660 	mov	r0,#_column
      00214C 76 00            [12]  661 	mov	@r0,#0x00
      00214E                        662 00112$:
      00214E 78 39            [12]  663 	mov	r0,#_column
      002150 B6 08 00         [24]  664 	cjne	@r0,#0x08,00124$
      002153                        665 00124$:
      002153 50 11            [24]  666 	jnc	00110$
                                    667 ;	disp.c:175: ddata[column] = 0u;
      002155 78 39            [12]  668 	mov	r0,#_column
      002157 E6               [12]  669 	mov	a,@r0
      002158 24 31            [12]  670 	add	a,#_ddata
      00215A F8               [12]  671 	mov	r0,a
      00215B 76 00            [12]  672 	mov	@r0,#0x00
                                    673 ;	disp.c:174: for (column = 0u; column < 8u; column++)
      00215D 78 39            [12]  674 	mov	r0,#_column
      00215F E6               [12]  675 	mov	a,@r0
      002160 78 39            [12]  676 	mov	r0,#_column
      002162 04               [12]  677 	inc	a
      002163 F6               [12]  678 	mov	@r0,a
      002164 80 E8            [24]  679 	sjmp	00112$
      002166                        680 00110$:
                                    681 ;	disp.c:176: column = 0u;
      002166 78 39            [12]  682 	mov	r0,#_column
      002168 76 00            [12]  683 	mov	@r0,#0x00
                                    684 ;	disp.c:178: return;
                                    685 ;	disp.c:179: }
      00216A 22               [24]  686 	ret
                                    687 ;------------------------------------------------------------
                                    688 ;Allocation info for local variables in function 'timer0_intr'
                                    689 ;------------------------------------------------------------
                                    690 ;t                         Allocated to registers r7 
                                    691 ;------------------------------------------------------------
                                    692 ;	disp.c:181: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    693 ;	-----------------------------------------
                                    694 ;	 function timer0_intr
                                    695 ;	-----------------------------------------
      00216B                        696 _timer0_intr:
                           00000F   697 	ar7 = 0x0f
                           00000E   698 	ar6 = 0x0e
                           00000D   699 	ar5 = 0x0d
                           00000C   700 	ar4 = 0x0c
                           00000B   701 	ar3 = 0x0b
                           00000A   702 	ar2 = 0x0a
                           000009   703 	ar1 = 0x09
                           000008   704 	ar0 = 0x08
      00216B C0 E0            [24]  705 	push	acc
      00216D C0 D0            [24]  706 	push	psw
      00216F 75 D0 08         [24]  707 	mov	psw,#0x08
                                    708 ;	disp.c:184: t = column & 7u;
      002172 78 39            [12]  709 	mov	r0,#_column
      002174 86 0F            [24]  710 	mov	ar7,@r0
      002176 53 0F 07         [24]  711 	anl	ar7,#0x07
                                    712 ;	disp.c:185: GPO_SETREG(DISP_COL, 0u);
      002179 78 05            [12]  713 	mov	r0,#(_gpo + 0x0005)
      00217B E4               [12]  714 	clr	a
      00217C F2               [24]  715 	movx	@r0,a
                                    716 ;	disp.c:186: GPO_SETREG(DISP_DATA, ddata[t]);
      00217D EF               [12]  717 	mov	a,r7
      00217E 24 31            [12]  718 	add	a,#_ddata
      002180 F9               [12]  719 	mov	r1,a
      002181 87 0E            [24]  720 	mov	ar6,@r1
      002183 78 04            [12]  721 	mov	r0,#(_gpo + 0x0004)
      002185 EE               [12]  722 	mov	a,r6
      002186 F2               [24]  723 	movx	@r0,a
                                    724 ;	disp.c:187: GPO_SETREG(DISP_COL, dsdcol[t]);
      002187 EF               [12]  725 	mov	a,r7
      002188 24 21            [12]  726 	add	a,#_dsdcol
      00218A F9               [12]  727 	mov	r1,a
      00218B 87 0F            [24]  728 	mov	ar7,@r1
      00218D 78 05            [12]  729 	mov	r0,#(_gpo + 0x0005)
      00218F EF               [12]  730 	mov	a,r7
      002190 F2               [24]  731 	movx	@r0,a
                                    732 ;	disp.c:188: column++;
      002191 78 39            [12]  733 	mov	r0,#_column
      002193 E6               [12]  734 	mov	a,@r0
      002194 78 39            [12]  735 	mov	r0,#_column
      002196 04               [12]  736 	inc	a
      002197 F6               [12]  737 	mov	@r0,a
                                    738 ;	disp.c:190: TR0 = 0;
                                    739 ;	assignBit
      002198 C2 8C            [12]  740 	clr	_TR0
                                    741 ;	disp.c:191: TH0 = TR0_COUNT >> 8;
      00219A 75 8C F8         [24]  742 	mov	_TH0,#0xf8
                                    743 ;	disp.c:192: TL0 = TR0_COUNT & 0xffu;
      00219D 75 8A 00         [24]  744 	mov	_TL0,#0x00
                                    745 ;	disp.c:193: TR0 = 1;
                                    746 ;	assignBit
      0021A0 D2 8C            [12]  747 	setb	_TR0
                                    748 ;	disp.c:195: return;
                                    749 ;	disp.c:196: }
      0021A2 D0 D0            [24]  750 	pop	psw
      0021A4 D0 E0            [24]  751 	pop	acc
      0021A6 32               [24]  752 	reti
                                    753 ;	eliminated unneeded push/pop dpl
                                    754 ;	eliminated unneeded push/pop dph
                                    755 ;	eliminated unneeded push/pop b
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'scroll'
                                    758 ;------------------------------------------------------------
                                    759 ;msg                       Allocated to stack - _bp +1
                                    760 ;symbol                    Allocated to stack - _bp +5
                                    761 ;bit                       Allocated to stack - _bp +6
                                    762 ;i                         Allocated to stack - _bp +7
                                    763 ;j                         Allocated to registers r4 
                                    764 ;r                         Allocated to registers r3 r4 
                                    765 ;__3932160002              Allocated to registers 
                                    766 ;s                         Allocated to registers r6 r4 r3 
                                    767 ;sloc0                     Allocated to stack - _bp +4
                                    768 ;sloc1                     Allocated to stack - _bp +18
                                    769 ;sloc2                     Allocated to stack - _bp +19
                                    770 ;------------------------------------------------------------
                                    771 ;	disp.c:223: int scroll(uint8_t *msg) {
                                    772 ;	-----------------------------------------
                                    773 ;	 function scroll
                                    774 ;	-----------------------------------------
      0021A7                        775 _scroll:
                           000007   776 	ar7 = 0x07
                           000006   777 	ar6 = 0x06
                           000005   778 	ar5 = 0x05
                           000004   779 	ar4 = 0x04
                           000003   780 	ar3 = 0x03
                           000002   781 	ar2 = 0x02
                           000001   782 	ar1 = 0x01
                           000000   783 	ar0 = 0x00
      0021A7 C0 10            [24]  784 	push	_bp
      0021A9 85 81 10         [24]  785 	mov	_bp,sp
      0021AC C0 82            [24]  786 	push	dpl
      0021AE C0 83            [24]  787 	push	dph
      0021B0 C0 F0            [24]  788 	push	b
      0021B2 E5 81            [12]  789 	mov	a,sp
      0021B4 24 05            [12]  790 	add	a,#0x05
      0021B6 F5 81            [12]  791 	mov	sp,a
                                    792 ;	disp.c:229: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0021B8 E5 10            [12]  793 	mov	a,_bp
      0021BA 24 06            [12]  794 	add	a,#0x06
      0021BC F8               [12]  795 	mov	r0,a
      0021BD 76 00            [12]  796 	mov	@r0,#0x00
      0021BF E5 10            [12]  797 	mov	a,_bp
      0021C1 24 07            [12]  798 	add	a,#0x07
      0021C3 F8               [12]  799 	mov	r0,a
      0021C4 E4               [12]  800 	clr	a
      0021C5 F6               [12]  801 	mov	@r0,a
      0021C6 08               [12]  802 	inc	r0
      0021C7 F6               [12]  803 	mov	@r0,a
      0021C8                        804 00142$:
                                    805 ;	disp.c:230: if (!bit) {
      0021C8 E5 10            [12]  806 	mov	a,_bp
      0021CA 24 06            [12]  807 	add	a,#0x06
      0021CC F8               [12]  808 	mov	r0,a
      0021CD E6               [12]  809 	mov	a,@r0
      0021CE 70 5F            [24]  810 	jnz	00105$
                                    811 ;	disp.c:231: symbol = msg[i];
      0021D0 A8 10            [24]  812 	mov	r0,_bp
      0021D2 08               [12]  813 	inc	r0
      0021D3 E5 10            [12]  814 	mov	a,_bp
      0021D5 24 07            [12]  815 	add	a,#0x07
      0021D7 F9               [12]  816 	mov	r1,a
      0021D8 E7               [12]  817 	mov	a,@r1
      0021D9 26               [12]  818 	add	a,@r0
      0021DA FA               [12]  819 	mov	r2,a
      0021DB 09               [12]  820 	inc	r1
      0021DC E7               [12]  821 	mov	a,@r1
      0021DD 08               [12]  822 	inc	r0
      0021DE 36               [12]  823 	addc	a,@r0
      0021DF FB               [12]  824 	mov	r3,a
      0021E0 08               [12]  825 	inc	r0
      0021E1 86 04            [24]  826 	mov	ar4,@r0
      0021E3 8A 82            [24]  827 	mov	dpl,r2
      0021E5 8B 83            [24]  828 	mov	dph,r3
      0021E7 8C F0            [24]  829 	mov	b,r4
      0021E9 12 26 B4         [24]  830 	lcall	__gptrget
      0021EC FA               [12]  831 	mov	r2,a
      0021ED E5 10            [12]  832 	mov	a,_bp
      0021EF 24 04            [12]  833 	add	a,#0x04
      0021F1 F8               [12]  834 	mov	r0,a
      0021F2 A6 02            [24]  835 	mov	@r0,ar2
                                    836 ;	disp.c:232: if (!symbol) {
      0021F4 EA               [12]  837 	mov	a,r2
      0021F5 70 25            [24]  838 	jnz	00102$
                                    839 ;	disp.c:233: i = 0u;
      0021F7 E5 10            [12]  840 	mov	a,_bp
      0021F9 24 07            [12]  841 	add	a,#0x07
      0021FB F8               [12]  842 	mov	r0,a
      0021FC E4               [12]  843 	clr	a
      0021FD F6               [12]  844 	mov	@r0,a
      0021FE 08               [12]  845 	inc	r0
      0021FF F6               [12]  846 	mov	@r0,a
                                    847 ;	disp.c:234: symbol = msg[i];
      002200 A8 10            [24]  848 	mov	r0,_bp
      002202 08               [12]  849 	inc	r0
      002203 86 82            [24]  850 	mov	dpl,@r0
      002205 08               [12]  851 	inc	r0
      002206 86 83            [24]  852 	mov	dph,@r0
      002208 08               [12]  853 	inc	r0
      002209 86 F0            [24]  854 	mov	b,@r0
      00220B E5 10            [12]  855 	mov	a,_bp
      00220D 24 04            [12]  856 	add	a,#0x04
      00220F F9               [12]  857 	mov	r1,a
      002210 12 26 B4         [24]  858 	lcall	__gptrget
      002213 F7               [12]  859 	mov	@r1,a
                                    860 ;	disp.c:235: OE |= 0x80u;
      002214 78 3A            [12]  861 	mov	r0,#_OE
      002216 E6               [12]  862 	mov	a,@r0
      002217 44 80            [12]  863 	orl	a,#0x80
      002219 F6               [12]  864 	mov	@r0,a
      00221A 80 06            [24]  865 	sjmp	00103$
      00221C                        866 00102$:
                                    867 ;	disp.c:236: } else OE |= 0x40u;
      00221C 78 3A            [12]  868 	mov	r0,#_OE
      00221E E6               [12]  869 	mov	a,@r0
      00221F 44 40            [12]  870 	orl	a,#0x40
      002221 F6               [12]  871 	mov	@r0,a
      002222                        872 00103$:
                                    873 ;	disp.c:237: i++;
      002222 E5 10            [12]  874 	mov	a,_bp
      002224 24 07            [12]  875 	add	a,#0x07
      002226 F8               [12]  876 	mov	r0,a
      002227 06               [12]  877 	inc	@r0
      002228 B6 00 02         [24]  878 	cjne	@r0,#0x00,00230$
      00222B 08               [12]  879 	inc	r0
      00222C 06               [12]  880 	inc	@r0
      00222D                        881 00230$:
      00222D 80 06            [24]  882 	sjmp	00107$
      00222F                        883 00105$:
                                    884 ;	disp.c:238: } else OE &= ~(0x80u | 0x40u);
      00222F 78 3A            [12]  885 	mov	r0,#_OE
      002231 E6               [12]  886 	mov	a,@r0
      002232 54 3F            [12]  887 	anl	a,#0x3f
      002234 F6               [12]  888 	mov	@r0,a
                                    889 ;	disp.c:239: GPO_SETOE(OE);
      002235                        890 00107$:
      002235 78 06            [12]  891 	mov	r0,#(_gpo + 0x0006)
      002237 79 3A            [12]  892 	mov	r1,#_OE
      002239 E7               [12]  893 	mov	a,@r1
      00223A F2               [24]  894 	movx	@r0,a
                                    895 ;	disp.c:241: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      00223B E5 10            [12]  896 	mov	a,_bp
      00223D 24 06            [12]  897 	add	a,#0x06
      00223F F8               [12]  898 	mov	r0,a
      002240 E6               [12]  899 	mov	a,@r0
      002241 24 29            [12]  900 	add	a,#_sddcol
      002243 F9               [12]  901 	mov	r1,a
      002244 E7               [12]  902 	mov	a,@r1
      002245 FB               [12]  903 	mov	r3,a
      002246 54 C0            [12]  904 	anl	a,#0xc0
      002248 60 02            [24]  905 	jz	00232$
      00224A 80 74            [24]  906 	sjmp	00113$
      00224C                        907 00232$:
                                    908 ;	disp.c:199: TR1 = 0;
                                    909 ;	assignBit
      00224C C2 8E            [12]  910 	clr	_TR1
                                    911 ;	disp.c:200: TH1 = TR1_COUNT_0 >> 8;
      00224E 75 8D 00         [24]  912 	mov	_TH1,#0x00
                                    913 ;	disp.c:201: TL1 = TR1_COUNT_0 & 0xffu;	
      002251 75 8B 00         [24]  914 	mov	_TL1,#0x00
                                    915 ;	disp.c:202: TF1 = 0;
                                    916 ;	assignBit
      002254 C2 8F            [12]  917 	clr	_TF1
                                    918 ;	disp.c:203: TR1 = 1;
                                    919 ;	assignBit
      002256 D2 8E            [12]  920 	setb	_TR1
                                    921 ;	disp.c:204: while (!TF1);
      002258                        922 00128$:
                                    923 ;	disp.c:205: TF1 = 0;
                                    924 ;	assignBit
      002258 10 8F 02         [24]  925 	jbc	_TF1,00233$
      00225B 80 FB            [24]  926 	sjmp	00128$
      00225D                        927 00233$:
                                    928 ;	disp.c:207: TR1 = 0;
                                    929 ;	assignBit
      00225D C2 8E            [12]  930 	clr	_TR1
                                    931 ;	disp.c:208: TH1 = TR1_COUNT_1 >> 8;
      00225F 75 8D C0         [24]  932 	mov	_TH1,#0xc0
                                    933 ;	disp.c:209: TL1 = TR1_COUNT_1 & 0xffu;	
      002262 75 8B 00         [24]  934 	mov	_TL1,#0x00
                                    935 ;	disp.c:210: TF1 = 0;
                                    936 ;	assignBit
      002265 C2 8F            [12]  937 	clr	_TF1
                                    938 ;	disp.c:211: TR1 = 1;
                                    939 ;	assignBit
      002267 D2 8E            [12]  940 	setb	_TR1
                                    941 ;	disp.c:212: while (!TF1);
      002269                        942 00131$:
                                    943 ;	disp.c:213: TF1 = 0;
                                    944 ;	assignBit
      002269 10 8F 02         [24]  945 	jbc	_TF1,00234$
      00226C 80 FB            [24]  946 	sjmp	00131$
      00226E                        947 00234$:
                                    948 ;	disp.c:215: TR1 = 0;
                                    949 ;	assignBit
      00226E C2 8E            [12]  950 	clr	_TR1
                                    951 ;	disp.c:244: for (j = 0u; j < 8u; j++)
      002270 E5 10            [12]  952 	mov	a,_bp
      002272 24 04            [12]  953 	add	a,#0x04
      002274 F8               [12]  954 	mov	r0,a
      002275 E6               [12]  955 	mov	a,@r0
      002276 75 F0 08         [24]  956 	mov	b,#0x08
      002279 A4               [48]  957 	mul	ab
      00227A 24 01            [12]  958 	add	a,#__ft_font6x8
      00227C FA               [12]  959 	mov	r2,a
      00227D 74 81            [12]  960 	mov	a,#(__ft_font6x8 >> 8)
      00227F 35 F0            [12]  961 	addc	a,b
      002281 FB               [12]  962 	mov	r3,a
      002282 E5 10            [12]  963 	mov	a,_bp
      002284 24 06            [12]  964 	add	a,#0x06
      002286 F8               [12]  965 	mov	r0,a
      002287 74 07            [12]  966 	mov	a,#0x07
      002289 C3               [12]  967 	clr	c
      00228A 96               [12]  968 	subb	a,@r0
      00228B FD               [12]  969 	mov	r5,a
      00228C 7C 00            [12]  970 	mov	r4,#0x00
      00228E                        971 00137$:
                                    972 ;	disp.c:245: ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00228E EC               [12]  973 	mov	a,r4
      00228F 24 31            [12]  974 	add	a,#_ddata
      002291 F9               [12]  975 	mov	r1,a
      002292 EC               [12]  976 	mov	a,r4
      002293 2A               [12]  977 	add	a,r2
      002294 F5 82            [12]  978 	mov	dpl,a
      002296 E4               [12]  979 	clr	a
      002297 3B               [12]  980 	addc	a,r3
      002298 F5 83            [12]  981 	mov	dph,a
      00229A E0               [24]  982 	movx	a,@dptr
      00229B FF               [12]  983 	mov	r7,a
      00229C 78 3B            [12]  984 	mov	r0,#_inv
      00229E E6               [12]  985 	mov	a,@r0
      00229F 62 07            [12]  986 	xrl	ar7,a
      0022A1 8D F0            [24]  987 	mov	b,r5
      0022A3 05 F0            [12]  988 	inc	b
      0022A5 EF               [12]  989 	mov	a,r7
      0022A6 80 02            [24]  990 	sjmp	00237$
      0022A8                        991 00235$:
      0022A8 25 E0            [12]  992 	add	a,acc
      0022AA                        993 00237$:
      0022AA D5 F0 FB         [24]  994 	djnz	b,00235$
      0022AD 54 80            [12]  995 	anl	a,#0x80
      0022AF FF               [12]  996 	mov	r7,a
      0022B0 EC               [12]  997 	mov	a,r4
      0022B1 24 31            [12]  998 	add	a,#_ddata
      0022B3 F8               [12]  999 	mov	r0,a
      0022B4 E6               [12] 1000 	mov	a,@r0
      0022B5 C3               [12] 1001 	clr	c
      0022B6 13               [12] 1002 	rrc	a
      0022B7 FE               [12] 1003 	mov	r6,a
      0022B8 4F               [12] 1004 	orl	a,r7
      0022B9 F7               [12] 1005 	mov	@r1,a
                                   1006 ;	disp.c:244: for (j = 0u; j < 8u; j++)
      0022BA 0C               [12] 1007 	inc	r4
      0022BB BC 08 00         [24] 1008 	cjne	r4,#0x08,00238$
      0022BE                       1009 00238$:
      0022BE 40 CE            [24] 1010 	jc	00137$
                                   1011 ;	disp.c:247: skip_shift:
      0022C0                       1012 00113$:
                                   1013 ;	disp.c:248: if ((r = getchar_poll()) >= 0) {
      0022C0 12 20 C3         [24] 1014 	lcall	_getchar_poll
      0022C3 AB 82            [24] 1015 	mov	r3,dpl
      0022C5 AC 83            [24] 1016 	mov	r4,dph
      0022C7 8B 07            [24] 1017 	mov	ar7,r3
      0022C9 EC               [12] 1018 	mov	a,r4
      0022CA FE               [12] 1019 	mov	r6,a
      0022CB 20 E7 65         [24] 1020 	jb	acc.7,00143$
                                   1021 ;	disp.c:249: r = toupper(r);
      0022CE 8F 82            [24] 1022 	mov	dpl,r7
      0022D0 8E 83            [24] 1023 	mov	dph,r6
      0022D2 12 25 D6         [24] 1024 	lcall	_toupper
      0022D5 AB 82            [24] 1025 	mov	r3,dpl
      0022D7 AC 83            [24] 1026 	mov	r4,dph
                                   1027 ;	disp.c:250: if ((r == (int)'P') || (r == (int)' ')) {
      0022D9 BB 50 05         [24] 1028 	cjne	r3,#0x50,00241$
      0022DC BC 00 02         [24] 1029 	cjne	r4,#0x00,00241$
      0022DF 80 06            [24] 1030 	sjmp	00121$
      0022E1                       1031 00241$:
      0022E1 BB 20 2A         [24] 1032 	cjne	r3,#0x20,00122$
      0022E4 BC 00 27         [24] 1033 	cjne	r4,#0x00,00122$
      0022E7                       1034 00121$:
                                   1035 ;	disp.c:251: printstr("PAUSE\r\n");
      0022E7 7E EF            [12] 1036 	mov	r6,#___str_0
      0022E9 7C 26            [12] 1037 	mov	r4,#(___str_0 >> 8)
      0022EB 7B 80            [12] 1038 	mov	r3,#0x80
                                   1039 ;	disp.c:53: return;
      0022ED                       1040 00140$:
                                   1041 ;	disp.c:51: for (; *s; s++) putchar(*s);
      0022ED 8E 82            [24] 1042 	mov	dpl,r6
      0022EF 8C 83            [24] 1043 	mov	dph,r4
      0022F1 8B F0            [24] 1044 	mov	b,r3
      0022F3 12 26 B4         [24] 1045 	lcall	__gptrget
      0022F6 FD               [12] 1046 	mov	r5,a
      0022F7 60 10            [24] 1047 	jz	00136$
      0022F9 7F 00            [12] 1048 	mov	r7,#0x00
      0022FB 8D 82            [24] 1049 	mov	dpl,r5
      0022FD 8F 83            [24] 1050 	mov	dph,r7
      0022FF 12 20 AD         [24] 1051 	lcall	_putchar
      002302 0E               [12] 1052 	inc	r6
                                   1053 ;	disp.c:251: printstr("PAUSE\r\n");
      002303 BE 00 E7         [24] 1054 	cjne	r6,#0x00,00140$
      002306 0C               [12] 1055 	inc	r4
      002307 80 E4            [24] 1056 	sjmp	00140$
      002309                       1057 00136$:
                                   1058 ;	disp.c:252: (void)getchar();
      002309 12 20 B6         [24] 1059 	lcall	_getchar
      00230C 80 25            [24] 1060 	sjmp	00143$
      00230E                       1061 00122$:
                                   1062 ;	disp.c:253: } else if (r == (int)'I') inv = ~inv;
      00230E BB 49 0A         [24] 1063 	cjne	r3,#0x49,00119$
      002311 BC 00 07         [24] 1064 	cjne	r4,#0x00,00119$
      002314 78 3B            [12] 1065 	mov	r0,#_inv
      002316 E6               [12] 1066 	mov	a,@r0
      002317 F4               [12] 1067 	cpl	a
      002318 F6               [12] 1068 	mov	@r0,a
      002319 80 18            [24] 1069 	sjmp	00143$
      00231B                       1070 00119$:
                                   1071 ;	disp.c:254: else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      00231B BB 54 05         [24] 1072 	cjne	r3,#0x54,00248$
      00231E BC 00 02         [24] 1073 	cjne	r4,#0x00,00248$
      002321 80 24            [24] 1074 	sjmp	00127$
      002323                       1075 00248$:
      002323 BB 52 05         [24] 1076 	cjne	r3,#0x52,00249$
      002326 BC 00 02         [24] 1077 	cjne	r4,#0x00,00249$
      002329 80 1C            [24] 1078 	sjmp	00127$
      00232B                       1079 00249$:
      00232B BB 4C 05         [24] 1080 	cjne	r3,#0x4c,00250$
      00232E BC 00 02         [24] 1081 	cjne	r4,#0x00,00250$
      002331 80 14            [24] 1082 	sjmp	00127$
      002333                       1083 00250$:
      002333                       1084 00143$:
                                   1085 ;	disp.c:229: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002333 E5 10            [12] 1086 	mov	a,_bp
      002335 24 06            [12] 1087 	add	a,#0x06
      002337 F8               [12] 1088 	mov	r0,a
      002338 E6               [12] 1089 	mov	a,@r0
      002339 04               [12] 1090 	inc	a
      00233A FF               [12] 1091 	mov	r7,a
      00233B E5 10            [12] 1092 	mov	a,_bp
      00233D 24 06            [12] 1093 	add	a,#0x06
      00233F F8               [12] 1094 	mov	r0,a
      002340 74 07            [12] 1095 	mov	a,#0x07
      002342 5F               [12] 1096 	anl	a,r7
      002343 F6               [12] 1097 	mov	@r0,a
      002344 02 21 C8         [24] 1098 	ljmp	00142$
      002347                       1099 00127$:
                                   1100 ;	disp.c:258: return r;
      002347 8B 82            [24] 1101 	mov	dpl,r3
      002349 8C 83            [24] 1102 	mov	dph,r4
                                   1103 ;	disp.c:259: }
      00234B 85 10 81         [24] 1104 	mov	sp,_bp
      00234E D0 10            [24] 1105 	pop	_bp
      002350 22               [24] 1106 	ret
                                   1107 ;------------------------------------------------------------
                                   1108 ;Allocation info for local variables in function 'main'
                                   1109 ;------------------------------------------------------------
                                   1110 ;j                         Allocated to stack - _bp +1
                                   1111 ;c                         Allocated to registers r7 r6 
                                   1112 ;__1310720004              Allocated to registers 
                                   1113 ;s                         Allocated to registers r5 r6 r7 
                                   1114 ;__1966080006              Allocated to registers 
                                   1115 ;s                         Allocated to registers r5 r6 r7 
                                   1116 ;__1966080008              Allocated to registers 
                                   1117 ;s                         Allocated to registers r5 r6 r7 
                                   1118 ;__1966080010              Allocated to registers 
                                   1119 ;s                         Allocated to registers r5 r6 r7 
                                   1120 ;__3276800012              Allocated to registers 
                                   1121 ;s                         Allocated to registers r7 r6 r4 
                                   1122 ;__3276800014              Allocated to registers 
                                   1123 ;s                         Allocated to registers r7 r6 r4 
                                   1124 ;__3276800016              Allocated to registers 
                                   1125 ;s                         Allocated to registers r7 r6 r4 
                                   1126 ;__3276800018              Allocated to registers 
                                   1127 ;s                         Allocated to registers r7 r6 r4 
                                   1128 ;__3276800020              Allocated to registers 
                                   1129 ;s                         Allocated to registers r7 r6 r4 
                                   1130 ;__1310720022              Allocated to registers 
                                   1131 ;s                         Allocated to registers r5 r6 r7 
                                   1132 ;sloc0                     Allocated to stack - _bp +65
                                   1133 ;------------------------------------------------------------
                                   1134 ;	disp.c:261: void main(void) {
                                   1135 ;	-----------------------------------------
                                   1136 ;	 function main
                                   1137 ;	-----------------------------------------
      002351                       1138 _main:
      002351 C0 10            [24] 1139 	push	_bp
      002353 85 81 10         [24] 1140 	mov	_bp,sp
      002356 05 81            [12] 1141 	inc	sp
      002358 05 81            [12] 1142 	inc	sp
                                   1143 ;	disp.c:265: gpo_init();
      00235A 12 20 DD         [24] 1144 	lcall	_gpo_init
                                   1145 ;	disp.c:266: gpo_clear();
      00235D 12 20 FE         [24] 1146 	lcall	_gpo_clear
                                   1147 ;	disp.c:267: init_disp();
      002360 12 21 3A         [24] 1148 	lcall	_init_disp
                                   1149 ;	disp.c:268: init_timer0();
      002363 12 21 22         [24] 1150 	lcall	_init_timer0
                                   1151 ;	disp.c:269: init_timer1();
      002366 12 21 2E         [24] 1152 	lcall	_init_timer1
                                   1153 ;	disp.c:270: init_intr();
      002369 12 21 17         [24] 1154 	lcall	_init_intr
                                   1155 ;	disp.c:271: TR0 = 1;
                                   1156 ;	assignBit
      00236C D2 8C            [12] 1157 	setb	_TR0
                                   1158 ;	disp.c:273: reset:
      00236E                       1159 00101$:
                                   1160 ;	disp.c:274: init_disp();
      00236E 12 21 3A         [24] 1161 	lcall	_init_disp
                                   1162 ;	disp.c:275: printstr("RESET\r\n");
      002371 7D F7            [12] 1163 	mov	r5,#___str_1
      002373 7E 26            [12] 1164 	mov	r6,#(___str_1 >> 8)
      002375 7F 80            [12] 1165 	mov	r7,#0x80
                                   1166 ;	disp.c:53: return;
      002377                       1167 00149$:
                                   1168 ;	disp.c:51: for (; *s; s++) putchar(*s);
      002377 8D 82            [24] 1169 	mov	dpl,r5
      002379 8E 83            [24] 1170 	mov	dph,r6
      00237B 8F F0            [24] 1171 	mov	b,r7
      00237D 12 26 B4         [24] 1172 	lcall	__gptrget
      002380 FC               [12] 1173 	mov	r4,a
      002381 60 10            [24] 1174 	jz	00129$
      002383 7B 00            [12] 1175 	mov	r3,#0x00
      002385 8C 82            [24] 1176 	mov	dpl,r4
      002387 8B 83            [24] 1177 	mov	dph,r3
      002389 12 20 AD         [24] 1178 	lcall	_putchar
      00238C 0D               [12] 1179 	inc	r5
                                   1180 ;	disp.c:275: printstr("RESET\r\n");
      00238D BD 00 E7         [24] 1181 	cjne	r5,#0x00,00149$
      002390 0E               [12] 1182 	inc	r6
      002391 80 E4            [24] 1183 	sjmp	00149$
      002393                       1184 00129$:
                                   1185 ;	disp.c:276: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      002393 E4               [12] 1186 	clr	a
      002394 C0 E0            [24] 1187 	push	acc
      002396 04               [12] 1188 	inc	a
      002397 C0 E0            [24] 1189 	push	acc
      002399 90 89 01         [24] 1190 	mov	dptr,#_initial
      00239C E0               [24] 1191 	movx	a,@dptr
      00239D C0 E0            [24] 1192 	push	acc
      00239F A3               [24] 1193 	inc	dptr
      0023A0 E0               [24] 1194 	movx	a,@dptr
      0023A1 C0 E0            [24] 1195 	push	acc
      0023A3 A3               [24] 1196 	inc	dptr
      0023A4 E0               [24] 1197 	movx	a,@dptr
      0023A5 C0 E0            [24] 1198 	push	acc
      0023A7 90 80 00         [24] 1199 	mov	dptr,#_buf
      0023AA 75 F0 00         [24] 1200 	mov	b,#0x00
      0023AD 12 25 FD         [24] 1201 	lcall	_strncpy
      0023B0 E5 81            [12] 1202 	mov	a,sp
      0023B2 24 FB            [12] 1203 	add	a,#0xfb
      0023B4 F5 81            [12] 1204 	mov	sp,a
                                   1205 ;	disp.c:277: buf[sizeof (buf) - 1u] = 0u;
      0023B6 90 81 00         [24] 1206 	mov	dptr,#(_buf + 0x0100)
      0023B9 E4               [12] 1207 	clr	a
      0023BA F0               [24] 1208 	movx	@dptr,a
                                   1209 ;	disp.c:278: inv = 0u;
      0023BB 78 3B            [12] 1210 	mov	r0,#_inv
      0023BD 76 00            [12] 1211 	mov	@r0,#0x00
                                   1212 ;	disp.c:280: while (1) {
      0023BF                       1213 00125$:
                                   1214 ;	disp.c:281: printstr("P SP I L ENT S R T START MSG \"");
      0023BF 7D FF            [12] 1215 	mov	r5,#___str_2
      0023C1 7E 26            [12] 1216 	mov	r6,#(___str_2 >> 8)
      0023C3 7F 80            [12] 1217 	mov	r7,#0x80
                                   1218 ;	disp.c:53: return;
      0023C5                       1219 00152$:
                                   1220 ;	disp.c:51: for (; *s; s++) putchar(*s);
      0023C5 8D 82            [24] 1221 	mov	dpl,r5
      0023C7 8E 83            [24] 1222 	mov	dph,r6
      0023C9 8F F0            [24] 1223 	mov	b,r7
      0023CB 12 26 B4         [24] 1224 	lcall	__gptrget
      0023CE FC               [12] 1225 	mov	r4,a
      0023CF 60 10            [24] 1226 	jz	00131$
      0023D1 7B 00            [12] 1227 	mov	r3,#0x00
      0023D3 8C 82            [24] 1228 	mov	dpl,r4
      0023D5 8B 83            [24] 1229 	mov	dph,r3
      0023D7 12 20 AD         [24] 1230 	lcall	_putchar
      0023DA 0D               [12] 1231 	inc	r5
                                   1232 ;	disp.c:281: printstr("P SP I L ENT S R T START MSG \"");
      0023DB BD 00 E7         [24] 1233 	cjne	r5,#0x00,00152$
      0023DE 0E               [12] 1234 	inc	r6
      0023DF 80 E4            [24] 1235 	sjmp	00152$
      0023E1                       1236 00131$:
                                   1237 ;	disp.c:282: printstr((char *)buf);
      0023E1 7D 00            [12] 1238 	mov	r5,#_buf
      0023E3 7E 80            [12] 1239 	mov	r6,#(_buf >> 8)
      0023E5 7F 00            [12] 1240 	mov	r7,#0x00
                                   1241 ;	disp.c:53: return;
      0023E7                       1242 00155$:
                                   1243 ;	disp.c:51: for (; *s; s++) putchar(*s);
      0023E7 8D 82            [24] 1244 	mov	dpl,r5
      0023E9 8E 83            [24] 1245 	mov	dph,r6
      0023EB 8F F0            [24] 1246 	mov	b,r7
      0023ED 12 26 B4         [24] 1247 	lcall	__gptrget
      0023F0 FC               [12] 1248 	mov	r4,a
      0023F1 60 10            [24] 1249 	jz	00133$
      0023F3 7B 00            [12] 1250 	mov	r3,#0x00
      0023F5 8C 82            [24] 1251 	mov	dpl,r4
      0023F7 8B 83            [24] 1252 	mov	dph,r3
      0023F9 12 20 AD         [24] 1253 	lcall	_putchar
      0023FC 0D               [12] 1254 	inc	r5
                                   1255 ;	disp.c:282: printstr((char *)buf);
      0023FD BD 00 E7         [24] 1256 	cjne	r5,#0x00,00155$
      002400 0E               [12] 1257 	inc	r6
      002401 80 E4            [24] 1258 	sjmp	00155$
      002403                       1259 00133$:
                                   1260 ;	disp.c:283: printstr("\"\r\n");
      002403 7D 1E            [12] 1261 	mov	r5,#___str_3
      002405 7E 27            [12] 1262 	mov	r6,#(___str_3 >> 8)
      002407 7F 80            [12] 1263 	mov	r7,#0x80
                                   1264 ;	disp.c:53: return;
      002409                       1265 00158$:
                                   1266 ;	disp.c:51: for (; *s; s++) putchar(*s);
      002409 8D 82            [24] 1267 	mov	dpl,r5
      00240B 8E 83            [24] 1268 	mov	dph,r6
      00240D 8F F0            [24] 1269 	mov	b,r7
      00240F 12 26 B4         [24] 1270 	lcall	__gptrget
      002412 FC               [12] 1271 	mov	r4,a
      002413 60 10            [24] 1272 	jz	00135$
      002415 7B 00            [12] 1273 	mov	r3,#0x00
      002417 8C 82            [24] 1274 	mov	dpl,r4
      002419 8B 83            [24] 1275 	mov	dph,r3
      00241B 12 20 AD         [24] 1276 	lcall	_putchar
      00241E 0D               [12] 1277 	inc	r5
                                   1278 ;	disp.c:283: printstr("\"\r\n");
      00241F BD 00 E7         [24] 1279 	cjne	r5,#0x00,00158$
      002422 0E               [12] 1280 	inc	r6
      002423 80 E4            [24] 1281 	sjmp	00158$
      002425                       1282 00135$:
                                   1283 ;	disp.c:285: c = scroll(buf);
      002425 90 80 00         [24] 1284 	mov	dptr,#_buf
      002428 75 F0 00         [24] 1285 	mov	b,#0x00
      00242B 12 21 A7         [24] 1286 	lcall	_scroll
      00242E AE 82            [24] 1287 	mov	r6,dpl
      002430 AF 83            [24] 1288 	mov	r7,dph
                                   1289 ;	disp.c:287: while (1) {
      002432                       1290 00122$:
                                   1291 ;	disp.c:288: if (c == (int)'T') goto term;
      002432 BE 54 06         [24] 1292 	cjne	r6,#0x54,00345$
      002435 BF 00 03         [24] 1293 	cjne	r7,#0x00,00345$
      002438 02 25 A3         [24] 1294 	ljmp	00127$
      00243B                       1295 00345$:
                                   1296 ;	disp.c:289: else if (c == (int)'R') goto reset;
      00243B BE 52 06         [24] 1297 	cjne	r6,#0x52,00346$
      00243E BF 00 03         [24] 1298 	cjne	r7,#0x00,00346$
      002441 02 23 6E         [24] 1299 	ljmp	00101$
      002444                       1300 00346$:
                                   1301 ;	disp.c:290: else if (c == (int)'I') inv = ~inv;
      002444 BE 49 0B         [24] 1302 	cjne	r6,#0x49,00113$
      002447 BF 00 08         [24] 1303 	cjne	r7,#0x00,00113$
      00244A 78 3B            [12] 1304 	mov	r0,#_inv
      00244C E6               [12] 1305 	mov	a,@r0
      00244D F4               [12] 1306 	cpl	a
      00244E F6               [12] 1307 	mov	@r0,a
      00244F 02 25 96         [24] 1308 	ljmp	00120$
      002452                       1309 00113$:
                                   1310 ;	disp.c:291: else if (c == (int)'L') {
      002452 BE 4C 05         [24] 1311 	cjne	r6,#0x4c,00349$
      002455 BF 00 02         [24] 1312 	cjne	r7,#0x00,00349$
      002458 80 03            [24] 1313 	sjmp	00350$
      00245A                       1314 00349$:
      00245A 02 25 8D         [24] 1315 	ljmp	00110$
      00245D                       1316 00350$:
                                   1317 ;	disp.c:292: init_disp();
      00245D 12 21 3A         [24] 1318 	lcall	_init_disp
                                   1319 ;	disp.c:293: printstr("LOAD ");
      002460 7F 22            [12] 1320 	mov	r7,#___str_4
      002462 7E 27            [12] 1321 	mov	r6,#(___str_4 >> 8)
      002464 7C 80            [12] 1322 	mov	r4,#0x80
                                   1323 ;	disp.c:53: return;
      002466                       1324 00161$:
                                   1325 ;	disp.c:51: for (; *s; s++) putchar(*s);
      002466 8F 82            [24] 1326 	mov	dpl,r7
      002468 8E 83            [24] 1327 	mov	dph,r6
      00246A 8C F0            [24] 1328 	mov	b,r4
      00246C 12 26 B4         [24] 1329 	lcall	__gptrget
      00246F FA               [12] 1330 	mov	r2,a
      002470 60 10            [24] 1331 	jz	00137$
      002472 7D 00            [12] 1332 	mov	r5,#0x00
      002474 8A 82            [24] 1333 	mov	dpl,r2
      002476 8D 83            [24] 1334 	mov	dph,r5
      002478 12 20 AD         [24] 1335 	lcall	_putchar
      00247B 0F               [12] 1336 	inc	r7
                                   1337 ;	disp.c:293: printstr("LOAD ");
      00247C BF 00 E7         [24] 1338 	cjne	r7,#0x00,00161$
      00247F 0E               [12] 1339 	inc	r6
      002480 80 E4            [24] 1340 	sjmp	00161$
      002482                       1341 00137$:
                                   1342 ;	disp.c:294: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002482 7C 00            [12] 1343 	mov	r4,#0x00
      002484 7D 00            [12] 1344 	mov	r5,#0x00
      002486 A8 10            [24] 1345 	mov	r0,_bp
      002488 08               [12] 1346 	inc	r0
      002489 E4               [12] 1347 	clr	a
      00248A F6               [12] 1348 	mov	@r0,a
      00248B 08               [12] 1349 	inc	r0
      00248C F6               [12] 1350 	mov	@r0,a
      00248D                       1351 00163$:
                                   1352 ;	disp.c:295: c = getchar();
      00248D C0 04            [24] 1353 	push	ar4
      00248F C0 05            [24] 1354 	push	ar5
      002491 12 20 B6         [24] 1355 	lcall	_getchar
      002494 AC 82            [24] 1356 	mov	r4,dpl
      002496 AD 83            [24] 1357 	mov	r5,dph
      002498 8C 07            [24] 1358 	mov	ar7,r4
      00249A 8D 06            [24] 1359 	mov	ar6,r5
                                   1360 ;	disp.c:296: (void)putchar(c);
      00249C 8F 82            [24] 1361 	mov	dpl,r7
      00249E 8E 83            [24] 1362 	mov	dph,r6
      0024A0 12 20 AD         [24] 1363 	lcall	_putchar
                                   1364 ;	disp.c:297: if ((c == (int)'\r') || (c == (int)'\n')) {
      0024A3 BF 0D 09         [24] 1365 	cjne	r7,#0x0d,00353$
      0024A6 BE 00 06         [24] 1366 	cjne	r6,#0x00,00353$
      0024A9 D0 05            [24] 1367 	pop	ar5
      0024AB D0 04            [24] 1368 	pop	ar4
      0024AD 80 0A            [24] 1369 	sjmp	00102$
      0024AF                       1370 00353$:
      0024AF D0 05            [24] 1371 	pop	ar5
      0024B1 D0 04            [24] 1372 	pop	ar4
      0024B3 BF 0A 11         [24] 1373 	cjne	r7,#0x0a,00103$
      0024B6 BE 00 0E         [24] 1374 	cjne	r6,#0x00,00103$
      0024B9                       1375 00102$:
                                   1376 ;	disp.c:298: buf[j] = 0u;
      0024B9 EC               [12] 1377 	mov	a,r4
      0024BA 24 00            [12] 1378 	add	a,#_buf
      0024BC F5 82            [12] 1379 	mov	dpl,a
      0024BE ED               [12] 1380 	mov	a,r5
      0024BF 34 80            [12] 1381 	addc	a,#(_buf >> 8)
      0024C1 F5 83            [12] 1382 	mov	dph,a
      0024C3 E4               [12] 1383 	clr	a
      0024C4 F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	disp.c:299: break;
      0024C5 80 32            [24] 1386 	sjmp	00106$
      0024C7                       1387 00103$:
                                   1388 ;	disp.c:300: } else buf[j] = c & 0xffu;
      0024C7 A8 10            [24] 1389 	mov	r0,_bp
      0024C9 08               [12] 1390 	inc	r0
      0024CA E6               [12] 1391 	mov	a,@r0
      0024CB 24 00            [12] 1392 	add	a,#_buf
      0024CD FD               [12] 1393 	mov	r5,a
      0024CE 08               [12] 1394 	inc	r0
      0024CF E6               [12] 1395 	mov	a,@r0
      0024D0 34 80            [12] 1396 	addc	a,#(_buf >> 8)
      0024D2 FC               [12] 1397 	mov	r4,a
      0024D3 8F 03            [24] 1398 	mov	ar3,r7
      0024D5 8D 82            [24] 1399 	mov	dpl,r5
      0024D7 8C 83            [24] 1400 	mov	dph,r4
      0024D9 EB               [12] 1401 	mov	a,r3
      0024DA F0               [24] 1402 	movx	@dptr,a
                                   1403 ;	disp.c:294: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      0024DB A8 10            [24] 1404 	mov	r0,_bp
      0024DD 08               [12] 1405 	inc	r0
      0024DE 06               [12] 1406 	inc	@r0
      0024DF B6 00 02         [24] 1407 	cjne	@r0,#0x00,00356$
      0024E2 08               [12] 1408 	inc	r0
      0024E3 06               [12] 1409 	inc	@r0
      0024E4                       1410 00356$:
      0024E4 A8 10            [24] 1411 	mov	r0,_bp
      0024E6 08               [12] 1412 	inc	r0
      0024E7 86 04            [24] 1413 	mov	ar4,@r0
      0024E9 08               [12] 1414 	inc	r0
      0024EA 86 05            [24] 1415 	mov	ar5,@r0
      0024EC A8 10            [24] 1416 	mov	r0,_bp
      0024EE 08               [12] 1417 	inc	r0
      0024EF 86 02            [24] 1418 	mov	ar2,@r0
      0024F1 08               [12] 1419 	inc	r0
      0024F2 86 03            [24] 1420 	mov	ar3,@r0
      0024F4 74 FF            [12] 1421 	mov	a,#0x100 - 0x01
      0024F6 2B               [12] 1422 	add	a,r3
      0024F7 50 94            [24] 1423 	jnc	00163$
      0024F9                       1424 00106$:
                                   1425 ;	disp.c:302: buf[j] = 0u;
      0024F9 EC               [12] 1426 	mov	a,r4
      0024FA 24 00            [12] 1427 	add	a,#_buf
      0024FC F5 82            [12] 1428 	mov	dpl,a
      0024FE ED               [12] 1429 	mov	a,r5
      0024FF 34 80            [12] 1430 	addc	a,#(_buf >> 8)
      002501 F5 83            [12] 1431 	mov	dph,a
      002503 E4               [12] 1432 	clr	a
      002504 F0               [24] 1433 	movx	@dptr,a
                                   1434 ;	disp.c:303: printstr("\r\n");
      002505 7F 28            [12] 1435 	mov	r7,#___str_5
      002507 7E 27            [12] 1436 	mov	r6,#(___str_5 >> 8)
      002509 7C 80            [12] 1437 	mov	r4,#0x80
                                   1438 ;	disp.c:53: return;
      00250B                       1439 00166$:
                                   1440 ;	disp.c:51: for (; *s; s++) putchar(*s);
      00250B 8F 82            [24] 1441 	mov	dpl,r7
      00250D 8E 83            [24] 1442 	mov	dph,r6
      00250F 8C F0            [24] 1443 	mov	b,r4
      002511 12 26 B4         [24] 1444 	lcall	__gptrget
      002514 FA               [12] 1445 	mov	r2,a
      002515 60 10            [24] 1446 	jz	00139$
      002517 7D 00            [12] 1447 	mov	r5,#0x00
      002519 8A 82            [24] 1448 	mov	dpl,r2
      00251B 8D 83            [24] 1449 	mov	dph,r5
      00251D 12 20 AD         [24] 1450 	lcall	_putchar
      002520 0F               [12] 1451 	inc	r7
                                   1452 ;	disp.c:303: printstr("\r\n");
      002521 BF 00 E7         [24] 1453 	cjne	r7,#0x00,00166$
      002524 0E               [12] 1454 	inc	r6
      002525 80 E4            [24] 1455 	sjmp	00166$
      002527                       1456 00139$:
                                   1457 ;	disp.c:304: printstr("MSG \"");
      002527 7F 2B            [12] 1458 	mov	r7,#___str_6
      002529 7E 27            [12] 1459 	mov	r6,#(___str_6 >> 8)
      00252B 7C 80            [12] 1460 	mov	r4,#0x80
                                   1461 ;	disp.c:53: return;
      00252D                       1462 00169$:
                                   1463 ;	disp.c:51: for (; *s; s++) putchar(*s);
      00252D 8F 82            [24] 1464 	mov	dpl,r7
      00252F 8E 83            [24] 1465 	mov	dph,r6
      002531 8C F0            [24] 1466 	mov	b,r4
      002533 12 26 B4         [24] 1467 	lcall	__gptrget
      002536 FA               [12] 1468 	mov	r2,a
      002537 60 10            [24] 1469 	jz	00141$
      002539 7D 00            [12] 1470 	mov	r5,#0x00
      00253B 8A 82            [24] 1471 	mov	dpl,r2
      00253D 8D 83            [24] 1472 	mov	dph,r5
      00253F 12 20 AD         [24] 1473 	lcall	_putchar
      002542 0F               [12] 1474 	inc	r7
                                   1475 ;	disp.c:304: printstr("MSG \"");
      002543 BF 00 E7         [24] 1476 	cjne	r7,#0x00,00169$
      002546 0E               [12] 1477 	inc	r6
      002547 80 E4            [24] 1478 	sjmp	00169$
      002549                       1479 00141$:
                                   1480 ;	disp.c:305: printstr((char *)buf);
      002549 7F 00            [12] 1481 	mov	r7,#_buf
      00254B 7E 80            [12] 1482 	mov	r6,#(_buf >> 8)
      00254D 7C 00            [12] 1483 	mov	r4,#0x00
                                   1484 ;	disp.c:53: return;
      00254F                       1485 00172$:
                                   1486 ;	disp.c:51: for (; *s; s++) putchar(*s);
      00254F 8F 82            [24] 1487 	mov	dpl,r7
      002551 8E 83            [24] 1488 	mov	dph,r6
      002553 8C F0            [24] 1489 	mov	b,r4
      002555 12 26 B4         [24] 1490 	lcall	__gptrget
      002558 FA               [12] 1491 	mov	r2,a
      002559 60 10            [24] 1492 	jz	00143$
      00255B 7D 00            [12] 1493 	mov	r5,#0x00
      00255D 8A 82            [24] 1494 	mov	dpl,r2
      00255F 8D 83            [24] 1495 	mov	dph,r5
      002561 12 20 AD         [24] 1496 	lcall	_putchar
      002564 0F               [12] 1497 	inc	r7
                                   1498 ;	disp.c:305: printstr((char *)buf);
      002565 BF 00 E7         [24] 1499 	cjne	r7,#0x00,00172$
      002568 0E               [12] 1500 	inc	r6
      002569 80 E4            [24] 1501 	sjmp	00172$
      00256B                       1502 00143$:
                                   1503 ;	disp.c:306: printstr("\"\r\n");
      00256B 7F 1E            [12] 1504 	mov	r7,#___str_3
      00256D 7E 27            [12] 1505 	mov	r6,#(___str_3 >> 8)
      00256F 7C 80            [12] 1506 	mov	r4,#0x80
                                   1507 ;	disp.c:53: return;
      002571                       1508 00175$:
                                   1509 ;	disp.c:51: for (; *s; s++) putchar(*s);
      002571 8F 82            [24] 1510 	mov	dpl,r7
      002573 8E 83            [24] 1511 	mov	dph,r6
      002575 8C F0            [24] 1512 	mov	b,r4
      002577 12 26 B4         [24] 1513 	lcall	__gptrget
      00257A FA               [12] 1514 	mov	r2,a
      00257B 60 19            [24] 1515 	jz	00120$
      00257D 7D 00            [12] 1516 	mov	r5,#0x00
      00257F 8A 82            [24] 1517 	mov	dpl,r2
      002581 8D 83            [24] 1518 	mov	dph,r5
      002583 12 20 AD         [24] 1519 	lcall	_putchar
      002586 0F               [12] 1520 	inc	r7
                                   1521 ;	disp.c:306: printstr("\"\r\n");
      002587 BF 00 E7         [24] 1522 	cjne	r7,#0x00,00175$
      00258A 0E               [12] 1523 	inc	r6
      00258B 80 E4            [24] 1524 	sjmp	00175$
      00258D                       1525 00110$:
                                   1526 ;	disp.c:307: } else if (c == (int)'S') break;
      00258D BE 53 06         [24] 1527 	cjne	r6,#0x53,00366$
      002590 BF 00 03         [24] 1528 	cjne	r7,#0x00,00366$
      002593 02 23 BF         [24] 1529 	ljmp	00125$
      002596                       1530 00366$:
      002596                       1531 00120$:
                                   1532 ;	disp.c:309: c = toupper(getchar());
      002596 12 20 B6         [24] 1533 	lcall	_getchar
      002599 12 25 D6         [24] 1534 	lcall	_toupper
      00259C AE 82            [24] 1535 	mov	r6,dpl
      00259E AF 83            [24] 1536 	mov	r7,dph
      0025A0 02 24 32         [24] 1537 	ljmp	00122$
                                   1538 ;	disp.c:313: term:	
      0025A3                       1539 00127$:
                                   1540 ;	disp.c:314: EA = 0;
                                   1541 ;	assignBit
      0025A3 C2 AF            [12] 1542 	clr	_EA
                                   1543 ;	disp.c:315: init_disp();
      0025A5 12 21 3A         [24] 1544 	lcall	_init_disp
                                   1545 ;	disp.c:316: printstr("TERM\r\n");
      0025A8 7D 31            [12] 1546 	mov	r5,#___str_7
      0025AA 7E 27            [12] 1547 	mov	r6,#(___str_7 >> 8)
      0025AC 7F 80            [12] 1548 	mov	r7,#0x80
                                   1549 ;	disp.c:53: return;
      0025AE                       1550 00178$:
                                   1551 ;	disp.c:51: for (; *s; s++) putchar(*s);
      0025AE 8D 82            [24] 1552 	mov	dpl,r5
      0025B0 8E 83            [24] 1553 	mov	dph,r6
      0025B2 8F F0            [24] 1554 	mov	b,r7
      0025B4 12 26 B4         [24] 1555 	lcall	__gptrget
      0025B7 FC               [12] 1556 	mov	r4,a
      0025B8 60 10            [24] 1557 	jz	00147$
      0025BA 7B 00            [12] 1558 	mov	r3,#0x00
      0025BC 8C 82            [24] 1559 	mov	dpl,r4
      0025BE 8B 83            [24] 1560 	mov	dph,r3
      0025C0 12 20 AD         [24] 1561 	lcall	_putchar
      0025C3 0D               [12] 1562 	inc	r5
                                   1563 ;	disp.c:316: printstr("TERM\r\n");
      0025C4 BD 00 E7         [24] 1564 	cjne	r5,#0x00,00178$
      0025C7 0E               [12] 1565 	inc	r6
      0025C8 80 E4            [24] 1566 	sjmp	00178$
      0025CA                       1567 00147$:
                                   1568 ;	disp.c:317: (void)getchar();
      0025CA 12 20 B6         [24] 1569 	lcall	_getchar
                                   1570 ;	disp.c:319: PCON |= 2;
      0025CD 43 87 02         [24] 1571 	orl	_PCON,#0x02
                                   1572 ;	disp.c:321: return;
                                   1573 ;	disp.c:322: }
      0025D0 85 10 81         [24] 1574 	mov	sp,_bp
      0025D3 D0 10            [24] 1575 	pop	_bp
      0025D5 22               [24] 1576 	ret
                                   1577 	.area CSEG    (CODE)
                                   1578 	.area CONST   (CODE)
                                   1579 	.area CONST   (CODE)
      0026EF                       1580 ___str_0:
      0026EF 50 41 55 53 45        1581 	.ascii "PAUSE"
      0026F4 0D                    1582 	.db 0x0d
      0026F5 0A                    1583 	.db 0x0a
      0026F6 00                    1584 	.db 0x00
                                   1585 	.area CSEG    (CODE)
                                   1586 	.area CONST   (CODE)
      0026F7                       1587 ___str_1:
      0026F7 52 45 53 45 54        1588 	.ascii "RESET"
      0026FC 0D                    1589 	.db 0x0d
      0026FD 0A                    1590 	.db 0x0a
      0026FE 00                    1591 	.db 0x00
                                   1592 	.area CSEG    (CODE)
                                   1593 	.area CONST   (CODE)
      0026FF                       1594 ___str_2:
      0026FF 50 20 53 50 20 49 20  1595 	.ascii "P SP I L ENT S R T START MSG "
             4C 20 45 4E 54 20 53
             20 52 20 54 20 53 54
             41 52 54 20 4D 53 47
             20
      00271C 22                    1596 	.db 0x22
      00271D 00                    1597 	.db 0x00
                                   1598 	.area CSEG    (CODE)
                                   1599 	.area CONST   (CODE)
      00271E                       1600 ___str_3:
      00271E 22                    1601 	.db 0x22
      00271F 0D                    1602 	.db 0x0d
      002720 0A                    1603 	.db 0x0a
      002721 00                    1604 	.db 0x00
                                   1605 	.area CSEG    (CODE)
                                   1606 	.area CONST   (CODE)
      002722                       1607 ___str_4:
      002722 4C 4F 41 44 20        1608 	.ascii "LOAD "
      002727 00                    1609 	.db 0x00
                                   1610 	.area CSEG    (CODE)
                                   1611 	.area CONST   (CODE)
      002728                       1612 ___str_5:
      002728 0D                    1613 	.db 0x0d
      002729 0A                    1614 	.db 0x0a
      00272A 00                    1615 	.db 0x00
                                   1616 	.area CSEG    (CODE)
                                   1617 	.area CONST   (CODE)
      00272B                       1618 ___str_6:
      00272B 4D 53 47 20           1619 	.ascii "MSG "
      00272F 22                    1620 	.db 0x22
      002730 00                    1621 	.db 0x00
                                   1622 	.area CSEG    (CODE)
                                   1623 	.area CONST   (CODE)
      002731                       1624 ___str_7:
      002731 54 45 52 4D           1625 	.ascii "TERM"
      002735 0D                    1626 	.db 0x0d
      002736 0A                    1627 	.db 0x0a
      002737 00                    1628 	.db 0x00
                                   1629 	.area CSEG    (CODE)
                                   1630 	.area CONST   (CODE)
      002738                       1631 ___str_8:
      002738 43 41 45 44 49 54 45  1632 	.ascii "CAEDITE EOS : NOVIT ENIM DOMINVS QVI SVNT EIVS : "
             20 45 4F 53 20 3A 20
             4E 4F 56 49 54 20 45
             4E 49 4D 20 44 4F 4D
             49 4E 56 53 20 51 56
             49 20 53 56 4E 54 20
             45 49 56 53 20 3A 20
      002769 00                    1633 	.db 0x00
                                   1634 	.area CSEG    (CODE)
                                   1635 	.area XINIT   (CODE)
      00276A                       1636 __xinit___ft_font6x8:
      00276A 00                    1637 	.db #0x00	; 0
      00276B 00                    1638 	.db #0x00	; 0
      00276C 00                    1639 	.db #0x00	; 0
      00276D 00                    1640 	.db #0x00	; 0
      00276E 00                    1641 	.db #0x00	; 0
      00276F 00                    1642 	.db #0x00	; 0
      002770 00                    1643 	.db #0x00	; 0
      002771 00                    1644 	.db #0x00	; 0
      002772 1C                    1645 	.db #0x1c	; 28
      002773 22                    1646 	.db #0x22	; 34
      002774 36                    1647 	.db #0x36	; 54	'6'
      002775 22                    1648 	.db #0x22	; 34
      002776 2A                    1649 	.db #0x2a	; 42
      002777 22                    1650 	.db #0x22	; 34
      002778 1C                    1651 	.db #0x1c	; 28
      002779 00                    1652 	.db #0x00	; 0
      00277A 1C                    1653 	.db #0x1c	; 28
      00277B 3E                    1654 	.db #0x3e	; 62
      00277C 2A                    1655 	.db #0x2a	; 42
      00277D 3E                    1656 	.db #0x3e	; 62
      00277E 22                    1657 	.db #0x22	; 34
      00277F 3E                    1658 	.db #0x3e	; 62
      002780 1C                    1659 	.db #0x1c	; 28
      002781 00                    1660 	.db #0x00	; 0
      002782 00                    1661 	.db #0x00	; 0
      002783 14                    1662 	.db #0x14	; 20
      002784 3E                    1663 	.db #0x3e	; 62
      002785 3E                    1664 	.db #0x3e	; 62
      002786 3E                    1665 	.db #0x3e	; 62
      002787 1C                    1666 	.db #0x1c	; 28
      002788 08                    1667 	.db #0x08	; 8
      002789 00                    1668 	.db #0x00	; 0
      00278A 00                    1669 	.db #0x00	; 0
      00278B 08                    1670 	.db #0x08	; 8
      00278C 1C                    1671 	.db #0x1c	; 28
      00278D 3E                    1672 	.db #0x3e	; 62
      00278E 3E                    1673 	.db #0x3e	; 62
      00278F 1C                    1674 	.db #0x1c	; 28
      002790 08                    1675 	.db #0x08	; 8
      002791 00                    1676 	.db #0x00	; 0
      002792 08                    1677 	.db #0x08	; 8
      002793 1C                    1678 	.db #0x1c	; 28
      002794 1C                    1679 	.db #0x1c	; 28
      002795 08                    1680 	.db #0x08	; 8
      002796 3E                    1681 	.db #0x3e	; 62
      002797 3E                    1682 	.db #0x3e	; 62
      002798 08                    1683 	.db #0x08	; 8
      002799 00                    1684 	.db #0x00	; 0
      00279A 00                    1685 	.db #0x00	; 0
      00279B 08                    1686 	.db #0x08	; 8
      00279C 1C                    1687 	.db #0x1c	; 28
      00279D 3E                    1688 	.db #0x3e	; 62
      00279E 3E                    1689 	.db #0x3e	; 62
      00279F 08                    1690 	.db #0x08	; 8
      0027A0 1C                    1691 	.db #0x1c	; 28
      0027A1 00                    1692 	.db #0x00	; 0
      0027A2 00                    1693 	.db #0x00	; 0
      0027A3 00                    1694 	.db #0x00	; 0
      0027A4 00                    1695 	.db #0x00	; 0
      0027A5 0C                    1696 	.db #0x0c	; 12
      0027A6 0C                    1697 	.db #0x0c	; 12
      0027A7 00                    1698 	.db #0x00	; 0
      0027A8 00                    1699 	.db #0x00	; 0
      0027A9 00                    1700 	.db #0x00	; 0
      0027AA 3F                    1701 	.db #0x3f	; 63
      0027AB 3F                    1702 	.db #0x3f	; 63
      0027AC 3F                    1703 	.db #0x3f	; 63
      0027AD 33                    1704 	.db #0x33	; 51	'3'
      0027AE 33                    1705 	.db #0x33	; 51	'3'
      0027AF 3F                    1706 	.db #0x3f	; 63
      0027B0 3F                    1707 	.db #0x3f	; 63
      0027B1 3F                    1708 	.db #0x3f	; 63
      0027B2 00                    1709 	.db #0x00	; 0
      0027B3 00                    1710 	.db #0x00	; 0
      0027B4 1E                    1711 	.db #0x1e	; 30
      0027B5 12                    1712 	.db #0x12	; 18
      0027B6 12                    1713 	.db #0x12	; 18
      0027B7 1E                    1714 	.db #0x1e	; 30
      0027B8 00                    1715 	.db #0x00	; 0
      0027B9 00                    1716 	.db #0x00	; 0
      0027BA 3F                    1717 	.db #0x3f	; 63
      0027BB 3F                    1718 	.db #0x3f	; 63
      0027BC 21                    1719 	.db #0x21	; 33
      0027BD 2D                    1720 	.db #0x2d	; 45
      0027BE 2D                    1721 	.db #0x2d	; 45
      0027BF 21                    1722 	.db #0x21	; 33
      0027C0 3F                    1723 	.db #0x3f	; 63
      0027C1 3F                    1724 	.db #0x3f	; 63
      0027C2 00                    1725 	.db #0x00	; 0
      0027C3 38                    1726 	.db #0x38	; 56	'8'
      0027C4 30                    1727 	.db #0x30	; 48	'0'
      0027C5 2C                    1728 	.db #0x2c	; 44
      0027C6 12                    1729 	.db #0x12	; 18
      0027C7 12                    1730 	.db #0x12	; 18
      0027C8 0C                    1731 	.db #0x0c	; 12
      0027C9 00                    1732 	.db #0x00	; 0
      0027CA 1C                    1733 	.db #0x1c	; 28
      0027CB 22                    1734 	.db #0x22	; 34
      0027CC 22                    1735 	.db #0x22	; 34
      0027CD 1C                    1736 	.db #0x1c	; 28
      0027CE 08                    1737 	.db #0x08	; 8
      0027CF 1C                    1738 	.db #0x1c	; 28
      0027D0 08                    1739 	.db #0x08	; 8
      0027D1 00                    1740 	.db #0x00	; 0
      0027D2 08                    1741 	.db #0x08	; 8
      0027D3 18                    1742 	.db #0x18	; 24
      0027D4 28                    1743 	.db #0x28	; 40
      0027D5 08                    1744 	.db #0x08	; 8
      0027D6 0C                    1745 	.db #0x0c	; 12
      0027D7 0E                    1746 	.db #0x0e	; 14
      0027D8 06                    1747 	.db #0x06	; 6
      0027D9 00                    1748 	.db #0x00	; 0
      0027DA 30                    1749 	.db #0x30	; 48	'0'
      0027DB 2C                    1750 	.db #0x2c	; 44
      0027DC 34                    1751 	.db #0x34	; 52	'4'
      0027DD 2C                    1752 	.db #0x2c	; 44
      0027DE 34                    1753 	.db #0x34	; 52	'4'
      0027DF 36                    1754 	.db #0x36	; 54	'6'
      0027E0 06                    1755 	.db #0x06	; 6
      0027E1 00                    1756 	.db #0x00	; 0
      0027E2 00                    1757 	.db #0x00	; 0
      0027E3 2A                    1758 	.db #0x2a	; 42
      0027E4 1C                    1759 	.db #0x1c	; 28
      0027E5 36                    1760 	.db #0x36	; 54	'6'
      0027E6 1C                    1761 	.db #0x1c	; 28
      0027E7 2A                    1762 	.db #0x2a	; 42
      0027E8 00                    1763 	.db #0x00	; 0
      0027E9 00                    1764 	.db #0x00	; 0
      0027EA 04                    1765 	.db #0x04	; 4
      0027EB 0C                    1766 	.db #0x0c	; 12
      0027EC 1C                    1767 	.db #0x1c	; 28
      0027ED 3C                    1768 	.db #0x3c	; 60
      0027EE 1C                    1769 	.db #0x1c	; 28
      0027EF 0C                    1770 	.db #0x0c	; 12
      0027F0 04                    1771 	.db #0x04	; 4
      0027F1 00                    1772 	.db #0x00	; 0
      0027F2 10                    1773 	.db #0x10	; 16
      0027F3 18                    1774 	.db #0x18	; 24
      0027F4 1C                    1775 	.db #0x1c	; 28
      0027F5 1E                    1776 	.db #0x1e	; 30
      0027F6 1C                    1777 	.db #0x1c	; 28
      0027F7 18                    1778 	.db #0x18	; 24
      0027F8 10                    1779 	.db #0x10	; 16
      0027F9 00                    1780 	.db #0x00	; 0
      0027FA 08                    1781 	.db #0x08	; 8
      0027FB 1C                    1782 	.db #0x1c	; 28
      0027FC 3E                    1783 	.db #0x3e	; 62
      0027FD 08                    1784 	.db #0x08	; 8
      0027FE 3E                    1785 	.db #0x3e	; 62
      0027FF 1C                    1786 	.db #0x1c	; 28
      002800 08                    1787 	.db #0x08	; 8
      002801 00                    1788 	.db #0x00	; 0
      002802 14                    1789 	.db #0x14	; 20
      002803 14                    1790 	.db #0x14	; 20
      002804 14                    1791 	.db #0x14	; 20
      002805 14                    1792 	.db #0x14	; 20
      002806 14                    1793 	.db #0x14	; 20
      002807 00                    1794 	.db #0x00	; 0
      002808 14                    1795 	.db #0x14	; 20
      002809 00                    1796 	.db #0x00	; 0
      00280A 3C                    1797 	.db #0x3c	; 60
      00280B 2A                    1798 	.db #0x2a	; 42
      00280C 2A                    1799 	.db #0x2a	; 42
      00280D 2C                    1800 	.db #0x2c	; 44
      00280E 28                    1801 	.db #0x28	; 40
      00280F 28                    1802 	.db #0x28	; 40
      002810 28                    1803 	.db #0x28	; 40
      002811 00                    1804 	.db #0x00	; 0
      002812 1C                    1805 	.db #0x1c	; 28
      002813 22                    1806 	.db #0x22	; 34
      002814 0C                    1807 	.db #0x0c	; 12
      002815 14                    1808 	.db #0x14	; 20
      002816 18                    1809 	.db #0x18	; 24
      002817 22                    1810 	.db #0x22	; 34
      002818 1C                    1811 	.db #0x1c	; 28
      002819 00                    1812 	.db #0x00	; 0
      00281A 00                    1813 	.db #0x00	; 0
      00281B 00                    1814 	.db #0x00	; 0
      00281C 00                    1815 	.db #0x00	; 0
      00281D 00                    1816 	.db #0x00	; 0
      00281E 00                    1817 	.db #0x00	; 0
      00281F 1E                    1818 	.db #0x1e	; 30
      002820 1E                    1819 	.db #0x1e	; 30
      002821 00                    1820 	.db #0x00	; 0
      002822 08                    1821 	.db #0x08	; 8
      002823 1C                    1822 	.db #0x1c	; 28
      002824 3E                    1823 	.db #0x3e	; 62
      002825 08                    1824 	.db #0x08	; 8
      002826 3E                    1825 	.db #0x3e	; 62
      002827 1C                    1826 	.db #0x1c	; 28
      002828 08                    1827 	.db #0x08	; 8
      002829 1C                    1828 	.db #0x1c	; 28
      00282A 08                    1829 	.db #0x08	; 8
      00282B 1C                    1830 	.db #0x1c	; 28
      00282C 3E                    1831 	.db #0x3e	; 62
      00282D 08                    1832 	.db #0x08	; 8
      00282E 08                    1833 	.db #0x08	; 8
      00282F 08                    1834 	.db #0x08	; 8
      002830 08                    1835 	.db #0x08	; 8
      002831 00                    1836 	.db #0x00	; 0
      002832 08                    1837 	.db #0x08	; 8
      002833 08                    1838 	.db #0x08	; 8
      002834 08                    1839 	.db #0x08	; 8
      002835 08                    1840 	.db #0x08	; 8
      002836 3E                    1841 	.db #0x3e	; 62
      002837 1C                    1842 	.db #0x1c	; 28
      002838 08                    1843 	.db #0x08	; 8
      002839 00                    1844 	.db #0x00	; 0
      00283A 00                    1845 	.db #0x00	; 0
      00283B 08                    1846 	.db #0x08	; 8
      00283C 18                    1847 	.db #0x18	; 24
      00283D 3E                    1848 	.db #0x3e	; 62
      00283E 18                    1849 	.db #0x18	; 24
      00283F 08                    1850 	.db #0x08	; 8
      002840 00                    1851 	.db #0x00	; 0
      002841 00                    1852 	.db #0x00	; 0
      002842 00                    1853 	.db #0x00	; 0
      002843 08                    1854 	.db #0x08	; 8
      002844 0C                    1855 	.db #0x0c	; 12
      002845 3E                    1856 	.db #0x3e	; 62
      002846 0C                    1857 	.db #0x0c	; 12
      002847 08                    1858 	.db #0x08	; 8
      002848 00                    1859 	.db #0x00	; 0
      002849 00                    1860 	.db #0x00	; 0
      00284A 00                    1861 	.db #0x00	; 0
      00284B 00                    1862 	.db #0x00	; 0
      00284C 00                    1863 	.db #0x00	; 0
      00284D 02                    1864 	.db #0x02	; 2
      00284E 02                    1865 	.db #0x02	; 2
      00284F 02                    1866 	.db #0x02	; 2
      002850 3E                    1867 	.db #0x3e	; 62
      002851 00                    1868 	.db #0x00	; 0
      002852 00                    1869 	.db #0x00	; 0
      002853 14                    1870 	.db #0x14	; 20
      002854 14                    1871 	.db #0x14	; 20
      002855 3E                    1872 	.db #0x3e	; 62
      002856 14                    1873 	.db #0x14	; 20
      002857 14                    1874 	.db #0x14	; 20
      002858 00                    1875 	.db #0x00	; 0
      002859 00                    1876 	.db #0x00	; 0
      00285A 08                    1877 	.db #0x08	; 8
      00285B 08                    1878 	.db #0x08	; 8
      00285C 1C                    1879 	.db #0x1c	; 28
      00285D 1C                    1880 	.db #0x1c	; 28
      00285E 3E                    1881 	.db #0x3e	; 62
      00285F 3E                    1882 	.db #0x3e	; 62
      002860 00                    1883 	.db #0x00	; 0
      002861 00                    1884 	.db #0x00	; 0
      002862 3E                    1885 	.db #0x3e	; 62
      002863 3E                    1886 	.db #0x3e	; 62
      002864 1C                    1887 	.db #0x1c	; 28
      002865 1C                    1888 	.db #0x1c	; 28
      002866 08                    1889 	.db #0x08	; 8
      002867 08                    1890 	.db #0x08	; 8
      002868 00                    1891 	.db #0x00	; 0
      002869 00                    1892 	.db #0x00	; 0
      00286A 00                    1893 	.db #0x00	; 0
      00286B 00                    1894 	.db #0x00	; 0
      00286C 00                    1895 	.db #0x00	; 0
      00286D 00                    1896 	.db #0x00	; 0
      00286E 00                    1897 	.db #0x00	; 0
      00286F 00                    1898 	.db #0x00	; 0
      002870 00                    1899 	.db #0x00	; 0
      002871 00                    1900 	.db #0x00	; 0
      002872 08                    1901 	.db #0x08	; 8
      002873 1C                    1902 	.db #0x1c	; 28
      002874 1C                    1903 	.db #0x1c	; 28
      002875 08                    1904 	.db #0x08	; 8
      002876 08                    1905 	.db #0x08	; 8
      002877 00                    1906 	.db #0x00	; 0
      002878 08                    1907 	.db #0x08	; 8
      002879 00                    1908 	.db #0x00	; 0
      00287A 36                    1909 	.db #0x36	; 54	'6'
      00287B 36                    1910 	.db #0x36	; 54	'6'
      00287C 12                    1911 	.db #0x12	; 18
      00287D 00                    1912 	.db #0x00	; 0
      00287E 00                    1913 	.db #0x00	; 0
      00287F 00                    1914 	.db #0x00	; 0
      002880 00                    1915 	.db #0x00	; 0
      002881 00                    1916 	.db #0x00	; 0
      002882 00                    1917 	.db #0x00	; 0
      002883 14                    1918 	.db #0x14	; 20
      002884 3E                    1919 	.db #0x3e	; 62
      002885 14                    1920 	.db #0x14	; 20
      002886 14                    1921 	.db #0x14	; 20
      002887 3E                    1922 	.db #0x3e	; 62
      002888 14                    1923 	.db #0x14	; 20
      002889 00                    1924 	.db #0x00	; 0
      00288A 04                    1925 	.db #0x04	; 4
      00288B 1C                    1926 	.db #0x1c	; 28
      00288C 02                    1927 	.db #0x02	; 2
      00288D 0C                    1928 	.db #0x0c	; 12
      00288E 10                    1929 	.db #0x10	; 16
      00288F 0E                    1930 	.db #0x0e	; 14
      002890 08                    1931 	.db #0x08	; 8
      002891 00                    1932 	.db #0x00	; 0
      002892 26                    1933 	.db #0x26	; 38
      002893 26                    1934 	.db #0x26	; 38
      002894 10                    1935 	.db #0x10	; 16
      002895 08                    1936 	.db #0x08	; 8
      002896 04                    1937 	.db #0x04	; 4
      002897 32                    1938 	.db #0x32	; 50	'2'
      002898 32                    1939 	.db #0x32	; 50	'2'
      002899 00                    1940 	.db #0x00	; 0
      00289A 04                    1941 	.db #0x04	; 4
      00289B 0A                    1942 	.db #0x0a	; 10
      00289C 0A                    1943 	.db #0x0a	; 10
      00289D 04                    1944 	.db #0x04	; 4
      00289E 2A                    1945 	.db #0x2a	; 42
      00289F 12                    1946 	.db #0x12	; 18
      0028A0 2C                    1947 	.db #0x2c	; 44
      0028A1 00                    1948 	.db #0x00	; 0
      0028A2 0C                    1949 	.db #0x0c	; 12
      0028A3 0C                    1950 	.db #0x0c	; 12
      0028A4 04                    1951 	.db #0x04	; 4
      0028A5 00                    1952 	.db #0x00	; 0
      0028A6 00                    1953 	.db #0x00	; 0
      0028A7 00                    1954 	.db #0x00	; 0
      0028A8 00                    1955 	.db #0x00	; 0
      0028A9 00                    1956 	.db #0x00	; 0
      0028AA 08                    1957 	.db #0x08	; 8
      0028AB 04                    1958 	.db #0x04	; 4
      0028AC 04                    1959 	.db #0x04	; 4
      0028AD 04                    1960 	.db #0x04	; 4
      0028AE 04                    1961 	.db #0x04	; 4
      0028AF 04                    1962 	.db #0x04	; 4
      0028B0 08                    1963 	.db #0x08	; 8
      0028B1 00                    1964 	.db #0x00	; 0
      0028B2 04                    1965 	.db #0x04	; 4
      0028B3 08                    1966 	.db #0x08	; 8
      0028B4 08                    1967 	.db #0x08	; 8
      0028B5 08                    1968 	.db #0x08	; 8
      0028B6 08                    1969 	.db #0x08	; 8
      0028B7 08                    1970 	.db #0x08	; 8
      0028B8 04                    1971 	.db #0x04	; 4
      0028B9 00                    1972 	.db #0x00	; 0
      0028BA 00                    1973 	.db #0x00	; 0
      0028BB 14                    1974 	.db #0x14	; 20
      0028BC 1C                    1975 	.db #0x1c	; 28
      0028BD 3E                    1976 	.db #0x3e	; 62
      0028BE 1C                    1977 	.db #0x1c	; 28
      0028BF 14                    1978 	.db #0x14	; 20
      0028C0 00                    1979 	.db #0x00	; 0
      0028C1 00                    1980 	.db #0x00	; 0
      0028C2 00                    1981 	.db #0x00	; 0
      0028C3 08                    1982 	.db #0x08	; 8
      0028C4 08                    1983 	.db #0x08	; 8
      0028C5 3E                    1984 	.db #0x3e	; 62
      0028C6 08                    1985 	.db #0x08	; 8
      0028C7 08                    1986 	.db #0x08	; 8
      0028C8 00                    1987 	.db #0x00	; 0
      0028C9 00                    1988 	.db #0x00	; 0
      0028CA 00                    1989 	.db #0x00	; 0
      0028CB 00                    1990 	.db #0x00	; 0
      0028CC 00                    1991 	.db #0x00	; 0
      0028CD 00                    1992 	.db #0x00	; 0
      0028CE 00                    1993 	.db #0x00	; 0
      0028CF 0C                    1994 	.db #0x0c	; 12
      0028D0 0C                    1995 	.db #0x0c	; 12
      0028D1 04                    1996 	.db #0x04	; 4
      0028D2 00                    1997 	.db #0x00	; 0
      0028D3 00                    1998 	.db #0x00	; 0
      0028D4 00                    1999 	.db #0x00	; 0
      0028D5 3E                    2000 	.db #0x3e	; 62
      0028D6 00                    2001 	.db #0x00	; 0
      0028D7 00                    2002 	.db #0x00	; 0
      0028D8 00                    2003 	.db #0x00	; 0
      0028D9 00                    2004 	.db #0x00	; 0
      0028DA 00                    2005 	.db #0x00	; 0
      0028DB 00                    2006 	.db #0x00	; 0
      0028DC 00                    2007 	.db #0x00	; 0
      0028DD 00                    2008 	.db #0x00	; 0
      0028DE 00                    2009 	.db #0x00	; 0
      0028DF 0C                    2010 	.db #0x0c	; 12
      0028E0 0C                    2011 	.db #0x0c	; 12
      0028E1 00                    2012 	.db #0x00	; 0
      0028E2 00                    2013 	.db #0x00	; 0
      0028E3 20                    2014 	.db #0x20	; 32
      0028E4 10                    2015 	.db #0x10	; 16
      0028E5 08                    2016 	.db #0x08	; 8
      0028E6 04                    2017 	.db #0x04	; 4
      0028E7 02                    2018 	.db #0x02	; 2
      0028E8 00                    2019 	.db #0x00	; 0
      0028E9 00                    2020 	.db #0x00	; 0
      0028EA 1C                    2021 	.db #0x1c	; 28
      0028EB 22                    2022 	.db #0x22	; 34
      0028EC 32                    2023 	.db #0x32	; 50	'2'
      0028ED 2A                    2024 	.db #0x2a	; 42
      0028EE 26                    2025 	.db #0x26	; 38
      0028EF 22                    2026 	.db #0x22	; 34
      0028F0 1C                    2027 	.db #0x1c	; 28
      0028F1 00                    2028 	.db #0x00	; 0
      0028F2 08                    2029 	.db #0x08	; 8
      0028F3 0C                    2030 	.db #0x0c	; 12
      0028F4 08                    2031 	.db #0x08	; 8
      0028F5 08                    2032 	.db #0x08	; 8
      0028F6 08                    2033 	.db #0x08	; 8
      0028F7 08                    2034 	.db #0x08	; 8
      0028F8 1C                    2035 	.db #0x1c	; 28
      0028F9 00                    2036 	.db #0x00	; 0
      0028FA 1C                    2037 	.db #0x1c	; 28
      0028FB 22                    2038 	.db #0x22	; 34
      0028FC 20                    2039 	.db #0x20	; 32
      0028FD 18                    2040 	.db #0x18	; 24
      0028FE 04                    2041 	.db #0x04	; 4
      0028FF 02                    2042 	.db #0x02	; 2
      002900 3E                    2043 	.db #0x3e	; 62
      002901 00                    2044 	.db #0x00	; 0
      002902 1C                    2045 	.db #0x1c	; 28
      002903 22                    2046 	.db #0x22	; 34
      002904 20                    2047 	.db #0x20	; 32
      002905 1C                    2048 	.db #0x1c	; 28
      002906 20                    2049 	.db #0x20	; 32
      002907 22                    2050 	.db #0x22	; 34
      002908 1C                    2051 	.db #0x1c	; 28
      002909 00                    2052 	.db #0x00	; 0
      00290A 10                    2053 	.db #0x10	; 16
      00290B 18                    2054 	.db #0x18	; 24
      00290C 14                    2055 	.db #0x14	; 20
      00290D 12                    2056 	.db #0x12	; 18
      00290E 3E                    2057 	.db #0x3e	; 62
      00290F 10                    2058 	.db #0x10	; 16
      002910 10                    2059 	.db #0x10	; 16
      002911 00                    2060 	.db #0x00	; 0
      002912 3E                    2061 	.db #0x3e	; 62
      002913 02                    2062 	.db #0x02	; 2
      002914 02                    2063 	.db #0x02	; 2
      002915 1E                    2064 	.db #0x1e	; 30
      002916 20                    2065 	.db #0x20	; 32
      002917 22                    2066 	.db #0x22	; 34
      002918 1C                    2067 	.db #0x1c	; 28
      002919 00                    2068 	.db #0x00	; 0
      00291A 18                    2069 	.db #0x18	; 24
      00291B 04                    2070 	.db #0x04	; 4
      00291C 02                    2071 	.db #0x02	; 2
      00291D 1E                    2072 	.db #0x1e	; 30
      00291E 22                    2073 	.db #0x22	; 34
      00291F 22                    2074 	.db #0x22	; 34
      002920 1C                    2075 	.db #0x1c	; 28
      002921 00                    2076 	.db #0x00	; 0
      002922 3E                    2077 	.db #0x3e	; 62
      002923 20                    2078 	.db #0x20	; 32
      002924 10                    2079 	.db #0x10	; 16
      002925 08                    2080 	.db #0x08	; 8
      002926 04                    2081 	.db #0x04	; 4
      002927 04                    2082 	.db #0x04	; 4
      002928 04                    2083 	.db #0x04	; 4
      002929 00                    2084 	.db #0x00	; 0
      00292A 1C                    2085 	.db #0x1c	; 28
      00292B 22                    2086 	.db #0x22	; 34
      00292C 22                    2087 	.db #0x22	; 34
      00292D 1C                    2088 	.db #0x1c	; 28
      00292E 22                    2089 	.db #0x22	; 34
      00292F 22                    2090 	.db #0x22	; 34
      002930 1C                    2091 	.db #0x1c	; 28
      002931 00                    2092 	.db #0x00	; 0
      002932 1C                    2093 	.db #0x1c	; 28
      002933 22                    2094 	.db #0x22	; 34
      002934 22                    2095 	.db #0x22	; 34
      002935 3C                    2096 	.db #0x3c	; 60
      002936 20                    2097 	.db #0x20	; 32
      002937 10                    2098 	.db #0x10	; 16
      002938 0C                    2099 	.db #0x0c	; 12
      002939 00                    2100 	.db #0x00	; 0
      00293A 00                    2101 	.db #0x00	; 0
      00293B 00                    2102 	.db #0x00	; 0
      00293C 0C                    2103 	.db #0x0c	; 12
      00293D 0C                    2104 	.db #0x0c	; 12
      00293E 00                    2105 	.db #0x00	; 0
      00293F 0C                    2106 	.db #0x0c	; 12
      002940 0C                    2107 	.db #0x0c	; 12
      002941 00                    2108 	.db #0x00	; 0
      002942 00                    2109 	.db #0x00	; 0
      002943 00                    2110 	.db #0x00	; 0
      002944 0C                    2111 	.db #0x0c	; 12
      002945 0C                    2112 	.db #0x0c	; 12
      002946 00                    2113 	.db #0x00	; 0
      002947 0C                    2114 	.db #0x0c	; 12
      002948 0C                    2115 	.db #0x0c	; 12
      002949 04                    2116 	.db #0x04	; 4
      00294A 10                    2117 	.db #0x10	; 16
      00294B 08                    2118 	.db #0x08	; 8
      00294C 04                    2119 	.db #0x04	; 4
      00294D 02                    2120 	.db #0x02	; 2
      00294E 04                    2121 	.db #0x04	; 4
      00294F 08                    2122 	.db #0x08	; 8
      002950 10                    2123 	.db #0x10	; 16
      002951 00                    2124 	.db #0x00	; 0
      002952 00                    2125 	.db #0x00	; 0
      002953 00                    2126 	.db #0x00	; 0
      002954 3E                    2127 	.db #0x3e	; 62
      002955 00                    2128 	.db #0x00	; 0
      002956 00                    2129 	.db #0x00	; 0
      002957 3E                    2130 	.db #0x3e	; 62
      002958 00                    2131 	.db #0x00	; 0
      002959 00                    2132 	.db #0x00	; 0
      00295A 04                    2133 	.db #0x04	; 4
      00295B 08                    2134 	.db #0x08	; 8
      00295C 10                    2135 	.db #0x10	; 16
      00295D 20                    2136 	.db #0x20	; 32
      00295E 10                    2137 	.db #0x10	; 16
      00295F 08                    2138 	.db #0x08	; 8
      002960 04                    2139 	.db #0x04	; 4
      002961 00                    2140 	.db #0x00	; 0
      002962 1C                    2141 	.db #0x1c	; 28
      002963 22                    2142 	.db #0x22	; 34
      002964 20                    2143 	.db #0x20	; 32
      002965 18                    2144 	.db #0x18	; 24
      002966 08                    2145 	.db #0x08	; 8
      002967 00                    2146 	.db #0x00	; 0
      002968 08                    2147 	.db #0x08	; 8
      002969 00                    2148 	.db #0x00	; 0
      00296A 1C                    2149 	.db #0x1c	; 28
      00296B 22                    2150 	.db #0x22	; 34
      00296C 3A                    2151 	.db #0x3a	; 58
      00296D 2A                    2152 	.db #0x2a	; 42
      00296E 3A                    2153 	.db #0x3a	; 58
      00296F 02                    2154 	.db #0x02	; 2
      002970 1C                    2155 	.db #0x1c	; 28
      002971 00                    2156 	.db #0x00	; 0
      002972 1C                    2157 	.db #0x1c	; 28
      002973 22                    2158 	.db #0x22	; 34
      002974 22                    2159 	.db #0x22	; 34
      002975 22                    2160 	.db #0x22	; 34
      002976 3E                    2161 	.db #0x3e	; 62
      002977 22                    2162 	.db #0x22	; 34
      002978 22                    2163 	.db #0x22	; 34
      002979 00                    2164 	.db #0x00	; 0
      00297A 1E                    2165 	.db #0x1e	; 30
      00297B 22                    2166 	.db #0x22	; 34
      00297C 22                    2167 	.db #0x22	; 34
      00297D 1E                    2168 	.db #0x1e	; 30
      00297E 22                    2169 	.db #0x22	; 34
      00297F 22                    2170 	.db #0x22	; 34
      002980 1E                    2171 	.db #0x1e	; 30
      002981 00                    2172 	.db #0x00	; 0
      002982 1C                    2173 	.db #0x1c	; 28
      002983 22                    2174 	.db #0x22	; 34
      002984 02                    2175 	.db #0x02	; 2
      002985 02                    2176 	.db #0x02	; 2
      002986 02                    2177 	.db #0x02	; 2
      002987 22                    2178 	.db #0x22	; 34
      002988 1C                    2179 	.db #0x1c	; 28
      002989 00                    2180 	.db #0x00	; 0
      00298A 1E                    2181 	.db #0x1e	; 30
      00298B 22                    2182 	.db #0x22	; 34
      00298C 22                    2183 	.db #0x22	; 34
      00298D 22                    2184 	.db #0x22	; 34
      00298E 22                    2185 	.db #0x22	; 34
      00298F 22                    2186 	.db #0x22	; 34
      002990 1E                    2187 	.db #0x1e	; 30
      002991 00                    2188 	.db #0x00	; 0
      002992 3E                    2189 	.db #0x3e	; 62
      002993 02                    2190 	.db #0x02	; 2
      002994 02                    2191 	.db #0x02	; 2
      002995 1E                    2192 	.db #0x1e	; 30
      002996 02                    2193 	.db #0x02	; 2
      002997 02                    2194 	.db #0x02	; 2
      002998 3E                    2195 	.db #0x3e	; 62
      002999 00                    2196 	.db #0x00	; 0
      00299A 3E                    2197 	.db #0x3e	; 62
      00299B 02                    2198 	.db #0x02	; 2
      00299C 02                    2199 	.db #0x02	; 2
      00299D 1E                    2200 	.db #0x1e	; 30
      00299E 02                    2201 	.db #0x02	; 2
      00299F 02                    2202 	.db #0x02	; 2
      0029A0 02                    2203 	.db #0x02	; 2
      0029A1 00                    2204 	.db #0x00	; 0
      0029A2 1C                    2205 	.db #0x1c	; 28
      0029A3 22                    2206 	.db #0x22	; 34
      0029A4 02                    2207 	.db #0x02	; 2
      0029A5 3A                    2208 	.db #0x3a	; 58
      0029A6 22                    2209 	.db #0x22	; 34
      0029A7 22                    2210 	.db #0x22	; 34
      0029A8 3C                    2211 	.db #0x3c	; 60
      0029A9 00                    2212 	.db #0x00	; 0
      0029AA 22                    2213 	.db #0x22	; 34
      0029AB 22                    2214 	.db #0x22	; 34
      0029AC 22                    2215 	.db #0x22	; 34
      0029AD 3E                    2216 	.db #0x3e	; 62
      0029AE 22                    2217 	.db #0x22	; 34
      0029AF 22                    2218 	.db #0x22	; 34
      0029B0 22                    2219 	.db #0x22	; 34
      0029B1 00                    2220 	.db #0x00	; 0
      0029B2 1C                    2221 	.db #0x1c	; 28
      0029B3 08                    2222 	.db #0x08	; 8
      0029B4 08                    2223 	.db #0x08	; 8
      0029B5 08                    2224 	.db #0x08	; 8
      0029B6 08                    2225 	.db #0x08	; 8
      0029B7 08                    2226 	.db #0x08	; 8
      0029B8 1C                    2227 	.db #0x1c	; 28
      0029B9 00                    2228 	.db #0x00	; 0
      0029BA 20                    2229 	.db #0x20	; 32
      0029BB 20                    2230 	.db #0x20	; 32
      0029BC 20                    2231 	.db #0x20	; 32
      0029BD 20                    2232 	.db #0x20	; 32
      0029BE 22                    2233 	.db #0x22	; 34
      0029BF 22                    2234 	.db #0x22	; 34
      0029C0 1C                    2235 	.db #0x1c	; 28
      0029C1 00                    2236 	.db #0x00	; 0
      0029C2 22                    2237 	.db #0x22	; 34
      0029C3 12                    2238 	.db #0x12	; 18
      0029C4 0A                    2239 	.db #0x0a	; 10
      0029C5 06                    2240 	.db #0x06	; 6
      0029C6 0A                    2241 	.db #0x0a	; 10
      0029C7 12                    2242 	.db #0x12	; 18
      0029C8 22                    2243 	.db #0x22	; 34
      0029C9 00                    2244 	.db #0x00	; 0
      0029CA 02                    2245 	.db #0x02	; 2
      0029CB 02                    2246 	.db #0x02	; 2
      0029CC 02                    2247 	.db #0x02	; 2
      0029CD 02                    2248 	.db #0x02	; 2
      0029CE 02                    2249 	.db #0x02	; 2
      0029CF 02                    2250 	.db #0x02	; 2
      0029D0 3E                    2251 	.db #0x3e	; 62
      0029D1 00                    2252 	.db #0x00	; 0
      0029D2 22                    2253 	.db #0x22	; 34
      0029D3 36                    2254 	.db #0x36	; 54	'6'
      0029D4 2A                    2255 	.db #0x2a	; 42
      0029D5 22                    2256 	.db #0x22	; 34
      0029D6 22                    2257 	.db #0x22	; 34
      0029D7 22                    2258 	.db #0x22	; 34
      0029D8 22                    2259 	.db #0x22	; 34
      0029D9 00                    2260 	.db #0x00	; 0
      0029DA 22                    2261 	.db #0x22	; 34
      0029DB 26                    2262 	.db #0x26	; 38
      0029DC 2A                    2263 	.db #0x2a	; 42
      0029DD 32                    2264 	.db #0x32	; 50	'2'
      0029DE 22                    2265 	.db #0x22	; 34
      0029DF 22                    2266 	.db #0x22	; 34
      0029E0 22                    2267 	.db #0x22	; 34
      0029E1 00                    2268 	.db #0x00	; 0
      0029E2 1C                    2269 	.db #0x1c	; 28
      0029E3 22                    2270 	.db #0x22	; 34
      0029E4 22                    2271 	.db #0x22	; 34
      0029E5 22                    2272 	.db #0x22	; 34
      0029E6 22                    2273 	.db #0x22	; 34
      0029E7 22                    2274 	.db #0x22	; 34
      0029E8 1C                    2275 	.db #0x1c	; 28
      0029E9 00                    2276 	.db #0x00	; 0
      0029EA 1E                    2277 	.db #0x1e	; 30
      0029EB 22                    2278 	.db #0x22	; 34
      0029EC 22                    2279 	.db #0x22	; 34
      0029ED 1E                    2280 	.db #0x1e	; 30
      0029EE 02                    2281 	.db #0x02	; 2
      0029EF 02                    2282 	.db #0x02	; 2
      0029F0 02                    2283 	.db #0x02	; 2
      0029F1 00                    2284 	.db #0x00	; 0
      0029F2 1C                    2285 	.db #0x1c	; 28
      0029F3 22                    2286 	.db #0x22	; 34
      0029F4 22                    2287 	.db #0x22	; 34
      0029F5 22                    2288 	.db #0x22	; 34
      0029F6 2A                    2289 	.db #0x2a	; 42
      0029F7 12                    2290 	.db #0x12	; 18
      0029F8 2C                    2291 	.db #0x2c	; 44
      0029F9 00                    2292 	.db #0x00	; 0
      0029FA 1E                    2293 	.db #0x1e	; 30
      0029FB 22                    2294 	.db #0x22	; 34
      0029FC 22                    2295 	.db #0x22	; 34
      0029FD 1E                    2296 	.db #0x1e	; 30
      0029FE 12                    2297 	.db #0x12	; 18
      0029FF 22                    2298 	.db #0x22	; 34
      002A00 22                    2299 	.db #0x22	; 34
      002A01 00                    2300 	.db #0x00	; 0
      002A02 1C                    2301 	.db #0x1c	; 28
      002A03 22                    2302 	.db #0x22	; 34
      002A04 02                    2303 	.db #0x02	; 2
      002A05 1C                    2304 	.db #0x1c	; 28
      002A06 20                    2305 	.db #0x20	; 32
      002A07 22                    2306 	.db #0x22	; 34
      002A08 1C                    2307 	.db #0x1c	; 28
      002A09 00                    2308 	.db #0x00	; 0
      002A0A 3E                    2309 	.db #0x3e	; 62
      002A0B 08                    2310 	.db #0x08	; 8
      002A0C 08                    2311 	.db #0x08	; 8
      002A0D 08                    2312 	.db #0x08	; 8
      002A0E 08                    2313 	.db #0x08	; 8
      002A0F 08                    2314 	.db #0x08	; 8
      002A10 08                    2315 	.db #0x08	; 8
      002A11 00                    2316 	.db #0x00	; 0
      002A12 22                    2317 	.db #0x22	; 34
      002A13 22                    2318 	.db #0x22	; 34
      002A14 22                    2319 	.db #0x22	; 34
      002A15 22                    2320 	.db #0x22	; 34
      002A16 22                    2321 	.db #0x22	; 34
      002A17 22                    2322 	.db #0x22	; 34
      002A18 1C                    2323 	.db #0x1c	; 28
      002A19 00                    2324 	.db #0x00	; 0
      002A1A 22                    2325 	.db #0x22	; 34
      002A1B 22                    2326 	.db #0x22	; 34
      002A1C 22                    2327 	.db #0x22	; 34
      002A1D 22                    2328 	.db #0x22	; 34
      002A1E 22                    2329 	.db #0x22	; 34
      002A1F 14                    2330 	.db #0x14	; 20
      002A20 08                    2331 	.db #0x08	; 8
      002A21 00                    2332 	.db #0x00	; 0
      002A22 22                    2333 	.db #0x22	; 34
      002A23 22                    2334 	.db #0x22	; 34
      002A24 2A                    2335 	.db #0x2a	; 42
      002A25 2A                    2336 	.db #0x2a	; 42
      002A26 2A                    2337 	.db #0x2a	; 42
      002A27 2A                    2338 	.db #0x2a	; 42
      002A28 14                    2339 	.db #0x14	; 20
      002A29 00                    2340 	.db #0x00	; 0
      002A2A 22                    2341 	.db #0x22	; 34
      002A2B 22                    2342 	.db #0x22	; 34
      002A2C 14                    2343 	.db #0x14	; 20
      002A2D 08                    2344 	.db #0x08	; 8
      002A2E 14                    2345 	.db #0x14	; 20
      002A2F 22                    2346 	.db #0x22	; 34
      002A30 22                    2347 	.db #0x22	; 34
      002A31 00                    2348 	.db #0x00	; 0
      002A32 22                    2349 	.db #0x22	; 34
      002A33 22                    2350 	.db #0x22	; 34
      002A34 22                    2351 	.db #0x22	; 34
      002A35 14                    2352 	.db #0x14	; 20
      002A36 08                    2353 	.db #0x08	; 8
      002A37 08                    2354 	.db #0x08	; 8
      002A38 08                    2355 	.db #0x08	; 8
      002A39 00                    2356 	.db #0x00	; 0
      002A3A 1E                    2357 	.db #0x1e	; 30
      002A3B 10                    2358 	.db #0x10	; 16
      002A3C 08                    2359 	.db #0x08	; 8
      002A3D 04                    2360 	.db #0x04	; 4
      002A3E 02                    2361 	.db #0x02	; 2
      002A3F 02                    2362 	.db #0x02	; 2
      002A40 1E                    2363 	.db #0x1e	; 30
      002A41 00                    2364 	.db #0x00	; 0
      002A42 1C                    2365 	.db #0x1c	; 28
      002A43 04                    2366 	.db #0x04	; 4
      002A44 04                    2367 	.db #0x04	; 4
      002A45 04                    2368 	.db #0x04	; 4
      002A46 04                    2369 	.db #0x04	; 4
      002A47 04                    2370 	.db #0x04	; 4
      002A48 1C                    2371 	.db #0x1c	; 28
      002A49 00                    2372 	.db #0x00	; 0
      002A4A 00                    2373 	.db #0x00	; 0
      002A4B 02                    2374 	.db #0x02	; 2
      002A4C 04                    2375 	.db #0x04	; 4
      002A4D 08                    2376 	.db #0x08	; 8
      002A4E 10                    2377 	.db #0x10	; 16
      002A4F 20                    2378 	.db #0x20	; 32
      002A50 00                    2379 	.db #0x00	; 0
      002A51 00                    2380 	.db #0x00	; 0
      002A52 1C                    2381 	.db #0x1c	; 28
      002A53 10                    2382 	.db #0x10	; 16
      002A54 10                    2383 	.db #0x10	; 16
      002A55 10                    2384 	.db #0x10	; 16
      002A56 10                    2385 	.db #0x10	; 16
      002A57 10                    2386 	.db #0x10	; 16
      002A58 1C                    2387 	.db #0x1c	; 28
      002A59 00                    2388 	.db #0x00	; 0
      002A5A 08                    2389 	.db #0x08	; 8
      002A5B 14                    2390 	.db #0x14	; 20
      002A5C 22                    2391 	.db #0x22	; 34
      002A5D 00                    2392 	.db #0x00	; 0
      002A5E 00                    2393 	.db #0x00	; 0
      002A5F 00                    2394 	.db #0x00	; 0
      002A60 00                    2395 	.db #0x00	; 0
      002A61 00                    2396 	.db #0x00	; 0
      002A62 00                    2397 	.db #0x00	; 0
      002A63 00                    2398 	.db #0x00	; 0
      002A64 00                    2399 	.db #0x00	; 0
      002A65 00                    2400 	.db #0x00	; 0
      002A66 00                    2401 	.db #0x00	; 0
      002A67 00                    2402 	.db #0x00	; 0
      002A68 00                    2403 	.db #0x00	; 0
      002A69 3F                    2404 	.db #0x3f	; 63
      002A6A 0C                    2405 	.db #0x0c	; 12
      002A6B 0C                    2406 	.db #0x0c	; 12
      002A6C 08                    2407 	.db #0x08	; 8
      002A6D 00                    2408 	.db #0x00	; 0
      002A6E 00                    2409 	.db #0x00	; 0
      002A6F 00                    2410 	.db #0x00	; 0
      002A70 00                    2411 	.db #0x00	; 0
      002A71 00                    2412 	.db #0x00	; 0
      002A72 00                    2413 	.db #0x00	; 0
      002A73 00                    2414 	.db #0x00	; 0
      002A74 1C                    2415 	.db #0x1c	; 28
      002A75 20                    2416 	.db #0x20	; 32
      002A76 3C                    2417 	.db #0x3c	; 60
      002A77 22                    2418 	.db #0x22	; 34
      002A78 3C                    2419 	.db #0x3c	; 60
      002A79 00                    2420 	.db #0x00	; 0
      002A7A 02                    2421 	.db #0x02	; 2
      002A7B 02                    2422 	.db #0x02	; 2
      002A7C 1E                    2423 	.db #0x1e	; 30
      002A7D 22                    2424 	.db #0x22	; 34
      002A7E 22                    2425 	.db #0x22	; 34
      002A7F 22                    2426 	.db #0x22	; 34
      002A80 1E                    2427 	.db #0x1e	; 30
      002A81 00                    2428 	.db #0x00	; 0
      002A82 00                    2429 	.db #0x00	; 0
      002A83 00                    2430 	.db #0x00	; 0
      002A84 1C                    2431 	.db #0x1c	; 28
      002A85 22                    2432 	.db #0x22	; 34
      002A86 02                    2433 	.db #0x02	; 2
      002A87 22                    2434 	.db #0x22	; 34
      002A88 1C                    2435 	.db #0x1c	; 28
      002A89 00                    2436 	.db #0x00	; 0
      002A8A 20                    2437 	.db #0x20	; 32
      002A8B 20                    2438 	.db #0x20	; 32
      002A8C 3C                    2439 	.db #0x3c	; 60
      002A8D 22                    2440 	.db #0x22	; 34
      002A8E 22                    2441 	.db #0x22	; 34
      002A8F 22                    2442 	.db #0x22	; 34
      002A90 3C                    2443 	.db #0x3c	; 60
      002A91 00                    2444 	.db #0x00	; 0
      002A92 00                    2445 	.db #0x00	; 0
      002A93 00                    2446 	.db #0x00	; 0
      002A94 1C                    2447 	.db #0x1c	; 28
      002A95 22                    2448 	.db #0x22	; 34
      002A96 1E                    2449 	.db #0x1e	; 30
      002A97 02                    2450 	.db #0x02	; 2
      002A98 1C                    2451 	.db #0x1c	; 28
      002A99 00                    2452 	.db #0x00	; 0
      002A9A 18                    2453 	.db #0x18	; 24
      002A9B 04                    2454 	.db #0x04	; 4
      002A9C 04                    2455 	.db #0x04	; 4
      002A9D 1E                    2456 	.db #0x1e	; 30
      002A9E 04                    2457 	.db #0x04	; 4
      002A9F 04                    2458 	.db #0x04	; 4
      002AA0 04                    2459 	.db #0x04	; 4
      002AA1 00                    2460 	.db #0x00	; 0
      002AA2 00                    2461 	.db #0x00	; 0
      002AA3 00                    2462 	.db #0x00	; 0
      002AA4 3C                    2463 	.db #0x3c	; 60
      002AA5 22                    2464 	.db #0x22	; 34
      002AA6 22                    2465 	.db #0x22	; 34
      002AA7 3C                    2466 	.db #0x3c	; 60
      002AA8 20                    2467 	.db #0x20	; 32
      002AA9 1C                    2468 	.db #0x1c	; 28
      002AAA 02                    2469 	.db #0x02	; 2
      002AAB 02                    2470 	.db #0x02	; 2
      002AAC 0E                    2471 	.db #0x0e	; 14
      002AAD 12                    2472 	.db #0x12	; 18
      002AAE 12                    2473 	.db #0x12	; 18
      002AAF 12                    2474 	.db #0x12	; 18
      002AB0 12                    2475 	.db #0x12	; 18
      002AB1 00                    2476 	.db #0x00	; 0
      002AB2 08                    2477 	.db #0x08	; 8
      002AB3 00                    2478 	.db #0x00	; 0
      002AB4 08                    2479 	.db #0x08	; 8
      002AB5 08                    2480 	.db #0x08	; 8
      002AB6 08                    2481 	.db #0x08	; 8
      002AB7 08                    2482 	.db #0x08	; 8
      002AB8 18                    2483 	.db #0x18	; 24
      002AB9 00                    2484 	.db #0x00	; 0
      002ABA 10                    2485 	.db #0x10	; 16
      002ABB 00                    2486 	.db #0x00	; 0
      002ABC 18                    2487 	.db #0x18	; 24
      002ABD 10                    2488 	.db #0x10	; 16
      002ABE 10                    2489 	.db #0x10	; 16
      002ABF 10                    2490 	.db #0x10	; 16
      002AC0 12                    2491 	.db #0x12	; 18
      002AC1 0C                    2492 	.db #0x0c	; 12
      002AC2 02                    2493 	.db #0x02	; 2
      002AC3 02                    2494 	.db #0x02	; 2
      002AC4 12                    2495 	.db #0x12	; 18
      002AC5 0A                    2496 	.db #0x0a	; 10
      002AC6 06                    2497 	.db #0x06	; 6
      002AC7 0A                    2498 	.db #0x0a	; 10
      002AC8 12                    2499 	.db #0x12	; 18
      002AC9 00                    2500 	.db #0x00	; 0
      002ACA 08                    2501 	.db #0x08	; 8
      002ACB 08                    2502 	.db #0x08	; 8
      002ACC 08                    2503 	.db #0x08	; 8
      002ACD 08                    2504 	.db #0x08	; 8
      002ACE 08                    2505 	.db #0x08	; 8
      002ACF 08                    2506 	.db #0x08	; 8
      002AD0 18                    2507 	.db #0x18	; 24
      002AD1 00                    2508 	.db #0x00	; 0
      002AD2 00                    2509 	.db #0x00	; 0
      002AD3 00                    2510 	.db #0x00	; 0
      002AD4 16                    2511 	.db #0x16	; 22
      002AD5 2A                    2512 	.db #0x2a	; 42
      002AD6 2A                    2513 	.db #0x2a	; 42
      002AD7 22                    2514 	.db #0x22	; 34
      002AD8 22                    2515 	.db #0x22	; 34
      002AD9 00                    2516 	.db #0x00	; 0
      002ADA 00                    2517 	.db #0x00	; 0
      002ADB 00                    2518 	.db #0x00	; 0
      002ADC 0E                    2519 	.db #0x0e	; 14
      002ADD 12                    2520 	.db #0x12	; 18
      002ADE 12                    2521 	.db #0x12	; 18
      002ADF 12                    2522 	.db #0x12	; 18
      002AE0 12                    2523 	.db #0x12	; 18
      002AE1 00                    2524 	.db #0x00	; 0
      002AE2 00                    2525 	.db #0x00	; 0
      002AE3 00                    2526 	.db #0x00	; 0
      002AE4 1C                    2527 	.db #0x1c	; 28
      002AE5 22                    2528 	.db #0x22	; 34
      002AE6 22                    2529 	.db #0x22	; 34
      002AE7 22                    2530 	.db #0x22	; 34
      002AE8 1C                    2531 	.db #0x1c	; 28
      002AE9 00                    2532 	.db #0x00	; 0
      002AEA 00                    2533 	.db #0x00	; 0
      002AEB 00                    2534 	.db #0x00	; 0
      002AEC 1E                    2535 	.db #0x1e	; 30
      002AED 22                    2536 	.db #0x22	; 34
      002AEE 22                    2537 	.db #0x22	; 34
      002AEF 22                    2538 	.db #0x22	; 34
      002AF0 1E                    2539 	.db #0x1e	; 30
      002AF1 02                    2540 	.db #0x02	; 2
      002AF2 00                    2541 	.db #0x00	; 0
      002AF3 00                    2542 	.db #0x00	; 0
      002AF4 3C                    2543 	.db #0x3c	; 60
      002AF5 22                    2544 	.db #0x22	; 34
      002AF6 22                    2545 	.db #0x22	; 34
      002AF7 22                    2546 	.db #0x22	; 34
      002AF8 3C                    2547 	.db #0x3c	; 60
      002AF9 20                    2548 	.db #0x20	; 32
      002AFA 00                    2549 	.db #0x00	; 0
      002AFB 00                    2550 	.db #0x00	; 0
      002AFC 1A                    2551 	.db #0x1a	; 26
      002AFD 24                    2552 	.db #0x24	; 36
      002AFE 04                    2553 	.db #0x04	; 4
      002AFF 04                    2554 	.db #0x04	; 4
      002B00 0E                    2555 	.db #0x0e	; 14
      002B01 00                    2556 	.db #0x00	; 0
      002B02 00                    2557 	.db #0x00	; 0
      002B03 00                    2558 	.db #0x00	; 0
      002B04 1C                    2559 	.db #0x1c	; 28
      002B05 02                    2560 	.db #0x02	; 2
      002B06 1C                    2561 	.db #0x1c	; 28
      002B07 20                    2562 	.db #0x20	; 32
      002B08 1C                    2563 	.db #0x1c	; 28
      002B09 00                    2564 	.db #0x00	; 0
      002B0A 00                    2565 	.db #0x00	; 0
      002B0B 04                    2566 	.db #0x04	; 4
      002B0C 1E                    2567 	.db #0x1e	; 30
      002B0D 04                    2568 	.db #0x04	; 4
      002B0E 04                    2569 	.db #0x04	; 4
      002B0F 14                    2570 	.db #0x14	; 20
      002B10 08                    2571 	.db #0x08	; 8
      002B11 00                    2572 	.db #0x00	; 0
      002B12 00                    2573 	.db #0x00	; 0
      002B13 00                    2574 	.db #0x00	; 0
      002B14 12                    2575 	.db #0x12	; 18
      002B15 12                    2576 	.db #0x12	; 18
      002B16 12                    2577 	.db #0x12	; 18
      002B17 1A                    2578 	.db #0x1a	; 26
      002B18 14                    2579 	.db #0x14	; 20
      002B19 00                    2580 	.db #0x00	; 0
      002B1A 00                    2581 	.db #0x00	; 0
      002B1B 00                    2582 	.db #0x00	; 0
      002B1C 22                    2583 	.db #0x22	; 34
      002B1D 22                    2584 	.db #0x22	; 34
      002B1E 22                    2585 	.db #0x22	; 34
      002B1F 14                    2586 	.db #0x14	; 20
      002B20 08                    2587 	.db #0x08	; 8
      002B21 00                    2588 	.db #0x00	; 0
      002B22 00                    2589 	.db #0x00	; 0
      002B23 00                    2590 	.db #0x00	; 0
      002B24 22                    2591 	.db #0x22	; 34
      002B25 22                    2592 	.db #0x22	; 34
      002B26 2A                    2593 	.db #0x2a	; 42
      002B27 3E                    2594 	.db #0x3e	; 62
      002B28 14                    2595 	.db #0x14	; 20
      002B29 00                    2596 	.db #0x00	; 0
      002B2A 00                    2597 	.db #0x00	; 0
      002B2B 00                    2598 	.db #0x00	; 0
      002B2C 12                    2599 	.db #0x12	; 18
      002B2D 12                    2600 	.db #0x12	; 18
      002B2E 0C                    2601 	.db #0x0c	; 12
      002B2F 12                    2602 	.db #0x12	; 18
      002B30 12                    2603 	.db #0x12	; 18
      002B31 00                    2604 	.db #0x00	; 0
      002B32 00                    2605 	.db #0x00	; 0
      002B33 00                    2606 	.db #0x00	; 0
      002B34 12                    2607 	.db #0x12	; 18
      002B35 12                    2608 	.db #0x12	; 18
      002B36 12                    2609 	.db #0x12	; 18
      002B37 1C                    2610 	.db #0x1c	; 28
      002B38 08                    2611 	.db #0x08	; 8
      002B39 06                    2612 	.db #0x06	; 6
      002B3A 00                    2613 	.db #0x00	; 0
      002B3B 00                    2614 	.db #0x00	; 0
      002B3C 1E                    2615 	.db #0x1e	; 30
      002B3D 10                    2616 	.db #0x10	; 16
      002B3E 0C                    2617 	.db #0x0c	; 12
      002B3F 02                    2618 	.db #0x02	; 2
      002B40 1E                    2619 	.db #0x1e	; 30
      002B41 00                    2620 	.db #0x00	; 0
      002B42 18                    2621 	.db #0x18	; 24
      002B43 04                    2622 	.db #0x04	; 4
      002B44 04                    2623 	.db #0x04	; 4
      002B45 06                    2624 	.db #0x06	; 6
      002B46 04                    2625 	.db #0x04	; 4
      002B47 04                    2626 	.db #0x04	; 4
      002B48 18                    2627 	.db #0x18	; 24
      002B49 00                    2628 	.db #0x00	; 0
      002B4A 08                    2629 	.db #0x08	; 8
      002B4B 08                    2630 	.db #0x08	; 8
      002B4C 08                    2631 	.db #0x08	; 8
      002B4D 00                    2632 	.db #0x00	; 0
      002B4E 08                    2633 	.db #0x08	; 8
      002B4F 08                    2634 	.db #0x08	; 8
      002B50 08                    2635 	.db #0x08	; 8
      002B51 00                    2636 	.db #0x00	; 0
      002B52 0C                    2637 	.db #0x0c	; 12
      002B53 10                    2638 	.db #0x10	; 16
      002B54 10                    2639 	.db #0x10	; 16
      002B55 30                    2640 	.db #0x30	; 48	'0'
      002B56 10                    2641 	.db #0x10	; 16
      002B57 10                    2642 	.db #0x10	; 16
      002B58 0C                    2643 	.db #0x0c	; 12
      002B59 00                    2644 	.db #0x00	; 0
      002B5A 14                    2645 	.db #0x14	; 20
      002B5B 0A                    2646 	.db #0x0a	; 10
      002B5C 00                    2647 	.db #0x00	; 0
      002B5D 00                    2648 	.db #0x00	; 0
      002B5E 00                    2649 	.db #0x00	; 0
      002B5F 00                    2650 	.db #0x00	; 0
      002B60 00                    2651 	.db #0x00	; 0
      002B61 00                    2652 	.db #0x00	; 0
      002B62 08                    2653 	.db #0x08	; 8
      002B63 1C                    2654 	.db #0x1c	; 28
      002B64 36                    2655 	.db #0x36	; 54	'6'
      002B65 22                    2656 	.db #0x22	; 34
      002B66 22                    2657 	.db #0x22	; 34
      002B67 3E                    2658 	.db #0x3e	; 62
      002B68 00                    2659 	.db #0x00	; 0
      002B69 00                    2660 	.db #0x00	; 0
      002B6A 1C                    2661 	.db #0x1c	; 28
      002B6B 22                    2662 	.db #0x22	; 34
      002B6C 02                    2663 	.db #0x02	; 2
      002B6D 02                    2664 	.db #0x02	; 2
      002B6E 22                    2665 	.db #0x22	; 34
      002B6F 1C                    2666 	.db #0x1c	; 28
      002B70 08                    2667 	.db #0x08	; 8
      002B71 0C                    2668 	.db #0x0c	; 12
      002B72 12                    2669 	.db #0x12	; 18
      002B73 00                    2670 	.db #0x00	; 0
      002B74 12                    2671 	.db #0x12	; 18
      002B75 12                    2672 	.db #0x12	; 18
      002B76 12                    2673 	.db #0x12	; 18
      002B77 1A                    2674 	.db #0x1a	; 26
      002B78 14                    2675 	.db #0x14	; 20
      002B79 00                    2676 	.db #0x00	; 0
      002B7A 30                    2677 	.db #0x30	; 48	'0'
      002B7B 00                    2678 	.db #0x00	; 0
      002B7C 1C                    2679 	.db #0x1c	; 28
      002B7D 22                    2680 	.db #0x22	; 34
      002B7E 1E                    2681 	.db #0x1e	; 30
      002B7F 02                    2682 	.db #0x02	; 2
      002B80 1C                    2683 	.db #0x1c	; 28
      002B81 00                    2684 	.db #0x00	; 0
      002B82 1C                    2685 	.db #0x1c	; 28
      002B83 00                    2686 	.db #0x00	; 0
      002B84 1C                    2687 	.db #0x1c	; 28
      002B85 20                    2688 	.db #0x20	; 32
      002B86 3C                    2689 	.db #0x3c	; 60
      002B87 22                    2690 	.db #0x22	; 34
      002B88 3C                    2691 	.db #0x3c	; 60
      002B89 00                    2692 	.db #0x00	; 0
      002B8A 14                    2693 	.db #0x14	; 20
      002B8B 00                    2694 	.db #0x00	; 0
      002B8C 1C                    2695 	.db #0x1c	; 28
      002B8D 20                    2696 	.db #0x20	; 32
      002B8E 3C                    2697 	.db #0x3c	; 60
      002B8F 22                    2698 	.db #0x22	; 34
      002B90 3C                    2699 	.db #0x3c	; 60
      002B91 00                    2700 	.db #0x00	; 0
      002B92 0C                    2701 	.db #0x0c	; 12
      002B93 00                    2702 	.db #0x00	; 0
      002B94 1C                    2703 	.db #0x1c	; 28
      002B95 20                    2704 	.db #0x20	; 32
      002B96 3C                    2705 	.db #0x3c	; 60
      002B97 22                    2706 	.db #0x22	; 34
      002B98 3C                    2707 	.db #0x3c	; 60
      002B99 00                    2708 	.db #0x00	; 0
      002B9A 1C                    2709 	.db #0x1c	; 28
      002B9B 14                    2710 	.db #0x14	; 20
      002B9C 1C                    2711 	.db #0x1c	; 28
      002B9D 20                    2712 	.db #0x20	; 32
      002B9E 3C                    2713 	.db #0x3c	; 60
      002B9F 22                    2714 	.db #0x22	; 34
      002BA0 3C                    2715 	.db #0x3c	; 60
      002BA1 00                    2716 	.db #0x00	; 0
      002BA2 00                    2717 	.db #0x00	; 0
      002BA3 1C                    2718 	.db #0x1c	; 28
      002BA4 22                    2719 	.db #0x22	; 34
      002BA5 02                    2720 	.db #0x02	; 2
      002BA6 22                    2721 	.db #0x22	; 34
      002BA7 1C                    2722 	.db #0x1c	; 28
      002BA8 08                    2723 	.db #0x08	; 8
      002BA9 0C                    2724 	.db #0x0c	; 12
      002BAA 1C                    2725 	.db #0x1c	; 28
      002BAB 00                    2726 	.db #0x00	; 0
      002BAC 1C                    2727 	.db #0x1c	; 28
      002BAD 22                    2728 	.db #0x22	; 34
      002BAE 1E                    2729 	.db #0x1e	; 30
      002BAF 02                    2730 	.db #0x02	; 2
      002BB0 1C                    2731 	.db #0x1c	; 28
      002BB1 00                    2732 	.db #0x00	; 0
      002BB2 14                    2733 	.db #0x14	; 20
      002BB3 00                    2734 	.db #0x00	; 0
      002BB4 1C                    2735 	.db #0x1c	; 28
      002BB5 22                    2736 	.db #0x22	; 34
      002BB6 1E                    2737 	.db #0x1e	; 30
      002BB7 02                    2738 	.db #0x02	; 2
      002BB8 1C                    2739 	.db #0x1c	; 28
      002BB9 00                    2740 	.db #0x00	; 0
      002BBA 0C                    2741 	.db #0x0c	; 12
      002BBB 00                    2742 	.db #0x00	; 0
      002BBC 1C                    2743 	.db #0x1c	; 28
      002BBD 22                    2744 	.db #0x22	; 34
      002BBE 1E                    2745 	.db #0x1e	; 30
      002BBF 02                    2746 	.db #0x02	; 2
      002BC0 1C                    2747 	.db #0x1c	; 28
      002BC1 00                    2748 	.db #0x00	; 0
      002BC2 14                    2749 	.db #0x14	; 20
      002BC3 00                    2750 	.db #0x00	; 0
      002BC4 08                    2751 	.db #0x08	; 8
      002BC5 08                    2752 	.db #0x08	; 8
      002BC6 08                    2753 	.db #0x08	; 8
      002BC7 08                    2754 	.db #0x08	; 8
      002BC8 18                    2755 	.db #0x18	; 24
      002BC9 00                    2756 	.db #0x00	; 0
      002BCA 08                    2757 	.db #0x08	; 8
      002BCB 14                    2758 	.db #0x14	; 20
      002BCC 00                    2759 	.db #0x00	; 0
      002BCD 08                    2760 	.db #0x08	; 8
      002BCE 08                    2761 	.db #0x08	; 8
      002BCF 08                    2762 	.db #0x08	; 8
      002BD0 18                    2763 	.db #0x18	; 24
      002BD1 00                    2764 	.db #0x00	; 0
      002BD2 04                    2765 	.db #0x04	; 4
      002BD3 00                    2766 	.db #0x00	; 0
      002BD4 08                    2767 	.db #0x08	; 8
      002BD5 08                    2768 	.db #0x08	; 8
      002BD6 08                    2769 	.db #0x08	; 8
      002BD7 08                    2770 	.db #0x08	; 8
      002BD8 18                    2771 	.db #0x18	; 24
      002BD9 00                    2772 	.db #0x00	; 0
      002BDA 14                    2773 	.db #0x14	; 20
      002BDB 00                    2774 	.db #0x00	; 0
      002BDC 08                    2775 	.db #0x08	; 8
      002BDD 14                    2776 	.db #0x14	; 20
      002BDE 22                    2777 	.db #0x22	; 34
      002BDF 3E                    2778 	.db #0x3e	; 62
      002BE0 22                    2779 	.db #0x22	; 34
      002BE1 00                    2780 	.db #0x00	; 0
      002BE2 1C                    2781 	.db #0x1c	; 28
      002BE3 14                    2782 	.db #0x14	; 20
      002BE4 1C                    2783 	.db #0x1c	; 28
      002BE5 36                    2784 	.db #0x36	; 54	'6'
      002BE6 22                    2785 	.db #0x22	; 34
      002BE7 3E                    2786 	.db #0x3e	; 62
      002BE8 22                    2787 	.db #0x22	; 34
      002BE9 00                    2788 	.db #0x00	; 0
      002BEA 30                    2789 	.db #0x30	; 48	'0'
      002BEB 00                    2790 	.db #0x00	; 0
      002BEC 3E                    2791 	.db #0x3e	; 62
      002BED 02                    2792 	.db #0x02	; 2
      002BEE 1E                    2793 	.db #0x1e	; 30
      002BEF 02                    2794 	.db #0x02	; 2
      002BF0 3E                    2795 	.db #0x3e	; 62
      002BF1 00                    2796 	.db #0x00	; 0
      002BF2 00                    2797 	.db #0x00	; 0
      002BF3 00                    2798 	.db #0x00	; 0
      002BF4 1E                    2799 	.db #0x1e	; 30
      002BF5 28                    2800 	.db #0x28	; 40
      002BF6 3E                    2801 	.db #0x3e	; 62
      002BF7 0A                    2802 	.db #0x0a	; 10
      002BF8 3C                    2803 	.db #0x3c	; 60
      002BF9 00                    2804 	.db #0x00	; 0
      002BFA 3C                    2805 	.db #0x3c	; 60
      002BFB 0A                    2806 	.db #0x0a	; 10
      002BFC 0A                    2807 	.db #0x0a	; 10
      002BFD 3E                    2808 	.db #0x3e	; 62
      002BFE 0A                    2809 	.db #0x0a	; 10
      002BFF 0A                    2810 	.db #0x0a	; 10
      002C00 3A                    2811 	.db #0x3a	; 58
      002C01 00                    2812 	.db #0x00	; 0
      002C02 1C                    2813 	.db #0x1c	; 28
      002C03 00                    2814 	.db #0x00	; 0
      002C04 0C                    2815 	.db #0x0c	; 12
      002C05 12                    2816 	.db #0x12	; 18
      002C06 12                    2817 	.db #0x12	; 18
      002C07 12                    2818 	.db #0x12	; 18
      002C08 0C                    2819 	.db #0x0c	; 12
      002C09 00                    2820 	.db #0x00	; 0
      002C0A 14                    2821 	.db #0x14	; 20
      002C0B 00                    2822 	.db #0x00	; 0
      002C0C 0C                    2823 	.db #0x0c	; 12
      002C0D 12                    2824 	.db #0x12	; 18
      002C0E 12                    2825 	.db #0x12	; 18
      002C0F 12                    2826 	.db #0x12	; 18
      002C10 0C                    2827 	.db #0x0c	; 12
      002C11 00                    2828 	.db #0x00	; 0
      002C12 06                    2829 	.db #0x06	; 6
      002C13 00                    2830 	.db #0x00	; 0
      002C14 0C                    2831 	.db #0x0c	; 12
      002C15 12                    2832 	.db #0x12	; 18
      002C16 12                    2833 	.db #0x12	; 18
      002C17 12                    2834 	.db #0x12	; 18
      002C18 0C                    2835 	.db #0x0c	; 12
      002C19 00                    2836 	.db #0x00	; 0
      002C1A 1C                    2837 	.db #0x1c	; 28
      002C1B 00                    2838 	.db #0x00	; 0
      002C1C 12                    2839 	.db #0x12	; 18
      002C1D 12                    2840 	.db #0x12	; 18
      002C1E 12                    2841 	.db #0x12	; 18
      002C1F 1A                    2842 	.db #0x1a	; 26
      002C20 14                    2843 	.db #0x14	; 20
      002C21 00                    2844 	.db #0x00	; 0
      002C22 06                    2845 	.db #0x06	; 6
      002C23 00                    2846 	.db #0x00	; 0
      002C24 12                    2847 	.db #0x12	; 18
      002C25 12                    2848 	.db #0x12	; 18
      002C26 12                    2849 	.db #0x12	; 18
      002C27 1A                    2850 	.db #0x1a	; 26
      002C28 14                    2851 	.db #0x14	; 20
      002C29 00                    2852 	.db #0x00	; 0
      002C2A 14                    2853 	.db #0x14	; 20
      002C2B 00                    2854 	.db #0x00	; 0
      002C2C 12                    2855 	.db #0x12	; 18
      002C2D 12                    2856 	.db #0x12	; 18
      002C2E 12                    2857 	.db #0x12	; 18
      002C2F 1C                    2858 	.db #0x1c	; 28
      002C30 08                    2859 	.db #0x08	; 8
      002C31 06                    2860 	.db #0x06	; 6
      002C32 12                    2861 	.db #0x12	; 18
      002C33 0C                    2862 	.db #0x0c	; 12
      002C34 12                    2863 	.db #0x12	; 18
      002C35 12                    2864 	.db #0x12	; 18
      002C36 12                    2865 	.db #0x12	; 18
      002C37 12                    2866 	.db #0x12	; 18
      002C38 0C                    2867 	.db #0x0c	; 12
      002C39 00                    2868 	.db #0x00	; 0
      002C3A 14                    2869 	.db #0x14	; 20
      002C3B 00                    2870 	.db #0x00	; 0
      002C3C 12                    2871 	.db #0x12	; 18
      002C3D 12                    2872 	.db #0x12	; 18
      002C3E 12                    2873 	.db #0x12	; 18
      002C3F 12                    2874 	.db #0x12	; 18
      002C40 0C                    2875 	.db #0x0c	; 12
      002C41 00                    2876 	.db #0x00	; 0
      002C42 00                    2877 	.db #0x00	; 0
      002C43 08                    2878 	.db #0x08	; 8
      002C44 1C                    2879 	.db #0x1c	; 28
      002C45 02                    2880 	.db #0x02	; 2
      002C46 02                    2881 	.db #0x02	; 2
      002C47 1C                    2882 	.db #0x1c	; 28
      002C48 08                    2883 	.db #0x08	; 8
      002C49 00                    2884 	.db #0x00	; 0
      002C4A 18                    2885 	.db #0x18	; 24
      002C4B 24                    2886 	.db #0x24	; 36
      002C4C 04                    2887 	.db #0x04	; 4
      002C4D 1E                    2888 	.db #0x1e	; 30
      002C4E 04                    2889 	.db #0x04	; 4
      002C4F 24                    2890 	.db #0x24	; 36
      002C50 3A                    2891 	.db #0x3a	; 58
      002C51 00                    2892 	.db #0x00	; 0
      002C52 22                    2893 	.db #0x22	; 34
      002C53 14                    2894 	.db #0x14	; 20
      002C54 08                    2895 	.db #0x08	; 8
      002C55 3E                    2896 	.db #0x3e	; 62
      002C56 08                    2897 	.db #0x08	; 8
      002C57 3E                    2898 	.db #0x3e	; 62
      002C58 08                    2899 	.db #0x08	; 8
      002C59 00                    2900 	.db #0x00	; 0
      002C5A 06                    2901 	.db #0x06	; 6
      002C5B 0A                    2902 	.db #0x0a	; 10
      002C5C 0A                    2903 	.db #0x0a	; 10
      002C5D 16                    2904 	.db #0x16	; 22
      002C5E 3A                    2905 	.db #0x3a	; 58
      002C5F 12                    2906 	.db #0x12	; 18
      002C60 12                    2907 	.db #0x12	; 18
      002C61 00                    2908 	.db #0x00	; 0
      002C62 10                    2909 	.db #0x10	; 16
      002C63 28                    2910 	.db #0x28	; 40
      002C64 08                    2911 	.db #0x08	; 8
      002C65 1C                    2912 	.db #0x1c	; 28
      002C66 08                    2913 	.db #0x08	; 8
      002C67 08                    2914 	.db #0x08	; 8
      002C68 0A                    2915 	.db #0x0a	; 10
      002C69 04                    2916 	.db #0x04	; 4
      002C6A 18                    2917 	.db #0x18	; 24
      002C6B 00                    2918 	.db #0x00	; 0
      002C6C 1C                    2919 	.db #0x1c	; 28
      002C6D 20                    2920 	.db #0x20	; 32
      002C6E 3C                    2921 	.db #0x3c	; 60
      002C6F 22                    2922 	.db #0x22	; 34
      002C70 3C                    2923 	.db #0x3c	; 60
      002C71 00                    2924 	.db #0x00	; 0
      002C72 18                    2925 	.db #0x18	; 24
      002C73 00                    2926 	.db #0x00	; 0
      002C74 08                    2927 	.db #0x08	; 8
      002C75 08                    2928 	.db #0x08	; 8
      002C76 08                    2929 	.db #0x08	; 8
      002C77 08                    2930 	.db #0x08	; 8
      002C78 18                    2931 	.db #0x18	; 24
      002C79 00                    2932 	.db #0x00	; 0
      002C7A 18                    2933 	.db #0x18	; 24
      002C7B 00                    2934 	.db #0x00	; 0
      002C7C 0C                    2935 	.db #0x0c	; 12
      002C7D 12                    2936 	.db #0x12	; 18
      002C7E 12                    2937 	.db #0x12	; 18
      002C7F 12                    2938 	.db #0x12	; 18
      002C80 0C                    2939 	.db #0x0c	; 12
      002C81 00                    2940 	.db #0x00	; 0
      002C82 18                    2941 	.db #0x18	; 24
      002C83 00                    2942 	.db #0x00	; 0
      002C84 12                    2943 	.db #0x12	; 18
      002C85 12                    2944 	.db #0x12	; 18
      002C86 12                    2945 	.db #0x12	; 18
      002C87 1A                    2946 	.db #0x1a	; 26
      002C88 14                    2947 	.db #0x14	; 20
      002C89 00                    2948 	.db #0x00	; 0
      002C8A 14                    2949 	.db #0x14	; 20
      002C8B 0A                    2950 	.db #0x0a	; 10
      002C8C 00                    2951 	.db #0x00	; 0
      002C8D 0E                    2952 	.db #0x0e	; 14
      002C8E 12                    2953 	.db #0x12	; 18
      002C8F 12                    2954 	.db #0x12	; 18
      002C90 12                    2955 	.db #0x12	; 18
      002C91 00                    2956 	.db #0x00	; 0
      002C92 14                    2957 	.db #0x14	; 20
      002C93 0A                    2958 	.db #0x0a	; 10
      002C94 00                    2959 	.db #0x00	; 0
      002C95 12                    2960 	.db #0x12	; 18
      002C96 16                    2961 	.db #0x16	; 22
      002C97 1A                    2962 	.db #0x1a	; 26
      002C98 12                    2963 	.db #0x12	; 18
      002C99 00                    2964 	.db #0x00	; 0
      002C9A 1C                    2965 	.db #0x1c	; 28
      002C9B 20                    2966 	.db #0x20	; 32
      002C9C 3C                    2967 	.db #0x3c	; 60
      002C9D 22                    2968 	.db #0x22	; 34
      002C9E 3C                    2969 	.db #0x3c	; 60
      002C9F 00                    2970 	.db #0x00	; 0
      002CA0 3C                    2971 	.db #0x3c	; 60
      002CA1 00                    2972 	.db #0x00	; 0
      002CA2 0C                    2973 	.db #0x0c	; 12
      002CA3 12                    2974 	.db #0x12	; 18
      002CA4 12                    2975 	.db #0x12	; 18
      002CA5 12                    2976 	.db #0x12	; 18
      002CA6 0C                    2977 	.db #0x0c	; 12
      002CA7 00                    2978 	.db #0x00	; 0
      002CA8 1E                    2979 	.db #0x1e	; 30
      002CA9 00                    2980 	.db #0x00	; 0
      002CAA 08                    2981 	.db #0x08	; 8
      002CAB 00                    2982 	.db #0x00	; 0
      002CAC 08                    2983 	.db #0x08	; 8
      002CAD 0C                    2984 	.db #0x0c	; 12
      002CAE 02                    2985 	.db #0x02	; 2
      002CAF 22                    2986 	.db #0x22	; 34
      002CB0 1C                    2987 	.db #0x1c	; 28
      002CB1 00                    2988 	.db #0x00	; 0
      002CB2 00                    2989 	.db #0x00	; 0
      002CB3 00                    2990 	.db #0x00	; 0
      002CB4 3E                    2991 	.db #0x3e	; 62
      002CB5 02                    2992 	.db #0x02	; 2
      002CB6 02                    2993 	.db #0x02	; 2
      002CB7 02                    2994 	.db #0x02	; 2
      002CB8 00                    2995 	.db #0x00	; 0
      002CB9 00                    2996 	.db #0x00	; 0
      002CBA 00                    2997 	.db #0x00	; 0
      002CBB 00                    2998 	.db #0x00	; 0
      002CBC 3F                    2999 	.db #0x3f	; 63
      002CBD 20                    3000 	.db #0x20	; 32
      002CBE 20                    3001 	.db #0x20	; 32
      002CBF 00                    3002 	.db #0x00	; 0
      002CC0 00                    3003 	.db #0x00	; 0
      002CC1 00                    3004 	.db #0x00	; 0
      002CC2 02                    3005 	.db #0x02	; 2
      002CC3 12                    3006 	.db #0x12	; 18
      002CC4 0A                    3007 	.db #0x0a	; 10
      002CC5 1C                    3008 	.db #0x1c	; 28
      002CC6 22                    3009 	.db #0x22	; 34
      002CC7 10                    3010 	.db #0x10	; 16
      002CC8 38                    3011 	.db #0x38	; 56	'8'
      002CC9 00                    3012 	.db #0x00	; 0
      002CCA 02                    3013 	.db #0x02	; 2
      002CCB 12                    3014 	.db #0x12	; 18
      002CCC 0A                    3015 	.db #0x0a	; 10
      002CCD 34                    3016 	.db #0x34	; 52	'4'
      002CCE 2A                    3017 	.db #0x2a	; 42
      002CCF 38                    3018 	.db #0x38	; 56	'8'
      002CD0 20                    3019 	.db #0x20	; 32
      002CD1 00                    3020 	.db #0x00	; 0
      002CD2 08                    3021 	.db #0x08	; 8
      002CD3 00                    3022 	.db #0x00	; 0
      002CD4 08                    3023 	.db #0x08	; 8
      002CD5 08                    3024 	.db #0x08	; 8
      002CD6 1C                    3025 	.db #0x1c	; 28
      002CD7 1C                    3026 	.db #0x1c	; 28
      002CD8 08                    3027 	.db #0x08	; 8
      002CD9 00                    3028 	.db #0x00	; 0
      002CDA 00                    3029 	.db #0x00	; 0
      002CDB 00                    3030 	.db #0x00	; 0
      002CDC 24                    3031 	.db #0x24	; 36
      002CDD 12                    3032 	.db #0x12	; 18
      002CDE 24                    3033 	.db #0x24	; 36
      002CDF 00                    3034 	.db #0x00	; 0
      002CE0 00                    3035 	.db #0x00	; 0
      002CE1 00                    3036 	.db #0x00	; 0
      002CE2 00                    3037 	.db #0x00	; 0
      002CE3 00                    3038 	.db #0x00	; 0
      002CE4 12                    3039 	.db #0x12	; 18
      002CE5 24                    3040 	.db #0x24	; 36
      002CE6 12                    3041 	.db #0x12	; 18
      002CE7 00                    3042 	.db #0x00	; 0
      002CE8 00                    3043 	.db #0x00	; 0
      002CE9 00                    3044 	.db #0x00	; 0
      002CEA 2A                    3045 	.db #0x2a	; 42
      002CEB 00                    3046 	.db #0x00	; 0
      002CEC 15                    3047 	.db #0x15	; 21
      002CED 00                    3048 	.db #0x00	; 0
      002CEE 2A                    3049 	.db #0x2a	; 42
      002CEF 00                    3050 	.db #0x00	; 0
      002CF0 15                    3051 	.db #0x15	; 21
      002CF1 00                    3052 	.db #0x00	; 0
      002CF2 2A                    3053 	.db #0x2a	; 42
      002CF3 15                    3054 	.db #0x15	; 21
      002CF4 2A                    3055 	.db #0x2a	; 42
      002CF5 15                    3056 	.db #0x15	; 21
      002CF6 2A                    3057 	.db #0x2a	; 42
      002CF7 15                    3058 	.db #0x15	; 21
      002CF8 2A                    3059 	.db #0x2a	; 42
      002CF9 15                    3060 	.db #0x15	; 21
      002CFA 15                    3061 	.db #0x15	; 21
      002CFB 3F                    3062 	.db #0x3f	; 63
      002CFC 2A                    3063 	.db #0x2a	; 42
      002CFD 3F                    3064 	.db #0x3f	; 63
      002CFE 15                    3065 	.db #0x15	; 21
      002CFF 3F                    3066 	.db #0x3f	; 63
      002D00 2A                    3067 	.db #0x2a	; 42
      002D01 3F                    3068 	.db #0x3f	; 63
      002D02 08                    3069 	.db #0x08	; 8
      002D03 08                    3070 	.db #0x08	; 8
      002D04 08                    3071 	.db #0x08	; 8
      002D05 08                    3072 	.db #0x08	; 8
      002D06 08                    3073 	.db #0x08	; 8
      002D07 08                    3074 	.db #0x08	; 8
      002D08 08                    3075 	.db #0x08	; 8
      002D09 08                    3076 	.db #0x08	; 8
      002D0A 08                    3077 	.db #0x08	; 8
      002D0B 08                    3078 	.db #0x08	; 8
      002D0C 08                    3079 	.db #0x08	; 8
      002D0D 0F                    3080 	.db #0x0f	; 15
      002D0E 08                    3081 	.db #0x08	; 8
      002D0F 08                    3082 	.db #0x08	; 8
      002D10 08                    3083 	.db #0x08	; 8
      002D11 08                    3084 	.db #0x08	; 8
      002D12 08                    3085 	.db #0x08	; 8
      002D13 0F                    3086 	.db #0x0f	; 15
      002D14 08                    3087 	.db #0x08	; 8
      002D15 0F                    3088 	.db #0x0f	; 15
      002D16 08                    3089 	.db #0x08	; 8
      002D17 08                    3090 	.db #0x08	; 8
      002D18 08                    3091 	.db #0x08	; 8
      002D19 08                    3092 	.db #0x08	; 8
      002D1A 0A                    3093 	.db #0x0a	; 10
      002D1B 0A                    3094 	.db #0x0a	; 10
      002D1C 0A                    3095 	.db #0x0a	; 10
      002D1D 0B                    3096 	.db #0x0b	; 11
      002D1E 0A                    3097 	.db #0x0a	; 10
      002D1F 0A                    3098 	.db #0x0a	; 10
      002D20 0A                    3099 	.db #0x0a	; 10
      002D21 0A                    3100 	.db #0x0a	; 10
      002D22 00                    3101 	.db #0x00	; 0
      002D23 00                    3102 	.db #0x00	; 0
      002D24 00                    3103 	.db #0x00	; 0
      002D25 0F                    3104 	.db #0x0f	; 15
      002D26 0A                    3105 	.db #0x0a	; 10
      002D27 0A                    3106 	.db #0x0a	; 10
      002D28 0A                    3107 	.db #0x0a	; 10
      002D29 0A                    3108 	.db #0x0a	; 10
      002D2A 00                    3109 	.db #0x00	; 0
      002D2B 0F                    3110 	.db #0x0f	; 15
      002D2C 08                    3111 	.db #0x08	; 8
      002D2D 0F                    3112 	.db #0x0f	; 15
      002D2E 08                    3113 	.db #0x08	; 8
      002D2F 08                    3114 	.db #0x08	; 8
      002D30 08                    3115 	.db #0x08	; 8
      002D31 08                    3116 	.db #0x08	; 8
      002D32 0A                    3117 	.db #0x0a	; 10
      002D33 0B                    3118 	.db #0x0b	; 11
      002D34 08                    3119 	.db #0x08	; 8
      002D35 0B                    3120 	.db #0x0b	; 11
      002D36 0A                    3121 	.db #0x0a	; 10
      002D37 0A                    3122 	.db #0x0a	; 10
      002D38 0A                    3123 	.db #0x0a	; 10
      002D39 0A                    3124 	.db #0x0a	; 10
      002D3A 0A                    3125 	.db #0x0a	; 10
      002D3B 0A                    3126 	.db #0x0a	; 10
      002D3C 0A                    3127 	.db #0x0a	; 10
      002D3D 0A                    3128 	.db #0x0a	; 10
      002D3E 0A                    3129 	.db #0x0a	; 10
      002D3F 0A                    3130 	.db #0x0a	; 10
      002D40 0A                    3131 	.db #0x0a	; 10
      002D41 0A                    3132 	.db #0x0a	; 10
      002D42 00                    3133 	.db #0x00	; 0
      002D43 0F                    3134 	.db #0x0f	; 15
      002D44 08                    3135 	.db #0x08	; 8
      002D45 0B                    3136 	.db #0x0b	; 11
      002D46 0A                    3137 	.db #0x0a	; 10
      002D47 0A                    3138 	.db #0x0a	; 10
      002D48 0A                    3139 	.db #0x0a	; 10
      002D49 0A                    3140 	.db #0x0a	; 10
      002D4A 0A                    3141 	.db #0x0a	; 10
      002D4B 0B                    3142 	.db #0x0b	; 11
      002D4C 08                    3143 	.db #0x08	; 8
      002D4D 0F                    3144 	.db #0x0f	; 15
      002D4E 00                    3145 	.db #0x00	; 0
      002D4F 00                    3146 	.db #0x00	; 0
      002D50 00                    3147 	.db #0x00	; 0
      002D51 00                    3148 	.db #0x00	; 0
      002D52 0A                    3149 	.db #0x0a	; 10
      002D53 0A                    3150 	.db #0x0a	; 10
      002D54 0A                    3151 	.db #0x0a	; 10
      002D55 0F                    3152 	.db #0x0f	; 15
      002D56 00                    3153 	.db #0x00	; 0
      002D57 00                    3154 	.db #0x00	; 0
      002D58 00                    3155 	.db #0x00	; 0
      002D59 00                    3156 	.db #0x00	; 0
      002D5A 08                    3157 	.db #0x08	; 8
      002D5B 0F                    3158 	.db #0x0f	; 15
      002D5C 08                    3159 	.db #0x08	; 8
      002D5D 0F                    3160 	.db #0x0f	; 15
      002D5E 00                    3161 	.db #0x00	; 0
      002D5F 00                    3162 	.db #0x00	; 0
      002D60 00                    3163 	.db #0x00	; 0
      002D61 00                    3164 	.db #0x00	; 0
      002D62 00                    3165 	.db #0x00	; 0
      002D63 00                    3166 	.db #0x00	; 0
      002D64 00                    3167 	.db #0x00	; 0
      002D65 0F                    3168 	.db #0x0f	; 15
      002D66 08                    3169 	.db #0x08	; 8
      002D67 08                    3170 	.db #0x08	; 8
      002D68 08                    3171 	.db #0x08	; 8
      002D69 08                    3172 	.db #0x08	; 8
      002D6A 08                    3173 	.db #0x08	; 8
      002D6B 08                    3174 	.db #0x08	; 8
      002D6C 08                    3175 	.db #0x08	; 8
      002D6D 38                    3176 	.db #0x38	; 56	'8'
      002D6E 00                    3177 	.db #0x00	; 0
      002D6F 00                    3178 	.db #0x00	; 0
      002D70 00                    3179 	.db #0x00	; 0
      002D71 00                    3180 	.db #0x00	; 0
      002D72 08                    3181 	.db #0x08	; 8
      002D73 08                    3182 	.db #0x08	; 8
      002D74 08                    3183 	.db #0x08	; 8
      002D75 3F                    3184 	.db #0x3f	; 63
      002D76 00                    3185 	.db #0x00	; 0
      002D77 00                    3186 	.db #0x00	; 0
      002D78 00                    3187 	.db #0x00	; 0
      002D79 00                    3188 	.db #0x00	; 0
      002D7A 00                    3189 	.db #0x00	; 0
      002D7B 00                    3190 	.db #0x00	; 0
      002D7C 00                    3191 	.db #0x00	; 0
      002D7D 3F                    3192 	.db #0x3f	; 63
      002D7E 08                    3193 	.db #0x08	; 8
      002D7F 08                    3194 	.db #0x08	; 8
      002D80 08                    3195 	.db #0x08	; 8
      002D81 08                    3196 	.db #0x08	; 8
      002D82 08                    3197 	.db #0x08	; 8
      002D83 08                    3198 	.db #0x08	; 8
      002D84 08                    3199 	.db #0x08	; 8
      002D85 38                    3200 	.db #0x38	; 56	'8'
      002D86 08                    3201 	.db #0x08	; 8
      002D87 08                    3202 	.db #0x08	; 8
      002D88 08                    3203 	.db #0x08	; 8
      002D89 08                    3204 	.db #0x08	; 8
      002D8A 00                    3205 	.db #0x00	; 0
      002D8B 00                    3206 	.db #0x00	; 0
      002D8C 00                    3207 	.db #0x00	; 0
      002D8D 3F                    3208 	.db #0x3f	; 63
      002D8E 00                    3209 	.db #0x00	; 0
      002D8F 00                    3210 	.db #0x00	; 0
      002D90 00                    3211 	.db #0x00	; 0
      002D91 00                    3212 	.db #0x00	; 0
      002D92 08                    3213 	.db #0x08	; 8
      002D93 08                    3214 	.db #0x08	; 8
      002D94 08                    3215 	.db #0x08	; 8
      002D95 3F                    3216 	.db #0x3f	; 63
      002D96 08                    3217 	.db #0x08	; 8
      002D97 08                    3218 	.db #0x08	; 8
      002D98 08                    3219 	.db #0x08	; 8
      002D99 08                    3220 	.db #0x08	; 8
      002D9A 08                    3221 	.db #0x08	; 8
      002D9B 38                    3222 	.db #0x38	; 56	'8'
      002D9C 08                    3223 	.db #0x08	; 8
      002D9D 38                    3224 	.db #0x38	; 56	'8'
      002D9E 08                    3225 	.db #0x08	; 8
      002D9F 08                    3226 	.db #0x08	; 8
      002DA0 08                    3227 	.db #0x08	; 8
      002DA1 08                    3228 	.db #0x08	; 8
      002DA2 0A                    3229 	.db #0x0a	; 10
      002DA3 0A                    3230 	.db #0x0a	; 10
      002DA4 0A                    3231 	.db #0x0a	; 10
      002DA5 3A                    3232 	.db #0x3a	; 58
      002DA6 0A                    3233 	.db #0x0a	; 10
      002DA7 0A                    3234 	.db #0x0a	; 10
      002DA8 0A                    3235 	.db #0x0a	; 10
      002DA9 0A                    3236 	.db #0x0a	; 10
      002DAA 0A                    3237 	.db #0x0a	; 10
      002DAB 3A                    3238 	.db #0x3a	; 58
      002DAC 02                    3239 	.db #0x02	; 2
      002DAD 3E                    3240 	.db #0x3e	; 62
      002DAE 00                    3241 	.db #0x00	; 0
      002DAF 00                    3242 	.db #0x00	; 0
      002DB0 00                    3243 	.db #0x00	; 0
      002DB1 00                    3244 	.db #0x00	; 0
      002DB2 00                    3245 	.db #0x00	; 0
      002DB3 3E                    3246 	.db #0x3e	; 62
      002DB4 02                    3247 	.db #0x02	; 2
      002DB5 3A                    3248 	.db #0x3a	; 58
      002DB6 0A                    3249 	.db #0x0a	; 10
      002DB7 0A                    3250 	.db #0x0a	; 10
      002DB8 0A                    3251 	.db #0x0a	; 10
      002DB9 0A                    3252 	.db #0x0a	; 10
      002DBA 0A                    3253 	.db #0x0a	; 10
      002DBB 3B                    3254 	.db #0x3b	; 59
      002DBC 00                    3255 	.db #0x00	; 0
      002DBD 3F                    3256 	.db #0x3f	; 63
      002DBE 00                    3257 	.db #0x00	; 0
      002DBF 00                    3258 	.db #0x00	; 0
      002DC0 00                    3259 	.db #0x00	; 0
      002DC1 00                    3260 	.db #0x00	; 0
      002DC2 00                    3261 	.db #0x00	; 0
      002DC3 3F                    3262 	.db #0x3f	; 63
      002DC4 00                    3263 	.db #0x00	; 0
      002DC5 3B                    3264 	.db #0x3b	; 59
      002DC6 0A                    3265 	.db #0x0a	; 10
      002DC7 0A                    3266 	.db #0x0a	; 10
      002DC8 0A                    3267 	.db #0x0a	; 10
      002DC9 0A                    3268 	.db #0x0a	; 10
      002DCA 0A                    3269 	.db #0x0a	; 10
      002DCB 3A                    3270 	.db #0x3a	; 58
      002DCC 02                    3271 	.db #0x02	; 2
      002DCD 3A                    3272 	.db #0x3a	; 58
      002DCE 0A                    3273 	.db #0x0a	; 10
      002DCF 0A                    3274 	.db #0x0a	; 10
      002DD0 0A                    3275 	.db #0x0a	; 10
      002DD1 0A                    3276 	.db #0x0a	; 10
      002DD2 00                    3277 	.db #0x00	; 0
      002DD3 3F                    3278 	.db #0x3f	; 63
      002DD4 00                    3279 	.db #0x00	; 0
      002DD5 3F                    3280 	.db #0x3f	; 63
      002DD6 00                    3281 	.db #0x00	; 0
      002DD7 00                    3282 	.db #0x00	; 0
      002DD8 00                    3283 	.db #0x00	; 0
      002DD9 00                    3284 	.db #0x00	; 0
      002DDA 0A                    3285 	.db #0x0a	; 10
      002DDB 3B                    3286 	.db #0x3b	; 59
      002DDC 00                    3287 	.db #0x00	; 0
      002DDD 3B                    3288 	.db #0x3b	; 59
      002DDE 0A                    3289 	.db #0x0a	; 10
      002DDF 0A                    3290 	.db #0x0a	; 10
      002DE0 0A                    3291 	.db #0x0a	; 10
      002DE1 0A                    3292 	.db #0x0a	; 10
      002DE2 08                    3293 	.db #0x08	; 8
      002DE3 3F                    3294 	.db #0x3f	; 63
      002DE4 00                    3295 	.db #0x00	; 0
      002DE5 3F                    3296 	.db #0x3f	; 63
      002DE6 00                    3297 	.db #0x00	; 0
      002DE7 00                    3298 	.db #0x00	; 0
      002DE8 00                    3299 	.db #0x00	; 0
      002DE9 00                    3300 	.db #0x00	; 0
      002DEA 0A                    3301 	.db #0x0a	; 10
      002DEB 0A                    3302 	.db #0x0a	; 10
      002DEC 0A                    3303 	.db #0x0a	; 10
      002DED 3F                    3304 	.db #0x3f	; 63
      002DEE 00                    3305 	.db #0x00	; 0
      002DEF 00                    3306 	.db #0x00	; 0
      002DF0 00                    3307 	.db #0x00	; 0
      002DF1 00                    3308 	.db #0x00	; 0
      002DF2 00                    3309 	.db #0x00	; 0
      002DF3 3F                    3310 	.db #0x3f	; 63
      002DF4 00                    3311 	.db #0x00	; 0
      002DF5 3F                    3312 	.db #0x3f	; 63
      002DF6 08                    3313 	.db #0x08	; 8
      002DF7 08                    3314 	.db #0x08	; 8
      002DF8 08                    3315 	.db #0x08	; 8
      002DF9 08                    3316 	.db #0x08	; 8
      002DFA 00                    3317 	.db #0x00	; 0
      002DFB 00                    3318 	.db #0x00	; 0
      002DFC 00                    3319 	.db #0x00	; 0
      002DFD 3F                    3320 	.db #0x3f	; 63
      002DFE 0A                    3321 	.db #0x0a	; 10
      002DFF 0A                    3322 	.db #0x0a	; 10
      002E00 0A                    3323 	.db #0x0a	; 10
      002E01 0A                    3324 	.db #0x0a	; 10
      002E02 0A                    3325 	.db #0x0a	; 10
      002E03 0A                    3326 	.db #0x0a	; 10
      002E04 0A                    3327 	.db #0x0a	; 10
      002E05 3E                    3328 	.db #0x3e	; 62
      002E06 00                    3329 	.db #0x00	; 0
      002E07 00                    3330 	.db #0x00	; 0
      002E08 00                    3331 	.db #0x00	; 0
      002E09 00                    3332 	.db #0x00	; 0
      002E0A 08                    3333 	.db #0x08	; 8
      002E0B 38                    3334 	.db #0x38	; 56	'8'
      002E0C 08                    3335 	.db #0x08	; 8
      002E0D 38                    3336 	.db #0x38	; 56	'8'
      002E0E 00                    3337 	.db #0x00	; 0
      002E0F 00                    3338 	.db #0x00	; 0
      002E10 00                    3339 	.db #0x00	; 0
      002E11 00                    3340 	.db #0x00	; 0
      002E12 00                    3341 	.db #0x00	; 0
      002E13 38                    3342 	.db #0x38	; 56	'8'
      002E14 08                    3343 	.db #0x08	; 8
      002E15 38                    3344 	.db #0x38	; 56	'8'
      002E16 08                    3345 	.db #0x08	; 8
      002E17 08                    3346 	.db #0x08	; 8
      002E18 08                    3347 	.db #0x08	; 8
      002E19 08                    3348 	.db #0x08	; 8
      002E1A 00                    3349 	.db #0x00	; 0
      002E1B 00                    3350 	.db #0x00	; 0
      002E1C 00                    3351 	.db #0x00	; 0
      002E1D 3E                    3352 	.db #0x3e	; 62
      002E1E 0A                    3353 	.db #0x0a	; 10
      002E1F 0A                    3354 	.db #0x0a	; 10
      002E20 0A                    3355 	.db #0x0a	; 10
      002E21 0A                    3356 	.db #0x0a	; 10
      002E22 0A                    3357 	.db #0x0a	; 10
      002E23 0A                    3358 	.db #0x0a	; 10
      002E24 0A                    3359 	.db #0x0a	; 10
      002E25 3B                    3360 	.db #0x3b	; 59
      002E26 0A                    3361 	.db #0x0a	; 10
      002E27 0A                    3362 	.db #0x0a	; 10
      002E28 0A                    3363 	.db #0x0a	; 10
      002E29 0A                    3364 	.db #0x0a	; 10
      002E2A 08                    3365 	.db #0x08	; 8
      002E2B 3F                    3366 	.db #0x3f	; 63
      002E2C 00                    3367 	.db #0x00	; 0
      002E2D 3F                    3368 	.db #0x3f	; 63
      002E2E 08                    3369 	.db #0x08	; 8
      002E2F 08                    3370 	.db #0x08	; 8
      002E30 08                    3371 	.db #0x08	; 8
      002E31 08                    3372 	.db #0x08	; 8
      002E32 08                    3373 	.db #0x08	; 8
      002E33 08                    3374 	.db #0x08	; 8
      002E34 08                    3375 	.db #0x08	; 8
      002E35 0F                    3376 	.db #0x0f	; 15
      002E36 00                    3377 	.db #0x00	; 0
      002E37 00                    3378 	.db #0x00	; 0
      002E38 00                    3379 	.db #0x00	; 0
      002E39 00                    3380 	.db #0x00	; 0
      002E3A 00                    3381 	.db #0x00	; 0
      002E3B 00                    3382 	.db #0x00	; 0
      002E3C 00                    3383 	.db #0x00	; 0
      002E3D 38                    3384 	.db #0x38	; 56	'8'
      002E3E 08                    3385 	.db #0x08	; 8
      002E3F 08                    3386 	.db #0x08	; 8
      002E40 08                    3387 	.db #0x08	; 8
      002E41 08                    3388 	.db #0x08	; 8
      002E42 3F                    3389 	.db #0x3f	; 63
      002E43 3F                    3390 	.db #0x3f	; 63
      002E44 3F                    3391 	.db #0x3f	; 63
      002E45 3F                    3392 	.db #0x3f	; 63
      002E46 3F                    3393 	.db #0x3f	; 63
      002E47 3F                    3394 	.db #0x3f	; 63
      002E48 3F                    3395 	.db #0x3f	; 63
      002E49 3F                    3396 	.db #0x3f	; 63
      002E4A 00                    3397 	.db #0x00	; 0
      002E4B 00                    3398 	.db #0x00	; 0
      002E4C 00                    3399 	.db #0x00	; 0
      002E4D 00                    3400 	.db #0x00	; 0
      002E4E 3F                    3401 	.db #0x3f	; 63
      002E4F 3F                    3402 	.db #0x3f	; 63
      002E50 3F                    3403 	.db #0x3f	; 63
      002E51 3F                    3404 	.db #0x3f	; 63
      002E52 07                    3405 	.db #0x07	; 7
      002E53 07                    3406 	.db #0x07	; 7
      002E54 07                    3407 	.db #0x07	; 7
      002E55 07                    3408 	.db #0x07	; 7
      002E56 07                    3409 	.db #0x07	; 7
      002E57 07                    3410 	.db #0x07	; 7
      002E58 07                    3411 	.db #0x07	; 7
      002E59 07                    3412 	.db #0x07	; 7
      002E5A 38                    3413 	.db #0x38	; 56	'8'
      002E5B 38                    3414 	.db #0x38	; 56	'8'
      002E5C 38                    3415 	.db #0x38	; 56	'8'
      002E5D 38                    3416 	.db #0x38	; 56	'8'
      002E5E 38                    3417 	.db #0x38	; 56	'8'
      002E5F 38                    3418 	.db #0x38	; 56	'8'
      002E60 38                    3419 	.db #0x38	; 56	'8'
      002E61 38                    3420 	.db #0x38	; 56	'8'
      002E62 3F                    3421 	.db #0x3f	; 63
      002E63 3F                    3422 	.db #0x3f	; 63
      002E64 3F                    3423 	.db #0x3f	; 63
      002E65 3F                    3424 	.db #0x3f	; 63
      002E66 00                    3425 	.db #0x00	; 0
      002E67 00                    3426 	.db #0x00	; 0
      002E68 00                    3427 	.db #0x00	; 0
      002E69 00                    3428 	.db #0x00	; 0
      002E6A 00                    3429 	.db #0x00	; 0
      002E6B 00                    3430 	.db #0x00	; 0
      002E6C 2C                    3431 	.db #0x2c	; 44
      002E6D 12                    3432 	.db #0x12	; 18
      002E6E 12                    3433 	.db #0x12	; 18
      002E6F 2C                    3434 	.db #0x2c	; 44
      002E70 00                    3435 	.db #0x00	; 0
      002E71 00                    3436 	.db #0x00	; 0
      002E72 00                    3437 	.db #0x00	; 0
      002E73 0E                    3438 	.db #0x0e	; 14
      002E74 12                    3439 	.db #0x12	; 18
      002E75 0E                    3440 	.db #0x0e	; 14
      002E76 12                    3441 	.db #0x12	; 18
      002E77 12                    3442 	.db #0x12	; 18
      002E78 0E                    3443 	.db #0x0e	; 14
      002E79 02                    3444 	.db #0x02	; 2
      002E7A 1E                    3445 	.db #0x1e	; 30
      002E7B 12                    3446 	.db #0x12	; 18
      002E7C 02                    3447 	.db #0x02	; 2
      002E7D 02                    3448 	.db #0x02	; 2
      002E7E 02                    3449 	.db #0x02	; 2
      002E7F 02                    3450 	.db #0x02	; 2
      002E80 02                    3451 	.db #0x02	; 2
      002E81 00                    3452 	.db #0x00	; 0
      002E82 00                    3453 	.db #0x00	; 0
      002E83 3E                    3454 	.db #0x3e	; 62
      002E84 14                    3455 	.db #0x14	; 20
      002E85 14                    3456 	.db #0x14	; 20
      002E86 14                    3457 	.db #0x14	; 20
      002E87 14                    3458 	.db #0x14	; 20
      002E88 14                    3459 	.db #0x14	; 20
      002E89 00                    3460 	.db #0x00	; 0
      002E8A 1E                    3461 	.db #0x1e	; 30
      002E8B 12                    3462 	.db #0x12	; 18
      002E8C 04                    3463 	.db #0x04	; 4
      002E8D 08                    3464 	.db #0x08	; 8
      002E8E 04                    3465 	.db #0x04	; 4
      002E8F 12                    3466 	.db #0x12	; 18
      002E90 1E                    3467 	.db #0x1e	; 30
      002E91 00                    3468 	.db #0x00	; 0
      002E92 00                    3469 	.db #0x00	; 0
      002E93 00                    3470 	.db #0x00	; 0
      002E94 3C                    3471 	.db #0x3c	; 60
      002E95 12                    3472 	.db #0x12	; 18
      002E96 12                    3473 	.db #0x12	; 18
      002E97 0C                    3474 	.db #0x0c	; 12
      002E98 00                    3475 	.db #0x00	; 0
      002E99 00                    3476 	.db #0x00	; 0
      002E9A 00                    3477 	.db #0x00	; 0
      002E9B 00                    3478 	.db #0x00	; 0
      002E9C 12                    3479 	.db #0x12	; 18
      002E9D 12                    3480 	.db #0x12	; 18
      002E9E 12                    3481 	.db #0x12	; 18
      002E9F 0E                    3482 	.db #0x0e	; 14
      002EA0 02                    3483 	.db #0x02	; 2
      002EA1 02                    3484 	.db #0x02	; 2
      002EA2 00                    3485 	.db #0x00	; 0
      002EA3 00                    3486 	.db #0x00	; 0
      002EA4 14                    3487 	.db #0x14	; 20
      002EA5 0A                    3488 	.db #0x0a	; 10
      002EA6 08                    3489 	.db #0x08	; 8
      002EA7 08                    3490 	.db #0x08	; 8
      002EA8 08                    3491 	.db #0x08	; 8
      002EA9 00                    3492 	.db #0x00	; 0
      002EAA 1C                    3493 	.db #0x1c	; 28
      002EAB 08                    3494 	.db #0x08	; 8
      002EAC 1C                    3495 	.db #0x1c	; 28
      002EAD 22                    3496 	.db #0x22	; 34
      002EAE 1C                    3497 	.db #0x1c	; 28
      002EAF 08                    3498 	.db #0x08	; 8
      002EB0 1C                    3499 	.db #0x1c	; 28
      002EB1 00                    3500 	.db #0x00	; 0
      002EB2 0C                    3501 	.db #0x0c	; 12
      002EB3 12                    3502 	.db #0x12	; 18
      002EB4 12                    3503 	.db #0x12	; 18
      002EB5 1E                    3504 	.db #0x1e	; 30
      002EB6 12                    3505 	.db #0x12	; 18
      002EB7 12                    3506 	.db #0x12	; 18
      002EB8 0C                    3507 	.db #0x0c	; 12
      002EB9 00                    3508 	.db #0x00	; 0
      002EBA 00                    3509 	.db #0x00	; 0
      002EBB 1C                    3510 	.db #0x1c	; 28
      002EBC 22                    3511 	.db #0x22	; 34
      002EBD 22                    3512 	.db #0x22	; 34
      002EBE 14                    3513 	.db #0x14	; 20
      002EBF 14                    3514 	.db #0x14	; 20
      002EC0 36                    3515 	.db #0x36	; 54	'6'
      002EC1 00                    3516 	.db #0x00	; 0
      002EC2 0C                    3517 	.db #0x0c	; 12
      002EC3 02                    3518 	.db #0x02	; 2
      002EC4 04                    3519 	.db #0x04	; 4
      002EC5 08                    3520 	.db #0x08	; 8
      002EC6 1C                    3521 	.db #0x1c	; 28
      002EC7 12                    3522 	.db #0x12	; 18
      002EC8 0C                    3523 	.db #0x0c	; 12
      002EC9 00                    3524 	.db #0x00	; 0
      002ECA 00                    3525 	.db #0x00	; 0
      002ECB 00                    3526 	.db #0x00	; 0
      002ECC 14                    3527 	.db #0x14	; 20
      002ECD 2A                    3528 	.db #0x2a	; 42
      002ECE 2A                    3529 	.db #0x2a	; 42
      002ECF 14                    3530 	.db #0x14	; 20
      002ED0 00                    3531 	.db #0x00	; 0
      002ED1 00                    3532 	.db #0x00	; 0
      002ED2 00                    3533 	.db #0x00	; 0
      002ED3 08                    3534 	.db #0x08	; 8
      002ED4 1C                    3535 	.db #0x1c	; 28
      002ED5 2A                    3536 	.db #0x2a	; 42
      002ED6 2A                    3537 	.db #0x2a	; 42
      002ED7 1C                    3538 	.db #0x1c	; 28
      002ED8 08                    3539 	.db #0x08	; 8
      002ED9 00                    3540 	.db #0x00	; 0
      002EDA 00                    3541 	.db #0x00	; 0
      002EDB 1C                    3542 	.db #0x1c	; 28
      002EDC 02                    3543 	.db #0x02	; 2
      002EDD 1E                    3544 	.db #0x1e	; 30
      002EDE 02                    3545 	.db #0x02	; 2
      002EDF 1C                    3546 	.db #0x1c	; 28
      002EE0 00                    3547 	.db #0x00	; 0
      002EE1 00                    3548 	.db #0x00	; 0
      002EE2 00                    3549 	.db #0x00	; 0
      002EE3 0C                    3550 	.db #0x0c	; 12
      002EE4 12                    3551 	.db #0x12	; 18
      002EE5 12                    3552 	.db #0x12	; 18
      002EE6 12                    3553 	.db #0x12	; 18
      002EE7 12                    3554 	.db #0x12	; 18
      002EE8 00                    3555 	.db #0x00	; 0
      002EE9 00                    3556 	.db #0x00	; 0
      002EEA 00                    3557 	.db #0x00	; 0
      002EEB 1E                    3558 	.db #0x1e	; 30
      002EEC 00                    3559 	.db #0x00	; 0
      002EED 1E                    3560 	.db #0x1e	; 30
      002EEE 00                    3561 	.db #0x00	; 0
      002EEF 1E                    3562 	.db #0x1e	; 30
      002EF0 00                    3563 	.db #0x00	; 0
      002EF1 00                    3564 	.db #0x00	; 0
      002EF2 00                    3565 	.db #0x00	; 0
      002EF3 08                    3566 	.db #0x08	; 8
      002EF4 1C                    3567 	.db #0x1c	; 28
      002EF5 08                    3568 	.db #0x08	; 8
      002EF6 00                    3569 	.db #0x00	; 0
      002EF7 1C                    3570 	.db #0x1c	; 28
      002EF8 00                    3571 	.db #0x00	; 0
      002EF9 00                    3572 	.db #0x00	; 0
      002EFA 02                    3573 	.db #0x02	; 2
      002EFB 0C                    3574 	.db #0x0c	; 12
      002EFC 10                    3575 	.db #0x10	; 16
      002EFD 0C                    3576 	.db #0x0c	; 12
      002EFE 02                    3577 	.db #0x02	; 2
      002EFF 00                    3578 	.db #0x00	; 0
      002F00 1E                    3579 	.db #0x1e	; 30
      002F01 00                    3580 	.db #0x00	; 0
      002F02 10                    3581 	.db #0x10	; 16
      002F03 0C                    3582 	.db #0x0c	; 12
      002F04 02                    3583 	.db #0x02	; 2
      002F05 0C                    3584 	.db #0x0c	; 12
      002F06 10                    3585 	.db #0x10	; 16
      002F07 00                    3586 	.db #0x00	; 0
      002F08 1E                    3587 	.db #0x1e	; 30
      002F09 00                    3588 	.db #0x00	; 0
      002F0A 00                    3589 	.db #0x00	; 0
      002F0B 10                    3590 	.db #0x10	; 16
      002F0C 28                    3591 	.db #0x28	; 40
      002F0D 08                    3592 	.db #0x08	; 8
      002F0E 08                    3593 	.db #0x08	; 8
      002F0F 08                    3594 	.db #0x08	; 8
      002F10 08                    3595 	.db #0x08	; 8
      002F11 08                    3596 	.db #0x08	; 8
      002F12 08                    3597 	.db #0x08	; 8
      002F13 08                    3598 	.db #0x08	; 8
      002F14 08                    3599 	.db #0x08	; 8
      002F15 08                    3600 	.db #0x08	; 8
      002F16 08                    3601 	.db #0x08	; 8
      002F17 0A                    3602 	.db #0x0a	; 10
      002F18 04                    3603 	.db #0x04	; 4
      002F19 00                    3604 	.db #0x00	; 0
      002F1A 00                    3605 	.db #0x00	; 0
      002F1B 08                    3606 	.db #0x08	; 8
      002F1C 00                    3607 	.db #0x00	; 0
      002F1D 3E                    3608 	.db #0x3e	; 62
      002F1E 00                    3609 	.db #0x00	; 0
      002F1F 08                    3610 	.db #0x08	; 8
      002F20 00                    3611 	.db #0x00	; 0
      002F21 00                    3612 	.db #0x00	; 0
      002F22 00                    3613 	.db #0x00	; 0
      002F23 14                    3614 	.db #0x14	; 20
      002F24 0A                    3615 	.db #0x0a	; 10
      002F25 00                    3616 	.db #0x00	; 0
      002F26 14                    3617 	.db #0x14	; 20
      002F27 0A                    3618 	.db #0x0a	; 10
      002F28 00                    3619 	.db #0x00	; 0
      002F29 00                    3620 	.db #0x00	; 0
      002F2A 0C                    3621 	.db #0x0c	; 12
      002F2B 12                    3622 	.db #0x12	; 18
      002F2C 12                    3623 	.db #0x12	; 18
      002F2D 0C                    3624 	.db #0x0c	; 12
      002F2E 00                    3625 	.db #0x00	; 0
      002F2F 00                    3626 	.db #0x00	; 0
      002F30 00                    3627 	.db #0x00	; 0
      002F31 00                    3628 	.db #0x00	; 0
      002F32 00                    3629 	.db #0x00	; 0
      002F33 00                    3630 	.db #0x00	; 0
      002F34 00                    3631 	.db #0x00	; 0
      002F35 0C                    3632 	.db #0x0c	; 12
      002F36 0C                    3633 	.db #0x0c	; 12
      002F37 00                    3634 	.db #0x00	; 0
      002F38 00                    3635 	.db #0x00	; 0
      002F39 00                    3636 	.db #0x00	; 0
      002F3A 00                    3637 	.db #0x00	; 0
      002F3B 00                    3638 	.db #0x00	; 0
      002F3C 00                    3639 	.db #0x00	; 0
      002F3D 04                    3640 	.db #0x04	; 4
      002F3E 00                    3641 	.db #0x00	; 0
      002F3F 00                    3642 	.db #0x00	; 0
      002F40 00                    3643 	.db #0x00	; 0
      002F41 00                    3644 	.db #0x00	; 0
      002F42 00                    3645 	.db #0x00	; 0
      002F43 38                    3646 	.db #0x38	; 56	'8'
      002F44 08                    3647 	.db #0x08	; 8
      002F45 08                    3648 	.db #0x08	; 8
      002F46 0A                    3649 	.db #0x0a	; 10
      002F47 0A                    3650 	.db #0x0a	; 10
      002F48 04                    3651 	.db #0x04	; 4
      002F49 00                    3652 	.db #0x00	; 0
      002F4A 0A                    3653 	.db #0x0a	; 10
      002F4B 14                    3654 	.db #0x14	; 20
      002F4C 14                    3655 	.db #0x14	; 20
      002F4D 14                    3656 	.db #0x14	; 20
      002F4E 00                    3657 	.db #0x00	; 0
      002F4F 00                    3658 	.db #0x00	; 0
      002F50 00                    3659 	.db #0x00	; 0
      002F51 00                    3660 	.db #0x00	; 0
      002F52 06                    3661 	.db #0x06	; 6
      002F53 08                    3662 	.db #0x08	; 8
      002F54 04                    3663 	.db #0x04	; 4
      002F55 0E                    3664 	.db #0x0e	; 14
      002F56 00                    3665 	.db #0x00	; 0
      002F57 00                    3666 	.db #0x00	; 0
      002F58 00                    3667 	.db #0x00	; 0
      002F59 00                    3668 	.db #0x00	; 0
      002F5A 00                    3669 	.db #0x00	; 0
      002F5B 00                    3670 	.db #0x00	; 0
      002F5C 1E                    3671 	.db #0x1e	; 30
      002F5D 1E                    3672 	.db #0x1e	; 30
      002F5E 1E                    3673 	.db #0x1e	; 30
      002F5F 1E                    3674 	.db #0x1e	; 30
      002F60 00                    3675 	.db #0x00	; 0
      002F61 00                    3676 	.db #0x00	; 0
      002F62 00                    3677 	.db #0x00	; 0
      002F63 00                    3678 	.db #0x00	; 0
      002F64 00                    3679 	.db #0x00	; 0
      002F65 00                    3680 	.db #0x00	; 0
      002F66 00                    3681 	.db #0x00	; 0
      002F67 00                    3682 	.db #0x00	; 0
      002F68 00                    3683 	.db #0x00	; 0
      002F69 00                    3684 	.db #0x00	; 0
      002F6A                       3685 __xinit__initial:
      002F6A 38 27 80              3686 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3687 	.area CABS    (ABS,CODE)
