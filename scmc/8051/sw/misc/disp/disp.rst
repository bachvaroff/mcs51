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
      00200B 02 21 65         [24]  375 	ljmp	_timer0_intr
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
                                    389 ;	disp.c:127: __idata const uint8_t dsdcol[8] = {
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
                                    406 ;	disp.c:131: __idata const uint8_t sddcol[8] = {
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
      00200E 02 23 4B         [24]  431 	ljmp	_main
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
                                    442 ;	disp.c:13: int putchar(int c) __naked {
                                    443 ;	-----------------------------------------
                                    444 ;	 function putchar
                                    445 ;	-----------------------------------------
      0020AD                        446 _putchar:
                                    447 ;	naked function: no prologue.
                                    448 ;	disp.c:18: __endasm;
      0020AD E5 82            [12]  449 	mov	a, dpl
      0020AF 02 00 30         [24]  450 	ljmp	0x0030
                                    451 ;	disp.c:19: }
                                    452 ;	naked function: no epilogue.
                                    453 ;------------------------------------------------------------
                                    454 ;Allocation info for local variables in function 'getchar'
                                    455 ;------------------------------------------------------------
                                    456 ;	disp.c:21: int getchar(void) __naked {
                                    457 ;	-----------------------------------------
                                    458 ;	 function getchar
                                    459 ;	-----------------------------------------
      0020B2                        460 _getchar:
                                    461 ;	naked function: no prologue.
                                    462 ;	disp.c:27: __endasm;
      0020B2 12 00 32         [24]  463 	lcall	0x0032
      0020B5 F5 82            [12]  464 	mov	dpl, a
      0020B7 75 83 00         [24]  465 	mov	dph, #0
      0020BA 22               [24]  466 	ret
                                    467 ;	disp.c:28: }
                                    468 ;	naked function: no epilogue.
                                    469 ;------------------------------------------------------------
                                    470 ;Allocation info for local variables in function 'getchar_poll'
                                    471 ;------------------------------------------------------------
                                    472 ;	disp.c:30: int getchar_poll(void) __naked {
                                    473 ;	-----------------------------------------
                                    474 ;	 function getchar_poll
                                    475 ;	-----------------------------------------
      0020BB                        476 _getchar_poll:
                                    477 ;	naked function: no prologue.
                                    478 ;	disp.c:46: __endasm;
      0020BB C0 E0            [24]  479 	push	acc
      0020BD C0 F0            [24]  480 	push	b
      0020BF 74 FF            [12]  481 	mov	a, #0xff
      0020C1 F5 F0            [12]  482 	mov	b, a
      0020C3 30 98 07         [24]  483 	jnb	ri, nochar
      0020C6 E5 99            [12]  484 	mov	a, sbuf
      0020C8 C2 98            [12]  485 	clr	ri
      0020CA 75 F0 00         [24]  486 	mov	b, #0
      0020CD                        487 	nochar:
      0020CD F5 82            [12]  488 	mov	dpl, a
      0020CF 85 F0 83         [24]  489 	mov	dph, b
      0020D2 D0 F0            [24]  490 	pop	b
      0020D4 D0 E0            [24]  491 	pop	acc
      0020D6 22               [24]  492 	ret
                                    493 ;	disp.c:47: }
                                    494 ;	naked function: no epilogue.
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'gpo_init'
                                    497 ;------------------------------------------------------------
                                    498 ;	disp.c:86: void gpo_init(void) {
                                    499 ;	-----------------------------------------
                                    500 ;	 function gpo_init
                                    501 ;	-----------------------------------------
      0020D7                        502 _gpo_init:
                           000007   503 	ar7 = 0x07
                           000006   504 	ar6 = 0x06
                           000005   505 	ar5 = 0x05
                           000004   506 	ar4 = 0x04
                           000003   507 	ar3 = 0x03
                           000002   508 	ar2 = 0x02
                           000001   509 	ar1 = 0x01
                           000000   510 	ar0 = 0x00
                                    511 ;	disp.c:87: P1_7 = 0;
                                    512 ;	assignBit
      0020D7 C2 97            [12]  513 	clr	_P1_7
                                    514 ;	disp.c:92: __endasm;
      0020D9 00               [12]  515 	nop
      0020DA 00               [12]  516 	nop
      0020DB 00               [12]  517 	nop
                                    518 ;	disp.c:94: P2 = GPO_BASE_H;
      0020DC 75 A0 F0         [24]  519 	mov	_P2,#0xf0
                                    520 ;	disp.c:96: GPO_CLEAR;
      0020DF 78 06            [12]  521 	mov	r0,#(_gpo + 0x0006)
      0020E1 74 3F            [12]  522 	mov	a,#0x3f
      0020E3 F2               [24]  523 	movx	@r0,a
      0020E4 78 00            [12]  524 	mov	r0,#_gpo
      0020E6 E4               [12]  525 	clr	a
      0020E7 F2               [24]  526 	movx	@r0,a
      0020E8 78 01            [12]  527 	mov	r0,#(_gpo + 0x0001)
      0020EA F2               [24]  528 	movx	@r0,a
      0020EB 78 02            [12]  529 	mov	r0,#(_gpo + 0x0002)
      0020ED F2               [24]  530 	movx	@r0,a
      0020EE 78 03            [12]  531 	mov	r0,#(_gpo + 0x0003)
      0020F0 F2               [24]  532 	movx	@r0,a
      0020F1 78 04            [12]  533 	mov	r0,#(_gpo + 0x0004)
      0020F3 F2               [24]  534 	movx	@r0,a
      0020F4 78 05            [12]  535 	mov	r0,#(_gpo + 0x0005)
      0020F6 F2               [24]  536 	movx	@r0,a
                                    537 ;	disp.c:98: return;
                                    538 ;	disp.c:99: }
      0020F7 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'gpo_clear'
                                    542 ;------------------------------------------------------------
                                    543 ;	disp.c:101: void gpo_clear(void) {
                                    544 ;	-----------------------------------------
                                    545 ;	 function gpo_clear
                                    546 ;	-----------------------------------------
      0020F8                        547 _gpo_clear:
                                    548 ;	disp.c:102: GPO_CLEAR;
      0020F8 78 06            [12]  549 	mov	r0,#(_gpo + 0x0006)
      0020FA 74 3F            [12]  550 	mov	a,#0x3f
      0020FC F2               [24]  551 	movx	@r0,a
      0020FD 78 00            [12]  552 	mov	r0,#_gpo
      0020FF E4               [12]  553 	clr	a
      002100 F2               [24]  554 	movx	@r0,a
      002101 78 01            [12]  555 	mov	r0,#(_gpo + 0x0001)
      002103 F2               [24]  556 	movx	@r0,a
      002104 78 02            [12]  557 	mov	r0,#(_gpo + 0x0002)
      002106 F2               [24]  558 	movx	@r0,a
      002107 78 03            [12]  559 	mov	r0,#(_gpo + 0x0003)
      002109 F2               [24]  560 	movx	@r0,a
      00210A 78 04            [12]  561 	mov	r0,#(_gpo + 0x0004)
      00210C F2               [24]  562 	movx	@r0,a
      00210D 78 05            [12]  563 	mov	r0,#(_gpo + 0x0005)
      00210F F2               [24]  564 	movx	@r0,a
                                    565 ;	disp.c:104: return;
                                    566 ;	disp.c:105: }
      002110 22               [24]  567 	ret
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'init_intr'
                                    570 ;------------------------------------------------------------
                                    571 ;	disp.c:139: void init_intr(void) {
                                    572 ;	-----------------------------------------
                                    573 ;	 function init_intr
                                    574 ;	-----------------------------------------
      002111                        575 _init_intr:
                                    576 ;	disp.c:140: TR0 = 0;
                                    577 ;	assignBit
      002111 C2 8C            [12]  578 	clr	_TR0
                                    579 ;	disp.c:141: TR1 = 0;
                                    580 ;	assignBit
      002113 C2 8E            [12]  581 	clr	_TR1
                                    582 ;	disp.c:142: ET0 = 1;
                                    583 ;	assignBit
      002115 D2 A9            [12]  584 	setb	_ET0
                                    585 ;	disp.c:143: ET1 = 0;
                                    586 ;	assignBit
      002117 C2 AB            [12]  587 	clr	_ET1
                                    588 ;	disp.c:144: EA = 1;
                                    589 ;	assignBit
      002119 D2 AF            [12]  590 	setb	_EA
                                    591 ;	disp.c:146: return;
                                    592 ;	disp.c:147: }
      00211B 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'init_timer0'
                                    596 ;------------------------------------------------------------
                                    597 ;	disp.c:149: void init_timer0(void) {
                                    598 ;	-----------------------------------------
                                    599 ;	 function init_timer0
                                    600 ;	-----------------------------------------
      00211C                        601 _init_timer0:
                                    602 ;	disp.c:150: TR0 = 0;
                                    603 ;	assignBit
      00211C C2 8C            [12]  604 	clr	_TR0
                                    605 ;	disp.c:151: TMOD |= 0x01;
      00211E 43 89 01         [24]  606 	orl	_TMOD,#0x01
                                    607 ;	disp.c:152: TH0 = TR0_COUNT >> 8;
      002121 75 8C F8         [24]  608 	mov	_TH0,#0xf8
                                    609 ;	disp.c:153: TL0 = TR0_COUNT & 0xffu;
      002124 75 8A 00         [24]  610 	mov	_TL0,#0x00
                                    611 ;	disp.c:155: return;
                                    612 ;	disp.c:156: }
      002127 22               [24]  613 	ret
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'init_timer1'
                                    616 ;------------------------------------------------------------
                                    617 ;	disp.c:158: void init_timer1(void) {
                                    618 ;	-----------------------------------------
                                    619 ;	 function init_timer1
                                    620 ;	-----------------------------------------
      002128                        621 _init_timer1:
                                    622 ;	disp.c:159: TR1 = 0;
                                    623 ;	assignBit
      002128 C2 8E            [12]  624 	clr	_TR1
                                    625 ;	disp.c:160: TMOD |= 0x10;
      00212A 43 89 10         [24]  626 	orl	_TMOD,#0x10
                                    627 ;	disp.c:161: TH1 = TR1_COUNT_0 >> 8;
      00212D 75 8D 00         [24]  628 	mov	_TH1,#0x00
                                    629 ;	disp.c:162: TL1 = TR1_COUNT_0 & 0xffu;
      002130 75 8B 00         [24]  630 	mov	_TL1,#0x00
                                    631 ;	disp.c:164: return;
                                    632 ;	disp.c:165: }
      002133 22               [24]  633 	ret
                                    634 ;------------------------------------------------------------
                                    635 ;Allocation info for local variables in function 'init_disp'
                                    636 ;------------------------------------------------------------
                                    637 ;	disp.c:167: void init_disp(void) {
                                    638 ;	-----------------------------------------
                                    639 ;	 function init_disp
                                    640 ;	-----------------------------------------
      002134                        641 _init_disp:
                                    642 ;	disp.c:168: GPO_SETREG(DISP_COL, 0u);
      002134 78 05            [12]  643 	mov	r0,#(_gpo + 0x0005)
      002136 E4               [12]  644 	clr	a
      002137 F2               [24]  645 	movx	@r0,a
                                    646 ;	disp.c:169: GPO_SETREG(DISP_DATA, 0u);
      002138 78 04            [12]  647 	mov	r0,#(_gpo + 0x0004)
      00213A F2               [24]  648 	movx	@r0,a
                                    649 ;	disp.c:170: OE = 0x0fu; /* 00_001111 */
      00213B 78 3A            [12]  650 	mov	r0,#_OE
      00213D 76 0F            [12]  651 	mov	@r0,#0x0f
                                    652 ;	disp.c:171: GPO_SETOE(OE);
      00213F 78 06            [12]  653 	mov	r0,#(_gpo + 0x0006)
      002141 74 0F            [12]  654 	mov	a,#0x0f
      002143 F2               [24]  655 	movx	@r0,a
                                    656 ;	disp.c:173: for (column = 0u; column < 8u; column++)
      002144 78 39            [12]  657 	mov	r0,#_column
      002146 76 00            [12]  658 	mov	@r0,#0x00
      002148                        659 00112$:
      002148 78 39            [12]  660 	mov	r0,#_column
      00214A B6 08 00         [24]  661 	cjne	@r0,#0x08,00124$
      00214D                        662 00124$:
      00214D 50 11            [24]  663 	jnc	00110$
                                    664 ;	disp.c:174: ddata[column] = 0u;
      00214F 78 39            [12]  665 	mov	r0,#_column
      002151 E6               [12]  666 	mov	a,@r0
      002152 24 31            [12]  667 	add	a,#_ddata
      002154 F8               [12]  668 	mov	r0,a
      002155 76 00            [12]  669 	mov	@r0,#0x00
                                    670 ;	disp.c:173: for (column = 0u; column < 8u; column++)
      002157 78 39            [12]  671 	mov	r0,#_column
      002159 E6               [12]  672 	mov	a,@r0
      00215A 78 39            [12]  673 	mov	r0,#_column
      00215C 04               [12]  674 	inc	a
      00215D F6               [12]  675 	mov	@r0,a
      00215E 80 E8            [24]  676 	sjmp	00112$
      002160                        677 00110$:
                                    678 ;	disp.c:175: column = 0u;
      002160 78 39            [12]  679 	mov	r0,#_column
      002162 76 00            [12]  680 	mov	@r0,#0x00
                                    681 ;	disp.c:177: return;
                                    682 ;	disp.c:178: }
      002164 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'timer0_intr'
                                    686 ;------------------------------------------------------------
                                    687 ;t                         Allocated to registers r7 
                                    688 ;------------------------------------------------------------
                                    689 ;	disp.c:180: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    690 ;	-----------------------------------------
                                    691 ;	 function timer0_intr
                                    692 ;	-----------------------------------------
      002165                        693 _timer0_intr:
                           00000F   694 	ar7 = 0x0f
                           00000E   695 	ar6 = 0x0e
                           00000D   696 	ar5 = 0x0d
                           00000C   697 	ar4 = 0x0c
                           00000B   698 	ar3 = 0x0b
                           00000A   699 	ar2 = 0x0a
                           000009   700 	ar1 = 0x09
                           000008   701 	ar0 = 0x08
      002165 C0 E0            [24]  702 	push	acc
      002167 C0 D0            [24]  703 	push	psw
      002169 75 D0 08         [24]  704 	mov	psw,#0x08
                                    705 ;	disp.c:183: t = column & 7u;
      00216C 78 39            [12]  706 	mov	r0,#_column
      00216E 86 0F            [24]  707 	mov	ar7,@r0
      002170 53 0F 07         [24]  708 	anl	ar7,#0x07
                                    709 ;	disp.c:184: GPO_SETREG(DISP_COL, 0u);
      002173 78 05            [12]  710 	mov	r0,#(_gpo + 0x0005)
      002175 E4               [12]  711 	clr	a
      002176 F2               [24]  712 	movx	@r0,a
                                    713 ;	disp.c:185: GPO_SETREG(DISP_DATA, ddata[t]);
      002177 EF               [12]  714 	mov	a,r7
      002178 24 31            [12]  715 	add	a,#_ddata
      00217A F9               [12]  716 	mov	r1,a
      00217B 87 0E            [24]  717 	mov	ar6,@r1
      00217D 78 04            [12]  718 	mov	r0,#(_gpo + 0x0004)
      00217F EE               [12]  719 	mov	a,r6
      002180 F2               [24]  720 	movx	@r0,a
                                    721 ;	disp.c:186: GPO_SETREG(DISP_COL, dsdcol[t]);
      002181 EF               [12]  722 	mov	a,r7
      002182 24 21            [12]  723 	add	a,#_dsdcol
      002184 F9               [12]  724 	mov	r1,a
      002185 87 0F            [24]  725 	mov	ar7,@r1
      002187 78 05            [12]  726 	mov	r0,#(_gpo + 0x0005)
      002189 EF               [12]  727 	mov	a,r7
      00218A F2               [24]  728 	movx	@r0,a
                                    729 ;	disp.c:187: column++;
      00218B 78 39            [12]  730 	mov	r0,#_column
      00218D E6               [12]  731 	mov	a,@r0
      00218E 78 39            [12]  732 	mov	r0,#_column
      002190 04               [12]  733 	inc	a
      002191 F6               [12]  734 	mov	@r0,a
                                    735 ;	disp.c:189: TR0 = 0;
                                    736 ;	assignBit
      002192 C2 8C            [12]  737 	clr	_TR0
                                    738 ;	disp.c:190: TH0 = TR0_COUNT >> 8;
      002194 75 8C F8         [24]  739 	mov	_TH0,#0xf8
                                    740 ;	disp.c:191: TL0 = TR0_COUNT & 0xffu;
      002197 75 8A 00         [24]  741 	mov	_TL0,#0x00
                                    742 ;	disp.c:192: TR0 = 1;
                                    743 ;	assignBit
      00219A D2 8C            [12]  744 	setb	_TR0
                                    745 ;	disp.c:194: return;
                                    746 ;	disp.c:195: }
      00219C D0 D0            [24]  747 	pop	psw
      00219E D0 E0            [24]  748 	pop	acc
      0021A0 32               [24]  749 	reti
                                    750 ;	eliminated unneeded push/pop dpl
                                    751 ;	eliminated unneeded push/pop dph
                                    752 ;	eliminated unneeded push/pop b
                                    753 ;------------------------------------------------------------
                                    754 ;Allocation info for local variables in function 'scroll'
                                    755 ;------------------------------------------------------------
                                    756 ;msg                       Allocated to stack - _bp +1
                                    757 ;symbol                    Allocated to stack - _bp +5
                                    758 ;bit                       Allocated to stack - _bp +6
                                    759 ;i                         Allocated to stack - _bp +7
                                    760 ;j                         Allocated to registers r4 
                                    761 ;r                         Allocated to registers r3 r4 
                                    762 ;__3932160002              Allocated to registers 
                                    763 ;s                         Allocated to registers r6 r4 r3 
                                    764 ;sloc0                     Allocated to stack - _bp +4
                                    765 ;sloc1                     Allocated to stack - _bp +18
                                    766 ;sloc2                     Allocated to stack - _bp +19
                                    767 ;------------------------------------------------------------
                                    768 ;	disp.c:222: int scroll(uint8_t *msg) {
                                    769 ;	-----------------------------------------
                                    770 ;	 function scroll
                                    771 ;	-----------------------------------------
      0021A1                        772 _scroll:
                           000007   773 	ar7 = 0x07
                           000006   774 	ar6 = 0x06
                           000005   775 	ar5 = 0x05
                           000004   776 	ar4 = 0x04
                           000003   777 	ar3 = 0x03
                           000002   778 	ar2 = 0x02
                           000001   779 	ar1 = 0x01
                           000000   780 	ar0 = 0x00
      0021A1 C0 10            [24]  781 	push	_bp
      0021A3 85 81 10         [24]  782 	mov	_bp,sp
      0021A6 C0 82            [24]  783 	push	dpl
      0021A8 C0 83            [24]  784 	push	dph
      0021AA C0 F0            [24]  785 	push	b
      0021AC E5 81            [12]  786 	mov	a,sp
      0021AE 24 05            [12]  787 	add	a,#0x05
      0021B0 F5 81            [12]  788 	mov	sp,a
                                    789 ;	disp.c:228: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0021B2 E5 10            [12]  790 	mov	a,_bp
      0021B4 24 06            [12]  791 	add	a,#0x06
      0021B6 F8               [12]  792 	mov	r0,a
      0021B7 76 00            [12]  793 	mov	@r0,#0x00
      0021B9 E5 10            [12]  794 	mov	a,_bp
      0021BB 24 07            [12]  795 	add	a,#0x07
      0021BD F8               [12]  796 	mov	r0,a
      0021BE E4               [12]  797 	clr	a
      0021BF F6               [12]  798 	mov	@r0,a
      0021C0 08               [12]  799 	inc	r0
      0021C1 F6               [12]  800 	mov	@r0,a
      0021C2                        801 00142$:
                                    802 ;	disp.c:229: if (!bit) {
      0021C2 E5 10            [12]  803 	mov	a,_bp
      0021C4 24 06            [12]  804 	add	a,#0x06
      0021C6 F8               [12]  805 	mov	r0,a
      0021C7 E6               [12]  806 	mov	a,@r0
      0021C8 70 5F            [24]  807 	jnz	00105$
                                    808 ;	disp.c:230: symbol = msg[i];
      0021CA A8 10            [24]  809 	mov	r0,_bp
      0021CC 08               [12]  810 	inc	r0
      0021CD E5 10            [12]  811 	mov	a,_bp
      0021CF 24 07            [12]  812 	add	a,#0x07
      0021D1 F9               [12]  813 	mov	r1,a
      0021D2 E7               [12]  814 	mov	a,@r1
      0021D3 26               [12]  815 	add	a,@r0
      0021D4 FA               [12]  816 	mov	r2,a
      0021D5 09               [12]  817 	inc	r1
      0021D6 E7               [12]  818 	mov	a,@r1
      0021D7 08               [12]  819 	inc	r0
      0021D8 36               [12]  820 	addc	a,@r0
      0021D9 FB               [12]  821 	mov	r3,a
      0021DA 08               [12]  822 	inc	r0
      0021DB 86 04            [24]  823 	mov	ar4,@r0
      0021DD 8A 82            [24]  824 	mov	dpl,r2
      0021DF 8B 83            [24]  825 	mov	dph,r3
      0021E1 8C F0            [24]  826 	mov	b,r4
      0021E3 12 26 AE         [24]  827 	lcall	__gptrget
      0021E6 FA               [12]  828 	mov	r2,a
      0021E7 E5 10            [12]  829 	mov	a,_bp
      0021E9 24 04            [12]  830 	add	a,#0x04
      0021EB F8               [12]  831 	mov	r0,a
      0021EC A6 02            [24]  832 	mov	@r0,ar2
                                    833 ;	disp.c:231: if (!symbol) {
      0021EE EA               [12]  834 	mov	a,r2
      0021EF 70 25            [24]  835 	jnz	00102$
                                    836 ;	disp.c:232: i = 0u;
      0021F1 E5 10            [12]  837 	mov	a,_bp
      0021F3 24 07            [12]  838 	add	a,#0x07
      0021F5 F8               [12]  839 	mov	r0,a
      0021F6 E4               [12]  840 	clr	a
      0021F7 F6               [12]  841 	mov	@r0,a
      0021F8 08               [12]  842 	inc	r0
      0021F9 F6               [12]  843 	mov	@r0,a
                                    844 ;	disp.c:233: symbol = msg[i];
      0021FA A8 10            [24]  845 	mov	r0,_bp
      0021FC 08               [12]  846 	inc	r0
      0021FD 86 82            [24]  847 	mov	dpl,@r0
      0021FF 08               [12]  848 	inc	r0
      002200 86 83            [24]  849 	mov	dph,@r0
      002202 08               [12]  850 	inc	r0
      002203 86 F0            [24]  851 	mov	b,@r0
      002205 E5 10            [12]  852 	mov	a,_bp
      002207 24 04            [12]  853 	add	a,#0x04
      002209 F9               [12]  854 	mov	r1,a
      00220A 12 26 AE         [24]  855 	lcall	__gptrget
      00220D F7               [12]  856 	mov	@r1,a
                                    857 ;	disp.c:234: OE |= 0x80u;
      00220E 78 3A            [12]  858 	mov	r0,#_OE
      002210 E6               [12]  859 	mov	a,@r0
      002211 44 80            [12]  860 	orl	a,#0x80
      002213 F6               [12]  861 	mov	@r0,a
      002214 80 06            [24]  862 	sjmp	00103$
      002216                        863 00102$:
                                    864 ;	disp.c:235: } else OE |= 0x40u;
      002216 78 3A            [12]  865 	mov	r0,#_OE
      002218 E6               [12]  866 	mov	a,@r0
      002219 44 40            [12]  867 	orl	a,#0x40
      00221B F6               [12]  868 	mov	@r0,a
      00221C                        869 00103$:
                                    870 ;	disp.c:236: i++;
      00221C E5 10            [12]  871 	mov	a,_bp
      00221E 24 07            [12]  872 	add	a,#0x07
      002220 F8               [12]  873 	mov	r0,a
      002221 06               [12]  874 	inc	@r0
      002222 B6 00 02         [24]  875 	cjne	@r0,#0x00,00230$
      002225 08               [12]  876 	inc	r0
      002226 06               [12]  877 	inc	@r0
      002227                        878 00230$:
      002227 80 06            [24]  879 	sjmp	00107$
      002229                        880 00105$:
                                    881 ;	disp.c:237: } else OE &= ~(0x80u | 0x40u);
      002229 78 3A            [12]  882 	mov	r0,#_OE
      00222B E6               [12]  883 	mov	a,@r0
      00222C 54 3F            [12]  884 	anl	a,#0x3f
      00222E F6               [12]  885 	mov	@r0,a
                                    886 ;	disp.c:238: GPO_SETOE(OE);
      00222F                        887 00107$:
      00222F 78 06            [12]  888 	mov	r0,#(_gpo + 0x0006)
      002231 79 3A            [12]  889 	mov	r1,#_OE
      002233 E7               [12]  890 	mov	a,@r1
      002234 F2               [24]  891 	movx	@r0,a
                                    892 ;	disp.c:240: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      002235 E5 10            [12]  893 	mov	a,_bp
      002237 24 06            [12]  894 	add	a,#0x06
      002239 F8               [12]  895 	mov	r0,a
      00223A E6               [12]  896 	mov	a,@r0
      00223B 24 29            [12]  897 	add	a,#_sddcol
      00223D F9               [12]  898 	mov	r1,a
      00223E E7               [12]  899 	mov	a,@r1
      00223F FB               [12]  900 	mov	r3,a
      002240 54 C0            [12]  901 	anl	a,#0xc0
      002242 60 02            [24]  902 	jz	00232$
      002244 80 74            [24]  903 	sjmp	00113$
      002246                        904 00232$:
                                    905 ;	disp.c:198: TR1 = 0;
                                    906 ;	assignBit
      002246 C2 8E            [12]  907 	clr	_TR1
                                    908 ;	disp.c:199: TH1 = TR1_COUNT_0 >> 8;
      002248 75 8D 00         [24]  909 	mov	_TH1,#0x00
                                    910 ;	disp.c:200: TL1 = TR1_COUNT_0 & 0xffu;	
      00224B 75 8B 00         [24]  911 	mov	_TL1,#0x00
                                    912 ;	disp.c:201: TF1 = 0;
                                    913 ;	assignBit
      00224E C2 8F            [12]  914 	clr	_TF1
                                    915 ;	disp.c:202: TR1 = 1;
                                    916 ;	assignBit
      002250 D2 8E            [12]  917 	setb	_TR1
                                    918 ;	disp.c:203: while (!TF1);
      002252                        919 00128$:
                                    920 ;	disp.c:204: TF1 = 0;
                                    921 ;	assignBit
      002252 10 8F 02         [24]  922 	jbc	_TF1,00233$
      002255 80 FB            [24]  923 	sjmp	00128$
      002257                        924 00233$:
                                    925 ;	disp.c:206: TR1 = 0;
                                    926 ;	assignBit
      002257 C2 8E            [12]  927 	clr	_TR1
                                    928 ;	disp.c:207: TH1 = TR1_COUNT_1 >> 8;
      002259 75 8D C0         [24]  929 	mov	_TH1,#0xc0
                                    930 ;	disp.c:208: TL1 = TR1_COUNT_1 & 0xffu;	
      00225C 75 8B 00         [24]  931 	mov	_TL1,#0x00
                                    932 ;	disp.c:209: TF1 = 0;
                                    933 ;	assignBit
      00225F C2 8F            [12]  934 	clr	_TF1
                                    935 ;	disp.c:210: TR1 = 1;
                                    936 ;	assignBit
      002261 D2 8E            [12]  937 	setb	_TR1
                                    938 ;	disp.c:211: while (!TF1);
      002263                        939 00131$:
                                    940 ;	disp.c:212: TF1 = 0;
                                    941 ;	assignBit
      002263 10 8F 02         [24]  942 	jbc	_TF1,00234$
      002266 80 FB            [24]  943 	sjmp	00131$
      002268                        944 00234$:
                                    945 ;	disp.c:214: TR1 = 0;
                                    946 ;	assignBit
      002268 C2 8E            [12]  947 	clr	_TR1
                                    948 ;	disp.c:243: for (j = 0u; j < 8u; j++)
      00226A E5 10            [12]  949 	mov	a,_bp
      00226C 24 04            [12]  950 	add	a,#0x04
      00226E F8               [12]  951 	mov	r0,a
      00226F E6               [12]  952 	mov	a,@r0
      002270 75 F0 08         [24]  953 	mov	b,#0x08
      002273 A4               [48]  954 	mul	ab
      002274 24 01            [12]  955 	add	a,#__ft_font6x8
      002276 FA               [12]  956 	mov	r2,a
      002277 74 81            [12]  957 	mov	a,#(__ft_font6x8 >> 8)
      002279 35 F0            [12]  958 	addc	a,b
      00227B FB               [12]  959 	mov	r3,a
      00227C E5 10            [12]  960 	mov	a,_bp
      00227E 24 06            [12]  961 	add	a,#0x06
      002280 F8               [12]  962 	mov	r0,a
      002281 74 07            [12]  963 	mov	a,#0x07
      002283 C3               [12]  964 	clr	c
      002284 96               [12]  965 	subb	a,@r0
      002285 FD               [12]  966 	mov	r5,a
      002286 7C 00            [12]  967 	mov	r4,#0x00
      002288                        968 00137$:
                                    969 ;	disp.c:244: ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      002288 EC               [12]  970 	mov	a,r4
      002289 24 31            [12]  971 	add	a,#_ddata
      00228B F9               [12]  972 	mov	r1,a
      00228C EC               [12]  973 	mov	a,r4
      00228D 2A               [12]  974 	add	a,r2
      00228E F5 82            [12]  975 	mov	dpl,a
      002290 E4               [12]  976 	clr	a
      002291 3B               [12]  977 	addc	a,r3
      002292 F5 83            [12]  978 	mov	dph,a
      002294 E0               [24]  979 	movx	a,@dptr
      002295 FF               [12]  980 	mov	r7,a
      002296 78 3B            [12]  981 	mov	r0,#_inv
      002298 E6               [12]  982 	mov	a,@r0
      002299 62 07            [12]  983 	xrl	ar7,a
      00229B 8D F0            [24]  984 	mov	b,r5
      00229D 05 F0            [12]  985 	inc	b
      00229F EF               [12]  986 	mov	a,r7
      0022A0 80 02            [24]  987 	sjmp	00237$
      0022A2                        988 00235$:
      0022A2 25 E0            [12]  989 	add	a,acc
      0022A4                        990 00237$:
      0022A4 D5 F0 FB         [24]  991 	djnz	b,00235$
      0022A7 54 80            [12]  992 	anl	a,#0x80
      0022A9 FF               [12]  993 	mov	r7,a
      0022AA EC               [12]  994 	mov	a,r4
      0022AB 24 31            [12]  995 	add	a,#_ddata
      0022AD F8               [12]  996 	mov	r0,a
      0022AE E6               [12]  997 	mov	a,@r0
      0022AF C3               [12]  998 	clr	c
      0022B0 13               [12]  999 	rrc	a
      0022B1 FE               [12] 1000 	mov	r6,a
      0022B2 4F               [12] 1001 	orl	a,r7
      0022B3 F7               [12] 1002 	mov	@r1,a
                                   1003 ;	disp.c:243: for (j = 0u; j < 8u; j++)
      0022B4 0C               [12] 1004 	inc	r4
      0022B5 BC 08 00         [24] 1005 	cjne	r4,#0x08,00238$
      0022B8                       1006 00238$:
      0022B8 40 CE            [24] 1007 	jc	00137$
                                   1008 ;	disp.c:246: skip_shift:
      0022BA                       1009 00113$:
                                   1010 ;	disp.c:247: if ((r = getchar_poll()) >= 0) {
      0022BA 12 20 BB         [24] 1011 	lcall	_getchar_poll
      0022BD AB 82            [24] 1012 	mov	r3,dpl
      0022BF AC 83            [24] 1013 	mov	r4,dph
      0022C1 8B 07            [24] 1014 	mov	ar7,r3
      0022C3 EC               [12] 1015 	mov	a,r4
      0022C4 FE               [12] 1016 	mov	r6,a
      0022C5 20 E7 65         [24] 1017 	jb	acc.7,00143$
                                   1018 ;	disp.c:248: r = toupper(r);
      0022C8 8F 82            [24] 1019 	mov	dpl,r7
      0022CA 8E 83            [24] 1020 	mov	dph,r6
      0022CC 12 25 D0         [24] 1021 	lcall	_toupper
      0022CF AB 82            [24] 1022 	mov	r3,dpl
      0022D1 AC 83            [24] 1023 	mov	r4,dph
                                   1024 ;	disp.c:249: if ((r == (int)'P') || (r == (int)' ')) {
      0022D3 BB 50 05         [24] 1025 	cjne	r3,#0x50,00241$
      0022D6 BC 00 02         [24] 1026 	cjne	r4,#0x00,00241$
      0022D9 80 06            [24] 1027 	sjmp	00121$
      0022DB                       1028 00241$:
      0022DB BB 20 2A         [24] 1029 	cjne	r3,#0x20,00122$
      0022DE BC 00 27         [24] 1030 	cjne	r4,#0x00,00122$
      0022E1                       1031 00121$:
                                   1032 ;	disp.c:250: printstr("PAUSE\r\n");
      0022E1 7E E9            [12] 1033 	mov	r6,#___str_0
      0022E3 7C 26            [12] 1034 	mov	r4,#(___str_0 >> 8)
      0022E5 7B 80            [12] 1035 	mov	r3,#0x80
                                   1036 ;	disp.c:52: return;
      0022E7                       1037 00140$:
                                   1038 ;	disp.c:50: for (; *s; s++) putchar(*s);
      0022E7 8E 82            [24] 1039 	mov	dpl,r6
      0022E9 8C 83            [24] 1040 	mov	dph,r4
      0022EB 8B F0            [24] 1041 	mov	b,r3
      0022ED 12 26 AE         [24] 1042 	lcall	__gptrget
      0022F0 FD               [12] 1043 	mov	r5,a
      0022F1 60 10            [24] 1044 	jz	00136$
      0022F3 7F 00            [12] 1045 	mov	r7,#0x00
      0022F5 8D 82            [24] 1046 	mov	dpl,r5
      0022F7 8F 83            [24] 1047 	mov	dph,r7
      0022F9 12 20 AD         [24] 1048 	lcall	_putchar
      0022FC 0E               [12] 1049 	inc	r6
                                   1050 ;	disp.c:250: printstr("PAUSE\r\n");
      0022FD BE 00 E7         [24] 1051 	cjne	r6,#0x00,00140$
      002300 0C               [12] 1052 	inc	r4
      002301 80 E4            [24] 1053 	sjmp	00140$
      002303                       1054 00136$:
                                   1055 ;	disp.c:251: (void)getchar();
      002303 12 20 B2         [24] 1056 	lcall	_getchar
      002306 80 25            [24] 1057 	sjmp	00143$
      002308                       1058 00122$:
                                   1059 ;	disp.c:252: } else if (r == (int)'I') inv = ~inv;
      002308 BB 49 0A         [24] 1060 	cjne	r3,#0x49,00119$
      00230B BC 00 07         [24] 1061 	cjne	r4,#0x00,00119$
      00230E 78 3B            [12] 1062 	mov	r0,#_inv
      002310 E6               [12] 1063 	mov	a,@r0
      002311 F4               [12] 1064 	cpl	a
      002312 F6               [12] 1065 	mov	@r0,a
      002313 80 18            [24] 1066 	sjmp	00143$
      002315                       1067 00119$:
                                   1068 ;	disp.c:253: else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      002315 BB 54 05         [24] 1069 	cjne	r3,#0x54,00248$
      002318 BC 00 02         [24] 1070 	cjne	r4,#0x00,00248$
      00231B 80 24            [24] 1071 	sjmp	00127$
      00231D                       1072 00248$:
      00231D BB 52 05         [24] 1073 	cjne	r3,#0x52,00249$
      002320 BC 00 02         [24] 1074 	cjne	r4,#0x00,00249$
      002323 80 1C            [24] 1075 	sjmp	00127$
      002325                       1076 00249$:
      002325 BB 4C 05         [24] 1077 	cjne	r3,#0x4c,00250$
      002328 BC 00 02         [24] 1078 	cjne	r4,#0x00,00250$
      00232B 80 14            [24] 1079 	sjmp	00127$
      00232D                       1080 00250$:
      00232D                       1081 00143$:
                                   1082 ;	disp.c:228: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      00232D E5 10            [12] 1083 	mov	a,_bp
      00232F 24 06            [12] 1084 	add	a,#0x06
      002331 F8               [12] 1085 	mov	r0,a
      002332 E6               [12] 1086 	mov	a,@r0
      002333 04               [12] 1087 	inc	a
      002334 FF               [12] 1088 	mov	r7,a
      002335 E5 10            [12] 1089 	mov	a,_bp
      002337 24 06            [12] 1090 	add	a,#0x06
      002339 F8               [12] 1091 	mov	r0,a
      00233A 74 07            [12] 1092 	mov	a,#0x07
      00233C 5F               [12] 1093 	anl	a,r7
      00233D F6               [12] 1094 	mov	@r0,a
      00233E 02 21 C2         [24] 1095 	ljmp	00142$
      002341                       1096 00127$:
                                   1097 ;	disp.c:257: return r;
      002341 8B 82            [24] 1098 	mov	dpl,r3
      002343 8C 83            [24] 1099 	mov	dph,r4
                                   1100 ;	disp.c:258: }
      002345 85 10 81         [24] 1101 	mov	sp,_bp
      002348 D0 10            [24] 1102 	pop	_bp
      00234A 22               [24] 1103 	ret
                                   1104 ;------------------------------------------------------------
                                   1105 ;Allocation info for local variables in function 'main'
                                   1106 ;------------------------------------------------------------
                                   1107 ;j                         Allocated to stack - _bp +1
                                   1108 ;c                         Allocated to registers r7 r6 
                                   1109 ;__1310720004              Allocated to registers 
                                   1110 ;s                         Allocated to registers r5 r6 r7 
                                   1111 ;__1966080006              Allocated to registers 
                                   1112 ;s                         Allocated to registers r5 r6 r7 
                                   1113 ;__1966080008              Allocated to registers 
                                   1114 ;s                         Allocated to registers r5 r6 r7 
                                   1115 ;__1966080010              Allocated to registers 
                                   1116 ;s                         Allocated to registers r5 r6 r7 
                                   1117 ;__3276800012              Allocated to registers 
                                   1118 ;s                         Allocated to registers r7 r6 r4 
                                   1119 ;__3276800014              Allocated to registers 
                                   1120 ;s                         Allocated to registers r7 r6 r4 
                                   1121 ;__3276800016              Allocated to registers 
                                   1122 ;s                         Allocated to registers r7 r6 r4 
                                   1123 ;__3276800018              Allocated to registers 
                                   1124 ;s                         Allocated to registers r7 r6 r4 
                                   1125 ;__3276800020              Allocated to registers 
                                   1126 ;s                         Allocated to registers r7 r6 r4 
                                   1127 ;__1310720022              Allocated to registers 
                                   1128 ;s                         Allocated to registers r5 r6 r7 
                                   1129 ;sloc0                     Allocated to stack - _bp +65
                                   1130 ;------------------------------------------------------------
                                   1131 ;	disp.c:260: void main(void) {
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function main
                                   1134 ;	-----------------------------------------
      00234B                       1135 _main:
      00234B C0 10            [24] 1136 	push	_bp
      00234D 85 81 10         [24] 1137 	mov	_bp,sp
      002350 05 81            [12] 1138 	inc	sp
      002352 05 81            [12] 1139 	inc	sp
                                   1140 ;	disp.c:264: gpo_init();
      002354 12 20 D7         [24] 1141 	lcall	_gpo_init
                                   1142 ;	disp.c:265: gpo_clear();
      002357 12 20 F8         [24] 1143 	lcall	_gpo_clear
                                   1144 ;	disp.c:266: init_disp();
      00235A 12 21 34         [24] 1145 	lcall	_init_disp
                                   1146 ;	disp.c:267: init_timer0();
      00235D 12 21 1C         [24] 1147 	lcall	_init_timer0
                                   1148 ;	disp.c:268: init_timer1();
      002360 12 21 28         [24] 1149 	lcall	_init_timer1
                                   1150 ;	disp.c:269: init_intr();
      002363 12 21 11         [24] 1151 	lcall	_init_intr
                                   1152 ;	disp.c:270: TR0 = 1;
                                   1153 ;	assignBit
      002366 D2 8C            [12] 1154 	setb	_TR0
                                   1155 ;	disp.c:272: reset:
      002368                       1156 00101$:
                                   1157 ;	disp.c:273: init_disp();
      002368 12 21 34         [24] 1158 	lcall	_init_disp
                                   1159 ;	disp.c:274: printstr("RESET\r\n");
      00236B 7D F1            [12] 1160 	mov	r5,#___str_1
      00236D 7E 26            [12] 1161 	mov	r6,#(___str_1 >> 8)
      00236F 7F 80            [12] 1162 	mov	r7,#0x80
                                   1163 ;	disp.c:52: return;
      002371                       1164 00149$:
                                   1165 ;	disp.c:50: for (; *s; s++) putchar(*s);
      002371 8D 82            [24] 1166 	mov	dpl,r5
      002373 8E 83            [24] 1167 	mov	dph,r6
      002375 8F F0            [24] 1168 	mov	b,r7
      002377 12 26 AE         [24] 1169 	lcall	__gptrget
      00237A FC               [12] 1170 	mov	r4,a
      00237B 60 10            [24] 1171 	jz	00129$
      00237D 7B 00            [12] 1172 	mov	r3,#0x00
      00237F 8C 82            [24] 1173 	mov	dpl,r4
      002381 8B 83            [24] 1174 	mov	dph,r3
      002383 12 20 AD         [24] 1175 	lcall	_putchar
      002386 0D               [12] 1176 	inc	r5
                                   1177 ;	disp.c:274: printstr("RESET\r\n");
      002387 BD 00 E7         [24] 1178 	cjne	r5,#0x00,00149$
      00238A 0E               [12] 1179 	inc	r6
      00238B 80 E4            [24] 1180 	sjmp	00149$
      00238D                       1181 00129$:
                                   1182 ;	disp.c:275: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      00238D E4               [12] 1183 	clr	a
      00238E C0 E0            [24] 1184 	push	acc
      002390 04               [12] 1185 	inc	a
      002391 C0 E0            [24] 1186 	push	acc
      002393 90 89 01         [24] 1187 	mov	dptr,#_initial
      002396 E0               [24] 1188 	movx	a,@dptr
      002397 C0 E0            [24] 1189 	push	acc
      002399 A3               [24] 1190 	inc	dptr
      00239A E0               [24] 1191 	movx	a,@dptr
      00239B C0 E0            [24] 1192 	push	acc
      00239D A3               [24] 1193 	inc	dptr
      00239E E0               [24] 1194 	movx	a,@dptr
      00239F C0 E0            [24] 1195 	push	acc
      0023A1 90 80 00         [24] 1196 	mov	dptr,#_buf
      0023A4 75 F0 00         [24] 1197 	mov	b,#0x00
      0023A7 12 25 F7         [24] 1198 	lcall	_strncpy
      0023AA E5 81            [12] 1199 	mov	a,sp
      0023AC 24 FB            [12] 1200 	add	a,#0xfb
      0023AE F5 81            [12] 1201 	mov	sp,a
                                   1202 ;	disp.c:276: buf[sizeof (buf) - 1u] = 0u;
      0023B0 90 81 00         [24] 1203 	mov	dptr,#(_buf + 0x0100)
      0023B3 E4               [12] 1204 	clr	a
      0023B4 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	disp.c:277: inv = 0u;
      0023B5 78 3B            [12] 1207 	mov	r0,#_inv
      0023B7 76 00            [12] 1208 	mov	@r0,#0x00
                                   1209 ;	disp.c:279: while (1) {
      0023B9                       1210 00125$:
                                   1211 ;	disp.c:280: printstr("P SP I L ENT S R T START MSG \"");
      0023B9 7D F9            [12] 1212 	mov	r5,#___str_2
      0023BB 7E 26            [12] 1213 	mov	r6,#(___str_2 >> 8)
      0023BD 7F 80            [12] 1214 	mov	r7,#0x80
                                   1215 ;	disp.c:52: return;
      0023BF                       1216 00152$:
                                   1217 ;	disp.c:50: for (; *s; s++) putchar(*s);
      0023BF 8D 82            [24] 1218 	mov	dpl,r5
      0023C1 8E 83            [24] 1219 	mov	dph,r6
      0023C3 8F F0            [24] 1220 	mov	b,r7
      0023C5 12 26 AE         [24] 1221 	lcall	__gptrget
      0023C8 FC               [12] 1222 	mov	r4,a
      0023C9 60 10            [24] 1223 	jz	00131$
      0023CB 7B 00            [12] 1224 	mov	r3,#0x00
      0023CD 8C 82            [24] 1225 	mov	dpl,r4
      0023CF 8B 83            [24] 1226 	mov	dph,r3
      0023D1 12 20 AD         [24] 1227 	lcall	_putchar
      0023D4 0D               [12] 1228 	inc	r5
                                   1229 ;	disp.c:280: printstr("P SP I L ENT S R T START MSG \"");
      0023D5 BD 00 E7         [24] 1230 	cjne	r5,#0x00,00152$
      0023D8 0E               [12] 1231 	inc	r6
      0023D9 80 E4            [24] 1232 	sjmp	00152$
      0023DB                       1233 00131$:
                                   1234 ;	disp.c:281: printstr((char *)buf);
      0023DB 7D 00            [12] 1235 	mov	r5,#_buf
      0023DD 7E 80            [12] 1236 	mov	r6,#(_buf >> 8)
      0023DF 7F 00            [12] 1237 	mov	r7,#0x00
                                   1238 ;	disp.c:52: return;
      0023E1                       1239 00155$:
                                   1240 ;	disp.c:50: for (; *s; s++) putchar(*s);
      0023E1 8D 82            [24] 1241 	mov	dpl,r5
      0023E3 8E 83            [24] 1242 	mov	dph,r6
      0023E5 8F F0            [24] 1243 	mov	b,r7
      0023E7 12 26 AE         [24] 1244 	lcall	__gptrget
      0023EA FC               [12] 1245 	mov	r4,a
      0023EB 60 10            [24] 1246 	jz	00133$
      0023ED 7B 00            [12] 1247 	mov	r3,#0x00
      0023EF 8C 82            [24] 1248 	mov	dpl,r4
      0023F1 8B 83            [24] 1249 	mov	dph,r3
      0023F3 12 20 AD         [24] 1250 	lcall	_putchar
      0023F6 0D               [12] 1251 	inc	r5
                                   1252 ;	disp.c:281: printstr((char *)buf);
      0023F7 BD 00 E7         [24] 1253 	cjne	r5,#0x00,00155$
      0023FA 0E               [12] 1254 	inc	r6
      0023FB 80 E4            [24] 1255 	sjmp	00155$
      0023FD                       1256 00133$:
                                   1257 ;	disp.c:282: printstr("\"\r\n");
      0023FD 7D 18            [12] 1258 	mov	r5,#___str_3
      0023FF 7E 27            [12] 1259 	mov	r6,#(___str_3 >> 8)
      002401 7F 80            [12] 1260 	mov	r7,#0x80
                                   1261 ;	disp.c:52: return;
      002403                       1262 00158$:
                                   1263 ;	disp.c:50: for (; *s; s++) putchar(*s);
      002403 8D 82            [24] 1264 	mov	dpl,r5
      002405 8E 83            [24] 1265 	mov	dph,r6
      002407 8F F0            [24] 1266 	mov	b,r7
      002409 12 26 AE         [24] 1267 	lcall	__gptrget
      00240C FC               [12] 1268 	mov	r4,a
      00240D 60 10            [24] 1269 	jz	00135$
      00240F 7B 00            [12] 1270 	mov	r3,#0x00
      002411 8C 82            [24] 1271 	mov	dpl,r4
      002413 8B 83            [24] 1272 	mov	dph,r3
      002415 12 20 AD         [24] 1273 	lcall	_putchar
      002418 0D               [12] 1274 	inc	r5
                                   1275 ;	disp.c:282: printstr("\"\r\n");
      002419 BD 00 E7         [24] 1276 	cjne	r5,#0x00,00158$
      00241C 0E               [12] 1277 	inc	r6
      00241D 80 E4            [24] 1278 	sjmp	00158$
      00241F                       1279 00135$:
                                   1280 ;	disp.c:284: c = scroll(buf);
      00241F 90 80 00         [24] 1281 	mov	dptr,#_buf
      002422 75 F0 00         [24] 1282 	mov	b,#0x00
      002425 12 21 A1         [24] 1283 	lcall	_scroll
      002428 AE 82            [24] 1284 	mov	r6,dpl
      00242A AF 83            [24] 1285 	mov	r7,dph
                                   1286 ;	disp.c:286: while (1) {
      00242C                       1287 00122$:
                                   1288 ;	disp.c:287: if (c == (int)'T') goto term;
      00242C BE 54 06         [24] 1289 	cjne	r6,#0x54,00345$
      00242F BF 00 03         [24] 1290 	cjne	r7,#0x00,00345$
      002432 02 25 9D         [24] 1291 	ljmp	00127$
      002435                       1292 00345$:
                                   1293 ;	disp.c:288: else if (c == (int)'R') goto reset;
      002435 BE 52 06         [24] 1294 	cjne	r6,#0x52,00346$
      002438 BF 00 03         [24] 1295 	cjne	r7,#0x00,00346$
      00243B 02 23 68         [24] 1296 	ljmp	00101$
      00243E                       1297 00346$:
                                   1298 ;	disp.c:289: else if (c == (int)'I') inv = ~inv;
      00243E BE 49 0B         [24] 1299 	cjne	r6,#0x49,00113$
      002441 BF 00 08         [24] 1300 	cjne	r7,#0x00,00113$
      002444 78 3B            [12] 1301 	mov	r0,#_inv
      002446 E6               [12] 1302 	mov	a,@r0
      002447 F4               [12] 1303 	cpl	a
      002448 F6               [12] 1304 	mov	@r0,a
      002449 02 25 90         [24] 1305 	ljmp	00120$
      00244C                       1306 00113$:
                                   1307 ;	disp.c:290: else if (c == (int)'L') {
      00244C BE 4C 05         [24] 1308 	cjne	r6,#0x4c,00349$
      00244F BF 00 02         [24] 1309 	cjne	r7,#0x00,00349$
      002452 80 03            [24] 1310 	sjmp	00350$
      002454                       1311 00349$:
      002454 02 25 87         [24] 1312 	ljmp	00110$
      002457                       1313 00350$:
                                   1314 ;	disp.c:291: init_disp();
      002457 12 21 34         [24] 1315 	lcall	_init_disp
                                   1316 ;	disp.c:292: printstr("LOAD ");
      00245A 7F 1C            [12] 1317 	mov	r7,#___str_4
      00245C 7E 27            [12] 1318 	mov	r6,#(___str_4 >> 8)
      00245E 7C 80            [12] 1319 	mov	r4,#0x80
                                   1320 ;	disp.c:52: return;
      002460                       1321 00161$:
                                   1322 ;	disp.c:50: for (; *s; s++) putchar(*s);
      002460 8F 82            [24] 1323 	mov	dpl,r7
      002462 8E 83            [24] 1324 	mov	dph,r6
      002464 8C F0            [24] 1325 	mov	b,r4
      002466 12 26 AE         [24] 1326 	lcall	__gptrget
      002469 FA               [12] 1327 	mov	r2,a
      00246A 60 10            [24] 1328 	jz	00137$
      00246C 7D 00            [12] 1329 	mov	r5,#0x00
      00246E 8A 82            [24] 1330 	mov	dpl,r2
      002470 8D 83            [24] 1331 	mov	dph,r5
      002472 12 20 AD         [24] 1332 	lcall	_putchar
      002475 0F               [12] 1333 	inc	r7
                                   1334 ;	disp.c:292: printstr("LOAD ");
      002476 BF 00 E7         [24] 1335 	cjne	r7,#0x00,00161$
      002479 0E               [12] 1336 	inc	r6
      00247A 80 E4            [24] 1337 	sjmp	00161$
      00247C                       1338 00137$:
                                   1339 ;	disp.c:293: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00247C 7C 00            [12] 1340 	mov	r4,#0x00
      00247E 7D 00            [12] 1341 	mov	r5,#0x00
      002480 A8 10            [24] 1342 	mov	r0,_bp
      002482 08               [12] 1343 	inc	r0
      002483 E4               [12] 1344 	clr	a
      002484 F6               [12] 1345 	mov	@r0,a
      002485 08               [12] 1346 	inc	r0
      002486 F6               [12] 1347 	mov	@r0,a
      002487                       1348 00163$:
                                   1349 ;	disp.c:294: c = getchar();
      002487 C0 04            [24] 1350 	push	ar4
      002489 C0 05            [24] 1351 	push	ar5
      00248B 12 20 B2         [24] 1352 	lcall	_getchar
      00248E AC 82            [24] 1353 	mov	r4,dpl
      002490 AD 83            [24] 1354 	mov	r5,dph
      002492 8C 07            [24] 1355 	mov	ar7,r4
      002494 8D 06            [24] 1356 	mov	ar6,r5
                                   1357 ;	disp.c:295: (void)putchar(c);
      002496 8F 82            [24] 1358 	mov	dpl,r7
      002498 8E 83            [24] 1359 	mov	dph,r6
      00249A 12 20 AD         [24] 1360 	lcall	_putchar
                                   1361 ;	disp.c:296: if ((c == (int)'\r') || (c == (int)'\n')) {
      00249D BF 0D 09         [24] 1362 	cjne	r7,#0x0d,00353$
      0024A0 BE 00 06         [24] 1363 	cjne	r6,#0x00,00353$
      0024A3 D0 05            [24] 1364 	pop	ar5
      0024A5 D0 04            [24] 1365 	pop	ar4
      0024A7 80 0A            [24] 1366 	sjmp	00102$
      0024A9                       1367 00353$:
      0024A9 D0 05            [24] 1368 	pop	ar5
      0024AB D0 04            [24] 1369 	pop	ar4
      0024AD BF 0A 11         [24] 1370 	cjne	r7,#0x0a,00103$
      0024B0 BE 00 0E         [24] 1371 	cjne	r6,#0x00,00103$
      0024B3                       1372 00102$:
                                   1373 ;	disp.c:297: buf[j] = 0u;
      0024B3 EC               [12] 1374 	mov	a,r4
      0024B4 24 00            [12] 1375 	add	a,#_buf
      0024B6 F5 82            [12] 1376 	mov	dpl,a
      0024B8 ED               [12] 1377 	mov	a,r5
      0024B9 34 80            [12] 1378 	addc	a,#(_buf >> 8)
      0024BB F5 83            [12] 1379 	mov	dph,a
      0024BD E4               [12] 1380 	clr	a
      0024BE F0               [24] 1381 	movx	@dptr,a
                                   1382 ;	disp.c:298: break;
      0024BF 80 32            [24] 1383 	sjmp	00106$
      0024C1                       1384 00103$:
                                   1385 ;	disp.c:299: } else buf[j] = c & 0xffu;
      0024C1 A8 10            [24] 1386 	mov	r0,_bp
      0024C3 08               [12] 1387 	inc	r0
      0024C4 E6               [12] 1388 	mov	a,@r0
      0024C5 24 00            [12] 1389 	add	a,#_buf
      0024C7 FD               [12] 1390 	mov	r5,a
      0024C8 08               [12] 1391 	inc	r0
      0024C9 E6               [12] 1392 	mov	a,@r0
      0024CA 34 80            [12] 1393 	addc	a,#(_buf >> 8)
      0024CC FC               [12] 1394 	mov	r4,a
      0024CD 8F 03            [24] 1395 	mov	ar3,r7
      0024CF 8D 82            [24] 1396 	mov	dpl,r5
      0024D1 8C 83            [24] 1397 	mov	dph,r4
      0024D3 EB               [12] 1398 	mov	a,r3
      0024D4 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	disp.c:293: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      0024D5 A8 10            [24] 1401 	mov	r0,_bp
      0024D7 08               [12] 1402 	inc	r0
      0024D8 06               [12] 1403 	inc	@r0
      0024D9 B6 00 02         [24] 1404 	cjne	@r0,#0x00,00356$
      0024DC 08               [12] 1405 	inc	r0
      0024DD 06               [12] 1406 	inc	@r0
      0024DE                       1407 00356$:
      0024DE A8 10            [24] 1408 	mov	r0,_bp
      0024E0 08               [12] 1409 	inc	r0
      0024E1 86 04            [24] 1410 	mov	ar4,@r0
      0024E3 08               [12] 1411 	inc	r0
      0024E4 86 05            [24] 1412 	mov	ar5,@r0
      0024E6 A8 10            [24] 1413 	mov	r0,_bp
      0024E8 08               [12] 1414 	inc	r0
      0024E9 86 02            [24] 1415 	mov	ar2,@r0
      0024EB 08               [12] 1416 	inc	r0
      0024EC 86 03            [24] 1417 	mov	ar3,@r0
      0024EE 74 FF            [12] 1418 	mov	a,#0x100 - 0x01
      0024F0 2B               [12] 1419 	add	a,r3
      0024F1 50 94            [24] 1420 	jnc	00163$
      0024F3                       1421 00106$:
                                   1422 ;	disp.c:301: buf[j] = 0u;
      0024F3 EC               [12] 1423 	mov	a,r4
      0024F4 24 00            [12] 1424 	add	a,#_buf
      0024F6 F5 82            [12] 1425 	mov	dpl,a
      0024F8 ED               [12] 1426 	mov	a,r5
      0024F9 34 80            [12] 1427 	addc	a,#(_buf >> 8)
      0024FB F5 83            [12] 1428 	mov	dph,a
      0024FD E4               [12] 1429 	clr	a
      0024FE F0               [24] 1430 	movx	@dptr,a
                                   1431 ;	disp.c:302: printstr("\r\n");
      0024FF 7F 22            [12] 1432 	mov	r7,#___str_5
      002501 7E 27            [12] 1433 	mov	r6,#(___str_5 >> 8)
      002503 7C 80            [12] 1434 	mov	r4,#0x80
                                   1435 ;	disp.c:52: return;
      002505                       1436 00166$:
                                   1437 ;	disp.c:50: for (; *s; s++) putchar(*s);
      002505 8F 82            [24] 1438 	mov	dpl,r7
      002507 8E 83            [24] 1439 	mov	dph,r6
      002509 8C F0            [24] 1440 	mov	b,r4
      00250B 12 26 AE         [24] 1441 	lcall	__gptrget
      00250E FA               [12] 1442 	mov	r2,a
      00250F 60 10            [24] 1443 	jz	00139$
      002511 7D 00            [12] 1444 	mov	r5,#0x00
      002513 8A 82            [24] 1445 	mov	dpl,r2
      002515 8D 83            [24] 1446 	mov	dph,r5
      002517 12 20 AD         [24] 1447 	lcall	_putchar
      00251A 0F               [12] 1448 	inc	r7
                                   1449 ;	disp.c:302: printstr("\r\n");
      00251B BF 00 E7         [24] 1450 	cjne	r7,#0x00,00166$
      00251E 0E               [12] 1451 	inc	r6
      00251F 80 E4            [24] 1452 	sjmp	00166$
      002521                       1453 00139$:
                                   1454 ;	disp.c:303: printstr("MSG \"");
      002521 7F 25            [12] 1455 	mov	r7,#___str_6
      002523 7E 27            [12] 1456 	mov	r6,#(___str_6 >> 8)
      002525 7C 80            [12] 1457 	mov	r4,#0x80
                                   1458 ;	disp.c:52: return;
      002527                       1459 00169$:
                                   1460 ;	disp.c:50: for (; *s; s++) putchar(*s);
      002527 8F 82            [24] 1461 	mov	dpl,r7
      002529 8E 83            [24] 1462 	mov	dph,r6
      00252B 8C F0            [24] 1463 	mov	b,r4
      00252D 12 26 AE         [24] 1464 	lcall	__gptrget
      002530 FA               [12] 1465 	mov	r2,a
      002531 60 10            [24] 1466 	jz	00141$
      002533 7D 00            [12] 1467 	mov	r5,#0x00
      002535 8A 82            [24] 1468 	mov	dpl,r2
      002537 8D 83            [24] 1469 	mov	dph,r5
      002539 12 20 AD         [24] 1470 	lcall	_putchar
      00253C 0F               [12] 1471 	inc	r7
                                   1472 ;	disp.c:303: printstr("MSG \"");
      00253D BF 00 E7         [24] 1473 	cjne	r7,#0x00,00169$
      002540 0E               [12] 1474 	inc	r6
      002541 80 E4            [24] 1475 	sjmp	00169$
      002543                       1476 00141$:
                                   1477 ;	disp.c:304: printstr((char *)buf);
      002543 7F 00            [12] 1478 	mov	r7,#_buf
      002545 7E 80            [12] 1479 	mov	r6,#(_buf >> 8)
      002547 7C 00            [12] 1480 	mov	r4,#0x00
                                   1481 ;	disp.c:52: return;
      002549                       1482 00172$:
                                   1483 ;	disp.c:50: for (; *s; s++) putchar(*s);
      002549 8F 82            [24] 1484 	mov	dpl,r7
      00254B 8E 83            [24] 1485 	mov	dph,r6
      00254D 8C F0            [24] 1486 	mov	b,r4
      00254F 12 26 AE         [24] 1487 	lcall	__gptrget
      002552 FA               [12] 1488 	mov	r2,a
      002553 60 10            [24] 1489 	jz	00143$
      002555 7D 00            [12] 1490 	mov	r5,#0x00
      002557 8A 82            [24] 1491 	mov	dpl,r2
      002559 8D 83            [24] 1492 	mov	dph,r5
      00255B 12 20 AD         [24] 1493 	lcall	_putchar
      00255E 0F               [12] 1494 	inc	r7
                                   1495 ;	disp.c:304: printstr((char *)buf);
      00255F BF 00 E7         [24] 1496 	cjne	r7,#0x00,00172$
      002562 0E               [12] 1497 	inc	r6
      002563 80 E4            [24] 1498 	sjmp	00172$
      002565                       1499 00143$:
                                   1500 ;	disp.c:305: printstr("\"\r\n");
      002565 7F 18            [12] 1501 	mov	r7,#___str_3
      002567 7E 27            [12] 1502 	mov	r6,#(___str_3 >> 8)
      002569 7C 80            [12] 1503 	mov	r4,#0x80
                                   1504 ;	disp.c:52: return;
      00256B                       1505 00175$:
                                   1506 ;	disp.c:50: for (; *s; s++) putchar(*s);
      00256B 8F 82            [24] 1507 	mov	dpl,r7
      00256D 8E 83            [24] 1508 	mov	dph,r6
      00256F 8C F0            [24] 1509 	mov	b,r4
      002571 12 26 AE         [24] 1510 	lcall	__gptrget
      002574 FA               [12] 1511 	mov	r2,a
      002575 60 19            [24] 1512 	jz	00120$
      002577 7D 00            [12] 1513 	mov	r5,#0x00
      002579 8A 82            [24] 1514 	mov	dpl,r2
      00257B 8D 83            [24] 1515 	mov	dph,r5
      00257D 12 20 AD         [24] 1516 	lcall	_putchar
      002580 0F               [12] 1517 	inc	r7
                                   1518 ;	disp.c:305: printstr("\"\r\n");
      002581 BF 00 E7         [24] 1519 	cjne	r7,#0x00,00175$
      002584 0E               [12] 1520 	inc	r6
      002585 80 E4            [24] 1521 	sjmp	00175$
      002587                       1522 00110$:
                                   1523 ;	disp.c:306: } else if (c == (int)'S') break;
      002587 BE 53 06         [24] 1524 	cjne	r6,#0x53,00366$
      00258A BF 00 03         [24] 1525 	cjne	r7,#0x00,00366$
      00258D 02 23 B9         [24] 1526 	ljmp	00125$
      002590                       1527 00366$:
      002590                       1528 00120$:
                                   1529 ;	disp.c:308: c = toupper(getchar());
      002590 12 20 B2         [24] 1530 	lcall	_getchar
      002593 12 25 D0         [24] 1531 	lcall	_toupper
      002596 AE 82            [24] 1532 	mov	r6,dpl
      002598 AF 83            [24] 1533 	mov	r7,dph
      00259A 02 24 2C         [24] 1534 	ljmp	00122$
                                   1535 ;	disp.c:312: term:	
      00259D                       1536 00127$:
                                   1537 ;	disp.c:313: EA = 0;
                                   1538 ;	assignBit
      00259D C2 AF            [12] 1539 	clr	_EA
                                   1540 ;	disp.c:314: init_disp();
      00259F 12 21 34         [24] 1541 	lcall	_init_disp
                                   1542 ;	disp.c:315: printstr("TERM\r\n");
      0025A2 7D 2B            [12] 1543 	mov	r5,#___str_7
      0025A4 7E 27            [12] 1544 	mov	r6,#(___str_7 >> 8)
      0025A6 7F 80            [12] 1545 	mov	r7,#0x80
                                   1546 ;	disp.c:52: return;
      0025A8                       1547 00178$:
                                   1548 ;	disp.c:50: for (; *s; s++) putchar(*s);
      0025A8 8D 82            [24] 1549 	mov	dpl,r5
      0025AA 8E 83            [24] 1550 	mov	dph,r6
      0025AC 8F F0            [24] 1551 	mov	b,r7
      0025AE 12 26 AE         [24] 1552 	lcall	__gptrget
      0025B1 FC               [12] 1553 	mov	r4,a
      0025B2 60 10            [24] 1554 	jz	00147$
      0025B4 7B 00            [12] 1555 	mov	r3,#0x00
      0025B6 8C 82            [24] 1556 	mov	dpl,r4
      0025B8 8B 83            [24] 1557 	mov	dph,r3
      0025BA 12 20 AD         [24] 1558 	lcall	_putchar
      0025BD 0D               [12] 1559 	inc	r5
                                   1560 ;	disp.c:315: printstr("TERM\r\n");
      0025BE BD 00 E7         [24] 1561 	cjne	r5,#0x00,00178$
      0025C1 0E               [12] 1562 	inc	r6
      0025C2 80 E4            [24] 1563 	sjmp	00178$
      0025C4                       1564 00147$:
                                   1565 ;	disp.c:316: (void)getchar();
      0025C4 12 20 B2         [24] 1566 	lcall	_getchar
                                   1567 ;	disp.c:318: PCON |= 2;
      0025C7 43 87 02         [24] 1568 	orl	_PCON,#0x02
                                   1569 ;	disp.c:320: return;
                                   1570 ;	disp.c:321: }
      0025CA 85 10 81         [24] 1571 	mov	sp,_bp
      0025CD D0 10            [24] 1572 	pop	_bp
      0025CF 22               [24] 1573 	ret
                                   1574 	.area CSEG    (CODE)
                                   1575 	.area CONST   (CODE)
                                   1576 	.area CONST   (CODE)
      0026E9                       1577 ___str_0:
      0026E9 50 41 55 53 45        1578 	.ascii "PAUSE"
      0026EE 0D                    1579 	.db 0x0d
      0026EF 0A                    1580 	.db 0x0a
      0026F0 00                    1581 	.db 0x00
                                   1582 	.area CSEG    (CODE)
                                   1583 	.area CONST   (CODE)
      0026F1                       1584 ___str_1:
      0026F1 52 45 53 45 54        1585 	.ascii "RESET"
      0026F6 0D                    1586 	.db 0x0d
      0026F7 0A                    1587 	.db 0x0a
      0026F8 00                    1588 	.db 0x00
                                   1589 	.area CSEG    (CODE)
                                   1590 	.area CONST   (CODE)
      0026F9                       1591 ___str_2:
      0026F9 50 20 53 50 20 49 20  1592 	.ascii "P SP I L ENT S R T START MSG "
             4C 20 45 4E 54 20 53
             20 52 20 54 20 53 54
             41 52 54 20 4D 53 47
             20
      002716 22                    1593 	.db 0x22
      002717 00                    1594 	.db 0x00
                                   1595 	.area CSEG    (CODE)
                                   1596 	.area CONST   (CODE)
      002718                       1597 ___str_3:
      002718 22                    1598 	.db 0x22
      002719 0D                    1599 	.db 0x0d
      00271A 0A                    1600 	.db 0x0a
      00271B 00                    1601 	.db 0x00
                                   1602 	.area CSEG    (CODE)
                                   1603 	.area CONST   (CODE)
      00271C                       1604 ___str_4:
      00271C 4C 4F 41 44 20        1605 	.ascii "LOAD "
      002721 00                    1606 	.db 0x00
                                   1607 	.area CSEG    (CODE)
                                   1608 	.area CONST   (CODE)
      002722                       1609 ___str_5:
      002722 0D                    1610 	.db 0x0d
      002723 0A                    1611 	.db 0x0a
      002724 00                    1612 	.db 0x00
                                   1613 	.area CSEG    (CODE)
                                   1614 	.area CONST   (CODE)
      002725                       1615 ___str_6:
      002725 4D 53 47 20           1616 	.ascii "MSG "
      002729 22                    1617 	.db 0x22
      00272A 00                    1618 	.db 0x00
                                   1619 	.area CSEG    (CODE)
                                   1620 	.area CONST   (CODE)
      00272B                       1621 ___str_7:
      00272B 54 45 52 4D           1622 	.ascii "TERM"
      00272F 0D                    1623 	.db 0x0d
      002730 0A                    1624 	.db 0x0a
      002731 00                    1625 	.db 0x00
                                   1626 	.area CSEG    (CODE)
                                   1627 	.area CONST   (CODE)
      002732                       1628 ___str_8:
      002732 4A 65 64 65 6D 20 64  1629 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      002763 00                    1630 	.db 0x00
                                   1631 	.area CSEG    (CODE)
                                   1632 	.area XINIT   (CODE)
      002764                       1633 __xinit___ft_font6x8:
      002764 00                    1634 	.db #0x00	; 0
      002765 00                    1635 	.db #0x00	; 0
      002766 00                    1636 	.db #0x00	; 0
      002767 00                    1637 	.db #0x00	; 0
      002768 00                    1638 	.db #0x00	; 0
      002769 00                    1639 	.db #0x00	; 0
      00276A 00                    1640 	.db #0x00	; 0
      00276B 00                    1641 	.db #0x00	; 0
      00276C 1C                    1642 	.db #0x1c	; 28
      00276D 22                    1643 	.db #0x22	; 34
      00276E 36                    1644 	.db #0x36	; 54	'6'
      00276F 22                    1645 	.db #0x22	; 34
      002770 2A                    1646 	.db #0x2a	; 42
      002771 22                    1647 	.db #0x22	; 34
      002772 1C                    1648 	.db #0x1c	; 28
      002773 00                    1649 	.db #0x00	; 0
      002774 1C                    1650 	.db #0x1c	; 28
      002775 3E                    1651 	.db #0x3e	; 62
      002776 2A                    1652 	.db #0x2a	; 42
      002777 3E                    1653 	.db #0x3e	; 62
      002778 22                    1654 	.db #0x22	; 34
      002779 3E                    1655 	.db #0x3e	; 62
      00277A 1C                    1656 	.db #0x1c	; 28
      00277B 00                    1657 	.db #0x00	; 0
      00277C 00                    1658 	.db #0x00	; 0
      00277D 14                    1659 	.db #0x14	; 20
      00277E 3E                    1660 	.db #0x3e	; 62
      00277F 3E                    1661 	.db #0x3e	; 62
      002780 3E                    1662 	.db #0x3e	; 62
      002781 1C                    1663 	.db #0x1c	; 28
      002782 08                    1664 	.db #0x08	; 8
      002783 00                    1665 	.db #0x00	; 0
      002784 00                    1666 	.db #0x00	; 0
      002785 08                    1667 	.db #0x08	; 8
      002786 1C                    1668 	.db #0x1c	; 28
      002787 3E                    1669 	.db #0x3e	; 62
      002788 3E                    1670 	.db #0x3e	; 62
      002789 1C                    1671 	.db #0x1c	; 28
      00278A 08                    1672 	.db #0x08	; 8
      00278B 00                    1673 	.db #0x00	; 0
      00278C 08                    1674 	.db #0x08	; 8
      00278D 1C                    1675 	.db #0x1c	; 28
      00278E 1C                    1676 	.db #0x1c	; 28
      00278F 08                    1677 	.db #0x08	; 8
      002790 3E                    1678 	.db #0x3e	; 62
      002791 3E                    1679 	.db #0x3e	; 62
      002792 08                    1680 	.db #0x08	; 8
      002793 00                    1681 	.db #0x00	; 0
      002794 00                    1682 	.db #0x00	; 0
      002795 08                    1683 	.db #0x08	; 8
      002796 1C                    1684 	.db #0x1c	; 28
      002797 3E                    1685 	.db #0x3e	; 62
      002798 3E                    1686 	.db #0x3e	; 62
      002799 08                    1687 	.db #0x08	; 8
      00279A 1C                    1688 	.db #0x1c	; 28
      00279B 00                    1689 	.db #0x00	; 0
      00279C 00                    1690 	.db #0x00	; 0
      00279D 00                    1691 	.db #0x00	; 0
      00279E 00                    1692 	.db #0x00	; 0
      00279F 0C                    1693 	.db #0x0c	; 12
      0027A0 0C                    1694 	.db #0x0c	; 12
      0027A1 00                    1695 	.db #0x00	; 0
      0027A2 00                    1696 	.db #0x00	; 0
      0027A3 00                    1697 	.db #0x00	; 0
      0027A4 3F                    1698 	.db #0x3f	; 63
      0027A5 3F                    1699 	.db #0x3f	; 63
      0027A6 3F                    1700 	.db #0x3f	; 63
      0027A7 33                    1701 	.db #0x33	; 51	'3'
      0027A8 33                    1702 	.db #0x33	; 51	'3'
      0027A9 3F                    1703 	.db #0x3f	; 63
      0027AA 3F                    1704 	.db #0x3f	; 63
      0027AB 3F                    1705 	.db #0x3f	; 63
      0027AC 00                    1706 	.db #0x00	; 0
      0027AD 00                    1707 	.db #0x00	; 0
      0027AE 1E                    1708 	.db #0x1e	; 30
      0027AF 12                    1709 	.db #0x12	; 18
      0027B0 12                    1710 	.db #0x12	; 18
      0027B1 1E                    1711 	.db #0x1e	; 30
      0027B2 00                    1712 	.db #0x00	; 0
      0027B3 00                    1713 	.db #0x00	; 0
      0027B4 3F                    1714 	.db #0x3f	; 63
      0027B5 3F                    1715 	.db #0x3f	; 63
      0027B6 21                    1716 	.db #0x21	; 33
      0027B7 2D                    1717 	.db #0x2d	; 45
      0027B8 2D                    1718 	.db #0x2d	; 45
      0027B9 21                    1719 	.db #0x21	; 33
      0027BA 3F                    1720 	.db #0x3f	; 63
      0027BB 3F                    1721 	.db #0x3f	; 63
      0027BC 00                    1722 	.db #0x00	; 0
      0027BD 38                    1723 	.db #0x38	; 56	'8'
      0027BE 30                    1724 	.db #0x30	; 48	'0'
      0027BF 2C                    1725 	.db #0x2c	; 44
      0027C0 12                    1726 	.db #0x12	; 18
      0027C1 12                    1727 	.db #0x12	; 18
      0027C2 0C                    1728 	.db #0x0c	; 12
      0027C3 00                    1729 	.db #0x00	; 0
      0027C4 1C                    1730 	.db #0x1c	; 28
      0027C5 22                    1731 	.db #0x22	; 34
      0027C6 22                    1732 	.db #0x22	; 34
      0027C7 1C                    1733 	.db #0x1c	; 28
      0027C8 08                    1734 	.db #0x08	; 8
      0027C9 1C                    1735 	.db #0x1c	; 28
      0027CA 08                    1736 	.db #0x08	; 8
      0027CB 00                    1737 	.db #0x00	; 0
      0027CC 08                    1738 	.db #0x08	; 8
      0027CD 18                    1739 	.db #0x18	; 24
      0027CE 28                    1740 	.db #0x28	; 40
      0027CF 08                    1741 	.db #0x08	; 8
      0027D0 0C                    1742 	.db #0x0c	; 12
      0027D1 0E                    1743 	.db #0x0e	; 14
      0027D2 06                    1744 	.db #0x06	; 6
      0027D3 00                    1745 	.db #0x00	; 0
      0027D4 30                    1746 	.db #0x30	; 48	'0'
      0027D5 2C                    1747 	.db #0x2c	; 44
      0027D6 34                    1748 	.db #0x34	; 52	'4'
      0027D7 2C                    1749 	.db #0x2c	; 44
      0027D8 34                    1750 	.db #0x34	; 52	'4'
      0027D9 36                    1751 	.db #0x36	; 54	'6'
      0027DA 06                    1752 	.db #0x06	; 6
      0027DB 00                    1753 	.db #0x00	; 0
      0027DC 00                    1754 	.db #0x00	; 0
      0027DD 2A                    1755 	.db #0x2a	; 42
      0027DE 1C                    1756 	.db #0x1c	; 28
      0027DF 36                    1757 	.db #0x36	; 54	'6'
      0027E0 1C                    1758 	.db #0x1c	; 28
      0027E1 2A                    1759 	.db #0x2a	; 42
      0027E2 00                    1760 	.db #0x00	; 0
      0027E3 00                    1761 	.db #0x00	; 0
      0027E4 04                    1762 	.db #0x04	; 4
      0027E5 0C                    1763 	.db #0x0c	; 12
      0027E6 1C                    1764 	.db #0x1c	; 28
      0027E7 3C                    1765 	.db #0x3c	; 60
      0027E8 1C                    1766 	.db #0x1c	; 28
      0027E9 0C                    1767 	.db #0x0c	; 12
      0027EA 04                    1768 	.db #0x04	; 4
      0027EB 00                    1769 	.db #0x00	; 0
      0027EC 10                    1770 	.db #0x10	; 16
      0027ED 18                    1771 	.db #0x18	; 24
      0027EE 1C                    1772 	.db #0x1c	; 28
      0027EF 1E                    1773 	.db #0x1e	; 30
      0027F0 1C                    1774 	.db #0x1c	; 28
      0027F1 18                    1775 	.db #0x18	; 24
      0027F2 10                    1776 	.db #0x10	; 16
      0027F3 00                    1777 	.db #0x00	; 0
      0027F4 08                    1778 	.db #0x08	; 8
      0027F5 1C                    1779 	.db #0x1c	; 28
      0027F6 3E                    1780 	.db #0x3e	; 62
      0027F7 08                    1781 	.db #0x08	; 8
      0027F8 3E                    1782 	.db #0x3e	; 62
      0027F9 1C                    1783 	.db #0x1c	; 28
      0027FA 08                    1784 	.db #0x08	; 8
      0027FB 00                    1785 	.db #0x00	; 0
      0027FC 14                    1786 	.db #0x14	; 20
      0027FD 14                    1787 	.db #0x14	; 20
      0027FE 14                    1788 	.db #0x14	; 20
      0027FF 14                    1789 	.db #0x14	; 20
      002800 14                    1790 	.db #0x14	; 20
      002801 00                    1791 	.db #0x00	; 0
      002802 14                    1792 	.db #0x14	; 20
      002803 00                    1793 	.db #0x00	; 0
      002804 3C                    1794 	.db #0x3c	; 60
      002805 2A                    1795 	.db #0x2a	; 42
      002806 2A                    1796 	.db #0x2a	; 42
      002807 2C                    1797 	.db #0x2c	; 44
      002808 28                    1798 	.db #0x28	; 40
      002809 28                    1799 	.db #0x28	; 40
      00280A 28                    1800 	.db #0x28	; 40
      00280B 00                    1801 	.db #0x00	; 0
      00280C 1C                    1802 	.db #0x1c	; 28
      00280D 22                    1803 	.db #0x22	; 34
      00280E 0C                    1804 	.db #0x0c	; 12
      00280F 14                    1805 	.db #0x14	; 20
      002810 18                    1806 	.db #0x18	; 24
      002811 22                    1807 	.db #0x22	; 34
      002812 1C                    1808 	.db #0x1c	; 28
      002813 00                    1809 	.db #0x00	; 0
      002814 00                    1810 	.db #0x00	; 0
      002815 00                    1811 	.db #0x00	; 0
      002816 00                    1812 	.db #0x00	; 0
      002817 00                    1813 	.db #0x00	; 0
      002818 00                    1814 	.db #0x00	; 0
      002819 1E                    1815 	.db #0x1e	; 30
      00281A 1E                    1816 	.db #0x1e	; 30
      00281B 00                    1817 	.db #0x00	; 0
      00281C 08                    1818 	.db #0x08	; 8
      00281D 1C                    1819 	.db #0x1c	; 28
      00281E 3E                    1820 	.db #0x3e	; 62
      00281F 08                    1821 	.db #0x08	; 8
      002820 3E                    1822 	.db #0x3e	; 62
      002821 1C                    1823 	.db #0x1c	; 28
      002822 08                    1824 	.db #0x08	; 8
      002823 1C                    1825 	.db #0x1c	; 28
      002824 08                    1826 	.db #0x08	; 8
      002825 1C                    1827 	.db #0x1c	; 28
      002826 3E                    1828 	.db #0x3e	; 62
      002827 08                    1829 	.db #0x08	; 8
      002828 08                    1830 	.db #0x08	; 8
      002829 08                    1831 	.db #0x08	; 8
      00282A 08                    1832 	.db #0x08	; 8
      00282B 00                    1833 	.db #0x00	; 0
      00282C 08                    1834 	.db #0x08	; 8
      00282D 08                    1835 	.db #0x08	; 8
      00282E 08                    1836 	.db #0x08	; 8
      00282F 08                    1837 	.db #0x08	; 8
      002830 3E                    1838 	.db #0x3e	; 62
      002831 1C                    1839 	.db #0x1c	; 28
      002832 08                    1840 	.db #0x08	; 8
      002833 00                    1841 	.db #0x00	; 0
      002834 00                    1842 	.db #0x00	; 0
      002835 08                    1843 	.db #0x08	; 8
      002836 18                    1844 	.db #0x18	; 24
      002837 3E                    1845 	.db #0x3e	; 62
      002838 18                    1846 	.db #0x18	; 24
      002839 08                    1847 	.db #0x08	; 8
      00283A 00                    1848 	.db #0x00	; 0
      00283B 00                    1849 	.db #0x00	; 0
      00283C 00                    1850 	.db #0x00	; 0
      00283D 08                    1851 	.db #0x08	; 8
      00283E 0C                    1852 	.db #0x0c	; 12
      00283F 3E                    1853 	.db #0x3e	; 62
      002840 0C                    1854 	.db #0x0c	; 12
      002841 08                    1855 	.db #0x08	; 8
      002842 00                    1856 	.db #0x00	; 0
      002843 00                    1857 	.db #0x00	; 0
      002844 00                    1858 	.db #0x00	; 0
      002845 00                    1859 	.db #0x00	; 0
      002846 00                    1860 	.db #0x00	; 0
      002847 02                    1861 	.db #0x02	; 2
      002848 02                    1862 	.db #0x02	; 2
      002849 02                    1863 	.db #0x02	; 2
      00284A 3E                    1864 	.db #0x3e	; 62
      00284B 00                    1865 	.db #0x00	; 0
      00284C 00                    1866 	.db #0x00	; 0
      00284D 14                    1867 	.db #0x14	; 20
      00284E 14                    1868 	.db #0x14	; 20
      00284F 3E                    1869 	.db #0x3e	; 62
      002850 14                    1870 	.db #0x14	; 20
      002851 14                    1871 	.db #0x14	; 20
      002852 00                    1872 	.db #0x00	; 0
      002853 00                    1873 	.db #0x00	; 0
      002854 08                    1874 	.db #0x08	; 8
      002855 08                    1875 	.db #0x08	; 8
      002856 1C                    1876 	.db #0x1c	; 28
      002857 1C                    1877 	.db #0x1c	; 28
      002858 3E                    1878 	.db #0x3e	; 62
      002859 3E                    1879 	.db #0x3e	; 62
      00285A 00                    1880 	.db #0x00	; 0
      00285B 00                    1881 	.db #0x00	; 0
      00285C 3E                    1882 	.db #0x3e	; 62
      00285D 3E                    1883 	.db #0x3e	; 62
      00285E 1C                    1884 	.db #0x1c	; 28
      00285F 1C                    1885 	.db #0x1c	; 28
      002860 08                    1886 	.db #0x08	; 8
      002861 08                    1887 	.db #0x08	; 8
      002862 00                    1888 	.db #0x00	; 0
      002863 00                    1889 	.db #0x00	; 0
      002864 00                    1890 	.db #0x00	; 0
      002865 00                    1891 	.db #0x00	; 0
      002866 00                    1892 	.db #0x00	; 0
      002867 00                    1893 	.db #0x00	; 0
      002868 00                    1894 	.db #0x00	; 0
      002869 00                    1895 	.db #0x00	; 0
      00286A 00                    1896 	.db #0x00	; 0
      00286B 00                    1897 	.db #0x00	; 0
      00286C 08                    1898 	.db #0x08	; 8
      00286D 1C                    1899 	.db #0x1c	; 28
      00286E 1C                    1900 	.db #0x1c	; 28
      00286F 08                    1901 	.db #0x08	; 8
      002870 08                    1902 	.db #0x08	; 8
      002871 00                    1903 	.db #0x00	; 0
      002872 08                    1904 	.db #0x08	; 8
      002873 00                    1905 	.db #0x00	; 0
      002874 36                    1906 	.db #0x36	; 54	'6'
      002875 36                    1907 	.db #0x36	; 54	'6'
      002876 12                    1908 	.db #0x12	; 18
      002877 00                    1909 	.db #0x00	; 0
      002878 00                    1910 	.db #0x00	; 0
      002879 00                    1911 	.db #0x00	; 0
      00287A 00                    1912 	.db #0x00	; 0
      00287B 00                    1913 	.db #0x00	; 0
      00287C 00                    1914 	.db #0x00	; 0
      00287D 14                    1915 	.db #0x14	; 20
      00287E 3E                    1916 	.db #0x3e	; 62
      00287F 14                    1917 	.db #0x14	; 20
      002880 14                    1918 	.db #0x14	; 20
      002881 3E                    1919 	.db #0x3e	; 62
      002882 14                    1920 	.db #0x14	; 20
      002883 00                    1921 	.db #0x00	; 0
      002884 04                    1922 	.db #0x04	; 4
      002885 1C                    1923 	.db #0x1c	; 28
      002886 02                    1924 	.db #0x02	; 2
      002887 0C                    1925 	.db #0x0c	; 12
      002888 10                    1926 	.db #0x10	; 16
      002889 0E                    1927 	.db #0x0e	; 14
      00288A 08                    1928 	.db #0x08	; 8
      00288B 00                    1929 	.db #0x00	; 0
      00288C 26                    1930 	.db #0x26	; 38
      00288D 26                    1931 	.db #0x26	; 38
      00288E 10                    1932 	.db #0x10	; 16
      00288F 08                    1933 	.db #0x08	; 8
      002890 04                    1934 	.db #0x04	; 4
      002891 32                    1935 	.db #0x32	; 50	'2'
      002892 32                    1936 	.db #0x32	; 50	'2'
      002893 00                    1937 	.db #0x00	; 0
      002894 04                    1938 	.db #0x04	; 4
      002895 0A                    1939 	.db #0x0a	; 10
      002896 0A                    1940 	.db #0x0a	; 10
      002897 04                    1941 	.db #0x04	; 4
      002898 2A                    1942 	.db #0x2a	; 42
      002899 12                    1943 	.db #0x12	; 18
      00289A 2C                    1944 	.db #0x2c	; 44
      00289B 00                    1945 	.db #0x00	; 0
      00289C 0C                    1946 	.db #0x0c	; 12
      00289D 0C                    1947 	.db #0x0c	; 12
      00289E 04                    1948 	.db #0x04	; 4
      00289F 00                    1949 	.db #0x00	; 0
      0028A0 00                    1950 	.db #0x00	; 0
      0028A1 00                    1951 	.db #0x00	; 0
      0028A2 00                    1952 	.db #0x00	; 0
      0028A3 00                    1953 	.db #0x00	; 0
      0028A4 08                    1954 	.db #0x08	; 8
      0028A5 04                    1955 	.db #0x04	; 4
      0028A6 04                    1956 	.db #0x04	; 4
      0028A7 04                    1957 	.db #0x04	; 4
      0028A8 04                    1958 	.db #0x04	; 4
      0028A9 04                    1959 	.db #0x04	; 4
      0028AA 08                    1960 	.db #0x08	; 8
      0028AB 00                    1961 	.db #0x00	; 0
      0028AC 04                    1962 	.db #0x04	; 4
      0028AD 08                    1963 	.db #0x08	; 8
      0028AE 08                    1964 	.db #0x08	; 8
      0028AF 08                    1965 	.db #0x08	; 8
      0028B0 08                    1966 	.db #0x08	; 8
      0028B1 08                    1967 	.db #0x08	; 8
      0028B2 04                    1968 	.db #0x04	; 4
      0028B3 00                    1969 	.db #0x00	; 0
      0028B4 00                    1970 	.db #0x00	; 0
      0028B5 14                    1971 	.db #0x14	; 20
      0028B6 1C                    1972 	.db #0x1c	; 28
      0028B7 3E                    1973 	.db #0x3e	; 62
      0028B8 1C                    1974 	.db #0x1c	; 28
      0028B9 14                    1975 	.db #0x14	; 20
      0028BA 00                    1976 	.db #0x00	; 0
      0028BB 00                    1977 	.db #0x00	; 0
      0028BC 00                    1978 	.db #0x00	; 0
      0028BD 08                    1979 	.db #0x08	; 8
      0028BE 08                    1980 	.db #0x08	; 8
      0028BF 3E                    1981 	.db #0x3e	; 62
      0028C0 08                    1982 	.db #0x08	; 8
      0028C1 08                    1983 	.db #0x08	; 8
      0028C2 00                    1984 	.db #0x00	; 0
      0028C3 00                    1985 	.db #0x00	; 0
      0028C4 00                    1986 	.db #0x00	; 0
      0028C5 00                    1987 	.db #0x00	; 0
      0028C6 00                    1988 	.db #0x00	; 0
      0028C7 00                    1989 	.db #0x00	; 0
      0028C8 00                    1990 	.db #0x00	; 0
      0028C9 0C                    1991 	.db #0x0c	; 12
      0028CA 0C                    1992 	.db #0x0c	; 12
      0028CB 04                    1993 	.db #0x04	; 4
      0028CC 00                    1994 	.db #0x00	; 0
      0028CD 00                    1995 	.db #0x00	; 0
      0028CE 00                    1996 	.db #0x00	; 0
      0028CF 3E                    1997 	.db #0x3e	; 62
      0028D0 00                    1998 	.db #0x00	; 0
      0028D1 00                    1999 	.db #0x00	; 0
      0028D2 00                    2000 	.db #0x00	; 0
      0028D3 00                    2001 	.db #0x00	; 0
      0028D4 00                    2002 	.db #0x00	; 0
      0028D5 00                    2003 	.db #0x00	; 0
      0028D6 00                    2004 	.db #0x00	; 0
      0028D7 00                    2005 	.db #0x00	; 0
      0028D8 00                    2006 	.db #0x00	; 0
      0028D9 0C                    2007 	.db #0x0c	; 12
      0028DA 0C                    2008 	.db #0x0c	; 12
      0028DB 00                    2009 	.db #0x00	; 0
      0028DC 00                    2010 	.db #0x00	; 0
      0028DD 20                    2011 	.db #0x20	; 32
      0028DE 10                    2012 	.db #0x10	; 16
      0028DF 08                    2013 	.db #0x08	; 8
      0028E0 04                    2014 	.db #0x04	; 4
      0028E1 02                    2015 	.db #0x02	; 2
      0028E2 00                    2016 	.db #0x00	; 0
      0028E3 00                    2017 	.db #0x00	; 0
      0028E4 1C                    2018 	.db #0x1c	; 28
      0028E5 22                    2019 	.db #0x22	; 34
      0028E6 32                    2020 	.db #0x32	; 50	'2'
      0028E7 2A                    2021 	.db #0x2a	; 42
      0028E8 26                    2022 	.db #0x26	; 38
      0028E9 22                    2023 	.db #0x22	; 34
      0028EA 1C                    2024 	.db #0x1c	; 28
      0028EB 00                    2025 	.db #0x00	; 0
      0028EC 08                    2026 	.db #0x08	; 8
      0028ED 0C                    2027 	.db #0x0c	; 12
      0028EE 08                    2028 	.db #0x08	; 8
      0028EF 08                    2029 	.db #0x08	; 8
      0028F0 08                    2030 	.db #0x08	; 8
      0028F1 08                    2031 	.db #0x08	; 8
      0028F2 1C                    2032 	.db #0x1c	; 28
      0028F3 00                    2033 	.db #0x00	; 0
      0028F4 1C                    2034 	.db #0x1c	; 28
      0028F5 22                    2035 	.db #0x22	; 34
      0028F6 20                    2036 	.db #0x20	; 32
      0028F7 18                    2037 	.db #0x18	; 24
      0028F8 04                    2038 	.db #0x04	; 4
      0028F9 02                    2039 	.db #0x02	; 2
      0028FA 3E                    2040 	.db #0x3e	; 62
      0028FB 00                    2041 	.db #0x00	; 0
      0028FC 1C                    2042 	.db #0x1c	; 28
      0028FD 22                    2043 	.db #0x22	; 34
      0028FE 20                    2044 	.db #0x20	; 32
      0028FF 1C                    2045 	.db #0x1c	; 28
      002900 20                    2046 	.db #0x20	; 32
      002901 22                    2047 	.db #0x22	; 34
      002902 1C                    2048 	.db #0x1c	; 28
      002903 00                    2049 	.db #0x00	; 0
      002904 10                    2050 	.db #0x10	; 16
      002905 18                    2051 	.db #0x18	; 24
      002906 14                    2052 	.db #0x14	; 20
      002907 12                    2053 	.db #0x12	; 18
      002908 3E                    2054 	.db #0x3e	; 62
      002909 10                    2055 	.db #0x10	; 16
      00290A 10                    2056 	.db #0x10	; 16
      00290B 00                    2057 	.db #0x00	; 0
      00290C 3E                    2058 	.db #0x3e	; 62
      00290D 02                    2059 	.db #0x02	; 2
      00290E 02                    2060 	.db #0x02	; 2
      00290F 1E                    2061 	.db #0x1e	; 30
      002910 20                    2062 	.db #0x20	; 32
      002911 22                    2063 	.db #0x22	; 34
      002912 1C                    2064 	.db #0x1c	; 28
      002913 00                    2065 	.db #0x00	; 0
      002914 18                    2066 	.db #0x18	; 24
      002915 04                    2067 	.db #0x04	; 4
      002916 02                    2068 	.db #0x02	; 2
      002917 1E                    2069 	.db #0x1e	; 30
      002918 22                    2070 	.db #0x22	; 34
      002919 22                    2071 	.db #0x22	; 34
      00291A 1C                    2072 	.db #0x1c	; 28
      00291B 00                    2073 	.db #0x00	; 0
      00291C 3E                    2074 	.db #0x3e	; 62
      00291D 20                    2075 	.db #0x20	; 32
      00291E 10                    2076 	.db #0x10	; 16
      00291F 08                    2077 	.db #0x08	; 8
      002920 04                    2078 	.db #0x04	; 4
      002921 04                    2079 	.db #0x04	; 4
      002922 04                    2080 	.db #0x04	; 4
      002923 00                    2081 	.db #0x00	; 0
      002924 1C                    2082 	.db #0x1c	; 28
      002925 22                    2083 	.db #0x22	; 34
      002926 22                    2084 	.db #0x22	; 34
      002927 1C                    2085 	.db #0x1c	; 28
      002928 22                    2086 	.db #0x22	; 34
      002929 22                    2087 	.db #0x22	; 34
      00292A 1C                    2088 	.db #0x1c	; 28
      00292B 00                    2089 	.db #0x00	; 0
      00292C 1C                    2090 	.db #0x1c	; 28
      00292D 22                    2091 	.db #0x22	; 34
      00292E 22                    2092 	.db #0x22	; 34
      00292F 3C                    2093 	.db #0x3c	; 60
      002930 20                    2094 	.db #0x20	; 32
      002931 10                    2095 	.db #0x10	; 16
      002932 0C                    2096 	.db #0x0c	; 12
      002933 00                    2097 	.db #0x00	; 0
      002934 00                    2098 	.db #0x00	; 0
      002935 00                    2099 	.db #0x00	; 0
      002936 0C                    2100 	.db #0x0c	; 12
      002937 0C                    2101 	.db #0x0c	; 12
      002938 00                    2102 	.db #0x00	; 0
      002939 0C                    2103 	.db #0x0c	; 12
      00293A 0C                    2104 	.db #0x0c	; 12
      00293B 00                    2105 	.db #0x00	; 0
      00293C 00                    2106 	.db #0x00	; 0
      00293D 00                    2107 	.db #0x00	; 0
      00293E 0C                    2108 	.db #0x0c	; 12
      00293F 0C                    2109 	.db #0x0c	; 12
      002940 00                    2110 	.db #0x00	; 0
      002941 0C                    2111 	.db #0x0c	; 12
      002942 0C                    2112 	.db #0x0c	; 12
      002943 04                    2113 	.db #0x04	; 4
      002944 10                    2114 	.db #0x10	; 16
      002945 08                    2115 	.db #0x08	; 8
      002946 04                    2116 	.db #0x04	; 4
      002947 02                    2117 	.db #0x02	; 2
      002948 04                    2118 	.db #0x04	; 4
      002949 08                    2119 	.db #0x08	; 8
      00294A 10                    2120 	.db #0x10	; 16
      00294B 00                    2121 	.db #0x00	; 0
      00294C 00                    2122 	.db #0x00	; 0
      00294D 00                    2123 	.db #0x00	; 0
      00294E 3E                    2124 	.db #0x3e	; 62
      00294F 00                    2125 	.db #0x00	; 0
      002950 00                    2126 	.db #0x00	; 0
      002951 3E                    2127 	.db #0x3e	; 62
      002952 00                    2128 	.db #0x00	; 0
      002953 00                    2129 	.db #0x00	; 0
      002954 04                    2130 	.db #0x04	; 4
      002955 08                    2131 	.db #0x08	; 8
      002956 10                    2132 	.db #0x10	; 16
      002957 20                    2133 	.db #0x20	; 32
      002958 10                    2134 	.db #0x10	; 16
      002959 08                    2135 	.db #0x08	; 8
      00295A 04                    2136 	.db #0x04	; 4
      00295B 00                    2137 	.db #0x00	; 0
      00295C 1C                    2138 	.db #0x1c	; 28
      00295D 22                    2139 	.db #0x22	; 34
      00295E 20                    2140 	.db #0x20	; 32
      00295F 18                    2141 	.db #0x18	; 24
      002960 08                    2142 	.db #0x08	; 8
      002961 00                    2143 	.db #0x00	; 0
      002962 08                    2144 	.db #0x08	; 8
      002963 00                    2145 	.db #0x00	; 0
      002964 1C                    2146 	.db #0x1c	; 28
      002965 22                    2147 	.db #0x22	; 34
      002966 3A                    2148 	.db #0x3a	; 58
      002967 2A                    2149 	.db #0x2a	; 42
      002968 3A                    2150 	.db #0x3a	; 58
      002969 02                    2151 	.db #0x02	; 2
      00296A 1C                    2152 	.db #0x1c	; 28
      00296B 00                    2153 	.db #0x00	; 0
      00296C 1C                    2154 	.db #0x1c	; 28
      00296D 22                    2155 	.db #0x22	; 34
      00296E 22                    2156 	.db #0x22	; 34
      00296F 22                    2157 	.db #0x22	; 34
      002970 3E                    2158 	.db #0x3e	; 62
      002971 22                    2159 	.db #0x22	; 34
      002972 22                    2160 	.db #0x22	; 34
      002973 00                    2161 	.db #0x00	; 0
      002974 1E                    2162 	.db #0x1e	; 30
      002975 22                    2163 	.db #0x22	; 34
      002976 22                    2164 	.db #0x22	; 34
      002977 1E                    2165 	.db #0x1e	; 30
      002978 22                    2166 	.db #0x22	; 34
      002979 22                    2167 	.db #0x22	; 34
      00297A 1E                    2168 	.db #0x1e	; 30
      00297B 00                    2169 	.db #0x00	; 0
      00297C 1C                    2170 	.db #0x1c	; 28
      00297D 22                    2171 	.db #0x22	; 34
      00297E 02                    2172 	.db #0x02	; 2
      00297F 02                    2173 	.db #0x02	; 2
      002980 02                    2174 	.db #0x02	; 2
      002981 22                    2175 	.db #0x22	; 34
      002982 1C                    2176 	.db #0x1c	; 28
      002983 00                    2177 	.db #0x00	; 0
      002984 1E                    2178 	.db #0x1e	; 30
      002985 22                    2179 	.db #0x22	; 34
      002986 22                    2180 	.db #0x22	; 34
      002987 22                    2181 	.db #0x22	; 34
      002988 22                    2182 	.db #0x22	; 34
      002989 22                    2183 	.db #0x22	; 34
      00298A 1E                    2184 	.db #0x1e	; 30
      00298B 00                    2185 	.db #0x00	; 0
      00298C 3E                    2186 	.db #0x3e	; 62
      00298D 02                    2187 	.db #0x02	; 2
      00298E 02                    2188 	.db #0x02	; 2
      00298F 1E                    2189 	.db #0x1e	; 30
      002990 02                    2190 	.db #0x02	; 2
      002991 02                    2191 	.db #0x02	; 2
      002992 3E                    2192 	.db #0x3e	; 62
      002993 00                    2193 	.db #0x00	; 0
      002994 3E                    2194 	.db #0x3e	; 62
      002995 02                    2195 	.db #0x02	; 2
      002996 02                    2196 	.db #0x02	; 2
      002997 1E                    2197 	.db #0x1e	; 30
      002998 02                    2198 	.db #0x02	; 2
      002999 02                    2199 	.db #0x02	; 2
      00299A 02                    2200 	.db #0x02	; 2
      00299B 00                    2201 	.db #0x00	; 0
      00299C 1C                    2202 	.db #0x1c	; 28
      00299D 22                    2203 	.db #0x22	; 34
      00299E 02                    2204 	.db #0x02	; 2
      00299F 3A                    2205 	.db #0x3a	; 58
      0029A0 22                    2206 	.db #0x22	; 34
      0029A1 22                    2207 	.db #0x22	; 34
      0029A2 3C                    2208 	.db #0x3c	; 60
      0029A3 00                    2209 	.db #0x00	; 0
      0029A4 22                    2210 	.db #0x22	; 34
      0029A5 22                    2211 	.db #0x22	; 34
      0029A6 22                    2212 	.db #0x22	; 34
      0029A7 3E                    2213 	.db #0x3e	; 62
      0029A8 22                    2214 	.db #0x22	; 34
      0029A9 22                    2215 	.db #0x22	; 34
      0029AA 22                    2216 	.db #0x22	; 34
      0029AB 00                    2217 	.db #0x00	; 0
      0029AC 1C                    2218 	.db #0x1c	; 28
      0029AD 08                    2219 	.db #0x08	; 8
      0029AE 08                    2220 	.db #0x08	; 8
      0029AF 08                    2221 	.db #0x08	; 8
      0029B0 08                    2222 	.db #0x08	; 8
      0029B1 08                    2223 	.db #0x08	; 8
      0029B2 1C                    2224 	.db #0x1c	; 28
      0029B3 00                    2225 	.db #0x00	; 0
      0029B4 20                    2226 	.db #0x20	; 32
      0029B5 20                    2227 	.db #0x20	; 32
      0029B6 20                    2228 	.db #0x20	; 32
      0029B7 20                    2229 	.db #0x20	; 32
      0029B8 22                    2230 	.db #0x22	; 34
      0029B9 22                    2231 	.db #0x22	; 34
      0029BA 1C                    2232 	.db #0x1c	; 28
      0029BB 00                    2233 	.db #0x00	; 0
      0029BC 22                    2234 	.db #0x22	; 34
      0029BD 12                    2235 	.db #0x12	; 18
      0029BE 0A                    2236 	.db #0x0a	; 10
      0029BF 06                    2237 	.db #0x06	; 6
      0029C0 0A                    2238 	.db #0x0a	; 10
      0029C1 12                    2239 	.db #0x12	; 18
      0029C2 22                    2240 	.db #0x22	; 34
      0029C3 00                    2241 	.db #0x00	; 0
      0029C4 02                    2242 	.db #0x02	; 2
      0029C5 02                    2243 	.db #0x02	; 2
      0029C6 02                    2244 	.db #0x02	; 2
      0029C7 02                    2245 	.db #0x02	; 2
      0029C8 02                    2246 	.db #0x02	; 2
      0029C9 02                    2247 	.db #0x02	; 2
      0029CA 3E                    2248 	.db #0x3e	; 62
      0029CB 00                    2249 	.db #0x00	; 0
      0029CC 22                    2250 	.db #0x22	; 34
      0029CD 36                    2251 	.db #0x36	; 54	'6'
      0029CE 2A                    2252 	.db #0x2a	; 42
      0029CF 22                    2253 	.db #0x22	; 34
      0029D0 22                    2254 	.db #0x22	; 34
      0029D1 22                    2255 	.db #0x22	; 34
      0029D2 22                    2256 	.db #0x22	; 34
      0029D3 00                    2257 	.db #0x00	; 0
      0029D4 22                    2258 	.db #0x22	; 34
      0029D5 26                    2259 	.db #0x26	; 38
      0029D6 2A                    2260 	.db #0x2a	; 42
      0029D7 32                    2261 	.db #0x32	; 50	'2'
      0029D8 22                    2262 	.db #0x22	; 34
      0029D9 22                    2263 	.db #0x22	; 34
      0029DA 22                    2264 	.db #0x22	; 34
      0029DB 00                    2265 	.db #0x00	; 0
      0029DC 1C                    2266 	.db #0x1c	; 28
      0029DD 22                    2267 	.db #0x22	; 34
      0029DE 22                    2268 	.db #0x22	; 34
      0029DF 22                    2269 	.db #0x22	; 34
      0029E0 22                    2270 	.db #0x22	; 34
      0029E1 22                    2271 	.db #0x22	; 34
      0029E2 1C                    2272 	.db #0x1c	; 28
      0029E3 00                    2273 	.db #0x00	; 0
      0029E4 1E                    2274 	.db #0x1e	; 30
      0029E5 22                    2275 	.db #0x22	; 34
      0029E6 22                    2276 	.db #0x22	; 34
      0029E7 1E                    2277 	.db #0x1e	; 30
      0029E8 02                    2278 	.db #0x02	; 2
      0029E9 02                    2279 	.db #0x02	; 2
      0029EA 02                    2280 	.db #0x02	; 2
      0029EB 00                    2281 	.db #0x00	; 0
      0029EC 1C                    2282 	.db #0x1c	; 28
      0029ED 22                    2283 	.db #0x22	; 34
      0029EE 22                    2284 	.db #0x22	; 34
      0029EF 22                    2285 	.db #0x22	; 34
      0029F0 2A                    2286 	.db #0x2a	; 42
      0029F1 12                    2287 	.db #0x12	; 18
      0029F2 2C                    2288 	.db #0x2c	; 44
      0029F3 00                    2289 	.db #0x00	; 0
      0029F4 1E                    2290 	.db #0x1e	; 30
      0029F5 22                    2291 	.db #0x22	; 34
      0029F6 22                    2292 	.db #0x22	; 34
      0029F7 1E                    2293 	.db #0x1e	; 30
      0029F8 12                    2294 	.db #0x12	; 18
      0029F9 22                    2295 	.db #0x22	; 34
      0029FA 22                    2296 	.db #0x22	; 34
      0029FB 00                    2297 	.db #0x00	; 0
      0029FC 1C                    2298 	.db #0x1c	; 28
      0029FD 22                    2299 	.db #0x22	; 34
      0029FE 02                    2300 	.db #0x02	; 2
      0029FF 1C                    2301 	.db #0x1c	; 28
      002A00 20                    2302 	.db #0x20	; 32
      002A01 22                    2303 	.db #0x22	; 34
      002A02 1C                    2304 	.db #0x1c	; 28
      002A03 00                    2305 	.db #0x00	; 0
      002A04 3E                    2306 	.db #0x3e	; 62
      002A05 08                    2307 	.db #0x08	; 8
      002A06 08                    2308 	.db #0x08	; 8
      002A07 08                    2309 	.db #0x08	; 8
      002A08 08                    2310 	.db #0x08	; 8
      002A09 08                    2311 	.db #0x08	; 8
      002A0A 08                    2312 	.db #0x08	; 8
      002A0B 00                    2313 	.db #0x00	; 0
      002A0C 22                    2314 	.db #0x22	; 34
      002A0D 22                    2315 	.db #0x22	; 34
      002A0E 22                    2316 	.db #0x22	; 34
      002A0F 22                    2317 	.db #0x22	; 34
      002A10 22                    2318 	.db #0x22	; 34
      002A11 22                    2319 	.db #0x22	; 34
      002A12 1C                    2320 	.db #0x1c	; 28
      002A13 00                    2321 	.db #0x00	; 0
      002A14 22                    2322 	.db #0x22	; 34
      002A15 22                    2323 	.db #0x22	; 34
      002A16 22                    2324 	.db #0x22	; 34
      002A17 22                    2325 	.db #0x22	; 34
      002A18 22                    2326 	.db #0x22	; 34
      002A19 14                    2327 	.db #0x14	; 20
      002A1A 08                    2328 	.db #0x08	; 8
      002A1B 00                    2329 	.db #0x00	; 0
      002A1C 22                    2330 	.db #0x22	; 34
      002A1D 22                    2331 	.db #0x22	; 34
      002A1E 2A                    2332 	.db #0x2a	; 42
      002A1F 2A                    2333 	.db #0x2a	; 42
      002A20 2A                    2334 	.db #0x2a	; 42
      002A21 2A                    2335 	.db #0x2a	; 42
      002A22 14                    2336 	.db #0x14	; 20
      002A23 00                    2337 	.db #0x00	; 0
      002A24 22                    2338 	.db #0x22	; 34
      002A25 22                    2339 	.db #0x22	; 34
      002A26 14                    2340 	.db #0x14	; 20
      002A27 08                    2341 	.db #0x08	; 8
      002A28 14                    2342 	.db #0x14	; 20
      002A29 22                    2343 	.db #0x22	; 34
      002A2A 22                    2344 	.db #0x22	; 34
      002A2B 00                    2345 	.db #0x00	; 0
      002A2C 22                    2346 	.db #0x22	; 34
      002A2D 22                    2347 	.db #0x22	; 34
      002A2E 22                    2348 	.db #0x22	; 34
      002A2F 14                    2349 	.db #0x14	; 20
      002A30 08                    2350 	.db #0x08	; 8
      002A31 08                    2351 	.db #0x08	; 8
      002A32 08                    2352 	.db #0x08	; 8
      002A33 00                    2353 	.db #0x00	; 0
      002A34 1E                    2354 	.db #0x1e	; 30
      002A35 10                    2355 	.db #0x10	; 16
      002A36 08                    2356 	.db #0x08	; 8
      002A37 04                    2357 	.db #0x04	; 4
      002A38 02                    2358 	.db #0x02	; 2
      002A39 02                    2359 	.db #0x02	; 2
      002A3A 1E                    2360 	.db #0x1e	; 30
      002A3B 00                    2361 	.db #0x00	; 0
      002A3C 1C                    2362 	.db #0x1c	; 28
      002A3D 04                    2363 	.db #0x04	; 4
      002A3E 04                    2364 	.db #0x04	; 4
      002A3F 04                    2365 	.db #0x04	; 4
      002A40 04                    2366 	.db #0x04	; 4
      002A41 04                    2367 	.db #0x04	; 4
      002A42 1C                    2368 	.db #0x1c	; 28
      002A43 00                    2369 	.db #0x00	; 0
      002A44 00                    2370 	.db #0x00	; 0
      002A45 02                    2371 	.db #0x02	; 2
      002A46 04                    2372 	.db #0x04	; 4
      002A47 08                    2373 	.db #0x08	; 8
      002A48 10                    2374 	.db #0x10	; 16
      002A49 20                    2375 	.db #0x20	; 32
      002A4A 00                    2376 	.db #0x00	; 0
      002A4B 00                    2377 	.db #0x00	; 0
      002A4C 1C                    2378 	.db #0x1c	; 28
      002A4D 10                    2379 	.db #0x10	; 16
      002A4E 10                    2380 	.db #0x10	; 16
      002A4F 10                    2381 	.db #0x10	; 16
      002A50 10                    2382 	.db #0x10	; 16
      002A51 10                    2383 	.db #0x10	; 16
      002A52 1C                    2384 	.db #0x1c	; 28
      002A53 00                    2385 	.db #0x00	; 0
      002A54 08                    2386 	.db #0x08	; 8
      002A55 14                    2387 	.db #0x14	; 20
      002A56 22                    2388 	.db #0x22	; 34
      002A57 00                    2389 	.db #0x00	; 0
      002A58 00                    2390 	.db #0x00	; 0
      002A59 00                    2391 	.db #0x00	; 0
      002A5A 00                    2392 	.db #0x00	; 0
      002A5B 00                    2393 	.db #0x00	; 0
      002A5C 00                    2394 	.db #0x00	; 0
      002A5D 00                    2395 	.db #0x00	; 0
      002A5E 00                    2396 	.db #0x00	; 0
      002A5F 00                    2397 	.db #0x00	; 0
      002A60 00                    2398 	.db #0x00	; 0
      002A61 00                    2399 	.db #0x00	; 0
      002A62 00                    2400 	.db #0x00	; 0
      002A63 3F                    2401 	.db #0x3f	; 63
      002A64 0C                    2402 	.db #0x0c	; 12
      002A65 0C                    2403 	.db #0x0c	; 12
      002A66 08                    2404 	.db #0x08	; 8
      002A67 00                    2405 	.db #0x00	; 0
      002A68 00                    2406 	.db #0x00	; 0
      002A69 00                    2407 	.db #0x00	; 0
      002A6A 00                    2408 	.db #0x00	; 0
      002A6B 00                    2409 	.db #0x00	; 0
      002A6C 00                    2410 	.db #0x00	; 0
      002A6D 00                    2411 	.db #0x00	; 0
      002A6E 1C                    2412 	.db #0x1c	; 28
      002A6F 20                    2413 	.db #0x20	; 32
      002A70 3C                    2414 	.db #0x3c	; 60
      002A71 22                    2415 	.db #0x22	; 34
      002A72 3C                    2416 	.db #0x3c	; 60
      002A73 00                    2417 	.db #0x00	; 0
      002A74 02                    2418 	.db #0x02	; 2
      002A75 02                    2419 	.db #0x02	; 2
      002A76 1E                    2420 	.db #0x1e	; 30
      002A77 22                    2421 	.db #0x22	; 34
      002A78 22                    2422 	.db #0x22	; 34
      002A79 22                    2423 	.db #0x22	; 34
      002A7A 1E                    2424 	.db #0x1e	; 30
      002A7B 00                    2425 	.db #0x00	; 0
      002A7C 00                    2426 	.db #0x00	; 0
      002A7D 00                    2427 	.db #0x00	; 0
      002A7E 1C                    2428 	.db #0x1c	; 28
      002A7F 22                    2429 	.db #0x22	; 34
      002A80 02                    2430 	.db #0x02	; 2
      002A81 22                    2431 	.db #0x22	; 34
      002A82 1C                    2432 	.db #0x1c	; 28
      002A83 00                    2433 	.db #0x00	; 0
      002A84 20                    2434 	.db #0x20	; 32
      002A85 20                    2435 	.db #0x20	; 32
      002A86 3C                    2436 	.db #0x3c	; 60
      002A87 22                    2437 	.db #0x22	; 34
      002A88 22                    2438 	.db #0x22	; 34
      002A89 22                    2439 	.db #0x22	; 34
      002A8A 3C                    2440 	.db #0x3c	; 60
      002A8B 00                    2441 	.db #0x00	; 0
      002A8C 00                    2442 	.db #0x00	; 0
      002A8D 00                    2443 	.db #0x00	; 0
      002A8E 1C                    2444 	.db #0x1c	; 28
      002A8F 22                    2445 	.db #0x22	; 34
      002A90 1E                    2446 	.db #0x1e	; 30
      002A91 02                    2447 	.db #0x02	; 2
      002A92 1C                    2448 	.db #0x1c	; 28
      002A93 00                    2449 	.db #0x00	; 0
      002A94 18                    2450 	.db #0x18	; 24
      002A95 04                    2451 	.db #0x04	; 4
      002A96 04                    2452 	.db #0x04	; 4
      002A97 1E                    2453 	.db #0x1e	; 30
      002A98 04                    2454 	.db #0x04	; 4
      002A99 04                    2455 	.db #0x04	; 4
      002A9A 04                    2456 	.db #0x04	; 4
      002A9B 00                    2457 	.db #0x00	; 0
      002A9C 00                    2458 	.db #0x00	; 0
      002A9D 00                    2459 	.db #0x00	; 0
      002A9E 3C                    2460 	.db #0x3c	; 60
      002A9F 22                    2461 	.db #0x22	; 34
      002AA0 22                    2462 	.db #0x22	; 34
      002AA1 3C                    2463 	.db #0x3c	; 60
      002AA2 20                    2464 	.db #0x20	; 32
      002AA3 1C                    2465 	.db #0x1c	; 28
      002AA4 02                    2466 	.db #0x02	; 2
      002AA5 02                    2467 	.db #0x02	; 2
      002AA6 0E                    2468 	.db #0x0e	; 14
      002AA7 12                    2469 	.db #0x12	; 18
      002AA8 12                    2470 	.db #0x12	; 18
      002AA9 12                    2471 	.db #0x12	; 18
      002AAA 12                    2472 	.db #0x12	; 18
      002AAB 00                    2473 	.db #0x00	; 0
      002AAC 08                    2474 	.db #0x08	; 8
      002AAD 00                    2475 	.db #0x00	; 0
      002AAE 08                    2476 	.db #0x08	; 8
      002AAF 08                    2477 	.db #0x08	; 8
      002AB0 08                    2478 	.db #0x08	; 8
      002AB1 08                    2479 	.db #0x08	; 8
      002AB2 18                    2480 	.db #0x18	; 24
      002AB3 00                    2481 	.db #0x00	; 0
      002AB4 10                    2482 	.db #0x10	; 16
      002AB5 00                    2483 	.db #0x00	; 0
      002AB6 18                    2484 	.db #0x18	; 24
      002AB7 10                    2485 	.db #0x10	; 16
      002AB8 10                    2486 	.db #0x10	; 16
      002AB9 10                    2487 	.db #0x10	; 16
      002ABA 12                    2488 	.db #0x12	; 18
      002ABB 0C                    2489 	.db #0x0c	; 12
      002ABC 02                    2490 	.db #0x02	; 2
      002ABD 02                    2491 	.db #0x02	; 2
      002ABE 12                    2492 	.db #0x12	; 18
      002ABF 0A                    2493 	.db #0x0a	; 10
      002AC0 06                    2494 	.db #0x06	; 6
      002AC1 0A                    2495 	.db #0x0a	; 10
      002AC2 12                    2496 	.db #0x12	; 18
      002AC3 00                    2497 	.db #0x00	; 0
      002AC4 08                    2498 	.db #0x08	; 8
      002AC5 08                    2499 	.db #0x08	; 8
      002AC6 08                    2500 	.db #0x08	; 8
      002AC7 08                    2501 	.db #0x08	; 8
      002AC8 08                    2502 	.db #0x08	; 8
      002AC9 08                    2503 	.db #0x08	; 8
      002ACA 18                    2504 	.db #0x18	; 24
      002ACB 00                    2505 	.db #0x00	; 0
      002ACC 00                    2506 	.db #0x00	; 0
      002ACD 00                    2507 	.db #0x00	; 0
      002ACE 16                    2508 	.db #0x16	; 22
      002ACF 2A                    2509 	.db #0x2a	; 42
      002AD0 2A                    2510 	.db #0x2a	; 42
      002AD1 22                    2511 	.db #0x22	; 34
      002AD2 22                    2512 	.db #0x22	; 34
      002AD3 00                    2513 	.db #0x00	; 0
      002AD4 00                    2514 	.db #0x00	; 0
      002AD5 00                    2515 	.db #0x00	; 0
      002AD6 0E                    2516 	.db #0x0e	; 14
      002AD7 12                    2517 	.db #0x12	; 18
      002AD8 12                    2518 	.db #0x12	; 18
      002AD9 12                    2519 	.db #0x12	; 18
      002ADA 12                    2520 	.db #0x12	; 18
      002ADB 00                    2521 	.db #0x00	; 0
      002ADC 00                    2522 	.db #0x00	; 0
      002ADD 00                    2523 	.db #0x00	; 0
      002ADE 1C                    2524 	.db #0x1c	; 28
      002ADF 22                    2525 	.db #0x22	; 34
      002AE0 22                    2526 	.db #0x22	; 34
      002AE1 22                    2527 	.db #0x22	; 34
      002AE2 1C                    2528 	.db #0x1c	; 28
      002AE3 00                    2529 	.db #0x00	; 0
      002AE4 00                    2530 	.db #0x00	; 0
      002AE5 00                    2531 	.db #0x00	; 0
      002AE6 1E                    2532 	.db #0x1e	; 30
      002AE7 22                    2533 	.db #0x22	; 34
      002AE8 22                    2534 	.db #0x22	; 34
      002AE9 22                    2535 	.db #0x22	; 34
      002AEA 1E                    2536 	.db #0x1e	; 30
      002AEB 02                    2537 	.db #0x02	; 2
      002AEC 00                    2538 	.db #0x00	; 0
      002AED 00                    2539 	.db #0x00	; 0
      002AEE 3C                    2540 	.db #0x3c	; 60
      002AEF 22                    2541 	.db #0x22	; 34
      002AF0 22                    2542 	.db #0x22	; 34
      002AF1 22                    2543 	.db #0x22	; 34
      002AF2 3C                    2544 	.db #0x3c	; 60
      002AF3 20                    2545 	.db #0x20	; 32
      002AF4 00                    2546 	.db #0x00	; 0
      002AF5 00                    2547 	.db #0x00	; 0
      002AF6 1A                    2548 	.db #0x1a	; 26
      002AF7 24                    2549 	.db #0x24	; 36
      002AF8 04                    2550 	.db #0x04	; 4
      002AF9 04                    2551 	.db #0x04	; 4
      002AFA 0E                    2552 	.db #0x0e	; 14
      002AFB 00                    2553 	.db #0x00	; 0
      002AFC 00                    2554 	.db #0x00	; 0
      002AFD 00                    2555 	.db #0x00	; 0
      002AFE 1C                    2556 	.db #0x1c	; 28
      002AFF 02                    2557 	.db #0x02	; 2
      002B00 1C                    2558 	.db #0x1c	; 28
      002B01 20                    2559 	.db #0x20	; 32
      002B02 1C                    2560 	.db #0x1c	; 28
      002B03 00                    2561 	.db #0x00	; 0
      002B04 00                    2562 	.db #0x00	; 0
      002B05 04                    2563 	.db #0x04	; 4
      002B06 1E                    2564 	.db #0x1e	; 30
      002B07 04                    2565 	.db #0x04	; 4
      002B08 04                    2566 	.db #0x04	; 4
      002B09 14                    2567 	.db #0x14	; 20
      002B0A 08                    2568 	.db #0x08	; 8
      002B0B 00                    2569 	.db #0x00	; 0
      002B0C 00                    2570 	.db #0x00	; 0
      002B0D 00                    2571 	.db #0x00	; 0
      002B0E 12                    2572 	.db #0x12	; 18
      002B0F 12                    2573 	.db #0x12	; 18
      002B10 12                    2574 	.db #0x12	; 18
      002B11 1A                    2575 	.db #0x1a	; 26
      002B12 14                    2576 	.db #0x14	; 20
      002B13 00                    2577 	.db #0x00	; 0
      002B14 00                    2578 	.db #0x00	; 0
      002B15 00                    2579 	.db #0x00	; 0
      002B16 22                    2580 	.db #0x22	; 34
      002B17 22                    2581 	.db #0x22	; 34
      002B18 22                    2582 	.db #0x22	; 34
      002B19 14                    2583 	.db #0x14	; 20
      002B1A 08                    2584 	.db #0x08	; 8
      002B1B 00                    2585 	.db #0x00	; 0
      002B1C 00                    2586 	.db #0x00	; 0
      002B1D 00                    2587 	.db #0x00	; 0
      002B1E 22                    2588 	.db #0x22	; 34
      002B1F 22                    2589 	.db #0x22	; 34
      002B20 2A                    2590 	.db #0x2a	; 42
      002B21 3E                    2591 	.db #0x3e	; 62
      002B22 14                    2592 	.db #0x14	; 20
      002B23 00                    2593 	.db #0x00	; 0
      002B24 00                    2594 	.db #0x00	; 0
      002B25 00                    2595 	.db #0x00	; 0
      002B26 12                    2596 	.db #0x12	; 18
      002B27 12                    2597 	.db #0x12	; 18
      002B28 0C                    2598 	.db #0x0c	; 12
      002B29 12                    2599 	.db #0x12	; 18
      002B2A 12                    2600 	.db #0x12	; 18
      002B2B 00                    2601 	.db #0x00	; 0
      002B2C 00                    2602 	.db #0x00	; 0
      002B2D 00                    2603 	.db #0x00	; 0
      002B2E 12                    2604 	.db #0x12	; 18
      002B2F 12                    2605 	.db #0x12	; 18
      002B30 12                    2606 	.db #0x12	; 18
      002B31 1C                    2607 	.db #0x1c	; 28
      002B32 08                    2608 	.db #0x08	; 8
      002B33 06                    2609 	.db #0x06	; 6
      002B34 00                    2610 	.db #0x00	; 0
      002B35 00                    2611 	.db #0x00	; 0
      002B36 1E                    2612 	.db #0x1e	; 30
      002B37 10                    2613 	.db #0x10	; 16
      002B38 0C                    2614 	.db #0x0c	; 12
      002B39 02                    2615 	.db #0x02	; 2
      002B3A 1E                    2616 	.db #0x1e	; 30
      002B3B 00                    2617 	.db #0x00	; 0
      002B3C 18                    2618 	.db #0x18	; 24
      002B3D 04                    2619 	.db #0x04	; 4
      002B3E 04                    2620 	.db #0x04	; 4
      002B3F 06                    2621 	.db #0x06	; 6
      002B40 04                    2622 	.db #0x04	; 4
      002B41 04                    2623 	.db #0x04	; 4
      002B42 18                    2624 	.db #0x18	; 24
      002B43 00                    2625 	.db #0x00	; 0
      002B44 08                    2626 	.db #0x08	; 8
      002B45 08                    2627 	.db #0x08	; 8
      002B46 08                    2628 	.db #0x08	; 8
      002B47 00                    2629 	.db #0x00	; 0
      002B48 08                    2630 	.db #0x08	; 8
      002B49 08                    2631 	.db #0x08	; 8
      002B4A 08                    2632 	.db #0x08	; 8
      002B4B 00                    2633 	.db #0x00	; 0
      002B4C 0C                    2634 	.db #0x0c	; 12
      002B4D 10                    2635 	.db #0x10	; 16
      002B4E 10                    2636 	.db #0x10	; 16
      002B4F 30                    2637 	.db #0x30	; 48	'0'
      002B50 10                    2638 	.db #0x10	; 16
      002B51 10                    2639 	.db #0x10	; 16
      002B52 0C                    2640 	.db #0x0c	; 12
      002B53 00                    2641 	.db #0x00	; 0
      002B54 14                    2642 	.db #0x14	; 20
      002B55 0A                    2643 	.db #0x0a	; 10
      002B56 00                    2644 	.db #0x00	; 0
      002B57 00                    2645 	.db #0x00	; 0
      002B58 00                    2646 	.db #0x00	; 0
      002B59 00                    2647 	.db #0x00	; 0
      002B5A 00                    2648 	.db #0x00	; 0
      002B5B 00                    2649 	.db #0x00	; 0
      002B5C 08                    2650 	.db #0x08	; 8
      002B5D 1C                    2651 	.db #0x1c	; 28
      002B5E 36                    2652 	.db #0x36	; 54	'6'
      002B5F 22                    2653 	.db #0x22	; 34
      002B60 22                    2654 	.db #0x22	; 34
      002B61 3E                    2655 	.db #0x3e	; 62
      002B62 00                    2656 	.db #0x00	; 0
      002B63 00                    2657 	.db #0x00	; 0
      002B64 1C                    2658 	.db #0x1c	; 28
      002B65 22                    2659 	.db #0x22	; 34
      002B66 02                    2660 	.db #0x02	; 2
      002B67 02                    2661 	.db #0x02	; 2
      002B68 22                    2662 	.db #0x22	; 34
      002B69 1C                    2663 	.db #0x1c	; 28
      002B6A 08                    2664 	.db #0x08	; 8
      002B6B 0C                    2665 	.db #0x0c	; 12
      002B6C 12                    2666 	.db #0x12	; 18
      002B6D 00                    2667 	.db #0x00	; 0
      002B6E 12                    2668 	.db #0x12	; 18
      002B6F 12                    2669 	.db #0x12	; 18
      002B70 12                    2670 	.db #0x12	; 18
      002B71 1A                    2671 	.db #0x1a	; 26
      002B72 14                    2672 	.db #0x14	; 20
      002B73 00                    2673 	.db #0x00	; 0
      002B74 30                    2674 	.db #0x30	; 48	'0'
      002B75 00                    2675 	.db #0x00	; 0
      002B76 1C                    2676 	.db #0x1c	; 28
      002B77 22                    2677 	.db #0x22	; 34
      002B78 1E                    2678 	.db #0x1e	; 30
      002B79 02                    2679 	.db #0x02	; 2
      002B7A 1C                    2680 	.db #0x1c	; 28
      002B7B 00                    2681 	.db #0x00	; 0
      002B7C 1C                    2682 	.db #0x1c	; 28
      002B7D 00                    2683 	.db #0x00	; 0
      002B7E 1C                    2684 	.db #0x1c	; 28
      002B7F 20                    2685 	.db #0x20	; 32
      002B80 3C                    2686 	.db #0x3c	; 60
      002B81 22                    2687 	.db #0x22	; 34
      002B82 3C                    2688 	.db #0x3c	; 60
      002B83 00                    2689 	.db #0x00	; 0
      002B84 14                    2690 	.db #0x14	; 20
      002B85 00                    2691 	.db #0x00	; 0
      002B86 1C                    2692 	.db #0x1c	; 28
      002B87 20                    2693 	.db #0x20	; 32
      002B88 3C                    2694 	.db #0x3c	; 60
      002B89 22                    2695 	.db #0x22	; 34
      002B8A 3C                    2696 	.db #0x3c	; 60
      002B8B 00                    2697 	.db #0x00	; 0
      002B8C 0C                    2698 	.db #0x0c	; 12
      002B8D 00                    2699 	.db #0x00	; 0
      002B8E 1C                    2700 	.db #0x1c	; 28
      002B8F 20                    2701 	.db #0x20	; 32
      002B90 3C                    2702 	.db #0x3c	; 60
      002B91 22                    2703 	.db #0x22	; 34
      002B92 3C                    2704 	.db #0x3c	; 60
      002B93 00                    2705 	.db #0x00	; 0
      002B94 1C                    2706 	.db #0x1c	; 28
      002B95 14                    2707 	.db #0x14	; 20
      002B96 1C                    2708 	.db #0x1c	; 28
      002B97 20                    2709 	.db #0x20	; 32
      002B98 3C                    2710 	.db #0x3c	; 60
      002B99 22                    2711 	.db #0x22	; 34
      002B9A 3C                    2712 	.db #0x3c	; 60
      002B9B 00                    2713 	.db #0x00	; 0
      002B9C 00                    2714 	.db #0x00	; 0
      002B9D 1C                    2715 	.db #0x1c	; 28
      002B9E 22                    2716 	.db #0x22	; 34
      002B9F 02                    2717 	.db #0x02	; 2
      002BA0 22                    2718 	.db #0x22	; 34
      002BA1 1C                    2719 	.db #0x1c	; 28
      002BA2 08                    2720 	.db #0x08	; 8
      002BA3 0C                    2721 	.db #0x0c	; 12
      002BA4 1C                    2722 	.db #0x1c	; 28
      002BA5 00                    2723 	.db #0x00	; 0
      002BA6 1C                    2724 	.db #0x1c	; 28
      002BA7 22                    2725 	.db #0x22	; 34
      002BA8 1E                    2726 	.db #0x1e	; 30
      002BA9 02                    2727 	.db #0x02	; 2
      002BAA 1C                    2728 	.db #0x1c	; 28
      002BAB 00                    2729 	.db #0x00	; 0
      002BAC 14                    2730 	.db #0x14	; 20
      002BAD 00                    2731 	.db #0x00	; 0
      002BAE 1C                    2732 	.db #0x1c	; 28
      002BAF 22                    2733 	.db #0x22	; 34
      002BB0 1E                    2734 	.db #0x1e	; 30
      002BB1 02                    2735 	.db #0x02	; 2
      002BB2 1C                    2736 	.db #0x1c	; 28
      002BB3 00                    2737 	.db #0x00	; 0
      002BB4 0C                    2738 	.db #0x0c	; 12
      002BB5 00                    2739 	.db #0x00	; 0
      002BB6 1C                    2740 	.db #0x1c	; 28
      002BB7 22                    2741 	.db #0x22	; 34
      002BB8 1E                    2742 	.db #0x1e	; 30
      002BB9 02                    2743 	.db #0x02	; 2
      002BBA 1C                    2744 	.db #0x1c	; 28
      002BBB 00                    2745 	.db #0x00	; 0
      002BBC 14                    2746 	.db #0x14	; 20
      002BBD 00                    2747 	.db #0x00	; 0
      002BBE 08                    2748 	.db #0x08	; 8
      002BBF 08                    2749 	.db #0x08	; 8
      002BC0 08                    2750 	.db #0x08	; 8
      002BC1 08                    2751 	.db #0x08	; 8
      002BC2 18                    2752 	.db #0x18	; 24
      002BC3 00                    2753 	.db #0x00	; 0
      002BC4 08                    2754 	.db #0x08	; 8
      002BC5 14                    2755 	.db #0x14	; 20
      002BC6 00                    2756 	.db #0x00	; 0
      002BC7 08                    2757 	.db #0x08	; 8
      002BC8 08                    2758 	.db #0x08	; 8
      002BC9 08                    2759 	.db #0x08	; 8
      002BCA 18                    2760 	.db #0x18	; 24
      002BCB 00                    2761 	.db #0x00	; 0
      002BCC 04                    2762 	.db #0x04	; 4
      002BCD 00                    2763 	.db #0x00	; 0
      002BCE 08                    2764 	.db #0x08	; 8
      002BCF 08                    2765 	.db #0x08	; 8
      002BD0 08                    2766 	.db #0x08	; 8
      002BD1 08                    2767 	.db #0x08	; 8
      002BD2 18                    2768 	.db #0x18	; 24
      002BD3 00                    2769 	.db #0x00	; 0
      002BD4 14                    2770 	.db #0x14	; 20
      002BD5 00                    2771 	.db #0x00	; 0
      002BD6 08                    2772 	.db #0x08	; 8
      002BD7 14                    2773 	.db #0x14	; 20
      002BD8 22                    2774 	.db #0x22	; 34
      002BD9 3E                    2775 	.db #0x3e	; 62
      002BDA 22                    2776 	.db #0x22	; 34
      002BDB 00                    2777 	.db #0x00	; 0
      002BDC 1C                    2778 	.db #0x1c	; 28
      002BDD 14                    2779 	.db #0x14	; 20
      002BDE 1C                    2780 	.db #0x1c	; 28
      002BDF 36                    2781 	.db #0x36	; 54	'6'
      002BE0 22                    2782 	.db #0x22	; 34
      002BE1 3E                    2783 	.db #0x3e	; 62
      002BE2 22                    2784 	.db #0x22	; 34
      002BE3 00                    2785 	.db #0x00	; 0
      002BE4 30                    2786 	.db #0x30	; 48	'0'
      002BE5 00                    2787 	.db #0x00	; 0
      002BE6 3E                    2788 	.db #0x3e	; 62
      002BE7 02                    2789 	.db #0x02	; 2
      002BE8 1E                    2790 	.db #0x1e	; 30
      002BE9 02                    2791 	.db #0x02	; 2
      002BEA 3E                    2792 	.db #0x3e	; 62
      002BEB 00                    2793 	.db #0x00	; 0
      002BEC 00                    2794 	.db #0x00	; 0
      002BED 00                    2795 	.db #0x00	; 0
      002BEE 1E                    2796 	.db #0x1e	; 30
      002BEF 28                    2797 	.db #0x28	; 40
      002BF0 3E                    2798 	.db #0x3e	; 62
      002BF1 0A                    2799 	.db #0x0a	; 10
      002BF2 3C                    2800 	.db #0x3c	; 60
      002BF3 00                    2801 	.db #0x00	; 0
      002BF4 3C                    2802 	.db #0x3c	; 60
      002BF5 0A                    2803 	.db #0x0a	; 10
      002BF6 0A                    2804 	.db #0x0a	; 10
      002BF7 3E                    2805 	.db #0x3e	; 62
      002BF8 0A                    2806 	.db #0x0a	; 10
      002BF9 0A                    2807 	.db #0x0a	; 10
      002BFA 3A                    2808 	.db #0x3a	; 58
      002BFB 00                    2809 	.db #0x00	; 0
      002BFC 1C                    2810 	.db #0x1c	; 28
      002BFD 00                    2811 	.db #0x00	; 0
      002BFE 0C                    2812 	.db #0x0c	; 12
      002BFF 12                    2813 	.db #0x12	; 18
      002C00 12                    2814 	.db #0x12	; 18
      002C01 12                    2815 	.db #0x12	; 18
      002C02 0C                    2816 	.db #0x0c	; 12
      002C03 00                    2817 	.db #0x00	; 0
      002C04 14                    2818 	.db #0x14	; 20
      002C05 00                    2819 	.db #0x00	; 0
      002C06 0C                    2820 	.db #0x0c	; 12
      002C07 12                    2821 	.db #0x12	; 18
      002C08 12                    2822 	.db #0x12	; 18
      002C09 12                    2823 	.db #0x12	; 18
      002C0A 0C                    2824 	.db #0x0c	; 12
      002C0B 00                    2825 	.db #0x00	; 0
      002C0C 06                    2826 	.db #0x06	; 6
      002C0D 00                    2827 	.db #0x00	; 0
      002C0E 0C                    2828 	.db #0x0c	; 12
      002C0F 12                    2829 	.db #0x12	; 18
      002C10 12                    2830 	.db #0x12	; 18
      002C11 12                    2831 	.db #0x12	; 18
      002C12 0C                    2832 	.db #0x0c	; 12
      002C13 00                    2833 	.db #0x00	; 0
      002C14 1C                    2834 	.db #0x1c	; 28
      002C15 00                    2835 	.db #0x00	; 0
      002C16 12                    2836 	.db #0x12	; 18
      002C17 12                    2837 	.db #0x12	; 18
      002C18 12                    2838 	.db #0x12	; 18
      002C19 1A                    2839 	.db #0x1a	; 26
      002C1A 14                    2840 	.db #0x14	; 20
      002C1B 00                    2841 	.db #0x00	; 0
      002C1C 06                    2842 	.db #0x06	; 6
      002C1D 00                    2843 	.db #0x00	; 0
      002C1E 12                    2844 	.db #0x12	; 18
      002C1F 12                    2845 	.db #0x12	; 18
      002C20 12                    2846 	.db #0x12	; 18
      002C21 1A                    2847 	.db #0x1a	; 26
      002C22 14                    2848 	.db #0x14	; 20
      002C23 00                    2849 	.db #0x00	; 0
      002C24 14                    2850 	.db #0x14	; 20
      002C25 00                    2851 	.db #0x00	; 0
      002C26 12                    2852 	.db #0x12	; 18
      002C27 12                    2853 	.db #0x12	; 18
      002C28 12                    2854 	.db #0x12	; 18
      002C29 1C                    2855 	.db #0x1c	; 28
      002C2A 08                    2856 	.db #0x08	; 8
      002C2B 06                    2857 	.db #0x06	; 6
      002C2C 12                    2858 	.db #0x12	; 18
      002C2D 0C                    2859 	.db #0x0c	; 12
      002C2E 12                    2860 	.db #0x12	; 18
      002C2F 12                    2861 	.db #0x12	; 18
      002C30 12                    2862 	.db #0x12	; 18
      002C31 12                    2863 	.db #0x12	; 18
      002C32 0C                    2864 	.db #0x0c	; 12
      002C33 00                    2865 	.db #0x00	; 0
      002C34 14                    2866 	.db #0x14	; 20
      002C35 00                    2867 	.db #0x00	; 0
      002C36 12                    2868 	.db #0x12	; 18
      002C37 12                    2869 	.db #0x12	; 18
      002C38 12                    2870 	.db #0x12	; 18
      002C39 12                    2871 	.db #0x12	; 18
      002C3A 0C                    2872 	.db #0x0c	; 12
      002C3B 00                    2873 	.db #0x00	; 0
      002C3C 00                    2874 	.db #0x00	; 0
      002C3D 08                    2875 	.db #0x08	; 8
      002C3E 1C                    2876 	.db #0x1c	; 28
      002C3F 02                    2877 	.db #0x02	; 2
      002C40 02                    2878 	.db #0x02	; 2
      002C41 1C                    2879 	.db #0x1c	; 28
      002C42 08                    2880 	.db #0x08	; 8
      002C43 00                    2881 	.db #0x00	; 0
      002C44 18                    2882 	.db #0x18	; 24
      002C45 24                    2883 	.db #0x24	; 36
      002C46 04                    2884 	.db #0x04	; 4
      002C47 1E                    2885 	.db #0x1e	; 30
      002C48 04                    2886 	.db #0x04	; 4
      002C49 24                    2887 	.db #0x24	; 36
      002C4A 3A                    2888 	.db #0x3a	; 58
      002C4B 00                    2889 	.db #0x00	; 0
      002C4C 22                    2890 	.db #0x22	; 34
      002C4D 14                    2891 	.db #0x14	; 20
      002C4E 08                    2892 	.db #0x08	; 8
      002C4F 3E                    2893 	.db #0x3e	; 62
      002C50 08                    2894 	.db #0x08	; 8
      002C51 3E                    2895 	.db #0x3e	; 62
      002C52 08                    2896 	.db #0x08	; 8
      002C53 00                    2897 	.db #0x00	; 0
      002C54 06                    2898 	.db #0x06	; 6
      002C55 0A                    2899 	.db #0x0a	; 10
      002C56 0A                    2900 	.db #0x0a	; 10
      002C57 16                    2901 	.db #0x16	; 22
      002C58 3A                    2902 	.db #0x3a	; 58
      002C59 12                    2903 	.db #0x12	; 18
      002C5A 12                    2904 	.db #0x12	; 18
      002C5B 00                    2905 	.db #0x00	; 0
      002C5C 10                    2906 	.db #0x10	; 16
      002C5D 28                    2907 	.db #0x28	; 40
      002C5E 08                    2908 	.db #0x08	; 8
      002C5F 1C                    2909 	.db #0x1c	; 28
      002C60 08                    2910 	.db #0x08	; 8
      002C61 08                    2911 	.db #0x08	; 8
      002C62 0A                    2912 	.db #0x0a	; 10
      002C63 04                    2913 	.db #0x04	; 4
      002C64 18                    2914 	.db #0x18	; 24
      002C65 00                    2915 	.db #0x00	; 0
      002C66 1C                    2916 	.db #0x1c	; 28
      002C67 20                    2917 	.db #0x20	; 32
      002C68 3C                    2918 	.db #0x3c	; 60
      002C69 22                    2919 	.db #0x22	; 34
      002C6A 3C                    2920 	.db #0x3c	; 60
      002C6B 00                    2921 	.db #0x00	; 0
      002C6C 18                    2922 	.db #0x18	; 24
      002C6D 00                    2923 	.db #0x00	; 0
      002C6E 08                    2924 	.db #0x08	; 8
      002C6F 08                    2925 	.db #0x08	; 8
      002C70 08                    2926 	.db #0x08	; 8
      002C71 08                    2927 	.db #0x08	; 8
      002C72 18                    2928 	.db #0x18	; 24
      002C73 00                    2929 	.db #0x00	; 0
      002C74 18                    2930 	.db #0x18	; 24
      002C75 00                    2931 	.db #0x00	; 0
      002C76 0C                    2932 	.db #0x0c	; 12
      002C77 12                    2933 	.db #0x12	; 18
      002C78 12                    2934 	.db #0x12	; 18
      002C79 12                    2935 	.db #0x12	; 18
      002C7A 0C                    2936 	.db #0x0c	; 12
      002C7B 00                    2937 	.db #0x00	; 0
      002C7C 18                    2938 	.db #0x18	; 24
      002C7D 00                    2939 	.db #0x00	; 0
      002C7E 12                    2940 	.db #0x12	; 18
      002C7F 12                    2941 	.db #0x12	; 18
      002C80 12                    2942 	.db #0x12	; 18
      002C81 1A                    2943 	.db #0x1a	; 26
      002C82 14                    2944 	.db #0x14	; 20
      002C83 00                    2945 	.db #0x00	; 0
      002C84 14                    2946 	.db #0x14	; 20
      002C85 0A                    2947 	.db #0x0a	; 10
      002C86 00                    2948 	.db #0x00	; 0
      002C87 0E                    2949 	.db #0x0e	; 14
      002C88 12                    2950 	.db #0x12	; 18
      002C89 12                    2951 	.db #0x12	; 18
      002C8A 12                    2952 	.db #0x12	; 18
      002C8B 00                    2953 	.db #0x00	; 0
      002C8C 14                    2954 	.db #0x14	; 20
      002C8D 0A                    2955 	.db #0x0a	; 10
      002C8E 00                    2956 	.db #0x00	; 0
      002C8F 12                    2957 	.db #0x12	; 18
      002C90 16                    2958 	.db #0x16	; 22
      002C91 1A                    2959 	.db #0x1a	; 26
      002C92 12                    2960 	.db #0x12	; 18
      002C93 00                    2961 	.db #0x00	; 0
      002C94 1C                    2962 	.db #0x1c	; 28
      002C95 20                    2963 	.db #0x20	; 32
      002C96 3C                    2964 	.db #0x3c	; 60
      002C97 22                    2965 	.db #0x22	; 34
      002C98 3C                    2966 	.db #0x3c	; 60
      002C99 00                    2967 	.db #0x00	; 0
      002C9A 3C                    2968 	.db #0x3c	; 60
      002C9B 00                    2969 	.db #0x00	; 0
      002C9C 0C                    2970 	.db #0x0c	; 12
      002C9D 12                    2971 	.db #0x12	; 18
      002C9E 12                    2972 	.db #0x12	; 18
      002C9F 12                    2973 	.db #0x12	; 18
      002CA0 0C                    2974 	.db #0x0c	; 12
      002CA1 00                    2975 	.db #0x00	; 0
      002CA2 1E                    2976 	.db #0x1e	; 30
      002CA3 00                    2977 	.db #0x00	; 0
      002CA4 08                    2978 	.db #0x08	; 8
      002CA5 00                    2979 	.db #0x00	; 0
      002CA6 08                    2980 	.db #0x08	; 8
      002CA7 0C                    2981 	.db #0x0c	; 12
      002CA8 02                    2982 	.db #0x02	; 2
      002CA9 22                    2983 	.db #0x22	; 34
      002CAA 1C                    2984 	.db #0x1c	; 28
      002CAB 00                    2985 	.db #0x00	; 0
      002CAC 00                    2986 	.db #0x00	; 0
      002CAD 00                    2987 	.db #0x00	; 0
      002CAE 3E                    2988 	.db #0x3e	; 62
      002CAF 02                    2989 	.db #0x02	; 2
      002CB0 02                    2990 	.db #0x02	; 2
      002CB1 02                    2991 	.db #0x02	; 2
      002CB2 00                    2992 	.db #0x00	; 0
      002CB3 00                    2993 	.db #0x00	; 0
      002CB4 00                    2994 	.db #0x00	; 0
      002CB5 00                    2995 	.db #0x00	; 0
      002CB6 3F                    2996 	.db #0x3f	; 63
      002CB7 20                    2997 	.db #0x20	; 32
      002CB8 20                    2998 	.db #0x20	; 32
      002CB9 00                    2999 	.db #0x00	; 0
      002CBA 00                    3000 	.db #0x00	; 0
      002CBB 00                    3001 	.db #0x00	; 0
      002CBC 02                    3002 	.db #0x02	; 2
      002CBD 12                    3003 	.db #0x12	; 18
      002CBE 0A                    3004 	.db #0x0a	; 10
      002CBF 1C                    3005 	.db #0x1c	; 28
      002CC0 22                    3006 	.db #0x22	; 34
      002CC1 10                    3007 	.db #0x10	; 16
      002CC2 38                    3008 	.db #0x38	; 56	'8'
      002CC3 00                    3009 	.db #0x00	; 0
      002CC4 02                    3010 	.db #0x02	; 2
      002CC5 12                    3011 	.db #0x12	; 18
      002CC6 0A                    3012 	.db #0x0a	; 10
      002CC7 34                    3013 	.db #0x34	; 52	'4'
      002CC8 2A                    3014 	.db #0x2a	; 42
      002CC9 38                    3015 	.db #0x38	; 56	'8'
      002CCA 20                    3016 	.db #0x20	; 32
      002CCB 00                    3017 	.db #0x00	; 0
      002CCC 08                    3018 	.db #0x08	; 8
      002CCD 00                    3019 	.db #0x00	; 0
      002CCE 08                    3020 	.db #0x08	; 8
      002CCF 08                    3021 	.db #0x08	; 8
      002CD0 1C                    3022 	.db #0x1c	; 28
      002CD1 1C                    3023 	.db #0x1c	; 28
      002CD2 08                    3024 	.db #0x08	; 8
      002CD3 00                    3025 	.db #0x00	; 0
      002CD4 00                    3026 	.db #0x00	; 0
      002CD5 00                    3027 	.db #0x00	; 0
      002CD6 24                    3028 	.db #0x24	; 36
      002CD7 12                    3029 	.db #0x12	; 18
      002CD8 24                    3030 	.db #0x24	; 36
      002CD9 00                    3031 	.db #0x00	; 0
      002CDA 00                    3032 	.db #0x00	; 0
      002CDB 00                    3033 	.db #0x00	; 0
      002CDC 00                    3034 	.db #0x00	; 0
      002CDD 00                    3035 	.db #0x00	; 0
      002CDE 12                    3036 	.db #0x12	; 18
      002CDF 24                    3037 	.db #0x24	; 36
      002CE0 12                    3038 	.db #0x12	; 18
      002CE1 00                    3039 	.db #0x00	; 0
      002CE2 00                    3040 	.db #0x00	; 0
      002CE3 00                    3041 	.db #0x00	; 0
      002CE4 2A                    3042 	.db #0x2a	; 42
      002CE5 00                    3043 	.db #0x00	; 0
      002CE6 15                    3044 	.db #0x15	; 21
      002CE7 00                    3045 	.db #0x00	; 0
      002CE8 2A                    3046 	.db #0x2a	; 42
      002CE9 00                    3047 	.db #0x00	; 0
      002CEA 15                    3048 	.db #0x15	; 21
      002CEB 00                    3049 	.db #0x00	; 0
      002CEC 2A                    3050 	.db #0x2a	; 42
      002CED 15                    3051 	.db #0x15	; 21
      002CEE 2A                    3052 	.db #0x2a	; 42
      002CEF 15                    3053 	.db #0x15	; 21
      002CF0 2A                    3054 	.db #0x2a	; 42
      002CF1 15                    3055 	.db #0x15	; 21
      002CF2 2A                    3056 	.db #0x2a	; 42
      002CF3 15                    3057 	.db #0x15	; 21
      002CF4 15                    3058 	.db #0x15	; 21
      002CF5 3F                    3059 	.db #0x3f	; 63
      002CF6 2A                    3060 	.db #0x2a	; 42
      002CF7 3F                    3061 	.db #0x3f	; 63
      002CF8 15                    3062 	.db #0x15	; 21
      002CF9 3F                    3063 	.db #0x3f	; 63
      002CFA 2A                    3064 	.db #0x2a	; 42
      002CFB 3F                    3065 	.db #0x3f	; 63
      002CFC 08                    3066 	.db #0x08	; 8
      002CFD 08                    3067 	.db #0x08	; 8
      002CFE 08                    3068 	.db #0x08	; 8
      002CFF 08                    3069 	.db #0x08	; 8
      002D00 08                    3070 	.db #0x08	; 8
      002D01 08                    3071 	.db #0x08	; 8
      002D02 08                    3072 	.db #0x08	; 8
      002D03 08                    3073 	.db #0x08	; 8
      002D04 08                    3074 	.db #0x08	; 8
      002D05 08                    3075 	.db #0x08	; 8
      002D06 08                    3076 	.db #0x08	; 8
      002D07 0F                    3077 	.db #0x0f	; 15
      002D08 08                    3078 	.db #0x08	; 8
      002D09 08                    3079 	.db #0x08	; 8
      002D0A 08                    3080 	.db #0x08	; 8
      002D0B 08                    3081 	.db #0x08	; 8
      002D0C 08                    3082 	.db #0x08	; 8
      002D0D 0F                    3083 	.db #0x0f	; 15
      002D0E 08                    3084 	.db #0x08	; 8
      002D0F 0F                    3085 	.db #0x0f	; 15
      002D10 08                    3086 	.db #0x08	; 8
      002D11 08                    3087 	.db #0x08	; 8
      002D12 08                    3088 	.db #0x08	; 8
      002D13 08                    3089 	.db #0x08	; 8
      002D14 0A                    3090 	.db #0x0a	; 10
      002D15 0A                    3091 	.db #0x0a	; 10
      002D16 0A                    3092 	.db #0x0a	; 10
      002D17 0B                    3093 	.db #0x0b	; 11
      002D18 0A                    3094 	.db #0x0a	; 10
      002D19 0A                    3095 	.db #0x0a	; 10
      002D1A 0A                    3096 	.db #0x0a	; 10
      002D1B 0A                    3097 	.db #0x0a	; 10
      002D1C 00                    3098 	.db #0x00	; 0
      002D1D 00                    3099 	.db #0x00	; 0
      002D1E 00                    3100 	.db #0x00	; 0
      002D1F 0F                    3101 	.db #0x0f	; 15
      002D20 0A                    3102 	.db #0x0a	; 10
      002D21 0A                    3103 	.db #0x0a	; 10
      002D22 0A                    3104 	.db #0x0a	; 10
      002D23 0A                    3105 	.db #0x0a	; 10
      002D24 00                    3106 	.db #0x00	; 0
      002D25 0F                    3107 	.db #0x0f	; 15
      002D26 08                    3108 	.db #0x08	; 8
      002D27 0F                    3109 	.db #0x0f	; 15
      002D28 08                    3110 	.db #0x08	; 8
      002D29 08                    3111 	.db #0x08	; 8
      002D2A 08                    3112 	.db #0x08	; 8
      002D2B 08                    3113 	.db #0x08	; 8
      002D2C 0A                    3114 	.db #0x0a	; 10
      002D2D 0B                    3115 	.db #0x0b	; 11
      002D2E 08                    3116 	.db #0x08	; 8
      002D2F 0B                    3117 	.db #0x0b	; 11
      002D30 0A                    3118 	.db #0x0a	; 10
      002D31 0A                    3119 	.db #0x0a	; 10
      002D32 0A                    3120 	.db #0x0a	; 10
      002D33 0A                    3121 	.db #0x0a	; 10
      002D34 0A                    3122 	.db #0x0a	; 10
      002D35 0A                    3123 	.db #0x0a	; 10
      002D36 0A                    3124 	.db #0x0a	; 10
      002D37 0A                    3125 	.db #0x0a	; 10
      002D38 0A                    3126 	.db #0x0a	; 10
      002D39 0A                    3127 	.db #0x0a	; 10
      002D3A 0A                    3128 	.db #0x0a	; 10
      002D3B 0A                    3129 	.db #0x0a	; 10
      002D3C 00                    3130 	.db #0x00	; 0
      002D3D 0F                    3131 	.db #0x0f	; 15
      002D3E 08                    3132 	.db #0x08	; 8
      002D3F 0B                    3133 	.db #0x0b	; 11
      002D40 0A                    3134 	.db #0x0a	; 10
      002D41 0A                    3135 	.db #0x0a	; 10
      002D42 0A                    3136 	.db #0x0a	; 10
      002D43 0A                    3137 	.db #0x0a	; 10
      002D44 0A                    3138 	.db #0x0a	; 10
      002D45 0B                    3139 	.db #0x0b	; 11
      002D46 08                    3140 	.db #0x08	; 8
      002D47 0F                    3141 	.db #0x0f	; 15
      002D48 00                    3142 	.db #0x00	; 0
      002D49 00                    3143 	.db #0x00	; 0
      002D4A 00                    3144 	.db #0x00	; 0
      002D4B 00                    3145 	.db #0x00	; 0
      002D4C 0A                    3146 	.db #0x0a	; 10
      002D4D 0A                    3147 	.db #0x0a	; 10
      002D4E 0A                    3148 	.db #0x0a	; 10
      002D4F 0F                    3149 	.db #0x0f	; 15
      002D50 00                    3150 	.db #0x00	; 0
      002D51 00                    3151 	.db #0x00	; 0
      002D52 00                    3152 	.db #0x00	; 0
      002D53 00                    3153 	.db #0x00	; 0
      002D54 08                    3154 	.db #0x08	; 8
      002D55 0F                    3155 	.db #0x0f	; 15
      002D56 08                    3156 	.db #0x08	; 8
      002D57 0F                    3157 	.db #0x0f	; 15
      002D58 00                    3158 	.db #0x00	; 0
      002D59 00                    3159 	.db #0x00	; 0
      002D5A 00                    3160 	.db #0x00	; 0
      002D5B 00                    3161 	.db #0x00	; 0
      002D5C 00                    3162 	.db #0x00	; 0
      002D5D 00                    3163 	.db #0x00	; 0
      002D5E 00                    3164 	.db #0x00	; 0
      002D5F 0F                    3165 	.db #0x0f	; 15
      002D60 08                    3166 	.db #0x08	; 8
      002D61 08                    3167 	.db #0x08	; 8
      002D62 08                    3168 	.db #0x08	; 8
      002D63 08                    3169 	.db #0x08	; 8
      002D64 08                    3170 	.db #0x08	; 8
      002D65 08                    3171 	.db #0x08	; 8
      002D66 08                    3172 	.db #0x08	; 8
      002D67 38                    3173 	.db #0x38	; 56	'8'
      002D68 00                    3174 	.db #0x00	; 0
      002D69 00                    3175 	.db #0x00	; 0
      002D6A 00                    3176 	.db #0x00	; 0
      002D6B 00                    3177 	.db #0x00	; 0
      002D6C 08                    3178 	.db #0x08	; 8
      002D6D 08                    3179 	.db #0x08	; 8
      002D6E 08                    3180 	.db #0x08	; 8
      002D6F 3F                    3181 	.db #0x3f	; 63
      002D70 00                    3182 	.db #0x00	; 0
      002D71 00                    3183 	.db #0x00	; 0
      002D72 00                    3184 	.db #0x00	; 0
      002D73 00                    3185 	.db #0x00	; 0
      002D74 00                    3186 	.db #0x00	; 0
      002D75 00                    3187 	.db #0x00	; 0
      002D76 00                    3188 	.db #0x00	; 0
      002D77 3F                    3189 	.db #0x3f	; 63
      002D78 08                    3190 	.db #0x08	; 8
      002D79 08                    3191 	.db #0x08	; 8
      002D7A 08                    3192 	.db #0x08	; 8
      002D7B 08                    3193 	.db #0x08	; 8
      002D7C 08                    3194 	.db #0x08	; 8
      002D7D 08                    3195 	.db #0x08	; 8
      002D7E 08                    3196 	.db #0x08	; 8
      002D7F 38                    3197 	.db #0x38	; 56	'8'
      002D80 08                    3198 	.db #0x08	; 8
      002D81 08                    3199 	.db #0x08	; 8
      002D82 08                    3200 	.db #0x08	; 8
      002D83 08                    3201 	.db #0x08	; 8
      002D84 00                    3202 	.db #0x00	; 0
      002D85 00                    3203 	.db #0x00	; 0
      002D86 00                    3204 	.db #0x00	; 0
      002D87 3F                    3205 	.db #0x3f	; 63
      002D88 00                    3206 	.db #0x00	; 0
      002D89 00                    3207 	.db #0x00	; 0
      002D8A 00                    3208 	.db #0x00	; 0
      002D8B 00                    3209 	.db #0x00	; 0
      002D8C 08                    3210 	.db #0x08	; 8
      002D8D 08                    3211 	.db #0x08	; 8
      002D8E 08                    3212 	.db #0x08	; 8
      002D8F 3F                    3213 	.db #0x3f	; 63
      002D90 08                    3214 	.db #0x08	; 8
      002D91 08                    3215 	.db #0x08	; 8
      002D92 08                    3216 	.db #0x08	; 8
      002D93 08                    3217 	.db #0x08	; 8
      002D94 08                    3218 	.db #0x08	; 8
      002D95 38                    3219 	.db #0x38	; 56	'8'
      002D96 08                    3220 	.db #0x08	; 8
      002D97 38                    3221 	.db #0x38	; 56	'8'
      002D98 08                    3222 	.db #0x08	; 8
      002D99 08                    3223 	.db #0x08	; 8
      002D9A 08                    3224 	.db #0x08	; 8
      002D9B 08                    3225 	.db #0x08	; 8
      002D9C 0A                    3226 	.db #0x0a	; 10
      002D9D 0A                    3227 	.db #0x0a	; 10
      002D9E 0A                    3228 	.db #0x0a	; 10
      002D9F 3A                    3229 	.db #0x3a	; 58
      002DA0 0A                    3230 	.db #0x0a	; 10
      002DA1 0A                    3231 	.db #0x0a	; 10
      002DA2 0A                    3232 	.db #0x0a	; 10
      002DA3 0A                    3233 	.db #0x0a	; 10
      002DA4 0A                    3234 	.db #0x0a	; 10
      002DA5 3A                    3235 	.db #0x3a	; 58
      002DA6 02                    3236 	.db #0x02	; 2
      002DA7 3E                    3237 	.db #0x3e	; 62
      002DA8 00                    3238 	.db #0x00	; 0
      002DA9 00                    3239 	.db #0x00	; 0
      002DAA 00                    3240 	.db #0x00	; 0
      002DAB 00                    3241 	.db #0x00	; 0
      002DAC 00                    3242 	.db #0x00	; 0
      002DAD 3E                    3243 	.db #0x3e	; 62
      002DAE 02                    3244 	.db #0x02	; 2
      002DAF 3A                    3245 	.db #0x3a	; 58
      002DB0 0A                    3246 	.db #0x0a	; 10
      002DB1 0A                    3247 	.db #0x0a	; 10
      002DB2 0A                    3248 	.db #0x0a	; 10
      002DB3 0A                    3249 	.db #0x0a	; 10
      002DB4 0A                    3250 	.db #0x0a	; 10
      002DB5 3B                    3251 	.db #0x3b	; 59
      002DB6 00                    3252 	.db #0x00	; 0
      002DB7 3F                    3253 	.db #0x3f	; 63
      002DB8 00                    3254 	.db #0x00	; 0
      002DB9 00                    3255 	.db #0x00	; 0
      002DBA 00                    3256 	.db #0x00	; 0
      002DBB 00                    3257 	.db #0x00	; 0
      002DBC 00                    3258 	.db #0x00	; 0
      002DBD 3F                    3259 	.db #0x3f	; 63
      002DBE 00                    3260 	.db #0x00	; 0
      002DBF 3B                    3261 	.db #0x3b	; 59
      002DC0 0A                    3262 	.db #0x0a	; 10
      002DC1 0A                    3263 	.db #0x0a	; 10
      002DC2 0A                    3264 	.db #0x0a	; 10
      002DC3 0A                    3265 	.db #0x0a	; 10
      002DC4 0A                    3266 	.db #0x0a	; 10
      002DC5 3A                    3267 	.db #0x3a	; 58
      002DC6 02                    3268 	.db #0x02	; 2
      002DC7 3A                    3269 	.db #0x3a	; 58
      002DC8 0A                    3270 	.db #0x0a	; 10
      002DC9 0A                    3271 	.db #0x0a	; 10
      002DCA 0A                    3272 	.db #0x0a	; 10
      002DCB 0A                    3273 	.db #0x0a	; 10
      002DCC 00                    3274 	.db #0x00	; 0
      002DCD 3F                    3275 	.db #0x3f	; 63
      002DCE 00                    3276 	.db #0x00	; 0
      002DCF 3F                    3277 	.db #0x3f	; 63
      002DD0 00                    3278 	.db #0x00	; 0
      002DD1 00                    3279 	.db #0x00	; 0
      002DD2 00                    3280 	.db #0x00	; 0
      002DD3 00                    3281 	.db #0x00	; 0
      002DD4 0A                    3282 	.db #0x0a	; 10
      002DD5 3B                    3283 	.db #0x3b	; 59
      002DD6 00                    3284 	.db #0x00	; 0
      002DD7 3B                    3285 	.db #0x3b	; 59
      002DD8 0A                    3286 	.db #0x0a	; 10
      002DD9 0A                    3287 	.db #0x0a	; 10
      002DDA 0A                    3288 	.db #0x0a	; 10
      002DDB 0A                    3289 	.db #0x0a	; 10
      002DDC 08                    3290 	.db #0x08	; 8
      002DDD 3F                    3291 	.db #0x3f	; 63
      002DDE 00                    3292 	.db #0x00	; 0
      002DDF 3F                    3293 	.db #0x3f	; 63
      002DE0 00                    3294 	.db #0x00	; 0
      002DE1 00                    3295 	.db #0x00	; 0
      002DE2 00                    3296 	.db #0x00	; 0
      002DE3 00                    3297 	.db #0x00	; 0
      002DE4 0A                    3298 	.db #0x0a	; 10
      002DE5 0A                    3299 	.db #0x0a	; 10
      002DE6 0A                    3300 	.db #0x0a	; 10
      002DE7 3F                    3301 	.db #0x3f	; 63
      002DE8 00                    3302 	.db #0x00	; 0
      002DE9 00                    3303 	.db #0x00	; 0
      002DEA 00                    3304 	.db #0x00	; 0
      002DEB 00                    3305 	.db #0x00	; 0
      002DEC 00                    3306 	.db #0x00	; 0
      002DED 3F                    3307 	.db #0x3f	; 63
      002DEE 00                    3308 	.db #0x00	; 0
      002DEF 3F                    3309 	.db #0x3f	; 63
      002DF0 08                    3310 	.db #0x08	; 8
      002DF1 08                    3311 	.db #0x08	; 8
      002DF2 08                    3312 	.db #0x08	; 8
      002DF3 08                    3313 	.db #0x08	; 8
      002DF4 00                    3314 	.db #0x00	; 0
      002DF5 00                    3315 	.db #0x00	; 0
      002DF6 00                    3316 	.db #0x00	; 0
      002DF7 3F                    3317 	.db #0x3f	; 63
      002DF8 0A                    3318 	.db #0x0a	; 10
      002DF9 0A                    3319 	.db #0x0a	; 10
      002DFA 0A                    3320 	.db #0x0a	; 10
      002DFB 0A                    3321 	.db #0x0a	; 10
      002DFC 0A                    3322 	.db #0x0a	; 10
      002DFD 0A                    3323 	.db #0x0a	; 10
      002DFE 0A                    3324 	.db #0x0a	; 10
      002DFF 3E                    3325 	.db #0x3e	; 62
      002E00 00                    3326 	.db #0x00	; 0
      002E01 00                    3327 	.db #0x00	; 0
      002E02 00                    3328 	.db #0x00	; 0
      002E03 00                    3329 	.db #0x00	; 0
      002E04 08                    3330 	.db #0x08	; 8
      002E05 38                    3331 	.db #0x38	; 56	'8'
      002E06 08                    3332 	.db #0x08	; 8
      002E07 38                    3333 	.db #0x38	; 56	'8'
      002E08 00                    3334 	.db #0x00	; 0
      002E09 00                    3335 	.db #0x00	; 0
      002E0A 00                    3336 	.db #0x00	; 0
      002E0B 00                    3337 	.db #0x00	; 0
      002E0C 00                    3338 	.db #0x00	; 0
      002E0D 38                    3339 	.db #0x38	; 56	'8'
      002E0E 08                    3340 	.db #0x08	; 8
      002E0F 38                    3341 	.db #0x38	; 56	'8'
      002E10 08                    3342 	.db #0x08	; 8
      002E11 08                    3343 	.db #0x08	; 8
      002E12 08                    3344 	.db #0x08	; 8
      002E13 08                    3345 	.db #0x08	; 8
      002E14 00                    3346 	.db #0x00	; 0
      002E15 00                    3347 	.db #0x00	; 0
      002E16 00                    3348 	.db #0x00	; 0
      002E17 3E                    3349 	.db #0x3e	; 62
      002E18 0A                    3350 	.db #0x0a	; 10
      002E19 0A                    3351 	.db #0x0a	; 10
      002E1A 0A                    3352 	.db #0x0a	; 10
      002E1B 0A                    3353 	.db #0x0a	; 10
      002E1C 0A                    3354 	.db #0x0a	; 10
      002E1D 0A                    3355 	.db #0x0a	; 10
      002E1E 0A                    3356 	.db #0x0a	; 10
      002E1F 3B                    3357 	.db #0x3b	; 59
      002E20 0A                    3358 	.db #0x0a	; 10
      002E21 0A                    3359 	.db #0x0a	; 10
      002E22 0A                    3360 	.db #0x0a	; 10
      002E23 0A                    3361 	.db #0x0a	; 10
      002E24 08                    3362 	.db #0x08	; 8
      002E25 3F                    3363 	.db #0x3f	; 63
      002E26 00                    3364 	.db #0x00	; 0
      002E27 3F                    3365 	.db #0x3f	; 63
      002E28 08                    3366 	.db #0x08	; 8
      002E29 08                    3367 	.db #0x08	; 8
      002E2A 08                    3368 	.db #0x08	; 8
      002E2B 08                    3369 	.db #0x08	; 8
      002E2C 08                    3370 	.db #0x08	; 8
      002E2D 08                    3371 	.db #0x08	; 8
      002E2E 08                    3372 	.db #0x08	; 8
      002E2F 0F                    3373 	.db #0x0f	; 15
      002E30 00                    3374 	.db #0x00	; 0
      002E31 00                    3375 	.db #0x00	; 0
      002E32 00                    3376 	.db #0x00	; 0
      002E33 00                    3377 	.db #0x00	; 0
      002E34 00                    3378 	.db #0x00	; 0
      002E35 00                    3379 	.db #0x00	; 0
      002E36 00                    3380 	.db #0x00	; 0
      002E37 38                    3381 	.db #0x38	; 56	'8'
      002E38 08                    3382 	.db #0x08	; 8
      002E39 08                    3383 	.db #0x08	; 8
      002E3A 08                    3384 	.db #0x08	; 8
      002E3B 08                    3385 	.db #0x08	; 8
      002E3C 3F                    3386 	.db #0x3f	; 63
      002E3D 3F                    3387 	.db #0x3f	; 63
      002E3E 3F                    3388 	.db #0x3f	; 63
      002E3F 3F                    3389 	.db #0x3f	; 63
      002E40 3F                    3390 	.db #0x3f	; 63
      002E41 3F                    3391 	.db #0x3f	; 63
      002E42 3F                    3392 	.db #0x3f	; 63
      002E43 3F                    3393 	.db #0x3f	; 63
      002E44 00                    3394 	.db #0x00	; 0
      002E45 00                    3395 	.db #0x00	; 0
      002E46 00                    3396 	.db #0x00	; 0
      002E47 00                    3397 	.db #0x00	; 0
      002E48 3F                    3398 	.db #0x3f	; 63
      002E49 3F                    3399 	.db #0x3f	; 63
      002E4A 3F                    3400 	.db #0x3f	; 63
      002E4B 3F                    3401 	.db #0x3f	; 63
      002E4C 07                    3402 	.db #0x07	; 7
      002E4D 07                    3403 	.db #0x07	; 7
      002E4E 07                    3404 	.db #0x07	; 7
      002E4F 07                    3405 	.db #0x07	; 7
      002E50 07                    3406 	.db #0x07	; 7
      002E51 07                    3407 	.db #0x07	; 7
      002E52 07                    3408 	.db #0x07	; 7
      002E53 07                    3409 	.db #0x07	; 7
      002E54 38                    3410 	.db #0x38	; 56	'8'
      002E55 38                    3411 	.db #0x38	; 56	'8'
      002E56 38                    3412 	.db #0x38	; 56	'8'
      002E57 38                    3413 	.db #0x38	; 56	'8'
      002E58 38                    3414 	.db #0x38	; 56	'8'
      002E59 38                    3415 	.db #0x38	; 56	'8'
      002E5A 38                    3416 	.db #0x38	; 56	'8'
      002E5B 38                    3417 	.db #0x38	; 56	'8'
      002E5C 3F                    3418 	.db #0x3f	; 63
      002E5D 3F                    3419 	.db #0x3f	; 63
      002E5E 3F                    3420 	.db #0x3f	; 63
      002E5F 3F                    3421 	.db #0x3f	; 63
      002E60 00                    3422 	.db #0x00	; 0
      002E61 00                    3423 	.db #0x00	; 0
      002E62 00                    3424 	.db #0x00	; 0
      002E63 00                    3425 	.db #0x00	; 0
      002E64 00                    3426 	.db #0x00	; 0
      002E65 00                    3427 	.db #0x00	; 0
      002E66 2C                    3428 	.db #0x2c	; 44
      002E67 12                    3429 	.db #0x12	; 18
      002E68 12                    3430 	.db #0x12	; 18
      002E69 2C                    3431 	.db #0x2c	; 44
      002E6A 00                    3432 	.db #0x00	; 0
      002E6B 00                    3433 	.db #0x00	; 0
      002E6C 00                    3434 	.db #0x00	; 0
      002E6D 0E                    3435 	.db #0x0e	; 14
      002E6E 12                    3436 	.db #0x12	; 18
      002E6F 0E                    3437 	.db #0x0e	; 14
      002E70 12                    3438 	.db #0x12	; 18
      002E71 12                    3439 	.db #0x12	; 18
      002E72 0E                    3440 	.db #0x0e	; 14
      002E73 02                    3441 	.db #0x02	; 2
      002E74 1E                    3442 	.db #0x1e	; 30
      002E75 12                    3443 	.db #0x12	; 18
      002E76 02                    3444 	.db #0x02	; 2
      002E77 02                    3445 	.db #0x02	; 2
      002E78 02                    3446 	.db #0x02	; 2
      002E79 02                    3447 	.db #0x02	; 2
      002E7A 02                    3448 	.db #0x02	; 2
      002E7B 00                    3449 	.db #0x00	; 0
      002E7C 00                    3450 	.db #0x00	; 0
      002E7D 3E                    3451 	.db #0x3e	; 62
      002E7E 14                    3452 	.db #0x14	; 20
      002E7F 14                    3453 	.db #0x14	; 20
      002E80 14                    3454 	.db #0x14	; 20
      002E81 14                    3455 	.db #0x14	; 20
      002E82 14                    3456 	.db #0x14	; 20
      002E83 00                    3457 	.db #0x00	; 0
      002E84 1E                    3458 	.db #0x1e	; 30
      002E85 12                    3459 	.db #0x12	; 18
      002E86 04                    3460 	.db #0x04	; 4
      002E87 08                    3461 	.db #0x08	; 8
      002E88 04                    3462 	.db #0x04	; 4
      002E89 12                    3463 	.db #0x12	; 18
      002E8A 1E                    3464 	.db #0x1e	; 30
      002E8B 00                    3465 	.db #0x00	; 0
      002E8C 00                    3466 	.db #0x00	; 0
      002E8D 00                    3467 	.db #0x00	; 0
      002E8E 3C                    3468 	.db #0x3c	; 60
      002E8F 12                    3469 	.db #0x12	; 18
      002E90 12                    3470 	.db #0x12	; 18
      002E91 0C                    3471 	.db #0x0c	; 12
      002E92 00                    3472 	.db #0x00	; 0
      002E93 00                    3473 	.db #0x00	; 0
      002E94 00                    3474 	.db #0x00	; 0
      002E95 00                    3475 	.db #0x00	; 0
      002E96 12                    3476 	.db #0x12	; 18
      002E97 12                    3477 	.db #0x12	; 18
      002E98 12                    3478 	.db #0x12	; 18
      002E99 0E                    3479 	.db #0x0e	; 14
      002E9A 02                    3480 	.db #0x02	; 2
      002E9B 02                    3481 	.db #0x02	; 2
      002E9C 00                    3482 	.db #0x00	; 0
      002E9D 00                    3483 	.db #0x00	; 0
      002E9E 14                    3484 	.db #0x14	; 20
      002E9F 0A                    3485 	.db #0x0a	; 10
      002EA0 08                    3486 	.db #0x08	; 8
      002EA1 08                    3487 	.db #0x08	; 8
      002EA2 08                    3488 	.db #0x08	; 8
      002EA3 00                    3489 	.db #0x00	; 0
      002EA4 1C                    3490 	.db #0x1c	; 28
      002EA5 08                    3491 	.db #0x08	; 8
      002EA6 1C                    3492 	.db #0x1c	; 28
      002EA7 22                    3493 	.db #0x22	; 34
      002EA8 1C                    3494 	.db #0x1c	; 28
      002EA9 08                    3495 	.db #0x08	; 8
      002EAA 1C                    3496 	.db #0x1c	; 28
      002EAB 00                    3497 	.db #0x00	; 0
      002EAC 0C                    3498 	.db #0x0c	; 12
      002EAD 12                    3499 	.db #0x12	; 18
      002EAE 12                    3500 	.db #0x12	; 18
      002EAF 1E                    3501 	.db #0x1e	; 30
      002EB0 12                    3502 	.db #0x12	; 18
      002EB1 12                    3503 	.db #0x12	; 18
      002EB2 0C                    3504 	.db #0x0c	; 12
      002EB3 00                    3505 	.db #0x00	; 0
      002EB4 00                    3506 	.db #0x00	; 0
      002EB5 1C                    3507 	.db #0x1c	; 28
      002EB6 22                    3508 	.db #0x22	; 34
      002EB7 22                    3509 	.db #0x22	; 34
      002EB8 14                    3510 	.db #0x14	; 20
      002EB9 14                    3511 	.db #0x14	; 20
      002EBA 36                    3512 	.db #0x36	; 54	'6'
      002EBB 00                    3513 	.db #0x00	; 0
      002EBC 0C                    3514 	.db #0x0c	; 12
      002EBD 02                    3515 	.db #0x02	; 2
      002EBE 04                    3516 	.db #0x04	; 4
      002EBF 08                    3517 	.db #0x08	; 8
      002EC0 1C                    3518 	.db #0x1c	; 28
      002EC1 12                    3519 	.db #0x12	; 18
      002EC2 0C                    3520 	.db #0x0c	; 12
      002EC3 00                    3521 	.db #0x00	; 0
      002EC4 00                    3522 	.db #0x00	; 0
      002EC5 00                    3523 	.db #0x00	; 0
      002EC6 14                    3524 	.db #0x14	; 20
      002EC7 2A                    3525 	.db #0x2a	; 42
      002EC8 2A                    3526 	.db #0x2a	; 42
      002EC9 14                    3527 	.db #0x14	; 20
      002ECA 00                    3528 	.db #0x00	; 0
      002ECB 00                    3529 	.db #0x00	; 0
      002ECC 00                    3530 	.db #0x00	; 0
      002ECD 08                    3531 	.db #0x08	; 8
      002ECE 1C                    3532 	.db #0x1c	; 28
      002ECF 2A                    3533 	.db #0x2a	; 42
      002ED0 2A                    3534 	.db #0x2a	; 42
      002ED1 1C                    3535 	.db #0x1c	; 28
      002ED2 08                    3536 	.db #0x08	; 8
      002ED3 00                    3537 	.db #0x00	; 0
      002ED4 00                    3538 	.db #0x00	; 0
      002ED5 1C                    3539 	.db #0x1c	; 28
      002ED6 02                    3540 	.db #0x02	; 2
      002ED7 1E                    3541 	.db #0x1e	; 30
      002ED8 02                    3542 	.db #0x02	; 2
      002ED9 1C                    3543 	.db #0x1c	; 28
      002EDA 00                    3544 	.db #0x00	; 0
      002EDB 00                    3545 	.db #0x00	; 0
      002EDC 00                    3546 	.db #0x00	; 0
      002EDD 0C                    3547 	.db #0x0c	; 12
      002EDE 12                    3548 	.db #0x12	; 18
      002EDF 12                    3549 	.db #0x12	; 18
      002EE0 12                    3550 	.db #0x12	; 18
      002EE1 12                    3551 	.db #0x12	; 18
      002EE2 00                    3552 	.db #0x00	; 0
      002EE3 00                    3553 	.db #0x00	; 0
      002EE4 00                    3554 	.db #0x00	; 0
      002EE5 1E                    3555 	.db #0x1e	; 30
      002EE6 00                    3556 	.db #0x00	; 0
      002EE7 1E                    3557 	.db #0x1e	; 30
      002EE8 00                    3558 	.db #0x00	; 0
      002EE9 1E                    3559 	.db #0x1e	; 30
      002EEA 00                    3560 	.db #0x00	; 0
      002EEB 00                    3561 	.db #0x00	; 0
      002EEC 00                    3562 	.db #0x00	; 0
      002EED 08                    3563 	.db #0x08	; 8
      002EEE 1C                    3564 	.db #0x1c	; 28
      002EEF 08                    3565 	.db #0x08	; 8
      002EF0 00                    3566 	.db #0x00	; 0
      002EF1 1C                    3567 	.db #0x1c	; 28
      002EF2 00                    3568 	.db #0x00	; 0
      002EF3 00                    3569 	.db #0x00	; 0
      002EF4 02                    3570 	.db #0x02	; 2
      002EF5 0C                    3571 	.db #0x0c	; 12
      002EF6 10                    3572 	.db #0x10	; 16
      002EF7 0C                    3573 	.db #0x0c	; 12
      002EF8 02                    3574 	.db #0x02	; 2
      002EF9 00                    3575 	.db #0x00	; 0
      002EFA 1E                    3576 	.db #0x1e	; 30
      002EFB 00                    3577 	.db #0x00	; 0
      002EFC 10                    3578 	.db #0x10	; 16
      002EFD 0C                    3579 	.db #0x0c	; 12
      002EFE 02                    3580 	.db #0x02	; 2
      002EFF 0C                    3581 	.db #0x0c	; 12
      002F00 10                    3582 	.db #0x10	; 16
      002F01 00                    3583 	.db #0x00	; 0
      002F02 1E                    3584 	.db #0x1e	; 30
      002F03 00                    3585 	.db #0x00	; 0
      002F04 00                    3586 	.db #0x00	; 0
      002F05 10                    3587 	.db #0x10	; 16
      002F06 28                    3588 	.db #0x28	; 40
      002F07 08                    3589 	.db #0x08	; 8
      002F08 08                    3590 	.db #0x08	; 8
      002F09 08                    3591 	.db #0x08	; 8
      002F0A 08                    3592 	.db #0x08	; 8
      002F0B 08                    3593 	.db #0x08	; 8
      002F0C 08                    3594 	.db #0x08	; 8
      002F0D 08                    3595 	.db #0x08	; 8
      002F0E 08                    3596 	.db #0x08	; 8
      002F0F 08                    3597 	.db #0x08	; 8
      002F10 08                    3598 	.db #0x08	; 8
      002F11 0A                    3599 	.db #0x0a	; 10
      002F12 04                    3600 	.db #0x04	; 4
      002F13 00                    3601 	.db #0x00	; 0
      002F14 00                    3602 	.db #0x00	; 0
      002F15 08                    3603 	.db #0x08	; 8
      002F16 00                    3604 	.db #0x00	; 0
      002F17 3E                    3605 	.db #0x3e	; 62
      002F18 00                    3606 	.db #0x00	; 0
      002F19 08                    3607 	.db #0x08	; 8
      002F1A 00                    3608 	.db #0x00	; 0
      002F1B 00                    3609 	.db #0x00	; 0
      002F1C 00                    3610 	.db #0x00	; 0
      002F1D 14                    3611 	.db #0x14	; 20
      002F1E 0A                    3612 	.db #0x0a	; 10
      002F1F 00                    3613 	.db #0x00	; 0
      002F20 14                    3614 	.db #0x14	; 20
      002F21 0A                    3615 	.db #0x0a	; 10
      002F22 00                    3616 	.db #0x00	; 0
      002F23 00                    3617 	.db #0x00	; 0
      002F24 0C                    3618 	.db #0x0c	; 12
      002F25 12                    3619 	.db #0x12	; 18
      002F26 12                    3620 	.db #0x12	; 18
      002F27 0C                    3621 	.db #0x0c	; 12
      002F28 00                    3622 	.db #0x00	; 0
      002F29 00                    3623 	.db #0x00	; 0
      002F2A 00                    3624 	.db #0x00	; 0
      002F2B 00                    3625 	.db #0x00	; 0
      002F2C 00                    3626 	.db #0x00	; 0
      002F2D 00                    3627 	.db #0x00	; 0
      002F2E 00                    3628 	.db #0x00	; 0
      002F2F 0C                    3629 	.db #0x0c	; 12
      002F30 0C                    3630 	.db #0x0c	; 12
      002F31 00                    3631 	.db #0x00	; 0
      002F32 00                    3632 	.db #0x00	; 0
      002F33 00                    3633 	.db #0x00	; 0
      002F34 00                    3634 	.db #0x00	; 0
      002F35 00                    3635 	.db #0x00	; 0
      002F36 00                    3636 	.db #0x00	; 0
      002F37 04                    3637 	.db #0x04	; 4
      002F38 00                    3638 	.db #0x00	; 0
      002F39 00                    3639 	.db #0x00	; 0
      002F3A 00                    3640 	.db #0x00	; 0
      002F3B 00                    3641 	.db #0x00	; 0
      002F3C 00                    3642 	.db #0x00	; 0
      002F3D 38                    3643 	.db #0x38	; 56	'8'
      002F3E 08                    3644 	.db #0x08	; 8
      002F3F 08                    3645 	.db #0x08	; 8
      002F40 0A                    3646 	.db #0x0a	; 10
      002F41 0A                    3647 	.db #0x0a	; 10
      002F42 04                    3648 	.db #0x04	; 4
      002F43 00                    3649 	.db #0x00	; 0
      002F44 0A                    3650 	.db #0x0a	; 10
      002F45 14                    3651 	.db #0x14	; 20
      002F46 14                    3652 	.db #0x14	; 20
      002F47 14                    3653 	.db #0x14	; 20
      002F48 00                    3654 	.db #0x00	; 0
      002F49 00                    3655 	.db #0x00	; 0
      002F4A 00                    3656 	.db #0x00	; 0
      002F4B 00                    3657 	.db #0x00	; 0
      002F4C 06                    3658 	.db #0x06	; 6
      002F4D 08                    3659 	.db #0x08	; 8
      002F4E 04                    3660 	.db #0x04	; 4
      002F4F 0E                    3661 	.db #0x0e	; 14
      002F50 00                    3662 	.db #0x00	; 0
      002F51 00                    3663 	.db #0x00	; 0
      002F52 00                    3664 	.db #0x00	; 0
      002F53 00                    3665 	.db #0x00	; 0
      002F54 00                    3666 	.db #0x00	; 0
      002F55 00                    3667 	.db #0x00	; 0
      002F56 1E                    3668 	.db #0x1e	; 30
      002F57 1E                    3669 	.db #0x1e	; 30
      002F58 1E                    3670 	.db #0x1e	; 30
      002F59 1E                    3671 	.db #0x1e	; 30
      002F5A 00                    3672 	.db #0x00	; 0
      002F5B 00                    3673 	.db #0x00	; 0
      002F5C 00                    3674 	.db #0x00	; 0
      002F5D 00                    3675 	.db #0x00	; 0
      002F5E 00                    3676 	.db #0x00	; 0
      002F5F 00                    3677 	.db #0x00	; 0
      002F60 00                    3678 	.db #0x00	; 0
      002F61 00                    3679 	.db #0x00	; 0
      002F62 00                    3680 	.db #0x00	; 0
      002F63 00                    3681 	.db #0x00	; 0
      002F64                       3682 __xinit__initial:
      002F64 32 27 80              3683 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3684 	.area CABS    (ABS,CODE)
