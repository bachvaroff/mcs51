                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int0
                                     13 	.globl _fix_fftr
                                     14 	.globl ___memcpy
                                     15 	.globl _srand
                                     16 	.globl _rand
                                     17 	.globl _printf
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _FL
                                     25 	.globl _P
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ET2
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _T2EX
                                     88 	.globl _T2
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _B
                                    114 	.globl _A
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2MOD
                                    122 	.globl _T2CON
                                    123 	.globl _IP
                                    124 	.globl _P3
                                    125 	.globl _IE
                                    126 	.globl _P2
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _P1
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _P0
                                    141 	.globl _ifft
                                    142 	.globl _fft
                                    143 	.globl _samples
                                    144 	.globl _putchar
                                    145 	.globl _getchar
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000C8   169 _T2CON	=	0x00c8
                           0000C9   170 _T2MOD	=	0x00c9
                           0000CA   171 _RCAP2L	=	0x00ca
                           0000CB   172 _RCAP2H	=	0x00cb
                           0000CC   173 _TL2	=	0x00cc
                           0000CD   174 _TH2	=	0x00cd
                           0000D0   175 _PSW	=	0x00d0
                           0000E0   176 _ACC	=	0x00e0
                           0000E0   177 _A	=	0x00e0
                           0000F0   178 _B	=	0x00f0
                                    179 ;--------------------------------------------------------
                                    180 ; special function bits
                                    181 ;--------------------------------------------------------
                                    182 	.area RSEG    (ABS,DATA)
      000000                        183 	.org 0x0000
                           000080   184 _P0_0	=	0x0080
                           000081   185 _P0_1	=	0x0081
                           000082   186 _P0_2	=	0x0082
                           000083   187 _P0_3	=	0x0083
                           000084   188 _P0_4	=	0x0084
                           000085   189 _P0_5	=	0x0085
                           000086   190 _P0_6	=	0x0086
                           000087   191 _P0_7	=	0x0087
                           000088   192 _IT0	=	0x0088
                           000089   193 _IE0	=	0x0089
                           00008A   194 _IT1	=	0x008a
                           00008B   195 _IE1	=	0x008b
                           00008C   196 _TR0	=	0x008c
                           00008D   197 _TF0	=	0x008d
                           00008E   198 _TR1	=	0x008e
                           00008F   199 _TF1	=	0x008f
                           000090   200 _P1_0	=	0x0090
                           000091   201 _P1_1	=	0x0091
                           000092   202 _P1_2	=	0x0092
                           000093   203 _P1_3	=	0x0093
                           000094   204 _P1_4	=	0x0094
                           000095   205 _P1_5	=	0x0095
                           000096   206 _P1_6	=	0x0096
                           000097   207 _P1_7	=	0x0097
                           000090   208 _T2	=	0x0090
                           000091   209 _T2EX	=	0x0091
                           000098   210 _RI	=	0x0098
                           000099   211 _TI	=	0x0099
                           00009A   212 _RB8	=	0x009a
                           00009B   213 _TB8	=	0x009b
                           00009C   214 _REN	=	0x009c
                           00009D   215 _SM2	=	0x009d
                           00009E   216 _SM1	=	0x009e
                           00009F   217 _SM0	=	0x009f
                           0000A0   218 _P2_0	=	0x00a0
                           0000A1   219 _P2_1	=	0x00a1
                           0000A2   220 _P2_2	=	0x00a2
                           0000A3   221 _P2_3	=	0x00a3
                           0000A4   222 _P2_4	=	0x00a4
                           0000A5   223 _P2_5	=	0x00a5
                           0000A6   224 _P2_6	=	0x00a6
                           0000A7   225 _P2_7	=	0x00a7
                           0000A8   226 _EX0	=	0x00a8
                           0000A9   227 _ET0	=	0x00a9
                           0000AA   228 _EX1	=	0x00aa
                           0000AB   229 _ET1	=	0x00ab
                           0000AC   230 _ES	=	0x00ac
                           0000AD   231 _ET2	=	0x00ad
                           0000AF   232 _EA	=	0x00af
                           0000B0   233 _P3_0	=	0x00b0
                           0000B1   234 _P3_1	=	0x00b1
                           0000B2   235 _P3_2	=	0x00b2
                           0000B3   236 _P3_3	=	0x00b3
                           0000B4   237 _P3_4	=	0x00b4
                           0000B5   238 _P3_5	=	0x00b5
                           0000B6   239 _P3_6	=	0x00b6
                           0000B7   240 _P3_7	=	0x00b7
                           0000B0   241 _RXD	=	0x00b0
                           0000B1   242 _TXD	=	0x00b1
                           0000B2   243 _INT0	=	0x00b2
                           0000B3   244 _INT1	=	0x00b3
                           0000B4   245 _T0	=	0x00b4
                           0000B5   246 _T1	=	0x00b5
                           0000B6   247 _WR	=	0x00b6
                           0000B7   248 _RD	=	0x00b7
                           0000B8   249 _PX0	=	0x00b8
                           0000B9   250 _PT0	=	0x00b9
                           0000BA   251 _PX1	=	0x00ba
                           0000BB   252 _PT1	=	0x00bb
                           0000BC   253 _PS	=	0x00bc
                           0000BD   254 _PT2	=	0x00bd
                           0000C8   255 _T2CON_0	=	0x00c8
                           0000C9   256 _T2CON_1	=	0x00c9
                           0000CA   257 _T2CON_2	=	0x00ca
                           0000CB   258 _T2CON_3	=	0x00cb
                           0000CC   259 _T2CON_4	=	0x00cc
                           0000CD   260 _T2CON_5	=	0x00cd
                           0000CE   261 _T2CON_6	=	0x00ce
                           0000CF   262 _T2CON_7	=	0x00cf
                           0000C8   263 _CP_RL2	=	0x00c8
                           0000C9   264 _C_T2	=	0x00c9
                           0000CA   265 _TR2	=	0x00ca
                           0000CB   266 _EXEN2	=	0x00cb
                           0000CC   267 _TCLK	=	0x00cc
                           0000CD   268 _RCLK	=	0x00cd
                           0000CE   269 _EXF2	=	0x00ce
                           0000CF   270 _TF2	=	0x00cf
                           0000D0   271 _P	=	0x00d0
                           0000D1   272 _FL	=	0x00d1
                           0000D2   273 _OV	=	0x00d2
                           0000D3   274 _RS0	=	0x00d3
                           0000D4   275 _RS1	=	0x00d4
                           0000D5   276 _F0	=	0x00d5
                           0000D6   277 _AC	=	0x00d6
                           0000D7   278 _CY	=	0x00d7
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable register banks
                                    281 ;--------------------------------------------------------
                                    282 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        283 	.ds 8
                                    284 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        285 	.ds 8
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable bit register bank
                                    288 ;--------------------------------------------------------
                                    289 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        290 bits:
      000020                        291 	.ds 1
                           008000   292 	b0 = bits[0]
                           008100   293 	b1 = bits[1]
                           008200   294 	b2 = bits[2]
                           008300   295 	b3 = bits[3]
                           008400   296 	b4 = bits[4]
                           008500   297 	b5 = bits[5]
                           008600   298 	b6 = bits[6]
                           008700   299 	b7 = bits[7]
                                    300 ;--------------------------------------------------------
                                    301 ; internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area DSEG    (DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; overlayable items in internal ram 
                                    306 ;--------------------------------------------------------
                                    307 ;--------------------------------------------------------
                                    308 ; Stack segment in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 	.area	SSEG
      000021                        311 __start__stack:
      000021                        312 	.ds	1
                                    313 
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
      000011                        318 _print:
      000011                        319 	.ds 1
                                    320 ;--------------------------------------------------------
                                    321 ; absolute internal ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area IABS    (ABS,DATA)
                                    324 	.area IABS    (ABS,DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; bit data
                                    327 ;--------------------------------------------------------
                                    328 	.area BSEG    (BIT)
                                    329 ;--------------------------------------------------------
                                    330 ; paged external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area PSEG    (PAG,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XSEG    (XDATA)
      004C00                        337 _samples::
      004C00                        338 	.ds 128
      004C80                        339 _fft::
      004C80                        340 	.ds 128
      004D00                        341 _ifft::
      004D00                        342 	.ds 128
      004D80                        343 _main_R_65536_74:
      004D80                        344 	.ds 2
                                    345 ;--------------------------------------------------------
                                    346 ; absolute external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XABS    (ABS,XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; external initialized ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XISEG   (XDATA)
                                    353 	.area HOME    (CODE)
                                    354 	.area GSINIT0 (CODE)
                                    355 	.area GSINIT1 (CODE)
                                    356 	.area GSINIT2 (CODE)
                                    357 	.area GSINIT3 (CODE)
                                    358 	.area GSINIT4 (CODE)
                                    359 	.area GSINIT5 (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area CSEG    (CODE)
                                    363 ;--------------------------------------------------------
                                    364 ; interrupt vector 
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
      002000                        367 __interrupt_vect:
      002000 02 20 09         [24]  368 	ljmp	__sdcc_gsinit_startup
      002003 02 2C 30         [24]  369 	ljmp	_int0
                                    370 ;--------------------------------------------------------
                                    371 ; global & static initialisations
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.area GSFINAL (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.globl __sdcc_gsinit_startup
                                    378 	.globl __sdcc_program_startup
                                    379 	.globl __start__stack
                                    380 	.globl __mcs51_genXINIT
                                    381 	.globl __mcs51_genXRAMCLEAR
                                    382 	.globl __mcs51_genRAMCLEAR
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'main'
                                    385 ;------------------------------------------------------------
                                    386 ;i                         Allocated to registers 
                                    387 ;j                         Allocated to stack - _bp +1
                                    388 ;scale                     Allocated to stack - _bp +3
                                    389 ;sloc0                     Allocated to stack - _bp +7
                                    390 ;R                         Allocated with name '_main_R_65536_74'
                                    391 ;------------------------------------------------------------
                                    392 ;	main.c:41: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 4D 80         [24]  393 	mov	dptr,#_main_R_65536_74
      002065 74 FE            [12]  394 	mov	a,#0xfe
      002067 F0               [24]  395 	movx	@dptr,a
      002068 04               [12]  396 	inc	a
      002069 A3               [24]  397 	inc	dptr
      00206A F0               [24]  398 	movx	@dptr,a
                                    399 	.area GSFINAL (CODE)
      00206B 02 20 06         [24]  400 	ljmp	__sdcc_program_startup
                                    401 ;--------------------------------------------------------
                                    402 ; Home
                                    403 ;--------------------------------------------------------
                                    404 	.area HOME    (CODE)
                                    405 	.area HOME    (CODE)
      002006                        406 __sdcc_program_startup:
      002006 02 2C 4D         [24]  407 	ljmp	_main
                                    408 ;	return from main will return to caller
                                    409 ;--------------------------------------------------------
                                    410 ; code
                                    411 ;--------------------------------------------------------
                                    412 	.area CSEG    (CODE)
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'putchar'
                                    415 ;------------------------------------------------------------
                                    416 ;c                         Allocated to registers 
                                    417 ;------------------------------------------------------------
                                    418 ;	main.c:12: int putchar(int c) __naked {
                                    419 ;	-----------------------------------------
                                    420 ;	 function putchar
                                    421 ;	-----------------------------------------
      002C22                        422 _putchar:
                                    423 ;	naked function: no prologue.
                                    424 ;	main.c:17: __endasm;
      002C22 E5 82            [12]  425 	mov	a, dpl
      002C24 02 00 30         [24]  426 	ljmp	0x0030
                                    427 ;	main.c:18: }
                                    428 ;	naked function: no epilogue.
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'getchar'
                                    431 ;------------------------------------------------------------
                                    432 ;	main.c:20: int getchar(void) __naked {
                                    433 ;	-----------------------------------------
                                    434 ;	 function getchar
                                    435 ;	-----------------------------------------
      002C27                        436 _getchar:
                                    437 ;	naked function: no prologue.
                                    438 ;	main.c:26: __endasm;
      002C27 12 00 32         [24]  439 	lcall	0x0032
      002C2A F5 82            [12]  440 	mov	dpl, a
      002C2C 75 83 00         [24]  441 	mov	dph, #0
      002C2F 22               [24]  442 	ret
                                    443 ;	main.c:27: }
                                    444 ;	naked function: no epilogue.
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'int0'
                                    447 ;------------------------------------------------------------
                                    448 ;	main.c:31: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    449 ;	-----------------------------------------
                                    450 ;	 function int0
                                    451 ;	-----------------------------------------
      002C30                        452 _int0:
                           00000F   453 	ar7 = 0x0f
                           00000E   454 	ar6 = 0x0e
                           00000D   455 	ar5 = 0x0d
                           00000C   456 	ar4 = 0x0c
                           00000B   457 	ar3 = 0x0b
                           00000A   458 	ar2 = 0x0a
                           000009   459 	ar1 = 0x09
                           000008   460 	ar0 = 0x08
      002C30 C0 20            [24]  461 	push	bits
      002C32 C0 E0            [24]  462 	push	acc
      002C34 C0 D0            [24]  463 	push	psw
      002C36 75 D0 08         [24]  464 	mov	psw,#0x08
                                    465 ;	main.c:32: print = !print;
      002C39 78 11            [12]  466 	mov	r0,#_print
      002C3B E6               [12]  467 	mov	a,@r0
      002C3C B4 01 00         [24]  468 	cjne	a,#0x01,00103$
      002C3F                        469 00103$:
      002C3F 92 00            [24]  470 	mov	b0,c
      002C41 78 11            [12]  471 	mov	r0,#_print
      002C43 E4               [12]  472 	clr	a
      002C44 33               [12]  473 	rlc	a
      002C45 F6               [12]  474 	mov	@r0,a
                                    475 ;	main.c:33: }
      002C46 D0 D0            [24]  476 	pop	psw
      002C48 D0 E0            [24]  477 	pop	acc
      002C4A D0 20            [24]  478 	pop	bits
      002C4C 32               [24]  479 	reti
                                    480 ;	eliminated unneeded push/pop dpl
                                    481 ;	eliminated unneeded push/pop dph
                                    482 ;	eliminated unneeded push/pop b
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'main'
                                    485 ;------------------------------------------------------------
                                    486 ;i                         Allocated to registers 
                                    487 ;j                         Allocated to stack - _bp +1
                                    488 ;scale                     Allocated to stack - _bp +3
                                    489 ;sloc0                     Allocated to stack - _bp +7
                                    490 ;R                         Allocated with name '_main_R_65536_74'
                                    491 ;------------------------------------------------------------
                                    492 ;	main.c:40: void main(void) {
                                    493 ;	-----------------------------------------
                                    494 ;	 function main
                                    495 ;	-----------------------------------------
      002C4D                        496 _main:
                           000007   497 	ar7 = 0x07
                           000006   498 	ar6 = 0x06
                           000005   499 	ar5 = 0x05
                           000004   500 	ar4 = 0x04
                           000003   501 	ar3 = 0x03
                           000002   502 	ar2 = 0x02
                           000001   503 	ar1 = 0x01
                           000000   504 	ar0 = 0x00
      002C4D C0 10            [24]  505 	push	_bp
      002C4F E5 81            [12]  506 	mov	a,sp
      002C51 F5 10            [12]  507 	mov	_bp,a
      002C53 24 04            [12]  508 	add	a,#0x04
      002C55 F5 81            [12]  509 	mov	sp,a
                                    510 ;	main.c:45: print = 1;
      002C57 78 11            [12]  511 	mov	r0,#_print
      002C59 76 01            [12]  512 	mov	@r0,#0x01
                                    513 ;	main.c:47: IT0 = 1;
                                    514 ;	assignBit
      002C5B D2 88            [12]  515 	setb	_IT0
                                    516 ;	main.c:48: EX0 = 1;
                                    517 ;	assignBit
      002C5D D2 A8            [12]  518 	setb	_EX0
                                    519 ;	main.c:49: EA = 1;
                                    520 ;	assignBit
      002C5F D2 AF            [12]  521 	setb	_EA
                                    522 ;	main.c:51: srand(*R);
      002C61 90 4D 80         [24]  523 	mov	dptr,#_main_R_65536_74
      002C64 E0               [24]  524 	movx	a,@dptr
      002C65 FE               [12]  525 	mov	r6,a
      002C66 A3               [24]  526 	inc	dptr
      002C67 E0               [24]  527 	movx	a,@dptr
      002C68 FF               [12]  528 	mov	r7,a
      002C69 8E 82            [24]  529 	mov	dpl,r6
      002C6B 8F 83            [24]  530 	mov	dph,r7
      002C6D E0               [24]  531 	movx	a,@dptr
      002C6E FE               [12]  532 	mov	r6,a
      002C6F A3               [24]  533 	inc	dptr
      002C70 E0               [24]  534 	movx	a,@dptr
      002C71 FF               [12]  535 	mov	r7,a
      002C72 8E 82            [24]  536 	mov	dpl,r6
      002C74 8F 83            [24]  537 	mov	dph,r7
      002C76 12 2F 67         [24]  538 	lcall	_srand
                                    539 ;	main.c:53: for (i = 0; 1; i++) {
      002C79 7E 00            [12]  540 	mov	r6,#0x00
      002C7B 7F 00            [12]  541 	mov	r7,#0x00
                                    542 ;	main.c:54: for (j = 0; j < (1 << N); j++)
      002C7D                        543 00117$:
      002C7D A8 10            [24]  544 	mov	r0,_bp
      002C7F 08               [12]  545 	inc	r0
      002C80 E4               [12]  546 	clr	a
      002C81 F6               [12]  547 	mov	@r0,a
      002C82 08               [12]  548 	inc	r0
      002C83 F6               [12]  549 	mov	@r0,a
      002C84                        550 00106$:
                                    551 ;	main.c:55: samples[j] = ((rand() & 1) ? -1 : 1) * (int16_t)rand();
      002C84 A8 10            [24]  552 	mov	r0,_bp
      002C86 08               [12]  553 	inc	r0
      002C87 E6               [12]  554 	mov	a,@r0
      002C88 25 E0            [12]  555 	add	a,acc
      002C8A FA               [12]  556 	mov	r2,a
      002C8B 08               [12]  557 	inc	r0
      002C8C E6               [12]  558 	mov	a,@r0
      002C8D 33               [12]  559 	rlc	a
      002C8E FB               [12]  560 	mov	r3,a
      002C8F EA               [12]  561 	mov	a,r2
      002C90 24 00            [12]  562 	add	a,#_samples
      002C92 FA               [12]  563 	mov	r2,a
      002C93 EB               [12]  564 	mov	a,r3
      002C94 34 4C            [12]  565 	addc	a,#(_samples >> 8)
      002C96 FB               [12]  566 	mov	r3,a
      002C97 C0 07            [24]  567 	push	ar7
      002C99 C0 06            [24]  568 	push	ar6
      002C9B C0 03            [24]  569 	push	ar3
      002C9D C0 02            [24]  570 	push	ar2
      002C9F 12 2E A3         [24]  571 	lcall	_rand
      002CA2 E5 82            [12]  572 	mov	a,dpl
      002CA4 85 83 F0         [24]  573 	mov	b,dph
      002CA7 D0 02            [24]  574 	pop	ar2
      002CA9 D0 03            [24]  575 	pop	ar3
      002CAB D0 06            [24]  576 	pop	ar6
      002CAD D0 07            [24]  577 	pop	ar7
      002CAF 30 E0 06         [24]  578 	jnb	acc.0,00114$
      002CB2 7C FF            [12]  579 	mov	r4,#0xff
      002CB4 7D FF            [12]  580 	mov	r5,#0xff
      002CB6 80 04            [24]  581 	sjmp	00115$
      002CB8                        582 00114$:
      002CB8 7C 01            [12]  583 	mov	r4,#0x01
      002CBA 7D 00            [12]  584 	mov	r5,#0x00
      002CBC                        585 00115$:
      002CBC C0 06            [24]  586 	push	ar6
      002CBE C0 07            [24]  587 	push	ar7
      002CC0 C0 05            [24]  588 	push	ar5
      002CC2 C0 04            [24]  589 	push	ar4
      002CC4 C0 03            [24]  590 	push	ar3
      002CC6 C0 02            [24]  591 	push	ar2
      002CC8 12 2E A3         [24]  592 	lcall	_rand
      002CCB AE 82            [24]  593 	mov	r6,dpl
      002CCD AF 83            [24]  594 	mov	r7,dph
      002CCF D0 02            [24]  595 	pop	ar2
      002CD1 D0 03            [24]  596 	pop	ar3
      002CD3 D0 04            [24]  597 	pop	ar4
      002CD5 D0 05            [24]  598 	pop	ar5
      002CD7 C0 03            [24]  599 	push	ar3
      002CD9 C0 02            [24]  600 	push	ar2
      002CDB C0 06            [24]  601 	push	ar6
      002CDD C0 07            [24]  602 	push	ar7
      002CDF 8C 82            [24]  603 	mov	dpl,r4
      002CE1 8D 83            [24]  604 	mov	dph,r5
      002CE3 12 2F 9B         [24]  605 	lcall	__mulint
      002CE6 AE 82            [24]  606 	mov	r6,dpl
      002CE8 AF 83            [24]  607 	mov	r7,dph
      002CEA 15 81            [12]  608 	dec	sp
      002CEC 15 81            [12]  609 	dec	sp
      002CEE D0 02            [24]  610 	pop	ar2
      002CF0 D0 03            [24]  611 	pop	ar3
      002CF2 8A 82            [24]  612 	mov	dpl,r2
      002CF4 8B 83            [24]  613 	mov	dph,r3
      002CF6 EE               [12]  614 	mov	a,r6
      002CF7 F0               [24]  615 	movx	@dptr,a
      002CF8 EF               [12]  616 	mov	a,r7
      002CF9 A3               [24]  617 	inc	dptr
      002CFA F0               [24]  618 	movx	@dptr,a
                                    619 ;	main.c:54: for (j = 0; j < (1 << N); j++)
      002CFB A8 10            [24]  620 	mov	r0,_bp
      002CFD 08               [12]  621 	inc	r0
      002CFE 06               [12]  622 	inc	@r0
      002CFF B6 00 02         [24]  623 	cjne	@r0,#0x00,00143$
      002D02 08               [12]  624 	inc	r0
      002D03 06               [12]  625 	inc	@r0
      002D04                        626 00143$:
      002D04 A8 10            [24]  627 	mov	r0,_bp
      002D06 08               [12]  628 	inc	r0
      002D07 C3               [12]  629 	clr	c
      002D08 E6               [12]  630 	mov	a,@r0
      002D09 94 40            [12]  631 	subb	a,#0x40
      002D0B 08               [12]  632 	inc	r0
      002D0C E6               [12]  633 	mov	a,@r0
      002D0D 64 80            [12]  634 	xrl	a,#0x80
      002D0F 94 80            [12]  635 	subb	a,#0x80
      002D11 D0 07            [24]  636 	pop	ar7
      002D13 D0 06            [24]  637 	pop	ar6
      002D15 50 03            [24]  638 	jnc	00144$
      002D17 02 2C 84         [24]  639 	ljmp	00106$
      002D1A                        640 00144$:
                                    641 ;	main.c:57: printf("DO FFT IFFT %d\r\n", i);
      002D1A C0 07            [24]  642 	push	ar7
      002D1C C0 06            [24]  643 	push	ar6
      002D1E C0 06            [24]  644 	push	ar6
      002D20 C0 07            [24]  645 	push	ar7
      002D22 74 2D            [12]  646 	mov	a,#___str_0
      002D24 C0 E0            [24]  647 	push	acc
      002D26 74 45            [12]  648 	mov	a,#(___str_0 >> 8)
      002D28 C0 E0            [24]  649 	push	acc
      002D2A 74 80            [12]  650 	mov	a,#0x80
      002D2C C0 E0            [24]  651 	push	acc
      002D2E 12 31 12         [24]  652 	lcall	_printf
      002D31 E5 81            [12]  653 	mov	a,sp
      002D33 24 FB            [12]  654 	add	a,#0xfb
      002D35 F5 81            [12]  655 	mov	sp,a
                                    656 ;	main.c:59: memcpy(fft, samples, sizeof (samples));
      002D37 74 80            [12]  657 	mov	a,#0x80
      002D39 C0 E0            [24]  658 	push	acc
      002D3B E4               [12]  659 	clr	a
      002D3C C0 E0            [24]  660 	push	acc
      002D3E 74 00            [12]  661 	mov	a,#_samples
      002D40 C0 E0            [24]  662 	push	acc
      002D42 74 4C            [12]  663 	mov	a,#(_samples >> 8)
      002D44 C0 E0            [24]  664 	push	acc
      002D46 E4               [12]  665 	clr	a
      002D47 C0 E0            [24]  666 	push	acc
      002D49 90 4C 80         [24]  667 	mov	dptr,#_fft
      002D4C 75 F0 00         [24]  668 	mov	b,#0x00
      002D4F 12 30 39         [24]  669 	lcall	___memcpy
      002D52 E5 81            [12]  670 	mov	a,sp
      002D54 24 FB            [12]  671 	add	a,#0xfb
      002D56 F5 81            [12]  672 	mov	sp,a
                                    673 ;	main.c:60: scale = fix_fftr(fft, N, 0);		
      002D58 E4               [12]  674 	clr	a
      002D59 C0 E0            [24]  675 	push	acc
      002D5B C0 E0            [24]  676 	push	acc
      002D5D 74 06            [12]  677 	mov	a,#0x06
      002D5F C0 E0            [24]  678 	push	acc
      002D61 E4               [12]  679 	clr	a
      002D62 C0 E0            [24]  680 	push	acc
      002D64 90 4C 80         [24]  681 	mov	dptr,#_fft
      002D67 75 F0 00         [24]  682 	mov	b,#0x00
      002D6A 12 2A 21         [24]  683 	lcall	_fix_fftr
      002D6D E5 81            [12]  684 	mov	a,sp
      002D6F 24 FC            [12]  685 	add	a,#0xfc
      002D71 F5 81            [12]  686 	mov	sp,a
                                    687 ;	main.c:67: memcpy(ifft, fft, sizeof (fft));
      002D73 74 80            [12]  688 	mov	a,#0x80
      002D75 C0 E0            [24]  689 	push	acc
      002D77 E4               [12]  690 	clr	a
      002D78 C0 E0            [24]  691 	push	acc
      002D7A 74 80            [12]  692 	mov	a,#_fft
      002D7C C0 E0            [24]  693 	push	acc
      002D7E 74 4C            [12]  694 	mov	a,#(_fft >> 8)
      002D80 C0 E0            [24]  695 	push	acc
      002D82 E4               [12]  696 	clr	a
      002D83 C0 E0            [24]  697 	push	acc
      002D85 90 4D 00         [24]  698 	mov	dptr,#_ifft
      002D88 75 F0 00         [24]  699 	mov	b,#0x00
      002D8B 12 30 39         [24]  700 	lcall	___memcpy
      002D8E E5 81            [12]  701 	mov	a,sp
      002D90 24 FB            [12]  702 	add	a,#0xfb
      002D92 F5 81            [12]  703 	mov	sp,a
                                    704 ;	main.c:68: scale = fix_fftr(ifft, N, 1);
      002D94 74 01            [12]  705 	mov	a,#0x01
      002D96 C0 E0            [24]  706 	push	acc
      002D98 E4               [12]  707 	clr	a
      002D99 C0 E0            [24]  708 	push	acc
      002D9B 74 06            [12]  709 	mov	a,#0x06
      002D9D C0 E0            [24]  710 	push	acc
      002D9F E4               [12]  711 	clr	a
      002DA0 C0 E0            [24]  712 	push	acc
      002DA2 90 4D 00         [24]  713 	mov	dptr,#_ifft
      002DA5 75 F0 00         [24]  714 	mov	b,#0x00
      002DA8 12 2A 21         [24]  715 	lcall	_fix_fftr
      002DAB AC 82            [24]  716 	mov	r4,dpl
      002DAD AD 83            [24]  717 	mov	r5,dph
      002DAF E5 81            [12]  718 	mov	a,sp
      002DB1 24 FC            [12]  719 	add	a,#0xfc
      002DB3 F5 81            [12]  720 	mov	sp,a
      002DB5 D0 06            [24]  721 	pop	ar6
      002DB7 D0 07            [24]  722 	pop	ar7
      002DB9 E5 10            [12]  723 	mov	a,_bp
      002DBB 24 03            [12]  724 	add	a,#0x03
      002DBD F8               [12]  725 	mov	r0,a
      002DBE A6 04            [24]  726 	mov	@r0,ar4
      002DC0 08               [12]  727 	inc	r0
      002DC1 A6 05            [24]  728 	mov	@r0,ar5
                                    729 ;	main.c:70: if (print)
      002DC3 78 11            [12]  730 	mov	r0,#_print
      002DC5 E6               [12]  731 	mov	a,@r0
      002DC6 70 03            [24]  732 	jnz	00145$
      002DC8 02 2E 78         [24]  733 	ljmp	00104$
      002DCB                        734 00145$:
                                    735 ;	main.c:71: for (j = 0; j < (1 << N); j++)
      002DCB A8 10            [24]  736 	mov	r0,_bp
      002DCD 08               [12]  737 	inc	r0
      002DCE E4               [12]  738 	clr	a
      002DCF F6               [12]  739 	mov	@r0,a
      002DD0 08               [12]  740 	inc	r0
      002DD1 F6               [12]  741 	mov	@r0,a
      002DD2                        742 00108$:
                                    743 ;	main.c:73: samples[j], ifft[j] * (1 << scale));
      002DD2 C0 06            [24]  744 	push	ar6
      002DD4 C0 07            [24]  745 	push	ar7
      002DD6 A8 10            [24]  746 	mov	r0,_bp
      002DD8 08               [12]  747 	inc	r0
      002DD9 E6               [12]  748 	mov	a,@r0
      002DDA 25 E0            [12]  749 	add	a,acc
      002DDC FE               [12]  750 	mov	r6,a
      002DDD 08               [12]  751 	inc	r0
      002DDE E6               [12]  752 	mov	a,@r0
      002DDF 33               [12]  753 	rlc	a
      002DE0 FF               [12]  754 	mov	r7,a
      002DE1 EE               [12]  755 	mov	a,r6
      002DE2 24 00            [12]  756 	add	a,#_ifft
      002DE4 F5 82            [12]  757 	mov	dpl,a
      002DE6 EF               [12]  758 	mov	a,r7
      002DE7 34 4D            [12]  759 	addc	a,#(_ifft >> 8)
      002DE9 F5 83            [12]  760 	mov	dph,a
      002DEB E0               [24]  761 	movx	a,@dptr
      002DEC FC               [12]  762 	mov	r4,a
      002DED A3               [24]  763 	inc	dptr
      002DEE E0               [24]  764 	movx	a,@dptr
      002DEF FD               [12]  765 	mov	r5,a
      002DF0 E5 10            [12]  766 	mov	a,_bp
      002DF2 24 03            [12]  767 	add	a,#0x03
      002DF4 F8               [12]  768 	mov	r0,a
      002DF5 86 03            [24]  769 	mov	ar3,@r0
      002DF7 8B F0            [24]  770 	mov	b,r3
      002DF9 05 F0            [12]  771 	inc	b
      002DFB 7B 01            [12]  772 	mov	r3,#0x01
      002DFD 7A 00            [12]  773 	mov	r2,#0x00
      002DFF 80 06            [24]  774 	sjmp	00147$
      002E01                        775 00146$:
      002E01 EB               [12]  776 	mov	a,r3
      002E02 2B               [12]  777 	add	a,r3
      002E03 FB               [12]  778 	mov	r3,a
      002E04 EA               [12]  779 	mov	a,r2
      002E05 33               [12]  780 	rlc	a
      002E06 FA               [12]  781 	mov	r2,a
      002E07                        782 00147$:
      002E07 D5 F0 F7         [24]  783 	djnz	b,00146$
      002E0A C0 07            [24]  784 	push	ar7
      002E0C C0 06            [24]  785 	push	ar6
      002E0E C0 03            [24]  786 	push	ar3
      002E10 C0 02            [24]  787 	push	ar2
      002E12 8C 82            [24]  788 	mov	dpl,r4
      002E14 8D 83            [24]  789 	mov	dph,r5
      002E16 12 2F 9B         [24]  790 	lcall	__mulint
      002E19 AC 82            [24]  791 	mov	r4,dpl
      002E1B AD 83            [24]  792 	mov	r5,dph
      002E1D 15 81            [12]  793 	dec	sp
      002E1F 15 81            [12]  794 	dec	sp
      002E21 D0 06            [24]  795 	pop	ar6
      002E23 D0 07            [24]  796 	pop	ar7
      002E25 EE               [12]  797 	mov	a,r6
      002E26 24 00            [12]  798 	add	a,#_samples
      002E28 F5 82            [12]  799 	mov	dpl,a
      002E2A EF               [12]  800 	mov	a,r7
      002E2B 34 4C            [12]  801 	addc	a,#(_samples >> 8)
      002E2D F5 83            [12]  802 	mov	dph,a
      002E2F E0               [24]  803 	movx	a,@dptr
      002E30 FE               [12]  804 	mov	r6,a
      002E31 A3               [24]  805 	inc	dptr
      002E32 E0               [24]  806 	movx	a,@dptr
      002E33 FF               [12]  807 	mov	r7,a
                                    808 ;	main.c:72: printf("% 8d% 8d\r\n",
      002E34 C0 07            [24]  809 	push	ar7
      002E36 C0 06            [24]  810 	push	ar6
      002E38 C0 04            [24]  811 	push	ar4
      002E3A C0 05            [24]  812 	push	ar5
      002E3C C0 06            [24]  813 	push	ar6
      002E3E C0 07            [24]  814 	push	ar7
      002E40 74 3E            [12]  815 	mov	a,#___str_1
      002E42 C0 E0            [24]  816 	push	acc
      002E44 74 45            [12]  817 	mov	a,#(___str_1 >> 8)
      002E46 C0 E0            [24]  818 	push	acc
      002E48 74 80            [12]  819 	mov	a,#0x80
      002E4A C0 E0            [24]  820 	push	acc
      002E4C 12 31 12         [24]  821 	lcall	_printf
      002E4F E5 81            [12]  822 	mov	a,sp
      002E51 24 F9            [12]  823 	add	a,#0xf9
      002E53 F5 81            [12]  824 	mov	sp,a
      002E55 D0 06            [24]  825 	pop	ar6
      002E57 D0 07            [24]  826 	pop	ar7
                                    827 ;	main.c:71: for (j = 0; j < (1 << N); j++)
      002E59 A8 10            [24]  828 	mov	r0,_bp
      002E5B 08               [12]  829 	inc	r0
      002E5C 06               [12]  830 	inc	@r0
      002E5D B6 00 02         [24]  831 	cjne	@r0,#0x00,00148$
      002E60 08               [12]  832 	inc	r0
      002E61 06               [12]  833 	inc	@r0
      002E62                        834 00148$:
      002E62 A8 10            [24]  835 	mov	r0,_bp
      002E64 08               [12]  836 	inc	r0
      002E65 C3               [12]  837 	clr	c
      002E66 E6               [12]  838 	mov	a,@r0
      002E67 94 40            [12]  839 	subb	a,#0x40
      002E69 08               [12]  840 	inc	r0
      002E6A E6               [12]  841 	mov	a,@r0
      002E6B 64 80            [12]  842 	xrl	a,#0x80
      002E6D 94 80            [12]  843 	subb	a,#0x80
      002E6F D0 07            [24]  844 	pop	ar7
      002E71 D0 06            [24]  845 	pop	ar6
      002E73 50 03            [24]  846 	jnc	00149$
      002E75 02 2D D2         [24]  847 	ljmp	00108$
      002E78                        848 00149$:
      002E78                        849 00104$:
                                    850 ;	main.c:75: printf("DONE\r\n\r\n");
      002E78 C0 07            [24]  851 	push	ar7
      002E7A C0 06            [24]  852 	push	ar6
      002E7C 74 49            [12]  853 	mov	a,#___str_2
      002E7E C0 E0            [24]  854 	push	acc
      002E80 74 45            [12]  855 	mov	a,#(___str_2 >> 8)
      002E82 C0 E0            [24]  856 	push	acc
      002E84 74 80            [12]  857 	mov	a,#0x80
      002E86 C0 E0            [24]  858 	push	acc
      002E88 12 31 12         [24]  859 	lcall	_printf
      002E8B 15 81            [12]  860 	dec	sp
      002E8D 15 81            [12]  861 	dec	sp
      002E8F 15 81            [12]  862 	dec	sp
      002E91 D0 06            [24]  863 	pop	ar6
      002E93 D0 07            [24]  864 	pop	ar7
                                    865 ;	main.c:53: for (i = 0; 1; i++) {
      002E95 0E               [12]  866 	inc	r6
      002E96 BE 00 01         [24]  867 	cjne	r6,#0x00,00150$
      002E99 0F               [12]  868 	inc	r7
      002E9A                        869 00150$:
      002E9A 02 2C 7D         [24]  870 	ljmp	00117$
                                    871 ;	main.c:80: return;
                                    872 ;	main.c:81: }
      002E9D 85 10 81         [24]  873 	mov	sp,_bp
      002EA0 D0 10            [24]  874 	pop	_bp
      002EA2 22               [24]  875 	ret
                                    876 	.area CSEG    (CODE)
                                    877 	.area CONST   (CODE)
                                    878 	.area CONST   (CODE)
      00452D                        879 ___str_0:
      00452D 44 4F 20 46 46 54 20   880 	.ascii "DO FFT IFFT %d"
             49 46 46 54 20 25 64
      00453B 0D                     881 	.db 0x0d
      00453C 0A                     882 	.db 0x0a
      00453D 00                     883 	.db 0x00
                                    884 	.area CSEG    (CODE)
                                    885 	.area CONST   (CODE)
      00453E                        886 ___str_1:
      00453E 25 20 38 64 25 20 38   887 	.ascii "% 8d% 8d"
             64
      004546 0D                     888 	.db 0x0d
      004547 0A                     889 	.db 0x0a
      004548 00                     890 	.db 0x00
                                    891 	.area CSEG    (CODE)
                                    892 	.area CONST   (CODE)
      004549                        893 ___str_2:
      004549 44 4F 4E 45            894 	.ascii "DONE"
      00454D 0D                     895 	.db 0x0d
      00454E 0A                     896 	.db 0x0a
      00454F 0D                     897 	.db 0x0d
      004550 0A                     898 	.db 0x0a
      004551 00                     899 	.db 0x00
                                    900 	.area CSEG    (CODE)
                                    901 	.area XINIT   (CODE)
                                    902 	.area CABS    (ABS,CODE)
