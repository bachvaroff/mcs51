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
      00200B 02 21 5D         [24]  375 	ljmp	_timer0_intr
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
                                    389 ;	disp.c:123: __idata const uint8_t dsdcol[8] = {
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
                                    406 ;	disp.c:127: __idata const uint8_t sddcol[8] = {
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
      00200E 02 23 43         [24]  431 	ljmp	_main
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
                                    478 ;	disp.c:42: __endasm;
      0020BB 74 FF            [12]  479 	mov	a, #0xff
      0020BD F5 F0            [12]  480 	mov	b, a
      0020BF 30 98 07         [24]  481 	jnb	ri, nochar
      0020C2 E5 99            [12]  482 	mov	a, sbuf
      0020C4 C2 98            [12]  483 	clr	ri
      0020C6 75 F0 00         [24]  484 	mov	b, #0
      0020C9                        485 	nochar:
      0020C9 F5 82            [12]  486 	mov	dpl, a
      0020CB 85 F0 83         [24]  487 	mov	dph, b
      0020CE 22               [24]  488 	ret
                                    489 ;	disp.c:43: }
                                    490 ;	naked function: no epilogue.
                                    491 ;------------------------------------------------------------
                                    492 ;Allocation info for local variables in function 'gpo_init'
                                    493 ;------------------------------------------------------------
                                    494 ;	disp.c:82: void gpo_init(void) {
                                    495 ;	-----------------------------------------
                                    496 ;	 function gpo_init
                                    497 ;	-----------------------------------------
      0020CF                        498 _gpo_init:
                           000007   499 	ar7 = 0x07
                           000006   500 	ar6 = 0x06
                           000005   501 	ar5 = 0x05
                           000004   502 	ar4 = 0x04
                           000003   503 	ar3 = 0x03
                           000002   504 	ar2 = 0x02
                           000001   505 	ar1 = 0x01
                           000000   506 	ar0 = 0x00
                                    507 ;	disp.c:83: P1_7 = 0;
                                    508 ;	assignBit
      0020CF C2 97            [12]  509 	clr	_P1_7
                                    510 ;	disp.c:88: __endasm;
      0020D1 00               [12]  511 	nop
      0020D2 00               [12]  512 	nop
      0020D3 00               [12]  513 	nop
                                    514 ;	disp.c:90: P2 = GPO_BASE_H;
      0020D4 75 A0 F0         [24]  515 	mov	_P2,#0xf0
                                    516 ;	disp.c:92: GPO_CLEAR;
      0020D7 78 06            [12]  517 	mov	r0,#(_gpo + 0x0006)
      0020D9 74 3F            [12]  518 	mov	a,#0x3f
      0020DB F2               [24]  519 	movx	@r0,a
      0020DC 78 00            [12]  520 	mov	r0,#_gpo
      0020DE E4               [12]  521 	clr	a
      0020DF F2               [24]  522 	movx	@r0,a
      0020E0 78 01            [12]  523 	mov	r0,#(_gpo + 0x0001)
      0020E2 F2               [24]  524 	movx	@r0,a
      0020E3 78 02            [12]  525 	mov	r0,#(_gpo + 0x0002)
      0020E5 F2               [24]  526 	movx	@r0,a
      0020E6 78 03            [12]  527 	mov	r0,#(_gpo + 0x0003)
      0020E8 F2               [24]  528 	movx	@r0,a
      0020E9 78 04            [12]  529 	mov	r0,#(_gpo + 0x0004)
      0020EB F2               [24]  530 	movx	@r0,a
      0020EC 78 05            [12]  531 	mov	r0,#(_gpo + 0x0005)
      0020EE F2               [24]  532 	movx	@r0,a
                                    533 ;	disp.c:94: return;
                                    534 ;	disp.c:95: }
      0020EF 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'gpo_clear'
                                    538 ;------------------------------------------------------------
                                    539 ;	disp.c:97: void gpo_clear(void) {
                                    540 ;	-----------------------------------------
                                    541 ;	 function gpo_clear
                                    542 ;	-----------------------------------------
      0020F0                        543 _gpo_clear:
                                    544 ;	disp.c:98: GPO_CLEAR;
      0020F0 78 06            [12]  545 	mov	r0,#(_gpo + 0x0006)
      0020F2 74 3F            [12]  546 	mov	a,#0x3f
      0020F4 F2               [24]  547 	movx	@r0,a
      0020F5 78 00            [12]  548 	mov	r0,#_gpo
      0020F7 E4               [12]  549 	clr	a
      0020F8 F2               [24]  550 	movx	@r0,a
      0020F9 78 01            [12]  551 	mov	r0,#(_gpo + 0x0001)
      0020FB F2               [24]  552 	movx	@r0,a
      0020FC 78 02            [12]  553 	mov	r0,#(_gpo + 0x0002)
      0020FE F2               [24]  554 	movx	@r0,a
      0020FF 78 03            [12]  555 	mov	r0,#(_gpo + 0x0003)
      002101 F2               [24]  556 	movx	@r0,a
      002102 78 04            [12]  557 	mov	r0,#(_gpo + 0x0004)
      002104 F2               [24]  558 	movx	@r0,a
      002105 78 05            [12]  559 	mov	r0,#(_gpo + 0x0005)
      002107 F2               [24]  560 	movx	@r0,a
                                    561 ;	disp.c:100: return;
                                    562 ;	disp.c:101: }
      002108 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'init_intr'
                                    566 ;------------------------------------------------------------
                                    567 ;	disp.c:135: void init_intr(void) {
                                    568 ;	-----------------------------------------
                                    569 ;	 function init_intr
                                    570 ;	-----------------------------------------
      002109                        571 _init_intr:
                                    572 ;	disp.c:136: TR0 = 0;
                                    573 ;	assignBit
      002109 C2 8C            [12]  574 	clr	_TR0
                                    575 ;	disp.c:137: TR1 = 0;
                                    576 ;	assignBit
      00210B C2 8E            [12]  577 	clr	_TR1
                                    578 ;	disp.c:138: ET0 = 1;
                                    579 ;	assignBit
      00210D D2 A9            [12]  580 	setb	_ET0
                                    581 ;	disp.c:139: ET1 = 0;
                                    582 ;	assignBit
      00210F C2 AB            [12]  583 	clr	_ET1
                                    584 ;	disp.c:140: EA = 1;
                                    585 ;	assignBit
      002111 D2 AF            [12]  586 	setb	_EA
                                    587 ;	disp.c:142: return;
                                    588 ;	disp.c:143: }
      002113 22               [24]  589 	ret
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'init_timer0'
                                    592 ;------------------------------------------------------------
                                    593 ;	disp.c:145: void init_timer0(void) {
                                    594 ;	-----------------------------------------
                                    595 ;	 function init_timer0
                                    596 ;	-----------------------------------------
      002114                        597 _init_timer0:
                                    598 ;	disp.c:146: TR0 = 0;
                                    599 ;	assignBit
      002114 C2 8C            [12]  600 	clr	_TR0
                                    601 ;	disp.c:147: TMOD |= 0x01;
      002116 43 89 01         [24]  602 	orl	_TMOD,#0x01
                                    603 ;	disp.c:148: TH0 = TR0_COUNT >> 8;
      002119 75 8C F8         [24]  604 	mov	_TH0,#0xf8
                                    605 ;	disp.c:149: TL0 = TR0_COUNT & 0xffu;
      00211C 75 8A 00         [24]  606 	mov	_TL0,#0x00
                                    607 ;	disp.c:151: return;
                                    608 ;	disp.c:152: }
      00211F 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'init_timer1'
                                    612 ;------------------------------------------------------------
                                    613 ;	disp.c:154: void init_timer1(void) {
                                    614 ;	-----------------------------------------
                                    615 ;	 function init_timer1
                                    616 ;	-----------------------------------------
      002120                        617 _init_timer1:
                                    618 ;	disp.c:155: TR1 = 0;
                                    619 ;	assignBit
      002120 C2 8E            [12]  620 	clr	_TR1
                                    621 ;	disp.c:156: TMOD |= 0x10;
      002122 43 89 10         [24]  622 	orl	_TMOD,#0x10
                                    623 ;	disp.c:157: TH1 = TR1_COUNT_0 >> 8;
      002125 75 8D 00         [24]  624 	mov	_TH1,#0x00
                                    625 ;	disp.c:158: TL1 = TR1_COUNT_0 & 0xffu;
      002128 75 8B 00         [24]  626 	mov	_TL1,#0x00
                                    627 ;	disp.c:160: return;
                                    628 ;	disp.c:161: }
      00212B 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'init_disp'
                                    632 ;------------------------------------------------------------
                                    633 ;	disp.c:163: void init_disp(void) {
                                    634 ;	-----------------------------------------
                                    635 ;	 function init_disp
                                    636 ;	-----------------------------------------
      00212C                        637 _init_disp:
                                    638 ;	disp.c:164: GPO_SETREG(DISP_COL, 0u);
      00212C 78 05            [12]  639 	mov	r0,#(_gpo + 0x0005)
      00212E E4               [12]  640 	clr	a
      00212F F2               [24]  641 	movx	@r0,a
                                    642 ;	disp.c:165: GPO_SETREG(DISP_DATA, 0u);
      002130 78 04            [12]  643 	mov	r0,#(_gpo + 0x0004)
      002132 F2               [24]  644 	movx	@r0,a
                                    645 ;	disp.c:166: OE = 0x0fu; /* 00_001111 */
      002133 78 3A            [12]  646 	mov	r0,#_OE
      002135 76 0F            [12]  647 	mov	@r0,#0x0f
                                    648 ;	disp.c:167: GPO_SETOE(OE);
      002137 78 06            [12]  649 	mov	r0,#(_gpo + 0x0006)
      002139 74 0F            [12]  650 	mov	a,#0x0f
      00213B F2               [24]  651 	movx	@r0,a
                                    652 ;	disp.c:169: for (column = 0u; column < 8u; column++)
      00213C 78 39            [12]  653 	mov	r0,#_column
      00213E 76 00            [12]  654 	mov	@r0,#0x00
      002140                        655 00112$:
      002140 78 39            [12]  656 	mov	r0,#_column
      002142 B6 08 00         [24]  657 	cjne	@r0,#0x08,00124$
      002145                        658 00124$:
      002145 50 11            [24]  659 	jnc	00110$
                                    660 ;	disp.c:170: ddata[column] = 0u;
      002147 78 39            [12]  661 	mov	r0,#_column
      002149 E6               [12]  662 	mov	a,@r0
      00214A 24 31            [12]  663 	add	a,#_ddata
      00214C F8               [12]  664 	mov	r0,a
      00214D 76 00            [12]  665 	mov	@r0,#0x00
                                    666 ;	disp.c:169: for (column = 0u; column < 8u; column++)
      00214F 78 39            [12]  667 	mov	r0,#_column
      002151 E6               [12]  668 	mov	a,@r0
      002152 78 39            [12]  669 	mov	r0,#_column
      002154 04               [12]  670 	inc	a
      002155 F6               [12]  671 	mov	@r0,a
      002156 80 E8            [24]  672 	sjmp	00112$
      002158                        673 00110$:
                                    674 ;	disp.c:171: column = 0u;
      002158 78 39            [12]  675 	mov	r0,#_column
      00215A 76 00            [12]  676 	mov	@r0,#0x00
                                    677 ;	disp.c:173: return;
                                    678 ;	disp.c:174: }
      00215C 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'timer0_intr'
                                    682 ;------------------------------------------------------------
                                    683 ;t                         Allocated to registers r7 
                                    684 ;------------------------------------------------------------
                                    685 ;	disp.c:176: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    686 ;	-----------------------------------------
                                    687 ;	 function timer0_intr
                                    688 ;	-----------------------------------------
      00215D                        689 _timer0_intr:
                           00000F   690 	ar7 = 0x0f
                           00000E   691 	ar6 = 0x0e
                           00000D   692 	ar5 = 0x0d
                           00000C   693 	ar4 = 0x0c
                           00000B   694 	ar3 = 0x0b
                           00000A   695 	ar2 = 0x0a
                           000009   696 	ar1 = 0x09
                           000008   697 	ar0 = 0x08
      00215D C0 E0            [24]  698 	push	acc
      00215F C0 D0            [24]  699 	push	psw
      002161 75 D0 08         [24]  700 	mov	psw,#0x08
                                    701 ;	disp.c:179: t = column & 7u;
      002164 78 39            [12]  702 	mov	r0,#_column
      002166 86 0F            [24]  703 	mov	ar7,@r0
      002168 53 0F 07         [24]  704 	anl	ar7,#0x07
                                    705 ;	disp.c:180: GPO_SETREG(DISP_COL, 0u);
      00216B 78 05            [12]  706 	mov	r0,#(_gpo + 0x0005)
      00216D E4               [12]  707 	clr	a
      00216E F2               [24]  708 	movx	@r0,a
                                    709 ;	disp.c:181: GPO_SETREG(DISP_DATA, ddata[t]);
      00216F EF               [12]  710 	mov	a,r7
      002170 24 31            [12]  711 	add	a,#_ddata
      002172 F9               [12]  712 	mov	r1,a
      002173 87 0E            [24]  713 	mov	ar6,@r1
      002175 78 04            [12]  714 	mov	r0,#(_gpo + 0x0004)
      002177 EE               [12]  715 	mov	a,r6
      002178 F2               [24]  716 	movx	@r0,a
                                    717 ;	disp.c:182: GPO_SETREG(DISP_COL, dsdcol[t]);
      002179 EF               [12]  718 	mov	a,r7
      00217A 24 21            [12]  719 	add	a,#_dsdcol
      00217C F9               [12]  720 	mov	r1,a
      00217D 87 0F            [24]  721 	mov	ar7,@r1
      00217F 78 05            [12]  722 	mov	r0,#(_gpo + 0x0005)
      002181 EF               [12]  723 	mov	a,r7
      002182 F2               [24]  724 	movx	@r0,a
                                    725 ;	disp.c:183: column++;
      002183 78 39            [12]  726 	mov	r0,#_column
      002185 E6               [12]  727 	mov	a,@r0
      002186 78 39            [12]  728 	mov	r0,#_column
      002188 04               [12]  729 	inc	a
      002189 F6               [12]  730 	mov	@r0,a
                                    731 ;	disp.c:185: TR0 = 0;
                                    732 ;	assignBit
      00218A C2 8C            [12]  733 	clr	_TR0
                                    734 ;	disp.c:186: TH0 = TR0_COUNT >> 8;
      00218C 75 8C F8         [24]  735 	mov	_TH0,#0xf8
                                    736 ;	disp.c:187: TL0 = TR0_COUNT & 0xffu;
      00218F 75 8A 00         [24]  737 	mov	_TL0,#0x00
                                    738 ;	disp.c:188: TR0 = 1;
                                    739 ;	assignBit
      002192 D2 8C            [12]  740 	setb	_TR0
                                    741 ;	disp.c:190: return;
                                    742 ;	disp.c:191: }
      002194 D0 D0            [24]  743 	pop	psw
      002196 D0 E0            [24]  744 	pop	acc
      002198 32               [24]  745 	reti
                                    746 ;	eliminated unneeded push/pop dpl
                                    747 ;	eliminated unneeded push/pop dph
                                    748 ;	eliminated unneeded push/pop b
                                    749 ;------------------------------------------------------------
                                    750 ;Allocation info for local variables in function 'scroll'
                                    751 ;------------------------------------------------------------
                                    752 ;msg                       Allocated to stack - _bp +1
                                    753 ;symbol                    Allocated to stack - _bp +5
                                    754 ;bit                       Allocated to stack - _bp +6
                                    755 ;i                         Allocated to stack - _bp +7
                                    756 ;j                         Allocated to registers r4 
                                    757 ;r                         Allocated to registers r3 r4 
                                    758 ;__3932160002              Allocated to registers 
                                    759 ;s                         Allocated to registers r6 r4 r3 
                                    760 ;sloc0                     Allocated to stack - _bp +4
                                    761 ;sloc1                     Allocated to stack - _bp +18
                                    762 ;sloc2                     Allocated to stack - _bp +19
                                    763 ;------------------------------------------------------------
                                    764 ;	disp.c:218: int scroll(uint8_t *msg) {
                                    765 ;	-----------------------------------------
                                    766 ;	 function scroll
                                    767 ;	-----------------------------------------
      002199                        768 _scroll:
                           000007   769 	ar7 = 0x07
                           000006   770 	ar6 = 0x06
                           000005   771 	ar5 = 0x05
                           000004   772 	ar4 = 0x04
                           000003   773 	ar3 = 0x03
                           000002   774 	ar2 = 0x02
                           000001   775 	ar1 = 0x01
                           000000   776 	ar0 = 0x00
      002199 C0 10            [24]  777 	push	_bp
      00219B 85 81 10         [24]  778 	mov	_bp,sp
      00219E C0 82            [24]  779 	push	dpl
      0021A0 C0 83            [24]  780 	push	dph
      0021A2 C0 F0            [24]  781 	push	b
      0021A4 E5 81            [12]  782 	mov	a,sp
      0021A6 24 05            [12]  783 	add	a,#0x05
      0021A8 F5 81            [12]  784 	mov	sp,a
                                    785 ;	disp.c:224: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0021AA E5 10            [12]  786 	mov	a,_bp
      0021AC 24 06            [12]  787 	add	a,#0x06
      0021AE F8               [12]  788 	mov	r0,a
      0021AF 76 00            [12]  789 	mov	@r0,#0x00
      0021B1 E5 10            [12]  790 	mov	a,_bp
      0021B3 24 07            [12]  791 	add	a,#0x07
      0021B5 F8               [12]  792 	mov	r0,a
      0021B6 E4               [12]  793 	clr	a
      0021B7 F6               [12]  794 	mov	@r0,a
      0021B8 08               [12]  795 	inc	r0
      0021B9 F6               [12]  796 	mov	@r0,a
      0021BA                        797 00142$:
                                    798 ;	disp.c:225: if (!bit) {
      0021BA E5 10            [12]  799 	mov	a,_bp
      0021BC 24 06            [12]  800 	add	a,#0x06
      0021BE F8               [12]  801 	mov	r0,a
      0021BF E6               [12]  802 	mov	a,@r0
      0021C0 70 5F            [24]  803 	jnz	00105$
                                    804 ;	disp.c:226: symbol = msg[i];
      0021C2 A8 10            [24]  805 	mov	r0,_bp
      0021C4 08               [12]  806 	inc	r0
      0021C5 E5 10            [12]  807 	mov	a,_bp
      0021C7 24 07            [12]  808 	add	a,#0x07
      0021C9 F9               [12]  809 	mov	r1,a
      0021CA E7               [12]  810 	mov	a,@r1
      0021CB 26               [12]  811 	add	a,@r0
      0021CC FA               [12]  812 	mov	r2,a
      0021CD 09               [12]  813 	inc	r1
      0021CE E7               [12]  814 	mov	a,@r1
      0021CF 08               [12]  815 	inc	r0
      0021D0 36               [12]  816 	addc	a,@r0
      0021D1 FB               [12]  817 	mov	r3,a
      0021D2 08               [12]  818 	inc	r0
      0021D3 86 04            [24]  819 	mov	ar4,@r0
      0021D5 8A 82            [24]  820 	mov	dpl,r2
      0021D7 8B 83            [24]  821 	mov	dph,r3
      0021D9 8C F0            [24]  822 	mov	b,r4
      0021DB 12 26 A6         [24]  823 	lcall	__gptrget
      0021DE FA               [12]  824 	mov	r2,a
      0021DF E5 10            [12]  825 	mov	a,_bp
      0021E1 24 04            [12]  826 	add	a,#0x04
      0021E3 F8               [12]  827 	mov	r0,a
      0021E4 A6 02            [24]  828 	mov	@r0,ar2
                                    829 ;	disp.c:227: if (!symbol) {
      0021E6 EA               [12]  830 	mov	a,r2
      0021E7 70 25            [24]  831 	jnz	00102$
                                    832 ;	disp.c:228: i = 0u;
      0021E9 E5 10            [12]  833 	mov	a,_bp
      0021EB 24 07            [12]  834 	add	a,#0x07
      0021ED F8               [12]  835 	mov	r0,a
      0021EE E4               [12]  836 	clr	a
      0021EF F6               [12]  837 	mov	@r0,a
      0021F0 08               [12]  838 	inc	r0
      0021F1 F6               [12]  839 	mov	@r0,a
                                    840 ;	disp.c:229: symbol = msg[i];
      0021F2 A8 10            [24]  841 	mov	r0,_bp
      0021F4 08               [12]  842 	inc	r0
      0021F5 86 82            [24]  843 	mov	dpl,@r0
      0021F7 08               [12]  844 	inc	r0
      0021F8 86 83            [24]  845 	mov	dph,@r0
      0021FA 08               [12]  846 	inc	r0
      0021FB 86 F0            [24]  847 	mov	b,@r0
      0021FD E5 10            [12]  848 	mov	a,_bp
      0021FF 24 04            [12]  849 	add	a,#0x04
      002201 F9               [12]  850 	mov	r1,a
      002202 12 26 A6         [24]  851 	lcall	__gptrget
      002205 F7               [12]  852 	mov	@r1,a
                                    853 ;	disp.c:230: OE |= 0x80u;
      002206 78 3A            [12]  854 	mov	r0,#_OE
      002208 E6               [12]  855 	mov	a,@r0
      002209 44 80            [12]  856 	orl	a,#0x80
      00220B F6               [12]  857 	mov	@r0,a
      00220C 80 06            [24]  858 	sjmp	00103$
      00220E                        859 00102$:
                                    860 ;	disp.c:231: } else OE |= 0x40u;
      00220E 78 3A            [12]  861 	mov	r0,#_OE
      002210 E6               [12]  862 	mov	a,@r0
      002211 44 40            [12]  863 	orl	a,#0x40
      002213 F6               [12]  864 	mov	@r0,a
      002214                        865 00103$:
                                    866 ;	disp.c:232: i++;
      002214 E5 10            [12]  867 	mov	a,_bp
      002216 24 07            [12]  868 	add	a,#0x07
      002218 F8               [12]  869 	mov	r0,a
      002219 06               [12]  870 	inc	@r0
      00221A B6 00 02         [24]  871 	cjne	@r0,#0x00,00230$
      00221D 08               [12]  872 	inc	r0
      00221E 06               [12]  873 	inc	@r0
      00221F                        874 00230$:
      00221F 80 06            [24]  875 	sjmp	00107$
      002221                        876 00105$:
                                    877 ;	disp.c:233: } else OE &= ~(0x80u | 0x40u);
      002221 78 3A            [12]  878 	mov	r0,#_OE
      002223 E6               [12]  879 	mov	a,@r0
      002224 54 3F            [12]  880 	anl	a,#0x3f
      002226 F6               [12]  881 	mov	@r0,a
                                    882 ;	disp.c:234: GPO_SETOE(OE);
      002227                        883 00107$:
      002227 78 06            [12]  884 	mov	r0,#(_gpo + 0x0006)
      002229 79 3A            [12]  885 	mov	r1,#_OE
      00222B E7               [12]  886 	mov	a,@r1
      00222C F2               [24]  887 	movx	@r0,a
                                    888 ;	disp.c:236: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      00222D E5 10            [12]  889 	mov	a,_bp
      00222F 24 06            [12]  890 	add	a,#0x06
      002231 F8               [12]  891 	mov	r0,a
      002232 E6               [12]  892 	mov	a,@r0
      002233 24 29            [12]  893 	add	a,#_sddcol
      002235 F9               [12]  894 	mov	r1,a
      002236 E7               [12]  895 	mov	a,@r1
      002237 FB               [12]  896 	mov	r3,a
      002238 54 C0            [12]  897 	anl	a,#0xc0
      00223A 60 02            [24]  898 	jz	00232$
      00223C 80 74            [24]  899 	sjmp	00113$
      00223E                        900 00232$:
                                    901 ;	disp.c:194: TR1 = 0;
                                    902 ;	assignBit
      00223E C2 8E            [12]  903 	clr	_TR1
                                    904 ;	disp.c:195: TH1 = TR1_COUNT_0 >> 8;
      002240 75 8D 00         [24]  905 	mov	_TH1,#0x00
                                    906 ;	disp.c:196: TL1 = TR1_COUNT_0 & 0xffu;	
      002243 75 8B 00         [24]  907 	mov	_TL1,#0x00
                                    908 ;	disp.c:197: TF1 = 0;
                                    909 ;	assignBit
      002246 C2 8F            [12]  910 	clr	_TF1
                                    911 ;	disp.c:198: TR1 = 1;
                                    912 ;	assignBit
      002248 D2 8E            [12]  913 	setb	_TR1
                                    914 ;	disp.c:199: while (!TF1);
      00224A                        915 00128$:
                                    916 ;	disp.c:200: TF1 = 0;
                                    917 ;	assignBit
      00224A 10 8F 02         [24]  918 	jbc	_TF1,00233$
      00224D 80 FB            [24]  919 	sjmp	00128$
      00224F                        920 00233$:
                                    921 ;	disp.c:202: TR1 = 0;
                                    922 ;	assignBit
      00224F C2 8E            [12]  923 	clr	_TR1
                                    924 ;	disp.c:203: TH1 = TR1_COUNT_1 >> 8;
      002251 75 8D C0         [24]  925 	mov	_TH1,#0xc0
                                    926 ;	disp.c:204: TL1 = TR1_COUNT_1 & 0xffu;	
      002254 75 8B 00         [24]  927 	mov	_TL1,#0x00
                                    928 ;	disp.c:205: TF1 = 0;
                                    929 ;	assignBit
      002257 C2 8F            [12]  930 	clr	_TF1
                                    931 ;	disp.c:206: TR1 = 1;
                                    932 ;	assignBit
      002259 D2 8E            [12]  933 	setb	_TR1
                                    934 ;	disp.c:207: while (!TF1);
      00225B                        935 00131$:
                                    936 ;	disp.c:208: TF1 = 0;
                                    937 ;	assignBit
      00225B 10 8F 02         [24]  938 	jbc	_TF1,00234$
      00225E 80 FB            [24]  939 	sjmp	00131$
      002260                        940 00234$:
                                    941 ;	disp.c:210: TR1 = 0;
                                    942 ;	assignBit
      002260 C2 8E            [12]  943 	clr	_TR1
                                    944 ;	disp.c:239: for (j = 0u; j < 8u; j++)
      002262 E5 10            [12]  945 	mov	a,_bp
      002264 24 04            [12]  946 	add	a,#0x04
      002266 F8               [12]  947 	mov	r0,a
      002267 E6               [12]  948 	mov	a,@r0
      002268 75 F0 08         [24]  949 	mov	b,#0x08
      00226B A4               [48]  950 	mul	ab
      00226C 24 01            [12]  951 	add	a,#__ft_font6x8
      00226E FA               [12]  952 	mov	r2,a
      00226F 74 81            [12]  953 	mov	a,#(__ft_font6x8 >> 8)
      002271 35 F0            [12]  954 	addc	a,b
      002273 FB               [12]  955 	mov	r3,a
      002274 E5 10            [12]  956 	mov	a,_bp
      002276 24 06            [12]  957 	add	a,#0x06
      002278 F8               [12]  958 	mov	r0,a
      002279 74 07            [12]  959 	mov	a,#0x07
      00227B C3               [12]  960 	clr	c
      00227C 96               [12]  961 	subb	a,@r0
      00227D FD               [12]  962 	mov	r5,a
      00227E 7C 00            [12]  963 	mov	r4,#0x00
      002280                        964 00137$:
                                    965 ;	disp.c:240: ddata[j] = (((FONT_TABLE[symbol][j] ^ inv) << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      002280 EC               [12]  966 	mov	a,r4
      002281 24 31            [12]  967 	add	a,#_ddata
      002283 F9               [12]  968 	mov	r1,a
      002284 EC               [12]  969 	mov	a,r4
      002285 2A               [12]  970 	add	a,r2
      002286 F5 82            [12]  971 	mov	dpl,a
      002288 E4               [12]  972 	clr	a
      002289 3B               [12]  973 	addc	a,r3
      00228A F5 83            [12]  974 	mov	dph,a
      00228C E0               [24]  975 	movx	a,@dptr
      00228D FF               [12]  976 	mov	r7,a
      00228E 78 3B            [12]  977 	mov	r0,#_inv
      002290 E6               [12]  978 	mov	a,@r0
      002291 62 07            [12]  979 	xrl	ar7,a
      002293 8D F0            [24]  980 	mov	b,r5
      002295 05 F0            [12]  981 	inc	b
      002297 EF               [12]  982 	mov	a,r7
      002298 80 02            [24]  983 	sjmp	00237$
      00229A                        984 00235$:
      00229A 25 E0            [12]  985 	add	a,acc
      00229C                        986 00237$:
      00229C D5 F0 FB         [24]  987 	djnz	b,00235$
      00229F 54 80            [12]  988 	anl	a,#0x80
      0022A1 FF               [12]  989 	mov	r7,a
      0022A2 EC               [12]  990 	mov	a,r4
      0022A3 24 31            [12]  991 	add	a,#_ddata
      0022A5 F8               [12]  992 	mov	r0,a
      0022A6 E6               [12]  993 	mov	a,@r0
      0022A7 C3               [12]  994 	clr	c
      0022A8 13               [12]  995 	rrc	a
      0022A9 FE               [12]  996 	mov	r6,a
      0022AA 4F               [12]  997 	orl	a,r7
      0022AB F7               [12]  998 	mov	@r1,a
                                    999 ;	disp.c:239: for (j = 0u; j < 8u; j++)
      0022AC 0C               [12] 1000 	inc	r4
      0022AD BC 08 00         [24] 1001 	cjne	r4,#0x08,00238$
      0022B0                       1002 00238$:
      0022B0 40 CE            [24] 1003 	jc	00137$
                                   1004 ;	disp.c:242: skip_shift:
      0022B2                       1005 00113$:
                                   1006 ;	disp.c:243: if ((r = getchar_poll()) >= 0) {
      0022B2 12 20 BB         [24] 1007 	lcall	_getchar_poll
      0022B5 AB 82            [24] 1008 	mov	r3,dpl
      0022B7 AC 83            [24] 1009 	mov	r4,dph
      0022B9 8B 07            [24] 1010 	mov	ar7,r3
      0022BB EC               [12] 1011 	mov	a,r4
      0022BC FE               [12] 1012 	mov	r6,a
      0022BD 20 E7 65         [24] 1013 	jb	acc.7,00143$
                                   1014 ;	disp.c:244: r = toupper(r);
      0022C0 8F 82            [24] 1015 	mov	dpl,r7
      0022C2 8E 83            [24] 1016 	mov	dph,r6
      0022C4 12 25 C8         [24] 1017 	lcall	_toupper
      0022C7 AB 82            [24] 1018 	mov	r3,dpl
      0022C9 AC 83            [24] 1019 	mov	r4,dph
                                   1020 ;	disp.c:245: if ((r == (int)'P') || (r == (int)' ')) {
      0022CB BB 50 05         [24] 1021 	cjne	r3,#0x50,00241$
      0022CE BC 00 02         [24] 1022 	cjne	r4,#0x00,00241$
      0022D1 80 06            [24] 1023 	sjmp	00121$
      0022D3                       1024 00241$:
      0022D3 BB 20 2A         [24] 1025 	cjne	r3,#0x20,00122$
      0022D6 BC 00 27         [24] 1026 	cjne	r4,#0x00,00122$
      0022D9                       1027 00121$:
                                   1028 ;	disp.c:246: printstr("PAUSE\r\n");
      0022D9 7E E1            [12] 1029 	mov	r6,#___str_0
      0022DB 7C 26            [12] 1030 	mov	r4,#(___str_0 >> 8)
      0022DD 7B 80            [12] 1031 	mov	r3,#0x80
                                   1032 ;	disp.c:48: return;
      0022DF                       1033 00140$:
                                   1034 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0022DF 8E 82            [24] 1035 	mov	dpl,r6
      0022E1 8C 83            [24] 1036 	mov	dph,r4
      0022E3 8B F0            [24] 1037 	mov	b,r3
      0022E5 12 26 A6         [24] 1038 	lcall	__gptrget
      0022E8 FD               [12] 1039 	mov	r5,a
      0022E9 60 10            [24] 1040 	jz	00136$
      0022EB 7F 00            [12] 1041 	mov	r7,#0x00
      0022ED 8D 82            [24] 1042 	mov	dpl,r5
      0022EF 8F 83            [24] 1043 	mov	dph,r7
      0022F1 12 20 AD         [24] 1044 	lcall	_putchar
      0022F4 0E               [12] 1045 	inc	r6
                                   1046 ;	disp.c:246: printstr("PAUSE\r\n");
      0022F5 BE 00 E7         [24] 1047 	cjne	r6,#0x00,00140$
      0022F8 0C               [12] 1048 	inc	r4
      0022F9 80 E4            [24] 1049 	sjmp	00140$
      0022FB                       1050 00136$:
                                   1051 ;	disp.c:247: (void)getchar();
      0022FB 12 20 B2         [24] 1052 	lcall	_getchar
      0022FE 80 25            [24] 1053 	sjmp	00143$
      002300                       1054 00122$:
                                   1055 ;	disp.c:248: } else if (r == (int)'I') inv = ~inv;
      002300 BB 49 0A         [24] 1056 	cjne	r3,#0x49,00119$
      002303 BC 00 07         [24] 1057 	cjne	r4,#0x00,00119$
      002306 78 3B            [12] 1058 	mov	r0,#_inv
      002308 E6               [12] 1059 	mov	a,@r0
      002309 F4               [12] 1060 	cpl	a
      00230A F6               [12] 1061 	mov	@r0,a
      00230B 80 18            [24] 1062 	sjmp	00143$
      00230D                       1063 00119$:
                                   1064 ;	disp.c:249: else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      00230D BB 54 05         [24] 1065 	cjne	r3,#0x54,00248$
      002310 BC 00 02         [24] 1066 	cjne	r4,#0x00,00248$
      002313 80 24            [24] 1067 	sjmp	00127$
      002315                       1068 00248$:
      002315 BB 52 05         [24] 1069 	cjne	r3,#0x52,00249$
      002318 BC 00 02         [24] 1070 	cjne	r4,#0x00,00249$
      00231B 80 1C            [24] 1071 	sjmp	00127$
      00231D                       1072 00249$:
      00231D BB 4C 05         [24] 1073 	cjne	r3,#0x4c,00250$
      002320 BC 00 02         [24] 1074 	cjne	r4,#0x00,00250$
      002323 80 14            [24] 1075 	sjmp	00127$
      002325                       1076 00250$:
      002325                       1077 00143$:
                                   1078 ;	disp.c:224: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002325 E5 10            [12] 1079 	mov	a,_bp
      002327 24 06            [12] 1080 	add	a,#0x06
      002329 F8               [12] 1081 	mov	r0,a
      00232A E6               [12] 1082 	mov	a,@r0
      00232B 04               [12] 1083 	inc	a
      00232C FF               [12] 1084 	mov	r7,a
      00232D E5 10            [12] 1085 	mov	a,_bp
      00232F 24 06            [12] 1086 	add	a,#0x06
      002331 F8               [12] 1087 	mov	r0,a
      002332 74 07            [12] 1088 	mov	a,#0x07
      002334 5F               [12] 1089 	anl	a,r7
      002335 F6               [12] 1090 	mov	@r0,a
      002336 02 21 BA         [24] 1091 	ljmp	00142$
      002339                       1092 00127$:
                                   1093 ;	disp.c:253: return r;
      002339 8B 82            [24] 1094 	mov	dpl,r3
      00233B 8C 83            [24] 1095 	mov	dph,r4
                                   1096 ;	disp.c:254: }
      00233D 85 10 81         [24] 1097 	mov	sp,_bp
      002340 D0 10            [24] 1098 	pop	_bp
      002342 22               [24] 1099 	ret
                                   1100 ;------------------------------------------------------------
                                   1101 ;Allocation info for local variables in function 'main'
                                   1102 ;------------------------------------------------------------
                                   1103 ;j                         Allocated to stack - _bp +1
                                   1104 ;c                         Allocated to registers r7 r6 
                                   1105 ;__1310720004              Allocated to registers 
                                   1106 ;s                         Allocated to registers r5 r6 r7 
                                   1107 ;__1966080006              Allocated to registers 
                                   1108 ;s                         Allocated to registers r5 r6 r7 
                                   1109 ;__1966080008              Allocated to registers 
                                   1110 ;s                         Allocated to registers r5 r6 r7 
                                   1111 ;__1966080010              Allocated to registers 
                                   1112 ;s                         Allocated to registers r5 r6 r7 
                                   1113 ;__3276800012              Allocated to registers 
                                   1114 ;s                         Allocated to registers r7 r6 r4 
                                   1115 ;__3276800014              Allocated to registers 
                                   1116 ;s                         Allocated to registers r7 r6 r4 
                                   1117 ;__3276800016              Allocated to registers 
                                   1118 ;s                         Allocated to registers r7 r6 r4 
                                   1119 ;__3276800018              Allocated to registers 
                                   1120 ;s                         Allocated to registers r7 r6 r4 
                                   1121 ;__3276800020              Allocated to registers 
                                   1122 ;s                         Allocated to registers r7 r6 r4 
                                   1123 ;__1310720022              Allocated to registers 
                                   1124 ;s                         Allocated to registers r5 r6 r7 
                                   1125 ;sloc0                     Allocated to stack - _bp +65
                                   1126 ;------------------------------------------------------------
                                   1127 ;	disp.c:256: void main(void) {
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function main
                                   1130 ;	-----------------------------------------
      002343                       1131 _main:
      002343 C0 10            [24] 1132 	push	_bp
      002345 85 81 10         [24] 1133 	mov	_bp,sp
      002348 05 81            [12] 1134 	inc	sp
      00234A 05 81            [12] 1135 	inc	sp
                                   1136 ;	disp.c:260: gpo_init();
      00234C 12 20 CF         [24] 1137 	lcall	_gpo_init
                                   1138 ;	disp.c:261: gpo_clear();
      00234F 12 20 F0         [24] 1139 	lcall	_gpo_clear
                                   1140 ;	disp.c:262: init_disp();
      002352 12 21 2C         [24] 1141 	lcall	_init_disp
                                   1142 ;	disp.c:263: init_timer0();
      002355 12 21 14         [24] 1143 	lcall	_init_timer0
                                   1144 ;	disp.c:264: init_timer1();
      002358 12 21 20         [24] 1145 	lcall	_init_timer1
                                   1146 ;	disp.c:265: init_intr();
      00235B 12 21 09         [24] 1147 	lcall	_init_intr
                                   1148 ;	disp.c:266: TR0 = 1;
                                   1149 ;	assignBit
      00235E D2 8C            [12] 1150 	setb	_TR0
                                   1151 ;	disp.c:268: reset:
      002360                       1152 00101$:
                                   1153 ;	disp.c:269: init_disp();
      002360 12 21 2C         [24] 1154 	lcall	_init_disp
                                   1155 ;	disp.c:270: printstr("RESET\r\n");
      002363 7D E9            [12] 1156 	mov	r5,#___str_1
      002365 7E 26            [12] 1157 	mov	r6,#(___str_1 >> 8)
      002367 7F 80            [12] 1158 	mov	r7,#0x80
                                   1159 ;	disp.c:48: return;
      002369                       1160 00149$:
                                   1161 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002369 8D 82            [24] 1162 	mov	dpl,r5
      00236B 8E 83            [24] 1163 	mov	dph,r6
      00236D 8F F0            [24] 1164 	mov	b,r7
      00236F 12 26 A6         [24] 1165 	lcall	__gptrget
      002372 FC               [12] 1166 	mov	r4,a
      002373 60 10            [24] 1167 	jz	00129$
      002375 7B 00            [12] 1168 	mov	r3,#0x00
      002377 8C 82            [24] 1169 	mov	dpl,r4
      002379 8B 83            [24] 1170 	mov	dph,r3
      00237B 12 20 AD         [24] 1171 	lcall	_putchar
      00237E 0D               [12] 1172 	inc	r5
                                   1173 ;	disp.c:270: printstr("RESET\r\n");
      00237F BD 00 E7         [24] 1174 	cjne	r5,#0x00,00149$
      002382 0E               [12] 1175 	inc	r6
      002383 80 E4            [24] 1176 	sjmp	00149$
      002385                       1177 00129$:
                                   1178 ;	disp.c:271: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      002385 E4               [12] 1179 	clr	a
      002386 C0 E0            [24] 1180 	push	acc
      002388 04               [12] 1181 	inc	a
      002389 C0 E0            [24] 1182 	push	acc
      00238B 90 89 01         [24] 1183 	mov	dptr,#_initial
      00238E E0               [24] 1184 	movx	a,@dptr
      00238F C0 E0            [24] 1185 	push	acc
      002391 A3               [24] 1186 	inc	dptr
      002392 E0               [24] 1187 	movx	a,@dptr
      002393 C0 E0            [24] 1188 	push	acc
      002395 A3               [24] 1189 	inc	dptr
      002396 E0               [24] 1190 	movx	a,@dptr
      002397 C0 E0            [24] 1191 	push	acc
      002399 90 80 00         [24] 1192 	mov	dptr,#_buf
      00239C 75 F0 00         [24] 1193 	mov	b,#0x00
      00239F 12 25 EF         [24] 1194 	lcall	_strncpy
      0023A2 E5 81            [12] 1195 	mov	a,sp
      0023A4 24 FB            [12] 1196 	add	a,#0xfb
      0023A6 F5 81            [12] 1197 	mov	sp,a
                                   1198 ;	disp.c:272: buf[sizeof (buf) - 1u] = 0u;
      0023A8 90 81 00         [24] 1199 	mov	dptr,#(_buf + 0x0100)
      0023AB E4               [12] 1200 	clr	a
      0023AC F0               [24] 1201 	movx	@dptr,a
                                   1202 ;	disp.c:273: inv = 0u;
      0023AD 78 3B            [12] 1203 	mov	r0,#_inv
      0023AF 76 00            [12] 1204 	mov	@r0,#0x00
                                   1205 ;	disp.c:275: while (1) {
      0023B1                       1206 00125$:
                                   1207 ;	disp.c:276: printstr("P SP I L ENT S R T START MSG \"");
      0023B1 7D F1            [12] 1208 	mov	r5,#___str_2
      0023B3 7E 26            [12] 1209 	mov	r6,#(___str_2 >> 8)
      0023B5 7F 80            [12] 1210 	mov	r7,#0x80
                                   1211 ;	disp.c:48: return;
      0023B7                       1212 00152$:
                                   1213 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023B7 8D 82            [24] 1214 	mov	dpl,r5
      0023B9 8E 83            [24] 1215 	mov	dph,r6
      0023BB 8F F0            [24] 1216 	mov	b,r7
      0023BD 12 26 A6         [24] 1217 	lcall	__gptrget
      0023C0 FC               [12] 1218 	mov	r4,a
      0023C1 60 10            [24] 1219 	jz	00131$
      0023C3 7B 00            [12] 1220 	mov	r3,#0x00
      0023C5 8C 82            [24] 1221 	mov	dpl,r4
      0023C7 8B 83            [24] 1222 	mov	dph,r3
      0023C9 12 20 AD         [24] 1223 	lcall	_putchar
      0023CC 0D               [12] 1224 	inc	r5
                                   1225 ;	disp.c:276: printstr("P SP I L ENT S R T START MSG \"");
      0023CD BD 00 E7         [24] 1226 	cjne	r5,#0x00,00152$
      0023D0 0E               [12] 1227 	inc	r6
      0023D1 80 E4            [24] 1228 	sjmp	00152$
      0023D3                       1229 00131$:
                                   1230 ;	disp.c:277: printstr((char *)buf);
      0023D3 7D 00            [12] 1231 	mov	r5,#_buf
      0023D5 7E 80            [12] 1232 	mov	r6,#(_buf >> 8)
      0023D7 7F 00            [12] 1233 	mov	r7,#0x00
                                   1234 ;	disp.c:48: return;
      0023D9                       1235 00155$:
                                   1236 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023D9 8D 82            [24] 1237 	mov	dpl,r5
      0023DB 8E 83            [24] 1238 	mov	dph,r6
      0023DD 8F F0            [24] 1239 	mov	b,r7
      0023DF 12 26 A6         [24] 1240 	lcall	__gptrget
      0023E2 FC               [12] 1241 	mov	r4,a
      0023E3 60 10            [24] 1242 	jz	00133$
      0023E5 7B 00            [12] 1243 	mov	r3,#0x00
      0023E7 8C 82            [24] 1244 	mov	dpl,r4
      0023E9 8B 83            [24] 1245 	mov	dph,r3
      0023EB 12 20 AD         [24] 1246 	lcall	_putchar
      0023EE 0D               [12] 1247 	inc	r5
                                   1248 ;	disp.c:277: printstr((char *)buf);
      0023EF BD 00 E7         [24] 1249 	cjne	r5,#0x00,00155$
      0023F2 0E               [12] 1250 	inc	r6
      0023F3 80 E4            [24] 1251 	sjmp	00155$
      0023F5                       1252 00133$:
                                   1253 ;	disp.c:278: printstr("\"\r\n");
      0023F5 7D 10            [12] 1254 	mov	r5,#___str_3
      0023F7 7E 27            [12] 1255 	mov	r6,#(___str_3 >> 8)
      0023F9 7F 80            [12] 1256 	mov	r7,#0x80
                                   1257 ;	disp.c:48: return;
      0023FB                       1258 00158$:
                                   1259 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023FB 8D 82            [24] 1260 	mov	dpl,r5
      0023FD 8E 83            [24] 1261 	mov	dph,r6
      0023FF 8F F0            [24] 1262 	mov	b,r7
      002401 12 26 A6         [24] 1263 	lcall	__gptrget
      002404 FC               [12] 1264 	mov	r4,a
      002405 60 10            [24] 1265 	jz	00135$
      002407 7B 00            [12] 1266 	mov	r3,#0x00
      002409 8C 82            [24] 1267 	mov	dpl,r4
      00240B 8B 83            [24] 1268 	mov	dph,r3
      00240D 12 20 AD         [24] 1269 	lcall	_putchar
      002410 0D               [12] 1270 	inc	r5
                                   1271 ;	disp.c:278: printstr("\"\r\n");
      002411 BD 00 E7         [24] 1272 	cjne	r5,#0x00,00158$
      002414 0E               [12] 1273 	inc	r6
      002415 80 E4            [24] 1274 	sjmp	00158$
      002417                       1275 00135$:
                                   1276 ;	disp.c:280: c = scroll(buf);
      002417 90 80 00         [24] 1277 	mov	dptr,#_buf
      00241A 75 F0 00         [24] 1278 	mov	b,#0x00
      00241D 12 21 99         [24] 1279 	lcall	_scroll
      002420 AE 82            [24] 1280 	mov	r6,dpl
      002422 AF 83            [24] 1281 	mov	r7,dph
                                   1282 ;	disp.c:282: while (1) {
      002424                       1283 00122$:
                                   1284 ;	disp.c:283: if (c == (int)'T') goto term;
      002424 BE 54 06         [24] 1285 	cjne	r6,#0x54,00345$
      002427 BF 00 03         [24] 1286 	cjne	r7,#0x00,00345$
      00242A 02 25 95         [24] 1287 	ljmp	00127$
      00242D                       1288 00345$:
                                   1289 ;	disp.c:284: else if (c == (int)'R') goto reset;
      00242D BE 52 06         [24] 1290 	cjne	r6,#0x52,00346$
      002430 BF 00 03         [24] 1291 	cjne	r7,#0x00,00346$
      002433 02 23 60         [24] 1292 	ljmp	00101$
      002436                       1293 00346$:
                                   1294 ;	disp.c:285: else if (c == (int)'I') inv = ~inv;
      002436 BE 49 0B         [24] 1295 	cjne	r6,#0x49,00113$
      002439 BF 00 08         [24] 1296 	cjne	r7,#0x00,00113$
      00243C 78 3B            [12] 1297 	mov	r0,#_inv
      00243E E6               [12] 1298 	mov	a,@r0
      00243F F4               [12] 1299 	cpl	a
      002440 F6               [12] 1300 	mov	@r0,a
      002441 02 25 88         [24] 1301 	ljmp	00120$
      002444                       1302 00113$:
                                   1303 ;	disp.c:286: else if (c == (int)'L') {
      002444 BE 4C 05         [24] 1304 	cjne	r6,#0x4c,00349$
      002447 BF 00 02         [24] 1305 	cjne	r7,#0x00,00349$
      00244A 80 03            [24] 1306 	sjmp	00350$
      00244C                       1307 00349$:
      00244C 02 25 7F         [24] 1308 	ljmp	00110$
      00244F                       1309 00350$:
                                   1310 ;	disp.c:287: init_disp();
      00244F 12 21 2C         [24] 1311 	lcall	_init_disp
                                   1312 ;	disp.c:288: printstr("LOAD ");
      002452 7F 14            [12] 1313 	mov	r7,#___str_4
      002454 7E 27            [12] 1314 	mov	r6,#(___str_4 >> 8)
      002456 7C 80            [12] 1315 	mov	r4,#0x80
                                   1316 ;	disp.c:48: return;
      002458                       1317 00161$:
                                   1318 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002458 8F 82            [24] 1319 	mov	dpl,r7
      00245A 8E 83            [24] 1320 	mov	dph,r6
      00245C 8C F0            [24] 1321 	mov	b,r4
      00245E 12 26 A6         [24] 1322 	lcall	__gptrget
      002461 FA               [12] 1323 	mov	r2,a
      002462 60 10            [24] 1324 	jz	00137$
      002464 7D 00            [12] 1325 	mov	r5,#0x00
      002466 8A 82            [24] 1326 	mov	dpl,r2
      002468 8D 83            [24] 1327 	mov	dph,r5
      00246A 12 20 AD         [24] 1328 	lcall	_putchar
      00246D 0F               [12] 1329 	inc	r7
                                   1330 ;	disp.c:288: printstr("LOAD ");
      00246E BF 00 E7         [24] 1331 	cjne	r7,#0x00,00161$
      002471 0E               [12] 1332 	inc	r6
      002472 80 E4            [24] 1333 	sjmp	00161$
      002474                       1334 00137$:
                                   1335 ;	disp.c:289: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002474 7C 00            [12] 1336 	mov	r4,#0x00
      002476 7D 00            [12] 1337 	mov	r5,#0x00
      002478 A8 10            [24] 1338 	mov	r0,_bp
      00247A 08               [12] 1339 	inc	r0
      00247B E4               [12] 1340 	clr	a
      00247C F6               [12] 1341 	mov	@r0,a
      00247D 08               [12] 1342 	inc	r0
      00247E F6               [12] 1343 	mov	@r0,a
      00247F                       1344 00163$:
                                   1345 ;	disp.c:290: c = getchar();
      00247F C0 04            [24] 1346 	push	ar4
      002481 C0 05            [24] 1347 	push	ar5
      002483 12 20 B2         [24] 1348 	lcall	_getchar
      002486 AC 82            [24] 1349 	mov	r4,dpl
      002488 AD 83            [24] 1350 	mov	r5,dph
      00248A 8C 07            [24] 1351 	mov	ar7,r4
      00248C 8D 06            [24] 1352 	mov	ar6,r5
                                   1353 ;	disp.c:291: (void)putchar(c);
      00248E 8F 82            [24] 1354 	mov	dpl,r7
      002490 8E 83            [24] 1355 	mov	dph,r6
      002492 12 20 AD         [24] 1356 	lcall	_putchar
                                   1357 ;	disp.c:292: if ((c == (int)'\r') || (c == (int)'\n')) {
      002495 BF 0D 09         [24] 1358 	cjne	r7,#0x0d,00353$
      002498 BE 00 06         [24] 1359 	cjne	r6,#0x00,00353$
      00249B D0 05            [24] 1360 	pop	ar5
      00249D D0 04            [24] 1361 	pop	ar4
      00249F 80 0A            [24] 1362 	sjmp	00102$
      0024A1                       1363 00353$:
      0024A1 D0 05            [24] 1364 	pop	ar5
      0024A3 D0 04            [24] 1365 	pop	ar4
      0024A5 BF 0A 11         [24] 1366 	cjne	r7,#0x0a,00103$
      0024A8 BE 00 0E         [24] 1367 	cjne	r6,#0x00,00103$
      0024AB                       1368 00102$:
                                   1369 ;	disp.c:293: buf[j] = 0u;
      0024AB EC               [12] 1370 	mov	a,r4
      0024AC 24 00            [12] 1371 	add	a,#_buf
      0024AE F5 82            [12] 1372 	mov	dpl,a
      0024B0 ED               [12] 1373 	mov	a,r5
      0024B1 34 80            [12] 1374 	addc	a,#(_buf >> 8)
      0024B3 F5 83            [12] 1375 	mov	dph,a
      0024B5 E4               [12] 1376 	clr	a
      0024B6 F0               [24] 1377 	movx	@dptr,a
                                   1378 ;	disp.c:294: break;
      0024B7 80 32            [24] 1379 	sjmp	00106$
      0024B9                       1380 00103$:
                                   1381 ;	disp.c:295: } else buf[j] = c & 0xffu;
      0024B9 A8 10            [24] 1382 	mov	r0,_bp
      0024BB 08               [12] 1383 	inc	r0
      0024BC E6               [12] 1384 	mov	a,@r0
      0024BD 24 00            [12] 1385 	add	a,#_buf
      0024BF FD               [12] 1386 	mov	r5,a
      0024C0 08               [12] 1387 	inc	r0
      0024C1 E6               [12] 1388 	mov	a,@r0
      0024C2 34 80            [12] 1389 	addc	a,#(_buf >> 8)
      0024C4 FC               [12] 1390 	mov	r4,a
      0024C5 8F 03            [24] 1391 	mov	ar3,r7
      0024C7 8D 82            [24] 1392 	mov	dpl,r5
      0024C9 8C 83            [24] 1393 	mov	dph,r4
      0024CB EB               [12] 1394 	mov	a,r3
      0024CC F0               [24] 1395 	movx	@dptr,a
                                   1396 ;	disp.c:289: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      0024CD A8 10            [24] 1397 	mov	r0,_bp
      0024CF 08               [12] 1398 	inc	r0
      0024D0 06               [12] 1399 	inc	@r0
      0024D1 B6 00 02         [24] 1400 	cjne	@r0,#0x00,00356$
      0024D4 08               [12] 1401 	inc	r0
      0024D5 06               [12] 1402 	inc	@r0
      0024D6                       1403 00356$:
      0024D6 A8 10            [24] 1404 	mov	r0,_bp
      0024D8 08               [12] 1405 	inc	r0
      0024D9 86 04            [24] 1406 	mov	ar4,@r0
      0024DB 08               [12] 1407 	inc	r0
      0024DC 86 05            [24] 1408 	mov	ar5,@r0
      0024DE A8 10            [24] 1409 	mov	r0,_bp
      0024E0 08               [12] 1410 	inc	r0
      0024E1 86 02            [24] 1411 	mov	ar2,@r0
      0024E3 08               [12] 1412 	inc	r0
      0024E4 86 03            [24] 1413 	mov	ar3,@r0
      0024E6 74 FF            [12] 1414 	mov	a,#0x100 - 0x01
      0024E8 2B               [12] 1415 	add	a,r3
      0024E9 50 94            [24] 1416 	jnc	00163$
      0024EB                       1417 00106$:
                                   1418 ;	disp.c:297: buf[j] = 0u;
      0024EB EC               [12] 1419 	mov	a,r4
      0024EC 24 00            [12] 1420 	add	a,#_buf
      0024EE F5 82            [12] 1421 	mov	dpl,a
      0024F0 ED               [12] 1422 	mov	a,r5
      0024F1 34 80            [12] 1423 	addc	a,#(_buf >> 8)
      0024F3 F5 83            [12] 1424 	mov	dph,a
      0024F5 E4               [12] 1425 	clr	a
      0024F6 F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	disp.c:298: printstr("\r\n");
      0024F7 7F 1A            [12] 1428 	mov	r7,#___str_5
      0024F9 7E 27            [12] 1429 	mov	r6,#(___str_5 >> 8)
      0024FB 7C 80            [12] 1430 	mov	r4,#0x80
                                   1431 ;	disp.c:48: return;
      0024FD                       1432 00166$:
                                   1433 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024FD 8F 82            [24] 1434 	mov	dpl,r7
      0024FF 8E 83            [24] 1435 	mov	dph,r6
      002501 8C F0            [24] 1436 	mov	b,r4
      002503 12 26 A6         [24] 1437 	lcall	__gptrget
      002506 FA               [12] 1438 	mov	r2,a
      002507 60 10            [24] 1439 	jz	00139$
      002509 7D 00            [12] 1440 	mov	r5,#0x00
      00250B 8A 82            [24] 1441 	mov	dpl,r2
      00250D 8D 83            [24] 1442 	mov	dph,r5
      00250F 12 20 AD         [24] 1443 	lcall	_putchar
      002512 0F               [12] 1444 	inc	r7
                                   1445 ;	disp.c:298: printstr("\r\n");
      002513 BF 00 E7         [24] 1446 	cjne	r7,#0x00,00166$
      002516 0E               [12] 1447 	inc	r6
      002517 80 E4            [24] 1448 	sjmp	00166$
      002519                       1449 00139$:
                                   1450 ;	disp.c:299: printstr("MSG \"");
      002519 7F 1D            [12] 1451 	mov	r7,#___str_6
      00251B 7E 27            [12] 1452 	mov	r6,#(___str_6 >> 8)
      00251D 7C 80            [12] 1453 	mov	r4,#0x80
                                   1454 ;	disp.c:48: return;
      00251F                       1455 00169$:
                                   1456 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00251F 8F 82            [24] 1457 	mov	dpl,r7
      002521 8E 83            [24] 1458 	mov	dph,r6
      002523 8C F0            [24] 1459 	mov	b,r4
      002525 12 26 A6         [24] 1460 	lcall	__gptrget
      002528 FA               [12] 1461 	mov	r2,a
      002529 60 10            [24] 1462 	jz	00141$
      00252B 7D 00            [12] 1463 	mov	r5,#0x00
      00252D 8A 82            [24] 1464 	mov	dpl,r2
      00252F 8D 83            [24] 1465 	mov	dph,r5
      002531 12 20 AD         [24] 1466 	lcall	_putchar
      002534 0F               [12] 1467 	inc	r7
                                   1468 ;	disp.c:299: printstr("MSG \"");
      002535 BF 00 E7         [24] 1469 	cjne	r7,#0x00,00169$
      002538 0E               [12] 1470 	inc	r6
      002539 80 E4            [24] 1471 	sjmp	00169$
      00253B                       1472 00141$:
                                   1473 ;	disp.c:300: printstr((char *)buf);
      00253B 7F 00            [12] 1474 	mov	r7,#_buf
      00253D 7E 80            [12] 1475 	mov	r6,#(_buf >> 8)
      00253F 7C 00            [12] 1476 	mov	r4,#0x00
                                   1477 ;	disp.c:48: return;
      002541                       1478 00172$:
                                   1479 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002541 8F 82            [24] 1480 	mov	dpl,r7
      002543 8E 83            [24] 1481 	mov	dph,r6
      002545 8C F0            [24] 1482 	mov	b,r4
      002547 12 26 A6         [24] 1483 	lcall	__gptrget
      00254A FA               [12] 1484 	mov	r2,a
      00254B 60 10            [24] 1485 	jz	00143$
      00254D 7D 00            [12] 1486 	mov	r5,#0x00
      00254F 8A 82            [24] 1487 	mov	dpl,r2
      002551 8D 83            [24] 1488 	mov	dph,r5
      002553 12 20 AD         [24] 1489 	lcall	_putchar
      002556 0F               [12] 1490 	inc	r7
                                   1491 ;	disp.c:300: printstr((char *)buf);
      002557 BF 00 E7         [24] 1492 	cjne	r7,#0x00,00172$
      00255A 0E               [12] 1493 	inc	r6
      00255B 80 E4            [24] 1494 	sjmp	00172$
      00255D                       1495 00143$:
                                   1496 ;	disp.c:301: printstr("\"\r\n");
      00255D 7F 10            [12] 1497 	mov	r7,#___str_3
      00255F 7E 27            [12] 1498 	mov	r6,#(___str_3 >> 8)
      002561 7C 80            [12] 1499 	mov	r4,#0x80
                                   1500 ;	disp.c:48: return;
      002563                       1501 00175$:
                                   1502 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002563 8F 82            [24] 1503 	mov	dpl,r7
      002565 8E 83            [24] 1504 	mov	dph,r6
      002567 8C F0            [24] 1505 	mov	b,r4
      002569 12 26 A6         [24] 1506 	lcall	__gptrget
      00256C FA               [12] 1507 	mov	r2,a
      00256D 60 19            [24] 1508 	jz	00120$
      00256F 7D 00            [12] 1509 	mov	r5,#0x00
      002571 8A 82            [24] 1510 	mov	dpl,r2
      002573 8D 83            [24] 1511 	mov	dph,r5
      002575 12 20 AD         [24] 1512 	lcall	_putchar
      002578 0F               [12] 1513 	inc	r7
                                   1514 ;	disp.c:301: printstr("\"\r\n");
      002579 BF 00 E7         [24] 1515 	cjne	r7,#0x00,00175$
      00257C 0E               [12] 1516 	inc	r6
      00257D 80 E4            [24] 1517 	sjmp	00175$
      00257F                       1518 00110$:
                                   1519 ;	disp.c:302: } else if (c == (int)'S') break;
      00257F BE 53 06         [24] 1520 	cjne	r6,#0x53,00366$
      002582 BF 00 03         [24] 1521 	cjne	r7,#0x00,00366$
      002585 02 23 B1         [24] 1522 	ljmp	00125$
      002588                       1523 00366$:
      002588                       1524 00120$:
                                   1525 ;	disp.c:304: c = toupper(getchar());
      002588 12 20 B2         [24] 1526 	lcall	_getchar
      00258B 12 25 C8         [24] 1527 	lcall	_toupper
      00258E AE 82            [24] 1528 	mov	r6,dpl
      002590 AF 83            [24] 1529 	mov	r7,dph
      002592 02 24 24         [24] 1530 	ljmp	00122$
                                   1531 ;	disp.c:308: term:	
      002595                       1532 00127$:
                                   1533 ;	disp.c:309: EA = 0;
                                   1534 ;	assignBit
      002595 C2 AF            [12] 1535 	clr	_EA
                                   1536 ;	disp.c:310: init_disp();
      002597 12 21 2C         [24] 1537 	lcall	_init_disp
                                   1538 ;	disp.c:311: printstr("TERM\r\n");
      00259A 7D 23            [12] 1539 	mov	r5,#___str_7
      00259C 7E 27            [12] 1540 	mov	r6,#(___str_7 >> 8)
      00259E 7F 80            [12] 1541 	mov	r7,#0x80
                                   1542 ;	disp.c:48: return;
      0025A0                       1543 00178$:
                                   1544 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0025A0 8D 82            [24] 1545 	mov	dpl,r5
      0025A2 8E 83            [24] 1546 	mov	dph,r6
      0025A4 8F F0            [24] 1547 	mov	b,r7
      0025A6 12 26 A6         [24] 1548 	lcall	__gptrget
      0025A9 FC               [12] 1549 	mov	r4,a
      0025AA 60 10            [24] 1550 	jz	00147$
      0025AC 7B 00            [12] 1551 	mov	r3,#0x00
      0025AE 8C 82            [24] 1552 	mov	dpl,r4
      0025B0 8B 83            [24] 1553 	mov	dph,r3
      0025B2 12 20 AD         [24] 1554 	lcall	_putchar
      0025B5 0D               [12] 1555 	inc	r5
                                   1556 ;	disp.c:311: printstr("TERM\r\n");
      0025B6 BD 00 E7         [24] 1557 	cjne	r5,#0x00,00178$
      0025B9 0E               [12] 1558 	inc	r6
      0025BA 80 E4            [24] 1559 	sjmp	00178$
      0025BC                       1560 00147$:
                                   1561 ;	disp.c:312: (void)getchar();
      0025BC 12 20 B2         [24] 1562 	lcall	_getchar
                                   1563 ;	disp.c:314: PCON |= 2;
      0025BF 43 87 02         [24] 1564 	orl	_PCON,#0x02
                                   1565 ;	disp.c:316: return;
                                   1566 ;	disp.c:317: }
      0025C2 85 10 81         [24] 1567 	mov	sp,_bp
      0025C5 D0 10            [24] 1568 	pop	_bp
      0025C7 22               [24] 1569 	ret
                                   1570 	.area CSEG    (CODE)
                                   1571 	.area CONST   (CODE)
                                   1572 	.area CONST   (CODE)
      0026E1                       1573 ___str_0:
      0026E1 50 41 55 53 45        1574 	.ascii "PAUSE"
      0026E6 0D                    1575 	.db 0x0d
      0026E7 0A                    1576 	.db 0x0a
      0026E8 00                    1577 	.db 0x00
                                   1578 	.area CSEG    (CODE)
                                   1579 	.area CONST   (CODE)
      0026E9                       1580 ___str_1:
      0026E9 52 45 53 45 54        1581 	.ascii "RESET"
      0026EE 0D                    1582 	.db 0x0d
      0026EF 0A                    1583 	.db 0x0a
      0026F0 00                    1584 	.db 0x00
                                   1585 	.area CSEG    (CODE)
                                   1586 	.area CONST   (CODE)
      0026F1                       1587 ___str_2:
      0026F1 50 20 53 50 20 49 20  1588 	.ascii "P SP I L ENT S R T START MSG "
             4C 20 45 4E 54 20 53
             20 52 20 54 20 53 54
             41 52 54 20 4D 53 47
             20
      00270E 22                    1589 	.db 0x22
      00270F 00                    1590 	.db 0x00
                                   1591 	.area CSEG    (CODE)
                                   1592 	.area CONST   (CODE)
      002710                       1593 ___str_3:
      002710 22                    1594 	.db 0x22
      002711 0D                    1595 	.db 0x0d
      002712 0A                    1596 	.db 0x0a
      002713 00                    1597 	.db 0x00
                                   1598 	.area CSEG    (CODE)
                                   1599 	.area CONST   (CODE)
      002714                       1600 ___str_4:
      002714 4C 4F 41 44 20        1601 	.ascii "LOAD "
      002719 00                    1602 	.db 0x00
                                   1603 	.area CSEG    (CODE)
                                   1604 	.area CONST   (CODE)
      00271A                       1605 ___str_5:
      00271A 0D                    1606 	.db 0x0d
      00271B 0A                    1607 	.db 0x0a
      00271C 00                    1608 	.db 0x00
                                   1609 	.area CSEG    (CODE)
                                   1610 	.area CONST   (CODE)
      00271D                       1611 ___str_6:
      00271D 4D 53 47 20           1612 	.ascii "MSG "
      002721 22                    1613 	.db 0x22
      002722 00                    1614 	.db 0x00
                                   1615 	.area CSEG    (CODE)
                                   1616 	.area CONST   (CODE)
      002723                       1617 ___str_7:
      002723 54 45 52 4D           1618 	.ascii "TERM"
      002727 0D                    1619 	.db 0x0d
      002728 0A                    1620 	.db 0x0a
      002729 00                    1621 	.db 0x00
                                   1622 	.area CSEG    (CODE)
                                   1623 	.area CONST   (CODE)
      00272A                       1624 ___str_8:
      00272A 4A 65 64 65 6D 20 64  1625 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      00275B 00                    1626 	.db 0x00
                                   1627 	.area CSEG    (CODE)
                                   1628 	.area XINIT   (CODE)
      00275C                       1629 __xinit___ft_font6x8:
      00275C 00                    1630 	.db #0x00	; 0
      00275D 00                    1631 	.db #0x00	; 0
      00275E 00                    1632 	.db #0x00	; 0
      00275F 00                    1633 	.db #0x00	; 0
      002760 00                    1634 	.db #0x00	; 0
      002761 00                    1635 	.db #0x00	; 0
      002762 00                    1636 	.db #0x00	; 0
      002763 00                    1637 	.db #0x00	; 0
      002764 1C                    1638 	.db #0x1c	; 28
      002765 22                    1639 	.db #0x22	; 34
      002766 36                    1640 	.db #0x36	; 54	'6'
      002767 22                    1641 	.db #0x22	; 34
      002768 2A                    1642 	.db #0x2a	; 42
      002769 22                    1643 	.db #0x22	; 34
      00276A 1C                    1644 	.db #0x1c	; 28
      00276B 00                    1645 	.db #0x00	; 0
      00276C 1C                    1646 	.db #0x1c	; 28
      00276D 3E                    1647 	.db #0x3e	; 62
      00276E 2A                    1648 	.db #0x2a	; 42
      00276F 3E                    1649 	.db #0x3e	; 62
      002770 22                    1650 	.db #0x22	; 34
      002771 3E                    1651 	.db #0x3e	; 62
      002772 1C                    1652 	.db #0x1c	; 28
      002773 00                    1653 	.db #0x00	; 0
      002774 00                    1654 	.db #0x00	; 0
      002775 14                    1655 	.db #0x14	; 20
      002776 3E                    1656 	.db #0x3e	; 62
      002777 3E                    1657 	.db #0x3e	; 62
      002778 3E                    1658 	.db #0x3e	; 62
      002779 1C                    1659 	.db #0x1c	; 28
      00277A 08                    1660 	.db #0x08	; 8
      00277B 00                    1661 	.db #0x00	; 0
      00277C 00                    1662 	.db #0x00	; 0
      00277D 08                    1663 	.db #0x08	; 8
      00277E 1C                    1664 	.db #0x1c	; 28
      00277F 3E                    1665 	.db #0x3e	; 62
      002780 3E                    1666 	.db #0x3e	; 62
      002781 1C                    1667 	.db #0x1c	; 28
      002782 08                    1668 	.db #0x08	; 8
      002783 00                    1669 	.db #0x00	; 0
      002784 08                    1670 	.db #0x08	; 8
      002785 1C                    1671 	.db #0x1c	; 28
      002786 1C                    1672 	.db #0x1c	; 28
      002787 08                    1673 	.db #0x08	; 8
      002788 3E                    1674 	.db #0x3e	; 62
      002789 3E                    1675 	.db #0x3e	; 62
      00278A 08                    1676 	.db #0x08	; 8
      00278B 00                    1677 	.db #0x00	; 0
      00278C 00                    1678 	.db #0x00	; 0
      00278D 08                    1679 	.db #0x08	; 8
      00278E 1C                    1680 	.db #0x1c	; 28
      00278F 3E                    1681 	.db #0x3e	; 62
      002790 3E                    1682 	.db #0x3e	; 62
      002791 08                    1683 	.db #0x08	; 8
      002792 1C                    1684 	.db #0x1c	; 28
      002793 00                    1685 	.db #0x00	; 0
      002794 00                    1686 	.db #0x00	; 0
      002795 00                    1687 	.db #0x00	; 0
      002796 00                    1688 	.db #0x00	; 0
      002797 0C                    1689 	.db #0x0c	; 12
      002798 0C                    1690 	.db #0x0c	; 12
      002799 00                    1691 	.db #0x00	; 0
      00279A 00                    1692 	.db #0x00	; 0
      00279B 00                    1693 	.db #0x00	; 0
      00279C 3F                    1694 	.db #0x3f	; 63
      00279D 3F                    1695 	.db #0x3f	; 63
      00279E 3F                    1696 	.db #0x3f	; 63
      00279F 33                    1697 	.db #0x33	; 51	'3'
      0027A0 33                    1698 	.db #0x33	; 51	'3'
      0027A1 3F                    1699 	.db #0x3f	; 63
      0027A2 3F                    1700 	.db #0x3f	; 63
      0027A3 3F                    1701 	.db #0x3f	; 63
      0027A4 00                    1702 	.db #0x00	; 0
      0027A5 00                    1703 	.db #0x00	; 0
      0027A6 1E                    1704 	.db #0x1e	; 30
      0027A7 12                    1705 	.db #0x12	; 18
      0027A8 12                    1706 	.db #0x12	; 18
      0027A9 1E                    1707 	.db #0x1e	; 30
      0027AA 00                    1708 	.db #0x00	; 0
      0027AB 00                    1709 	.db #0x00	; 0
      0027AC 3F                    1710 	.db #0x3f	; 63
      0027AD 3F                    1711 	.db #0x3f	; 63
      0027AE 21                    1712 	.db #0x21	; 33
      0027AF 2D                    1713 	.db #0x2d	; 45
      0027B0 2D                    1714 	.db #0x2d	; 45
      0027B1 21                    1715 	.db #0x21	; 33
      0027B2 3F                    1716 	.db #0x3f	; 63
      0027B3 3F                    1717 	.db #0x3f	; 63
      0027B4 00                    1718 	.db #0x00	; 0
      0027B5 38                    1719 	.db #0x38	; 56	'8'
      0027B6 30                    1720 	.db #0x30	; 48	'0'
      0027B7 2C                    1721 	.db #0x2c	; 44
      0027B8 12                    1722 	.db #0x12	; 18
      0027B9 12                    1723 	.db #0x12	; 18
      0027BA 0C                    1724 	.db #0x0c	; 12
      0027BB 00                    1725 	.db #0x00	; 0
      0027BC 1C                    1726 	.db #0x1c	; 28
      0027BD 22                    1727 	.db #0x22	; 34
      0027BE 22                    1728 	.db #0x22	; 34
      0027BF 1C                    1729 	.db #0x1c	; 28
      0027C0 08                    1730 	.db #0x08	; 8
      0027C1 1C                    1731 	.db #0x1c	; 28
      0027C2 08                    1732 	.db #0x08	; 8
      0027C3 00                    1733 	.db #0x00	; 0
      0027C4 08                    1734 	.db #0x08	; 8
      0027C5 18                    1735 	.db #0x18	; 24
      0027C6 28                    1736 	.db #0x28	; 40
      0027C7 08                    1737 	.db #0x08	; 8
      0027C8 0C                    1738 	.db #0x0c	; 12
      0027C9 0E                    1739 	.db #0x0e	; 14
      0027CA 06                    1740 	.db #0x06	; 6
      0027CB 00                    1741 	.db #0x00	; 0
      0027CC 30                    1742 	.db #0x30	; 48	'0'
      0027CD 2C                    1743 	.db #0x2c	; 44
      0027CE 34                    1744 	.db #0x34	; 52	'4'
      0027CF 2C                    1745 	.db #0x2c	; 44
      0027D0 34                    1746 	.db #0x34	; 52	'4'
      0027D1 36                    1747 	.db #0x36	; 54	'6'
      0027D2 06                    1748 	.db #0x06	; 6
      0027D3 00                    1749 	.db #0x00	; 0
      0027D4 00                    1750 	.db #0x00	; 0
      0027D5 2A                    1751 	.db #0x2a	; 42
      0027D6 1C                    1752 	.db #0x1c	; 28
      0027D7 36                    1753 	.db #0x36	; 54	'6'
      0027D8 1C                    1754 	.db #0x1c	; 28
      0027D9 2A                    1755 	.db #0x2a	; 42
      0027DA 00                    1756 	.db #0x00	; 0
      0027DB 00                    1757 	.db #0x00	; 0
      0027DC 04                    1758 	.db #0x04	; 4
      0027DD 0C                    1759 	.db #0x0c	; 12
      0027DE 1C                    1760 	.db #0x1c	; 28
      0027DF 3C                    1761 	.db #0x3c	; 60
      0027E0 1C                    1762 	.db #0x1c	; 28
      0027E1 0C                    1763 	.db #0x0c	; 12
      0027E2 04                    1764 	.db #0x04	; 4
      0027E3 00                    1765 	.db #0x00	; 0
      0027E4 10                    1766 	.db #0x10	; 16
      0027E5 18                    1767 	.db #0x18	; 24
      0027E6 1C                    1768 	.db #0x1c	; 28
      0027E7 1E                    1769 	.db #0x1e	; 30
      0027E8 1C                    1770 	.db #0x1c	; 28
      0027E9 18                    1771 	.db #0x18	; 24
      0027EA 10                    1772 	.db #0x10	; 16
      0027EB 00                    1773 	.db #0x00	; 0
      0027EC 08                    1774 	.db #0x08	; 8
      0027ED 1C                    1775 	.db #0x1c	; 28
      0027EE 3E                    1776 	.db #0x3e	; 62
      0027EF 08                    1777 	.db #0x08	; 8
      0027F0 3E                    1778 	.db #0x3e	; 62
      0027F1 1C                    1779 	.db #0x1c	; 28
      0027F2 08                    1780 	.db #0x08	; 8
      0027F3 00                    1781 	.db #0x00	; 0
      0027F4 14                    1782 	.db #0x14	; 20
      0027F5 14                    1783 	.db #0x14	; 20
      0027F6 14                    1784 	.db #0x14	; 20
      0027F7 14                    1785 	.db #0x14	; 20
      0027F8 14                    1786 	.db #0x14	; 20
      0027F9 00                    1787 	.db #0x00	; 0
      0027FA 14                    1788 	.db #0x14	; 20
      0027FB 00                    1789 	.db #0x00	; 0
      0027FC 3C                    1790 	.db #0x3c	; 60
      0027FD 2A                    1791 	.db #0x2a	; 42
      0027FE 2A                    1792 	.db #0x2a	; 42
      0027FF 2C                    1793 	.db #0x2c	; 44
      002800 28                    1794 	.db #0x28	; 40
      002801 28                    1795 	.db #0x28	; 40
      002802 28                    1796 	.db #0x28	; 40
      002803 00                    1797 	.db #0x00	; 0
      002804 1C                    1798 	.db #0x1c	; 28
      002805 22                    1799 	.db #0x22	; 34
      002806 0C                    1800 	.db #0x0c	; 12
      002807 14                    1801 	.db #0x14	; 20
      002808 18                    1802 	.db #0x18	; 24
      002809 22                    1803 	.db #0x22	; 34
      00280A 1C                    1804 	.db #0x1c	; 28
      00280B 00                    1805 	.db #0x00	; 0
      00280C 00                    1806 	.db #0x00	; 0
      00280D 00                    1807 	.db #0x00	; 0
      00280E 00                    1808 	.db #0x00	; 0
      00280F 00                    1809 	.db #0x00	; 0
      002810 00                    1810 	.db #0x00	; 0
      002811 1E                    1811 	.db #0x1e	; 30
      002812 1E                    1812 	.db #0x1e	; 30
      002813 00                    1813 	.db #0x00	; 0
      002814 08                    1814 	.db #0x08	; 8
      002815 1C                    1815 	.db #0x1c	; 28
      002816 3E                    1816 	.db #0x3e	; 62
      002817 08                    1817 	.db #0x08	; 8
      002818 3E                    1818 	.db #0x3e	; 62
      002819 1C                    1819 	.db #0x1c	; 28
      00281A 08                    1820 	.db #0x08	; 8
      00281B 1C                    1821 	.db #0x1c	; 28
      00281C 08                    1822 	.db #0x08	; 8
      00281D 1C                    1823 	.db #0x1c	; 28
      00281E 3E                    1824 	.db #0x3e	; 62
      00281F 08                    1825 	.db #0x08	; 8
      002820 08                    1826 	.db #0x08	; 8
      002821 08                    1827 	.db #0x08	; 8
      002822 08                    1828 	.db #0x08	; 8
      002823 00                    1829 	.db #0x00	; 0
      002824 08                    1830 	.db #0x08	; 8
      002825 08                    1831 	.db #0x08	; 8
      002826 08                    1832 	.db #0x08	; 8
      002827 08                    1833 	.db #0x08	; 8
      002828 3E                    1834 	.db #0x3e	; 62
      002829 1C                    1835 	.db #0x1c	; 28
      00282A 08                    1836 	.db #0x08	; 8
      00282B 00                    1837 	.db #0x00	; 0
      00282C 00                    1838 	.db #0x00	; 0
      00282D 08                    1839 	.db #0x08	; 8
      00282E 18                    1840 	.db #0x18	; 24
      00282F 3E                    1841 	.db #0x3e	; 62
      002830 18                    1842 	.db #0x18	; 24
      002831 08                    1843 	.db #0x08	; 8
      002832 00                    1844 	.db #0x00	; 0
      002833 00                    1845 	.db #0x00	; 0
      002834 00                    1846 	.db #0x00	; 0
      002835 08                    1847 	.db #0x08	; 8
      002836 0C                    1848 	.db #0x0c	; 12
      002837 3E                    1849 	.db #0x3e	; 62
      002838 0C                    1850 	.db #0x0c	; 12
      002839 08                    1851 	.db #0x08	; 8
      00283A 00                    1852 	.db #0x00	; 0
      00283B 00                    1853 	.db #0x00	; 0
      00283C 00                    1854 	.db #0x00	; 0
      00283D 00                    1855 	.db #0x00	; 0
      00283E 00                    1856 	.db #0x00	; 0
      00283F 02                    1857 	.db #0x02	; 2
      002840 02                    1858 	.db #0x02	; 2
      002841 02                    1859 	.db #0x02	; 2
      002842 3E                    1860 	.db #0x3e	; 62
      002843 00                    1861 	.db #0x00	; 0
      002844 00                    1862 	.db #0x00	; 0
      002845 14                    1863 	.db #0x14	; 20
      002846 14                    1864 	.db #0x14	; 20
      002847 3E                    1865 	.db #0x3e	; 62
      002848 14                    1866 	.db #0x14	; 20
      002849 14                    1867 	.db #0x14	; 20
      00284A 00                    1868 	.db #0x00	; 0
      00284B 00                    1869 	.db #0x00	; 0
      00284C 08                    1870 	.db #0x08	; 8
      00284D 08                    1871 	.db #0x08	; 8
      00284E 1C                    1872 	.db #0x1c	; 28
      00284F 1C                    1873 	.db #0x1c	; 28
      002850 3E                    1874 	.db #0x3e	; 62
      002851 3E                    1875 	.db #0x3e	; 62
      002852 00                    1876 	.db #0x00	; 0
      002853 00                    1877 	.db #0x00	; 0
      002854 3E                    1878 	.db #0x3e	; 62
      002855 3E                    1879 	.db #0x3e	; 62
      002856 1C                    1880 	.db #0x1c	; 28
      002857 1C                    1881 	.db #0x1c	; 28
      002858 08                    1882 	.db #0x08	; 8
      002859 08                    1883 	.db #0x08	; 8
      00285A 00                    1884 	.db #0x00	; 0
      00285B 00                    1885 	.db #0x00	; 0
      00285C 00                    1886 	.db #0x00	; 0
      00285D 00                    1887 	.db #0x00	; 0
      00285E 00                    1888 	.db #0x00	; 0
      00285F 00                    1889 	.db #0x00	; 0
      002860 00                    1890 	.db #0x00	; 0
      002861 00                    1891 	.db #0x00	; 0
      002862 00                    1892 	.db #0x00	; 0
      002863 00                    1893 	.db #0x00	; 0
      002864 08                    1894 	.db #0x08	; 8
      002865 1C                    1895 	.db #0x1c	; 28
      002866 1C                    1896 	.db #0x1c	; 28
      002867 08                    1897 	.db #0x08	; 8
      002868 08                    1898 	.db #0x08	; 8
      002869 00                    1899 	.db #0x00	; 0
      00286A 08                    1900 	.db #0x08	; 8
      00286B 00                    1901 	.db #0x00	; 0
      00286C 36                    1902 	.db #0x36	; 54	'6'
      00286D 36                    1903 	.db #0x36	; 54	'6'
      00286E 12                    1904 	.db #0x12	; 18
      00286F 00                    1905 	.db #0x00	; 0
      002870 00                    1906 	.db #0x00	; 0
      002871 00                    1907 	.db #0x00	; 0
      002872 00                    1908 	.db #0x00	; 0
      002873 00                    1909 	.db #0x00	; 0
      002874 00                    1910 	.db #0x00	; 0
      002875 14                    1911 	.db #0x14	; 20
      002876 3E                    1912 	.db #0x3e	; 62
      002877 14                    1913 	.db #0x14	; 20
      002878 14                    1914 	.db #0x14	; 20
      002879 3E                    1915 	.db #0x3e	; 62
      00287A 14                    1916 	.db #0x14	; 20
      00287B 00                    1917 	.db #0x00	; 0
      00287C 04                    1918 	.db #0x04	; 4
      00287D 1C                    1919 	.db #0x1c	; 28
      00287E 02                    1920 	.db #0x02	; 2
      00287F 0C                    1921 	.db #0x0c	; 12
      002880 10                    1922 	.db #0x10	; 16
      002881 0E                    1923 	.db #0x0e	; 14
      002882 08                    1924 	.db #0x08	; 8
      002883 00                    1925 	.db #0x00	; 0
      002884 26                    1926 	.db #0x26	; 38
      002885 26                    1927 	.db #0x26	; 38
      002886 10                    1928 	.db #0x10	; 16
      002887 08                    1929 	.db #0x08	; 8
      002888 04                    1930 	.db #0x04	; 4
      002889 32                    1931 	.db #0x32	; 50	'2'
      00288A 32                    1932 	.db #0x32	; 50	'2'
      00288B 00                    1933 	.db #0x00	; 0
      00288C 04                    1934 	.db #0x04	; 4
      00288D 0A                    1935 	.db #0x0a	; 10
      00288E 0A                    1936 	.db #0x0a	; 10
      00288F 04                    1937 	.db #0x04	; 4
      002890 2A                    1938 	.db #0x2a	; 42
      002891 12                    1939 	.db #0x12	; 18
      002892 2C                    1940 	.db #0x2c	; 44
      002893 00                    1941 	.db #0x00	; 0
      002894 0C                    1942 	.db #0x0c	; 12
      002895 0C                    1943 	.db #0x0c	; 12
      002896 04                    1944 	.db #0x04	; 4
      002897 00                    1945 	.db #0x00	; 0
      002898 00                    1946 	.db #0x00	; 0
      002899 00                    1947 	.db #0x00	; 0
      00289A 00                    1948 	.db #0x00	; 0
      00289B 00                    1949 	.db #0x00	; 0
      00289C 08                    1950 	.db #0x08	; 8
      00289D 04                    1951 	.db #0x04	; 4
      00289E 04                    1952 	.db #0x04	; 4
      00289F 04                    1953 	.db #0x04	; 4
      0028A0 04                    1954 	.db #0x04	; 4
      0028A1 04                    1955 	.db #0x04	; 4
      0028A2 08                    1956 	.db #0x08	; 8
      0028A3 00                    1957 	.db #0x00	; 0
      0028A4 04                    1958 	.db #0x04	; 4
      0028A5 08                    1959 	.db #0x08	; 8
      0028A6 08                    1960 	.db #0x08	; 8
      0028A7 08                    1961 	.db #0x08	; 8
      0028A8 08                    1962 	.db #0x08	; 8
      0028A9 08                    1963 	.db #0x08	; 8
      0028AA 04                    1964 	.db #0x04	; 4
      0028AB 00                    1965 	.db #0x00	; 0
      0028AC 00                    1966 	.db #0x00	; 0
      0028AD 14                    1967 	.db #0x14	; 20
      0028AE 1C                    1968 	.db #0x1c	; 28
      0028AF 3E                    1969 	.db #0x3e	; 62
      0028B0 1C                    1970 	.db #0x1c	; 28
      0028B1 14                    1971 	.db #0x14	; 20
      0028B2 00                    1972 	.db #0x00	; 0
      0028B3 00                    1973 	.db #0x00	; 0
      0028B4 00                    1974 	.db #0x00	; 0
      0028B5 08                    1975 	.db #0x08	; 8
      0028B6 08                    1976 	.db #0x08	; 8
      0028B7 3E                    1977 	.db #0x3e	; 62
      0028B8 08                    1978 	.db #0x08	; 8
      0028B9 08                    1979 	.db #0x08	; 8
      0028BA 00                    1980 	.db #0x00	; 0
      0028BB 00                    1981 	.db #0x00	; 0
      0028BC 00                    1982 	.db #0x00	; 0
      0028BD 00                    1983 	.db #0x00	; 0
      0028BE 00                    1984 	.db #0x00	; 0
      0028BF 00                    1985 	.db #0x00	; 0
      0028C0 00                    1986 	.db #0x00	; 0
      0028C1 0C                    1987 	.db #0x0c	; 12
      0028C2 0C                    1988 	.db #0x0c	; 12
      0028C3 04                    1989 	.db #0x04	; 4
      0028C4 00                    1990 	.db #0x00	; 0
      0028C5 00                    1991 	.db #0x00	; 0
      0028C6 00                    1992 	.db #0x00	; 0
      0028C7 3E                    1993 	.db #0x3e	; 62
      0028C8 00                    1994 	.db #0x00	; 0
      0028C9 00                    1995 	.db #0x00	; 0
      0028CA 00                    1996 	.db #0x00	; 0
      0028CB 00                    1997 	.db #0x00	; 0
      0028CC 00                    1998 	.db #0x00	; 0
      0028CD 00                    1999 	.db #0x00	; 0
      0028CE 00                    2000 	.db #0x00	; 0
      0028CF 00                    2001 	.db #0x00	; 0
      0028D0 00                    2002 	.db #0x00	; 0
      0028D1 0C                    2003 	.db #0x0c	; 12
      0028D2 0C                    2004 	.db #0x0c	; 12
      0028D3 00                    2005 	.db #0x00	; 0
      0028D4 00                    2006 	.db #0x00	; 0
      0028D5 20                    2007 	.db #0x20	; 32
      0028D6 10                    2008 	.db #0x10	; 16
      0028D7 08                    2009 	.db #0x08	; 8
      0028D8 04                    2010 	.db #0x04	; 4
      0028D9 02                    2011 	.db #0x02	; 2
      0028DA 00                    2012 	.db #0x00	; 0
      0028DB 00                    2013 	.db #0x00	; 0
      0028DC 1C                    2014 	.db #0x1c	; 28
      0028DD 22                    2015 	.db #0x22	; 34
      0028DE 32                    2016 	.db #0x32	; 50	'2'
      0028DF 2A                    2017 	.db #0x2a	; 42
      0028E0 26                    2018 	.db #0x26	; 38
      0028E1 22                    2019 	.db #0x22	; 34
      0028E2 1C                    2020 	.db #0x1c	; 28
      0028E3 00                    2021 	.db #0x00	; 0
      0028E4 08                    2022 	.db #0x08	; 8
      0028E5 0C                    2023 	.db #0x0c	; 12
      0028E6 08                    2024 	.db #0x08	; 8
      0028E7 08                    2025 	.db #0x08	; 8
      0028E8 08                    2026 	.db #0x08	; 8
      0028E9 08                    2027 	.db #0x08	; 8
      0028EA 1C                    2028 	.db #0x1c	; 28
      0028EB 00                    2029 	.db #0x00	; 0
      0028EC 1C                    2030 	.db #0x1c	; 28
      0028ED 22                    2031 	.db #0x22	; 34
      0028EE 20                    2032 	.db #0x20	; 32
      0028EF 18                    2033 	.db #0x18	; 24
      0028F0 04                    2034 	.db #0x04	; 4
      0028F1 02                    2035 	.db #0x02	; 2
      0028F2 3E                    2036 	.db #0x3e	; 62
      0028F3 00                    2037 	.db #0x00	; 0
      0028F4 1C                    2038 	.db #0x1c	; 28
      0028F5 22                    2039 	.db #0x22	; 34
      0028F6 20                    2040 	.db #0x20	; 32
      0028F7 1C                    2041 	.db #0x1c	; 28
      0028F8 20                    2042 	.db #0x20	; 32
      0028F9 22                    2043 	.db #0x22	; 34
      0028FA 1C                    2044 	.db #0x1c	; 28
      0028FB 00                    2045 	.db #0x00	; 0
      0028FC 10                    2046 	.db #0x10	; 16
      0028FD 18                    2047 	.db #0x18	; 24
      0028FE 14                    2048 	.db #0x14	; 20
      0028FF 12                    2049 	.db #0x12	; 18
      002900 3E                    2050 	.db #0x3e	; 62
      002901 10                    2051 	.db #0x10	; 16
      002902 10                    2052 	.db #0x10	; 16
      002903 00                    2053 	.db #0x00	; 0
      002904 3E                    2054 	.db #0x3e	; 62
      002905 02                    2055 	.db #0x02	; 2
      002906 02                    2056 	.db #0x02	; 2
      002907 1E                    2057 	.db #0x1e	; 30
      002908 20                    2058 	.db #0x20	; 32
      002909 22                    2059 	.db #0x22	; 34
      00290A 1C                    2060 	.db #0x1c	; 28
      00290B 00                    2061 	.db #0x00	; 0
      00290C 18                    2062 	.db #0x18	; 24
      00290D 04                    2063 	.db #0x04	; 4
      00290E 02                    2064 	.db #0x02	; 2
      00290F 1E                    2065 	.db #0x1e	; 30
      002910 22                    2066 	.db #0x22	; 34
      002911 22                    2067 	.db #0x22	; 34
      002912 1C                    2068 	.db #0x1c	; 28
      002913 00                    2069 	.db #0x00	; 0
      002914 3E                    2070 	.db #0x3e	; 62
      002915 20                    2071 	.db #0x20	; 32
      002916 10                    2072 	.db #0x10	; 16
      002917 08                    2073 	.db #0x08	; 8
      002918 04                    2074 	.db #0x04	; 4
      002919 04                    2075 	.db #0x04	; 4
      00291A 04                    2076 	.db #0x04	; 4
      00291B 00                    2077 	.db #0x00	; 0
      00291C 1C                    2078 	.db #0x1c	; 28
      00291D 22                    2079 	.db #0x22	; 34
      00291E 22                    2080 	.db #0x22	; 34
      00291F 1C                    2081 	.db #0x1c	; 28
      002920 22                    2082 	.db #0x22	; 34
      002921 22                    2083 	.db #0x22	; 34
      002922 1C                    2084 	.db #0x1c	; 28
      002923 00                    2085 	.db #0x00	; 0
      002924 1C                    2086 	.db #0x1c	; 28
      002925 22                    2087 	.db #0x22	; 34
      002926 22                    2088 	.db #0x22	; 34
      002927 3C                    2089 	.db #0x3c	; 60
      002928 20                    2090 	.db #0x20	; 32
      002929 10                    2091 	.db #0x10	; 16
      00292A 0C                    2092 	.db #0x0c	; 12
      00292B 00                    2093 	.db #0x00	; 0
      00292C 00                    2094 	.db #0x00	; 0
      00292D 00                    2095 	.db #0x00	; 0
      00292E 0C                    2096 	.db #0x0c	; 12
      00292F 0C                    2097 	.db #0x0c	; 12
      002930 00                    2098 	.db #0x00	; 0
      002931 0C                    2099 	.db #0x0c	; 12
      002932 0C                    2100 	.db #0x0c	; 12
      002933 00                    2101 	.db #0x00	; 0
      002934 00                    2102 	.db #0x00	; 0
      002935 00                    2103 	.db #0x00	; 0
      002936 0C                    2104 	.db #0x0c	; 12
      002937 0C                    2105 	.db #0x0c	; 12
      002938 00                    2106 	.db #0x00	; 0
      002939 0C                    2107 	.db #0x0c	; 12
      00293A 0C                    2108 	.db #0x0c	; 12
      00293B 04                    2109 	.db #0x04	; 4
      00293C 10                    2110 	.db #0x10	; 16
      00293D 08                    2111 	.db #0x08	; 8
      00293E 04                    2112 	.db #0x04	; 4
      00293F 02                    2113 	.db #0x02	; 2
      002940 04                    2114 	.db #0x04	; 4
      002941 08                    2115 	.db #0x08	; 8
      002942 10                    2116 	.db #0x10	; 16
      002943 00                    2117 	.db #0x00	; 0
      002944 00                    2118 	.db #0x00	; 0
      002945 00                    2119 	.db #0x00	; 0
      002946 3E                    2120 	.db #0x3e	; 62
      002947 00                    2121 	.db #0x00	; 0
      002948 00                    2122 	.db #0x00	; 0
      002949 3E                    2123 	.db #0x3e	; 62
      00294A 00                    2124 	.db #0x00	; 0
      00294B 00                    2125 	.db #0x00	; 0
      00294C 04                    2126 	.db #0x04	; 4
      00294D 08                    2127 	.db #0x08	; 8
      00294E 10                    2128 	.db #0x10	; 16
      00294F 20                    2129 	.db #0x20	; 32
      002950 10                    2130 	.db #0x10	; 16
      002951 08                    2131 	.db #0x08	; 8
      002952 04                    2132 	.db #0x04	; 4
      002953 00                    2133 	.db #0x00	; 0
      002954 1C                    2134 	.db #0x1c	; 28
      002955 22                    2135 	.db #0x22	; 34
      002956 20                    2136 	.db #0x20	; 32
      002957 18                    2137 	.db #0x18	; 24
      002958 08                    2138 	.db #0x08	; 8
      002959 00                    2139 	.db #0x00	; 0
      00295A 08                    2140 	.db #0x08	; 8
      00295B 00                    2141 	.db #0x00	; 0
      00295C 1C                    2142 	.db #0x1c	; 28
      00295D 22                    2143 	.db #0x22	; 34
      00295E 3A                    2144 	.db #0x3a	; 58
      00295F 2A                    2145 	.db #0x2a	; 42
      002960 3A                    2146 	.db #0x3a	; 58
      002961 02                    2147 	.db #0x02	; 2
      002962 1C                    2148 	.db #0x1c	; 28
      002963 00                    2149 	.db #0x00	; 0
      002964 1C                    2150 	.db #0x1c	; 28
      002965 22                    2151 	.db #0x22	; 34
      002966 22                    2152 	.db #0x22	; 34
      002967 22                    2153 	.db #0x22	; 34
      002968 3E                    2154 	.db #0x3e	; 62
      002969 22                    2155 	.db #0x22	; 34
      00296A 22                    2156 	.db #0x22	; 34
      00296B 00                    2157 	.db #0x00	; 0
      00296C 1E                    2158 	.db #0x1e	; 30
      00296D 22                    2159 	.db #0x22	; 34
      00296E 22                    2160 	.db #0x22	; 34
      00296F 1E                    2161 	.db #0x1e	; 30
      002970 22                    2162 	.db #0x22	; 34
      002971 22                    2163 	.db #0x22	; 34
      002972 1E                    2164 	.db #0x1e	; 30
      002973 00                    2165 	.db #0x00	; 0
      002974 1C                    2166 	.db #0x1c	; 28
      002975 22                    2167 	.db #0x22	; 34
      002976 02                    2168 	.db #0x02	; 2
      002977 02                    2169 	.db #0x02	; 2
      002978 02                    2170 	.db #0x02	; 2
      002979 22                    2171 	.db #0x22	; 34
      00297A 1C                    2172 	.db #0x1c	; 28
      00297B 00                    2173 	.db #0x00	; 0
      00297C 1E                    2174 	.db #0x1e	; 30
      00297D 22                    2175 	.db #0x22	; 34
      00297E 22                    2176 	.db #0x22	; 34
      00297F 22                    2177 	.db #0x22	; 34
      002980 22                    2178 	.db #0x22	; 34
      002981 22                    2179 	.db #0x22	; 34
      002982 1E                    2180 	.db #0x1e	; 30
      002983 00                    2181 	.db #0x00	; 0
      002984 3E                    2182 	.db #0x3e	; 62
      002985 02                    2183 	.db #0x02	; 2
      002986 02                    2184 	.db #0x02	; 2
      002987 1E                    2185 	.db #0x1e	; 30
      002988 02                    2186 	.db #0x02	; 2
      002989 02                    2187 	.db #0x02	; 2
      00298A 3E                    2188 	.db #0x3e	; 62
      00298B 00                    2189 	.db #0x00	; 0
      00298C 3E                    2190 	.db #0x3e	; 62
      00298D 02                    2191 	.db #0x02	; 2
      00298E 02                    2192 	.db #0x02	; 2
      00298F 1E                    2193 	.db #0x1e	; 30
      002990 02                    2194 	.db #0x02	; 2
      002991 02                    2195 	.db #0x02	; 2
      002992 02                    2196 	.db #0x02	; 2
      002993 00                    2197 	.db #0x00	; 0
      002994 1C                    2198 	.db #0x1c	; 28
      002995 22                    2199 	.db #0x22	; 34
      002996 02                    2200 	.db #0x02	; 2
      002997 3A                    2201 	.db #0x3a	; 58
      002998 22                    2202 	.db #0x22	; 34
      002999 22                    2203 	.db #0x22	; 34
      00299A 3C                    2204 	.db #0x3c	; 60
      00299B 00                    2205 	.db #0x00	; 0
      00299C 22                    2206 	.db #0x22	; 34
      00299D 22                    2207 	.db #0x22	; 34
      00299E 22                    2208 	.db #0x22	; 34
      00299F 3E                    2209 	.db #0x3e	; 62
      0029A0 22                    2210 	.db #0x22	; 34
      0029A1 22                    2211 	.db #0x22	; 34
      0029A2 22                    2212 	.db #0x22	; 34
      0029A3 00                    2213 	.db #0x00	; 0
      0029A4 1C                    2214 	.db #0x1c	; 28
      0029A5 08                    2215 	.db #0x08	; 8
      0029A6 08                    2216 	.db #0x08	; 8
      0029A7 08                    2217 	.db #0x08	; 8
      0029A8 08                    2218 	.db #0x08	; 8
      0029A9 08                    2219 	.db #0x08	; 8
      0029AA 1C                    2220 	.db #0x1c	; 28
      0029AB 00                    2221 	.db #0x00	; 0
      0029AC 20                    2222 	.db #0x20	; 32
      0029AD 20                    2223 	.db #0x20	; 32
      0029AE 20                    2224 	.db #0x20	; 32
      0029AF 20                    2225 	.db #0x20	; 32
      0029B0 22                    2226 	.db #0x22	; 34
      0029B1 22                    2227 	.db #0x22	; 34
      0029B2 1C                    2228 	.db #0x1c	; 28
      0029B3 00                    2229 	.db #0x00	; 0
      0029B4 22                    2230 	.db #0x22	; 34
      0029B5 12                    2231 	.db #0x12	; 18
      0029B6 0A                    2232 	.db #0x0a	; 10
      0029B7 06                    2233 	.db #0x06	; 6
      0029B8 0A                    2234 	.db #0x0a	; 10
      0029B9 12                    2235 	.db #0x12	; 18
      0029BA 22                    2236 	.db #0x22	; 34
      0029BB 00                    2237 	.db #0x00	; 0
      0029BC 02                    2238 	.db #0x02	; 2
      0029BD 02                    2239 	.db #0x02	; 2
      0029BE 02                    2240 	.db #0x02	; 2
      0029BF 02                    2241 	.db #0x02	; 2
      0029C0 02                    2242 	.db #0x02	; 2
      0029C1 02                    2243 	.db #0x02	; 2
      0029C2 3E                    2244 	.db #0x3e	; 62
      0029C3 00                    2245 	.db #0x00	; 0
      0029C4 22                    2246 	.db #0x22	; 34
      0029C5 36                    2247 	.db #0x36	; 54	'6'
      0029C6 2A                    2248 	.db #0x2a	; 42
      0029C7 22                    2249 	.db #0x22	; 34
      0029C8 22                    2250 	.db #0x22	; 34
      0029C9 22                    2251 	.db #0x22	; 34
      0029CA 22                    2252 	.db #0x22	; 34
      0029CB 00                    2253 	.db #0x00	; 0
      0029CC 22                    2254 	.db #0x22	; 34
      0029CD 26                    2255 	.db #0x26	; 38
      0029CE 2A                    2256 	.db #0x2a	; 42
      0029CF 32                    2257 	.db #0x32	; 50	'2'
      0029D0 22                    2258 	.db #0x22	; 34
      0029D1 22                    2259 	.db #0x22	; 34
      0029D2 22                    2260 	.db #0x22	; 34
      0029D3 00                    2261 	.db #0x00	; 0
      0029D4 1C                    2262 	.db #0x1c	; 28
      0029D5 22                    2263 	.db #0x22	; 34
      0029D6 22                    2264 	.db #0x22	; 34
      0029D7 22                    2265 	.db #0x22	; 34
      0029D8 22                    2266 	.db #0x22	; 34
      0029D9 22                    2267 	.db #0x22	; 34
      0029DA 1C                    2268 	.db #0x1c	; 28
      0029DB 00                    2269 	.db #0x00	; 0
      0029DC 1E                    2270 	.db #0x1e	; 30
      0029DD 22                    2271 	.db #0x22	; 34
      0029DE 22                    2272 	.db #0x22	; 34
      0029DF 1E                    2273 	.db #0x1e	; 30
      0029E0 02                    2274 	.db #0x02	; 2
      0029E1 02                    2275 	.db #0x02	; 2
      0029E2 02                    2276 	.db #0x02	; 2
      0029E3 00                    2277 	.db #0x00	; 0
      0029E4 1C                    2278 	.db #0x1c	; 28
      0029E5 22                    2279 	.db #0x22	; 34
      0029E6 22                    2280 	.db #0x22	; 34
      0029E7 22                    2281 	.db #0x22	; 34
      0029E8 2A                    2282 	.db #0x2a	; 42
      0029E9 12                    2283 	.db #0x12	; 18
      0029EA 2C                    2284 	.db #0x2c	; 44
      0029EB 00                    2285 	.db #0x00	; 0
      0029EC 1E                    2286 	.db #0x1e	; 30
      0029ED 22                    2287 	.db #0x22	; 34
      0029EE 22                    2288 	.db #0x22	; 34
      0029EF 1E                    2289 	.db #0x1e	; 30
      0029F0 12                    2290 	.db #0x12	; 18
      0029F1 22                    2291 	.db #0x22	; 34
      0029F2 22                    2292 	.db #0x22	; 34
      0029F3 00                    2293 	.db #0x00	; 0
      0029F4 1C                    2294 	.db #0x1c	; 28
      0029F5 22                    2295 	.db #0x22	; 34
      0029F6 02                    2296 	.db #0x02	; 2
      0029F7 1C                    2297 	.db #0x1c	; 28
      0029F8 20                    2298 	.db #0x20	; 32
      0029F9 22                    2299 	.db #0x22	; 34
      0029FA 1C                    2300 	.db #0x1c	; 28
      0029FB 00                    2301 	.db #0x00	; 0
      0029FC 3E                    2302 	.db #0x3e	; 62
      0029FD 08                    2303 	.db #0x08	; 8
      0029FE 08                    2304 	.db #0x08	; 8
      0029FF 08                    2305 	.db #0x08	; 8
      002A00 08                    2306 	.db #0x08	; 8
      002A01 08                    2307 	.db #0x08	; 8
      002A02 08                    2308 	.db #0x08	; 8
      002A03 00                    2309 	.db #0x00	; 0
      002A04 22                    2310 	.db #0x22	; 34
      002A05 22                    2311 	.db #0x22	; 34
      002A06 22                    2312 	.db #0x22	; 34
      002A07 22                    2313 	.db #0x22	; 34
      002A08 22                    2314 	.db #0x22	; 34
      002A09 22                    2315 	.db #0x22	; 34
      002A0A 1C                    2316 	.db #0x1c	; 28
      002A0B 00                    2317 	.db #0x00	; 0
      002A0C 22                    2318 	.db #0x22	; 34
      002A0D 22                    2319 	.db #0x22	; 34
      002A0E 22                    2320 	.db #0x22	; 34
      002A0F 22                    2321 	.db #0x22	; 34
      002A10 22                    2322 	.db #0x22	; 34
      002A11 14                    2323 	.db #0x14	; 20
      002A12 08                    2324 	.db #0x08	; 8
      002A13 00                    2325 	.db #0x00	; 0
      002A14 22                    2326 	.db #0x22	; 34
      002A15 22                    2327 	.db #0x22	; 34
      002A16 2A                    2328 	.db #0x2a	; 42
      002A17 2A                    2329 	.db #0x2a	; 42
      002A18 2A                    2330 	.db #0x2a	; 42
      002A19 2A                    2331 	.db #0x2a	; 42
      002A1A 14                    2332 	.db #0x14	; 20
      002A1B 00                    2333 	.db #0x00	; 0
      002A1C 22                    2334 	.db #0x22	; 34
      002A1D 22                    2335 	.db #0x22	; 34
      002A1E 14                    2336 	.db #0x14	; 20
      002A1F 08                    2337 	.db #0x08	; 8
      002A20 14                    2338 	.db #0x14	; 20
      002A21 22                    2339 	.db #0x22	; 34
      002A22 22                    2340 	.db #0x22	; 34
      002A23 00                    2341 	.db #0x00	; 0
      002A24 22                    2342 	.db #0x22	; 34
      002A25 22                    2343 	.db #0x22	; 34
      002A26 22                    2344 	.db #0x22	; 34
      002A27 14                    2345 	.db #0x14	; 20
      002A28 08                    2346 	.db #0x08	; 8
      002A29 08                    2347 	.db #0x08	; 8
      002A2A 08                    2348 	.db #0x08	; 8
      002A2B 00                    2349 	.db #0x00	; 0
      002A2C 1E                    2350 	.db #0x1e	; 30
      002A2D 10                    2351 	.db #0x10	; 16
      002A2E 08                    2352 	.db #0x08	; 8
      002A2F 04                    2353 	.db #0x04	; 4
      002A30 02                    2354 	.db #0x02	; 2
      002A31 02                    2355 	.db #0x02	; 2
      002A32 1E                    2356 	.db #0x1e	; 30
      002A33 00                    2357 	.db #0x00	; 0
      002A34 1C                    2358 	.db #0x1c	; 28
      002A35 04                    2359 	.db #0x04	; 4
      002A36 04                    2360 	.db #0x04	; 4
      002A37 04                    2361 	.db #0x04	; 4
      002A38 04                    2362 	.db #0x04	; 4
      002A39 04                    2363 	.db #0x04	; 4
      002A3A 1C                    2364 	.db #0x1c	; 28
      002A3B 00                    2365 	.db #0x00	; 0
      002A3C 00                    2366 	.db #0x00	; 0
      002A3D 02                    2367 	.db #0x02	; 2
      002A3E 04                    2368 	.db #0x04	; 4
      002A3F 08                    2369 	.db #0x08	; 8
      002A40 10                    2370 	.db #0x10	; 16
      002A41 20                    2371 	.db #0x20	; 32
      002A42 00                    2372 	.db #0x00	; 0
      002A43 00                    2373 	.db #0x00	; 0
      002A44 1C                    2374 	.db #0x1c	; 28
      002A45 10                    2375 	.db #0x10	; 16
      002A46 10                    2376 	.db #0x10	; 16
      002A47 10                    2377 	.db #0x10	; 16
      002A48 10                    2378 	.db #0x10	; 16
      002A49 10                    2379 	.db #0x10	; 16
      002A4A 1C                    2380 	.db #0x1c	; 28
      002A4B 00                    2381 	.db #0x00	; 0
      002A4C 08                    2382 	.db #0x08	; 8
      002A4D 14                    2383 	.db #0x14	; 20
      002A4E 22                    2384 	.db #0x22	; 34
      002A4F 00                    2385 	.db #0x00	; 0
      002A50 00                    2386 	.db #0x00	; 0
      002A51 00                    2387 	.db #0x00	; 0
      002A52 00                    2388 	.db #0x00	; 0
      002A53 00                    2389 	.db #0x00	; 0
      002A54 00                    2390 	.db #0x00	; 0
      002A55 00                    2391 	.db #0x00	; 0
      002A56 00                    2392 	.db #0x00	; 0
      002A57 00                    2393 	.db #0x00	; 0
      002A58 00                    2394 	.db #0x00	; 0
      002A59 00                    2395 	.db #0x00	; 0
      002A5A 00                    2396 	.db #0x00	; 0
      002A5B 3F                    2397 	.db #0x3f	; 63
      002A5C 0C                    2398 	.db #0x0c	; 12
      002A5D 0C                    2399 	.db #0x0c	; 12
      002A5E 08                    2400 	.db #0x08	; 8
      002A5F 00                    2401 	.db #0x00	; 0
      002A60 00                    2402 	.db #0x00	; 0
      002A61 00                    2403 	.db #0x00	; 0
      002A62 00                    2404 	.db #0x00	; 0
      002A63 00                    2405 	.db #0x00	; 0
      002A64 00                    2406 	.db #0x00	; 0
      002A65 00                    2407 	.db #0x00	; 0
      002A66 1C                    2408 	.db #0x1c	; 28
      002A67 20                    2409 	.db #0x20	; 32
      002A68 3C                    2410 	.db #0x3c	; 60
      002A69 22                    2411 	.db #0x22	; 34
      002A6A 3C                    2412 	.db #0x3c	; 60
      002A6B 00                    2413 	.db #0x00	; 0
      002A6C 02                    2414 	.db #0x02	; 2
      002A6D 02                    2415 	.db #0x02	; 2
      002A6E 1E                    2416 	.db #0x1e	; 30
      002A6F 22                    2417 	.db #0x22	; 34
      002A70 22                    2418 	.db #0x22	; 34
      002A71 22                    2419 	.db #0x22	; 34
      002A72 1E                    2420 	.db #0x1e	; 30
      002A73 00                    2421 	.db #0x00	; 0
      002A74 00                    2422 	.db #0x00	; 0
      002A75 00                    2423 	.db #0x00	; 0
      002A76 1C                    2424 	.db #0x1c	; 28
      002A77 22                    2425 	.db #0x22	; 34
      002A78 02                    2426 	.db #0x02	; 2
      002A79 22                    2427 	.db #0x22	; 34
      002A7A 1C                    2428 	.db #0x1c	; 28
      002A7B 00                    2429 	.db #0x00	; 0
      002A7C 20                    2430 	.db #0x20	; 32
      002A7D 20                    2431 	.db #0x20	; 32
      002A7E 3C                    2432 	.db #0x3c	; 60
      002A7F 22                    2433 	.db #0x22	; 34
      002A80 22                    2434 	.db #0x22	; 34
      002A81 22                    2435 	.db #0x22	; 34
      002A82 3C                    2436 	.db #0x3c	; 60
      002A83 00                    2437 	.db #0x00	; 0
      002A84 00                    2438 	.db #0x00	; 0
      002A85 00                    2439 	.db #0x00	; 0
      002A86 1C                    2440 	.db #0x1c	; 28
      002A87 22                    2441 	.db #0x22	; 34
      002A88 1E                    2442 	.db #0x1e	; 30
      002A89 02                    2443 	.db #0x02	; 2
      002A8A 1C                    2444 	.db #0x1c	; 28
      002A8B 00                    2445 	.db #0x00	; 0
      002A8C 18                    2446 	.db #0x18	; 24
      002A8D 04                    2447 	.db #0x04	; 4
      002A8E 04                    2448 	.db #0x04	; 4
      002A8F 1E                    2449 	.db #0x1e	; 30
      002A90 04                    2450 	.db #0x04	; 4
      002A91 04                    2451 	.db #0x04	; 4
      002A92 04                    2452 	.db #0x04	; 4
      002A93 00                    2453 	.db #0x00	; 0
      002A94 00                    2454 	.db #0x00	; 0
      002A95 00                    2455 	.db #0x00	; 0
      002A96 3C                    2456 	.db #0x3c	; 60
      002A97 22                    2457 	.db #0x22	; 34
      002A98 22                    2458 	.db #0x22	; 34
      002A99 3C                    2459 	.db #0x3c	; 60
      002A9A 20                    2460 	.db #0x20	; 32
      002A9B 1C                    2461 	.db #0x1c	; 28
      002A9C 02                    2462 	.db #0x02	; 2
      002A9D 02                    2463 	.db #0x02	; 2
      002A9E 0E                    2464 	.db #0x0e	; 14
      002A9F 12                    2465 	.db #0x12	; 18
      002AA0 12                    2466 	.db #0x12	; 18
      002AA1 12                    2467 	.db #0x12	; 18
      002AA2 12                    2468 	.db #0x12	; 18
      002AA3 00                    2469 	.db #0x00	; 0
      002AA4 08                    2470 	.db #0x08	; 8
      002AA5 00                    2471 	.db #0x00	; 0
      002AA6 08                    2472 	.db #0x08	; 8
      002AA7 08                    2473 	.db #0x08	; 8
      002AA8 08                    2474 	.db #0x08	; 8
      002AA9 08                    2475 	.db #0x08	; 8
      002AAA 18                    2476 	.db #0x18	; 24
      002AAB 00                    2477 	.db #0x00	; 0
      002AAC 10                    2478 	.db #0x10	; 16
      002AAD 00                    2479 	.db #0x00	; 0
      002AAE 18                    2480 	.db #0x18	; 24
      002AAF 10                    2481 	.db #0x10	; 16
      002AB0 10                    2482 	.db #0x10	; 16
      002AB1 10                    2483 	.db #0x10	; 16
      002AB2 12                    2484 	.db #0x12	; 18
      002AB3 0C                    2485 	.db #0x0c	; 12
      002AB4 02                    2486 	.db #0x02	; 2
      002AB5 02                    2487 	.db #0x02	; 2
      002AB6 12                    2488 	.db #0x12	; 18
      002AB7 0A                    2489 	.db #0x0a	; 10
      002AB8 06                    2490 	.db #0x06	; 6
      002AB9 0A                    2491 	.db #0x0a	; 10
      002ABA 12                    2492 	.db #0x12	; 18
      002ABB 00                    2493 	.db #0x00	; 0
      002ABC 08                    2494 	.db #0x08	; 8
      002ABD 08                    2495 	.db #0x08	; 8
      002ABE 08                    2496 	.db #0x08	; 8
      002ABF 08                    2497 	.db #0x08	; 8
      002AC0 08                    2498 	.db #0x08	; 8
      002AC1 08                    2499 	.db #0x08	; 8
      002AC2 18                    2500 	.db #0x18	; 24
      002AC3 00                    2501 	.db #0x00	; 0
      002AC4 00                    2502 	.db #0x00	; 0
      002AC5 00                    2503 	.db #0x00	; 0
      002AC6 16                    2504 	.db #0x16	; 22
      002AC7 2A                    2505 	.db #0x2a	; 42
      002AC8 2A                    2506 	.db #0x2a	; 42
      002AC9 22                    2507 	.db #0x22	; 34
      002ACA 22                    2508 	.db #0x22	; 34
      002ACB 00                    2509 	.db #0x00	; 0
      002ACC 00                    2510 	.db #0x00	; 0
      002ACD 00                    2511 	.db #0x00	; 0
      002ACE 0E                    2512 	.db #0x0e	; 14
      002ACF 12                    2513 	.db #0x12	; 18
      002AD0 12                    2514 	.db #0x12	; 18
      002AD1 12                    2515 	.db #0x12	; 18
      002AD2 12                    2516 	.db #0x12	; 18
      002AD3 00                    2517 	.db #0x00	; 0
      002AD4 00                    2518 	.db #0x00	; 0
      002AD5 00                    2519 	.db #0x00	; 0
      002AD6 1C                    2520 	.db #0x1c	; 28
      002AD7 22                    2521 	.db #0x22	; 34
      002AD8 22                    2522 	.db #0x22	; 34
      002AD9 22                    2523 	.db #0x22	; 34
      002ADA 1C                    2524 	.db #0x1c	; 28
      002ADB 00                    2525 	.db #0x00	; 0
      002ADC 00                    2526 	.db #0x00	; 0
      002ADD 00                    2527 	.db #0x00	; 0
      002ADE 1E                    2528 	.db #0x1e	; 30
      002ADF 22                    2529 	.db #0x22	; 34
      002AE0 22                    2530 	.db #0x22	; 34
      002AE1 22                    2531 	.db #0x22	; 34
      002AE2 1E                    2532 	.db #0x1e	; 30
      002AE3 02                    2533 	.db #0x02	; 2
      002AE4 00                    2534 	.db #0x00	; 0
      002AE5 00                    2535 	.db #0x00	; 0
      002AE6 3C                    2536 	.db #0x3c	; 60
      002AE7 22                    2537 	.db #0x22	; 34
      002AE8 22                    2538 	.db #0x22	; 34
      002AE9 22                    2539 	.db #0x22	; 34
      002AEA 3C                    2540 	.db #0x3c	; 60
      002AEB 20                    2541 	.db #0x20	; 32
      002AEC 00                    2542 	.db #0x00	; 0
      002AED 00                    2543 	.db #0x00	; 0
      002AEE 1A                    2544 	.db #0x1a	; 26
      002AEF 24                    2545 	.db #0x24	; 36
      002AF0 04                    2546 	.db #0x04	; 4
      002AF1 04                    2547 	.db #0x04	; 4
      002AF2 0E                    2548 	.db #0x0e	; 14
      002AF3 00                    2549 	.db #0x00	; 0
      002AF4 00                    2550 	.db #0x00	; 0
      002AF5 00                    2551 	.db #0x00	; 0
      002AF6 1C                    2552 	.db #0x1c	; 28
      002AF7 02                    2553 	.db #0x02	; 2
      002AF8 1C                    2554 	.db #0x1c	; 28
      002AF9 20                    2555 	.db #0x20	; 32
      002AFA 1C                    2556 	.db #0x1c	; 28
      002AFB 00                    2557 	.db #0x00	; 0
      002AFC 00                    2558 	.db #0x00	; 0
      002AFD 04                    2559 	.db #0x04	; 4
      002AFE 1E                    2560 	.db #0x1e	; 30
      002AFF 04                    2561 	.db #0x04	; 4
      002B00 04                    2562 	.db #0x04	; 4
      002B01 14                    2563 	.db #0x14	; 20
      002B02 08                    2564 	.db #0x08	; 8
      002B03 00                    2565 	.db #0x00	; 0
      002B04 00                    2566 	.db #0x00	; 0
      002B05 00                    2567 	.db #0x00	; 0
      002B06 12                    2568 	.db #0x12	; 18
      002B07 12                    2569 	.db #0x12	; 18
      002B08 12                    2570 	.db #0x12	; 18
      002B09 1A                    2571 	.db #0x1a	; 26
      002B0A 14                    2572 	.db #0x14	; 20
      002B0B 00                    2573 	.db #0x00	; 0
      002B0C 00                    2574 	.db #0x00	; 0
      002B0D 00                    2575 	.db #0x00	; 0
      002B0E 22                    2576 	.db #0x22	; 34
      002B0F 22                    2577 	.db #0x22	; 34
      002B10 22                    2578 	.db #0x22	; 34
      002B11 14                    2579 	.db #0x14	; 20
      002B12 08                    2580 	.db #0x08	; 8
      002B13 00                    2581 	.db #0x00	; 0
      002B14 00                    2582 	.db #0x00	; 0
      002B15 00                    2583 	.db #0x00	; 0
      002B16 22                    2584 	.db #0x22	; 34
      002B17 22                    2585 	.db #0x22	; 34
      002B18 2A                    2586 	.db #0x2a	; 42
      002B19 3E                    2587 	.db #0x3e	; 62
      002B1A 14                    2588 	.db #0x14	; 20
      002B1B 00                    2589 	.db #0x00	; 0
      002B1C 00                    2590 	.db #0x00	; 0
      002B1D 00                    2591 	.db #0x00	; 0
      002B1E 12                    2592 	.db #0x12	; 18
      002B1F 12                    2593 	.db #0x12	; 18
      002B20 0C                    2594 	.db #0x0c	; 12
      002B21 12                    2595 	.db #0x12	; 18
      002B22 12                    2596 	.db #0x12	; 18
      002B23 00                    2597 	.db #0x00	; 0
      002B24 00                    2598 	.db #0x00	; 0
      002B25 00                    2599 	.db #0x00	; 0
      002B26 12                    2600 	.db #0x12	; 18
      002B27 12                    2601 	.db #0x12	; 18
      002B28 12                    2602 	.db #0x12	; 18
      002B29 1C                    2603 	.db #0x1c	; 28
      002B2A 08                    2604 	.db #0x08	; 8
      002B2B 06                    2605 	.db #0x06	; 6
      002B2C 00                    2606 	.db #0x00	; 0
      002B2D 00                    2607 	.db #0x00	; 0
      002B2E 1E                    2608 	.db #0x1e	; 30
      002B2F 10                    2609 	.db #0x10	; 16
      002B30 0C                    2610 	.db #0x0c	; 12
      002B31 02                    2611 	.db #0x02	; 2
      002B32 1E                    2612 	.db #0x1e	; 30
      002B33 00                    2613 	.db #0x00	; 0
      002B34 18                    2614 	.db #0x18	; 24
      002B35 04                    2615 	.db #0x04	; 4
      002B36 04                    2616 	.db #0x04	; 4
      002B37 06                    2617 	.db #0x06	; 6
      002B38 04                    2618 	.db #0x04	; 4
      002B39 04                    2619 	.db #0x04	; 4
      002B3A 18                    2620 	.db #0x18	; 24
      002B3B 00                    2621 	.db #0x00	; 0
      002B3C 08                    2622 	.db #0x08	; 8
      002B3D 08                    2623 	.db #0x08	; 8
      002B3E 08                    2624 	.db #0x08	; 8
      002B3F 00                    2625 	.db #0x00	; 0
      002B40 08                    2626 	.db #0x08	; 8
      002B41 08                    2627 	.db #0x08	; 8
      002B42 08                    2628 	.db #0x08	; 8
      002B43 00                    2629 	.db #0x00	; 0
      002B44 0C                    2630 	.db #0x0c	; 12
      002B45 10                    2631 	.db #0x10	; 16
      002B46 10                    2632 	.db #0x10	; 16
      002B47 30                    2633 	.db #0x30	; 48	'0'
      002B48 10                    2634 	.db #0x10	; 16
      002B49 10                    2635 	.db #0x10	; 16
      002B4A 0C                    2636 	.db #0x0c	; 12
      002B4B 00                    2637 	.db #0x00	; 0
      002B4C 14                    2638 	.db #0x14	; 20
      002B4D 0A                    2639 	.db #0x0a	; 10
      002B4E 00                    2640 	.db #0x00	; 0
      002B4F 00                    2641 	.db #0x00	; 0
      002B50 00                    2642 	.db #0x00	; 0
      002B51 00                    2643 	.db #0x00	; 0
      002B52 00                    2644 	.db #0x00	; 0
      002B53 00                    2645 	.db #0x00	; 0
      002B54 08                    2646 	.db #0x08	; 8
      002B55 1C                    2647 	.db #0x1c	; 28
      002B56 36                    2648 	.db #0x36	; 54	'6'
      002B57 22                    2649 	.db #0x22	; 34
      002B58 22                    2650 	.db #0x22	; 34
      002B59 3E                    2651 	.db #0x3e	; 62
      002B5A 00                    2652 	.db #0x00	; 0
      002B5B 00                    2653 	.db #0x00	; 0
      002B5C 1C                    2654 	.db #0x1c	; 28
      002B5D 22                    2655 	.db #0x22	; 34
      002B5E 02                    2656 	.db #0x02	; 2
      002B5F 02                    2657 	.db #0x02	; 2
      002B60 22                    2658 	.db #0x22	; 34
      002B61 1C                    2659 	.db #0x1c	; 28
      002B62 08                    2660 	.db #0x08	; 8
      002B63 0C                    2661 	.db #0x0c	; 12
      002B64 12                    2662 	.db #0x12	; 18
      002B65 00                    2663 	.db #0x00	; 0
      002B66 12                    2664 	.db #0x12	; 18
      002B67 12                    2665 	.db #0x12	; 18
      002B68 12                    2666 	.db #0x12	; 18
      002B69 1A                    2667 	.db #0x1a	; 26
      002B6A 14                    2668 	.db #0x14	; 20
      002B6B 00                    2669 	.db #0x00	; 0
      002B6C 30                    2670 	.db #0x30	; 48	'0'
      002B6D 00                    2671 	.db #0x00	; 0
      002B6E 1C                    2672 	.db #0x1c	; 28
      002B6F 22                    2673 	.db #0x22	; 34
      002B70 1E                    2674 	.db #0x1e	; 30
      002B71 02                    2675 	.db #0x02	; 2
      002B72 1C                    2676 	.db #0x1c	; 28
      002B73 00                    2677 	.db #0x00	; 0
      002B74 1C                    2678 	.db #0x1c	; 28
      002B75 00                    2679 	.db #0x00	; 0
      002B76 1C                    2680 	.db #0x1c	; 28
      002B77 20                    2681 	.db #0x20	; 32
      002B78 3C                    2682 	.db #0x3c	; 60
      002B79 22                    2683 	.db #0x22	; 34
      002B7A 3C                    2684 	.db #0x3c	; 60
      002B7B 00                    2685 	.db #0x00	; 0
      002B7C 14                    2686 	.db #0x14	; 20
      002B7D 00                    2687 	.db #0x00	; 0
      002B7E 1C                    2688 	.db #0x1c	; 28
      002B7F 20                    2689 	.db #0x20	; 32
      002B80 3C                    2690 	.db #0x3c	; 60
      002B81 22                    2691 	.db #0x22	; 34
      002B82 3C                    2692 	.db #0x3c	; 60
      002B83 00                    2693 	.db #0x00	; 0
      002B84 0C                    2694 	.db #0x0c	; 12
      002B85 00                    2695 	.db #0x00	; 0
      002B86 1C                    2696 	.db #0x1c	; 28
      002B87 20                    2697 	.db #0x20	; 32
      002B88 3C                    2698 	.db #0x3c	; 60
      002B89 22                    2699 	.db #0x22	; 34
      002B8A 3C                    2700 	.db #0x3c	; 60
      002B8B 00                    2701 	.db #0x00	; 0
      002B8C 1C                    2702 	.db #0x1c	; 28
      002B8D 14                    2703 	.db #0x14	; 20
      002B8E 1C                    2704 	.db #0x1c	; 28
      002B8F 20                    2705 	.db #0x20	; 32
      002B90 3C                    2706 	.db #0x3c	; 60
      002B91 22                    2707 	.db #0x22	; 34
      002B92 3C                    2708 	.db #0x3c	; 60
      002B93 00                    2709 	.db #0x00	; 0
      002B94 00                    2710 	.db #0x00	; 0
      002B95 1C                    2711 	.db #0x1c	; 28
      002B96 22                    2712 	.db #0x22	; 34
      002B97 02                    2713 	.db #0x02	; 2
      002B98 22                    2714 	.db #0x22	; 34
      002B99 1C                    2715 	.db #0x1c	; 28
      002B9A 08                    2716 	.db #0x08	; 8
      002B9B 0C                    2717 	.db #0x0c	; 12
      002B9C 1C                    2718 	.db #0x1c	; 28
      002B9D 00                    2719 	.db #0x00	; 0
      002B9E 1C                    2720 	.db #0x1c	; 28
      002B9F 22                    2721 	.db #0x22	; 34
      002BA0 1E                    2722 	.db #0x1e	; 30
      002BA1 02                    2723 	.db #0x02	; 2
      002BA2 1C                    2724 	.db #0x1c	; 28
      002BA3 00                    2725 	.db #0x00	; 0
      002BA4 14                    2726 	.db #0x14	; 20
      002BA5 00                    2727 	.db #0x00	; 0
      002BA6 1C                    2728 	.db #0x1c	; 28
      002BA7 22                    2729 	.db #0x22	; 34
      002BA8 1E                    2730 	.db #0x1e	; 30
      002BA9 02                    2731 	.db #0x02	; 2
      002BAA 1C                    2732 	.db #0x1c	; 28
      002BAB 00                    2733 	.db #0x00	; 0
      002BAC 0C                    2734 	.db #0x0c	; 12
      002BAD 00                    2735 	.db #0x00	; 0
      002BAE 1C                    2736 	.db #0x1c	; 28
      002BAF 22                    2737 	.db #0x22	; 34
      002BB0 1E                    2738 	.db #0x1e	; 30
      002BB1 02                    2739 	.db #0x02	; 2
      002BB2 1C                    2740 	.db #0x1c	; 28
      002BB3 00                    2741 	.db #0x00	; 0
      002BB4 14                    2742 	.db #0x14	; 20
      002BB5 00                    2743 	.db #0x00	; 0
      002BB6 08                    2744 	.db #0x08	; 8
      002BB7 08                    2745 	.db #0x08	; 8
      002BB8 08                    2746 	.db #0x08	; 8
      002BB9 08                    2747 	.db #0x08	; 8
      002BBA 18                    2748 	.db #0x18	; 24
      002BBB 00                    2749 	.db #0x00	; 0
      002BBC 08                    2750 	.db #0x08	; 8
      002BBD 14                    2751 	.db #0x14	; 20
      002BBE 00                    2752 	.db #0x00	; 0
      002BBF 08                    2753 	.db #0x08	; 8
      002BC0 08                    2754 	.db #0x08	; 8
      002BC1 08                    2755 	.db #0x08	; 8
      002BC2 18                    2756 	.db #0x18	; 24
      002BC3 00                    2757 	.db #0x00	; 0
      002BC4 04                    2758 	.db #0x04	; 4
      002BC5 00                    2759 	.db #0x00	; 0
      002BC6 08                    2760 	.db #0x08	; 8
      002BC7 08                    2761 	.db #0x08	; 8
      002BC8 08                    2762 	.db #0x08	; 8
      002BC9 08                    2763 	.db #0x08	; 8
      002BCA 18                    2764 	.db #0x18	; 24
      002BCB 00                    2765 	.db #0x00	; 0
      002BCC 14                    2766 	.db #0x14	; 20
      002BCD 00                    2767 	.db #0x00	; 0
      002BCE 08                    2768 	.db #0x08	; 8
      002BCF 14                    2769 	.db #0x14	; 20
      002BD0 22                    2770 	.db #0x22	; 34
      002BD1 3E                    2771 	.db #0x3e	; 62
      002BD2 22                    2772 	.db #0x22	; 34
      002BD3 00                    2773 	.db #0x00	; 0
      002BD4 1C                    2774 	.db #0x1c	; 28
      002BD5 14                    2775 	.db #0x14	; 20
      002BD6 1C                    2776 	.db #0x1c	; 28
      002BD7 36                    2777 	.db #0x36	; 54	'6'
      002BD8 22                    2778 	.db #0x22	; 34
      002BD9 3E                    2779 	.db #0x3e	; 62
      002BDA 22                    2780 	.db #0x22	; 34
      002BDB 00                    2781 	.db #0x00	; 0
      002BDC 30                    2782 	.db #0x30	; 48	'0'
      002BDD 00                    2783 	.db #0x00	; 0
      002BDE 3E                    2784 	.db #0x3e	; 62
      002BDF 02                    2785 	.db #0x02	; 2
      002BE0 1E                    2786 	.db #0x1e	; 30
      002BE1 02                    2787 	.db #0x02	; 2
      002BE2 3E                    2788 	.db #0x3e	; 62
      002BE3 00                    2789 	.db #0x00	; 0
      002BE4 00                    2790 	.db #0x00	; 0
      002BE5 00                    2791 	.db #0x00	; 0
      002BE6 1E                    2792 	.db #0x1e	; 30
      002BE7 28                    2793 	.db #0x28	; 40
      002BE8 3E                    2794 	.db #0x3e	; 62
      002BE9 0A                    2795 	.db #0x0a	; 10
      002BEA 3C                    2796 	.db #0x3c	; 60
      002BEB 00                    2797 	.db #0x00	; 0
      002BEC 3C                    2798 	.db #0x3c	; 60
      002BED 0A                    2799 	.db #0x0a	; 10
      002BEE 0A                    2800 	.db #0x0a	; 10
      002BEF 3E                    2801 	.db #0x3e	; 62
      002BF0 0A                    2802 	.db #0x0a	; 10
      002BF1 0A                    2803 	.db #0x0a	; 10
      002BF2 3A                    2804 	.db #0x3a	; 58
      002BF3 00                    2805 	.db #0x00	; 0
      002BF4 1C                    2806 	.db #0x1c	; 28
      002BF5 00                    2807 	.db #0x00	; 0
      002BF6 0C                    2808 	.db #0x0c	; 12
      002BF7 12                    2809 	.db #0x12	; 18
      002BF8 12                    2810 	.db #0x12	; 18
      002BF9 12                    2811 	.db #0x12	; 18
      002BFA 0C                    2812 	.db #0x0c	; 12
      002BFB 00                    2813 	.db #0x00	; 0
      002BFC 14                    2814 	.db #0x14	; 20
      002BFD 00                    2815 	.db #0x00	; 0
      002BFE 0C                    2816 	.db #0x0c	; 12
      002BFF 12                    2817 	.db #0x12	; 18
      002C00 12                    2818 	.db #0x12	; 18
      002C01 12                    2819 	.db #0x12	; 18
      002C02 0C                    2820 	.db #0x0c	; 12
      002C03 00                    2821 	.db #0x00	; 0
      002C04 06                    2822 	.db #0x06	; 6
      002C05 00                    2823 	.db #0x00	; 0
      002C06 0C                    2824 	.db #0x0c	; 12
      002C07 12                    2825 	.db #0x12	; 18
      002C08 12                    2826 	.db #0x12	; 18
      002C09 12                    2827 	.db #0x12	; 18
      002C0A 0C                    2828 	.db #0x0c	; 12
      002C0B 00                    2829 	.db #0x00	; 0
      002C0C 1C                    2830 	.db #0x1c	; 28
      002C0D 00                    2831 	.db #0x00	; 0
      002C0E 12                    2832 	.db #0x12	; 18
      002C0F 12                    2833 	.db #0x12	; 18
      002C10 12                    2834 	.db #0x12	; 18
      002C11 1A                    2835 	.db #0x1a	; 26
      002C12 14                    2836 	.db #0x14	; 20
      002C13 00                    2837 	.db #0x00	; 0
      002C14 06                    2838 	.db #0x06	; 6
      002C15 00                    2839 	.db #0x00	; 0
      002C16 12                    2840 	.db #0x12	; 18
      002C17 12                    2841 	.db #0x12	; 18
      002C18 12                    2842 	.db #0x12	; 18
      002C19 1A                    2843 	.db #0x1a	; 26
      002C1A 14                    2844 	.db #0x14	; 20
      002C1B 00                    2845 	.db #0x00	; 0
      002C1C 14                    2846 	.db #0x14	; 20
      002C1D 00                    2847 	.db #0x00	; 0
      002C1E 12                    2848 	.db #0x12	; 18
      002C1F 12                    2849 	.db #0x12	; 18
      002C20 12                    2850 	.db #0x12	; 18
      002C21 1C                    2851 	.db #0x1c	; 28
      002C22 08                    2852 	.db #0x08	; 8
      002C23 06                    2853 	.db #0x06	; 6
      002C24 12                    2854 	.db #0x12	; 18
      002C25 0C                    2855 	.db #0x0c	; 12
      002C26 12                    2856 	.db #0x12	; 18
      002C27 12                    2857 	.db #0x12	; 18
      002C28 12                    2858 	.db #0x12	; 18
      002C29 12                    2859 	.db #0x12	; 18
      002C2A 0C                    2860 	.db #0x0c	; 12
      002C2B 00                    2861 	.db #0x00	; 0
      002C2C 14                    2862 	.db #0x14	; 20
      002C2D 00                    2863 	.db #0x00	; 0
      002C2E 12                    2864 	.db #0x12	; 18
      002C2F 12                    2865 	.db #0x12	; 18
      002C30 12                    2866 	.db #0x12	; 18
      002C31 12                    2867 	.db #0x12	; 18
      002C32 0C                    2868 	.db #0x0c	; 12
      002C33 00                    2869 	.db #0x00	; 0
      002C34 00                    2870 	.db #0x00	; 0
      002C35 08                    2871 	.db #0x08	; 8
      002C36 1C                    2872 	.db #0x1c	; 28
      002C37 02                    2873 	.db #0x02	; 2
      002C38 02                    2874 	.db #0x02	; 2
      002C39 1C                    2875 	.db #0x1c	; 28
      002C3A 08                    2876 	.db #0x08	; 8
      002C3B 00                    2877 	.db #0x00	; 0
      002C3C 18                    2878 	.db #0x18	; 24
      002C3D 24                    2879 	.db #0x24	; 36
      002C3E 04                    2880 	.db #0x04	; 4
      002C3F 1E                    2881 	.db #0x1e	; 30
      002C40 04                    2882 	.db #0x04	; 4
      002C41 24                    2883 	.db #0x24	; 36
      002C42 3A                    2884 	.db #0x3a	; 58
      002C43 00                    2885 	.db #0x00	; 0
      002C44 22                    2886 	.db #0x22	; 34
      002C45 14                    2887 	.db #0x14	; 20
      002C46 08                    2888 	.db #0x08	; 8
      002C47 3E                    2889 	.db #0x3e	; 62
      002C48 08                    2890 	.db #0x08	; 8
      002C49 3E                    2891 	.db #0x3e	; 62
      002C4A 08                    2892 	.db #0x08	; 8
      002C4B 00                    2893 	.db #0x00	; 0
      002C4C 06                    2894 	.db #0x06	; 6
      002C4D 0A                    2895 	.db #0x0a	; 10
      002C4E 0A                    2896 	.db #0x0a	; 10
      002C4F 16                    2897 	.db #0x16	; 22
      002C50 3A                    2898 	.db #0x3a	; 58
      002C51 12                    2899 	.db #0x12	; 18
      002C52 12                    2900 	.db #0x12	; 18
      002C53 00                    2901 	.db #0x00	; 0
      002C54 10                    2902 	.db #0x10	; 16
      002C55 28                    2903 	.db #0x28	; 40
      002C56 08                    2904 	.db #0x08	; 8
      002C57 1C                    2905 	.db #0x1c	; 28
      002C58 08                    2906 	.db #0x08	; 8
      002C59 08                    2907 	.db #0x08	; 8
      002C5A 0A                    2908 	.db #0x0a	; 10
      002C5B 04                    2909 	.db #0x04	; 4
      002C5C 18                    2910 	.db #0x18	; 24
      002C5D 00                    2911 	.db #0x00	; 0
      002C5E 1C                    2912 	.db #0x1c	; 28
      002C5F 20                    2913 	.db #0x20	; 32
      002C60 3C                    2914 	.db #0x3c	; 60
      002C61 22                    2915 	.db #0x22	; 34
      002C62 3C                    2916 	.db #0x3c	; 60
      002C63 00                    2917 	.db #0x00	; 0
      002C64 18                    2918 	.db #0x18	; 24
      002C65 00                    2919 	.db #0x00	; 0
      002C66 08                    2920 	.db #0x08	; 8
      002C67 08                    2921 	.db #0x08	; 8
      002C68 08                    2922 	.db #0x08	; 8
      002C69 08                    2923 	.db #0x08	; 8
      002C6A 18                    2924 	.db #0x18	; 24
      002C6B 00                    2925 	.db #0x00	; 0
      002C6C 18                    2926 	.db #0x18	; 24
      002C6D 00                    2927 	.db #0x00	; 0
      002C6E 0C                    2928 	.db #0x0c	; 12
      002C6F 12                    2929 	.db #0x12	; 18
      002C70 12                    2930 	.db #0x12	; 18
      002C71 12                    2931 	.db #0x12	; 18
      002C72 0C                    2932 	.db #0x0c	; 12
      002C73 00                    2933 	.db #0x00	; 0
      002C74 18                    2934 	.db #0x18	; 24
      002C75 00                    2935 	.db #0x00	; 0
      002C76 12                    2936 	.db #0x12	; 18
      002C77 12                    2937 	.db #0x12	; 18
      002C78 12                    2938 	.db #0x12	; 18
      002C79 1A                    2939 	.db #0x1a	; 26
      002C7A 14                    2940 	.db #0x14	; 20
      002C7B 00                    2941 	.db #0x00	; 0
      002C7C 14                    2942 	.db #0x14	; 20
      002C7D 0A                    2943 	.db #0x0a	; 10
      002C7E 00                    2944 	.db #0x00	; 0
      002C7F 0E                    2945 	.db #0x0e	; 14
      002C80 12                    2946 	.db #0x12	; 18
      002C81 12                    2947 	.db #0x12	; 18
      002C82 12                    2948 	.db #0x12	; 18
      002C83 00                    2949 	.db #0x00	; 0
      002C84 14                    2950 	.db #0x14	; 20
      002C85 0A                    2951 	.db #0x0a	; 10
      002C86 00                    2952 	.db #0x00	; 0
      002C87 12                    2953 	.db #0x12	; 18
      002C88 16                    2954 	.db #0x16	; 22
      002C89 1A                    2955 	.db #0x1a	; 26
      002C8A 12                    2956 	.db #0x12	; 18
      002C8B 00                    2957 	.db #0x00	; 0
      002C8C 1C                    2958 	.db #0x1c	; 28
      002C8D 20                    2959 	.db #0x20	; 32
      002C8E 3C                    2960 	.db #0x3c	; 60
      002C8F 22                    2961 	.db #0x22	; 34
      002C90 3C                    2962 	.db #0x3c	; 60
      002C91 00                    2963 	.db #0x00	; 0
      002C92 3C                    2964 	.db #0x3c	; 60
      002C93 00                    2965 	.db #0x00	; 0
      002C94 0C                    2966 	.db #0x0c	; 12
      002C95 12                    2967 	.db #0x12	; 18
      002C96 12                    2968 	.db #0x12	; 18
      002C97 12                    2969 	.db #0x12	; 18
      002C98 0C                    2970 	.db #0x0c	; 12
      002C99 00                    2971 	.db #0x00	; 0
      002C9A 1E                    2972 	.db #0x1e	; 30
      002C9B 00                    2973 	.db #0x00	; 0
      002C9C 08                    2974 	.db #0x08	; 8
      002C9D 00                    2975 	.db #0x00	; 0
      002C9E 08                    2976 	.db #0x08	; 8
      002C9F 0C                    2977 	.db #0x0c	; 12
      002CA0 02                    2978 	.db #0x02	; 2
      002CA1 22                    2979 	.db #0x22	; 34
      002CA2 1C                    2980 	.db #0x1c	; 28
      002CA3 00                    2981 	.db #0x00	; 0
      002CA4 00                    2982 	.db #0x00	; 0
      002CA5 00                    2983 	.db #0x00	; 0
      002CA6 3E                    2984 	.db #0x3e	; 62
      002CA7 02                    2985 	.db #0x02	; 2
      002CA8 02                    2986 	.db #0x02	; 2
      002CA9 02                    2987 	.db #0x02	; 2
      002CAA 00                    2988 	.db #0x00	; 0
      002CAB 00                    2989 	.db #0x00	; 0
      002CAC 00                    2990 	.db #0x00	; 0
      002CAD 00                    2991 	.db #0x00	; 0
      002CAE 3F                    2992 	.db #0x3f	; 63
      002CAF 20                    2993 	.db #0x20	; 32
      002CB0 20                    2994 	.db #0x20	; 32
      002CB1 00                    2995 	.db #0x00	; 0
      002CB2 00                    2996 	.db #0x00	; 0
      002CB3 00                    2997 	.db #0x00	; 0
      002CB4 02                    2998 	.db #0x02	; 2
      002CB5 12                    2999 	.db #0x12	; 18
      002CB6 0A                    3000 	.db #0x0a	; 10
      002CB7 1C                    3001 	.db #0x1c	; 28
      002CB8 22                    3002 	.db #0x22	; 34
      002CB9 10                    3003 	.db #0x10	; 16
      002CBA 38                    3004 	.db #0x38	; 56	'8'
      002CBB 00                    3005 	.db #0x00	; 0
      002CBC 02                    3006 	.db #0x02	; 2
      002CBD 12                    3007 	.db #0x12	; 18
      002CBE 0A                    3008 	.db #0x0a	; 10
      002CBF 34                    3009 	.db #0x34	; 52	'4'
      002CC0 2A                    3010 	.db #0x2a	; 42
      002CC1 38                    3011 	.db #0x38	; 56	'8'
      002CC2 20                    3012 	.db #0x20	; 32
      002CC3 00                    3013 	.db #0x00	; 0
      002CC4 08                    3014 	.db #0x08	; 8
      002CC5 00                    3015 	.db #0x00	; 0
      002CC6 08                    3016 	.db #0x08	; 8
      002CC7 08                    3017 	.db #0x08	; 8
      002CC8 1C                    3018 	.db #0x1c	; 28
      002CC9 1C                    3019 	.db #0x1c	; 28
      002CCA 08                    3020 	.db #0x08	; 8
      002CCB 00                    3021 	.db #0x00	; 0
      002CCC 00                    3022 	.db #0x00	; 0
      002CCD 00                    3023 	.db #0x00	; 0
      002CCE 24                    3024 	.db #0x24	; 36
      002CCF 12                    3025 	.db #0x12	; 18
      002CD0 24                    3026 	.db #0x24	; 36
      002CD1 00                    3027 	.db #0x00	; 0
      002CD2 00                    3028 	.db #0x00	; 0
      002CD3 00                    3029 	.db #0x00	; 0
      002CD4 00                    3030 	.db #0x00	; 0
      002CD5 00                    3031 	.db #0x00	; 0
      002CD6 12                    3032 	.db #0x12	; 18
      002CD7 24                    3033 	.db #0x24	; 36
      002CD8 12                    3034 	.db #0x12	; 18
      002CD9 00                    3035 	.db #0x00	; 0
      002CDA 00                    3036 	.db #0x00	; 0
      002CDB 00                    3037 	.db #0x00	; 0
      002CDC 2A                    3038 	.db #0x2a	; 42
      002CDD 00                    3039 	.db #0x00	; 0
      002CDE 15                    3040 	.db #0x15	; 21
      002CDF 00                    3041 	.db #0x00	; 0
      002CE0 2A                    3042 	.db #0x2a	; 42
      002CE1 00                    3043 	.db #0x00	; 0
      002CE2 15                    3044 	.db #0x15	; 21
      002CE3 00                    3045 	.db #0x00	; 0
      002CE4 2A                    3046 	.db #0x2a	; 42
      002CE5 15                    3047 	.db #0x15	; 21
      002CE6 2A                    3048 	.db #0x2a	; 42
      002CE7 15                    3049 	.db #0x15	; 21
      002CE8 2A                    3050 	.db #0x2a	; 42
      002CE9 15                    3051 	.db #0x15	; 21
      002CEA 2A                    3052 	.db #0x2a	; 42
      002CEB 15                    3053 	.db #0x15	; 21
      002CEC 15                    3054 	.db #0x15	; 21
      002CED 3F                    3055 	.db #0x3f	; 63
      002CEE 2A                    3056 	.db #0x2a	; 42
      002CEF 3F                    3057 	.db #0x3f	; 63
      002CF0 15                    3058 	.db #0x15	; 21
      002CF1 3F                    3059 	.db #0x3f	; 63
      002CF2 2A                    3060 	.db #0x2a	; 42
      002CF3 3F                    3061 	.db #0x3f	; 63
      002CF4 08                    3062 	.db #0x08	; 8
      002CF5 08                    3063 	.db #0x08	; 8
      002CF6 08                    3064 	.db #0x08	; 8
      002CF7 08                    3065 	.db #0x08	; 8
      002CF8 08                    3066 	.db #0x08	; 8
      002CF9 08                    3067 	.db #0x08	; 8
      002CFA 08                    3068 	.db #0x08	; 8
      002CFB 08                    3069 	.db #0x08	; 8
      002CFC 08                    3070 	.db #0x08	; 8
      002CFD 08                    3071 	.db #0x08	; 8
      002CFE 08                    3072 	.db #0x08	; 8
      002CFF 0F                    3073 	.db #0x0f	; 15
      002D00 08                    3074 	.db #0x08	; 8
      002D01 08                    3075 	.db #0x08	; 8
      002D02 08                    3076 	.db #0x08	; 8
      002D03 08                    3077 	.db #0x08	; 8
      002D04 08                    3078 	.db #0x08	; 8
      002D05 0F                    3079 	.db #0x0f	; 15
      002D06 08                    3080 	.db #0x08	; 8
      002D07 0F                    3081 	.db #0x0f	; 15
      002D08 08                    3082 	.db #0x08	; 8
      002D09 08                    3083 	.db #0x08	; 8
      002D0A 08                    3084 	.db #0x08	; 8
      002D0B 08                    3085 	.db #0x08	; 8
      002D0C 0A                    3086 	.db #0x0a	; 10
      002D0D 0A                    3087 	.db #0x0a	; 10
      002D0E 0A                    3088 	.db #0x0a	; 10
      002D0F 0B                    3089 	.db #0x0b	; 11
      002D10 0A                    3090 	.db #0x0a	; 10
      002D11 0A                    3091 	.db #0x0a	; 10
      002D12 0A                    3092 	.db #0x0a	; 10
      002D13 0A                    3093 	.db #0x0a	; 10
      002D14 00                    3094 	.db #0x00	; 0
      002D15 00                    3095 	.db #0x00	; 0
      002D16 00                    3096 	.db #0x00	; 0
      002D17 0F                    3097 	.db #0x0f	; 15
      002D18 0A                    3098 	.db #0x0a	; 10
      002D19 0A                    3099 	.db #0x0a	; 10
      002D1A 0A                    3100 	.db #0x0a	; 10
      002D1B 0A                    3101 	.db #0x0a	; 10
      002D1C 00                    3102 	.db #0x00	; 0
      002D1D 0F                    3103 	.db #0x0f	; 15
      002D1E 08                    3104 	.db #0x08	; 8
      002D1F 0F                    3105 	.db #0x0f	; 15
      002D20 08                    3106 	.db #0x08	; 8
      002D21 08                    3107 	.db #0x08	; 8
      002D22 08                    3108 	.db #0x08	; 8
      002D23 08                    3109 	.db #0x08	; 8
      002D24 0A                    3110 	.db #0x0a	; 10
      002D25 0B                    3111 	.db #0x0b	; 11
      002D26 08                    3112 	.db #0x08	; 8
      002D27 0B                    3113 	.db #0x0b	; 11
      002D28 0A                    3114 	.db #0x0a	; 10
      002D29 0A                    3115 	.db #0x0a	; 10
      002D2A 0A                    3116 	.db #0x0a	; 10
      002D2B 0A                    3117 	.db #0x0a	; 10
      002D2C 0A                    3118 	.db #0x0a	; 10
      002D2D 0A                    3119 	.db #0x0a	; 10
      002D2E 0A                    3120 	.db #0x0a	; 10
      002D2F 0A                    3121 	.db #0x0a	; 10
      002D30 0A                    3122 	.db #0x0a	; 10
      002D31 0A                    3123 	.db #0x0a	; 10
      002D32 0A                    3124 	.db #0x0a	; 10
      002D33 0A                    3125 	.db #0x0a	; 10
      002D34 00                    3126 	.db #0x00	; 0
      002D35 0F                    3127 	.db #0x0f	; 15
      002D36 08                    3128 	.db #0x08	; 8
      002D37 0B                    3129 	.db #0x0b	; 11
      002D38 0A                    3130 	.db #0x0a	; 10
      002D39 0A                    3131 	.db #0x0a	; 10
      002D3A 0A                    3132 	.db #0x0a	; 10
      002D3B 0A                    3133 	.db #0x0a	; 10
      002D3C 0A                    3134 	.db #0x0a	; 10
      002D3D 0B                    3135 	.db #0x0b	; 11
      002D3E 08                    3136 	.db #0x08	; 8
      002D3F 0F                    3137 	.db #0x0f	; 15
      002D40 00                    3138 	.db #0x00	; 0
      002D41 00                    3139 	.db #0x00	; 0
      002D42 00                    3140 	.db #0x00	; 0
      002D43 00                    3141 	.db #0x00	; 0
      002D44 0A                    3142 	.db #0x0a	; 10
      002D45 0A                    3143 	.db #0x0a	; 10
      002D46 0A                    3144 	.db #0x0a	; 10
      002D47 0F                    3145 	.db #0x0f	; 15
      002D48 00                    3146 	.db #0x00	; 0
      002D49 00                    3147 	.db #0x00	; 0
      002D4A 00                    3148 	.db #0x00	; 0
      002D4B 00                    3149 	.db #0x00	; 0
      002D4C 08                    3150 	.db #0x08	; 8
      002D4D 0F                    3151 	.db #0x0f	; 15
      002D4E 08                    3152 	.db #0x08	; 8
      002D4F 0F                    3153 	.db #0x0f	; 15
      002D50 00                    3154 	.db #0x00	; 0
      002D51 00                    3155 	.db #0x00	; 0
      002D52 00                    3156 	.db #0x00	; 0
      002D53 00                    3157 	.db #0x00	; 0
      002D54 00                    3158 	.db #0x00	; 0
      002D55 00                    3159 	.db #0x00	; 0
      002D56 00                    3160 	.db #0x00	; 0
      002D57 0F                    3161 	.db #0x0f	; 15
      002D58 08                    3162 	.db #0x08	; 8
      002D59 08                    3163 	.db #0x08	; 8
      002D5A 08                    3164 	.db #0x08	; 8
      002D5B 08                    3165 	.db #0x08	; 8
      002D5C 08                    3166 	.db #0x08	; 8
      002D5D 08                    3167 	.db #0x08	; 8
      002D5E 08                    3168 	.db #0x08	; 8
      002D5F 38                    3169 	.db #0x38	; 56	'8'
      002D60 00                    3170 	.db #0x00	; 0
      002D61 00                    3171 	.db #0x00	; 0
      002D62 00                    3172 	.db #0x00	; 0
      002D63 00                    3173 	.db #0x00	; 0
      002D64 08                    3174 	.db #0x08	; 8
      002D65 08                    3175 	.db #0x08	; 8
      002D66 08                    3176 	.db #0x08	; 8
      002D67 3F                    3177 	.db #0x3f	; 63
      002D68 00                    3178 	.db #0x00	; 0
      002D69 00                    3179 	.db #0x00	; 0
      002D6A 00                    3180 	.db #0x00	; 0
      002D6B 00                    3181 	.db #0x00	; 0
      002D6C 00                    3182 	.db #0x00	; 0
      002D6D 00                    3183 	.db #0x00	; 0
      002D6E 00                    3184 	.db #0x00	; 0
      002D6F 3F                    3185 	.db #0x3f	; 63
      002D70 08                    3186 	.db #0x08	; 8
      002D71 08                    3187 	.db #0x08	; 8
      002D72 08                    3188 	.db #0x08	; 8
      002D73 08                    3189 	.db #0x08	; 8
      002D74 08                    3190 	.db #0x08	; 8
      002D75 08                    3191 	.db #0x08	; 8
      002D76 08                    3192 	.db #0x08	; 8
      002D77 38                    3193 	.db #0x38	; 56	'8'
      002D78 08                    3194 	.db #0x08	; 8
      002D79 08                    3195 	.db #0x08	; 8
      002D7A 08                    3196 	.db #0x08	; 8
      002D7B 08                    3197 	.db #0x08	; 8
      002D7C 00                    3198 	.db #0x00	; 0
      002D7D 00                    3199 	.db #0x00	; 0
      002D7E 00                    3200 	.db #0x00	; 0
      002D7F 3F                    3201 	.db #0x3f	; 63
      002D80 00                    3202 	.db #0x00	; 0
      002D81 00                    3203 	.db #0x00	; 0
      002D82 00                    3204 	.db #0x00	; 0
      002D83 00                    3205 	.db #0x00	; 0
      002D84 08                    3206 	.db #0x08	; 8
      002D85 08                    3207 	.db #0x08	; 8
      002D86 08                    3208 	.db #0x08	; 8
      002D87 3F                    3209 	.db #0x3f	; 63
      002D88 08                    3210 	.db #0x08	; 8
      002D89 08                    3211 	.db #0x08	; 8
      002D8A 08                    3212 	.db #0x08	; 8
      002D8B 08                    3213 	.db #0x08	; 8
      002D8C 08                    3214 	.db #0x08	; 8
      002D8D 38                    3215 	.db #0x38	; 56	'8'
      002D8E 08                    3216 	.db #0x08	; 8
      002D8F 38                    3217 	.db #0x38	; 56	'8'
      002D90 08                    3218 	.db #0x08	; 8
      002D91 08                    3219 	.db #0x08	; 8
      002D92 08                    3220 	.db #0x08	; 8
      002D93 08                    3221 	.db #0x08	; 8
      002D94 0A                    3222 	.db #0x0a	; 10
      002D95 0A                    3223 	.db #0x0a	; 10
      002D96 0A                    3224 	.db #0x0a	; 10
      002D97 3A                    3225 	.db #0x3a	; 58
      002D98 0A                    3226 	.db #0x0a	; 10
      002D99 0A                    3227 	.db #0x0a	; 10
      002D9A 0A                    3228 	.db #0x0a	; 10
      002D9B 0A                    3229 	.db #0x0a	; 10
      002D9C 0A                    3230 	.db #0x0a	; 10
      002D9D 3A                    3231 	.db #0x3a	; 58
      002D9E 02                    3232 	.db #0x02	; 2
      002D9F 3E                    3233 	.db #0x3e	; 62
      002DA0 00                    3234 	.db #0x00	; 0
      002DA1 00                    3235 	.db #0x00	; 0
      002DA2 00                    3236 	.db #0x00	; 0
      002DA3 00                    3237 	.db #0x00	; 0
      002DA4 00                    3238 	.db #0x00	; 0
      002DA5 3E                    3239 	.db #0x3e	; 62
      002DA6 02                    3240 	.db #0x02	; 2
      002DA7 3A                    3241 	.db #0x3a	; 58
      002DA8 0A                    3242 	.db #0x0a	; 10
      002DA9 0A                    3243 	.db #0x0a	; 10
      002DAA 0A                    3244 	.db #0x0a	; 10
      002DAB 0A                    3245 	.db #0x0a	; 10
      002DAC 0A                    3246 	.db #0x0a	; 10
      002DAD 3B                    3247 	.db #0x3b	; 59
      002DAE 00                    3248 	.db #0x00	; 0
      002DAF 3F                    3249 	.db #0x3f	; 63
      002DB0 00                    3250 	.db #0x00	; 0
      002DB1 00                    3251 	.db #0x00	; 0
      002DB2 00                    3252 	.db #0x00	; 0
      002DB3 00                    3253 	.db #0x00	; 0
      002DB4 00                    3254 	.db #0x00	; 0
      002DB5 3F                    3255 	.db #0x3f	; 63
      002DB6 00                    3256 	.db #0x00	; 0
      002DB7 3B                    3257 	.db #0x3b	; 59
      002DB8 0A                    3258 	.db #0x0a	; 10
      002DB9 0A                    3259 	.db #0x0a	; 10
      002DBA 0A                    3260 	.db #0x0a	; 10
      002DBB 0A                    3261 	.db #0x0a	; 10
      002DBC 0A                    3262 	.db #0x0a	; 10
      002DBD 3A                    3263 	.db #0x3a	; 58
      002DBE 02                    3264 	.db #0x02	; 2
      002DBF 3A                    3265 	.db #0x3a	; 58
      002DC0 0A                    3266 	.db #0x0a	; 10
      002DC1 0A                    3267 	.db #0x0a	; 10
      002DC2 0A                    3268 	.db #0x0a	; 10
      002DC3 0A                    3269 	.db #0x0a	; 10
      002DC4 00                    3270 	.db #0x00	; 0
      002DC5 3F                    3271 	.db #0x3f	; 63
      002DC6 00                    3272 	.db #0x00	; 0
      002DC7 3F                    3273 	.db #0x3f	; 63
      002DC8 00                    3274 	.db #0x00	; 0
      002DC9 00                    3275 	.db #0x00	; 0
      002DCA 00                    3276 	.db #0x00	; 0
      002DCB 00                    3277 	.db #0x00	; 0
      002DCC 0A                    3278 	.db #0x0a	; 10
      002DCD 3B                    3279 	.db #0x3b	; 59
      002DCE 00                    3280 	.db #0x00	; 0
      002DCF 3B                    3281 	.db #0x3b	; 59
      002DD0 0A                    3282 	.db #0x0a	; 10
      002DD1 0A                    3283 	.db #0x0a	; 10
      002DD2 0A                    3284 	.db #0x0a	; 10
      002DD3 0A                    3285 	.db #0x0a	; 10
      002DD4 08                    3286 	.db #0x08	; 8
      002DD5 3F                    3287 	.db #0x3f	; 63
      002DD6 00                    3288 	.db #0x00	; 0
      002DD7 3F                    3289 	.db #0x3f	; 63
      002DD8 00                    3290 	.db #0x00	; 0
      002DD9 00                    3291 	.db #0x00	; 0
      002DDA 00                    3292 	.db #0x00	; 0
      002DDB 00                    3293 	.db #0x00	; 0
      002DDC 0A                    3294 	.db #0x0a	; 10
      002DDD 0A                    3295 	.db #0x0a	; 10
      002DDE 0A                    3296 	.db #0x0a	; 10
      002DDF 3F                    3297 	.db #0x3f	; 63
      002DE0 00                    3298 	.db #0x00	; 0
      002DE1 00                    3299 	.db #0x00	; 0
      002DE2 00                    3300 	.db #0x00	; 0
      002DE3 00                    3301 	.db #0x00	; 0
      002DE4 00                    3302 	.db #0x00	; 0
      002DE5 3F                    3303 	.db #0x3f	; 63
      002DE6 00                    3304 	.db #0x00	; 0
      002DE7 3F                    3305 	.db #0x3f	; 63
      002DE8 08                    3306 	.db #0x08	; 8
      002DE9 08                    3307 	.db #0x08	; 8
      002DEA 08                    3308 	.db #0x08	; 8
      002DEB 08                    3309 	.db #0x08	; 8
      002DEC 00                    3310 	.db #0x00	; 0
      002DED 00                    3311 	.db #0x00	; 0
      002DEE 00                    3312 	.db #0x00	; 0
      002DEF 3F                    3313 	.db #0x3f	; 63
      002DF0 0A                    3314 	.db #0x0a	; 10
      002DF1 0A                    3315 	.db #0x0a	; 10
      002DF2 0A                    3316 	.db #0x0a	; 10
      002DF3 0A                    3317 	.db #0x0a	; 10
      002DF4 0A                    3318 	.db #0x0a	; 10
      002DF5 0A                    3319 	.db #0x0a	; 10
      002DF6 0A                    3320 	.db #0x0a	; 10
      002DF7 3E                    3321 	.db #0x3e	; 62
      002DF8 00                    3322 	.db #0x00	; 0
      002DF9 00                    3323 	.db #0x00	; 0
      002DFA 00                    3324 	.db #0x00	; 0
      002DFB 00                    3325 	.db #0x00	; 0
      002DFC 08                    3326 	.db #0x08	; 8
      002DFD 38                    3327 	.db #0x38	; 56	'8'
      002DFE 08                    3328 	.db #0x08	; 8
      002DFF 38                    3329 	.db #0x38	; 56	'8'
      002E00 00                    3330 	.db #0x00	; 0
      002E01 00                    3331 	.db #0x00	; 0
      002E02 00                    3332 	.db #0x00	; 0
      002E03 00                    3333 	.db #0x00	; 0
      002E04 00                    3334 	.db #0x00	; 0
      002E05 38                    3335 	.db #0x38	; 56	'8'
      002E06 08                    3336 	.db #0x08	; 8
      002E07 38                    3337 	.db #0x38	; 56	'8'
      002E08 08                    3338 	.db #0x08	; 8
      002E09 08                    3339 	.db #0x08	; 8
      002E0A 08                    3340 	.db #0x08	; 8
      002E0B 08                    3341 	.db #0x08	; 8
      002E0C 00                    3342 	.db #0x00	; 0
      002E0D 00                    3343 	.db #0x00	; 0
      002E0E 00                    3344 	.db #0x00	; 0
      002E0F 3E                    3345 	.db #0x3e	; 62
      002E10 0A                    3346 	.db #0x0a	; 10
      002E11 0A                    3347 	.db #0x0a	; 10
      002E12 0A                    3348 	.db #0x0a	; 10
      002E13 0A                    3349 	.db #0x0a	; 10
      002E14 0A                    3350 	.db #0x0a	; 10
      002E15 0A                    3351 	.db #0x0a	; 10
      002E16 0A                    3352 	.db #0x0a	; 10
      002E17 3B                    3353 	.db #0x3b	; 59
      002E18 0A                    3354 	.db #0x0a	; 10
      002E19 0A                    3355 	.db #0x0a	; 10
      002E1A 0A                    3356 	.db #0x0a	; 10
      002E1B 0A                    3357 	.db #0x0a	; 10
      002E1C 08                    3358 	.db #0x08	; 8
      002E1D 3F                    3359 	.db #0x3f	; 63
      002E1E 00                    3360 	.db #0x00	; 0
      002E1F 3F                    3361 	.db #0x3f	; 63
      002E20 08                    3362 	.db #0x08	; 8
      002E21 08                    3363 	.db #0x08	; 8
      002E22 08                    3364 	.db #0x08	; 8
      002E23 08                    3365 	.db #0x08	; 8
      002E24 08                    3366 	.db #0x08	; 8
      002E25 08                    3367 	.db #0x08	; 8
      002E26 08                    3368 	.db #0x08	; 8
      002E27 0F                    3369 	.db #0x0f	; 15
      002E28 00                    3370 	.db #0x00	; 0
      002E29 00                    3371 	.db #0x00	; 0
      002E2A 00                    3372 	.db #0x00	; 0
      002E2B 00                    3373 	.db #0x00	; 0
      002E2C 00                    3374 	.db #0x00	; 0
      002E2D 00                    3375 	.db #0x00	; 0
      002E2E 00                    3376 	.db #0x00	; 0
      002E2F 38                    3377 	.db #0x38	; 56	'8'
      002E30 08                    3378 	.db #0x08	; 8
      002E31 08                    3379 	.db #0x08	; 8
      002E32 08                    3380 	.db #0x08	; 8
      002E33 08                    3381 	.db #0x08	; 8
      002E34 3F                    3382 	.db #0x3f	; 63
      002E35 3F                    3383 	.db #0x3f	; 63
      002E36 3F                    3384 	.db #0x3f	; 63
      002E37 3F                    3385 	.db #0x3f	; 63
      002E38 3F                    3386 	.db #0x3f	; 63
      002E39 3F                    3387 	.db #0x3f	; 63
      002E3A 3F                    3388 	.db #0x3f	; 63
      002E3B 3F                    3389 	.db #0x3f	; 63
      002E3C 00                    3390 	.db #0x00	; 0
      002E3D 00                    3391 	.db #0x00	; 0
      002E3E 00                    3392 	.db #0x00	; 0
      002E3F 00                    3393 	.db #0x00	; 0
      002E40 3F                    3394 	.db #0x3f	; 63
      002E41 3F                    3395 	.db #0x3f	; 63
      002E42 3F                    3396 	.db #0x3f	; 63
      002E43 3F                    3397 	.db #0x3f	; 63
      002E44 07                    3398 	.db #0x07	; 7
      002E45 07                    3399 	.db #0x07	; 7
      002E46 07                    3400 	.db #0x07	; 7
      002E47 07                    3401 	.db #0x07	; 7
      002E48 07                    3402 	.db #0x07	; 7
      002E49 07                    3403 	.db #0x07	; 7
      002E4A 07                    3404 	.db #0x07	; 7
      002E4B 07                    3405 	.db #0x07	; 7
      002E4C 38                    3406 	.db #0x38	; 56	'8'
      002E4D 38                    3407 	.db #0x38	; 56	'8'
      002E4E 38                    3408 	.db #0x38	; 56	'8'
      002E4F 38                    3409 	.db #0x38	; 56	'8'
      002E50 38                    3410 	.db #0x38	; 56	'8'
      002E51 38                    3411 	.db #0x38	; 56	'8'
      002E52 38                    3412 	.db #0x38	; 56	'8'
      002E53 38                    3413 	.db #0x38	; 56	'8'
      002E54 3F                    3414 	.db #0x3f	; 63
      002E55 3F                    3415 	.db #0x3f	; 63
      002E56 3F                    3416 	.db #0x3f	; 63
      002E57 3F                    3417 	.db #0x3f	; 63
      002E58 00                    3418 	.db #0x00	; 0
      002E59 00                    3419 	.db #0x00	; 0
      002E5A 00                    3420 	.db #0x00	; 0
      002E5B 00                    3421 	.db #0x00	; 0
      002E5C 00                    3422 	.db #0x00	; 0
      002E5D 00                    3423 	.db #0x00	; 0
      002E5E 2C                    3424 	.db #0x2c	; 44
      002E5F 12                    3425 	.db #0x12	; 18
      002E60 12                    3426 	.db #0x12	; 18
      002E61 2C                    3427 	.db #0x2c	; 44
      002E62 00                    3428 	.db #0x00	; 0
      002E63 00                    3429 	.db #0x00	; 0
      002E64 00                    3430 	.db #0x00	; 0
      002E65 0E                    3431 	.db #0x0e	; 14
      002E66 12                    3432 	.db #0x12	; 18
      002E67 0E                    3433 	.db #0x0e	; 14
      002E68 12                    3434 	.db #0x12	; 18
      002E69 12                    3435 	.db #0x12	; 18
      002E6A 0E                    3436 	.db #0x0e	; 14
      002E6B 02                    3437 	.db #0x02	; 2
      002E6C 1E                    3438 	.db #0x1e	; 30
      002E6D 12                    3439 	.db #0x12	; 18
      002E6E 02                    3440 	.db #0x02	; 2
      002E6F 02                    3441 	.db #0x02	; 2
      002E70 02                    3442 	.db #0x02	; 2
      002E71 02                    3443 	.db #0x02	; 2
      002E72 02                    3444 	.db #0x02	; 2
      002E73 00                    3445 	.db #0x00	; 0
      002E74 00                    3446 	.db #0x00	; 0
      002E75 3E                    3447 	.db #0x3e	; 62
      002E76 14                    3448 	.db #0x14	; 20
      002E77 14                    3449 	.db #0x14	; 20
      002E78 14                    3450 	.db #0x14	; 20
      002E79 14                    3451 	.db #0x14	; 20
      002E7A 14                    3452 	.db #0x14	; 20
      002E7B 00                    3453 	.db #0x00	; 0
      002E7C 1E                    3454 	.db #0x1e	; 30
      002E7D 12                    3455 	.db #0x12	; 18
      002E7E 04                    3456 	.db #0x04	; 4
      002E7F 08                    3457 	.db #0x08	; 8
      002E80 04                    3458 	.db #0x04	; 4
      002E81 12                    3459 	.db #0x12	; 18
      002E82 1E                    3460 	.db #0x1e	; 30
      002E83 00                    3461 	.db #0x00	; 0
      002E84 00                    3462 	.db #0x00	; 0
      002E85 00                    3463 	.db #0x00	; 0
      002E86 3C                    3464 	.db #0x3c	; 60
      002E87 12                    3465 	.db #0x12	; 18
      002E88 12                    3466 	.db #0x12	; 18
      002E89 0C                    3467 	.db #0x0c	; 12
      002E8A 00                    3468 	.db #0x00	; 0
      002E8B 00                    3469 	.db #0x00	; 0
      002E8C 00                    3470 	.db #0x00	; 0
      002E8D 00                    3471 	.db #0x00	; 0
      002E8E 12                    3472 	.db #0x12	; 18
      002E8F 12                    3473 	.db #0x12	; 18
      002E90 12                    3474 	.db #0x12	; 18
      002E91 0E                    3475 	.db #0x0e	; 14
      002E92 02                    3476 	.db #0x02	; 2
      002E93 02                    3477 	.db #0x02	; 2
      002E94 00                    3478 	.db #0x00	; 0
      002E95 00                    3479 	.db #0x00	; 0
      002E96 14                    3480 	.db #0x14	; 20
      002E97 0A                    3481 	.db #0x0a	; 10
      002E98 08                    3482 	.db #0x08	; 8
      002E99 08                    3483 	.db #0x08	; 8
      002E9A 08                    3484 	.db #0x08	; 8
      002E9B 00                    3485 	.db #0x00	; 0
      002E9C 1C                    3486 	.db #0x1c	; 28
      002E9D 08                    3487 	.db #0x08	; 8
      002E9E 1C                    3488 	.db #0x1c	; 28
      002E9F 22                    3489 	.db #0x22	; 34
      002EA0 1C                    3490 	.db #0x1c	; 28
      002EA1 08                    3491 	.db #0x08	; 8
      002EA2 1C                    3492 	.db #0x1c	; 28
      002EA3 00                    3493 	.db #0x00	; 0
      002EA4 0C                    3494 	.db #0x0c	; 12
      002EA5 12                    3495 	.db #0x12	; 18
      002EA6 12                    3496 	.db #0x12	; 18
      002EA7 1E                    3497 	.db #0x1e	; 30
      002EA8 12                    3498 	.db #0x12	; 18
      002EA9 12                    3499 	.db #0x12	; 18
      002EAA 0C                    3500 	.db #0x0c	; 12
      002EAB 00                    3501 	.db #0x00	; 0
      002EAC 00                    3502 	.db #0x00	; 0
      002EAD 1C                    3503 	.db #0x1c	; 28
      002EAE 22                    3504 	.db #0x22	; 34
      002EAF 22                    3505 	.db #0x22	; 34
      002EB0 14                    3506 	.db #0x14	; 20
      002EB1 14                    3507 	.db #0x14	; 20
      002EB2 36                    3508 	.db #0x36	; 54	'6'
      002EB3 00                    3509 	.db #0x00	; 0
      002EB4 0C                    3510 	.db #0x0c	; 12
      002EB5 02                    3511 	.db #0x02	; 2
      002EB6 04                    3512 	.db #0x04	; 4
      002EB7 08                    3513 	.db #0x08	; 8
      002EB8 1C                    3514 	.db #0x1c	; 28
      002EB9 12                    3515 	.db #0x12	; 18
      002EBA 0C                    3516 	.db #0x0c	; 12
      002EBB 00                    3517 	.db #0x00	; 0
      002EBC 00                    3518 	.db #0x00	; 0
      002EBD 00                    3519 	.db #0x00	; 0
      002EBE 14                    3520 	.db #0x14	; 20
      002EBF 2A                    3521 	.db #0x2a	; 42
      002EC0 2A                    3522 	.db #0x2a	; 42
      002EC1 14                    3523 	.db #0x14	; 20
      002EC2 00                    3524 	.db #0x00	; 0
      002EC3 00                    3525 	.db #0x00	; 0
      002EC4 00                    3526 	.db #0x00	; 0
      002EC5 08                    3527 	.db #0x08	; 8
      002EC6 1C                    3528 	.db #0x1c	; 28
      002EC7 2A                    3529 	.db #0x2a	; 42
      002EC8 2A                    3530 	.db #0x2a	; 42
      002EC9 1C                    3531 	.db #0x1c	; 28
      002ECA 08                    3532 	.db #0x08	; 8
      002ECB 00                    3533 	.db #0x00	; 0
      002ECC 00                    3534 	.db #0x00	; 0
      002ECD 1C                    3535 	.db #0x1c	; 28
      002ECE 02                    3536 	.db #0x02	; 2
      002ECF 1E                    3537 	.db #0x1e	; 30
      002ED0 02                    3538 	.db #0x02	; 2
      002ED1 1C                    3539 	.db #0x1c	; 28
      002ED2 00                    3540 	.db #0x00	; 0
      002ED3 00                    3541 	.db #0x00	; 0
      002ED4 00                    3542 	.db #0x00	; 0
      002ED5 0C                    3543 	.db #0x0c	; 12
      002ED6 12                    3544 	.db #0x12	; 18
      002ED7 12                    3545 	.db #0x12	; 18
      002ED8 12                    3546 	.db #0x12	; 18
      002ED9 12                    3547 	.db #0x12	; 18
      002EDA 00                    3548 	.db #0x00	; 0
      002EDB 00                    3549 	.db #0x00	; 0
      002EDC 00                    3550 	.db #0x00	; 0
      002EDD 1E                    3551 	.db #0x1e	; 30
      002EDE 00                    3552 	.db #0x00	; 0
      002EDF 1E                    3553 	.db #0x1e	; 30
      002EE0 00                    3554 	.db #0x00	; 0
      002EE1 1E                    3555 	.db #0x1e	; 30
      002EE2 00                    3556 	.db #0x00	; 0
      002EE3 00                    3557 	.db #0x00	; 0
      002EE4 00                    3558 	.db #0x00	; 0
      002EE5 08                    3559 	.db #0x08	; 8
      002EE6 1C                    3560 	.db #0x1c	; 28
      002EE7 08                    3561 	.db #0x08	; 8
      002EE8 00                    3562 	.db #0x00	; 0
      002EE9 1C                    3563 	.db #0x1c	; 28
      002EEA 00                    3564 	.db #0x00	; 0
      002EEB 00                    3565 	.db #0x00	; 0
      002EEC 02                    3566 	.db #0x02	; 2
      002EED 0C                    3567 	.db #0x0c	; 12
      002EEE 10                    3568 	.db #0x10	; 16
      002EEF 0C                    3569 	.db #0x0c	; 12
      002EF0 02                    3570 	.db #0x02	; 2
      002EF1 00                    3571 	.db #0x00	; 0
      002EF2 1E                    3572 	.db #0x1e	; 30
      002EF3 00                    3573 	.db #0x00	; 0
      002EF4 10                    3574 	.db #0x10	; 16
      002EF5 0C                    3575 	.db #0x0c	; 12
      002EF6 02                    3576 	.db #0x02	; 2
      002EF7 0C                    3577 	.db #0x0c	; 12
      002EF8 10                    3578 	.db #0x10	; 16
      002EF9 00                    3579 	.db #0x00	; 0
      002EFA 1E                    3580 	.db #0x1e	; 30
      002EFB 00                    3581 	.db #0x00	; 0
      002EFC 00                    3582 	.db #0x00	; 0
      002EFD 10                    3583 	.db #0x10	; 16
      002EFE 28                    3584 	.db #0x28	; 40
      002EFF 08                    3585 	.db #0x08	; 8
      002F00 08                    3586 	.db #0x08	; 8
      002F01 08                    3587 	.db #0x08	; 8
      002F02 08                    3588 	.db #0x08	; 8
      002F03 08                    3589 	.db #0x08	; 8
      002F04 08                    3590 	.db #0x08	; 8
      002F05 08                    3591 	.db #0x08	; 8
      002F06 08                    3592 	.db #0x08	; 8
      002F07 08                    3593 	.db #0x08	; 8
      002F08 08                    3594 	.db #0x08	; 8
      002F09 0A                    3595 	.db #0x0a	; 10
      002F0A 04                    3596 	.db #0x04	; 4
      002F0B 00                    3597 	.db #0x00	; 0
      002F0C 00                    3598 	.db #0x00	; 0
      002F0D 08                    3599 	.db #0x08	; 8
      002F0E 00                    3600 	.db #0x00	; 0
      002F0F 3E                    3601 	.db #0x3e	; 62
      002F10 00                    3602 	.db #0x00	; 0
      002F11 08                    3603 	.db #0x08	; 8
      002F12 00                    3604 	.db #0x00	; 0
      002F13 00                    3605 	.db #0x00	; 0
      002F14 00                    3606 	.db #0x00	; 0
      002F15 14                    3607 	.db #0x14	; 20
      002F16 0A                    3608 	.db #0x0a	; 10
      002F17 00                    3609 	.db #0x00	; 0
      002F18 14                    3610 	.db #0x14	; 20
      002F19 0A                    3611 	.db #0x0a	; 10
      002F1A 00                    3612 	.db #0x00	; 0
      002F1B 00                    3613 	.db #0x00	; 0
      002F1C 0C                    3614 	.db #0x0c	; 12
      002F1D 12                    3615 	.db #0x12	; 18
      002F1E 12                    3616 	.db #0x12	; 18
      002F1F 0C                    3617 	.db #0x0c	; 12
      002F20 00                    3618 	.db #0x00	; 0
      002F21 00                    3619 	.db #0x00	; 0
      002F22 00                    3620 	.db #0x00	; 0
      002F23 00                    3621 	.db #0x00	; 0
      002F24 00                    3622 	.db #0x00	; 0
      002F25 00                    3623 	.db #0x00	; 0
      002F26 00                    3624 	.db #0x00	; 0
      002F27 0C                    3625 	.db #0x0c	; 12
      002F28 0C                    3626 	.db #0x0c	; 12
      002F29 00                    3627 	.db #0x00	; 0
      002F2A 00                    3628 	.db #0x00	; 0
      002F2B 00                    3629 	.db #0x00	; 0
      002F2C 00                    3630 	.db #0x00	; 0
      002F2D 00                    3631 	.db #0x00	; 0
      002F2E 00                    3632 	.db #0x00	; 0
      002F2F 04                    3633 	.db #0x04	; 4
      002F30 00                    3634 	.db #0x00	; 0
      002F31 00                    3635 	.db #0x00	; 0
      002F32 00                    3636 	.db #0x00	; 0
      002F33 00                    3637 	.db #0x00	; 0
      002F34 00                    3638 	.db #0x00	; 0
      002F35 38                    3639 	.db #0x38	; 56	'8'
      002F36 08                    3640 	.db #0x08	; 8
      002F37 08                    3641 	.db #0x08	; 8
      002F38 0A                    3642 	.db #0x0a	; 10
      002F39 0A                    3643 	.db #0x0a	; 10
      002F3A 04                    3644 	.db #0x04	; 4
      002F3B 00                    3645 	.db #0x00	; 0
      002F3C 0A                    3646 	.db #0x0a	; 10
      002F3D 14                    3647 	.db #0x14	; 20
      002F3E 14                    3648 	.db #0x14	; 20
      002F3F 14                    3649 	.db #0x14	; 20
      002F40 00                    3650 	.db #0x00	; 0
      002F41 00                    3651 	.db #0x00	; 0
      002F42 00                    3652 	.db #0x00	; 0
      002F43 00                    3653 	.db #0x00	; 0
      002F44 06                    3654 	.db #0x06	; 6
      002F45 08                    3655 	.db #0x08	; 8
      002F46 04                    3656 	.db #0x04	; 4
      002F47 0E                    3657 	.db #0x0e	; 14
      002F48 00                    3658 	.db #0x00	; 0
      002F49 00                    3659 	.db #0x00	; 0
      002F4A 00                    3660 	.db #0x00	; 0
      002F4B 00                    3661 	.db #0x00	; 0
      002F4C 00                    3662 	.db #0x00	; 0
      002F4D 00                    3663 	.db #0x00	; 0
      002F4E 1E                    3664 	.db #0x1e	; 30
      002F4F 1E                    3665 	.db #0x1e	; 30
      002F50 1E                    3666 	.db #0x1e	; 30
      002F51 1E                    3667 	.db #0x1e	; 30
      002F52 00                    3668 	.db #0x00	; 0
      002F53 00                    3669 	.db #0x00	; 0
      002F54 00                    3670 	.db #0x00	; 0
      002F55 00                    3671 	.db #0x00	; 0
      002F56 00                    3672 	.db #0x00	; 0
      002F57 00                    3673 	.db #0x00	; 0
      002F58 00                    3674 	.db #0x00	; 0
      002F59 00                    3675 	.db #0x00	; 0
      002F5A 00                    3676 	.db #0x00	; 0
      002F5B 00                    3677 	.db #0x00	; 0
      002F5C                       3678 __xinit__initial:
      002F5C 2A 27 80              3679 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3680 	.area CABS    (ABS,CODE)
