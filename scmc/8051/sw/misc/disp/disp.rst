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
                                    386 ;	disp.c:123: __idata const uint8_t dsdcol[8] = {
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
                                    403 ;	disp.c:127: __idata const uint8_t sddcol[8] = {
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
      00200E 02 23 31         [24]  428 	ljmp	_main
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
                                    489 ;Allocation info for local variables in function 'gpo_init'
                                    490 ;------------------------------------------------------------
                                    491 ;	disp.c:82: void gpo_init(void) {
                                    492 ;	-----------------------------------------
                                    493 ;	 function gpo_init
                                    494 ;	-----------------------------------------
      0020CF                        495 _gpo_init:
                           000007   496 	ar7 = 0x07
                           000006   497 	ar6 = 0x06
                           000005   498 	ar5 = 0x05
                           000004   499 	ar4 = 0x04
                           000003   500 	ar3 = 0x03
                           000002   501 	ar2 = 0x02
                           000001   502 	ar1 = 0x01
                           000000   503 	ar0 = 0x00
                                    504 ;	disp.c:83: P1_7 = 0;
                                    505 ;	assignBit
      0020CF C2 97            [12]  506 	clr	_P1_7
                                    507 ;	disp.c:88: __endasm;
      0020D1 00               [12]  508 	nop
      0020D2 00               [12]  509 	nop
      0020D3 00               [12]  510 	nop
                                    511 ;	disp.c:90: P2 = GPO_BASE_H;
      0020D4 75 A0 F0         [24]  512 	mov	_P2,#0xf0
                                    513 ;	disp.c:92: GPO_CLEAR;
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
                                    530 ;	disp.c:94: return;
                                    531 ;	disp.c:95: }
      0020EF 22               [24]  532 	ret
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'gpo_clear'
                                    535 ;------------------------------------------------------------
                                    536 ;	disp.c:97: void gpo_clear(void) {
                                    537 ;	-----------------------------------------
                                    538 ;	 function gpo_clear
                                    539 ;	-----------------------------------------
      0020F0                        540 _gpo_clear:
                                    541 ;	disp.c:98: GPO_CLEAR;
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
                                    558 ;	disp.c:100: return;
                                    559 ;	disp.c:101: }
      002108 22               [24]  560 	ret
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'init_intr'
                                    563 ;------------------------------------------------------------
                                    564 ;	disp.c:134: void init_intr(void) {
                                    565 ;	-----------------------------------------
                                    566 ;	 function init_intr
                                    567 ;	-----------------------------------------
      002109                        568 _init_intr:
                                    569 ;	disp.c:135: TR0 = 0;
                                    570 ;	assignBit
      002109 C2 8C            [12]  571 	clr	_TR0
                                    572 ;	disp.c:136: TR1 = 0;
                                    573 ;	assignBit
      00210B C2 8E            [12]  574 	clr	_TR1
                                    575 ;	disp.c:137: ET0 = 1;
                                    576 ;	assignBit
      00210D D2 A9            [12]  577 	setb	_ET0
                                    578 ;	disp.c:138: ET1 = 0;
                                    579 ;	assignBit
      00210F C2 AB            [12]  580 	clr	_ET1
                                    581 ;	disp.c:139: EA = 1;
                                    582 ;	assignBit
      002111 D2 AF            [12]  583 	setb	_EA
                                    584 ;	disp.c:141: return;
                                    585 ;	disp.c:142: }
      002113 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'init_timer0'
                                    589 ;------------------------------------------------------------
                                    590 ;	disp.c:144: void init_timer0(void) {
                                    591 ;	-----------------------------------------
                                    592 ;	 function init_timer0
                                    593 ;	-----------------------------------------
      002114                        594 _init_timer0:
                                    595 ;	disp.c:145: TR0 = 0;
                                    596 ;	assignBit
      002114 C2 8C            [12]  597 	clr	_TR0
                                    598 ;	disp.c:146: TMOD |= 0x01;
      002116 43 89 01         [24]  599 	orl	_TMOD,#0x01
                                    600 ;	disp.c:147: TH0 = TR0_COUNT >> 8;
      002119 75 8C F8         [24]  601 	mov	_TH0,#0xf8
                                    602 ;	disp.c:148: TL0 = TR0_COUNT & 0xffu;
      00211C 75 8A 00         [24]  603 	mov	_TL0,#0x00
                                    604 ;	disp.c:150: return;
                                    605 ;	disp.c:151: }
      00211F 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'init_timer1'
                                    609 ;------------------------------------------------------------
                                    610 ;	disp.c:153: void init_timer1(void) {
                                    611 ;	-----------------------------------------
                                    612 ;	 function init_timer1
                                    613 ;	-----------------------------------------
      002120                        614 _init_timer1:
                                    615 ;	disp.c:154: TR1 = 0;
                                    616 ;	assignBit
      002120 C2 8E            [12]  617 	clr	_TR1
                                    618 ;	disp.c:155: TMOD |= 0x10;
      002122 43 89 10         [24]  619 	orl	_TMOD,#0x10
                                    620 ;	disp.c:156: TH1 = TR1_COUNT_0 >> 8;
      002125 75 8D 00         [24]  621 	mov	_TH1,#0x00
                                    622 ;	disp.c:157: TL1 = TR1_COUNT_0 & 0xffu;
      002128 75 8B 00         [24]  623 	mov	_TL1,#0x00
                                    624 ;	disp.c:159: return;
                                    625 ;	disp.c:160: }
      00212B 22               [24]  626 	ret
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'init_disp'
                                    629 ;------------------------------------------------------------
                                    630 ;	disp.c:162: void init_disp(void) {
                                    631 ;	-----------------------------------------
                                    632 ;	 function init_disp
                                    633 ;	-----------------------------------------
      00212C                        634 _init_disp:
                                    635 ;	disp.c:163: GPO_SETREG(DISP_COL, 0u);
      00212C 78 05            [12]  636 	mov	r0,#(_gpo + 0x0005)
      00212E E4               [12]  637 	clr	a
      00212F F2               [24]  638 	movx	@r0,a
                                    639 ;	disp.c:164: GPO_SETREG(DISP_DATA, 0u);
      002130 78 04            [12]  640 	mov	r0,#(_gpo + 0x0004)
      002132 F2               [24]  641 	movx	@r0,a
                                    642 ;	disp.c:165: OE = 0x0fu; /* 00_001111 */
      002133 78 3A            [12]  643 	mov	r0,#_OE
      002135 76 0F            [12]  644 	mov	@r0,#0x0f
                                    645 ;	disp.c:166: GPO_SETOE(OE);
      002137 78 06            [12]  646 	mov	r0,#(_gpo + 0x0006)
      002139 74 0F            [12]  647 	mov	a,#0x0f
      00213B F2               [24]  648 	movx	@r0,a
                                    649 ;	disp.c:168: for (column = 0u; column < 8u; column++)
      00213C 78 39            [12]  650 	mov	r0,#_column
      00213E 76 00            [12]  651 	mov	@r0,#0x00
      002140                        652 00112$:
      002140 78 39            [12]  653 	mov	r0,#_column
      002142 B6 08 00         [24]  654 	cjne	@r0,#0x08,00124$
      002145                        655 00124$:
      002145 50 11            [24]  656 	jnc	00110$
                                    657 ;	disp.c:169: ddata[column] = 0u;
      002147 78 39            [12]  658 	mov	r0,#_column
      002149 E6               [12]  659 	mov	a,@r0
      00214A 24 31            [12]  660 	add	a,#_ddata
      00214C F8               [12]  661 	mov	r0,a
      00214D 76 00            [12]  662 	mov	@r0,#0x00
                                    663 ;	disp.c:168: for (column = 0u; column < 8u; column++)
      00214F 78 39            [12]  664 	mov	r0,#_column
      002151 E6               [12]  665 	mov	a,@r0
      002152 78 39            [12]  666 	mov	r0,#_column
      002154 04               [12]  667 	inc	a
      002155 F6               [12]  668 	mov	@r0,a
      002156 80 E8            [24]  669 	sjmp	00112$
      002158                        670 00110$:
                                    671 ;	disp.c:170: column = 0u;
      002158 78 39            [12]  672 	mov	r0,#_column
      00215A 76 00            [12]  673 	mov	@r0,#0x00
                                    674 ;	disp.c:172: return;
                                    675 ;	disp.c:173: }
      00215C 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'timer0_intr'
                                    679 ;------------------------------------------------------------
                                    680 ;t                         Allocated to registers r7 
                                    681 ;------------------------------------------------------------
                                    682 ;	disp.c:175: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
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
                                    698 ;	disp.c:178: t = column & 7u;
      002164 78 39            [12]  699 	mov	r0,#_column
      002166 86 0F            [24]  700 	mov	ar7,@r0
      002168 53 0F 07         [24]  701 	anl	ar7,#0x07
                                    702 ;	disp.c:179: GPO_SETREG(DISP_COL, 0u);
      00216B 78 05            [12]  703 	mov	r0,#(_gpo + 0x0005)
      00216D E4               [12]  704 	clr	a
      00216E F2               [24]  705 	movx	@r0,a
                                    706 ;	disp.c:180: GPO_SETREG(DISP_DATA, ddata[t]);
      00216F EF               [12]  707 	mov	a,r7
      002170 24 31            [12]  708 	add	a,#_ddata
      002172 F9               [12]  709 	mov	r1,a
      002173 87 0E            [24]  710 	mov	ar6,@r1
      002175 78 04            [12]  711 	mov	r0,#(_gpo + 0x0004)
      002177 EE               [12]  712 	mov	a,r6
      002178 F2               [24]  713 	movx	@r0,a
                                    714 ;	disp.c:181: GPO_SETREG(DISP_COL, dsdcol[t]);
      002179 EF               [12]  715 	mov	a,r7
      00217A 24 21            [12]  716 	add	a,#_dsdcol
      00217C F9               [12]  717 	mov	r1,a
      00217D 87 0F            [24]  718 	mov	ar7,@r1
      00217F 78 05            [12]  719 	mov	r0,#(_gpo + 0x0005)
      002181 EF               [12]  720 	mov	a,r7
      002182 F2               [24]  721 	movx	@r0,a
                                    722 ;	disp.c:182: column++;
      002183 78 39            [12]  723 	mov	r0,#_column
      002185 E6               [12]  724 	mov	a,@r0
      002186 78 39            [12]  725 	mov	r0,#_column
      002188 04               [12]  726 	inc	a
      002189 F6               [12]  727 	mov	@r0,a
                                    728 ;	disp.c:184: TR0 = 0;
                                    729 ;	assignBit
      00218A C2 8C            [12]  730 	clr	_TR0
                                    731 ;	disp.c:185: TH0 = TR0_COUNT >> 8;
      00218C 75 8C F8         [24]  732 	mov	_TH0,#0xf8
                                    733 ;	disp.c:186: TL0 = TR0_COUNT & 0xffu;
      00218F 75 8A 00         [24]  734 	mov	_TL0,#0x00
                                    735 ;	disp.c:187: TR0 = 1;
                                    736 ;	assignBit
      002192 D2 8C            [12]  737 	setb	_TR0
                                    738 ;	disp.c:189: return;
                                    739 ;	disp.c:190: }
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
                                    761 ;	disp.c:217: int scroll(uint8_t *msg) {
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
                                    782 ;	disp.c:223: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
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
      0021BA                        794 00139$:
                                    795 ;	disp.c:224: if (!bit) {
      0021BA E5 10            [12]  796 	mov	a,_bp
      0021BC 24 06            [12]  797 	add	a,#0x06
      0021BE F8               [12]  798 	mov	r0,a
      0021BF E6               [12]  799 	mov	a,@r0
      0021C0 70 5F            [24]  800 	jnz	00105$
                                    801 ;	disp.c:225: symbol = msg[i];
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
      0021DB 12 26 82         [24]  820 	lcall	__gptrget
      0021DE FA               [12]  821 	mov	r2,a
      0021DF E5 10            [12]  822 	mov	a,_bp
      0021E1 24 04            [12]  823 	add	a,#0x04
      0021E3 F8               [12]  824 	mov	r0,a
      0021E4 A6 02            [24]  825 	mov	@r0,ar2
                                    826 ;	disp.c:226: if (!symbol) {
      0021E6 EA               [12]  827 	mov	a,r2
      0021E7 70 25            [24]  828 	jnz	00102$
                                    829 ;	disp.c:227: i = 0u;
      0021E9 E5 10            [12]  830 	mov	a,_bp
      0021EB 24 07            [12]  831 	add	a,#0x07
      0021ED F8               [12]  832 	mov	r0,a
      0021EE E4               [12]  833 	clr	a
      0021EF F6               [12]  834 	mov	@r0,a
      0021F0 08               [12]  835 	inc	r0
      0021F1 F6               [12]  836 	mov	@r0,a
                                    837 ;	disp.c:228: symbol = msg[i];
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
      002202 12 26 82         [24]  848 	lcall	__gptrget
      002205 F7               [12]  849 	mov	@r1,a
                                    850 ;	disp.c:229: OE |= 0x80u;
      002206 78 3A            [12]  851 	mov	r0,#_OE
      002208 E6               [12]  852 	mov	a,@r0
      002209 44 80            [12]  853 	orl	a,#0x80
      00220B F6               [12]  854 	mov	@r0,a
      00220C 80 06            [24]  855 	sjmp	00103$
      00220E                        856 00102$:
                                    857 ;	disp.c:230: } else OE |= 0x40u;
      00220E 78 3A            [12]  858 	mov	r0,#_OE
      002210 E6               [12]  859 	mov	a,@r0
      002211 44 40            [12]  860 	orl	a,#0x40
      002213 F6               [12]  861 	mov	@r0,a
      002214                        862 00103$:
                                    863 ;	disp.c:231: i++;
      002214 E5 10            [12]  864 	mov	a,_bp
      002216 24 07            [12]  865 	add	a,#0x07
      002218 F8               [12]  866 	mov	r0,a
      002219 06               [12]  867 	inc	@r0
      00221A B6 00 02         [24]  868 	cjne	@r0,#0x00,00222$
      00221D 08               [12]  869 	inc	r0
      00221E 06               [12]  870 	inc	@r0
      00221F                        871 00222$:
      00221F 80 06            [24]  872 	sjmp	00107$
      002221                        873 00105$:
                                    874 ;	disp.c:232: } else OE &= ~(0x80u | 0x40u);
      002221 78 3A            [12]  875 	mov	r0,#_OE
      002223 E6               [12]  876 	mov	a,@r0
      002224 54 3F            [12]  877 	anl	a,#0x3f
      002226 F6               [12]  878 	mov	@r0,a
                                    879 ;	disp.c:233: GPO_SETOE(OE);
      002227                        880 00107$:
      002227 78 06            [12]  881 	mov	r0,#(_gpo + 0x0006)
      002229 79 3A            [12]  882 	mov	r1,#_OE
      00222B E7               [12]  883 	mov	a,@r1
      00222C F2               [24]  884 	movx	@r0,a
                                    885 ;	disp.c:235: if (FONT_SKIP & sddcol[bit]) goto skip_shift;
      00222D E5 10            [12]  886 	mov	a,_bp
      00222F 24 06            [12]  887 	add	a,#0x06
      002231 F8               [12]  888 	mov	r0,a
      002232 E6               [12]  889 	mov	a,@r0
      002233 24 29            [12]  890 	add	a,#_sddcol
      002235 F9               [12]  891 	mov	r1,a
      002236 E7               [12]  892 	mov	a,@r1
      002237 FB               [12]  893 	mov	r3,a
      002238 54 C0            [12]  894 	anl	a,#0xc0
      00223A 60 02            [24]  895 	jz	00224$
      00223C 80 6F            [24]  896 	sjmp	00113$
      00223E                        897 00224$:
                                    898 ;	disp.c:193: TR1 = 0;
                                    899 ;	assignBit
      00223E C2 8E            [12]  900 	clr	_TR1
                                    901 ;	disp.c:194: TH1 = TR1_COUNT_0 >> 8;
      002240 75 8D 00         [24]  902 	mov	_TH1,#0x00
                                    903 ;	disp.c:195: TL1 = TR1_COUNT_0 & 0xffu;	
      002243 75 8B 00         [24]  904 	mov	_TL1,#0x00
                                    905 ;	disp.c:196: TF1 = 0;
                                    906 ;	assignBit
      002246 C2 8F            [12]  907 	clr	_TF1
                                    908 ;	disp.c:197: TR1 = 1;
                                    909 ;	assignBit
      002248 D2 8E            [12]  910 	setb	_TR1
                                    911 ;	disp.c:198: while (!TF1);
      00224A                        912 00125$:
                                    913 ;	disp.c:199: TF1 = 0;
                                    914 ;	assignBit
      00224A 10 8F 02         [24]  915 	jbc	_TF1,00225$
      00224D 80 FB            [24]  916 	sjmp	00125$
      00224F                        917 00225$:
                                    918 ;	disp.c:201: TR1 = 0;
                                    919 ;	assignBit
      00224F C2 8E            [12]  920 	clr	_TR1
                                    921 ;	disp.c:202: TH1 = TR1_COUNT_1 >> 8;
      002251 75 8D C0         [24]  922 	mov	_TH1,#0xc0
                                    923 ;	disp.c:203: TL1 = TR1_COUNT_1 & 0xffu;	
      002254 75 8B 00         [24]  924 	mov	_TL1,#0x00
                                    925 ;	disp.c:204: TF1 = 0;
                                    926 ;	assignBit
      002257 C2 8F            [12]  927 	clr	_TF1
                                    928 ;	disp.c:205: TR1 = 1;
                                    929 ;	assignBit
      002259 D2 8E            [12]  930 	setb	_TR1
                                    931 ;	disp.c:206: while (!TF1);
      00225B                        932 00128$:
                                    933 ;	disp.c:207: TF1 = 0;
                                    934 ;	assignBit
      00225B 10 8F 02         [24]  935 	jbc	_TF1,00226$
      00225E 80 FB            [24]  936 	sjmp	00128$
      002260                        937 00226$:
                                    938 ;	disp.c:209: TR1 = 0;
                                    939 ;	assignBit
      002260 C2 8E            [12]  940 	clr	_TR1
                                    941 ;	disp.c:238: for (j = 0u; j < 8u; j++)
      002262 E5 10            [12]  942 	mov	a,_bp
      002264 24 04            [12]  943 	add	a,#0x04
      002266 F8               [12]  944 	mov	r0,a
      002267 E6               [12]  945 	mov	a,@r0
      002268 75 F0 08         [24]  946 	mov	b,#0x08
      00226B A4               [48]  947 	mul	ab
      00226C 24 01            [12]  948 	add	a,#__ft_font6x8
      00226E FA               [12]  949 	mov	r2,a
      00226F 74 81            [12]  950 	mov	a,#(__ft_font6x8 >> 8)
      002271 35 F0            [12]  951 	addc	a,b
      002273 FB               [12]  952 	mov	r3,a
      002274 E5 10            [12]  953 	mov	a,_bp
      002276 24 06            [12]  954 	add	a,#0x06
      002278 F8               [12]  955 	mov	r0,a
      002279 74 07            [12]  956 	mov	a,#0x07
      00227B C3               [12]  957 	clr	c
      00227C 96               [12]  958 	subb	a,@r0
      00227D FD               [12]  959 	mov	r5,a
      00227E 7C 00            [12]  960 	mov	r4,#0x00
      002280                        961 00134$:
                                    962 ;	disp.c:239: ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      002280 EC               [12]  963 	mov	a,r4
      002281 24 31            [12]  964 	add	a,#_ddata
      002283 F9               [12]  965 	mov	r1,a
      002284 EC               [12]  966 	mov	a,r4
      002285 2A               [12]  967 	add	a,r2
      002286 F5 82            [12]  968 	mov	dpl,a
      002288 E4               [12]  969 	clr	a
      002289 3B               [12]  970 	addc	a,r3
      00228A F5 83            [12]  971 	mov	dph,a
      00228C E0               [24]  972 	movx	a,@dptr
      00228D FF               [12]  973 	mov	r7,a
      00228E 8D F0            [24]  974 	mov	b,r5
      002290 05 F0            [12]  975 	inc	b
      002292 EF               [12]  976 	mov	a,r7
      002293 80 02            [24]  977 	sjmp	00229$
      002295                        978 00227$:
      002295 25 E0            [12]  979 	add	a,acc
      002297                        980 00229$:
      002297 D5 F0 FB         [24]  981 	djnz	b,00227$
      00229A 54 80            [12]  982 	anl	a,#0x80
      00229C FF               [12]  983 	mov	r7,a
      00229D EC               [12]  984 	mov	a,r4
      00229E 24 31            [12]  985 	add	a,#_ddata
      0022A0 F8               [12]  986 	mov	r0,a
      0022A1 E6               [12]  987 	mov	a,@r0
      0022A2 C3               [12]  988 	clr	c
      0022A3 13               [12]  989 	rrc	a
      0022A4 FE               [12]  990 	mov	r6,a
      0022A5 4F               [12]  991 	orl	a,r7
      0022A6 F7               [12]  992 	mov	@r1,a
                                    993 ;	disp.c:238: for (j = 0u; j < 8u; j++)
      0022A7 0C               [12]  994 	inc	r4
      0022A8 BC 08 00         [24]  995 	cjne	r4,#0x08,00230$
      0022AB                        996 00230$:
      0022AB 40 D3            [24]  997 	jc	00134$
                                    998 ;	disp.c:241: skip_shift:
      0022AD                        999 00113$:
                                   1000 ;	disp.c:242: if ((r = getchar_poll()) >= 0) {
      0022AD 12 20 BB         [24] 1001 	lcall	_getchar_poll
      0022B0 AB 82            [24] 1002 	mov	r3,dpl
      0022B2 AC 83            [24] 1003 	mov	r4,dph
      0022B4 8B 07            [24] 1004 	mov	ar7,r3
      0022B6 EC               [12] 1005 	mov	a,r4
      0022B7 FE               [12] 1006 	mov	r6,a
      0022B8 20 E7 58         [24] 1007 	jb	acc.7,00140$
                                   1008 ;	disp.c:243: r = toupper(r);
      0022BB 8F 82            [24] 1009 	mov	dpl,r7
      0022BD 8E 83            [24] 1010 	mov	dph,r6
      0022BF 12 25 A4         [24] 1011 	lcall	_toupper
      0022C2 AB 82            [24] 1012 	mov	r3,dpl
      0022C4 AC 83            [24] 1013 	mov	r4,dph
                                   1014 ;	disp.c:244: if ((r == (int)'P') || (r == (int)' ')) {
      0022C6 BB 50 05         [24] 1015 	cjne	r3,#0x50,00233$
      0022C9 BC 00 02         [24] 1016 	cjne	r4,#0x00,00233$
      0022CC 80 06            [24] 1017 	sjmp	00118$
      0022CE                       1018 00233$:
      0022CE BB 20 2A         [24] 1019 	cjne	r3,#0x20,00119$
      0022D1 BC 00 27         [24] 1020 	cjne	r4,#0x00,00119$
      0022D4                       1021 00118$:
                                   1022 ;	disp.c:245: printstr("PAUSE\r\n");
      0022D4 7E BD            [12] 1023 	mov	r6,#___str_0
      0022D6 7C 26            [12] 1024 	mov	r4,#(___str_0 >> 8)
      0022D8 7B 80            [12] 1025 	mov	r3,#0x80
                                   1026 ;	disp.c:48: return;
      0022DA                       1027 00137$:
                                   1028 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0022DA 8E 82            [24] 1029 	mov	dpl,r6
      0022DC 8C 83            [24] 1030 	mov	dph,r4
      0022DE 8B F0            [24] 1031 	mov	b,r3
      0022E0 12 26 82         [24] 1032 	lcall	__gptrget
      0022E3 FD               [12] 1033 	mov	r5,a
      0022E4 60 10            [24] 1034 	jz	00133$
      0022E6 7F 00            [12] 1035 	mov	r7,#0x00
      0022E8 8D 82            [24] 1036 	mov	dpl,r5
      0022EA 8F 83            [24] 1037 	mov	dph,r7
      0022EC 12 20 AD         [24] 1038 	lcall	_putchar
      0022EF 0E               [12] 1039 	inc	r6
                                   1040 ;	disp.c:245: printstr("PAUSE\r\n");
      0022F0 BE 00 E7         [24] 1041 	cjne	r6,#0x00,00137$
      0022F3 0C               [12] 1042 	inc	r4
      0022F4 80 E4            [24] 1043 	sjmp	00137$
      0022F6                       1044 00133$:
                                   1045 ;	disp.c:246: (void)getchar();
      0022F6 12 20 B2         [24] 1046 	lcall	_getchar
      0022F9 80 18            [24] 1047 	sjmp	00140$
      0022FB                       1048 00119$:
                                   1049 ;	disp.c:247: } else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      0022FB BB 54 05         [24] 1050 	cjne	r3,#0x54,00238$
      0022FE BC 00 02         [24] 1051 	cjne	r4,#0x00,00238$
      002301 80 24            [24] 1052 	sjmp	00124$
      002303                       1053 00238$:
      002303 BB 52 05         [24] 1054 	cjne	r3,#0x52,00239$
      002306 BC 00 02         [24] 1055 	cjne	r4,#0x00,00239$
      002309 80 1C            [24] 1056 	sjmp	00124$
      00230B                       1057 00239$:
      00230B BB 4C 05         [24] 1058 	cjne	r3,#0x4c,00240$
      00230E BC 00 02         [24] 1059 	cjne	r4,#0x00,00240$
      002311 80 14            [24] 1060 	sjmp	00124$
      002313                       1061 00240$:
      002313                       1062 00140$:
                                   1063 ;	disp.c:223: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002313 E5 10            [12] 1064 	mov	a,_bp
      002315 24 06            [12] 1065 	add	a,#0x06
      002317 F8               [12] 1066 	mov	r0,a
      002318 E6               [12] 1067 	mov	a,@r0
      002319 04               [12] 1068 	inc	a
      00231A FF               [12] 1069 	mov	r7,a
      00231B E5 10            [12] 1070 	mov	a,_bp
      00231D 24 06            [12] 1071 	add	a,#0x06
      00231F F8               [12] 1072 	mov	r0,a
      002320 74 07            [12] 1073 	mov	a,#0x07
      002322 5F               [12] 1074 	anl	a,r7
      002323 F6               [12] 1075 	mov	@r0,a
      002324 02 21 BA         [24] 1076 	ljmp	00139$
      002327                       1077 00124$:
                                   1078 ;	disp.c:251: return r;
      002327 8B 82            [24] 1079 	mov	dpl,r3
      002329 8C 83            [24] 1080 	mov	dph,r4
                                   1081 ;	disp.c:252: }
      00232B 85 10 81         [24] 1082 	mov	sp,_bp
      00232E D0 10            [24] 1083 	pop	_bp
      002330 22               [24] 1084 	ret
                                   1085 ;------------------------------------------------------------
                                   1086 ;Allocation info for local variables in function 'main'
                                   1087 ;------------------------------------------------------------
                                   1088 ;j                         Allocated to stack - _bp +1
                                   1089 ;c                         Allocated to registers r7 r6 
                                   1090 ;__1310720004              Allocated to registers 
                                   1091 ;s                         Allocated to registers r5 r6 r7 
                                   1092 ;__1966080006              Allocated to registers 
                                   1093 ;s                         Allocated to registers r5 r6 r7 
                                   1094 ;__1966080008              Allocated to registers 
                                   1095 ;s                         Allocated to registers r5 r6 r7 
                                   1096 ;__1966080010              Allocated to registers 
                                   1097 ;s                         Allocated to registers r5 r6 r7 
                                   1098 ;__3276800012              Allocated to registers 
                                   1099 ;s                         Allocated to registers r7 r6 r4 
                                   1100 ;__3276800014              Allocated to registers 
                                   1101 ;s                         Allocated to registers r7 r6 r4 
                                   1102 ;__3276800016              Allocated to registers 
                                   1103 ;s                         Allocated to registers r7 r6 r4 
                                   1104 ;__3276800018              Allocated to registers 
                                   1105 ;s                         Allocated to registers r7 r6 r4 
                                   1106 ;__3276800020              Allocated to registers 
                                   1107 ;s                         Allocated to registers r7 r6 r4 
                                   1108 ;__1310720022              Allocated to registers 
                                   1109 ;s                         Allocated to registers r5 r6 r7 
                                   1110 ;sloc0                     Allocated to stack - _bp +65
                                   1111 ;------------------------------------------------------------
                                   1112 ;	disp.c:254: void main(void) {
                                   1113 ;	-----------------------------------------
                                   1114 ;	 function main
                                   1115 ;	-----------------------------------------
      002331                       1116 _main:
      002331 C0 10            [24] 1117 	push	_bp
      002333 85 81 10         [24] 1118 	mov	_bp,sp
      002336 05 81            [12] 1119 	inc	sp
      002338 05 81            [12] 1120 	inc	sp
                                   1121 ;	disp.c:258: gpo_init();
      00233A 12 20 CF         [24] 1122 	lcall	_gpo_init
                                   1123 ;	disp.c:259: gpo_clear();
      00233D 12 20 F0         [24] 1124 	lcall	_gpo_clear
                                   1125 ;	disp.c:260: init_disp();
      002340 12 21 2C         [24] 1126 	lcall	_init_disp
                                   1127 ;	disp.c:261: init_timer0();
      002343 12 21 14         [24] 1128 	lcall	_init_timer0
                                   1129 ;	disp.c:262: init_timer1();
      002346 12 21 20         [24] 1130 	lcall	_init_timer1
                                   1131 ;	disp.c:263: init_intr();
      002349 12 21 09         [24] 1132 	lcall	_init_intr
                                   1133 ;	disp.c:264: TR0 = 1;
                                   1134 ;	assignBit
      00234C D2 8C            [12] 1135 	setb	_TR0
                                   1136 ;	disp.c:266: reset:
      00234E                       1137 00101$:
                                   1138 ;	disp.c:267: init_disp();
      00234E 12 21 2C         [24] 1139 	lcall	_init_disp
                                   1140 ;	disp.c:268: printstr("RESET\r\n");
      002351 7D C5            [12] 1141 	mov	r5,#___str_1
      002353 7E 26            [12] 1142 	mov	r6,#(___str_1 >> 8)
      002355 7F 80            [12] 1143 	mov	r7,#0x80
                                   1144 ;	disp.c:48: return;
      002357                       1145 00146$:
                                   1146 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002357 8D 82            [24] 1147 	mov	dpl,r5
      002359 8E 83            [24] 1148 	mov	dph,r6
      00235B 8F F0            [24] 1149 	mov	b,r7
      00235D 12 26 82         [24] 1150 	lcall	__gptrget
      002360 FC               [12] 1151 	mov	r4,a
      002361 60 10            [24] 1152 	jz	00126$
      002363 7B 00            [12] 1153 	mov	r3,#0x00
      002365 8C 82            [24] 1154 	mov	dpl,r4
      002367 8B 83            [24] 1155 	mov	dph,r3
      002369 12 20 AD         [24] 1156 	lcall	_putchar
      00236C 0D               [12] 1157 	inc	r5
                                   1158 ;	disp.c:268: printstr("RESET\r\n");
      00236D BD 00 E7         [24] 1159 	cjne	r5,#0x00,00146$
      002370 0E               [12] 1160 	inc	r6
      002371 80 E4            [24] 1161 	sjmp	00146$
      002373                       1162 00126$:
                                   1163 ;	disp.c:269: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      002373 E4               [12] 1164 	clr	a
      002374 C0 E0            [24] 1165 	push	acc
      002376 04               [12] 1166 	inc	a
      002377 C0 E0            [24] 1167 	push	acc
      002379 90 89 01         [24] 1168 	mov	dptr,#_initial
      00237C E0               [24] 1169 	movx	a,@dptr
      00237D C0 E0            [24] 1170 	push	acc
      00237F A3               [24] 1171 	inc	dptr
      002380 E0               [24] 1172 	movx	a,@dptr
      002381 C0 E0            [24] 1173 	push	acc
      002383 A3               [24] 1174 	inc	dptr
      002384 E0               [24] 1175 	movx	a,@dptr
      002385 C0 E0            [24] 1176 	push	acc
      002387 90 80 00         [24] 1177 	mov	dptr,#_buf
      00238A 75 F0 00         [24] 1178 	mov	b,#0x00
      00238D 12 25 CB         [24] 1179 	lcall	_strncpy
      002390 E5 81            [12] 1180 	mov	a,sp
      002392 24 FB            [12] 1181 	add	a,#0xfb
      002394 F5 81            [12] 1182 	mov	sp,a
                                   1183 ;	disp.c:270: buf[sizeof (buf) - 1u] = 0u;
      002396 90 81 00         [24] 1184 	mov	dptr,#(_buf + 0x0100)
      002399 E4               [12] 1185 	clr	a
      00239A F0               [24] 1186 	movx	@dptr,a
                                   1187 ;	disp.c:272: while (1) {
      00239B                       1188 00122$:
                                   1189 ;	disp.c:273: printstr("P SP L ENT S R T START MSG \"");
      00239B 7D CD            [12] 1190 	mov	r5,#___str_2
      00239D 7E 26            [12] 1191 	mov	r6,#(___str_2 >> 8)
      00239F 7F 80            [12] 1192 	mov	r7,#0x80
                                   1193 ;	disp.c:48: return;
      0023A1                       1194 00149$:
                                   1195 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023A1 8D 82            [24] 1196 	mov	dpl,r5
      0023A3 8E 83            [24] 1197 	mov	dph,r6
      0023A5 8F F0            [24] 1198 	mov	b,r7
      0023A7 12 26 82         [24] 1199 	lcall	__gptrget
      0023AA FC               [12] 1200 	mov	r4,a
      0023AB 60 10            [24] 1201 	jz	00128$
      0023AD 7B 00            [12] 1202 	mov	r3,#0x00
      0023AF 8C 82            [24] 1203 	mov	dpl,r4
      0023B1 8B 83            [24] 1204 	mov	dph,r3
      0023B3 12 20 AD         [24] 1205 	lcall	_putchar
      0023B6 0D               [12] 1206 	inc	r5
                                   1207 ;	disp.c:273: printstr("P SP L ENT S R T START MSG \"");
      0023B7 BD 00 E7         [24] 1208 	cjne	r5,#0x00,00149$
      0023BA 0E               [12] 1209 	inc	r6
      0023BB 80 E4            [24] 1210 	sjmp	00149$
      0023BD                       1211 00128$:
                                   1212 ;	disp.c:274: printstr((char *)buf);
      0023BD 7D 00            [12] 1213 	mov	r5,#_buf
      0023BF 7E 80            [12] 1214 	mov	r6,#(_buf >> 8)
      0023C1 7F 00            [12] 1215 	mov	r7,#0x00
                                   1216 ;	disp.c:48: return;
      0023C3                       1217 00152$:
                                   1218 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023C3 8D 82            [24] 1219 	mov	dpl,r5
      0023C5 8E 83            [24] 1220 	mov	dph,r6
      0023C7 8F F0            [24] 1221 	mov	b,r7
      0023C9 12 26 82         [24] 1222 	lcall	__gptrget
      0023CC FC               [12] 1223 	mov	r4,a
      0023CD 60 10            [24] 1224 	jz	00130$
      0023CF 7B 00            [12] 1225 	mov	r3,#0x00
      0023D1 8C 82            [24] 1226 	mov	dpl,r4
      0023D3 8B 83            [24] 1227 	mov	dph,r3
      0023D5 12 20 AD         [24] 1228 	lcall	_putchar
      0023D8 0D               [12] 1229 	inc	r5
                                   1230 ;	disp.c:274: printstr((char *)buf);
      0023D9 BD 00 E7         [24] 1231 	cjne	r5,#0x00,00152$
      0023DC 0E               [12] 1232 	inc	r6
      0023DD 80 E4            [24] 1233 	sjmp	00152$
      0023DF                       1234 00130$:
                                   1235 ;	disp.c:275: printstr("\"\r\n");
      0023DF 7D EA            [12] 1236 	mov	r5,#___str_3
      0023E1 7E 26            [12] 1237 	mov	r6,#(___str_3 >> 8)
      0023E3 7F 80            [12] 1238 	mov	r7,#0x80
                                   1239 ;	disp.c:48: return;
      0023E5                       1240 00155$:
                                   1241 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023E5 8D 82            [24] 1242 	mov	dpl,r5
      0023E7 8E 83            [24] 1243 	mov	dph,r6
      0023E9 8F F0            [24] 1244 	mov	b,r7
      0023EB 12 26 82         [24] 1245 	lcall	__gptrget
      0023EE FC               [12] 1246 	mov	r4,a
      0023EF 60 10            [24] 1247 	jz	00132$
      0023F1 7B 00            [12] 1248 	mov	r3,#0x00
      0023F3 8C 82            [24] 1249 	mov	dpl,r4
      0023F5 8B 83            [24] 1250 	mov	dph,r3
      0023F7 12 20 AD         [24] 1251 	lcall	_putchar
      0023FA 0D               [12] 1252 	inc	r5
                                   1253 ;	disp.c:275: printstr("\"\r\n");
      0023FB BD 00 E7         [24] 1254 	cjne	r5,#0x00,00155$
      0023FE 0E               [12] 1255 	inc	r6
      0023FF 80 E4            [24] 1256 	sjmp	00155$
      002401                       1257 00132$:
                                   1258 ;	disp.c:277: c = scroll(buf);
      002401 90 80 00         [24] 1259 	mov	dptr,#_buf
      002404 75 F0 00         [24] 1260 	mov	b,#0x00
      002407 12 21 99         [24] 1261 	lcall	_scroll
      00240A AE 82            [24] 1262 	mov	r6,dpl
      00240C AF 83            [24] 1263 	mov	r7,dph
                                   1264 ;	disp.c:279: while (1) {
      00240E                       1265 00119$:
                                   1266 ;	disp.c:280: if (c == (int)'T') goto term;
      00240E BE 54 06         [24] 1267 	cjne	r6,#0x54,00337$
      002411 BF 00 03         [24] 1268 	cjne	r7,#0x00,00337$
      002414 02 25 71         [24] 1269 	ljmp	00124$
      002417                       1270 00337$:
                                   1271 ;	disp.c:281: else if (c == (int)'R') goto reset;
      002417 BE 52 06         [24] 1272 	cjne	r6,#0x52,00338$
      00241A BF 00 03         [24] 1273 	cjne	r7,#0x00,00338$
      00241D 02 23 4E         [24] 1274 	ljmp	00101$
      002420                       1275 00338$:
                                   1276 ;	disp.c:282: else if (c == (int)'L') {
      002420 BE 4C 05         [24] 1277 	cjne	r6,#0x4c,00339$
      002423 BF 00 02         [24] 1278 	cjne	r7,#0x00,00339$
      002426 80 03            [24] 1279 	sjmp	00340$
      002428                       1280 00339$:
      002428 02 25 5B         [24] 1281 	ljmp	00110$
      00242B                       1282 00340$:
                                   1283 ;	disp.c:283: init_disp();
      00242B 12 21 2C         [24] 1284 	lcall	_init_disp
                                   1285 ;	disp.c:284: printstr("LOAD ");
      00242E 7F EE            [12] 1286 	mov	r7,#___str_4
      002430 7E 26            [12] 1287 	mov	r6,#(___str_4 >> 8)
      002432 7C 80            [12] 1288 	mov	r4,#0x80
                                   1289 ;	disp.c:48: return;
      002434                       1290 00158$:
                                   1291 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002434 8F 82            [24] 1292 	mov	dpl,r7
      002436 8E 83            [24] 1293 	mov	dph,r6
      002438 8C F0            [24] 1294 	mov	b,r4
      00243A 12 26 82         [24] 1295 	lcall	__gptrget
      00243D FA               [12] 1296 	mov	r2,a
      00243E 60 10            [24] 1297 	jz	00134$
      002440 7D 00            [12] 1298 	mov	r5,#0x00
      002442 8A 82            [24] 1299 	mov	dpl,r2
      002444 8D 83            [24] 1300 	mov	dph,r5
      002446 12 20 AD         [24] 1301 	lcall	_putchar
      002449 0F               [12] 1302 	inc	r7
                                   1303 ;	disp.c:284: printstr("LOAD ");
      00244A BF 00 E7         [24] 1304 	cjne	r7,#0x00,00158$
      00244D 0E               [12] 1305 	inc	r6
      00244E 80 E4            [24] 1306 	sjmp	00158$
      002450                       1307 00134$:
                                   1308 ;	disp.c:285: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002450 7C 00            [12] 1309 	mov	r4,#0x00
      002452 7D 00            [12] 1310 	mov	r5,#0x00
      002454 A8 10            [24] 1311 	mov	r0,_bp
      002456 08               [12] 1312 	inc	r0
      002457 E4               [12] 1313 	clr	a
      002458 F6               [12] 1314 	mov	@r0,a
      002459 08               [12] 1315 	inc	r0
      00245A F6               [12] 1316 	mov	@r0,a
      00245B                       1317 00160$:
                                   1318 ;	disp.c:286: c = getchar();
      00245B C0 04            [24] 1319 	push	ar4
      00245D C0 05            [24] 1320 	push	ar5
      00245F 12 20 B2         [24] 1321 	lcall	_getchar
      002462 AC 82            [24] 1322 	mov	r4,dpl
      002464 AD 83            [24] 1323 	mov	r5,dph
      002466 8C 07            [24] 1324 	mov	ar7,r4
      002468 8D 06            [24] 1325 	mov	ar6,r5
                                   1326 ;	disp.c:287: (void)putchar(c);
      00246A 8F 82            [24] 1327 	mov	dpl,r7
      00246C 8E 83            [24] 1328 	mov	dph,r6
      00246E 12 20 AD         [24] 1329 	lcall	_putchar
                                   1330 ;	disp.c:288: if ((c == (int)'\r') || (c == (int)'\n')) {
      002471 BF 0D 09         [24] 1331 	cjne	r7,#0x0d,00343$
      002474 BE 00 06         [24] 1332 	cjne	r6,#0x00,00343$
      002477 D0 05            [24] 1333 	pop	ar5
      002479 D0 04            [24] 1334 	pop	ar4
      00247B 80 0A            [24] 1335 	sjmp	00102$
      00247D                       1336 00343$:
      00247D D0 05            [24] 1337 	pop	ar5
      00247F D0 04            [24] 1338 	pop	ar4
      002481 BF 0A 11         [24] 1339 	cjne	r7,#0x0a,00103$
      002484 BE 00 0E         [24] 1340 	cjne	r6,#0x00,00103$
      002487                       1341 00102$:
                                   1342 ;	disp.c:289: buf[j] = 0u;
      002487 EC               [12] 1343 	mov	a,r4
      002488 24 00            [12] 1344 	add	a,#_buf
      00248A F5 82            [12] 1345 	mov	dpl,a
      00248C ED               [12] 1346 	mov	a,r5
      00248D 34 80            [12] 1347 	addc	a,#(_buf >> 8)
      00248F F5 83            [12] 1348 	mov	dph,a
      002491 E4               [12] 1349 	clr	a
      002492 F0               [24] 1350 	movx	@dptr,a
                                   1351 ;	disp.c:290: break;
      002493 80 32            [24] 1352 	sjmp	00106$
      002495                       1353 00103$:
                                   1354 ;	disp.c:291: } else buf[j] = c & 0xffu;
      002495 A8 10            [24] 1355 	mov	r0,_bp
      002497 08               [12] 1356 	inc	r0
      002498 E6               [12] 1357 	mov	a,@r0
      002499 24 00            [12] 1358 	add	a,#_buf
      00249B FD               [12] 1359 	mov	r5,a
      00249C 08               [12] 1360 	inc	r0
      00249D E6               [12] 1361 	mov	a,@r0
      00249E 34 80            [12] 1362 	addc	a,#(_buf >> 8)
      0024A0 FC               [12] 1363 	mov	r4,a
      0024A1 8F 03            [24] 1364 	mov	ar3,r7
      0024A3 8D 82            [24] 1365 	mov	dpl,r5
      0024A5 8C 83            [24] 1366 	mov	dph,r4
      0024A7 EB               [12] 1367 	mov	a,r3
      0024A8 F0               [24] 1368 	movx	@dptr,a
                                   1369 ;	disp.c:285: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      0024A9 A8 10            [24] 1370 	mov	r0,_bp
      0024AB 08               [12] 1371 	inc	r0
      0024AC 06               [12] 1372 	inc	@r0
      0024AD B6 00 02         [24] 1373 	cjne	@r0,#0x00,00346$
      0024B0 08               [12] 1374 	inc	r0
      0024B1 06               [12] 1375 	inc	@r0
      0024B2                       1376 00346$:
      0024B2 A8 10            [24] 1377 	mov	r0,_bp
      0024B4 08               [12] 1378 	inc	r0
      0024B5 86 04            [24] 1379 	mov	ar4,@r0
      0024B7 08               [12] 1380 	inc	r0
      0024B8 86 05            [24] 1381 	mov	ar5,@r0
      0024BA A8 10            [24] 1382 	mov	r0,_bp
      0024BC 08               [12] 1383 	inc	r0
      0024BD 86 02            [24] 1384 	mov	ar2,@r0
      0024BF 08               [12] 1385 	inc	r0
      0024C0 86 03            [24] 1386 	mov	ar3,@r0
      0024C2 74 FF            [12] 1387 	mov	a,#0x100 - 0x01
      0024C4 2B               [12] 1388 	add	a,r3
      0024C5 50 94            [24] 1389 	jnc	00160$
      0024C7                       1390 00106$:
                                   1391 ;	disp.c:293: buf[j] = 0u;
      0024C7 EC               [12] 1392 	mov	a,r4
      0024C8 24 00            [12] 1393 	add	a,#_buf
      0024CA F5 82            [12] 1394 	mov	dpl,a
      0024CC ED               [12] 1395 	mov	a,r5
      0024CD 34 80            [12] 1396 	addc	a,#(_buf >> 8)
      0024CF F5 83            [12] 1397 	mov	dph,a
      0024D1 E4               [12] 1398 	clr	a
      0024D2 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	disp.c:294: printstr("\r\n");
      0024D3 7F F4            [12] 1401 	mov	r7,#___str_5
      0024D5 7E 26            [12] 1402 	mov	r6,#(___str_5 >> 8)
      0024D7 7C 80            [12] 1403 	mov	r4,#0x80
                                   1404 ;	disp.c:48: return;
      0024D9                       1405 00163$:
                                   1406 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024D9 8F 82            [24] 1407 	mov	dpl,r7
      0024DB 8E 83            [24] 1408 	mov	dph,r6
      0024DD 8C F0            [24] 1409 	mov	b,r4
      0024DF 12 26 82         [24] 1410 	lcall	__gptrget
      0024E2 FA               [12] 1411 	mov	r2,a
      0024E3 60 10            [24] 1412 	jz	00136$
      0024E5 7D 00            [12] 1413 	mov	r5,#0x00
      0024E7 8A 82            [24] 1414 	mov	dpl,r2
      0024E9 8D 83            [24] 1415 	mov	dph,r5
      0024EB 12 20 AD         [24] 1416 	lcall	_putchar
      0024EE 0F               [12] 1417 	inc	r7
                                   1418 ;	disp.c:294: printstr("\r\n");
      0024EF BF 00 E7         [24] 1419 	cjne	r7,#0x00,00163$
      0024F2 0E               [12] 1420 	inc	r6
      0024F3 80 E4            [24] 1421 	sjmp	00163$
      0024F5                       1422 00136$:
                                   1423 ;	disp.c:295: printstr("MSG \"");
      0024F5 7F F7            [12] 1424 	mov	r7,#___str_6
      0024F7 7E 26            [12] 1425 	mov	r6,#(___str_6 >> 8)
      0024F9 7C 80            [12] 1426 	mov	r4,#0x80
                                   1427 ;	disp.c:48: return;
      0024FB                       1428 00166$:
                                   1429 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024FB 8F 82            [24] 1430 	mov	dpl,r7
      0024FD 8E 83            [24] 1431 	mov	dph,r6
      0024FF 8C F0            [24] 1432 	mov	b,r4
      002501 12 26 82         [24] 1433 	lcall	__gptrget
      002504 FA               [12] 1434 	mov	r2,a
      002505 60 10            [24] 1435 	jz	00138$
      002507 7D 00            [12] 1436 	mov	r5,#0x00
      002509 8A 82            [24] 1437 	mov	dpl,r2
      00250B 8D 83            [24] 1438 	mov	dph,r5
      00250D 12 20 AD         [24] 1439 	lcall	_putchar
      002510 0F               [12] 1440 	inc	r7
                                   1441 ;	disp.c:295: printstr("MSG \"");
      002511 BF 00 E7         [24] 1442 	cjne	r7,#0x00,00166$
      002514 0E               [12] 1443 	inc	r6
      002515 80 E4            [24] 1444 	sjmp	00166$
      002517                       1445 00138$:
                                   1446 ;	disp.c:296: printstr((char *)buf);
      002517 7F 00            [12] 1447 	mov	r7,#_buf
      002519 7E 80            [12] 1448 	mov	r6,#(_buf >> 8)
      00251B 7C 00            [12] 1449 	mov	r4,#0x00
                                   1450 ;	disp.c:48: return;
      00251D                       1451 00169$:
                                   1452 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00251D 8F 82            [24] 1453 	mov	dpl,r7
      00251F 8E 83            [24] 1454 	mov	dph,r6
      002521 8C F0            [24] 1455 	mov	b,r4
      002523 12 26 82         [24] 1456 	lcall	__gptrget
      002526 FA               [12] 1457 	mov	r2,a
      002527 60 10            [24] 1458 	jz	00140$
      002529 7D 00            [12] 1459 	mov	r5,#0x00
      00252B 8A 82            [24] 1460 	mov	dpl,r2
      00252D 8D 83            [24] 1461 	mov	dph,r5
      00252F 12 20 AD         [24] 1462 	lcall	_putchar
      002532 0F               [12] 1463 	inc	r7
                                   1464 ;	disp.c:296: printstr((char *)buf);
      002533 BF 00 E7         [24] 1465 	cjne	r7,#0x00,00169$
      002536 0E               [12] 1466 	inc	r6
      002537 80 E4            [24] 1467 	sjmp	00169$
      002539                       1468 00140$:
                                   1469 ;	disp.c:297: printstr("\"\r\n");
      002539 7F EA            [12] 1470 	mov	r7,#___str_3
      00253B 7E 26            [12] 1471 	mov	r6,#(___str_3 >> 8)
      00253D 7C 80            [12] 1472 	mov	r4,#0x80
                                   1473 ;	disp.c:48: return;
      00253F                       1474 00172$:
                                   1475 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00253F 8F 82            [24] 1476 	mov	dpl,r7
      002541 8E 83            [24] 1477 	mov	dph,r6
      002543 8C F0            [24] 1478 	mov	b,r4
      002545 12 26 82         [24] 1479 	lcall	__gptrget
      002548 FA               [12] 1480 	mov	r2,a
      002549 60 19            [24] 1481 	jz	00117$
      00254B 7D 00            [12] 1482 	mov	r5,#0x00
      00254D 8A 82            [24] 1483 	mov	dpl,r2
      00254F 8D 83            [24] 1484 	mov	dph,r5
      002551 12 20 AD         [24] 1485 	lcall	_putchar
      002554 0F               [12] 1486 	inc	r7
                                   1487 ;	disp.c:297: printstr("\"\r\n");
      002555 BF 00 E7         [24] 1488 	cjne	r7,#0x00,00172$
      002558 0E               [12] 1489 	inc	r6
      002559 80 E4            [24] 1490 	sjmp	00172$
      00255B                       1491 00110$:
                                   1492 ;	disp.c:298: } else if (c == (int)'S') break;
      00255B BE 53 06         [24] 1493 	cjne	r6,#0x53,00356$
      00255E BF 00 03         [24] 1494 	cjne	r7,#0x00,00356$
      002561 02 23 9B         [24] 1495 	ljmp	00122$
      002564                       1496 00356$:
      002564                       1497 00117$:
                                   1498 ;	disp.c:300: c = toupper(getchar());
      002564 12 20 B2         [24] 1499 	lcall	_getchar
      002567 12 25 A4         [24] 1500 	lcall	_toupper
      00256A AE 82            [24] 1501 	mov	r6,dpl
      00256C AF 83            [24] 1502 	mov	r7,dph
      00256E 02 24 0E         [24] 1503 	ljmp	00119$
                                   1504 ;	disp.c:304: term:	
      002571                       1505 00124$:
                                   1506 ;	disp.c:305: EA = 0;
                                   1507 ;	assignBit
      002571 C2 AF            [12] 1508 	clr	_EA
                                   1509 ;	disp.c:306: init_disp();
      002573 12 21 2C         [24] 1510 	lcall	_init_disp
                                   1511 ;	disp.c:307: printstr("TERM\r\n");
      002576 7D FD            [12] 1512 	mov	r5,#___str_7
      002578 7E 26            [12] 1513 	mov	r6,#(___str_7 >> 8)
      00257A 7F 80            [12] 1514 	mov	r7,#0x80
                                   1515 ;	disp.c:48: return;
      00257C                       1516 00175$:
                                   1517 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00257C 8D 82            [24] 1518 	mov	dpl,r5
      00257E 8E 83            [24] 1519 	mov	dph,r6
      002580 8F F0            [24] 1520 	mov	b,r7
      002582 12 26 82         [24] 1521 	lcall	__gptrget
      002585 FC               [12] 1522 	mov	r4,a
      002586 60 10            [24] 1523 	jz	00144$
      002588 7B 00            [12] 1524 	mov	r3,#0x00
      00258A 8C 82            [24] 1525 	mov	dpl,r4
      00258C 8B 83            [24] 1526 	mov	dph,r3
      00258E 12 20 AD         [24] 1527 	lcall	_putchar
      002591 0D               [12] 1528 	inc	r5
                                   1529 ;	disp.c:307: printstr("TERM\r\n");
      002592 BD 00 E7         [24] 1530 	cjne	r5,#0x00,00175$
      002595 0E               [12] 1531 	inc	r6
      002596 80 E4            [24] 1532 	sjmp	00175$
      002598                       1533 00144$:
                                   1534 ;	disp.c:308: (void)getchar();
      002598 12 20 B2         [24] 1535 	lcall	_getchar
                                   1536 ;	disp.c:310: PCON |= 2;
      00259B 43 87 02         [24] 1537 	orl	_PCON,#0x02
                                   1538 ;	disp.c:312: return;
                                   1539 ;	disp.c:313: }
      00259E 85 10 81         [24] 1540 	mov	sp,_bp
      0025A1 D0 10            [24] 1541 	pop	_bp
      0025A3 22               [24] 1542 	ret
                                   1543 	.area CSEG    (CODE)
                                   1544 	.area CONST   (CODE)
                                   1545 	.area CONST   (CODE)
      0026BD                       1546 ___str_0:
      0026BD 50 41 55 53 45        1547 	.ascii "PAUSE"
      0026C2 0D                    1548 	.db 0x0d
      0026C3 0A                    1549 	.db 0x0a
      0026C4 00                    1550 	.db 0x00
                                   1551 	.area CSEG    (CODE)
                                   1552 	.area CONST   (CODE)
      0026C5                       1553 ___str_1:
      0026C5 52 45 53 45 54        1554 	.ascii "RESET"
      0026CA 0D                    1555 	.db 0x0d
      0026CB 0A                    1556 	.db 0x0a
      0026CC 00                    1557 	.db 0x00
                                   1558 	.area CSEG    (CODE)
                                   1559 	.area CONST   (CODE)
      0026CD                       1560 ___str_2:
      0026CD 50 20 53 50 20 4C 20  1561 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      0026E8 22                    1562 	.db 0x22
      0026E9 00                    1563 	.db 0x00
                                   1564 	.area CSEG    (CODE)
                                   1565 	.area CONST   (CODE)
      0026EA                       1566 ___str_3:
      0026EA 22                    1567 	.db 0x22
      0026EB 0D                    1568 	.db 0x0d
      0026EC 0A                    1569 	.db 0x0a
      0026ED 00                    1570 	.db 0x00
                                   1571 	.area CSEG    (CODE)
                                   1572 	.area CONST   (CODE)
      0026EE                       1573 ___str_4:
      0026EE 4C 4F 41 44 20        1574 	.ascii "LOAD "
      0026F3 00                    1575 	.db 0x00
                                   1576 	.area CSEG    (CODE)
                                   1577 	.area CONST   (CODE)
      0026F4                       1578 ___str_5:
      0026F4 0D                    1579 	.db 0x0d
      0026F5 0A                    1580 	.db 0x0a
      0026F6 00                    1581 	.db 0x00
                                   1582 	.area CSEG    (CODE)
                                   1583 	.area CONST   (CODE)
      0026F7                       1584 ___str_6:
      0026F7 4D 53 47 20           1585 	.ascii "MSG "
      0026FB 22                    1586 	.db 0x22
      0026FC 00                    1587 	.db 0x00
                                   1588 	.area CSEG    (CODE)
                                   1589 	.area CONST   (CODE)
      0026FD                       1590 ___str_7:
      0026FD 54 45 52 4D           1591 	.ascii "TERM"
      002701 0D                    1592 	.db 0x0d
      002702 0A                    1593 	.db 0x0a
      002703 00                    1594 	.db 0x00
                                   1595 	.area CSEG    (CODE)
                                   1596 	.area CONST   (CODE)
      002704                       1597 ___str_8:
      002704 4A 65 64 65 6D 20 64  1598 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      002735 00                    1599 	.db 0x00
                                   1600 	.area CSEG    (CODE)
                                   1601 	.area XINIT   (CODE)
      002736                       1602 __xinit___ft_font6x8:
      002736 00                    1603 	.db #0x00	; 0
      002737 00                    1604 	.db #0x00	; 0
      002738 00                    1605 	.db #0x00	; 0
      002739 00                    1606 	.db #0x00	; 0
      00273A 00                    1607 	.db #0x00	; 0
      00273B 00                    1608 	.db #0x00	; 0
      00273C 00                    1609 	.db #0x00	; 0
      00273D 00                    1610 	.db #0x00	; 0
      00273E 1C                    1611 	.db #0x1c	; 28
      00273F 22                    1612 	.db #0x22	; 34
      002740 36                    1613 	.db #0x36	; 54	'6'
      002741 22                    1614 	.db #0x22	; 34
      002742 2A                    1615 	.db #0x2a	; 42
      002743 22                    1616 	.db #0x22	; 34
      002744 1C                    1617 	.db #0x1c	; 28
      002745 00                    1618 	.db #0x00	; 0
      002746 1C                    1619 	.db #0x1c	; 28
      002747 3E                    1620 	.db #0x3e	; 62
      002748 2A                    1621 	.db #0x2a	; 42
      002749 3E                    1622 	.db #0x3e	; 62
      00274A 22                    1623 	.db #0x22	; 34
      00274B 3E                    1624 	.db #0x3e	; 62
      00274C 1C                    1625 	.db #0x1c	; 28
      00274D 00                    1626 	.db #0x00	; 0
      00274E 00                    1627 	.db #0x00	; 0
      00274F 14                    1628 	.db #0x14	; 20
      002750 3E                    1629 	.db #0x3e	; 62
      002751 3E                    1630 	.db #0x3e	; 62
      002752 3E                    1631 	.db #0x3e	; 62
      002753 1C                    1632 	.db #0x1c	; 28
      002754 08                    1633 	.db #0x08	; 8
      002755 00                    1634 	.db #0x00	; 0
      002756 00                    1635 	.db #0x00	; 0
      002757 08                    1636 	.db #0x08	; 8
      002758 1C                    1637 	.db #0x1c	; 28
      002759 3E                    1638 	.db #0x3e	; 62
      00275A 3E                    1639 	.db #0x3e	; 62
      00275B 1C                    1640 	.db #0x1c	; 28
      00275C 08                    1641 	.db #0x08	; 8
      00275D 00                    1642 	.db #0x00	; 0
      00275E 08                    1643 	.db #0x08	; 8
      00275F 1C                    1644 	.db #0x1c	; 28
      002760 1C                    1645 	.db #0x1c	; 28
      002761 08                    1646 	.db #0x08	; 8
      002762 3E                    1647 	.db #0x3e	; 62
      002763 3E                    1648 	.db #0x3e	; 62
      002764 08                    1649 	.db #0x08	; 8
      002765 00                    1650 	.db #0x00	; 0
      002766 00                    1651 	.db #0x00	; 0
      002767 08                    1652 	.db #0x08	; 8
      002768 1C                    1653 	.db #0x1c	; 28
      002769 3E                    1654 	.db #0x3e	; 62
      00276A 3E                    1655 	.db #0x3e	; 62
      00276B 08                    1656 	.db #0x08	; 8
      00276C 1C                    1657 	.db #0x1c	; 28
      00276D 00                    1658 	.db #0x00	; 0
      00276E 00                    1659 	.db #0x00	; 0
      00276F 00                    1660 	.db #0x00	; 0
      002770 00                    1661 	.db #0x00	; 0
      002771 0C                    1662 	.db #0x0c	; 12
      002772 0C                    1663 	.db #0x0c	; 12
      002773 00                    1664 	.db #0x00	; 0
      002774 00                    1665 	.db #0x00	; 0
      002775 00                    1666 	.db #0x00	; 0
      002776 3F                    1667 	.db #0x3f	; 63
      002777 3F                    1668 	.db #0x3f	; 63
      002778 3F                    1669 	.db #0x3f	; 63
      002779 33                    1670 	.db #0x33	; 51	'3'
      00277A 33                    1671 	.db #0x33	; 51	'3'
      00277B 3F                    1672 	.db #0x3f	; 63
      00277C 3F                    1673 	.db #0x3f	; 63
      00277D 3F                    1674 	.db #0x3f	; 63
      00277E 00                    1675 	.db #0x00	; 0
      00277F 00                    1676 	.db #0x00	; 0
      002780 1E                    1677 	.db #0x1e	; 30
      002781 12                    1678 	.db #0x12	; 18
      002782 12                    1679 	.db #0x12	; 18
      002783 1E                    1680 	.db #0x1e	; 30
      002784 00                    1681 	.db #0x00	; 0
      002785 00                    1682 	.db #0x00	; 0
      002786 3F                    1683 	.db #0x3f	; 63
      002787 3F                    1684 	.db #0x3f	; 63
      002788 21                    1685 	.db #0x21	; 33
      002789 2D                    1686 	.db #0x2d	; 45
      00278A 2D                    1687 	.db #0x2d	; 45
      00278B 21                    1688 	.db #0x21	; 33
      00278C 3F                    1689 	.db #0x3f	; 63
      00278D 3F                    1690 	.db #0x3f	; 63
      00278E 00                    1691 	.db #0x00	; 0
      00278F 38                    1692 	.db #0x38	; 56	'8'
      002790 30                    1693 	.db #0x30	; 48	'0'
      002791 2C                    1694 	.db #0x2c	; 44
      002792 12                    1695 	.db #0x12	; 18
      002793 12                    1696 	.db #0x12	; 18
      002794 0C                    1697 	.db #0x0c	; 12
      002795 00                    1698 	.db #0x00	; 0
      002796 1C                    1699 	.db #0x1c	; 28
      002797 22                    1700 	.db #0x22	; 34
      002798 22                    1701 	.db #0x22	; 34
      002799 1C                    1702 	.db #0x1c	; 28
      00279A 08                    1703 	.db #0x08	; 8
      00279B 1C                    1704 	.db #0x1c	; 28
      00279C 08                    1705 	.db #0x08	; 8
      00279D 00                    1706 	.db #0x00	; 0
      00279E 08                    1707 	.db #0x08	; 8
      00279F 18                    1708 	.db #0x18	; 24
      0027A0 28                    1709 	.db #0x28	; 40
      0027A1 08                    1710 	.db #0x08	; 8
      0027A2 0C                    1711 	.db #0x0c	; 12
      0027A3 0E                    1712 	.db #0x0e	; 14
      0027A4 06                    1713 	.db #0x06	; 6
      0027A5 00                    1714 	.db #0x00	; 0
      0027A6 30                    1715 	.db #0x30	; 48	'0'
      0027A7 2C                    1716 	.db #0x2c	; 44
      0027A8 34                    1717 	.db #0x34	; 52	'4'
      0027A9 2C                    1718 	.db #0x2c	; 44
      0027AA 34                    1719 	.db #0x34	; 52	'4'
      0027AB 36                    1720 	.db #0x36	; 54	'6'
      0027AC 06                    1721 	.db #0x06	; 6
      0027AD 00                    1722 	.db #0x00	; 0
      0027AE 00                    1723 	.db #0x00	; 0
      0027AF 2A                    1724 	.db #0x2a	; 42
      0027B0 1C                    1725 	.db #0x1c	; 28
      0027B1 36                    1726 	.db #0x36	; 54	'6'
      0027B2 1C                    1727 	.db #0x1c	; 28
      0027B3 2A                    1728 	.db #0x2a	; 42
      0027B4 00                    1729 	.db #0x00	; 0
      0027B5 00                    1730 	.db #0x00	; 0
      0027B6 04                    1731 	.db #0x04	; 4
      0027B7 0C                    1732 	.db #0x0c	; 12
      0027B8 1C                    1733 	.db #0x1c	; 28
      0027B9 3C                    1734 	.db #0x3c	; 60
      0027BA 1C                    1735 	.db #0x1c	; 28
      0027BB 0C                    1736 	.db #0x0c	; 12
      0027BC 04                    1737 	.db #0x04	; 4
      0027BD 00                    1738 	.db #0x00	; 0
      0027BE 10                    1739 	.db #0x10	; 16
      0027BF 18                    1740 	.db #0x18	; 24
      0027C0 1C                    1741 	.db #0x1c	; 28
      0027C1 1E                    1742 	.db #0x1e	; 30
      0027C2 1C                    1743 	.db #0x1c	; 28
      0027C3 18                    1744 	.db #0x18	; 24
      0027C4 10                    1745 	.db #0x10	; 16
      0027C5 00                    1746 	.db #0x00	; 0
      0027C6 08                    1747 	.db #0x08	; 8
      0027C7 1C                    1748 	.db #0x1c	; 28
      0027C8 3E                    1749 	.db #0x3e	; 62
      0027C9 08                    1750 	.db #0x08	; 8
      0027CA 3E                    1751 	.db #0x3e	; 62
      0027CB 1C                    1752 	.db #0x1c	; 28
      0027CC 08                    1753 	.db #0x08	; 8
      0027CD 00                    1754 	.db #0x00	; 0
      0027CE 14                    1755 	.db #0x14	; 20
      0027CF 14                    1756 	.db #0x14	; 20
      0027D0 14                    1757 	.db #0x14	; 20
      0027D1 14                    1758 	.db #0x14	; 20
      0027D2 14                    1759 	.db #0x14	; 20
      0027D3 00                    1760 	.db #0x00	; 0
      0027D4 14                    1761 	.db #0x14	; 20
      0027D5 00                    1762 	.db #0x00	; 0
      0027D6 3C                    1763 	.db #0x3c	; 60
      0027D7 2A                    1764 	.db #0x2a	; 42
      0027D8 2A                    1765 	.db #0x2a	; 42
      0027D9 2C                    1766 	.db #0x2c	; 44
      0027DA 28                    1767 	.db #0x28	; 40
      0027DB 28                    1768 	.db #0x28	; 40
      0027DC 28                    1769 	.db #0x28	; 40
      0027DD 00                    1770 	.db #0x00	; 0
      0027DE 1C                    1771 	.db #0x1c	; 28
      0027DF 22                    1772 	.db #0x22	; 34
      0027E0 0C                    1773 	.db #0x0c	; 12
      0027E1 14                    1774 	.db #0x14	; 20
      0027E2 18                    1775 	.db #0x18	; 24
      0027E3 22                    1776 	.db #0x22	; 34
      0027E4 1C                    1777 	.db #0x1c	; 28
      0027E5 00                    1778 	.db #0x00	; 0
      0027E6 00                    1779 	.db #0x00	; 0
      0027E7 00                    1780 	.db #0x00	; 0
      0027E8 00                    1781 	.db #0x00	; 0
      0027E9 00                    1782 	.db #0x00	; 0
      0027EA 00                    1783 	.db #0x00	; 0
      0027EB 1E                    1784 	.db #0x1e	; 30
      0027EC 1E                    1785 	.db #0x1e	; 30
      0027ED 00                    1786 	.db #0x00	; 0
      0027EE 08                    1787 	.db #0x08	; 8
      0027EF 1C                    1788 	.db #0x1c	; 28
      0027F0 3E                    1789 	.db #0x3e	; 62
      0027F1 08                    1790 	.db #0x08	; 8
      0027F2 3E                    1791 	.db #0x3e	; 62
      0027F3 1C                    1792 	.db #0x1c	; 28
      0027F4 08                    1793 	.db #0x08	; 8
      0027F5 1C                    1794 	.db #0x1c	; 28
      0027F6 08                    1795 	.db #0x08	; 8
      0027F7 1C                    1796 	.db #0x1c	; 28
      0027F8 3E                    1797 	.db #0x3e	; 62
      0027F9 08                    1798 	.db #0x08	; 8
      0027FA 08                    1799 	.db #0x08	; 8
      0027FB 08                    1800 	.db #0x08	; 8
      0027FC 08                    1801 	.db #0x08	; 8
      0027FD 00                    1802 	.db #0x00	; 0
      0027FE 08                    1803 	.db #0x08	; 8
      0027FF 08                    1804 	.db #0x08	; 8
      002800 08                    1805 	.db #0x08	; 8
      002801 08                    1806 	.db #0x08	; 8
      002802 3E                    1807 	.db #0x3e	; 62
      002803 1C                    1808 	.db #0x1c	; 28
      002804 08                    1809 	.db #0x08	; 8
      002805 00                    1810 	.db #0x00	; 0
      002806 00                    1811 	.db #0x00	; 0
      002807 08                    1812 	.db #0x08	; 8
      002808 18                    1813 	.db #0x18	; 24
      002809 3E                    1814 	.db #0x3e	; 62
      00280A 18                    1815 	.db #0x18	; 24
      00280B 08                    1816 	.db #0x08	; 8
      00280C 00                    1817 	.db #0x00	; 0
      00280D 00                    1818 	.db #0x00	; 0
      00280E 00                    1819 	.db #0x00	; 0
      00280F 08                    1820 	.db #0x08	; 8
      002810 0C                    1821 	.db #0x0c	; 12
      002811 3E                    1822 	.db #0x3e	; 62
      002812 0C                    1823 	.db #0x0c	; 12
      002813 08                    1824 	.db #0x08	; 8
      002814 00                    1825 	.db #0x00	; 0
      002815 00                    1826 	.db #0x00	; 0
      002816 00                    1827 	.db #0x00	; 0
      002817 00                    1828 	.db #0x00	; 0
      002818 00                    1829 	.db #0x00	; 0
      002819 02                    1830 	.db #0x02	; 2
      00281A 02                    1831 	.db #0x02	; 2
      00281B 02                    1832 	.db #0x02	; 2
      00281C 3E                    1833 	.db #0x3e	; 62
      00281D 00                    1834 	.db #0x00	; 0
      00281E 00                    1835 	.db #0x00	; 0
      00281F 14                    1836 	.db #0x14	; 20
      002820 14                    1837 	.db #0x14	; 20
      002821 3E                    1838 	.db #0x3e	; 62
      002822 14                    1839 	.db #0x14	; 20
      002823 14                    1840 	.db #0x14	; 20
      002824 00                    1841 	.db #0x00	; 0
      002825 00                    1842 	.db #0x00	; 0
      002826 08                    1843 	.db #0x08	; 8
      002827 08                    1844 	.db #0x08	; 8
      002828 1C                    1845 	.db #0x1c	; 28
      002829 1C                    1846 	.db #0x1c	; 28
      00282A 3E                    1847 	.db #0x3e	; 62
      00282B 3E                    1848 	.db #0x3e	; 62
      00282C 00                    1849 	.db #0x00	; 0
      00282D 00                    1850 	.db #0x00	; 0
      00282E 3E                    1851 	.db #0x3e	; 62
      00282F 3E                    1852 	.db #0x3e	; 62
      002830 1C                    1853 	.db #0x1c	; 28
      002831 1C                    1854 	.db #0x1c	; 28
      002832 08                    1855 	.db #0x08	; 8
      002833 08                    1856 	.db #0x08	; 8
      002834 00                    1857 	.db #0x00	; 0
      002835 00                    1858 	.db #0x00	; 0
      002836 00                    1859 	.db #0x00	; 0
      002837 00                    1860 	.db #0x00	; 0
      002838 00                    1861 	.db #0x00	; 0
      002839 00                    1862 	.db #0x00	; 0
      00283A 00                    1863 	.db #0x00	; 0
      00283B 00                    1864 	.db #0x00	; 0
      00283C 00                    1865 	.db #0x00	; 0
      00283D 00                    1866 	.db #0x00	; 0
      00283E 08                    1867 	.db #0x08	; 8
      00283F 1C                    1868 	.db #0x1c	; 28
      002840 1C                    1869 	.db #0x1c	; 28
      002841 08                    1870 	.db #0x08	; 8
      002842 08                    1871 	.db #0x08	; 8
      002843 00                    1872 	.db #0x00	; 0
      002844 08                    1873 	.db #0x08	; 8
      002845 00                    1874 	.db #0x00	; 0
      002846 36                    1875 	.db #0x36	; 54	'6'
      002847 36                    1876 	.db #0x36	; 54	'6'
      002848 12                    1877 	.db #0x12	; 18
      002849 00                    1878 	.db #0x00	; 0
      00284A 00                    1879 	.db #0x00	; 0
      00284B 00                    1880 	.db #0x00	; 0
      00284C 00                    1881 	.db #0x00	; 0
      00284D 00                    1882 	.db #0x00	; 0
      00284E 00                    1883 	.db #0x00	; 0
      00284F 14                    1884 	.db #0x14	; 20
      002850 3E                    1885 	.db #0x3e	; 62
      002851 14                    1886 	.db #0x14	; 20
      002852 14                    1887 	.db #0x14	; 20
      002853 3E                    1888 	.db #0x3e	; 62
      002854 14                    1889 	.db #0x14	; 20
      002855 00                    1890 	.db #0x00	; 0
      002856 04                    1891 	.db #0x04	; 4
      002857 1C                    1892 	.db #0x1c	; 28
      002858 02                    1893 	.db #0x02	; 2
      002859 0C                    1894 	.db #0x0c	; 12
      00285A 10                    1895 	.db #0x10	; 16
      00285B 0E                    1896 	.db #0x0e	; 14
      00285C 08                    1897 	.db #0x08	; 8
      00285D 00                    1898 	.db #0x00	; 0
      00285E 26                    1899 	.db #0x26	; 38
      00285F 26                    1900 	.db #0x26	; 38
      002860 10                    1901 	.db #0x10	; 16
      002861 08                    1902 	.db #0x08	; 8
      002862 04                    1903 	.db #0x04	; 4
      002863 32                    1904 	.db #0x32	; 50	'2'
      002864 32                    1905 	.db #0x32	; 50	'2'
      002865 00                    1906 	.db #0x00	; 0
      002866 04                    1907 	.db #0x04	; 4
      002867 0A                    1908 	.db #0x0a	; 10
      002868 0A                    1909 	.db #0x0a	; 10
      002869 04                    1910 	.db #0x04	; 4
      00286A 2A                    1911 	.db #0x2a	; 42
      00286B 12                    1912 	.db #0x12	; 18
      00286C 2C                    1913 	.db #0x2c	; 44
      00286D 00                    1914 	.db #0x00	; 0
      00286E 0C                    1915 	.db #0x0c	; 12
      00286F 0C                    1916 	.db #0x0c	; 12
      002870 04                    1917 	.db #0x04	; 4
      002871 00                    1918 	.db #0x00	; 0
      002872 00                    1919 	.db #0x00	; 0
      002873 00                    1920 	.db #0x00	; 0
      002874 00                    1921 	.db #0x00	; 0
      002875 00                    1922 	.db #0x00	; 0
      002876 08                    1923 	.db #0x08	; 8
      002877 04                    1924 	.db #0x04	; 4
      002878 04                    1925 	.db #0x04	; 4
      002879 04                    1926 	.db #0x04	; 4
      00287A 04                    1927 	.db #0x04	; 4
      00287B 04                    1928 	.db #0x04	; 4
      00287C 08                    1929 	.db #0x08	; 8
      00287D 00                    1930 	.db #0x00	; 0
      00287E 04                    1931 	.db #0x04	; 4
      00287F 08                    1932 	.db #0x08	; 8
      002880 08                    1933 	.db #0x08	; 8
      002881 08                    1934 	.db #0x08	; 8
      002882 08                    1935 	.db #0x08	; 8
      002883 08                    1936 	.db #0x08	; 8
      002884 04                    1937 	.db #0x04	; 4
      002885 00                    1938 	.db #0x00	; 0
      002886 00                    1939 	.db #0x00	; 0
      002887 14                    1940 	.db #0x14	; 20
      002888 1C                    1941 	.db #0x1c	; 28
      002889 3E                    1942 	.db #0x3e	; 62
      00288A 1C                    1943 	.db #0x1c	; 28
      00288B 14                    1944 	.db #0x14	; 20
      00288C 00                    1945 	.db #0x00	; 0
      00288D 00                    1946 	.db #0x00	; 0
      00288E 00                    1947 	.db #0x00	; 0
      00288F 08                    1948 	.db #0x08	; 8
      002890 08                    1949 	.db #0x08	; 8
      002891 3E                    1950 	.db #0x3e	; 62
      002892 08                    1951 	.db #0x08	; 8
      002893 08                    1952 	.db #0x08	; 8
      002894 00                    1953 	.db #0x00	; 0
      002895 00                    1954 	.db #0x00	; 0
      002896 00                    1955 	.db #0x00	; 0
      002897 00                    1956 	.db #0x00	; 0
      002898 00                    1957 	.db #0x00	; 0
      002899 00                    1958 	.db #0x00	; 0
      00289A 00                    1959 	.db #0x00	; 0
      00289B 0C                    1960 	.db #0x0c	; 12
      00289C 0C                    1961 	.db #0x0c	; 12
      00289D 04                    1962 	.db #0x04	; 4
      00289E 00                    1963 	.db #0x00	; 0
      00289F 00                    1964 	.db #0x00	; 0
      0028A0 00                    1965 	.db #0x00	; 0
      0028A1 3E                    1966 	.db #0x3e	; 62
      0028A2 00                    1967 	.db #0x00	; 0
      0028A3 00                    1968 	.db #0x00	; 0
      0028A4 00                    1969 	.db #0x00	; 0
      0028A5 00                    1970 	.db #0x00	; 0
      0028A6 00                    1971 	.db #0x00	; 0
      0028A7 00                    1972 	.db #0x00	; 0
      0028A8 00                    1973 	.db #0x00	; 0
      0028A9 00                    1974 	.db #0x00	; 0
      0028AA 00                    1975 	.db #0x00	; 0
      0028AB 0C                    1976 	.db #0x0c	; 12
      0028AC 0C                    1977 	.db #0x0c	; 12
      0028AD 00                    1978 	.db #0x00	; 0
      0028AE 00                    1979 	.db #0x00	; 0
      0028AF 20                    1980 	.db #0x20	; 32
      0028B0 10                    1981 	.db #0x10	; 16
      0028B1 08                    1982 	.db #0x08	; 8
      0028B2 04                    1983 	.db #0x04	; 4
      0028B3 02                    1984 	.db #0x02	; 2
      0028B4 00                    1985 	.db #0x00	; 0
      0028B5 00                    1986 	.db #0x00	; 0
      0028B6 1C                    1987 	.db #0x1c	; 28
      0028B7 22                    1988 	.db #0x22	; 34
      0028B8 32                    1989 	.db #0x32	; 50	'2'
      0028B9 2A                    1990 	.db #0x2a	; 42
      0028BA 26                    1991 	.db #0x26	; 38
      0028BB 22                    1992 	.db #0x22	; 34
      0028BC 1C                    1993 	.db #0x1c	; 28
      0028BD 00                    1994 	.db #0x00	; 0
      0028BE 08                    1995 	.db #0x08	; 8
      0028BF 0C                    1996 	.db #0x0c	; 12
      0028C0 08                    1997 	.db #0x08	; 8
      0028C1 08                    1998 	.db #0x08	; 8
      0028C2 08                    1999 	.db #0x08	; 8
      0028C3 08                    2000 	.db #0x08	; 8
      0028C4 1C                    2001 	.db #0x1c	; 28
      0028C5 00                    2002 	.db #0x00	; 0
      0028C6 1C                    2003 	.db #0x1c	; 28
      0028C7 22                    2004 	.db #0x22	; 34
      0028C8 20                    2005 	.db #0x20	; 32
      0028C9 18                    2006 	.db #0x18	; 24
      0028CA 04                    2007 	.db #0x04	; 4
      0028CB 02                    2008 	.db #0x02	; 2
      0028CC 3E                    2009 	.db #0x3e	; 62
      0028CD 00                    2010 	.db #0x00	; 0
      0028CE 1C                    2011 	.db #0x1c	; 28
      0028CF 22                    2012 	.db #0x22	; 34
      0028D0 20                    2013 	.db #0x20	; 32
      0028D1 1C                    2014 	.db #0x1c	; 28
      0028D2 20                    2015 	.db #0x20	; 32
      0028D3 22                    2016 	.db #0x22	; 34
      0028D4 1C                    2017 	.db #0x1c	; 28
      0028D5 00                    2018 	.db #0x00	; 0
      0028D6 10                    2019 	.db #0x10	; 16
      0028D7 18                    2020 	.db #0x18	; 24
      0028D8 14                    2021 	.db #0x14	; 20
      0028D9 12                    2022 	.db #0x12	; 18
      0028DA 3E                    2023 	.db #0x3e	; 62
      0028DB 10                    2024 	.db #0x10	; 16
      0028DC 10                    2025 	.db #0x10	; 16
      0028DD 00                    2026 	.db #0x00	; 0
      0028DE 3E                    2027 	.db #0x3e	; 62
      0028DF 02                    2028 	.db #0x02	; 2
      0028E0 02                    2029 	.db #0x02	; 2
      0028E1 1E                    2030 	.db #0x1e	; 30
      0028E2 20                    2031 	.db #0x20	; 32
      0028E3 22                    2032 	.db #0x22	; 34
      0028E4 1C                    2033 	.db #0x1c	; 28
      0028E5 00                    2034 	.db #0x00	; 0
      0028E6 18                    2035 	.db #0x18	; 24
      0028E7 04                    2036 	.db #0x04	; 4
      0028E8 02                    2037 	.db #0x02	; 2
      0028E9 1E                    2038 	.db #0x1e	; 30
      0028EA 22                    2039 	.db #0x22	; 34
      0028EB 22                    2040 	.db #0x22	; 34
      0028EC 1C                    2041 	.db #0x1c	; 28
      0028ED 00                    2042 	.db #0x00	; 0
      0028EE 3E                    2043 	.db #0x3e	; 62
      0028EF 20                    2044 	.db #0x20	; 32
      0028F0 10                    2045 	.db #0x10	; 16
      0028F1 08                    2046 	.db #0x08	; 8
      0028F2 04                    2047 	.db #0x04	; 4
      0028F3 04                    2048 	.db #0x04	; 4
      0028F4 04                    2049 	.db #0x04	; 4
      0028F5 00                    2050 	.db #0x00	; 0
      0028F6 1C                    2051 	.db #0x1c	; 28
      0028F7 22                    2052 	.db #0x22	; 34
      0028F8 22                    2053 	.db #0x22	; 34
      0028F9 1C                    2054 	.db #0x1c	; 28
      0028FA 22                    2055 	.db #0x22	; 34
      0028FB 22                    2056 	.db #0x22	; 34
      0028FC 1C                    2057 	.db #0x1c	; 28
      0028FD 00                    2058 	.db #0x00	; 0
      0028FE 1C                    2059 	.db #0x1c	; 28
      0028FF 22                    2060 	.db #0x22	; 34
      002900 22                    2061 	.db #0x22	; 34
      002901 3C                    2062 	.db #0x3c	; 60
      002902 20                    2063 	.db #0x20	; 32
      002903 10                    2064 	.db #0x10	; 16
      002904 0C                    2065 	.db #0x0c	; 12
      002905 00                    2066 	.db #0x00	; 0
      002906 00                    2067 	.db #0x00	; 0
      002907 00                    2068 	.db #0x00	; 0
      002908 0C                    2069 	.db #0x0c	; 12
      002909 0C                    2070 	.db #0x0c	; 12
      00290A 00                    2071 	.db #0x00	; 0
      00290B 0C                    2072 	.db #0x0c	; 12
      00290C 0C                    2073 	.db #0x0c	; 12
      00290D 00                    2074 	.db #0x00	; 0
      00290E 00                    2075 	.db #0x00	; 0
      00290F 00                    2076 	.db #0x00	; 0
      002910 0C                    2077 	.db #0x0c	; 12
      002911 0C                    2078 	.db #0x0c	; 12
      002912 00                    2079 	.db #0x00	; 0
      002913 0C                    2080 	.db #0x0c	; 12
      002914 0C                    2081 	.db #0x0c	; 12
      002915 04                    2082 	.db #0x04	; 4
      002916 10                    2083 	.db #0x10	; 16
      002917 08                    2084 	.db #0x08	; 8
      002918 04                    2085 	.db #0x04	; 4
      002919 02                    2086 	.db #0x02	; 2
      00291A 04                    2087 	.db #0x04	; 4
      00291B 08                    2088 	.db #0x08	; 8
      00291C 10                    2089 	.db #0x10	; 16
      00291D 00                    2090 	.db #0x00	; 0
      00291E 00                    2091 	.db #0x00	; 0
      00291F 00                    2092 	.db #0x00	; 0
      002920 3E                    2093 	.db #0x3e	; 62
      002921 00                    2094 	.db #0x00	; 0
      002922 00                    2095 	.db #0x00	; 0
      002923 3E                    2096 	.db #0x3e	; 62
      002924 00                    2097 	.db #0x00	; 0
      002925 00                    2098 	.db #0x00	; 0
      002926 04                    2099 	.db #0x04	; 4
      002927 08                    2100 	.db #0x08	; 8
      002928 10                    2101 	.db #0x10	; 16
      002929 20                    2102 	.db #0x20	; 32
      00292A 10                    2103 	.db #0x10	; 16
      00292B 08                    2104 	.db #0x08	; 8
      00292C 04                    2105 	.db #0x04	; 4
      00292D 00                    2106 	.db #0x00	; 0
      00292E 1C                    2107 	.db #0x1c	; 28
      00292F 22                    2108 	.db #0x22	; 34
      002930 20                    2109 	.db #0x20	; 32
      002931 18                    2110 	.db #0x18	; 24
      002932 08                    2111 	.db #0x08	; 8
      002933 00                    2112 	.db #0x00	; 0
      002934 08                    2113 	.db #0x08	; 8
      002935 00                    2114 	.db #0x00	; 0
      002936 1C                    2115 	.db #0x1c	; 28
      002937 22                    2116 	.db #0x22	; 34
      002938 3A                    2117 	.db #0x3a	; 58
      002939 2A                    2118 	.db #0x2a	; 42
      00293A 3A                    2119 	.db #0x3a	; 58
      00293B 02                    2120 	.db #0x02	; 2
      00293C 1C                    2121 	.db #0x1c	; 28
      00293D 00                    2122 	.db #0x00	; 0
      00293E 1C                    2123 	.db #0x1c	; 28
      00293F 22                    2124 	.db #0x22	; 34
      002940 22                    2125 	.db #0x22	; 34
      002941 22                    2126 	.db #0x22	; 34
      002942 3E                    2127 	.db #0x3e	; 62
      002943 22                    2128 	.db #0x22	; 34
      002944 22                    2129 	.db #0x22	; 34
      002945 00                    2130 	.db #0x00	; 0
      002946 1E                    2131 	.db #0x1e	; 30
      002947 22                    2132 	.db #0x22	; 34
      002948 22                    2133 	.db #0x22	; 34
      002949 1E                    2134 	.db #0x1e	; 30
      00294A 22                    2135 	.db #0x22	; 34
      00294B 22                    2136 	.db #0x22	; 34
      00294C 1E                    2137 	.db #0x1e	; 30
      00294D 00                    2138 	.db #0x00	; 0
      00294E 1C                    2139 	.db #0x1c	; 28
      00294F 22                    2140 	.db #0x22	; 34
      002950 02                    2141 	.db #0x02	; 2
      002951 02                    2142 	.db #0x02	; 2
      002952 02                    2143 	.db #0x02	; 2
      002953 22                    2144 	.db #0x22	; 34
      002954 1C                    2145 	.db #0x1c	; 28
      002955 00                    2146 	.db #0x00	; 0
      002956 1E                    2147 	.db #0x1e	; 30
      002957 22                    2148 	.db #0x22	; 34
      002958 22                    2149 	.db #0x22	; 34
      002959 22                    2150 	.db #0x22	; 34
      00295A 22                    2151 	.db #0x22	; 34
      00295B 22                    2152 	.db #0x22	; 34
      00295C 1E                    2153 	.db #0x1e	; 30
      00295D 00                    2154 	.db #0x00	; 0
      00295E 3E                    2155 	.db #0x3e	; 62
      00295F 02                    2156 	.db #0x02	; 2
      002960 02                    2157 	.db #0x02	; 2
      002961 1E                    2158 	.db #0x1e	; 30
      002962 02                    2159 	.db #0x02	; 2
      002963 02                    2160 	.db #0x02	; 2
      002964 3E                    2161 	.db #0x3e	; 62
      002965 00                    2162 	.db #0x00	; 0
      002966 3E                    2163 	.db #0x3e	; 62
      002967 02                    2164 	.db #0x02	; 2
      002968 02                    2165 	.db #0x02	; 2
      002969 1E                    2166 	.db #0x1e	; 30
      00296A 02                    2167 	.db #0x02	; 2
      00296B 02                    2168 	.db #0x02	; 2
      00296C 02                    2169 	.db #0x02	; 2
      00296D 00                    2170 	.db #0x00	; 0
      00296E 1C                    2171 	.db #0x1c	; 28
      00296F 22                    2172 	.db #0x22	; 34
      002970 02                    2173 	.db #0x02	; 2
      002971 3A                    2174 	.db #0x3a	; 58
      002972 22                    2175 	.db #0x22	; 34
      002973 22                    2176 	.db #0x22	; 34
      002974 3C                    2177 	.db #0x3c	; 60
      002975 00                    2178 	.db #0x00	; 0
      002976 22                    2179 	.db #0x22	; 34
      002977 22                    2180 	.db #0x22	; 34
      002978 22                    2181 	.db #0x22	; 34
      002979 3E                    2182 	.db #0x3e	; 62
      00297A 22                    2183 	.db #0x22	; 34
      00297B 22                    2184 	.db #0x22	; 34
      00297C 22                    2185 	.db #0x22	; 34
      00297D 00                    2186 	.db #0x00	; 0
      00297E 1C                    2187 	.db #0x1c	; 28
      00297F 08                    2188 	.db #0x08	; 8
      002980 08                    2189 	.db #0x08	; 8
      002981 08                    2190 	.db #0x08	; 8
      002982 08                    2191 	.db #0x08	; 8
      002983 08                    2192 	.db #0x08	; 8
      002984 1C                    2193 	.db #0x1c	; 28
      002985 00                    2194 	.db #0x00	; 0
      002986 20                    2195 	.db #0x20	; 32
      002987 20                    2196 	.db #0x20	; 32
      002988 20                    2197 	.db #0x20	; 32
      002989 20                    2198 	.db #0x20	; 32
      00298A 22                    2199 	.db #0x22	; 34
      00298B 22                    2200 	.db #0x22	; 34
      00298C 1C                    2201 	.db #0x1c	; 28
      00298D 00                    2202 	.db #0x00	; 0
      00298E 22                    2203 	.db #0x22	; 34
      00298F 12                    2204 	.db #0x12	; 18
      002990 0A                    2205 	.db #0x0a	; 10
      002991 06                    2206 	.db #0x06	; 6
      002992 0A                    2207 	.db #0x0a	; 10
      002993 12                    2208 	.db #0x12	; 18
      002994 22                    2209 	.db #0x22	; 34
      002995 00                    2210 	.db #0x00	; 0
      002996 02                    2211 	.db #0x02	; 2
      002997 02                    2212 	.db #0x02	; 2
      002998 02                    2213 	.db #0x02	; 2
      002999 02                    2214 	.db #0x02	; 2
      00299A 02                    2215 	.db #0x02	; 2
      00299B 02                    2216 	.db #0x02	; 2
      00299C 3E                    2217 	.db #0x3e	; 62
      00299D 00                    2218 	.db #0x00	; 0
      00299E 22                    2219 	.db #0x22	; 34
      00299F 36                    2220 	.db #0x36	; 54	'6'
      0029A0 2A                    2221 	.db #0x2a	; 42
      0029A1 22                    2222 	.db #0x22	; 34
      0029A2 22                    2223 	.db #0x22	; 34
      0029A3 22                    2224 	.db #0x22	; 34
      0029A4 22                    2225 	.db #0x22	; 34
      0029A5 00                    2226 	.db #0x00	; 0
      0029A6 22                    2227 	.db #0x22	; 34
      0029A7 26                    2228 	.db #0x26	; 38
      0029A8 2A                    2229 	.db #0x2a	; 42
      0029A9 32                    2230 	.db #0x32	; 50	'2'
      0029AA 22                    2231 	.db #0x22	; 34
      0029AB 22                    2232 	.db #0x22	; 34
      0029AC 22                    2233 	.db #0x22	; 34
      0029AD 00                    2234 	.db #0x00	; 0
      0029AE 1C                    2235 	.db #0x1c	; 28
      0029AF 22                    2236 	.db #0x22	; 34
      0029B0 22                    2237 	.db #0x22	; 34
      0029B1 22                    2238 	.db #0x22	; 34
      0029B2 22                    2239 	.db #0x22	; 34
      0029B3 22                    2240 	.db #0x22	; 34
      0029B4 1C                    2241 	.db #0x1c	; 28
      0029B5 00                    2242 	.db #0x00	; 0
      0029B6 1E                    2243 	.db #0x1e	; 30
      0029B7 22                    2244 	.db #0x22	; 34
      0029B8 22                    2245 	.db #0x22	; 34
      0029B9 1E                    2246 	.db #0x1e	; 30
      0029BA 02                    2247 	.db #0x02	; 2
      0029BB 02                    2248 	.db #0x02	; 2
      0029BC 02                    2249 	.db #0x02	; 2
      0029BD 00                    2250 	.db #0x00	; 0
      0029BE 1C                    2251 	.db #0x1c	; 28
      0029BF 22                    2252 	.db #0x22	; 34
      0029C0 22                    2253 	.db #0x22	; 34
      0029C1 22                    2254 	.db #0x22	; 34
      0029C2 2A                    2255 	.db #0x2a	; 42
      0029C3 12                    2256 	.db #0x12	; 18
      0029C4 2C                    2257 	.db #0x2c	; 44
      0029C5 00                    2258 	.db #0x00	; 0
      0029C6 1E                    2259 	.db #0x1e	; 30
      0029C7 22                    2260 	.db #0x22	; 34
      0029C8 22                    2261 	.db #0x22	; 34
      0029C9 1E                    2262 	.db #0x1e	; 30
      0029CA 12                    2263 	.db #0x12	; 18
      0029CB 22                    2264 	.db #0x22	; 34
      0029CC 22                    2265 	.db #0x22	; 34
      0029CD 00                    2266 	.db #0x00	; 0
      0029CE 1C                    2267 	.db #0x1c	; 28
      0029CF 22                    2268 	.db #0x22	; 34
      0029D0 02                    2269 	.db #0x02	; 2
      0029D1 1C                    2270 	.db #0x1c	; 28
      0029D2 20                    2271 	.db #0x20	; 32
      0029D3 22                    2272 	.db #0x22	; 34
      0029D4 1C                    2273 	.db #0x1c	; 28
      0029D5 00                    2274 	.db #0x00	; 0
      0029D6 3E                    2275 	.db #0x3e	; 62
      0029D7 08                    2276 	.db #0x08	; 8
      0029D8 08                    2277 	.db #0x08	; 8
      0029D9 08                    2278 	.db #0x08	; 8
      0029DA 08                    2279 	.db #0x08	; 8
      0029DB 08                    2280 	.db #0x08	; 8
      0029DC 08                    2281 	.db #0x08	; 8
      0029DD 00                    2282 	.db #0x00	; 0
      0029DE 22                    2283 	.db #0x22	; 34
      0029DF 22                    2284 	.db #0x22	; 34
      0029E0 22                    2285 	.db #0x22	; 34
      0029E1 22                    2286 	.db #0x22	; 34
      0029E2 22                    2287 	.db #0x22	; 34
      0029E3 22                    2288 	.db #0x22	; 34
      0029E4 1C                    2289 	.db #0x1c	; 28
      0029E5 00                    2290 	.db #0x00	; 0
      0029E6 22                    2291 	.db #0x22	; 34
      0029E7 22                    2292 	.db #0x22	; 34
      0029E8 22                    2293 	.db #0x22	; 34
      0029E9 22                    2294 	.db #0x22	; 34
      0029EA 22                    2295 	.db #0x22	; 34
      0029EB 14                    2296 	.db #0x14	; 20
      0029EC 08                    2297 	.db #0x08	; 8
      0029ED 00                    2298 	.db #0x00	; 0
      0029EE 22                    2299 	.db #0x22	; 34
      0029EF 22                    2300 	.db #0x22	; 34
      0029F0 2A                    2301 	.db #0x2a	; 42
      0029F1 2A                    2302 	.db #0x2a	; 42
      0029F2 2A                    2303 	.db #0x2a	; 42
      0029F3 2A                    2304 	.db #0x2a	; 42
      0029F4 14                    2305 	.db #0x14	; 20
      0029F5 00                    2306 	.db #0x00	; 0
      0029F6 22                    2307 	.db #0x22	; 34
      0029F7 22                    2308 	.db #0x22	; 34
      0029F8 14                    2309 	.db #0x14	; 20
      0029F9 08                    2310 	.db #0x08	; 8
      0029FA 14                    2311 	.db #0x14	; 20
      0029FB 22                    2312 	.db #0x22	; 34
      0029FC 22                    2313 	.db #0x22	; 34
      0029FD 00                    2314 	.db #0x00	; 0
      0029FE 22                    2315 	.db #0x22	; 34
      0029FF 22                    2316 	.db #0x22	; 34
      002A00 22                    2317 	.db #0x22	; 34
      002A01 14                    2318 	.db #0x14	; 20
      002A02 08                    2319 	.db #0x08	; 8
      002A03 08                    2320 	.db #0x08	; 8
      002A04 08                    2321 	.db #0x08	; 8
      002A05 00                    2322 	.db #0x00	; 0
      002A06 1E                    2323 	.db #0x1e	; 30
      002A07 10                    2324 	.db #0x10	; 16
      002A08 08                    2325 	.db #0x08	; 8
      002A09 04                    2326 	.db #0x04	; 4
      002A0A 02                    2327 	.db #0x02	; 2
      002A0B 02                    2328 	.db #0x02	; 2
      002A0C 1E                    2329 	.db #0x1e	; 30
      002A0D 00                    2330 	.db #0x00	; 0
      002A0E 1C                    2331 	.db #0x1c	; 28
      002A0F 04                    2332 	.db #0x04	; 4
      002A10 04                    2333 	.db #0x04	; 4
      002A11 04                    2334 	.db #0x04	; 4
      002A12 04                    2335 	.db #0x04	; 4
      002A13 04                    2336 	.db #0x04	; 4
      002A14 1C                    2337 	.db #0x1c	; 28
      002A15 00                    2338 	.db #0x00	; 0
      002A16 00                    2339 	.db #0x00	; 0
      002A17 02                    2340 	.db #0x02	; 2
      002A18 04                    2341 	.db #0x04	; 4
      002A19 08                    2342 	.db #0x08	; 8
      002A1A 10                    2343 	.db #0x10	; 16
      002A1B 20                    2344 	.db #0x20	; 32
      002A1C 00                    2345 	.db #0x00	; 0
      002A1D 00                    2346 	.db #0x00	; 0
      002A1E 1C                    2347 	.db #0x1c	; 28
      002A1F 10                    2348 	.db #0x10	; 16
      002A20 10                    2349 	.db #0x10	; 16
      002A21 10                    2350 	.db #0x10	; 16
      002A22 10                    2351 	.db #0x10	; 16
      002A23 10                    2352 	.db #0x10	; 16
      002A24 1C                    2353 	.db #0x1c	; 28
      002A25 00                    2354 	.db #0x00	; 0
      002A26 08                    2355 	.db #0x08	; 8
      002A27 14                    2356 	.db #0x14	; 20
      002A28 22                    2357 	.db #0x22	; 34
      002A29 00                    2358 	.db #0x00	; 0
      002A2A 00                    2359 	.db #0x00	; 0
      002A2B 00                    2360 	.db #0x00	; 0
      002A2C 00                    2361 	.db #0x00	; 0
      002A2D 00                    2362 	.db #0x00	; 0
      002A2E 00                    2363 	.db #0x00	; 0
      002A2F 00                    2364 	.db #0x00	; 0
      002A30 00                    2365 	.db #0x00	; 0
      002A31 00                    2366 	.db #0x00	; 0
      002A32 00                    2367 	.db #0x00	; 0
      002A33 00                    2368 	.db #0x00	; 0
      002A34 00                    2369 	.db #0x00	; 0
      002A35 3F                    2370 	.db #0x3f	; 63
      002A36 0C                    2371 	.db #0x0c	; 12
      002A37 0C                    2372 	.db #0x0c	; 12
      002A38 08                    2373 	.db #0x08	; 8
      002A39 00                    2374 	.db #0x00	; 0
      002A3A 00                    2375 	.db #0x00	; 0
      002A3B 00                    2376 	.db #0x00	; 0
      002A3C 00                    2377 	.db #0x00	; 0
      002A3D 00                    2378 	.db #0x00	; 0
      002A3E 00                    2379 	.db #0x00	; 0
      002A3F 00                    2380 	.db #0x00	; 0
      002A40 1C                    2381 	.db #0x1c	; 28
      002A41 20                    2382 	.db #0x20	; 32
      002A42 3C                    2383 	.db #0x3c	; 60
      002A43 22                    2384 	.db #0x22	; 34
      002A44 3C                    2385 	.db #0x3c	; 60
      002A45 00                    2386 	.db #0x00	; 0
      002A46 02                    2387 	.db #0x02	; 2
      002A47 02                    2388 	.db #0x02	; 2
      002A48 1E                    2389 	.db #0x1e	; 30
      002A49 22                    2390 	.db #0x22	; 34
      002A4A 22                    2391 	.db #0x22	; 34
      002A4B 22                    2392 	.db #0x22	; 34
      002A4C 1E                    2393 	.db #0x1e	; 30
      002A4D 00                    2394 	.db #0x00	; 0
      002A4E 00                    2395 	.db #0x00	; 0
      002A4F 00                    2396 	.db #0x00	; 0
      002A50 1C                    2397 	.db #0x1c	; 28
      002A51 22                    2398 	.db #0x22	; 34
      002A52 02                    2399 	.db #0x02	; 2
      002A53 22                    2400 	.db #0x22	; 34
      002A54 1C                    2401 	.db #0x1c	; 28
      002A55 00                    2402 	.db #0x00	; 0
      002A56 20                    2403 	.db #0x20	; 32
      002A57 20                    2404 	.db #0x20	; 32
      002A58 3C                    2405 	.db #0x3c	; 60
      002A59 22                    2406 	.db #0x22	; 34
      002A5A 22                    2407 	.db #0x22	; 34
      002A5B 22                    2408 	.db #0x22	; 34
      002A5C 3C                    2409 	.db #0x3c	; 60
      002A5D 00                    2410 	.db #0x00	; 0
      002A5E 00                    2411 	.db #0x00	; 0
      002A5F 00                    2412 	.db #0x00	; 0
      002A60 1C                    2413 	.db #0x1c	; 28
      002A61 22                    2414 	.db #0x22	; 34
      002A62 1E                    2415 	.db #0x1e	; 30
      002A63 02                    2416 	.db #0x02	; 2
      002A64 1C                    2417 	.db #0x1c	; 28
      002A65 00                    2418 	.db #0x00	; 0
      002A66 18                    2419 	.db #0x18	; 24
      002A67 04                    2420 	.db #0x04	; 4
      002A68 04                    2421 	.db #0x04	; 4
      002A69 1E                    2422 	.db #0x1e	; 30
      002A6A 04                    2423 	.db #0x04	; 4
      002A6B 04                    2424 	.db #0x04	; 4
      002A6C 04                    2425 	.db #0x04	; 4
      002A6D 00                    2426 	.db #0x00	; 0
      002A6E 00                    2427 	.db #0x00	; 0
      002A6F 00                    2428 	.db #0x00	; 0
      002A70 3C                    2429 	.db #0x3c	; 60
      002A71 22                    2430 	.db #0x22	; 34
      002A72 22                    2431 	.db #0x22	; 34
      002A73 3C                    2432 	.db #0x3c	; 60
      002A74 20                    2433 	.db #0x20	; 32
      002A75 1C                    2434 	.db #0x1c	; 28
      002A76 02                    2435 	.db #0x02	; 2
      002A77 02                    2436 	.db #0x02	; 2
      002A78 0E                    2437 	.db #0x0e	; 14
      002A79 12                    2438 	.db #0x12	; 18
      002A7A 12                    2439 	.db #0x12	; 18
      002A7B 12                    2440 	.db #0x12	; 18
      002A7C 12                    2441 	.db #0x12	; 18
      002A7D 00                    2442 	.db #0x00	; 0
      002A7E 08                    2443 	.db #0x08	; 8
      002A7F 00                    2444 	.db #0x00	; 0
      002A80 08                    2445 	.db #0x08	; 8
      002A81 08                    2446 	.db #0x08	; 8
      002A82 08                    2447 	.db #0x08	; 8
      002A83 08                    2448 	.db #0x08	; 8
      002A84 18                    2449 	.db #0x18	; 24
      002A85 00                    2450 	.db #0x00	; 0
      002A86 10                    2451 	.db #0x10	; 16
      002A87 00                    2452 	.db #0x00	; 0
      002A88 18                    2453 	.db #0x18	; 24
      002A89 10                    2454 	.db #0x10	; 16
      002A8A 10                    2455 	.db #0x10	; 16
      002A8B 10                    2456 	.db #0x10	; 16
      002A8C 12                    2457 	.db #0x12	; 18
      002A8D 0C                    2458 	.db #0x0c	; 12
      002A8E 02                    2459 	.db #0x02	; 2
      002A8F 02                    2460 	.db #0x02	; 2
      002A90 12                    2461 	.db #0x12	; 18
      002A91 0A                    2462 	.db #0x0a	; 10
      002A92 06                    2463 	.db #0x06	; 6
      002A93 0A                    2464 	.db #0x0a	; 10
      002A94 12                    2465 	.db #0x12	; 18
      002A95 00                    2466 	.db #0x00	; 0
      002A96 08                    2467 	.db #0x08	; 8
      002A97 08                    2468 	.db #0x08	; 8
      002A98 08                    2469 	.db #0x08	; 8
      002A99 08                    2470 	.db #0x08	; 8
      002A9A 08                    2471 	.db #0x08	; 8
      002A9B 08                    2472 	.db #0x08	; 8
      002A9C 18                    2473 	.db #0x18	; 24
      002A9D 00                    2474 	.db #0x00	; 0
      002A9E 00                    2475 	.db #0x00	; 0
      002A9F 00                    2476 	.db #0x00	; 0
      002AA0 16                    2477 	.db #0x16	; 22
      002AA1 2A                    2478 	.db #0x2a	; 42
      002AA2 2A                    2479 	.db #0x2a	; 42
      002AA3 22                    2480 	.db #0x22	; 34
      002AA4 22                    2481 	.db #0x22	; 34
      002AA5 00                    2482 	.db #0x00	; 0
      002AA6 00                    2483 	.db #0x00	; 0
      002AA7 00                    2484 	.db #0x00	; 0
      002AA8 0E                    2485 	.db #0x0e	; 14
      002AA9 12                    2486 	.db #0x12	; 18
      002AAA 12                    2487 	.db #0x12	; 18
      002AAB 12                    2488 	.db #0x12	; 18
      002AAC 12                    2489 	.db #0x12	; 18
      002AAD 00                    2490 	.db #0x00	; 0
      002AAE 00                    2491 	.db #0x00	; 0
      002AAF 00                    2492 	.db #0x00	; 0
      002AB0 1C                    2493 	.db #0x1c	; 28
      002AB1 22                    2494 	.db #0x22	; 34
      002AB2 22                    2495 	.db #0x22	; 34
      002AB3 22                    2496 	.db #0x22	; 34
      002AB4 1C                    2497 	.db #0x1c	; 28
      002AB5 00                    2498 	.db #0x00	; 0
      002AB6 00                    2499 	.db #0x00	; 0
      002AB7 00                    2500 	.db #0x00	; 0
      002AB8 1E                    2501 	.db #0x1e	; 30
      002AB9 22                    2502 	.db #0x22	; 34
      002ABA 22                    2503 	.db #0x22	; 34
      002ABB 22                    2504 	.db #0x22	; 34
      002ABC 1E                    2505 	.db #0x1e	; 30
      002ABD 02                    2506 	.db #0x02	; 2
      002ABE 00                    2507 	.db #0x00	; 0
      002ABF 00                    2508 	.db #0x00	; 0
      002AC0 3C                    2509 	.db #0x3c	; 60
      002AC1 22                    2510 	.db #0x22	; 34
      002AC2 22                    2511 	.db #0x22	; 34
      002AC3 22                    2512 	.db #0x22	; 34
      002AC4 3C                    2513 	.db #0x3c	; 60
      002AC5 20                    2514 	.db #0x20	; 32
      002AC6 00                    2515 	.db #0x00	; 0
      002AC7 00                    2516 	.db #0x00	; 0
      002AC8 1A                    2517 	.db #0x1a	; 26
      002AC9 24                    2518 	.db #0x24	; 36
      002ACA 04                    2519 	.db #0x04	; 4
      002ACB 04                    2520 	.db #0x04	; 4
      002ACC 0E                    2521 	.db #0x0e	; 14
      002ACD 00                    2522 	.db #0x00	; 0
      002ACE 00                    2523 	.db #0x00	; 0
      002ACF 00                    2524 	.db #0x00	; 0
      002AD0 1C                    2525 	.db #0x1c	; 28
      002AD1 02                    2526 	.db #0x02	; 2
      002AD2 1C                    2527 	.db #0x1c	; 28
      002AD3 20                    2528 	.db #0x20	; 32
      002AD4 1C                    2529 	.db #0x1c	; 28
      002AD5 00                    2530 	.db #0x00	; 0
      002AD6 00                    2531 	.db #0x00	; 0
      002AD7 04                    2532 	.db #0x04	; 4
      002AD8 1E                    2533 	.db #0x1e	; 30
      002AD9 04                    2534 	.db #0x04	; 4
      002ADA 04                    2535 	.db #0x04	; 4
      002ADB 14                    2536 	.db #0x14	; 20
      002ADC 08                    2537 	.db #0x08	; 8
      002ADD 00                    2538 	.db #0x00	; 0
      002ADE 00                    2539 	.db #0x00	; 0
      002ADF 00                    2540 	.db #0x00	; 0
      002AE0 12                    2541 	.db #0x12	; 18
      002AE1 12                    2542 	.db #0x12	; 18
      002AE2 12                    2543 	.db #0x12	; 18
      002AE3 1A                    2544 	.db #0x1a	; 26
      002AE4 14                    2545 	.db #0x14	; 20
      002AE5 00                    2546 	.db #0x00	; 0
      002AE6 00                    2547 	.db #0x00	; 0
      002AE7 00                    2548 	.db #0x00	; 0
      002AE8 22                    2549 	.db #0x22	; 34
      002AE9 22                    2550 	.db #0x22	; 34
      002AEA 22                    2551 	.db #0x22	; 34
      002AEB 14                    2552 	.db #0x14	; 20
      002AEC 08                    2553 	.db #0x08	; 8
      002AED 00                    2554 	.db #0x00	; 0
      002AEE 00                    2555 	.db #0x00	; 0
      002AEF 00                    2556 	.db #0x00	; 0
      002AF0 22                    2557 	.db #0x22	; 34
      002AF1 22                    2558 	.db #0x22	; 34
      002AF2 2A                    2559 	.db #0x2a	; 42
      002AF3 3E                    2560 	.db #0x3e	; 62
      002AF4 14                    2561 	.db #0x14	; 20
      002AF5 00                    2562 	.db #0x00	; 0
      002AF6 00                    2563 	.db #0x00	; 0
      002AF7 00                    2564 	.db #0x00	; 0
      002AF8 12                    2565 	.db #0x12	; 18
      002AF9 12                    2566 	.db #0x12	; 18
      002AFA 0C                    2567 	.db #0x0c	; 12
      002AFB 12                    2568 	.db #0x12	; 18
      002AFC 12                    2569 	.db #0x12	; 18
      002AFD 00                    2570 	.db #0x00	; 0
      002AFE 00                    2571 	.db #0x00	; 0
      002AFF 00                    2572 	.db #0x00	; 0
      002B00 12                    2573 	.db #0x12	; 18
      002B01 12                    2574 	.db #0x12	; 18
      002B02 12                    2575 	.db #0x12	; 18
      002B03 1C                    2576 	.db #0x1c	; 28
      002B04 08                    2577 	.db #0x08	; 8
      002B05 06                    2578 	.db #0x06	; 6
      002B06 00                    2579 	.db #0x00	; 0
      002B07 00                    2580 	.db #0x00	; 0
      002B08 1E                    2581 	.db #0x1e	; 30
      002B09 10                    2582 	.db #0x10	; 16
      002B0A 0C                    2583 	.db #0x0c	; 12
      002B0B 02                    2584 	.db #0x02	; 2
      002B0C 1E                    2585 	.db #0x1e	; 30
      002B0D 00                    2586 	.db #0x00	; 0
      002B0E 18                    2587 	.db #0x18	; 24
      002B0F 04                    2588 	.db #0x04	; 4
      002B10 04                    2589 	.db #0x04	; 4
      002B11 06                    2590 	.db #0x06	; 6
      002B12 04                    2591 	.db #0x04	; 4
      002B13 04                    2592 	.db #0x04	; 4
      002B14 18                    2593 	.db #0x18	; 24
      002B15 00                    2594 	.db #0x00	; 0
      002B16 08                    2595 	.db #0x08	; 8
      002B17 08                    2596 	.db #0x08	; 8
      002B18 08                    2597 	.db #0x08	; 8
      002B19 00                    2598 	.db #0x00	; 0
      002B1A 08                    2599 	.db #0x08	; 8
      002B1B 08                    2600 	.db #0x08	; 8
      002B1C 08                    2601 	.db #0x08	; 8
      002B1D 00                    2602 	.db #0x00	; 0
      002B1E 0C                    2603 	.db #0x0c	; 12
      002B1F 10                    2604 	.db #0x10	; 16
      002B20 10                    2605 	.db #0x10	; 16
      002B21 30                    2606 	.db #0x30	; 48	'0'
      002B22 10                    2607 	.db #0x10	; 16
      002B23 10                    2608 	.db #0x10	; 16
      002B24 0C                    2609 	.db #0x0c	; 12
      002B25 00                    2610 	.db #0x00	; 0
      002B26 14                    2611 	.db #0x14	; 20
      002B27 0A                    2612 	.db #0x0a	; 10
      002B28 00                    2613 	.db #0x00	; 0
      002B29 00                    2614 	.db #0x00	; 0
      002B2A 00                    2615 	.db #0x00	; 0
      002B2B 00                    2616 	.db #0x00	; 0
      002B2C 00                    2617 	.db #0x00	; 0
      002B2D 00                    2618 	.db #0x00	; 0
      002B2E 08                    2619 	.db #0x08	; 8
      002B2F 1C                    2620 	.db #0x1c	; 28
      002B30 36                    2621 	.db #0x36	; 54	'6'
      002B31 22                    2622 	.db #0x22	; 34
      002B32 22                    2623 	.db #0x22	; 34
      002B33 3E                    2624 	.db #0x3e	; 62
      002B34 00                    2625 	.db #0x00	; 0
      002B35 00                    2626 	.db #0x00	; 0
      002B36 1C                    2627 	.db #0x1c	; 28
      002B37 22                    2628 	.db #0x22	; 34
      002B38 02                    2629 	.db #0x02	; 2
      002B39 02                    2630 	.db #0x02	; 2
      002B3A 22                    2631 	.db #0x22	; 34
      002B3B 1C                    2632 	.db #0x1c	; 28
      002B3C 08                    2633 	.db #0x08	; 8
      002B3D 0C                    2634 	.db #0x0c	; 12
      002B3E 12                    2635 	.db #0x12	; 18
      002B3F 00                    2636 	.db #0x00	; 0
      002B40 12                    2637 	.db #0x12	; 18
      002B41 12                    2638 	.db #0x12	; 18
      002B42 12                    2639 	.db #0x12	; 18
      002B43 1A                    2640 	.db #0x1a	; 26
      002B44 14                    2641 	.db #0x14	; 20
      002B45 00                    2642 	.db #0x00	; 0
      002B46 30                    2643 	.db #0x30	; 48	'0'
      002B47 00                    2644 	.db #0x00	; 0
      002B48 1C                    2645 	.db #0x1c	; 28
      002B49 22                    2646 	.db #0x22	; 34
      002B4A 1E                    2647 	.db #0x1e	; 30
      002B4B 02                    2648 	.db #0x02	; 2
      002B4C 1C                    2649 	.db #0x1c	; 28
      002B4D 00                    2650 	.db #0x00	; 0
      002B4E 1C                    2651 	.db #0x1c	; 28
      002B4F 00                    2652 	.db #0x00	; 0
      002B50 1C                    2653 	.db #0x1c	; 28
      002B51 20                    2654 	.db #0x20	; 32
      002B52 3C                    2655 	.db #0x3c	; 60
      002B53 22                    2656 	.db #0x22	; 34
      002B54 3C                    2657 	.db #0x3c	; 60
      002B55 00                    2658 	.db #0x00	; 0
      002B56 14                    2659 	.db #0x14	; 20
      002B57 00                    2660 	.db #0x00	; 0
      002B58 1C                    2661 	.db #0x1c	; 28
      002B59 20                    2662 	.db #0x20	; 32
      002B5A 3C                    2663 	.db #0x3c	; 60
      002B5B 22                    2664 	.db #0x22	; 34
      002B5C 3C                    2665 	.db #0x3c	; 60
      002B5D 00                    2666 	.db #0x00	; 0
      002B5E 0C                    2667 	.db #0x0c	; 12
      002B5F 00                    2668 	.db #0x00	; 0
      002B60 1C                    2669 	.db #0x1c	; 28
      002B61 20                    2670 	.db #0x20	; 32
      002B62 3C                    2671 	.db #0x3c	; 60
      002B63 22                    2672 	.db #0x22	; 34
      002B64 3C                    2673 	.db #0x3c	; 60
      002B65 00                    2674 	.db #0x00	; 0
      002B66 1C                    2675 	.db #0x1c	; 28
      002B67 14                    2676 	.db #0x14	; 20
      002B68 1C                    2677 	.db #0x1c	; 28
      002B69 20                    2678 	.db #0x20	; 32
      002B6A 3C                    2679 	.db #0x3c	; 60
      002B6B 22                    2680 	.db #0x22	; 34
      002B6C 3C                    2681 	.db #0x3c	; 60
      002B6D 00                    2682 	.db #0x00	; 0
      002B6E 00                    2683 	.db #0x00	; 0
      002B6F 1C                    2684 	.db #0x1c	; 28
      002B70 22                    2685 	.db #0x22	; 34
      002B71 02                    2686 	.db #0x02	; 2
      002B72 22                    2687 	.db #0x22	; 34
      002B73 1C                    2688 	.db #0x1c	; 28
      002B74 08                    2689 	.db #0x08	; 8
      002B75 0C                    2690 	.db #0x0c	; 12
      002B76 1C                    2691 	.db #0x1c	; 28
      002B77 00                    2692 	.db #0x00	; 0
      002B78 1C                    2693 	.db #0x1c	; 28
      002B79 22                    2694 	.db #0x22	; 34
      002B7A 1E                    2695 	.db #0x1e	; 30
      002B7B 02                    2696 	.db #0x02	; 2
      002B7C 1C                    2697 	.db #0x1c	; 28
      002B7D 00                    2698 	.db #0x00	; 0
      002B7E 14                    2699 	.db #0x14	; 20
      002B7F 00                    2700 	.db #0x00	; 0
      002B80 1C                    2701 	.db #0x1c	; 28
      002B81 22                    2702 	.db #0x22	; 34
      002B82 1E                    2703 	.db #0x1e	; 30
      002B83 02                    2704 	.db #0x02	; 2
      002B84 1C                    2705 	.db #0x1c	; 28
      002B85 00                    2706 	.db #0x00	; 0
      002B86 0C                    2707 	.db #0x0c	; 12
      002B87 00                    2708 	.db #0x00	; 0
      002B88 1C                    2709 	.db #0x1c	; 28
      002B89 22                    2710 	.db #0x22	; 34
      002B8A 1E                    2711 	.db #0x1e	; 30
      002B8B 02                    2712 	.db #0x02	; 2
      002B8C 1C                    2713 	.db #0x1c	; 28
      002B8D 00                    2714 	.db #0x00	; 0
      002B8E 14                    2715 	.db #0x14	; 20
      002B8F 00                    2716 	.db #0x00	; 0
      002B90 08                    2717 	.db #0x08	; 8
      002B91 08                    2718 	.db #0x08	; 8
      002B92 08                    2719 	.db #0x08	; 8
      002B93 08                    2720 	.db #0x08	; 8
      002B94 18                    2721 	.db #0x18	; 24
      002B95 00                    2722 	.db #0x00	; 0
      002B96 08                    2723 	.db #0x08	; 8
      002B97 14                    2724 	.db #0x14	; 20
      002B98 00                    2725 	.db #0x00	; 0
      002B99 08                    2726 	.db #0x08	; 8
      002B9A 08                    2727 	.db #0x08	; 8
      002B9B 08                    2728 	.db #0x08	; 8
      002B9C 18                    2729 	.db #0x18	; 24
      002B9D 00                    2730 	.db #0x00	; 0
      002B9E 04                    2731 	.db #0x04	; 4
      002B9F 00                    2732 	.db #0x00	; 0
      002BA0 08                    2733 	.db #0x08	; 8
      002BA1 08                    2734 	.db #0x08	; 8
      002BA2 08                    2735 	.db #0x08	; 8
      002BA3 08                    2736 	.db #0x08	; 8
      002BA4 18                    2737 	.db #0x18	; 24
      002BA5 00                    2738 	.db #0x00	; 0
      002BA6 14                    2739 	.db #0x14	; 20
      002BA7 00                    2740 	.db #0x00	; 0
      002BA8 08                    2741 	.db #0x08	; 8
      002BA9 14                    2742 	.db #0x14	; 20
      002BAA 22                    2743 	.db #0x22	; 34
      002BAB 3E                    2744 	.db #0x3e	; 62
      002BAC 22                    2745 	.db #0x22	; 34
      002BAD 00                    2746 	.db #0x00	; 0
      002BAE 1C                    2747 	.db #0x1c	; 28
      002BAF 14                    2748 	.db #0x14	; 20
      002BB0 1C                    2749 	.db #0x1c	; 28
      002BB1 36                    2750 	.db #0x36	; 54	'6'
      002BB2 22                    2751 	.db #0x22	; 34
      002BB3 3E                    2752 	.db #0x3e	; 62
      002BB4 22                    2753 	.db #0x22	; 34
      002BB5 00                    2754 	.db #0x00	; 0
      002BB6 30                    2755 	.db #0x30	; 48	'0'
      002BB7 00                    2756 	.db #0x00	; 0
      002BB8 3E                    2757 	.db #0x3e	; 62
      002BB9 02                    2758 	.db #0x02	; 2
      002BBA 1E                    2759 	.db #0x1e	; 30
      002BBB 02                    2760 	.db #0x02	; 2
      002BBC 3E                    2761 	.db #0x3e	; 62
      002BBD 00                    2762 	.db #0x00	; 0
      002BBE 00                    2763 	.db #0x00	; 0
      002BBF 00                    2764 	.db #0x00	; 0
      002BC0 1E                    2765 	.db #0x1e	; 30
      002BC1 28                    2766 	.db #0x28	; 40
      002BC2 3E                    2767 	.db #0x3e	; 62
      002BC3 0A                    2768 	.db #0x0a	; 10
      002BC4 3C                    2769 	.db #0x3c	; 60
      002BC5 00                    2770 	.db #0x00	; 0
      002BC6 3C                    2771 	.db #0x3c	; 60
      002BC7 0A                    2772 	.db #0x0a	; 10
      002BC8 0A                    2773 	.db #0x0a	; 10
      002BC9 3E                    2774 	.db #0x3e	; 62
      002BCA 0A                    2775 	.db #0x0a	; 10
      002BCB 0A                    2776 	.db #0x0a	; 10
      002BCC 3A                    2777 	.db #0x3a	; 58
      002BCD 00                    2778 	.db #0x00	; 0
      002BCE 1C                    2779 	.db #0x1c	; 28
      002BCF 00                    2780 	.db #0x00	; 0
      002BD0 0C                    2781 	.db #0x0c	; 12
      002BD1 12                    2782 	.db #0x12	; 18
      002BD2 12                    2783 	.db #0x12	; 18
      002BD3 12                    2784 	.db #0x12	; 18
      002BD4 0C                    2785 	.db #0x0c	; 12
      002BD5 00                    2786 	.db #0x00	; 0
      002BD6 14                    2787 	.db #0x14	; 20
      002BD7 00                    2788 	.db #0x00	; 0
      002BD8 0C                    2789 	.db #0x0c	; 12
      002BD9 12                    2790 	.db #0x12	; 18
      002BDA 12                    2791 	.db #0x12	; 18
      002BDB 12                    2792 	.db #0x12	; 18
      002BDC 0C                    2793 	.db #0x0c	; 12
      002BDD 00                    2794 	.db #0x00	; 0
      002BDE 06                    2795 	.db #0x06	; 6
      002BDF 00                    2796 	.db #0x00	; 0
      002BE0 0C                    2797 	.db #0x0c	; 12
      002BE1 12                    2798 	.db #0x12	; 18
      002BE2 12                    2799 	.db #0x12	; 18
      002BE3 12                    2800 	.db #0x12	; 18
      002BE4 0C                    2801 	.db #0x0c	; 12
      002BE5 00                    2802 	.db #0x00	; 0
      002BE6 1C                    2803 	.db #0x1c	; 28
      002BE7 00                    2804 	.db #0x00	; 0
      002BE8 12                    2805 	.db #0x12	; 18
      002BE9 12                    2806 	.db #0x12	; 18
      002BEA 12                    2807 	.db #0x12	; 18
      002BEB 1A                    2808 	.db #0x1a	; 26
      002BEC 14                    2809 	.db #0x14	; 20
      002BED 00                    2810 	.db #0x00	; 0
      002BEE 06                    2811 	.db #0x06	; 6
      002BEF 00                    2812 	.db #0x00	; 0
      002BF0 12                    2813 	.db #0x12	; 18
      002BF1 12                    2814 	.db #0x12	; 18
      002BF2 12                    2815 	.db #0x12	; 18
      002BF3 1A                    2816 	.db #0x1a	; 26
      002BF4 14                    2817 	.db #0x14	; 20
      002BF5 00                    2818 	.db #0x00	; 0
      002BF6 14                    2819 	.db #0x14	; 20
      002BF7 00                    2820 	.db #0x00	; 0
      002BF8 12                    2821 	.db #0x12	; 18
      002BF9 12                    2822 	.db #0x12	; 18
      002BFA 12                    2823 	.db #0x12	; 18
      002BFB 1C                    2824 	.db #0x1c	; 28
      002BFC 08                    2825 	.db #0x08	; 8
      002BFD 06                    2826 	.db #0x06	; 6
      002BFE 12                    2827 	.db #0x12	; 18
      002BFF 0C                    2828 	.db #0x0c	; 12
      002C00 12                    2829 	.db #0x12	; 18
      002C01 12                    2830 	.db #0x12	; 18
      002C02 12                    2831 	.db #0x12	; 18
      002C03 12                    2832 	.db #0x12	; 18
      002C04 0C                    2833 	.db #0x0c	; 12
      002C05 00                    2834 	.db #0x00	; 0
      002C06 14                    2835 	.db #0x14	; 20
      002C07 00                    2836 	.db #0x00	; 0
      002C08 12                    2837 	.db #0x12	; 18
      002C09 12                    2838 	.db #0x12	; 18
      002C0A 12                    2839 	.db #0x12	; 18
      002C0B 12                    2840 	.db #0x12	; 18
      002C0C 0C                    2841 	.db #0x0c	; 12
      002C0D 00                    2842 	.db #0x00	; 0
      002C0E 00                    2843 	.db #0x00	; 0
      002C0F 08                    2844 	.db #0x08	; 8
      002C10 1C                    2845 	.db #0x1c	; 28
      002C11 02                    2846 	.db #0x02	; 2
      002C12 02                    2847 	.db #0x02	; 2
      002C13 1C                    2848 	.db #0x1c	; 28
      002C14 08                    2849 	.db #0x08	; 8
      002C15 00                    2850 	.db #0x00	; 0
      002C16 18                    2851 	.db #0x18	; 24
      002C17 24                    2852 	.db #0x24	; 36
      002C18 04                    2853 	.db #0x04	; 4
      002C19 1E                    2854 	.db #0x1e	; 30
      002C1A 04                    2855 	.db #0x04	; 4
      002C1B 24                    2856 	.db #0x24	; 36
      002C1C 3A                    2857 	.db #0x3a	; 58
      002C1D 00                    2858 	.db #0x00	; 0
      002C1E 22                    2859 	.db #0x22	; 34
      002C1F 14                    2860 	.db #0x14	; 20
      002C20 08                    2861 	.db #0x08	; 8
      002C21 3E                    2862 	.db #0x3e	; 62
      002C22 08                    2863 	.db #0x08	; 8
      002C23 3E                    2864 	.db #0x3e	; 62
      002C24 08                    2865 	.db #0x08	; 8
      002C25 00                    2866 	.db #0x00	; 0
      002C26 06                    2867 	.db #0x06	; 6
      002C27 0A                    2868 	.db #0x0a	; 10
      002C28 0A                    2869 	.db #0x0a	; 10
      002C29 16                    2870 	.db #0x16	; 22
      002C2A 3A                    2871 	.db #0x3a	; 58
      002C2B 12                    2872 	.db #0x12	; 18
      002C2C 12                    2873 	.db #0x12	; 18
      002C2D 00                    2874 	.db #0x00	; 0
      002C2E 10                    2875 	.db #0x10	; 16
      002C2F 28                    2876 	.db #0x28	; 40
      002C30 08                    2877 	.db #0x08	; 8
      002C31 1C                    2878 	.db #0x1c	; 28
      002C32 08                    2879 	.db #0x08	; 8
      002C33 08                    2880 	.db #0x08	; 8
      002C34 0A                    2881 	.db #0x0a	; 10
      002C35 04                    2882 	.db #0x04	; 4
      002C36 18                    2883 	.db #0x18	; 24
      002C37 00                    2884 	.db #0x00	; 0
      002C38 1C                    2885 	.db #0x1c	; 28
      002C39 20                    2886 	.db #0x20	; 32
      002C3A 3C                    2887 	.db #0x3c	; 60
      002C3B 22                    2888 	.db #0x22	; 34
      002C3C 3C                    2889 	.db #0x3c	; 60
      002C3D 00                    2890 	.db #0x00	; 0
      002C3E 18                    2891 	.db #0x18	; 24
      002C3F 00                    2892 	.db #0x00	; 0
      002C40 08                    2893 	.db #0x08	; 8
      002C41 08                    2894 	.db #0x08	; 8
      002C42 08                    2895 	.db #0x08	; 8
      002C43 08                    2896 	.db #0x08	; 8
      002C44 18                    2897 	.db #0x18	; 24
      002C45 00                    2898 	.db #0x00	; 0
      002C46 18                    2899 	.db #0x18	; 24
      002C47 00                    2900 	.db #0x00	; 0
      002C48 0C                    2901 	.db #0x0c	; 12
      002C49 12                    2902 	.db #0x12	; 18
      002C4A 12                    2903 	.db #0x12	; 18
      002C4B 12                    2904 	.db #0x12	; 18
      002C4C 0C                    2905 	.db #0x0c	; 12
      002C4D 00                    2906 	.db #0x00	; 0
      002C4E 18                    2907 	.db #0x18	; 24
      002C4F 00                    2908 	.db #0x00	; 0
      002C50 12                    2909 	.db #0x12	; 18
      002C51 12                    2910 	.db #0x12	; 18
      002C52 12                    2911 	.db #0x12	; 18
      002C53 1A                    2912 	.db #0x1a	; 26
      002C54 14                    2913 	.db #0x14	; 20
      002C55 00                    2914 	.db #0x00	; 0
      002C56 14                    2915 	.db #0x14	; 20
      002C57 0A                    2916 	.db #0x0a	; 10
      002C58 00                    2917 	.db #0x00	; 0
      002C59 0E                    2918 	.db #0x0e	; 14
      002C5A 12                    2919 	.db #0x12	; 18
      002C5B 12                    2920 	.db #0x12	; 18
      002C5C 12                    2921 	.db #0x12	; 18
      002C5D 00                    2922 	.db #0x00	; 0
      002C5E 14                    2923 	.db #0x14	; 20
      002C5F 0A                    2924 	.db #0x0a	; 10
      002C60 00                    2925 	.db #0x00	; 0
      002C61 12                    2926 	.db #0x12	; 18
      002C62 16                    2927 	.db #0x16	; 22
      002C63 1A                    2928 	.db #0x1a	; 26
      002C64 12                    2929 	.db #0x12	; 18
      002C65 00                    2930 	.db #0x00	; 0
      002C66 1C                    2931 	.db #0x1c	; 28
      002C67 20                    2932 	.db #0x20	; 32
      002C68 3C                    2933 	.db #0x3c	; 60
      002C69 22                    2934 	.db #0x22	; 34
      002C6A 3C                    2935 	.db #0x3c	; 60
      002C6B 00                    2936 	.db #0x00	; 0
      002C6C 3C                    2937 	.db #0x3c	; 60
      002C6D 00                    2938 	.db #0x00	; 0
      002C6E 0C                    2939 	.db #0x0c	; 12
      002C6F 12                    2940 	.db #0x12	; 18
      002C70 12                    2941 	.db #0x12	; 18
      002C71 12                    2942 	.db #0x12	; 18
      002C72 0C                    2943 	.db #0x0c	; 12
      002C73 00                    2944 	.db #0x00	; 0
      002C74 1E                    2945 	.db #0x1e	; 30
      002C75 00                    2946 	.db #0x00	; 0
      002C76 08                    2947 	.db #0x08	; 8
      002C77 00                    2948 	.db #0x00	; 0
      002C78 08                    2949 	.db #0x08	; 8
      002C79 0C                    2950 	.db #0x0c	; 12
      002C7A 02                    2951 	.db #0x02	; 2
      002C7B 22                    2952 	.db #0x22	; 34
      002C7C 1C                    2953 	.db #0x1c	; 28
      002C7D 00                    2954 	.db #0x00	; 0
      002C7E 00                    2955 	.db #0x00	; 0
      002C7F 00                    2956 	.db #0x00	; 0
      002C80 3E                    2957 	.db #0x3e	; 62
      002C81 02                    2958 	.db #0x02	; 2
      002C82 02                    2959 	.db #0x02	; 2
      002C83 02                    2960 	.db #0x02	; 2
      002C84 00                    2961 	.db #0x00	; 0
      002C85 00                    2962 	.db #0x00	; 0
      002C86 00                    2963 	.db #0x00	; 0
      002C87 00                    2964 	.db #0x00	; 0
      002C88 3F                    2965 	.db #0x3f	; 63
      002C89 20                    2966 	.db #0x20	; 32
      002C8A 20                    2967 	.db #0x20	; 32
      002C8B 00                    2968 	.db #0x00	; 0
      002C8C 00                    2969 	.db #0x00	; 0
      002C8D 00                    2970 	.db #0x00	; 0
      002C8E 02                    2971 	.db #0x02	; 2
      002C8F 12                    2972 	.db #0x12	; 18
      002C90 0A                    2973 	.db #0x0a	; 10
      002C91 1C                    2974 	.db #0x1c	; 28
      002C92 22                    2975 	.db #0x22	; 34
      002C93 10                    2976 	.db #0x10	; 16
      002C94 38                    2977 	.db #0x38	; 56	'8'
      002C95 00                    2978 	.db #0x00	; 0
      002C96 02                    2979 	.db #0x02	; 2
      002C97 12                    2980 	.db #0x12	; 18
      002C98 0A                    2981 	.db #0x0a	; 10
      002C99 34                    2982 	.db #0x34	; 52	'4'
      002C9A 2A                    2983 	.db #0x2a	; 42
      002C9B 38                    2984 	.db #0x38	; 56	'8'
      002C9C 20                    2985 	.db #0x20	; 32
      002C9D 00                    2986 	.db #0x00	; 0
      002C9E 08                    2987 	.db #0x08	; 8
      002C9F 00                    2988 	.db #0x00	; 0
      002CA0 08                    2989 	.db #0x08	; 8
      002CA1 08                    2990 	.db #0x08	; 8
      002CA2 1C                    2991 	.db #0x1c	; 28
      002CA3 1C                    2992 	.db #0x1c	; 28
      002CA4 08                    2993 	.db #0x08	; 8
      002CA5 00                    2994 	.db #0x00	; 0
      002CA6 00                    2995 	.db #0x00	; 0
      002CA7 00                    2996 	.db #0x00	; 0
      002CA8 24                    2997 	.db #0x24	; 36
      002CA9 12                    2998 	.db #0x12	; 18
      002CAA 24                    2999 	.db #0x24	; 36
      002CAB 00                    3000 	.db #0x00	; 0
      002CAC 00                    3001 	.db #0x00	; 0
      002CAD 00                    3002 	.db #0x00	; 0
      002CAE 00                    3003 	.db #0x00	; 0
      002CAF 00                    3004 	.db #0x00	; 0
      002CB0 12                    3005 	.db #0x12	; 18
      002CB1 24                    3006 	.db #0x24	; 36
      002CB2 12                    3007 	.db #0x12	; 18
      002CB3 00                    3008 	.db #0x00	; 0
      002CB4 00                    3009 	.db #0x00	; 0
      002CB5 00                    3010 	.db #0x00	; 0
      002CB6 2A                    3011 	.db #0x2a	; 42
      002CB7 00                    3012 	.db #0x00	; 0
      002CB8 15                    3013 	.db #0x15	; 21
      002CB9 00                    3014 	.db #0x00	; 0
      002CBA 2A                    3015 	.db #0x2a	; 42
      002CBB 00                    3016 	.db #0x00	; 0
      002CBC 15                    3017 	.db #0x15	; 21
      002CBD 00                    3018 	.db #0x00	; 0
      002CBE 2A                    3019 	.db #0x2a	; 42
      002CBF 15                    3020 	.db #0x15	; 21
      002CC0 2A                    3021 	.db #0x2a	; 42
      002CC1 15                    3022 	.db #0x15	; 21
      002CC2 2A                    3023 	.db #0x2a	; 42
      002CC3 15                    3024 	.db #0x15	; 21
      002CC4 2A                    3025 	.db #0x2a	; 42
      002CC5 15                    3026 	.db #0x15	; 21
      002CC6 15                    3027 	.db #0x15	; 21
      002CC7 3F                    3028 	.db #0x3f	; 63
      002CC8 2A                    3029 	.db #0x2a	; 42
      002CC9 3F                    3030 	.db #0x3f	; 63
      002CCA 15                    3031 	.db #0x15	; 21
      002CCB 3F                    3032 	.db #0x3f	; 63
      002CCC 2A                    3033 	.db #0x2a	; 42
      002CCD 3F                    3034 	.db #0x3f	; 63
      002CCE 08                    3035 	.db #0x08	; 8
      002CCF 08                    3036 	.db #0x08	; 8
      002CD0 08                    3037 	.db #0x08	; 8
      002CD1 08                    3038 	.db #0x08	; 8
      002CD2 08                    3039 	.db #0x08	; 8
      002CD3 08                    3040 	.db #0x08	; 8
      002CD4 08                    3041 	.db #0x08	; 8
      002CD5 08                    3042 	.db #0x08	; 8
      002CD6 08                    3043 	.db #0x08	; 8
      002CD7 08                    3044 	.db #0x08	; 8
      002CD8 08                    3045 	.db #0x08	; 8
      002CD9 0F                    3046 	.db #0x0f	; 15
      002CDA 08                    3047 	.db #0x08	; 8
      002CDB 08                    3048 	.db #0x08	; 8
      002CDC 08                    3049 	.db #0x08	; 8
      002CDD 08                    3050 	.db #0x08	; 8
      002CDE 08                    3051 	.db #0x08	; 8
      002CDF 0F                    3052 	.db #0x0f	; 15
      002CE0 08                    3053 	.db #0x08	; 8
      002CE1 0F                    3054 	.db #0x0f	; 15
      002CE2 08                    3055 	.db #0x08	; 8
      002CE3 08                    3056 	.db #0x08	; 8
      002CE4 08                    3057 	.db #0x08	; 8
      002CE5 08                    3058 	.db #0x08	; 8
      002CE6 0A                    3059 	.db #0x0a	; 10
      002CE7 0A                    3060 	.db #0x0a	; 10
      002CE8 0A                    3061 	.db #0x0a	; 10
      002CE9 0B                    3062 	.db #0x0b	; 11
      002CEA 0A                    3063 	.db #0x0a	; 10
      002CEB 0A                    3064 	.db #0x0a	; 10
      002CEC 0A                    3065 	.db #0x0a	; 10
      002CED 0A                    3066 	.db #0x0a	; 10
      002CEE 00                    3067 	.db #0x00	; 0
      002CEF 00                    3068 	.db #0x00	; 0
      002CF0 00                    3069 	.db #0x00	; 0
      002CF1 0F                    3070 	.db #0x0f	; 15
      002CF2 0A                    3071 	.db #0x0a	; 10
      002CF3 0A                    3072 	.db #0x0a	; 10
      002CF4 0A                    3073 	.db #0x0a	; 10
      002CF5 0A                    3074 	.db #0x0a	; 10
      002CF6 00                    3075 	.db #0x00	; 0
      002CF7 0F                    3076 	.db #0x0f	; 15
      002CF8 08                    3077 	.db #0x08	; 8
      002CF9 0F                    3078 	.db #0x0f	; 15
      002CFA 08                    3079 	.db #0x08	; 8
      002CFB 08                    3080 	.db #0x08	; 8
      002CFC 08                    3081 	.db #0x08	; 8
      002CFD 08                    3082 	.db #0x08	; 8
      002CFE 0A                    3083 	.db #0x0a	; 10
      002CFF 0B                    3084 	.db #0x0b	; 11
      002D00 08                    3085 	.db #0x08	; 8
      002D01 0B                    3086 	.db #0x0b	; 11
      002D02 0A                    3087 	.db #0x0a	; 10
      002D03 0A                    3088 	.db #0x0a	; 10
      002D04 0A                    3089 	.db #0x0a	; 10
      002D05 0A                    3090 	.db #0x0a	; 10
      002D06 0A                    3091 	.db #0x0a	; 10
      002D07 0A                    3092 	.db #0x0a	; 10
      002D08 0A                    3093 	.db #0x0a	; 10
      002D09 0A                    3094 	.db #0x0a	; 10
      002D0A 0A                    3095 	.db #0x0a	; 10
      002D0B 0A                    3096 	.db #0x0a	; 10
      002D0C 0A                    3097 	.db #0x0a	; 10
      002D0D 0A                    3098 	.db #0x0a	; 10
      002D0E 00                    3099 	.db #0x00	; 0
      002D0F 0F                    3100 	.db #0x0f	; 15
      002D10 08                    3101 	.db #0x08	; 8
      002D11 0B                    3102 	.db #0x0b	; 11
      002D12 0A                    3103 	.db #0x0a	; 10
      002D13 0A                    3104 	.db #0x0a	; 10
      002D14 0A                    3105 	.db #0x0a	; 10
      002D15 0A                    3106 	.db #0x0a	; 10
      002D16 0A                    3107 	.db #0x0a	; 10
      002D17 0B                    3108 	.db #0x0b	; 11
      002D18 08                    3109 	.db #0x08	; 8
      002D19 0F                    3110 	.db #0x0f	; 15
      002D1A 00                    3111 	.db #0x00	; 0
      002D1B 00                    3112 	.db #0x00	; 0
      002D1C 00                    3113 	.db #0x00	; 0
      002D1D 00                    3114 	.db #0x00	; 0
      002D1E 0A                    3115 	.db #0x0a	; 10
      002D1F 0A                    3116 	.db #0x0a	; 10
      002D20 0A                    3117 	.db #0x0a	; 10
      002D21 0F                    3118 	.db #0x0f	; 15
      002D22 00                    3119 	.db #0x00	; 0
      002D23 00                    3120 	.db #0x00	; 0
      002D24 00                    3121 	.db #0x00	; 0
      002D25 00                    3122 	.db #0x00	; 0
      002D26 08                    3123 	.db #0x08	; 8
      002D27 0F                    3124 	.db #0x0f	; 15
      002D28 08                    3125 	.db #0x08	; 8
      002D29 0F                    3126 	.db #0x0f	; 15
      002D2A 00                    3127 	.db #0x00	; 0
      002D2B 00                    3128 	.db #0x00	; 0
      002D2C 00                    3129 	.db #0x00	; 0
      002D2D 00                    3130 	.db #0x00	; 0
      002D2E 00                    3131 	.db #0x00	; 0
      002D2F 00                    3132 	.db #0x00	; 0
      002D30 00                    3133 	.db #0x00	; 0
      002D31 0F                    3134 	.db #0x0f	; 15
      002D32 08                    3135 	.db #0x08	; 8
      002D33 08                    3136 	.db #0x08	; 8
      002D34 08                    3137 	.db #0x08	; 8
      002D35 08                    3138 	.db #0x08	; 8
      002D36 08                    3139 	.db #0x08	; 8
      002D37 08                    3140 	.db #0x08	; 8
      002D38 08                    3141 	.db #0x08	; 8
      002D39 38                    3142 	.db #0x38	; 56	'8'
      002D3A 00                    3143 	.db #0x00	; 0
      002D3B 00                    3144 	.db #0x00	; 0
      002D3C 00                    3145 	.db #0x00	; 0
      002D3D 00                    3146 	.db #0x00	; 0
      002D3E 08                    3147 	.db #0x08	; 8
      002D3F 08                    3148 	.db #0x08	; 8
      002D40 08                    3149 	.db #0x08	; 8
      002D41 3F                    3150 	.db #0x3f	; 63
      002D42 00                    3151 	.db #0x00	; 0
      002D43 00                    3152 	.db #0x00	; 0
      002D44 00                    3153 	.db #0x00	; 0
      002D45 00                    3154 	.db #0x00	; 0
      002D46 00                    3155 	.db #0x00	; 0
      002D47 00                    3156 	.db #0x00	; 0
      002D48 00                    3157 	.db #0x00	; 0
      002D49 3F                    3158 	.db #0x3f	; 63
      002D4A 08                    3159 	.db #0x08	; 8
      002D4B 08                    3160 	.db #0x08	; 8
      002D4C 08                    3161 	.db #0x08	; 8
      002D4D 08                    3162 	.db #0x08	; 8
      002D4E 08                    3163 	.db #0x08	; 8
      002D4F 08                    3164 	.db #0x08	; 8
      002D50 08                    3165 	.db #0x08	; 8
      002D51 38                    3166 	.db #0x38	; 56	'8'
      002D52 08                    3167 	.db #0x08	; 8
      002D53 08                    3168 	.db #0x08	; 8
      002D54 08                    3169 	.db #0x08	; 8
      002D55 08                    3170 	.db #0x08	; 8
      002D56 00                    3171 	.db #0x00	; 0
      002D57 00                    3172 	.db #0x00	; 0
      002D58 00                    3173 	.db #0x00	; 0
      002D59 3F                    3174 	.db #0x3f	; 63
      002D5A 00                    3175 	.db #0x00	; 0
      002D5B 00                    3176 	.db #0x00	; 0
      002D5C 00                    3177 	.db #0x00	; 0
      002D5D 00                    3178 	.db #0x00	; 0
      002D5E 08                    3179 	.db #0x08	; 8
      002D5F 08                    3180 	.db #0x08	; 8
      002D60 08                    3181 	.db #0x08	; 8
      002D61 3F                    3182 	.db #0x3f	; 63
      002D62 08                    3183 	.db #0x08	; 8
      002D63 08                    3184 	.db #0x08	; 8
      002D64 08                    3185 	.db #0x08	; 8
      002D65 08                    3186 	.db #0x08	; 8
      002D66 08                    3187 	.db #0x08	; 8
      002D67 38                    3188 	.db #0x38	; 56	'8'
      002D68 08                    3189 	.db #0x08	; 8
      002D69 38                    3190 	.db #0x38	; 56	'8'
      002D6A 08                    3191 	.db #0x08	; 8
      002D6B 08                    3192 	.db #0x08	; 8
      002D6C 08                    3193 	.db #0x08	; 8
      002D6D 08                    3194 	.db #0x08	; 8
      002D6E 0A                    3195 	.db #0x0a	; 10
      002D6F 0A                    3196 	.db #0x0a	; 10
      002D70 0A                    3197 	.db #0x0a	; 10
      002D71 3A                    3198 	.db #0x3a	; 58
      002D72 0A                    3199 	.db #0x0a	; 10
      002D73 0A                    3200 	.db #0x0a	; 10
      002D74 0A                    3201 	.db #0x0a	; 10
      002D75 0A                    3202 	.db #0x0a	; 10
      002D76 0A                    3203 	.db #0x0a	; 10
      002D77 3A                    3204 	.db #0x3a	; 58
      002D78 02                    3205 	.db #0x02	; 2
      002D79 3E                    3206 	.db #0x3e	; 62
      002D7A 00                    3207 	.db #0x00	; 0
      002D7B 00                    3208 	.db #0x00	; 0
      002D7C 00                    3209 	.db #0x00	; 0
      002D7D 00                    3210 	.db #0x00	; 0
      002D7E 00                    3211 	.db #0x00	; 0
      002D7F 3E                    3212 	.db #0x3e	; 62
      002D80 02                    3213 	.db #0x02	; 2
      002D81 3A                    3214 	.db #0x3a	; 58
      002D82 0A                    3215 	.db #0x0a	; 10
      002D83 0A                    3216 	.db #0x0a	; 10
      002D84 0A                    3217 	.db #0x0a	; 10
      002D85 0A                    3218 	.db #0x0a	; 10
      002D86 0A                    3219 	.db #0x0a	; 10
      002D87 3B                    3220 	.db #0x3b	; 59
      002D88 00                    3221 	.db #0x00	; 0
      002D89 3F                    3222 	.db #0x3f	; 63
      002D8A 00                    3223 	.db #0x00	; 0
      002D8B 00                    3224 	.db #0x00	; 0
      002D8C 00                    3225 	.db #0x00	; 0
      002D8D 00                    3226 	.db #0x00	; 0
      002D8E 00                    3227 	.db #0x00	; 0
      002D8F 3F                    3228 	.db #0x3f	; 63
      002D90 00                    3229 	.db #0x00	; 0
      002D91 3B                    3230 	.db #0x3b	; 59
      002D92 0A                    3231 	.db #0x0a	; 10
      002D93 0A                    3232 	.db #0x0a	; 10
      002D94 0A                    3233 	.db #0x0a	; 10
      002D95 0A                    3234 	.db #0x0a	; 10
      002D96 0A                    3235 	.db #0x0a	; 10
      002D97 3A                    3236 	.db #0x3a	; 58
      002D98 02                    3237 	.db #0x02	; 2
      002D99 3A                    3238 	.db #0x3a	; 58
      002D9A 0A                    3239 	.db #0x0a	; 10
      002D9B 0A                    3240 	.db #0x0a	; 10
      002D9C 0A                    3241 	.db #0x0a	; 10
      002D9D 0A                    3242 	.db #0x0a	; 10
      002D9E 00                    3243 	.db #0x00	; 0
      002D9F 3F                    3244 	.db #0x3f	; 63
      002DA0 00                    3245 	.db #0x00	; 0
      002DA1 3F                    3246 	.db #0x3f	; 63
      002DA2 00                    3247 	.db #0x00	; 0
      002DA3 00                    3248 	.db #0x00	; 0
      002DA4 00                    3249 	.db #0x00	; 0
      002DA5 00                    3250 	.db #0x00	; 0
      002DA6 0A                    3251 	.db #0x0a	; 10
      002DA7 3B                    3252 	.db #0x3b	; 59
      002DA8 00                    3253 	.db #0x00	; 0
      002DA9 3B                    3254 	.db #0x3b	; 59
      002DAA 0A                    3255 	.db #0x0a	; 10
      002DAB 0A                    3256 	.db #0x0a	; 10
      002DAC 0A                    3257 	.db #0x0a	; 10
      002DAD 0A                    3258 	.db #0x0a	; 10
      002DAE 08                    3259 	.db #0x08	; 8
      002DAF 3F                    3260 	.db #0x3f	; 63
      002DB0 00                    3261 	.db #0x00	; 0
      002DB1 3F                    3262 	.db #0x3f	; 63
      002DB2 00                    3263 	.db #0x00	; 0
      002DB3 00                    3264 	.db #0x00	; 0
      002DB4 00                    3265 	.db #0x00	; 0
      002DB5 00                    3266 	.db #0x00	; 0
      002DB6 0A                    3267 	.db #0x0a	; 10
      002DB7 0A                    3268 	.db #0x0a	; 10
      002DB8 0A                    3269 	.db #0x0a	; 10
      002DB9 3F                    3270 	.db #0x3f	; 63
      002DBA 00                    3271 	.db #0x00	; 0
      002DBB 00                    3272 	.db #0x00	; 0
      002DBC 00                    3273 	.db #0x00	; 0
      002DBD 00                    3274 	.db #0x00	; 0
      002DBE 00                    3275 	.db #0x00	; 0
      002DBF 3F                    3276 	.db #0x3f	; 63
      002DC0 00                    3277 	.db #0x00	; 0
      002DC1 3F                    3278 	.db #0x3f	; 63
      002DC2 08                    3279 	.db #0x08	; 8
      002DC3 08                    3280 	.db #0x08	; 8
      002DC4 08                    3281 	.db #0x08	; 8
      002DC5 08                    3282 	.db #0x08	; 8
      002DC6 00                    3283 	.db #0x00	; 0
      002DC7 00                    3284 	.db #0x00	; 0
      002DC8 00                    3285 	.db #0x00	; 0
      002DC9 3F                    3286 	.db #0x3f	; 63
      002DCA 0A                    3287 	.db #0x0a	; 10
      002DCB 0A                    3288 	.db #0x0a	; 10
      002DCC 0A                    3289 	.db #0x0a	; 10
      002DCD 0A                    3290 	.db #0x0a	; 10
      002DCE 0A                    3291 	.db #0x0a	; 10
      002DCF 0A                    3292 	.db #0x0a	; 10
      002DD0 0A                    3293 	.db #0x0a	; 10
      002DD1 3E                    3294 	.db #0x3e	; 62
      002DD2 00                    3295 	.db #0x00	; 0
      002DD3 00                    3296 	.db #0x00	; 0
      002DD4 00                    3297 	.db #0x00	; 0
      002DD5 00                    3298 	.db #0x00	; 0
      002DD6 08                    3299 	.db #0x08	; 8
      002DD7 38                    3300 	.db #0x38	; 56	'8'
      002DD8 08                    3301 	.db #0x08	; 8
      002DD9 38                    3302 	.db #0x38	; 56	'8'
      002DDA 00                    3303 	.db #0x00	; 0
      002DDB 00                    3304 	.db #0x00	; 0
      002DDC 00                    3305 	.db #0x00	; 0
      002DDD 00                    3306 	.db #0x00	; 0
      002DDE 00                    3307 	.db #0x00	; 0
      002DDF 38                    3308 	.db #0x38	; 56	'8'
      002DE0 08                    3309 	.db #0x08	; 8
      002DE1 38                    3310 	.db #0x38	; 56	'8'
      002DE2 08                    3311 	.db #0x08	; 8
      002DE3 08                    3312 	.db #0x08	; 8
      002DE4 08                    3313 	.db #0x08	; 8
      002DE5 08                    3314 	.db #0x08	; 8
      002DE6 00                    3315 	.db #0x00	; 0
      002DE7 00                    3316 	.db #0x00	; 0
      002DE8 00                    3317 	.db #0x00	; 0
      002DE9 3E                    3318 	.db #0x3e	; 62
      002DEA 0A                    3319 	.db #0x0a	; 10
      002DEB 0A                    3320 	.db #0x0a	; 10
      002DEC 0A                    3321 	.db #0x0a	; 10
      002DED 0A                    3322 	.db #0x0a	; 10
      002DEE 0A                    3323 	.db #0x0a	; 10
      002DEF 0A                    3324 	.db #0x0a	; 10
      002DF0 0A                    3325 	.db #0x0a	; 10
      002DF1 3B                    3326 	.db #0x3b	; 59
      002DF2 0A                    3327 	.db #0x0a	; 10
      002DF3 0A                    3328 	.db #0x0a	; 10
      002DF4 0A                    3329 	.db #0x0a	; 10
      002DF5 0A                    3330 	.db #0x0a	; 10
      002DF6 08                    3331 	.db #0x08	; 8
      002DF7 3F                    3332 	.db #0x3f	; 63
      002DF8 00                    3333 	.db #0x00	; 0
      002DF9 3F                    3334 	.db #0x3f	; 63
      002DFA 08                    3335 	.db #0x08	; 8
      002DFB 08                    3336 	.db #0x08	; 8
      002DFC 08                    3337 	.db #0x08	; 8
      002DFD 08                    3338 	.db #0x08	; 8
      002DFE 08                    3339 	.db #0x08	; 8
      002DFF 08                    3340 	.db #0x08	; 8
      002E00 08                    3341 	.db #0x08	; 8
      002E01 0F                    3342 	.db #0x0f	; 15
      002E02 00                    3343 	.db #0x00	; 0
      002E03 00                    3344 	.db #0x00	; 0
      002E04 00                    3345 	.db #0x00	; 0
      002E05 00                    3346 	.db #0x00	; 0
      002E06 00                    3347 	.db #0x00	; 0
      002E07 00                    3348 	.db #0x00	; 0
      002E08 00                    3349 	.db #0x00	; 0
      002E09 38                    3350 	.db #0x38	; 56	'8'
      002E0A 08                    3351 	.db #0x08	; 8
      002E0B 08                    3352 	.db #0x08	; 8
      002E0C 08                    3353 	.db #0x08	; 8
      002E0D 08                    3354 	.db #0x08	; 8
      002E0E 3F                    3355 	.db #0x3f	; 63
      002E0F 3F                    3356 	.db #0x3f	; 63
      002E10 3F                    3357 	.db #0x3f	; 63
      002E11 3F                    3358 	.db #0x3f	; 63
      002E12 3F                    3359 	.db #0x3f	; 63
      002E13 3F                    3360 	.db #0x3f	; 63
      002E14 3F                    3361 	.db #0x3f	; 63
      002E15 3F                    3362 	.db #0x3f	; 63
      002E16 00                    3363 	.db #0x00	; 0
      002E17 00                    3364 	.db #0x00	; 0
      002E18 00                    3365 	.db #0x00	; 0
      002E19 00                    3366 	.db #0x00	; 0
      002E1A 3F                    3367 	.db #0x3f	; 63
      002E1B 3F                    3368 	.db #0x3f	; 63
      002E1C 3F                    3369 	.db #0x3f	; 63
      002E1D 3F                    3370 	.db #0x3f	; 63
      002E1E 07                    3371 	.db #0x07	; 7
      002E1F 07                    3372 	.db #0x07	; 7
      002E20 07                    3373 	.db #0x07	; 7
      002E21 07                    3374 	.db #0x07	; 7
      002E22 07                    3375 	.db #0x07	; 7
      002E23 07                    3376 	.db #0x07	; 7
      002E24 07                    3377 	.db #0x07	; 7
      002E25 07                    3378 	.db #0x07	; 7
      002E26 38                    3379 	.db #0x38	; 56	'8'
      002E27 38                    3380 	.db #0x38	; 56	'8'
      002E28 38                    3381 	.db #0x38	; 56	'8'
      002E29 38                    3382 	.db #0x38	; 56	'8'
      002E2A 38                    3383 	.db #0x38	; 56	'8'
      002E2B 38                    3384 	.db #0x38	; 56	'8'
      002E2C 38                    3385 	.db #0x38	; 56	'8'
      002E2D 38                    3386 	.db #0x38	; 56	'8'
      002E2E 3F                    3387 	.db #0x3f	; 63
      002E2F 3F                    3388 	.db #0x3f	; 63
      002E30 3F                    3389 	.db #0x3f	; 63
      002E31 3F                    3390 	.db #0x3f	; 63
      002E32 00                    3391 	.db #0x00	; 0
      002E33 00                    3392 	.db #0x00	; 0
      002E34 00                    3393 	.db #0x00	; 0
      002E35 00                    3394 	.db #0x00	; 0
      002E36 00                    3395 	.db #0x00	; 0
      002E37 00                    3396 	.db #0x00	; 0
      002E38 2C                    3397 	.db #0x2c	; 44
      002E39 12                    3398 	.db #0x12	; 18
      002E3A 12                    3399 	.db #0x12	; 18
      002E3B 2C                    3400 	.db #0x2c	; 44
      002E3C 00                    3401 	.db #0x00	; 0
      002E3D 00                    3402 	.db #0x00	; 0
      002E3E 00                    3403 	.db #0x00	; 0
      002E3F 0E                    3404 	.db #0x0e	; 14
      002E40 12                    3405 	.db #0x12	; 18
      002E41 0E                    3406 	.db #0x0e	; 14
      002E42 12                    3407 	.db #0x12	; 18
      002E43 12                    3408 	.db #0x12	; 18
      002E44 0E                    3409 	.db #0x0e	; 14
      002E45 02                    3410 	.db #0x02	; 2
      002E46 1E                    3411 	.db #0x1e	; 30
      002E47 12                    3412 	.db #0x12	; 18
      002E48 02                    3413 	.db #0x02	; 2
      002E49 02                    3414 	.db #0x02	; 2
      002E4A 02                    3415 	.db #0x02	; 2
      002E4B 02                    3416 	.db #0x02	; 2
      002E4C 02                    3417 	.db #0x02	; 2
      002E4D 00                    3418 	.db #0x00	; 0
      002E4E 00                    3419 	.db #0x00	; 0
      002E4F 3E                    3420 	.db #0x3e	; 62
      002E50 14                    3421 	.db #0x14	; 20
      002E51 14                    3422 	.db #0x14	; 20
      002E52 14                    3423 	.db #0x14	; 20
      002E53 14                    3424 	.db #0x14	; 20
      002E54 14                    3425 	.db #0x14	; 20
      002E55 00                    3426 	.db #0x00	; 0
      002E56 1E                    3427 	.db #0x1e	; 30
      002E57 12                    3428 	.db #0x12	; 18
      002E58 04                    3429 	.db #0x04	; 4
      002E59 08                    3430 	.db #0x08	; 8
      002E5A 04                    3431 	.db #0x04	; 4
      002E5B 12                    3432 	.db #0x12	; 18
      002E5C 1E                    3433 	.db #0x1e	; 30
      002E5D 00                    3434 	.db #0x00	; 0
      002E5E 00                    3435 	.db #0x00	; 0
      002E5F 00                    3436 	.db #0x00	; 0
      002E60 3C                    3437 	.db #0x3c	; 60
      002E61 12                    3438 	.db #0x12	; 18
      002E62 12                    3439 	.db #0x12	; 18
      002E63 0C                    3440 	.db #0x0c	; 12
      002E64 00                    3441 	.db #0x00	; 0
      002E65 00                    3442 	.db #0x00	; 0
      002E66 00                    3443 	.db #0x00	; 0
      002E67 00                    3444 	.db #0x00	; 0
      002E68 12                    3445 	.db #0x12	; 18
      002E69 12                    3446 	.db #0x12	; 18
      002E6A 12                    3447 	.db #0x12	; 18
      002E6B 0E                    3448 	.db #0x0e	; 14
      002E6C 02                    3449 	.db #0x02	; 2
      002E6D 02                    3450 	.db #0x02	; 2
      002E6E 00                    3451 	.db #0x00	; 0
      002E6F 00                    3452 	.db #0x00	; 0
      002E70 14                    3453 	.db #0x14	; 20
      002E71 0A                    3454 	.db #0x0a	; 10
      002E72 08                    3455 	.db #0x08	; 8
      002E73 08                    3456 	.db #0x08	; 8
      002E74 08                    3457 	.db #0x08	; 8
      002E75 00                    3458 	.db #0x00	; 0
      002E76 1C                    3459 	.db #0x1c	; 28
      002E77 08                    3460 	.db #0x08	; 8
      002E78 1C                    3461 	.db #0x1c	; 28
      002E79 22                    3462 	.db #0x22	; 34
      002E7A 1C                    3463 	.db #0x1c	; 28
      002E7B 08                    3464 	.db #0x08	; 8
      002E7C 1C                    3465 	.db #0x1c	; 28
      002E7D 00                    3466 	.db #0x00	; 0
      002E7E 0C                    3467 	.db #0x0c	; 12
      002E7F 12                    3468 	.db #0x12	; 18
      002E80 12                    3469 	.db #0x12	; 18
      002E81 1E                    3470 	.db #0x1e	; 30
      002E82 12                    3471 	.db #0x12	; 18
      002E83 12                    3472 	.db #0x12	; 18
      002E84 0C                    3473 	.db #0x0c	; 12
      002E85 00                    3474 	.db #0x00	; 0
      002E86 00                    3475 	.db #0x00	; 0
      002E87 1C                    3476 	.db #0x1c	; 28
      002E88 22                    3477 	.db #0x22	; 34
      002E89 22                    3478 	.db #0x22	; 34
      002E8A 14                    3479 	.db #0x14	; 20
      002E8B 14                    3480 	.db #0x14	; 20
      002E8C 36                    3481 	.db #0x36	; 54	'6'
      002E8D 00                    3482 	.db #0x00	; 0
      002E8E 0C                    3483 	.db #0x0c	; 12
      002E8F 02                    3484 	.db #0x02	; 2
      002E90 04                    3485 	.db #0x04	; 4
      002E91 08                    3486 	.db #0x08	; 8
      002E92 1C                    3487 	.db #0x1c	; 28
      002E93 12                    3488 	.db #0x12	; 18
      002E94 0C                    3489 	.db #0x0c	; 12
      002E95 00                    3490 	.db #0x00	; 0
      002E96 00                    3491 	.db #0x00	; 0
      002E97 00                    3492 	.db #0x00	; 0
      002E98 14                    3493 	.db #0x14	; 20
      002E99 2A                    3494 	.db #0x2a	; 42
      002E9A 2A                    3495 	.db #0x2a	; 42
      002E9B 14                    3496 	.db #0x14	; 20
      002E9C 00                    3497 	.db #0x00	; 0
      002E9D 00                    3498 	.db #0x00	; 0
      002E9E 00                    3499 	.db #0x00	; 0
      002E9F 08                    3500 	.db #0x08	; 8
      002EA0 1C                    3501 	.db #0x1c	; 28
      002EA1 2A                    3502 	.db #0x2a	; 42
      002EA2 2A                    3503 	.db #0x2a	; 42
      002EA3 1C                    3504 	.db #0x1c	; 28
      002EA4 08                    3505 	.db #0x08	; 8
      002EA5 00                    3506 	.db #0x00	; 0
      002EA6 00                    3507 	.db #0x00	; 0
      002EA7 1C                    3508 	.db #0x1c	; 28
      002EA8 02                    3509 	.db #0x02	; 2
      002EA9 1E                    3510 	.db #0x1e	; 30
      002EAA 02                    3511 	.db #0x02	; 2
      002EAB 1C                    3512 	.db #0x1c	; 28
      002EAC 00                    3513 	.db #0x00	; 0
      002EAD 00                    3514 	.db #0x00	; 0
      002EAE 00                    3515 	.db #0x00	; 0
      002EAF 0C                    3516 	.db #0x0c	; 12
      002EB0 12                    3517 	.db #0x12	; 18
      002EB1 12                    3518 	.db #0x12	; 18
      002EB2 12                    3519 	.db #0x12	; 18
      002EB3 12                    3520 	.db #0x12	; 18
      002EB4 00                    3521 	.db #0x00	; 0
      002EB5 00                    3522 	.db #0x00	; 0
      002EB6 00                    3523 	.db #0x00	; 0
      002EB7 1E                    3524 	.db #0x1e	; 30
      002EB8 00                    3525 	.db #0x00	; 0
      002EB9 1E                    3526 	.db #0x1e	; 30
      002EBA 00                    3527 	.db #0x00	; 0
      002EBB 1E                    3528 	.db #0x1e	; 30
      002EBC 00                    3529 	.db #0x00	; 0
      002EBD 00                    3530 	.db #0x00	; 0
      002EBE 00                    3531 	.db #0x00	; 0
      002EBF 08                    3532 	.db #0x08	; 8
      002EC0 1C                    3533 	.db #0x1c	; 28
      002EC1 08                    3534 	.db #0x08	; 8
      002EC2 00                    3535 	.db #0x00	; 0
      002EC3 1C                    3536 	.db #0x1c	; 28
      002EC4 00                    3537 	.db #0x00	; 0
      002EC5 00                    3538 	.db #0x00	; 0
      002EC6 02                    3539 	.db #0x02	; 2
      002EC7 0C                    3540 	.db #0x0c	; 12
      002EC8 10                    3541 	.db #0x10	; 16
      002EC9 0C                    3542 	.db #0x0c	; 12
      002ECA 02                    3543 	.db #0x02	; 2
      002ECB 00                    3544 	.db #0x00	; 0
      002ECC 1E                    3545 	.db #0x1e	; 30
      002ECD 00                    3546 	.db #0x00	; 0
      002ECE 10                    3547 	.db #0x10	; 16
      002ECF 0C                    3548 	.db #0x0c	; 12
      002ED0 02                    3549 	.db #0x02	; 2
      002ED1 0C                    3550 	.db #0x0c	; 12
      002ED2 10                    3551 	.db #0x10	; 16
      002ED3 00                    3552 	.db #0x00	; 0
      002ED4 1E                    3553 	.db #0x1e	; 30
      002ED5 00                    3554 	.db #0x00	; 0
      002ED6 00                    3555 	.db #0x00	; 0
      002ED7 10                    3556 	.db #0x10	; 16
      002ED8 28                    3557 	.db #0x28	; 40
      002ED9 08                    3558 	.db #0x08	; 8
      002EDA 08                    3559 	.db #0x08	; 8
      002EDB 08                    3560 	.db #0x08	; 8
      002EDC 08                    3561 	.db #0x08	; 8
      002EDD 08                    3562 	.db #0x08	; 8
      002EDE 08                    3563 	.db #0x08	; 8
      002EDF 08                    3564 	.db #0x08	; 8
      002EE0 08                    3565 	.db #0x08	; 8
      002EE1 08                    3566 	.db #0x08	; 8
      002EE2 08                    3567 	.db #0x08	; 8
      002EE3 0A                    3568 	.db #0x0a	; 10
      002EE4 04                    3569 	.db #0x04	; 4
      002EE5 00                    3570 	.db #0x00	; 0
      002EE6 00                    3571 	.db #0x00	; 0
      002EE7 08                    3572 	.db #0x08	; 8
      002EE8 00                    3573 	.db #0x00	; 0
      002EE9 3E                    3574 	.db #0x3e	; 62
      002EEA 00                    3575 	.db #0x00	; 0
      002EEB 08                    3576 	.db #0x08	; 8
      002EEC 00                    3577 	.db #0x00	; 0
      002EED 00                    3578 	.db #0x00	; 0
      002EEE 00                    3579 	.db #0x00	; 0
      002EEF 14                    3580 	.db #0x14	; 20
      002EF0 0A                    3581 	.db #0x0a	; 10
      002EF1 00                    3582 	.db #0x00	; 0
      002EF2 14                    3583 	.db #0x14	; 20
      002EF3 0A                    3584 	.db #0x0a	; 10
      002EF4 00                    3585 	.db #0x00	; 0
      002EF5 00                    3586 	.db #0x00	; 0
      002EF6 0C                    3587 	.db #0x0c	; 12
      002EF7 12                    3588 	.db #0x12	; 18
      002EF8 12                    3589 	.db #0x12	; 18
      002EF9 0C                    3590 	.db #0x0c	; 12
      002EFA 00                    3591 	.db #0x00	; 0
      002EFB 00                    3592 	.db #0x00	; 0
      002EFC 00                    3593 	.db #0x00	; 0
      002EFD 00                    3594 	.db #0x00	; 0
      002EFE 00                    3595 	.db #0x00	; 0
      002EFF 00                    3596 	.db #0x00	; 0
      002F00 00                    3597 	.db #0x00	; 0
      002F01 0C                    3598 	.db #0x0c	; 12
      002F02 0C                    3599 	.db #0x0c	; 12
      002F03 00                    3600 	.db #0x00	; 0
      002F04 00                    3601 	.db #0x00	; 0
      002F05 00                    3602 	.db #0x00	; 0
      002F06 00                    3603 	.db #0x00	; 0
      002F07 00                    3604 	.db #0x00	; 0
      002F08 00                    3605 	.db #0x00	; 0
      002F09 04                    3606 	.db #0x04	; 4
      002F0A 00                    3607 	.db #0x00	; 0
      002F0B 00                    3608 	.db #0x00	; 0
      002F0C 00                    3609 	.db #0x00	; 0
      002F0D 00                    3610 	.db #0x00	; 0
      002F0E 00                    3611 	.db #0x00	; 0
      002F0F 38                    3612 	.db #0x38	; 56	'8'
      002F10 08                    3613 	.db #0x08	; 8
      002F11 08                    3614 	.db #0x08	; 8
      002F12 0A                    3615 	.db #0x0a	; 10
      002F13 0A                    3616 	.db #0x0a	; 10
      002F14 04                    3617 	.db #0x04	; 4
      002F15 00                    3618 	.db #0x00	; 0
      002F16 0A                    3619 	.db #0x0a	; 10
      002F17 14                    3620 	.db #0x14	; 20
      002F18 14                    3621 	.db #0x14	; 20
      002F19 14                    3622 	.db #0x14	; 20
      002F1A 00                    3623 	.db #0x00	; 0
      002F1B 00                    3624 	.db #0x00	; 0
      002F1C 00                    3625 	.db #0x00	; 0
      002F1D 00                    3626 	.db #0x00	; 0
      002F1E 06                    3627 	.db #0x06	; 6
      002F1F 08                    3628 	.db #0x08	; 8
      002F20 04                    3629 	.db #0x04	; 4
      002F21 0E                    3630 	.db #0x0e	; 14
      002F22 00                    3631 	.db #0x00	; 0
      002F23 00                    3632 	.db #0x00	; 0
      002F24 00                    3633 	.db #0x00	; 0
      002F25 00                    3634 	.db #0x00	; 0
      002F26 00                    3635 	.db #0x00	; 0
      002F27 00                    3636 	.db #0x00	; 0
      002F28 1E                    3637 	.db #0x1e	; 30
      002F29 1E                    3638 	.db #0x1e	; 30
      002F2A 1E                    3639 	.db #0x1e	; 30
      002F2B 1E                    3640 	.db #0x1e	; 30
      002F2C 00                    3641 	.db #0x00	; 0
      002F2D 00                    3642 	.db #0x00	; 0
      002F2E 00                    3643 	.db #0x00	; 0
      002F2F 00                    3644 	.db #0x00	; 0
      002F30 00                    3645 	.db #0x00	; 0
      002F31 00                    3646 	.db #0x00	; 0
      002F32 00                    3647 	.db #0x00	; 0
      002F33 00                    3648 	.db #0x00	; 0
      002F34 00                    3649 	.db #0x00	; 0
      002F35 00                    3650 	.db #0x00	; 0
      002F36                       3651 __xinit__initial:
      002F36 04 27 80              3652 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3653 	.area CABS    (ABS,CODE)
