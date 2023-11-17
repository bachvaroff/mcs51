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
                                     18 	.globl _clear_gpo
                                     19 	.globl _init_gpo
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
                                    149 	.globl _OE
                                    150 	.globl _column
                                    151 	.globl _ddata
                                    152 	.globl _sddcol
                                    153 	.globl _dsdcol
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0	=	0x0080
                           000081   160 _SP	=	0x0081
                           000082   161 _DPL	=	0x0082
                           000083   162 _DPH	=	0x0083
                           000087   163 _PCON	=	0x0087
                           000088   164 _TCON	=	0x0088
                           000089   165 _TMOD	=	0x0089
                           00008A   166 _TL0	=	0x008a
                           00008B   167 _TL1	=	0x008b
                           00008C   168 _TH0	=	0x008c
                           00008D   169 _TH1	=	0x008d
                           000090   170 _P1	=	0x0090
                           000098   171 _SCON	=	0x0098
                           000099   172 _SBUF	=	0x0099
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 _IE	=	0x00a8
                           0000B0   175 _P3	=	0x00b0
                           0000B8   176 _IP	=	0x00b8
                           0000C8   177 _T2CON	=	0x00c8
                           0000C9   178 _T2MOD	=	0x00c9
                           0000CA   179 _RCAP2L	=	0x00ca
                           0000CB   180 _RCAP2H	=	0x00cb
                           0000CC   181 _TL2	=	0x00cc
                           0000CD   182 _TH2	=	0x00cd
                           0000D0   183 _PSW	=	0x00d0
                           0000E0   184 _ACC	=	0x00e0
                           0000E0   185 _A	=	0x00e0
                           0000F0   186 _B	=	0x00f0
                                    187 ;--------------------------------------------------------
                                    188 ; special function bits
                                    189 ;--------------------------------------------------------
                                    190 	.area RSEG    (ABS,DATA)
      000000                        191 	.org 0x0000
                           000080   192 _P0_0	=	0x0080
                           000081   193 _P0_1	=	0x0081
                           000082   194 _P0_2	=	0x0082
                           000083   195 _P0_3	=	0x0083
                           000084   196 _P0_4	=	0x0084
                           000085   197 _P0_5	=	0x0085
                           000086   198 _P0_6	=	0x0086
                           000087   199 _P0_7	=	0x0087
                           000088   200 _IT0	=	0x0088
                           000089   201 _IE0	=	0x0089
                           00008A   202 _IT1	=	0x008a
                           00008B   203 _IE1	=	0x008b
                           00008C   204 _TR0	=	0x008c
                           00008D   205 _TF0	=	0x008d
                           00008E   206 _TR1	=	0x008e
                           00008F   207 _TF1	=	0x008f
                           000090   208 _P1_0	=	0x0090
                           000091   209 _P1_1	=	0x0091
                           000092   210 _P1_2	=	0x0092
                           000093   211 _P1_3	=	0x0093
                           000094   212 _P1_4	=	0x0094
                           000095   213 _P1_5	=	0x0095
                           000096   214 _P1_6	=	0x0096
                           000097   215 _P1_7	=	0x0097
                           000090   216 _T2	=	0x0090
                           000091   217 _T2EX	=	0x0091
                           000098   218 _RI	=	0x0098
                           000099   219 _TI	=	0x0099
                           00009A   220 _RB8	=	0x009a
                           00009B   221 _TB8	=	0x009b
                           00009C   222 _REN	=	0x009c
                           00009D   223 _SM2	=	0x009d
                           00009E   224 _SM1	=	0x009e
                           00009F   225 _SM0	=	0x009f
                           0000A0   226 _P2_0	=	0x00a0
                           0000A1   227 _P2_1	=	0x00a1
                           0000A2   228 _P2_2	=	0x00a2
                           0000A3   229 _P2_3	=	0x00a3
                           0000A4   230 _P2_4	=	0x00a4
                           0000A5   231 _P2_5	=	0x00a5
                           0000A6   232 _P2_6	=	0x00a6
                           0000A7   233 _P2_7	=	0x00a7
                           0000A8   234 _EX0	=	0x00a8
                           0000A9   235 _ET0	=	0x00a9
                           0000AA   236 _EX1	=	0x00aa
                           0000AB   237 _ET1	=	0x00ab
                           0000AC   238 _ES	=	0x00ac
                           0000AD   239 _ET2	=	0x00ad
                           0000AF   240 _EA	=	0x00af
                           0000B0   241 _P3_0	=	0x00b0
                           0000B1   242 _P3_1	=	0x00b1
                           0000B2   243 _P3_2	=	0x00b2
                           0000B3   244 _P3_3	=	0x00b3
                           0000B4   245 _P3_4	=	0x00b4
                           0000B5   246 _P3_5	=	0x00b5
                           0000B6   247 _P3_6	=	0x00b6
                           0000B7   248 _P3_7	=	0x00b7
                           0000B0   249 _RXD	=	0x00b0
                           0000B1   250 _TXD	=	0x00b1
                           0000B2   251 _INT0	=	0x00b2
                           0000B3   252 _INT1	=	0x00b3
                           0000B4   253 _T0	=	0x00b4
                           0000B5   254 _T1	=	0x00b5
                           0000B6   255 _WR	=	0x00b6
                           0000B7   256 _RD	=	0x00b7
                           0000B8   257 _PX0	=	0x00b8
                           0000B9   258 _PT0	=	0x00b9
                           0000BA   259 _PX1	=	0x00ba
                           0000BB   260 _PT1	=	0x00bb
                           0000BC   261 _PS	=	0x00bc
                           0000BD   262 _PT2	=	0x00bd
                           0000C8   263 _T2CON_0	=	0x00c8
                           0000C9   264 _T2CON_1	=	0x00c9
                           0000CA   265 _T2CON_2	=	0x00ca
                           0000CB   266 _T2CON_3	=	0x00cb
                           0000CC   267 _T2CON_4	=	0x00cc
                           0000CD   268 _T2CON_5	=	0x00cd
                           0000CE   269 _T2CON_6	=	0x00ce
                           0000CF   270 _T2CON_7	=	0x00cf
                           0000C8   271 _CP_RL2	=	0x00c8
                           0000C9   272 _C_T2	=	0x00c9
                           0000CA   273 _TR2	=	0x00ca
                           0000CB   274 _EXEN2	=	0x00cb
                           0000CC   275 _TCLK	=	0x00cc
                           0000CD   276 _RCLK	=	0x00cd
                           0000CE   277 _EXF2	=	0x00ce
                           0000CF   278 _TF2	=	0x00cf
                           0000D0   279 _P	=	0x00d0
                           0000D1   280 _FL	=	0x00d1
                           0000D2   281 _OV	=	0x00d2
                           0000D3   282 _RS0	=	0x00d3
                           0000D4   283 _RS1	=	0x00d4
                           0000D5   284 _F0	=	0x00d5
                           0000D6   285 _AC	=	0x00d6
                           0000D7   286 _CY	=	0x00d7
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable register banks
                                    289 ;--------------------------------------------------------
                                    290 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        291 	.ds 8
                                    292 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        293 	.ds 8
                                    294 ;--------------------------------------------------------
                                    295 ; internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area DSEG    (DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; overlayable items in internal ram 
                                    300 ;--------------------------------------------------------
                                    301 ;--------------------------------------------------------
                                    302 ; Stack segment in internal ram 
                                    303 ;--------------------------------------------------------
                                    304 	.area	SSEG
      00003B                        305 __start__stack:
      00003B                        306 	.ds	1
                                    307 
                                    308 ;--------------------------------------------------------
                                    309 ; indirectly addressable internal ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area ISEG    (DATA)
      000021                        312 _dsdcol::
      000021                        313 	.ds 8
      000029                        314 _sddcol::
      000029                        315 	.ds 8
      000031                        316 _ddata::
      000031                        317 	.ds 8
      000039                        318 _column::
      000039                        319 	.ds 1
      00003A                        320 _OE::
      00003A                        321 	.ds 1
                                    322 ;--------------------------------------------------------
                                    323 ; absolute internal ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area IABS    (ABS,DATA)
                                    326 	.area IABS    (ABS,DATA)
                                    327 ;--------------------------------------------------------
                                    328 ; bit data
                                    329 ;--------------------------------------------------------
                                    330 	.area BSEG    (BIT)
                                    331 ;--------------------------------------------------------
                                    332 ; paged external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area PSEG    (PAG,XDATA)
                           000000   335 _gpo	=	0x0000
                                    336 ;--------------------------------------------------------
                                    337 ; external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XSEG    (XDATA)
      008000                        340 _buf:
      008000                        341 	.ds 257
                                    342 ;--------------------------------------------------------
                                    343 ; absolute external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XABS    (ABS,XDATA)
                                    346 ;--------------------------------------------------------
                                    347 ; external initialized ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XISEG   (XDATA)
      008101                        350 __ft_font6x8:
      008101                        351 	.ds 2048
      008901                        352 _initial:
      008901                        353 	.ds 3
                                    354 	.area HOME    (CODE)
                                    355 	.area GSINIT0 (CODE)
                                    356 	.area GSINIT1 (CODE)
                                    357 	.area GSINIT2 (CODE)
                                    358 	.area GSINIT3 (CODE)
                                    359 	.area GSINIT4 (CODE)
                                    360 	.area GSINIT5 (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.area GSFINAL (CODE)
                                    363 	.area CSEG    (CODE)
                                    364 ;--------------------------------------------------------
                                    365 ; interrupt vector 
                                    366 ;--------------------------------------------------------
                                    367 	.area HOME    (CODE)
      002000                        368 __interrupt_vect:
      002000 02 20 11         [24]  369 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  370 	reti
      002004                        371 	.ds	7
      00200B 02 21 5A         [24]  372 	ljmp	_timer0_intr
                                    373 ;--------------------------------------------------------
                                    374 ; global & static initialisations
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area GSINIT  (CODE)
                                    378 	.area GSFINAL (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 	.globl __sdcc_gsinit_startup
                                    381 	.globl __sdcc_program_startup
                                    382 	.globl __start__stack
                                    383 	.globl __mcs51_genXINIT
                                    384 	.globl __mcs51_genXRAMCLEAR
                                    385 	.globl __mcs51_genRAMCLEAR
                                    386 ;	disp.c:66: __idata const uint8_t dsdcol[8] = {
      00206A 78 21            [12]  387 	mov	r0,#_dsdcol
      00206C 76 80            [12]  388 	mov	@r0,#0x80
      00206E 78 22            [12]  389 	mov	r0,#(_dsdcol + 0x0001)
      002070 76 40            [12]  390 	mov	@r0,#0x40
      002072 78 23            [12]  391 	mov	r0,#(_dsdcol + 0x0002)
      002074 76 20            [12]  392 	mov	@r0,#0x20
      002076 78 24            [12]  393 	mov	r0,#(_dsdcol + 0x0003)
      002078 76 10            [12]  394 	mov	@r0,#0x10
      00207A 78 25            [12]  395 	mov	r0,#(_dsdcol + 0x0004)
      00207C 76 08            [12]  396 	mov	@r0,#0x08
      00207E 78 26            [12]  397 	mov	r0,#(_dsdcol + 0x0005)
      002080 76 04            [12]  398 	mov	@r0,#0x04
      002082 78 27            [12]  399 	mov	r0,#(_dsdcol + 0x0006)
      002084 76 02            [12]  400 	mov	@r0,#0x02
      002086 78 28            [12]  401 	mov	r0,#(_dsdcol + 0x0007)
      002088 76 01            [12]  402 	mov	@r0,#0x01
                                    403 ;	disp.c:70: __idata const uint8_t sddcol[8] = {
      00208A 78 29            [12]  404 	mov	r0,#_sddcol
      00208C 76 01            [12]  405 	mov	@r0,#0x01
      00208E 78 2A            [12]  406 	mov	r0,#(_sddcol + 0x0001)
      002090 76 02            [12]  407 	mov	@r0,#0x02
      002092 78 2B            [12]  408 	mov	r0,#(_sddcol + 0x0002)
      002094 76 04            [12]  409 	mov	@r0,#0x04
      002096 78 2C            [12]  410 	mov	r0,#(_sddcol + 0x0003)
      002098 76 08            [12]  411 	mov	@r0,#0x08
      00209A 78 2D            [12]  412 	mov	r0,#(_sddcol + 0x0004)
      00209C 76 10            [12]  413 	mov	@r0,#0x10
      00209E 78 2E            [12]  414 	mov	r0,#(_sddcol + 0x0005)
      0020A0 76 20            [12]  415 	mov	@r0,#0x20
      0020A2 78 2F            [12]  416 	mov	r0,#(_sddcol + 0x0006)
      0020A4 76 40            [12]  417 	mov	@r0,#0x40
      0020A6 78 30            [12]  418 	mov	r0,#(_sddcol + 0x0007)
      0020A8 76 80            [12]  419 	mov	@r0,#0x80
                                    420 	.area GSFINAL (CODE)
      0020AA 02 20 0E         [24]  421 	ljmp	__sdcc_program_startup
                                    422 ;--------------------------------------------------------
                                    423 ; Home
                                    424 ;--------------------------------------------------------
                                    425 	.area HOME    (CODE)
                                    426 	.area HOME    (CODE)
      00200E                        427 __sdcc_program_startup:
      00200E 02 23 22         [24]  428 	ljmp	_main
                                    429 ;	return from main will return to caller
                                    430 ;--------------------------------------------------------
                                    431 ; code
                                    432 ;--------------------------------------------------------
                                    433 	.area CSEG    (CODE)
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'putchar'
                                    436 ;------------------------------------------------------------
                                    437 ;c                         Allocated to registers 
                                    438 ;------------------------------------------------------------
                                    439 ;	disp.c:13: int putchar(int c) __naked {
                                    440 ;	-----------------------------------------
                                    441 ;	 function putchar
                                    442 ;	-----------------------------------------
      0020AD                        443 _putchar:
                                    444 ;	naked function: no prologue.
                                    445 ;	disp.c:18: __endasm;
      0020AD E5 82            [12]  446 	mov	a, dpl
      0020AF 02 00 30         [24]  447 	ljmp	0x0030
                                    448 ;	disp.c:19: }
                                    449 ;	naked function: no epilogue.
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'getchar'
                                    452 ;------------------------------------------------------------
                                    453 ;	disp.c:21: int getchar(void) __naked {
                                    454 ;	-----------------------------------------
                                    455 ;	 function getchar
                                    456 ;	-----------------------------------------
      0020B2                        457 _getchar:
                                    458 ;	naked function: no prologue.
                                    459 ;	disp.c:27: __endasm;
      0020B2 12 00 32         [24]  460 	lcall	0x0032
      0020B5 F5 82            [12]  461 	mov	dpl, a
      0020B7 75 83 00         [24]  462 	mov	dph, #0
      0020BA 22               [24]  463 	ret
                                    464 ;	disp.c:28: }
                                    465 ;	naked function: no epilogue.
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'getchar_poll'
                                    468 ;------------------------------------------------------------
                                    469 ;	disp.c:30: int getchar_poll(void) __naked {
                                    470 ;	-----------------------------------------
                                    471 ;	 function getchar_poll
                                    472 ;	-----------------------------------------
      0020BB                        473 _getchar_poll:
                                    474 ;	naked function: no prologue.
                                    475 ;	disp.c:42: __endasm;
      0020BB 74 FF            [12]  476 	mov	a, #0xff
      0020BD F5 F0            [12]  477 	mov	b, a
      0020BF 30 98 07         [24]  478 	jnb	ri, nochar
      0020C2 C2 98            [12]  479 	clr	ri
      0020C4 E5 99            [12]  480 	mov	a, sbuf
      0020C6 75 F0 00         [24]  481 	mov	b, #0
      0020C9                        482 	nochar:
      0020C9 F5 82            [12]  483 	mov	dpl, a
      0020CB 85 F0 83         [24]  484 	mov	dph, b
      0020CE 22               [24]  485 	ret
                                    486 ;	disp.c:43: }
                                    487 ;	naked function: no epilogue.
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'init_gpo'
                                    490 ;------------------------------------------------------------
                                    491 ;	disp.c:89: void init_gpo(void) {
                                    492 ;	-----------------------------------------
                                    493 ;	 function init_gpo
                                    494 ;	-----------------------------------------
      0020CF                        495 _init_gpo:
                           000007   496 	ar7 = 0x07
                           000006   497 	ar6 = 0x06
                           000005   498 	ar5 = 0x05
                           000004   499 	ar4 = 0x04
                           000003   500 	ar3 = 0x03
                           000002   501 	ar2 = 0x02
                           000001   502 	ar1 = 0x01
                           000000   503 	ar0 = 0x00
                                    504 ;	disp.c:90: P1_7 = 0;
                                    505 ;	assignBit
      0020CF C2 97            [12]  506 	clr	_P1_7
                                    507 ;	disp.c:92: P2 = GPO_BASE_H;
      0020D1 75 A0 F0         [24]  508 	mov	_P2,#0xf0
                                    509 ;	disp.c:94: CLEAR_GPO;
      0020D4 78 06            [12]  510 	mov	r0,#(_gpo + 0x0006)
      0020D6 74 3F            [12]  511 	mov	a,#0x3f
      0020D8 F2               [24]  512 	movx	@r0,a
      0020D9 78 00            [12]  513 	mov	r0,#_gpo
      0020DB E4               [12]  514 	clr	a
      0020DC F2               [24]  515 	movx	@r0,a
      0020DD 78 01            [12]  516 	mov	r0,#(_gpo + 0x0001)
      0020DF F2               [24]  517 	movx	@r0,a
      0020E0 78 02            [12]  518 	mov	r0,#(_gpo + 0x0002)
      0020E2 F2               [24]  519 	movx	@r0,a
      0020E3 78 03            [12]  520 	mov	r0,#(_gpo + 0x0003)
      0020E5 F2               [24]  521 	movx	@r0,a
      0020E6 78 04            [12]  522 	mov	r0,#(_gpo + 0x0004)
      0020E8 F2               [24]  523 	movx	@r0,a
      0020E9 78 05            [12]  524 	mov	r0,#(_gpo + 0x0005)
      0020EB F2               [24]  525 	movx	@r0,a
                                    526 ;	disp.c:96: return;
                                    527 ;	disp.c:97: }
      0020EC 22               [24]  528 	ret
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'clear_gpo'
                                    531 ;------------------------------------------------------------
                                    532 ;	disp.c:99: void clear_gpo(void) {
                                    533 ;	-----------------------------------------
                                    534 ;	 function clear_gpo
                                    535 ;	-----------------------------------------
      0020ED                        536 _clear_gpo:
                                    537 ;	disp.c:100: CLEAR_GPO;
      0020ED 78 06            [12]  538 	mov	r0,#(_gpo + 0x0006)
      0020EF 74 3F            [12]  539 	mov	a,#0x3f
      0020F1 F2               [24]  540 	movx	@r0,a
      0020F2 78 00            [12]  541 	mov	r0,#_gpo
      0020F4 E4               [12]  542 	clr	a
      0020F5 F2               [24]  543 	movx	@r0,a
      0020F6 78 01            [12]  544 	mov	r0,#(_gpo + 0x0001)
      0020F8 F2               [24]  545 	movx	@r0,a
      0020F9 78 02            [12]  546 	mov	r0,#(_gpo + 0x0002)
      0020FB F2               [24]  547 	movx	@r0,a
      0020FC 78 03            [12]  548 	mov	r0,#(_gpo + 0x0003)
      0020FE F2               [24]  549 	movx	@r0,a
      0020FF 78 04            [12]  550 	mov	r0,#(_gpo + 0x0004)
      002101 F2               [24]  551 	movx	@r0,a
      002102 78 05            [12]  552 	mov	r0,#(_gpo + 0x0005)
      002104 F2               [24]  553 	movx	@r0,a
                                    554 ;	disp.c:102: return;
                                    555 ;	disp.c:103: }
      002105 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'init_intr'
                                    559 ;------------------------------------------------------------
                                    560 ;	disp.c:105: void init_intr(void) {
                                    561 ;	-----------------------------------------
                                    562 ;	 function init_intr
                                    563 ;	-----------------------------------------
      002106                        564 _init_intr:
                                    565 ;	disp.c:106: TR0 = 0;
                                    566 ;	assignBit
      002106 C2 8C            [12]  567 	clr	_TR0
                                    568 ;	disp.c:107: TR1 = 0;
                                    569 ;	assignBit
      002108 C2 8E            [12]  570 	clr	_TR1
                                    571 ;	disp.c:108: ET0 = 1;
                                    572 ;	assignBit
      00210A D2 A9            [12]  573 	setb	_ET0
                                    574 ;	disp.c:109: ET1 = 0;
                                    575 ;	assignBit
      00210C C2 AB            [12]  576 	clr	_ET1
                                    577 ;	disp.c:110: EA = 1;
                                    578 ;	assignBit
      00210E D2 AF            [12]  579 	setb	_EA
                                    580 ;	disp.c:112: return;
                                    581 ;	disp.c:113: }
      002110 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'init_timer0'
                                    585 ;------------------------------------------------------------
                                    586 ;	disp.c:115: void init_timer0(void) {
                                    587 ;	-----------------------------------------
                                    588 ;	 function init_timer0
                                    589 ;	-----------------------------------------
      002111                        590 _init_timer0:
                                    591 ;	disp.c:116: TR0 = 0;
                                    592 ;	assignBit
      002111 C2 8C            [12]  593 	clr	_TR0
                                    594 ;	disp.c:117: TMOD |= 0x01;
      002113 43 89 01         [24]  595 	orl	_TMOD,#0x01
                                    596 ;	disp.c:118: TH0 = TR0_COUNT >> 8;
      002116 75 8C F8         [24]  597 	mov	_TH0,#0xf8
                                    598 ;	disp.c:119: TL0 = TR0_COUNT & 0xffu;
      002119 75 8A 00         [24]  599 	mov	_TL0,#0x00
                                    600 ;	disp.c:121: return;
                                    601 ;	disp.c:122: }
      00211C 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'init_timer1'
                                    605 ;------------------------------------------------------------
                                    606 ;	disp.c:124: void init_timer1(void) {
                                    607 ;	-----------------------------------------
                                    608 ;	 function init_timer1
                                    609 ;	-----------------------------------------
      00211D                        610 _init_timer1:
                                    611 ;	disp.c:125: TR1 = 0;
                                    612 ;	assignBit
      00211D C2 8E            [12]  613 	clr	_TR1
                                    614 ;	disp.c:126: TMOD |= 0x10;
      00211F 43 89 10         [24]  615 	orl	_TMOD,#0x10
                                    616 ;	disp.c:127: TH1 = TR1_COUNT_0 >> 8;
      002122 75 8D 00         [24]  617 	mov	_TH1,#0x00
                                    618 ;	disp.c:128: TL1 = TR1_COUNT_0 & 0xffu;
      002125 75 8B 00         [24]  619 	mov	_TL1,#0x00
                                    620 ;	disp.c:130: return;
                                    621 ;	disp.c:131: }
      002128 22               [24]  622 	ret
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'init_disp'
                                    625 ;------------------------------------------------------------
                                    626 ;	disp.c:133: void init_disp(void) {
                                    627 ;	-----------------------------------------
                                    628 ;	 function init_disp
                                    629 ;	-----------------------------------------
      002129                        630 _init_disp:
                                    631 ;	disp.c:134: gpo[DISP_COL] = 0u;
      002129 78 05            [12]  632 	mov	r0,#(_gpo + 0x0005)
      00212B E4               [12]  633 	clr	a
      00212C F2               [24]  634 	movx	@r0,a
                                    635 ;	disp.c:135: gpo[DISP_DATA] = 0u;
      00212D 78 04            [12]  636 	mov	r0,#(_gpo + 0x0004)
      00212F F2               [24]  637 	movx	@r0,a
                                    638 ;	disp.c:136: OE = 0x0fu; /* 00_001111 */
      002130 78 3A            [12]  639 	mov	r0,#_OE
      002132 76 0F            [12]  640 	mov	@r0,#0x0f
                                    641 ;	disp.c:137: gpo[GPO_OE] = OE;
      002134 78 06            [12]  642 	mov	r0,#(_gpo + 0x0006)
      002136 74 0F            [12]  643 	mov	a,#0x0f
      002138 F2               [24]  644 	movx	@r0,a
                                    645 ;	disp.c:139: for (column = 0u; column < 8u; column++)
      002139 78 39            [12]  646 	mov	r0,#_column
      00213B 76 00            [12]  647 	mov	@r0,#0x00
      00213D                        648 00103$:
      00213D 78 39            [12]  649 	mov	r0,#_column
      00213F B6 08 00         [24]  650 	cjne	@r0,#0x08,00115$
      002142                        651 00115$:
      002142 50 11            [24]  652 	jnc	00101$
                                    653 ;	disp.c:140: ddata[column] = 0u;
      002144 78 39            [12]  654 	mov	r0,#_column
      002146 E6               [12]  655 	mov	a,@r0
      002147 24 31            [12]  656 	add	a,#_ddata
      002149 F8               [12]  657 	mov	r0,a
      00214A 76 00            [12]  658 	mov	@r0,#0x00
                                    659 ;	disp.c:139: for (column = 0u; column < 8u; column++)
      00214C 78 39            [12]  660 	mov	r0,#_column
      00214E E6               [12]  661 	mov	a,@r0
      00214F 78 39            [12]  662 	mov	r0,#_column
      002151 04               [12]  663 	inc	a
      002152 F6               [12]  664 	mov	@r0,a
      002153 80 E8            [24]  665 	sjmp	00103$
      002155                        666 00101$:
                                    667 ;	disp.c:141: column = 0u;
      002155 78 39            [12]  668 	mov	r0,#_column
      002157 76 00            [12]  669 	mov	@r0,#0x00
                                    670 ;	disp.c:143: return;
                                    671 ;	disp.c:144: }
      002159 22               [24]  672 	ret
                                    673 ;------------------------------------------------------------
                                    674 ;Allocation info for local variables in function 'timer0_intr'
                                    675 ;------------------------------------------------------------
                                    676 ;t                         Allocated to registers r7 
                                    677 ;------------------------------------------------------------
                                    678 ;	disp.c:146: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    679 ;	-----------------------------------------
                                    680 ;	 function timer0_intr
                                    681 ;	-----------------------------------------
      00215A                        682 _timer0_intr:
                           00000F   683 	ar7 = 0x0f
                           00000E   684 	ar6 = 0x0e
                           00000D   685 	ar5 = 0x0d
                           00000C   686 	ar4 = 0x0c
                           00000B   687 	ar3 = 0x0b
                           00000A   688 	ar2 = 0x0a
                           000009   689 	ar1 = 0x09
                           000008   690 	ar0 = 0x08
      00215A C0 E0            [24]  691 	push	acc
      00215C C0 D0            [24]  692 	push	psw
      00215E 75 D0 08         [24]  693 	mov	psw,#0x08
                                    694 ;	disp.c:149: t = column & 7u;
      002161 78 39            [12]  695 	mov	r0,#_column
      002163 86 0F            [24]  696 	mov	ar7,@r0
      002165 53 0F 07         [24]  697 	anl	ar7,#0x07
                                    698 ;	disp.c:150: gpo[DISP_COL] = 0u;
      002168 78 05            [12]  699 	mov	r0,#(_gpo + 0x0005)
      00216A E4               [12]  700 	clr	a
      00216B F2               [24]  701 	movx	@r0,a
                                    702 ;	disp.c:151: gpo[DISP_DATA] = ddata[t];
      00216C EF               [12]  703 	mov	a,r7
      00216D 24 31            [12]  704 	add	a,#_ddata
      00216F F9               [12]  705 	mov	r1,a
      002170 87 0E            [24]  706 	mov	ar6,@r1
      002172 78 04            [12]  707 	mov	r0,#(_gpo + 0x0004)
      002174 EE               [12]  708 	mov	a,r6
      002175 F2               [24]  709 	movx	@r0,a
                                    710 ;	disp.c:152: gpo[DISP_COL] = dsdcol[t];
      002176 EF               [12]  711 	mov	a,r7
      002177 24 21            [12]  712 	add	a,#_dsdcol
      002179 F9               [12]  713 	mov	r1,a
      00217A 87 0F            [24]  714 	mov	ar7,@r1
      00217C 78 05            [12]  715 	mov	r0,#(_gpo + 0x0005)
      00217E EF               [12]  716 	mov	a,r7
      00217F F2               [24]  717 	movx	@r0,a
                                    718 ;	disp.c:153: column++;
      002180 78 39            [12]  719 	mov	r0,#_column
      002182 E6               [12]  720 	mov	a,@r0
      002183 78 39            [12]  721 	mov	r0,#_column
      002185 04               [12]  722 	inc	a
      002186 F6               [12]  723 	mov	@r0,a
                                    724 ;	disp.c:155: TR0 = 0;
                                    725 ;	assignBit
      002187 C2 8C            [12]  726 	clr	_TR0
                                    727 ;	disp.c:156: TH0 = TR0_COUNT >> 8;
      002189 75 8C F8         [24]  728 	mov	_TH0,#0xf8
                                    729 ;	disp.c:157: TL0 = TR0_COUNT & 0xffu;
      00218C 75 8A 00         [24]  730 	mov	_TL0,#0x00
                                    731 ;	disp.c:158: TR0 = 1;
                                    732 ;	assignBit
      00218F D2 8C            [12]  733 	setb	_TR0
                                    734 ;	disp.c:160: return;
                                    735 ;	disp.c:161: }
      002191 D0 D0            [24]  736 	pop	psw
      002193 D0 E0            [24]  737 	pop	acc
      002195 32               [24]  738 	reti
                                    739 ;	eliminated unneeded push/pop dpl
                                    740 ;	eliminated unneeded push/pop dph
                                    741 ;	eliminated unneeded push/pop b
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'scroll'
                                    744 ;------------------------------------------------------------
                                    745 ;msg                       Allocated to stack - _bp +1
                                    746 ;symbol                    Allocated to stack - _bp +5
                                    747 ;bit                       Allocated to stack - _bp +6
                                    748 ;i                         Allocated to stack - _bp +7
                                    749 ;j                         Allocated to registers r4 
                                    750 ;r                         Allocated to registers r3 r4 
                                    751 ;__3932160002              Allocated to registers 
                                    752 ;s                         Allocated to registers r6 r4 r3 
                                    753 ;sloc0                     Allocated to stack - _bp +4
                                    754 ;sloc1                     Allocated to stack - _bp +18
                                    755 ;sloc2                     Allocated to stack - _bp +19
                                    756 ;------------------------------------------------------------
                                    757 ;	disp.c:188: int scroll(uint8_t *msg) {
                                    758 ;	-----------------------------------------
                                    759 ;	 function scroll
                                    760 ;	-----------------------------------------
      002196                        761 _scroll:
                           000007   762 	ar7 = 0x07
                           000006   763 	ar6 = 0x06
                           000005   764 	ar5 = 0x05
                           000004   765 	ar4 = 0x04
                           000003   766 	ar3 = 0x03
                           000002   767 	ar2 = 0x02
                           000001   768 	ar1 = 0x01
                           000000   769 	ar0 = 0x00
      002196 C0 10            [24]  770 	push	_bp
      002198 85 81 10         [24]  771 	mov	_bp,sp
      00219B C0 82            [24]  772 	push	dpl
      00219D C0 83            [24]  773 	push	dph
      00219F C0 F0            [24]  774 	push	b
      0021A1 E5 81            [12]  775 	mov	a,sp
      0021A3 24 05            [12]  776 	add	a,#0x05
      0021A5 F5 81            [12]  777 	mov	sp,a
                                    778 ;	disp.c:194: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0021A7 E5 10            [12]  779 	mov	a,_bp
      0021A9 24 06            [12]  780 	add	a,#0x06
      0021AB F8               [12]  781 	mov	r0,a
      0021AC 76 00            [12]  782 	mov	@r0,#0x00
      0021AE E5 10            [12]  783 	mov	a,_bp
      0021B0 24 07            [12]  784 	add	a,#0x07
      0021B2 F8               [12]  785 	mov	r0,a
      0021B3 E4               [12]  786 	clr	a
      0021B4 F6               [12]  787 	mov	@r0,a
      0021B5 08               [12]  788 	inc	r0
      0021B6 F6               [12]  789 	mov	@r0,a
      0021B7                        790 00135$:
                                    791 ;	disp.c:195: if (!bit) {
      0021B7 E5 10            [12]  792 	mov	a,_bp
      0021B9 24 06            [12]  793 	add	a,#0x06
      0021BB F8               [12]  794 	mov	r0,a
      0021BC E6               [12]  795 	mov	a,@r0
      0021BD 70 55            [24]  796 	jnz	00104$
                                    797 ;	disp.c:196: symbol = msg[i];
      0021BF A8 10            [24]  798 	mov	r0,_bp
      0021C1 08               [12]  799 	inc	r0
      0021C2 E5 10            [12]  800 	mov	a,_bp
      0021C4 24 07            [12]  801 	add	a,#0x07
      0021C6 F9               [12]  802 	mov	r1,a
      0021C7 E7               [12]  803 	mov	a,@r1
      0021C8 26               [12]  804 	add	a,@r0
      0021C9 FA               [12]  805 	mov	r2,a
      0021CA 09               [12]  806 	inc	r1
      0021CB E7               [12]  807 	mov	a,@r1
      0021CC 08               [12]  808 	inc	r0
      0021CD 36               [12]  809 	addc	a,@r0
      0021CE FB               [12]  810 	mov	r3,a
      0021CF 08               [12]  811 	inc	r0
      0021D0 86 04            [24]  812 	mov	ar4,@r0
      0021D2 8A 82            [24]  813 	mov	dpl,r2
      0021D4 8B 83            [24]  814 	mov	dph,r3
      0021D6 8C F0            [24]  815 	mov	b,r4
      0021D8 12 26 73         [24]  816 	lcall	__gptrget
      0021DB FA               [12]  817 	mov	r2,a
      0021DC E5 10            [12]  818 	mov	a,_bp
      0021DE 24 04            [12]  819 	add	a,#0x04
      0021E0 F8               [12]  820 	mov	r0,a
      0021E1 A6 02            [24]  821 	mov	@r0,ar2
                                    822 ;	disp.c:197: if (!symbol) {
      0021E3 EA               [12]  823 	mov	a,r2
      0021E4 70 1D            [24]  824 	jnz	00102$
                                    825 ;	disp.c:198: i = 0u;
      0021E6 E5 10            [12]  826 	mov	a,_bp
      0021E8 24 07            [12]  827 	add	a,#0x07
      0021EA F8               [12]  828 	mov	r0,a
      0021EB E4               [12]  829 	clr	a
      0021EC F6               [12]  830 	mov	@r0,a
      0021ED 08               [12]  831 	inc	r0
      0021EE F6               [12]  832 	mov	@r0,a
                                    833 ;	disp.c:199: symbol = msg[i];
      0021EF A8 10            [24]  834 	mov	r0,_bp
      0021F1 08               [12]  835 	inc	r0
      0021F2 86 82            [24]  836 	mov	dpl,@r0
      0021F4 08               [12]  837 	inc	r0
      0021F5 86 83            [24]  838 	mov	dph,@r0
      0021F7 08               [12]  839 	inc	r0
      0021F8 86 F0            [24]  840 	mov	b,@r0
      0021FA E5 10            [12]  841 	mov	a,_bp
      0021FC 24 04            [12]  842 	add	a,#0x04
      0021FE F9               [12]  843 	mov	r1,a
      0021FF 12 26 73         [24]  844 	lcall	__gptrget
      002202 F7               [12]  845 	mov	@r1,a
      002203                        846 00102$:
                                    847 ;	disp.c:201: i++;
      002203 E5 10            [12]  848 	mov	a,_bp
      002205 24 07            [12]  849 	add	a,#0x07
      002207 F8               [12]  850 	mov	r0,a
      002208 06               [12]  851 	inc	@r0
      002209 B6 00 02         [24]  852 	cjne	@r0,#0x00,00218$
      00220C 08               [12]  853 	inc	r0
      00220D 06               [12]  854 	inc	@r0
      00220E                        855 00218$:
                                    856 ;	disp.c:202: OE = 0x8fu;
      00220E 78 3A            [12]  857 	mov	r0,#_OE
      002210 76 8F            [12]  858 	mov	@r0,#0x8f
      002212 80 04            [24]  859 	sjmp	00105$
      002214                        860 00104$:
                                    861 ;	disp.c:203: } else OE = 0x0fu;
      002214 78 3A            [12]  862 	mov	r0,#_OE
      002216 76 0F            [12]  863 	mov	@r0,#0x0f
      002218                        864 00105$:
                                    865 ;	disp.c:204: gpo[GPO_OE] = OE;
      002218 78 06            [12]  866 	mov	r0,#(_gpo + 0x0006)
      00221A 79 3A            [12]  867 	mov	r1,#_OE
      00221C E7               [12]  868 	mov	a,@r1
      00221D F2               [24]  869 	movx	@r0,a
                                    870 ;	disp.c:206: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      00221E E5 10            [12]  871 	mov	a,_bp
      002220 24 06            [12]  872 	add	a,#0x06
      002222 F8               [12]  873 	mov	r0,a
      002223 E6               [12]  874 	mov	a,@r0
      002224 24 29            [12]  875 	add	a,#_sddcol
      002226 F9               [12]  876 	mov	r1,a
      002227 E7               [12]  877 	mov	a,@r1
      002228 FB               [12]  878 	mov	r3,a
      002229 54 C0            [12]  879 	anl	a,#0xc0
      00222B 60 02            [24]  880 	jz	00220$
      00222D 80 6F            [24]  881 	sjmp	00109$
      00222F                        882 00220$:
                                    883 ;	disp.c:164: TR1 = 0;
                                    884 ;	assignBit
      00222F C2 8E            [12]  885 	clr	_TR1
                                    886 ;	disp.c:165: TH1 = TR1_COUNT_0 >> 8;
      002231 75 8D 00         [24]  887 	mov	_TH1,#0x00
                                    888 ;	disp.c:166: TL1 = TR1_COUNT_0 & 0xffu;	
      002234 75 8B 00         [24]  889 	mov	_TL1,#0x00
                                    890 ;	disp.c:167: TF1 = 0;
                                    891 ;	assignBit
      002237 C2 8F            [12]  892 	clr	_TF1
                                    893 ;	disp.c:168: TR1 = 1;
                                    894 ;	assignBit
      002239 D2 8E            [12]  895 	setb	_TR1
                                    896 ;	disp.c:169: while (!TF1);
      00223B                        897 00121$:
                                    898 ;	disp.c:170: TF1 = 0;
                                    899 ;	assignBit
      00223B 10 8F 02         [24]  900 	jbc	_TF1,00221$
      00223E 80 FB            [24]  901 	sjmp	00121$
      002240                        902 00221$:
                                    903 ;	disp.c:172: TR1 = 0;
                                    904 ;	assignBit
      002240 C2 8E            [12]  905 	clr	_TR1
                                    906 ;	disp.c:173: TH1 = TR1_COUNT_1 >> 8;
      002242 75 8D C0         [24]  907 	mov	_TH1,#0xc0
                                    908 ;	disp.c:174: TL1 = TR1_COUNT_1 & 0xffu;	
      002245 75 8B 00         [24]  909 	mov	_TL1,#0x00
                                    910 ;	disp.c:175: TF1 = 0;
                                    911 ;	assignBit
      002248 C2 8F            [12]  912 	clr	_TF1
                                    913 ;	disp.c:176: TR1 = 1;
                                    914 ;	assignBit
      00224A D2 8E            [12]  915 	setb	_TR1
                                    916 ;	disp.c:177: while (!TF1);
      00224C                        917 00124$:
                                    918 ;	disp.c:178: TF1 = 0;
                                    919 ;	assignBit
      00224C 10 8F 02         [24]  920 	jbc	_TF1,00222$
      00224F 80 FB            [24]  921 	sjmp	00124$
      002251                        922 00222$:
                                    923 ;	disp.c:180: TR1 = 0;
                                    924 ;	assignBit
      002251 C2 8E            [12]  925 	clr	_TR1
                                    926 ;	disp.c:209: for (j = 0u; j < 8u; j++)
      002253 E5 10            [12]  927 	mov	a,_bp
      002255 24 04            [12]  928 	add	a,#0x04
      002257 F8               [12]  929 	mov	r0,a
      002258 E6               [12]  930 	mov	a,@r0
      002259 75 F0 08         [24]  931 	mov	b,#0x08
      00225C A4               [48]  932 	mul	ab
      00225D 24 01            [12]  933 	add	a,#__ft_font6x8
      00225F FA               [12]  934 	mov	r2,a
      002260 74 81            [12]  935 	mov	a,#(__ft_font6x8 >> 8)
      002262 35 F0            [12]  936 	addc	a,b
      002264 FB               [12]  937 	mov	r3,a
      002265 E5 10            [12]  938 	mov	a,_bp
      002267 24 06            [12]  939 	add	a,#0x06
      002269 F8               [12]  940 	mov	r0,a
      00226A 74 07            [12]  941 	mov	a,#0x07
      00226C C3               [12]  942 	clr	c
      00226D 96               [12]  943 	subb	a,@r0
      00226E FD               [12]  944 	mov	r5,a
      00226F 7C 00            [12]  945 	mov	r4,#0x00
      002271                        946 00130$:
                                    947 ;	disp.c:210: ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      002271 EC               [12]  948 	mov	a,r4
      002272 24 31            [12]  949 	add	a,#_ddata
      002274 F9               [12]  950 	mov	r1,a
      002275 EC               [12]  951 	mov	a,r4
      002276 2A               [12]  952 	add	a,r2
      002277 F5 82            [12]  953 	mov	dpl,a
      002279 E4               [12]  954 	clr	a
      00227A 3B               [12]  955 	addc	a,r3
      00227B F5 83            [12]  956 	mov	dph,a
      00227D E0               [24]  957 	movx	a,@dptr
      00227E FF               [12]  958 	mov	r7,a
      00227F 8D F0            [24]  959 	mov	b,r5
      002281 05 F0            [12]  960 	inc	b
      002283 EF               [12]  961 	mov	a,r7
      002284 80 02            [24]  962 	sjmp	00225$
      002286                        963 00223$:
      002286 25 E0            [12]  964 	add	a,acc
      002288                        965 00225$:
      002288 D5 F0 FB         [24]  966 	djnz	b,00223$
      00228B 54 80            [12]  967 	anl	a,#0x80
      00228D FF               [12]  968 	mov	r7,a
      00228E EC               [12]  969 	mov	a,r4
      00228F 24 31            [12]  970 	add	a,#_ddata
      002291 F8               [12]  971 	mov	r0,a
      002292 E6               [12]  972 	mov	a,@r0
      002293 C3               [12]  973 	clr	c
      002294 13               [12]  974 	rrc	a
      002295 FE               [12]  975 	mov	r6,a
      002296 4F               [12]  976 	orl	a,r7
      002297 F7               [12]  977 	mov	@r1,a
                                    978 ;	disp.c:209: for (j = 0u; j < 8u; j++)
      002298 0C               [12]  979 	inc	r4
      002299 BC 08 00         [24]  980 	cjne	r4,#0x08,00226$
      00229C                        981 00226$:
      00229C 40 D3            [24]  982 	jc	00130$
                                    983 ;	disp.c:212: skip_shift:
      00229E                        984 00109$:
                                    985 ;	disp.c:213: if ((r = getchar_poll()) >= 0) {
      00229E 12 20 BB         [24]  986 	lcall	_getchar_poll
      0022A1 AB 82            [24]  987 	mov	r3,dpl
      0022A3 AC 83            [24]  988 	mov	r4,dph
      0022A5 8B 07            [24]  989 	mov	ar7,r3
      0022A7 EC               [12]  990 	mov	a,r4
      0022A8 FE               [12]  991 	mov	r6,a
      0022A9 20 E7 58         [24]  992 	jb	acc.7,00136$
                                    993 ;	disp.c:214: r = toupper(r);
      0022AC 8F 82            [24]  994 	mov	dpl,r7
      0022AE 8E 83            [24]  995 	mov	dph,r6
      0022B0 12 25 95         [24]  996 	lcall	_toupper
      0022B3 AB 82            [24]  997 	mov	r3,dpl
      0022B5 AC 83            [24]  998 	mov	r4,dph
                                    999 ;	disp.c:215: if ((r == (int)'P') || (r == (int)' ')) {
      0022B7 BB 50 05         [24] 1000 	cjne	r3,#0x50,00229$
      0022BA BC 00 02         [24] 1001 	cjne	r4,#0x00,00229$
      0022BD 80 06            [24] 1002 	sjmp	00114$
      0022BF                       1003 00229$:
      0022BF BB 20 2A         [24] 1004 	cjne	r3,#0x20,00115$
      0022C2 BC 00 27         [24] 1005 	cjne	r4,#0x00,00115$
      0022C5                       1006 00114$:
                                   1007 ;	disp.c:216: printstr("PAUSE\r\n");
      0022C5 7E AE            [12] 1008 	mov	r6,#___str_0
      0022C7 7C 26            [12] 1009 	mov	r4,#(___str_0 >> 8)
      0022C9 7B 80            [12] 1010 	mov	r3,#0x80
                                   1011 ;	disp.c:48: return;
      0022CB                       1012 00133$:
                                   1013 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0022CB 8E 82            [24] 1014 	mov	dpl,r6
      0022CD 8C 83            [24] 1015 	mov	dph,r4
      0022CF 8B F0            [24] 1016 	mov	b,r3
      0022D1 12 26 73         [24] 1017 	lcall	__gptrget
      0022D4 FD               [12] 1018 	mov	r5,a
      0022D5 60 10            [24] 1019 	jz	00129$
      0022D7 7F 00            [12] 1020 	mov	r7,#0x00
      0022D9 8D 82            [24] 1021 	mov	dpl,r5
      0022DB 8F 83            [24] 1022 	mov	dph,r7
      0022DD 12 20 AD         [24] 1023 	lcall	_putchar
      0022E0 0E               [12] 1024 	inc	r6
                                   1025 ;	disp.c:216: printstr("PAUSE\r\n");
      0022E1 BE 00 E7         [24] 1026 	cjne	r6,#0x00,00133$
      0022E4 0C               [12] 1027 	inc	r4
      0022E5 80 E4            [24] 1028 	sjmp	00133$
      0022E7                       1029 00129$:
                                   1030 ;	disp.c:217: (void)getchar();
      0022E7 12 20 B2         [24] 1031 	lcall	_getchar
      0022EA 80 18            [24] 1032 	sjmp	00136$
      0022EC                       1033 00115$:
                                   1034 ;	disp.c:218: } else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      0022EC BB 54 05         [24] 1035 	cjne	r3,#0x54,00234$
      0022EF BC 00 02         [24] 1036 	cjne	r4,#0x00,00234$
      0022F2 80 24            [24] 1037 	sjmp	00120$
      0022F4                       1038 00234$:
      0022F4 BB 52 05         [24] 1039 	cjne	r3,#0x52,00235$
      0022F7 BC 00 02         [24] 1040 	cjne	r4,#0x00,00235$
      0022FA 80 1C            [24] 1041 	sjmp	00120$
      0022FC                       1042 00235$:
      0022FC BB 4C 05         [24] 1043 	cjne	r3,#0x4c,00236$
      0022FF BC 00 02         [24] 1044 	cjne	r4,#0x00,00236$
      002302 80 14            [24] 1045 	sjmp	00120$
      002304                       1046 00236$:
      002304                       1047 00136$:
                                   1048 ;	disp.c:194: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002304 E5 10            [12] 1049 	mov	a,_bp
      002306 24 06            [12] 1050 	add	a,#0x06
      002308 F8               [12] 1051 	mov	r0,a
      002309 E6               [12] 1052 	mov	a,@r0
      00230A 04               [12] 1053 	inc	a
      00230B FF               [12] 1054 	mov	r7,a
      00230C E5 10            [12] 1055 	mov	a,_bp
      00230E 24 06            [12] 1056 	add	a,#0x06
      002310 F8               [12] 1057 	mov	r0,a
      002311 74 07            [12] 1058 	mov	a,#0x07
      002313 5F               [12] 1059 	anl	a,r7
      002314 F6               [12] 1060 	mov	@r0,a
      002315 02 21 B7         [24] 1061 	ljmp	00135$
      002318                       1062 00120$:
                                   1063 ;	disp.c:222: return r;
      002318 8B 82            [24] 1064 	mov	dpl,r3
      00231A 8C 83            [24] 1065 	mov	dph,r4
                                   1066 ;	disp.c:223: }
      00231C 85 10 81         [24] 1067 	mov	sp,_bp
      00231F D0 10            [24] 1068 	pop	_bp
      002321 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'main'
                                   1072 ;------------------------------------------------------------
                                   1073 ;j                         Allocated to stack - _bp +1
                                   1074 ;c                         Allocated to registers r7 r6 
                                   1075 ;__1310720004              Allocated to registers 
                                   1076 ;s                         Allocated to registers r5 r6 r7 
                                   1077 ;__1966080006              Allocated to registers 
                                   1078 ;s                         Allocated to registers r5 r6 r7 
                                   1079 ;__1966080008              Allocated to registers 
                                   1080 ;s                         Allocated to registers r5 r6 r7 
                                   1081 ;__1966080010              Allocated to registers 
                                   1082 ;s                         Allocated to registers r5 r6 r7 
                                   1083 ;__3276800012              Allocated to registers 
                                   1084 ;s                         Allocated to registers r7 r6 r4 
                                   1085 ;__3276800014              Allocated to registers 
                                   1086 ;s                         Allocated to registers r7 r6 r4 
                                   1087 ;__3276800016              Allocated to registers 
                                   1088 ;s                         Allocated to registers r7 r6 r4 
                                   1089 ;__3276800018              Allocated to registers 
                                   1090 ;s                         Allocated to registers r7 r6 r4 
                                   1091 ;__3276800020              Allocated to registers 
                                   1092 ;s                         Allocated to registers r7 r6 r4 
                                   1093 ;__1310720022              Allocated to registers 
                                   1094 ;s                         Allocated to registers r5 r6 r7 
                                   1095 ;sloc0                     Allocated to stack - _bp +65
                                   1096 ;------------------------------------------------------------
                                   1097 ;	disp.c:225: void main(void) {
                                   1098 ;	-----------------------------------------
                                   1099 ;	 function main
                                   1100 ;	-----------------------------------------
      002322                       1101 _main:
      002322 C0 10            [24] 1102 	push	_bp
      002324 85 81 10         [24] 1103 	mov	_bp,sp
      002327 05 81            [12] 1104 	inc	sp
      002329 05 81            [12] 1105 	inc	sp
                                   1106 ;	disp.c:229: init_gpo();
      00232B 12 20 CF         [24] 1107 	lcall	_init_gpo
                                   1108 ;	disp.c:230: clear_gpo();
      00232E 12 20 ED         [24] 1109 	lcall	_clear_gpo
                                   1110 ;	disp.c:231: init_disp();
      002331 12 21 29         [24] 1111 	lcall	_init_disp
                                   1112 ;	disp.c:232: init_timer0();
      002334 12 21 11         [24] 1113 	lcall	_init_timer0
                                   1114 ;	disp.c:233: init_timer1();
      002337 12 21 1D         [24] 1115 	lcall	_init_timer1
                                   1116 ;	disp.c:234: init_intr();
      00233A 12 21 06         [24] 1117 	lcall	_init_intr
                                   1118 ;	disp.c:235: TR0 = 1;
                                   1119 ;	assignBit
      00233D D2 8C            [12] 1120 	setb	_TR0
                                   1121 ;	disp.c:237: reset:
      00233F                       1122 00101$:
                                   1123 ;	disp.c:238: init_disp();
      00233F 12 21 29         [24] 1124 	lcall	_init_disp
                                   1125 ;	disp.c:239: printstr("RESET\r\n");
      002342 7D B6            [12] 1126 	mov	r5,#___str_1
      002344 7E 26            [12] 1127 	mov	r6,#(___str_1 >> 8)
      002346 7F 80            [12] 1128 	mov	r7,#0x80
                                   1129 ;	disp.c:48: return;
      002348                       1130 00146$:
                                   1131 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002348 8D 82            [24] 1132 	mov	dpl,r5
      00234A 8E 83            [24] 1133 	mov	dph,r6
      00234C 8F F0            [24] 1134 	mov	b,r7
      00234E 12 26 73         [24] 1135 	lcall	__gptrget
      002351 FC               [12] 1136 	mov	r4,a
      002352 60 10            [24] 1137 	jz	00126$
      002354 7B 00            [12] 1138 	mov	r3,#0x00
      002356 8C 82            [24] 1139 	mov	dpl,r4
      002358 8B 83            [24] 1140 	mov	dph,r3
      00235A 12 20 AD         [24] 1141 	lcall	_putchar
      00235D 0D               [12] 1142 	inc	r5
                                   1143 ;	disp.c:239: printstr("RESET\r\n");
      00235E BD 00 E7         [24] 1144 	cjne	r5,#0x00,00146$
      002361 0E               [12] 1145 	inc	r6
      002362 80 E4            [24] 1146 	sjmp	00146$
      002364                       1147 00126$:
                                   1148 ;	disp.c:240: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      002364 E4               [12] 1149 	clr	a
      002365 C0 E0            [24] 1150 	push	acc
      002367 04               [12] 1151 	inc	a
      002368 C0 E0            [24] 1152 	push	acc
      00236A 90 89 01         [24] 1153 	mov	dptr,#_initial
      00236D E0               [24] 1154 	movx	a,@dptr
      00236E C0 E0            [24] 1155 	push	acc
      002370 A3               [24] 1156 	inc	dptr
      002371 E0               [24] 1157 	movx	a,@dptr
      002372 C0 E0            [24] 1158 	push	acc
      002374 A3               [24] 1159 	inc	dptr
      002375 E0               [24] 1160 	movx	a,@dptr
      002376 C0 E0            [24] 1161 	push	acc
      002378 90 80 00         [24] 1162 	mov	dptr,#_buf
      00237B 75 F0 00         [24] 1163 	mov	b,#0x00
      00237E 12 25 BC         [24] 1164 	lcall	_strncpy
      002381 E5 81            [12] 1165 	mov	a,sp
      002383 24 FB            [12] 1166 	add	a,#0xfb
      002385 F5 81            [12] 1167 	mov	sp,a
                                   1168 ;	disp.c:241: buf[sizeof (buf) - 1u] = 0u;
      002387 90 81 00         [24] 1169 	mov	dptr,#(_buf + 0x0100)
      00238A E4               [12] 1170 	clr	a
      00238B F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	disp.c:243: while (1) {
      00238C                       1173 00122$:
                                   1174 ;	disp.c:244: printstr("P SP L ENT S R T START MSG \"");
      00238C 7D BE            [12] 1175 	mov	r5,#___str_2
      00238E 7E 26            [12] 1176 	mov	r6,#(___str_2 >> 8)
      002390 7F 80            [12] 1177 	mov	r7,#0x80
                                   1178 ;	disp.c:48: return;
      002392                       1179 00149$:
                                   1180 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002392 8D 82            [24] 1181 	mov	dpl,r5
      002394 8E 83            [24] 1182 	mov	dph,r6
      002396 8F F0            [24] 1183 	mov	b,r7
      002398 12 26 73         [24] 1184 	lcall	__gptrget
      00239B FC               [12] 1185 	mov	r4,a
      00239C 60 10            [24] 1186 	jz	00128$
      00239E 7B 00            [12] 1187 	mov	r3,#0x00
      0023A0 8C 82            [24] 1188 	mov	dpl,r4
      0023A2 8B 83            [24] 1189 	mov	dph,r3
      0023A4 12 20 AD         [24] 1190 	lcall	_putchar
      0023A7 0D               [12] 1191 	inc	r5
                                   1192 ;	disp.c:244: printstr("P SP L ENT S R T START MSG \"");
      0023A8 BD 00 E7         [24] 1193 	cjne	r5,#0x00,00149$
      0023AB 0E               [12] 1194 	inc	r6
      0023AC 80 E4            [24] 1195 	sjmp	00149$
      0023AE                       1196 00128$:
                                   1197 ;	disp.c:245: printstr((char *)buf);
      0023AE 7D 00            [12] 1198 	mov	r5,#_buf
      0023B0 7E 80            [12] 1199 	mov	r6,#(_buf >> 8)
      0023B2 7F 00            [12] 1200 	mov	r7,#0x00
                                   1201 ;	disp.c:48: return;
      0023B4                       1202 00152$:
                                   1203 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023B4 8D 82            [24] 1204 	mov	dpl,r5
      0023B6 8E 83            [24] 1205 	mov	dph,r6
      0023B8 8F F0            [24] 1206 	mov	b,r7
      0023BA 12 26 73         [24] 1207 	lcall	__gptrget
      0023BD FC               [12] 1208 	mov	r4,a
      0023BE 60 10            [24] 1209 	jz	00130$
      0023C0 7B 00            [12] 1210 	mov	r3,#0x00
      0023C2 8C 82            [24] 1211 	mov	dpl,r4
      0023C4 8B 83            [24] 1212 	mov	dph,r3
      0023C6 12 20 AD         [24] 1213 	lcall	_putchar
      0023C9 0D               [12] 1214 	inc	r5
                                   1215 ;	disp.c:245: printstr((char *)buf);
      0023CA BD 00 E7         [24] 1216 	cjne	r5,#0x00,00152$
      0023CD 0E               [12] 1217 	inc	r6
      0023CE 80 E4            [24] 1218 	sjmp	00152$
      0023D0                       1219 00130$:
                                   1220 ;	disp.c:246: printstr("\"\r\n");
      0023D0 7D DB            [12] 1221 	mov	r5,#___str_3
      0023D2 7E 26            [12] 1222 	mov	r6,#(___str_3 >> 8)
      0023D4 7F 80            [12] 1223 	mov	r7,#0x80
                                   1224 ;	disp.c:48: return;
      0023D6                       1225 00155$:
                                   1226 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023D6 8D 82            [24] 1227 	mov	dpl,r5
      0023D8 8E 83            [24] 1228 	mov	dph,r6
      0023DA 8F F0            [24] 1229 	mov	b,r7
      0023DC 12 26 73         [24] 1230 	lcall	__gptrget
      0023DF FC               [12] 1231 	mov	r4,a
      0023E0 60 10            [24] 1232 	jz	00132$
      0023E2 7B 00            [12] 1233 	mov	r3,#0x00
      0023E4 8C 82            [24] 1234 	mov	dpl,r4
      0023E6 8B 83            [24] 1235 	mov	dph,r3
      0023E8 12 20 AD         [24] 1236 	lcall	_putchar
      0023EB 0D               [12] 1237 	inc	r5
                                   1238 ;	disp.c:246: printstr("\"\r\n");
      0023EC BD 00 E7         [24] 1239 	cjne	r5,#0x00,00155$
      0023EF 0E               [12] 1240 	inc	r6
      0023F0 80 E4            [24] 1241 	sjmp	00155$
      0023F2                       1242 00132$:
                                   1243 ;	disp.c:248: c = scroll(buf);
      0023F2 90 80 00         [24] 1244 	mov	dptr,#_buf
      0023F5 75 F0 00         [24] 1245 	mov	b,#0x00
      0023F8 12 21 96         [24] 1246 	lcall	_scroll
      0023FB AE 82            [24] 1247 	mov	r6,dpl
      0023FD AF 83            [24] 1248 	mov	r7,dph
                                   1249 ;	disp.c:250: while (1) {
      0023FF                       1250 00119$:
                                   1251 ;	disp.c:251: if (c == (int)'T') goto term;
      0023FF BE 54 06         [24] 1252 	cjne	r6,#0x54,00337$
      002402 BF 00 03         [24] 1253 	cjne	r7,#0x00,00337$
      002405 02 25 62         [24] 1254 	ljmp	00124$
      002408                       1255 00337$:
                                   1256 ;	disp.c:252: else if (c == (int)'R') goto reset;
      002408 BE 52 06         [24] 1257 	cjne	r6,#0x52,00338$
      00240B BF 00 03         [24] 1258 	cjne	r7,#0x00,00338$
      00240E 02 23 3F         [24] 1259 	ljmp	00101$
      002411                       1260 00338$:
                                   1261 ;	disp.c:253: else if (c == (int)'L') {
      002411 BE 4C 05         [24] 1262 	cjne	r6,#0x4c,00339$
      002414 BF 00 02         [24] 1263 	cjne	r7,#0x00,00339$
      002417 80 03            [24] 1264 	sjmp	00340$
      002419                       1265 00339$:
      002419 02 25 4C         [24] 1266 	ljmp	00110$
      00241C                       1267 00340$:
                                   1268 ;	disp.c:254: init_disp();
      00241C 12 21 29         [24] 1269 	lcall	_init_disp
                                   1270 ;	disp.c:255: printstr("LOAD ");
      00241F 7F DF            [12] 1271 	mov	r7,#___str_4
      002421 7E 26            [12] 1272 	mov	r6,#(___str_4 >> 8)
      002423 7C 80            [12] 1273 	mov	r4,#0x80
                                   1274 ;	disp.c:48: return;
      002425                       1275 00158$:
                                   1276 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002425 8F 82            [24] 1277 	mov	dpl,r7
      002427 8E 83            [24] 1278 	mov	dph,r6
      002429 8C F0            [24] 1279 	mov	b,r4
      00242B 12 26 73         [24] 1280 	lcall	__gptrget
      00242E FA               [12] 1281 	mov	r2,a
      00242F 60 10            [24] 1282 	jz	00134$
      002431 7D 00            [12] 1283 	mov	r5,#0x00
      002433 8A 82            [24] 1284 	mov	dpl,r2
      002435 8D 83            [24] 1285 	mov	dph,r5
      002437 12 20 AD         [24] 1286 	lcall	_putchar
      00243A 0F               [12] 1287 	inc	r7
                                   1288 ;	disp.c:255: printstr("LOAD ");
      00243B BF 00 E7         [24] 1289 	cjne	r7,#0x00,00158$
      00243E 0E               [12] 1290 	inc	r6
      00243F 80 E4            [24] 1291 	sjmp	00158$
      002441                       1292 00134$:
                                   1293 ;	disp.c:256: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002441 7C 00            [12] 1294 	mov	r4,#0x00
      002443 7D 00            [12] 1295 	mov	r5,#0x00
      002445 A8 10            [24] 1296 	mov	r0,_bp
      002447 08               [12] 1297 	inc	r0
      002448 E4               [12] 1298 	clr	a
      002449 F6               [12] 1299 	mov	@r0,a
      00244A 08               [12] 1300 	inc	r0
      00244B F6               [12] 1301 	mov	@r0,a
      00244C                       1302 00160$:
                                   1303 ;	disp.c:257: c = getchar();
      00244C C0 04            [24] 1304 	push	ar4
      00244E C0 05            [24] 1305 	push	ar5
      002450 12 20 B2         [24] 1306 	lcall	_getchar
      002453 AC 82            [24] 1307 	mov	r4,dpl
      002455 AD 83            [24] 1308 	mov	r5,dph
      002457 8C 07            [24] 1309 	mov	ar7,r4
      002459 8D 06            [24] 1310 	mov	ar6,r5
                                   1311 ;	disp.c:258: (void)putchar(c);
      00245B 8F 82            [24] 1312 	mov	dpl,r7
      00245D 8E 83            [24] 1313 	mov	dph,r6
      00245F 12 20 AD         [24] 1314 	lcall	_putchar
                                   1315 ;	disp.c:259: if ((c == (int)'\r') || (c == (int)'\n')) {
      002462 BF 0D 09         [24] 1316 	cjne	r7,#0x0d,00343$
      002465 BE 00 06         [24] 1317 	cjne	r6,#0x00,00343$
      002468 D0 05            [24] 1318 	pop	ar5
      00246A D0 04            [24] 1319 	pop	ar4
      00246C 80 0A            [24] 1320 	sjmp	00102$
      00246E                       1321 00343$:
      00246E D0 05            [24] 1322 	pop	ar5
      002470 D0 04            [24] 1323 	pop	ar4
      002472 BF 0A 11         [24] 1324 	cjne	r7,#0x0a,00103$
      002475 BE 00 0E         [24] 1325 	cjne	r6,#0x00,00103$
      002478                       1326 00102$:
                                   1327 ;	disp.c:260: buf[j] = 0u;
      002478 EC               [12] 1328 	mov	a,r4
      002479 24 00            [12] 1329 	add	a,#_buf
      00247B F5 82            [12] 1330 	mov	dpl,a
      00247D ED               [12] 1331 	mov	a,r5
      00247E 34 80            [12] 1332 	addc	a,#(_buf >> 8)
      002480 F5 83            [12] 1333 	mov	dph,a
      002482 E4               [12] 1334 	clr	a
      002483 F0               [24] 1335 	movx	@dptr,a
                                   1336 ;	disp.c:261: break;
      002484 80 32            [24] 1337 	sjmp	00106$
      002486                       1338 00103$:
                                   1339 ;	disp.c:262: } else buf[j] = c & 0xffu;
      002486 A8 10            [24] 1340 	mov	r0,_bp
      002488 08               [12] 1341 	inc	r0
      002489 E6               [12] 1342 	mov	a,@r0
      00248A 24 00            [12] 1343 	add	a,#_buf
      00248C FD               [12] 1344 	mov	r5,a
      00248D 08               [12] 1345 	inc	r0
      00248E E6               [12] 1346 	mov	a,@r0
      00248F 34 80            [12] 1347 	addc	a,#(_buf >> 8)
      002491 FC               [12] 1348 	mov	r4,a
      002492 8F 03            [24] 1349 	mov	ar3,r7
      002494 8D 82            [24] 1350 	mov	dpl,r5
      002496 8C 83            [24] 1351 	mov	dph,r4
      002498 EB               [12] 1352 	mov	a,r3
      002499 F0               [24] 1353 	movx	@dptr,a
                                   1354 ;	disp.c:256: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00249A A8 10            [24] 1355 	mov	r0,_bp
      00249C 08               [12] 1356 	inc	r0
      00249D 06               [12] 1357 	inc	@r0
      00249E B6 00 02         [24] 1358 	cjne	@r0,#0x00,00346$
      0024A1 08               [12] 1359 	inc	r0
      0024A2 06               [12] 1360 	inc	@r0
      0024A3                       1361 00346$:
      0024A3 A8 10            [24] 1362 	mov	r0,_bp
      0024A5 08               [12] 1363 	inc	r0
      0024A6 86 04            [24] 1364 	mov	ar4,@r0
      0024A8 08               [12] 1365 	inc	r0
      0024A9 86 05            [24] 1366 	mov	ar5,@r0
      0024AB A8 10            [24] 1367 	mov	r0,_bp
      0024AD 08               [12] 1368 	inc	r0
      0024AE 86 02            [24] 1369 	mov	ar2,@r0
      0024B0 08               [12] 1370 	inc	r0
      0024B1 86 03            [24] 1371 	mov	ar3,@r0
      0024B3 74 FF            [12] 1372 	mov	a,#0x100 - 0x01
      0024B5 2B               [12] 1373 	add	a,r3
      0024B6 50 94            [24] 1374 	jnc	00160$
      0024B8                       1375 00106$:
                                   1376 ;	disp.c:264: buf[j] = 0u;
      0024B8 EC               [12] 1377 	mov	a,r4
      0024B9 24 00            [12] 1378 	add	a,#_buf
      0024BB F5 82            [12] 1379 	mov	dpl,a
      0024BD ED               [12] 1380 	mov	a,r5
      0024BE 34 80            [12] 1381 	addc	a,#(_buf >> 8)
      0024C0 F5 83            [12] 1382 	mov	dph,a
      0024C2 E4               [12] 1383 	clr	a
      0024C3 F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	disp.c:265: printstr("\r\n");
      0024C4 7F E5            [12] 1386 	mov	r7,#___str_5
      0024C6 7E 26            [12] 1387 	mov	r6,#(___str_5 >> 8)
      0024C8 7C 80            [12] 1388 	mov	r4,#0x80
                                   1389 ;	disp.c:48: return;
      0024CA                       1390 00163$:
                                   1391 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024CA 8F 82            [24] 1392 	mov	dpl,r7
      0024CC 8E 83            [24] 1393 	mov	dph,r6
      0024CE 8C F0            [24] 1394 	mov	b,r4
      0024D0 12 26 73         [24] 1395 	lcall	__gptrget
      0024D3 FA               [12] 1396 	mov	r2,a
      0024D4 60 10            [24] 1397 	jz	00136$
      0024D6 7D 00            [12] 1398 	mov	r5,#0x00
      0024D8 8A 82            [24] 1399 	mov	dpl,r2
      0024DA 8D 83            [24] 1400 	mov	dph,r5
      0024DC 12 20 AD         [24] 1401 	lcall	_putchar
      0024DF 0F               [12] 1402 	inc	r7
                                   1403 ;	disp.c:265: printstr("\r\n");
      0024E0 BF 00 E7         [24] 1404 	cjne	r7,#0x00,00163$
      0024E3 0E               [12] 1405 	inc	r6
      0024E4 80 E4            [24] 1406 	sjmp	00163$
      0024E6                       1407 00136$:
                                   1408 ;	disp.c:266: printstr("MSG \"");
      0024E6 7F E8            [12] 1409 	mov	r7,#___str_6
      0024E8 7E 26            [12] 1410 	mov	r6,#(___str_6 >> 8)
      0024EA 7C 80            [12] 1411 	mov	r4,#0x80
                                   1412 ;	disp.c:48: return;
      0024EC                       1413 00166$:
                                   1414 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024EC 8F 82            [24] 1415 	mov	dpl,r7
      0024EE 8E 83            [24] 1416 	mov	dph,r6
      0024F0 8C F0            [24] 1417 	mov	b,r4
      0024F2 12 26 73         [24] 1418 	lcall	__gptrget
      0024F5 FA               [12] 1419 	mov	r2,a
      0024F6 60 10            [24] 1420 	jz	00138$
      0024F8 7D 00            [12] 1421 	mov	r5,#0x00
      0024FA 8A 82            [24] 1422 	mov	dpl,r2
      0024FC 8D 83            [24] 1423 	mov	dph,r5
      0024FE 12 20 AD         [24] 1424 	lcall	_putchar
      002501 0F               [12] 1425 	inc	r7
                                   1426 ;	disp.c:266: printstr("MSG \"");
      002502 BF 00 E7         [24] 1427 	cjne	r7,#0x00,00166$
      002505 0E               [12] 1428 	inc	r6
      002506 80 E4            [24] 1429 	sjmp	00166$
      002508                       1430 00138$:
                                   1431 ;	disp.c:267: printstr((char *)buf);
      002508 7F 00            [12] 1432 	mov	r7,#_buf
      00250A 7E 80            [12] 1433 	mov	r6,#(_buf >> 8)
      00250C 7C 00            [12] 1434 	mov	r4,#0x00
                                   1435 ;	disp.c:48: return;
      00250E                       1436 00169$:
                                   1437 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00250E 8F 82            [24] 1438 	mov	dpl,r7
      002510 8E 83            [24] 1439 	mov	dph,r6
      002512 8C F0            [24] 1440 	mov	b,r4
      002514 12 26 73         [24] 1441 	lcall	__gptrget
      002517 FA               [12] 1442 	mov	r2,a
      002518 60 10            [24] 1443 	jz	00140$
      00251A 7D 00            [12] 1444 	mov	r5,#0x00
      00251C 8A 82            [24] 1445 	mov	dpl,r2
      00251E 8D 83            [24] 1446 	mov	dph,r5
      002520 12 20 AD         [24] 1447 	lcall	_putchar
      002523 0F               [12] 1448 	inc	r7
                                   1449 ;	disp.c:267: printstr((char *)buf);
      002524 BF 00 E7         [24] 1450 	cjne	r7,#0x00,00169$
      002527 0E               [12] 1451 	inc	r6
      002528 80 E4            [24] 1452 	sjmp	00169$
      00252A                       1453 00140$:
                                   1454 ;	disp.c:268: printstr("\"\r\n");
      00252A 7F DB            [12] 1455 	mov	r7,#___str_3
      00252C 7E 26            [12] 1456 	mov	r6,#(___str_3 >> 8)
      00252E 7C 80            [12] 1457 	mov	r4,#0x80
                                   1458 ;	disp.c:48: return;
      002530                       1459 00172$:
                                   1460 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002530 8F 82            [24] 1461 	mov	dpl,r7
      002532 8E 83            [24] 1462 	mov	dph,r6
      002534 8C F0            [24] 1463 	mov	b,r4
      002536 12 26 73         [24] 1464 	lcall	__gptrget
      002539 FA               [12] 1465 	mov	r2,a
      00253A 60 19            [24] 1466 	jz	00117$
      00253C 7D 00            [12] 1467 	mov	r5,#0x00
      00253E 8A 82            [24] 1468 	mov	dpl,r2
      002540 8D 83            [24] 1469 	mov	dph,r5
      002542 12 20 AD         [24] 1470 	lcall	_putchar
      002545 0F               [12] 1471 	inc	r7
                                   1472 ;	disp.c:268: printstr("\"\r\n");
      002546 BF 00 E7         [24] 1473 	cjne	r7,#0x00,00172$
      002549 0E               [12] 1474 	inc	r6
      00254A 80 E4            [24] 1475 	sjmp	00172$
      00254C                       1476 00110$:
                                   1477 ;	disp.c:269: } else if (c == (int)'S') break;
      00254C BE 53 06         [24] 1478 	cjne	r6,#0x53,00356$
      00254F BF 00 03         [24] 1479 	cjne	r7,#0x00,00356$
      002552 02 23 8C         [24] 1480 	ljmp	00122$
      002555                       1481 00356$:
      002555                       1482 00117$:
                                   1483 ;	disp.c:271: c = toupper(getchar());
      002555 12 20 B2         [24] 1484 	lcall	_getchar
      002558 12 25 95         [24] 1485 	lcall	_toupper
      00255B AE 82            [24] 1486 	mov	r6,dpl
      00255D AF 83            [24] 1487 	mov	r7,dph
      00255F 02 23 FF         [24] 1488 	ljmp	00119$
                                   1489 ;	disp.c:275: term:	
      002562                       1490 00124$:
                                   1491 ;	disp.c:276: EA = 0;
                                   1492 ;	assignBit
      002562 C2 AF            [12] 1493 	clr	_EA
                                   1494 ;	disp.c:277: init_disp();
      002564 12 21 29         [24] 1495 	lcall	_init_disp
                                   1496 ;	disp.c:278: printstr("TERM\r\n");
      002567 7D EE            [12] 1497 	mov	r5,#___str_7
      002569 7E 26            [12] 1498 	mov	r6,#(___str_7 >> 8)
      00256B 7F 80            [12] 1499 	mov	r7,#0x80
                                   1500 ;	disp.c:48: return;
      00256D                       1501 00175$:
                                   1502 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00256D 8D 82            [24] 1503 	mov	dpl,r5
      00256F 8E 83            [24] 1504 	mov	dph,r6
      002571 8F F0            [24] 1505 	mov	b,r7
      002573 12 26 73         [24] 1506 	lcall	__gptrget
      002576 FC               [12] 1507 	mov	r4,a
      002577 60 10            [24] 1508 	jz	00144$
      002579 7B 00            [12] 1509 	mov	r3,#0x00
      00257B 8C 82            [24] 1510 	mov	dpl,r4
      00257D 8B 83            [24] 1511 	mov	dph,r3
      00257F 12 20 AD         [24] 1512 	lcall	_putchar
      002582 0D               [12] 1513 	inc	r5
                                   1514 ;	disp.c:278: printstr("TERM\r\n");
      002583 BD 00 E7         [24] 1515 	cjne	r5,#0x00,00175$
      002586 0E               [12] 1516 	inc	r6
      002587 80 E4            [24] 1517 	sjmp	00175$
      002589                       1518 00144$:
                                   1519 ;	disp.c:279: (void)getchar();
      002589 12 20 B2         [24] 1520 	lcall	_getchar
                                   1521 ;	disp.c:281: PCON |= 2;
      00258C 43 87 02         [24] 1522 	orl	_PCON,#0x02
                                   1523 ;	disp.c:283: return;
                                   1524 ;	disp.c:284: }
      00258F 85 10 81         [24] 1525 	mov	sp,_bp
      002592 D0 10            [24] 1526 	pop	_bp
      002594 22               [24] 1527 	ret
                                   1528 	.area CSEG    (CODE)
                                   1529 	.area CONST   (CODE)
                                   1530 	.area CONST   (CODE)
      0026AE                       1531 ___str_0:
      0026AE 50 41 55 53 45        1532 	.ascii "PAUSE"
      0026B3 0D                    1533 	.db 0x0d
      0026B4 0A                    1534 	.db 0x0a
      0026B5 00                    1535 	.db 0x00
                                   1536 	.area CSEG    (CODE)
                                   1537 	.area CONST   (CODE)
      0026B6                       1538 ___str_1:
      0026B6 52 45 53 45 54        1539 	.ascii "RESET"
      0026BB 0D                    1540 	.db 0x0d
      0026BC 0A                    1541 	.db 0x0a
      0026BD 00                    1542 	.db 0x00
                                   1543 	.area CSEG    (CODE)
                                   1544 	.area CONST   (CODE)
      0026BE                       1545 ___str_2:
      0026BE 50 20 53 50 20 4C 20  1546 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      0026D9 22                    1547 	.db 0x22
      0026DA 00                    1548 	.db 0x00
                                   1549 	.area CSEG    (CODE)
                                   1550 	.area CONST   (CODE)
      0026DB                       1551 ___str_3:
      0026DB 22                    1552 	.db 0x22
      0026DC 0D                    1553 	.db 0x0d
      0026DD 0A                    1554 	.db 0x0a
      0026DE 00                    1555 	.db 0x00
                                   1556 	.area CSEG    (CODE)
                                   1557 	.area CONST   (CODE)
      0026DF                       1558 ___str_4:
      0026DF 4C 4F 41 44 20        1559 	.ascii "LOAD "
      0026E4 00                    1560 	.db 0x00
                                   1561 	.area CSEG    (CODE)
                                   1562 	.area CONST   (CODE)
      0026E5                       1563 ___str_5:
      0026E5 0D                    1564 	.db 0x0d
      0026E6 0A                    1565 	.db 0x0a
      0026E7 00                    1566 	.db 0x00
                                   1567 	.area CSEG    (CODE)
                                   1568 	.area CONST   (CODE)
      0026E8                       1569 ___str_6:
      0026E8 4D 53 47 20           1570 	.ascii "MSG "
      0026EC 22                    1571 	.db 0x22
      0026ED 00                    1572 	.db 0x00
                                   1573 	.area CSEG    (CODE)
                                   1574 	.area CONST   (CODE)
      0026EE                       1575 ___str_7:
      0026EE 54 45 52 4D           1576 	.ascii "TERM"
      0026F2 0D                    1577 	.db 0x0d
      0026F3 0A                    1578 	.db 0x0a
      0026F4 00                    1579 	.db 0x00
                                   1580 	.area CSEG    (CODE)
                                   1581 	.area CONST   (CODE)
      0026F5                       1582 ___str_8:
      0026F5 4A 65 64 65 6D 20 64  1583 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      002726 00                    1584 	.db 0x00
                                   1585 	.area CSEG    (CODE)
                                   1586 	.area XINIT   (CODE)
      002727                       1587 __xinit___ft_font6x8:
      002727 00                    1588 	.db #0x00	; 0
      002728 00                    1589 	.db #0x00	; 0
      002729 00                    1590 	.db #0x00	; 0
      00272A 00                    1591 	.db #0x00	; 0
      00272B 00                    1592 	.db #0x00	; 0
      00272C 00                    1593 	.db #0x00	; 0
      00272D 00                    1594 	.db #0x00	; 0
      00272E 00                    1595 	.db #0x00	; 0
      00272F 1C                    1596 	.db #0x1c	; 28
      002730 22                    1597 	.db #0x22	; 34
      002731 36                    1598 	.db #0x36	; 54	'6'
      002732 22                    1599 	.db #0x22	; 34
      002733 2A                    1600 	.db #0x2a	; 42
      002734 22                    1601 	.db #0x22	; 34
      002735 1C                    1602 	.db #0x1c	; 28
      002736 00                    1603 	.db #0x00	; 0
      002737 1C                    1604 	.db #0x1c	; 28
      002738 3E                    1605 	.db #0x3e	; 62
      002739 2A                    1606 	.db #0x2a	; 42
      00273A 3E                    1607 	.db #0x3e	; 62
      00273B 22                    1608 	.db #0x22	; 34
      00273C 3E                    1609 	.db #0x3e	; 62
      00273D 1C                    1610 	.db #0x1c	; 28
      00273E 00                    1611 	.db #0x00	; 0
      00273F 00                    1612 	.db #0x00	; 0
      002740 14                    1613 	.db #0x14	; 20
      002741 3E                    1614 	.db #0x3e	; 62
      002742 3E                    1615 	.db #0x3e	; 62
      002743 3E                    1616 	.db #0x3e	; 62
      002744 1C                    1617 	.db #0x1c	; 28
      002745 08                    1618 	.db #0x08	; 8
      002746 00                    1619 	.db #0x00	; 0
      002747 00                    1620 	.db #0x00	; 0
      002748 08                    1621 	.db #0x08	; 8
      002749 1C                    1622 	.db #0x1c	; 28
      00274A 3E                    1623 	.db #0x3e	; 62
      00274B 3E                    1624 	.db #0x3e	; 62
      00274C 1C                    1625 	.db #0x1c	; 28
      00274D 08                    1626 	.db #0x08	; 8
      00274E 00                    1627 	.db #0x00	; 0
      00274F 08                    1628 	.db #0x08	; 8
      002750 1C                    1629 	.db #0x1c	; 28
      002751 1C                    1630 	.db #0x1c	; 28
      002752 08                    1631 	.db #0x08	; 8
      002753 3E                    1632 	.db #0x3e	; 62
      002754 3E                    1633 	.db #0x3e	; 62
      002755 08                    1634 	.db #0x08	; 8
      002756 00                    1635 	.db #0x00	; 0
      002757 00                    1636 	.db #0x00	; 0
      002758 08                    1637 	.db #0x08	; 8
      002759 1C                    1638 	.db #0x1c	; 28
      00275A 3E                    1639 	.db #0x3e	; 62
      00275B 3E                    1640 	.db #0x3e	; 62
      00275C 08                    1641 	.db #0x08	; 8
      00275D 1C                    1642 	.db #0x1c	; 28
      00275E 00                    1643 	.db #0x00	; 0
      00275F 00                    1644 	.db #0x00	; 0
      002760 00                    1645 	.db #0x00	; 0
      002761 00                    1646 	.db #0x00	; 0
      002762 0C                    1647 	.db #0x0c	; 12
      002763 0C                    1648 	.db #0x0c	; 12
      002764 00                    1649 	.db #0x00	; 0
      002765 00                    1650 	.db #0x00	; 0
      002766 00                    1651 	.db #0x00	; 0
      002767 3F                    1652 	.db #0x3f	; 63
      002768 3F                    1653 	.db #0x3f	; 63
      002769 3F                    1654 	.db #0x3f	; 63
      00276A 33                    1655 	.db #0x33	; 51	'3'
      00276B 33                    1656 	.db #0x33	; 51	'3'
      00276C 3F                    1657 	.db #0x3f	; 63
      00276D 3F                    1658 	.db #0x3f	; 63
      00276E 3F                    1659 	.db #0x3f	; 63
      00276F 00                    1660 	.db #0x00	; 0
      002770 00                    1661 	.db #0x00	; 0
      002771 1E                    1662 	.db #0x1e	; 30
      002772 12                    1663 	.db #0x12	; 18
      002773 12                    1664 	.db #0x12	; 18
      002774 1E                    1665 	.db #0x1e	; 30
      002775 00                    1666 	.db #0x00	; 0
      002776 00                    1667 	.db #0x00	; 0
      002777 3F                    1668 	.db #0x3f	; 63
      002778 3F                    1669 	.db #0x3f	; 63
      002779 21                    1670 	.db #0x21	; 33
      00277A 2D                    1671 	.db #0x2d	; 45
      00277B 2D                    1672 	.db #0x2d	; 45
      00277C 21                    1673 	.db #0x21	; 33
      00277D 3F                    1674 	.db #0x3f	; 63
      00277E 3F                    1675 	.db #0x3f	; 63
      00277F 00                    1676 	.db #0x00	; 0
      002780 38                    1677 	.db #0x38	; 56	'8'
      002781 30                    1678 	.db #0x30	; 48	'0'
      002782 2C                    1679 	.db #0x2c	; 44
      002783 12                    1680 	.db #0x12	; 18
      002784 12                    1681 	.db #0x12	; 18
      002785 0C                    1682 	.db #0x0c	; 12
      002786 00                    1683 	.db #0x00	; 0
      002787 1C                    1684 	.db #0x1c	; 28
      002788 22                    1685 	.db #0x22	; 34
      002789 22                    1686 	.db #0x22	; 34
      00278A 1C                    1687 	.db #0x1c	; 28
      00278B 08                    1688 	.db #0x08	; 8
      00278C 1C                    1689 	.db #0x1c	; 28
      00278D 08                    1690 	.db #0x08	; 8
      00278E 00                    1691 	.db #0x00	; 0
      00278F 08                    1692 	.db #0x08	; 8
      002790 18                    1693 	.db #0x18	; 24
      002791 28                    1694 	.db #0x28	; 40
      002792 08                    1695 	.db #0x08	; 8
      002793 0C                    1696 	.db #0x0c	; 12
      002794 0E                    1697 	.db #0x0e	; 14
      002795 06                    1698 	.db #0x06	; 6
      002796 00                    1699 	.db #0x00	; 0
      002797 30                    1700 	.db #0x30	; 48	'0'
      002798 2C                    1701 	.db #0x2c	; 44
      002799 34                    1702 	.db #0x34	; 52	'4'
      00279A 2C                    1703 	.db #0x2c	; 44
      00279B 34                    1704 	.db #0x34	; 52	'4'
      00279C 36                    1705 	.db #0x36	; 54	'6'
      00279D 06                    1706 	.db #0x06	; 6
      00279E 00                    1707 	.db #0x00	; 0
      00279F 00                    1708 	.db #0x00	; 0
      0027A0 2A                    1709 	.db #0x2a	; 42
      0027A1 1C                    1710 	.db #0x1c	; 28
      0027A2 36                    1711 	.db #0x36	; 54	'6'
      0027A3 1C                    1712 	.db #0x1c	; 28
      0027A4 2A                    1713 	.db #0x2a	; 42
      0027A5 00                    1714 	.db #0x00	; 0
      0027A6 00                    1715 	.db #0x00	; 0
      0027A7 04                    1716 	.db #0x04	; 4
      0027A8 0C                    1717 	.db #0x0c	; 12
      0027A9 1C                    1718 	.db #0x1c	; 28
      0027AA 3C                    1719 	.db #0x3c	; 60
      0027AB 1C                    1720 	.db #0x1c	; 28
      0027AC 0C                    1721 	.db #0x0c	; 12
      0027AD 04                    1722 	.db #0x04	; 4
      0027AE 00                    1723 	.db #0x00	; 0
      0027AF 10                    1724 	.db #0x10	; 16
      0027B0 18                    1725 	.db #0x18	; 24
      0027B1 1C                    1726 	.db #0x1c	; 28
      0027B2 1E                    1727 	.db #0x1e	; 30
      0027B3 1C                    1728 	.db #0x1c	; 28
      0027B4 18                    1729 	.db #0x18	; 24
      0027B5 10                    1730 	.db #0x10	; 16
      0027B6 00                    1731 	.db #0x00	; 0
      0027B7 08                    1732 	.db #0x08	; 8
      0027B8 1C                    1733 	.db #0x1c	; 28
      0027B9 3E                    1734 	.db #0x3e	; 62
      0027BA 08                    1735 	.db #0x08	; 8
      0027BB 3E                    1736 	.db #0x3e	; 62
      0027BC 1C                    1737 	.db #0x1c	; 28
      0027BD 08                    1738 	.db #0x08	; 8
      0027BE 00                    1739 	.db #0x00	; 0
      0027BF 14                    1740 	.db #0x14	; 20
      0027C0 14                    1741 	.db #0x14	; 20
      0027C1 14                    1742 	.db #0x14	; 20
      0027C2 14                    1743 	.db #0x14	; 20
      0027C3 14                    1744 	.db #0x14	; 20
      0027C4 00                    1745 	.db #0x00	; 0
      0027C5 14                    1746 	.db #0x14	; 20
      0027C6 00                    1747 	.db #0x00	; 0
      0027C7 3C                    1748 	.db #0x3c	; 60
      0027C8 2A                    1749 	.db #0x2a	; 42
      0027C9 2A                    1750 	.db #0x2a	; 42
      0027CA 2C                    1751 	.db #0x2c	; 44
      0027CB 28                    1752 	.db #0x28	; 40
      0027CC 28                    1753 	.db #0x28	; 40
      0027CD 28                    1754 	.db #0x28	; 40
      0027CE 00                    1755 	.db #0x00	; 0
      0027CF 1C                    1756 	.db #0x1c	; 28
      0027D0 22                    1757 	.db #0x22	; 34
      0027D1 0C                    1758 	.db #0x0c	; 12
      0027D2 14                    1759 	.db #0x14	; 20
      0027D3 18                    1760 	.db #0x18	; 24
      0027D4 22                    1761 	.db #0x22	; 34
      0027D5 1C                    1762 	.db #0x1c	; 28
      0027D6 00                    1763 	.db #0x00	; 0
      0027D7 00                    1764 	.db #0x00	; 0
      0027D8 00                    1765 	.db #0x00	; 0
      0027D9 00                    1766 	.db #0x00	; 0
      0027DA 00                    1767 	.db #0x00	; 0
      0027DB 00                    1768 	.db #0x00	; 0
      0027DC 1E                    1769 	.db #0x1e	; 30
      0027DD 1E                    1770 	.db #0x1e	; 30
      0027DE 00                    1771 	.db #0x00	; 0
      0027DF 08                    1772 	.db #0x08	; 8
      0027E0 1C                    1773 	.db #0x1c	; 28
      0027E1 3E                    1774 	.db #0x3e	; 62
      0027E2 08                    1775 	.db #0x08	; 8
      0027E3 3E                    1776 	.db #0x3e	; 62
      0027E4 1C                    1777 	.db #0x1c	; 28
      0027E5 08                    1778 	.db #0x08	; 8
      0027E6 1C                    1779 	.db #0x1c	; 28
      0027E7 08                    1780 	.db #0x08	; 8
      0027E8 1C                    1781 	.db #0x1c	; 28
      0027E9 3E                    1782 	.db #0x3e	; 62
      0027EA 08                    1783 	.db #0x08	; 8
      0027EB 08                    1784 	.db #0x08	; 8
      0027EC 08                    1785 	.db #0x08	; 8
      0027ED 08                    1786 	.db #0x08	; 8
      0027EE 00                    1787 	.db #0x00	; 0
      0027EF 08                    1788 	.db #0x08	; 8
      0027F0 08                    1789 	.db #0x08	; 8
      0027F1 08                    1790 	.db #0x08	; 8
      0027F2 08                    1791 	.db #0x08	; 8
      0027F3 3E                    1792 	.db #0x3e	; 62
      0027F4 1C                    1793 	.db #0x1c	; 28
      0027F5 08                    1794 	.db #0x08	; 8
      0027F6 00                    1795 	.db #0x00	; 0
      0027F7 00                    1796 	.db #0x00	; 0
      0027F8 08                    1797 	.db #0x08	; 8
      0027F9 18                    1798 	.db #0x18	; 24
      0027FA 3E                    1799 	.db #0x3e	; 62
      0027FB 18                    1800 	.db #0x18	; 24
      0027FC 08                    1801 	.db #0x08	; 8
      0027FD 00                    1802 	.db #0x00	; 0
      0027FE 00                    1803 	.db #0x00	; 0
      0027FF 00                    1804 	.db #0x00	; 0
      002800 08                    1805 	.db #0x08	; 8
      002801 0C                    1806 	.db #0x0c	; 12
      002802 3E                    1807 	.db #0x3e	; 62
      002803 0C                    1808 	.db #0x0c	; 12
      002804 08                    1809 	.db #0x08	; 8
      002805 00                    1810 	.db #0x00	; 0
      002806 00                    1811 	.db #0x00	; 0
      002807 00                    1812 	.db #0x00	; 0
      002808 00                    1813 	.db #0x00	; 0
      002809 00                    1814 	.db #0x00	; 0
      00280A 02                    1815 	.db #0x02	; 2
      00280B 02                    1816 	.db #0x02	; 2
      00280C 02                    1817 	.db #0x02	; 2
      00280D 3E                    1818 	.db #0x3e	; 62
      00280E 00                    1819 	.db #0x00	; 0
      00280F 00                    1820 	.db #0x00	; 0
      002810 14                    1821 	.db #0x14	; 20
      002811 14                    1822 	.db #0x14	; 20
      002812 3E                    1823 	.db #0x3e	; 62
      002813 14                    1824 	.db #0x14	; 20
      002814 14                    1825 	.db #0x14	; 20
      002815 00                    1826 	.db #0x00	; 0
      002816 00                    1827 	.db #0x00	; 0
      002817 08                    1828 	.db #0x08	; 8
      002818 08                    1829 	.db #0x08	; 8
      002819 1C                    1830 	.db #0x1c	; 28
      00281A 1C                    1831 	.db #0x1c	; 28
      00281B 3E                    1832 	.db #0x3e	; 62
      00281C 3E                    1833 	.db #0x3e	; 62
      00281D 00                    1834 	.db #0x00	; 0
      00281E 00                    1835 	.db #0x00	; 0
      00281F 3E                    1836 	.db #0x3e	; 62
      002820 3E                    1837 	.db #0x3e	; 62
      002821 1C                    1838 	.db #0x1c	; 28
      002822 1C                    1839 	.db #0x1c	; 28
      002823 08                    1840 	.db #0x08	; 8
      002824 08                    1841 	.db #0x08	; 8
      002825 00                    1842 	.db #0x00	; 0
      002826 00                    1843 	.db #0x00	; 0
      002827 00                    1844 	.db #0x00	; 0
      002828 00                    1845 	.db #0x00	; 0
      002829 00                    1846 	.db #0x00	; 0
      00282A 00                    1847 	.db #0x00	; 0
      00282B 00                    1848 	.db #0x00	; 0
      00282C 00                    1849 	.db #0x00	; 0
      00282D 00                    1850 	.db #0x00	; 0
      00282E 00                    1851 	.db #0x00	; 0
      00282F 08                    1852 	.db #0x08	; 8
      002830 1C                    1853 	.db #0x1c	; 28
      002831 1C                    1854 	.db #0x1c	; 28
      002832 08                    1855 	.db #0x08	; 8
      002833 08                    1856 	.db #0x08	; 8
      002834 00                    1857 	.db #0x00	; 0
      002835 08                    1858 	.db #0x08	; 8
      002836 00                    1859 	.db #0x00	; 0
      002837 36                    1860 	.db #0x36	; 54	'6'
      002838 36                    1861 	.db #0x36	; 54	'6'
      002839 12                    1862 	.db #0x12	; 18
      00283A 00                    1863 	.db #0x00	; 0
      00283B 00                    1864 	.db #0x00	; 0
      00283C 00                    1865 	.db #0x00	; 0
      00283D 00                    1866 	.db #0x00	; 0
      00283E 00                    1867 	.db #0x00	; 0
      00283F 00                    1868 	.db #0x00	; 0
      002840 14                    1869 	.db #0x14	; 20
      002841 3E                    1870 	.db #0x3e	; 62
      002842 14                    1871 	.db #0x14	; 20
      002843 14                    1872 	.db #0x14	; 20
      002844 3E                    1873 	.db #0x3e	; 62
      002845 14                    1874 	.db #0x14	; 20
      002846 00                    1875 	.db #0x00	; 0
      002847 04                    1876 	.db #0x04	; 4
      002848 1C                    1877 	.db #0x1c	; 28
      002849 02                    1878 	.db #0x02	; 2
      00284A 0C                    1879 	.db #0x0c	; 12
      00284B 10                    1880 	.db #0x10	; 16
      00284C 0E                    1881 	.db #0x0e	; 14
      00284D 08                    1882 	.db #0x08	; 8
      00284E 00                    1883 	.db #0x00	; 0
      00284F 26                    1884 	.db #0x26	; 38
      002850 26                    1885 	.db #0x26	; 38
      002851 10                    1886 	.db #0x10	; 16
      002852 08                    1887 	.db #0x08	; 8
      002853 04                    1888 	.db #0x04	; 4
      002854 32                    1889 	.db #0x32	; 50	'2'
      002855 32                    1890 	.db #0x32	; 50	'2'
      002856 00                    1891 	.db #0x00	; 0
      002857 04                    1892 	.db #0x04	; 4
      002858 0A                    1893 	.db #0x0a	; 10
      002859 0A                    1894 	.db #0x0a	; 10
      00285A 04                    1895 	.db #0x04	; 4
      00285B 2A                    1896 	.db #0x2a	; 42
      00285C 12                    1897 	.db #0x12	; 18
      00285D 2C                    1898 	.db #0x2c	; 44
      00285E 00                    1899 	.db #0x00	; 0
      00285F 0C                    1900 	.db #0x0c	; 12
      002860 0C                    1901 	.db #0x0c	; 12
      002861 04                    1902 	.db #0x04	; 4
      002862 00                    1903 	.db #0x00	; 0
      002863 00                    1904 	.db #0x00	; 0
      002864 00                    1905 	.db #0x00	; 0
      002865 00                    1906 	.db #0x00	; 0
      002866 00                    1907 	.db #0x00	; 0
      002867 08                    1908 	.db #0x08	; 8
      002868 04                    1909 	.db #0x04	; 4
      002869 04                    1910 	.db #0x04	; 4
      00286A 04                    1911 	.db #0x04	; 4
      00286B 04                    1912 	.db #0x04	; 4
      00286C 04                    1913 	.db #0x04	; 4
      00286D 08                    1914 	.db #0x08	; 8
      00286E 00                    1915 	.db #0x00	; 0
      00286F 04                    1916 	.db #0x04	; 4
      002870 08                    1917 	.db #0x08	; 8
      002871 08                    1918 	.db #0x08	; 8
      002872 08                    1919 	.db #0x08	; 8
      002873 08                    1920 	.db #0x08	; 8
      002874 08                    1921 	.db #0x08	; 8
      002875 04                    1922 	.db #0x04	; 4
      002876 00                    1923 	.db #0x00	; 0
      002877 00                    1924 	.db #0x00	; 0
      002878 14                    1925 	.db #0x14	; 20
      002879 1C                    1926 	.db #0x1c	; 28
      00287A 3E                    1927 	.db #0x3e	; 62
      00287B 1C                    1928 	.db #0x1c	; 28
      00287C 14                    1929 	.db #0x14	; 20
      00287D 00                    1930 	.db #0x00	; 0
      00287E 00                    1931 	.db #0x00	; 0
      00287F 00                    1932 	.db #0x00	; 0
      002880 08                    1933 	.db #0x08	; 8
      002881 08                    1934 	.db #0x08	; 8
      002882 3E                    1935 	.db #0x3e	; 62
      002883 08                    1936 	.db #0x08	; 8
      002884 08                    1937 	.db #0x08	; 8
      002885 00                    1938 	.db #0x00	; 0
      002886 00                    1939 	.db #0x00	; 0
      002887 00                    1940 	.db #0x00	; 0
      002888 00                    1941 	.db #0x00	; 0
      002889 00                    1942 	.db #0x00	; 0
      00288A 00                    1943 	.db #0x00	; 0
      00288B 00                    1944 	.db #0x00	; 0
      00288C 0C                    1945 	.db #0x0c	; 12
      00288D 0C                    1946 	.db #0x0c	; 12
      00288E 04                    1947 	.db #0x04	; 4
      00288F 00                    1948 	.db #0x00	; 0
      002890 00                    1949 	.db #0x00	; 0
      002891 00                    1950 	.db #0x00	; 0
      002892 3E                    1951 	.db #0x3e	; 62
      002893 00                    1952 	.db #0x00	; 0
      002894 00                    1953 	.db #0x00	; 0
      002895 00                    1954 	.db #0x00	; 0
      002896 00                    1955 	.db #0x00	; 0
      002897 00                    1956 	.db #0x00	; 0
      002898 00                    1957 	.db #0x00	; 0
      002899 00                    1958 	.db #0x00	; 0
      00289A 00                    1959 	.db #0x00	; 0
      00289B 00                    1960 	.db #0x00	; 0
      00289C 0C                    1961 	.db #0x0c	; 12
      00289D 0C                    1962 	.db #0x0c	; 12
      00289E 00                    1963 	.db #0x00	; 0
      00289F 00                    1964 	.db #0x00	; 0
      0028A0 20                    1965 	.db #0x20	; 32
      0028A1 10                    1966 	.db #0x10	; 16
      0028A2 08                    1967 	.db #0x08	; 8
      0028A3 04                    1968 	.db #0x04	; 4
      0028A4 02                    1969 	.db #0x02	; 2
      0028A5 00                    1970 	.db #0x00	; 0
      0028A6 00                    1971 	.db #0x00	; 0
      0028A7 1C                    1972 	.db #0x1c	; 28
      0028A8 22                    1973 	.db #0x22	; 34
      0028A9 32                    1974 	.db #0x32	; 50	'2'
      0028AA 2A                    1975 	.db #0x2a	; 42
      0028AB 26                    1976 	.db #0x26	; 38
      0028AC 22                    1977 	.db #0x22	; 34
      0028AD 1C                    1978 	.db #0x1c	; 28
      0028AE 00                    1979 	.db #0x00	; 0
      0028AF 08                    1980 	.db #0x08	; 8
      0028B0 0C                    1981 	.db #0x0c	; 12
      0028B1 08                    1982 	.db #0x08	; 8
      0028B2 08                    1983 	.db #0x08	; 8
      0028B3 08                    1984 	.db #0x08	; 8
      0028B4 08                    1985 	.db #0x08	; 8
      0028B5 1C                    1986 	.db #0x1c	; 28
      0028B6 00                    1987 	.db #0x00	; 0
      0028B7 1C                    1988 	.db #0x1c	; 28
      0028B8 22                    1989 	.db #0x22	; 34
      0028B9 20                    1990 	.db #0x20	; 32
      0028BA 18                    1991 	.db #0x18	; 24
      0028BB 04                    1992 	.db #0x04	; 4
      0028BC 02                    1993 	.db #0x02	; 2
      0028BD 3E                    1994 	.db #0x3e	; 62
      0028BE 00                    1995 	.db #0x00	; 0
      0028BF 1C                    1996 	.db #0x1c	; 28
      0028C0 22                    1997 	.db #0x22	; 34
      0028C1 20                    1998 	.db #0x20	; 32
      0028C2 1C                    1999 	.db #0x1c	; 28
      0028C3 20                    2000 	.db #0x20	; 32
      0028C4 22                    2001 	.db #0x22	; 34
      0028C5 1C                    2002 	.db #0x1c	; 28
      0028C6 00                    2003 	.db #0x00	; 0
      0028C7 10                    2004 	.db #0x10	; 16
      0028C8 18                    2005 	.db #0x18	; 24
      0028C9 14                    2006 	.db #0x14	; 20
      0028CA 12                    2007 	.db #0x12	; 18
      0028CB 3E                    2008 	.db #0x3e	; 62
      0028CC 10                    2009 	.db #0x10	; 16
      0028CD 10                    2010 	.db #0x10	; 16
      0028CE 00                    2011 	.db #0x00	; 0
      0028CF 3E                    2012 	.db #0x3e	; 62
      0028D0 02                    2013 	.db #0x02	; 2
      0028D1 02                    2014 	.db #0x02	; 2
      0028D2 1E                    2015 	.db #0x1e	; 30
      0028D3 20                    2016 	.db #0x20	; 32
      0028D4 22                    2017 	.db #0x22	; 34
      0028D5 1C                    2018 	.db #0x1c	; 28
      0028D6 00                    2019 	.db #0x00	; 0
      0028D7 18                    2020 	.db #0x18	; 24
      0028D8 04                    2021 	.db #0x04	; 4
      0028D9 02                    2022 	.db #0x02	; 2
      0028DA 1E                    2023 	.db #0x1e	; 30
      0028DB 22                    2024 	.db #0x22	; 34
      0028DC 22                    2025 	.db #0x22	; 34
      0028DD 1C                    2026 	.db #0x1c	; 28
      0028DE 00                    2027 	.db #0x00	; 0
      0028DF 3E                    2028 	.db #0x3e	; 62
      0028E0 20                    2029 	.db #0x20	; 32
      0028E1 10                    2030 	.db #0x10	; 16
      0028E2 08                    2031 	.db #0x08	; 8
      0028E3 04                    2032 	.db #0x04	; 4
      0028E4 04                    2033 	.db #0x04	; 4
      0028E5 04                    2034 	.db #0x04	; 4
      0028E6 00                    2035 	.db #0x00	; 0
      0028E7 1C                    2036 	.db #0x1c	; 28
      0028E8 22                    2037 	.db #0x22	; 34
      0028E9 22                    2038 	.db #0x22	; 34
      0028EA 1C                    2039 	.db #0x1c	; 28
      0028EB 22                    2040 	.db #0x22	; 34
      0028EC 22                    2041 	.db #0x22	; 34
      0028ED 1C                    2042 	.db #0x1c	; 28
      0028EE 00                    2043 	.db #0x00	; 0
      0028EF 1C                    2044 	.db #0x1c	; 28
      0028F0 22                    2045 	.db #0x22	; 34
      0028F1 22                    2046 	.db #0x22	; 34
      0028F2 3C                    2047 	.db #0x3c	; 60
      0028F3 20                    2048 	.db #0x20	; 32
      0028F4 10                    2049 	.db #0x10	; 16
      0028F5 0C                    2050 	.db #0x0c	; 12
      0028F6 00                    2051 	.db #0x00	; 0
      0028F7 00                    2052 	.db #0x00	; 0
      0028F8 00                    2053 	.db #0x00	; 0
      0028F9 0C                    2054 	.db #0x0c	; 12
      0028FA 0C                    2055 	.db #0x0c	; 12
      0028FB 00                    2056 	.db #0x00	; 0
      0028FC 0C                    2057 	.db #0x0c	; 12
      0028FD 0C                    2058 	.db #0x0c	; 12
      0028FE 00                    2059 	.db #0x00	; 0
      0028FF 00                    2060 	.db #0x00	; 0
      002900 00                    2061 	.db #0x00	; 0
      002901 0C                    2062 	.db #0x0c	; 12
      002902 0C                    2063 	.db #0x0c	; 12
      002903 00                    2064 	.db #0x00	; 0
      002904 0C                    2065 	.db #0x0c	; 12
      002905 0C                    2066 	.db #0x0c	; 12
      002906 04                    2067 	.db #0x04	; 4
      002907 10                    2068 	.db #0x10	; 16
      002908 08                    2069 	.db #0x08	; 8
      002909 04                    2070 	.db #0x04	; 4
      00290A 02                    2071 	.db #0x02	; 2
      00290B 04                    2072 	.db #0x04	; 4
      00290C 08                    2073 	.db #0x08	; 8
      00290D 10                    2074 	.db #0x10	; 16
      00290E 00                    2075 	.db #0x00	; 0
      00290F 00                    2076 	.db #0x00	; 0
      002910 00                    2077 	.db #0x00	; 0
      002911 3E                    2078 	.db #0x3e	; 62
      002912 00                    2079 	.db #0x00	; 0
      002913 00                    2080 	.db #0x00	; 0
      002914 3E                    2081 	.db #0x3e	; 62
      002915 00                    2082 	.db #0x00	; 0
      002916 00                    2083 	.db #0x00	; 0
      002917 04                    2084 	.db #0x04	; 4
      002918 08                    2085 	.db #0x08	; 8
      002919 10                    2086 	.db #0x10	; 16
      00291A 20                    2087 	.db #0x20	; 32
      00291B 10                    2088 	.db #0x10	; 16
      00291C 08                    2089 	.db #0x08	; 8
      00291D 04                    2090 	.db #0x04	; 4
      00291E 00                    2091 	.db #0x00	; 0
      00291F 1C                    2092 	.db #0x1c	; 28
      002920 22                    2093 	.db #0x22	; 34
      002921 20                    2094 	.db #0x20	; 32
      002922 18                    2095 	.db #0x18	; 24
      002923 08                    2096 	.db #0x08	; 8
      002924 00                    2097 	.db #0x00	; 0
      002925 08                    2098 	.db #0x08	; 8
      002926 00                    2099 	.db #0x00	; 0
      002927 1C                    2100 	.db #0x1c	; 28
      002928 22                    2101 	.db #0x22	; 34
      002929 3A                    2102 	.db #0x3a	; 58
      00292A 2A                    2103 	.db #0x2a	; 42
      00292B 3A                    2104 	.db #0x3a	; 58
      00292C 02                    2105 	.db #0x02	; 2
      00292D 1C                    2106 	.db #0x1c	; 28
      00292E 00                    2107 	.db #0x00	; 0
      00292F 1C                    2108 	.db #0x1c	; 28
      002930 22                    2109 	.db #0x22	; 34
      002931 22                    2110 	.db #0x22	; 34
      002932 22                    2111 	.db #0x22	; 34
      002933 3E                    2112 	.db #0x3e	; 62
      002934 22                    2113 	.db #0x22	; 34
      002935 22                    2114 	.db #0x22	; 34
      002936 00                    2115 	.db #0x00	; 0
      002937 1E                    2116 	.db #0x1e	; 30
      002938 22                    2117 	.db #0x22	; 34
      002939 22                    2118 	.db #0x22	; 34
      00293A 1E                    2119 	.db #0x1e	; 30
      00293B 22                    2120 	.db #0x22	; 34
      00293C 22                    2121 	.db #0x22	; 34
      00293D 1E                    2122 	.db #0x1e	; 30
      00293E 00                    2123 	.db #0x00	; 0
      00293F 1C                    2124 	.db #0x1c	; 28
      002940 22                    2125 	.db #0x22	; 34
      002941 02                    2126 	.db #0x02	; 2
      002942 02                    2127 	.db #0x02	; 2
      002943 02                    2128 	.db #0x02	; 2
      002944 22                    2129 	.db #0x22	; 34
      002945 1C                    2130 	.db #0x1c	; 28
      002946 00                    2131 	.db #0x00	; 0
      002947 1E                    2132 	.db #0x1e	; 30
      002948 22                    2133 	.db #0x22	; 34
      002949 22                    2134 	.db #0x22	; 34
      00294A 22                    2135 	.db #0x22	; 34
      00294B 22                    2136 	.db #0x22	; 34
      00294C 22                    2137 	.db #0x22	; 34
      00294D 1E                    2138 	.db #0x1e	; 30
      00294E 00                    2139 	.db #0x00	; 0
      00294F 3E                    2140 	.db #0x3e	; 62
      002950 02                    2141 	.db #0x02	; 2
      002951 02                    2142 	.db #0x02	; 2
      002952 1E                    2143 	.db #0x1e	; 30
      002953 02                    2144 	.db #0x02	; 2
      002954 02                    2145 	.db #0x02	; 2
      002955 3E                    2146 	.db #0x3e	; 62
      002956 00                    2147 	.db #0x00	; 0
      002957 3E                    2148 	.db #0x3e	; 62
      002958 02                    2149 	.db #0x02	; 2
      002959 02                    2150 	.db #0x02	; 2
      00295A 1E                    2151 	.db #0x1e	; 30
      00295B 02                    2152 	.db #0x02	; 2
      00295C 02                    2153 	.db #0x02	; 2
      00295D 02                    2154 	.db #0x02	; 2
      00295E 00                    2155 	.db #0x00	; 0
      00295F 1C                    2156 	.db #0x1c	; 28
      002960 22                    2157 	.db #0x22	; 34
      002961 02                    2158 	.db #0x02	; 2
      002962 3A                    2159 	.db #0x3a	; 58
      002963 22                    2160 	.db #0x22	; 34
      002964 22                    2161 	.db #0x22	; 34
      002965 3C                    2162 	.db #0x3c	; 60
      002966 00                    2163 	.db #0x00	; 0
      002967 22                    2164 	.db #0x22	; 34
      002968 22                    2165 	.db #0x22	; 34
      002969 22                    2166 	.db #0x22	; 34
      00296A 3E                    2167 	.db #0x3e	; 62
      00296B 22                    2168 	.db #0x22	; 34
      00296C 22                    2169 	.db #0x22	; 34
      00296D 22                    2170 	.db #0x22	; 34
      00296E 00                    2171 	.db #0x00	; 0
      00296F 1C                    2172 	.db #0x1c	; 28
      002970 08                    2173 	.db #0x08	; 8
      002971 08                    2174 	.db #0x08	; 8
      002972 08                    2175 	.db #0x08	; 8
      002973 08                    2176 	.db #0x08	; 8
      002974 08                    2177 	.db #0x08	; 8
      002975 1C                    2178 	.db #0x1c	; 28
      002976 00                    2179 	.db #0x00	; 0
      002977 20                    2180 	.db #0x20	; 32
      002978 20                    2181 	.db #0x20	; 32
      002979 20                    2182 	.db #0x20	; 32
      00297A 20                    2183 	.db #0x20	; 32
      00297B 22                    2184 	.db #0x22	; 34
      00297C 22                    2185 	.db #0x22	; 34
      00297D 1C                    2186 	.db #0x1c	; 28
      00297E 00                    2187 	.db #0x00	; 0
      00297F 22                    2188 	.db #0x22	; 34
      002980 12                    2189 	.db #0x12	; 18
      002981 0A                    2190 	.db #0x0a	; 10
      002982 06                    2191 	.db #0x06	; 6
      002983 0A                    2192 	.db #0x0a	; 10
      002984 12                    2193 	.db #0x12	; 18
      002985 22                    2194 	.db #0x22	; 34
      002986 00                    2195 	.db #0x00	; 0
      002987 02                    2196 	.db #0x02	; 2
      002988 02                    2197 	.db #0x02	; 2
      002989 02                    2198 	.db #0x02	; 2
      00298A 02                    2199 	.db #0x02	; 2
      00298B 02                    2200 	.db #0x02	; 2
      00298C 02                    2201 	.db #0x02	; 2
      00298D 3E                    2202 	.db #0x3e	; 62
      00298E 00                    2203 	.db #0x00	; 0
      00298F 22                    2204 	.db #0x22	; 34
      002990 36                    2205 	.db #0x36	; 54	'6'
      002991 2A                    2206 	.db #0x2a	; 42
      002992 22                    2207 	.db #0x22	; 34
      002993 22                    2208 	.db #0x22	; 34
      002994 22                    2209 	.db #0x22	; 34
      002995 22                    2210 	.db #0x22	; 34
      002996 00                    2211 	.db #0x00	; 0
      002997 22                    2212 	.db #0x22	; 34
      002998 26                    2213 	.db #0x26	; 38
      002999 2A                    2214 	.db #0x2a	; 42
      00299A 32                    2215 	.db #0x32	; 50	'2'
      00299B 22                    2216 	.db #0x22	; 34
      00299C 22                    2217 	.db #0x22	; 34
      00299D 22                    2218 	.db #0x22	; 34
      00299E 00                    2219 	.db #0x00	; 0
      00299F 1C                    2220 	.db #0x1c	; 28
      0029A0 22                    2221 	.db #0x22	; 34
      0029A1 22                    2222 	.db #0x22	; 34
      0029A2 22                    2223 	.db #0x22	; 34
      0029A3 22                    2224 	.db #0x22	; 34
      0029A4 22                    2225 	.db #0x22	; 34
      0029A5 1C                    2226 	.db #0x1c	; 28
      0029A6 00                    2227 	.db #0x00	; 0
      0029A7 1E                    2228 	.db #0x1e	; 30
      0029A8 22                    2229 	.db #0x22	; 34
      0029A9 22                    2230 	.db #0x22	; 34
      0029AA 1E                    2231 	.db #0x1e	; 30
      0029AB 02                    2232 	.db #0x02	; 2
      0029AC 02                    2233 	.db #0x02	; 2
      0029AD 02                    2234 	.db #0x02	; 2
      0029AE 00                    2235 	.db #0x00	; 0
      0029AF 1C                    2236 	.db #0x1c	; 28
      0029B0 22                    2237 	.db #0x22	; 34
      0029B1 22                    2238 	.db #0x22	; 34
      0029B2 22                    2239 	.db #0x22	; 34
      0029B3 2A                    2240 	.db #0x2a	; 42
      0029B4 12                    2241 	.db #0x12	; 18
      0029B5 2C                    2242 	.db #0x2c	; 44
      0029B6 00                    2243 	.db #0x00	; 0
      0029B7 1E                    2244 	.db #0x1e	; 30
      0029B8 22                    2245 	.db #0x22	; 34
      0029B9 22                    2246 	.db #0x22	; 34
      0029BA 1E                    2247 	.db #0x1e	; 30
      0029BB 12                    2248 	.db #0x12	; 18
      0029BC 22                    2249 	.db #0x22	; 34
      0029BD 22                    2250 	.db #0x22	; 34
      0029BE 00                    2251 	.db #0x00	; 0
      0029BF 1C                    2252 	.db #0x1c	; 28
      0029C0 22                    2253 	.db #0x22	; 34
      0029C1 02                    2254 	.db #0x02	; 2
      0029C2 1C                    2255 	.db #0x1c	; 28
      0029C3 20                    2256 	.db #0x20	; 32
      0029C4 22                    2257 	.db #0x22	; 34
      0029C5 1C                    2258 	.db #0x1c	; 28
      0029C6 00                    2259 	.db #0x00	; 0
      0029C7 3E                    2260 	.db #0x3e	; 62
      0029C8 08                    2261 	.db #0x08	; 8
      0029C9 08                    2262 	.db #0x08	; 8
      0029CA 08                    2263 	.db #0x08	; 8
      0029CB 08                    2264 	.db #0x08	; 8
      0029CC 08                    2265 	.db #0x08	; 8
      0029CD 08                    2266 	.db #0x08	; 8
      0029CE 00                    2267 	.db #0x00	; 0
      0029CF 22                    2268 	.db #0x22	; 34
      0029D0 22                    2269 	.db #0x22	; 34
      0029D1 22                    2270 	.db #0x22	; 34
      0029D2 22                    2271 	.db #0x22	; 34
      0029D3 22                    2272 	.db #0x22	; 34
      0029D4 22                    2273 	.db #0x22	; 34
      0029D5 1C                    2274 	.db #0x1c	; 28
      0029D6 00                    2275 	.db #0x00	; 0
      0029D7 22                    2276 	.db #0x22	; 34
      0029D8 22                    2277 	.db #0x22	; 34
      0029D9 22                    2278 	.db #0x22	; 34
      0029DA 22                    2279 	.db #0x22	; 34
      0029DB 22                    2280 	.db #0x22	; 34
      0029DC 14                    2281 	.db #0x14	; 20
      0029DD 08                    2282 	.db #0x08	; 8
      0029DE 00                    2283 	.db #0x00	; 0
      0029DF 22                    2284 	.db #0x22	; 34
      0029E0 22                    2285 	.db #0x22	; 34
      0029E1 2A                    2286 	.db #0x2a	; 42
      0029E2 2A                    2287 	.db #0x2a	; 42
      0029E3 2A                    2288 	.db #0x2a	; 42
      0029E4 2A                    2289 	.db #0x2a	; 42
      0029E5 14                    2290 	.db #0x14	; 20
      0029E6 00                    2291 	.db #0x00	; 0
      0029E7 22                    2292 	.db #0x22	; 34
      0029E8 22                    2293 	.db #0x22	; 34
      0029E9 14                    2294 	.db #0x14	; 20
      0029EA 08                    2295 	.db #0x08	; 8
      0029EB 14                    2296 	.db #0x14	; 20
      0029EC 22                    2297 	.db #0x22	; 34
      0029ED 22                    2298 	.db #0x22	; 34
      0029EE 00                    2299 	.db #0x00	; 0
      0029EF 22                    2300 	.db #0x22	; 34
      0029F0 22                    2301 	.db #0x22	; 34
      0029F1 22                    2302 	.db #0x22	; 34
      0029F2 14                    2303 	.db #0x14	; 20
      0029F3 08                    2304 	.db #0x08	; 8
      0029F4 08                    2305 	.db #0x08	; 8
      0029F5 08                    2306 	.db #0x08	; 8
      0029F6 00                    2307 	.db #0x00	; 0
      0029F7 1E                    2308 	.db #0x1e	; 30
      0029F8 10                    2309 	.db #0x10	; 16
      0029F9 08                    2310 	.db #0x08	; 8
      0029FA 04                    2311 	.db #0x04	; 4
      0029FB 02                    2312 	.db #0x02	; 2
      0029FC 02                    2313 	.db #0x02	; 2
      0029FD 1E                    2314 	.db #0x1e	; 30
      0029FE 00                    2315 	.db #0x00	; 0
      0029FF 1C                    2316 	.db #0x1c	; 28
      002A00 04                    2317 	.db #0x04	; 4
      002A01 04                    2318 	.db #0x04	; 4
      002A02 04                    2319 	.db #0x04	; 4
      002A03 04                    2320 	.db #0x04	; 4
      002A04 04                    2321 	.db #0x04	; 4
      002A05 1C                    2322 	.db #0x1c	; 28
      002A06 00                    2323 	.db #0x00	; 0
      002A07 00                    2324 	.db #0x00	; 0
      002A08 02                    2325 	.db #0x02	; 2
      002A09 04                    2326 	.db #0x04	; 4
      002A0A 08                    2327 	.db #0x08	; 8
      002A0B 10                    2328 	.db #0x10	; 16
      002A0C 20                    2329 	.db #0x20	; 32
      002A0D 00                    2330 	.db #0x00	; 0
      002A0E 00                    2331 	.db #0x00	; 0
      002A0F 1C                    2332 	.db #0x1c	; 28
      002A10 10                    2333 	.db #0x10	; 16
      002A11 10                    2334 	.db #0x10	; 16
      002A12 10                    2335 	.db #0x10	; 16
      002A13 10                    2336 	.db #0x10	; 16
      002A14 10                    2337 	.db #0x10	; 16
      002A15 1C                    2338 	.db #0x1c	; 28
      002A16 00                    2339 	.db #0x00	; 0
      002A17 08                    2340 	.db #0x08	; 8
      002A18 14                    2341 	.db #0x14	; 20
      002A19 22                    2342 	.db #0x22	; 34
      002A1A 00                    2343 	.db #0x00	; 0
      002A1B 00                    2344 	.db #0x00	; 0
      002A1C 00                    2345 	.db #0x00	; 0
      002A1D 00                    2346 	.db #0x00	; 0
      002A1E 00                    2347 	.db #0x00	; 0
      002A1F 00                    2348 	.db #0x00	; 0
      002A20 00                    2349 	.db #0x00	; 0
      002A21 00                    2350 	.db #0x00	; 0
      002A22 00                    2351 	.db #0x00	; 0
      002A23 00                    2352 	.db #0x00	; 0
      002A24 00                    2353 	.db #0x00	; 0
      002A25 00                    2354 	.db #0x00	; 0
      002A26 3F                    2355 	.db #0x3f	; 63
      002A27 0C                    2356 	.db #0x0c	; 12
      002A28 0C                    2357 	.db #0x0c	; 12
      002A29 08                    2358 	.db #0x08	; 8
      002A2A 00                    2359 	.db #0x00	; 0
      002A2B 00                    2360 	.db #0x00	; 0
      002A2C 00                    2361 	.db #0x00	; 0
      002A2D 00                    2362 	.db #0x00	; 0
      002A2E 00                    2363 	.db #0x00	; 0
      002A2F 00                    2364 	.db #0x00	; 0
      002A30 00                    2365 	.db #0x00	; 0
      002A31 1C                    2366 	.db #0x1c	; 28
      002A32 20                    2367 	.db #0x20	; 32
      002A33 3C                    2368 	.db #0x3c	; 60
      002A34 22                    2369 	.db #0x22	; 34
      002A35 3C                    2370 	.db #0x3c	; 60
      002A36 00                    2371 	.db #0x00	; 0
      002A37 02                    2372 	.db #0x02	; 2
      002A38 02                    2373 	.db #0x02	; 2
      002A39 1E                    2374 	.db #0x1e	; 30
      002A3A 22                    2375 	.db #0x22	; 34
      002A3B 22                    2376 	.db #0x22	; 34
      002A3C 22                    2377 	.db #0x22	; 34
      002A3D 1E                    2378 	.db #0x1e	; 30
      002A3E 00                    2379 	.db #0x00	; 0
      002A3F 00                    2380 	.db #0x00	; 0
      002A40 00                    2381 	.db #0x00	; 0
      002A41 1C                    2382 	.db #0x1c	; 28
      002A42 22                    2383 	.db #0x22	; 34
      002A43 02                    2384 	.db #0x02	; 2
      002A44 22                    2385 	.db #0x22	; 34
      002A45 1C                    2386 	.db #0x1c	; 28
      002A46 00                    2387 	.db #0x00	; 0
      002A47 20                    2388 	.db #0x20	; 32
      002A48 20                    2389 	.db #0x20	; 32
      002A49 3C                    2390 	.db #0x3c	; 60
      002A4A 22                    2391 	.db #0x22	; 34
      002A4B 22                    2392 	.db #0x22	; 34
      002A4C 22                    2393 	.db #0x22	; 34
      002A4D 3C                    2394 	.db #0x3c	; 60
      002A4E 00                    2395 	.db #0x00	; 0
      002A4F 00                    2396 	.db #0x00	; 0
      002A50 00                    2397 	.db #0x00	; 0
      002A51 1C                    2398 	.db #0x1c	; 28
      002A52 22                    2399 	.db #0x22	; 34
      002A53 1E                    2400 	.db #0x1e	; 30
      002A54 02                    2401 	.db #0x02	; 2
      002A55 1C                    2402 	.db #0x1c	; 28
      002A56 00                    2403 	.db #0x00	; 0
      002A57 18                    2404 	.db #0x18	; 24
      002A58 04                    2405 	.db #0x04	; 4
      002A59 04                    2406 	.db #0x04	; 4
      002A5A 1E                    2407 	.db #0x1e	; 30
      002A5B 04                    2408 	.db #0x04	; 4
      002A5C 04                    2409 	.db #0x04	; 4
      002A5D 04                    2410 	.db #0x04	; 4
      002A5E 00                    2411 	.db #0x00	; 0
      002A5F 00                    2412 	.db #0x00	; 0
      002A60 00                    2413 	.db #0x00	; 0
      002A61 3C                    2414 	.db #0x3c	; 60
      002A62 22                    2415 	.db #0x22	; 34
      002A63 22                    2416 	.db #0x22	; 34
      002A64 3C                    2417 	.db #0x3c	; 60
      002A65 20                    2418 	.db #0x20	; 32
      002A66 1C                    2419 	.db #0x1c	; 28
      002A67 02                    2420 	.db #0x02	; 2
      002A68 02                    2421 	.db #0x02	; 2
      002A69 0E                    2422 	.db #0x0e	; 14
      002A6A 12                    2423 	.db #0x12	; 18
      002A6B 12                    2424 	.db #0x12	; 18
      002A6C 12                    2425 	.db #0x12	; 18
      002A6D 12                    2426 	.db #0x12	; 18
      002A6E 00                    2427 	.db #0x00	; 0
      002A6F 08                    2428 	.db #0x08	; 8
      002A70 00                    2429 	.db #0x00	; 0
      002A71 08                    2430 	.db #0x08	; 8
      002A72 08                    2431 	.db #0x08	; 8
      002A73 08                    2432 	.db #0x08	; 8
      002A74 08                    2433 	.db #0x08	; 8
      002A75 18                    2434 	.db #0x18	; 24
      002A76 00                    2435 	.db #0x00	; 0
      002A77 10                    2436 	.db #0x10	; 16
      002A78 00                    2437 	.db #0x00	; 0
      002A79 18                    2438 	.db #0x18	; 24
      002A7A 10                    2439 	.db #0x10	; 16
      002A7B 10                    2440 	.db #0x10	; 16
      002A7C 10                    2441 	.db #0x10	; 16
      002A7D 12                    2442 	.db #0x12	; 18
      002A7E 0C                    2443 	.db #0x0c	; 12
      002A7F 02                    2444 	.db #0x02	; 2
      002A80 02                    2445 	.db #0x02	; 2
      002A81 12                    2446 	.db #0x12	; 18
      002A82 0A                    2447 	.db #0x0a	; 10
      002A83 06                    2448 	.db #0x06	; 6
      002A84 0A                    2449 	.db #0x0a	; 10
      002A85 12                    2450 	.db #0x12	; 18
      002A86 00                    2451 	.db #0x00	; 0
      002A87 08                    2452 	.db #0x08	; 8
      002A88 08                    2453 	.db #0x08	; 8
      002A89 08                    2454 	.db #0x08	; 8
      002A8A 08                    2455 	.db #0x08	; 8
      002A8B 08                    2456 	.db #0x08	; 8
      002A8C 08                    2457 	.db #0x08	; 8
      002A8D 18                    2458 	.db #0x18	; 24
      002A8E 00                    2459 	.db #0x00	; 0
      002A8F 00                    2460 	.db #0x00	; 0
      002A90 00                    2461 	.db #0x00	; 0
      002A91 16                    2462 	.db #0x16	; 22
      002A92 2A                    2463 	.db #0x2a	; 42
      002A93 2A                    2464 	.db #0x2a	; 42
      002A94 22                    2465 	.db #0x22	; 34
      002A95 22                    2466 	.db #0x22	; 34
      002A96 00                    2467 	.db #0x00	; 0
      002A97 00                    2468 	.db #0x00	; 0
      002A98 00                    2469 	.db #0x00	; 0
      002A99 0E                    2470 	.db #0x0e	; 14
      002A9A 12                    2471 	.db #0x12	; 18
      002A9B 12                    2472 	.db #0x12	; 18
      002A9C 12                    2473 	.db #0x12	; 18
      002A9D 12                    2474 	.db #0x12	; 18
      002A9E 00                    2475 	.db #0x00	; 0
      002A9F 00                    2476 	.db #0x00	; 0
      002AA0 00                    2477 	.db #0x00	; 0
      002AA1 1C                    2478 	.db #0x1c	; 28
      002AA2 22                    2479 	.db #0x22	; 34
      002AA3 22                    2480 	.db #0x22	; 34
      002AA4 22                    2481 	.db #0x22	; 34
      002AA5 1C                    2482 	.db #0x1c	; 28
      002AA6 00                    2483 	.db #0x00	; 0
      002AA7 00                    2484 	.db #0x00	; 0
      002AA8 00                    2485 	.db #0x00	; 0
      002AA9 1E                    2486 	.db #0x1e	; 30
      002AAA 22                    2487 	.db #0x22	; 34
      002AAB 22                    2488 	.db #0x22	; 34
      002AAC 22                    2489 	.db #0x22	; 34
      002AAD 1E                    2490 	.db #0x1e	; 30
      002AAE 02                    2491 	.db #0x02	; 2
      002AAF 00                    2492 	.db #0x00	; 0
      002AB0 00                    2493 	.db #0x00	; 0
      002AB1 3C                    2494 	.db #0x3c	; 60
      002AB2 22                    2495 	.db #0x22	; 34
      002AB3 22                    2496 	.db #0x22	; 34
      002AB4 22                    2497 	.db #0x22	; 34
      002AB5 3C                    2498 	.db #0x3c	; 60
      002AB6 20                    2499 	.db #0x20	; 32
      002AB7 00                    2500 	.db #0x00	; 0
      002AB8 00                    2501 	.db #0x00	; 0
      002AB9 1A                    2502 	.db #0x1a	; 26
      002ABA 24                    2503 	.db #0x24	; 36
      002ABB 04                    2504 	.db #0x04	; 4
      002ABC 04                    2505 	.db #0x04	; 4
      002ABD 0E                    2506 	.db #0x0e	; 14
      002ABE 00                    2507 	.db #0x00	; 0
      002ABF 00                    2508 	.db #0x00	; 0
      002AC0 00                    2509 	.db #0x00	; 0
      002AC1 1C                    2510 	.db #0x1c	; 28
      002AC2 02                    2511 	.db #0x02	; 2
      002AC3 1C                    2512 	.db #0x1c	; 28
      002AC4 20                    2513 	.db #0x20	; 32
      002AC5 1C                    2514 	.db #0x1c	; 28
      002AC6 00                    2515 	.db #0x00	; 0
      002AC7 00                    2516 	.db #0x00	; 0
      002AC8 04                    2517 	.db #0x04	; 4
      002AC9 1E                    2518 	.db #0x1e	; 30
      002ACA 04                    2519 	.db #0x04	; 4
      002ACB 04                    2520 	.db #0x04	; 4
      002ACC 14                    2521 	.db #0x14	; 20
      002ACD 08                    2522 	.db #0x08	; 8
      002ACE 00                    2523 	.db #0x00	; 0
      002ACF 00                    2524 	.db #0x00	; 0
      002AD0 00                    2525 	.db #0x00	; 0
      002AD1 12                    2526 	.db #0x12	; 18
      002AD2 12                    2527 	.db #0x12	; 18
      002AD3 12                    2528 	.db #0x12	; 18
      002AD4 1A                    2529 	.db #0x1a	; 26
      002AD5 14                    2530 	.db #0x14	; 20
      002AD6 00                    2531 	.db #0x00	; 0
      002AD7 00                    2532 	.db #0x00	; 0
      002AD8 00                    2533 	.db #0x00	; 0
      002AD9 22                    2534 	.db #0x22	; 34
      002ADA 22                    2535 	.db #0x22	; 34
      002ADB 22                    2536 	.db #0x22	; 34
      002ADC 14                    2537 	.db #0x14	; 20
      002ADD 08                    2538 	.db #0x08	; 8
      002ADE 00                    2539 	.db #0x00	; 0
      002ADF 00                    2540 	.db #0x00	; 0
      002AE0 00                    2541 	.db #0x00	; 0
      002AE1 22                    2542 	.db #0x22	; 34
      002AE2 22                    2543 	.db #0x22	; 34
      002AE3 2A                    2544 	.db #0x2a	; 42
      002AE4 3E                    2545 	.db #0x3e	; 62
      002AE5 14                    2546 	.db #0x14	; 20
      002AE6 00                    2547 	.db #0x00	; 0
      002AE7 00                    2548 	.db #0x00	; 0
      002AE8 00                    2549 	.db #0x00	; 0
      002AE9 12                    2550 	.db #0x12	; 18
      002AEA 12                    2551 	.db #0x12	; 18
      002AEB 0C                    2552 	.db #0x0c	; 12
      002AEC 12                    2553 	.db #0x12	; 18
      002AED 12                    2554 	.db #0x12	; 18
      002AEE 00                    2555 	.db #0x00	; 0
      002AEF 00                    2556 	.db #0x00	; 0
      002AF0 00                    2557 	.db #0x00	; 0
      002AF1 12                    2558 	.db #0x12	; 18
      002AF2 12                    2559 	.db #0x12	; 18
      002AF3 12                    2560 	.db #0x12	; 18
      002AF4 1C                    2561 	.db #0x1c	; 28
      002AF5 08                    2562 	.db #0x08	; 8
      002AF6 06                    2563 	.db #0x06	; 6
      002AF7 00                    2564 	.db #0x00	; 0
      002AF8 00                    2565 	.db #0x00	; 0
      002AF9 1E                    2566 	.db #0x1e	; 30
      002AFA 10                    2567 	.db #0x10	; 16
      002AFB 0C                    2568 	.db #0x0c	; 12
      002AFC 02                    2569 	.db #0x02	; 2
      002AFD 1E                    2570 	.db #0x1e	; 30
      002AFE 00                    2571 	.db #0x00	; 0
      002AFF 18                    2572 	.db #0x18	; 24
      002B00 04                    2573 	.db #0x04	; 4
      002B01 04                    2574 	.db #0x04	; 4
      002B02 06                    2575 	.db #0x06	; 6
      002B03 04                    2576 	.db #0x04	; 4
      002B04 04                    2577 	.db #0x04	; 4
      002B05 18                    2578 	.db #0x18	; 24
      002B06 00                    2579 	.db #0x00	; 0
      002B07 08                    2580 	.db #0x08	; 8
      002B08 08                    2581 	.db #0x08	; 8
      002B09 08                    2582 	.db #0x08	; 8
      002B0A 00                    2583 	.db #0x00	; 0
      002B0B 08                    2584 	.db #0x08	; 8
      002B0C 08                    2585 	.db #0x08	; 8
      002B0D 08                    2586 	.db #0x08	; 8
      002B0E 00                    2587 	.db #0x00	; 0
      002B0F 0C                    2588 	.db #0x0c	; 12
      002B10 10                    2589 	.db #0x10	; 16
      002B11 10                    2590 	.db #0x10	; 16
      002B12 30                    2591 	.db #0x30	; 48	'0'
      002B13 10                    2592 	.db #0x10	; 16
      002B14 10                    2593 	.db #0x10	; 16
      002B15 0C                    2594 	.db #0x0c	; 12
      002B16 00                    2595 	.db #0x00	; 0
      002B17 14                    2596 	.db #0x14	; 20
      002B18 0A                    2597 	.db #0x0a	; 10
      002B19 00                    2598 	.db #0x00	; 0
      002B1A 00                    2599 	.db #0x00	; 0
      002B1B 00                    2600 	.db #0x00	; 0
      002B1C 00                    2601 	.db #0x00	; 0
      002B1D 00                    2602 	.db #0x00	; 0
      002B1E 00                    2603 	.db #0x00	; 0
      002B1F 08                    2604 	.db #0x08	; 8
      002B20 1C                    2605 	.db #0x1c	; 28
      002B21 36                    2606 	.db #0x36	; 54	'6'
      002B22 22                    2607 	.db #0x22	; 34
      002B23 22                    2608 	.db #0x22	; 34
      002B24 3E                    2609 	.db #0x3e	; 62
      002B25 00                    2610 	.db #0x00	; 0
      002B26 00                    2611 	.db #0x00	; 0
      002B27 1C                    2612 	.db #0x1c	; 28
      002B28 22                    2613 	.db #0x22	; 34
      002B29 02                    2614 	.db #0x02	; 2
      002B2A 02                    2615 	.db #0x02	; 2
      002B2B 22                    2616 	.db #0x22	; 34
      002B2C 1C                    2617 	.db #0x1c	; 28
      002B2D 08                    2618 	.db #0x08	; 8
      002B2E 0C                    2619 	.db #0x0c	; 12
      002B2F 12                    2620 	.db #0x12	; 18
      002B30 00                    2621 	.db #0x00	; 0
      002B31 12                    2622 	.db #0x12	; 18
      002B32 12                    2623 	.db #0x12	; 18
      002B33 12                    2624 	.db #0x12	; 18
      002B34 1A                    2625 	.db #0x1a	; 26
      002B35 14                    2626 	.db #0x14	; 20
      002B36 00                    2627 	.db #0x00	; 0
      002B37 30                    2628 	.db #0x30	; 48	'0'
      002B38 00                    2629 	.db #0x00	; 0
      002B39 1C                    2630 	.db #0x1c	; 28
      002B3A 22                    2631 	.db #0x22	; 34
      002B3B 1E                    2632 	.db #0x1e	; 30
      002B3C 02                    2633 	.db #0x02	; 2
      002B3D 1C                    2634 	.db #0x1c	; 28
      002B3E 00                    2635 	.db #0x00	; 0
      002B3F 1C                    2636 	.db #0x1c	; 28
      002B40 00                    2637 	.db #0x00	; 0
      002B41 1C                    2638 	.db #0x1c	; 28
      002B42 20                    2639 	.db #0x20	; 32
      002B43 3C                    2640 	.db #0x3c	; 60
      002B44 22                    2641 	.db #0x22	; 34
      002B45 3C                    2642 	.db #0x3c	; 60
      002B46 00                    2643 	.db #0x00	; 0
      002B47 14                    2644 	.db #0x14	; 20
      002B48 00                    2645 	.db #0x00	; 0
      002B49 1C                    2646 	.db #0x1c	; 28
      002B4A 20                    2647 	.db #0x20	; 32
      002B4B 3C                    2648 	.db #0x3c	; 60
      002B4C 22                    2649 	.db #0x22	; 34
      002B4D 3C                    2650 	.db #0x3c	; 60
      002B4E 00                    2651 	.db #0x00	; 0
      002B4F 0C                    2652 	.db #0x0c	; 12
      002B50 00                    2653 	.db #0x00	; 0
      002B51 1C                    2654 	.db #0x1c	; 28
      002B52 20                    2655 	.db #0x20	; 32
      002B53 3C                    2656 	.db #0x3c	; 60
      002B54 22                    2657 	.db #0x22	; 34
      002B55 3C                    2658 	.db #0x3c	; 60
      002B56 00                    2659 	.db #0x00	; 0
      002B57 1C                    2660 	.db #0x1c	; 28
      002B58 14                    2661 	.db #0x14	; 20
      002B59 1C                    2662 	.db #0x1c	; 28
      002B5A 20                    2663 	.db #0x20	; 32
      002B5B 3C                    2664 	.db #0x3c	; 60
      002B5C 22                    2665 	.db #0x22	; 34
      002B5D 3C                    2666 	.db #0x3c	; 60
      002B5E 00                    2667 	.db #0x00	; 0
      002B5F 00                    2668 	.db #0x00	; 0
      002B60 1C                    2669 	.db #0x1c	; 28
      002B61 22                    2670 	.db #0x22	; 34
      002B62 02                    2671 	.db #0x02	; 2
      002B63 22                    2672 	.db #0x22	; 34
      002B64 1C                    2673 	.db #0x1c	; 28
      002B65 08                    2674 	.db #0x08	; 8
      002B66 0C                    2675 	.db #0x0c	; 12
      002B67 1C                    2676 	.db #0x1c	; 28
      002B68 00                    2677 	.db #0x00	; 0
      002B69 1C                    2678 	.db #0x1c	; 28
      002B6A 22                    2679 	.db #0x22	; 34
      002B6B 1E                    2680 	.db #0x1e	; 30
      002B6C 02                    2681 	.db #0x02	; 2
      002B6D 1C                    2682 	.db #0x1c	; 28
      002B6E 00                    2683 	.db #0x00	; 0
      002B6F 14                    2684 	.db #0x14	; 20
      002B70 00                    2685 	.db #0x00	; 0
      002B71 1C                    2686 	.db #0x1c	; 28
      002B72 22                    2687 	.db #0x22	; 34
      002B73 1E                    2688 	.db #0x1e	; 30
      002B74 02                    2689 	.db #0x02	; 2
      002B75 1C                    2690 	.db #0x1c	; 28
      002B76 00                    2691 	.db #0x00	; 0
      002B77 0C                    2692 	.db #0x0c	; 12
      002B78 00                    2693 	.db #0x00	; 0
      002B79 1C                    2694 	.db #0x1c	; 28
      002B7A 22                    2695 	.db #0x22	; 34
      002B7B 1E                    2696 	.db #0x1e	; 30
      002B7C 02                    2697 	.db #0x02	; 2
      002B7D 1C                    2698 	.db #0x1c	; 28
      002B7E 00                    2699 	.db #0x00	; 0
      002B7F 14                    2700 	.db #0x14	; 20
      002B80 00                    2701 	.db #0x00	; 0
      002B81 08                    2702 	.db #0x08	; 8
      002B82 08                    2703 	.db #0x08	; 8
      002B83 08                    2704 	.db #0x08	; 8
      002B84 08                    2705 	.db #0x08	; 8
      002B85 18                    2706 	.db #0x18	; 24
      002B86 00                    2707 	.db #0x00	; 0
      002B87 08                    2708 	.db #0x08	; 8
      002B88 14                    2709 	.db #0x14	; 20
      002B89 00                    2710 	.db #0x00	; 0
      002B8A 08                    2711 	.db #0x08	; 8
      002B8B 08                    2712 	.db #0x08	; 8
      002B8C 08                    2713 	.db #0x08	; 8
      002B8D 18                    2714 	.db #0x18	; 24
      002B8E 00                    2715 	.db #0x00	; 0
      002B8F 04                    2716 	.db #0x04	; 4
      002B90 00                    2717 	.db #0x00	; 0
      002B91 08                    2718 	.db #0x08	; 8
      002B92 08                    2719 	.db #0x08	; 8
      002B93 08                    2720 	.db #0x08	; 8
      002B94 08                    2721 	.db #0x08	; 8
      002B95 18                    2722 	.db #0x18	; 24
      002B96 00                    2723 	.db #0x00	; 0
      002B97 14                    2724 	.db #0x14	; 20
      002B98 00                    2725 	.db #0x00	; 0
      002B99 08                    2726 	.db #0x08	; 8
      002B9A 14                    2727 	.db #0x14	; 20
      002B9B 22                    2728 	.db #0x22	; 34
      002B9C 3E                    2729 	.db #0x3e	; 62
      002B9D 22                    2730 	.db #0x22	; 34
      002B9E 00                    2731 	.db #0x00	; 0
      002B9F 1C                    2732 	.db #0x1c	; 28
      002BA0 14                    2733 	.db #0x14	; 20
      002BA1 1C                    2734 	.db #0x1c	; 28
      002BA2 36                    2735 	.db #0x36	; 54	'6'
      002BA3 22                    2736 	.db #0x22	; 34
      002BA4 3E                    2737 	.db #0x3e	; 62
      002BA5 22                    2738 	.db #0x22	; 34
      002BA6 00                    2739 	.db #0x00	; 0
      002BA7 30                    2740 	.db #0x30	; 48	'0'
      002BA8 00                    2741 	.db #0x00	; 0
      002BA9 3E                    2742 	.db #0x3e	; 62
      002BAA 02                    2743 	.db #0x02	; 2
      002BAB 1E                    2744 	.db #0x1e	; 30
      002BAC 02                    2745 	.db #0x02	; 2
      002BAD 3E                    2746 	.db #0x3e	; 62
      002BAE 00                    2747 	.db #0x00	; 0
      002BAF 00                    2748 	.db #0x00	; 0
      002BB0 00                    2749 	.db #0x00	; 0
      002BB1 1E                    2750 	.db #0x1e	; 30
      002BB2 28                    2751 	.db #0x28	; 40
      002BB3 3E                    2752 	.db #0x3e	; 62
      002BB4 0A                    2753 	.db #0x0a	; 10
      002BB5 3C                    2754 	.db #0x3c	; 60
      002BB6 00                    2755 	.db #0x00	; 0
      002BB7 3C                    2756 	.db #0x3c	; 60
      002BB8 0A                    2757 	.db #0x0a	; 10
      002BB9 0A                    2758 	.db #0x0a	; 10
      002BBA 3E                    2759 	.db #0x3e	; 62
      002BBB 0A                    2760 	.db #0x0a	; 10
      002BBC 0A                    2761 	.db #0x0a	; 10
      002BBD 3A                    2762 	.db #0x3a	; 58
      002BBE 00                    2763 	.db #0x00	; 0
      002BBF 1C                    2764 	.db #0x1c	; 28
      002BC0 00                    2765 	.db #0x00	; 0
      002BC1 0C                    2766 	.db #0x0c	; 12
      002BC2 12                    2767 	.db #0x12	; 18
      002BC3 12                    2768 	.db #0x12	; 18
      002BC4 12                    2769 	.db #0x12	; 18
      002BC5 0C                    2770 	.db #0x0c	; 12
      002BC6 00                    2771 	.db #0x00	; 0
      002BC7 14                    2772 	.db #0x14	; 20
      002BC8 00                    2773 	.db #0x00	; 0
      002BC9 0C                    2774 	.db #0x0c	; 12
      002BCA 12                    2775 	.db #0x12	; 18
      002BCB 12                    2776 	.db #0x12	; 18
      002BCC 12                    2777 	.db #0x12	; 18
      002BCD 0C                    2778 	.db #0x0c	; 12
      002BCE 00                    2779 	.db #0x00	; 0
      002BCF 06                    2780 	.db #0x06	; 6
      002BD0 00                    2781 	.db #0x00	; 0
      002BD1 0C                    2782 	.db #0x0c	; 12
      002BD2 12                    2783 	.db #0x12	; 18
      002BD3 12                    2784 	.db #0x12	; 18
      002BD4 12                    2785 	.db #0x12	; 18
      002BD5 0C                    2786 	.db #0x0c	; 12
      002BD6 00                    2787 	.db #0x00	; 0
      002BD7 1C                    2788 	.db #0x1c	; 28
      002BD8 00                    2789 	.db #0x00	; 0
      002BD9 12                    2790 	.db #0x12	; 18
      002BDA 12                    2791 	.db #0x12	; 18
      002BDB 12                    2792 	.db #0x12	; 18
      002BDC 1A                    2793 	.db #0x1a	; 26
      002BDD 14                    2794 	.db #0x14	; 20
      002BDE 00                    2795 	.db #0x00	; 0
      002BDF 06                    2796 	.db #0x06	; 6
      002BE0 00                    2797 	.db #0x00	; 0
      002BE1 12                    2798 	.db #0x12	; 18
      002BE2 12                    2799 	.db #0x12	; 18
      002BE3 12                    2800 	.db #0x12	; 18
      002BE4 1A                    2801 	.db #0x1a	; 26
      002BE5 14                    2802 	.db #0x14	; 20
      002BE6 00                    2803 	.db #0x00	; 0
      002BE7 14                    2804 	.db #0x14	; 20
      002BE8 00                    2805 	.db #0x00	; 0
      002BE9 12                    2806 	.db #0x12	; 18
      002BEA 12                    2807 	.db #0x12	; 18
      002BEB 12                    2808 	.db #0x12	; 18
      002BEC 1C                    2809 	.db #0x1c	; 28
      002BED 08                    2810 	.db #0x08	; 8
      002BEE 06                    2811 	.db #0x06	; 6
      002BEF 12                    2812 	.db #0x12	; 18
      002BF0 0C                    2813 	.db #0x0c	; 12
      002BF1 12                    2814 	.db #0x12	; 18
      002BF2 12                    2815 	.db #0x12	; 18
      002BF3 12                    2816 	.db #0x12	; 18
      002BF4 12                    2817 	.db #0x12	; 18
      002BF5 0C                    2818 	.db #0x0c	; 12
      002BF6 00                    2819 	.db #0x00	; 0
      002BF7 14                    2820 	.db #0x14	; 20
      002BF8 00                    2821 	.db #0x00	; 0
      002BF9 12                    2822 	.db #0x12	; 18
      002BFA 12                    2823 	.db #0x12	; 18
      002BFB 12                    2824 	.db #0x12	; 18
      002BFC 12                    2825 	.db #0x12	; 18
      002BFD 0C                    2826 	.db #0x0c	; 12
      002BFE 00                    2827 	.db #0x00	; 0
      002BFF 00                    2828 	.db #0x00	; 0
      002C00 08                    2829 	.db #0x08	; 8
      002C01 1C                    2830 	.db #0x1c	; 28
      002C02 02                    2831 	.db #0x02	; 2
      002C03 02                    2832 	.db #0x02	; 2
      002C04 1C                    2833 	.db #0x1c	; 28
      002C05 08                    2834 	.db #0x08	; 8
      002C06 00                    2835 	.db #0x00	; 0
      002C07 18                    2836 	.db #0x18	; 24
      002C08 24                    2837 	.db #0x24	; 36
      002C09 04                    2838 	.db #0x04	; 4
      002C0A 1E                    2839 	.db #0x1e	; 30
      002C0B 04                    2840 	.db #0x04	; 4
      002C0C 24                    2841 	.db #0x24	; 36
      002C0D 3A                    2842 	.db #0x3a	; 58
      002C0E 00                    2843 	.db #0x00	; 0
      002C0F 22                    2844 	.db #0x22	; 34
      002C10 14                    2845 	.db #0x14	; 20
      002C11 08                    2846 	.db #0x08	; 8
      002C12 3E                    2847 	.db #0x3e	; 62
      002C13 08                    2848 	.db #0x08	; 8
      002C14 3E                    2849 	.db #0x3e	; 62
      002C15 08                    2850 	.db #0x08	; 8
      002C16 00                    2851 	.db #0x00	; 0
      002C17 06                    2852 	.db #0x06	; 6
      002C18 0A                    2853 	.db #0x0a	; 10
      002C19 0A                    2854 	.db #0x0a	; 10
      002C1A 16                    2855 	.db #0x16	; 22
      002C1B 3A                    2856 	.db #0x3a	; 58
      002C1C 12                    2857 	.db #0x12	; 18
      002C1D 12                    2858 	.db #0x12	; 18
      002C1E 00                    2859 	.db #0x00	; 0
      002C1F 10                    2860 	.db #0x10	; 16
      002C20 28                    2861 	.db #0x28	; 40
      002C21 08                    2862 	.db #0x08	; 8
      002C22 1C                    2863 	.db #0x1c	; 28
      002C23 08                    2864 	.db #0x08	; 8
      002C24 08                    2865 	.db #0x08	; 8
      002C25 0A                    2866 	.db #0x0a	; 10
      002C26 04                    2867 	.db #0x04	; 4
      002C27 18                    2868 	.db #0x18	; 24
      002C28 00                    2869 	.db #0x00	; 0
      002C29 1C                    2870 	.db #0x1c	; 28
      002C2A 20                    2871 	.db #0x20	; 32
      002C2B 3C                    2872 	.db #0x3c	; 60
      002C2C 22                    2873 	.db #0x22	; 34
      002C2D 3C                    2874 	.db #0x3c	; 60
      002C2E 00                    2875 	.db #0x00	; 0
      002C2F 18                    2876 	.db #0x18	; 24
      002C30 00                    2877 	.db #0x00	; 0
      002C31 08                    2878 	.db #0x08	; 8
      002C32 08                    2879 	.db #0x08	; 8
      002C33 08                    2880 	.db #0x08	; 8
      002C34 08                    2881 	.db #0x08	; 8
      002C35 18                    2882 	.db #0x18	; 24
      002C36 00                    2883 	.db #0x00	; 0
      002C37 18                    2884 	.db #0x18	; 24
      002C38 00                    2885 	.db #0x00	; 0
      002C39 0C                    2886 	.db #0x0c	; 12
      002C3A 12                    2887 	.db #0x12	; 18
      002C3B 12                    2888 	.db #0x12	; 18
      002C3C 12                    2889 	.db #0x12	; 18
      002C3D 0C                    2890 	.db #0x0c	; 12
      002C3E 00                    2891 	.db #0x00	; 0
      002C3F 18                    2892 	.db #0x18	; 24
      002C40 00                    2893 	.db #0x00	; 0
      002C41 12                    2894 	.db #0x12	; 18
      002C42 12                    2895 	.db #0x12	; 18
      002C43 12                    2896 	.db #0x12	; 18
      002C44 1A                    2897 	.db #0x1a	; 26
      002C45 14                    2898 	.db #0x14	; 20
      002C46 00                    2899 	.db #0x00	; 0
      002C47 14                    2900 	.db #0x14	; 20
      002C48 0A                    2901 	.db #0x0a	; 10
      002C49 00                    2902 	.db #0x00	; 0
      002C4A 0E                    2903 	.db #0x0e	; 14
      002C4B 12                    2904 	.db #0x12	; 18
      002C4C 12                    2905 	.db #0x12	; 18
      002C4D 12                    2906 	.db #0x12	; 18
      002C4E 00                    2907 	.db #0x00	; 0
      002C4F 14                    2908 	.db #0x14	; 20
      002C50 0A                    2909 	.db #0x0a	; 10
      002C51 00                    2910 	.db #0x00	; 0
      002C52 12                    2911 	.db #0x12	; 18
      002C53 16                    2912 	.db #0x16	; 22
      002C54 1A                    2913 	.db #0x1a	; 26
      002C55 12                    2914 	.db #0x12	; 18
      002C56 00                    2915 	.db #0x00	; 0
      002C57 1C                    2916 	.db #0x1c	; 28
      002C58 20                    2917 	.db #0x20	; 32
      002C59 3C                    2918 	.db #0x3c	; 60
      002C5A 22                    2919 	.db #0x22	; 34
      002C5B 3C                    2920 	.db #0x3c	; 60
      002C5C 00                    2921 	.db #0x00	; 0
      002C5D 3C                    2922 	.db #0x3c	; 60
      002C5E 00                    2923 	.db #0x00	; 0
      002C5F 0C                    2924 	.db #0x0c	; 12
      002C60 12                    2925 	.db #0x12	; 18
      002C61 12                    2926 	.db #0x12	; 18
      002C62 12                    2927 	.db #0x12	; 18
      002C63 0C                    2928 	.db #0x0c	; 12
      002C64 00                    2929 	.db #0x00	; 0
      002C65 1E                    2930 	.db #0x1e	; 30
      002C66 00                    2931 	.db #0x00	; 0
      002C67 08                    2932 	.db #0x08	; 8
      002C68 00                    2933 	.db #0x00	; 0
      002C69 08                    2934 	.db #0x08	; 8
      002C6A 0C                    2935 	.db #0x0c	; 12
      002C6B 02                    2936 	.db #0x02	; 2
      002C6C 22                    2937 	.db #0x22	; 34
      002C6D 1C                    2938 	.db #0x1c	; 28
      002C6E 00                    2939 	.db #0x00	; 0
      002C6F 00                    2940 	.db #0x00	; 0
      002C70 00                    2941 	.db #0x00	; 0
      002C71 3E                    2942 	.db #0x3e	; 62
      002C72 02                    2943 	.db #0x02	; 2
      002C73 02                    2944 	.db #0x02	; 2
      002C74 02                    2945 	.db #0x02	; 2
      002C75 00                    2946 	.db #0x00	; 0
      002C76 00                    2947 	.db #0x00	; 0
      002C77 00                    2948 	.db #0x00	; 0
      002C78 00                    2949 	.db #0x00	; 0
      002C79 3F                    2950 	.db #0x3f	; 63
      002C7A 20                    2951 	.db #0x20	; 32
      002C7B 20                    2952 	.db #0x20	; 32
      002C7C 00                    2953 	.db #0x00	; 0
      002C7D 00                    2954 	.db #0x00	; 0
      002C7E 00                    2955 	.db #0x00	; 0
      002C7F 02                    2956 	.db #0x02	; 2
      002C80 12                    2957 	.db #0x12	; 18
      002C81 0A                    2958 	.db #0x0a	; 10
      002C82 1C                    2959 	.db #0x1c	; 28
      002C83 22                    2960 	.db #0x22	; 34
      002C84 10                    2961 	.db #0x10	; 16
      002C85 38                    2962 	.db #0x38	; 56	'8'
      002C86 00                    2963 	.db #0x00	; 0
      002C87 02                    2964 	.db #0x02	; 2
      002C88 12                    2965 	.db #0x12	; 18
      002C89 0A                    2966 	.db #0x0a	; 10
      002C8A 34                    2967 	.db #0x34	; 52	'4'
      002C8B 2A                    2968 	.db #0x2a	; 42
      002C8C 38                    2969 	.db #0x38	; 56	'8'
      002C8D 20                    2970 	.db #0x20	; 32
      002C8E 00                    2971 	.db #0x00	; 0
      002C8F 08                    2972 	.db #0x08	; 8
      002C90 00                    2973 	.db #0x00	; 0
      002C91 08                    2974 	.db #0x08	; 8
      002C92 08                    2975 	.db #0x08	; 8
      002C93 1C                    2976 	.db #0x1c	; 28
      002C94 1C                    2977 	.db #0x1c	; 28
      002C95 08                    2978 	.db #0x08	; 8
      002C96 00                    2979 	.db #0x00	; 0
      002C97 00                    2980 	.db #0x00	; 0
      002C98 00                    2981 	.db #0x00	; 0
      002C99 24                    2982 	.db #0x24	; 36
      002C9A 12                    2983 	.db #0x12	; 18
      002C9B 24                    2984 	.db #0x24	; 36
      002C9C 00                    2985 	.db #0x00	; 0
      002C9D 00                    2986 	.db #0x00	; 0
      002C9E 00                    2987 	.db #0x00	; 0
      002C9F 00                    2988 	.db #0x00	; 0
      002CA0 00                    2989 	.db #0x00	; 0
      002CA1 12                    2990 	.db #0x12	; 18
      002CA2 24                    2991 	.db #0x24	; 36
      002CA3 12                    2992 	.db #0x12	; 18
      002CA4 00                    2993 	.db #0x00	; 0
      002CA5 00                    2994 	.db #0x00	; 0
      002CA6 00                    2995 	.db #0x00	; 0
      002CA7 2A                    2996 	.db #0x2a	; 42
      002CA8 00                    2997 	.db #0x00	; 0
      002CA9 15                    2998 	.db #0x15	; 21
      002CAA 00                    2999 	.db #0x00	; 0
      002CAB 2A                    3000 	.db #0x2a	; 42
      002CAC 00                    3001 	.db #0x00	; 0
      002CAD 15                    3002 	.db #0x15	; 21
      002CAE 00                    3003 	.db #0x00	; 0
      002CAF 2A                    3004 	.db #0x2a	; 42
      002CB0 15                    3005 	.db #0x15	; 21
      002CB1 2A                    3006 	.db #0x2a	; 42
      002CB2 15                    3007 	.db #0x15	; 21
      002CB3 2A                    3008 	.db #0x2a	; 42
      002CB4 15                    3009 	.db #0x15	; 21
      002CB5 2A                    3010 	.db #0x2a	; 42
      002CB6 15                    3011 	.db #0x15	; 21
      002CB7 15                    3012 	.db #0x15	; 21
      002CB8 3F                    3013 	.db #0x3f	; 63
      002CB9 2A                    3014 	.db #0x2a	; 42
      002CBA 3F                    3015 	.db #0x3f	; 63
      002CBB 15                    3016 	.db #0x15	; 21
      002CBC 3F                    3017 	.db #0x3f	; 63
      002CBD 2A                    3018 	.db #0x2a	; 42
      002CBE 3F                    3019 	.db #0x3f	; 63
      002CBF 08                    3020 	.db #0x08	; 8
      002CC0 08                    3021 	.db #0x08	; 8
      002CC1 08                    3022 	.db #0x08	; 8
      002CC2 08                    3023 	.db #0x08	; 8
      002CC3 08                    3024 	.db #0x08	; 8
      002CC4 08                    3025 	.db #0x08	; 8
      002CC5 08                    3026 	.db #0x08	; 8
      002CC6 08                    3027 	.db #0x08	; 8
      002CC7 08                    3028 	.db #0x08	; 8
      002CC8 08                    3029 	.db #0x08	; 8
      002CC9 08                    3030 	.db #0x08	; 8
      002CCA 0F                    3031 	.db #0x0f	; 15
      002CCB 08                    3032 	.db #0x08	; 8
      002CCC 08                    3033 	.db #0x08	; 8
      002CCD 08                    3034 	.db #0x08	; 8
      002CCE 08                    3035 	.db #0x08	; 8
      002CCF 08                    3036 	.db #0x08	; 8
      002CD0 0F                    3037 	.db #0x0f	; 15
      002CD1 08                    3038 	.db #0x08	; 8
      002CD2 0F                    3039 	.db #0x0f	; 15
      002CD3 08                    3040 	.db #0x08	; 8
      002CD4 08                    3041 	.db #0x08	; 8
      002CD5 08                    3042 	.db #0x08	; 8
      002CD6 08                    3043 	.db #0x08	; 8
      002CD7 0A                    3044 	.db #0x0a	; 10
      002CD8 0A                    3045 	.db #0x0a	; 10
      002CD9 0A                    3046 	.db #0x0a	; 10
      002CDA 0B                    3047 	.db #0x0b	; 11
      002CDB 0A                    3048 	.db #0x0a	; 10
      002CDC 0A                    3049 	.db #0x0a	; 10
      002CDD 0A                    3050 	.db #0x0a	; 10
      002CDE 0A                    3051 	.db #0x0a	; 10
      002CDF 00                    3052 	.db #0x00	; 0
      002CE0 00                    3053 	.db #0x00	; 0
      002CE1 00                    3054 	.db #0x00	; 0
      002CE2 0F                    3055 	.db #0x0f	; 15
      002CE3 0A                    3056 	.db #0x0a	; 10
      002CE4 0A                    3057 	.db #0x0a	; 10
      002CE5 0A                    3058 	.db #0x0a	; 10
      002CE6 0A                    3059 	.db #0x0a	; 10
      002CE7 00                    3060 	.db #0x00	; 0
      002CE8 0F                    3061 	.db #0x0f	; 15
      002CE9 08                    3062 	.db #0x08	; 8
      002CEA 0F                    3063 	.db #0x0f	; 15
      002CEB 08                    3064 	.db #0x08	; 8
      002CEC 08                    3065 	.db #0x08	; 8
      002CED 08                    3066 	.db #0x08	; 8
      002CEE 08                    3067 	.db #0x08	; 8
      002CEF 0A                    3068 	.db #0x0a	; 10
      002CF0 0B                    3069 	.db #0x0b	; 11
      002CF1 08                    3070 	.db #0x08	; 8
      002CF2 0B                    3071 	.db #0x0b	; 11
      002CF3 0A                    3072 	.db #0x0a	; 10
      002CF4 0A                    3073 	.db #0x0a	; 10
      002CF5 0A                    3074 	.db #0x0a	; 10
      002CF6 0A                    3075 	.db #0x0a	; 10
      002CF7 0A                    3076 	.db #0x0a	; 10
      002CF8 0A                    3077 	.db #0x0a	; 10
      002CF9 0A                    3078 	.db #0x0a	; 10
      002CFA 0A                    3079 	.db #0x0a	; 10
      002CFB 0A                    3080 	.db #0x0a	; 10
      002CFC 0A                    3081 	.db #0x0a	; 10
      002CFD 0A                    3082 	.db #0x0a	; 10
      002CFE 0A                    3083 	.db #0x0a	; 10
      002CFF 00                    3084 	.db #0x00	; 0
      002D00 0F                    3085 	.db #0x0f	; 15
      002D01 08                    3086 	.db #0x08	; 8
      002D02 0B                    3087 	.db #0x0b	; 11
      002D03 0A                    3088 	.db #0x0a	; 10
      002D04 0A                    3089 	.db #0x0a	; 10
      002D05 0A                    3090 	.db #0x0a	; 10
      002D06 0A                    3091 	.db #0x0a	; 10
      002D07 0A                    3092 	.db #0x0a	; 10
      002D08 0B                    3093 	.db #0x0b	; 11
      002D09 08                    3094 	.db #0x08	; 8
      002D0A 0F                    3095 	.db #0x0f	; 15
      002D0B 00                    3096 	.db #0x00	; 0
      002D0C 00                    3097 	.db #0x00	; 0
      002D0D 00                    3098 	.db #0x00	; 0
      002D0E 00                    3099 	.db #0x00	; 0
      002D0F 0A                    3100 	.db #0x0a	; 10
      002D10 0A                    3101 	.db #0x0a	; 10
      002D11 0A                    3102 	.db #0x0a	; 10
      002D12 0F                    3103 	.db #0x0f	; 15
      002D13 00                    3104 	.db #0x00	; 0
      002D14 00                    3105 	.db #0x00	; 0
      002D15 00                    3106 	.db #0x00	; 0
      002D16 00                    3107 	.db #0x00	; 0
      002D17 08                    3108 	.db #0x08	; 8
      002D18 0F                    3109 	.db #0x0f	; 15
      002D19 08                    3110 	.db #0x08	; 8
      002D1A 0F                    3111 	.db #0x0f	; 15
      002D1B 00                    3112 	.db #0x00	; 0
      002D1C 00                    3113 	.db #0x00	; 0
      002D1D 00                    3114 	.db #0x00	; 0
      002D1E 00                    3115 	.db #0x00	; 0
      002D1F 00                    3116 	.db #0x00	; 0
      002D20 00                    3117 	.db #0x00	; 0
      002D21 00                    3118 	.db #0x00	; 0
      002D22 0F                    3119 	.db #0x0f	; 15
      002D23 08                    3120 	.db #0x08	; 8
      002D24 08                    3121 	.db #0x08	; 8
      002D25 08                    3122 	.db #0x08	; 8
      002D26 08                    3123 	.db #0x08	; 8
      002D27 08                    3124 	.db #0x08	; 8
      002D28 08                    3125 	.db #0x08	; 8
      002D29 08                    3126 	.db #0x08	; 8
      002D2A 38                    3127 	.db #0x38	; 56	'8'
      002D2B 00                    3128 	.db #0x00	; 0
      002D2C 00                    3129 	.db #0x00	; 0
      002D2D 00                    3130 	.db #0x00	; 0
      002D2E 00                    3131 	.db #0x00	; 0
      002D2F 08                    3132 	.db #0x08	; 8
      002D30 08                    3133 	.db #0x08	; 8
      002D31 08                    3134 	.db #0x08	; 8
      002D32 3F                    3135 	.db #0x3f	; 63
      002D33 00                    3136 	.db #0x00	; 0
      002D34 00                    3137 	.db #0x00	; 0
      002D35 00                    3138 	.db #0x00	; 0
      002D36 00                    3139 	.db #0x00	; 0
      002D37 00                    3140 	.db #0x00	; 0
      002D38 00                    3141 	.db #0x00	; 0
      002D39 00                    3142 	.db #0x00	; 0
      002D3A 3F                    3143 	.db #0x3f	; 63
      002D3B 08                    3144 	.db #0x08	; 8
      002D3C 08                    3145 	.db #0x08	; 8
      002D3D 08                    3146 	.db #0x08	; 8
      002D3E 08                    3147 	.db #0x08	; 8
      002D3F 08                    3148 	.db #0x08	; 8
      002D40 08                    3149 	.db #0x08	; 8
      002D41 08                    3150 	.db #0x08	; 8
      002D42 38                    3151 	.db #0x38	; 56	'8'
      002D43 08                    3152 	.db #0x08	; 8
      002D44 08                    3153 	.db #0x08	; 8
      002D45 08                    3154 	.db #0x08	; 8
      002D46 08                    3155 	.db #0x08	; 8
      002D47 00                    3156 	.db #0x00	; 0
      002D48 00                    3157 	.db #0x00	; 0
      002D49 00                    3158 	.db #0x00	; 0
      002D4A 3F                    3159 	.db #0x3f	; 63
      002D4B 00                    3160 	.db #0x00	; 0
      002D4C 00                    3161 	.db #0x00	; 0
      002D4D 00                    3162 	.db #0x00	; 0
      002D4E 00                    3163 	.db #0x00	; 0
      002D4F 08                    3164 	.db #0x08	; 8
      002D50 08                    3165 	.db #0x08	; 8
      002D51 08                    3166 	.db #0x08	; 8
      002D52 3F                    3167 	.db #0x3f	; 63
      002D53 08                    3168 	.db #0x08	; 8
      002D54 08                    3169 	.db #0x08	; 8
      002D55 08                    3170 	.db #0x08	; 8
      002D56 08                    3171 	.db #0x08	; 8
      002D57 08                    3172 	.db #0x08	; 8
      002D58 38                    3173 	.db #0x38	; 56	'8'
      002D59 08                    3174 	.db #0x08	; 8
      002D5A 38                    3175 	.db #0x38	; 56	'8'
      002D5B 08                    3176 	.db #0x08	; 8
      002D5C 08                    3177 	.db #0x08	; 8
      002D5D 08                    3178 	.db #0x08	; 8
      002D5E 08                    3179 	.db #0x08	; 8
      002D5F 0A                    3180 	.db #0x0a	; 10
      002D60 0A                    3181 	.db #0x0a	; 10
      002D61 0A                    3182 	.db #0x0a	; 10
      002D62 3A                    3183 	.db #0x3a	; 58
      002D63 0A                    3184 	.db #0x0a	; 10
      002D64 0A                    3185 	.db #0x0a	; 10
      002D65 0A                    3186 	.db #0x0a	; 10
      002D66 0A                    3187 	.db #0x0a	; 10
      002D67 0A                    3188 	.db #0x0a	; 10
      002D68 3A                    3189 	.db #0x3a	; 58
      002D69 02                    3190 	.db #0x02	; 2
      002D6A 3E                    3191 	.db #0x3e	; 62
      002D6B 00                    3192 	.db #0x00	; 0
      002D6C 00                    3193 	.db #0x00	; 0
      002D6D 00                    3194 	.db #0x00	; 0
      002D6E 00                    3195 	.db #0x00	; 0
      002D6F 00                    3196 	.db #0x00	; 0
      002D70 3E                    3197 	.db #0x3e	; 62
      002D71 02                    3198 	.db #0x02	; 2
      002D72 3A                    3199 	.db #0x3a	; 58
      002D73 0A                    3200 	.db #0x0a	; 10
      002D74 0A                    3201 	.db #0x0a	; 10
      002D75 0A                    3202 	.db #0x0a	; 10
      002D76 0A                    3203 	.db #0x0a	; 10
      002D77 0A                    3204 	.db #0x0a	; 10
      002D78 3B                    3205 	.db #0x3b	; 59
      002D79 00                    3206 	.db #0x00	; 0
      002D7A 3F                    3207 	.db #0x3f	; 63
      002D7B 00                    3208 	.db #0x00	; 0
      002D7C 00                    3209 	.db #0x00	; 0
      002D7D 00                    3210 	.db #0x00	; 0
      002D7E 00                    3211 	.db #0x00	; 0
      002D7F 00                    3212 	.db #0x00	; 0
      002D80 3F                    3213 	.db #0x3f	; 63
      002D81 00                    3214 	.db #0x00	; 0
      002D82 3B                    3215 	.db #0x3b	; 59
      002D83 0A                    3216 	.db #0x0a	; 10
      002D84 0A                    3217 	.db #0x0a	; 10
      002D85 0A                    3218 	.db #0x0a	; 10
      002D86 0A                    3219 	.db #0x0a	; 10
      002D87 0A                    3220 	.db #0x0a	; 10
      002D88 3A                    3221 	.db #0x3a	; 58
      002D89 02                    3222 	.db #0x02	; 2
      002D8A 3A                    3223 	.db #0x3a	; 58
      002D8B 0A                    3224 	.db #0x0a	; 10
      002D8C 0A                    3225 	.db #0x0a	; 10
      002D8D 0A                    3226 	.db #0x0a	; 10
      002D8E 0A                    3227 	.db #0x0a	; 10
      002D8F 00                    3228 	.db #0x00	; 0
      002D90 3F                    3229 	.db #0x3f	; 63
      002D91 00                    3230 	.db #0x00	; 0
      002D92 3F                    3231 	.db #0x3f	; 63
      002D93 00                    3232 	.db #0x00	; 0
      002D94 00                    3233 	.db #0x00	; 0
      002D95 00                    3234 	.db #0x00	; 0
      002D96 00                    3235 	.db #0x00	; 0
      002D97 0A                    3236 	.db #0x0a	; 10
      002D98 3B                    3237 	.db #0x3b	; 59
      002D99 00                    3238 	.db #0x00	; 0
      002D9A 3B                    3239 	.db #0x3b	; 59
      002D9B 0A                    3240 	.db #0x0a	; 10
      002D9C 0A                    3241 	.db #0x0a	; 10
      002D9D 0A                    3242 	.db #0x0a	; 10
      002D9E 0A                    3243 	.db #0x0a	; 10
      002D9F 08                    3244 	.db #0x08	; 8
      002DA0 3F                    3245 	.db #0x3f	; 63
      002DA1 00                    3246 	.db #0x00	; 0
      002DA2 3F                    3247 	.db #0x3f	; 63
      002DA3 00                    3248 	.db #0x00	; 0
      002DA4 00                    3249 	.db #0x00	; 0
      002DA5 00                    3250 	.db #0x00	; 0
      002DA6 00                    3251 	.db #0x00	; 0
      002DA7 0A                    3252 	.db #0x0a	; 10
      002DA8 0A                    3253 	.db #0x0a	; 10
      002DA9 0A                    3254 	.db #0x0a	; 10
      002DAA 3F                    3255 	.db #0x3f	; 63
      002DAB 00                    3256 	.db #0x00	; 0
      002DAC 00                    3257 	.db #0x00	; 0
      002DAD 00                    3258 	.db #0x00	; 0
      002DAE 00                    3259 	.db #0x00	; 0
      002DAF 00                    3260 	.db #0x00	; 0
      002DB0 3F                    3261 	.db #0x3f	; 63
      002DB1 00                    3262 	.db #0x00	; 0
      002DB2 3F                    3263 	.db #0x3f	; 63
      002DB3 08                    3264 	.db #0x08	; 8
      002DB4 08                    3265 	.db #0x08	; 8
      002DB5 08                    3266 	.db #0x08	; 8
      002DB6 08                    3267 	.db #0x08	; 8
      002DB7 00                    3268 	.db #0x00	; 0
      002DB8 00                    3269 	.db #0x00	; 0
      002DB9 00                    3270 	.db #0x00	; 0
      002DBA 3F                    3271 	.db #0x3f	; 63
      002DBB 0A                    3272 	.db #0x0a	; 10
      002DBC 0A                    3273 	.db #0x0a	; 10
      002DBD 0A                    3274 	.db #0x0a	; 10
      002DBE 0A                    3275 	.db #0x0a	; 10
      002DBF 0A                    3276 	.db #0x0a	; 10
      002DC0 0A                    3277 	.db #0x0a	; 10
      002DC1 0A                    3278 	.db #0x0a	; 10
      002DC2 3E                    3279 	.db #0x3e	; 62
      002DC3 00                    3280 	.db #0x00	; 0
      002DC4 00                    3281 	.db #0x00	; 0
      002DC5 00                    3282 	.db #0x00	; 0
      002DC6 00                    3283 	.db #0x00	; 0
      002DC7 08                    3284 	.db #0x08	; 8
      002DC8 38                    3285 	.db #0x38	; 56	'8'
      002DC9 08                    3286 	.db #0x08	; 8
      002DCA 38                    3287 	.db #0x38	; 56	'8'
      002DCB 00                    3288 	.db #0x00	; 0
      002DCC 00                    3289 	.db #0x00	; 0
      002DCD 00                    3290 	.db #0x00	; 0
      002DCE 00                    3291 	.db #0x00	; 0
      002DCF 00                    3292 	.db #0x00	; 0
      002DD0 38                    3293 	.db #0x38	; 56	'8'
      002DD1 08                    3294 	.db #0x08	; 8
      002DD2 38                    3295 	.db #0x38	; 56	'8'
      002DD3 08                    3296 	.db #0x08	; 8
      002DD4 08                    3297 	.db #0x08	; 8
      002DD5 08                    3298 	.db #0x08	; 8
      002DD6 08                    3299 	.db #0x08	; 8
      002DD7 00                    3300 	.db #0x00	; 0
      002DD8 00                    3301 	.db #0x00	; 0
      002DD9 00                    3302 	.db #0x00	; 0
      002DDA 3E                    3303 	.db #0x3e	; 62
      002DDB 0A                    3304 	.db #0x0a	; 10
      002DDC 0A                    3305 	.db #0x0a	; 10
      002DDD 0A                    3306 	.db #0x0a	; 10
      002DDE 0A                    3307 	.db #0x0a	; 10
      002DDF 0A                    3308 	.db #0x0a	; 10
      002DE0 0A                    3309 	.db #0x0a	; 10
      002DE1 0A                    3310 	.db #0x0a	; 10
      002DE2 3B                    3311 	.db #0x3b	; 59
      002DE3 0A                    3312 	.db #0x0a	; 10
      002DE4 0A                    3313 	.db #0x0a	; 10
      002DE5 0A                    3314 	.db #0x0a	; 10
      002DE6 0A                    3315 	.db #0x0a	; 10
      002DE7 08                    3316 	.db #0x08	; 8
      002DE8 3F                    3317 	.db #0x3f	; 63
      002DE9 00                    3318 	.db #0x00	; 0
      002DEA 3F                    3319 	.db #0x3f	; 63
      002DEB 08                    3320 	.db #0x08	; 8
      002DEC 08                    3321 	.db #0x08	; 8
      002DED 08                    3322 	.db #0x08	; 8
      002DEE 08                    3323 	.db #0x08	; 8
      002DEF 08                    3324 	.db #0x08	; 8
      002DF0 08                    3325 	.db #0x08	; 8
      002DF1 08                    3326 	.db #0x08	; 8
      002DF2 0F                    3327 	.db #0x0f	; 15
      002DF3 00                    3328 	.db #0x00	; 0
      002DF4 00                    3329 	.db #0x00	; 0
      002DF5 00                    3330 	.db #0x00	; 0
      002DF6 00                    3331 	.db #0x00	; 0
      002DF7 00                    3332 	.db #0x00	; 0
      002DF8 00                    3333 	.db #0x00	; 0
      002DF9 00                    3334 	.db #0x00	; 0
      002DFA 38                    3335 	.db #0x38	; 56	'8'
      002DFB 08                    3336 	.db #0x08	; 8
      002DFC 08                    3337 	.db #0x08	; 8
      002DFD 08                    3338 	.db #0x08	; 8
      002DFE 08                    3339 	.db #0x08	; 8
      002DFF 3F                    3340 	.db #0x3f	; 63
      002E00 3F                    3341 	.db #0x3f	; 63
      002E01 3F                    3342 	.db #0x3f	; 63
      002E02 3F                    3343 	.db #0x3f	; 63
      002E03 3F                    3344 	.db #0x3f	; 63
      002E04 3F                    3345 	.db #0x3f	; 63
      002E05 3F                    3346 	.db #0x3f	; 63
      002E06 3F                    3347 	.db #0x3f	; 63
      002E07 00                    3348 	.db #0x00	; 0
      002E08 00                    3349 	.db #0x00	; 0
      002E09 00                    3350 	.db #0x00	; 0
      002E0A 00                    3351 	.db #0x00	; 0
      002E0B 3F                    3352 	.db #0x3f	; 63
      002E0C 3F                    3353 	.db #0x3f	; 63
      002E0D 3F                    3354 	.db #0x3f	; 63
      002E0E 3F                    3355 	.db #0x3f	; 63
      002E0F 07                    3356 	.db #0x07	; 7
      002E10 07                    3357 	.db #0x07	; 7
      002E11 07                    3358 	.db #0x07	; 7
      002E12 07                    3359 	.db #0x07	; 7
      002E13 07                    3360 	.db #0x07	; 7
      002E14 07                    3361 	.db #0x07	; 7
      002E15 07                    3362 	.db #0x07	; 7
      002E16 07                    3363 	.db #0x07	; 7
      002E17 38                    3364 	.db #0x38	; 56	'8'
      002E18 38                    3365 	.db #0x38	; 56	'8'
      002E19 38                    3366 	.db #0x38	; 56	'8'
      002E1A 38                    3367 	.db #0x38	; 56	'8'
      002E1B 38                    3368 	.db #0x38	; 56	'8'
      002E1C 38                    3369 	.db #0x38	; 56	'8'
      002E1D 38                    3370 	.db #0x38	; 56	'8'
      002E1E 38                    3371 	.db #0x38	; 56	'8'
      002E1F 3F                    3372 	.db #0x3f	; 63
      002E20 3F                    3373 	.db #0x3f	; 63
      002E21 3F                    3374 	.db #0x3f	; 63
      002E22 3F                    3375 	.db #0x3f	; 63
      002E23 00                    3376 	.db #0x00	; 0
      002E24 00                    3377 	.db #0x00	; 0
      002E25 00                    3378 	.db #0x00	; 0
      002E26 00                    3379 	.db #0x00	; 0
      002E27 00                    3380 	.db #0x00	; 0
      002E28 00                    3381 	.db #0x00	; 0
      002E29 2C                    3382 	.db #0x2c	; 44
      002E2A 12                    3383 	.db #0x12	; 18
      002E2B 12                    3384 	.db #0x12	; 18
      002E2C 2C                    3385 	.db #0x2c	; 44
      002E2D 00                    3386 	.db #0x00	; 0
      002E2E 00                    3387 	.db #0x00	; 0
      002E2F 00                    3388 	.db #0x00	; 0
      002E30 0E                    3389 	.db #0x0e	; 14
      002E31 12                    3390 	.db #0x12	; 18
      002E32 0E                    3391 	.db #0x0e	; 14
      002E33 12                    3392 	.db #0x12	; 18
      002E34 12                    3393 	.db #0x12	; 18
      002E35 0E                    3394 	.db #0x0e	; 14
      002E36 02                    3395 	.db #0x02	; 2
      002E37 1E                    3396 	.db #0x1e	; 30
      002E38 12                    3397 	.db #0x12	; 18
      002E39 02                    3398 	.db #0x02	; 2
      002E3A 02                    3399 	.db #0x02	; 2
      002E3B 02                    3400 	.db #0x02	; 2
      002E3C 02                    3401 	.db #0x02	; 2
      002E3D 02                    3402 	.db #0x02	; 2
      002E3E 00                    3403 	.db #0x00	; 0
      002E3F 00                    3404 	.db #0x00	; 0
      002E40 3E                    3405 	.db #0x3e	; 62
      002E41 14                    3406 	.db #0x14	; 20
      002E42 14                    3407 	.db #0x14	; 20
      002E43 14                    3408 	.db #0x14	; 20
      002E44 14                    3409 	.db #0x14	; 20
      002E45 14                    3410 	.db #0x14	; 20
      002E46 00                    3411 	.db #0x00	; 0
      002E47 1E                    3412 	.db #0x1e	; 30
      002E48 12                    3413 	.db #0x12	; 18
      002E49 04                    3414 	.db #0x04	; 4
      002E4A 08                    3415 	.db #0x08	; 8
      002E4B 04                    3416 	.db #0x04	; 4
      002E4C 12                    3417 	.db #0x12	; 18
      002E4D 1E                    3418 	.db #0x1e	; 30
      002E4E 00                    3419 	.db #0x00	; 0
      002E4F 00                    3420 	.db #0x00	; 0
      002E50 00                    3421 	.db #0x00	; 0
      002E51 3C                    3422 	.db #0x3c	; 60
      002E52 12                    3423 	.db #0x12	; 18
      002E53 12                    3424 	.db #0x12	; 18
      002E54 0C                    3425 	.db #0x0c	; 12
      002E55 00                    3426 	.db #0x00	; 0
      002E56 00                    3427 	.db #0x00	; 0
      002E57 00                    3428 	.db #0x00	; 0
      002E58 00                    3429 	.db #0x00	; 0
      002E59 12                    3430 	.db #0x12	; 18
      002E5A 12                    3431 	.db #0x12	; 18
      002E5B 12                    3432 	.db #0x12	; 18
      002E5C 0E                    3433 	.db #0x0e	; 14
      002E5D 02                    3434 	.db #0x02	; 2
      002E5E 02                    3435 	.db #0x02	; 2
      002E5F 00                    3436 	.db #0x00	; 0
      002E60 00                    3437 	.db #0x00	; 0
      002E61 14                    3438 	.db #0x14	; 20
      002E62 0A                    3439 	.db #0x0a	; 10
      002E63 08                    3440 	.db #0x08	; 8
      002E64 08                    3441 	.db #0x08	; 8
      002E65 08                    3442 	.db #0x08	; 8
      002E66 00                    3443 	.db #0x00	; 0
      002E67 1C                    3444 	.db #0x1c	; 28
      002E68 08                    3445 	.db #0x08	; 8
      002E69 1C                    3446 	.db #0x1c	; 28
      002E6A 22                    3447 	.db #0x22	; 34
      002E6B 1C                    3448 	.db #0x1c	; 28
      002E6C 08                    3449 	.db #0x08	; 8
      002E6D 1C                    3450 	.db #0x1c	; 28
      002E6E 00                    3451 	.db #0x00	; 0
      002E6F 0C                    3452 	.db #0x0c	; 12
      002E70 12                    3453 	.db #0x12	; 18
      002E71 12                    3454 	.db #0x12	; 18
      002E72 1E                    3455 	.db #0x1e	; 30
      002E73 12                    3456 	.db #0x12	; 18
      002E74 12                    3457 	.db #0x12	; 18
      002E75 0C                    3458 	.db #0x0c	; 12
      002E76 00                    3459 	.db #0x00	; 0
      002E77 00                    3460 	.db #0x00	; 0
      002E78 1C                    3461 	.db #0x1c	; 28
      002E79 22                    3462 	.db #0x22	; 34
      002E7A 22                    3463 	.db #0x22	; 34
      002E7B 14                    3464 	.db #0x14	; 20
      002E7C 14                    3465 	.db #0x14	; 20
      002E7D 36                    3466 	.db #0x36	; 54	'6'
      002E7E 00                    3467 	.db #0x00	; 0
      002E7F 0C                    3468 	.db #0x0c	; 12
      002E80 02                    3469 	.db #0x02	; 2
      002E81 04                    3470 	.db #0x04	; 4
      002E82 08                    3471 	.db #0x08	; 8
      002E83 1C                    3472 	.db #0x1c	; 28
      002E84 12                    3473 	.db #0x12	; 18
      002E85 0C                    3474 	.db #0x0c	; 12
      002E86 00                    3475 	.db #0x00	; 0
      002E87 00                    3476 	.db #0x00	; 0
      002E88 00                    3477 	.db #0x00	; 0
      002E89 14                    3478 	.db #0x14	; 20
      002E8A 2A                    3479 	.db #0x2a	; 42
      002E8B 2A                    3480 	.db #0x2a	; 42
      002E8C 14                    3481 	.db #0x14	; 20
      002E8D 00                    3482 	.db #0x00	; 0
      002E8E 00                    3483 	.db #0x00	; 0
      002E8F 00                    3484 	.db #0x00	; 0
      002E90 08                    3485 	.db #0x08	; 8
      002E91 1C                    3486 	.db #0x1c	; 28
      002E92 2A                    3487 	.db #0x2a	; 42
      002E93 2A                    3488 	.db #0x2a	; 42
      002E94 1C                    3489 	.db #0x1c	; 28
      002E95 08                    3490 	.db #0x08	; 8
      002E96 00                    3491 	.db #0x00	; 0
      002E97 00                    3492 	.db #0x00	; 0
      002E98 1C                    3493 	.db #0x1c	; 28
      002E99 02                    3494 	.db #0x02	; 2
      002E9A 1E                    3495 	.db #0x1e	; 30
      002E9B 02                    3496 	.db #0x02	; 2
      002E9C 1C                    3497 	.db #0x1c	; 28
      002E9D 00                    3498 	.db #0x00	; 0
      002E9E 00                    3499 	.db #0x00	; 0
      002E9F 00                    3500 	.db #0x00	; 0
      002EA0 0C                    3501 	.db #0x0c	; 12
      002EA1 12                    3502 	.db #0x12	; 18
      002EA2 12                    3503 	.db #0x12	; 18
      002EA3 12                    3504 	.db #0x12	; 18
      002EA4 12                    3505 	.db #0x12	; 18
      002EA5 00                    3506 	.db #0x00	; 0
      002EA6 00                    3507 	.db #0x00	; 0
      002EA7 00                    3508 	.db #0x00	; 0
      002EA8 1E                    3509 	.db #0x1e	; 30
      002EA9 00                    3510 	.db #0x00	; 0
      002EAA 1E                    3511 	.db #0x1e	; 30
      002EAB 00                    3512 	.db #0x00	; 0
      002EAC 1E                    3513 	.db #0x1e	; 30
      002EAD 00                    3514 	.db #0x00	; 0
      002EAE 00                    3515 	.db #0x00	; 0
      002EAF 00                    3516 	.db #0x00	; 0
      002EB0 08                    3517 	.db #0x08	; 8
      002EB1 1C                    3518 	.db #0x1c	; 28
      002EB2 08                    3519 	.db #0x08	; 8
      002EB3 00                    3520 	.db #0x00	; 0
      002EB4 1C                    3521 	.db #0x1c	; 28
      002EB5 00                    3522 	.db #0x00	; 0
      002EB6 00                    3523 	.db #0x00	; 0
      002EB7 02                    3524 	.db #0x02	; 2
      002EB8 0C                    3525 	.db #0x0c	; 12
      002EB9 10                    3526 	.db #0x10	; 16
      002EBA 0C                    3527 	.db #0x0c	; 12
      002EBB 02                    3528 	.db #0x02	; 2
      002EBC 00                    3529 	.db #0x00	; 0
      002EBD 1E                    3530 	.db #0x1e	; 30
      002EBE 00                    3531 	.db #0x00	; 0
      002EBF 10                    3532 	.db #0x10	; 16
      002EC0 0C                    3533 	.db #0x0c	; 12
      002EC1 02                    3534 	.db #0x02	; 2
      002EC2 0C                    3535 	.db #0x0c	; 12
      002EC3 10                    3536 	.db #0x10	; 16
      002EC4 00                    3537 	.db #0x00	; 0
      002EC5 1E                    3538 	.db #0x1e	; 30
      002EC6 00                    3539 	.db #0x00	; 0
      002EC7 00                    3540 	.db #0x00	; 0
      002EC8 10                    3541 	.db #0x10	; 16
      002EC9 28                    3542 	.db #0x28	; 40
      002ECA 08                    3543 	.db #0x08	; 8
      002ECB 08                    3544 	.db #0x08	; 8
      002ECC 08                    3545 	.db #0x08	; 8
      002ECD 08                    3546 	.db #0x08	; 8
      002ECE 08                    3547 	.db #0x08	; 8
      002ECF 08                    3548 	.db #0x08	; 8
      002ED0 08                    3549 	.db #0x08	; 8
      002ED1 08                    3550 	.db #0x08	; 8
      002ED2 08                    3551 	.db #0x08	; 8
      002ED3 08                    3552 	.db #0x08	; 8
      002ED4 0A                    3553 	.db #0x0a	; 10
      002ED5 04                    3554 	.db #0x04	; 4
      002ED6 00                    3555 	.db #0x00	; 0
      002ED7 00                    3556 	.db #0x00	; 0
      002ED8 08                    3557 	.db #0x08	; 8
      002ED9 00                    3558 	.db #0x00	; 0
      002EDA 3E                    3559 	.db #0x3e	; 62
      002EDB 00                    3560 	.db #0x00	; 0
      002EDC 08                    3561 	.db #0x08	; 8
      002EDD 00                    3562 	.db #0x00	; 0
      002EDE 00                    3563 	.db #0x00	; 0
      002EDF 00                    3564 	.db #0x00	; 0
      002EE0 14                    3565 	.db #0x14	; 20
      002EE1 0A                    3566 	.db #0x0a	; 10
      002EE2 00                    3567 	.db #0x00	; 0
      002EE3 14                    3568 	.db #0x14	; 20
      002EE4 0A                    3569 	.db #0x0a	; 10
      002EE5 00                    3570 	.db #0x00	; 0
      002EE6 00                    3571 	.db #0x00	; 0
      002EE7 0C                    3572 	.db #0x0c	; 12
      002EE8 12                    3573 	.db #0x12	; 18
      002EE9 12                    3574 	.db #0x12	; 18
      002EEA 0C                    3575 	.db #0x0c	; 12
      002EEB 00                    3576 	.db #0x00	; 0
      002EEC 00                    3577 	.db #0x00	; 0
      002EED 00                    3578 	.db #0x00	; 0
      002EEE 00                    3579 	.db #0x00	; 0
      002EEF 00                    3580 	.db #0x00	; 0
      002EF0 00                    3581 	.db #0x00	; 0
      002EF1 00                    3582 	.db #0x00	; 0
      002EF2 0C                    3583 	.db #0x0c	; 12
      002EF3 0C                    3584 	.db #0x0c	; 12
      002EF4 00                    3585 	.db #0x00	; 0
      002EF5 00                    3586 	.db #0x00	; 0
      002EF6 00                    3587 	.db #0x00	; 0
      002EF7 00                    3588 	.db #0x00	; 0
      002EF8 00                    3589 	.db #0x00	; 0
      002EF9 00                    3590 	.db #0x00	; 0
      002EFA 04                    3591 	.db #0x04	; 4
      002EFB 00                    3592 	.db #0x00	; 0
      002EFC 00                    3593 	.db #0x00	; 0
      002EFD 00                    3594 	.db #0x00	; 0
      002EFE 00                    3595 	.db #0x00	; 0
      002EFF 00                    3596 	.db #0x00	; 0
      002F00 38                    3597 	.db #0x38	; 56	'8'
      002F01 08                    3598 	.db #0x08	; 8
      002F02 08                    3599 	.db #0x08	; 8
      002F03 0A                    3600 	.db #0x0a	; 10
      002F04 0A                    3601 	.db #0x0a	; 10
      002F05 04                    3602 	.db #0x04	; 4
      002F06 00                    3603 	.db #0x00	; 0
      002F07 0A                    3604 	.db #0x0a	; 10
      002F08 14                    3605 	.db #0x14	; 20
      002F09 14                    3606 	.db #0x14	; 20
      002F0A 14                    3607 	.db #0x14	; 20
      002F0B 00                    3608 	.db #0x00	; 0
      002F0C 00                    3609 	.db #0x00	; 0
      002F0D 00                    3610 	.db #0x00	; 0
      002F0E 00                    3611 	.db #0x00	; 0
      002F0F 06                    3612 	.db #0x06	; 6
      002F10 08                    3613 	.db #0x08	; 8
      002F11 04                    3614 	.db #0x04	; 4
      002F12 0E                    3615 	.db #0x0e	; 14
      002F13 00                    3616 	.db #0x00	; 0
      002F14 00                    3617 	.db #0x00	; 0
      002F15 00                    3618 	.db #0x00	; 0
      002F16 00                    3619 	.db #0x00	; 0
      002F17 00                    3620 	.db #0x00	; 0
      002F18 00                    3621 	.db #0x00	; 0
      002F19 1E                    3622 	.db #0x1e	; 30
      002F1A 1E                    3623 	.db #0x1e	; 30
      002F1B 1E                    3624 	.db #0x1e	; 30
      002F1C 1E                    3625 	.db #0x1e	; 30
      002F1D 00                    3626 	.db #0x00	; 0
      002F1E 00                    3627 	.db #0x00	; 0
      002F1F 00                    3628 	.db #0x00	; 0
      002F20 00                    3629 	.db #0x00	; 0
      002F21 00                    3630 	.db #0x00	; 0
      002F22 00                    3631 	.db #0x00	; 0
      002F23 00                    3632 	.db #0x00	; 0
      002F24 00                    3633 	.db #0x00	; 0
      002F25 00                    3634 	.db #0x00	; 0
      002F26 00                    3635 	.db #0x00	; 0
      002F27                       3636 __xinit__initial:
      002F27 F5 26 80              3637 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3638 	.area CABS    (ABS,CODE)
