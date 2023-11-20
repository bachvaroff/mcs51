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
      00200E 02 23 25         [24]  428 	ljmp	_main
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
      0021BA                        794 00135$:
                                    795 ;	disp.c:200: if (!bit) {
      0021BA E5 10            [12]  796 	mov	a,_bp
      0021BC 24 06            [12]  797 	add	a,#0x06
      0021BE F8               [12]  798 	mov	r0,a
      0021BF E6               [12]  799 	mov	a,@r0
      0021C0 70 55            [24]  800 	jnz	00104$
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
      0021DB 12 26 76         [24]  820 	lcall	__gptrget
      0021DE FA               [12]  821 	mov	r2,a
      0021DF E5 10            [12]  822 	mov	a,_bp
      0021E1 24 04            [12]  823 	add	a,#0x04
      0021E3 F8               [12]  824 	mov	r0,a
      0021E4 A6 02            [24]  825 	mov	@r0,ar2
                                    826 ;	disp.c:202: if (!symbol) {
      0021E6 EA               [12]  827 	mov	a,r2
      0021E7 70 1D            [24]  828 	jnz	00102$
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
      002202 12 26 76         [24]  848 	lcall	__gptrget
      002205 F7               [12]  849 	mov	@r1,a
      002206                        850 00102$:
                                    851 ;	disp.c:206: i++;
      002206 E5 10            [12]  852 	mov	a,_bp
      002208 24 07            [12]  853 	add	a,#0x07
      00220A F8               [12]  854 	mov	r0,a
      00220B 06               [12]  855 	inc	@r0
      00220C B6 00 02         [24]  856 	cjne	@r0,#0x00,00218$
      00220F 08               [12]  857 	inc	r0
      002210 06               [12]  858 	inc	@r0
      002211                        859 00218$:
                                    860 ;	disp.c:207: OE = 0x8fu;
      002211 78 3A            [12]  861 	mov	r0,#_OE
      002213 76 8F            [12]  862 	mov	@r0,#0x8f
      002215 80 04            [24]  863 	sjmp	00105$
      002217                        864 00104$:
                                    865 ;	disp.c:208: } else OE = 0x0fu;
      002217 78 3A            [12]  866 	mov	r0,#_OE
      002219 76 0F            [12]  867 	mov	@r0,#0x0f
      00221B                        868 00105$:
                                    869 ;	disp.c:209: gpo[GPO_OE] = OE;
      00221B 78 06            [12]  870 	mov	r0,#(_gpo + 0x0006)
      00221D 79 3A            [12]  871 	mov	r1,#_OE
      00221F E7               [12]  872 	mov	a,@r1
      002220 F2               [24]  873 	movx	@r0,a
                                    874 ;	disp.c:211: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      002221 E5 10            [12]  875 	mov	a,_bp
      002223 24 06            [12]  876 	add	a,#0x06
      002225 F8               [12]  877 	mov	r0,a
      002226 E6               [12]  878 	mov	a,@r0
      002227 24 29            [12]  879 	add	a,#_sddcol
      002229 F9               [12]  880 	mov	r1,a
      00222A E7               [12]  881 	mov	a,@r1
      00222B FB               [12]  882 	mov	r3,a
      00222C 54 C0            [12]  883 	anl	a,#0xc0
      00222E 60 02            [24]  884 	jz	00220$
      002230 80 6F            [24]  885 	sjmp	00109$
      002232                        886 00220$:
                                    887 ;	disp.c:169: TR1 = 0;
                                    888 ;	assignBit
      002232 C2 8E            [12]  889 	clr	_TR1
                                    890 ;	disp.c:170: TH1 = TR1_COUNT_0 >> 8;
      002234 75 8D 00         [24]  891 	mov	_TH1,#0x00
                                    892 ;	disp.c:171: TL1 = TR1_COUNT_0 & 0xffu;	
      002237 75 8B 00         [24]  893 	mov	_TL1,#0x00
                                    894 ;	disp.c:172: TF1 = 0;
                                    895 ;	assignBit
      00223A C2 8F            [12]  896 	clr	_TF1
                                    897 ;	disp.c:173: TR1 = 1;
                                    898 ;	assignBit
      00223C D2 8E            [12]  899 	setb	_TR1
                                    900 ;	disp.c:174: while (!TF1);
      00223E                        901 00121$:
                                    902 ;	disp.c:175: TF1 = 0;
                                    903 ;	assignBit
      00223E 10 8F 02         [24]  904 	jbc	_TF1,00221$
      002241 80 FB            [24]  905 	sjmp	00121$
      002243                        906 00221$:
                                    907 ;	disp.c:177: TR1 = 0;
                                    908 ;	assignBit
      002243 C2 8E            [12]  909 	clr	_TR1
                                    910 ;	disp.c:178: TH1 = TR1_COUNT_1 >> 8;
      002245 75 8D C0         [24]  911 	mov	_TH1,#0xc0
                                    912 ;	disp.c:179: TL1 = TR1_COUNT_1 & 0xffu;	
      002248 75 8B 00         [24]  913 	mov	_TL1,#0x00
                                    914 ;	disp.c:180: TF1 = 0;
                                    915 ;	assignBit
      00224B C2 8F            [12]  916 	clr	_TF1
                                    917 ;	disp.c:181: TR1 = 1;
                                    918 ;	assignBit
      00224D D2 8E            [12]  919 	setb	_TR1
                                    920 ;	disp.c:182: while (!TF1);
      00224F                        921 00124$:
                                    922 ;	disp.c:183: TF1 = 0;
                                    923 ;	assignBit
      00224F 10 8F 02         [24]  924 	jbc	_TF1,00222$
      002252 80 FB            [24]  925 	sjmp	00124$
      002254                        926 00222$:
                                    927 ;	disp.c:185: TR1 = 0;
                                    928 ;	assignBit
      002254 C2 8E            [12]  929 	clr	_TR1
                                    930 ;	disp.c:214: for (j = 0u; j < 8u; j++)
      002256 E5 10            [12]  931 	mov	a,_bp
      002258 24 04            [12]  932 	add	a,#0x04
      00225A F8               [12]  933 	mov	r0,a
      00225B E6               [12]  934 	mov	a,@r0
      00225C 75 F0 08         [24]  935 	mov	b,#0x08
      00225F A4               [48]  936 	mul	ab
      002260 24 01            [12]  937 	add	a,#__ft_font6x8
      002262 FA               [12]  938 	mov	r2,a
      002263 74 81            [12]  939 	mov	a,#(__ft_font6x8 >> 8)
      002265 35 F0            [12]  940 	addc	a,b
      002267 FB               [12]  941 	mov	r3,a
      002268 E5 10            [12]  942 	mov	a,_bp
      00226A 24 06            [12]  943 	add	a,#0x06
      00226C F8               [12]  944 	mov	r0,a
      00226D 74 07            [12]  945 	mov	a,#0x07
      00226F C3               [12]  946 	clr	c
      002270 96               [12]  947 	subb	a,@r0
      002271 FD               [12]  948 	mov	r5,a
      002272 7C 00            [12]  949 	mov	r4,#0x00
      002274                        950 00130$:
                                    951 ;	disp.c:215: ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      002274 EC               [12]  952 	mov	a,r4
      002275 24 31            [12]  953 	add	a,#_ddata
      002277 F9               [12]  954 	mov	r1,a
      002278 EC               [12]  955 	mov	a,r4
      002279 2A               [12]  956 	add	a,r2
      00227A F5 82            [12]  957 	mov	dpl,a
      00227C E4               [12]  958 	clr	a
      00227D 3B               [12]  959 	addc	a,r3
      00227E F5 83            [12]  960 	mov	dph,a
      002280 E0               [24]  961 	movx	a,@dptr
      002281 FF               [12]  962 	mov	r7,a
      002282 8D F0            [24]  963 	mov	b,r5
      002284 05 F0            [12]  964 	inc	b
      002286 EF               [12]  965 	mov	a,r7
      002287 80 02            [24]  966 	sjmp	00225$
      002289                        967 00223$:
      002289 25 E0            [12]  968 	add	a,acc
      00228B                        969 00225$:
      00228B D5 F0 FB         [24]  970 	djnz	b,00223$
      00228E 54 80            [12]  971 	anl	a,#0x80
      002290 FF               [12]  972 	mov	r7,a
      002291 EC               [12]  973 	mov	a,r4
      002292 24 31            [12]  974 	add	a,#_ddata
      002294 F8               [12]  975 	mov	r0,a
      002295 E6               [12]  976 	mov	a,@r0
      002296 C3               [12]  977 	clr	c
      002297 13               [12]  978 	rrc	a
      002298 FE               [12]  979 	mov	r6,a
      002299 4F               [12]  980 	orl	a,r7
      00229A F7               [12]  981 	mov	@r1,a
                                    982 ;	disp.c:214: for (j = 0u; j < 8u; j++)
      00229B 0C               [12]  983 	inc	r4
      00229C BC 08 00         [24]  984 	cjne	r4,#0x08,00226$
      00229F                        985 00226$:
      00229F 40 D3            [24]  986 	jc	00130$
                                    987 ;	disp.c:217: skip_shift:
      0022A1                        988 00109$:
                                    989 ;	disp.c:218: if ((r = getchar_poll()) >= 0) {
      0022A1 12 20 BB         [24]  990 	lcall	_getchar_poll
      0022A4 AB 82            [24]  991 	mov	r3,dpl
      0022A6 AC 83            [24]  992 	mov	r4,dph
      0022A8 8B 07            [24]  993 	mov	ar7,r3
      0022AA EC               [12]  994 	mov	a,r4
      0022AB FE               [12]  995 	mov	r6,a
      0022AC 20 E7 58         [24]  996 	jb	acc.7,00136$
                                    997 ;	disp.c:219: r = toupper(r);
      0022AF 8F 82            [24]  998 	mov	dpl,r7
      0022B1 8E 83            [24]  999 	mov	dph,r6
      0022B3 12 25 98         [24] 1000 	lcall	_toupper
      0022B6 AB 82            [24] 1001 	mov	r3,dpl
      0022B8 AC 83            [24] 1002 	mov	r4,dph
                                   1003 ;	disp.c:220: if ((r == (int)'P') || (r == (int)' ')) {
      0022BA BB 50 05         [24] 1004 	cjne	r3,#0x50,00229$
      0022BD BC 00 02         [24] 1005 	cjne	r4,#0x00,00229$
      0022C0 80 06            [24] 1006 	sjmp	00114$
      0022C2                       1007 00229$:
      0022C2 BB 20 2A         [24] 1008 	cjne	r3,#0x20,00115$
      0022C5 BC 00 27         [24] 1009 	cjne	r4,#0x00,00115$
      0022C8                       1010 00114$:
                                   1011 ;	disp.c:221: printstr("PAUSE\r\n");
      0022C8 7E B1            [12] 1012 	mov	r6,#___str_0
      0022CA 7C 26            [12] 1013 	mov	r4,#(___str_0 >> 8)
      0022CC 7B 80            [12] 1014 	mov	r3,#0x80
                                   1015 ;	disp.c:48: return;
      0022CE                       1016 00133$:
                                   1017 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0022CE 8E 82            [24] 1018 	mov	dpl,r6
      0022D0 8C 83            [24] 1019 	mov	dph,r4
      0022D2 8B F0            [24] 1020 	mov	b,r3
      0022D4 12 26 76         [24] 1021 	lcall	__gptrget
      0022D7 FD               [12] 1022 	mov	r5,a
      0022D8 60 10            [24] 1023 	jz	00129$
      0022DA 7F 00            [12] 1024 	mov	r7,#0x00
      0022DC 8D 82            [24] 1025 	mov	dpl,r5
      0022DE 8F 83            [24] 1026 	mov	dph,r7
      0022E0 12 20 AD         [24] 1027 	lcall	_putchar
      0022E3 0E               [12] 1028 	inc	r6
                                   1029 ;	disp.c:221: printstr("PAUSE\r\n");
      0022E4 BE 00 E7         [24] 1030 	cjne	r6,#0x00,00133$
      0022E7 0C               [12] 1031 	inc	r4
      0022E8 80 E4            [24] 1032 	sjmp	00133$
      0022EA                       1033 00129$:
                                   1034 ;	disp.c:222: (void)getchar();
      0022EA 12 20 B2         [24] 1035 	lcall	_getchar
      0022ED 80 18            [24] 1036 	sjmp	00136$
      0022EF                       1037 00115$:
                                   1038 ;	disp.c:223: } else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      0022EF BB 54 05         [24] 1039 	cjne	r3,#0x54,00234$
      0022F2 BC 00 02         [24] 1040 	cjne	r4,#0x00,00234$
      0022F5 80 24            [24] 1041 	sjmp	00120$
      0022F7                       1042 00234$:
      0022F7 BB 52 05         [24] 1043 	cjne	r3,#0x52,00235$
      0022FA BC 00 02         [24] 1044 	cjne	r4,#0x00,00235$
      0022FD 80 1C            [24] 1045 	sjmp	00120$
      0022FF                       1046 00235$:
      0022FF BB 4C 05         [24] 1047 	cjne	r3,#0x4c,00236$
      002302 BC 00 02         [24] 1048 	cjne	r4,#0x00,00236$
      002305 80 14            [24] 1049 	sjmp	00120$
      002307                       1050 00236$:
      002307                       1051 00136$:
                                   1052 ;	disp.c:199: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002307 E5 10            [12] 1053 	mov	a,_bp
      002309 24 06            [12] 1054 	add	a,#0x06
      00230B F8               [12] 1055 	mov	r0,a
      00230C E6               [12] 1056 	mov	a,@r0
      00230D 04               [12] 1057 	inc	a
      00230E FF               [12] 1058 	mov	r7,a
      00230F E5 10            [12] 1059 	mov	a,_bp
      002311 24 06            [12] 1060 	add	a,#0x06
      002313 F8               [12] 1061 	mov	r0,a
      002314 74 07            [12] 1062 	mov	a,#0x07
      002316 5F               [12] 1063 	anl	a,r7
      002317 F6               [12] 1064 	mov	@r0,a
      002318 02 21 BA         [24] 1065 	ljmp	00135$
      00231B                       1066 00120$:
                                   1067 ;	disp.c:227: return r;
      00231B 8B 82            [24] 1068 	mov	dpl,r3
      00231D 8C 83            [24] 1069 	mov	dph,r4
                                   1070 ;	disp.c:228: }
      00231F 85 10 81         [24] 1071 	mov	sp,_bp
      002322 D0 10            [24] 1072 	pop	_bp
      002324 22               [24] 1073 	ret
                                   1074 ;------------------------------------------------------------
                                   1075 ;Allocation info for local variables in function 'main'
                                   1076 ;------------------------------------------------------------
                                   1077 ;j                         Allocated to stack - _bp +1
                                   1078 ;c                         Allocated to registers r7 r6 
                                   1079 ;__1310720004              Allocated to registers 
                                   1080 ;s                         Allocated to registers r5 r6 r7 
                                   1081 ;__1966080006              Allocated to registers 
                                   1082 ;s                         Allocated to registers r5 r6 r7 
                                   1083 ;__1966080008              Allocated to registers 
                                   1084 ;s                         Allocated to registers r5 r6 r7 
                                   1085 ;__1966080010              Allocated to registers 
                                   1086 ;s                         Allocated to registers r5 r6 r7 
                                   1087 ;__3276800012              Allocated to registers 
                                   1088 ;s                         Allocated to registers r7 r6 r4 
                                   1089 ;__3276800014              Allocated to registers 
                                   1090 ;s                         Allocated to registers r7 r6 r4 
                                   1091 ;__3276800016              Allocated to registers 
                                   1092 ;s                         Allocated to registers r7 r6 r4 
                                   1093 ;__3276800018              Allocated to registers 
                                   1094 ;s                         Allocated to registers r7 r6 r4 
                                   1095 ;__3276800020              Allocated to registers 
                                   1096 ;s                         Allocated to registers r7 r6 r4 
                                   1097 ;__1310720022              Allocated to registers 
                                   1098 ;s                         Allocated to registers r5 r6 r7 
                                   1099 ;sloc0                     Allocated to stack - _bp +65
                                   1100 ;------------------------------------------------------------
                                   1101 ;	disp.c:230: void main(void) {
                                   1102 ;	-----------------------------------------
                                   1103 ;	 function main
                                   1104 ;	-----------------------------------------
      002325                       1105 _main:
      002325 C0 10            [24] 1106 	push	_bp
      002327 85 81 10         [24] 1107 	mov	_bp,sp
      00232A 05 81            [12] 1108 	inc	sp
      00232C 05 81            [12] 1109 	inc	sp
                                   1110 ;	disp.c:234: init_gpo();
      00232E 12 20 CF         [24] 1111 	lcall	_init_gpo
                                   1112 ;	disp.c:235: clear_gpo();
      002331 12 20 F0         [24] 1113 	lcall	_clear_gpo
                                   1114 ;	disp.c:236: init_disp();
      002334 12 21 2C         [24] 1115 	lcall	_init_disp
                                   1116 ;	disp.c:237: init_timer0();
      002337 12 21 14         [24] 1117 	lcall	_init_timer0
                                   1118 ;	disp.c:238: init_timer1();
      00233A 12 21 20         [24] 1119 	lcall	_init_timer1
                                   1120 ;	disp.c:239: init_intr();
      00233D 12 21 09         [24] 1121 	lcall	_init_intr
                                   1122 ;	disp.c:240: TR0 = 1;
                                   1123 ;	assignBit
      002340 D2 8C            [12] 1124 	setb	_TR0
                                   1125 ;	disp.c:242: reset:
      002342                       1126 00101$:
                                   1127 ;	disp.c:243: init_disp();
      002342 12 21 2C         [24] 1128 	lcall	_init_disp
                                   1129 ;	disp.c:244: printstr("RESET\r\n");
      002345 7D B9            [12] 1130 	mov	r5,#___str_1
      002347 7E 26            [12] 1131 	mov	r6,#(___str_1 >> 8)
      002349 7F 80            [12] 1132 	mov	r7,#0x80
                                   1133 ;	disp.c:48: return;
      00234B                       1134 00146$:
                                   1135 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00234B 8D 82            [24] 1136 	mov	dpl,r5
      00234D 8E 83            [24] 1137 	mov	dph,r6
      00234F 8F F0            [24] 1138 	mov	b,r7
      002351 12 26 76         [24] 1139 	lcall	__gptrget
      002354 FC               [12] 1140 	mov	r4,a
      002355 60 10            [24] 1141 	jz	00126$
      002357 7B 00            [12] 1142 	mov	r3,#0x00
      002359 8C 82            [24] 1143 	mov	dpl,r4
      00235B 8B 83            [24] 1144 	mov	dph,r3
      00235D 12 20 AD         [24] 1145 	lcall	_putchar
      002360 0D               [12] 1146 	inc	r5
                                   1147 ;	disp.c:244: printstr("RESET\r\n");
      002361 BD 00 E7         [24] 1148 	cjne	r5,#0x00,00146$
      002364 0E               [12] 1149 	inc	r6
      002365 80 E4            [24] 1150 	sjmp	00146$
      002367                       1151 00126$:
                                   1152 ;	disp.c:245: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      002367 E4               [12] 1153 	clr	a
      002368 C0 E0            [24] 1154 	push	acc
      00236A 04               [12] 1155 	inc	a
      00236B C0 E0            [24] 1156 	push	acc
      00236D 90 89 01         [24] 1157 	mov	dptr,#_initial
      002370 E0               [24] 1158 	movx	a,@dptr
      002371 C0 E0            [24] 1159 	push	acc
      002373 A3               [24] 1160 	inc	dptr
      002374 E0               [24] 1161 	movx	a,@dptr
      002375 C0 E0            [24] 1162 	push	acc
      002377 A3               [24] 1163 	inc	dptr
      002378 E0               [24] 1164 	movx	a,@dptr
      002379 C0 E0            [24] 1165 	push	acc
      00237B 90 80 00         [24] 1166 	mov	dptr,#_buf
      00237E 75 F0 00         [24] 1167 	mov	b,#0x00
      002381 12 25 BF         [24] 1168 	lcall	_strncpy
      002384 E5 81            [12] 1169 	mov	a,sp
      002386 24 FB            [12] 1170 	add	a,#0xfb
      002388 F5 81            [12] 1171 	mov	sp,a
                                   1172 ;	disp.c:246: buf[sizeof (buf) - 1u] = 0u;
      00238A 90 81 00         [24] 1173 	mov	dptr,#(_buf + 0x0100)
      00238D E4               [12] 1174 	clr	a
      00238E F0               [24] 1175 	movx	@dptr,a
                                   1176 ;	disp.c:248: while (1) {
      00238F                       1177 00122$:
                                   1178 ;	disp.c:249: printstr("P SP L ENT S R T START MSG \"");
      00238F 7D C1            [12] 1179 	mov	r5,#___str_2
      002391 7E 26            [12] 1180 	mov	r6,#(___str_2 >> 8)
      002393 7F 80            [12] 1181 	mov	r7,#0x80
                                   1182 ;	disp.c:48: return;
      002395                       1183 00149$:
                                   1184 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002395 8D 82            [24] 1185 	mov	dpl,r5
      002397 8E 83            [24] 1186 	mov	dph,r6
      002399 8F F0            [24] 1187 	mov	b,r7
      00239B 12 26 76         [24] 1188 	lcall	__gptrget
      00239E FC               [12] 1189 	mov	r4,a
      00239F 60 10            [24] 1190 	jz	00128$
      0023A1 7B 00            [12] 1191 	mov	r3,#0x00
      0023A3 8C 82            [24] 1192 	mov	dpl,r4
      0023A5 8B 83            [24] 1193 	mov	dph,r3
      0023A7 12 20 AD         [24] 1194 	lcall	_putchar
      0023AA 0D               [12] 1195 	inc	r5
                                   1196 ;	disp.c:249: printstr("P SP L ENT S R T START MSG \"");
      0023AB BD 00 E7         [24] 1197 	cjne	r5,#0x00,00149$
      0023AE 0E               [12] 1198 	inc	r6
      0023AF 80 E4            [24] 1199 	sjmp	00149$
      0023B1                       1200 00128$:
                                   1201 ;	disp.c:250: printstr((char *)buf);
      0023B1 7D 00            [12] 1202 	mov	r5,#_buf
      0023B3 7E 80            [12] 1203 	mov	r6,#(_buf >> 8)
      0023B5 7F 00            [12] 1204 	mov	r7,#0x00
                                   1205 ;	disp.c:48: return;
      0023B7                       1206 00152$:
                                   1207 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023B7 8D 82            [24] 1208 	mov	dpl,r5
      0023B9 8E 83            [24] 1209 	mov	dph,r6
      0023BB 8F F0            [24] 1210 	mov	b,r7
      0023BD 12 26 76         [24] 1211 	lcall	__gptrget
      0023C0 FC               [12] 1212 	mov	r4,a
      0023C1 60 10            [24] 1213 	jz	00130$
      0023C3 7B 00            [12] 1214 	mov	r3,#0x00
      0023C5 8C 82            [24] 1215 	mov	dpl,r4
      0023C7 8B 83            [24] 1216 	mov	dph,r3
      0023C9 12 20 AD         [24] 1217 	lcall	_putchar
      0023CC 0D               [12] 1218 	inc	r5
                                   1219 ;	disp.c:250: printstr((char *)buf);
      0023CD BD 00 E7         [24] 1220 	cjne	r5,#0x00,00152$
      0023D0 0E               [12] 1221 	inc	r6
      0023D1 80 E4            [24] 1222 	sjmp	00152$
      0023D3                       1223 00130$:
                                   1224 ;	disp.c:251: printstr("\"\r\n");
      0023D3 7D DE            [12] 1225 	mov	r5,#___str_3
      0023D5 7E 26            [12] 1226 	mov	r6,#(___str_3 >> 8)
      0023D7 7F 80            [12] 1227 	mov	r7,#0x80
                                   1228 ;	disp.c:48: return;
      0023D9                       1229 00155$:
                                   1230 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023D9 8D 82            [24] 1231 	mov	dpl,r5
      0023DB 8E 83            [24] 1232 	mov	dph,r6
      0023DD 8F F0            [24] 1233 	mov	b,r7
      0023DF 12 26 76         [24] 1234 	lcall	__gptrget
      0023E2 FC               [12] 1235 	mov	r4,a
      0023E3 60 10            [24] 1236 	jz	00132$
      0023E5 7B 00            [12] 1237 	mov	r3,#0x00
      0023E7 8C 82            [24] 1238 	mov	dpl,r4
      0023E9 8B 83            [24] 1239 	mov	dph,r3
      0023EB 12 20 AD         [24] 1240 	lcall	_putchar
      0023EE 0D               [12] 1241 	inc	r5
                                   1242 ;	disp.c:251: printstr("\"\r\n");
      0023EF BD 00 E7         [24] 1243 	cjne	r5,#0x00,00155$
      0023F2 0E               [12] 1244 	inc	r6
      0023F3 80 E4            [24] 1245 	sjmp	00155$
      0023F5                       1246 00132$:
                                   1247 ;	disp.c:253: c = scroll(buf);
      0023F5 90 80 00         [24] 1248 	mov	dptr,#_buf
      0023F8 75 F0 00         [24] 1249 	mov	b,#0x00
      0023FB 12 21 99         [24] 1250 	lcall	_scroll
      0023FE AE 82            [24] 1251 	mov	r6,dpl
      002400 AF 83            [24] 1252 	mov	r7,dph
                                   1253 ;	disp.c:255: while (1) {
      002402                       1254 00119$:
                                   1255 ;	disp.c:256: if (c == (int)'T') goto term;
      002402 BE 54 06         [24] 1256 	cjne	r6,#0x54,00337$
      002405 BF 00 03         [24] 1257 	cjne	r7,#0x00,00337$
      002408 02 25 65         [24] 1258 	ljmp	00124$
      00240B                       1259 00337$:
                                   1260 ;	disp.c:257: else if (c == (int)'R') goto reset;
      00240B BE 52 06         [24] 1261 	cjne	r6,#0x52,00338$
      00240E BF 00 03         [24] 1262 	cjne	r7,#0x00,00338$
      002411 02 23 42         [24] 1263 	ljmp	00101$
      002414                       1264 00338$:
                                   1265 ;	disp.c:258: else if (c == (int)'L') {
      002414 BE 4C 05         [24] 1266 	cjne	r6,#0x4c,00339$
      002417 BF 00 02         [24] 1267 	cjne	r7,#0x00,00339$
      00241A 80 03            [24] 1268 	sjmp	00340$
      00241C                       1269 00339$:
      00241C 02 25 4F         [24] 1270 	ljmp	00110$
      00241F                       1271 00340$:
                                   1272 ;	disp.c:259: init_disp();
      00241F 12 21 2C         [24] 1273 	lcall	_init_disp
                                   1274 ;	disp.c:260: printstr("LOAD ");
      002422 7F E2            [12] 1275 	mov	r7,#___str_4
      002424 7E 26            [12] 1276 	mov	r6,#(___str_4 >> 8)
      002426 7C 80            [12] 1277 	mov	r4,#0x80
                                   1278 ;	disp.c:48: return;
      002428                       1279 00158$:
                                   1280 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002428 8F 82            [24] 1281 	mov	dpl,r7
      00242A 8E 83            [24] 1282 	mov	dph,r6
      00242C 8C F0            [24] 1283 	mov	b,r4
      00242E 12 26 76         [24] 1284 	lcall	__gptrget
      002431 FA               [12] 1285 	mov	r2,a
      002432 60 10            [24] 1286 	jz	00134$
      002434 7D 00            [12] 1287 	mov	r5,#0x00
      002436 8A 82            [24] 1288 	mov	dpl,r2
      002438 8D 83            [24] 1289 	mov	dph,r5
      00243A 12 20 AD         [24] 1290 	lcall	_putchar
      00243D 0F               [12] 1291 	inc	r7
                                   1292 ;	disp.c:260: printstr("LOAD ");
      00243E BF 00 E7         [24] 1293 	cjne	r7,#0x00,00158$
      002441 0E               [12] 1294 	inc	r6
      002442 80 E4            [24] 1295 	sjmp	00158$
      002444                       1296 00134$:
                                   1297 ;	disp.c:261: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002444 7C 00            [12] 1298 	mov	r4,#0x00
      002446 7D 00            [12] 1299 	mov	r5,#0x00
      002448 A8 10            [24] 1300 	mov	r0,_bp
      00244A 08               [12] 1301 	inc	r0
      00244B E4               [12] 1302 	clr	a
      00244C F6               [12] 1303 	mov	@r0,a
      00244D 08               [12] 1304 	inc	r0
      00244E F6               [12] 1305 	mov	@r0,a
      00244F                       1306 00160$:
                                   1307 ;	disp.c:262: c = getchar();
      00244F C0 04            [24] 1308 	push	ar4
      002451 C0 05            [24] 1309 	push	ar5
      002453 12 20 B2         [24] 1310 	lcall	_getchar
      002456 AC 82            [24] 1311 	mov	r4,dpl
      002458 AD 83            [24] 1312 	mov	r5,dph
      00245A 8C 07            [24] 1313 	mov	ar7,r4
      00245C 8D 06            [24] 1314 	mov	ar6,r5
                                   1315 ;	disp.c:263: (void)putchar(c);
      00245E 8F 82            [24] 1316 	mov	dpl,r7
      002460 8E 83            [24] 1317 	mov	dph,r6
      002462 12 20 AD         [24] 1318 	lcall	_putchar
                                   1319 ;	disp.c:264: if ((c == (int)'\r') || (c == (int)'\n')) {
      002465 BF 0D 09         [24] 1320 	cjne	r7,#0x0d,00343$
      002468 BE 00 06         [24] 1321 	cjne	r6,#0x00,00343$
      00246B D0 05            [24] 1322 	pop	ar5
      00246D D0 04            [24] 1323 	pop	ar4
      00246F 80 0A            [24] 1324 	sjmp	00102$
      002471                       1325 00343$:
      002471 D0 05            [24] 1326 	pop	ar5
      002473 D0 04            [24] 1327 	pop	ar4
      002475 BF 0A 11         [24] 1328 	cjne	r7,#0x0a,00103$
      002478 BE 00 0E         [24] 1329 	cjne	r6,#0x00,00103$
      00247B                       1330 00102$:
                                   1331 ;	disp.c:265: buf[j] = 0u;
      00247B EC               [12] 1332 	mov	a,r4
      00247C 24 00            [12] 1333 	add	a,#_buf
      00247E F5 82            [12] 1334 	mov	dpl,a
      002480 ED               [12] 1335 	mov	a,r5
      002481 34 80            [12] 1336 	addc	a,#(_buf >> 8)
      002483 F5 83            [12] 1337 	mov	dph,a
      002485 E4               [12] 1338 	clr	a
      002486 F0               [24] 1339 	movx	@dptr,a
                                   1340 ;	disp.c:266: break;
      002487 80 32            [24] 1341 	sjmp	00106$
      002489                       1342 00103$:
                                   1343 ;	disp.c:267: } else buf[j] = c & 0xffu;
      002489 A8 10            [24] 1344 	mov	r0,_bp
      00248B 08               [12] 1345 	inc	r0
      00248C E6               [12] 1346 	mov	a,@r0
      00248D 24 00            [12] 1347 	add	a,#_buf
      00248F FD               [12] 1348 	mov	r5,a
      002490 08               [12] 1349 	inc	r0
      002491 E6               [12] 1350 	mov	a,@r0
      002492 34 80            [12] 1351 	addc	a,#(_buf >> 8)
      002494 FC               [12] 1352 	mov	r4,a
      002495 8F 03            [24] 1353 	mov	ar3,r7
      002497 8D 82            [24] 1354 	mov	dpl,r5
      002499 8C 83            [24] 1355 	mov	dph,r4
      00249B EB               [12] 1356 	mov	a,r3
      00249C F0               [24] 1357 	movx	@dptr,a
                                   1358 ;	disp.c:261: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00249D A8 10            [24] 1359 	mov	r0,_bp
      00249F 08               [12] 1360 	inc	r0
      0024A0 06               [12] 1361 	inc	@r0
      0024A1 B6 00 02         [24] 1362 	cjne	@r0,#0x00,00346$
      0024A4 08               [12] 1363 	inc	r0
      0024A5 06               [12] 1364 	inc	@r0
      0024A6                       1365 00346$:
      0024A6 A8 10            [24] 1366 	mov	r0,_bp
      0024A8 08               [12] 1367 	inc	r0
      0024A9 86 04            [24] 1368 	mov	ar4,@r0
      0024AB 08               [12] 1369 	inc	r0
      0024AC 86 05            [24] 1370 	mov	ar5,@r0
      0024AE A8 10            [24] 1371 	mov	r0,_bp
      0024B0 08               [12] 1372 	inc	r0
      0024B1 86 02            [24] 1373 	mov	ar2,@r0
      0024B3 08               [12] 1374 	inc	r0
      0024B4 86 03            [24] 1375 	mov	ar3,@r0
      0024B6 74 FF            [12] 1376 	mov	a,#0x100 - 0x01
      0024B8 2B               [12] 1377 	add	a,r3
      0024B9 50 94            [24] 1378 	jnc	00160$
      0024BB                       1379 00106$:
                                   1380 ;	disp.c:269: buf[j] = 0u;
      0024BB EC               [12] 1381 	mov	a,r4
      0024BC 24 00            [12] 1382 	add	a,#_buf
      0024BE F5 82            [12] 1383 	mov	dpl,a
      0024C0 ED               [12] 1384 	mov	a,r5
      0024C1 34 80            [12] 1385 	addc	a,#(_buf >> 8)
      0024C3 F5 83            [12] 1386 	mov	dph,a
      0024C5 E4               [12] 1387 	clr	a
      0024C6 F0               [24] 1388 	movx	@dptr,a
                                   1389 ;	disp.c:270: printstr("\r\n");
      0024C7 7F E8            [12] 1390 	mov	r7,#___str_5
      0024C9 7E 26            [12] 1391 	mov	r6,#(___str_5 >> 8)
      0024CB 7C 80            [12] 1392 	mov	r4,#0x80
                                   1393 ;	disp.c:48: return;
      0024CD                       1394 00163$:
                                   1395 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024CD 8F 82            [24] 1396 	mov	dpl,r7
      0024CF 8E 83            [24] 1397 	mov	dph,r6
      0024D1 8C F0            [24] 1398 	mov	b,r4
      0024D3 12 26 76         [24] 1399 	lcall	__gptrget
      0024D6 FA               [12] 1400 	mov	r2,a
      0024D7 60 10            [24] 1401 	jz	00136$
      0024D9 7D 00            [12] 1402 	mov	r5,#0x00
      0024DB 8A 82            [24] 1403 	mov	dpl,r2
      0024DD 8D 83            [24] 1404 	mov	dph,r5
      0024DF 12 20 AD         [24] 1405 	lcall	_putchar
      0024E2 0F               [12] 1406 	inc	r7
                                   1407 ;	disp.c:270: printstr("\r\n");
      0024E3 BF 00 E7         [24] 1408 	cjne	r7,#0x00,00163$
      0024E6 0E               [12] 1409 	inc	r6
      0024E7 80 E4            [24] 1410 	sjmp	00163$
      0024E9                       1411 00136$:
                                   1412 ;	disp.c:271: printstr("MSG \"");
      0024E9 7F EB            [12] 1413 	mov	r7,#___str_6
      0024EB 7E 26            [12] 1414 	mov	r6,#(___str_6 >> 8)
      0024ED 7C 80            [12] 1415 	mov	r4,#0x80
                                   1416 ;	disp.c:48: return;
      0024EF                       1417 00166$:
                                   1418 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024EF 8F 82            [24] 1419 	mov	dpl,r7
      0024F1 8E 83            [24] 1420 	mov	dph,r6
      0024F3 8C F0            [24] 1421 	mov	b,r4
      0024F5 12 26 76         [24] 1422 	lcall	__gptrget
      0024F8 FA               [12] 1423 	mov	r2,a
      0024F9 60 10            [24] 1424 	jz	00138$
      0024FB 7D 00            [12] 1425 	mov	r5,#0x00
      0024FD 8A 82            [24] 1426 	mov	dpl,r2
      0024FF 8D 83            [24] 1427 	mov	dph,r5
      002501 12 20 AD         [24] 1428 	lcall	_putchar
      002504 0F               [12] 1429 	inc	r7
                                   1430 ;	disp.c:271: printstr("MSG \"");
      002505 BF 00 E7         [24] 1431 	cjne	r7,#0x00,00166$
      002508 0E               [12] 1432 	inc	r6
      002509 80 E4            [24] 1433 	sjmp	00166$
      00250B                       1434 00138$:
                                   1435 ;	disp.c:272: printstr((char *)buf);
      00250B 7F 00            [12] 1436 	mov	r7,#_buf
      00250D 7E 80            [12] 1437 	mov	r6,#(_buf >> 8)
      00250F 7C 00            [12] 1438 	mov	r4,#0x00
                                   1439 ;	disp.c:48: return;
      002511                       1440 00169$:
                                   1441 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002511 8F 82            [24] 1442 	mov	dpl,r7
      002513 8E 83            [24] 1443 	mov	dph,r6
      002515 8C F0            [24] 1444 	mov	b,r4
      002517 12 26 76         [24] 1445 	lcall	__gptrget
      00251A FA               [12] 1446 	mov	r2,a
      00251B 60 10            [24] 1447 	jz	00140$
      00251D 7D 00            [12] 1448 	mov	r5,#0x00
      00251F 8A 82            [24] 1449 	mov	dpl,r2
      002521 8D 83            [24] 1450 	mov	dph,r5
      002523 12 20 AD         [24] 1451 	lcall	_putchar
      002526 0F               [12] 1452 	inc	r7
                                   1453 ;	disp.c:272: printstr((char *)buf);
      002527 BF 00 E7         [24] 1454 	cjne	r7,#0x00,00169$
      00252A 0E               [12] 1455 	inc	r6
      00252B 80 E4            [24] 1456 	sjmp	00169$
      00252D                       1457 00140$:
                                   1458 ;	disp.c:273: printstr("\"\r\n");
      00252D 7F DE            [12] 1459 	mov	r7,#___str_3
      00252F 7E 26            [12] 1460 	mov	r6,#(___str_3 >> 8)
      002531 7C 80            [12] 1461 	mov	r4,#0x80
                                   1462 ;	disp.c:48: return;
      002533                       1463 00172$:
                                   1464 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002533 8F 82            [24] 1465 	mov	dpl,r7
      002535 8E 83            [24] 1466 	mov	dph,r6
      002537 8C F0            [24] 1467 	mov	b,r4
      002539 12 26 76         [24] 1468 	lcall	__gptrget
      00253C FA               [12] 1469 	mov	r2,a
      00253D 60 19            [24] 1470 	jz	00117$
      00253F 7D 00            [12] 1471 	mov	r5,#0x00
      002541 8A 82            [24] 1472 	mov	dpl,r2
      002543 8D 83            [24] 1473 	mov	dph,r5
      002545 12 20 AD         [24] 1474 	lcall	_putchar
      002548 0F               [12] 1475 	inc	r7
                                   1476 ;	disp.c:273: printstr("\"\r\n");
      002549 BF 00 E7         [24] 1477 	cjne	r7,#0x00,00172$
      00254C 0E               [12] 1478 	inc	r6
      00254D 80 E4            [24] 1479 	sjmp	00172$
      00254F                       1480 00110$:
                                   1481 ;	disp.c:274: } else if (c == (int)'S') break;
      00254F BE 53 06         [24] 1482 	cjne	r6,#0x53,00356$
      002552 BF 00 03         [24] 1483 	cjne	r7,#0x00,00356$
      002555 02 23 8F         [24] 1484 	ljmp	00122$
      002558                       1485 00356$:
      002558                       1486 00117$:
                                   1487 ;	disp.c:276: c = toupper(getchar());
      002558 12 20 B2         [24] 1488 	lcall	_getchar
      00255B 12 25 98         [24] 1489 	lcall	_toupper
      00255E AE 82            [24] 1490 	mov	r6,dpl
      002560 AF 83            [24] 1491 	mov	r7,dph
      002562 02 24 02         [24] 1492 	ljmp	00119$
                                   1493 ;	disp.c:280: term:	
      002565                       1494 00124$:
                                   1495 ;	disp.c:281: EA = 0;
                                   1496 ;	assignBit
      002565 C2 AF            [12] 1497 	clr	_EA
                                   1498 ;	disp.c:282: init_disp();
      002567 12 21 2C         [24] 1499 	lcall	_init_disp
                                   1500 ;	disp.c:283: printstr("TERM\r\n");
      00256A 7D F1            [12] 1501 	mov	r5,#___str_7
      00256C 7E 26            [12] 1502 	mov	r6,#(___str_7 >> 8)
      00256E 7F 80            [12] 1503 	mov	r7,#0x80
                                   1504 ;	disp.c:48: return;
      002570                       1505 00175$:
                                   1506 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002570 8D 82            [24] 1507 	mov	dpl,r5
      002572 8E 83            [24] 1508 	mov	dph,r6
      002574 8F F0            [24] 1509 	mov	b,r7
      002576 12 26 76         [24] 1510 	lcall	__gptrget
      002579 FC               [12] 1511 	mov	r4,a
      00257A 60 10            [24] 1512 	jz	00144$
      00257C 7B 00            [12] 1513 	mov	r3,#0x00
      00257E 8C 82            [24] 1514 	mov	dpl,r4
      002580 8B 83            [24] 1515 	mov	dph,r3
      002582 12 20 AD         [24] 1516 	lcall	_putchar
      002585 0D               [12] 1517 	inc	r5
                                   1518 ;	disp.c:283: printstr("TERM\r\n");
      002586 BD 00 E7         [24] 1519 	cjne	r5,#0x00,00175$
      002589 0E               [12] 1520 	inc	r6
      00258A 80 E4            [24] 1521 	sjmp	00175$
      00258C                       1522 00144$:
                                   1523 ;	disp.c:284: (void)getchar();
      00258C 12 20 B2         [24] 1524 	lcall	_getchar
                                   1525 ;	disp.c:286: PCON |= 2;
      00258F 43 87 02         [24] 1526 	orl	_PCON,#0x02
                                   1527 ;	disp.c:288: return;
                                   1528 ;	disp.c:289: }
      002592 85 10 81         [24] 1529 	mov	sp,_bp
      002595 D0 10            [24] 1530 	pop	_bp
      002597 22               [24] 1531 	ret
                                   1532 	.area CSEG    (CODE)
                                   1533 	.area CONST   (CODE)
                                   1534 	.area CONST   (CODE)
      0026B1                       1535 ___str_0:
      0026B1 50 41 55 53 45        1536 	.ascii "PAUSE"
      0026B6 0D                    1537 	.db 0x0d
      0026B7 0A                    1538 	.db 0x0a
      0026B8 00                    1539 	.db 0x00
                                   1540 	.area CSEG    (CODE)
                                   1541 	.area CONST   (CODE)
      0026B9                       1542 ___str_1:
      0026B9 52 45 53 45 54        1543 	.ascii "RESET"
      0026BE 0D                    1544 	.db 0x0d
      0026BF 0A                    1545 	.db 0x0a
      0026C0 00                    1546 	.db 0x00
                                   1547 	.area CSEG    (CODE)
                                   1548 	.area CONST   (CODE)
      0026C1                       1549 ___str_2:
      0026C1 50 20 53 50 20 4C 20  1550 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      0026DC 22                    1551 	.db 0x22
      0026DD 00                    1552 	.db 0x00
                                   1553 	.area CSEG    (CODE)
                                   1554 	.area CONST   (CODE)
      0026DE                       1555 ___str_3:
      0026DE 22                    1556 	.db 0x22
      0026DF 0D                    1557 	.db 0x0d
      0026E0 0A                    1558 	.db 0x0a
      0026E1 00                    1559 	.db 0x00
                                   1560 	.area CSEG    (CODE)
                                   1561 	.area CONST   (CODE)
      0026E2                       1562 ___str_4:
      0026E2 4C 4F 41 44 20        1563 	.ascii "LOAD "
      0026E7 00                    1564 	.db 0x00
                                   1565 	.area CSEG    (CODE)
                                   1566 	.area CONST   (CODE)
      0026E8                       1567 ___str_5:
      0026E8 0D                    1568 	.db 0x0d
      0026E9 0A                    1569 	.db 0x0a
      0026EA 00                    1570 	.db 0x00
                                   1571 	.area CSEG    (CODE)
                                   1572 	.area CONST   (CODE)
      0026EB                       1573 ___str_6:
      0026EB 4D 53 47 20           1574 	.ascii "MSG "
      0026EF 22                    1575 	.db 0x22
      0026F0 00                    1576 	.db 0x00
                                   1577 	.area CSEG    (CODE)
                                   1578 	.area CONST   (CODE)
      0026F1                       1579 ___str_7:
      0026F1 54 45 52 4D           1580 	.ascii "TERM"
      0026F5 0D                    1581 	.db 0x0d
      0026F6 0A                    1582 	.db 0x0a
      0026F7 00                    1583 	.db 0x00
                                   1584 	.area CSEG    (CODE)
                                   1585 	.area CONST   (CODE)
      0026F8                       1586 ___str_8:
      0026F8 4A 65 64 65 6D 20 64  1587 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      002729 00                    1588 	.db 0x00
                                   1589 	.area CSEG    (CODE)
                                   1590 	.area XINIT   (CODE)
      00272A                       1591 __xinit___ft_font6x8:
      00272A 00                    1592 	.db #0x00	; 0
      00272B 00                    1593 	.db #0x00	; 0
      00272C 00                    1594 	.db #0x00	; 0
      00272D 00                    1595 	.db #0x00	; 0
      00272E 00                    1596 	.db #0x00	; 0
      00272F 00                    1597 	.db #0x00	; 0
      002730 00                    1598 	.db #0x00	; 0
      002731 00                    1599 	.db #0x00	; 0
      002732 1C                    1600 	.db #0x1c	; 28
      002733 22                    1601 	.db #0x22	; 34
      002734 36                    1602 	.db #0x36	; 54	'6'
      002735 22                    1603 	.db #0x22	; 34
      002736 2A                    1604 	.db #0x2a	; 42
      002737 22                    1605 	.db #0x22	; 34
      002738 1C                    1606 	.db #0x1c	; 28
      002739 00                    1607 	.db #0x00	; 0
      00273A 1C                    1608 	.db #0x1c	; 28
      00273B 3E                    1609 	.db #0x3e	; 62
      00273C 2A                    1610 	.db #0x2a	; 42
      00273D 3E                    1611 	.db #0x3e	; 62
      00273E 22                    1612 	.db #0x22	; 34
      00273F 3E                    1613 	.db #0x3e	; 62
      002740 1C                    1614 	.db #0x1c	; 28
      002741 00                    1615 	.db #0x00	; 0
      002742 00                    1616 	.db #0x00	; 0
      002743 14                    1617 	.db #0x14	; 20
      002744 3E                    1618 	.db #0x3e	; 62
      002745 3E                    1619 	.db #0x3e	; 62
      002746 3E                    1620 	.db #0x3e	; 62
      002747 1C                    1621 	.db #0x1c	; 28
      002748 08                    1622 	.db #0x08	; 8
      002749 00                    1623 	.db #0x00	; 0
      00274A 00                    1624 	.db #0x00	; 0
      00274B 08                    1625 	.db #0x08	; 8
      00274C 1C                    1626 	.db #0x1c	; 28
      00274D 3E                    1627 	.db #0x3e	; 62
      00274E 3E                    1628 	.db #0x3e	; 62
      00274F 1C                    1629 	.db #0x1c	; 28
      002750 08                    1630 	.db #0x08	; 8
      002751 00                    1631 	.db #0x00	; 0
      002752 08                    1632 	.db #0x08	; 8
      002753 1C                    1633 	.db #0x1c	; 28
      002754 1C                    1634 	.db #0x1c	; 28
      002755 08                    1635 	.db #0x08	; 8
      002756 3E                    1636 	.db #0x3e	; 62
      002757 3E                    1637 	.db #0x3e	; 62
      002758 08                    1638 	.db #0x08	; 8
      002759 00                    1639 	.db #0x00	; 0
      00275A 00                    1640 	.db #0x00	; 0
      00275B 08                    1641 	.db #0x08	; 8
      00275C 1C                    1642 	.db #0x1c	; 28
      00275D 3E                    1643 	.db #0x3e	; 62
      00275E 3E                    1644 	.db #0x3e	; 62
      00275F 08                    1645 	.db #0x08	; 8
      002760 1C                    1646 	.db #0x1c	; 28
      002761 00                    1647 	.db #0x00	; 0
      002762 00                    1648 	.db #0x00	; 0
      002763 00                    1649 	.db #0x00	; 0
      002764 00                    1650 	.db #0x00	; 0
      002765 0C                    1651 	.db #0x0c	; 12
      002766 0C                    1652 	.db #0x0c	; 12
      002767 00                    1653 	.db #0x00	; 0
      002768 00                    1654 	.db #0x00	; 0
      002769 00                    1655 	.db #0x00	; 0
      00276A 3F                    1656 	.db #0x3f	; 63
      00276B 3F                    1657 	.db #0x3f	; 63
      00276C 3F                    1658 	.db #0x3f	; 63
      00276D 33                    1659 	.db #0x33	; 51	'3'
      00276E 33                    1660 	.db #0x33	; 51	'3'
      00276F 3F                    1661 	.db #0x3f	; 63
      002770 3F                    1662 	.db #0x3f	; 63
      002771 3F                    1663 	.db #0x3f	; 63
      002772 00                    1664 	.db #0x00	; 0
      002773 00                    1665 	.db #0x00	; 0
      002774 1E                    1666 	.db #0x1e	; 30
      002775 12                    1667 	.db #0x12	; 18
      002776 12                    1668 	.db #0x12	; 18
      002777 1E                    1669 	.db #0x1e	; 30
      002778 00                    1670 	.db #0x00	; 0
      002779 00                    1671 	.db #0x00	; 0
      00277A 3F                    1672 	.db #0x3f	; 63
      00277B 3F                    1673 	.db #0x3f	; 63
      00277C 21                    1674 	.db #0x21	; 33
      00277D 2D                    1675 	.db #0x2d	; 45
      00277E 2D                    1676 	.db #0x2d	; 45
      00277F 21                    1677 	.db #0x21	; 33
      002780 3F                    1678 	.db #0x3f	; 63
      002781 3F                    1679 	.db #0x3f	; 63
      002782 00                    1680 	.db #0x00	; 0
      002783 38                    1681 	.db #0x38	; 56	'8'
      002784 30                    1682 	.db #0x30	; 48	'0'
      002785 2C                    1683 	.db #0x2c	; 44
      002786 12                    1684 	.db #0x12	; 18
      002787 12                    1685 	.db #0x12	; 18
      002788 0C                    1686 	.db #0x0c	; 12
      002789 00                    1687 	.db #0x00	; 0
      00278A 1C                    1688 	.db #0x1c	; 28
      00278B 22                    1689 	.db #0x22	; 34
      00278C 22                    1690 	.db #0x22	; 34
      00278D 1C                    1691 	.db #0x1c	; 28
      00278E 08                    1692 	.db #0x08	; 8
      00278F 1C                    1693 	.db #0x1c	; 28
      002790 08                    1694 	.db #0x08	; 8
      002791 00                    1695 	.db #0x00	; 0
      002792 08                    1696 	.db #0x08	; 8
      002793 18                    1697 	.db #0x18	; 24
      002794 28                    1698 	.db #0x28	; 40
      002795 08                    1699 	.db #0x08	; 8
      002796 0C                    1700 	.db #0x0c	; 12
      002797 0E                    1701 	.db #0x0e	; 14
      002798 06                    1702 	.db #0x06	; 6
      002799 00                    1703 	.db #0x00	; 0
      00279A 30                    1704 	.db #0x30	; 48	'0'
      00279B 2C                    1705 	.db #0x2c	; 44
      00279C 34                    1706 	.db #0x34	; 52	'4'
      00279D 2C                    1707 	.db #0x2c	; 44
      00279E 34                    1708 	.db #0x34	; 52	'4'
      00279F 36                    1709 	.db #0x36	; 54	'6'
      0027A0 06                    1710 	.db #0x06	; 6
      0027A1 00                    1711 	.db #0x00	; 0
      0027A2 00                    1712 	.db #0x00	; 0
      0027A3 2A                    1713 	.db #0x2a	; 42
      0027A4 1C                    1714 	.db #0x1c	; 28
      0027A5 36                    1715 	.db #0x36	; 54	'6'
      0027A6 1C                    1716 	.db #0x1c	; 28
      0027A7 2A                    1717 	.db #0x2a	; 42
      0027A8 00                    1718 	.db #0x00	; 0
      0027A9 00                    1719 	.db #0x00	; 0
      0027AA 04                    1720 	.db #0x04	; 4
      0027AB 0C                    1721 	.db #0x0c	; 12
      0027AC 1C                    1722 	.db #0x1c	; 28
      0027AD 3C                    1723 	.db #0x3c	; 60
      0027AE 1C                    1724 	.db #0x1c	; 28
      0027AF 0C                    1725 	.db #0x0c	; 12
      0027B0 04                    1726 	.db #0x04	; 4
      0027B1 00                    1727 	.db #0x00	; 0
      0027B2 10                    1728 	.db #0x10	; 16
      0027B3 18                    1729 	.db #0x18	; 24
      0027B4 1C                    1730 	.db #0x1c	; 28
      0027B5 1E                    1731 	.db #0x1e	; 30
      0027B6 1C                    1732 	.db #0x1c	; 28
      0027B7 18                    1733 	.db #0x18	; 24
      0027B8 10                    1734 	.db #0x10	; 16
      0027B9 00                    1735 	.db #0x00	; 0
      0027BA 08                    1736 	.db #0x08	; 8
      0027BB 1C                    1737 	.db #0x1c	; 28
      0027BC 3E                    1738 	.db #0x3e	; 62
      0027BD 08                    1739 	.db #0x08	; 8
      0027BE 3E                    1740 	.db #0x3e	; 62
      0027BF 1C                    1741 	.db #0x1c	; 28
      0027C0 08                    1742 	.db #0x08	; 8
      0027C1 00                    1743 	.db #0x00	; 0
      0027C2 14                    1744 	.db #0x14	; 20
      0027C3 14                    1745 	.db #0x14	; 20
      0027C4 14                    1746 	.db #0x14	; 20
      0027C5 14                    1747 	.db #0x14	; 20
      0027C6 14                    1748 	.db #0x14	; 20
      0027C7 00                    1749 	.db #0x00	; 0
      0027C8 14                    1750 	.db #0x14	; 20
      0027C9 00                    1751 	.db #0x00	; 0
      0027CA 3C                    1752 	.db #0x3c	; 60
      0027CB 2A                    1753 	.db #0x2a	; 42
      0027CC 2A                    1754 	.db #0x2a	; 42
      0027CD 2C                    1755 	.db #0x2c	; 44
      0027CE 28                    1756 	.db #0x28	; 40
      0027CF 28                    1757 	.db #0x28	; 40
      0027D0 28                    1758 	.db #0x28	; 40
      0027D1 00                    1759 	.db #0x00	; 0
      0027D2 1C                    1760 	.db #0x1c	; 28
      0027D3 22                    1761 	.db #0x22	; 34
      0027D4 0C                    1762 	.db #0x0c	; 12
      0027D5 14                    1763 	.db #0x14	; 20
      0027D6 18                    1764 	.db #0x18	; 24
      0027D7 22                    1765 	.db #0x22	; 34
      0027D8 1C                    1766 	.db #0x1c	; 28
      0027D9 00                    1767 	.db #0x00	; 0
      0027DA 00                    1768 	.db #0x00	; 0
      0027DB 00                    1769 	.db #0x00	; 0
      0027DC 00                    1770 	.db #0x00	; 0
      0027DD 00                    1771 	.db #0x00	; 0
      0027DE 00                    1772 	.db #0x00	; 0
      0027DF 1E                    1773 	.db #0x1e	; 30
      0027E0 1E                    1774 	.db #0x1e	; 30
      0027E1 00                    1775 	.db #0x00	; 0
      0027E2 08                    1776 	.db #0x08	; 8
      0027E3 1C                    1777 	.db #0x1c	; 28
      0027E4 3E                    1778 	.db #0x3e	; 62
      0027E5 08                    1779 	.db #0x08	; 8
      0027E6 3E                    1780 	.db #0x3e	; 62
      0027E7 1C                    1781 	.db #0x1c	; 28
      0027E8 08                    1782 	.db #0x08	; 8
      0027E9 1C                    1783 	.db #0x1c	; 28
      0027EA 08                    1784 	.db #0x08	; 8
      0027EB 1C                    1785 	.db #0x1c	; 28
      0027EC 3E                    1786 	.db #0x3e	; 62
      0027ED 08                    1787 	.db #0x08	; 8
      0027EE 08                    1788 	.db #0x08	; 8
      0027EF 08                    1789 	.db #0x08	; 8
      0027F0 08                    1790 	.db #0x08	; 8
      0027F1 00                    1791 	.db #0x00	; 0
      0027F2 08                    1792 	.db #0x08	; 8
      0027F3 08                    1793 	.db #0x08	; 8
      0027F4 08                    1794 	.db #0x08	; 8
      0027F5 08                    1795 	.db #0x08	; 8
      0027F6 3E                    1796 	.db #0x3e	; 62
      0027F7 1C                    1797 	.db #0x1c	; 28
      0027F8 08                    1798 	.db #0x08	; 8
      0027F9 00                    1799 	.db #0x00	; 0
      0027FA 00                    1800 	.db #0x00	; 0
      0027FB 08                    1801 	.db #0x08	; 8
      0027FC 18                    1802 	.db #0x18	; 24
      0027FD 3E                    1803 	.db #0x3e	; 62
      0027FE 18                    1804 	.db #0x18	; 24
      0027FF 08                    1805 	.db #0x08	; 8
      002800 00                    1806 	.db #0x00	; 0
      002801 00                    1807 	.db #0x00	; 0
      002802 00                    1808 	.db #0x00	; 0
      002803 08                    1809 	.db #0x08	; 8
      002804 0C                    1810 	.db #0x0c	; 12
      002805 3E                    1811 	.db #0x3e	; 62
      002806 0C                    1812 	.db #0x0c	; 12
      002807 08                    1813 	.db #0x08	; 8
      002808 00                    1814 	.db #0x00	; 0
      002809 00                    1815 	.db #0x00	; 0
      00280A 00                    1816 	.db #0x00	; 0
      00280B 00                    1817 	.db #0x00	; 0
      00280C 00                    1818 	.db #0x00	; 0
      00280D 02                    1819 	.db #0x02	; 2
      00280E 02                    1820 	.db #0x02	; 2
      00280F 02                    1821 	.db #0x02	; 2
      002810 3E                    1822 	.db #0x3e	; 62
      002811 00                    1823 	.db #0x00	; 0
      002812 00                    1824 	.db #0x00	; 0
      002813 14                    1825 	.db #0x14	; 20
      002814 14                    1826 	.db #0x14	; 20
      002815 3E                    1827 	.db #0x3e	; 62
      002816 14                    1828 	.db #0x14	; 20
      002817 14                    1829 	.db #0x14	; 20
      002818 00                    1830 	.db #0x00	; 0
      002819 00                    1831 	.db #0x00	; 0
      00281A 08                    1832 	.db #0x08	; 8
      00281B 08                    1833 	.db #0x08	; 8
      00281C 1C                    1834 	.db #0x1c	; 28
      00281D 1C                    1835 	.db #0x1c	; 28
      00281E 3E                    1836 	.db #0x3e	; 62
      00281F 3E                    1837 	.db #0x3e	; 62
      002820 00                    1838 	.db #0x00	; 0
      002821 00                    1839 	.db #0x00	; 0
      002822 3E                    1840 	.db #0x3e	; 62
      002823 3E                    1841 	.db #0x3e	; 62
      002824 1C                    1842 	.db #0x1c	; 28
      002825 1C                    1843 	.db #0x1c	; 28
      002826 08                    1844 	.db #0x08	; 8
      002827 08                    1845 	.db #0x08	; 8
      002828 00                    1846 	.db #0x00	; 0
      002829 00                    1847 	.db #0x00	; 0
      00282A 00                    1848 	.db #0x00	; 0
      00282B 00                    1849 	.db #0x00	; 0
      00282C 00                    1850 	.db #0x00	; 0
      00282D 00                    1851 	.db #0x00	; 0
      00282E 00                    1852 	.db #0x00	; 0
      00282F 00                    1853 	.db #0x00	; 0
      002830 00                    1854 	.db #0x00	; 0
      002831 00                    1855 	.db #0x00	; 0
      002832 08                    1856 	.db #0x08	; 8
      002833 1C                    1857 	.db #0x1c	; 28
      002834 1C                    1858 	.db #0x1c	; 28
      002835 08                    1859 	.db #0x08	; 8
      002836 08                    1860 	.db #0x08	; 8
      002837 00                    1861 	.db #0x00	; 0
      002838 08                    1862 	.db #0x08	; 8
      002839 00                    1863 	.db #0x00	; 0
      00283A 36                    1864 	.db #0x36	; 54	'6'
      00283B 36                    1865 	.db #0x36	; 54	'6'
      00283C 12                    1866 	.db #0x12	; 18
      00283D 00                    1867 	.db #0x00	; 0
      00283E 00                    1868 	.db #0x00	; 0
      00283F 00                    1869 	.db #0x00	; 0
      002840 00                    1870 	.db #0x00	; 0
      002841 00                    1871 	.db #0x00	; 0
      002842 00                    1872 	.db #0x00	; 0
      002843 14                    1873 	.db #0x14	; 20
      002844 3E                    1874 	.db #0x3e	; 62
      002845 14                    1875 	.db #0x14	; 20
      002846 14                    1876 	.db #0x14	; 20
      002847 3E                    1877 	.db #0x3e	; 62
      002848 14                    1878 	.db #0x14	; 20
      002849 00                    1879 	.db #0x00	; 0
      00284A 04                    1880 	.db #0x04	; 4
      00284B 1C                    1881 	.db #0x1c	; 28
      00284C 02                    1882 	.db #0x02	; 2
      00284D 0C                    1883 	.db #0x0c	; 12
      00284E 10                    1884 	.db #0x10	; 16
      00284F 0E                    1885 	.db #0x0e	; 14
      002850 08                    1886 	.db #0x08	; 8
      002851 00                    1887 	.db #0x00	; 0
      002852 26                    1888 	.db #0x26	; 38
      002853 26                    1889 	.db #0x26	; 38
      002854 10                    1890 	.db #0x10	; 16
      002855 08                    1891 	.db #0x08	; 8
      002856 04                    1892 	.db #0x04	; 4
      002857 32                    1893 	.db #0x32	; 50	'2'
      002858 32                    1894 	.db #0x32	; 50	'2'
      002859 00                    1895 	.db #0x00	; 0
      00285A 04                    1896 	.db #0x04	; 4
      00285B 0A                    1897 	.db #0x0a	; 10
      00285C 0A                    1898 	.db #0x0a	; 10
      00285D 04                    1899 	.db #0x04	; 4
      00285E 2A                    1900 	.db #0x2a	; 42
      00285F 12                    1901 	.db #0x12	; 18
      002860 2C                    1902 	.db #0x2c	; 44
      002861 00                    1903 	.db #0x00	; 0
      002862 0C                    1904 	.db #0x0c	; 12
      002863 0C                    1905 	.db #0x0c	; 12
      002864 04                    1906 	.db #0x04	; 4
      002865 00                    1907 	.db #0x00	; 0
      002866 00                    1908 	.db #0x00	; 0
      002867 00                    1909 	.db #0x00	; 0
      002868 00                    1910 	.db #0x00	; 0
      002869 00                    1911 	.db #0x00	; 0
      00286A 08                    1912 	.db #0x08	; 8
      00286B 04                    1913 	.db #0x04	; 4
      00286C 04                    1914 	.db #0x04	; 4
      00286D 04                    1915 	.db #0x04	; 4
      00286E 04                    1916 	.db #0x04	; 4
      00286F 04                    1917 	.db #0x04	; 4
      002870 08                    1918 	.db #0x08	; 8
      002871 00                    1919 	.db #0x00	; 0
      002872 04                    1920 	.db #0x04	; 4
      002873 08                    1921 	.db #0x08	; 8
      002874 08                    1922 	.db #0x08	; 8
      002875 08                    1923 	.db #0x08	; 8
      002876 08                    1924 	.db #0x08	; 8
      002877 08                    1925 	.db #0x08	; 8
      002878 04                    1926 	.db #0x04	; 4
      002879 00                    1927 	.db #0x00	; 0
      00287A 00                    1928 	.db #0x00	; 0
      00287B 14                    1929 	.db #0x14	; 20
      00287C 1C                    1930 	.db #0x1c	; 28
      00287D 3E                    1931 	.db #0x3e	; 62
      00287E 1C                    1932 	.db #0x1c	; 28
      00287F 14                    1933 	.db #0x14	; 20
      002880 00                    1934 	.db #0x00	; 0
      002881 00                    1935 	.db #0x00	; 0
      002882 00                    1936 	.db #0x00	; 0
      002883 08                    1937 	.db #0x08	; 8
      002884 08                    1938 	.db #0x08	; 8
      002885 3E                    1939 	.db #0x3e	; 62
      002886 08                    1940 	.db #0x08	; 8
      002887 08                    1941 	.db #0x08	; 8
      002888 00                    1942 	.db #0x00	; 0
      002889 00                    1943 	.db #0x00	; 0
      00288A 00                    1944 	.db #0x00	; 0
      00288B 00                    1945 	.db #0x00	; 0
      00288C 00                    1946 	.db #0x00	; 0
      00288D 00                    1947 	.db #0x00	; 0
      00288E 00                    1948 	.db #0x00	; 0
      00288F 0C                    1949 	.db #0x0c	; 12
      002890 0C                    1950 	.db #0x0c	; 12
      002891 04                    1951 	.db #0x04	; 4
      002892 00                    1952 	.db #0x00	; 0
      002893 00                    1953 	.db #0x00	; 0
      002894 00                    1954 	.db #0x00	; 0
      002895 3E                    1955 	.db #0x3e	; 62
      002896 00                    1956 	.db #0x00	; 0
      002897 00                    1957 	.db #0x00	; 0
      002898 00                    1958 	.db #0x00	; 0
      002899 00                    1959 	.db #0x00	; 0
      00289A 00                    1960 	.db #0x00	; 0
      00289B 00                    1961 	.db #0x00	; 0
      00289C 00                    1962 	.db #0x00	; 0
      00289D 00                    1963 	.db #0x00	; 0
      00289E 00                    1964 	.db #0x00	; 0
      00289F 0C                    1965 	.db #0x0c	; 12
      0028A0 0C                    1966 	.db #0x0c	; 12
      0028A1 00                    1967 	.db #0x00	; 0
      0028A2 00                    1968 	.db #0x00	; 0
      0028A3 20                    1969 	.db #0x20	; 32
      0028A4 10                    1970 	.db #0x10	; 16
      0028A5 08                    1971 	.db #0x08	; 8
      0028A6 04                    1972 	.db #0x04	; 4
      0028A7 02                    1973 	.db #0x02	; 2
      0028A8 00                    1974 	.db #0x00	; 0
      0028A9 00                    1975 	.db #0x00	; 0
      0028AA 1C                    1976 	.db #0x1c	; 28
      0028AB 22                    1977 	.db #0x22	; 34
      0028AC 32                    1978 	.db #0x32	; 50	'2'
      0028AD 2A                    1979 	.db #0x2a	; 42
      0028AE 26                    1980 	.db #0x26	; 38
      0028AF 22                    1981 	.db #0x22	; 34
      0028B0 1C                    1982 	.db #0x1c	; 28
      0028B1 00                    1983 	.db #0x00	; 0
      0028B2 08                    1984 	.db #0x08	; 8
      0028B3 0C                    1985 	.db #0x0c	; 12
      0028B4 08                    1986 	.db #0x08	; 8
      0028B5 08                    1987 	.db #0x08	; 8
      0028B6 08                    1988 	.db #0x08	; 8
      0028B7 08                    1989 	.db #0x08	; 8
      0028B8 1C                    1990 	.db #0x1c	; 28
      0028B9 00                    1991 	.db #0x00	; 0
      0028BA 1C                    1992 	.db #0x1c	; 28
      0028BB 22                    1993 	.db #0x22	; 34
      0028BC 20                    1994 	.db #0x20	; 32
      0028BD 18                    1995 	.db #0x18	; 24
      0028BE 04                    1996 	.db #0x04	; 4
      0028BF 02                    1997 	.db #0x02	; 2
      0028C0 3E                    1998 	.db #0x3e	; 62
      0028C1 00                    1999 	.db #0x00	; 0
      0028C2 1C                    2000 	.db #0x1c	; 28
      0028C3 22                    2001 	.db #0x22	; 34
      0028C4 20                    2002 	.db #0x20	; 32
      0028C5 1C                    2003 	.db #0x1c	; 28
      0028C6 20                    2004 	.db #0x20	; 32
      0028C7 22                    2005 	.db #0x22	; 34
      0028C8 1C                    2006 	.db #0x1c	; 28
      0028C9 00                    2007 	.db #0x00	; 0
      0028CA 10                    2008 	.db #0x10	; 16
      0028CB 18                    2009 	.db #0x18	; 24
      0028CC 14                    2010 	.db #0x14	; 20
      0028CD 12                    2011 	.db #0x12	; 18
      0028CE 3E                    2012 	.db #0x3e	; 62
      0028CF 10                    2013 	.db #0x10	; 16
      0028D0 10                    2014 	.db #0x10	; 16
      0028D1 00                    2015 	.db #0x00	; 0
      0028D2 3E                    2016 	.db #0x3e	; 62
      0028D3 02                    2017 	.db #0x02	; 2
      0028D4 02                    2018 	.db #0x02	; 2
      0028D5 1E                    2019 	.db #0x1e	; 30
      0028D6 20                    2020 	.db #0x20	; 32
      0028D7 22                    2021 	.db #0x22	; 34
      0028D8 1C                    2022 	.db #0x1c	; 28
      0028D9 00                    2023 	.db #0x00	; 0
      0028DA 18                    2024 	.db #0x18	; 24
      0028DB 04                    2025 	.db #0x04	; 4
      0028DC 02                    2026 	.db #0x02	; 2
      0028DD 1E                    2027 	.db #0x1e	; 30
      0028DE 22                    2028 	.db #0x22	; 34
      0028DF 22                    2029 	.db #0x22	; 34
      0028E0 1C                    2030 	.db #0x1c	; 28
      0028E1 00                    2031 	.db #0x00	; 0
      0028E2 3E                    2032 	.db #0x3e	; 62
      0028E3 20                    2033 	.db #0x20	; 32
      0028E4 10                    2034 	.db #0x10	; 16
      0028E5 08                    2035 	.db #0x08	; 8
      0028E6 04                    2036 	.db #0x04	; 4
      0028E7 04                    2037 	.db #0x04	; 4
      0028E8 04                    2038 	.db #0x04	; 4
      0028E9 00                    2039 	.db #0x00	; 0
      0028EA 1C                    2040 	.db #0x1c	; 28
      0028EB 22                    2041 	.db #0x22	; 34
      0028EC 22                    2042 	.db #0x22	; 34
      0028ED 1C                    2043 	.db #0x1c	; 28
      0028EE 22                    2044 	.db #0x22	; 34
      0028EF 22                    2045 	.db #0x22	; 34
      0028F0 1C                    2046 	.db #0x1c	; 28
      0028F1 00                    2047 	.db #0x00	; 0
      0028F2 1C                    2048 	.db #0x1c	; 28
      0028F3 22                    2049 	.db #0x22	; 34
      0028F4 22                    2050 	.db #0x22	; 34
      0028F5 3C                    2051 	.db #0x3c	; 60
      0028F6 20                    2052 	.db #0x20	; 32
      0028F7 10                    2053 	.db #0x10	; 16
      0028F8 0C                    2054 	.db #0x0c	; 12
      0028F9 00                    2055 	.db #0x00	; 0
      0028FA 00                    2056 	.db #0x00	; 0
      0028FB 00                    2057 	.db #0x00	; 0
      0028FC 0C                    2058 	.db #0x0c	; 12
      0028FD 0C                    2059 	.db #0x0c	; 12
      0028FE 00                    2060 	.db #0x00	; 0
      0028FF 0C                    2061 	.db #0x0c	; 12
      002900 0C                    2062 	.db #0x0c	; 12
      002901 00                    2063 	.db #0x00	; 0
      002902 00                    2064 	.db #0x00	; 0
      002903 00                    2065 	.db #0x00	; 0
      002904 0C                    2066 	.db #0x0c	; 12
      002905 0C                    2067 	.db #0x0c	; 12
      002906 00                    2068 	.db #0x00	; 0
      002907 0C                    2069 	.db #0x0c	; 12
      002908 0C                    2070 	.db #0x0c	; 12
      002909 04                    2071 	.db #0x04	; 4
      00290A 10                    2072 	.db #0x10	; 16
      00290B 08                    2073 	.db #0x08	; 8
      00290C 04                    2074 	.db #0x04	; 4
      00290D 02                    2075 	.db #0x02	; 2
      00290E 04                    2076 	.db #0x04	; 4
      00290F 08                    2077 	.db #0x08	; 8
      002910 10                    2078 	.db #0x10	; 16
      002911 00                    2079 	.db #0x00	; 0
      002912 00                    2080 	.db #0x00	; 0
      002913 00                    2081 	.db #0x00	; 0
      002914 3E                    2082 	.db #0x3e	; 62
      002915 00                    2083 	.db #0x00	; 0
      002916 00                    2084 	.db #0x00	; 0
      002917 3E                    2085 	.db #0x3e	; 62
      002918 00                    2086 	.db #0x00	; 0
      002919 00                    2087 	.db #0x00	; 0
      00291A 04                    2088 	.db #0x04	; 4
      00291B 08                    2089 	.db #0x08	; 8
      00291C 10                    2090 	.db #0x10	; 16
      00291D 20                    2091 	.db #0x20	; 32
      00291E 10                    2092 	.db #0x10	; 16
      00291F 08                    2093 	.db #0x08	; 8
      002920 04                    2094 	.db #0x04	; 4
      002921 00                    2095 	.db #0x00	; 0
      002922 1C                    2096 	.db #0x1c	; 28
      002923 22                    2097 	.db #0x22	; 34
      002924 20                    2098 	.db #0x20	; 32
      002925 18                    2099 	.db #0x18	; 24
      002926 08                    2100 	.db #0x08	; 8
      002927 00                    2101 	.db #0x00	; 0
      002928 08                    2102 	.db #0x08	; 8
      002929 00                    2103 	.db #0x00	; 0
      00292A 1C                    2104 	.db #0x1c	; 28
      00292B 22                    2105 	.db #0x22	; 34
      00292C 3A                    2106 	.db #0x3a	; 58
      00292D 2A                    2107 	.db #0x2a	; 42
      00292E 3A                    2108 	.db #0x3a	; 58
      00292F 02                    2109 	.db #0x02	; 2
      002930 1C                    2110 	.db #0x1c	; 28
      002931 00                    2111 	.db #0x00	; 0
      002932 1C                    2112 	.db #0x1c	; 28
      002933 22                    2113 	.db #0x22	; 34
      002934 22                    2114 	.db #0x22	; 34
      002935 22                    2115 	.db #0x22	; 34
      002936 3E                    2116 	.db #0x3e	; 62
      002937 22                    2117 	.db #0x22	; 34
      002938 22                    2118 	.db #0x22	; 34
      002939 00                    2119 	.db #0x00	; 0
      00293A 1E                    2120 	.db #0x1e	; 30
      00293B 22                    2121 	.db #0x22	; 34
      00293C 22                    2122 	.db #0x22	; 34
      00293D 1E                    2123 	.db #0x1e	; 30
      00293E 22                    2124 	.db #0x22	; 34
      00293F 22                    2125 	.db #0x22	; 34
      002940 1E                    2126 	.db #0x1e	; 30
      002941 00                    2127 	.db #0x00	; 0
      002942 1C                    2128 	.db #0x1c	; 28
      002943 22                    2129 	.db #0x22	; 34
      002944 02                    2130 	.db #0x02	; 2
      002945 02                    2131 	.db #0x02	; 2
      002946 02                    2132 	.db #0x02	; 2
      002947 22                    2133 	.db #0x22	; 34
      002948 1C                    2134 	.db #0x1c	; 28
      002949 00                    2135 	.db #0x00	; 0
      00294A 1E                    2136 	.db #0x1e	; 30
      00294B 22                    2137 	.db #0x22	; 34
      00294C 22                    2138 	.db #0x22	; 34
      00294D 22                    2139 	.db #0x22	; 34
      00294E 22                    2140 	.db #0x22	; 34
      00294F 22                    2141 	.db #0x22	; 34
      002950 1E                    2142 	.db #0x1e	; 30
      002951 00                    2143 	.db #0x00	; 0
      002952 3E                    2144 	.db #0x3e	; 62
      002953 02                    2145 	.db #0x02	; 2
      002954 02                    2146 	.db #0x02	; 2
      002955 1E                    2147 	.db #0x1e	; 30
      002956 02                    2148 	.db #0x02	; 2
      002957 02                    2149 	.db #0x02	; 2
      002958 3E                    2150 	.db #0x3e	; 62
      002959 00                    2151 	.db #0x00	; 0
      00295A 3E                    2152 	.db #0x3e	; 62
      00295B 02                    2153 	.db #0x02	; 2
      00295C 02                    2154 	.db #0x02	; 2
      00295D 1E                    2155 	.db #0x1e	; 30
      00295E 02                    2156 	.db #0x02	; 2
      00295F 02                    2157 	.db #0x02	; 2
      002960 02                    2158 	.db #0x02	; 2
      002961 00                    2159 	.db #0x00	; 0
      002962 1C                    2160 	.db #0x1c	; 28
      002963 22                    2161 	.db #0x22	; 34
      002964 02                    2162 	.db #0x02	; 2
      002965 3A                    2163 	.db #0x3a	; 58
      002966 22                    2164 	.db #0x22	; 34
      002967 22                    2165 	.db #0x22	; 34
      002968 3C                    2166 	.db #0x3c	; 60
      002969 00                    2167 	.db #0x00	; 0
      00296A 22                    2168 	.db #0x22	; 34
      00296B 22                    2169 	.db #0x22	; 34
      00296C 22                    2170 	.db #0x22	; 34
      00296D 3E                    2171 	.db #0x3e	; 62
      00296E 22                    2172 	.db #0x22	; 34
      00296F 22                    2173 	.db #0x22	; 34
      002970 22                    2174 	.db #0x22	; 34
      002971 00                    2175 	.db #0x00	; 0
      002972 1C                    2176 	.db #0x1c	; 28
      002973 08                    2177 	.db #0x08	; 8
      002974 08                    2178 	.db #0x08	; 8
      002975 08                    2179 	.db #0x08	; 8
      002976 08                    2180 	.db #0x08	; 8
      002977 08                    2181 	.db #0x08	; 8
      002978 1C                    2182 	.db #0x1c	; 28
      002979 00                    2183 	.db #0x00	; 0
      00297A 20                    2184 	.db #0x20	; 32
      00297B 20                    2185 	.db #0x20	; 32
      00297C 20                    2186 	.db #0x20	; 32
      00297D 20                    2187 	.db #0x20	; 32
      00297E 22                    2188 	.db #0x22	; 34
      00297F 22                    2189 	.db #0x22	; 34
      002980 1C                    2190 	.db #0x1c	; 28
      002981 00                    2191 	.db #0x00	; 0
      002982 22                    2192 	.db #0x22	; 34
      002983 12                    2193 	.db #0x12	; 18
      002984 0A                    2194 	.db #0x0a	; 10
      002985 06                    2195 	.db #0x06	; 6
      002986 0A                    2196 	.db #0x0a	; 10
      002987 12                    2197 	.db #0x12	; 18
      002988 22                    2198 	.db #0x22	; 34
      002989 00                    2199 	.db #0x00	; 0
      00298A 02                    2200 	.db #0x02	; 2
      00298B 02                    2201 	.db #0x02	; 2
      00298C 02                    2202 	.db #0x02	; 2
      00298D 02                    2203 	.db #0x02	; 2
      00298E 02                    2204 	.db #0x02	; 2
      00298F 02                    2205 	.db #0x02	; 2
      002990 3E                    2206 	.db #0x3e	; 62
      002991 00                    2207 	.db #0x00	; 0
      002992 22                    2208 	.db #0x22	; 34
      002993 36                    2209 	.db #0x36	; 54	'6'
      002994 2A                    2210 	.db #0x2a	; 42
      002995 22                    2211 	.db #0x22	; 34
      002996 22                    2212 	.db #0x22	; 34
      002997 22                    2213 	.db #0x22	; 34
      002998 22                    2214 	.db #0x22	; 34
      002999 00                    2215 	.db #0x00	; 0
      00299A 22                    2216 	.db #0x22	; 34
      00299B 26                    2217 	.db #0x26	; 38
      00299C 2A                    2218 	.db #0x2a	; 42
      00299D 32                    2219 	.db #0x32	; 50	'2'
      00299E 22                    2220 	.db #0x22	; 34
      00299F 22                    2221 	.db #0x22	; 34
      0029A0 22                    2222 	.db #0x22	; 34
      0029A1 00                    2223 	.db #0x00	; 0
      0029A2 1C                    2224 	.db #0x1c	; 28
      0029A3 22                    2225 	.db #0x22	; 34
      0029A4 22                    2226 	.db #0x22	; 34
      0029A5 22                    2227 	.db #0x22	; 34
      0029A6 22                    2228 	.db #0x22	; 34
      0029A7 22                    2229 	.db #0x22	; 34
      0029A8 1C                    2230 	.db #0x1c	; 28
      0029A9 00                    2231 	.db #0x00	; 0
      0029AA 1E                    2232 	.db #0x1e	; 30
      0029AB 22                    2233 	.db #0x22	; 34
      0029AC 22                    2234 	.db #0x22	; 34
      0029AD 1E                    2235 	.db #0x1e	; 30
      0029AE 02                    2236 	.db #0x02	; 2
      0029AF 02                    2237 	.db #0x02	; 2
      0029B0 02                    2238 	.db #0x02	; 2
      0029B1 00                    2239 	.db #0x00	; 0
      0029B2 1C                    2240 	.db #0x1c	; 28
      0029B3 22                    2241 	.db #0x22	; 34
      0029B4 22                    2242 	.db #0x22	; 34
      0029B5 22                    2243 	.db #0x22	; 34
      0029B6 2A                    2244 	.db #0x2a	; 42
      0029B7 12                    2245 	.db #0x12	; 18
      0029B8 2C                    2246 	.db #0x2c	; 44
      0029B9 00                    2247 	.db #0x00	; 0
      0029BA 1E                    2248 	.db #0x1e	; 30
      0029BB 22                    2249 	.db #0x22	; 34
      0029BC 22                    2250 	.db #0x22	; 34
      0029BD 1E                    2251 	.db #0x1e	; 30
      0029BE 12                    2252 	.db #0x12	; 18
      0029BF 22                    2253 	.db #0x22	; 34
      0029C0 22                    2254 	.db #0x22	; 34
      0029C1 00                    2255 	.db #0x00	; 0
      0029C2 1C                    2256 	.db #0x1c	; 28
      0029C3 22                    2257 	.db #0x22	; 34
      0029C4 02                    2258 	.db #0x02	; 2
      0029C5 1C                    2259 	.db #0x1c	; 28
      0029C6 20                    2260 	.db #0x20	; 32
      0029C7 22                    2261 	.db #0x22	; 34
      0029C8 1C                    2262 	.db #0x1c	; 28
      0029C9 00                    2263 	.db #0x00	; 0
      0029CA 3E                    2264 	.db #0x3e	; 62
      0029CB 08                    2265 	.db #0x08	; 8
      0029CC 08                    2266 	.db #0x08	; 8
      0029CD 08                    2267 	.db #0x08	; 8
      0029CE 08                    2268 	.db #0x08	; 8
      0029CF 08                    2269 	.db #0x08	; 8
      0029D0 08                    2270 	.db #0x08	; 8
      0029D1 00                    2271 	.db #0x00	; 0
      0029D2 22                    2272 	.db #0x22	; 34
      0029D3 22                    2273 	.db #0x22	; 34
      0029D4 22                    2274 	.db #0x22	; 34
      0029D5 22                    2275 	.db #0x22	; 34
      0029D6 22                    2276 	.db #0x22	; 34
      0029D7 22                    2277 	.db #0x22	; 34
      0029D8 1C                    2278 	.db #0x1c	; 28
      0029D9 00                    2279 	.db #0x00	; 0
      0029DA 22                    2280 	.db #0x22	; 34
      0029DB 22                    2281 	.db #0x22	; 34
      0029DC 22                    2282 	.db #0x22	; 34
      0029DD 22                    2283 	.db #0x22	; 34
      0029DE 22                    2284 	.db #0x22	; 34
      0029DF 14                    2285 	.db #0x14	; 20
      0029E0 08                    2286 	.db #0x08	; 8
      0029E1 00                    2287 	.db #0x00	; 0
      0029E2 22                    2288 	.db #0x22	; 34
      0029E3 22                    2289 	.db #0x22	; 34
      0029E4 2A                    2290 	.db #0x2a	; 42
      0029E5 2A                    2291 	.db #0x2a	; 42
      0029E6 2A                    2292 	.db #0x2a	; 42
      0029E7 2A                    2293 	.db #0x2a	; 42
      0029E8 14                    2294 	.db #0x14	; 20
      0029E9 00                    2295 	.db #0x00	; 0
      0029EA 22                    2296 	.db #0x22	; 34
      0029EB 22                    2297 	.db #0x22	; 34
      0029EC 14                    2298 	.db #0x14	; 20
      0029ED 08                    2299 	.db #0x08	; 8
      0029EE 14                    2300 	.db #0x14	; 20
      0029EF 22                    2301 	.db #0x22	; 34
      0029F0 22                    2302 	.db #0x22	; 34
      0029F1 00                    2303 	.db #0x00	; 0
      0029F2 22                    2304 	.db #0x22	; 34
      0029F3 22                    2305 	.db #0x22	; 34
      0029F4 22                    2306 	.db #0x22	; 34
      0029F5 14                    2307 	.db #0x14	; 20
      0029F6 08                    2308 	.db #0x08	; 8
      0029F7 08                    2309 	.db #0x08	; 8
      0029F8 08                    2310 	.db #0x08	; 8
      0029F9 00                    2311 	.db #0x00	; 0
      0029FA 1E                    2312 	.db #0x1e	; 30
      0029FB 10                    2313 	.db #0x10	; 16
      0029FC 08                    2314 	.db #0x08	; 8
      0029FD 04                    2315 	.db #0x04	; 4
      0029FE 02                    2316 	.db #0x02	; 2
      0029FF 02                    2317 	.db #0x02	; 2
      002A00 1E                    2318 	.db #0x1e	; 30
      002A01 00                    2319 	.db #0x00	; 0
      002A02 1C                    2320 	.db #0x1c	; 28
      002A03 04                    2321 	.db #0x04	; 4
      002A04 04                    2322 	.db #0x04	; 4
      002A05 04                    2323 	.db #0x04	; 4
      002A06 04                    2324 	.db #0x04	; 4
      002A07 04                    2325 	.db #0x04	; 4
      002A08 1C                    2326 	.db #0x1c	; 28
      002A09 00                    2327 	.db #0x00	; 0
      002A0A 00                    2328 	.db #0x00	; 0
      002A0B 02                    2329 	.db #0x02	; 2
      002A0C 04                    2330 	.db #0x04	; 4
      002A0D 08                    2331 	.db #0x08	; 8
      002A0E 10                    2332 	.db #0x10	; 16
      002A0F 20                    2333 	.db #0x20	; 32
      002A10 00                    2334 	.db #0x00	; 0
      002A11 00                    2335 	.db #0x00	; 0
      002A12 1C                    2336 	.db #0x1c	; 28
      002A13 10                    2337 	.db #0x10	; 16
      002A14 10                    2338 	.db #0x10	; 16
      002A15 10                    2339 	.db #0x10	; 16
      002A16 10                    2340 	.db #0x10	; 16
      002A17 10                    2341 	.db #0x10	; 16
      002A18 1C                    2342 	.db #0x1c	; 28
      002A19 00                    2343 	.db #0x00	; 0
      002A1A 08                    2344 	.db #0x08	; 8
      002A1B 14                    2345 	.db #0x14	; 20
      002A1C 22                    2346 	.db #0x22	; 34
      002A1D 00                    2347 	.db #0x00	; 0
      002A1E 00                    2348 	.db #0x00	; 0
      002A1F 00                    2349 	.db #0x00	; 0
      002A20 00                    2350 	.db #0x00	; 0
      002A21 00                    2351 	.db #0x00	; 0
      002A22 00                    2352 	.db #0x00	; 0
      002A23 00                    2353 	.db #0x00	; 0
      002A24 00                    2354 	.db #0x00	; 0
      002A25 00                    2355 	.db #0x00	; 0
      002A26 00                    2356 	.db #0x00	; 0
      002A27 00                    2357 	.db #0x00	; 0
      002A28 00                    2358 	.db #0x00	; 0
      002A29 3F                    2359 	.db #0x3f	; 63
      002A2A 0C                    2360 	.db #0x0c	; 12
      002A2B 0C                    2361 	.db #0x0c	; 12
      002A2C 08                    2362 	.db #0x08	; 8
      002A2D 00                    2363 	.db #0x00	; 0
      002A2E 00                    2364 	.db #0x00	; 0
      002A2F 00                    2365 	.db #0x00	; 0
      002A30 00                    2366 	.db #0x00	; 0
      002A31 00                    2367 	.db #0x00	; 0
      002A32 00                    2368 	.db #0x00	; 0
      002A33 00                    2369 	.db #0x00	; 0
      002A34 1C                    2370 	.db #0x1c	; 28
      002A35 20                    2371 	.db #0x20	; 32
      002A36 3C                    2372 	.db #0x3c	; 60
      002A37 22                    2373 	.db #0x22	; 34
      002A38 3C                    2374 	.db #0x3c	; 60
      002A39 00                    2375 	.db #0x00	; 0
      002A3A 02                    2376 	.db #0x02	; 2
      002A3B 02                    2377 	.db #0x02	; 2
      002A3C 1E                    2378 	.db #0x1e	; 30
      002A3D 22                    2379 	.db #0x22	; 34
      002A3E 22                    2380 	.db #0x22	; 34
      002A3F 22                    2381 	.db #0x22	; 34
      002A40 1E                    2382 	.db #0x1e	; 30
      002A41 00                    2383 	.db #0x00	; 0
      002A42 00                    2384 	.db #0x00	; 0
      002A43 00                    2385 	.db #0x00	; 0
      002A44 1C                    2386 	.db #0x1c	; 28
      002A45 22                    2387 	.db #0x22	; 34
      002A46 02                    2388 	.db #0x02	; 2
      002A47 22                    2389 	.db #0x22	; 34
      002A48 1C                    2390 	.db #0x1c	; 28
      002A49 00                    2391 	.db #0x00	; 0
      002A4A 20                    2392 	.db #0x20	; 32
      002A4B 20                    2393 	.db #0x20	; 32
      002A4C 3C                    2394 	.db #0x3c	; 60
      002A4D 22                    2395 	.db #0x22	; 34
      002A4E 22                    2396 	.db #0x22	; 34
      002A4F 22                    2397 	.db #0x22	; 34
      002A50 3C                    2398 	.db #0x3c	; 60
      002A51 00                    2399 	.db #0x00	; 0
      002A52 00                    2400 	.db #0x00	; 0
      002A53 00                    2401 	.db #0x00	; 0
      002A54 1C                    2402 	.db #0x1c	; 28
      002A55 22                    2403 	.db #0x22	; 34
      002A56 1E                    2404 	.db #0x1e	; 30
      002A57 02                    2405 	.db #0x02	; 2
      002A58 1C                    2406 	.db #0x1c	; 28
      002A59 00                    2407 	.db #0x00	; 0
      002A5A 18                    2408 	.db #0x18	; 24
      002A5B 04                    2409 	.db #0x04	; 4
      002A5C 04                    2410 	.db #0x04	; 4
      002A5D 1E                    2411 	.db #0x1e	; 30
      002A5E 04                    2412 	.db #0x04	; 4
      002A5F 04                    2413 	.db #0x04	; 4
      002A60 04                    2414 	.db #0x04	; 4
      002A61 00                    2415 	.db #0x00	; 0
      002A62 00                    2416 	.db #0x00	; 0
      002A63 00                    2417 	.db #0x00	; 0
      002A64 3C                    2418 	.db #0x3c	; 60
      002A65 22                    2419 	.db #0x22	; 34
      002A66 22                    2420 	.db #0x22	; 34
      002A67 3C                    2421 	.db #0x3c	; 60
      002A68 20                    2422 	.db #0x20	; 32
      002A69 1C                    2423 	.db #0x1c	; 28
      002A6A 02                    2424 	.db #0x02	; 2
      002A6B 02                    2425 	.db #0x02	; 2
      002A6C 0E                    2426 	.db #0x0e	; 14
      002A6D 12                    2427 	.db #0x12	; 18
      002A6E 12                    2428 	.db #0x12	; 18
      002A6F 12                    2429 	.db #0x12	; 18
      002A70 12                    2430 	.db #0x12	; 18
      002A71 00                    2431 	.db #0x00	; 0
      002A72 08                    2432 	.db #0x08	; 8
      002A73 00                    2433 	.db #0x00	; 0
      002A74 08                    2434 	.db #0x08	; 8
      002A75 08                    2435 	.db #0x08	; 8
      002A76 08                    2436 	.db #0x08	; 8
      002A77 08                    2437 	.db #0x08	; 8
      002A78 18                    2438 	.db #0x18	; 24
      002A79 00                    2439 	.db #0x00	; 0
      002A7A 10                    2440 	.db #0x10	; 16
      002A7B 00                    2441 	.db #0x00	; 0
      002A7C 18                    2442 	.db #0x18	; 24
      002A7D 10                    2443 	.db #0x10	; 16
      002A7E 10                    2444 	.db #0x10	; 16
      002A7F 10                    2445 	.db #0x10	; 16
      002A80 12                    2446 	.db #0x12	; 18
      002A81 0C                    2447 	.db #0x0c	; 12
      002A82 02                    2448 	.db #0x02	; 2
      002A83 02                    2449 	.db #0x02	; 2
      002A84 12                    2450 	.db #0x12	; 18
      002A85 0A                    2451 	.db #0x0a	; 10
      002A86 06                    2452 	.db #0x06	; 6
      002A87 0A                    2453 	.db #0x0a	; 10
      002A88 12                    2454 	.db #0x12	; 18
      002A89 00                    2455 	.db #0x00	; 0
      002A8A 08                    2456 	.db #0x08	; 8
      002A8B 08                    2457 	.db #0x08	; 8
      002A8C 08                    2458 	.db #0x08	; 8
      002A8D 08                    2459 	.db #0x08	; 8
      002A8E 08                    2460 	.db #0x08	; 8
      002A8F 08                    2461 	.db #0x08	; 8
      002A90 18                    2462 	.db #0x18	; 24
      002A91 00                    2463 	.db #0x00	; 0
      002A92 00                    2464 	.db #0x00	; 0
      002A93 00                    2465 	.db #0x00	; 0
      002A94 16                    2466 	.db #0x16	; 22
      002A95 2A                    2467 	.db #0x2a	; 42
      002A96 2A                    2468 	.db #0x2a	; 42
      002A97 22                    2469 	.db #0x22	; 34
      002A98 22                    2470 	.db #0x22	; 34
      002A99 00                    2471 	.db #0x00	; 0
      002A9A 00                    2472 	.db #0x00	; 0
      002A9B 00                    2473 	.db #0x00	; 0
      002A9C 0E                    2474 	.db #0x0e	; 14
      002A9D 12                    2475 	.db #0x12	; 18
      002A9E 12                    2476 	.db #0x12	; 18
      002A9F 12                    2477 	.db #0x12	; 18
      002AA0 12                    2478 	.db #0x12	; 18
      002AA1 00                    2479 	.db #0x00	; 0
      002AA2 00                    2480 	.db #0x00	; 0
      002AA3 00                    2481 	.db #0x00	; 0
      002AA4 1C                    2482 	.db #0x1c	; 28
      002AA5 22                    2483 	.db #0x22	; 34
      002AA6 22                    2484 	.db #0x22	; 34
      002AA7 22                    2485 	.db #0x22	; 34
      002AA8 1C                    2486 	.db #0x1c	; 28
      002AA9 00                    2487 	.db #0x00	; 0
      002AAA 00                    2488 	.db #0x00	; 0
      002AAB 00                    2489 	.db #0x00	; 0
      002AAC 1E                    2490 	.db #0x1e	; 30
      002AAD 22                    2491 	.db #0x22	; 34
      002AAE 22                    2492 	.db #0x22	; 34
      002AAF 22                    2493 	.db #0x22	; 34
      002AB0 1E                    2494 	.db #0x1e	; 30
      002AB1 02                    2495 	.db #0x02	; 2
      002AB2 00                    2496 	.db #0x00	; 0
      002AB3 00                    2497 	.db #0x00	; 0
      002AB4 3C                    2498 	.db #0x3c	; 60
      002AB5 22                    2499 	.db #0x22	; 34
      002AB6 22                    2500 	.db #0x22	; 34
      002AB7 22                    2501 	.db #0x22	; 34
      002AB8 3C                    2502 	.db #0x3c	; 60
      002AB9 20                    2503 	.db #0x20	; 32
      002ABA 00                    2504 	.db #0x00	; 0
      002ABB 00                    2505 	.db #0x00	; 0
      002ABC 1A                    2506 	.db #0x1a	; 26
      002ABD 24                    2507 	.db #0x24	; 36
      002ABE 04                    2508 	.db #0x04	; 4
      002ABF 04                    2509 	.db #0x04	; 4
      002AC0 0E                    2510 	.db #0x0e	; 14
      002AC1 00                    2511 	.db #0x00	; 0
      002AC2 00                    2512 	.db #0x00	; 0
      002AC3 00                    2513 	.db #0x00	; 0
      002AC4 1C                    2514 	.db #0x1c	; 28
      002AC5 02                    2515 	.db #0x02	; 2
      002AC6 1C                    2516 	.db #0x1c	; 28
      002AC7 20                    2517 	.db #0x20	; 32
      002AC8 1C                    2518 	.db #0x1c	; 28
      002AC9 00                    2519 	.db #0x00	; 0
      002ACA 00                    2520 	.db #0x00	; 0
      002ACB 04                    2521 	.db #0x04	; 4
      002ACC 1E                    2522 	.db #0x1e	; 30
      002ACD 04                    2523 	.db #0x04	; 4
      002ACE 04                    2524 	.db #0x04	; 4
      002ACF 14                    2525 	.db #0x14	; 20
      002AD0 08                    2526 	.db #0x08	; 8
      002AD1 00                    2527 	.db #0x00	; 0
      002AD2 00                    2528 	.db #0x00	; 0
      002AD3 00                    2529 	.db #0x00	; 0
      002AD4 12                    2530 	.db #0x12	; 18
      002AD5 12                    2531 	.db #0x12	; 18
      002AD6 12                    2532 	.db #0x12	; 18
      002AD7 1A                    2533 	.db #0x1a	; 26
      002AD8 14                    2534 	.db #0x14	; 20
      002AD9 00                    2535 	.db #0x00	; 0
      002ADA 00                    2536 	.db #0x00	; 0
      002ADB 00                    2537 	.db #0x00	; 0
      002ADC 22                    2538 	.db #0x22	; 34
      002ADD 22                    2539 	.db #0x22	; 34
      002ADE 22                    2540 	.db #0x22	; 34
      002ADF 14                    2541 	.db #0x14	; 20
      002AE0 08                    2542 	.db #0x08	; 8
      002AE1 00                    2543 	.db #0x00	; 0
      002AE2 00                    2544 	.db #0x00	; 0
      002AE3 00                    2545 	.db #0x00	; 0
      002AE4 22                    2546 	.db #0x22	; 34
      002AE5 22                    2547 	.db #0x22	; 34
      002AE6 2A                    2548 	.db #0x2a	; 42
      002AE7 3E                    2549 	.db #0x3e	; 62
      002AE8 14                    2550 	.db #0x14	; 20
      002AE9 00                    2551 	.db #0x00	; 0
      002AEA 00                    2552 	.db #0x00	; 0
      002AEB 00                    2553 	.db #0x00	; 0
      002AEC 12                    2554 	.db #0x12	; 18
      002AED 12                    2555 	.db #0x12	; 18
      002AEE 0C                    2556 	.db #0x0c	; 12
      002AEF 12                    2557 	.db #0x12	; 18
      002AF0 12                    2558 	.db #0x12	; 18
      002AF1 00                    2559 	.db #0x00	; 0
      002AF2 00                    2560 	.db #0x00	; 0
      002AF3 00                    2561 	.db #0x00	; 0
      002AF4 12                    2562 	.db #0x12	; 18
      002AF5 12                    2563 	.db #0x12	; 18
      002AF6 12                    2564 	.db #0x12	; 18
      002AF7 1C                    2565 	.db #0x1c	; 28
      002AF8 08                    2566 	.db #0x08	; 8
      002AF9 06                    2567 	.db #0x06	; 6
      002AFA 00                    2568 	.db #0x00	; 0
      002AFB 00                    2569 	.db #0x00	; 0
      002AFC 1E                    2570 	.db #0x1e	; 30
      002AFD 10                    2571 	.db #0x10	; 16
      002AFE 0C                    2572 	.db #0x0c	; 12
      002AFF 02                    2573 	.db #0x02	; 2
      002B00 1E                    2574 	.db #0x1e	; 30
      002B01 00                    2575 	.db #0x00	; 0
      002B02 18                    2576 	.db #0x18	; 24
      002B03 04                    2577 	.db #0x04	; 4
      002B04 04                    2578 	.db #0x04	; 4
      002B05 06                    2579 	.db #0x06	; 6
      002B06 04                    2580 	.db #0x04	; 4
      002B07 04                    2581 	.db #0x04	; 4
      002B08 18                    2582 	.db #0x18	; 24
      002B09 00                    2583 	.db #0x00	; 0
      002B0A 08                    2584 	.db #0x08	; 8
      002B0B 08                    2585 	.db #0x08	; 8
      002B0C 08                    2586 	.db #0x08	; 8
      002B0D 00                    2587 	.db #0x00	; 0
      002B0E 08                    2588 	.db #0x08	; 8
      002B0F 08                    2589 	.db #0x08	; 8
      002B10 08                    2590 	.db #0x08	; 8
      002B11 00                    2591 	.db #0x00	; 0
      002B12 0C                    2592 	.db #0x0c	; 12
      002B13 10                    2593 	.db #0x10	; 16
      002B14 10                    2594 	.db #0x10	; 16
      002B15 30                    2595 	.db #0x30	; 48	'0'
      002B16 10                    2596 	.db #0x10	; 16
      002B17 10                    2597 	.db #0x10	; 16
      002B18 0C                    2598 	.db #0x0c	; 12
      002B19 00                    2599 	.db #0x00	; 0
      002B1A 14                    2600 	.db #0x14	; 20
      002B1B 0A                    2601 	.db #0x0a	; 10
      002B1C 00                    2602 	.db #0x00	; 0
      002B1D 00                    2603 	.db #0x00	; 0
      002B1E 00                    2604 	.db #0x00	; 0
      002B1F 00                    2605 	.db #0x00	; 0
      002B20 00                    2606 	.db #0x00	; 0
      002B21 00                    2607 	.db #0x00	; 0
      002B22 08                    2608 	.db #0x08	; 8
      002B23 1C                    2609 	.db #0x1c	; 28
      002B24 36                    2610 	.db #0x36	; 54	'6'
      002B25 22                    2611 	.db #0x22	; 34
      002B26 22                    2612 	.db #0x22	; 34
      002B27 3E                    2613 	.db #0x3e	; 62
      002B28 00                    2614 	.db #0x00	; 0
      002B29 00                    2615 	.db #0x00	; 0
      002B2A 1C                    2616 	.db #0x1c	; 28
      002B2B 22                    2617 	.db #0x22	; 34
      002B2C 02                    2618 	.db #0x02	; 2
      002B2D 02                    2619 	.db #0x02	; 2
      002B2E 22                    2620 	.db #0x22	; 34
      002B2F 1C                    2621 	.db #0x1c	; 28
      002B30 08                    2622 	.db #0x08	; 8
      002B31 0C                    2623 	.db #0x0c	; 12
      002B32 12                    2624 	.db #0x12	; 18
      002B33 00                    2625 	.db #0x00	; 0
      002B34 12                    2626 	.db #0x12	; 18
      002B35 12                    2627 	.db #0x12	; 18
      002B36 12                    2628 	.db #0x12	; 18
      002B37 1A                    2629 	.db #0x1a	; 26
      002B38 14                    2630 	.db #0x14	; 20
      002B39 00                    2631 	.db #0x00	; 0
      002B3A 30                    2632 	.db #0x30	; 48	'0'
      002B3B 00                    2633 	.db #0x00	; 0
      002B3C 1C                    2634 	.db #0x1c	; 28
      002B3D 22                    2635 	.db #0x22	; 34
      002B3E 1E                    2636 	.db #0x1e	; 30
      002B3F 02                    2637 	.db #0x02	; 2
      002B40 1C                    2638 	.db #0x1c	; 28
      002B41 00                    2639 	.db #0x00	; 0
      002B42 1C                    2640 	.db #0x1c	; 28
      002B43 00                    2641 	.db #0x00	; 0
      002B44 1C                    2642 	.db #0x1c	; 28
      002B45 20                    2643 	.db #0x20	; 32
      002B46 3C                    2644 	.db #0x3c	; 60
      002B47 22                    2645 	.db #0x22	; 34
      002B48 3C                    2646 	.db #0x3c	; 60
      002B49 00                    2647 	.db #0x00	; 0
      002B4A 14                    2648 	.db #0x14	; 20
      002B4B 00                    2649 	.db #0x00	; 0
      002B4C 1C                    2650 	.db #0x1c	; 28
      002B4D 20                    2651 	.db #0x20	; 32
      002B4E 3C                    2652 	.db #0x3c	; 60
      002B4F 22                    2653 	.db #0x22	; 34
      002B50 3C                    2654 	.db #0x3c	; 60
      002B51 00                    2655 	.db #0x00	; 0
      002B52 0C                    2656 	.db #0x0c	; 12
      002B53 00                    2657 	.db #0x00	; 0
      002B54 1C                    2658 	.db #0x1c	; 28
      002B55 20                    2659 	.db #0x20	; 32
      002B56 3C                    2660 	.db #0x3c	; 60
      002B57 22                    2661 	.db #0x22	; 34
      002B58 3C                    2662 	.db #0x3c	; 60
      002B59 00                    2663 	.db #0x00	; 0
      002B5A 1C                    2664 	.db #0x1c	; 28
      002B5B 14                    2665 	.db #0x14	; 20
      002B5C 1C                    2666 	.db #0x1c	; 28
      002B5D 20                    2667 	.db #0x20	; 32
      002B5E 3C                    2668 	.db #0x3c	; 60
      002B5F 22                    2669 	.db #0x22	; 34
      002B60 3C                    2670 	.db #0x3c	; 60
      002B61 00                    2671 	.db #0x00	; 0
      002B62 00                    2672 	.db #0x00	; 0
      002B63 1C                    2673 	.db #0x1c	; 28
      002B64 22                    2674 	.db #0x22	; 34
      002B65 02                    2675 	.db #0x02	; 2
      002B66 22                    2676 	.db #0x22	; 34
      002B67 1C                    2677 	.db #0x1c	; 28
      002B68 08                    2678 	.db #0x08	; 8
      002B69 0C                    2679 	.db #0x0c	; 12
      002B6A 1C                    2680 	.db #0x1c	; 28
      002B6B 00                    2681 	.db #0x00	; 0
      002B6C 1C                    2682 	.db #0x1c	; 28
      002B6D 22                    2683 	.db #0x22	; 34
      002B6E 1E                    2684 	.db #0x1e	; 30
      002B6F 02                    2685 	.db #0x02	; 2
      002B70 1C                    2686 	.db #0x1c	; 28
      002B71 00                    2687 	.db #0x00	; 0
      002B72 14                    2688 	.db #0x14	; 20
      002B73 00                    2689 	.db #0x00	; 0
      002B74 1C                    2690 	.db #0x1c	; 28
      002B75 22                    2691 	.db #0x22	; 34
      002B76 1E                    2692 	.db #0x1e	; 30
      002B77 02                    2693 	.db #0x02	; 2
      002B78 1C                    2694 	.db #0x1c	; 28
      002B79 00                    2695 	.db #0x00	; 0
      002B7A 0C                    2696 	.db #0x0c	; 12
      002B7B 00                    2697 	.db #0x00	; 0
      002B7C 1C                    2698 	.db #0x1c	; 28
      002B7D 22                    2699 	.db #0x22	; 34
      002B7E 1E                    2700 	.db #0x1e	; 30
      002B7F 02                    2701 	.db #0x02	; 2
      002B80 1C                    2702 	.db #0x1c	; 28
      002B81 00                    2703 	.db #0x00	; 0
      002B82 14                    2704 	.db #0x14	; 20
      002B83 00                    2705 	.db #0x00	; 0
      002B84 08                    2706 	.db #0x08	; 8
      002B85 08                    2707 	.db #0x08	; 8
      002B86 08                    2708 	.db #0x08	; 8
      002B87 08                    2709 	.db #0x08	; 8
      002B88 18                    2710 	.db #0x18	; 24
      002B89 00                    2711 	.db #0x00	; 0
      002B8A 08                    2712 	.db #0x08	; 8
      002B8B 14                    2713 	.db #0x14	; 20
      002B8C 00                    2714 	.db #0x00	; 0
      002B8D 08                    2715 	.db #0x08	; 8
      002B8E 08                    2716 	.db #0x08	; 8
      002B8F 08                    2717 	.db #0x08	; 8
      002B90 18                    2718 	.db #0x18	; 24
      002B91 00                    2719 	.db #0x00	; 0
      002B92 04                    2720 	.db #0x04	; 4
      002B93 00                    2721 	.db #0x00	; 0
      002B94 08                    2722 	.db #0x08	; 8
      002B95 08                    2723 	.db #0x08	; 8
      002B96 08                    2724 	.db #0x08	; 8
      002B97 08                    2725 	.db #0x08	; 8
      002B98 18                    2726 	.db #0x18	; 24
      002B99 00                    2727 	.db #0x00	; 0
      002B9A 14                    2728 	.db #0x14	; 20
      002B9B 00                    2729 	.db #0x00	; 0
      002B9C 08                    2730 	.db #0x08	; 8
      002B9D 14                    2731 	.db #0x14	; 20
      002B9E 22                    2732 	.db #0x22	; 34
      002B9F 3E                    2733 	.db #0x3e	; 62
      002BA0 22                    2734 	.db #0x22	; 34
      002BA1 00                    2735 	.db #0x00	; 0
      002BA2 1C                    2736 	.db #0x1c	; 28
      002BA3 14                    2737 	.db #0x14	; 20
      002BA4 1C                    2738 	.db #0x1c	; 28
      002BA5 36                    2739 	.db #0x36	; 54	'6'
      002BA6 22                    2740 	.db #0x22	; 34
      002BA7 3E                    2741 	.db #0x3e	; 62
      002BA8 22                    2742 	.db #0x22	; 34
      002BA9 00                    2743 	.db #0x00	; 0
      002BAA 30                    2744 	.db #0x30	; 48	'0'
      002BAB 00                    2745 	.db #0x00	; 0
      002BAC 3E                    2746 	.db #0x3e	; 62
      002BAD 02                    2747 	.db #0x02	; 2
      002BAE 1E                    2748 	.db #0x1e	; 30
      002BAF 02                    2749 	.db #0x02	; 2
      002BB0 3E                    2750 	.db #0x3e	; 62
      002BB1 00                    2751 	.db #0x00	; 0
      002BB2 00                    2752 	.db #0x00	; 0
      002BB3 00                    2753 	.db #0x00	; 0
      002BB4 1E                    2754 	.db #0x1e	; 30
      002BB5 28                    2755 	.db #0x28	; 40
      002BB6 3E                    2756 	.db #0x3e	; 62
      002BB7 0A                    2757 	.db #0x0a	; 10
      002BB8 3C                    2758 	.db #0x3c	; 60
      002BB9 00                    2759 	.db #0x00	; 0
      002BBA 3C                    2760 	.db #0x3c	; 60
      002BBB 0A                    2761 	.db #0x0a	; 10
      002BBC 0A                    2762 	.db #0x0a	; 10
      002BBD 3E                    2763 	.db #0x3e	; 62
      002BBE 0A                    2764 	.db #0x0a	; 10
      002BBF 0A                    2765 	.db #0x0a	; 10
      002BC0 3A                    2766 	.db #0x3a	; 58
      002BC1 00                    2767 	.db #0x00	; 0
      002BC2 1C                    2768 	.db #0x1c	; 28
      002BC3 00                    2769 	.db #0x00	; 0
      002BC4 0C                    2770 	.db #0x0c	; 12
      002BC5 12                    2771 	.db #0x12	; 18
      002BC6 12                    2772 	.db #0x12	; 18
      002BC7 12                    2773 	.db #0x12	; 18
      002BC8 0C                    2774 	.db #0x0c	; 12
      002BC9 00                    2775 	.db #0x00	; 0
      002BCA 14                    2776 	.db #0x14	; 20
      002BCB 00                    2777 	.db #0x00	; 0
      002BCC 0C                    2778 	.db #0x0c	; 12
      002BCD 12                    2779 	.db #0x12	; 18
      002BCE 12                    2780 	.db #0x12	; 18
      002BCF 12                    2781 	.db #0x12	; 18
      002BD0 0C                    2782 	.db #0x0c	; 12
      002BD1 00                    2783 	.db #0x00	; 0
      002BD2 06                    2784 	.db #0x06	; 6
      002BD3 00                    2785 	.db #0x00	; 0
      002BD4 0C                    2786 	.db #0x0c	; 12
      002BD5 12                    2787 	.db #0x12	; 18
      002BD6 12                    2788 	.db #0x12	; 18
      002BD7 12                    2789 	.db #0x12	; 18
      002BD8 0C                    2790 	.db #0x0c	; 12
      002BD9 00                    2791 	.db #0x00	; 0
      002BDA 1C                    2792 	.db #0x1c	; 28
      002BDB 00                    2793 	.db #0x00	; 0
      002BDC 12                    2794 	.db #0x12	; 18
      002BDD 12                    2795 	.db #0x12	; 18
      002BDE 12                    2796 	.db #0x12	; 18
      002BDF 1A                    2797 	.db #0x1a	; 26
      002BE0 14                    2798 	.db #0x14	; 20
      002BE1 00                    2799 	.db #0x00	; 0
      002BE2 06                    2800 	.db #0x06	; 6
      002BE3 00                    2801 	.db #0x00	; 0
      002BE4 12                    2802 	.db #0x12	; 18
      002BE5 12                    2803 	.db #0x12	; 18
      002BE6 12                    2804 	.db #0x12	; 18
      002BE7 1A                    2805 	.db #0x1a	; 26
      002BE8 14                    2806 	.db #0x14	; 20
      002BE9 00                    2807 	.db #0x00	; 0
      002BEA 14                    2808 	.db #0x14	; 20
      002BEB 00                    2809 	.db #0x00	; 0
      002BEC 12                    2810 	.db #0x12	; 18
      002BED 12                    2811 	.db #0x12	; 18
      002BEE 12                    2812 	.db #0x12	; 18
      002BEF 1C                    2813 	.db #0x1c	; 28
      002BF0 08                    2814 	.db #0x08	; 8
      002BF1 06                    2815 	.db #0x06	; 6
      002BF2 12                    2816 	.db #0x12	; 18
      002BF3 0C                    2817 	.db #0x0c	; 12
      002BF4 12                    2818 	.db #0x12	; 18
      002BF5 12                    2819 	.db #0x12	; 18
      002BF6 12                    2820 	.db #0x12	; 18
      002BF7 12                    2821 	.db #0x12	; 18
      002BF8 0C                    2822 	.db #0x0c	; 12
      002BF9 00                    2823 	.db #0x00	; 0
      002BFA 14                    2824 	.db #0x14	; 20
      002BFB 00                    2825 	.db #0x00	; 0
      002BFC 12                    2826 	.db #0x12	; 18
      002BFD 12                    2827 	.db #0x12	; 18
      002BFE 12                    2828 	.db #0x12	; 18
      002BFF 12                    2829 	.db #0x12	; 18
      002C00 0C                    2830 	.db #0x0c	; 12
      002C01 00                    2831 	.db #0x00	; 0
      002C02 00                    2832 	.db #0x00	; 0
      002C03 08                    2833 	.db #0x08	; 8
      002C04 1C                    2834 	.db #0x1c	; 28
      002C05 02                    2835 	.db #0x02	; 2
      002C06 02                    2836 	.db #0x02	; 2
      002C07 1C                    2837 	.db #0x1c	; 28
      002C08 08                    2838 	.db #0x08	; 8
      002C09 00                    2839 	.db #0x00	; 0
      002C0A 18                    2840 	.db #0x18	; 24
      002C0B 24                    2841 	.db #0x24	; 36
      002C0C 04                    2842 	.db #0x04	; 4
      002C0D 1E                    2843 	.db #0x1e	; 30
      002C0E 04                    2844 	.db #0x04	; 4
      002C0F 24                    2845 	.db #0x24	; 36
      002C10 3A                    2846 	.db #0x3a	; 58
      002C11 00                    2847 	.db #0x00	; 0
      002C12 22                    2848 	.db #0x22	; 34
      002C13 14                    2849 	.db #0x14	; 20
      002C14 08                    2850 	.db #0x08	; 8
      002C15 3E                    2851 	.db #0x3e	; 62
      002C16 08                    2852 	.db #0x08	; 8
      002C17 3E                    2853 	.db #0x3e	; 62
      002C18 08                    2854 	.db #0x08	; 8
      002C19 00                    2855 	.db #0x00	; 0
      002C1A 06                    2856 	.db #0x06	; 6
      002C1B 0A                    2857 	.db #0x0a	; 10
      002C1C 0A                    2858 	.db #0x0a	; 10
      002C1D 16                    2859 	.db #0x16	; 22
      002C1E 3A                    2860 	.db #0x3a	; 58
      002C1F 12                    2861 	.db #0x12	; 18
      002C20 12                    2862 	.db #0x12	; 18
      002C21 00                    2863 	.db #0x00	; 0
      002C22 10                    2864 	.db #0x10	; 16
      002C23 28                    2865 	.db #0x28	; 40
      002C24 08                    2866 	.db #0x08	; 8
      002C25 1C                    2867 	.db #0x1c	; 28
      002C26 08                    2868 	.db #0x08	; 8
      002C27 08                    2869 	.db #0x08	; 8
      002C28 0A                    2870 	.db #0x0a	; 10
      002C29 04                    2871 	.db #0x04	; 4
      002C2A 18                    2872 	.db #0x18	; 24
      002C2B 00                    2873 	.db #0x00	; 0
      002C2C 1C                    2874 	.db #0x1c	; 28
      002C2D 20                    2875 	.db #0x20	; 32
      002C2E 3C                    2876 	.db #0x3c	; 60
      002C2F 22                    2877 	.db #0x22	; 34
      002C30 3C                    2878 	.db #0x3c	; 60
      002C31 00                    2879 	.db #0x00	; 0
      002C32 18                    2880 	.db #0x18	; 24
      002C33 00                    2881 	.db #0x00	; 0
      002C34 08                    2882 	.db #0x08	; 8
      002C35 08                    2883 	.db #0x08	; 8
      002C36 08                    2884 	.db #0x08	; 8
      002C37 08                    2885 	.db #0x08	; 8
      002C38 18                    2886 	.db #0x18	; 24
      002C39 00                    2887 	.db #0x00	; 0
      002C3A 18                    2888 	.db #0x18	; 24
      002C3B 00                    2889 	.db #0x00	; 0
      002C3C 0C                    2890 	.db #0x0c	; 12
      002C3D 12                    2891 	.db #0x12	; 18
      002C3E 12                    2892 	.db #0x12	; 18
      002C3F 12                    2893 	.db #0x12	; 18
      002C40 0C                    2894 	.db #0x0c	; 12
      002C41 00                    2895 	.db #0x00	; 0
      002C42 18                    2896 	.db #0x18	; 24
      002C43 00                    2897 	.db #0x00	; 0
      002C44 12                    2898 	.db #0x12	; 18
      002C45 12                    2899 	.db #0x12	; 18
      002C46 12                    2900 	.db #0x12	; 18
      002C47 1A                    2901 	.db #0x1a	; 26
      002C48 14                    2902 	.db #0x14	; 20
      002C49 00                    2903 	.db #0x00	; 0
      002C4A 14                    2904 	.db #0x14	; 20
      002C4B 0A                    2905 	.db #0x0a	; 10
      002C4C 00                    2906 	.db #0x00	; 0
      002C4D 0E                    2907 	.db #0x0e	; 14
      002C4E 12                    2908 	.db #0x12	; 18
      002C4F 12                    2909 	.db #0x12	; 18
      002C50 12                    2910 	.db #0x12	; 18
      002C51 00                    2911 	.db #0x00	; 0
      002C52 14                    2912 	.db #0x14	; 20
      002C53 0A                    2913 	.db #0x0a	; 10
      002C54 00                    2914 	.db #0x00	; 0
      002C55 12                    2915 	.db #0x12	; 18
      002C56 16                    2916 	.db #0x16	; 22
      002C57 1A                    2917 	.db #0x1a	; 26
      002C58 12                    2918 	.db #0x12	; 18
      002C59 00                    2919 	.db #0x00	; 0
      002C5A 1C                    2920 	.db #0x1c	; 28
      002C5B 20                    2921 	.db #0x20	; 32
      002C5C 3C                    2922 	.db #0x3c	; 60
      002C5D 22                    2923 	.db #0x22	; 34
      002C5E 3C                    2924 	.db #0x3c	; 60
      002C5F 00                    2925 	.db #0x00	; 0
      002C60 3C                    2926 	.db #0x3c	; 60
      002C61 00                    2927 	.db #0x00	; 0
      002C62 0C                    2928 	.db #0x0c	; 12
      002C63 12                    2929 	.db #0x12	; 18
      002C64 12                    2930 	.db #0x12	; 18
      002C65 12                    2931 	.db #0x12	; 18
      002C66 0C                    2932 	.db #0x0c	; 12
      002C67 00                    2933 	.db #0x00	; 0
      002C68 1E                    2934 	.db #0x1e	; 30
      002C69 00                    2935 	.db #0x00	; 0
      002C6A 08                    2936 	.db #0x08	; 8
      002C6B 00                    2937 	.db #0x00	; 0
      002C6C 08                    2938 	.db #0x08	; 8
      002C6D 0C                    2939 	.db #0x0c	; 12
      002C6E 02                    2940 	.db #0x02	; 2
      002C6F 22                    2941 	.db #0x22	; 34
      002C70 1C                    2942 	.db #0x1c	; 28
      002C71 00                    2943 	.db #0x00	; 0
      002C72 00                    2944 	.db #0x00	; 0
      002C73 00                    2945 	.db #0x00	; 0
      002C74 3E                    2946 	.db #0x3e	; 62
      002C75 02                    2947 	.db #0x02	; 2
      002C76 02                    2948 	.db #0x02	; 2
      002C77 02                    2949 	.db #0x02	; 2
      002C78 00                    2950 	.db #0x00	; 0
      002C79 00                    2951 	.db #0x00	; 0
      002C7A 00                    2952 	.db #0x00	; 0
      002C7B 00                    2953 	.db #0x00	; 0
      002C7C 3F                    2954 	.db #0x3f	; 63
      002C7D 20                    2955 	.db #0x20	; 32
      002C7E 20                    2956 	.db #0x20	; 32
      002C7F 00                    2957 	.db #0x00	; 0
      002C80 00                    2958 	.db #0x00	; 0
      002C81 00                    2959 	.db #0x00	; 0
      002C82 02                    2960 	.db #0x02	; 2
      002C83 12                    2961 	.db #0x12	; 18
      002C84 0A                    2962 	.db #0x0a	; 10
      002C85 1C                    2963 	.db #0x1c	; 28
      002C86 22                    2964 	.db #0x22	; 34
      002C87 10                    2965 	.db #0x10	; 16
      002C88 38                    2966 	.db #0x38	; 56	'8'
      002C89 00                    2967 	.db #0x00	; 0
      002C8A 02                    2968 	.db #0x02	; 2
      002C8B 12                    2969 	.db #0x12	; 18
      002C8C 0A                    2970 	.db #0x0a	; 10
      002C8D 34                    2971 	.db #0x34	; 52	'4'
      002C8E 2A                    2972 	.db #0x2a	; 42
      002C8F 38                    2973 	.db #0x38	; 56	'8'
      002C90 20                    2974 	.db #0x20	; 32
      002C91 00                    2975 	.db #0x00	; 0
      002C92 08                    2976 	.db #0x08	; 8
      002C93 00                    2977 	.db #0x00	; 0
      002C94 08                    2978 	.db #0x08	; 8
      002C95 08                    2979 	.db #0x08	; 8
      002C96 1C                    2980 	.db #0x1c	; 28
      002C97 1C                    2981 	.db #0x1c	; 28
      002C98 08                    2982 	.db #0x08	; 8
      002C99 00                    2983 	.db #0x00	; 0
      002C9A 00                    2984 	.db #0x00	; 0
      002C9B 00                    2985 	.db #0x00	; 0
      002C9C 24                    2986 	.db #0x24	; 36
      002C9D 12                    2987 	.db #0x12	; 18
      002C9E 24                    2988 	.db #0x24	; 36
      002C9F 00                    2989 	.db #0x00	; 0
      002CA0 00                    2990 	.db #0x00	; 0
      002CA1 00                    2991 	.db #0x00	; 0
      002CA2 00                    2992 	.db #0x00	; 0
      002CA3 00                    2993 	.db #0x00	; 0
      002CA4 12                    2994 	.db #0x12	; 18
      002CA5 24                    2995 	.db #0x24	; 36
      002CA6 12                    2996 	.db #0x12	; 18
      002CA7 00                    2997 	.db #0x00	; 0
      002CA8 00                    2998 	.db #0x00	; 0
      002CA9 00                    2999 	.db #0x00	; 0
      002CAA 2A                    3000 	.db #0x2a	; 42
      002CAB 00                    3001 	.db #0x00	; 0
      002CAC 15                    3002 	.db #0x15	; 21
      002CAD 00                    3003 	.db #0x00	; 0
      002CAE 2A                    3004 	.db #0x2a	; 42
      002CAF 00                    3005 	.db #0x00	; 0
      002CB0 15                    3006 	.db #0x15	; 21
      002CB1 00                    3007 	.db #0x00	; 0
      002CB2 2A                    3008 	.db #0x2a	; 42
      002CB3 15                    3009 	.db #0x15	; 21
      002CB4 2A                    3010 	.db #0x2a	; 42
      002CB5 15                    3011 	.db #0x15	; 21
      002CB6 2A                    3012 	.db #0x2a	; 42
      002CB7 15                    3013 	.db #0x15	; 21
      002CB8 2A                    3014 	.db #0x2a	; 42
      002CB9 15                    3015 	.db #0x15	; 21
      002CBA 15                    3016 	.db #0x15	; 21
      002CBB 3F                    3017 	.db #0x3f	; 63
      002CBC 2A                    3018 	.db #0x2a	; 42
      002CBD 3F                    3019 	.db #0x3f	; 63
      002CBE 15                    3020 	.db #0x15	; 21
      002CBF 3F                    3021 	.db #0x3f	; 63
      002CC0 2A                    3022 	.db #0x2a	; 42
      002CC1 3F                    3023 	.db #0x3f	; 63
      002CC2 08                    3024 	.db #0x08	; 8
      002CC3 08                    3025 	.db #0x08	; 8
      002CC4 08                    3026 	.db #0x08	; 8
      002CC5 08                    3027 	.db #0x08	; 8
      002CC6 08                    3028 	.db #0x08	; 8
      002CC7 08                    3029 	.db #0x08	; 8
      002CC8 08                    3030 	.db #0x08	; 8
      002CC9 08                    3031 	.db #0x08	; 8
      002CCA 08                    3032 	.db #0x08	; 8
      002CCB 08                    3033 	.db #0x08	; 8
      002CCC 08                    3034 	.db #0x08	; 8
      002CCD 0F                    3035 	.db #0x0f	; 15
      002CCE 08                    3036 	.db #0x08	; 8
      002CCF 08                    3037 	.db #0x08	; 8
      002CD0 08                    3038 	.db #0x08	; 8
      002CD1 08                    3039 	.db #0x08	; 8
      002CD2 08                    3040 	.db #0x08	; 8
      002CD3 0F                    3041 	.db #0x0f	; 15
      002CD4 08                    3042 	.db #0x08	; 8
      002CD5 0F                    3043 	.db #0x0f	; 15
      002CD6 08                    3044 	.db #0x08	; 8
      002CD7 08                    3045 	.db #0x08	; 8
      002CD8 08                    3046 	.db #0x08	; 8
      002CD9 08                    3047 	.db #0x08	; 8
      002CDA 0A                    3048 	.db #0x0a	; 10
      002CDB 0A                    3049 	.db #0x0a	; 10
      002CDC 0A                    3050 	.db #0x0a	; 10
      002CDD 0B                    3051 	.db #0x0b	; 11
      002CDE 0A                    3052 	.db #0x0a	; 10
      002CDF 0A                    3053 	.db #0x0a	; 10
      002CE0 0A                    3054 	.db #0x0a	; 10
      002CE1 0A                    3055 	.db #0x0a	; 10
      002CE2 00                    3056 	.db #0x00	; 0
      002CE3 00                    3057 	.db #0x00	; 0
      002CE4 00                    3058 	.db #0x00	; 0
      002CE5 0F                    3059 	.db #0x0f	; 15
      002CE6 0A                    3060 	.db #0x0a	; 10
      002CE7 0A                    3061 	.db #0x0a	; 10
      002CE8 0A                    3062 	.db #0x0a	; 10
      002CE9 0A                    3063 	.db #0x0a	; 10
      002CEA 00                    3064 	.db #0x00	; 0
      002CEB 0F                    3065 	.db #0x0f	; 15
      002CEC 08                    3066 	.db #0x08	; 8
      002CED 0F                    3067 	.db #0x0f	; 15
      002CEE 08                    3068 	.db #0x08	; 8
      002CEF 08                    3069 	.db #0x08	; 8
      002CF0 08                    3070 	.db #0x08	; 8
      002CF1 08                    3071 	.db #0x08	; 8
      002CF2 0A                    3072 	.db #0x0a	; 10
      002CF3 0B                    3073 	.db #0x0b	; 11
      002CF4 08                    3074 	.db #0x08	; 8
      002CF5 0B                    3075 	.db #0x0b	; 11
      002CF6 0A                    3076 	.db #0x0a	; 10
      002CF7 0A                    3077 	.db #0x0a	; 10
      002CF8 0A                    3078 	.db #0x0a	; 10
      002CF9 0A                    3079 	.db #0x0a	; 10
      002CFA 0A                    3080 	.db #0x0a	; 10
      002CFB 0A                    3081 	.db #0x0a	; 10
      002CFC 0A                    3082 	.db #0x0a	; 10
      002CFD 0A                    3083 	.db #0x0a	; 10
      002CFE 0A                    3084 	.db #0x0a	; 10
      002CFF 0A                    3085 	.db #0x0a	; 10
      002D00 0A                    3086 	.db #0x0a	; 10
      002D01 0A                    3087 	.db #0x0a	; 10
      002D02 00                    3088 	.db #0x00	; 0
      002D03 0F                    3089 	.db #0x0f	; 15
      002D04 08                    3090 	.db #0x08	; 8
      002D05 0B                    3091 	.db #0x0b	; 11
      002D06 0A                    3092 	.db #0x0a	; 10
      002D07 0A                    3093 	.db #0x0a	; 10
      002D08 0A                    3094 	.db #0x0a	; 10
      002D09 0A                    3095 	.db #0x0a	; 10
      002D0A 0A                    3096 	.db #0x0a	; 10
      002D0B 0B                    3097 	.db #0x0b	; 11
      002D0C 08                    3098 	.db #0x08	; 8
      002D0D 0F                    3099 	.db #0x0f	; 15
      002D0E 00                    3100 	.db #0x00	; 0
      002D0F 00                    3101 	.db #0x00	; 0
      002D10 00                    3102 	.db #0x00	; 0
      002D11 00                    3103 	.db #0x00	; 0
      002D12 0A                    3104 	.db #0x0a	; 10
      002D13 0A                    3105 	.db #0x0a	; 10
      002D14 0A                    3106 	.db #0x0a	; 10
      002D15 0F                    3107 	.db #0x0f	; 15
      002D16 00                    3108 	.db #0x00	; 0
      002D17 00                    3109 	.db #0x00	; 0
      002D18 00                    3110 	.db #0x00	; 0
      002D19 00                    3111 	.db #0x00	; 0
      002D1A 08                    3112 	.db #0x08	; 8
      002D1B 0F                    3113 	.db #0x0f	; 15
      002D1C 08                    3114 	.db #0x08	; 8
      002D1D 0F                    3115 	.db #0x0f	; 15
      002D1E 00                    3116 	.db #0x00	; 0
      002D1F 00                    3117 	.db #0x00	; 0
      002D20 00                    3118 	.db #0x00	; 0
      002D21 00                    3119 	.db #0x00	; 0
      002D22 00                    3120 	.db #0x00	; 0
      002D23 00                    3121 	.db #0x00	; 0
      002D24 00                    3122 	.db #0x00	; 0
      002D25 0F                    3123 	.db #0x0f	; 15
      002D26 08                    3124 	.db #0x08	; 8
      002D27 08                    3125 	.db #0x08	; 8
      002D28 08                    3126 	.db #0x08	; 8
      002D29 08                    3127 	.db #0x08	; 8
      002D2A 08                    3128 	.db #0x08	; 8
      002D2B 08                    3129 	.db #0x08	; 8
      002D2C 08                    3130 	.db #0x08	; 8
      002D2D 38                    3131 	.db #0x38	; 56	'8'
      002D2E 00                    3132 	.db #0x00	; 0
      002D2F 00                    3133 	.db #0x00	; 0
      002D30 00                    3134 	.db #0x00	; 0
      002D31 00                    3135 	.db #0x00	; 0
      002D32 08                    3136 	.db #0x08	; 8
      002D33 08                    3137 	.db #0x08	; 8
      002D34 08                    3138 	.db #0x08	; 8
      002D35 3F                    3139 	.db #0x3f	; 63
      002D36 00                    3140 	.db #0x00	; 0
      002D37 00                    3141 	.db #0x00	; 0
      002D38 00                    3142 	.db #0x00	; 0
      002D39 00                    3143 	.db #0x00	; 0
      002D3A 00                    3144 	.db #0x00	; 0
      002D3B 00                    3145 	.db #0x00	; 0
      002D3C 00                    3146 	.db #0x00	; 0
      002D3D 3F                    3147 	.db #0x3f	; 63
      002D3E 08                    3148 	.db #0x08	; 8
      002D3F 08                    3149 	.db #0x08	; 8
      002D40 08                    3150 	.db #0x08	; 8
      002D41 08                    3151 	.db #0x08	; 8
      002D42 08                    3152 	.db #0x08	; 8
      002D43 08                    3153 	.db #0x08	; 8
      002D44 08                    3154 	.db #0x08	; 8
      002D45 38                    3155 	.db #0x38	; 56	'8'
      002D46 08                    3156 	.db #0x08	; 8
      002D47 08                    3157 	.db #0x08	; 8
      002D48 08                    3158 	.db #0x08	; 8
      002D49 08                    3159 	.db #0x08	; 8
      002D4A 00                    3160 	.db #0x00	; 0
      002D4B 00                    3161 	.db #0x00	; 0
      002D4C 00                    3162 	.db #0x00	; 0
      002D4D 3F                    3163 	.db #0x3f	; 63
      002D4E 00                    3164 	.db #0x00	; 0
      002D4F 00                    3165 	.db #0x00	; 0
      002D50 00                    3166 	.db #0x00	; 0
      002D51 00                    3167 	.db #0x00	; 0
      002D52 08                    3168 	.db #0x08	; 8
      002D53 08                    3169 	.db #0x08	; 8
      002D54 08                    3170 	.db #0x08	; 8
      002D55 3F                    3171 	.db #0x3f	; 63
      002D56 08                    3172 	.db #0x08	; 8
      002D57 08                    3173 	.db #0x08	; 8
      002D58 08                    3174 	.db #0x08	; 8
      002D59 08                    3175 	.db #0x08	; 8
      002D5A 08                    3176 	.db #0x08	; 8
      002D5B 38                    3177 	.db #0x38	; 56	'8'
      002D5C 08                    3178 	.db #0x08	; 8
      002D5D 38                    3179 	.db #0x38	; 56	'8'
      002D5E 08                    3180 	.db #0x08	; 8
      002D5F 08                    3181 	.db #0x08	; 8
      002D60 08                    3182 	.db #0x08	; 8
      002D61 08                    3183 	.db #0x08	; 8
      002D62 0A                    3184 	.db #0x0a	; 10
      002D63 0A                    3185 	.db #0x0a	; 10
      002D64 0A                    3186 	.db #0x0a	; 10
      002D65 3A                    3187 	.db #0x3a	; 58
      002D66 0A                    3188 	.db #0x0a	; 10
      002D67 0A                    3189 	.db #0x0a	; 10
      002D68 0A                    3190 	.db #0x0a	; 10
      002D69 0A                    3191 	.db #0x0a	; 10
      002D6A 0A                    3192 	.db #0x0a	; 10
      002D6B 3A                    3193 	.db #0x3a	; 58
      002D6C 02                    3194 	.db #0x02	; 2
      002D6D 3E                    3195 	.db #0x3e	; 62
      002D6E 00                    3196 	.db #0x00	; 0
      002D6F 00                    3197 	.db #0x00	; 0
      002D70 00                    3198 	.db #0x00	; 0
      002D71 00                    3199 	.db #0x00	; 0
      002D72 00                    3200 	.db #0x00	; 0
      002D73 3E                    3201 	.db #0x3e	; 62
      002D74 02                    3202 	.db #0x02	; 2
      002D75 3A                    3203 	.db #0x3a	; 58
      002D76 0A                    3204 	.db #0x0a	; 10
      002D77 0A                    3205 	.db #0x0a	; 10
      002D78 0A                    3206 	.db #0x0a	; 10
      002D79 0A                    3207 	.db #0x0a	; 10
      002D7A 0A                    3208 	.db #0x0a	; 10
      002D7B 3B                    3209 	.db #0x3b	; 59
      002D7C 00                    3210 	.db #0x00	; 0
      002D7D 3F                    3211 	.db #0x3f	; 63
      002D7E 00                    3212 	.db #0x00	; 0
      002D7F 00                    3213 	.db #0x00	; 0
      002D80 00                    3214 	.db #0x00	; 0
      002D81 00                    3215 	.db #0x00	; 0
      002D82 00                    3216 	.db #0x00	; 0
      002D83 3F                    3217 	.db #0x3f	; 63
      002D84 00                    3218 	.db #0x00	; 0
      002D85 3B                    3219 	.db #0x3b	; 59
      002D86 0A                    3220 	.db #0x0a	; 10
      002D87 0A                    3221 	.db #0x0a	; 10
      002D88 0A                    3222 	.db #0x0a	; 10
      002D89 0A                    3223 	.db #0x0a	; 10
      002D8A 0A                    3224 	.db #0x0a	; 10
      002D8B 3A                    3225 	.db #0x3a	; 58
      002D8C 02                    3226 	.db #0x02	; 2
      002D8D 3A                    3227 	.db #0x3a	; 58
      002D8E 0A                    3228 	.db #0x0a	; 10
      002D8F 0A                    3229 	.db #0x0a	; 10
      002D90 0A                    3230 	.db #0x0a	; 10
      002D91 0A                    3231 	.db #0x0a	; 10
      002D92 00                    3232 	.db #0x00	; 0
      002D93 3F                    3233 	.db #0x3f	; 63
      002D94 00                    3234 	.db #0x00	; 0
      002D95 3F                    3235 	.db #0x3f	; 63
      002D96 00                    3236 	.db #0x00	; 0
      002D97 00                    3237 	.db #0x00	; 0
      002D98 00                    3238 	.db #0x00	; 0
      002D99 00                    3239 	.db #0x00	; 0
      002D9A 0A                    3240 	.db #0x0a	; 10
      002D9B 3B                    3241 	.db #0x3b	; 59
      002D9C 00                    3242 	.db #0x00	; 0
      002D9D 3B                    3243 	.db #0x3b	; 59
      002D9E 0A                    3244 	.db #0x0a	; 10
      002D9F 0A                    3245 	.db #0x0a	; 10
      002DA0 0A                    3246 	.db #0x0a	; 10
      002DA1 0A                    3247 	.db #0x0a	; 10
      002DA2 08                    3248 	.db #0x08	; 8
      002DA3 3F                    3249 	.db #0x3f	; 63
      002DA4 00                    3250 	.db #0x00	; 0
      002DA5 3F                    3251 	.db #0x3f	; 63
      002DA6 00                    3252 	.db #0x00	; 0
      002DA7 00                    3253 	.db #0x00	; 0
      002DA8 00                    3254 	.db #0x00	; 0
      002DA9 00                    3255 	.db #0x00	; 0
      002DAA 0A                    3256 	.db #0x0a	; 10
      002DAB 0A                    3257 	.db #0x0a	; 10
      002DAC 0A                    3258 	.db #0x0a	; 10
      002DAD 3F                    3259 	.db #0x3f	; 63
      002DAE 00                    3260 	.db #0x00	; 0
      002DAF 00                    3261 	.db #0x00	; 0
      002DB0 00                    3262 	.db #0x00	; 0
      002DB1 00                    3263 	.db #0x00	; 0
      002DB2 00                    3264 	.db #0x00	; 0
      002DB3 3F                    3265 	.db #0x3f	; 63
      002DB4 00                    3266 	.db #0x00	; 0
      002DB5 3F                    3267 	.db #0x3f	; 63
      002DB6 08                    3268 	.db #0x08	; 8
      002DB7 08                    3269 	.db #0x08	; 8
      002DB8 08                    3270 	.db #0x08	; 8
      002DB9 08                    3271 	.db #0x08	; 8
      002DBA 00                    3272 	.db #0x00	; 0
      002DBB 00                    3273 	.db #0x00	; 0
      002DBC 00                    3274 	.db #0x00	; 0
      002DBD 3F                    3275 	.db #0x3f	; 63
      002DBE 0A                    3276 	.db #0x0a	; 10
      002DBF 0A                    3277 	.db #0x0a	; 10
      002DC0 0A                    3278 	.db #0x0a	; 10
      002DC1 0A                    3279 	.db #0x0a	; 10
      002DC2 0A                    3280 	.db #0x0a	; 10
      002DC3 0A                    3281 	.db #0x0a	; 10
      002DC4 0A                    3282 	.db #0x0a	; 10
      002DC5 3E                    3283 	.db #0x3e	; 62
      002DC6 00                    3284 	.db #0x00	; 0
      002DC7 00                    3285 	.db #0x00	; 0
      002DC8 00                    3286 	.db #0x00	; 0
      002DC9 00                    3287 	.db #0x00	; 0
      002DCA 08                    3288 	.db #0x08	; 8
      002DCB 38                    3289 	.db #0x38	; 56	'8'
      002DCC 08                    3290 	.db #0x08	; 8
      002DCD 38                    3291 	.db #0x38	; 56	'8'
      002DCE 00                    3292 	.db #0x00	; 0
      002DCF 00                    3293 	.db #0x00	; 0
      002DD0 00                    3294 	.db #0x00	; 0
      002DD1 00                    3295 	.db #0x00	; 0
      002DD2 00                    3296 	.db #0x00	; 0
      002DD3 38                    3297 	.db #0x38	; 56	'8'
      002DD4 08                    3298 	.db #0x08	; 8
      002DD5 38                    3299 	.db #0x38	; 56	'8'
      002DD6 08                    3300 	.db #0x08	; 8
      002DD7 08                    3301 	.db #0x08	; 8
      002DD8 08                    3302 	.db #0x08	; 8
      002DD9 08                    3303 	.db #0x08	; 8
      002DDA 00                    3304 	.db #0x00	; 0
      002DDB 00                    3305 	.db #0x00	; 0
      002DDC 00                    3306 	.db #0x00	; 0
      002DDD 3E                    3307 	.db #0x3e	; 62
      002DDE 0A                    3308 	.db #0x0a	; 10
      002DDF 0A                    3309 	.db #0x0a	; 10
      002DE0 0A                    3310 	.db #0x0a	; 10
      002DE1 0A                    3311 	.db #0x0a	; 10
      002DE2 0A                    3312 	.db #0x0a	; 10
      002DE3 0A                    3313 	.db #0x0a	; 10
      002DE4 0A                    3314 	.db #0x0a	; 10
      002DE5 3B                    3315 	.db #0x3b	; 59
      002DE6 0A                    3316 	.db #0x0a	; 10
      002DE7 0A                    3317 	.db #0x0a	; 10
      002DE8 0A                    3318 	.db #0x0a	; 10
      002DE9 0A                    3319 	.db #0x0a	; 10
      002DEA 08                    3320 	.db #0x08	; 8
      002DEB 3F                    3321 	.db #0x3f	; 63
      002DEC 00                    3322 	.db #0x00	; 0
      002DED 3F                    3323 	.db #0x3f	; 63
      002DEE 08                    3324 	.db #0x08	; 8
      002DEF 08                    3325 	.db #0x08	; 8
      002DF0 08                    3326 	.db #0x08	; 8
      002DF1 08                    3327 	.db #0x08	; 8
      002DF2 08                    3328 	.db #0x08	; 8
      002DF3 08                    3329 	.db #0x08	; 8
      002DF4 08                    3330 	.db #0x08	; 8
      002DF5 0F                    3331 	.db #0x0f	; 15
      002DF6 00                    3332 	.db #0x00	; 0
      002DF7 00                    3333 	.db #0x00	; 0
      002DF8 00                    3334 	.db #0x00	; 0
      002DF9 00                    3335 	.db #0x00	; 0
      002DFA 00                    3336 	.db #0x00	; 0
      002DFB 00                    3337 	.db #0x00	; 0
      002DFC 00                    3338 	.db #0x00	; 0
      002DFD 38                    3339 	.db #0x38	; 56	'8'
      002DFE 08                    3340 	.db #0x08	; 8
      002DFF 08                    3341 	.db #0x08	; 8
      002E00 08                    3342 	.db #0x08	; 8
      002E01 08                    3343 	.db #0x08	; 8
      002E02 3F                    3344 	.db #0x3f	; 63
      002E03 3F                    3345 	.db #0x3f	; 63
      002E04 3F                    3346 	.db #0x3f	; 63
      002E05 3F                    3347 	.db #0x3f	; 63
      002E06 3F                    3348 	.db #0x3f	; 63
      002E07 3F                    3349 	.db #0x3f	; 63
      002E08 3F                    3350 	.db #0x3f	; 63
      002E09 3F                    3351 	.db #0x3f	; 63
      002E0A 00                    3352 	.db #0x00	; 0
      002E0B 00                    3353 	.db #0x00	; 0
      002E0C 00                    3354 	.db #0x00	; 0
      002E0D 00                    3355 	.db #0x00	; 0
      002E0E 3F                    3356 	.db #0x3f	; 63
      002E0F 3F                    3357 	.db #0x3f	; 63
      002E10 3F                    3358 	.db #0x3f	; 63
      002E11 3F                    3359 	.db #0x3f	; 63
      002E12 07                    3360 	.db #0x07	; 7
      002E13 07                    3361 	.db #0x07	; 7
      002E14 07                    3362 	.db #0x07	; 7
      002E15 07                    3363 	.db #0x07	; 7
      002E16 07                    3364 	.db #0x07	; 7
      002E17 07                    3365 	.db #0x07	; 7
      002E18 07                    3366 	.db #0x07	; 7
      002E19 07                    3367 	.db #0x07	; 7
      002E1A 38                    3368 	.db #0x38	; 56	'8'
      002E1B 38                    3369 	.db #0x38	; 56	'8'
      002E1C 38                    3370 	.db #0x38	; 56	'8'
      002E1D 38                    3371 	.db #0x38	; 56	'8'
      002E1E 38                    3372 	.db #0x38	; 56	'8'
      002E1F 38                    3373 	.db #0x38	; 56	'8'
      002E20 38                    3374 	.db #0x38	; 56	'8'
      002E21 38                    3375 	.db #0x38	; 56	'8'
      002E22 3F                    3376 	.db #0x3f	; 63
      002E23 3F                    3377 	.db #0x3f	; 63
      002E24 3F                    3378 	.db #0x3f	; 63
      002E25 3F                    3379 	.db #0x3f	; 63
      002E26 00                    3380 	.db #0x00	; 0
      002E27 00                    3381 	.db #0x00	; 0
      002E28 00                    3382 	.db #0x00	; 0
      002E29 00                    3383 	.db #0x00	; 0
      002E2A 00                    3384 	.db #0x00	; 0
      002E2B 00                    3385 	.db #0x00	; 0
      002E2C 2C                    3386 	.db #0x2c	; 44
      002E2D 12                    3387 	.db #0x12	; 18
      002E2E 12                    3388 	.db #0x12	; 18
      002E2F 2C                    3389 	.db #0x2c	; 44
      002E30 00                    3390 	.db #0x00	; 0
      002E31 00                    3391 	.db #0x00	; 0
      002E32 00                    3392 	.db #0x00	; 0
      002E33 0E                    3393 	.db #0x0e	; 14
      002E34 12                    3394 	.db #0x12	; 18
      002E35 0E                    3395 	.db #0x0e	; 14
      002E36 12                    3396 	.db #0x12	; 18
      002E37 12                    3397 	.db #0x12	; 18
      002E38 0E                    3398 	.db #0x0e	; 14
      002E39 02                    3399 	.db #0x02	; 2
      002E3A 1E                    3400 	.db #0x1e	; 30
      002E3B 12                    3401 	.db #0x12	; 18
      002E3C 02                    3402 	.db #0x02	; 2
      002E3D 02                    3403 	.db #0x02	; 2
      002E3E 02                    3404 	.db #0x02	; 2
      002E3F 02                    3405 	.db #0x02	; 2
      002E40 02                    3406 	.db #0x02	; 2
      002E41 00                    3407 	.db #0x00	; 0
      002E42 00                    3408 	.db #0x00	; 0
      002E43 3E                    3409 	.db #0x3e	; 62
      002E44 14                    3410 	.db #0x14	; 20
      002E45 14                    3411 	.db #0x14	; 20
      002E46 14                    3412 	.db #0x14	; 20
      002E47 14                    3413 	.db #0x14	; 20
      002E48 14                    3414 	.db #0x14	; 20
      002E49 00                    3415 	.db #0x00	; 0
      002E4A 1E                    3416 	.db #0x1e	; 30
      002E4B 12                    3417 	.db #0x12	; 18
      002E4C 04                    3418 	.db #0x04	; 4
      002E4D 08                    3419 	.db #0x08	; 8
      002E4E 04                    3420 	.db #0x04	; 4
      002E4F 12                    3421 	.db #0x12	; 18
      002E50 1E                    3422 	.db #0x1e	; 30
      002E51 00                    3423 	.db #0x00	; 0
      002E52 00                    3424 	.db #0x00	; 0
      002E53 00                    3425 	.db #0x00	; 0
      002E54 3C                    3426 	.db #0x3c	; 60
      002E55 12                    3427 	.db #0x12	; 18
      002E56 12                    3428 	.db #0x12	; 18
      002E57 0C                    3429 	.db #0x0c	; 12
      002E58 00                    3430 	.db #0x00	; 0
      002E59 00                    3431 	.db #0x00	; 0
      002E5A 00                    3432 	.db #0x00	; 0
      002E5B 00                    3433 	.db #0x00	; 0
      002E5C 12                    3434 	.db #0x12	; 18
      002E5D 12                    3435 	.db #0x12	; 18
      002E5E 12                    3436 	.db #0x12	; 18
      002E5F 0E                    3437 	.db #0x0e	; 14
      002E60 02                    3438 	.db #0x02	; 2
      002E61 02                    3439 	.db #0x02	; 2
      002E62 00                    3440 	.db #0x00	; 0
      002E63 00                    3441 	.db #0x00	; 0
      002E64 14                    3442 	.db #0x14	; 20
      002E65 0A                    3443 	.db #0x0a	; 10
      002E66 08                    3444 	.db #0x08	; 8
      002E67 08                    3445 	.db #0x08	; 8
      002E68 08                    3446 	.db #0x08	; 8
      002E69 00                    3447 	.db #0x00	; 0
      002E6A 1C                    3448 	.db #0x1c	; 28
      002E6B 08                    3449 	.db #0x08	; 8
      002E6C 1C                    3450 	.db #0x1c	; 28
      002E6D 22                    3451 	.db #0x22	; 34
      002E6E 1C                    3452 	.db #0x1c	; 28
      002E6F 08                    3453 	.db #0x08	; 8
      002E70 1C                    3454 	.db #0x1c	; 28
      002E71 00                    3455 	.db #0x00	; 0
      002E72 0C                    3456 	.db #0x0c	; 12
      002E73 12                    3457 	.db #0x12	; 18
      002E74 12                    3458 	.db #0x12	; 18
      002E75 1E                    3459 	.db #0x1e	; 30
      002E76 12                    3460 	.db #0x12	; 18
      002E77 12                    3461 	.db #0x12	; 18
      002E78 0C                    3462 	.db #0x0c	; 12
      002E79 00                    3463 	.db #0x00	; 0
      002E7A 00                    3464 	.db #0x00	; 0
      002E7B 1C                    3465 	.db #0x1c	; 28
      002E7C 22                    3466 	.db #0x22	; 34
      002E7D 22                    3467 	.db #0x22	; 34
      002E7E 14                    3468 	.db #0x14	; 20
      002E7F 14                    3469 	.db #0x14	; 20
      002E80 36                    3470 	.db #0x36	; 54	'6'
      002E81 00                    3471 	.db #0x00	; 0
      002E82 0C                    3472 	.db #0x0c	; 12
      002E83 02                    3473 	.db #0x02	; 2
      002E84 04                    3474 	.db #0x04	; 4
      002E85 08                    3475 	.db #0x08	; 8
      002E86 1C                    3476 	.db #0x1c	; 28
      002E87 12                    3477 	.db #0x12	; 18
      002E88 0C                    3478 	.db #0x0c	; 12
      002E89 00                    3479 	.db #0x00	; 0
      002E8A 00                    3480 	.db #0x00	; 0
      002E8B 00                    3481 	.db #0x00	; 0
      002E8C 14                    3482 	.db #0x14	; 20
      002E8D 2A                    3483 	.db #0x2a	; 42
      002E8E 2A                    3484 	.db #0x2a	; 42
      002E8F 14                    3485 	.db #0x14	; 20
      002E90 00                    3486 	.db #0x00	; 0
      002E91 00                    3487 	.db #0x00	; 0
      002E92 00                    3488 	.db #0x00	; 0
      002E93 08                    3489 	.db #0x08	; 8
      002E94 1C                    3490 	.db #0x1c	; 28
      002E95 2A                    3491 	.db #0x2a	; 42
      002E96 2A                    3492 	.db #0x2a	; 42
      002E97 1C                    3493 	.db #0x1c	; 28
      002E98 08                    3494 	.db #0x08	; 8
      002E99 00                    3495 	.db #0x00	; 0
      002E9A 00                    3496 	.db #0x00	; 0
      002E9B 1C                    3497 	.db #0x1c	; 28
      002E9C 02                    3498 	.db #0x02	; 2
      002E9D 1E                    3499 	.db #0x1e	; 30
      002E9E 02                    3500 	.db #0x02	; 2
      002E9F 1C                    3501 	.db #0x1c	; 28
      002EA0 00                    3502 	.db #0x00	; 0
      002EA1 00                    3503 	.db #0x00	; 0
      002EA2 00                    3504 	.db #0x00	; 0
      002EA3 0C                    3505 	.db #0x0c	; 12
      002EA4 12                    3506 	.db #0x12	; 18
      002EA5 12                    3507 	.db #0x12	; 18
      002EA6 12                    3508 	.db #0x12	; 18
      002EA7 12                    3509 	.db #0x12	; 18
      002EA8 00                    3510 	.db #0x00	; 0
      002EA9 00                    3511 	.db #0x00	; 0
      002EAA 00                    3512 	.db #0x00	; 0
      002EAB 1E                    3513 	.db #0x1e	; 30
      002EAC 00                    3514 	.db #0x00	; 0
      002EAD 1E                    3515 	.db #0x1e	; 30
      002EAE 00                    3516 	.db #0x00	; 0
      002EAF 1E                    3517 	.db #0x1e	; 30
      002EB0 00                    3518 	.db #0x00	; 0
      002EB1 00                    3519 	.db #0x00	; 0
      002EB2 00                    3520 	.db #0x00	; 0
      002EB3 08                    3521 	.db #0x08	; 8
      002EB4 1C                    3522 	.db #0x1c	; 28
      002EB5 08                    3523 	.db #0x08	; 8
      002EB6 00                    3524 	.db #0x00	; 0
      002EB7 1C                    3525 	.db #0x1c	; 28
      002EB8 00                    3526 	.db #0x00	; 0
      002EB9 00                    3527 	.db #0x00	; 0
      002EBA 02                    3528 	.db #0x02	; 2
      002EBB 0C                    3529 	.db #0x0c	; 12
      002EBC 10                    3530 	.db #0x10	; 16
      002EBD 0C                    3531 	.db #0x0c	; 12
      002EBE 02                    3532 	.db #0x02	; 2
      002EBF 00                    3533 	.db #0x00	; 0
      002EC0 1E                    3534 	.db #0x1e	; 30
      002EC1 00                    3535 	.db #0x00	; 0
      002EC2 10                    3536 	.db #0x10	; 16
      002EC3 0C                    3537 	.db #0x0c	; 12
      002EC4 02                    3538 	.db #0x02	; 2
      002EC5 0C                    3539 	.db #0x0c	; 12
      002EC6 10                    3540 	.db #0x10	; 16
      002EC7 00                    3541 	.db #0x00	; 0
      002EC8 1E                    3542 	.db #0x1e	; 30
      002EC9 00                    3543 	.db #0x00	; 0
      002ECA 00                    3544 	.db #0x00	; 0
      002ECB 10                    3545 	.db #0x10	; 16
      002ECC 28                    3546 	.db #0x28	; 40
      002ECD 08                    3547 	.db #0x08	; 8
      002ECE 08                    3548 	.db #0x08	; 8
      002ECF 08                    3549 	.db #0x08	; 8
      002ED0 08                    3550 	.db #0x08	; 8
      002ED1 08                    3551 	.db #0x08	; 8
      002ED2 08                    3552 	.db #0x08	; 8
      002ED3 08                    3553 	.db #0x08	; 8
      002ED4 08                    3554 	.db #0x08	; 8
      002ED5 08                    3555 	.db #0x08	; 8
      002ED6 08                    3556 	.db #0x08	; 8
      002ED7 0A                    3557 	.db #0x0a	; 10
      002ED8 04                    3558 	.db #0x04	; 4
      002ED9 00                    3559 	.db #0x00	; 0
      002EDA 00                    3560 	.db #0x00	; 0
      002EDB 08                    3561 	.db #0x08	; 8
      002EDC 00                    3562 	.db #0x00	; 0
      002EDD 3E                    3563 	.db #0x3e	; 62
      002EDE 00                    3564 	.db #0x00	; 0
      002EDF 08                    3565 	.db #0x08	; 8
      002EE0 00                    3566 	.db #0x00	; 0
      002EE1 00                    3567 	.db #0x00	; 0
      002EE2 00                    3568 	.db #0x00	; 0
      002EE3 14                    3569 	.db #0x14	; 20
      002EE4 0A                    3570 	.db #0x0a	; 10
      002EE5 00                    3571 	.db #0x00	; 0
      002EE6 14                    3572 	.db #0x14	; 20
      002EE7 0A                    3573 	.db #0x0a	; 10
      002EE8 00                    3574 	.db #0x00	; 0
      002EE9 00                    3575 	.db #0x00	; 0
      002EEA 0C                    3576 	.db #0x0c	; 12
      002EEB 12                    3577 	.db #0x12	; 18
      002EEC 12                    3578 	.db #0x12	; 18
      002EED 0C                    3579 	.db #0x0c	; 12
      002EEE 00                    3580 	.db #0x00	; 0
      002EEF 00                    3581 	.db #0x00	; 0
      002EF0 00                    3582 	.db #0x00	; 0
      002EF1 00                    3583 	.db #0x00	; 0
      002EF2 00                    3584 	.db #0x00	; 0
      002EF3 00                    3585 	.db #0x00	; 0
      002EF4 00                    3586 	.db #0x00	; 0
      002EF5 0C                    3587 	.db #0x0c	; 12
      002EF6 0C                    3588 	.db #0x0c	; 12
      002EF7 00                    3589 	.db #0x00	; 0
      002EF8 00                    3590 	.db #0x00	; 0
      002EF9 00                    3591 	.db #0x00	; 0
      002EFA 00                    3592 	.db #0x00	; 0
      002EFB 00                    3593 	.db #0x00	; 0
      002EFC 00                    3594 	.db #0x00	; 0
      002EFD 04                    3595 	.db #0x04	; 4
      002EFE 00                    3596 	.db #0x00	; 0
      002EFF 00                    3597 	.db #0x00	; 0
      002F00 00                    3598 	.db #0x00	; 0
      002F01 00                    3599 	.db #0x00	; 0
      002F02 00                    3600 	.db #0x00	; 0
      002F03 38                    3601 	.db #0x38	; 56	'8'
      002F04 08                    3602 	.db #0x08	; 8
      002F05 08                    3603 	.db #0x08	; 8
      002F06 0A                    3604 	.db #0x0a	; 10
      002F07 0A                    3605 	.db #0x0a	; 10
      002F08 04                    3606 	.db #0x04	; 4
      002F09 00                    3607 	.db #0x00	; 0
      002F0A 0A                    3608 	.db #0x0a	; 10
      002F0B 14                    3609 	.db #0x14	; 20
      002F0C 14                    3610 	.db #0x14	; 20
      002F0D 14                    3611 	.db #0x14	; 20
      002F0E 00                    3612 	.db #0x00	; 0
      002F0F 00                    3613 	.db #0x00	; 0
      002F10 00                    3614 	.db #0x00	; 0
      002F11 00                    3615 	.db #0x00	; 0
      002F12 06                    3616 	.db #0x06	; 6
      002F13 08                    3617 	.db #0x08	; 8
      002F14 04                    3618 	.db #0x04	; 4
      002F15 0E                    3619 	.db #0x0e	; 14
      002F16 00                    3620 	.db #0x00	; 0
      002F17 00                    3621 	.db #0x00	; 0
      002F18 00                    3622 	.db #0x00	; 0
      002F19 00                    3623 	.db #0x00	; 0
      002F1A 00                    3624 	.db #0x00	; 0
      002F1B 00                    3625 	.db #0x00	; 0
      002F1C 1E                    3626 	.db #0x1e	; 30
      002F1D 1E                    3627 	.db #0x1e	; 30
      002F1E 1E                    3628 	.db #0x1e	; 30
      002F1F 1E                    3629 	.db #0x1e	; 30
      002F20 00                    3630 	.db #0x00	; 0
      002F21 00                    3631 	.db #0x00	; 0
      002F22 00                    3632 	.db #0x00	; 0
      002F23 00                    3633 	.db #0x00	; 0
      002F24 00                    3634 	.db #0x00	; 0
      002F25 00                    3635 	.db #0x00	; 0
      002F26 00                    3636 	.db #0x00	; 0
      002F27 00                    3637 	.db #0x00	; 0
      002F28 00                    3638 	.db #0x00	; 0
      002F29 00                    3639 	.db #0x00	; 0
      002F2A                       3640 __xinit__initial:
      002F2A F8 26 80              3641 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3642 	.area CABS    (ABS,CODE)
