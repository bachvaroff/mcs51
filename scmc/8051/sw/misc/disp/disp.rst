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
      00200B 02 21 6C         [24]  375 	ljmp	_timer0_intr
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
                                    389 ;	disp.c:129: __idata const uint8_t dsdcol[8] = {
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
                                    406 ;	disp.c:133: __idata const uint8_t sddcol[8] = {
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
      00200E 02 23 52         [24]  431 	ljmp	_main
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
                                    448 ;	disp.c:19: __endasm;
      0020AD C0 E0            [24]  449 	push	acc
      0020AF E5 82            [12]  450 	mov	a, dpl
      0020B1 12 00 3C         [24]  451 	lcall	0x003c
      0020B4 D0 E0            [24]  452 	pop	acc
      0020B6 22               [24]  453 	ret
                                    454 ;	disp.c:20: }
                                    455 ;	naked function: no epilogue.
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'getchar'
                                    458 ;------------------------------------------------------------
                                    459 ;	disp.c:22: int getchar(void) __naked {
                                    460 ;	-----------------------------------------
                                    461 ;	 function getchar
                                    462 ;	-----------------------------------------
      0020B7                        463 _getchar:
                                    464 ;	naked function: no prologue.
                                    465 ;	disp.c:30: __endasm;
      0020B7 C0 E0            [24]  466 	push	acc
      0020B9 12 00 36         [24]  467 	lcall	0x0036
      0020BC F5 82            [12]  468 	mov	dpl, a
      0020BE 75 83 00         [24]  469 	mov	dph, #0
      0020C1 D0 E0            [24]  470 	pop	acc
      0020C3 22               [24]  471 	ret
                                    472 ;	disp.c:31: }
                                    473 ;	naked function: no epilogue.
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'getchar_poll'
                                    476 ;------------------------------------------------------------
                                    477 ;	disp.c:33: int getchar_poll(void) __naked {
                                    478 ;	-----------------------------------------
                                    479 ;	 function getchar_poll
                                    480 ;	-----------------------------------------
      0020C4                        481 _getchar_poll:
                                    482 ;	naked function: no prologue.
                                    483 ;	disp.c:48: __endasm;
      0020C4 C0 E0            [24]  484 	push	acc
      0020C6 C0 F0            [24]  485 	push	b
      0020C8 74 FF            [12]  486 	mov	a, #0xff
      0020CA F5 F0            [12]  487 	mov	b, a
      0020CC 12 00 39         [24]  488 	lcall	0x0039
      0020CF 40 03            [24]  489 	jc	nochar
      0020D1 75 F0 00         [24]  490 	mov	b, #0x00
      0020D4                        491 	nochar:
      0020D4 F5 82            [12]  492 	mov	dpl, a
      0020D6 85 F0 83         [24]  493 	mov	dph, b
      0020D9 D0 F0            [24]  494 	pop	b
      0020DB D0 E0            [24]  495 	pop	acc
      0020DD 22               [24]  496 	ret
                                    497 ;	disp.c:49: }
                                    498 ;	naked function: no epilogue.
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'gpo_init'
                                    501 ;------------------------------------------------------------
                                    502 ;	disp.c:88: void gpo_init(void) {
                                    503 ;	-----------------------------------------
                                    504 ;	 function gpo_init
                                    505 ;	-----------------------------------------
      0020DE                        506 _gpo_init:
                           000007   507 	ar7 = 0x07
                           000006   508 	ar6 = 0x06
                           000005   509 	ar5 = 0x05
                           000004   510 	ar4 = 0x04
                           000003   511 	ar3 = 0x03
                           000002   512 	ar2 = 0x02
                           000001   513 	ar1 = 0x01
                           000000   514 	ar0 = 0x00
                                    515 ;	disp.c:89: P1_7 = 0;
                                    516 ;	assignBit
      0020DE C2 97            [12]  517 	clr	_P1_7
                                    518 ;	disp.c:94: __endasm;
      0020E0 00               [12]  519 	nop
      0020E1 00               [12]  520 	nop
      0020E2 00               [12]  521 	nop
                                    522 ;	disp.c:96: P2 = GPO_BASE_H;
      0020E3 75 A0 F0         [24]  523 	mov	_P2,#0xf0
                                    524 ;	disp.c:98: GPO_CLEAR;
      0020E6 78 06            [12]  525 	mov	r0,#(_gpo + 0x0006)
      0020E8 74 3F            [12]  526 	mov	a,#0x3f
      0020EA F2               [24]  527 	movx	@r0,a
      0020EB 78 00            [12]  528 	mov	r0,#_gpo
      0020ED E4               [12]  529 	clr	a
      0020EE F2               [24]  530 	movx	@r0,a
      0020EF 78 01            [12]  531 	mov	r0,#(_gpo + 0x0001)
      0020F1 F2               [24]  532 	movx	@r0,a
      0020F2 78 02            [12]  533 	mov	r0,#(_gpo + 0x0002)
      0020F4 F2               [24]  534 	movx	@r0,a
      0020F5 78 03            [12]  535 	mov	r0,#(_gpo + 0x0003)
      0020F7 F2               [24]  536 	movx	@r0,a
      0020F8 78 04            [12]  537 	mov	r0,#(_gpo + 0x0004)
      0020FA F2               [24]  538 	movx	@r0,a
      0020FB 78 05            [12]  539 	mov	r0,#(_gpo + 0x0005)
      0020FD F2               [24]  540 	movx	@r0,a
                                    541 ;	disp.c:100: return;
                                    542 ;	disp.c:101: }
      0020FE 22               [24]  543 	ret
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'gpo_clear'
                                    546 ;------------------------------------------------------------
                                    547 ;	disp.c:103: void gpo_clear(void) {
                                    548 ;	-----------------------------------------
                                    549 ;	 function gpo_clear
                                    550 ;	-----------------------------------------
      0020FF                        551 _gpo_clear:
                                    552 ;	disp.c:104: GPO_CLEAR;
      0020FF 78 06            [12]  553 	mov	r0,#(_gpo + 0x0006)
      002101 74 3F            [12]  554 	mov	a,#0x3f
      002103 F2               [24]  555 	movx	@r0,a
      002104 78 00            [12]  556 	mov	r0,#_gpo
      002106 E4               [12]  557 	clr	a
      002107 F2               [24]  558 	movx	@r0,a
      002108 78 01            [12]  559 	mov	r0,#(_gpo + 0x0001)
      00210A F2               [24]  560 	movx	@r0,a
      00210B 78 02            [12]  561 	mov	r0,#(_gpo + 0x0002)
      00210D F2               [24]  562 	movx	@r0,a
      00210E 78 03            [12]  563 	mov	r0,#(_gpo + 0x0003)
      002110 F2               [24]  564 	movx	@r0,a
      002111 78 04            [12]  565 	mov	r0,#(_gpo + 0x0004)
      002113 F2               [24]  566 	movx	@r0,a
      002114 78 05            [12]  567 	mov	r0,#(_gpo + 0x0005)
      002116 F2               [24]  568 	movx	@r0,a
                                    569 ;	disp.c:106: return;
                                    570 ;	disp.c:107: }
      002117 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'init_intr'
                                    574 ;------------------------------------------------------------
                                    575 ;	disp.c:141: void init_intr(void) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function init_intr
                                    578 ;	-----------------------------------------
      002118                        579 _init_intr:
                                    580 ;	disp.c:142: TR0 = 0;
                                    581 ;	assignBit
      002118 C2 8C            [12]  582 	clr	_TR0
                                    583 ;	disp.c:143: TR1 = 0;
                                    584 ;	assignBit
      00211A C2 8E            [12]  585 	clr	_TR1
                                    586 ;	disp.c:144: ET0 = 1;
                                    587 ;	assignBit
      00211C D2 A9            [12]  588 	setb	_ET0
                                    589 ;	disp.c:145: ET1 = 0;
                                    590 ;	assignBit
      00211E C2 AB            [12]  591 	clr	_ET1
                                    592 ;	disp.c:146: EA = 1;
                                    593 ;	assignBit
      002120 D2 AF            [12]  594 	setb	_EA
                                    595 ;	disp.c:148: return;
                                    596 ;	disp.c:149: }
      002122 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'init_timer0'
                                    600 ;------------------------------------------------------------
                                    601 ;	disp.c:151: void init_timer0(void) {
                                    602 ;	-----------------------------------------
                                    603 ;	 function init_timer0
                                    604 ;	-----------------------------------------
      002123                        605 _init_timer0:
                                    606 ;	disp.c:152: TR0 = 0;
                                    607 ;	assignBit
      002123 C2 8C            [12]  608 	clr	_TR0
                                    609 ;	disp.c:153: TMOD |= 0x01;
      002125 43 89 01         [24]  610 	orl	_TMOD,#0x01
                                    611 ;	disp.c:154: TH0 = TR0_COUNT >> 8;
      002128 75 8C F8         [24]  612 	mov	_TH0,#0xf8
                                    613 ;	disp.c:155: TL0 = TR0_COUNT & 0xffu;
      00212B 75 8A 00         [24]  614 	mov	_TL0,#0x00
                                    615 ;	disp.c:157: return;
                                    616 ;	disp.c:158: }
      00212E 22               [24]  617 	ret
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'init_timer1'
                                    620 ;------------------------------------------------------------
                                    621 ;	disp.c:160: void init_timer1(void) {
                                    622 ;	-----------------------------------------
                                    623 ;	 function init_timer1
                                    624 ;	-----------------------------------------
      00212F                        625 _init_timer1:
                                    626 ;	disp.c:161: TR1 = 0;
                                    627 ;	assignBit
      00212F C2 8E            [12]  628 	clr	_TR1
                                    629 ;	disp.c:162: TMOD |= 0x10;
      002131 43 89 10         [24]  630 	orl	_TMOD,#0x10
                                    631 ;	disp.c:163: TH1 = TR1_COUNT_0 >> 8;
      002134 75 8D 00         [24]  632 	mov	_TH1,#0x00
                                    633 ;	disp.c:164: TL1 = TR1_COUNT_0 & 0xffu;
      002137 75 8B 00         [24]  634 	mov	_TL1,#0x00
                                    635 ;	disp.c:166: return;
                                    636 ;	disp.c:167: }
      00213A 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'init_disp'
                                    640 ;------------------------------------------------------------
                                    641 ;	disp.c:169: void init_disp(void) {
                                    642 ;	-----------------------------------------
                                    643 ;	 function init_disp
                                    644 ;	-----------------------------------------
      00213B                        645 _init_disp:
                                    646 ;	disp.c:170: GPO_SETREG(DISP_COL, 0u);
      00213B 78 05            [12]  647 	mov	r0,#(_gpo + 0x0005)
      00213D E4               [12]  648 	clr	a
      00213E F2               [24]  649 	movx	@r0,a
                                    650 ;	disp.c:171: GPO_SETREG(DISP_DATA, 0u);
      00213F 78 04            [12]  651 	mov	r0,#(_gpo + 0x0004)
      002141 F2               [24]  652 	movx	@r0,a
                                    653 ;	disp.c:172: OE = 0x0fu; /* 00_001111 */
      002142 78 3A            [12]  654 	mov	r0,#_OE
      002144 76 0F            [12]  655 	mov	@r0,#0x0f
                                    656 ;	disp.c:173: GPO_SETOE(OE);
      002146 78 06            [12]  657 	mov	r0,#(_gpo + 0x0006)
      002148 74 0F            [12]  658 	mov	a,#0x0f
      00214A F2               [24]  659 	movx	@r0,a
                                    660 ;	disp.c:175: for (column = 0u; column < 8u; column++)
      00214B 78 39            [12]  661 	mov	r0,#_column
      00214D 76 00            [12]  662 	mov	@r0,#0x00
      00214F                        663 00112$:
      00214F 78 39            [12]  664 	mov	r0,#_column
      002151 B6 08 00         [24]  665 	cjne	@r0,#0x08,00124$
      002154                        666 00124$:
      002154 50 11            [24]  667 	jnc	00110$
                                    668 ;	disp.c:176: ddata[column] = 0u;
      002156 78 39            [12]  669 	mov	r0,#_column
      002158 E6               [12]  670 	mov	a,@r0
      002159 24 31            [12]  671 	add	a,#_ddata
      00215B F8               [12]  672 	mov	r0,a
      00215C 76 00            [12]  673 	mov	@r0,#0x00
                                    674 ;	disp.c:175: for (column = 0u; column < 8u; column++)
      00215E 78 39            [12]  675 	mov	r0,#_column
      002160 E6               [12]  676 	mov	a,@r0
      002161 78 39            [12]  677 	mov	r0,#_column
      002163 04               [12]  678 	inc	a
      002164 F6               [12]  679 	mov	@r0,a
      002165 80 E8            [24]  680 	sjmp	00112$
      002167                        681 00110$:
                                    682 ;	disp.c:177: column = 0u;
      002167 78 39            [12]  683 	mov	r0,#_column
      002169 76 00            [12]  684 	mov	@r0,#0x00
                                    685 ;	disp.c:179: return;
                                    686 ;	disp.c:180: }
      00216B 22               [24]  687 	ret
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'timer0_intr'
                                    690 ;------------------------------------------------------------
                                    691 ;t                         Allocated to registers r7 
                                    692 ;------------------------------------------------------------
                                    693 ;	disp.c:182: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    694 ;	-----------------------------------------
                                    695 ;	 function timer0_intr
                                    696 ;	-----------------------------------------
      00216C                        697 _timer0_intr:
                           00000F   698 	ar7 = 0x0f
                           00000E   699 	ar6 = 0x0e
                           00000D   700 	ar5 = 0x0d
                           00000C   701 	ar4 = 0x0c
                           00000B   702 	ar3 = 0x0b
                           00000A   703 	ar2 = 0x0a
                           000009   704 	ar1 = 0x09
                           000008   705 	ar0 = 0x08
      00216C C0 E0            [24]  706 	push	acc
      00216E C0 D0            [24]  707 	push	psw
      002170 75 D0 08         [24]  708 	mov	psw,#0x08
                                    709 ;	disp.c:185: t = column & 7u;
      002173 78 39            [12]  710 	mov	r0,#_column
      002175 86 0F            [24]  711 	mov	ar7,@r0
      002177 53 0F 07         [24]  712 	anl	ar7,#0x07
                                    713 ;	disp.c:186: GPO_SETREG(DISP_COL, 0u);
      00217A 78 05            [12]  714 	mov	r0,#(_gpo + 0x0005)
      00217C E4               [12]  715 	clr	a
      00217D F2               [24]  716 	movx	@r0,a
                                    717 ;	disp.c:187: GPO_SETREG(DISP_DATA, ddata[t]);
      00217E EF               [12]  718 	mov	a,r7
      00217F 24 31            [12]  719 	add	a,#_ddata
      002181 F9               [12]  720 	mov	r1,a
      002182 87 0E            [24]  721 	mov	ar6,@r1
      002184 78 04            [12]  722 	mov	r0,#(_gpo + 0x0004)
      002186 EE               [12]  723 	mov	a,r6
      002187 F2               [24]  724 	movx	@r0,a
                                    725 ;	disp.c:188: GPO_SETREG(DISP_COL, dsdcol[t]);
      002188 EF               [12]  726 	mov	a,r7
      002189 24 21            [12]  727 	add	a,#_dsdcol
      00218B F9               [12]  728 	mov	r1,a
      00218C 87 0F            [24]  729 	mov	ar7,@r1
      00218E 78 05            [12]  730 	mov	r0,#(_gpo + 0x0005)
      002190 EF               [12]  731 	mov	a,r7
      002191 F2               [24]  732 	movx	@r0,a
                                    733 ;	disp.c:189: column++;
      002192 78 39            [12]  734 	mov	r0,#_column
      002194 E6               [12]  735 	mov	a,@r0
      002195 78 39            [12]  736 	mov	r0,#_column
      002197 04               [12]  737 	inc	a
      002198 F6               [12]  738 	mov	@r0,a
                                    739 ;	disp.c:191: TR0 = 0;
                                    740 ;	assignBit
      002199 C2 8C            [12]  741 	clr	_TR0
                                    742 ;	disp.c:192: TH0 = TR0_COUNT >> 8;
      00219B 75 8C F8         [24]  743 	mov	_TH0,#0xf8
                                    744 ;	disp.c:193: TL0 = TR0_COUNT & 0xffu;
      00219E 75 8A 00         [24]  745 	mov	_TL0,#0x00
                                    746 ;	disp.c:194: TR0 = 1;
                                    747 ;	assignBit
      0021A1 D2 8C            [12]  748 	setb	_TR0
                                    749 ;	disp.c:196: return;
                                    750 ;	disp.c:197: }
      0021A3 D0 D0            [24]  751 	pop	psw
      0021A5 D0 E0            [24]  752 	pop	acc
      0021A7 32               [24]  753 	reti
                                    754 ;	eliminated unneeded push/pop dpl
                                    755 ;	eliminated unneeded push/pop dph
                                    756 ;	eliminated unneeded push/pop b
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'scroll'
                                    759 ;------------------------------------------------------------
                                    760 ;msg                       Allocated to stack - _bp +1
                                    761 ;symbol                    Allocated to stack - _bp +5
                                    762 ;bit                       Allocated to stack - _bp +6
                                    763 ;i                         Allocated to stack - _bp +7
                                    764 ;j                         Allocated to registers r4 
                                    765 ;r                         Allocated to registers r3 r4 
                                    766 ;__3932160002              Allocated to registers 
                                    767 ;s                         Allocated to registers r6 r4 r3 
                                    768 ;sloc0                     Allocated to stack - _bp +4
                                    769 ;sloc1                     Allocated to stack - _bp +18
                                    770 ;sloc2                     Allocated to stack - _bp +19
                                    771 ;------------------------------------------------------------
                                    772 ;	disp.c:224: int scroll(uint8_t *msg) {
                                    773 ;	-----------------------------------------
                                    774 ;	 function scroll
                                    775 ;	-----------------------------------------
      0021A8                        776 _scroll:
                           000007   777 	ar7 = 0x07
                           000006   778 	ar6 = 0x06
                           000005   779 	ar5 = 0x05
                           000004   780 	ar4 = 0x04
                           000003   781 	ar3 = 0x03
                           000002   782 	ar2 = 0x02
                           000001   783 	ar1 = 0x01
                           000000   784 	ar0 = 0x00
      0021A8 C0 10            [24]  785 	push	_bp
      0021AA 85 81 10         [24]  786 	mov	_bp,sp
      0021AD C0 82            [24]  787 	push	dpl
      0021AF C0 83            [24]  788 	push	dph
      0021B1 C0 F0            [24]  789 	push	b
      0021B3 E5 81            [12]  790 	mov	a,sp
      0021B5 24 05            [12]  791 	add	a,#0x05
      0021B7 F5 81            [12]  792 	mov	sp,a
                                    793 ;	disp.c:230: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0021B9 E5 10            [12]  794 	mov	a,_bp
      0021BB 24 06            [12]  795 	add	a,#0x06
      0021BD F8               [12]  796 	mov	r0,a
      0021BE 76 00            [12]  797 	mov	@r0,#0x00
      0021C0 E5 10            [12]  798 	mov	a,_bp
      0021C2 24 07            [12]  799 	add	a,#0x07
      0021C4 F8               [12]  800 	mov	r0,a
      0021C5 E4               [12]  801 	clr	a
      0021C6 F6               [12]  802 	mov	@r0,a
      0021C7 08               [12]  803 	inc	r0
      0021C8 F6               [12]  804 	mov	@r0,a
      0021C9                        805 00142$:
                                    806 ;	disp.c:231: if (!bit) {
      0021C9 E5 10            [12]  807 	mov	a,_bp
      0021CB 24 06            [12]  808 	add	a,#0x06
      0021CD F8               [12]  809 	mov	r0,a
      0021CE E6               [12]  810 	mov	a,@r0
      0021CF 70 5F            [24]  811 	jnz	00105$
                                    812 ;	disp.c:232: symbol = msg[i];
      0021D1 A8 10            [24]  813 	mov	r0,_bp
      0021D3 08               [12]  814 	inc	r0
      0021D4 E5 10            [12]  815 	mov	a,_bp
      0021D6 24 07            [12]  816 	add	a,#0x07
      0021D8 F9               [12]  817 	mov	r1,a
      0021D9 E7               [12]  818 	mov	a,@r1
      0021DA 26               [12]  819 	add	a,@r0
      0021DB FA               [12]  820 	mov	r2,a
      0021DC 09               [12]  821 	inc	r1
      0021DD E7               [12]  822 	mov	a,@r1
      0021DE 08               [12]  823 	inc	r0
      0021DF 36               [12]  824 	addc	a,@r0
      0021E0 FB               [12]  825 	mov	r3,a
      0021E1 08               [12]  826 	inc	r0
      0021E2 86 04            [24]  827 	mov	ar4,@r0
      0021E4 8A 82            [24]  828 	mov	dpl,r2
      0021E6 8B 83            [24]  829 	mov	dph,r3
      0021E8 8C F0            [24]  830 	mov	b,r4
      0021EA 12 26 B5         [24]  831 	lcall	__gptrget
      0021ED FA               [12]  832 	mov	r2,a
      0021EE E5 10            [12]  833 	mov	a,_bp
      0021F0 24 04            [12]  834 	add	a,#0x04
      0021F2 F8               [12]  835 	mov	r0,a
      0021F3 A6 02            [24]  836 	mov	@r0,ar2
                                    837 ;	disp.c:233: if (!symbol) {
      0021F5 EA               [12]  838 	mov	a,r2
      0021F6 70 25            [24]  839 	jnz	00102$
                                    840 ;	disp.c:234: i = 0u;
      0021F8 E5 10            [12]  841 	mov	a,_bp
      0021FA 24 07            [12]  842 	add	a,#0x07
      0021FC F8               [12]  843 	mov	r0,a
      0021FD E4               [12]  844 	clr	a
      0021FE F6               [12]  845 	mov	@r0,a
      0021FF 08               [12]  846 	inc	r0
      002200 F6               [12]  847 	mov	@r0,a
                                    848 ;	disp.c:235: symbol = msg[i];
      002201 A8 10            [24]  849 	mov	r0,_bp
      002203 08               [12]  850 	inc	r0
      002204 86 82            [24]  851 	mov	dpl,@r0
      002206 08               [12]  852 	inc	r0
      002207 86 83            [24]  853 	mov	dph,@r0
      002209 08               [12]  854 	inc	r0
      00220A 86 F0            [24]  855 	mov	b,@r0
      00220C E5 10            [12]  856 	mov	a,_bp
      00220E 24 04            [12]  857 	add	a,#0x04
      002210 F9               [12]  858 	mov	r1,a
      002211 12 26 B5         [24]  859 	lcall	__gptrget
      002214 F7               [12]  860 	mov	@r1,a
                                    861 ;	disp.c:236: OE |= 0x80u;
      002215 78 3A            [12]  862 	mov	r0,#_OE
      002217 E6               [12]  863 	mov	a,@r0
      002218 44 80            [12]  864 	orl	a,#0x80
      00221A F6               [12]  865 	mov	@r0,a
      00221B 80 06            [24]  866 	sjmp	00103$
      00221D                        867 00102$:
                                    868 ;	disp.c:237: } else OE |= 0x40u;
      00221D 78 3A            [12]  869 	mov	r0,#_OE
      00221F E6               [12]  870 	mov	a,@r0
      002220 44 40            [12]  871 	orl	a,#0x40
      002222 F6               [12]  872 	mov	@r0,a
      002223                        873 00103$:
                                    874 ;	disp.c:238: i++;
      002223 E5 10            [12]  875 	mov	a,_bp
      002225 24 07            [12]  876 	add	a,#0x07
      002227 F8               [12]  877 	mov	r0,a
      002228 06               [12]  878 	inc	@r0
      002229 B6 00 02         [24]  879 	cjne	@r0,#0x00,00230$
      00222C 08               [12]  880 	inc	r0
      00222D 06               [12]  881 	inc	@r0
      00222E                        882 00230$:
      00222E 80 06            [24]  883 	sjmp	00107$
      002230                        884 00105$:
                                    885 ;	disp.c:239: } else OE &= ~(0x80u | 0x40u);
      002230 78 3A            [12]  886 	mov	r0,#_OE
      002232 E6               [12]  887 	mov	a,@r0
      002233 54 3F            [12]  888 	anl	a,#0x3f
      002235 F6               [12]  889 	mov	@r0,a
                                    890 ;	disp.c:240: GPO_SETOE(OE);
      002236                        891 00107$:
      002236 78 06            [12]  892 	mov	r0,#(_gpo + 0x0006)
      002238 79 3A            [12]  893 	mov	r1,#_OE
      00223A E7               [12]  894 	mov	a,@r1
      00223B F2               [24]  895 	movx	@r0,a
                                    896 ;	disp.c:242: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      00223C E5 10            [12]  897 	mov	a,_bp
      00223E 24 06            [12]  898 	add	a,#0x06
      002240 F8               [12]  899 	mov	r0,a
      002241 E6               [12]  900 	mov	a,@r0
      002242 24 29            [12]  901 	add	a,#_sddcol
      002244 F9               [12]  902 	mov	r1,a
      002245 E7               [12]  903 	mov	a,@r1
      002246 FB               [12]  904 	mov	r3,a
      002247 54 C0            [12]  905 	anl	a,#0xc0
      002249 60 02            [24]  906 	jz	00232$
      00224B 80 74            [24]  907 	sjmp	00113$
      00224D                        908 00232$:
                                    909 ;	disp.c:200: TR1 = 0;
                                    910 ;	assignBit
      00224D C2 8E            [12]  911 	clr	_TR1
                                    912 ;	disp.c:201: TH1 = TR1_COUNT_0 >> 8;
      00224F 75 8D 00         [24]  913 	mov	_TH1,#0x00
                                    914 ;	disp.c:202: TL1 = TR1_COUNT_0 & 0xffu;	
      002252 75 8B 00         [24]  915 	mov	_TL1,#0x00
                                    916 ;	disp.c:203: TF1 = 0;
                                    917 ;	assignBit
      002255 C2 8F            [12]  918 	clr	_TF1
                                    919 ;	disp.c:204: TR1 = 1;
                                    920 ;	assignBit
      002257 D2 8E            [12]  921 	setb	_TR1
                                    922 ;	disp.c:205: while (!TF1);
      002259                        923 00128$:
                                    924 ;	disp.c:206: TF1 = 0;
                                    925 ;	assignBit
      002259 10 8F 02         [24]  926 	jbc	_TF1,00233$
      00225C 80 FB            [24]  927 	sjmp	00128$
      00225E                        928 00233$:
                                    929 ;	disp.c:208: TR1 = 0;
                                    930 ;	assignBit
      00225E C2 8E            [12]  931 	clr	_TR1
                                    932 ;	disp.c:209: TH1 = TR1_COUNT_1 >> 8;
      002260 75 8D C0         [24]  933 	mov	_TH1,#0xc0
                                    934 ;	disp.c:210: TL1 = TR1_COUNT_1 & 0xffu;	
      002263 75 8B 00         [24]  935 	mov	_TL1,#0x00
                                    936 ;	disp.c:211: TF1 = 0;
                                    937 ;	assignBit
      002266 C2 8F            [12]  938 	clr	_TF1
                                    939 ;	disp.c:212: TR1 = 1;
                                    940 ;	assignBit
      002268 D2 8E            [12]  941 	setb	_TR1
                                    942 ;	disp.c:213: while (!TF1);
      00226A                        943 00131$:
                                    944 ;	disp.c:214: TF1 = 0;
                                    945 ;	assignBit
      00226A 10 8F 02         [24]  946 	jbc	_TF1,00234$
      00226D 80 FB            [24]  947 	sjmp	00131$
      00226F                        948 00234$:
                                    949 ;	disp.c:216: TR1 = 0;
                                    950 ;	assignBit
      00226F C2 8E            [12]  951 	clr	_TR1
                                    952 ;	disp.c:245: for (j = 0u; j < 8u; j++)
      002271 E5 10            [12]  953 	mov	a,_bp
      002273 24 04            [12]  954 	add	a,#0x04
      002275 F8               [12]  955 	mov	r0,a
      002276 E6               [12]  956 	mov	a,@r0
      002277 75 F0 08         [24]  957 	mov	b,#0x08
      00227A A4               [48]  958 	mul	ab
      00227B 24 01            [12]  959 	add	a,#__ft_font6x8
      00227D FA               [12]  960 	mov	r2,a
      00227E 74 81            [12]  961 	mov	a,#(__ft_font6x8 >> 8)
      002280 35 F0            [12]  962 	addc	a,b
      002282 FB               [12]  963 	mov	r3,a
      002283 E5 10            [12]  964 	mov	a,_bp
      002285 24 06            [12]  965 	add	a,#0x06
      002287 F8               [12]  966 	mov	r0,a
      002288 74 07            [12]  967 	mov	a,#0x07
      00228A C3               [12]  968 	clr	c
      00228B 96               [12]  969 	subb	a,@r0
      00228C FD               [12]  970 	mov	r5,a
      00228D 7C 00            [12]  971 	mov	r4,#0x00
      00228F                        972 00137$:
                                    973 ;	disp.c:246: ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00228F EC               [12]  974 	mov	a,r4
      002290 24 31            [12]  975 	add	a,#_ddata
      002292 F9               [12]  976 	mov	r1,a
      002293 EC               [12]  977 	mov	a,r4
      002294 2A               [12]  978 	add	a,r2
      002295 F5 82            [12]  979 	mov	dpl,a
      002297 E4               [12]  980 	clr	a
      002298 3B               [12]  981 	addc	a,r3
      002299 F5 83            [12]  982 	mov	dph,a
      00229B E0               [24]  983 	movx	a,@dptr
      00229C FF               [12]  984 	mov	r7,a
      00229D 78 3B            [12]  985 	mov	r0,#_inv
      00229F E6               [12]  986 	mov	a,@r0
      0022A0 62 07            [12]  987 	xrl	ar7,a
      0022A2 8D F0            [24]  988 	mov	b,r5
      0022A4 05 F0            [12]  989 	inc	b
      0022A6 EF               [12]  990 	mov	a,r7
      0022A7 80 02            [24]  991 	sjmp	00237$
      0022A9                        992 00235$:
      0022A9 25 E0            [12]  993 	add	a,acc
      0022AB                        994 00237$:
      0022AB D5 F0 FB         [24]  995 	djnz	b,00235$
      0022AE 54 80            [12]  996 	anl	a,#0x80
      0022B0 FF               [12]  997 	mov	r7,a
      0022B1 EC               [12]  998 	mov	a,r4
      0022B2 24 31            [12]  999 	add	a,#_ddata
      0022B4 F8               [12] 1000 	mov	r0,a
      0022B5 E6               [12] 1001 	mov	a,@r0
      0022B6 C3               [12] 1002 	clr	c
      0022B7 13               [12] 1003 	rrc	a
      0022B8 FE               [12] 1004 	mov	r6,a
      0022B9 4F               [12] 1005 	orl	a,r7
      0022BA F7               [12] 1006 	mov	@r1,a
                                   1007 ;	disp.c:245: for (j = 0u; j < 8u; j++)
      0022BB 0C               [12] 1008 	inc	r4
      0022BC BC 08 00         [24] 1009 	cjne	r4,#0x08,00238$
      0022BF                       1010 00238$:
      0022BF 40 CE            [24] 1011 	jc	00137$
                                   1012 ;	disp.c:248: skip_shift:
      0022C1                       1013 00113$:
                                   1014 ;	disp.c:249: if ((r = getchar_poll()) >= 0) {
      0022C1 12 20 C4         [24] 1015 	lcall	_getchar_poll
      0022C4 AB 82            [24] 1016 	mov	r3,dpl
      0022C6 AC 83            [24] 1017 	mov	r4,dph
      0022C8 8B 07            [24] 1018 	mov	ar7,r3
      0022CA EC               [12] 1019 	mov	a,r4
      0022CB FE               [12] 1020 	mov	r6,a
      0022CC 20 E7 65         [24] 1021 	jb	acc.7,00143$
                                   1022 ;	disp.c:250: r = toupper(r);
      0022CF 8F 82            [24] 1023 	mov	dpl,r7
      0022D1 8E 83            [24] 1024 	mov	dph,r6
      0022D3 12 25 D7         [24] 1025 	lcall	_toupper
      0022D6 AB 82            [24] 1026 	mov	r3,dpl
      0022D8 AC 83            [24] 1027 	mov	r4,dph
                                   1028 ;	disp.c:251: if ((r == (int)'P') || (r == (int)' ')) {
      0022DA BB 50 05         [24] 1029 	cjne	r3,#0x50,00241$
      0022DD BC 00 02         [24] 1030 	cjne	r4,#0x00,00241$
      0022E0 80 06            [24] 1031 	sjmp	00121$
      0022E2                       1032 00241$:
      0022E2 BB 20 2A         [24] 1033 	cjne	r3,#0x20,00122$
      0022E5 BC 00 27         [24] 1034 	cjne	r4,#0x00,00122$
      0022E8                       1035 00121$:
                                   1036 ;	disp.c:252: printstr("PAUSE\r\n");
      0022E8 7E F0            [12] 1037 	mov	r6,#___str_0
      0022EA 7C 26            [12] 1038 	mov	r4,#(___str_0 >> 8)
      0022EC 7B 80            [12] 1039 	mov	r3,#0x80
                                   1040 ;	disp.c:54: return;
      0022EE                       1041 00140$:
                                   1042 ;	disp.c:52: for (; *s; s++) putchar(*s);
      0022EE 8E 82            [24] 1043 	mov	dpl,r6
      0022F0 8C 83            [24] 1044 	mov	dph,r4
      0022F2 8B F0            [24] 1045 	mov	b,r3
      0022F4 12 26 B5         [24] 1046 	lcall	__gptrget
      0022F7 FD               [12] 1047 	mov	r5,a
      0022F8 60 10            [24] 1048 	jz	00136$
      0022FA 7F 00            [12] 1049 	mov	r7,#0x00
      0022FC 8D 82            [24] 1050 	mov	dpl,r5
      0022FE 8F 83            [24] 1051 	mov	dph,r7
      002300 12 20 AD         [24] 1052 	lcall	_putchar
      002303 0E               [12] 1053 	inc	r6
                                   1054 ;	disp.c:252: printstr("PAUSE\r\n");
      002304 BE 00 E7         [24] 1055 	cjne	r6,#0x00,00140$
      002307 0C               [12] 1056 	inc	r4
      002308 80 E4            [24] 1057 	sjmp	00140$
      00230A                       1058 00136$:
                                   1059 ;	disp.c:253: (void)getchar();
      00230A 12 20 B7         [24] 1060 	lcall	_getchar
      00230D 80 25            [24] 1061 	sjmp	00143$
      00230F                       1062 00122$:
                                   1063 ;	disp.c:254: } else if (r == (int)'I') inv = ~inv;
      00230F BB 49 0A         [24] 1064 	cjne	r3,#0x49,00119$
      002312 BC 00 07         [24] 1065 	cjne	r4,#0x00,00119$
      002315 78 3B            [12] 1066 	mov	r0,#_inv
      002317 E6               [12] 1067 	mov	a,@r0
      002318 F4               [12] 1068 	cpl	a
      002319 F6               [12] 1069 	mov	@r0,a
      00231A 80 18            [24] 1070 	sjmp	00143$
      00231C                       1071 00119$:
                                   1072 ;	disp.c:255: else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      00231C BB 54 05         [24] 1073 	cjne	r3,#0x54,00248$
      00231F BC 00 02         [24] 1074 	cjne	r4,#0x00,00248$
      002322 80 24            [24] 1075 	sjmp	00127$
      002324                       1076 00248$:
      002324 BB 52 05         [24] 1077 	cjne	r3,#0x52,00249$
      002327 BC 00 02         [24] 1078 	cjne	r4,#0x00,00249$
      00232A 80 1C            [24] 1079 	sjmp	00127$
      00232C                       1080 00249$:
      00232C BB 4C 05         [24] 1081 	cjne	r3,#0x4c,00250$
      00232F BC 00 02         [24] 1082 	cjne	r4,#0x00,00250$
      002332 80 14            [24] 1083 	sjmp	00127$
      002334                       1084 00250$:
      002334                       1085 00143$:
                                   1086 ;	disp.c:230: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002334 E5 10            [12] 1087 	mov	a,_bp
      002336 24 06            [12] 1088 	add	a,#0x06
      002338 F8               [12] 1089 	mov	r0,a
      002339 E6               [12] 1090 	mov	a,@r0
      00233A 04               [12] 1091 	inc	a
      00233B FF               [12] 1092 	mov	r7,a
      00233C E5 10            [12] 1093 	mov	a,_bp
      00233E 24 06            [12] 1094 	add	a,#0x06
      002340 F8               [12] 1095 	mov	r0,a
      002341 74 07            [12] 1096 	mov	a,#0x07
      002343 5F               [12] 1097 	anl	a,r7
      002344 F6               [12] 1098 	mov	@r0,a
      002345 02 21 C9         [24] 1099 	ljmp	00142$
      002348                       1100 00127$:
                                   1101 ;	disp.c:259: return r;
      002348 8B 82            [24] 1102 	mov	dpl,r3
      00234A 8C 83            [24] 1103 	mov	dph,r4
                                   1104 ;	disp.c:260: }
      00234C 85 10 81         [24] 1105 	mov	sp,_bp
      00234F D0 10            [24] 1106 	pop	_bp
      002351 22               [24] 1107 	ret
                                   1108 ;------------------------------------------------------------
                                   1109 ;Allocation info for local variables in function 'main'
                                   1110 ;------------------------------------------------------------
                                   1111 ;j                         Allocated to stack - _bp +1
                                   1112 ;c                         Allocated to registers r7 r6 
                                   1113 ;__1310720004              Allocated to registers 
                                   1114 ;s                         Allocated to registers r5 r6 r7 
                                   1115 ;__1966080006              Allocated to registers 
                                   1116 ;s                         Allocated to registers r5 r6 r7 
                                   1117 ;__1966080008              Allocated to registers 
                                   1118 ;s                         Allocated to registers r5 r6 r7 
                                   1119 ;__1966080010              Allocated to registers 
                                   1120 ;s                         Allocated to registers r5 r6 r7 
                                   1121 ;__3276800012              Allocated to registers 
                                   1122 ;s                         Allocated to registers r7 r6 r4 
                                   1123 ;__3276800014              Allocated to registers 
                                   1124 ;s                         Allocated to registers r7 r6 r4 
                                   1125 ;__3276800016              Allocated to registers 
                                   1126 ;s                         Allocated to registers r7 r6 r4 
                                   1127 ;__3276800018              Allocated to registers 
                                   1128 ;s                         Allocated to registers r7 r6 r4 
                                   1129 ;__3276800020              Allocated to registers 
                                   1130 ;s                         Allocated to registers r7 r6 r4 
                                   1131 ;__1310720022              Allocated to registers 
                                   1132 ;s                         Allocated to registers r5 r6 r7 
                                   1133 ;sloc0                     Allocated to stack - _bp +65
                                   1134 ;------------------------------------------------------------
                                   1135 ;	disp.c:262: void main(void) {
                                   1136 ;	-----------------------------------------
                                   1137 ;	 function main
                                   1138 ;	-----------------------------------------
      002352                       1139 _main:
      002352 C0 10            [24] 1140 	push	_bp
      002354 85 81 10         [24] 1141 	mov	_bp,sp
      002357 05 81            [12] 1142 	inc	sp
      002359 05 81            [12] 1143 	inc	sp
                                   1144 ;	disp.c:266: gpo_init();
      00235B 12 20 DE         [24] 1145 	lcall	_gpo_init
                                   1146 ;	disp.c:267: gpo_clear();
      00235E 12 20 FF         [24] 1147 	lcall	_gpo_clear
                                   1148 ;	disp.c:268: init_disp();
      002361 12 21 3B         [24] 1149 	lcall	_init_disp
                                   1150 ;	disp.c:269: init_timer0();
      002364 12 21 23         [24] 1151 	lcall	_init_timer0
                                   1152 ;	disp.c:270: init_timer1();
      002367 12 21 2F         [24] 1153 	lcall	_init_timer1
                                   1154 ;	disp.c:271: init_intr();
      00236A 12 21 18         [24] 1155 	lcall	_init_intr
                                   1156 ;	disp.c:272: TR0 = 1;
                                   1157 ;	assignBit
      00236D D2 8C            [12] 1158 	setb	_TR0
                                   1159 ;	disp.c:274: reset:
      00236F                       1160 00101$:
                                   1161 ;	disp.c:275: init_disp();
      00236F 12 21 3B         [24] 1162 	lcall	_init_disp
                                   1163 ;	disp.c:276: printstr("RESET\r\n");
      002372 7D F8            [12] 1164 	mov	r5,#___str_1
      002374 7E 26            [12] 1165 	mov	r6,#(___str_1 >> 8)
      002376 7F 80            [12] 1166 	mov	r7,#0x80
                                   1167 ;	disp.c:54: return;
      002378                       1168 00149$:
                                   1169 ;	disp.c:52: for (; *s; s++) putchar(*s);
      002378 8D 82            [24] 1170 	mov	dpl,r5
      00237A 8E 83            [24] 1171 	mov	dph,r6
      00237C 8F F0            [24] 1172 	mov	b,r7
      00237E 12 26 B5         [24] 1173 	lcall	__gptrget
      002381 FC               [12] 1174 	mov	r4,a
      002382 60 10            [24] 1175 	jz	00129$
      002384 7B 00            [12] 1176 	mov	r3,#0x00
      002386 8C 82            [24] 1177 	mov	dpl,r4
      002388 8B 83            [24] 1178 	mov	dph,r3
      00238A 12 20 AD         [24] 1179 	lcall	_putchar
      00238D 0D               [12] 1180 	inc	r5
                                   1181 ;	disp.c:276: printstr("RESET\r\n");
      00238E BD 00 E7         [24] 1182 	cjne	r5,#0x00,00149$
      002391 0E               [12] 1183 	inc	r6
      002392 80 E4            [24] 1184 	sjmp	00149$
      002394                       1185 00129$:
                                   1186 ;	disp.c:277: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      002394 E4               [12] 1187 	clr	a
      002395 C0 E0            [24] 1188 	push	acc
      002397 04               [12] 1189 	inc	a
      002398 C0 E0            [24] 1190 	push	acc
      00239A 90 89 01         [24] 1191 	mov	dptr,#_initial
      00239D E0               [24] 1192 	movx	a,@dptr
      00239E C0 E0            [24] 1193 	push	acc
      0023A0 A3               [24] 1194 	inc	dptr
      0023A1 E0               [24] 1195 	movx	a,@dptr
      0023A2 C0 E0            [24] 1196 	push	acc
      0023A4 A3               [24] 1197 	inc	dptr
      0023A5 E0               [24] 1198 	movx	a,@dptr
      0023A6 C0 E0            [24] 1199 	push	acc
      0023A8 90 80 00         [24] 1200 	mov	dptr,#_buf
      0023AB 75 F0 00         [24] 1201 	mov	b,#0x00
      0023AE 12 25 FE         [24] 1202 	lcall	_strncpy
      0023B1 E5 81            [12] 1203 	mov	a,sp
      0023B3 24 FB            [12] 1204 	add	a,#0xfb
      0023B5 F5 81            [12] 1205 	mov	sp,a
                                   1206 ;	disp.c:278: buf[sizeof (buf) - 1u] = 0u;
      0023B7 90 81 00         [24] 1207 	mov	dptr,#(_buf + 0x0100)
      0023BA E4               [12] 1208 	clr	a
      0023BB F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	disp.c:279: inv = 0u;
      0023BC 78 3B            [12] 1211 	mov	r0,#_inv
      0023BE 76 00            [12] 1212 	mov	@r0,#0x00
                                   1213 ;	disp.c:281: while (1) {
      0023C0                       1214 00125$:
                                   1215 ;	disp.c:282: printstr("P SP I L ENT S R T START MSG \"");
      0023C0 7D 00            [12] 1216 	mov	r5,#___str_2
      0023C2 7E 27            [12] 1217 	mov	r6,#(___str_2 >> 8)
      0023C4 7F 80            [12] 1218 	mov	r7,#0x80
                                   1219 ;	disp.c:54: return;
      0023C6                       1220 00152$:
                                   1221 ;	disp.c:52: for (; *s; s++) putchar(*s);
      0023C6 8D 82            [24] 1222 	mov	dpl,r5
      0023C8 8E 83            [24] 1223 	mov	dph,r6
      0023CA 8F F0            [24] 1224 	mov	b,r7
      0023CC 12 26 B5         [24] 1225 	lcall	__gptrget
      0023CF FC               [12] 1226 	mov	r4,a
      0023D0 60 10            [24] 1227 	jz	00131$
      0023D2 7B 00            [12] 1228 	mov	r3,#0x00
      0023D4 8C 82            [24] 1229 	mov	dpl,r4
      0023D6 8B 83            [24] 1230 	mov	dph,r3
      0023D8 12 20 AD         [24] 1231 	lcall	_putchar
      0023DB 0D               [12] 1232 	inc	r5
                                   1233 ;	disp.c:282: printstr("P SP I L ENT S R T START MSG \"");
      0023DC BD 00 E7         [24] 1234 	cjne	r5,#0x00,00152$
      0023DF 0E               [12] 1235 	inc	r6
      0023E0 80 E4            [24] 1236 	sjmp	00152$
      0023E2                       1237 00131$:
                                   1238 ;	disp.c:283: printstr((char *)buf);
      0023E2 7D 00            [12] 1239 	mov	r5,#_buf
      0023E4 7E 80            [12] 1240 	mov	r6,#(_buf >> 8)
      0023E6 7F 00            [12] 1241 	mov	r7,#0x00
                                   1242 ;	disp.c:54: return;
      0023E8                       1243 00155$:
                                   1244 ;	disp.c:52: for (; *s; s++) putchar(*s);
      0023E8 8D 82            [24] 1245 	mov	dpl,r5
      0023EA 8E 83            [24] 1246 	mov	dph,r6
      0023EC 8F F0            [24] 1247 	mov	b,r7
      0023EE 12 26 B5         [24] 1248 	lcall	__gptrget
      0023F1 FC               [12] 1249 	mov	r4,a
      0023F2 60 10            [24] 1250 	jz	00133$
      0023F4 7B 00            [12] 1251 	mov	r3,#0x00
      0023F6 8C 82            [24] 1252 	mov	dpl,r4
      0023F8 8B 83            [24] 1253 	mov	dph,r3
      0023FA 12 20 AD         [24] 1254 	lcall	_putchar
      0023FD 0D               [12] 1255 	inc	r5
                                   1256 ;	disp.c:283: printstr((char *)buf);
      0023FE BD 00 E7         [24] 1257 	cjne	r5,#0x00,00155$
      002401 0E               [12] 1258 	inc	r6
      002402 80 E4            [24] 1259 	sjmp	00155$
      002404                       1260 00133$:
                                   1261 ;	disp.c:284: printstr("\"\r\n");
      002404 7D 1F            [12] 1262 	mov	r5,#___str_3
      002406 7E 27            [12] 1263 	mov	r6,#(___str_3 >> 8)
      002408 7F 80            [12] 1264 	mov	r7,#0x80
                                   1265 ;	disp.c:54: return;
      00240A                       1266 00158$:
                                   1267 ;	disp.c:52: for (; *s; s++) putchar(*s);
      00240A 8D 82            [24] 1268 	mov	dpl,r5
      00240C 8E 83            [24] 1269 	mov	dph,r6
      00240E 8F F0            [24] 1270 	mov	b,r7
      002410 12 26 B5         [24] 1271 	lcall	__gptrget
      002413 FC               [12] 1272 	mov	r4,a
      002414 60 10            [24] 1273 	jz	00135$
      002416 7B 00            [12] 1274 	mov	r3,#0x00
      002418 8C 82            [24] 1275 	mov	dpl,r4
      00241A 8B 83            [24] 1276 	mov	dph,r3
      00241C 12 20 AD         [24] 1277 	lcall	_putchar
      00241F 0D               [12] 1278 	inc	r5
                                   1279 ;	disp.c:284: printstr("\"\r\n");
      002420 BD 00 E7         [24] 1280 	cjne	r5,#0x00,00158$
      002423 0E               [12] 1281 	inc	r6
      002424 80 E4            [24] 1282 	sjmp	00158$
      002426                       1283 00135$:
                                   1284 ;	disp.c:286: c = scroll(buf);
      002426 90 80 00         [24] 1285 	mov	dptr,#_buf
      002429 75 F0 00         [24] 1286 	mov	b,#0x00
      00242C 12 21 A8         [24] 1287 	lcall	_scroll
      00242F AE 82            [24] 1288 	mov	r6,dpl
      002431 AF 83            [24] 1289 	mov	r7,dph
                                   1290 ;	disp.c:288: while (1) {
      002433                       1291 00122$:
                                   1292 ;	disp.c:289: if (c == (int)'T') goto term;
      002433 BE 54 06         [24] 1293 	cjne	r6,#0x54,00345$
      002436 BF 00 03         [24] 1294 	cjne	r7,#0x00,00345$
      002439 02 25 A4         [24] 1295 	ljmp	00127$
      00243C                       1296 00345$:
                                   1297 ;	disp.c:290: else if (c == (int)'R') goto reset;
      00243C BE 52 06         [24] 1298 	cjne	r6,#0x52,00346$
      00243F BF 00 03         [24] 1299 	cjne	r7,#0x00,00346$
      002442 02 23 6F         [24] 1300 	ljmp	00101$
      002445                       1301 00346$:
                                   1302 ;	disp.c:291: else if (c == (int)'I') inv = ~inv;
      002445 BE 49 0B         [24] 1303 	cjne	r6,#0x49,00113$
      002448 BF 00 08         [24] 1304 	cjne	r7,#0x00,00113$
      00244B 78 3B            [12] 1305 	mov	r0,#_inv
      00244D E6               [12] 1306 	mov	a,@r0
      00244E F4               [12] 1307 	cpl	a
      00244F F6               [12] 1308 	mov	@r0,a
      002450 02 25 97         [24] 1309 	ljmp	00120$
      002453                       1310 00113$:
                                   1311 ;	disp.c:292: else if (c == (int)'L') {
      002453 BE 4C 05         [24] 1312 	cjne	r6,#0x4c,00349$
      002456 BF 00 02         [24] 1313 	cjne	r7,#0x00,00349$
      002459 80 03            [24] 1314 	sjmp	00350$
      00245B                       1315 00349$:
      00245B 02 25 8E         [24] 1316 	ljmp	00110$
      00245E                       1317 00350$:
                                   1318 ;	disp.c:293: init_disp();
      00245E 12 21 3B         [24] 1319 	lcall	_init_disp
                                   1320 ;	disp.c:294: printstr("LOAD ");
      002461 7F 23            [12] 1321 	mov	r7,#___str_4
      002463 7E 27            [12] 1322 	mov	r6,#(___str_4 >> 8)
      002465 7C 80            [12] 1323 	mov	r4,#0x80
                                   1324 ;	disp.c:54: return;
      002467                       1325 00161$:
                                   1326 ;	disp.c:52: for (; *s; s++) putchar(*s);
      002467 8F 82            [24] 1327 	mov	dpl,r7
      002469 8E 83            [24] 1328 	mov	dph,r6
      00246B 8C F0            [24] 1329 	mov	b,r4
      00246D 12 26 B5         [24] 1330 	lcall	__gptrget
      002470 FA               [12] 1331 	mov	r2,a
      002471 60 10            [24] 1332 	jz	00137$
      002473 7D 00            [12] 1333 	mov	r5,#0x00
      002475 8A 82            [24] 1334 	mov	dpl,r2
      002477 8D 83            [24] 1335 	mov	dph,r5
      002479 12 20 AD         [24] 1336 	lcall	_putchar
      00247C 0F               [12] 1337 	inc	r7
                                   1338 ;	disp.c:294: printstr("LOAD ");
      00247D BF 00 E7         [24] 1339 	cjne	r7,#0x00,00161$
      002480 0E               [12] 1340 	inc	r6
      002481 80 E4            [24] 1341 	sjmp	00161$
      002483                       1342 00137$:
                                   1343 ;	disp.c:295: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002483 7C 00            [12] 1344 	mov	r4,#0x00
      002485 7D 00            [12] 1345 	mov	r5,#0x00
      002487 A8 10            [24] 1346 	mov	r0,_bp
      002489 08               [12] 1347 	inc	r0
      00248A E4               [12] 1348 	clr	a
      00248B F6               [12] 1349 	mov	@r0,a
      00248C 08               [12] 1350 	inc	r0
      00248D F6               [12] 1351 	mov	@r0,a
      00248E                       1352 00163$:
                                   1353 ;	disp.c:296: c = getchar();
      00248E C0 04            [24] 1354 	push	ar4
      002490 C0 05            [24] 1355 	push	ar5
      002492 12 20 B7         [24] 1356 	lcall	_getchar
      002495 AC 82            [24] 1357 	mov	r4,dpl
      002497 AD 83            [24] 1358 	mov	r5,dph
      002499 8C 07            [24] 1359 	mov	ar7,r4
      00249B 8D 06            [24] 1360 	mov	ar6,r5
                                   1361 ;	disp.c:297: (void)putchar(c);
      00249D 8F 82            [24] 1362 	mov	dpl,r7
      00249F 8E 83            [24] 1363 	mov	dph,r6
      0024A1 12 20 AD         [24] 1364 	lcall	_putchar
                                   1365 ;	disp.c:298: if ((c == (int)'\r') || (c == (int)'\n')) {
      0024A4 BF 0D 09         [24] 1366 	cjne	r7,#0x0d,00353$
      0024A7 BE 00 06         [24] 1367 	cjne	r6,#0x00,00353$
      0024AA D0 05            [24] 1368 	pop	ar5
      0024AC D0 04            [24] 1369 	pop	ar4
      0024AE 80 0A            [24] 1370 	sjmp	00102$
      0024B0                       1371 00353$:
      0024B0 D0 05            [24] 1372 	pop	ar5
      0024B2 D0 04            [24] 1373 	pop	ar4
      0024B4 BF 0A 11         [24] 1374 	cjne	r7,#0x0a,00103$
      0024B7 BE 00 0E         [24] 1375 	cjne	r6,#0x00,00103$
      0024BA                       1376 00102$:
                                   1377 ;	disp.c:299: buf[j] = 0u;
      0024BA EC               [12] 1378 	mov	a,r4
      0024BB 24 00            [12] 1379 	add	a,#_buf
      0024BD F5 82            [12] 1380 	mov	dpl,a
      0024BF ED               [12] 1381 	mov	a,r5
      0024C0 34 80            [12] 1382 	addc	a,#(_buf >> 8)
      0024C2 F5 83            [12] 1383 	mov	dph,a
      0024C4 E4               [12] 1384 	clr	a
      0024C5 F0               [24] 1385 	movx	@dptr,a
                                   1386 ;	disp.c:300: break;
      0024C6 80 32            [24] 1387 	sjmp	00106$
      0024C8                       1388 00103$:
                                   1389 ;	disp.c:301: } else buf[j] = c & 0xffu;
      0024C8 A8 10            [24] 1390 	mov	r0,_bp
      0024CA 08               [12] 1391 	inc	r0
      0024CB E6               [12] 1392 	mov	a,@r0
      0024CC 24 00            [12] 1393 	add	a,#_buf
      0024CE FD               [12] 1394 	mov	r5,a
      0024CF 08               [12] 1395 	inc	r0
      0024D0 E6               [12] 1396 	mov	a,@r0
      0024D1 34 80            [12] 1397 	addc	a,#(_buf >> 8)
      0024D3 FC               [12] 1398 	mov	r4,a
      0024D4 8F 03            [24] 1399 	mov	ar3,r7
      0024D6 8D 82            [24] 1400 	mov	dpl,r5
      0024D8 8C 83            [24] 1401 	mov	dph,r4
      0024DA EB               [12] 1402 	mov	a,r3
      0024DB F0               [24] 1403 	movx	@dptr,a
                                   1404 ;	disp.c:295: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      0024DC A8 10            [24] 1405 	mov	r0,_bp
      0024DE 08               [12] 1406 	inc	r0
      0024DF 06               [12] 1407 	inc	@r0
      0024E0 B6 00 02         [24] 1408 	cjne	@r0,#0x00,00356$
      0024E3 08               [12] 1409 	inc	r0
      0024E4 06               [12] 1410 	inc	@r0
      0024E5                       1411 00356$:
      0024E5 A8 10            [24] 1412 	mov	r0,_bp
      0024E7 08               [12] 1413 	inc	r0
      0024E8 86 04            [24] 1414 	mov	ar4,@r0
      0024EA 08               [12] 1415 	inc	r0
      0024EB 86 05            [24] 1416 	mov	ar5,@r0
      0024ED A8 10            [24] 1417 	mov	r0,_bp
      0024EF 08               [12] 1418 	inc	r0
      0024F0 86 02            [24] 1419 	mov	ar2,@r0
      0024F2 08               [12] 1420 	inc	r0
      0024F3 86 03            [24] 1421 	mov	ar3,@r0
      0024F5 74 FF            [12] 1422 	mov	a,#0x100 - 0x01
      0024F7 2B               [12] 1423 	add	a,r3
      0024F8 50 94            [24] 1424 	jnc	00163$
      0024FA                       1425 00106$:
                                   1426 ;	disp.c:303: buf[j] = 0u;
      0024FA EC               [12] 1427 	mov	a,r4
      0024FB 24 00            [12] 1428 	add	a,#_buf
      0024FD F5 82            [12] 1429 	mov	dpl,a
      0024FF ED               [12] 1430 	mov	a,r5
      002500 34 80            [12] 1431 	addc	a,#(_buf >> 8)
      002502 F5 83            [12] 1432 	mov	dph,a
      002504 E4               [12] 1433 	clr	a
      002505 F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	disp.c:304: printstr("\r\n");
      002506 7F 29            [12] 1436 	mov	r7,#___str_5
      002508 7E 27            [12] 1437 	mov	r6,#(___str_5 >> 8)
      00250A 7C 80            [12] 1438 	mov	r4,#0x80
                                   1439 ;	disp.c:54: return;
      00250C                       1440 00166$:
                                   1441 ;	disp.c:52: for (; *s; s++) putchar(*s);
      00250C 8F 82            [24] 1442 	mov	dpl,r7
      00250E 8E 83            [24] 1443 	mov	dph,r6
      002510 8C F0            [24] 1444 	mov	b,r4
      002512 12 26 B5         [24] 1445 	lcall	__gptrget
      002515 FA               [12] 1446 	mov	r2,a
      002516 60 10            [24] 1447 	jz	00139$
      002518 7D 00            [12] 1448 	mov	r5,#0x00
      00251A 8A 82            [24] 1449 	mov	dpl,r2
      00251C 8D 83            [24] 1450 	mov	dph,r5
      00251E 12 20 AD         [24] 1451 	lcall	_putchar
      002521 0F               [12] 1452 	inc	r7
                                   1453 ;	disp.c:304: printstr("\r\n");
      002522 BF 00 E7         [24] 1454 	cjne	r7,#0x00,00166$
      002525 0E               [12] 1455 	inc	r6
      002526 80 E4            [24] 1456 	sjmp	00166$
      002528                       1457 00139$:
                                   1458 ;	disp.c:305: printstr("MSG \"");
      002528 7F 2C            [12] 1459 	mov	r7,#___str_6
      00252A 7E 27            [12] 1460 	mov	r6,#(___str_6 >> 8)
      00252C 7C 80            [12] 1461 	mov	r4,#0x80
                                   1462 ;	disp.c:54: return;
      00252E                       1463 00169$:
                                   1464 ;	disp.c:52: for (; *s; s++) putchar(*s);
      00252E 8F 82            [24] 1465 	mov	dpl,r7
      002530 8E 83            [24] 1466 	mov	dph,r6
      002532 8C F0            [24] 1467 	mov	b,r4
      002534 12 26 B5         [24] 1468 	lcall	__gptrget
      002537 FA               [12] 1469 	mov	r2,a
      002538 60 10            [24] 1470 	jz	00141$
      00253A 7D 00            [12] 1471 	mov	r5,#0x00
      00253C 8A 82            [24] 1472 	mov	dpl,r2
      00253E 8D 83            [24] 1473 	mov	dph,r5
      002540 12 20 AD         [24] 1474 	lcall	_putchar
      002543 0F               [12] 1475 	inc	r7
                                   1476 ;	disp.c:305: printstr("MSG \"");
      002544 BF 00 E7         [24] 1477 	cjne	r7,#0x00,00169$
      002547 0E               [12] 1478 	inc	r6
      002548 80 E4            [24] 1479 	sjmp	00169$
      00254A                       1480 00141$:
                                   1481 ;	disp.c:306: printstr((char *)buf);
      00254A 7F 00            [12] 1482 	mov	r7,#_buf
      00254C 7E 80            [12] 1483 	mov	r6,#(_buf >> 8)
      00254E 7C 00            [12] 1484 	mov	r4,#0x00
                                   1485 ;	disp.c:54: return;
      002550                       1486 00172$:
                                   1487 ;	disp.c:52: for (; *s; s++) putchar(*s);
      002550 8F 82            [24] 1488 	mov	dpl,r7
      002552 8E 83            [24] 1489 	mov	dph,r6
      002554 8C F0            [24] 1490 	mov	b,r4
      002556 12 26 B5         [24] 1491 	lcall	__gptrget
      002559 FA               [12] 1492 	mov	r2,a
      00255A 60 10            [24] 1493 	jz	00143$
      00255C 7D 00            [12] 1494 	mov	r5,#0x00
      00255E 8A 82            [24] 1495 	mov	dpl,r2
      002560 8D 83            [24] 1496 	mov	dph,r5
      002562 12 20 AD         [24] 1497 	lcall	_putchar
      002565 0F               [12] 1498 	inc	r7
                                   1499 ;	disp.c:306: printstr((char *)buf);
      002566 BF 00 E7         [24] 1500 	cjne	r7,#0x00,00172$
      002569 0E               [12] 1501 	inc	r6
      00256A 80 E4            [24] 1502 	sjmp	00172$
      00256C                       1503 00143$:
                                   1504 ;	disp.c:307: printstr("\"\r\n");
      00256C 7F 1F            [12] 1505 	mov	r7,#___str_3
      00256E 7E 27            [12] 1506 	mov	r6,#(___str_3 >> 8)
      002570 7C 80            [12] 1507 	mov	r4,#0x80
                                   1508 ;	disp.c:54: return;
      002572                       1509 00175$:
                                   1510 ;	disp.c:52: for (; *s; s++) putchar(*s);
      002572 8F 82            [24] 1511 	mov	dpl,r7
      002574 8E 83            [24] 1512 	mov	dph,r6
      002576 8C F0            [24] 1513 	mov	b,r4
      002578 12 26 B5         [24] 1514 	lcall	__gptrget
      00257B FA               [12] 1515 	mov	r2,a
      00257C 60 19            [24] 1516 	jz	00120$
      00257E 7D 00            [12] 1517 	mov	r5,#0x00
      002580 8A 82            [24] 1518 	mov	dpl,r2
      002582 8D 83            [24] 1519 	mov	dph,r5
      002584 12 20 AD         [24] 1520 	lcall	_putchar
      002587 0F               [12] 1521 	inc	r7
                                   1522 ;	disp.c:307: printstr("\"\r\n");
      002588 BF 00 E7         [24] 1523 	cjne	r7,#0x00,00175$
      00258B 0E               [12] 1524 	inc	r6
      00258C 80 E4            [24] 1525 	sjmp	00175$
      00258E                       1526 00110$:
                                   1527 ;	disp.c:308: } else if (c == (int)'S') break;
      00258E BE 53 06         [24] 1528 	cjne	r6,#0x53,00366$
      002591 BF 00 03         [24] 1529 	cjne	r7,#0x00,00366$
      002594 02 23 C0         [24] 1530 	ljmp	00125$
      002597                       1531 00366$:
      002597                       1532 00120$:
                                   1533 ;	disp.c:310: c = toupper(getchar());
      002597 12 20 B7         [24] 1534 	lcall	_getchar
      00259A 12 25 D7         [24] 1535 	lcall	_toupper
      00259D AE 82            [24] 1536 	mov	r6,dpl
      00259F AF 83            [24] 1537 	mov	r7,dph
      0025A1 02 24 33         [24] 1538 	ljmp	00122$
                                   1539 ;	disp.c:314: term:	
      0025A4                       1540 00127$:
                                   1541 ;	disp.c:315: EA = 0;
                                   1542 ;	assignBit
      0025A4 C2 AF            [12] 1543 	clr	_EA
                                   1544 ;	disp.c:316: init_disp();
      0025A6 12 21 3B         [24] 1545 	lcall	_init_disp
                                   1546 ;	disp.c:317: printstr("TERM\r\n");
      0025A9 7D 32            [12] 1547 	mov	r5,#___str_7
      0025AB 7E 27            [12] 1548 	mov	r6,#(___str_7 >> 8)
      0025AD 7F 80            [12] 1549 	mov	r7,#0x80
                                   1550 ;	disp.c:54: return;
      0025AF                       1551 00178$:
                                   1552 ;	disp.c:52: for (; *s; s++) putchar(*s);
      0025AF 8D 82            [24] 1553 	mov	dpl,r5
      0025B1 8E 83            [24] 1554 	mov	dph,r6
      0025B3 8F F0            [24] 1555 	mov	b,r7
      0025B5 12 26 B5         [24] 1556 	lcall	__gptrget
      0025B8 FC               [12] 1557 	mov	r4,a
      0025B9 60 10            [24] 1558 	jz	00147$
      0025BB 7B 00            [12] 1559 	mov	r3,#0x00
      0025BD 8C 82            [24] 1560 	mov	dpl,r4
      0025BF 8B 83            [24] 1561 	mov	dph,r3
      0025C1 12 20 AD         [24] 1562 	lcall	_putchar
      0025C4 0D               [12] 1563 	inc	r5
                                   1564 ;	disp.c:317: printstr("TERM\r\n");
      0025C5 BD 00 E7         [24] 1565 	cjne	r5,#0x00,00178$
      0025C8 0E               [12] 1566 	inc	r6
      0025C9 80 E4            [24] 1567 	sjmp	00178$
      0025CB                       1568 00147$:
                                   1569 ;	disp.c:318: (void)getchar();
      0025CB 12 20 B7         [24] 1570 	lcall	_getchar
                                   1571 ;	disp.c:320: PCON |= 2;
      0025CE 43 87 02         [24] 1572 	orl	_PCON,#0x02
                                   1573 ;	disp.c:322: return;
                                   1574 ;	disp.c:323: }
      0025D1 85 10 81         [24] 1575 	mov	sp,_bp
      0025D4 D0 10            [24] 1576 	pop	_bp
      0025D6 22               [24] 1577 	ret
                                   1578 	.area CSEG    (CODE)
                                   1579 	.area CONST   (CODE)
                                   1580 	.area CONST   (CODE)
      0026F0                       1581 ___str_0:
      0026F0 50 41 55 53 45        1582 	.ascii "PAUSE"
      0026F5 0D                    1583 	.db 0x0d
      0026F6 0A                    1584 	.db 0x0a
      0026F7 00                    1585 	.db 0x00
                                   1586 	.area CSEG    (CODE)
                                   1587 	.area CONST   (CODE)
      0026F8                       1588 ___str_1:
      0026F8 52 45 53 45 54        1589 	.ascii "RESET"
      0026FD 0D                    1590 	.db 0x0d
      0026FE 0A                    1591 	.db 0x0a
      0026FF 00                    1592 	.db 0x00
                                   1593 	.area CSEG    (CODE)
                                   1594 	.area CONST   (CODE)
      002700                       1595 ___str_2:
      002700 50 20 53 50 20 49 20  1596 	.ascii "P SP I L ENT S R T START MSG "
             4C 20 45 4E 54 20 53
             20 52 20 54 20 53 54
             41 52 54 20 4D 53 47
             20
      00271D 22                    1597 	.db 0x22
      00271E 00                    1598 	.db 0x00
                                   1599 	.area CSEG    (CODE)
                                   1600 	.area CONST   (CODE)
      00271F                       1601 ___str_3:
      00271F 22                    1602 	.db 0x22
      002720 0D                    1603 	.db 0x0d
      002721 0A                    1604 	.db 0x0a
      002722 00                    1605 	.db 0x00
                                   1606 	.area CSEG    (CODE)
                                   1607 	.area CONST   (CODE)
      002723                       1608 ___str_4:
      002723 4C 4F 41 44 20        1609 	.ascii "LOAD "
      002728 00                    1610 	.db 0x00
                                   1611 	.area CSEG    (CODE)
                                   1612 	.area CONST   (CODE)
      002729                       1613 ___str_5:
      002729 0D                    1614 	.db 0x0d
      00272A 0A                    1615 	.db 0x0a
      00272B 00                    1616 	.db 0x00
                                   1617 	.area CSEG    (CODE)
                                   1618 	.area CONST   (CODE)
      00272C                       1619 ___str_6:
      00272C 4D 53 47 20           1620 	.ascii "MSG "
      002730 22                    1621 	.db 0x22
      002731 00                    1622 	.db 0x00
                                   1623 	.area CSEG    (CODE)
                                   1624 	.area CONST   (CODE)
      002732                       1625 ___str_7:
      002732 54 45 52 4D           1626 	.ascii "TERM"
      002736 0D                    1627 	.db 0x0d
      002737 0A                    1628 	.db 0x0a
      002738 00                    1629 	.db 0x00
                                   1630 	.area CSEG    (CODE)
                                   1631 	.area CONST   (CODE)
      002739                       1632 ___str_8:
      002739 43 41 45 44 49 54 45  1633 	.ascii "CAEDITE EOS : NOVIT ENIM DOMINVS QVI SVNT EIVS : "
             20 45 4F 53 20 3A 20
             4E 4F 56 49 54 20 45
             4E 49 4D 20 44 4F 4D
             49 4E 56 53 20 51 56
             49 20 53 56 4E 54 20
             45 49 56 53 20 3A 20
      00276A 00                    1634 	.db 0x00
                                   1635 	.area CSEG    (CODE)
                                   1636 	.area XINIT   (CODE)
      00276B                       1637 __xinit___ft_font6x8:
      00276B 00                    1638 	.db #0x00	; 0
      00276C 00                    1639 	.db #0x00	; 0
      00276D 00                    1640 	.db #0x00	; 0
      00276E 00                    1641 	.db #0x00	; 0
      00276F 00                    1642 	.db #0x00	; 0
      002770 00                    1643 	.db #0x00	; 0
      002771 00                    1644 	.db #0x00	; 0
      002772 00                    1645 	.db #0x00	; 0
      002773 1C                    1646 	.db #0x1c	; 28
      002774 22                    1647 	.db #0x22	; 34
      002775 36                    1648 	.db #0x36	; 54	'6'
      002776 22                    1649 	.db #0x22	; 34
      002777 2A                    1650 	.db #0x2a	; 42
      002778 22                    1651 	.db #0x22	; 34
      002779 1C                    1652 	.db #0x1c	; 28
      00277A 00                    1653 	.db #0x00	; 0
      00277B 1C                    1654 	.db #0x1c	; 28
      00277C 3E                    1655 	.db #0x3e	; 62
      00277D 2A                    1656 	.db #0x2a	; 42
      00277E 3E                    1657 	.db #0x3e	; 62
      00277F 22                    1658 	.db #0x22	; 34
      002780 3E                    1659 	.db #0x3e	; 62
      002781 1C                    1660 	.db #0x1c	; 28
      002782 00                    1661 	.db #0x00	; 0
      002783 00                    1662 	.db #0x00	; 0
      002784 14                    1663 	.db #0x14	; 20
      002785 3E                    1664 	.db #0x3e	; 62
      002786 3E                    1665 	.db #0x3e	; 62
      002787 3E                    1666 	.db #0x3e	; 62
      002788 1C                    1667 	.db #0x1c	; 28
      002789 08                    1668 	.db #0x08	; 8
      00278A 00                    1669 	.db #0x00	; 0
      00278B 00                    1670 	.db #0x00	; 0
      00278C 08                    1671 	.db #0x08	; 8
      00278D 1C                    1672 	.db #0x1c	; 28
      00278E 3E                    1673 	.db #0x3e	; 62
      00278F 3E                    1674 	.db #0x3e	; 62
      002790 1C                    1675 	.db #0x1c	; 28
      002791 08                    1676 	.db #0x08	; 8
      002792 00                    1677 	.db #0x00	; 0
      002793 08                    1678 	.db #0x08	; 8
      002794 1C                    1679 	.db #0x1c	; 28
      002795 1C                    1680 	.db #0x1c	; 28
      002796 08                    1681 	.db #0x08	; 8
      002797 3E                    1682 	.db #0x3e	; 62
      002798 3E                    1683 	.db #0x3e	; 62
      002799 08                    1684 	.db #0x08	; 8
      00279A 00                    1685 	.db #0x00	; 0
      00279B 00                    1686 	.db #0x00	; 0
      00279C 08                    1687 	.db #0x08	; 8
      00279D 1C                    1688 	.db #0x1c	; 28
      00279E 3E                    1689 	.db #0x3e	; 62
      00279F 3E                    1690 	.db #0x3e	; 62
      0027A0 08                    1691 	.db #0x08	; 8
      0027A1 1C                    1692 	.db #0x1c	; 28
      0027A2 00                    1693 	.db #0x00	; 0
      0027A3 00                    1694 	.db #0x00	; 0
      0027A4 00                    1695 	.db #0x00	; 0
      0027A5 00                    1696 	.db #0x00	; 0
      0027A6 0C                    1697 	.db #0x0c	; 12
      0027A7 0C                    1698 	.db #0x0c	; 12
      0027A8 00                    1699 	.db #0x00	; 0
      0027A9 00                    1700 	.db #0x00	; 0
      0027AA 00                    1701 	.db #0x00	; 0
      0027AB 3F                    1702 	.db #0x3f	; 63
      0027AC 3F                    1703 	.db #0x3f	; 63
      0027AD 3F                    1704 	.db #0x3f	; 63
      0027AE 33                    1705 	.db #0x33	; 51	'3'
      0027AF 33                    1706 	.db #0x33	; 51	'3'
      0027B0 3F                    1707 	.db #0x3f	; 63
      0027B1 3F                    1708 	.db #0x3f	; 63
      0027B2 3F                    1709 	.db #0x3f	; 63
      0027B3 00                    1710 	.db #0x00	; 0
      0027B4 00                    1711 	.db #0x00	; 0
      0027B5 1E                    1712 	.db #0x1e	; 30
      0027B6 12                    1713 	.db #0x12	; 18
      0027B7 12                    1714 	.db #0x12	; 18
      0027B8 1E                    1715 	.db #0x1e	; 30
      0027B9 00                    1716 	.db #0x00	; 0
      0027BA 00                    1717 	.db #0x00	; 0
      0027BB 3F                    1718 	.db #0x3f	; 63
      0027BC 3F                    1719 	.db #0x3f	; 63
      0027BD 21                    1720 	.db #0x21	; 33
      0027BE 2D                    1721 	.db #0x2d	; 45
      0027BF 2D                    1722 	.db #0x2d	; 45
      0027C0 21                    1723 	.db #0x21	; 33
      0027C1 3F                    1724 	.db #0x3f	; 63
      0027C2 3F                    1725 	.db #0x3f	; 63
      0027C3 00                    1726 	.db #0x00	; 0
      0027C4 38                    1727 	.db #0x38	; 56	'8'
      0027C5 30                    1728 	.db #0x30	; 48	'0'
      0027C6 2C                    1729 	.db #0x2c	; 44
      0027C7 12                    1730 	.db #0x12	; 18
      0027C8 12                    1731 	.db #0x12	; 18
      0027C9 0C                    1732 	.db #0x0c	; 12
      0027CA 00                    1733 	.db #0x00	; 0
      0027CB 1C                    1734 	.db #0x1c	; 28
      0027CC 22                    1735 	.db #0x22	; 34
      0027CD 22                    1736 	.db #0x22	; 34
      0027CE 1C                    1737 	.db #0x1c	; 28
      0027CF 08                    1738 	.db #0x08	; 8
      0027D0 1C                    1739 	.db #0x1c	; 28
      0027D1 08                    1740 	.db #0x08	; 8
      0027D2 00                    1741 	.db #0x00	; 0
      0027D3 08                    1742 	.db #0x08	; 8
      0027D4 18                    1743 	.db #0x18	; 24
      0027D5 28                    1744 	.db #0x28	; 40
      0027D6 08                    1745 	.db #0x08	; 8
      0027D7 0C                    1746 	.db #0x0c	; 12
      0027D8 0E                    1747 	.db #0x0e	; 14
      0027D9 06                    1748 	.db #0x06	; 6
      0027DA 00                    1749 	.db #0x00	; 0
      0027DB 30                    1750 	.db #0x30	; 48	'0'
      0027DC 2C                    1751 	.db #0x2c	; 44
      0027DD 34                    1752 	.db #0x34	; 52	'4'
      0027DE 2C                    1753 	.db #0x2c	; 44
      0027DF 34                    1754 	.db #0x34	; 52	'4'
      0027E0 36                    1755 	.db #0x36	; 54	'6'
      0027E1 06                    1756 	.db #0x06	; 6
      0027E2 00                    1757 	.db #0x00	; 0
      0027E3 00                    1758 	.db #0x00	; 0
      0027E4 2A                    1759 	.db #0x2a	; 42
      0027E5 1C                    1760 	.db #0x1c	; 28
      0027E6 36                    1761 	.db #0x36	; 54	'6'
      0027E7 1C                    1762 	.db #0x1c	; 28
      0027E8 2A                    1763 	.db #0x2a	; 42
      0027E9 00                    1764 	.db #0x00	; 0
      0027EA 00                    1765 	.db #0x00	; 0
      0027EB 04                    1766 	.db #0x04	; 4
      0027EC 0C                    1767 	.db #0x0c	; 12
      0027ED 1C                    1768 	.db #0x1c	; 28
      0027EE 3C                    1769 	.db #0x3c	; 60
      0027EF 1C                    1770 	.db #0x1c	; 28
      0027F0 0C                    1771 	.db #0x0c	; 12
      0027F1 04                    1772 	.db #0x04	; 4
      0027F2 00                    1773 	.db #0x00	; 0
      0027F3 10                    1774 	.db #0x10	; 16
      0027F4 18                    1775 	.db #0x18	; 24
      0027F5 1C                    1776 	.db #0x1c	; 28
      0027F6 1E                    1777 	.db #0x1e	; 30
      0027F7 1C                    1778 	.db #0x1c	; 28
      0027F8 18                    1779 	.db #0x18	; 24
      0027F9 10                    1780 	.db #0x10	; 16
      0027FA 00                    1781 	.db #0x00	; 0
      0027FB 08                    1782 	.db #0x08	; 8
      0027FC 1C                    1783 	.db #0x1c	; 28
      0027FD 3E                    1784 	.db #0x3e	; 62
      0027FE 08                    1785 	.db #0x08	; 8
      0027FF 3E                    1786 	.db #0x3e	; 62
      002800 1C                    1787 	.db #0x1c	; 28
      002801 08                    1788 	.db #0x08	; 8
      002802 00                    1789 	.db #0x00	; 0
      002803 14                    1790 	.db #0x14	; 20
      002804 14                    1791 	.db #0x14	; 20
      002805 14                    1792 	.db #0x14	; 20
      002806 14                    1793 	.db #0x14	; 20
      002807 14                    1794 	.db #0x14	; 20
      002808 00                    1795 	.db #0x00	; 0
      002809 14                    1796 	.db #0x14	; 20
      00280A 00                    1797 	.db #0x00	; 0
      00280B 3C                    1798 	.db #0x3c	; 60
      00280C 2A                    1799 	.db #0x2a	; 42
      00280D 2A                    1800 	.db #0x2a	; 42
      00280E 2C                    1801 	.db #0x2c	; 44
      00280F 28                    1802 	.db #0x28	; 40
      002810 28                    1803 	.db #0x28	; 40
      002811 28                    1804 	.db #0x28	; 40
      002812 00                    1805 	.db #0x00	; 0
      002813 1C                    1806 	.db #0x1c	; 28
      002814 22                    1807 	.db #0x22	; 34
      002815 0C                    1808 	.db #0x0c	; 12
      002816 14                    1809 	.db #0x14	; 20
      002817 18                    1810 	.db #0x18	; 24
      002818 22                    1811 	.db #0x22	; 34
      002819 1C                    1812 	.db #0x1c	; 28
      00281A 00                    1813 	.db #0x00	; 0
      00281B 00                    1814 	.db #0x00	; 0
      00281C 00                    1815 	.db #0x00	; 0
      00281D 00                    1816 	.db #0x00	; 0
      00281E 00                    1817 	.db #0x00	; 0
      00281F 00                    1818 	.db #0x00	; 0
      002820 1E                    1819 	.db #0x1e	; 30
      002821 1E                    1820 	.db #0x1e	; 30
      002822 00                    1821 	.db #0x00	; 0
      002823 08                    1822 	.db #0x08	; 8
      002824 1C                    1823 	.db #0x1c	; 28
      002825 3E                    1824 	.db #0x3e	; 62
      002826 08                    1825 	.db #0x08	; 8
      002827 3E                    1826 	.db #0x3e	; 62
      002828 1C                    1827 	.db #0x1c	; 28
      002829 08                    1828 	.db #0x08	; 8
      00282A 1C                    1829 	.db #0x1c	; 28
      00282B 08                    1830 	.db #0x08	; 8
      00282C 1C                    1831 	.db #0x1c	; 28
      00282D 3E                    1832 	.db #0x3e	; 62
      00282E 08                    1833 	.db #0x08	; 8
      00282F 08                    1834 	.db #0x08	; 8
      002830 08                    1835 	.db #0x08	; 8
      002831 08                    1836 	.db #0x08	; 8
      002832 00                    1837 	.db #0x00	; 0
      002833 08                    1838 	.db #0x08	; 8
      002834 08                    1839 	.db #0x08	; 8
      002835 08                    1840 	.db #0x08	; 8
      002836 08                    1841 	.db #0x08	; 8
      002837 3E                    1842 	.db #0x3e	; 62
      002838 1C                    1843 	.db #0x1c	; 28
      002839 08                    1844 	.db #0x08	; 8
      00283A 00                    1845 	.db #0x00	; 0
      00283B 00                    1846 	.db #0x00	; 0
      00283C 08                    1847 	.db #0x08	; 8
      00283D 18                    1848 	.db #0x18	; 24
      00283E 3E                    1849 	.db #0x3e	; 62
      00283F 18                    1850 	.db #0x18	; 24
      002840 08                    1851 	.db #0x08	; 8
      002841 00                    1852 	.db #0x00	; 0
      002842 00                    1853 	.db #0x00	; 0
      002843 00                    1854 	.db #0x00	; 0
      002844 08                    1855 	.db #0x08	; 8
      002845 0C                    1856 	.db #0x0c	; 12
      002846 3E                    1857 	.db #0x3e	; 62
      002847 0C                    1858 	.db #0x0c	; 12
      002848 08                    1859 	.db #0x08	; 8
      002849 00                    1860 	.db #0x00	; 0
      00284A 00                    1861 	.db #0x00	; 0
      00284B 00                    1862 	.db #0x00	; 0
      00284C 00                    1863 	.db #0x00	; 0
      00284D 00                    1864 	.db #0x00	; 0
      00284E 02                    1865 	.db #0x02	; 2
      00284F 02                    1866 	.db #0x02	; 2
      002850 02                    1867 	.db #0x02	; 2
      002851 3E                    1868 	.db #0x3e	; 62
      002852 00                    1869 	.db #0x00	; 0
      002853 00                    1870 	.db #0x00	; 0
      002854 14                    1871 	.db #0x14	; 20
      002855 14                    1872 	.db #0x14	; 20
      002856 3E                    1873 	.db #0x3e	; 62
      002857 14                    1874 	.db #0x14	; 20
      002858 14                    1875 	.db #0x14	; 20
      002859 00                    1876 	.db #0x00	; 0
      00285A 00                    1877 	.db #0x00	; 0
      00285B 08                    1878 	.db #0x08	; 8
      00285C 08                    1879 	.db #0x08	; 8
      00285D 1C                    1880 	.db #0x1c	; 28
      00285E 1C                    1881 	.db #0x1c	; 28
      00285F 3E                    1882 	.db #0x3e	; 62
      002860 3E                    1883 	.db #0x3e	; 62
      002861 00                    1884 	.db #0x00	; 0
      002862 00                    1885 	.db #0x00	; 0
      002863 3E                    1886 	.db #0x3e	; 62
      002864 3E                    1887 	.db #0x3e	; 62
      002865 1C                    1888 	.db #0x1c	; 28
      002866 1C                    1889 	.db #0x1c	; 28
      002867 08                    1890 	.db #0x08	; 8
      002868 08                    1891 	.db #0x08	; 8
      002869 00                    1892 	.db #0x00	; 0
      00286A 00                    1893 	.db #0x00	; 0
      00286B 00                    1894 	.db #0x00	; 0
      00286C 00                    1895 	.db #0x00	; 0
      00286D 00                    1896 	.db #0x00	; 0
      00286E 00                    1897 	.db #0x00	; 0
      00286F 00                    1898 	.db #0x00	; 0
      002870 00                    1899 	.db #0x00	; 0
      002871 00                    1900 	.db #0x00	; 0
      002872 00                    1901 	.db #0x00	; 0
      002873 08                    1902 	.db #0x08	; 8
      002874 1C                    1903 	.db #0x1c	; 28
      002875 1C                    1904 	.db #0x1c	; 28
      002876 08                    1905 	.db #0x08	; 8
      002877 08                    1906 	.db #0x08	; 8
      002878 00                    1907 	.db #0x00	; 0
      002879 08                    1908 	.db #0x08	; 8
      00287A 00                    1909 	.db #0x00	; 0
      00287B 36                    1910 	.db #0x36	; 54	'6'
      00287C 36                    1911 	.db #0x36	; 54	'6'
      00287D 12                    1912 	.db #0x12	; 18
      00287E 00                    1913 	.db #0x00	; 0
      00287F 00                    1914 	.db #0x00	; 0
      002880 00                    1915 	.db #0x00	; 0
      002881 00                    1916 	.db #0x00	; 0
      002882 00                    1917 	.db #0x00	; 0
      002883 00                    1918 	.db #0x00	; 0
      002884 14                    1919 	.db #0x14	; 20
      002885 3E                    1920 	.db #0x3e	; 62
      002886 14                    1921 	.db #0x14	; 20
      002887 14                    1922 	.db #0x14	; 20
      002888 3E                    1923 	.db #0x3e	; 62
      002889 14                    1924 	.db #0x14	; 20
      00288A 00                    1925 	.db #0x00	; 0
      00288B 04                    1926 	.db #0x04	; 4
      00288C 1C                    1927 	.db #0x1c	; 28
      00288D 02                    1928 	.db #0x02	; 2
      00288E 0C                    1929 	.db #0x0c	; 12
      00288F 10                    1930 	.db #0x10	; 16
      002890 0E                    1931 	.db #0x0e	; 14
      002891 08                    1932 	.db #0x08	; 8
      002892 00                    1933 	.db #0x00	; 0
      002893 26                    1934 	.db #0x26	; 38
      002894 26                    1935 	.db #0x26	; 38
      002895 10                    1936 	.db #0x10	; 16
      002896 08                    1937 	.db #0x08	; 8
      002897 04                    1938 	.db #0x04	; 4
      002898 32                    1939 	.db #0x32	; 50	'2'
      002899 32                    1940 	.db #0x32	; 50	'2'
      00289A 00                    1941 	.db #0x00	; 0
      00289B 04                    1942 	.db #0x04	; 4
      00289C 0A                    1943 	.db #0x0a	; 10
      00289D 0A                    1944 	.db #0x0a	; 10
      00289E 04                    1945 	.db #0x04	; 4
      00289F 2A                    1946 	.db #0x2a	; 42
      0028A0 12                    1947 	.db #0x12	; 18
      0028A1 2C                    1948 	.db #0x2c	; 44
      0028A2 00                    1949 	.db #0x00	; 0
      0028A3 0C                    1950 	.db #0x0c	; 12
      0028A4 0C                    1951 	.db #0x0c	; 12
      0028A5 04                    1952 	.db #0x04	; 4
      0028A6 00                    1953 	.db #0x00	; 0
      0028A7 00                    1954 	.db #0x00	; 0
      0028A8 00                    1955 	.db #0x00	; 0
      0028A9 00                    1956 	.db #0x00	; 0
      0028AA 00                    1957 	.db #0x00	; 0
      0028AB 08                    1958 	.db #0x08	; 8
      0028AC 04                    1959 	.db #0x04	; 4
      0028AD 04                    1960 	.db #0x04	; 4
      0028AE 04                    1961 	.db #0x04	; 4
      0028AF 04                    1962 	.db #0x04	; 4
      0028B0 04                    1963 	.db #0x04	; 4
      0028B1 08                    1964 	.db #0x08	; 8
      0028B2 00                    1965 	.db #0x00	; 0
      0028B3 04                    1966 	.db #0x04	; 4
      0028B4 08                    1967 	.db #0x08	; 8
      0028B5 08                    1968 	.db #0x08	; 8
      0028B6 08                    1969 	.db #0x08	; 8
      0028B7 08                    1970 	.db #0x08	; 8
      0028B8 08                    1971 	.db #0x08	; 8
      0028B9 04                    1972 	.db #0x04	; 4
      0028BA 00                    1973 	.db #0x00	; 0
      0028BB 00                    1974 	.db #0x00	; 0
      0028BC 14                    1975 	.db #0x14	; 20
      0028BD 1C                    1976 	.db #0x1c	; 28
      0028BE 3E                    1977 	.db #0x3e	; 62
      0028BF 1C                    1978 	.db #0x1c	; 28
      0028C0 14                    1979 	.db #0x14	; 20
      0028C1 00                    1980 	.db #0x00	; 0
      0028C2 00                    1981 	.db #0x00	; 0
      0028C3 00                    1982 	.db #0x00	; 0
      0028C4 08                    1983 	.db #0x08	; 8
      0028C5 08                    1984 	.db #0x08	; 8
      0028C6 3E                    1985 	.db #0x3e	; 62
      0028C7 08                    1986 	.db #0x08	; 8
      0028C8 08                    1987 	.db #0x08	; 8
      0028C9 00                    1988 	.db #0x00	; 0
      0028CA 00                    1989 	.db #0x00	; 0
      0028CB 00                    1990 	.db #0x00	; 0
      0028CC 00                    1991 	.db #0x00	; 0
      0028CD 00                    1992 	.db #0x00	; 0
      0028CE 00                    1993 	.db #0x00	; 0
      0028CF 00                    1994 	.db #0x00	; 0
      0028D0 0C                    1995 	.db #0x0c	; 12
      0028D1 0C                    1996 	.db #0x0c	; 12
      0028D2 04                    1997 	.db #0x04	; 4
      0028D3 00                    1998 	.db #0x00	; 0
      0028D4 00                    1999 	.db #0x00	; 0
      0028D5 00                    2000 	.db #0x00	; 0
      0028D6 3E                    2001 	.db #0x3e	; 62
      0028D7 00                    2002 	.db #0x00	; 0
      0028D8 00                    2003 	.db #0x00	; 0
      0028D9 00                    2004 	.db #0x00	; 0
      0028DA 00                    2005 	.db #0x00	; 0
      0028DB 00                    2006 	.db #0x00	; 0
      0028DC 00                    2007 	.db #0x00	; 0
      0028DD 00                    2008 	.db #0x00	; 0
      0028DE 00                    2009 	.db #0x00	; 0
      0028DF 00                    2010 	.db #0x00	; 0
      0028E0 0C                    2011 	.db #0x0c	; 12
      0028E1 0C                    2012 	.db #0x0c	; 12
      0028E2 00                    2013 	.db #0x00	; 0
      0028E3 00                    2014 	.db #0x00	; 0
      0028E4 20                    2015 	.db #0x20	; 32
      0028E5 10                    2016 	.db #0x10	; 16
      0028E6 08                    2017 	.db #0x08	; 8
      0028E7 04                    2018 	.db #0x04	; 4
      0028E8 02                    2019 	.db #0x02	; 2
      0028E9 00                    2020 	.db #0x00	; 0
      0028EA 00                    2021 	.db #0x00	; 0
      0028EB 1C                    2022 	.db #0x1c	; 28
      0028EC 22                    2023 	.db #0x22	; 34
      0028ED 32                    2024 	.db #0x32	; 50	'2'
      0028EE 2A                    2025 	.db #0x2a	; 42
      0028EF 26                    2026 	.db #0x26	; 38
      0028F0 22                    2027 	.db #0x22	; 34
      0028F1 1C                    2028 	.db #0x1c	; 28
      0028F2 00                    2029 	.db #0x00	; 0
      0028F3 08                    2030 	.db #0x08	; 8
      0028F4 0C                    2031 	.db #0x0c	; 12
      0028F5 08                    2032 	.db #0x08	; 8
      0028F6 08                    2033 	.db #0x08	; 8
      0028F7 08                    2034 	.db #0x08	; 8
      0028F8 08                    2035 	.db #0x08	; 8
      0028F9 1C                    2036 	.db #0x1c	; 28
      0028FA 00                    2037 	.db #0x00	; 0
      0028FB 1C                    2038 	.db #0x1c	; 28
      0028FC 22                    2039 	.db #0x22	; 34
      0028FD 20                    2040 	.db #0x20	; 32
      0028FE 18                    2041 	.db #0x18	; 24
      0028FF 04                    2042 	.db #0x04	; 4
      002900 02                    2043 	.db #0x02	; 2
      002901 3E                    2044 	.db #0x3e	; 62
      002902 00                    2045 	.db #0x00	; 0
      002903 1C                    2046 	.db #0x1c	; 28
      002904 22                    2047 	.db #0x22	; 34
      002905 20                    2048 	.db #0x20	; 32
      002906 1C                    2049 	.db #0x1c	; 28
      002907 20                    2050 	.db #0x20	; 32
      002908 22                    2051 	.db #0x22	; 34
      002909 1C                    2052 	.db #0x1c	; 28
      00290A 00                    2053 	.db #0x00	; 0
      00290B 10                    2054 	.db #0x10	; 16
      00290C 18                    2055 	.db #0x18	; 24
      00290D 14                    2056 	.db #0x14	; 20
      00290E 12                    2057 	.db #0x12	; 18
      00290F 3E                    2058 	.db #0x3e	; 62
      002910 10                    2059 	.db #0x10	; 16
      002911 10                    2060 	.db #0x10	; 16
      002912 00                    2061 	.db #0x00	; 0
      002913 3E                    2062 	.db #0x3e	; 62
      002914 02                    2063 	.db #0x02	; 2
      002915 02                    2064 	.db #0x02	; 2
      002916 1E                    2065 	.db #0x1e	; 30
      002917 20                    2066 	.db #0x20	; 32
      002918 22                    2067 	.db #0x22	; 34
      002919 1C                    2068 	.db #0x1c	; 28
      00291A 00                    2069 	.db #0x00	; 0
      00291B 18                    2070 	.db #0x18	; 24
      00291C 04                    2071 	.db #0x04	; 4
      00291D 02                    2072 	.db #0x02	; 2
      00291E 1E                    2073 	.db #0x1e	; 30
      00291F 22                    2074 	.db #0x22	; 34
      002920 22                    2075 	.db #0x22	; 34
      002921 1C                    2076 	.db #0x1c	; 28
      002922 00                    2077 	.db #0x00	; 0
      002923 3E                    2078 	.db #0x3e	; 62
      002924 20                    2079 	.db #0x20	; 32
      002925 10                    2080 	.db #0x10	; 16
      002926 08                    2081 	.db #0x08	; 8
      002927 04                    2082 	.db #0x04	; 4
      002928 04                    2083 	.db #0x04	; 4
      002929 04                    2084 	.db #0x04	; 4
      00292A 00                    2085 	.db #0x00	; 0
      00292B 1C                    2086 	.db #0x1c	; 28
      00292C 22                    2087 	.db #0x22	; 34
      00292D 22                    2088 	.db #0x22	; 34
      00292E 1C                    2089 	.db #0x1c	; 28
      00292F 22                    2090 	.db #0x22	; 34
      002930 22                    2091 	.db #0x22	; 34
      002931 1C                    2092 	.db #0x1c	; 28
      002932 00                    2093 	.db #0x00	; 0
      002933 1C                    2094 	.db #0x1c	; 28
      002934 22                    2095 	.db #0x22	; 34
      002935 22                    2096 	.db #0x22	; 34
      002936 3C                    2097 	.db #0x3c	; 60
      002937 20                    2098 	.db #0x20	; 32
      002938 10                    2099 	.db #0x10	; 16
      002939 0C                    2100 	.db #0x0c	; 12
      00293A 00                    2101 	.db #0x00	; 0
      00293B 00                    2102 	.db #0x00	; 0
      00293C 00                    2103 	.db #0x00	; 0
      00293D 0C                    2104 	.db #0x0c	; 12
      00293E 0C                    2105 	.db #0x0c	; 12
      00293F 00                    2106 	.db #0x00	; 0
      002940 0C                    2107 	.db #0x0c	; 12
      002941 0C                    2108 	.db #0x0c	; 12
      002942 00                    2109 	.db #0x00	; 0
      002943 00                    2110 	.db #0x00	; 0
      002944 00                    2111 	.db #0x00	; 0
      002945 0C                    2112 	.db #0x0c	; 12
      002946 0C                    2113 	.db #0x0c	; 12
      002947 00                    2114 	.db #0x00	; 0
      002948 0C                    2115 	.db #0x0c	; 12
      002949 0C                    2116 	.db #0x0c	; 12
      00294A 04                    2117 	.db #0x04	; 4
      00294B 10                    2118 	.db #0x10	; 16
      00294C 08                    2119 	.db #0x08	; 8
      00294D 04                    2120 	.db #0x04	; 4
      00294E 02                    2121 	.db #0x02	; 2
      00294F 04                    2122 	.db #0x04	; 4
      002950 08                    2123 	.db #0x08	; 8
      002951 10                    2124 	.db #0x10	; 16
      002952 00                    2125 	.db #0x00	; 0
      002953 00                    2126 	.db #0x00	; 0
      002954 00                    2127 	.db #0x00	; 0
      002955 3E                    2128 	.db #0x3e	; 62
      002956 00                    2129 	.db #0x00	; 0
      002957 00                    2130 	.db #0x00	; 0
      002958 3E                    2131 	.db #0x3e	; 62
      002959 00                    2132 	.db #0x00	; 0
      00295A 00                    2133 	.db #0x00	; 0
      00295B 04                    2134 	.db #0x04	; 4
      00295C 08                    2135 	.db #0x08	; 8
      00295D 10                    2136 	.db #0x10	; 16
      00295E 20                    2137 	.db #0x20	; 32
      00295F 10                    2138 	.db #0x10	; 16
      002960 08                    2139 	.db #0x08	; 8
      002961 04                    2140 	.db #0x04	; 4
      002962 00                    2141 	.db #0x00	; 0
      002963 1C                    2142 	.db #0x1c	; 28
      002964 22                    2143 	.db #0x22	; 34
      002965 20                    2144 	.db #0x20	; 32
      002966 18                    2145 	.db #0x18	; 24
      002967 08                    2146 	.db #0x08	; 8
      002968 00                    2147 	.db #0x00	; 0
      002969 08                    2148 	.db #0x08	; 8
      00296A 00                    2149 	.db #0x00	; 0
      00296B 1C                    2150 	.db #0x1c	; 28
      00296C 22                    2151 	.db #0x22	; 34
      00296D 3A                    2152 	.db #0x3a	; 58
      00296E 2A                    2153 	.db #0x2a	; 42
      00296F 3A                    2154 	.db #0x3a	; 58
      002970 02                    2155 	.db #0x02	; 2
      002971 1C                    2156 	.db #0x1c	; 28
      002972 00                    2157 	.db #0x00	; 0
      002973 1C                    2158 	.db #0x1c	; 28
      002974 22                    2159 	.db #0x22	; 34
      002975 22                    2160 	.db #0x22	; 34
      002976 22                    2161 	.db #0x22	; 34
      002977 3E                    2162 	.db #0x3e	; 62
      002978 22                    2163 	.db #0x22	; 34
      002979 22                    2164 	.db #0x22	; 34
      00297A 00                    2165 	.db #0x00	; 0
      00297B 1E                    2166 	.db #0x1e	; 30
      00297C 22                    2167 	.db #0x22	; 34
      00297D 22                    2168 	.db #0x22	; 34
      00297E 1E                    2169 	.db #0x1e	; 30
      00297F 22                    2170 	.db #0x22	; 34
      002980 22                    2171 	.db #0x22	; 34
      002981 1E                    2172 	.db #0x1e	; 30
      002982 00                    2173 	.db #0x00	; 0
      002983 1C                    2174 	.db #0x1c	; 28
      002984 22                    2175 	.db #0x22	; 34
      002985 02                    2176 	.db #0x02	; 2
      002986 02                    2177 	.db #0x02	; 2
      002987 02                    2178 	.db #0x02	; 2
      002988 22                    2179 	.db #0x22	; 34
      002989 1C                    2180 	.db #0x1c	; 28
      00298A 00                    2181 	.db #0x00	; 0
      00298B 1E                    2182 	.db #0x1e	; 30
      00298C 22                    2183 	.db #0x22	; 34
      00298D 22                    2184 	.db #0x22	; 34
      00298E 22                    2185 	.db #0x22	; 34
      00298F 22                    2186 	.db #0x22	; 34
      002990 22                    2187 	.db #0x22	; 34
      002991 1E                    2188 	.db #0x1e	; 30
      002992 00                    2189 	.db #0x00	; 0
      002993 3E                    2190 	.db #0x3e	; 62
      002994 02                    2191 	.db #0x02	; 2
      002995 02                    2192 	.db #0x02	; 2
      002996 1E                    2193 	.db #0x1e	; 30
      002997 02                    2194 	.db #0x02	; 2
      002998 02                    2195 	.db #0x02	; 2
      002999 3E                    2196 	.db #0x3e	; 62
      00299A 00                    2197 	.db #0x00	; 0
      00299B 3E                    2198 	.db #0x3e	; 62
      00299C 02                    2199 	.db #0x02	; 2
      00299D 02                    2200 	.db #0x02	; 2
      00299E 1E                    2201 	.db #0x1e	; 30
      00299F 02                    2202 	.db #0x02	; 2
      0029A0 02                    2203 	.db #0x02	; 2
      0029A1 02                    2204 	.db #0x02	; 2
      0029A2 00                    2205 	.db #0x00	; 0
      0029A3 1C                    2206 	.db #0x1c	; 28
      0029A4 22                    2207 	.db #0x22	; 34
      0029A5 02                    2208 	.db #0x02	; 2
      0029A6 3A                    2209 	.db #0x3a	; 58
      0029A7 22                    2210 	.db #0x22	; 34
      0029A8 22                    2211 	.db #0x22	; 34
      0029A9 3C                    2212 	.db #0x3c	; 60
      0029AA 00                    2213 	.db #0x00	; 0
      0029AB 22                    2214 	.db #0x22	; 34
      0029AC 22                    2215 	.db #0x22	; 34
      0029AD 22                    2216 	.db #0x22	; 34
      0029AE 3E                    2217 	.db #0x3e	; 62
      0029AF 22                    2218 	.db #0x22	; 34
      0029B0 22                    2219 	.db #0x22	; 34
      0029B1 22                    2220 	.db #0x22	; 34
      0029B2 00                    2221 	.db #0x00	; 0
      0029B3 1C                    2222 	.db #0x1c	; 28
      0029B4 08                    2223 	.db #0x08	; 8
      0029B5 08                    2224 	.db #0x08	; 8
      0029B6 08                    2225 	.db #0x08	; 8
      0029B7 08                    2226 	.db #0x08	; 8
      0029B8 08                    2227 	.db #0x08	; 8
      0029B9 1C                    2228 	.db #0x1c	; 28
      0029BA 00                    2229 	.db #0x00	; 0
      0029BB 20                    2230 	.db #0x20	; 32
      0029BC 20                    2231 	.db #0x20	; 32
      0029BD 20                    2232 	.db #0x20	; 32
      0029BE 20                    2233 	.db #0x20	; 32
      0029BF 22                    2234 	.db #0x22	; 34
      0029C0 22                    2235 	.db #0x22	; 34
      0029C1 1C                    2236 	.db #0x1c	; 28
      0029C2 00                    2237 	.db #0x00	; 0
      0029C3 22                    2238 	.db #0x22	; 34
      0029C4 12                    2239 	.db #0x12	; 18
      0029C5 0A                    2240 	.db #0x0a	; 10
      0029C6 06                    2241 	.db #0x06	; 6
      0029C7 0A                    2242 	.db #0x0a	; 10
      0029C8 12                    2243 	.db #0x12	; 18
      0029C9 22                    2244 	.db #0x22	; 34
      0029CA 00                    2245 	.db #0x00	; 0
      0029CB 02                    2246 	.db #0x02	; 2
      0029CC 02                    2247 	.db #0x02	; 2
      0029CD 02                    2248 	.db #0x02	; 2
      0029CE 02                    2249 	.db #0x02	; 2
      0029CF 02                    2250 	.db #0x02	; 2
      0029D0 02                    2251 	.db #0x02	; 2
      0029D1 3E                    2252 	.db #0x3e	; 62
      0029D2 00                    2253 	.db #0x00	; 0
      0029D3 22                    2254 	.db #0x22	; 34
      0029D4 36                    2255 	.db #0x36	; 54	'6'
      0029D5 2A                    2256 	.db #0x2a	; 42
      0029D6 22                    2257 	.db #0x22	; 34
      0029D7 22                    2258 	.db #0x22	; 34
      0029D8 22                    2259 	.db #0x22	; 34
      0029D9 22                    2260 	.db #0x22	; 34
      0029DA 00                    2261 	.db #0x00	; 0
      0029DB 22                    2262 	.db #0x22	; 34
      0029DC 26                    2263 	.db #0x26	; 38
      0029DD 2A                    2264 	.db #0x2a	; 42
      0029DE 32                    2265 	.db #0x32	; 50	'2'
      0029DF 22                    2266 	.db #0x22	; 34
      0029E0 22                    2267 	.db #0x22	; 34
      0029E1 22                    2268 	.db #0x22	; 34
      0029E2 00                    2269 	.db #0x00	; 0
      0029E3 1C                    2270 	.db #0x1c	; 28
      0029E4 22                    2271 	.db #0x22	; 34
      0029E5 22                    2272 	.db #0x22	; 34
      0029E6 22                    2273 	.db #0x22	; 34
      0029E7 22                    2274 	.db #0x22	; 34
      0029E8 22                    2275 	.db #0x22	; 34
      0029E9 1C                    2276 	.db #0x1c	; 28
      0029EA 00                    2277 	.db #0x00	; 0
      0029EB 1E                    2278 	.db #0x1e	; 30
      0029EC 22                    2279 	.db #0x22	; 34
      0029ED 22                    2280 	.db #0x22	; 34
      0029EE 1E                    2281 	.db #0x1e	; 30
      0029EF 02                    2282 	.db #0x02	; 2
      0029F0 02                    2283 	.db #0x02	; 2
      0029F1 02                    2284 	.db #0x02	; 2
      0029F2 00                    2285 	.db #0x00	; 0
      0029F3 1C                    2286 	.db #0x1c	; 28
      0029F4 22                    2287 	.db #0x22	; 34
      0029F5 22                    2288 	.db #0x22	; 34
      0029F6 22                    2289 	.db #0x22	; 34
      0029F7 2A                    2290 	.db #0x2a	; 42
      0029F8 12                    2291 	.db #0x12	; 18
      0029F9 2C                    2292 	.db #0x2c	; 44
      0029FA 00                    2293 	.db #0x00	; 0
      0029FB 1E                    2294 	.db #0x1e	; 30
      0029FC 22                    2295 	.db #0x22	; 34
      0029FD 22                    2296 	.db #0x22	; 34
      0029FE 1E                    2297 	.db #0x1e	; 30
      0029FF 12                    2298 	.db #0x12	; 18
      002A00 22                    2299 	.db #0x22	; 34
      002A01 22                    2300 	.db #0x22	; 34
      002A02 00                    2301 	.db #0x00	; 0
      002A03 1C                    2302 	.db #0x1c	; 28
      002A04 22                    2303 	.db #0x22	; 34
      002A05 02                    2304 	.db #0x02	; 2
      002A06 1C                    2305 	.db #0x1c	; 28
      002A07 20                    2306 	.db #0x20	; 32
      002A08 22                    2307 	.db #0x22	; 34
      002A09 1C                    2308 	.db #0x1c	; 28
      002A0A 00                    2309 	.db #0x00	; 0
      002A0B 3E                    2310 	.db #0x3e	; 62
      002A0C 08                    2311 	.db #0x08	; 8
      002A0D 08                    2312 	.db #0x08	; 8
      002A0E 08                    2313 	.db #0x08	; 8
      002A0F 08                    2314 	.db #0x08	; 8
      002A10 08                    2315 	.db #0x08	; 8
      002A11 08                    2316 	.db #0x08	; 8
      002A12 00                    2317 	.db #0x00	; 0
      002A13 22                    2318 	.db #0x22	; 34
      002A14 22                    2319 	.db #0x22	; 34
      002A15 22                    2320 	.db #0x22	; 34
      002A16 22                    2321 	.db #0x22	; 34
      002A17 22                    2322 	.db #0x22	; 34
      002A18 22                    2323 	.db #0x22	; 34
      002A19 1C                    2324 	.db #0x1c	; 28
      002A1A 00                    2325 	.db #0x00	; 0
      002A1B 22                    2326 	.db #0x22	; 34
      002A1C 22                    2327 	.db #0x22	; 34
      002A1D 22                    2328 	.db #0x22	; 34
      002A1E 22                    2329 	.db #0x22	; 34
      002A1F 22                    2330 	.db #0x22	; 34
      002A20 14                    2331 	.db #0x14	; 20
      002A21 08                    2332 	.db #0x08	; 8
      002A22 00                    2333 	.db #0x00	; 0
      002A23 22                    2334 	.db #0x22	; 34
      002A24 22                    2335 	.db #0x22	; 34
      002A25 2A                    2336 	.db #0x2a	; 42
      002A26 2A                    2337 	.db #0x2a	; 42
      002A27 2A                    2338 	.db #0x2a	; 42
      002A28 2A                    2339 	.db #0x2a	; 42
      002A29 14                    2340 	.db #0x14	; 20
      002A2A 00                    2341 	.db #0x00	; 0
      002A2B 22                    2342 	.db #0x22	; 34
      002A2C 22                    2343 	.db #0x22	; 34
      002A2D 14                    2344 	.db #0x14	; 20
      002A2E 08                    2345 	.db #0x08	; 8
      002A2F 14                    2346 	.db #0x14	; 20
      002A30 22                    2347 	.db #0x22	; 34
      002A31 22                    2348 	.db #0x22	; 34
      002A32 00                    2349 	.db #0x00	; 0
      002A33 22                    2350 	.db #0x22	; 34
      002A34 22                    2351 	.db #0x22	; 34
      002A35 22                    2352 	.db #0x22	; 34
      002A36 14                    2353 	.db #0x14	; 20
      002A37 08                    2354 	.db #0x08	; 8
      002A38 08                    2355 	.db #0x08	; 8
      002A39 08                    2356 	.db #0x08	; 8
      002A3A 00                    2357 	.db #0x00	; 0
      002A3B 1E                    2358 	.db #0x1e	; 30
      002A3C 10                    2359 	.db #0x10	; 16
      002A3D 08                    2360 	.db #0x08	; 8
      002A3E 04                    2361 	.db #0x04	; 4
      002A3F 02                    2362 	.db #0x02	; 2
      002A40 02                    2363 	.db #0x02	; 2
      002A41 1E                    2364 	.db #0x1e	; 30
      002A42 00                    2365 	.db #0x00	; 0
      002A43 1C                    2366 	.db #0x1c	; 28
      002A44 04                    2367 	.db #0x04	; 4
      002A45 04                    2368 	.db #0x04	; 4
      002A46 04                    2369 	.db #0x04	; 4
      002A47 04                    2370 	.db #0x04	; 4
      002A48 04                    2371 	.db #0x04	; 4
      002A49 1C                    2372 	.db #0x1c	; 28
      002A4A 00                    2373 	.db #0x00	; 0
      002A4B 00                    2374 	.db #0x00	; 0
      002A4C 02                    2375 	.db #0x02	; 2
      002A4D 04                    2376 	.db #0x04	; 4
      002A4E 08                    2377 	.db #0x08	; 8
      002A4F 10                    2378 	.db #0x10	; 16
      002A50 20                    2379 	.db #0x20	; 32
      002A51 00                    2380 	.db #0x00	; 0
      002A52 00                    2381 	.db #0x00	; 0
      002A53 1C                    2382 	.db #0x1c	; 28
      002A54 10                    2383 	.db #0x10	; 16
      002A55 10                    2384 	.db #0x10	; 16
      002A56 10                    2385 	.db #0x10	; 16
      002A57 10                    2386 	.db #0x10	; 16
      002A58 10                    2387 	.db #0x10	; 16
      002A59 1C                    2388 	.db #0x1c	; 28
      002A5A 00                    2389 	.db #0x00	; 0
      002A5B 08                    2390 	.db #0x08	; 8
      002A5C 14                    2391 	.db #0x14	; 20
      002A5D 22                    2392 	.db #0x22	; 34
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
      002A69 00                    2404 	.db #0x00	; 0
      002A6A 3F                    2405 	.db #0x3f	; 63
      002A6B 0C                    2406 	.db #0x0c	; 12
      002A6C 0C                    2407 	.db #0x0c	; 12
      002A6D 08                    2408 	.db #0x08	; 8
      002A6E 00                    2409 	.db #0x00	; 0
      002A6F 00                    2410 	.db #0x00	; 0
      002A70 00                    2411 	.db #0x00	; 0
      002A71 00                    2412 	.db #0x00	; 0
      002A72 00                    2413 	.db #0x00	; 0
      002A73 00                    2414 	.db #0x00	; 0
      002A74 00                    2415 	.db #0x00	; 0
      002A75 1C                    2416 	.db #0x1c	; 28
      002A76 20                    2417 	.db #0x20	; 32
      002A77 3C                    2418 	.db #0x3c	; 60
      002A78 22                    2419 	.db #0x22	; 34
      002A79 3C                    2420 	.db #0x3c	; 60
      002A7A 00                    2421 	.db #0x00	; 0
      002A7B 02                    2422 	.db #0x02	; 2
      002A7C 02                    2423 	.db #0x02	; 2
      002A7D 1E                    2424 	.db #0x1e	; 30
      002A7E 22                    2425 	.db #0x22	; 34
      002A7F 22                    2426 	.db #0x22	; 34
      002A80 22                    2427 	.db #0x22	; 34
      002A81 1E                    2428 	.db #0x1e	; 30
      002A82 00                    2429 	.db #0x00	; 0
      002A83 00                    2430 	.db #0x00	; 0
      002A84 00                    2431 	.db #0x00	; 0
      002A85 1C                    2432 	.db #0x1c	; 28
      002A86 22                    2433 	.db #0x22	; 34
      002A87 02                    2434 	.db #0x02	; 2
      002A88 22                    2435 	.db #0x22	; 34
      002A89 1C                    2436 	.db #0x1c	; 28
      002A8A 00                    2437 	.db #0x00	; 0
      002A8B 20                    2438 	.db #0x20	; 32
      002A8C 20                    2439 	.db #0x20	; 32
      002A8D 3C                    2440 	.db #0x3c	; 60
      002A8E 22                    2441 	.db #0x22	; 34
      002A8F 22                    2442 	.db #0x22	; 34
      002A90 22                    2443 	.db #0x22	; 34
      002A91 3C                    2444 	.db #0x3c	; 60
      002A92 00                    2445 	.db #0x00	; 0
      002A93 00                    2446 	.db #0x00	; 0
      002A94 00                    2447 	.db #0x00	; 0
      002A95 1C                    2448 	.db #0x1c	; 28
      002A96 22                    2449 	.db #0x22	; 34
      002A97 1E                    2450 	.db #0x1e	; 30
      002A98 02                    2451 	.db #0x02	; 2
      002A99 1C                    2452 	.db #0x1c	; 28
      002A9A 00                    2453 	.db #0x00	; 0
      002A9B 18                    2454 	.db #0x18	; 24
      002A9C 04                    2455 	.db #0x04	; 4
      002A9D 04                    2456 	.db #0x04	; 4
      002A9E 1E                    2457 	.db #0x1e	; 30
      002A9F 04                    2458 	.db #0x04	; 4
      002AA0 04                    2459 	.db #0x04	; 4
      002AA1 04                    2460 	.db #0x04	; 4
      002AA2 00                    2461 	.db #0x00	; 0
      002AA3 00                    2462 	.db #0x00	; 0
      002AA4 00                    2463 	.db #0x00	; 0
      002AA5 3C                    2464 	.db #0x3c	; 60
      002AA6 22                    2465 	.db #0x22	; 34
      002AA7 22                    2466 	.db #0x22	; 34
      002AA8 3C                    2467 	.db #0x3c	; 60
      002AA9 20                    2468 	.db #0x20	; 32
      002AAA 1C                    2469 	.db #0x1c	; 28
      002AAB 02                    2470 	.db #0x02	; 2
      002AAC 02                    2471 	.db #0x02	; 2
      002AAD 0E                    2472 	.db #0x0e	; 14
      002AAE 12                    2473 	.db #0x12	; 18
      002AAF 12                    2474 	.db #0x12	; 18
      002AB0 12                    2475 	.db #0x12	; 18
      002AB1 12                    2476 	.db #0x12	; 18
      002AB2 00                    2477 	.db #0x00	; 0
      002AB3 08                    2478 	.db #0x08	; 8
      002AB4 00                    2479 	.db #0x00	; 0
      002AB5 08                    2480 	.db #0x08	; 8
      002AB6 08                    2481 	.db #0x08	; 8
      002AB7 08                    2482 	.db #0x08	; 8
      002AB8 08                    2483 	.db #0x08	; 8
      002AB9 18                    2484 	.db #0x18	; 24
      002ABA 00                    2485 	.db #0x00	; 0
      002ABB 10                    2486 	.db #0x10	; 16
      002ABC 00                    2487 	.db #0x00	; 0
      002ABD 18                    2488 	.db #0x18	; 24
      002ABE 10                    2489 	.db #0x10	; 16
      002ABF 10                    2490 	.db #0x10	; 16
      002AC0 10                    2491 	.db #0x10	; 16
      002AC1 12                    2492 	.db #0x12	; 18
      002AC2 0C                    2493 	.db #0x0c	; 12
      002AC3 02                    2494 	.db #0x02	; 2
      002AC4 02                    2495 	.db #0x02	; 2
      002AC5 12                    2496 	.db #0x12	; 18
      002AC6 0A                    2497 	.db #0x0a	; 10
      002AC7 06                    2498 	.db #0x06	; 6
      002AC8 0A                    2499 	.db #0x0a	; 10
      002AC9 12                    2500 	.db #0x12	; 18
      002ACA 00                    2501 	.db #0x00	; 0
      002ACB 08                    2502 	.db #0x08	; 8
      002ACC 08                    2503 	.db #0x08	; 8
      002ACD 08                    2504 	.db #0x08	; 8
      002ACE 08                    2505 	.db #0x08	; 8
      002ACF 08                    2506 	.db #0x08	; 8
      002AD0 08                    2507 	.db #0x08	; 8
      002AD1 18                    2508 	.db #0x18	; 24
      002AD2 00                    2509 	.db #0x00	; 0
      002AD3 00                    2510 	.db #0x00	; 0
      002AD4 00                    2511 	.db #0x00	; 0
      002AD5 16                    2512 	.db #0x16	; 22
      002AD6 2A                    2513 	.db #0x2a	; 42
      002AD7 2A                    2514 	.db #0x2a	; 42
      002AD8 22                    2515 	.db #0x22	; 34
      002AD9 22                    2516 	.db #0x22	; 34
      002ADA 00                    2517 	.db #0x00	; 0
      002ADB 00                    2518 	.db #0x00	; 0
      002ADC 00                    2519 	.db #0x00	; 0
      002ADD 0E                    2520 	.db #0x0e	; 14
      002ADE 12                    2521 	.db #0x12	; 18
      002ADF 12                    2522 	.db #0x12	; 18
      002AE0 12                    2523 	.db #0x12	; 18
      002AE1 12                    2524 	.db #0x12	; 18
      002AE2 00                    2525 	.db #0x00	; 0
      002AE3 00                    2526 	.db #0x00	; 0
      002AE4 00                    2527 	.db #0x00	; 0
      002AE5 1C                    2528 	.db #0x1c	; 28
      002AE6 22                    2529 	.db #0x22	; 34
      002AE7 22                    2530 	.db #0x22	; 34
      002AE8 22                    2531 	.db #0x22	; 34
      002AE9 1C                    2532 	.db #0x1c	; 28
      002AEA 00                    2533 	.db #0x00	; 0
      002AEB 00                    2534 	.db #0x00	; 0
      002AEC 00                    2535 	.db #0x00	; 0
      002AED 1E                    2536 	.db #0x1e	; 30
      002AEE 22                    2537 	.db #0x22	; 34
      002AEF 22                    2538 	.db #0x22	; 34
      002AF0 22                    2539 	.db #0x22	; 34
      002AF1 1E                    2540 	.db #0x1e	; 30
      002AF2 02                    2541 	.db #0x02	; 2
      002AF3 00                    2542 	.db #0x00	; 0
      002AF4 00                    2543 	.db #0x00	; 0
      002AF5 3C                    2544 	.db #0x3c	; 60
      002AF6 22                    2545 	.db #0x22	; 34
      002AF7 22                    2546 	.db #0x22	; 34
      002AF8 22                    2547 	.db #0x22	; 34
      002AF9 3C                    2548 	.db #0x3c	; 60
      002AFA 20                    2549 	.db #0x20	; 32
      002AFB 00                    2550 	.db #0x00	; 0
      002AFC 00                    2551 	.db #0x00	; 0
      002AFD 1A                    2552 	.db #0x1a	; 26
      002AFE 24                    2553 	.db #0x24	; 36
      002AFF 04                    2554 	.db #0x04	; 4
      002B00 04                    2555 	.db #0x04	; 4
      002B01 0E                    2556 	.db #0x0e	; 14
      002B02 00                    2557 	.db #0x00	; 0
      002B03 00                    2558 	.db #0x00	; 0
      002B04 00                    2559 	.db #0x00	; 0
      002B05 1C                    2560 	.db #0x1c	; 28
      002B06 02                    2561 	.db #0x02	; 2
      002B07 1C                    2562 	.db #0x1c	; 28
      002B08 20                    2563 	.db #0x20	; 32
      002B09 1C                    2564 	.db #0x1c	; 28
      002B0A 00                    2565 	.db #0x00	; 0
      002B0B 00                    2566 	.db #0x00	; 0
      002B0C 04                    2567 	.db #0x04	; 4
      002B0D 1E                    2568 	.db #0x1e	; 30
      002B0E 04                    2569 	.db #0x04	; 4
      002B0F 04                    2570 	.db #0x04	; 4
      002B10 14                    2571 	.db #0x14	; 20
      002B11 08                    2572 	.db #0x08	; 8
      002B12 00                    2573 	.db #0x00	; 0
      002B13 00                    2574 	.db #0x00	; 0
      002B14 00                    2575 	.db #0x00	; 0
      002B15 12                    2576 	.db #0x12	; 18
      002B16 12                    2577 	.db #0x12	; 18
      002B17 12                    2578 	.db #0x12	; 18
      002B18 1A                    2579 	.db #0x1a	; 26
      002B19 14                    2580 	.db #0x14	; 20
      002B1A 00                    2581 	.db #0x00	; 0
      002B1B 00                    2582 	.db #0x00	; 0
      002B1C 00                    2583 	.db #0x00	; 0
      002B1D 22                    2584 	.db #0x22	; 34
      002B1E 22                    2585 	.db #0x22	; 34
      002B1F 22                    2586 	.db #0x22	; 34
      002B20 14                    2587 	.db #0x14	; 20
      002B21 08                    2588 	.db #0x08	; 8
      002B22 00                    2589 	.db #0x00	; 0
      002B23 00                    2590 	.db #0x00	; 0
      002B24 00                    2591 	.db #0x00	; 0
      002B25 22                    2592 	.db #0x22	; 34
      002B26 22                    2593 	.db #0x22	; 34
      002B27 2A                    2594 	.db #0x2a	; 42
      002B28 3E                    2595 	.db #0x3e	; 62
      002B29 14                    2596 	.db #0x14	; 20
      002B2A 00                    2597 	.db #0x00	; 0
      002B2B 00                    2598 	.db #0x00	; 0
      002B2C 00                    2599 	.db #0x00	; 0
      002B2D 12                    2600 	.db #0x12	; 18
      002B2E 12                    2601 	.db #0x12	; 18
      002B2F 0C                    2602 	.db #0x0c	; 12
      002B30 12                    2603 	.db #0x12	; 18
      002B31 12                    2604 	.db #0x12	; 18
      002B32 00                    2605 	.db #0x00	; 0
      002B33 00                    2606 	.db #0x00	; 0
      002B34 00                    2607 	.db #0x00	; 0
      002B35 12                    2608 	.db #0x12	; 18
      002B36 12                    2609 	.db #0x12	; 18
      002B37 12                    2610 	.db #0x12	; 18
      002B38 1C                    2611 	.db #0x1c	; 28
      002B39 08                    2612 	.db #0x08	; 8
      002B3A 06                    2613 	.db #0x06	; 6
      002B3B 00                    2614 	.db #0x00	; 0
      002B3C 00                    2615 	.db #0x00	; 0
      002B3D 1E                    2616 	.db #0x1e	; 30
      002B3E 10                    2617 	.db #0x10	; 16
      002B3F 0C                    2618 	.db #0x0c	; 12
      002B40 02                    2619 	.db #0x02	; 2
      002B41 1E                    2620 	.db #0x1e	; 30
      002B42 00                    2621 	.db #0x00	; 0
      002B43 18                    2622 	.db #0x18	; 24
      002B44 04                    2623 	.db #0x04	; 4
      002B45 04                    2624 	.db #0x04	; 4
      002B46 06                    2625 	.db #0x06	; 6
      002B47 04                    2626 	.db #0x04	; 4
      002B48 04                    2627 	.db #0x04	; 4
      002B49 18                    2628 	.db #0x18	; 24
      002B4A 00                    2629 	.db #0x00	; 0
      002B4B 08                    2630 	.db #0x08	; 8
      002B4C 08                    2631 	.db #0x08	; 8
      002B4D 08                    2632 	.db #0x08	; 8
      002B4E 00                    2633 	.db #0x00	; 0
      002B4F 08                    2634 	.db #0x08	; 8
      002B50 08                    2635 	.db #0x08	; 8
      002B51 08                    2636 	.db #0x08	; 8
      002B52 00                    2637 	.db #0x00	; 0
      002B53 0C                    2638 	.db #0x0c	; 12
      002B54 10                    2639 	.db #0x10	; 16
      002B55 10                    2640 	.db #0x10	; 16
      002B56 30                    2641 	.db #0x30	; 48	'0'
      002B57 10                    2642 	.db #0x10	; 16
      002B58 10                    2643 	.db #0x10	; 16
      002B59 0C                    2644 	.db #0x0c	; 12
      002B5A 00                    2645 	.db #0x00	; 0
      002B5B 14                    2646 	.db #0x14	; 20
      002B5C 0A                    2647 	.db #0x0a	; 10
      002B5D 00                    2648 	.db #0x00	; 0
      002B5E 00                    2649 	.db #0x00	; 0
      002B5F 00                    2650 	.db #0x00	; 0
      002B60 00                    2651 	.db #0x00	; 0
      002B61 00                    2652 	.db #0x00	; 0
      002B62 00                    2653 	.db #0x00	; 0
      002B63 08                    2654 	.db #0x08	; 8
      002B64 1C                    2655 	.db #0x1c	; 28
      002B65 36                    2656 	.db #0x36	; 54	'6'
      002B66 22                    2657 	.db #0x22	; 34
      002B67 22                    2658 	.db #0x22	; 34
      002B68 3E                    2659 	.db #0x3e	; 62
      002B69 00                    2660 	.db #0x00	; 0
      002B6A 00                    2661 	.db #0x00	; 0
      002B6B 1C                    2662 	.db #0x1c	; 28
      002B6C 22                    2663 	.db #0x22	; 34
      002B6D 02                    2664 	.db #0x02	; 2
      002B6E 02                    2665 	.db #0x02	; 2
      002B6F 22                    2666 	.db #0x22	; 34
      002B70 1C                    2667 	.db #0x1c	; 28
      002B71 08                    2668 	.db #0x08	; 8
      002B72 0C                    2669 	.db #0x0c	; 12
      002B73 12                    2670 	.db #0x12	; 18
      002B74 00                    2671 	.db #0x00	; 0
      002B75 12                    2672 	.db #0x12	; 18
      002B76 12                    2673 	.db #0x12	; 18
      002B77 12                    2674 	.db #0x12	; 18
      002B78 1A                    2675 	.db #0x1a	; 26
      002B79 14                    2676 	.db #0x14	; 20
      002B7A 00                    2677 	.db #0x00	; 0
      002B7B 30                    2678 	.db #0x30	; 48	'0'
      002B7C 00                    2679 	.db #0x00	; 0
      002B7D 1C                    2680 	.db #0x1c	; 28
      002B7E 22                    2681 	.db #0x22	; 34
      002B7F 1E                    2682 	.db #0x1e	; 30
      002B80 02                    2683 	.db #0x02	; 2
      002B81 1C                    2684 	.db #0x1c	; 28
      002B82 00                    2685 	.db #0x00	; 0
      002B83 1C                    2686 	.db #0x1c	; 28
      002B84 00                    2687 	.db #0x00	; 0
      002B85 1C                    2688 	.db #0x1c	; 28
      002B86 20                    2689 	.db #0x20	; 32
      002B87 3C                    2690 	.db #0x3c	; 60
      002B88 22                    2691 	.db #0x22	; 34
      002B89 3C                    2692 	.db #0x3c	; 60
      002B8A 00                    2693 	.db #0x00	; 0
      002B8B 14                    2694 	.db #0x14	; 20
      002B8C 00                    2695 	.db #0x00	; 0
      002B8D 1C                    2696 	.db #0x1c	; 28
      002B8E 20                    2697 	.db #0x20	; 32
      002B8F 3C                    2698 	.db #0x3c	; 60
      002B90 22                    2699 	.db #0x22	; 34
      002B91 3C                    2700 	.db #0x3c	; 60
      002B92 00                    2701 	.db #0x00	; 0
      002B93 0C                    2702 	.db #0x0c	; 12
      002B94 00                    2703 	.db #0x00	; 0
      002B95 1C                    2704 	.db #0x1c	; 28
      002B96 20                    2705 	.db #0x20	; 32
      002B97 3C                    2706 	.db #0x3c	; 60
      002B98 22                    2707 	.db #0x22	; 34
      002B99 3C                    2708 	.db #0x3c	; 60
      002B9A 00                    2709 	.db #0x00	; 0
      002B9B 1C                    2710 	.db #0x1c	; 28
      002B9C 14                    2711 	.db #0x14	; 20
      002B9D 1C                    2712 	.db #0x1c	; 28
      002B9E 20                    2713 	.db #0x20	; 32
      002B9F 3C                    2714 	.db #0x3c	; 60
      002BA0 22                    2715 	.db #0x22	; 34
      002BA1 3C                    2716 	.db #0x3c	; 60
      002BA2 00                    2717 	.db #0x00	; 0
      002BA3 00                    2718 	.db #0x00	; 0
      002BA4 1C                    2719 	.db #0x1c	; 28
      002BA5 22                    2720 	.db #0x22	; 34
      002BA6 02                    2721 	.db #0x02	; 2
      002BA7 22                    2722 	.db #0x22	; 34
      002BA8 1C                    2723 	.db #0x1c	; 28
      002BA9 08                    2724 	.db #0x08	; 8
      002BAA 0C                    2725 	.db #0x0c	; 12
      002BAB 1C                    2726 	.db #0x1c	; 28
      002BAC 00                    2727 	.db #0x00	; 0
      002BAD 1C                    2728 	.db #0x1c	; 28
      002BAE 22                    2729 	.db #0x22	; 34
      002BAF 1E                    2730 	.db #0x1e	; 30
      002BB0 02                    2731 	.db #0x02	; 2
      002BB1 1C                    2732 	.db #0x1c	; 28
      002BB2 00                    2733 	.db #0x00	; 0
      002BB3 14                    2734 	.db #0x14	; 20
      002BB4 00                    2735 	.db #0x00	; 0
      002BB5 1C                    2736 	.db #0x1c	; 28
      002BB6 22                    2737 	.db #0x22	; 34
      002BB7 1E                    2738 	.db #0x1e	; 30
      002BB8 02                    2739 	.db #0x02	; 2
      002BB9 1C                    2740 	.db #0x1c	; 28
      002BBA 00                    2741 	.db #0x00	; 0
      002BBB 0C                    2742 	.db #0x0c	; 12
      002BBC 00                    2743 	.db #0x00	; 0
      002BBD 1C                    2744 	.db #0x1c	; 28
      002BBE 22                    2745 	.db #0x22	; 34
      002BBF 1E                    2746 	.db #0x1e	; 30
      002BC0 02                    2747 	.db #0x02	; 2
      002BC1 1C                    2748 	.db #0x1c	; 28
      002BC2 00                    2749 	.db #0x00	; 0
      002BC3 14                    2750 	.db #0x14	; 20
      002BC4 00                    2751 	.db #0x00	; 0
      002BC5 08                    2752 	.db #0x08	; 8
      002BC6 08                    2753 	.db #0x08	; 8
      002BC7 08                    2754 	.db #0x08	; 8
      002BC8 08                    2755 	.db #0x08	; 8
      002BC9 18                    2756 	.db #0x18	; 24
      002BCA 00                    2757 	.db #0x00	; 0
      002BCB 08                    2758 	.db #0x08	; 8
      002BCC 14                    2759 	.db #0x14	; 20
      002BCD 00                    2760 	.db #0x00	; 0
      002BCE 08                    2761 	.db #0x08	; 8
      002BCF 08                    2762 	.db #0x08	; 8
      002BD0 08                    2763 	.db #0x08	; 8
      002BD1 18                    2764 	.db #0x18	; 24
      002BD2 00                    2765 	.db #0x00	; 0
      002BD3 04                    2766 	.db #0x04	; 4
      002BD4 00                    2767 	.db #0x00	; 0
      002BD5 08                    2768 	.db #0x08	; 8
      002BD6 08                    2769 	.db #0x08	; 8
      002BD7 08                    2770 	.db #0x08	; 8
      002BD8 08                    2771 	.db #0x08	; 8
      002BD9 18                    2772 	.db #0x18	; 24
      002BDA 00                    2773 	.db #0x00	; 0
      002BDB 14                    2774 	.db #0x14	; 20
      002BDC 00                    2775 	.db #0x00	; 0
      002BDD 08                    2776 	.db #0x08	; 8
      002BDE 14                    2777 	.db #0x14	; 20
      002BDF 22                    2778 	.db #0x22	; 34
      002BE0 3E                    2779 	.db #0x3e	; 62
      002BE1 22                    2780 	.db #0x22	; 34
      002BE2 00                    2781 	.db #0x00	; 0
      002BE3 1C                    2782 	.db #0x1c	; 28
      002BE4 14                    2783 	.db #0x14	; 20
      002BE5 1C                    2784 	.db #0x1c	; 28
      002BE6 36                    2785 	.db #0x36	; 54	'6'
      002BE7 22                    2786 	.db #0x22	; 34
      002BE8 3E                    2787 	.db #0x3e	; 62
      002BE9 22                    2788 	.db #0x22	; 34
      002BEA 00                    2789 	.db #0x00	; 0
      002BEB 30                    2790 	.db #0x30	; 48	'0'
      002BEC 00                    2791 	.db #0x00	; 0
      002BED 3E                    2792 	.db #0x3e	; 62
      002BEE 02                    2793 	.db #0x02	; 2
      002BEF 1E                    2794 	.db #0x1e	; 30
      002BF0 02                    2795 	.db #0x02	; 2
      002BF1 3E                    2796 	.db #0x3e	; 62
      002BF2 00                    2797 	.db #0x00	; 0
      002BF3 00                    2798 	.db #0x00	; 0
      002BF4 00                    2799 	.db #0x00	; 0
      002BF5 1E                    2800 	.db #0x1e	; 30
      002BF6 28                    2801 	.db #0x28	; 40
      002BF7 3E                    2802 	.db #0x3e	; 62
      002BF8 0A                    2803 	.db #0x0a	; 10
      002BF9 3C                    2804 	.db #0x3c	; 60
      002BFA 00                    2805 	.db #0x00	; 0
      002BFB 3C                    2806 	.db #0x3c	; 60
      002BFC 0A                    2807 	.db #0x0a	; 10
      002BFD 0A                    2808 	.db #0x0a	; 10
      002BFE 3E                    2809 	.db #0x3e	; 62
      002BFF 0A                    2810 	.db #0x0a	; 10
      002C00 0A                    2811 	.db #0x0a	; 10
      002C01 3A                    2812 	.db #0x3a	; 58
      002C02 00                    2813 	.db #0x00	; 0
      002C03 1C                    2814 	.db #0x1c	; 28
      002C04 00                    2815 	.db #0x00	; 0
      002C05 0C                    2816 	.db #0x0c	; 12
      002C06 12                    2817 	.db #0x12	; 18
      002C07 12                    2818 	.db #0x12	; 18
      002C08 12                    2819 	.db #0x12	; 18
      002C09 0C                    2820 	.db #0x0c	; 12
      002C0A 00                    2821 	.db #0x00	; 0
      002C0B 14                    2822 	.db #0x14	; 20
      002C0C 00                    2823 	.db #0x00	; 0
      002C0D 0C                    2824 	.db #0x0c	; 12
      002C0E 12                    2825 	.db #0x12	; 18
      002C0F 12                    2826 	.db #0x12	; 18
      002C10 12                    2827 	.db #0x12	; 18
      002C11 0C                    2828 	.db #0x0c	; 12
      002C12 00                    2829 	.db #0x00	; 0
      002C13 06                    2830 	.db #0x06	; 6
      002C14 00                    2831 	.db #0x00	; 0
      002C15 0C                    2832 	.db #0x0c	; 12
      002C16 12                    2833 	.db #0x12	; 18
      002C17 12                    2834 	.db #0x12	; 18
      002C18 12                    2835 	.db #0x12	; 18
      002C19 0C                    2836 	.db #0x0c	; 12
      002C1A 00                    2837 	.db #0x00	; 0
      002C1B 1C                    2838 	.db #0x1c	; 28
      002C1C 00                    2839 	.db #0x00	; 0
      002C1D 12                    2840 	.db #0x12	; 18
      002C1E 12                    2841 	.db #0x12	; 18
      002C1F 12                    2842 	.db #0x12	; 18
      002C20 1A                    2843 	.db #0x1a	; 26
      002C21 14                    2844 	.db #0x14	; 20
      002C22 00                    2845 	.db #0x00	; 0
      002C23 06                    2846 	.db #0x06	; 6
      002C24 00                    2847 	.db #0x00	; 0
      002C25 12                    2848 	.db #0x12	; 18
      002C26 12                    2849 	.db #0x12	; 18
      002C27 12                    2850 	.db #0x12	; 18
      002C28 1A                    2851 	.db #0x1a	; 26
      002C29 14                    2852 	.db #0x14	; 20
      002C2A 00                    2853 	.db #0x00	; 0
      002C2B 14                    2854 	.db #0x14	; 20
      002C2C 00                    2855 	.db #0x00	; 0
      002C2D 12                    2856 	.db #0x12	; 18
      002C2E 12                    2857 	.db #0x12	; 18
      002C2F 12                    2858 	.db #0x12	; 18
      002C30 1C                    2859 	.db #0x1c	; 28
      002C31 08                    2860 	.db #0x08	; 8
      002C32 06                    2861 	.db #0x06	; 6
      002C33 12                    2862 	.db #0x12	; 18
      002C34 0C                    2863 	.db #0x0c	; 12
      002C35 12                    2864 	.db #0x12	; 18
      002C36 12                    2865 	.db #0x12	; 18
      002C37 12                    2866 	.db #0x12	; 18
      002C38 12                    2867 	.db #0x12	; 18
      002C39 0C                    2868 	.db #0x0c	; 12
      002C3A 00                    2869 	.db #0x00	; 0
      002C3B 14                    2870 	.db #0x14	; 20
      002C3C 00                    2871 	.db #0x00	; 0
      002C3D 12                    2872 	.db #0x12	; 18
      002C3E 12                    2873 	.db #0x12	; 18
      002C3F 12                    2874 	.db #0x12	; 18
      002C40 12                    2875 	.db #0x12	; 18
      002C41 0C                    2876 	.db #0x0c	; 12
      002C42 00                    2877 	.db #0x00	; 0
      002C43 00                    2878 	.db #0x00	; 0
      002C44 08                    2879 	.db #0x08	; 8
      002C45 1C                    2880 	.db #0x1c	; 28
      002C46 02                    2881 	.db #0x02	; 2
      002C47 02                    2882 	.db #0x02	; 2
      002C48 1C                    2883 	.db #0x1c	; 28
      002C49 08                    2884 	.db #0x08	; 8
      002C4A 00                    2885 	.db #0x00	; 0
      002C4B 18                    2886 	.db #0x18	; 24
      002C4C 24                    2887 	.db #0x24	; 36
      002C4D 04                    2888 	.db #0x04	; 4
      002C4E 1E                    2889 	.db #0x1e	; 30
      002C4F 04                    2890 	.db #0x04	; 4
      002C50 24                    2891 	.db #0x24	; 36
      002C51 3A                    2892 	.db #0x3a	; 58
      002C52 00                    2893 	.db #0x00	; 0
      002C53 22                    2894 	.db #0x22	; 34
      002C54 14                    2895 	.db #0x14	; 20
      002C55 08                    2896 	.db #0x08	; 8
      002C56 3E                    2897 	.db #0x3e	; 62
      002C57 08                    2898 	.db #0x08	; 8
      002C58 3E                    2899 	.db #0x3e	; 62
      002C59 08                    2900 	.db #0x08	; 8
      002C5A 00                    2901 	.db #0x00	; 0
      002C5B 06                    2902 	.db #0x06	; 6
      002C5C 0A                    2903 	.db #0x0a	; 10
      002C5D 0A                    2904 	.db #0x0a	; 10
      002C5E 16                    2905 	.db #0x16	; 22
      002C5F 3A                    2906 	.db #0x3a	; 58
      002C60 12                    2907 	.db #0x12	; 18
      002C61 12                    2908 	.db #0x12	; 18
      002C62 00                    2909 	.db #0x00	; 0
      002C63 10                    2910 	.db #0x10	; 16
      002C64 28                    2911 	.db #0x28	; 40
      002C65 08                    2912 	.db #0x08	; 8
      002C66 1C                    2913 	.db #0x1c	; 28
      002C67 08                    2914 	.db #0x08	; 8
      002C68 08                    2915 	.db #0x08	; 8
      002C69 0A                    2916 	.db #0x0a	; 10
      002C6A 04                    2917 	.db #0x04	; 4
      002C6B 18                    2918 	.db #0x18	; 24
      002C6C 00                    2919 	.db #0x00	; 0
      002C6D 1C                    2920 	.db #0x1c	; 28
      002C6E 20                    2921 	.db #0x20	; 32
      002C6F 3C                    2922 	.db #0x3c	; 60
      002C70 22                    2923 	.db #0x22	; 34
      002C71 3C                    2924 	.db #0x3c	; 60
      002C72 00                    2925 	.db #0x00	; 0
      002C73 18                    2926 	.db #0x18	; 24
      002C74 00                    2927 	.db #0x00	; 0
      002C75 08                    2928 	.db #0x08	; 8
      002C76 08                    2929 	.db #0x08	; 8
      002C77 08                    2930 	.db #0x08	; 8
      002C78 08                    2931 	.db #0x08	; 8
      002C79 18                    2932 	.db #0x18	; 24
      002C7A 00                    2933 	.db #0x00	; 0
      002C7B 18                    2934 	.db #0x18	; 24
      002C7C 00                    2935 	.db #0x00	; 0
      002C7D 0C                    2936 	.db #0x0c	; 12
      002C7E 12                    2937 	.db #0x12	; 18
      002C7F 12                    2938 	.db #0x12	; 18
      002C80 12                    2939 	.db #0x12	; 18
      002C81 0C                    2940 	.db #0x0c	; 12
      002C82 00                    2941 	.db #0x00	; 0
      002C83 18                    2942 	.db #0x18	; 24
      002C84 00                    2943 	.db #0x00	; 0
      002C85 12                    2944 	.db #0x12	; 18
      002C86 12                    2945 	.db #0x12	; 18
      002C87 12                    2946 	.db #0x12	; 18
      002C88 1A                    2947 	.db #0x1a	; 26
      002C89 14                    2948 	.db #0x14	; 20
      002C8A 00                    2949 	.db #0x00	; 0
      002C8B 14                    2950 	.db #0x14	; 20
      002C8C 0A                    2951 	.db #0x0a	; 10
      002C8D 00                    2952 	.db #0x00	; 0
      002C8E 0E                    2953 	.db #0x0e	; 14
      002C8F 12                    2954 	.db #0x12	; 18
      002C90 12                    2955 	.db #0x12	; 18
      002C91 12                    2956 	.db #0x12	; 18
      002C92 00                    2957 	.db #0x00	; 0
      002C93 14                    2958 	.db #0x14	; 20
      002C94 0A                    2959 	.db #0x0a	; 10
      002C95 00                    2960 	.db #0x00	; 0
      002C96 12                    2961 	.db #0x12	; 18
      002C97 16                    2962 	.db #0x16	; 22
      002C98 1A                    2963 	.db #0x1a	; 26
      002C99 12                    2964 	.db #0x12	; 18
      002C9A 00                    2965 	.db #0x00	; 0
      002C9B 1C                    2966 	.db #0x1c	; 28
      002C9C 20                    2967 	.db #0x20	; 32
      002C9D 3C                    2968 	.db #0x3c	; 60
      002C9E 22                    2969 	.db #0x22	; 34
      002C9F 3C                    2970 	.db #0x3c	; 60
      002CA0 00                    2971 	.db #0x00	; 0
      002CA1 3C                    2972 	.db #0x3c	; 60
      002CA2 00                    2973 	.db #0x00	; 0
      002CA3 0C                    2974 	.db #0x0c	; 12
      002CA4 12                    2975 	.db #0x12	; 18
      002CA5 12                    2976 	.db #0x12	; 18
      002CA6 12                    2977 	.db #0x12	; 18
      002CA7 0C                    2978 	.db #0x0c	; 12
      002CA8 00                    2979 	.db #0x00	; 0
      002CA9 1E                    2980 	.db #0x1e	; 30
      002CAA 00                    2981 	.db #0x00	; 0
      002CAB 08                    2982 	.db #0x08	; 8
      002CAC 00                    2983 	.db #0x00	; 0
      002CAD 08                    2984 	.db #0x08	; 8
      002CAE 0C                    2985 	.db #0x0c	; 12
      002CAF 02                    2986 	.db #0x02	; 2
      002CB0 22                    2987 	.db #0x22	; 34
      002CB1 1C                    2988 	.db #0x1c	; 28
      002CB2 00                    2989 	.db #0x00	; 0
      002CB3 00                    2990 	.db #0x00	; 0
      002CB4 00                    2991 	.db #0x00	; 0
      002CB5 3E                    2992 	.db #0x3e	; 62
      002CB6 02                    2993 	.db #0x02	; 2
      002CB7 02                    2994 	.db #0x02	; 2
      002CB8 02                    2995 	.db #0x02	; 2
      002CB9 00                    2996 	.db #0x00	; 0
      002CBA 00                    2997 	.db #0x00	; 0
      002CBB 00                    2998 	.db #0x00	; 0
      002CBC 00                    2999 	.db #0x00	; 0
      002CBD 3F                    3000 	.db #0x3f	; 63
      002CBE 20                    3001 	.db #0x20	; 32
      002CBF 20                    3002 	.db #0x20	; 32
      002CC0 00                    3003 	.db #0x00	; 0
      002CC1 00                    3004 	.db #0x00	; 0
      002CC2 00                    3005 	.db #0x00	; 0
      002CC3 02                    3006 	.db #0x02	; 2
      002CC4 12                    3007 	.db #0x12	; 18
      002CC5 0A                    3008 	.db #0x0a	; 10
      002CC6 1C                    3009 	.db #0x1c	; 28
      002CC7 22                    3010 	.db #0x22	; 34
      002CC8 10                    3011 	.db #0x10	; 16
      002CC9 38                    3012 	.db #0x38	; 56	'8'
      002CCA 00                    3013 	.db #0x00	; 0
      002CCB 02                    3014 	.db #0x02	; 2
      002CCC 12                    3015 	.db #0x12	; 18
      002CCD 0A                    3016 	.db #0x0a	; 10
      002CCE 34                    3017 	.db #0x34	; 52	'4'
      002CCF 2A                    3018 	.db #0x2a	; 42
      002CD0 38                    3019 	.db #0x38	; 56	'8'
      002CD1 20                    3020 	.db #0x20	; 32
      002CD2 00                    3021 	.db #0x00	; 0
      002CD3 08                    3022 	.db #0x08	; 8
      002CD4 00                    3023 	.db #0x00	; 0
      002CD5 08                    3024 	.db #0x08	; 8
      002CD6 08                    3025 	.db #0x08	; 8
      002CD7 1C                    3026 	.db #0x1c	; 28
      002CD8 1C                    3027 	.db #0x1c	; 28
      002CD9 08                    3028 	.db #0x08	; 8
      002CDA 00                    3029 	.db #0x00	; 0
      002CDB 00                    3030 	.db #0x00	; 0
      002CDC 00                    3031 	.db #0x00	; 0
      002CDD 24                    3032 	.db #0x24	; 36
      002CDE 12                    3033 	.db #0x12	; 18
      002CDF 24                    3034 	.db #0x24	; 36
      002CE0 00                    3035 	.db #0x00	; 0
      002CE1 00                    3036 	.db #0x00	; 0
      002CE2 00                    3037 	.db #0x00	; 0
      002CE3 00                    3038 	.db #0x00	; 0
      002CE4 00                    3039 	.db #0x00	; 0
      002CE5 12                    3040 	.db #0x12	; 18
      002CE6 24                    3041 	.db #0x24	; 36
      002CE7 12                    3042 	.db #0x12	; 18
      002CE8 00                    3043 	.db #0x00	; 0
      002CE9 00                    3044 	.db #0x00	; 0
      002CEA 00                    3045 	.db #0x00	; 0
      002CEB 2A                    3046 	.db #0x2a	; 42
      002CEC 00                    3047 	.db #0x00	; 0
      002CED 15                    3048 	.db #0x15	; 21
      002CEE 00                    3049 	.db #0x00	; 0
      002CEF 2A                    3050 	.db #0x2a	; 42
      002CF0 00                    3051 	.db #0x00	; 0
      002CF1 15                    3052 	.db #0x15	; 21
      002CF2 00                    3053 	.db #0x00	; 0
      002CF3 2A                    3054 	.db #0x2a	; 42
      002CF4 15                    3055 	.db #0x15	; 21
      002CF5 2A                    3056 	.db #0x2a	; 42
      002CF6 15                    3057 	.db #0x15	; 21
      002CF7 2A                    3058 	.db #0x2a	; 42
      002CF8 15                    3059 	.db #0x15	; 21
      002CF9 2A                    3060 	.db #0x2a	; 42
      002CFA 15                    3061 	.db #0x15	; 21
      002CFB 15                    3062 	.db #0x15	; 21
      002CFC 3F                    3063 	.db #0x3f	; 63
      002CFD 2A                    3064 	.db #0x2a	; 42
      002CFE 3F                    3065 	.db #0x3f	; 63
      002CFF 15                    3066 	.db #0x15	; 21
      002D00 3F                    3067 	.db #0x3f	; 63
      002D01 2A                    3068 	.db #0x2a	; 42
      002D02 3F                    3069 	.db #0x3f	; 63
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
      002D0D 08                    3080 	.db #0x08	; 8
      002D0E 0F                    3081 	.db #0x0f	; 15
      002D0F 08                    3082 	.db #0x08	; 8
      002D10 08                    3083 	.db #0x08	; 8
      002D11 08                    3084 	.db #0x08	; 8
      002D12 08                    3085 	.db #0x08	; 8
      002D13 08                    3086 	.db #0x08	; 8
      002D14 0F                    3087 	.db #0x0f	; 15
      002D15 08                    3088 	.db #0x08	; 8
      002D16 0F                    3089 	.db #0x0f	; 15
      002D17 08                    3090 	.db #0x08	; 8
      002D18 08                    3091 	.db #0x08	; 8
      002D19 08                    3092 	.db #0x08	; 8
      002D1A 08                    3093 	.db #0x08	; 8
      002D1B 0A                    3094 	.db #0x0a	; 10
      002D1C 0A                    3095 	.db #0x0a	; 10
      002D1D 0A                    3096 	.db #0x0a	; 10
      002D1E 0B                    3097 	.db #0x0b	; 11
      002D1F 0A                    3098 	.db #0x0a	; 10
      002D20 0A                    3099 	.db #0x0a	; 10
      002D21 0A                    3100 	.db #0x0a	; 10
      002D22 0A                    3101 	.db #0x0a	; 10
      002D23 00                    3102 	.db #0x00	; 0
      002D24 00                    3103 	.db #0x00	; 0
      002D25 00                    3104 	.db #0x00	; 0
      002D26 0F                    3105 	.db #0x0f	; 15
      002D27 0A                    3106 	.db #0x0a	; 10
      002D28 0A                    3107 	.db #0x0a	; 10
      002D29 0A                    3108 	.db #0x0a	; 10
      002D2A 0A                    3109 	.db #0x0a	; 10
      002D2B 00                    3110 	.db #0x00	; 0
      002D2C 0F                    3111 	.db #0x0f	; 15
      002D2D 08                    3112 	.db #0x08	; 8
      002D2E 0F                    3113 	.db #0x0f	; 15
      002D2F 08                    3114 	.db #0x08	; 8
      002D30 08                    3115 	.db #0x08	; 8
      002D31 08                    3116 	.db #0x08	; 8
      002D32 08                    3117 	.db #0x08	; 8
      002D33 0A                    3118 	.db #0x0a	; 10
      002D34 0B                    3119 	.db #0x0b	; 11
      002D35 08                    3120 	.db #0x08	; 8
      002D36 0B                    3121 	.db #0x0b	; 11
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
      002D42 0A                    3133 	.db #0x0a	; 10
      002D43 00                    3134 	.db #0x00	; 0
      002D44 0F                    3135 	.db #0x0f	; 15
      002D45 08                    3136 	.db #0x08	; 8
      002D46 0B                    3137 	.db #0x0b	; 11
      002D47 0A                    3138 	.db #0x0a	; 10
      002D48 0A                    3139 	.db #0x0a	; 10
      002D49 0A                    3140 	.db #0x0a	; 10
      002D4A 0A                    3141 	.db #0x0a	; 10
      002D4B 0A                    3142 	.db #0x0a	; 10
      002D4C 0B                    3143 	.db #0x0b	; 11
      002D4D 08                    3144 	.db #0x08	; 8
      002D4E 0F                    3145 	.db #0x0f	; 15
      002D4F 00                    3146 	.db #0x00	; 0
      002D50 00                    3147 	.db #0x00	; 0
      002D51 00                    3148 	.db #0x00	; 0
      002D52 00                    3149 	.db #0x00	; 0
      002D53 0A                    3150 	.db #0x0a	; 10
      002D54 0A                    3151 	.db #0x0a	; 10
      002D55 0A                    3152 	.db #0x0a	; 10
      002D56 0F                    3153 	.db #0x0f	; 15
      002D57 00                    3154 	.db #0x00	; 0
      002D58 00                    3155 	.db #0x00	; 0
      002D59 00                    3156 	.db #0x00	; 0
      002D5A 00                    3157 	.db #0x00	; 0
      002D5B 08                    3158 	.db #0x08	; 8
      002D5C 0F                    3159 	.db #0x0f	; 15
      002D5D 08                    3160 	.db #0x08	; 8
      002D5E 0F                    3161 	.db #0x0f	; 15
      002D5F 00                    3162 	.db #0x00	; 0
      002D60 00                    3163 	.db #0x00	; 0
      002D61 00                    3164 	.db #0x00	; 0
      002D62 00                    3165 	.db #0x00	; 0
      002D63 00                    3166 	.db #0x00	; 0
      002D64 00                    3167 	.db #0x00	; 0
      002D65 00                    3168 	.db #0x00	; 0
      002D66 0F                    3169 	.db #0x0f	; 15
      002D67 08                    3170 	.db #0x08	; 8
      002D68 08                    3171 	.db #0x08	; 8
      002D69 08                    3172 	.db #0x08	; 8
      002D6A 08                    3173 	.db #0x08	; 8
      002D6B 08                    3174 	.db #0x08	; 8
      002D6C 08                    3175 	.db #0x08	; 8
      002D6D 08                    3176 	.db #0x08	; 8
      002D6E 38                    3177 	.db #0x38	; 56	'8'
      002D6F 00                    3178 	.db #0x00	; 0
      002D70 00                    3179 	.db #0x00	; 0
      002D71 00                    3180 	.db #0x00	; 0
      002D72 00                    3181 	.db #0x00	; 0
      002D73 08                    3182 	.db #0x08	; 8
      002D74 08                    3183 	.db #0x08	; 8
      002D75 08                    3184 	.db #0x08	; 8
      002D76 3F                    3185 	.db #0x3f	; 63
      002D77 00                    3186 	.db #0x00	; 0
      002D78 00                    3187 	.db #0x00	; 0
      002D79 00                    3188 	.db #0x00	; 0
      002D7A 00                    3189 	.db #0x00	; 0
      002D7B 00                    3190 	.db #0x00	; 0
      002D7C 00                    3191 	.db #0x00	; 0
      002D7D 00                    3192 	.db #0x00	; 0
      002D7E 3F                    3193 	.db #0x3f	; 63
      002D7F 08                    3194 	.db #0x08	; 8
      002D80 08                    3195 	.db #0x08	; 8
      002D81 08                    3196 	.db #0x08	; 8
      002D82 08                    3197 	.db #0x08	; 8
      002D83 08                    3198 	.db #0x08	; 8
      002D84 08                    3199 	.db #0x08	; 8
      002D85 08                    3200 	.db #0x08	; 8
      002D86 38                    3201 	.db #0x38	; 56	'8'
      002D87 08                    3202 	.db #0x08	; 8
      002D88 08                    3203 	.db #0x08	; 8
      002D89 08                    3204 	.db #0x08	; 8
      002D8A 08                    3205 	.db #0x08	; 8
      002D8B 00                    3206 	.db #0x00	; 0
      002D8C 00                    3207 	.db #0x00	; 0
      002D8D 00                    3208 	.db #0x00	; 0
      002D8E 3F                    3209 	.db #0x3f	; 63
      002D8F 00                    3210 	.db #0x00	; 0
      002D90 00                    3211 	.db #0x00	; 0
      002D91 00                    3212 	.db #0x00	; 0
      002D92 00                    3213 	.db #0x00	; 0
      002D93 08                    3214 	.db #0x08	; 8
      002D94 08                    3215 	.db #0x08	; 8
      002D95 08                    3216 	.db #0x08	; 8
      002D96 3F                    3217 	.db #0x3f	; 63
      002D97 08                    3218 	.db #0x08	; 8
      002D98 08                    3219 	.db #0x08	; 8
      002D99 08                    3220 	.db #0x08	; 8
      002D9A 08                    3221 	.db #0x08	; 8
      002D9B 08                    3222 	.db #0x08	; 8
      002D9C 38                    3223 	.db #0x38	; 56	'8'
      002D9D 08                    3224 	.db #0x08	; 8
      002D9E 38                    3225 	.db #0x38	; 56	'8'
      002D9F 08                    3226 	.db #0x08	; 8
      002DA0 08                    3227 	.db #0x08	; 8
      002DA1 08                    3228 	.db #0x08	; 8
      002DA2 08                    3229 	.db #0x08	; 8
      002DA3 0A                    3230 	.db #0x0a	; 10
      002DA4 0A                    3231 	.db #0x0a	; 10
      002DA5 0A                    3232 	.db #0x0a	; 10
      002DA6 3A                    3233 	.db #0x3a	; 58
      002DA7 0A                    3234 	.db #0x0a	; 10
      002DA8 0A                    3235 	.db #0x0a	; 10
      002DA9 0A                    3236 	.db #0x0a	; 10
      002DAA 0A                    3237 	.db #0x0a	; 10
      002DAB 0A                    3238 	.db #0x0a	; 10
      002DAC 3A                    3239 	.db #0x3a	; 58
      002DAD 02                    3240 	.db #0x02	; 2
      002DAE 3E                    3241 	.db #0x3e	; 62
      002DAF 00                    3242 	.db #0x00	; 0
      002DB0 00                    3243 	.db #0x00	; 0
      002DB1 00                    3244 	.db #0x00	; 0
      002DB2 00                    3245 	.db #0x00	; 0
      002DB3 00                    3246 	.db #0x00	; 0
      002DB4 3E                    3247 	.db #0x3e	; 62
      002DB5 02                    3248 	.db #0x02	; 2
      002DB6 3A                    3249 	.db #0x3a	; 58
      002DB7 0A                    3250 	.db #0x0a	; 10
      002DB8 0A                    3251 	.db #0x0a	; 10
      002DB9 0A                    3252 	.db #0x0a	; 10
      002DBA 0A                    3253 	.db #0x0a	; 10
      002DBB 0A                    3254 	.db #0x0a	; 10
      002DBC 3B                    3255 	.db #0x3b	; 59
      002DBD 00                    3256 	.db #0x00	; 0
      002DBE 3F                    3257 	.db #0x3f	; 63
      002DBF 00                    3258 	.db #0x00	; 0
      002DC0 00                    3259 	.db #0x00	; 0
      002DC1 00                    3260 	.db #0x00	; 0
      002DC2 00                    3261 	.db #0x00	; 0
      002DC3 00                    3262 	.db #0x00	; 0
      002DC4 3F                    3263 	.db #0x3f	; 63
      002DC5 00                    3264 	.db #0x00	; 0
      002DC6 3B                    3265 	.db #0x3b	; 59
      002DC7 0A                    3266 	.db #0x0a	; 10
      002DC8 0A                    3267 	.db #0x0a	; 10
      002DC9 0A                    3268 	.db #0x0a	; 10
      002DCA 0A                    3269 	.db #0x0a	; 10
      002DCB 0A                    3270 	.db #0x0a	; 10
      002DCC 3A                    3271 	.db #0x3a	; 58
      002DCD 02                    3272 	.db #0x02	; 2
      002DCE 3A                    3273 	.db #0x3a	; 58
      002DCF 0A                    3274 	.db #0x0a	; 10
      002DD0 0A                    3275 	.db #0x0a	; 10
      002DD1 0A                    3276 	.db #0x0a	; 10
      002DD2 0A                    3277 	.db #0x0a	; 10
      002DD3 00                    3278 	.db #0x00	; 0
      002DD4 3F                    3279 	.db #0x3f	; 63
      002DD5 00                    3280 	.db #0x00	; 0
      002DD6 3F                    3281 	.db #0x3f	; 63
      002DD7 00                    3282 	.db #0x00	; 0
      002DD8 00                    3283 	.db #0x00	; 0
      002DD9 00                    3284 	.db #0x00	; 0
      002DDA 00                    3285 	.db #0x00	; 0
      002DDB 0A                    3286 	.db #0x0a	; 10
      002DDC 3B                    3287 	.db #0x3b	; 59
      002DDD 00                    3288 	.db #0x00	; 0
      002DDE 3B                    3289 	.db #0x3b	; 59
      002DDF 0A                    3290 	.db #0x0a	; 10
      002DE0 0A                    3291 	.db #0x0a	; 10
      002DE1 0A                    3292 	.db #0x0a	; 10
      002DE2 0A                    3293 	.db #0x0a	; 10
      002DE3 08                    3294 	.db #0x08	; 8
      002DE4 3F                    3295 	.db #0x3f	; 63
      002DE5 00                    3296 	.db #0x00	; 0
      002DE6 3F                    3297 	.db #0x3f	; 63
      002DE7 00                    3298 	.db #0x00	; 0
      002DE8 00                    3299 	.db #0x00	; 0
      002DE9 00                    3300 	.db #0x00	; 0
      002DEA 00                    3301 	.db #0x00	; 0
      002DEB 0A                    3302 	.db #0x0a	; 10
      002DEC 0A                    3303 	.db #0x0a	; 10
      002DED 0A                    3304 	.db #0x0a	; 10
      002DEE 3F                    3305 	.db #0x3f	; 63
      002DEF 00                    3306 	.db #0x00	; 0
      002DF0 00                    3307 	.db #0x00	; 0
      002DF1 00                    3308 	.db #0x00	; 0
      002DF2 00                    3309 	.db #0x00	; 0
      002DF3 00                    3310 	.db #0x00	; 0
      002DF4 3F                    3311 	.db #0x3f	; 63
      002DF5 00                    3312 	.db #0x00	; 0
      002DF6 3F                    3313 	.db #0x3f	; 63
      002DF7 08                    3314 	.db #0x08	; 8
      002DF8 08                    3315 	.db #0x08	; 8
      002DF9 08                    3316 	.db #0x08	; 8
      002DFA 08                    3317 	.db #0x08	; 8
      002DFB 00                    3318 	.db #0x00	; 0
      002DFC 00                    3319 	.db #0x00	; 0
      002DFD 00                    3320 	.db #0x00	; 0
      002DFE 3F                    3321 	.db #0x3f	; 63
      002DFF 0A                    3322 	.db #0x0a	; 10
      002E00 0A                    3323 	.db #0x0a	; 10
      002E01 0A                    3324 	.db #0x0a	; 10
      002E02 0A                    3325 	.db #0x0a	; 10
      002E03 0A                    3326 	.db #0x0a	; 10
      002E04 0A                    3327 	.db #0x0a	; 10
      002E05 0A                    3328 	.db #0x0a	; 10
      002E06 3E                    3329 	.db #0x3e	; 62
      002E07 00                    3330 	.db #0x00	; 0
      002E08 00                    3331 	.db #0x00	; 0
      002E09 00                    3332 	.db #0x00	; 0
      002E0A 00                    3333 	.db #0x00	; 0
      002E0B 08                    3334 	.db #0x08	; 8
      002E0C 38                    3335 	.db #0x38	; 56	'8'
      002E0D 08                    3336 	.db #0x08	; 8
      002E0E 38                    3337 	.db #0x38	; 56	'8'
      002E0F 00                    3338 	.db #0x00	; 0
      002E10 00                    3339 	.db #0x00	; 0
      002E11 00                    3340 	.db #0x00	; 0
      002E12 00                    3341 	.db #0x00	; 0
      002E13 00                    3342 	.db #0x00	; 0
      002E14 38                    3343 	.db #0x38	; 56	'8'
      002E15 08                    3344 	.db #0x08	; 8
      002E16 38                    3345 	.db #0x38	; 56	'8'
      002E17 08                    3346 	.db #0x08	; 8
      002E18 08                    3347 	.db #0x08	; 8
      002E19 08                    3348 	.db #0x08	; 8
      002E1A 08                    3349 	.db #0x08	; 8
      002E1B 00                    3350 	.db #0x00	; 0
      002E1C 00                    3351 	.db #0x00	; 0
      002E1D 00                    3352 	.db #0x00	; 0
      002E1E 3E                    3353 	.db #0x3e	; 62
      002E1F 0A                    3354 	.db #0x0a	; 10
      002E20 0A                    3355 	.db #0x0a	; 10
      002E21 0A                    3356 	.db #0x0a	; 10
      002E22 0A                    3357 	.db #0x0a	; 10
      002E23 0A                    3358 	.db #0x0a	; 10
      002E24 0A                    3359 	.db #0x0a	; 10
      002E25 0A                    3360 	.db #0x0a	; 10
      002E26 3B                    3361 	.db #0x3b	; 59
      002E27 0A                    3362 	.db #0x0a	; 10
      002E28 0A                    3363 	.db #0x0a	; 10
      002E29 0A                    3364 	.db #0x0a	; 10
      002E2A 0A                    3365 	.db #0x0a	; 10
      002E2B 08                    3366 	.db #0x08	; 8
      002E2C 3F                    3367 	.db #0x3f	; 63
      002E2D 00                    3368 	.db #0x00	; 0
      002E2E 3F                    3369 	.db #0x3f	; 63
      002E2F 08                    3370 	.db #0x08	; 8
      002E30 08                    3371 	.db #0x08	; 8
      002E31 08                    3372 	.db #0x08	; 8
      002E32 08                    3373 	.db #0x08	; 8
      002E33 08                    3374 	.db #0x08	; 8
      002E34 08                    3375 	.db #0x08	; 8
      002E35 08                    3376 	.db #0x08	; 8
      002E36 0F                    3377 	.db #0x0f	; 15
      002E37 00                    3378 	.db #0x00	; 0
      002E38 00                    3379 	.db #0x00	; 0
      002E39 00                    3380 	.db #0x00	; 0
      002E3A 00                    3381 	.db #0x00	; 0
      002E3B 00                    3382 	.db #0x00	; 0
      002E3C 00                    3383 	.db #0x00	; 0
      002E3D 00                    3384 	.db #0x00	; 0
      002E3E 38                    3385 	.db #0x38	; 56	'8'
      002E3F 08                    3386 	.db #0x08	; 8
      002E40 08                    3387 	.db #0x08	; 8
      002E41 08                    3388 	.db #0x08	; 8
      002E42 08                    3389 	.db #0x08	; 8
      002E43 3F                    3390 	.db #0x3f	; 63
      002E44 3F                    3391 	.db #0x3f	; 63
      002E45 3F                    3392 	.db #0x3f	; 63
      002E46 3F                    3393 	.db #0x3f	; 63
      002E47 3F                    3394 	.db #0x3f	; 63
      002E48 3F                    3395 	.db #0x3f	; 63
      002E49 3F                    3396 	.db #0x3f	; 63
      002E4A 3F                    3397 	.db #0x3f	; 63
      002E4B 00                    3398 	.db #0x00	; 0
      002E4C 00                    3399 	.db #0x00	; 0
      002E4D 00                    3400 	.db #0x00	; 0
      002E4E 00                    3401 	.db #0x00	; 0
      002E4F 3F                    3402 	.db #0x3f	; 63
      002E50 3F                    3403 	.db #0x3f	; 63
      002E51 3F                    3404 	.db #0x3f	; 63
      002E52 3F                    3405 	.db #0x3f	; 63
      002E53 07                    3406 	.db #0x07	; 7
      002E54 07                    3407 	.db #0x07	; 7
      002E55 07                    3408 	.db #0x07	; 7
      002E56 07                    3409 	.db #0x07	; 7
      002E57 07                    3410 	.db #0x07	; 7
      002E58 07                    3411 	.db #0x07	; 7
      002E59 07                    3412 	.db #0x07	; 7
      002E5A 07                    3413 	.db #0x07	; 7
      002E5B 38                    3414 	.db #0x38	; 56	'8'
      002E5C 38                    3415 	.db #0x38	; 56	'8'
      002E5D 38                    3416 	.db #0x38	; 56	'8'
      002E5E 38                    3417 	.db #0x38	; 56	'8'
      002E5F 38                    3418 	.db #0x38	; 56	'8'
      002E60 38                    3419 	.db #0x38	; 56	'8'
      002E61 38                    3420 	.db #0x38	; 56	'8'
      002E62 38                    3421 	.db #0x38	; 56	'8'
      002E63 3F                    3422 	.db #0x3f	; 63
      002E64 3F                    3423 	.db #0x3f	; 63
      002E65 3F                    3424 	.db #0x3f	; 63
      002E66 3F                    3425 	.db #0x3f	; 63
      002E67 00                    3426 	.db #0x00	; 0
      002E68 00                    3427 	.db #0x00	; 0
      002E69 00                    3428 	.db #0x00	; 0
      002E6A 00                    3429 	.db #0x00	; 0
      002E6B 00                    3430 	.db #0x00	; 0
      002E6C 00                    3431 	.db #0x00	; 0
      002E6D 2C                    3432 	.db #0x2c	; 44
      002E6E 12                    3433 	.db #0x12	; 18
      002E6F 12                    3434 	.db #0x12	; 18
      002E70 2C                    3435 	.db #0x2c	; 44
      002E71 00                    3436 	.db #0x00	; 0
      002E72 00                    3437 	.db #0x00	; 0
      002E73 00                    3438 	.db #0x00	; 0
      002E74 0E                    3439 	.db #0x0e	; 14
      002E75 12                    3440 	.db #0x12	; 18
      002E76 0E                    3441 	.db #0x0e	; 14
      002E77 12                    3442 	.db #0x12	; 18
      002E78 12                    3443 	.db #0x12	; 18
      002E79 0E                    3444 	.db #0x0e	; 14
      002E7A 02                    3445 	.db #0x02	; 2
      002E7B 1E                    3446 	.db #0x1e	; 30
      002E7C 12                    3447 	.db #0x12	; 18
      002E7D 02                    3448 	.db #0x02	; 2
      002E7E 02                    3449 	.db #0x02	; 2
      002E7F 02                    3450 	.db #0x02	; 2
      002E80 02                    3451 	.db #0x02	; 2
      002E81 02                    3452 	.db #0x02	; 2
      002E82 00                    3453 	.db #0x00	; 0
      002E83 00                    3454 	.db #0x00	; 0
      002E84 3E                    3455 	.db #0x3e	; 62
      002E85 14                    3456 	.db #0x14	; 20
      002E86 14                    3457 	.db #0x14	; 20
      002E87 14                    3458 	.db #0x14	; 20
      002E88 14                    3459 	.db #0x14	; 20
      002E89 14                    3460 	.db #0x14	; 20
      002E8A 00                    3461 	.db #0x00	; 0
      002E8B 1E                    3462 	.db #0x1e	; 30
      002E8C 12                    3463 	.db #0x12	; 18
      002E8D 04                    3464 	.db #0x04	; 4
      002E8E 08                    3465 	.db #0x08	; 8
      002E8F 04                    3466 	.db #0x04	; 4
      002E90 12                    3467 	.db #0x12	; 18
      002E91 1E                    3468 	.db #0x1e	; 30
      002E92 00                    3469 	.db #0x00	; 0
      002E93 00                    3470 	.db #0x00	; 0
      002E94 00                    3471 	.db #0x00	; 0
      002E95 3C                    3472 	.db #0x3c	; 60
      002E96 12                    3473 	.db #0x12	; 18
      002E97 12                    3474 	.db #0x12	; 18
      002E98 0C                    3475 	.db #0x0c	; 12
      002E99 00                    3476 	.db #0x00	; 0
      002E9A 00                    3477 	.db #0x00	; 0
      002E9B 00                    3478 	.db #0x00	; 0
      002E9C 00                    3479 	.db #0x00	; 0
      002E9D 12                    3480 	.db #0x12	; 18
      002E9E 12                    3481 	.db #0x12	; 18
      002E9F 12                    3482 	.db #0x12	; 18
      002EA0 0E                    3483 	.db #0x0e	; 14
      002EA1 02                    3484 	.db #0x02	; 2
      002EA2 02                    3485 	.db #0x02	; 2
      002EA3 00                    3486 	.db #0x00	; 0
      002EA4 00                    3487 	.db #0x00	; 0
      002EA5 14                    3488 	.db #0x14	; 20
      002EA6 0A                    3489 	.db #0x0a	; 10
      002EA7 08                    3490 	.db #0x08	; 8
      002EA8 08                    3491 	.db #0x08	; 8
      002EA9 08                    3492 	.db #0x08	; 8
      002EAA 00                    3493 	.db #0x00	; 0
      002EAB 1C                    3494 	.db #0x1c	; 28
      002EAC 08                    3495 	.db #0x08	; 8
      002EAD 1C                    3496 	.db #0x1c	; 28
      002EAE 22                    3497 	.db #0x22	; 34
      002EAF 1C                    3498 	.db #0x1c	; 28
      002EB0 08                    3499 	.db #0x08	; 8
      002EB1 1C                    3500 	.db #0x1c	; 28
      002EB2 00                    3501 	.db #0x00	; 0
      002EB3 0C                    3502 	.db #0x0c	; 12
      002EB4 12                    3503 	.db #0x12	; 18
      002EB5 12                    3504 	.db #0x12	; 18
      002EB6 1E                    3505 	.db #0x1e	; 30
      002EB7 12                    3506 	.db #0x12	; 18
      002EB8 12                    3507 	.db #0x12	; 18
      002EB9 0C                    3508 	.db #0x0c	; 12
      002EBA 00                    3509 	.db #0x00	; 0
      002EBB 00                    3510 	.db #0x00	; 0
      002EBC 1C                    3511 	.db #0x1c	; 28
      002EBD 22                    3512 	.db #0x22	; 34
      002EBE 22                    3513 	.db #0x22	; 34
      002EBF 14                    3514 	.db #0x14	; 20
      002EC0 14                    3515 	.db #0x14	; 20
      002EC1 36                    3516 	.db #0x36	; 54	'6'
      002EC2 00                    3517 	.db #0x00	; 0
      002EC3 0C                    3518 	.db #0x0c	; 12
      002EC4 02                    3519 	.db #0x02	; 2
      002EC5 04                    3520 	.db #0x04	; 4
      002EC6 08                    3521 	.db #0x08	; 8
      002EC7 1C                    3522 	.db #0x1c	; 28
      002EC8 12                    3523 	.db #0x12	; 18
      002EC9 0C                    3524 	.db #0x0c	; 12
      002ECA 00                    3525 	.db #0x00	; 0
      002ECB 00                    3526 	.db #0x00	; 0
      002ECC 00                    3527 	.db #0x00	; 0
      002ECD 14                    3528 	.db #0x14	; 20
      002ECE 2A                    3529 	.db #0x2a	; 42
      002ECF 2A                    3530 	.db #0x2a	; 42
      002ED0 14                    3531 	.db #0x14	; 20
      002ED1 00                    3532 	.db #0x00	; 0
      002ED2 00                    3533 	.db #0x00	; 0
      002ED3 00                    3534 	.db #0x00	; 0
      002ED4 08                    3535 	.db #0x08	; 8
      002ED5 1C                    3536 	.db #0x1c	; 28
      002ED6 2A                    3537 	.db #0x2a	; 42
      002ED7 2A                    3538 	.db #0x2a	; 42
      002ED8 1C                    3539 	.db #0x1c	; 28
      002ED9 08                    3540 	.db #0x08	; 8
      002EDA 00                    3541 	.db #0x00	; 0
      002EDB 00                    3542 	.db #0x00	; 0
      002EDC 1C                    3543 	.db #0x1c	; 28
      002EDD 02                    3544 	.db #0x02	; 2
      002EDE 1E                    3545 	.db #0x1e	; 30
      002EDF 02                    3546 	.db #0x02	; 2
      002EE0 1C                    3547 	.db #0x1c	; 28
      002EE1 00                    3548 	.db #0x00	; 0
      002EE2 00                    3549 	.db #0x00	; 0
      002EE3 00                    3550 	.db #0x00	; 0
      002EE4 0C                    3551 	.db #0x0c	; 12
      002EE5 12                    3552 	.db #0x12	; 18
      002EE6 12                    3553 	.db #0x12	; 18
      002EE7 12                    3554 	.db #0x12	; 18
      002EE8 12                    3555 	.db #0x12	; 18
      002EE9 00                    3556 	.db #0x00	; 0
      002EEA 00                    3557 	.db #0x00	; 0
      002EEB 00                    3558 	.db #0x00	; 0
      002EEC 1E                    3559 	.db #0x1e	; 30
      002EED 00                    3560 	.db #0x00	; 0
      002EEE 1E                    3561 	.db #0x1e	; 30
      002EEF 00                    3562 	.db #0x00	; 0
      002EF0 1E                    3563 	.db #0x1e	; 30
      002EF1 00                    3564 	.db #0x00	; 0
      002EF2 00                    3565 	.db #0x00	; 0
      002EF3 00                    3566 	.db #0x00	; 0
      002EF4 08                    3567 	.db #0x08	; 8
      002EF5 1C                    3568 	.db #0x1c	; 28
      002EF6 08                    3569 	.db #0x08	; 8
      002EF7 00                    3570 	.db #0x00	; 0
      002EF8 1C                    3571 	.db #0x1c	; 28
      002EF9 00                    3572 	.db #0x00	; 0
      002EFA 00                    3573 	.db #0x00	; 0
      002EFB 02                    3574 	.db #0x02	; 2
      002EFC 0C                    3575 	.db #0x0c	; 12
      002EFD 10                    3576 	.db #0x10	; 16
      002EFE 0C                    3577 	.db #0x0c	; 12
      002EFF 02                    3578 	.db #0x02	; 2
      002F00 00                    3579 	.db #0x00	; 0
      002F01 1E                    3580 	.db #0x1e	; 30
      002F02 00                    3581 	.db #0x00	; 0
      002F03 10                    3582 	.db #0x10	; 16
      002F04 0C                    3583 	.db #0x0c	; 12
      002F05 02                    3584 	.db #0x02	; 2
      002F06 0C                    3585 	.db #0x0c	; 12
      002F07 10                    3586 	.db #0x10	; 16
      002F08 00                    3587 	.db #0x00	; 0
      002F09 1E                    3588 	.db #0x1e	; 30
      002F0A 00                    3589 	.db #0x00	; 0
      002F0B 00                    3590 	.db #0x00	; 0
      002F0C 10                    3591 	.db #0x10	; 16
      002F0D 28                    3592 	.db #0x28	; 40
      002F0E 08                    3593 	.db #0x08	; 8
      002F0F 08                    3594 	.db #0x08	; 8
      002F10 08                    3595 	.db #0x08	; 8
      002F11 08                    3596 	.db #0x08	; 8
      002F12 08                    3597 	.db #0x08	; 8
      002F13 08                    3598 	.db #0x08	; 8
      002F14 08                    3599 	.db #0x08	; 8
      002F15 08                    3600 	.db #0x08	; 8
      002F16 08                    3601 	.db #0x08	; 8
      002F17 08                    3602 	.db #0x08	; 8
      002F18 0A                    3603 	.db #0x0a	; 10
      002F19 04                    3604 	.db #0x04	; 4
      002F1A 00                    3605 	.db #0x00	; 0
      002F1B 00                    3606 	.db #0x00	; 0
      002F1C 08                    3607 	.db #0x08	; 8
      002F1D 00                    3608 	.db #0x00	; 0
      002F1E 3E                    3609 	.db #0x3e	; 62
      002F1F 00                    3610 	.db #0x00	; 0
      002F20 08                    3611 	.db #0x08	; 8
      002F21 00                    3612 	.db #0x00	; 0
      002F22 00                    3613 	.db #0x00	; 0
      002F23 00                    3614 	.db #0x00	; 0
      002F24 14                    3615 	.db #0x14	; 20
      002F25 0A                    3616 	.db #0x0a	; 10
      002F26 00                    3617 	.db #0x00	; 0
      002F27 14                    3618 	.db #0x14	; 20
      002F28 0A                    3619 	.db #0x0a	; 10
      002F29 00                    3620 	.db #0x00	; 0
      002F2A 00                    3621 	.db #0x00	; 0
      002F2B 0C                    3622 	.db #0x0c	; 12
      002F2C 12                    3623 	.db #0x12	; 18
      002F2D 12                    3624 	.db #0x12	; 18
      002F2E 0C                    3625 	.db #0x0c	; 12
      002F2F 00                    3626 	.db #0x00	; 0
      002F30 00                    3627 	.db #0x00	; 0
      002F31 00                    3628 	.db #0x00	; 0
      002F32 00                    3629 	.db #0x00	; 0
      002F33 00                    3630 	.db #0x00	; 0
      002F34 00                    3631 	.db #0x00	; 0
      002F35 00                    3632 	.db #0x00	; 0
      002F36 0C                    3633 	.db #0x0c	; 12
      002F37 0C                    3634 	.db #0x0c	; 12
      002F38 00                    3635 	.db #0x00	; 0
      002F39 00                    3636 	.db #0x00	; 0
      002F3A 00                    3637 	.db #0x00	; 0
      002F3B 00                    3638 	.db #0x00	; 0
      002F3C 00                    3639 	.db #0x00	; 0
      002F3D 00                    3640 	.db #0x00	; 0
      002F3E 04                    3641 	.db #0x04	; 4
      002F3F 00                    3642 	.db #0x00	; 0
      002F40 00                    3643 	.db #0x00	; 0
      002F41 00                    3644 	.db #0x00	; 0
      002F42 00                    3645 	.db #0x00	; 0
      002F43 00                    3646 	.db #0x00	; 0
      002F44 38                    3647 	.db #0x38	; 56	'8'
      002F45 08                    3648 	.db #0x08	; 8
      002F46 08                    3649 	.db #0x08	; 8
      002F47 0A                    3650 	.db #0x0a	; 10
      002F48 0A                    3651 	.db #0x0a	; 10
      002F49 04                    3652 	.db #0x04	; 4
      002F4A 00                    3653 	.db #0x00	; 0
      002F4B 0A                    3654 	.db #0x0a	; 10
      002F4C 14                    3655 	.db #0x14	; 20
      002F4D 14                    3656 	.db #0x14	; 20
      002F4E 14                    3657 	.db #0x14	; 20
      002F4F 00                    3658 	.db #0x00	; 0
      002F50 00                    3659 	.db #0x00	; 0
      002F51 00                    3660 	.db #0x00	; 0
      002F52 00                    3661 	.db #0x00	; 0
      002F53 06                    3662 	.db #0x06	; 6
      002F54 08                    3663 	.db #0x08	; 8
      002F55 04                    3664 	.db #0x04	; 4
      002F56 0E                    3665 	.db #0x0e	; 14
      002F57 00                    3666 	.db #0x00	; 0
      002F58 00                    3667 	.db #0x00	; 0
      002F59 00                    3668 	.db #0x00	; 0
      002F5A 00                    3669 	.db #0x00	; 0
      002F5B 00                    3670 	.db #0x00	; 0
      002F5C 00                    3671 	.db #0x00	; 0
      002F5D 1E                    3672 	.db #0x1e	; 30
      002F5E 1E                    3673 	.db #0x1e	; 30
      002F5F 1E                    3674 	.db #0x1e	; 30
      002F60 1E                    3675 	.db #0x1e	; 30
      002F61 00                    3676 	.db #0x00	; 0
      002F62 00                    3677 	.db #0x00	; 0
      002F63 00                    3678 	.db #0x00	; 0
      002F64 00                    3679 	.db #0x00	; 0
      002F65 00                    3680 	.db #0x00	; 0
      002F66 00                    3681 	.db #0x00	; 0
      002F67 00                    3682 	.db #0x00	; 0
      002F68 00                    3683 	.db #0x00	; 0
      002F69 00                    3684 	.db #0x00	; 0
      002F6A 00                    3685 	.db #0x00	; 0
      002F6B                       3686 __xinit__initial:
      002F6B 39 27 80              3687 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3688 	.area CABS    (ABS,CODE)
