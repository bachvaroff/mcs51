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
      00200B 02 21 5D         [24]  372 	ljmp	_timer0_intr
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
      00200E 02 23 2B         [24]  428 	ljmp	_main
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
      0020C2 E5 99            [12]  479 	mov	a, sbuf
      0020C4 C2 98            [12]  480 	clr	ri
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
                                    507 ;	disp.c:95: __endasm;
      0020D1 00               [12]  508 	nop
      0020D2 00               [12]  509 	nop
      0020D3 00               [12]  510 	nop
                                    511 ;	disp.c:97: P2 = GPO_BASE_H;
      0020D4 75 A0 F0         [24]  512 	mov	_P2,#0xf0
                                    513 ;	disp.c:99: CLEAR_GPO;
      0020D7 78 06            [12]  514 	mov	r0,#(_gpo + 0x0006)
      0020D9 74 3F            [12]  515 	mov	a,#0x3f
      0020DB F2               [24]  516 	movx	@r0,a
      0020DC 78 00            [12]  517 	mov	r0,#_gpo
      0020DE E4               [12]  518 	clr	a
      0020DF F2               [24]  519 	movx	@r0,a
      0020E0 78 01            [12]  520 	mov	r0,#(_gpo + 0x0001)
      0020E2 F2               [24]  521 	movx	@r0,a
      0020E3 78 02            [12]  522 	mov	r0,#(_gpo + 0x0002)
      0020E5 F2               [24]  523 	movx	@r0,a
      0020E6 78 03            [12]  524 	mov	r0,#(_gpo + 0x0003)
      0020E8 F2               [24]  525 	movx	@r0,a
      0020E9 78 04            [12]  526 	mov	r0,#(_gpo + 0x0004)
      0020EB F2               [24]  527 	movx	@r0,a
      0020EC 78 05            [12]  528 	mov	r0,#(_gpo + 0x0005)
      0020EE F2               [24]  529 	movx	@r0,a
                                    530 ;	disp.c:101: return;
                                    531 ;	disp.c:102: }
      0020EF 22               [24]  532 	ret
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'clear_gpo'
                                    535 ;------------------------------------------------------------
                                    536 ;	disp.c:104: void clear_gpo(void) {
                                    537 ;	-----------------------------------------
                                    538 ;	 function clear_gpo
                                    539 ;	-----------------------------------------
      0020F0                        540 _clear_gpo:
                                    541 ;	disp.c:105: CLEAR_GPO;
      0020F0 78 06            [12]  542 	mov	r0,#(_gpo + 0x0006)
      0020F2 74 3F            [12]  543 	mov	a,#0x3f
      0020F4 F2               [24]  544 	movx	@r0,a
      0020F5 78 00            [12]  545 	mov	r0,#_gpo
      0020F7 E4               [12]  546 	clr	a
      0020F8 F2               [24]  547 	movx	@r0,a
      0020F9 78 01            [12]  548 	mov	r0,#(_gpo + 0x0001)
      0020FB F2               [24]  549 	movx	@r0,a
      0020FC 78 02            [12]  550 	mov	r0,#(_gpo + 0x0002)
      0020FE F2               [24]  551 	movx	@r0,a
      0020FF 78 03            [12]  552 	mov	r0,#(_gpo + 0x0003)
      002101 F2               [24]  553 	movx	@r0,a
      002102 78 04            [12]  554 	mov	r0,#(_gpo + 0x0004)
      002104 F2               [24]  555 	movx	@r0,a
      002105 78 05            [12]  556 	mov	r0,#(_gpo + 0x0005)
      002107 F2               [24]  557 	movx	@r0,a
                                    558 ;	disp.c:107: return;
                                    559 ;	disp.c:108: }
      002108 22               [24]  560 	ret
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'init_intr'
                                    563 ;------------------------------------------------------------
                                    564 ;	disp.c:110: void init_intr(void) {
                                    565 ;	-----------------------------------------
                                    566 ;	 function init_intr
                                    567 ;	-----------------------------------------
      002109                        568 _init_intr:
                                    569 ;	disp.c:111: TR0 = 0;
                                    570 ;	assignBit
      002109 C2 8C            [12]  571 	clr	_TR0
                                    572 ;	disp.c:112: TR1 = 0;
                                    573 ;	assignBit
      00210B C2 8E            [12]  574 	clr	_TR1
                                    575 ;	disp.c:113: ET0 = 1;
                                    576 ;	assignBit
      00210D D2 A9            [12]  577 	setb	_ET0
                                    578 ;	disp.c:114: ET1 = 0;
                                    579 ;	assignBit
      00210F C2 AB            [12]  580 	clr	_ET1
                                    581 ;	disp.c:115: EA = 1;
                                    582 ;	assignBit
      002111 D2 AF            [12]  583 	setb	_EA
                                    584 ;	disp.c:117: return;
                                    585 ;	disp.c:118: }
      002113 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'init_timer0'
                                    589 ;------------------------------------------------------------
                                    590 ;	disp.c:120: void init_timer0(void) {
                                    591 ;	-----------------------------------------
                                    592 ;	 function init_timer0
                                    593 ;	-----------------------------------------
      002114                        594 _init_timer0:
                                    595 ;	disp.c:121: TR0 = 0;
                                    596 ;	assignBit
      002114 C2 8C            [12]  597 	clr	_TR0
                                    598 ;	disp.c:122: TMOD |= 0x01;
      002116 43 89 01         [24]  599 	orl	_TMOD,#0x01
                                    600 ;	disp.c:123: TH0 = TR0_COUNT >> 8;
      002119 75 8C F8         [24]  601 	mov	_TH0,#0xf8
                                    602 ;	disp.c:124: TL0 = TR0_COUNT & 0xffu;
      00211C 75 8A 00         [24]  603 	mov	_TL0,#0x00
                                    604 ;	disp.c:126: return;
                                    605 ;	disp.c:127: }
      00211F 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'init_timer1'
                                    609 ;------------------------------------------------------------
                                    610 ;	disp.c:129: void init_timer1(void) {
                                    611 ;	-----------------------------------------
                                    612 ;	 function init_timer1
                                    613 ;	-----------------------------------------
      002120                        614 _init_timer1:
                                    615 ;	disp.c:130: TR1 = 0;
                                    616 ;	assignBit
      002120 C2 8E            [12]  617 	clr	_TR1
                                    618 ;	disp.c:131: TMOD |= 0x10;
      002122 43 89 10         [24]  619 	orl	_TMOD,#0x10
                                    620 ;	disp.c:132: TH1 = TR1_COUNT_0 >> 8;
      002125 75 8D 00         [24]  621 	mov	_TH1,#0x00
                                    622 ;	disp.c:133: TL1 = TR1_COUNT_0 & 0xffu;
      002128 75 8B 00         [24]  623 	mov	_TL1,#0x00
                                    624 ;	disp.c:135: return;
                                    625 ;	disp.c:136: }
      00212B 22               [24]  626 	ret
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'init_disp'
                                    629 ;------------------------------------------------------------
                                    630 ;	disp.c:138: void init_disp(void) {
                                    631 ;	-----------------------------------------
                                    632 ;	 function init_disp
                                    633 ;	-----------------------------------------
      00212C                        634 _init_disp:
                                    635 ;	disp.c:139: gpo[DISP_COL] = 0u;
      00212C 78 05            [12]  636 	mov	r0,#(_gpo + 0x0005)
      00212E E4               [12]  637 	clr	a
      00212F F2               [24]  638 	movx	@r0,a
                                    639 ;	disp.c:140: gpo[DISP_DATA] = 0u;
      002130 78 04            [12]  640 	mov	r0,#(_gpo + 0x0004)
      002132 F2               [24]  641 	movx	@r0,a
                                    642 ;	disp.c:141: OE = 0x0fu; /* 00_001111 */
      002133 78 3A            [12]  643 	mov	r0,#_OE
      002135 76 0F            [12]  644 	mov	@r0,#0x0f
                                    645 ;	disp.c:142: gpo[GPO_OE] = OE;
      002137 78 06            [12]  646 	mov	r0,#(_gpo + 0x0006)
      002139 74 0F            [12]  647 	mov	a,#0x0f
      00213B F2               [24]  648 	movx	@r0,a
                                    649 ;	disp.c:144: for (column = 0u; column < 8u; column++)
      00213C 78 39            [12]  650 	mov	r0,#_column
      00213E 76 00            [12]  651 	mov	@r0,#0x00
      002140                        652 00103$:
      002140 78 39            [12]  653 	mov	r0,#_column
      002142 B6 08 00         [24]  654 	cjne	@r0,#0x08,00115$
      002145                        655 00115$:
      002145 50 11            [24]  656 	jnc	00101$
                                    657 ;	disp.c:145: ddata[column] = 0u;
      002147 78 39            [12]  658 	mov	r0,#_column
      002149 E6               [12]  659 	mov	a,@r0
      00214A 24 31            [12]  660 	add	a,#_ddata
      00214C F8               [12]  661 	mov	r0,a
      00214D 76 00            [12]  662 	mov	@r0,#0x00
                                    663 ;	disp.c:144: for (column = 0u; column < 8u; column++)
      00214F 78 39            [12]  664 	mov	r0,#_column
      002151 E6               [12]  665 	mov	a,@r0
      002152 78 39            [12]  666 	mov	r0,#_column
      002154 04               [12]  667 	inc	a
      002155 F6               [12]  668 	mov	@r0,a
      002156 80 E8            [24]  669 	sjmp	00103$
      002158                        670 00101$:
                                    671 ;	disp.c:146: column = 0u;
      002158 78 39            [12]  672 	mov	r0,#_column
      00215A 76 00            [12]  673 	mov	@r0,#0x00
                                    674 ;	disp.c:148: return;
                                    675 ;	disp.c:149: }
      00215C 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'timer0_intr'
                                    679 ;------------------------------------------------------------
                                    680 ;t                         Allocated to registers r7 
                                    681 ;------------------------------------------------------------
                                    682 ;	disp.c:151: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    683 ;	-----------------------------------------
                                    684 ;	 function timer0_intr
                                    685 ;	-----------------------------------------
      00215D                        686 _timer0_intr:
                           00000F   687 	ar7 = 0x0f
                           00000E   688 	ar6 = 0x0e
                           00000D   689 	ar5 = 0x0d
                           00000C   690 	ar4 = 0x0c
                           00000B   691 	ar3 = 0x0b
                           00000A   692 	ar2 = 0x0a
                           000009   693 	ar1 = 0x09
                           000008   694 	ar0 = 0x08
      00215D C0 E0            [24]  695 	push	acc
      00215F C0 D0            [24]  696 	push	psw
      002161 75 D0 08         [24]  697 	mov	psw,#0x08
                                    698 ;	disp.c:154: t = column & 7u;
      002164 78 39            [12]  699 	mov	r0,#_column
      002166 86 0F            [24]  700 	mov	ar7,@r0
      002168 53 0F 07         [24]  701 	anl	ar7,#0x07
                                    702 ;	disp.c:155: gpo[DISP_COL] = 0u;
      00216B 78 05            [12]  703 	mov	r0,#(_gpo + 0x0005)
      00216D E4               [12]  704 	clr	a
      00216E F2               [24]  705 	movx	@r0,a
                                    706 ;	disp.c:156: gpo[DISP_DATA] = ddata[t];
      00216F EF               [12]  707 	mov	a,r7
      002170 24 31            [12]  708 	add	a,#_ddata
      002172 F9               [12]  709 	mov	r1,a
      002173 87 0E            [24]  710 	mov	ar6,@r1
      002175 78 04            [12]  711 	mov	r0,#(_gpo + 0x0004)
      002177 EE               [12]  712 	mov	a,r6
      002178 F2               [24]  713 	movx	@r0,a
                                    714 ;	disp.c:157: gpo[DISP_COL] = dsdcol[t];
      002179 EF               [12]  715 	mov	a,r7
      00217A 24 21            [12]  716 	add	a,#_dsdcol
      00217C F9               [12]  717 	mov	r1,a
      00217D 87 0F            [24]  718 	mov	ar7,@r1
      00217F 78 05            [12]  719 	mov	r0,#(_gpo + 0x0005)
      002181 EF               [12]  720 	mov	a,r7
      002182 F2               [24]  721 	movx	@r0,a
                                    722 ;	disp.c:158: column++;
      002183 78 39            [12]  723 	mov	r0,#_column
      002185 E6               [12]  724 	mov	a,@r0
      002186 78 39            [12]  725 	mov	r0,#_column
      002188 04               [12]  726 	inc	a
      002189 F6               [12]  727 	mov	@r0,a
                                    728 ;	disp.c:160: TR0 = 0;
                                    729 ;	assignBit
      00218A C2 8C            [12]  730 	clr	_TR0
                                    731 ;	disp.c:161: TH0 = TR0_COUNT >> 8;
      00218C 75 8C F8         [24]  732 	mov	_TH0,#0xf8
                                    733 ;	disp.c:162: TL0 = TR0_COUNT & 0xffu;
      00218F 75 8A 00         [24]  734 	mov	_TL0,#0x00
                                    735 ;	disp.c:163: TR0 = 1;
                                    736 ;	assignBit
      002192 D2 8C            [12]  737 	setb	_TR0
                                    738 ;	disp.c:165: return;
                                    739 ;	disp.c:166: }
      002194 D0 D0            [24]  740 	pop	psw
      002196 D0 E0            [24]  741 	pop	acc
      002198 32               [24]  742 	reti
                                    743 ;	eliminated unneeded push/pop dpl
                                    744 ;	eliminated unneeded push/pop dph
                                    745 ;	eliminated unneeded push/pop b
                                    746 ;------------------------------------------------------------
                                    747 ;Allocation info for local variables in function 'scroll'
                                    748 ;------------------------------------------------------------
                                    749 ;msg                       Allocated to stack - _bp +1
                                    750 ;symbol                    Allocated to stack - _bp +5
                                    751 ;bit                       Allocated to stack - _bp +6
                                    752 ;i                         Allocated to stack - _bp +7
                                    753 ;j                         Allocated to registers r4 
                                    754 ;r                         Allocated to registers r3 r4 
                                    755 ;__3932160002              Allocated to registers 
                                    756 ;s                         Allocated to registers r6 r4 r3 
                                    757 ;sloc0                     Allocated to stack - _bp +4
                                    758 ;sloc1                     Allocated to stack - _bp +18
                                    759 ;sloc2                     Allocated to stack - _bp +19
                                    760 ;------------------------------------------------------------
                                    761 ;	disp.c:193: int scroll(uint8_t *msg) {
                                    762 ;	-----------------------------------------
                                    763 ;	 function scroll
                                    764 ;	-----------------------------------------
      002199                        765 _scroll:
                           000007   766 	ar7 = 0x07
                           000006   767 	ar6 = 0x06
                           000005   768 	ar5 = 0x05
                           000004   769 	ar4 = 0x04
                           000003   770 	ar3 = 0x03
                           000002   771 	ar2 = 0x02
                           000001   772 	ar1 = 0x01
                           000000   773 	ar0 = 0x00
      002199 C0 10            [24]  774 	push	_bp
      00219B 85 81 10         [24]  775 	mov	_bp,sp
      00219E C0 82            [24]  776 	push	dpl
      0021A0 C0 83            [24]  777 	push	dph
      0021A2 C0 F0            [24]  778 	push	b
      0021A4 E5 81            [12]  779 	mov	a,sp
      0021A6 24 05            [12]  780 	add	a,#0x05
      0021A8 F5 81            [12]  781 	mov	sp,a
                                    782 ;	disp.c:199: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0021AA E5 10            [12]  783 	mov	a,_bp
      0021AC 24 06            [12]  784 	add	a,#0x06
      0021AE F8               [12]  785 	mov	r0,a
      0021AF 76 00            [12]  786 	mov	@r0,#0x00
      0021B1 E5 10            [12]  787 	mov	a,_bp
      0021B3 24 07            [12]  788 	add	a,#0x07
      0021B5 F8               [12]  789 	mov	r0,a
      0021B6 E4               [12]  790 	clr	a
      0021B7 F6               [12]  791 	mov	@r0,a
      0021B8 08               [12]  792 	inc	r0
      0021B9 F6               [12]  793 	mov	@r0,a
      0021BA                        794 00136$:
                                    795 ;	disp.c:200: if (!bit) {
      0021BA E5 10            [12]  796 	mov	a,_bp
      0021BC 24 06            [12]  797 	add	a,#0x06
      0021BE F8               [12]  798 	mov	r0,a
      0021BF E6               [12]  799 	mov	a,@r0
      0021C0 70 5B            [24]  800 	jnz	00105$
                                    801 ;	disp.c:201: symbol = msg[i];
      0021C2 A8 10            [24]  802 	mov	r0,_bp
      0021C4 08               [12]  803 	inc	r0
      0021C5 E5 10            [12]  804 	mov	a,_bp
      0021C7 24 07            [12]  805 	add	a,#0x07
      0021C9 F9               [12]  806 	mov	r1,a
      0021CA E7               [12]  807 	mov	a,@r1
      0021CB 26               [12]  808 	add	a,@r0
      0021CC FA               [12]  809 	mov	r2,a
      0021CD 09               [12]  810 	inc	r1
      0021CE E7               [12]  811 	mov	a,@r1
      0021CF 08               [12]  812 	inc	r0
      0021D0 36               [12]  813 	addc	a,@r0
      0021D1 FB               [12]  814 	mov	r3,a
      0021D2 08               [12]  815 	inc	r0
      0021D3 86 04            [24]  816 	mov	ar4,@r0
      0021D5 8A 82            [24]  817 	mov	dpl,r2
      0021D7 8B 83            [24]  818 	mov	dph,r3
      0021D9 8C F0            [24]  819 	mov	b,r4
      0021DB 12 26 7C         [24]  820 	lcall	__gptrget
      0021DE FA               [12]  821 	mov	r2,a
      0021DF E5 10            [12]  822 	mov	a,_bp
      0021E1 24 04            [12]  823 	add	a,#0x04
      0021E3 F8               [12]  824 	mov	r0,a
      0021E4 A6 02            [24]  825 	mov	@r0,ar2
                                    826 ;	disp.c:202: if (!symbol) {
      0021E6 EA               [12]  827 	mov	a,r2
      0021E7 70 23            [24]  828 	jnz	00102$
                                    829 ;	disp.c:203: i = 0u;
      0021E9 E5 10            [12]  830 	mov	a,_bp
      0021EB 24 07            [12]  831 	add	a,#0x07
      0021ED F8               [12]  832 	mov	r0,a
      0021EE E4               [12]  833 	clr	a
      0021EF F6               [12]  834 	mov	@r0,a
      0021F0 08               [12]  835 	inc	r0
      0021F1 F6               [12]  836 	mov	@r0,a
                                    837 ;	disp.c:204: symbol = msg[i];
      0021F2 A8 10            [24]  838 	mov	r0,_bp
      0021F4 08               [12]  839 	inc	r0
      0021F5 86 82            [24]  840 	mov	dpl,@r0
      0021F7 08               [12]  841 	inc	r0
      0021F8 86 83            [24]  842 	mov	dph,@r0
      0021FA 08               [12]  843 	inc	r0
      0021FB 86 F0            [24]  844 	mov	b,@r0
      0021FD E5 10            [12]  845 	mov	a,_bp
      0021FF 24 04            [12]  846 	add	a,#0x04
      002201 F9               [12]  847 	mov	r1,a
      002202 12 26 7C         [24]  848 	lcall	__gptrget
      002205 F7               [12]  849 	mov	@r1,a
                                    850 ;	disp.c:205: OE = 0x4fu;
      002206 78 3A            [12]  851 	mov	r0,#_OE
      002208 76 4F            [12]  852 	mov	@r0,#0x4f
      00220A 80 04            [24]  853 	sjmp	00103$
      00220C                        854 00102$:
                                    855 ;	disp.c:206: } else OE = 0x8fu;
      00220C 78 3A            [12]  856 	mov	r0,#_OE
      00220E 76 8F            [12]  857 	mov	@r0,#0x8f
      002210                        858 00103$:
                                    859 ;	disp.c:207: i++;
      002210 E5 10            [12]  860 	mov	a,_bp
      002212 24 07            [12]  861 	add	a,#0x07
      002214 F8               [12]  862 	mov	r0,a
      002215 06               [12]  863 	inc	@r0
      002216 B6 00 02         [24]  864 	cjne	@r0,#0x00,00219$
      002219 08               [12]  865 	inc	r0
      00221A 06               [12]  866 	inc	@r0
      00221B                        867 00219$:
      00221B 80 04            [24]  868 	sjmp	00106$
      00221D                        869 00105$:
                                    870 ;	disp.c:208: } else OE = 0x0fu;
      00221D 78 3A            [12]  871 	mov	r0,#_OE
      00221F 76 0F            [12]  872 	mov	@r0,#0x0f
      002221                        873 00106$:
                                    874 ;	disp.c:209: gpo[GPO_OE] = OE;
      002221 78 06            [12]  875 	mov	r0,#(_gpo + 0x0006)
      002223 79 3A            [12]  876 	mov	r1,#_OE
      002225 E7               [12]  877 	mov	a,@r1
      002226 F2               [24]  878 	movx	@r0,a
                                    879 ;	disp.c:211: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      002227 E5 10            [12]  880 	mov	a,_bp
      002229 24 06            [12]  881 	add	a,#0x06
      00222B F8               [12]  882 	mov	r0,a
      00222C E6               [12]  883 	mov	a,@r0
      00222D 24 29            [12]  884 	add	a,#_sddcol
      00222F F9               [12]  885 	mov	r1,a
      002230 E7               [12]  886 	mov	a,@r1
      002231 FB               [12]  887 	mov	r3,a
      002232 54 C0            [12]  888 	anl	a,#0xc0
      002234 60 02            [24]  889 	jz	00221$
      002236 80 6F            [24]  890 	sjmp	00110$
      002238                        891 00221$:
                                    892 ;	disp.c:169: TR1 = 0;
                                    893 ;	assignBit
      002238 C2 8E            [12]  894 	clr	_TR1
                                    895 ;	disp.c:170: TH1 = TR1_COUNT_0 >> 8;
      00223A 75 8D 00         [24]  896 	mov	_TH1,#0x00
                                    897 ;	disp.c:171: TL1 = TR1_COUNT_0 & 0xffu;	
      00223D 75 8B 00         [24]  898 	mov	_TL1,#0x00
                                    899 ;	disp.c:172: TF1 = 0;
                                    900 ;	assignBit
      002240 C2 8F            [12]  901 	clr	_TF1
                                    902 ;	disp.c:173: TR1 = 1;
                                    903 ;	assignBit
      002242 D2 8E            [12]  904 	setb	_TR1
                                    905 ;	disp.c:174: while (!TF1);
      002244                        906 00122$:
                                    907 ;	disp.c:175: TF1 = 0;
                                    908 ;	assignBit
      002244 10 8F 02         [24]  909 	jbc	_TF1,00222$
      002247 80 FB            [24]  910 	sjmp	00122$
      002249                        911 00222$:
                                    912 ;	disp.c:177: TR1 = 0;
                                    913 ;	assignBit
      002249 C2 8E            [12]  914 	clr	_TR1
                                    915 ;	disp.c:178: TH1 = TR1_COUNT_1 >> 8;
      00224B 75 8D C0         [24]  916 	mov	_TH1,#0xc0
                                    917 ;	disp.c:179: TL1 = TR1_COUNT_1 & 0xffu;	
      00224E 75 8B 00         [24]  918 	mov	_TL1,#0x00
                                    919 ;	disp.c:180: TF1 = 0;
                                    920 ;	assignBit
      002251 C2 8F            [12]  921 	clr	_TF1
                                    922 ;	disp.c:181: TR1 = 1;
                                    923 ;	assignBit
      002253 D2 8E            [12]  924 	setb	_TR1
                                    925 ;	disp.c:182: while (!TF1);
      002255                        926 00125$:
                                    927 ;	disp.c:183: TF1 = 0;
                                    928 ;	assignBit
      002255 10 8F 02         [24]  929 	jbc	_TF1,00223$
      002258 80 FB            [24]  930 	sjmp	00125$
      00225A                        931 00223$:
                                    932 ;	disp.c:185: TR1 = 0;
                                    933 ;	assignBit
      00225A C2 8E            [12]  934 	clr	_TR1
                                    935 ;	disp.c:214: for (j = 0u; j < 8u; j++)
      00225C E5 10            [12]  936 	mov	a,_bp
      00225E 24 04            [12]  937 	add	a,#0x04
      002260 F8               [12]  938 	mov	r0,a
      002261 E6               [12]  939 	mov	a,@r0
      002262 75 F0 08         [24]  940 	mov	b,#0x08
      002265 A4               [48]  941 	mul	ab
      002266 24 01            [12]  942 	add	a,#__ft_font6x8
      002268 FA               [12]  943 	mov	r2,a
      002269 74 81            [12]  944 	mov	a,#(__ft_font6x8 >> 8)
      00226B 35 F0            [12]  945 	addc	a,b
      00226D FB               [12]  946 	mov	r3,a
      00226E E5 10            [12]  947 	mov	a,_bp
      002270 24 06            [12]  948 	add	a,#0x06
      002272 F8               [12]  949 	mov	r0,a
      002273 74 07            [12]  950 	mov	a,#0x07
      002275 C3               [12]  951 	clr	c
      002276 96               [12]  952 	subb	a,@r0
      002277 FD               [12]  953 	mov	r5,a
      002278 7C 00            [12]  954 	mov	r4,#0x00
      00227A                        955 00131$:
                                    956 ;	disp.c:215: ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00227A EC               [12]  957 	mov	a,r4
      00227B 24 31            [12]  958 	add	a,#_ddata
      00227D F9               [12]  959 	mov	r1,a
      00227E EC               [12]  960 	mov	a,r4
      00227F 2A               [12]  961 	add	a,r2
      002280 F5 82            [12]  962 	mov	dpl,a
      002282 E4               [12]  963 	clr	a
      002283 3B               [12]  964 	addc	a,r3
      002284 F5 83            [12]  965 	mov	dph,a
      002286 E0               [24]  966 	movx	a,@dptr
      002287 FF               [12]  967 	mov	r7,a
      002288 8D F0            [24]  968 	mov	b,r5
      00228A 05 F0            [12]  969 	inc	b
      00228C EF               [12]  970 	mov	a,r7
      00228D 80 02            [24]  971 	sjmp	00226$
      00228F                        972 00224$:
      00228F 25 E0            [12]  973 	add	a,acc
      002291                        974 00226$:
      002291 D5 F0 FB         [24]  975 	djnz	b,00224$
      002294 54 80            [12]  976 	anl	a,#0x80
      002296 FF               [12]  977 	mov	r7,a
      002297 EC               [12]  978 	mov	a,r4
      002298 24 31            [12]  979 	add	a,#_ddata
      00229A F8               [12]  980 	mov	r0,a
      00229B E6               [12]  981 	mov	a,@r0
      00229C C3               [12]  982 	clr	c
      00229D 13               [12]  983 	rrc	a
      00229E FE               [12]  984 	mov	r6,a
      00229F 4F               [12]  985 	orl	a,r7
      0022A0 F7               [12]  986 	mov	@r1,a
                                    987 ;	disp.c:214: for (j = 0u; j < 8u; j++)
      0022A1 0C               [12]  988 	inc	r4
      0022A2 BC 08 00         [24]  989 	cjne	r4,#0x08,00227$
      0022A5                        990 00227$:
      0022A5 40 D3            [24]  991 	jc	00131$
                                    992 ;	disp.c:217: skip_shift:
      0022A7                        993 00110$:
                                    994 ;	disp.c:218: if ((r = getchar_poll()) >= 0) {
      0022A7 12 20 BB         [24]  995 	lcall	_getchar_poll
      0022AA AB 82            [24]  996 	mov	r3,dpl
      0022AC AC 83            [24]  997 	mov	r4,dph
      0022AE 8B 07            [24]  998 	mov	ar7,r3
      0022B0 EC               [12]  999 	mov	a,r4
      0022B1 FE               [12] 1000 	mov	r6,a
      0022B2 20 E7 58         [24] 1001 	jb	acc.7,00137$
                                   1002 ;	disp.c:219: r = toupper(r);
      0022B5 8F 82            [24] 1003 	mov	dpl,r7
      0022B7 8E 83            [24] 1004 	mov	dph,r6
      0022B9 12 25 9E         [24] 1005 	lcall	_toupper
      0022BC AB 82            [24] 1006 	mov	r3,dpl
      0022BE AC 83            [24] 1007 	mov	r4,dph
                                   1008 ;	disp.c:220: if ((r == (int)'P') || (r == (int)' ')) {
      0022C0 BB 50 05         [24] 1009 	cjne	r3,#0x50,00230$
      0022C3 BC 00 02         [24] 1010 	cjne	r4,#0x00,00230$
      0022C6 80 06            [24] 1011 	sjmp	00115$
      0022C8                       1012 00230$:
      0022C8 BB 20 2A         [24] 1013 	cjne	r3,#0x20,00116$
      0022CB BC 00 27         [24] 1014 	cjne	r4,#0x00,00116$
      0022CE                       1015 00115$:
                                   1016 ;	disp.c:221: printstr("PAUSE\r\n");
      0022CE 7E B7            [12] 1017 	mov	r6,#___str_0
      0022D0 7C 26            [12] 1018 	mov	r4,#(___str_0 >> 8)
      0022D2 7B 80            [12] 1019 	mov	r3,#0x80
                                   1020 ;	disp.c:48: return;
      0022D4                       1021 00134$:
                                   1022 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0022D4 8E 82            [24] 1023 	mov	dpl,r6
      0022D6 8C 83            [24] 1024 	mov	dph,r4
      0022D8 8B F0            [24] 1025 	mov	b,r3
      0022DA 12 26 7C         [24] 1026 	lcall	__gptrget
      0022DD FD               [12] 1027 	mov	r5,a
      0022DE 60 10            [24] 1028 	jz	00130$
      0022E0 7F 00            [12] 1029 	mov	r7,#0x00
      0022E2 8D 82            [24] 1030 	mov	dpl,r5
      0022E4 8F 83            [24] 1031 	mov	dph,r7
      0022E6 12 20 AD         [24] 1032 	lcall	_putchar
      0022E9 0E               [12] 1033 	inc	r6
                                   1034 ;	disp.c:221: printstr("PAUSE\r\n");
      0022EA BE 00 E7         [24] 1035 	cjne	r6,#0x00,00134$
      0022ED 0C               [12] 1036 	inc	r4
      0022EE 80 E4            [24] 1037 	sjmp	00134$
      0022F0                       1038 00130$:
                                   1039 ;	disp.c:222: (void)getchar();
      0022F0 12 20 B2         [24] 1040 	lcall	_getchar
      0022F3 80 18            [24] 1041 	sjmp	00137$
      0022F5                       1042 00116$:
                                   1043 ;	disp.c:223: } else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      0022F5 BB 54 05         [24] 1044 	cjne	r3,#0x54,00235$
      0022F8 BC 00 02         [24] 1045 	cjne	r4,#0x00,00235$
      0022FB 80 24            [24] 1046 	sjmp	00121$
      0022FD                       1047 00235$:
      0022FD BB 52 05         [24] 1048 	cjne	r3,#0x52,00236$
      002300 BC 00 02         [24] 1049 	cjne	r4,#0x00,00236$
      002303 80 1C            [24] 1050 	sjmp	00121$
      002305                       1051 00236$:
      002305 BB 4C 05         [24] 1052 	cjne	r3,#0x4c,00237$
      002308 BC 00 02         [24] 1053 	cjne	r4,#0x00,00237$
      00230B 80 14            [24] 1054 	sjmp	00121$
      00230D                       1055 00237$:
      00230D                       1056 00137$:
                                   1057 ;	disp.c:199: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      00230D E5 10            [12] 1058 	mov	a,_bp
      00230F 24 06            [12] 1059 	add	a,#0x06
      002311 F8               [12] 1060 	mov	r0,a
      002312 E6               [12] 1061 	mov	a,@r0
      002313 04               [12] 1062 	inc	a
      002314 FF               [12] 1063 	mov	r7,a
      002315 E5 10            [12] 1064 	mov	a,_bp
      002317 24 06            [12] 1065 	add	a,#0x06
      002319 F8               [12] 1066 	mov	r0,a
      00231A 74 07            [12] 1067 	mov	a,#0x07
      00231C 5F               [12] 1068 	anl	a,r7
      00231D F6               [12] 1069 	mov	@r0,a
      00231E 02 21 BA         [24] 1070 	ljmp	00136$
      002321                       1071 00121$:
                                   1072 ;	disp.c:227: return r;
      002321 8B 82            [24] 1073 	mov	dpl,r3
      002323 8C 83            [24] 1074 	mov	dph,r4
                                   1075 ;	disp.c:228: }
      002325 85 10 81         [24] 1076 	mov	sp,_bp
      002328 D0 10            [24] 1077 	pop	_bp
      00232A 22               [24] 1078 	ret
                                   1079 ;------------------------------------------------------------
                                   1080 ;Allocation info for local variables in function 'main'
                                   1081 ;------------------------------------------------------------
                                   1082 ;j                         Allocated to stack - _bp +1
                                   1083 ;c                         Allocated to registers r7 r6 
                                   1084 ;__1310720004              Allocated to registers 
                                   1085 ;s                         Allocated to registers r5 r6 r7 
                                   1086 ;__1966080006              Allocated to registers 
                                   1087 ;s                         Allocated to registers r5 r6 r7 
                                   1088 ;__1966080008              Allocated to registers 
                                   1089 ;s                         Allocated to registers r5 r6 r7 
                                   1090 ;__1966080010              Allocated to registers 
                                   1091 ;s                         Allocated to registers r5 r6 r7 
                                   1092 ;__3276800012              Allocated to registers 
                                   1093 ;s                         Allocated to registers r7 r6 r4 
                                   1094 ;__3276800014              Allocated to registers 
                                   1095 ;s                         Allocated to registers r7 r6 r4 
                                   1096 ;__3276800016              Allocated to registers 
                                   1097 ;s                         Allocated to registers r7 r6 r4 
                                   1098 ;__3276800018              Allocated to registers 
                                   1099 ;s                         Allocated to registers r7 r6 r4 
                                   1100 ;__3276800020              Allocated to registers 
                                   1101 ;s                         Allocated to registers r7 r6 r4 
                                   1102 ;__1310720022              Allocated to registers 
                                   1103 ;s                         Allocated to registers r5 r6 r7 
                                   1104 ;sloc0                     Allocated to stack - _bp +65
                                   1105 ;------------------------------------------------------------
                                   1106 ;	disp.c:230: void main(void) {
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function main
                                   1109 ;	-----------------------------------------
      00232B                       1110 _main:
      00232B C0 10            [24] 1111 	push	_bp
      00232D 85 81 10         [24] 1112 	mov	_bp,sp
      002330 05 81            [12] 1113 	inc	sp
      002332 05 81            [12] 1114 	inc	sp
                                   1115 ;	disp.c:234: init_gpo();
      002334 12 20 CF         [24] 1116 	lcall	_init_gpo
                                   1117 ;	disp.c:235: clear_gpo();
      002337 12 20 F0         [24] 1118 	lcall	_clear_gpo
                                   1119 ;	disp.c:236: init_disp();
      00233A 12 21 2C         [24] 1120 	lcall	_init_disp
                                   1121 ;	disp.c:237: init_timer0();
      00233D 12 21 14         [24] 1122 	lcall	_init_timer0
                                   1123 ;	disp.c:238: init_timer1();
      002340 12 21 20         [24] 1124 	lcall	_init_timer1
                                   1125 ;	disp.c:239: init_intr();
      002343 12 21 09         [24] 1126 	lcall	_init_intr
                                   1127 ;	disp.c:240: TR0 = 1;
                                   1128 ;	assignBit
      002346 D2 8C            [12] 1129 	setb	_TR0
                                   1130 ;	disp.c:242: reset:
      002348                       1131 00101$:
                                   1132 ;	disp.c:243: init_disp();
      002348 12 21 2C         [24] 1133 	lcall	_init_disp
                                   1134 ;	disp.c:244: printstr("RESET\r\n");
      00234B 7D BF            [12] 1135 	mov	r5,#___str_1
      00234D 7E 26            [12] 1136 	mov	r6,#(___str_1 >> 8)
      00234F 7F 80            [12] 1137 	mov	r7,#0x80
                                   1138 ;	disp.c:48: return;
      002351                       1139 00146$:
                                   1140 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002351 8D 82            [24] 1141 	mov	dpl,r5
      002353 8E 83            [24] 1142 	mov	dph,r6
      002355 8F F0            [24] 1143 	mov	b,r7
      002357 12 26 7C         [24] 1144 	lcall	__gptrget
      00235A FC               [12] 1145 	mov	r4,a
      00235B 60 10            [24] 1146 	jz	00126$
      00235D 7B 00            [12] 1147 	mov	r3,#0x00
      00235F 8C 82            [24] 1148 	mov	dpl,r4
      002361 8B 83            [24] 1149 	mov	dph,r3
      002363 12 20 AD         [24] 1150 	lcall	_putchar
      002366 0D               [12] 1151 	inc	r5
                                   1152 ;	disp.c:244: printstr("RESET\r\n");
      002367 BD 00 E7         [24] 1153 	cjne	r5,#0x00,00146$
      00236A 0E               [12] 1154 	inc	r6
      00236B 80 E4            [24] 1155 	sjmp	00146$
      00236D                       1156 00126$:
                                   1157 ;	disp.c:245: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      00236D E4               [12] 1158 	clr	a
      00236E C0 E0            [24] 1159 	push	acc
      002370 04               [12] 1160 	inc	a
      002371 C0 E0            [24] 1161 	push	acc
      002373 90 89 01         [24] 1162 	mov	dptr,#_initial
      002376 E0               [24] 1163 	movx	a,@dptr
      002377 C0 E0            [24] 1164 	push	acc
      002379 A3               [24] 1165 	inc	dptr
      00237A E0               [24] 1166 	movx	a,@dptr
      00237B C0 E0            [24] 1167 	push	acc
      00237D A3               [24] 1168 	inc	dptr
      00237E E0               [24] 1169 	movx	a,@dptr
      00237F C0 E0            [24] 1170 	push	acc
      002381 90 80 00         [24] 1171 	mov	dptr,#_buf
      002384 75 F0 00         [24] 1172 	mov	b,#0x00
      002387 12 25 C5         [24] 1173 	lcall	_strncpy
      00238A E5 81            [12] 1174 	mov	a,sp
      00238C 24 FB            [12] 1175 	add	a,#0xfb
      00238E F5 81            [12] 1176 	mov	sp,a
                                   1177 ;	disp.c:246: buf[sizeof (buf) - 1u] = 0u;
      002390 90 81 00         [24] 1178 	mov	dptr,#(_buf + 0x0100)
      002393 E4               [12] 1179 	clr	a
      002394 F0               [24] 1180 	movx	@dptr,a
                                   1181 ;	disp.c:248: while (1) {
      002395                       1182 00122$:
                                   1183 ;	disp.c:249: printstr("P SP L ENT S R T START MSG \"");
      002395 7D C7            [12] 1184 	mov	r5,#___str_2
      002397 7E 26            [12] 1185 	mov	r6,#(___str_2 >> 8)
      002399 7F 80            [12] 1186 	mov	r7,#0x80
                                   1187 ;	disp.c:48: return;
      00239B                       1188 00149$:
                                   1189 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00239B 8D 82            [24] 1190 	mov	dpl,r5
      00239D 8E 83            [24] 1191 	mov	dph,r6
      00239F 8F F0            [24] 1192 	mov	b,r7
      0023A1 12 26 7C         [24] 1193 	lcall	__gptrget
      0023A4 FC               [12] 1194 	mov	r4,a
      0023A5 60 10            [24] 1195 	jz	00128$
      0023A7 7B 00            [12] 1196 	mov	r3,#0x00
      0023A9 8C 82            [24] 1197 	mov	dpl,r4
      0023AB 8B 83            [24] 1198 	mov	dph,r3
      0023AD 12 20 AD         [24] 1199 	lcall	_putchar
      0023B0 0D               [12] 1200 	inc	r5
                                   1201 ;	disp.c:249: printstr("P SP L ENT S R T START MSG \"");
      0023B1 BD 00 E7         [24] 1202 	cjne	r5,#0x00,00149$
      0023B4 0E               [12] 1203 	inc	r6
      0023B5 80 E4            [24] 1204 	sjmp	00149$
      0023B7                       1205 00128$:
                                   1206 ;	disp.c:250: printstr((char *)buf);
      0023B7 7D 00            [12] 1207 	mov	r5,#_buf
      0023B9 7E 80            [12] 1208 	mov	r6,#(_buf >> 8)
      0023BB 7F 00            [12] 1209 	mov	r7,#0x00
                                   1210 ;	disp.c:48: return;
      0023BD                       1211 00152$:
                                   1212 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023BD 8D 82            [24] 1213 	mov	dpl,r5
      0023BF 8E 83            [24] 1214 	mov	dph,r6
      0023C1 8F F0            [24] 1215 	mov	b,r7
      0023C3 12 26 7C         [24] 1216 	lcall	__gptrget
      0023C6 FC               [12] 1217 	mov	r4,a
      0023C7 60 10            [24] 1218 	jz	00130$
      0023C9 7B 00            [12] 1219 	mov	r3,#0x00
      0023CB 8C 82            [24] 1220 	mov	dpl,r4
      0023CD 8B 83            [24] 1221 	mov	dph,r3
      0023CF 12 20 AD         [24] 1222 	lcall	_putchar
      0023D2 0D               [12] 1223 	inc	r5
                                   1224 ;	disp.c:250: printstr((char *)buf);
      0023D3 BD 00 E7         [24] 1225 	cjne	r5,#0x00,00152$
      0023D6 0E               [12] 1226 	inc	r6
      0023D7 80 E4            [24] 1227 	sjmp	00152$
      0023D9                       1228 00130$:
                                   1229 ;	disp.c:251: printstr("\"\r\n");
      0023D9 7D E4            [12] 1230 	mov	r5,#___str_3
      0023DB 7E 26            [12] 1231 	mov	r6,#(___str_3 >> 8)
      0023DD 7F 80            [12] 1232 	mov	r7,#0x80
                                   1233 ;	disp.c:48: return;
      0023DF                       1234 00155$:
                                   1235 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023DF 8D 82            [24] 1236 	mov	dpl,r5
      0023E1 8E 83            [24] 1237 	mov	dph,r6
      0023E3 8F F0            [24] 1238 	mov	b,r7
      0023E5 12 26 7C         [24] 1239 	lcall	__gptrget
      0023E8 FC               [12] 1240 	mov	r4,a
      0023E9 60 10            [24] 1241 	jz	00132$
      0023EB 7B 00            [12] 1242 	mov	r3,#0x00
      0023ED 8C 82            [24] 1243 	mov	dpl,r4
      0023EF 8B 83            [24] 1244 	mov	dph,r3
      0023F1 12 20 AD         [24] 1245 	lcall	_putchar
      0023F4 0D               [12] 1246 	inc	r5
                                   1247 ;	disp.c:251: printstr("\"\r\n");
      0023F5 BD 00 E7         [24] 1248 	cjne	r5,#0x00,00155$
      0023F8 0E               [12] 1249 	inc	r6
      0023F9 80 E4            [24] 1250 	sjmp	00155$
      0023FB                       1251 00132$:
                                   1252 ;	disp.c:253: c = scroll(buf);
      0023FB 90 80 00         [24] 1253 	mov	dptr,#_buf
      0023FE 75 F0 00         [24] 1254 	mov	b,#0x00
      002401 12 21 99         [24] 1255 	lcall	_scroll
      002404 AE 82            [24] 1256 	mov	r6,dpl
      002406 AF 83            [24] 1257 	mov	r7,dph
                                   1258 ;	disp.c:255: while (1) {
      002408                       1259 00119$:
                                   1260 ;	disp.c:256: if (c == (int)'T') goto term;
      002408 BE 54 06         [24] 1261 	cjne	r6,#0x54,00337$
      00240B BF 00 03         [24] 1262 	cjne	r7,#0x00,00337$
      00240E 02 25 6B         [24] 1263 	ljmp	00124$
      002411                       1264 00337$:
                                   1265 ;	disp.c:257: else if (c == (int)'R') goto reset;
      002411 BE 52 06         [24] 1266 	cjne	r6,#0x52,00338$
      002414 BF 00 03         [24] 1267 	cjne	r7,#0x00,00338$
      002417 02 23 48         [24] 1268 	ljmp	00101$
      00241A                       1269 00338$:
                                   1270 ;	disp.c:258: else if (c == (int)'L') {
      00241A BE 4C 05         [24] 1271 	cjne	r6,#0x4c,00339$
      00241D BF 00 02         [24] 1272 	cjne	r7,#0x00,00339$
      002420 80 03            [24] 1273 	sjmp	00340$
      002422                       1274 00339$:
      002422 02 25 55         [24] 1275 	ljmp	00110$
      002425                       1276 00340$:
                                   1277 ;	disp.c:259: init_disp();
      002425 12 21 2C         [24] 1278 	lcall	_init_disp
                                   1279 ;	disp.c:260: printstr("LOAD ");
      002428 7F E8            [12] 1280 	mov	r7,#___str_4
      00242A 7E 26            [12] 1281 	mov	r6,#(___str_4 >> 8)
      00242C 7C 80            [12] 1282 	mov	r4,#0x80
                                   1283 ;	disp.c:48: return;
      00242E                       1284 00158$:
                                   1285 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00242E 8F 82            [24] 1286 	mov	dpl,r7
      002430 8E 83            [24] 1287 	mov	dph,r6
      002432 8C F0            [24] 1288 	mov	b,r4
      002434 12 26 7C         [24] 1289 	lcall	__gptrget
      002437 FA               [12] 1290 	mov	r2,a
      002438 60 10            [24] 1291 	jz	00134$
      00243A 7D 00            [12] 1292 	mov	r5,#0x00
      00243C 8A 82            [24] 1293 	mov	dpl,r2
      00243E 8D 83            [24] 1294 	mov	dph,r5
      002440 12 20 AD         [24] 1295 	lcall	_putchar
      002443 0F               [12] 1296 	inc	r7
                                   1297 ;	disp.c:260: printstr("LOAD ");
      002444 BF 00 E7         [24] 1298 	cjne	r7,#0x00,00158$
      002447 0E               [12] 1299 	inc	r6
      002448 80 E4            [24] 1300 	sjmp	00158$
      00244A                       1301 00134$:
                                   1302 ;	disp.c:261: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00244A 7C 00            [12] 1303 	mov	r4,#0x00
      00244C 7D 00            [12] 1304 	mov	r5,#0x00
      00244E A8 10            [24] 1305 	mov	r0,_bp
      002450 08               [12] 1306 	inc	r0
      002451 E4               [12] 1307 	clr	a
      002452 F6               [12] 1308 	mov	@r0,a
      002453 08               [12] 1309 	inc	r0
      002454 F6               [12] 1310 	mov	@r0,a
      002455                       1311 00160$:
                                   1312 ;	disp.c:262: c = getchar();
      002455 C0 04            [24] 1313 	push	ar4
      002457 C0 05            [24] 1314 	push	ar5
      002459 12 20 B2         [24] 1315 	lcall	_getchar
      00245C AC 82            [24] 1316 	mov	r4,dpl
      00245E AD 83            [24] 1317 	mov	r5,dph
      002460 8C 07            [24] 1318 	mov	ar7,r4
      002462 8D 06            [24] 1319 	mov	ar6,r5
                                   1320 ;	disp.c:263: (void)putchar(c);
      002464 8F 82            [24] 1321 	mov	dpl,r7
      002466 8E 83            [24] 1322 	mov	dph,r6
      002468 12 20 AD         [24] 1323 	lcall	_putchar
                                   1324 ;	disp.c:264: if ((c == (int)'\r') || (c == (int)'\n')) {
      00246B BF 0D 09         [24] 1325 	cjne	r7,#0x0d,00343$
      00246E BE 00 06         [24] 1326 	cjne	r6,#0x00,00343$
      002471 D0 05            [24] 1327 	pop	ar5
      002473 D0 04            [24] 1328 	pop	ar4
      002475 80 0A            [24] 1329 	sjmp	00102$
      002477                       1330 00343$:
      002477 D0 05            [24] 1331 	pop	ar5
      002479 D0 04            [24] 1332 	pop	ar4
      00247B BF 0A 11         [24] 1333 	cjne	r7,#0x0a,00103$
      00247E BE 00 0E         [24] 1334 	cjne	r6,#0x00,00103$
      002481                       1335 00102$:
                                   1336 ;	disp.c:265: buf[j] = 0u;
      002481 EC               [12] 1337 	mov	a,r4
      002482 24 00            [12] 1338 	add	a,#_buf
      002484 F5 82            [12] 1339 	mov	dpl,a
      002486 ED               [12] 1340 	mov	a,r5
      002487 34 80            [12] 1341 	addc	a,#(_buf >> 8)
      002489 F5 83            [12] 1342 	mov	dph,a
      00248B E4               [12] 1343 	clr	a
      00248C F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	disp.c:266: break;
      00248D 80 32            [24] 1346 	sjmp	00106$
      00248F                       1347 00103$:
                                   1348 ;	disp.c:267: } else buf[j] = c & 0xffu;
      00248F A8 10            [24] 1349 	mov	r0,_bp
      002491 08               [12] 1350 	inc	r0
      002492 E6               [12] 1351 	mov	a,@r0
      002493 24 00            [12] 1352 	add	a,#_buf
      002495 FD               [12] 1353 	mov	r5,a
      002496 08               [12] 1354 	inc	r0
      002497 E6               [12] 1355 	mov	a,@r0
      002498 34 80            [12] 1356 	addc	a,#(_buf >> 8)
      00249A FC               [12] 1357 	mov	r4,a
      00249B 8F 03            [24] 1358 	mov	ar3,r7
      00249D 8D 82            [24] 1359 	mov	dpl,r5
      00249F 8C 83            [24] 1360 	mov	dph,r4
      0024A1 EB               [12] 1361 	mov	a,r3
      0024A2 F0               [24] 1362 	movx	@dptr,a
                                   1363 ;	disp.c:261: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      0024A3 A8 10            [24] 1364 	mov	r0,_bp
      0024A5 08               [12] 1365 	inc	r0
      0024A6 06               [12] 1366 	inc	@r0
      0024A7 B6 00 02         [24] 1367 	cjne	@r0,#0x00,00346$
      0024AA 08               [12] 1368 	inc	r0
      0024AB 06               [12] 1369 	inc	@r0
      0024AC                       1370 00346$:
      0024AC A8 10            [24] 1371 	mov	r0,_bp
      0024AE 08               [12] 1372 	inc	r0
      0024AF 86 04            [24] 1373 	mov	ar4,@r0
      0024B1 08               [12] 1374 	inc	r0
      0024B2 86 05            [24] 1375 	mov	ar5,@r0
      0024B4 A8 10            [24] 1376 	mov	r0,_bp
      0024B6 08               [12] 1377 	inc	r0
      0024B7 86 02            [24] 1378 	mov	ar2,@r0
      0024B9 08               [12] 1379 	inc	r0
      0024BA 86 03            [24] 1380 	mov	ar3,@r0
      0024BC 74 FF            [12] 1381 	mov	a,#0x100 - 0x01
      0024BE 2B               [12] 1382 	add	a,r3
      0024BF 50 94            [24] 1383 	jnc	00160$
      0024C1                       1384 00106$:
                                   1385 ;	disp.c:269: buf[j] = 0u;
      0024C1 EC               [12] 1386 	mov	a,r4
      0024C2 24 00            [12] 1387 	add	a,#_buf
      0024C4 F5 82            [12] 1388 	mov	dpl,a
      0024C6 ED               [12] 1389 	mov	a,r5
      0024C7 34 80            [12] 1390 	addc	a,#(_buf >> 8)
      0024C9 F5 83            [12] 1391 	mov	dph,a
      0024CB E4               [12] 1392 	clr	a
      0024CC F0               [24] 1393 	movx	@dptr,a
                                   1394 ;	disp.c:270: printstr("\r\n");
      0024CD 7F EE            [12] 1395 	mov	r7,#___str_5
      0024CF 7E 26            [12] 1396 	mov	r6,#(___str_5 >> 8)
      0024D1 7C 80            [12] 1397 	mov	r4,#0x80
                                   1398 ;	disp.c:48: return;
      0024D3                       1399 00163$:
                                   1400 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024D3 8F 82            [24] 1401 	mov	dpl,r7
      0024D5 8E 83            [24] 1402 	mov	dph,r6
      0024D7 8C F0            [24] 1403 	mov	b,r4
      0024D9 12 26 7C         [24] 1404 	lcall	__gptrget
      0024DC FA               [12] 1405 	mov	r2,a
      0024DD 60 10            [24] 1406 	jz	00136$
      0024DF 7D 00            [12] 1407 	mov	r5,#0x00
      0024E1 8A 82            [24] 1408 	mov	dpl,r2
      0024E3 8D 83            [24] 1409 	mov	dph,r5
      0024E5 12 20 AD         [24] 1410 	lcall	_putchar
      0024E8 0F               [12] 1411 	inc	r7
                                   1412 ;	disp.c:270: printstr("\r\n");
      0024E9 BF 00 E7         [24] 1413 	cjne	r7,#0x00,00163$
      0024EC 0E               [12] 1414 	inc	r6
      0024ED 80 E4            [24] 1415 	sjmp	00163$
      0024EF                       1416 00136$:
                                   1417 ;	disp.c:271: printstr("MSG \"");
      0024EF 7F F1            [12] 1418 	mov	r7,#___str_6
      0024F1 7E 26            [12] 1419 	mov	r6,#(___str_6 >> 8)
      0024F3 7C 80            [12] 1420 	mov	r4,#0x80
                                   1421 ;	disp.c:48: return;
      0024F5                       1422 00166$:
                                   1423 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024F5 8F 82            [24] 1424 	mov	dpl,r7
      0024F7 8E 83            [24] 1425 	mov	dph,r6
      0024F9 8C F0            [24] 1426 	mov	b,r4
      0024FB 12 26 7C         [24] 1427 	lcall	__gptrget
      0024FE FA               [12] 1428 	mov	r2,a
      0024FF 60 10            [24] 1429 	jz	00138$
      002501 7D 00            [12] 1430 	mov	r5,#0x00
      002503 8A 82            [24] 1431 	mov	dpl,r2
      002505 8D 83            [24] 1432 	mov	dph,r5
      002507 12 20 AD         [24] 1433 	lcall	_putchar
      00250A 0F               [12] 1434 	inc	r7
                                   1435 ;	disp.c:271: printstr("MSG \"");
      00250B BF 00 E7         [24] 1436 	cjne	r7,#0x00,00166$
      00250E 0E               [12] 1437 	inc	r6
      00250F 80 E4            [24] 1438 	sjmp	00166$
      002511                       1439 00138$:
                                   1440 ;	disp.c:272: printstr((char *)buf);
      002511 7F 00            [12] 1441 	mov	r7,#_buf
      002513 7E 80            [12] 1442 	mov	r6,#(_buf >> 8)
      002515 7C 00            [12] 1443 	mov	r4,#0x00
                                   1444 ;	disp.c:48: return;
      002517                       1445 00169$:
                                   1446 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002517 8F 82            [24] 1447 	mov	dpl,r7
      002519 8E 83            [24] 1448 	mov	dph,r6
      00251B 8C F0            [24] 1449 	mov	b,r4
      00251D 12 26 7C         [24] 1450 	lcall	__gptrget
      002520 FA               [12] 1451 	mov	r2,a
      002521 60 10            [24] 1452 	jz	00140$
      002523 7D 00            [12] 1453 	mov	r5,#0x00
      002525 8A 82            [24] 1454 	mov	dpl,r2
      002527 8D 83            [24] 1455 	mov	dph,r5
      002529 12 20 AD         [24] 1456 	lcall	_putchar
      00252C 0F               [12] 1457 	inc	r7
                                   1458 ;	disp.c:272: printstr((char *)buf);
      00252D BF 00 E7         [24] 1459 	cjne	r7,#0x00,00169$
      002530 0E               [12] 1460 	inc	r6
      002531 80 E4            [24] 1461 	sjmp	00169$
      002533                       1462 00140$:
                                   1463 ;	disp.c:273: printstr("\"\r\n");
      002533 7F E4            [12] 1464 	mov	r7,#___str_3
      002535 7E 26            [12] 1465 	mov	r6,#(___str_3 >> 8)
      002537 7C 80            [12] 1466 	mov	r4,#0x80
                                   1467 ;	disp.c:48: return;
      002539                       1468 00172$:
                                   1469 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002539 8F 82            [24] 1470 	mov	dpl,r7
      00253B 8E 83            [24] 1471 	mov	dph,r6
      00253D 8C F0            [24] 1472 	mov	b,r4
      00253F 12 26 7C         [24] 1473 	lcall	__gptrget
      002542 FA               [12] 1474 	mov	r2,a
      002543 60 19            [24] 1475 	jz	00117$
      002545 7D 00            [12] 1476 	mov	r5,#0x00
      002547 8A 82            [24] 1477 	mov	dpl,r2
      002549 8D 83            [24] 1478 	mov	dph,r5
      00254B 12 20 AD         [24] 1479 	lcall	_putchar
      00254E 0F               [12] 1480 	inc	r7
                                   1481 ;	disp.c:273: printstr("\"\r\n");
      00254F BF 00 E7         [24] 1482 	cjne	r7,#0x00,00172$
      002552 0E               [12] 1483 	inc	r6
      002553 80 E4            [24] 1484 	sjmp	00172$
      002555                       1485 00110$:
                                   1486 ;	disp.c:274: } else if (c == (int)'S') break;
      002555 BE 53 06         [24] 1487 	cjne	r6,#0x53,00356$
      002558 BF 00 03         [24] 1488 	cjne	r7,#0x00,00356$
      00255B 02 23 95         [24] 1489 	ljmp	00122$
      00255E                       1490 00356$:
      00255E                       1491 00117$:
                                   1492 ;	disp.c:276: c = toupper(getchar());
      00255E 12 20 B2         [24] 1493 	lcall	_getchar
      002561 12 25 9E         [24] 1494 	lcall	_toupper
      002564 AE 82            [24] 1495 	mov	r6,dpl
      002566 AF 83            [24] 1496 	mov	r7,dph
      002568 02 24 08         [24] 1497 	ljmp	00119$
                                   1498 ;	disp.c:280: term:	
      00256B                       1499 00124$:
                                   1500 ;	disp.c:281: EA = 0;
                                   1501 ;	assignBit
      00256B C2 AF            [12] 1502 	clr	_EA
                                   1503 ;	disp.c:282: init_disp();
      00256D 12 21 2C         [24] 1504 	lcall	_init_disp
                                   1505 ;	disp.c:283: printstr("TERM\r\n");
      002570 7D F7            [12] 1506 	mov	r5,#___str_7
      002572 7E 26            [12] 1507 	mov	r6,#(___str_7 >> 8)
      002574 7F 80            [12] 1508 	mov	r7,#0x80
                                   1509 ;	disp.c:48: return;
      002576                       1510 00175$:
                                   1511 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002576 8D 82            [24] 1512 	mov	dpl,r5
      002578 8E 83            [24] 1513 	mov	dph,r6
      00257A 8F F0            [24] 1514 	mov	b,r7
      00257C 12 26 7C         [24] 1515 	lcall	__gptrget
      00257F FC               [12] 1516 	mov	r4,a
      002580 60 10            [24] 1517 	jz	00144$
      002582 7B 00            [12] 1518 	mov	r3,#0x00
      002584 8C 82            [24] 1519 	mov	dpl,r4
      002586 8B 83            [24] 1520 	mov	dph,r3
      002588 12 20 AD         [24] 1521 	lcall	_putchar
      00258B 0D               [12] 1522 	inc	r5
                                   1523 ;	disp.c:283: printstr("TERM\r\n");
      00258C BD 00 E7         [24] 1524 	cjne	r5,#0x00,00175$
      00258F 0E               [12] 1525 	inc	r6
      002590 80 E4            [24] 1526 	sjmp	00175$
      002592                       1527 00144$:
                                   1528 ;	disp.c:284: (void)getchar();
      002592 12 20 B2         [24] 1529 	lcall	_getchar
                                   1530 ;	disp.c:286: PCON |= 2;
      002595 43 87 02         [24] 1531 	orl	_PCON,#0x02
                                   1532 ;	disp.c:288: return;
                                   1533 ;	disp.c:289: }
      002598 85 10 81         [24] 1534 	mov	sp,_bp
      00259B D0 10            [24] 1535 	pop	_bp
      00259D 22               [24] 1536 	ret
                                   1537 	.area CSEG    (CODE)
                                   1538 	.area CONST   (CODE)
                                   1539 	.area CONST   (CODE)
      0026B7                       1540 ___str_0:
      0026B7 50 41 55 53 45        1541 	.ascii "PAUSE"
      0026BC 0D                    1542 	.db 0x0d
      0026BD 0A                    1543 	.db 0x0a
      0026BE 00                    1544 	.db 0x00
                                   1545 	.area CSEG    (CODE)
                                   1546 	.area CONST   (CODE)
      0026BF                       1547 ___str_1:
      0026BF 52 45 53 45 54        1548 	.ascii "RESET"
      0026C4 0D                    1549 	.db 0x0d
      0026C5 0A                    1550 	.db 0x0a
      0026C6 00                    1551 	.db 0x00
                                   1552 	.area CSEG    (CODE)
                                   1553 	.area CONST   (CODE)
      0026C7                       1554 ___str_2:
      0026C7 50 20 53 50 20 4C 20  1555 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      0026E2 22                    1556 	.db 0x22
      0026E3 00                    1557 	.db 0x00
                                   1558 	.area CSEG    (CODE)
                                   1559 	.area CONST   (CODE)
      0026E4                       1560 ___str_3:
      0026E4 22                    1561 	.db 0x22
      0026E5 0D                    1562 	.db 0x0d
      0026E6 0A                    1563 	.db 0x0a
      0026E7 00                    1564 	.db 0x00
                                   1565 	.area CSEG    (CODE)
                                   1566 	.area CONST   (CODE)
      0026E8                       1567 ___str_4:
      0026E8 4C 4F 41 44 20        1568 	.ascii "LOAD "
      0026ED 00                    1569 	.db 0x00
                                   1570 	.area CSEG    (CODE)
                                   1571 	.area CONST   (CODE)
      0026EE                       1572 ___str_5:
      0026EE 0D                    1573 	.db 0x0d
      0026EF 0A                    1574 	.db 0x0a
      0026F0 00                    1575 	.db 0x00
                                   1576 	.area CSEG    (CODE)
                                   1577 	.area CONST   (CODE)
      0026F1                       1578 ___str_6:
      0026F1 4D 53 47 20           1579 	.ascii "MSG "
      0026F5 22                    1580 	.db 0x22
      0026F6 00                    1581 	.db 0x00
                                   1582 	.area CSEG    (CODE)
                                   1583 	.area CONST   (CODE)
      0026F7                       1584 ___str_7:
      0026F7 54 45 52 4D           1585 	.ascii "TERM"
      0026FB 0D                    1586 	.db 0x0d
      0026FC 0A                    1587 	.db 0x0a
      0026FD 00                    1588 	.db 0x00
                                   1589 	.area CSEG    (CODE)
                                   1590 	.area CONST   (CODE)
      0026FE                       1591 ___str_8:
      0026FE 4A 65 64 65 6D 20 64  1592 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      00272F 00                    1593 	.db 0x00
                                   1594 	.area CSEG    (CODE)
                                   1595 	.area XINIT   (CODE)
      002730                       1596 __xinit___ft_font6x8:
      002730 00                    1597 	.db #0x00	; 0
      002731 00                    1598 	.db #0x00	; 0
      002732 00                    1599 	.db #0x00	; 0
      002733 00                    1600 	.db #0x00	; 0
      002734 00                    1601 	.db #0x00	; 0
      002735 00                    1602 	.db #0x00	; 0
      002736 00                    1603 	.db #0x00	; 0
      002737 00                    1604 	.db #0x00	; 0
      002738 1C                    1605 	.db #0x1c	; 28
      002739 22                    1606 	.db #0x22	; 34
      00273A 36                    1607 	.db #0x36	; 54	'6'
      00273B 22                    1608 	.db #0x22	; 34
      00273C 2A                    1609 	.db #0x2a	; 42
      00273D 22                    1610 	.db #0x22	; 34
      00273E 1C                    1611 	.db #0x1c	; 28
      00273F 00                    1612 	.db #0x00	; 0
      002740 1C                    1613 	.db #0x1c	; 28
      002741 3E                    1614 	.db #0x3e	; 62
      002742 2A                    1615 	.db #0x2a	; 42
      002743 3E                    1616 	.db #0x3e	; 62
      002744 22                    1617 	.db #0x22	; 34
      002745 3E                    1618 	.db #0x3e	; 62
      002746 1C                    1619 	.db #0x1c	; 28
      002747 00                    1620 	.db #0x00	; 0
      002748 00                    1621 	.db #0x00	; 0
      002749 14                    1622 	.db #0x14	; 20
      00274A 3E                    1623 	.db #0x3e	; 62
      00274B 3E                    1624 	.db #0x3e	; 62
      00274C 3E                    1625 	.db #0x3e	; 62
      00274D 1C                    1626 	.db #0x1c	; 28
      00274E 08                    1627 	.db #0x08	; 8
      00274F 00                    1628 	.db #0x00	; 0
      002750 00                    1629 	.db #0x00	; 0
      002751 08                    1630 	.db #0x08	; 8
      002752 1C                    1631 	.db #0x1c	; 28
      002753 3E                    1632 	.db #0x3e	; 62
      002754 3E                    1633 	.db #0x3e	; 62
      002755 1C                    1634 	.db #0x1c	; 28
      002756 08                    1635 	.db #0x08	; 8
      002757 00                    1636 	.db #0x00	; 0
      002758 08                    1637 	.db #0x08	; 8
      002759 1C                    1638 	.db #0x1c	; 28
      00275A 1C                    1639 	.db #0x1c	; 28
      00275B 08                    1640 	.db #0x08	; 8
      00275C 3E                    1641 	.db #0x3e	; 62
      00275D 3E                    1642 	.db #0x3e	; 62
      00275E 08                    1643 	.db #0x08	; 8
      00275F 00                    1644 	.db #0x00	; 0
      002760 00                    1645 	.db #0x00	; 0
      002761 08                    1646 	.db #0x08	; 8
      002762 1C                    1647 	.db #0x1c	; 28
      002763 3E                    1648 	.db #0x3e	; 62
      002764 3E                    1649 	.db #0x3e	; 62
      002765 08                    1650 	.db #0x08	; 8
      002766 1C                    1651 	.db #0x1c	; 28
      002767 00                    1652 	.db #0x00	; 0
      002768 00                    1653 	.db #0x00	; 0
      002769 00                    1654 	.db #0x00	; 0
      00276A 00                    1655 	.db #0x00	; 0
      00276B 0C                    1656 	.db #0x0c	; 12
      00276C 0C                    1657 	.db #0x0c	; 12
      00276D 00                    1658 	.db #0x00	; 0
      00276E 00                    1659 	.db #0x00	; 0
      00276F 00                    1660 	.db #0x00	; 0
      002770 3F                    1661 	.db #0x3f	; 63
      002771 3F                    1662 	.db #0x3f	; 63
      002772 3F                    1663 	.db #0x3f	; 63
      002773 33                    1664 	.db #0x33	; 51	'3'
      002774 33                    1665 	.db #0x33	; 51	'3'
      002775 3F                    1666 	.db #0x3f	; 63
      002776 3F                    1667 	.db #0x3f	; 63
      002777 3F                    1668 	.db #0x3f	; 63
      002778 00                    1669 	.db #0x00	; 0
      002779 00                    1670 	.db #0x00	; 0
      00277A 1E                    1671 	.db #0x1e	; 30
      00277B 12                    1672 	.db #0x12	; 18
      00277C 12                    1673 	.db #0x12	; 18
      00277D 1E                    1674 	.db #0x1e	; 30
      00277E 00                    1675 	.db #0x00	; 0
      00277F 00                    1676 	.db #0x00	; 0
      002780 3F                    1677 	.db #0x3f	; 63
      002781 3F                    1678 	.db #0x3f	; 63
      002782 21                    1679 	.db #0x21	; 33
      002783 2D                    1680 	.db #0x2d	; 45
      002784 2D                    1681 	.db #0x2d	; 45
      002785 21                    1682 	.db #0x21	; 33
      002786 3F                    1683 	.db #0x3f	; 63
      002787 3F                    1684 	.db #0x3f	; 63
      002788 00                    1685 	.db #0x00	; 0
      002789 38                    1686 	.db #0x38	; 56	'8'
      00278A 30                    1687 	.db #0x30	; 48	'0'
      00278B 2C                    1688 	.db #0x2c	; 44
      00278C 12                    1689 	.db #0x12	; 18
      00278D 12                    1690 	.db #0x12	; 18
      00278E 0C                    1691 	.db #0x0c	; 12
      00278F 00                    1692 	.db #0x00	; 0
      002790 1C                    1693 	.db #0x1c	; 28
      002791 22                    1694 	.db #0x22	; 34
      002792 22                    1695 	.db #0x22	; 34
      002793 1C                    1696 	.db #0x1c	; 28
      002794 08                    1697 	.db #0x08	; 8
      002795 1C                    1698 	.db #0x1c	; 28
      002796 08                    1699 	.db #0x08	; 8
      002797 00                    1700 	.db #0x00	; 0
      002798 08                    1701 	.db #0x08	; 8
      002799 18                    1702 	.db #0x18	; 24
      00279A 28                    1703 	.db #0x28	; 40
      00279B 08                    1704 	.db #0x08	; 8
      00279C 0C                    1705 	.db #0x0c	; 12
      00279D 0E                    1706 	.db #0x0e	; 14
      00279E 06                    1707 	.db #0x06	; 6
      00279F 00                    1708 	.db #0x00	; 0
      0027A0 30                    1709 	.db #0x30	; 48	'0'
      0027A1 2C                    1710 	.db #0x2c	; 44
      0027A2 34                    1711 	.db #0x34	; 52	'4'
      0027A3 2C                    1712 	.db #0x2c	; 44
      0027A4 34                    1713 	.db #0x34	; 52	'4'
      0027A5 36                    1714 	.db #0x36	; 54	'6'
      0027A6 06                    1715 	.db #0x06	; 6
      0027A7 00                    1716 	.db #0x00	; 0
      0027A8 00                    1717 	.db #0x00	; 0
      0027A9 2A                    1718 	.db #0x2a	; 42
      0027AA 1C                    1719 	.db #0x1c	; 28
      0027AB 36                    1720 	.db #0x36	; 54	'6'
      0027AC 1C                    1721 	.db #0x1c	; 28
      0027AD 2A                    1722 	.db #0x2a	; 42
      0027AE 00                    1723 	.db #0x00	; 0
      0027AF 00                    1724 	.db #0x00	; 0
      0027B0 04                    1725 	.db #0x04	; 4
      0027B1 0C                    1726 	.db #0x0c	; 12
      0027B2 1C                    1727 	.db #0x1c	; 28
      0027B3 3C                    1728 	.db #0x3c	; 60
      0027B4 1C                    1729 	.db #0x1c	; 28
      0027B5 0C                    1730 	.db #0x0c	; 12
      0027B6 04                    1731 	.db #0x04	; 4
      0027B7 00                    1732 	.db #0x00	; 0
      0027B8 10                    1733 	.db #0x10	; 16
      0027B9 18                    1734 	.db #0x18	; 24
      0027BA 1C                    1735 	.db #0x1c	; 28
      0027BB 1E                    1736 	.db #0x1e	; 30
      0027BC 1C                    1737 	.db #0x1c	; 28
      0027BD 18                    1738 	.db #0x18	; 24
      0027BE 10                    1739 	.db #0x10	; 16
      0027BF 00                    1740 	.db #0x00	; 0
      0027C0 08                    1741 	.db #0x08	; 8
      0027C1 1C                    1742 	.db #0x1c	; 28
      0027C2 3E                    1743 	.db #0x3e	; 62
      0027C3 08                    1744 	.db #0x08	; 8
      0027C4 3E                    1745 	.db #0x3e	; 62
      0027C5 1C                    1746 	.db #0x1c	; 28
      0027C6 08                    1747 	.db #0x08	; 8
      0027C7 00                    1748 	.db #0x00	; 0
      0027C8 14                    1749 	.db #0x14	; 20
      0027C9 14                    1750 	.db #0x14	; 20
      0027CA 14                    1751 	.db #0x14	; 20
      0027CB 14                    1752 	.db #0x14	; 20
      0027CC 14                    1753 	.db #0x14	; 20
      0027CD 00                    1754 	.db #0x00	; 0
      0027CE 14                    1755 	.db #0x14	; 20
      0027CF 00                    1756 	.db #0x00	; 0
      0027D0 3C                    1757 	.db #0x3c	; 60
      0027D1 2A                    1758 	.db #0x2a	; 42
      0027D2 2A                    1759 	.db #0x2a	; 42
      0027D3 2C                    1760 	.db #0x2c	; 44
      0027D4 28                    1761 	.db #0x28	; 40
      0027D5 28                    1762 	.db #0x28	; 40
      0027D6 28                    1763 	.db #0x28	; 40
      0027D7 00                    1764 	.db #0x00	; 0
      0027D8 1C                    1765 	.db #0x1c	; 28
      0027D9 22                    1766 	.db #0x22	; 34
      0027DA 0C                    1767 	.db #0x0c	; 12
      0027DB 14                    1768 	.db #0x14	; 20
      0027DC 18                    1769 	.db #0x18	; 24
      0027DD 22                    1770 	.db #0x22	; 34
      0027DE 1C                    1771 	.db #0x1c	; 28
      0027DF 00                    1772 	.db #0x00	; 0
      0027E0 00                    1773 	.db #0x00	; 0
      0027E1 00                    1774 	.db #0x00	; 0
      0027E2 00                    1775 	.db #0x00	; 0
      0027E3 00                    1776 	.db #0x00	; 0
      0027E4 00                    1777 	.db #0x00	; 0
      0027E5 1E                    1778 	.db #0x1e	; 30
      0027E6 1E                    1779 	.db #0x1e	; 30
      0027E7 00                    1780 	.db #0x00	; 0
      0027E8 08                    1781 	.db #0x08	; 8
      0027E9 1C                    1782 	.db #0x1c	; 28
      0027EA 3E                    1783 	.db #0x3e	; 62
      0027EB 08                    1784 	.db #0x08	; 8
      0027EC 3E                    1785 	.db #0x3e	; 62
      0027ED 1C                    1786 	.db #0x1c	; 28
      0027EE 08                    1787 	.db #0x08	; 8
      0027EF 1C                    1788 	.db #0x1c	; 28
      0027F0 08                    1789 	.db #0x08	; 8
      0027F1 1C                    1790 	.db #0x1c	; 28
      0027F2 3E                    1791 	.db #0x3e	; 62
      0027F3 08                    1792 	.db #0x08	; 8
      0027F4 08                    1793 	.db #0x08	; 8
      0027F5 08                    1794 	.db #0x08	; 8
      0027F6 08                    1795 	.db #0x08	; 8
      0027F7 00                    1796 	.db #0x00	; 0
      0027F8 08                    1797 	.db #0x08	; 8
      0027F9 08                    1798 	.db #0x08	; 8
      0027FA 08                    1799 	.db #0x08	; 8
      0027FB 08                    1800 	.db #0x08	; 8
      0027FC 3E                    1801 	.db #0x3e	; 62
      0027FD 1C                    1802 	.db #0x1c	; 28
      0027FE 08                    1803 	.db #0x08	; 8
      0027FF 00                    1804 	.db #0x00	; 0
      002800 00                    1805 	.db #0x00	; 0
      002801 08                    1806 	.db #0x08	; 8
      002802 18                    1807 	.db #0x18	; 24
      002803 3E                    1808 	.db #0x3e	; 62
      002804 18                    1809 	.db #0x18	; 24
      002805 08                    1810 	.db #0x08	; 8
      002806 00                    1811 	.db #0x00	; 0
      002807 00                    1812 	.db #0x00	; 0
      002808 00                    1813 	.db #0x00	; 0
      002809 08                    1814 	.db #0x08	; 8
      00280A 0C                    1815 	.db #0x0c	; 12
      00280B 3E                    1816 	.db #0x3e	; 62
      00280C 0C                    1817 	.db #0x0c	; 12
      00280D 08                    1818 	.db #0x08	; 8
      00280E 00                    1819 	.db #0x00	; 0
      00280F 00                    1820 	.db #0x00	; 0
      002810 00                    1821 	.db #0x00	; 0
      002811 00                    1822 	.db #0x00	; 0
      002812 00                    1823 	.db #0x00	; 0
      002813 02                    1824 	.db #0x02	; 2
      002814 02                    1825 	.db #0x02	; 2
      002815 02                    1826 	.db #0x02	; 2
      002816 3E                    1827 	.db #0x3e	; 62
      002817 00                    1828 	.db #0x00	; 0
      002818 00                    1829 	.db #0x00	; 0
      002819 14                    1830 	.db #0x14	; 20
      00281A 14                    1831 	.db #0x14	; 20
      00281B 3E                    1832 	.db #0x3e	; 62
      00281C 14                    1833 	.db #0x14	; 20
      00281D 14                    1834 	.db #0x14	; 20
      00281E 00                    1835 	.db #0x00	; 0
      00281F 00                    1836 	.db #0x00	; 0
      002820 08                    1837 	.db #0x08	; 8
      002821 08                    1838 	.db #0x08	; 8
      002822 1C                    1839 	.db #0x1c	; 28
      002823 1C                    1840 	.db #0x1c	; 28
      002824 3E                    1841 	.db #0x3e	; 62
      002825 3E                    1842 	.db #0x3e	; 62
      002826 00                    1843 	.db #0x00	; 0
      002827 00                    1844 	.db #0x00	; 0
      002828 3E                    1845 	.db #0x3e	; 62
      002829 3E                    1846 	.db #0x3e	; 62
      00282A 1C                    1847 	.db #0x1c	; 28
      00282B 1C                    1848 	.db #0x1c	; 28
      00282C 08                    1849 	.db #0x08	; 8
      00282D 08                    1850 	.db #0x08	; 8
      00282E 00                    1851 	.db #0x00	; 0
      00282F 00                    1852 	.db #0x00	; 0
      002830 00                    1853 	.db #0x00	; 0
      002831 00                    1854 	.db #0x00	; 0
      002832 00                    1855 	.db #0x00	; 0
      002833 00                    1856 	.db #0x00	; 0
      002834 00                    1857 	.db #0x00	; 0
      002835 00                    1858 	.db #0x00	; 0
      002836 00                    1859 	.db #0x00	; 0
      002837 00                    1860 	.db #0x00	; 0
      002838 08                    1861 	.db #0x08	; 8
      002839 1C                    1862 	.db #0x1c	; 28
      00283A 1C                    1863 	.db #0x1c	; 28
      00283B 08                    1864 	.db #0x08	; 8
      00283C 08                    1865 	.db #0x08	; 8
      00283D 00                    1866 	.db #0x00	; 0
      00283E 08                    1867 	.db #0x08	; 8
      00283F 00                    1868 	.db #0x00	; 0
      002840 36                    1869 	.db #0x36	; 54	'6'
      002841 36                    1870 	.db #0x36	; 54	'6'
      002842 12                    1871 	.db #0x12	; 18
      002843 00                    1872 	.db #0x00	; 0
      002844 00                    1873 	.db #0x00	; 0
      002845 00                    1874 	.db #0x00	; 0
      002846 00                    1875 	.db #0x00	; 0
      002847 00                    1876 	.db #0x00	; 0
      002848 00                    1877 	.db #0x00	; 0
      002849 14                    1878 	.db #0x14	; 20
      00284A 3E                    1879 	.db #0x3e	; 62
      00284B 14                    1880 	.db #0x14	; 20
      00284C 14                    1881 	.db #0x14	; 20
      00284D 3E                    1882 	.db #0x3e	; 62
      00284E 14                    1883 	.db #0x14	; 20
      00284F 00                    1884 	.db #0x00	; 0
      002850 04                    1885 	.db #0x04	; 4
      002851 1C                    1886 	.db #0x1c	; 28
      002852 02                    1887 	.db #0x02	; 2
      002853 0C                    1888 	.db #0x0c	; 12
      002854 10                    1889 	.db #0x10	; 16
      002855 0E                    1890 	.db #0x0e	; 14
      002856 08                    1891 	.db #0x08	; 8
      002857 00                    1892 	.db #0x00	; 0
      002858 26                    1893 	.db #0x26	; 38
      002859 26                    1894 	.db #0x26	; 38
      00285A 10                    1895 	.db #0x10	; 16
      00285B 08                    1896 	.db #0x08	; 8
      00285C 04                    1897 	.db #0x04	; 4
      00285D 32                    1898 	.db #0x32	; 50	'2'
      00285E 32                    1899 	.db #0x32	; 50	'2'
      00285F 00                    1900 	.db #0x00	; 0
      002860 04                    1901 	.db #0x04	; 4
      002861 0A                    1902 	.db #0x0a	; 10
      002862 0A                    1903 	.db #0x0a	; 10
      002863 04                    1904 	.db #0x04	; 4
      002864 2A                    1905 	.db #0x2a	; 42
      002865 12                    1906 	.db #0x12	; 18
      002866 2C                    1907 	.db #0x2c	; 44
      002867 00                    1908 	.db #0x00	; 0
      002868 0C                    1909 	.db #0x0c	; 12
      002869 0C                    1910 	.db #0x0c	; 12
      00286A 04                    1911 	.db #0x04	; 4
      00286B 00                    1912 	.db #0x00	; 0
      00286C 00                    1913 	.db #0x00	; 0
      00286D 00                    1914 	.db #0x00	; 0
      00286E 00                    1915 	.db #0x00	; 0
      00286F 00                    1916 	.db #0x00	; 0
      002870 08                    1917 	.db #0x08	; 8
      002871 04                    1918 	.db #0x04	; 4
      002872 04                    1919 	.db #0x04	; 4
      002873 04                    1920 	.db #0x04	; 4
      002874 04                    1921 	.db #0x04	; 4
      002875 04                    1922 	.db #0x04	; 4
      002876 08                    1923 	.db #0x08	; 8
      002877 00                    1924 	.db #0x00	; 0
      002878 04                    1925 	.db #0x04	; 4
      002879 08                    1926 	.db #0x08	; 8
      00287A 08                    1927 	.db #0x08	; 8
      00287B 08                    1928 	.db #0x08	; 8
      00287C 08                    1929 	.db #0x08	; 8
      00287D 08                    1930 	.db #0x08	; 8
      00287E 04                    1931 	.db #0x04	; 4
      00287F 00                    1932 	.db #0x00	; 0
      002880 00                    1933 	.db #0x00	; 0
      002881 14                    1934 	.db #0x14	; 20
      002882 1C                    1935 	.db #0x1c	; 28
      002883 3E                    1936 	.db #0x3e	; 62
      002884 1C                    1937 	.db #0x1c	; 28
      002885 14                    1938 	.db #0x14	; 20
      002886 00                    1939 	.db #0x00	; 0
      002887 00                    1940 	.db #0x00	; 0
      002888 00                    1941 	.db #0x00	; 0
      002889 08                    1942 	.db #0x08	; 8
      00288A 08                    1943 	.db #0x08	; 8
      00288B 3E                    1944 	.db #0x3e	; 62
      00288C 08                    1945 	.db #0x08	; 8
      00288D 08                    1946 	.db #0x08	; 8
      00288E 00                    1947 	.db #0x00	; 0
      00288F 00                    1948 	.db #0x00	; 0
      002890 00                    1949 	.db #0x00	; 0
      002891 00                    1950 	.db #0x00	; 0
      002892 00                    1951 	.db #0x00	; 0
      002893 00                    1952 	.db #0x00	; 0
      002894 00                    1953 	.db #0x00	; 0
      002895 0C                    1954 	.db #0x0c	; 12
      002896 0C                    1955 	.db #0x0c	; 12
      002897 04                    1956 	.db #0x04	; 4
      002898 00                    1957 	.db #0x00	; 0
      002899 00                    1958 	.db #0x00	; 0
      00289A 00                    1959 	.db #0x00	; 0
      00289B 3E                    1960 	.db #0x3e	; 62
      00289C 00                    1961 	.db #0x00	; 0
      00289D 00                    1962 	.db #0x00	; 0
      00289E 00                    1963 	.db #0x00	; 0
      00289F 00                    1964 	.db #0x00	; 0
      0028A0 00                    1965 	.db #0x00	; 0
      0028A1 00                    1966 	.db #0x00	; 0
      0028A2 00                    1967 	.db #0x00	; 0
      0028A3 00                    1968 	.db #0x00	; 0
      0028A4 00                    1969 	.db #0x00	; 0
      0028A5 0C                    1970 	.db #0x0c	; 12
      0028A6 0C                    1971 	.db #0x0c	; 12
      0028A7 00                    1972 	.db #0x00	; 0
      0028A8 00                    1973 	.db #0x00	; 0
      0028A9 20                    1974 	.db #0x20	; 32
      0028AA 10                    1975 	.db #0x10	; 16
      0028AB 08                    1976 	.db #0x08	; 8
      0028AC 04                    1977 	.db #0x04	; 4
      0028AD 02                    1978 	.db #0x02	; 2
      0028AE 00                    1979 	.db #0x00	; 0
      0028AF 00                    1980 	.db #0x00	; 0
      0028B0 1C                    1981 	.db #0x1c	; 28
      0028B1 22                    1982 	.db #0x22	; 34
      0028B2 32                    1983 	.db #0x32	; 50	'2'
      0028B3 2A                    1984 	.db #0x2a	; 42
      0028B4 26                    1985 	.db #0x26	; 38
      0028B5 22                    1986 	.db #0x22	; 34
      0028B6 1C                    1987 	.db #0x1c	; 28
      0028B7 00                    1988 	.db #0x00	; 0
      0028B8 08                    1989 	.db #0x08	; 8
      0028B9 0C                    1990 	.db #0x0c	; 12
      0028BA 08                    1991 	.db #0x08	; 8
      0028BB 08                    1992 	.db #0x08	; 8
      0028BC 08                    1993 	.db #0x08	; 8
      0028BD 08                    1994 	.db #0x08	; 8
      0028BE 1C                    1995 	.db #0x1c	; 28
      0028BF 00                    1996 	.db #0x00	; 0
      0028C0 1C                    1997 	.db #0x1c	; 28
      0028C1 22                    1998 	.db #0x22	; 34
      0028C2 20                    1999 	.db #0x20	; 32
      0028C3 18                    2000 	.db #0x18	; 24
      0028C4 04                    2001 	.db #0x04	; 4
      0028C5 02                    2002 	.db #0x02	; 2
      0028C6 3E                    2003 	.db #0x3e	; 62
      0028C7 00                    2004 	.db #0x00	; 0
      0028C8 1C                    2005 	.db #0x1c	; 28
      0028C9 22                    2006 	.db #0x22	; 34
      0028CA 20                    2007 	.db #0x20	; 32
      0028CB 1C                    2008 	.db #0x1c	; 28
      0028CC 20                    2009 	.db #0x20	; 32
      0028CD 22                    2010 	.db #0x22	; 34
      0028CE 1C                    2011 	.db #0x1c	; 28
      0028CF 00                    2012 	.db #0x00	; 0
      0028D0 10                    2013 	.db #0x10	; 16
      0028D1 18                    2014 	.db #0x18	; 24
      0028D2 14                    2015 	.db #0x14	; 20
      0028D3 12                    2016 	.db #0x12	; 18
      0028D4 3E                    2017 	.db #0x3e	; 62
      0028D5 10                    2018 	.db #0x10	; 16
      0028D6 10                    2019 	.db #0x10	; 16
      0028D7 00                    2020 	.db #0x00	; 0
      0028D8 3E                    2021 	.db #0x3e	; 62
      0028D9 02                    2022 	.db #0x02	; 2
      0028DA 02                    2023 	.db #0x02	; 2
      0028DB 1E                    2024 	.db #0x1e	; 30
      0028DC 20                    2025 	.db #0x20	; 32
      0028DD 22                    2026 	.db #0x22	; 34
      0028DE 1C                    2027 	.db #0x1c	; 28
      0028DF 00                    2028 	.db #0x00	; 0
      0028E0 18                    2029 	.db #0x18	; 24
      0028E1 04                    2030 	.db #0x04	; 4
      0028E2 02                    2031 	.db #0x02	; 2
      0028E3 1E                    2032 	.db #0x1e	; 30
      0028E4 22                    2033 	.db #0x22	; 34
      0028E5 22                    2034 	.db #0x22	; 34
      0028E6 1C                    2035 	.db #0x1c	; 28
      0028E7 00                    2036 	.db #0x00	; 0
      0028E8 3E                    2037 	.db #0x3e	; 62
      0028E9 20                    2038 	.db #0x20	; 32
      0028EA 10                    2039 	.db #0x10	; 16
      0028EB 08                    2040 	.db #0x08	; 8
      0028EC 04                    2041 	.db #0x04	; 4
      0028ED 04                    2042 	.db #0x04	; 4
      0028EE 04                    2043 	.db #0x04	; 4
      0028EF 00                    2044 	.db #0x00	; 0
      0028F0 1C                    2045 	.db #0x1c	; 28
      0028F1 22                    2046 	.db #0x22	; 34
      0028F2 22                    2047 	.db #0x22	; 34
      0028F3 1C                    2048 	.db #0x1c	; 28
      0028F4 22                    2049 	.db #0x22	; 34
      0028F5 22                    2050 	.db #0x22	; 34
      0028F6 1C                    2051 	.db #0x1c	; 28
      0028F7 00                    2052 	.db #0x00	; 0
      0028F8 1C                    2053 	.db #0x1c	; 28
      0028F9 22                    2054 	.db #0x22	; 34
      0028FA 22                    2055 	.db #0x22	; 34
      0028FB 3C                    2056 	.db #0x3c	; 60
      0028FC 20                    2057 	.db #0x20	; 32
      0028FD 10                    2058 	.db #0x10	; 16
      0028FE 0C                    2059 	.db #0x0c	; 12
      0028FF 00                    2060 	.db #0x00	; 0
      002900 00                    2061 	.db #0x00	; 0
      002901 00                    2062 	.db #0x00	; 0
      002902 0C                    2063 	.db #0x0c	; 12
      002903 0C                    2064 	.db #0x0c	; 12
      002904 00                    2065 	.db #0x00	; 0
      002905 0C                    2066 	.db #0x0c	; 12
      002906 0C                    2067 	.db #0x0c	; 12
      002907 00                    2068 	.db #0x00	; 0
      002908 00                    2069 	.db #0x00	; 0
      002909 00                    2070 	.db #0x00	; 0
      00290A 0C                    2071 	.db #0x0c	; 12
      00290B 0C                    2072 	.db #0x0c	; 12
      00290C 00                    2073 	.db #0x00	; 0
      00290D 0C                    2074 	.db #0x0c	; 12
      00290E 0C                    2075 	.db #0x0c	; 12
      00290F 04                    2076 	.db #0x04	; 4
      002910 10                    2077 	.db #0x10	; 16
      002911 08                    2078 	.db #0x08	; 8
      002912 04                    2079 	.db #0x04	; 4
      002913 02                    2080 	.db #0x02	; 2
      002914 04                    2081 	.db #0x04	; 4
      002915 08                    2082 	.db #0x08	; 8
      002916 10                    2083 	.db #0x10	; 16
      002917 00                    2084 	.db #0x00	; 0
      002918 00                    2085 	.db #0x00	; 0
      002919 00                    2086 	.db #0x00	; 0
      00291A 3E                    2087 	.db #0x3e	; 62
      00291B 00                    2088 	.db #0x00	; 0
      00291C 00                    2089 	.db #0x00	; 0
      00291D 3E                    2090 	.db #0x3e	; 62
      00291E 00                    2091 	.db #0x00	; 0
      00291F 00                    2092 	.db #0x00	; 0
      002920 04                    2093 	.db #0x04	; 4
      002921 08                    2094 	.db #0x08	; 8
      002922 10                    2095 	.db #0x10	; 16
      002923 20                    2096 	.db #0x20	; 32
      002924 10                    2097 	.db #0x10	; 16
      002925 08                    2098 	.db #0x08	; 8
      002926 04                    2099 	.db #0x04	; 4
      002927 00                    2100 	.db #0x00	; 0
      002928 1C                    2101 	.db #0x1c	; 28
      002929 22                    2102 	.db #0x22	; 34
      00292A 20                    2103 	.db #0x20	; 32
      00292B 18                    2104 	.db #0x18	; 24
      00292C 08                    2105 	.db #0x08	; 8
      00292D 00                    2106 	.db #0x00	; 0
      00292E 08                    2107 	.db #0x08	; 8
      00292F 00                    2108 	.db #0x00	; 0
      002930 1C                    2109 	.db #0x1c	; 28
      002931 22                    2110 	.db #0x22	; 34
      002932 3A                    2111 	.db #0x3a	; 58
      002933 2A                    2112 	.db #0x2a	; 42
      002934 3A                    2113 	.db #0x3a	; 58
      002935 02                    2114 	.db #0x02	; 2
      002936 1C                    2115 	.db #0x1c	; 28
      002937 00                    2116 	.db #0x00	; 0
      002938 1C                    2117 	.db #0x1c	; 28
      002939 22                    2118 	.db #0x22	; 34
      00293A 22                    2119 	.db #0x22	; 34
      00293B 22                    2120 	.db #0x22	; 34
      00293C 3E                    2121 	.db #0x3e	; 62
      00293D 22                    2122 	.db #0x22	; 34
      00293E 22                    2123 	.db #0x22	; 34
      00293F 00                    2124 	.db #0x00	; 0
      002940 1E                    2125 	.db #0x1e	; 30
      002941 22                    2126 	.db #0x22	; 34
      002942 22                    2127 	.db #0x22	; 34
      002943 1E                    2128 	.db #0x1e	; 30
      002944 22                    2129 	.db #0x22	; 34
      002945 22                    2130 	.db #0x22	; 34
      002946 1E                    2131 	.db #0x1e	; 30
      002947 00                    2132 	.db #0x00	; 0
      002948 1C                    2133 	.db #0x1c	; 28
      002949 22                    2134 	.db #0x22	; 34
      00294A 02                    2135 	.db #0x02	; 2
      00294B 02                    2136 	.db #0x02	; 2
      00294C 02                    2137 	.db #0x02	; 2
      00294D 22                    2138 	.db #0x22	; 34
      00294E 1C                    2139 	.db #0x1c	; 28
      00294F 00                    2140 	.db #0x00	; 0
      002950 1E                    2141 	.db #0x1e	; 30
      002951 22                    2142 	.db #0x22	; 34
      002952 22                    2143 	.db #0x22	; 34
      002953 22                    2144 	.db #0x22	; 34
      002954 22                    2145 	.db #0x22	; 34
      002955 22                    2146 	.db #0x22	; 34
      002956 1E                    2147 	.db #0x1e	; 30
      002957 00                    2148 	.db #0x00	; 0
      002958 3E                    2149 	.db #0x3e	; 62
      002959 02                    2150 	.db #0x02	; 2
      00295A 02                    2151 	.db #0x02	; 2
      00295B 1E                    2152 	.db #0x1e	; 30
      00295C 02                    2153 	.db #0x02	; 2
      00295D 02                    2154 	.db #0x02	; 2
      00295E 3E                    2155 	.db #0x3e	; 62
      00295F 00                    2156 	.db #0x00	; 0
      002960 3E                    2157 	.db #0x3e	; 62
      002961 02                    2158 	.db #0x02	; 2
      002962 02                    2159 	.db #0x02	; 2
      002963 1E                    2160 	.db #0x1e	; 30
      002964 02                    2161 	.db #0x02	; 2
      002965 02                    2162 	.db #0x02	; 2
      002966 02                    2163 	.db #0x02	; 2
      002967 00                    2164 	.db #0x00	; 0
      002968 1C                    2165 	.db #0x1c	; 28
      002969 22                    2166 	.db #0x22	; 34
      00296A 02                    2167 	.db #0x02	; 2
      00296B 3A                    2168 	.db #0x3a	; 58
      00296C 22                    2169 	.db #0x22	; 34
      00296D 22                    2170 	.db #0x22	; 34
      00296E 3C                    2171 	.db #0x3c	; 60
      00296F 00                    2172 	.db #0x00	; 0
      002970 22                    2173 	.db #0x22	; 34
      002971 22                    2174 	.db #0x22	; 34
      002972 22                    2175 	.db #0x22	; 34
      002973 3E                    2176 	.db #0x3e	; 62
      002974 22                    2177 	.db #0x22	; 34
      002975 22                    2178 	.db #0x22	; 34
      002976 22                    2179 	.db #0x22	; 34
      002977 00                    2180 	.db #0x00	; 0
      002978 1C                    2181 	.db #0x1c	; 28
      002979 08                    2182 	.db #0x08	; 8
      00297A 08                    2183 	.db #0x08	; 8
      00297B 08                    2184 	.db #0x08	; 8
      00297C 08                    2185 	.db #0x08	; 8
      00297D 08                    2186 	.db #0x08	; 8
      00297E 1C                    2187 	.db #0x1c	; 28
      00297F 00                    2188 	.db #0x00	; 0
      002980 20                    2189 	.db #0x20	; 32
      002981 20                    2190 	.db #0x20	; 32
      002982 20                    2191 	.db #0x20	; 32
      002983 20                    2192 	.db #0x20	; 32
      002984 22                    2193 	.db #0x22	; 34
      002985 22                    2194 	.db #0x22	; 34
      002986 1C                    2195 	.db #0x1c	; 28
      002987 00                    2196 	.db #0x00	; 0
      002988 22                    2197 	.db #0x22	; 34
      002989 12                    2198 	.db #0x12	; 18
      00298A 0A                    2199 	.db #0x0a	; 10
      00298B 06                    2200 	.db #0x06	; 6
      00298C 0A                    2201 	.db #0x0a	; 10
      00298D 12                    2202 	.db #0x12	; 18
      00298E 22                    2203 	.db #0x22	; 34
      00298F 00                    2204 	.db #0x00	; 0
      002990 02                    2205 	.db #0x02	; 2
      002991 02                    2206 	.db #0x02	; 2
      002992 02                    2207 	.db #0x02	; 2
      002993 02                    2208 	.db #0x02	; 2
      002994 02                    2209 	.db #0x02	; 2
      002995 02                    2210 	.db #0x02	; 2
      002996 3E                    2211 	.db #0x3e	; 62
      002997 00                    2212 	.db #0x00	; 0
      002998 22                    2213 	.db #0x22	; 34
      002999 36                    2214 	.db #0x36	; 54	'6'
      00299A 2A                    2215 	.db #0x2a	; 42
      00299B 22                    2216 	.db #0x22	; 34
      00299C 22                    2217 	.db #0x22	; 34
      00299D 22                    2218 	.db #0x22	; 34
      00299E 22                    2219 	.db #0x22	; 34
      00299F 00                    2220 	.db #0x00	; 0
      0029A0 22                    2221 	.db #0x22	; 34
      0029A1 26                    2222 	.db #0x26	; 38
      0029A2 2A                    2223 	.db #0x2a	; 42
      0029A3 32                    2224 	.db #0x32	; 50	'2'
      0029A4 22                    2225 	.db #0x22	; 34
      0029A5 22                    2226 	.db #0x22	; 34
      0029A6 22                    2227 	.db #0x22	; 34
      0029A7 00                    2228 	.db #0x00	; 0
      0029A8 1C                    2229 	.db #0x1c	; 28
      0029A9 22                    2230 	.db #0x22	; 34
      0029AA 22                    2231 	.db #0x22	; 34
      0029AB 22                    2232 	.db #0x22	; 34
      0029AC 22                    2233 	.db #0x22	; 34
      0029AD 22                    2234 	.db #0x22	; 34
      0029AE 1C                    2235 	.db #0x1c	; 28
      0029AF 00                    2236 	.db #0x00	; 0
      0029B0 1E                    2237 	.db #0x1e	; 30
      0029B1 22                    2238 	.db #0x22	; 34
      0029B2 22                    2239 	.db #0x22	; 34
      0029B3 1E                    2240 	.db #0x1e	; 30
      0029B4 02                    2241 	.db #0x02	; 2
      0029B5 02                    2242 	.db #0x02	; 2
      0029B6 02                    2243 	.db #0x02	; 2
      0029B7 00                    2244 	.db #0x00	; 0
      0029B8 1C                    2245 	.db #0x1c	; 28
      0029B9 22                    2246 	.db #0x22	; 34
      0029BA 22                    2247 	.db #0x22	; 34
      0029BB 22                    2248 	.db #0x22	; 34
      0029BC 2A                    2249 	.db #0x2a	; 42
      0029BD 12                    2250 	.db #0x12	; 18
      0029BE 2C                    2251 	.db #0x2c	; 44
      0029BF 00                    2252 	.db #0x00	; 0
      0029C0 1E                    2253 	.db #0x1e	; 30
      0029C1 22                    2254 	.db #0x22	; 34
      0029C2 22                    2255 	.db #0x22	; 34
      0029C3 1E                    2256 	.db #0x1e	; 30
      0029C4 12                    2257 	.db #0x12	; 18
      0029C5 22                    2258 	.db #0x22	; 34
      0029C6 22                    2259 	.db #0x22	; 34
      0029C7 00                    2260 	.db #0x00	; 0
      0029C8 1C                    2261 	.db #0x1c	; 28
      0029C9 22                    2262 	.db #0x22	; 34
      0029CA 02                    2263 	.db #0x02	; 2
      0029CB 1C                    2264 	.db #0x1c	; 28
      0029CC 20                    2265 	.db #0x20	; 32
      0029CD 22                    2266 	.db #0x22	; 34
      0029CE 1C                    2267 	.db #0x1c	; 28
      0029CF 00                    2268 	.db #0x00	; 0
      0029D0 3E                    2269 	.db #0x3e	; 62
      0029D1 08                    2270 	.db #0x08	; 8
      0029D2 08                    2271 	.db #0x08	; 8
      0029D3 08                    2272 	.db #0x08	; 8
      0029D4 08                    2273 	.db #0x08	; 8
      0029D5 08                    2274 	.db #0x08	; 8
      0029D6 08                    2275 	.db #0x08	; 8
      0029D7 00                    2276 	.db #0x00	; 0
      0029D8 22                    2277 	.db #0x22	; 34
      0029D9 22                    2278 	.db #0x22	; 34
      0029DA 22                    2279 	.db #0x22	; 34
      0029DB 22                    2280 	.db #0x22	; 34
      0029DC 22                    2281 	.db #0x22	; 34
      0029DD 22                    2282 	.db #0x22	; 34
      0029DE 1C                    2283 	.db #0x1c	; 28
      0029DF 00                    2284 	.db #0x00	; 0
      0029E0 22                    2285 	.db #0x22	; 34
      0029E1 22                    2286 	.db #0x22	; 34
      0029E2 22                    2287 	.db #0x22	; 34
      0029E3 22                    2288 	.db #0x22	; 34
      0029E4 22                    2289 	.db #0x22	; 34
      0029E5 14                    2290 	.db #0x14	; 20
      0029E6 08                    2291 	.db #0x08	; 8
      0029E7 00                    2292 	.db #0x00	; 0
      0029E8 22                    2293 	.db #0x22	; 34
      0029E9 22                    2294 	.db #0x22	; 34
      0029EA 2A                    2295 	.db #0x2a	; 42
      0029EB 2A                    2296 	.db #0x2a	; 42
      0029EC 2A                    2297 	.db #0x2a	; 42
      0029ED 2A                    2298 	.db #0x2a	; 42
      0029EE 14                    2299 	.db #0x14	; 20
      0029EF 00                    2300 	.db #0x00	; 0
      0029F0 22                    2301 	.db #0x22	; 34
      0029F1 22                    2302 	.db #0x22	; 34
      0029F2 14                    2303 	.db #0x14	; 20
      0029F3 08                    2304 	.db #0x08	; 8
      0029F4 14                    2305 	.db #0x14	; 20
      0029F5 22                    2306 	.db #0x22	; 34
      0029F6 22                    2307 	.db #0x22	; 34
      0029F7 00                    2308 	.db #0x00	; 0
      0029F8 22                    2309 	.db #0x22	; 34
      0029F9 22                    2310 	.db #0x22	; 34
      0029FA 22                    2311 	.db #0x22	; 34
      0029FB 14                    2312 	.db #0x14	; 20
      0029FC 08                    2313 	.db #0x08	; 8
      0029FD 08                    2314 	.db #0x08	; 8
      0029FE 08                    2315 	.db #0x08	; 8
      0029FF 00                    2316 	.db #0x00	; 0
      002A00 1E                    2317 	.db #0x1e	; 30
      002A01 10                    2318 	.db #0x10	; 16
      002A02 08                    2319 	.db #0x08	; 8
      002A03 04                    2320 	.db #0x04	; 4
      002A04 02                    2321 	.db #0x02	; 2
      002A05 02                    2322 	.db #0x02	; 2
      002A06 1E                    2323 	.db #0x1e	; 30
      002A07 00                    2324 	.db #0x00	; 0
      002A08 1C                    2325 	.db #0x1c	; 28
      002A09 04                    2326 	.db #0x04	; 4
      002A0A 04                    2327 	.db #0x04	; 4
      002A0B 04                    2328 	.db #0x04	; 4
      002A0C 04                    2329 	.db #0x04	; 4
      002A0D 04                    2330 	.db #0x04	; 4
      002A0E 1C                    2331 	.db #0x1c	; 28
      002A0F 00                    2332 	.db #0x00	; 0
      002A10 00                    2333 	.db #0x00	; 0
      002A11 02                    2334 	.db #0x02	; 2
      002A12 04                    2335 	.db #0x04	; 4
      002A13 08                    2336 	.db #0x08	; 8
      002A14 10                    2337 	.db #0x10	; 16
      002A15 20                    2338 	.db #0x20	; 32
      002A16 00                    2339 	.db #0x00	; 0
      002A17 00                    2340 	.db #0x00	; 0
      002A18 1C                    2341 	.db #0x1c	; 28
      002A19 10                    2342 	.db #0x10	; 16
      002A1A 10                    2343 	.db #0x10	; 16
      002A1B 10                    2344 	.db #0x10	; 16
      002A1C 10                    2345 	.db #0x10	; 16
      002A1D 10                    2346 	.db #0x10	; 16
      002A1E 1C                    2347 	.db #0x1c	; 28
      002A1F 00                    2348 	.db #0x00	; 0
      002A20 08                    2349 	.db #0x08	; 8
      002A21 14                    2350 	.db #0x14	; 20
      002A22 22                    2351 	.db #0x22	; 34
      002A23 00                    2352 	.db #0x00	; 0
      002A24 00                    2353 	.db #0x00	; 0
      002A25 00                    2354 	.db #0x00	; 0
      002A26 00                    2355 	.db #0x00	; 0
      002A27 00                    2356 	.db #0x00	; 0
      002A28 00                    2357 	.db #0x00	; 0
      002A29 00                    2358 	.db #0x00	; 0
      002A2A 00                    2359 	.db #0x00	; 0
      002A2B 00                    2360 	.db #0x00	; 0
      002A2C 00                    2361 	.db #0x00	; 0
      002A2D 00                    2362 	.db #0x00	; 0
      002A2E 00                    2363 	.db #0x00	; 0
      002A2F 3F                    2364 	.db #0x3f	; 63
      002A30 0C                    2365 	.db #0x0c	; 12
      002A31 0C                    2366 	.db #0x0c	; 12
      002A32 08                    2367 	.db #0x08	; 8
      002A33 00                    2368 	.db #0x00	; 0
      002A34 00                    2369 	.db #0x00	; 0
      002A35 00                    2370 	.db #0x00	; 0
      002A36 00                    2371 	.db #0x00	; 0
      002A37 00                    2372 	.db #0x00	; 0
      002A38 00                    2373 	.db #0x00	; 0
      002A39 00                    2374 	.db #0x00	; 0
      002A3A 1C                    2375 	.db #0x1c	; 28
      002A3B 20                    2376 	.db #0x20	; 32
      002A3C 3C                    2377 	.db #0x3c	; 60
      002A3D 22                    2378 	.db #0x22	; 34
      002A3E 3C                    2379 	.db #0x3c	; 60
      002A3F 00                    2380 	.db #0x00	; 0
      002A40 02                    2381 	.db #0x02	; 2
      002A41 02                    2382 	.db #0x02	; 2
      002A42 1E                    2383 	.db #0x1e	; 30
      002A43 22                    2384 	.db #0x22	; 34
      002A44 22                    2385 	.db #0x22	; 34
      002A45 22                    2386 	.db #0x22	; 34
      002A46 1E                    2387 	.db #0x1e	; 30
      002A47 00                    2388 	.db #0x00	; 0
      002A48 00                    2389 	.db #0x00	; 0
      002A49 00                    2390 	.db #0x00	; 0
      002A4A 1C                    2391 	.db #0x1c	; 28
      002A4B 22                    2392 	.db #0x22	; 34
      002A4C 02                    2393 	.db #0x02	; 2
      002A4D 22                    2394 	.db #0x22	; 34
      002A4E 1C                    2395 	.db #0x1c	; 28
      002A4F 00                    2396 	.db #0x00	; 0
      002A50 20                    2397 	.db #0x20	; 32
      002A51 20                    2398 	.db #0x20	; 32
      002A52 3C                    2399 	.db #0x3c	; 60
      002A53 22                    2400 	.db #0x22	; 34
      002A54 22                    2401 	.db #0x22	; 34
      002A55 22                    2402 	.db #0x22	; 34
      002A56 3C                    2403 	.db #0x3c	; 60
      002A57 00                    2404 	.db #0x00	; 0
      002A58 00                    2405 	.db #0x00	; 0
      002A59 00                    2406 	.db #0x00	; 0
      002A5A 1C                    2407 	.db #0x1c	; 28
      002A5B 22                    2408 	.db #0x22	; 34
      002A5C 1E                    2409 	.db #0x1e	; 30
      002A5D 02                    2410 	.db #0x02	; 2
      002A5E 1C                    2411 	.db #0x1c	; 28
      002A5F 00                    2412 	.db #0x00	; 0
      002A60 18                    2413 	.db #0x18	; 24
      002A61 04                    2414 	.db #0x04	; 4
      002A62 04                    2415 	.db #0x04	; 4
      002A63 1E                    2416 	.db #0x1e	; 30
      002A64 04                    2417 	.db #0x04	; 4
      002A65 04                    2418 	.db #0x04	; 4
      002A66 04                    2419 	.db #0x04	; 4
      002A67 00                    2420 	.db #0x00	; 0
      002A68 00                    2421 	.db #0x00	; 0
      002A69 00                    2422 	.db #0x00	; 0
      002A6A 3C                    2423 	.db #0x3c	; 60
      002A6B 22                    2424 	.db #0x22	; 34
      002A6C 22                    2425 	.db #0x22	; 34
      002A6D 3C                    2426 	.db #0x3c	; 60
      002A6E 20                    2427 	.db #0x20	; 32
      002A6F 1C                    2428 	.db #0x1c	; 28
      002A70 02                    2429 	.db #0x02	; 2
      002A71 02                    2430 	.db #0x02	; 2
      002A72 0E                    2431 	.db #0x0e	; 14
      002A73 12                    2432 	.db #0x12	; 18
      002A74 12                    2433 	.db #0x12	; 18
      002A75 12                    2434 	.db #0x12	; 18
      002A76 12                    2435 	.db #0x12	; 18
      002A77 00                    2436 	.db #0x00	; 0
      002A78 08                    2437 	.db #0x08	; 8
      002A79 00                    2438 	.db #0x00	; 0
      002A7A 08                    2439 	.db #0x08	; 8
      002A7B 08                    2440 	.db #0x08	; 8
      002A7C 08                    2441 	.db #0x08	; 8
      002A7D 08                    2442 	.db #0x08	; 8
      002A7E 18                    2443 	.db #0x18	; 24
      002A7F 00                    2444 	.db #0x00	; 0
      002A80 10                    2445 	.db #0x10	; 16
      002A81 00                    2446 	.db #0x00	; 0
      002A82 18                    2447 	.db #0x18	; 24
      002A83 10                    2448 	.db #0x10	; 16
      002A84 10                    2449 	.db #0x10	; 16
      002A85 10                    2450 	.db #0x10	; 16
      002A86 12                    2451 	.db #0x12	; 18
      002A87 0C                    2452 	.db #0x0c	; 12
      002A88 02                    2453 	.db #0x02	; 2
      002A89 02                    2454 	.db #0x02	; 2
      002A8A 12                    2455 	.db #0x12	; 18
      002A8B 0A                    2456 	.db #0x0a	; 10
      002A8C 06                    2457 	.db #0x06	; 6
      002A8D 0A                    2458 	.db #0x0a	; 10
      002A8E 12                    2459 	.db #0x12	; 18
      002A8F 00                    2460 	.db #0x00	; 0
      002A90 08                    2461 	.db #0x08	; 8
      002A91 08                    2462 	.db #0x08	; 8
      002A92 08                    2463 	.db #0x08	; 8
      002A93 08                    2464 	.db #0x08	; 8
      002A94 08                    2465 	.db #0x08	; 8
      002A95 08                    2466 	.db #0x08	; 8
      002A96 18                    2467 	.db #0x18	; 24
      002A97 00                    2468 	.db #0x00	; 0
      002A98 00                    2469 	.db #0x00	; 0
      002A99 00                    2470 	.db #0x00	; 0
      002A9A 16                    2471 	.db #0x16	; 22
      002A9B 2A                    2472 	.db #0x2a	; 42
      002A9C 2A                    2473 	.db #0x2a	; 42
      002A9D 22                    2474 	.db #0x22	; 34
      002A9E 22                    2475 	.db #0x22	; 34
      002A9F 00                    2476 	.db #0x00	; 0
      002AA0 00                    2477 	.db #0x00	; 0
      002AA1 00                    2478 	.db #0x00	; 0
      002AA2 0E                    2479 	.db #0x0e	; 14
      002AA3 12                    2480 	.db #0x12	; 18
      002AA4 12                    2481 	.db #0x12	; 18
      002AA5 12                    2482 	.db #0x12	; 18
      002AA6 12                    2483 	.db #0x12	; 18
      002AA7 00                    2484 	.db #0x00	; 0
      002AA8 00                    2485 	.db #0x00	; 0
      002AA9 00                    2486 	.db #0x00	; 0
      002AAA 1C                    2487 	.db #0x1c	; 28
      002AAB 22                    2488 	.db #0x22	; 34
      002AAC 22                    2489 	.db #0x22	; 34
      002AAD 22                    2490 	.db #0x22	; 34
      002AAE 1C                    2491 	.db #0x1c	; 28
      002AAF 00                    2492 	.db #0x00	; 0
      002AB0 00                    2493 	.db #0x00	; 0
      002AB1 00                    2494 	.db #0x00	; 0
      002AB2 1E                    2495 	.db #0x1e	; 30
      002AB3 22                    2496 	.db #0x22	; 34
      002AB4 22                    2497 	.db #0x22	; 34
      002AB5 22                    2498 	.db #0x22	; 34
      002AB6 1E                    2499 	.db #0x1e	; 30
      002AB7 02                    2500 	.db #0x02	; 2
      002AB8 00                    2501 	.db #0x00	; 0
      002AB9 00                    2502 	.db #0x00	; 0
      002ABA 3C                    2503 	.db #0x3c	; 60
      002ABB 22                    2504 	.db #0x22	; 34
      002ABC 22                    2505 	.db #0x22	; 34
      002ABD 22                    2506 	.db #0x22	; 34
      002ABE 3C                    2507 	.db #0x3c	; 60
      002ABF 20                    2508 	.db #0x20	; 32
      002AC0 00                    2509 	.db #0x00	; 0
      002AC1 00                    2510 	.db #0x00	; 0
      002AC2 1A                    2511 	.db #0x1a	; 26
      002AC3 24                    2512 	.db #0x24	; 36
      002AC4 04                    2513 	.db #0x04	; 4
      002AC5 04                    2514 	.db #0x04	; 4
      002AC6 0E                    2515 	.db #0x0e	; 14
      002AC7 00                    2516 	.db #0x00	; 0
      002AC8 00                    2517 	.db #0x00	; 0
      002AC9 00                    2518 	.db #0x00	; 0
      002ACA 1C                    2519 	.db #0x1c	; 28
      002ACB 02                    2520 	.db #0x02	; 2
      002ACC 1C                    2521 	.db #0x1c	; 28
      002ACD 20                    2522 	.db #0x20	; 32
      002ACE 1C                    2523 	.db #0x1c	; 28
      002ACF 00                    2524 	.db #0x00	; 0
      002AD0 00                    2525 	.db #0x00	; 0
      002AD1 04                    2526 	.db #0x04	; 4
      002AD2 1E                    2527 	.db #0x1e	; 30
      002AD3 04                    2528 	.db #0x04	; 4
      002AD4 04                    2529 	.db #0x04	; 4
      002AD5 14                    2530 	.db #0x14	; 20
      002AD6 08                    2531 	.db #0x08	; 8
      002AD7 00                    2532 	.db #0x00	; 0
      002AD8 00                    2533 	.db #0x00	; 0
      002AD9 00                    2534 	.db #0x00	; 0
      002ADA 12                    2535 	.db #0x12	; 18
      002ADB 12                    2536 	.db #0x12	; 18
      002ADC 12                    2537 	.db #0x12	; 18
      002ADD 1A                    2538 	.db #0x1a	; 26
      002ADE 14                    2539 	.db #0x14	; 20
      002ADF 00                    2540 	.db #0x00	; 0
      002AE0 00                    2541 	.db #0x00	; 0
      002AE1 00                    2542 	.db #0x00	; 0
      002AE2 22                    2543 	.db #0x22	; 34
      002AE3 22                    2544 	.db #0x22	; 34
      002AE4 22                    2545 	.db #0x22	; 34
      002AE5 14                    2546 	.db #0x14	; 20
      002AE6 08                    2547 	.db #0x08	; 8
      002AE7 00                    2548 	.db #0x00	; 0
      002AE8 00                    2549 	.db #0x00	; 0
      002AE9 00                    2550 	.db #0x00	; 0
      002AEA 22                    2551 	.db #0x22	; 34
      002AEB 22                    2552 	.db #0x22	; 34
      002AEC 2A                    2553 	.db #0x2a	; 42
      002AED 3E                    2554 	.db #0x3e	; 62
      002AEE 14                    2555 	.db #0x14	; 20
      002AEF 00                    2556 	.db #0x00	; 0
      002AF0 00                    2557 	.db #0x00	; 0
      002AF1 00                    2558 	.db #0x00	; 0
      002AF2 12                    2559 	.db #0x12	; 18
      002AF3 12                    2560 	.db #0x12	; 18
      002AF4 0C                    2561 	.db #0x0c	; 12
      002AF5 12                    2562 	.db #0x12	; 18
      002AF6 12                    2563 	.db #0x12	; 18
      002AF7 00                    2564 	.db #0x00	; 0
      002AF8 00                    2565 	.db #0x00	; 0
      002AF9 00                    2566 	.db #0x00	; 0
      002AFA 12                    2567 	.db #0x12	; 18
      002AFB 12                    2568 	.db #0x12	; 18
      002AFC 12                    2569 	.db #0x12	; 18
      002AFD 1C                    2570 	.db #0x1c	; 28
      002AFE 08                    2571 	.db #0x08	; 8
      002AFF 06                    2572 	.db #0x06	; 6
      002B00 00                    2573 	.db #0x00	; 0
      002B01 00                    2574 	.db #0x00	; 0
      002B02 1E                    2575 	.db #0x1e	; 30
      002B03 10                    2576 	.db #0x10	; 16
      002B04 0C                    2577 	.db #0x0c	; 12
      002B05 02                    2578 	.db #0x02	; 2
      002B06 1E                    2579 	.db #0x1e	; 30
      002B07 00                    2580 	.db #0x00	; 0
      002B08 18                    2581 	.db #0x18	; 24
      002B09 04                    2582 	.db #0x04	; 4
      002B0A 04                    2583 	.db #0x04	; 4
      002B0B 06                    2584 	.db #0x06	; 6
      002B0C 04                    2585 	.db #0x04	; 4
      002B0D 04                    2586 	.db #0x04	; 4
      002B0E 18                    2587 	.db #0x18	; 24
      002B0F 00                    2588 	.db #0x00	; 0
      002B10 08                    2589 	.db #0x08	; 8
      002B11 08                    2590 	.db #0x08	; 8
      002B12 08                    2591 	.db #0x08	; 8
      002B13 00                    2592 	.db #0x00	; 0
      002B14 08                    2593 	.db #0x08	; 8
      002B15 08                    2594 	.db #0x08	; 8
      002B16 08                    2595 	.db #0x08	; 8
      002B17 00                    2596 	.db #0x00	; 0
      002B18 0C                    2597 	.db #0x0c	; 12
      002B19 10                    2598 	.db #0x10	; 16
      002B1A 10                    2599 	.db #0x10	; 16
      002B1B 30                    2600 	.db #0x30	; 48	'0'
      002B1C 10                    2601 	.db #0x10	; 16
      002B1D 10                    2602 	.db #0x10	; 16
      002B1E 0C                    2603 	.db #0x0c	; 12
      002B1F 00                    2604 	.db #0x00	; 0
      002B20 14                    2605 	.db #0x14	; 20
      002B21 0A                    2606 	.db #0x0a	; 10
      002B22 00                    2607 	.db #0x00	; 0
      002B23 00                    2608 	.db #0x00	; 0
      002B24 00                    2609 	.db #0x00	; 0
      002B25 00                    2610 	.db #0x00	; 0
      002B26 00                    2611 	.db #0x00	; 0
      002B27 00                    2612 	.db #0x00	; 0
      002B28 08                    2613 	.db #0x08	; 8
      002B29 1C                    2614 	.db #0x1c	; 28
      002B2A 36                    2615 	.db #0x36	; 54	'6'
      002B2B 22                    2616 	.db #0x22	; 34
      002B2C 22                    2617 	.db #0x22	; 34
      002B2D 3E                    2618 	.db #0x3e	; 62
      002B2E 00                    2619 	.db #0x00	; 0
      002B2F 00                    2620 	.db #0x00	; 0
      002B30 1C                    2621 	.db #0x1c	; 28
      002B31 22                    2622 	.db #0x22	; 34
      002B32 02                    2623 	.db #0x02	; 2
      002B33 02                    2624 	.db #0x02	; 2
      002B34 22                    2625 	.db #0x22	; 34
      002B35 1C                    2626 	.db #0x1c	; 28
      002B36 08                    2627 	.db #0x08	; 8
      002B37 0C                    2628 	.db #0x0c	; 12
      002B38 12                    2629 	.db #0x12	; 18
      002B39 00                    2630 	.db #0x00	; 0
      002B3A 12                    2631 	.db #0x12	; 18
      002B3B 12                    2632 	.db #0x12	; 18
      002B3C 12                    2633 	.db #0x12	; 18
      002B3D 1A                    2634 	.db #0x1a	; 26
      002B3E 14                    2635 	.db #0x14	; 20
      002B3F 00                    2636 	.db #0x00	; 0
      002B40 30                    2637 	.db #0x30	; 48	'0'
      002B41 00                    2638 	.db #0x00	; 0
      002B42 1C                    2639 	.db #0x1c	; 28
      002B43 22                    2640 	.db #0x22	; 34
      002B44 1E                    2641 	.db #0x1e	; 30
      002B45 02                    2642 	.db #0x02	; 2
      002B46 1C                    2643 	.db #0x1c	; 28
      002B47 00                    2644 	.db #0x00	; 0
      002B48 1C                    2645 	.db #0x1c	; 28
      002B49 00                    2646 	.db #0x00	; 0
      002B4A 1C                    2647 	.db #0x1c	; 28
      002B4B 20                    2648 	.db #0x20	; 32
      002B4C 3C                    2649 	.db #0x3c	; 60
      002B4D 22                    2650 	.db #0x22	; 34
      002B4E 3C                    2651 	.db #0x3c	; 60
      002B4F 00                    2652 	.db #0x00	; 0
      002B50 14                    2653 	.db #0x14	; 20
      002B51 00                    2654 	.db #0x00	; 0
      002B52 1C                    2655 	.db #0x1c	; 28
      002B53 20                    2656 	.db #0x20	; 32
      002B54 3C                    2657 	.db #0x3c	; 60
      002B55 22                    2658 	.db #0x22	; 34
      002B56 3C                    2659 	.db #0x3c	; 60
      002B57 00                    2660 	.db #0x00	; 0
      002B58 0C                    2661 	.db #0x0c	; 12
      002B59 00                    2662 	.db #0x00	; 0
      002B5A 1C                    2663 	.db #0x1c	; 28
      002B5B 20                    2664 	.db #0x20	; 32
      002B5C 3C                    2665 	.db #0x3c	; 60
      002B5D 22                    2666 	.db #0x22	; 34
      002B5E 3C                    2667 	.db #0x3c	; 60
      002B5F 00                    2668 	.db #0x00	; 0
      002B60 1C                    2669 	.db #0x1c	; 28
      002B61 14                    2670 	.db #0x14	; 20
      002B62 1C                    2671 	.db #0x1c	; 28
      002B63 20                    2672 	.db #0x20	; 32
      002B64 3C                    2673 	.db #0x3c	; 60
      002B65 22                    2674 	.db #0x22	; 34
      002B66 3C                    2675 	.db #0x3c	; 60
      002B67 00                    2676 	.db #0x00	; 0
      002B68 00                    2677 	.db #0x00	; 0
      002B69 1C                    2678 	.db #0x1c	; 28
      002B6A 22                    2679 	.db #0x22	; 34
      002B6B 02                    2680 	.db #0x02	; 2
      002B6C 22                    2681 	.db #0x22	; 34
      002B6D 1C                    2682 	.db #0x1c	; 28
      002B6E 08                    2683 	.db #0x08	; 8
      002B6F 0C                    2684 	.db #0x0c	; 12
      002B70 1C                    2685 	.db #0x1c	; 28
      002B71 00                    2686 	.db #0x00	; 0
      002B72 1C                    2687 	.db #0x1c	; 28
      002B73 22                    2688 	.db #0x22	; 34
      002B74 1E                    2689 	.db #0x1e	; 30
      002B75 02                    2690 	.db #0x02	; 2
      002B76 1C                    2691 	.db #0x1c	; 28
      002B77 00                    2692 	.db #0x00	; 0
      002B78 14                    2693 	.db #0x14	; 20
      002B79 00                    2694 	.db #0x00	; 0
      002B7A 1C                    2695 	.db #0x1c	; 28
      002B7B 22                    2696 	.db #0x22	; 34
      002B7C 1E                    2697 	.db #0x1e	; 30
      002B7D 02                    2698 	.db #0x02	; 2
      002B7E 1C                    2699 	.db #0x1c	; 28
      002B7F 00                    2700 	.db #0x00	; 0
      002B80 0C                    2701 	.db #0x0c	; 12
      002B81 00                    2702 	.db #0x00	; 0
      002B82 1C                    2703 	.db #0x1c	; 28
      002B83 22                    2704 	.db #0x22	; 34
      002B84 1E                    2705 	.db #0x1e	; 30
      002B85 02                    2706 	.db #0x02	; 2
      002B86 1C                    2707 	.db #0x1c	; 28
      002B87 00                    2708 	.db #0x00	; 0
      002B88 14                    2709 	.db #0x14	; 20
      002B89 00                    2710 	.db #0x00	; 0
      002B8A 08                    2711 	.db #0x08	; 8
      002B8B 08                    2712 	.db #0x08	; 8
      002B8C 08                    2713 	.db #0x08	; 8
      002B8D 08                    2714 	.db #0x08	; 8
      002B8E 18                    2715 	.db #0x18	; 24
      002B8F 00                    2716 	.db #0x00	; 0
      002B90 08                    2717 	.db #0x08	; 8
      002B91 14                    2718 	.db #0x14	; 20
      002B92 00                    2719 	.db #0x00	; 0
      002B93 08                    2720 	.db #0x08	; 8
      002B94 08                    2721 	.db #0x08	; 8
      002B95 08                    2722 	.db #0x08	; 8
      002B96 18                    2723 	.db #0x18	; 24
      002B97 00                    2724 	.db #0x00	; 0
      002B98 04                    2725 	.db #0x04	; 4
      002B99 00                    2726 	.db #0x00	; 0
      002B9A 08                    2727 	.db #0x08	; 8
      002B9B 08                    2728 	.db #0x08	; 8
      002B9C 08                    2729 	.db #0x08	; 8
      002B9D 08                    2730 	.db #0x08	; 8
      002B9E 18                    2731 	.db #0x18	; 24
      002B9F 00                    2732 	.db #0x00	; 0
      002BA0 14                    2733 	.db #0x14	; 20
      002BA1 00                    2734 	.db #0x00	; 0
      002BA2 08                    2735 	.db #0x08	; 8
      002BA3 14                    2736 	.db #0x14	; 20
      002BA4 22                    2737 	.db #0x22	; 34
      002BA5 3E                    2738 	.db #0x3e	; 62
      002BA6 22                    2739 	.db #0x22	; 34
      002BA7 00                    2740 	.db #0x00	; 0
      002BA8 1C                    2741 	.db #0x1c	; 28
      002BA9 14                    2742 	.db #0x14	; 20
      002BAA 1C                    2743 	.db #0x1c	; 28
      002BAB 36                    2744 	.db #0x36	; 54	'6'
      002BAC 22                    2745 	.db #0x22	; 34
      002BAD 3E                    2746 	.db #0x3e	; 62
      002BAE 22                    2747 	.db #0x22	; 34
      002BAF 00                    2748 	.db #0x00	; 0
      002BB0 30                    2749 	.db #0x30	; 48	'0'
      002BB1 00                    2750 	.db #0x00	; 0
      002BB2 3E                    2751 	.db #0x3e	; 62
      002BB3 02                    2752 	.db #0x02	; 2
      002BB4 1E                    2753 	.db #0x1e	; 30
      002BB5 02                    2754 	.db #0x02	; 2
      002BB6 3E                    2755 	.db #0x3e	; 62
      002BB7 00                    2756 	.db #0x00	; 0
      002BB8 00                    2757 	.db #0x00	; 0
      002BB9 00                    2758 	.db #0x00	; 0
      002BBA 1E                    2759 	.db #0x1e	; 30
      002BBB 28                    2760 	.db #0x28	; 40
      002BBC 3E                    2761 	.db #0x3e	; 62
      002BBD 0A                    2762 	.db #0x0a	; 10
      002BBE 3C                    2763 	.db #0x3c	; 60
      002BBF 00                    2764 	.db #0x00	; 0
      002BC0 3C                    2765 	.db #0x3c	; 60
      002BC1 0A                    2766 	.db #0x0a	; 10
      002BC2 0A                    2767 	.db #0x0a	; 10
      002BC3 3E                    2768 	.db #0x3e	; 62
      002BC4 0A                    2769 	.db #0x0a	; 10
      002BC5 0A                    2770 	.db #0x0a	; 10
      002BC6 3A                    2771 	.db #0x3a	; 58
      002BC7 00                    2772 	.db #0x00	; 0
      002BC8 1C                    2773 	.db #0x1c	; 28
      002BC9 00                    2774 	.db #0x00	; 0
      002BCA 0C                    2775 	.db #0x0c	; 12
      002BCB 12                    2776 	.db #0x12	; 18
      002BCC 12                    2777 	.db #0x12	; 18
      002BCD 12                    2778 	.db #0x12	; 18
      002BCE 0C                    2779 	.db #0x0c	; 12
      002BCF 00                    2780 	.db #0x00	; 0
      002BD0 14                    2781 	.db #0x14	; 20
      002BD1 00                    2782 	.db #0x00	; 0
      002BD2 0C                    2783 	.db #0x0c	; 12
      002BD3 12                    2784 	.db #0x12	; 18
      002BD4 12                    2785 	.db #0x12	; 18
      002BD5 12                    2786 	.db #0x12	; 18
      002BD6 0C                    2787 	.db #0x0c	; 12
      002BD7 00                    2788 	.db #0x00	; 0
      002BD8 06                    2789 	.db #0x06	; 6
      002BD9 00                    2790 	.db #0x00	; 0
      002BDA 0C                    2791 	.db #0x0c	; 12
      002BDB 12                    2792 	.db #0x12	; 18
      002BDC 12                    2793 	.db #0x12	; 18
      002BDD 12                    2794 	.db #0x12	; 18
      002BDE 0C                    2795 	.db #0x0c	; 12
      002BDF 00                    2796 	.db #0x00	; 0
      002BE0 1C                    2797 	.db #0x1c	; 28
      002BE1 00                    2798 	.db #0x00	; 0
      002BE2 12                    2799 	.db #0x12	; 18
      002BE3 12                    2800 	.db #0x12	; 18
      002BE4 12                    2801 	.db #0x12	; 18
      002BE5 1A                    2802 	.db #0x1a	; 26
      002BE6 14                    2803 	.db #0x14	; 20
      002BE7 00                    2804 	.db #0x00	; 0
      002BE8 06                    2805 	.db #0x06	; 6
      002BE9 00                    2806 	.db #0x00	; 0
      002BEA 12                    2807 	.db #0x12	; 18
      002BEB 12                    2808 	.db #0x12	; 18
      002BEC 12                    2809 	.db #0x12	; 18
      002BED 1A                    2810 	.db #0x1a	; 26
      002BEE 14                    2811 	.db #0x14	; 20
      002BEF 00                    2812 	.db #0x00	; 0
      002BF0 14                    2813 	.db #0x14	; 20
      002BF1 00                    2814 	.db #0x00	; 0
      002BF2 12                    2815 	.db #0x12	; 18
      002BF3 12                    2816 	.db #0x12	; 18
      002BF4 12                    2817 	.db #0x12	; 18
      002BF5 1C                    2818 	.db #0x1c	; 28
      002BF6 08                    2819 	.db #0x08	; 8
      002BF7 06                    2820 	.db #0x06	; 6
      002BF8 12                    2821 	.db #0x12	; 18
      002BF9 0C                    2822 	.db #0x0c	; 12
      002BFA 12                    2823 	.db #0x12	; 18
      002BFB 12                    2824 	.db #0x12	; 18
      002BFC 12                    2825 	.db #0x12	; 18
      002BFD 12                    2826 	.db #0x12	; 18
      002BFE 0C                    2827 	.db #0x0c	; 12
      002BFF 00                    2828 	.db #0x00	; 0
      002C00 14                    2829 	.db #0x14	; 20
      002C01 00                    2830 	.db #0x00	; 0
      002C02 12                    2831 	.db #0x12	; 18
      002C03 12                    2832 	.db #0x12	; 18
      002C04 12                    2833 	.db #0x12	; 18
      002C05 12                    2834 	.db #0x12	; 18
      002C06 0C                    2835 	.db #0x0c	; 12
      002C07 00                    2836 	.db #0x00	; 0
      002C08 00                    2837 	.db #0x00	; 0
      002C09 08                    2838 	.db #0x08	; 8
      002C0A 1C                    2839 	.db #0x1c	; 28
      002C0B 02                    2840 	.db #0x02	; 2
      002C0C 02                    2841 	.db #0x02	; 2
      002C0D 1C                    2842 	.db #0x1c	; 28
      002C0E 08                    2843 	.db #0x08	; 8
      002C0F 00                    2844 	.db #0x00	; 0
      002C10 18                    2845 	.db #0x18	; 24
      002C11 24                    2846 	.db #0x24	; 36
      002C12 04                    2847 	.db #0x04	; 4
      002C13 1E                    2848 	.db #0x1e	; 30
      002C14 04                    2849 	.db #0x04	; 4
      002C15 24                    2850 	.db #0x24	; 36
      002C16 3A                    2851 	.db #0x3a	; 58
      002C17 00                    2852 	.db #0x00	; 0
      002C18 22                    2853 	.db #0x22	; 34
      002C19 14                    2854 	.db #0x14	; 20
      002C1A 08                    2855 	.db #0x08	; 8
      002C1B 3E                    2856 	.db #0x3e	; 62
      002C1C 08                    2857 	.db #0x08	; 8
      002C1D 3E                    2858 	.db #0x3e	; 62
      002C1E 08                    2859 	.db #0x08	; 8
      002C1F 00                    2860 	.db #0x00	; 0
      002C20 06                    2861 	.db #0x06	; 6
      002C21 0A                    2862 	.db #0x0a	; 10
      002C22 0A                    2863 	.db #0x0a	; 10
      002C23 16                    2864 	.db #0x16	; 22
      002C24 3A                    2865 	.db #0x3a	; 58
      002C25 12                    2866 	.db #0x12	; 18
      002C26 12                    2867 	.db #0x12	; 18
      002C27 00                    2868 	.db #0x00	; 0
      002C28 10                    2869 	.db #0x10	; 16
      002C29 28                    2870 	.db #0x28	; 40
      002C2A 08                    2871 	.db #0x08	; 8
      002C2B 1C                    2872 	.db #0x1c	; 28
      002C2C 08                    2873 	.db #0x08	; 8
      002C2D 08                    2874 	.db #0x08	; 8
      002C2E 0A                    2875 	.db #0x0a	; 10
      002C2F 04                    2876 	.db #0x04	; 4
      002C30 18                    2877 	.db #0x18	; 24
      002C31 00                    2878 	.db #0x00	; 0
      002C32 1C                    2879 	.db #0x1c	; 28
      002C33 20                    2880 	.db #0x20	; 32
      002C34 3C                    2881 	.db #0x3c	; 60
      002C35 22                    2882 	.db #0x22	; 34
      002C36 3C                    2883 	.db #0x3c	; 60
      002C37 00                    2884 	.db #0x00	; 0
      002C38 18                    2885 	.db #0x18	; 24
      002C39 00                    2886 	.db #0x00	; 0
      002C3A 08                    2887 	.db #0x08	; 8
      002C3B 08                    2888 	.db #0x08	; 8
      002C3C 08                    2889 	.db #0x08	; 8
      002C3D 08                    2890 	.db #0x08	; 8
      002C3E 18                    2891 	.db #0x18	; 24
      002C3F 00                    2892 	.db #0x00	; 0
      002C40 18                    2893 	.db #0x18	; 24
      002C41 00                    2894 	.db #0x00	; 0
      002C42 0C                    2895 	.db #0x0c	; 12
      002C43 12                    2896 	.db #0x12	; 18
      002C44 12                    2897 	.db #0x12	; 18
      002C45 12                    2898 	.db #0x12	; 18
      002C46 0C                    2899 	.db #0x0c	; 12
      002C47 00                    2900 	.db #0x00	; 0
      002C48 18                    2901 	.db #0x18	; 24
      002C49 00                    2902 	.db #0x00	; 0
      002C4A 12                    2903 	.db #0x12	; 18
      002C4B 12                    2904 	.db #0x12	; 18
      002C4C 12                    2905 	.db #0x12	; 18
      002C4D 1A                    2906 	.db #0x1a	; 26
      002C4E 14                    2907 	.db #0x14	; 20
      002C4F 00                    2908 	.db #0x00	; 0
      002C50 14                    2909 	.db #0x14	; 20
      002C51 0A                    2910 	.db #0x0a	; 10
      002C52 00                    2911 	.db #0x00	; 0
      002C53 0E                    2912 	.db #0x0e	; 14
      002C54 12                    2913 	.db #0x12	; 18
      002C55 12                    2914 	.db #0x12	; 18
      002C56 12                    2915 	.db #0x12	; 18
      002C57 00                    2916 	.db #0x00	; 0
      002C58 14                    2917 	.db #0x14	; 20
      002C59 0A                    2918 	.db #0x0a	; 10
      002C5A 00                    2919 	.db #0x00	; 0
      002C5B 12                    2920 	.db #0x12	; 18
      002C5C 16                    2921 	.db #0x16	; 22
      002C5D 1A                    2922 	.db #0x1a	; 26
      002C5E 12                    2923 	.db #0x12	; 18
      002C5F 00                    2924 	.db #0x00	; 0
      002C60 1C                    2925 	.db #0x1c	; 28
      002C61 20                    2926 	.db #0x20	; 32
      002C62 3C                    2927 	.db #0x3c	; 60
      002C63 22                    2928 	.db #0x22	; 34
      002C64 3C                    2929 	.db #0x3c	; 60
      002C65 00                    2930 	.db #0x00	; 0
      002C66 3C                    2931 	.db #0x3c	; 60
      002C67 00                    2932 	.db #0x00	; 0
      002C68 0C                    2933 	.db #0x0c	; 12
      002C69 12                    2934 	.db #0x12	; 18
      002C6A 12                    2935 	.db #0x12	; 18
      002C6B 12                    2936 	.db #0x12	; 18
      002C6C 0C                    2937 	.db #0x0c	; 12
      002C6D 00                    2938 	.db #0x00	; 0
      002C6E 1E                    2939 	.db #0x1e	; 30
      002C6F 00                    2940 	.db #0x00	; 0
      002C70 08                    2941 	.db #0x08	; 8
      002C71 00                    2942 	.db #0x00	; 0
      002C72 08                    2943 	.db #0x08	; 8
      002C73 0C                    2944 	.db #0x0c	; 12
      002C74 02                    2945 	.db #0x02	; 2
      002C75 22                    2946 	.db #0x22	; 34
      002C76 1C                    2947 	.db #0x1c	; 28
      002C77 00                    2948 	.db #0x00	; 0
      002C78 00                    2949 	.db #0x00	; 0
      002C79 00                    2950 	.db #0x00	; 0
      002C7A 3E                    2951 	.db #0x3e	; 62
      002C7B 02                    2952 	.db #0x02	; 2
      002C7C 02                    2953 	.db #0x02	; 2
      002C7D 02                    2954 	.db #0x02	; 2
      002C7E 00                    2955 	.db #0x00	; 0
      002C7F 00                    2956 	.db #0x00	; 0
      002C80 00                    2957 	.db #0x00	; 0
      002C81 00                    2958 	.db #0x00	; 0
      002C82 3F                    2959 	.db #0x3f	; 63
      002C83 20                    2960 	.db #0x20	; 32
      002C84 20                    2961 	.db #0x20	; 32
      002C85 00                    2962 	.db #0x00	; 0
      002C86 00                    2963 	.db #0x00	; 0
      002C87 00                    2964 	.db #0x00	; 0
      002C88 02                    2965 	.db #0x02	; 2
      002C89 12                    2966 	.db #0x12	; 18
      002C8A 0A                    2967 	.db #0x0a	; 10
      002C8B 1C                    2968 	.db #0x1c	; 28
      002C8C 22                    2969 	.db #0x22	; 34
      002C8D 10                    2970 	.db #0x10	; 16
      002C8E 38                    2971 	.db #0x38	; 56	'8'
      002C8F 00                    2972 	.db #0x00	; 0
      002C90 02                    2973 	.db #0x02	; 2
      002C91 12                    2974 	.db #0x12	; 18
      002C92 0A                    2975 	.db #0x0a	; 10
      002C93 34                    2976 	.db #0x34	; 52	'4'
      002C94 2A                    2977 	.db #0x2a	; 42
      002C95 38                    2978 	.db #0x38	; 56	'8'
      002C96 20                    2979 	.db #0x20	; 32
      002C97 00                    2980 	.db #0x00	; 0
      002C98 08                    2981 	.db #0x08	; 8
      002C99 00                    2982 	.db #0x00	; 0
      002C9A 08                    2983 	.db #0x08	; 8
      002C9B 08                    2984 	.db #0x08	; 8
      002C9C 1C                    2985 	.db #0x1c	; 28
      002C9D 1C                    2986 	.db #0x1c	; 28
      002C9E 08                    2987 	.db #0x08	; 8
      002C9F 00                    2988 	.db #0x00	; 0
      002CA0 00                    2989 	.db #0x00	; 0
      002CA1 00                    2990 	.db #0x00	; 0
      002CA2 24                    2991 	.db #0x24	; 36
      002CA3 12                    2992 	.db #0x12	; 18
      002CA4 24                    2993 	.db #0x24	; 36
      002CA5 00                    2994 	.db #0x00	; 0
      002CA6 00                    2995 	.db #0x00	; 0
      002CA7 00                    2996 	.db #0x00	; 0
      002CA8 00                    2997 	.db #0x00	; 0
      002CA9 00                    2998 	.db #0x00	; 0
      002CAA 12                    2999 	.db #0x12	; 18
      002CAB 24                    3000 	.db #0x24	; 36
      002CAC 12                    3001 	.db #0x12	; 18
      002CAD 00                    3002 	.db #0x00	; 0
      002CAE 00                    3003 	.db #0x00	; 0
      002CAF 00                    3004 	.db #0x00	; 0
      002CB0 2A                    3005 	.db #0x2a	; 42
      002CB1 00                    3006 	.db #0x00	; 0
      002CB2 15                    3007 	.db #0x15	; 21
      002CB3 00                    3008 	.db #0x00	; 0
      002CB4 2A                    3009 	.db #0x2a	; 42
      002CB5 00                    3010 	.db #0x00	; 0
      002CB6 15                    3011 	.db #0x15	; 21
      002CB7 00                    3012 	.db #0x00	; 0
      002CB8 2A                    3013 	.db #0x2a	; 42
      002CB9 15                    3014 	.db #0x15	; 21
      002CBA 2A                    3015 	.db #0x2a	; 42
      002CBB 15                    3016 	.db #0x15	; 21
      002CBC 2A                    3017 	.db #0x2a	; 42
      002CBD 15                    3018 	.db #0x15	; 21
      002CBE 2A                    3019 	.db #0x2a	; 42
      002CBF 15                    3020 	.db #0x15	; 21
      002CC0 15                    3021 	.db #0x15	; 21
      002CC1 3F                    3022 	.db #0x3f	; 63
      002CC2 2A                    3023 	.db #0x2a	; 42
      002CC3 3F                    3024 	.db #0x3f	; 63
      002CC4 15                    3025 	.db #0x15	; 21
      002CC5 3F                    3026 	.db #0x3f	; 63
      002CC6 2A                    3027 	.db #0x2a	; 42
      002CC7 3F                    3028 	.db #0x3f	; 63
      002CC8 08                    3029 	.db #0x08	; 8
      002CC9 08                    3030 	.db #0x08	; 8
      002CCA 08                    3031 	.db #0x08	; 8
      002CCB 08                    3032 	.db #0x08	; 8
      002CCC 08                    3033 	.db #0x08	; 8
      002CCD 08                    3034 	.db #0x08	; 8
      002CCE 08                    3035 	.db #0x08	; 8
      002CCF 08                    3036 	.db #0x08	; 8
      002CD0 08                    3037 	.db #0x08	; 8
      002CD1 08                    3038 	.db #0x08	; 8
      002CD2 08                    3039 	.db #0x08	; 8
      002CD3 0F                    3040 	.db #0x0f	; 15
      002CD4 08                    3041 	.db #0x08	; 8
      002CD5 08                    3042 	.db #0x08	; 8
      002CD6 08                    3043 	.db #0x08	; 8
      002CD7 08                    3044 	.db #0x08	; 8
      002CD8 08                    3045 	.db #0x08	; 8
      002CD9 0F                    3046 	.db #0x0f	; 15
      002CDA 08                    3047 	.db #0x08	; 8
      002CDB 0F                    3048 	.db #0x0f	; 15
      002CDC 08                    3049 	.db #0x08	; 8
      002CDD 08                    3050 	.db #0x08	; 8
      002CDE 08                    3051 	.db #0x08	; 8
      002CDF 08                    3052 	.db #0x08	; 8
      002CE0 0A                    3053 	.db #0x0a	; 10
      002CE1 0A                    3054 	.db #0x0a	; 10
      002CE2 0A                    3055 	.db #0x0a	; 10
      002CE3 0B                    3056 	.db #0x0b	; 11
      002CE4 0A                    3057 	.db #0x0a	; 10
      002CE5 0A                    3058 	.db #0x0a	; 10
      002CE6 0A                    3059 	.db #0x0a	; 10
      002CE7 0A                    3060 	.db #0x0a	; 10
      002CE8 00                    3061 	.db #0x00	; 0
      002CE9 00                    3062 	.db #0x00	; 0
      002CEA 00                    3063 	.db #0x00	; 0
      002CEB 0F                    3064 	.db #0x0f	; 15
      002CEC 0A                    3065 	.db #0x0a	; 10
      002CED 0A                    3066 	.db #0x0a	; 10
      002CEE 0A                    3067 	.db #0x0a	; 10
      002CEF 0A                    3068 	.db #0x0a	; 10
      002CF0 00                    3069 	.db #0x00	; 0
      002CF1 0F                    3070 	.db #0x0f	; 15
      002CF2 08                    3071 	.db #0x08	; 8
      002CF3 0F                    3072 	.db #0x0f	; 15
      002CF4 08                    3073 	.db #0x08	; 8
      002CF5 08                    3074 	.db #0x08	; 8
      002CF6 08                    3075 	.db #0x08	; 8
      002CF7 08                    3076 	.db #0x08	; 8
      002CF8 0A                    3077 	.db #0x0a	; 10
      002CF9 0B                    3078 	.db #0x0b	; 11
      002CFA 08                    3079 	.db #0x08	; 8
      002CFB 0B                    3080 	.db #0x0b	; 11
      002CFC 0A                    3081 	.db #0x0a	; 10
      002CFD 0A                    3082 	.db #0x0a	; 10
      002CFE 0A                    3083 	.db #0x0a	; 10
      002CFF 0A                    3084 	.db #0x0a	; 10
      002D00 0A                    3085 	.db #0x0a	; 10
      002D01 0A                    3086 	.db #0x0a	; 10
      002D02 0A                    3087 	.db #0x0a	; 10
      002D03 0A                    3088 	.db #0x0a	; 10
      002D04 0A                    3089 	.db #0x0a	; 10
      002D05 0A                    3090 	.db #0x0a	; 10
      002D06 0A                    3091 	.db #0x0a	; 10
      002D07 0A                    3092 	.db #0x0a	; 10
      002D08 00                    3093 	.db #0x00	; 0
      002D09 0F                    3094 	.db #0x0f	; 15
      002D0A 08                    3095 	.db #0x08	; 8
      002D0B 0B                    3096 	.db #0x0b	; 11
      002D0C 0A                    3097 	.db #0x0a	; 10
      002D0D 0A                    3098 	.db #0x0a	; 10
      002D0E 0A                    3099 	.db #0x0a	; 10
      002D0F 0A                    3100 	.db #0x0a	; 10
      002D10 0A                    3101 	.db #0x0a	; 10
      002D11 0B                    3102 	.db #0x0b	; 11
      002D12 08                    3103 	.db #0x08	; 8
      002D13 0F                    3104 	.db #0x0f	; 15
      002D14 00                    3105 	.db #0x00	; 0
      002D15 00                    3106 	.db #0x00	; 0
      002D16 00                    3107 	.db #0x00	; 0
      002D17 00                    3108 	.db #0x00	; 0
      002D18 0A                    3109 	.db #0x0a	; 10
      002D19 0A                    3110 	.db #0x0a	; 10
      002D1A 0A                    3111 	.db #0x0a	; 10
      002D1B 0F                    3112 	.db #0x0f	; 15
      002D1C 00                    3113 	.db #0x00	; 0
      002D1D 00                    3114 	.db #0x00	; 0
      002D1E 00                    3115 	.db #0x00	; 0
      002D1F 00                    3116 	.db #0x00	; 0
      002D20 08                    3117 	.db #0x08	; 8
      002D21 0F                    3118 	.db #0x0f	; 15
      002D22 08                    3119 	.db #0x08	; 8
      002D23 0F                    3120 	.db #0x0f	; 15
      002D24 00                    3121 	.db #0x00	; 0
      002D25 00                    3122 	.db #0x00	; 0
      002D26 00                    3123 	.db #0x00	; 0
      002D27 00                    3124 	.db #0x00	; 0
      002D28 00                    3125 	.db #0x00	; 0
      002D29 00                    3126 	.db #0x00	; 0
      002D2A 00                    3127 	.db #0x00	; 0
      002D2B 0F                    3128 	.db #0x0f	; 15
      002D2C 08                    3129 	.db #0x08	; 8
      002D2D 08                    3130 	.db #0x08	; 8
      002D2E 08                    3131 	.db #0x08	; 8
      002D2F 08                    3132 	.db #0x08	; 8
      002D30 08                    3133 	.db #0x08	; 8
      002D31 08                    3134 	.db #0x08	; 8
      002D32 08                    3135 	.db #0x08	; 8
      002D33 38                    3136 	.db #0x38	; 56	'8'
      002D34 00                    3137 	.db #0x00	; 0
      002D35 00                    3138 	.db #0x00	; 0
      002D36 00                    3139 	.db #0x00	; 0
      002D37 00                    3140 	.db #0x00	; 0
      002D38 08                    3141 	.db #0x08	; 8
      002D39 08                    3142 	.db #0x08	; 8
      002D3A 08                    3143 	.db #0x08	; 8
      002D3B 3F                    3144 	.db #0x3f	; 63
      002D3C 00                    3145 	.db #0x00	; 0
      002D3D 00                    3146 	.db #0x00	; 0
      002D3E 00                    3147 	.db #0x00	; 0
      002D3F 00                    3148 	.db #0x00	; 0
      002D40 00                    3149 	.db #0x00	; 0
      002D41 00                    3150 	.db #0x00	; 0
      002D42 00                    3151 	.db #0x00	; 0
      002D43 3F                    3152 	.db #0x3f	; 63
      002D44 08                    3153 	.db #0x08	; 8
      002D45 08                    3154 	.db #0x08	; 8
      002D46 08                    3155 	.db #0x08	; 8
      002D47 08                    3156 	.db #0x08	; 8
      002D48 08                    3157 	.db #0x08	; 8
      002D49 08                    3158 	.db #0x08	; 8
      002D4A 08                    3159 	.db #0x08	; 8
      002D4B 38                    3160 	.db #0x38	; 56	'8'
      002D4C 08                    3161 	.db #0x08	; 8
      002D4D 08                    3162 	.db #0x08	; 8
      002D4E 08                    3163 	.db #0x08	; 8
      002D4F 08                    3164 	.db #0x08	; 8
      002D50 00                    3165 	.db #0x00	; 0
      002D51 00                    3166 	.db #0x00	; 0
      002D52 00                    3167 	.db #0x00	; 0
      002D53 3F                    3168 	.db #0x3f	; 63
      002D54 00                    3169 	.db #0x00	; 0
      002D55 00                    3170 	.db #0x00	; 0
      002D56 00                    3171 	.db #0x00	; 0
      002D57 00                    3172 	.db #0x00	; 0
      002D58 08                    3173 	.db #0x08	; 8
      002D59 08                    3174 	.db #0x08	; 8
      002D5A 08                    3175 	.db #0x08	; 8
      002D5B 3F                    3176 	.db #0x3f	; 63
      002D5C 08                    3177 	.db #0x08	; 8
      002D5D 08                    3178 	.db #0x08	; 8
      002D5E 08                    3179 	.db #0x08	; 8
      002D5F 08                    3180 	.db #0x08	; 8
      002D60 08                    3181 	.db #0x08	; 8
      002D61 38                    3182 	.db #0x38	; 56	'8'
      002D62 08                    3183 	.db #0x08	; 8
      002D63 38                    3184 	.db #0x38	; 56	'8'
      002D64 08                    3185 	.db #0x08	; 8
      002D65 08                    3186 	.db #0x08	; 8
      002D66 08                    3187 	.db #0x08	; 8
      002D67 08                    3188 	.db #0x08	; 8
      002D68 0A                    3189 	.db #0x0a	; 10
      002D69 0A                    3190 	.db #0x0a	; 10
      002D6A 0A                    3191 	.db #0x0a	; 10
      002D6B 3A                    3192 	.db #0x3a	; 58
      002D6C 0A                    3193 	.db #0x0a	; 10
      002D6D 0A                    3194 	.db #0x0a	; 10
      002D6E 0A                    3195 	.db #0x0a	; 10
      002D6F 0A                    3196 	.db #0x0a	; 10
      002D70 0A                    3197 	.db #0x0a	; 10
      002D71 3A                    3198 	.db #0x3a	; 58
      002D72 02                    3199 	.db #0x02	; 2
      002D73 3E                    3200 	.db #0x3e	; 62
      002D74 00                    3201 	.db #0x00	; 0
      002D75 00                    3202 	.db #0x00	; 0
      002D76 00                    3203 	.db #0x00	; 0
      002D77 00                    3204 	.db #0x00	; 0
      002D78 00                    3205 	.db #0x00	; 0
      002D79 3E                    3206 	.db #0x3e	; 62
      002D7A 02                    3207 	.db #0x02	; 2
      002D7B 3A                    3208 	.db #0x3a	; 58
      002D7C 0A                    3209 	.db #0x0a	; 10
      002D7D 0A                    3210 	.db #0x0a	; 10
      002D7E 0A                    3211 	.db #0x0a	; 10
      002D7F 0A                    3212 	.db #0x0a	; 10
      002D80 0A                    3213 	.db #0x0a	; 10
      002D81 3B                    3214 	.db #0x3b	; 59
      002D82 00                    3215 	.db #0x00	; 0
      002D83 3F                    3216 	.db #0x3f	; 63
      002D84 00                    3217 	.db #0x00	; 0
      002D85 00                    3218 	.db #0x00	; 0
      002D86 00                    3219 	.db #0x00	; 0
      002D87 00                    3220 	.db #0x00	; 0
      002D88 00                    3221 	.db #0x00	; 0
      002D89 3F                    3222 	.db #0x3f	; 63
      002D8A 00                    3223 	.db #0x00	; 0
      002D8B 3B                    3224 	.db #0x3b	; 59
      002D8C 0A                    3225 	.db #0x0a	; 10
      002D8D 0A                    3226 	.db #0x0a	; 10
      002D8E 0A                    3227 	.db #0x0a	; 10
      002D8F 0A                    3228 	.db #0x0a	; 10
      002D90 0A                    3229 	.db #0x0a	; 10
      002D91 3A                    3230 	.db #0x3a	; 58
      002D92 02                    3231 	.db #0x02	; 2
      002D93 3A                    3232 	.db #0x3a	; 58
      002D94 0A                    3233 	.db #0x0a	; 10
      002D95 0A                    3234 	.db #0x0a	; 10
      002D96 0A                    3235 	.db #0x0a	; 10
      002D97 0A                    3236 	.db #0x0a	; 10
      002D98 00                    3237 	.db #0x00	; 0
      002D99 3F                    3238 	.db #0x3f	; 63
      002D9A 00                    3239 	.db #0x00	; 0
      002D9B 3F                    3240 	.db #0x3f	; 63
      002D9C 00                    3241 	.db #0x00	; 0
      002D9D 00                    3242 	.db #0x00	; 0
      002D9E 00                    3243 	.db #0x00	; 0
      002D9F 00                    3244 	.db #0x00	; 0
      002DA0 0A                    3245 	.db #0x0a	; 10
      002DA1 3B                    3246 	.db #0x3b	; 59
      002DA2 00                    3247 	.db #0x00	; 0
      002DA3 3B                    3248 	.db #0x3b	; 59
      002DA4 0A                    3249 	.db #0x0a	; 10
      002DA5 0A                    3250 	.db #0x0a	; 10
      002DA6 0A                    3251 	.db #0x0a	; 10
      002DA7 0A                    3252 	.db #0x0a	; 10
      002DA8 08                    3253 	.db #0x08	; 8
      002DA9 3F                    3254 	.db #0x3f	; 63
      002DAA 00                    3255 	.db #0x00	; 0
      002DAB 3F                    3256 	.db #0x3f	; 63
      002DAC 00                    3257 	.db #0x00	; 0
      002DAD 00                    3258 	.db #0x00	; 0
      002DAE 00                    3259 	.db #0x00	; 0
      002DAF 00                    3260 	.db #0x00	; 0
      002DB0 0A                    3261 	.db #0x0a	; 10
      002DB1 0A                    3262 	.db #0x0a	; 10
      002DB2 0A                    3263 	.db #0x0a	; 10
      002DB3 3F                    3264 	.db #0x3f	; 63
      002DB4 00                    3265 	.db #0x00	; 0
      002DB5 00                    3266 	.db #0x00	; 0
      002DB6 00                    3267 	.db #0x00	; 0
      002DB7 00                    3268 	.db #0x00	; 0
      002DB8 00                    3269 	.db #0x00	; 0
      002DB9 3F                    3270 	.db #0x3f	; 63
      002DBA 00                    3271 	.db #0x00	; 0
      002DBB 3F                    3272 	.db #0x3f	; 63
      002DBC 08                    3273 	.db #0x08	; 8
      002DBD 08                    3274 	.db #0x08	; 8
      002DBE 08                    3275 	.db #0x08	; 8
      002DBF 08                    3276 	.db #0x08	; 8
      002DC0 00                    3277 	.db #0x00	; 0
      002DC1 00                    3278 	.db #0x00	; 0
      002DC2 00                    3279 	.db #0x00	; 0
      002DC3 3F                    3280 	.db #0x3f	; 63
      002DC4 0A                    3281 	.db #0x0a	; 10
      002DC5 0A                    3282 	.db #0x0a	; 10
      002DC6 0A                    3283 	.db #0x0a	; 10
      002DC7 0A                    3284 	.db #0x0a	; 10
      002DC8 0A                    3285 	.db #0x0a	; 10
      002DC9 0A                    3286 	.db #0x0a	; 10
      002DCA 0A                    3287 	.db #0x0a	; 10
      002DCB 3E                    3288 	.db #0x3e	; 62
      002DCC 00                    3289 	.db #0x00	; 0
      002DCD 00                    3290 	.db #0x00	; 0
      002DCE 00                    3291 	.db #0x00	; 0
      002DCF 00                    3292 	.db #0x00	; 0
      002DD0 08                    3293 	.db #0x08	; 8
      002DD1 38                    3294 	.db #0x38	; 56	'8'
      002DD2 08                    3295 	.db #0x08	; 8
      002DD3 38                    3296 	.db #0x38	; 56	'8'
      002DD4 00                    3297 	.db #0x00	; 0
      002DD5 00                    3298 	.db #0x00	; 0
      002DD6 00                    3299 	.db #0x00	; 0
      002DD7 00                    3300 	.db #0x00	; 0
      002DD8 00                    3301 	.db #0x00	; 0
      002DD9 38                    3302 	.db #0x38	; 56	'8'
      002DDA 08                    3303 	.db #0x08	; 8
      002DDB 38                    3304 	.db #0x38	; 56	'8'
      002DDC 08                    3305 	.db #0x08	; 8
      002DDD 08                    3306 	.db #0x08	; 8
      002DDE 08                    3307 	.db #0x08	; 8
      002DDF 08                    3308 	.db #0x08	; 8
      002DE0 00                    3309 	.db #0x00	; 0
      002DE1 00                    3310 	.db #0x00	; 0
      002DE2 00                    3311 	.db #0x00	; 0
      002DE3 3E                    3312 	.db #0x3e	; 62
      002DE4 0A                    3313 	.db #0x0a	; 10
      002DE5 0A                    3314 	.db #0x0a	; 10
      002DE6 0A                    3315 	.db #0x0a	; 10
      002DE7 0A                    3316 	.db #0x0a	; 10
      002DE8 0A                    3317 	.db #0x0a	; 10
      002DE9 0A                    3318 	.db #0x0a	; 10
      002DEA 0A                    3319 	.db #0x0a	; 10
      002DEB 3B                    3320 	.db #0x3b	; 59
      002DEC 0A                    3321 	.db #0x0a	; 10
      002DED 0A                    3322 	.db #0x0a	; 10
      002DEE 0A                    3323 	.db #0x0a	; 10
      002DEF 0A                    3324 	.db #0x0a	; 10
      002DF0 08                    3325 	.db #0x08	; 8
      002DF1 3F                    3326 	.db #0x3f	; 63
      002DF2 00                    3327 	.db #0x00	; 0
      002DF3 3F                    3328 	.db #0x3f	; 63
      002DF4 08                    3329 	.db #0x08	; 8
      002DF5 08                    3330 	.db #0x08	; 8
      002DF6 08                    3331 	.db #0x08	; 8
      002DF7 08                    3332 	.db #0x08	; 8
      002DF8 08                    3333 	.db #0x08	; 8
      002DF9 08                    3334 	.db #0x08	; 8
      002DFA 08                    3335 	.db #0x08	; 8
      002DFB 0F                    3336 	.db #0x0f	; 15
      002DFC 00                    3337 	.db #0x00	; 0
      002DFD 00                    3338 	.db #0x00	; 0
      002DFE 00                    3339 	.db #0x00	; 0
      002DFF 00                    3340 	.db #0x00	; 0
      002E00 00                    3341 	.db #0x00	; 0
      002E01 00                    3342 	.db #0x00	; 0
      002E02 00                    3343 	.db #0x00	; 0
      002E03 38                    3344 	.db #0x38	; 56	'8'
      002E04 08                    3345 	.db #0x08	; 8
      002E05 08                    3346 	.db #0x08	; 8
      002E06 08                    3347 	.db #0x08	; 8
      002E07 08                    3348 	.db #0x08	; 8
      002E08 3F                    3349 	.db #0x3f	; 63
      002E09 3F                    3350 	.db #0x3f	; 63
      002E0A 3F                    3351 	.db #0x3f	; 63
      002E0B 3F                    3352 	.db #0x3f	; 63
      002E0C 3F                    3353 	.db #0x3f	; 63
      002E0D 3F                    3354 	.db #0x3f	; 63
      002E0E 3F                    3355 	.db #0x3f	; 63
      002E0F 3F                    3356 	.db #0x3f	; 63
      002E10 00                    3357 	.db #0x00	; 0
      002E11 00                    3358 	.db #0x00	; 0
      002E12 00                    3359 	.db #0x00	; 0
      002E13 00                    3360 	.db #0x00	; 0
      002E14 3F                    3361 	.db #0x3f	; 63
      002E15 3F                    3362 	.db #0x3f	; 63
      002E16 3F                    3363 	.db #0x3f	; 63
      002E17 3F                    3364 	.db #0x3f	; 63
      002E18 07                    3365 	.db #0x07	; 7
      002E19 07                    3366 	.db #0x07	; 7
      002E1A 07                    3367 	.db #0x07	; 7
      002E1B 07                    3368 	.db #0x07	; 7
      002E1C 07                    3369 	.db #0x07	; 7
      002E1D 07                    3370 	.db #0x07	; 7
      002E1E 07                    3371 	.db #0x07	; 7
      002E1F 07                    3372 	.db #0x07	; 7
      002E20 38                    3373 	.db #0x38	; 56	'8'
      002E21 38                    3374 	.db #0x38	; 56	'8'
      002E22 38                    3375 	.db #0x38	; 56	'8'
      002E23 38                    3376 	.db #0x38	; 56	'8'
      002E24 38                    3377 	.db #0x38	; 56	'8'
      002E25 38                    3378 	.db #0x38	; 56	'8'
      002E26 38                    3379 	.db #0x38	; 56	'8'
      002E27 38                    3380 	.db #0x38	; 56	'8'
      002E28 3F                    3381 	.db #0x3f	; 63
      002E29 3F                    3382 	.db #0x3f	; 63
      002E2A 3F                    3383 	.db #0x3f	; 63
      002E2B 3F                    3384 	.db #0x3f	; 63
      002E2C 00                    3385 	.db #0x00	; 0
      002E2D 00                    3386 	.db #0x00	; 0
      002E2E 00                    3387 	.db #0x00	; 0
      002E2F 00                    3388 	.db #0x00	; 0
      002E30 00                    3389 	.db #0x00	; 0
      002E31 00                    3390 	.db #0x00	; 0
      002E32 2C                    3391 	.db #0x2c	; 44
      002E33 12                    3392 	.db #0x12	; 18
      002E34 12                    3393 	.db #0x12	; 18
      002E35 2C                    3394 	.db #0x2c	; 44
      002E36 00                    3395 	.db #0x00	; 0
      002E37 00                    3396 	.db #0x00	; 0
      002E38 00                    3397 	.db #0x00	; 0
      002E39 0E                    3398 	.db #0x0e	; 14
      002E3A 12                    3399 	.db #0x12	; 18
      002E3B 0E                    3400 	.db #0x0e	; 14
      002E3C 12                    3401 	.db #0x12	; 18
      002E3D 12                    3402 	.db #0x12	; 18
      002E3E 0E                    3403 	.db #0x0e	; 14
      002E3F 02                    3404 	.db #0x02	; 2
      002E40 1E                    3405 	.db #0x1e	; 30
      002E41 12                    3406 	.db #0x12	; 18
      002E42 02                    3407 	.db #0x02	; 2
      002E43 02                    3408 	.db #0x02	; 2
      002E44 02                    3409 	.db #0x02	; 2
      002E45 02                    3410 	.db #0x02	; 2
      002E46 02                    3411 	.db #0x02	; 2
      002E47 00                    3412 	.db #0x00	; 0
      002E48 00                    3413 	.db #0x00	; 0
      002E49 3E                    3414 	.db #0x3e	; 62
      002E4A 14                    3415 	.db #0x14	; 20
      002E4B 14                    3416 	.db #0x14	; 20
      002E4C 14                    3417 	.db #0x14	; 20
      002E4D 14                    3418 	.db #0x14	; 20
      002E4E 14                    3419 	.db #0x14	; 20
      002E4F 00                    3420 	.db #0x00	; 0
      002E50 1E                    3421 	.db #0x1e	; 30
      002E51 12                    3422 	.db #0x12	; 18
      002E52 04                    3423 	.db #0x04	; 4
      002E53 08                    3424 	.db #0x08	; 8
      002E54 04                    3425 	.db #0x04	; 4
      002E55 12                    3426 	.db #0x12	; 18
      002E56 1E                    3427 	.db #0x1e	; 30
      002E57 00                    3428 	.db #0x00	; 0
      002E58 00                    3429 	.db #0x00	; 0
      002E59 00                    3430 	.db #0x00	; 0
      002E5A 3C                    3431 	.db #0x3c	; 60
      002E5B 12                    3432 	.db #0x12	; 18
      002E5C 12                    3433 	.db #0x12	; 18
      002E5D 0C                    3434 	.db #0x0c	; 12
      002E5E 00                    3435 	.db #0x00	; 0
      002E5F 00                    3436 	.db #0x00	; 0
      002E60 00                    3437 	.db #0x00	; 0
      002E61 00                    3438 	.db #0x00	; 0
      002E62 12                    3439 	.db #0x12	; 18
      002E63 12                    3440 	.db #0x12	; 18
      002E64 12                    3441 	.db #0x12	; 18
      002E65 0E                    3442 	.db #0x0e	; 14
      002E66 02                    3443 	.db #0x02	; 2
      002E67 02                    3444 	.db #0x02	; 2
      002E68 00                    3445 	.db #0x00	; 0
      002E69 00                    3446 	.db #0x00	; 0
      002E6A 14                    3447 	.db #0x14	; 20
      002E6B 0A                    3448 	.db #0x0a	; 10
      002E6C 08                    3449 	.db #0x08	; 8
      002E6D 08                    3450 	.db #0x08	; 8
      002E6E 08                    3451 	.db #0x08	; 8
      002E6F 00                    3452 	.db #0x00	; 0
      002E70 1C                    3453 	.db #0x1c	; 28
      002E71 08                    3454 	.db #0x08	; 8
      002E72 1C                    3455 	.db #0x1c	; 28
      002E73 22                    3456 	.db #0x22	; 34
      002E74 1C                    3457 	.db #0x1c	; 28
      002E75 08                    3458 	.db #0x08	; 8
      002E76 1C                    3459 	.db #0x1c	; 28
      002E77 00                    3460 	.db #0x00	; 0
      002E78 0C                    3461 	.db #0x0c	; 12
      002E79 12                    3462 	.db #0x12	; 18
      002E7A 12                    3463 	.db #0x12	; 18
      002E7B 1E                    3464 	.db #0x1e	; 30
      002E7C 12                    3465 	.db #0x12	; 18
      002E7D 12                    3466 	.db #0x12	; 18
      002E7E 0C                    3467 	.db #0x0c	; 12
      002E7F 00                    3468 	.db #0x00	; 0
      002E80 00                    3469 	.db #0x00	; 0
      002E81 1C                    3470 	.db #0x1c	; 28
      002E82 22                    3471 	.db #0x22	; 34
      002E83 22                    3472 	.db #0x22	; 34
      002E84 14                    3473 	.db #0x14	; 20
      002E85 14                    3474 	.db #0x14	; 20
      002E86 36                    3475 	.db #0x36	; 54	'6'
      002E87 00                    3476 	.db #0x00	; 0
      002E88 0C                    3477 	.db #0x0c	; 12
      002E89 02                    3478 	.db #0x02	; 2
      002E8A 04                    3479 	.db #0x04	; 4
      002E8B 08                    3480 	.db #0x08	; 8
      002E8C 1C                    3481 	.db #0x1c	; 28
      002E8D 12                    3482 	.db #0x12	; 18
      002E8E 0C                    3483 	.db #0x0c	; 12
      002E8F 00                    3484 	.db #0x00	; 0
      002E90 00                    3485 	.db #0x00	; 0
      002E91 00                    3486 	.db #0x00	; 0
      002E92 14                    3487 	.db #0x14	; 20
      002E93 2A                    3488 	.db #0x2a	; 42
      002E94 2A                    3489 	.db #0x2a	; 42
      002E95 14                    3490 	.db #0x14	; 20
      002E96 00                    3491 	.db #0x00	; 0
      002E97 00                    3492 	.db #0x00	; 0
      002E98 00                    3493 	.db #0x00	; 0
      002E99 08                    3494 	.db #0x08	; 8
      002E9A 1C                    3495 	.db #0x1c	; 28
      002E9B 2A                    3496 	.db #0x2a	; 42
      002E9C 2A                    3497 	.db #0x2a	; 42
      002E9D 1C                    3498 	.db #0x1c	; 28
      002E9E 08                    3499 	.db #0x08	; 8
      002E9F 00                    3500 	.db #0x00	; 0
      002EA0 00                    3501 	.db #0x00	; 0
      002EA1 1C                    3502 	.db #0x1c	; 28
      002EA2 02                    3503 	.db #0x02	; 2
      002EA3 1E                    3504 	.db #0x1e	; 30
      002EA4 02                    3505 	.db #0x02	; 2
      002EA5 1C                    3506 	.db #0x1c	; 28
      002EA6 00                    3507 	.db #0x00	; 0
      002EA7 00                    3508 	.db #0x00	; 0
      002EA8 00                    3509 	.db #0x00	; 0
      002EA9 0C                    3510 	.db #0x0c	; 12
      002EAA 12                    3511 	.db #0x12	; 18
      002EAB 12                    3512 	.db #0x12	; 18
      002EAC 12                    3513 	.db #0x12	; 18
      002EAD 12                    3514 	.db #0x12	; 18
      002EAE 00                    3515 	.db #0x00	; 0
      002EAF 00                    3516 	.db #0x00	; 0
      002EB0 00                    3517 	.db #0x00	; 0
      002EB1 1E                    3518 	.db #0x1e	; 30
      002EB2 00                    3519 	.db #0x00	; 0
      002EB3 1E                    3520 	.db #0x1e	; 30
      002EB4 00                    3521 	.db #0x00	; 0
      002EB5 1E                    3522 	.db #0x1e	; 30
      002EB6 00                    3523 	.db #0x00	; 0
      002EB7 00                    3524 	.db #0x00	; 0
      002EB8 00                    3525 	.db #0x00	; 0
      002EB9 08                    3526 	.db #0x08	; 8
      002EBA 1C                    3527 	.db #0x1c	; 28
      002EBB 08                    3528 	.db #0x08	; 8
      002EBC 00                    3529 	.db #0x00	; 0
      002EBD 1C                    3530 	.db #0x1c	; 28
      002EBE 00                    3531 	.db #0x00	; 0
      002EBF 00                    3532 	.db #0x00	; 0
      002EC0 02                    3533 	.db #0x02	; 2
      002EC1 0C                    3534 	.db #0x0c	; 12
      002EC2 10                    3535 	.db #0x10	; 16
      002EC3 0C                    3536 	.db #0x0c	; 12
      002EC4 02                    3537 	.db #0x02	; 2
      002EC5 00                    3538 	.db #0x00	; 0
      002EC6 1E                    3539 	.db #0x1e	; 30
      002EC7 00                    3540 	.db #0x00	; 0
      002EC8 10                    3541 	.db #0x10	; 16
      002EC9 0C                    3542 	.db #0x0c	; 12
      002ECA 02                    3543 	.db #0x02	; 2
      002ECB 0C                    3544 	.db #0x0c	; 12
      002ECC 10                    3545 	.db #0x10	; 16
      002ECD 00                    3546 	.db #0x00	; 0
      002ECE 1E                    3547 	.db #0x1e	; 30
      002ECF 00                    3548 	.db #0x00	; 0
      002ED0 00                    3549 	.db #0x00	; 0
      002ED1 10                    3550 	.db #0x10	; 16
      002ED2 28                    3551 	.db #0x28	; 40
      002ED3 08                    3552 	.db #0x08	; 8
      002ED4 08                    3553 	.db #0x08	; 8
      002ED5 08                    3554 	.db #0x08	; 8
      002ED6 08                    3555 	.db #0x08	; 8
      002ED7 08                    3556 	.db #0x08	; 8
      002ED8 08                    3557 	.db #0x08	; 8
      002ED9 08                    3558 	.db #0x08	; 8
      002EDA 08                    3559 	.db #0x08	; 8
      002EDB 08                    3560 	.db #0x08	; 8
      002EDC 08                    3561 	.db #0x08	; 8
      002EDD 0A                    3562 	.db #0x0a	; 10
      002EDE 04                    3563 	.db #0x04	; 4
      002EDF 00                    3564 	.db #0x00	; 0
      002EE0 00                    3565 	.db #0x00	; 0
      002EE1 08                    3566 	.db #0x08	; 8
      002EE2 00                    3567 	.db #0x00	; 0
      002EE3 3E                    3568 	.db #0x3e	; 62
      002EE4 00                    3569 	.db #0x00	; 0
      002EE5 08                    3570 	.db #0x08	; 8
      002EE6 00                    3571 	.db #0x00	; 0
      002EE7 00                    3572 	.db #0x00	; 0
      002EE8 00                    3573 	.db #0x00	; 0
      002EE9 14                    3574 	.db #0x14	; 20
      002EEA 0A                    3575 	.db #0x0a	; 10
      002EEB 00                    3576 	.db #0x00	; 0
      002EEC 14                    3577 	.db #0x14	; 20
      002EED 0A                    3578 	.db #0x0a	; 10
      002EEE 00                    3579 	.db #0x00	; 0
      002EEF 00                    3580 	.db #0x00	; 0
      002EF0 0C                    3581 	.db #0x0c	; 12
      002EF1 12                    3582 	.db #0x12	; 18
      002EF2 12                    3583 	.db #0x12	; 18
      002EF3 0C                    3584 	.db #0x0c	; 12
      002EF4 00                    3585 	.db #0x00	; 0
      002EF5 00                    3586 	.db #0x00	; 0
      002EF6 00                    3587 	.db #0x00	; 0
      002EF7 00                    3588 	.db #0x00	; 0
      002EF8 00                    3589 	.db #0x00	; 0
      002EF9 00                    3590 	.db #0x00	; 0
      002EFA 00                    3591 	.db #0x00	; 0
      002EFB 0C                    3592 	.db #0x0c	; 12
      002EFC 0C                    3593 	.db #0x0c	; 12
      002EFD 00                    3594 	.db #0x00	; 0
      002EFE 00                    3595 	.db #0x00	; 0
      002EFF 00                    3596 	.db #0x00	; 0
      002F00 00                    3597 	.db #0x00	; 0
      002F01 00                    3598 	.db #0x00	; 0
      002F02 00                    3599 	.db #0x00	; 0
      002F03 04                    3600 	.db #0x04	; 4
      002F04 00                    3601 	.db #0x00	; 0
      002F05 00                    3602 	.db #0x00	; 0
      002F06 00                    3603 	.db #0x00	; 0
      002F07 00                    3604 	.db #0x00	; 0
      002F08 00                    3605 	.db #0x00	; 0
      002F09 38                    3606 	.db #0x38	; 56	'8'
      002F0A 08                    3607 	.db #0x08	; 8
      002F0B 08                    3608 	.db #0x08	; 8
      002F0C 0A                    3609 	.db #0x0a	; 10
      002F0D 0A                    3610 	.db #0x0a	; 10
      002F0E 04                    3611 	.db #0x04	; 4
      002F0F 00                    3612 	.db #0x00	; 0
      002F10 0A                    3613 	.db #0x0a	; 10
      002F11 14                    3614 	.db #0x14	; 20
      002F12 14                    3615 	.db #0x14	; 20
      002F13 14                    3616 	.db #0x14	; 20
      002F14 00                    3617 	.db #0x00	; 0
      002F15 00                    3618 	.db #0x00	; 0
      002F16 00                    3619 	.db #0x00	; 0
      002F17 00                    3620 	.db #0x00	; 0
      002F18 06                    3621 	.db #0x06	; 6
      002F19 08                    3622 	.db #0x08	; 8
      002F1A 04                    3623 	.db #0x04	; 4
      002F1B 0E                    3624 	.db #0x0e	; 14
      002F1C 00                    3625 	.db #0x00	; 0
      002F1D 00                    3626 	.db #0x00	; 0
      002F1E 00                    3627 	.db #0x00	; 0
      002F1F 00                    3628 	.db #0x00	; 0
      002F20 00                    3629 	.db #0x00	; 0
      002F21 00                    3630 	.db #0x00	; 0
      002F22 1E                    3631 	.db #0x1e	; 30
      002F23 1E                    3632 	.db #0x1e	; 30
      002F24 1E                    3633 	.db #0x1e	; 30
      002F25 1E                    3634 	.db #0x1e	; 30
      002F26 00                    3635 	.db #0x00	; 0
      002F27 00                    3636 	.db #0x00	; 0
      002F28 00                    3637 	.db #0x00	; 0
      002F29 00                    3638 	.db #0x00	; 0
      002F2A 00                    3639 	.db #0x00	; 0
      002F2B 00                    3640 	.db #0x00	; 0
      002F2C 00                    3641 	.db #0x00	; 0
      002F2D 00                    3642 	.db #0x00	; 0
      002F2E 00                    3643 	.db #0x00	; 0
      002F2F 00                    3644 	.db #0x00	; 0
      002F30                       3645 __xinit__initial:
      002F30 FE 26 80              3646 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3647 	.area CABS    (ABS,CODE)
