                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module dhry_1
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _init
                                     13 	.globl _clock
                                     14 	.globl _Func_2
                                     15 	.globl _Func_1
                                     16 	.globl _Proc_8
                                     17 	.globl _Proc_7
                                     18 	.globl _Proc_6
                                     19 	.globl ___memcpy
                                     20 	.globl _strcpy
                                     21 	.globl _printf
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _FL
                                     29 	.globl _P
                                     30 	.globl _TF2
                                     31 	.globl _EXF2
                                     32 	.globl _RCLK
                                     33 	.globl _TCLK
                                     34 	.globl _EXEN2
                                     35 	.globl _TR2
                                     36 	.globl _C_T2
                                     37 	.globl _CP_RL2
                                     38 	.globl _T2CON_7
                                     39 	.globl _T2CON_6
                                     40 	.globl _T2CON_5
                                     41 	.globl _T2CON_4
                                     42 	.globl _T2CON_3
                                     43 	.globl _T2CON_2
                                     44 	.globl _T2CON_1
                                     45 	.globl _T2CON_0
                                     46 	.globl _PT2
                                     47 	.globl _PS
                                     48 	.globl _PT1
                                     49 	.globl _PX1
                                     50 	.globl _PT0
                                     51 	.globl _PX0
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _EA
                                     69 	.globl _ET2
                                     70 	.globl _ES
                                     71 	.globl _ET1
                                     72 	.globl _EX1
                                     73 	.globl _ET0
                                     74 	.globl _EX0
                                     75 	.globl _P2_7
                                     76 	.globl _P2_6
                                     77 	.globl _P2_5
                                     78 	.globl _P2_4
                                     79 	.globl _P2_3
                                     80 	.globl _P2_2
                                     81 	.globl _P2_1
                                     82 	.globl _P2_0
                                     83 	.globl _SM0
                                     84 	.globl _SM1
                                     85 	.globl _SM2
                                     86 	.globl _REN
                                     87 	.globl _TB8
                                     88 	.globl _RB8
                                     89 	.globl _TI
                                     90 	.globl _RI
                                     91 	.globl _T2EX
                                     92 	.globl _T2
                                     93 	.globl _P1_7
                                     94 	.globl _P1_6
                                     95 	.globl _P1_5
                                     96 	.globl _P1_4
                                     97 	.globl _P1_3
                                     98 	.globl _P1_2
                                     99 	.globl _P1_1
                                    100 	.globl _P1_0
                                    101 	.globl _TF1
                                    102 	.globl _TR1
                                    103 	.globl _TF0
                                    104 	.globl _TR0
                                    105 	.globl _IE1
                                    106 	.globl _IT1
                                    107 	.globl _IE0
                                    108 	.globl _IT0
                                    109 	.globl _P0_7
                                    110 	.globl _P0_6
                                    111 	.globl _P0_5
                                    112 	.globl _P0_4
                                    113 	.globl _P0_3
                                    114 	.globl _P0_2
                                    115 	.globl _P0_1
                                    116 	.globl _P0_0
                                    117 	.globl _B
                                    118 	.globl _A
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _TH2
                                    122 	.globl _TL2
                                    123 	.globl _RCAP2H
                                    124 	.globl _RCAP2L
                                    125 	.globl _T2MOD
                                    126 	.globl _T2CON
                                    127 	.globl _IP
                                    128 	.globl _P3
                                    129 	.globl _IE
                                    130 	.globl _P2
                                    131 	.globl _SBUF
                                    132 	.globl _SCON
                                    133 	.globl _P1
                                    134 	.globl _TH1
                                    135 	.globl _TH0
                                    136 	.globl _TL1
                                    137 	.globl _TL0
                                    138 	.globl _TMOD
                                    139 	.globl _TCON
                                    140 	.globl _PCON
                                    141 	.globl _DPH
                                    142 	.globl _DPL
                                    143 	.globl _SP
                                    144 	.globl _P0
                                    145 	.globl _Reg
                                    146 	.globl _malloc_2
                                    147 	.globl _malloc_1
                                    148 	.globl _Dhrystones_Per_Second
                                    149 	.globl _Microseconds
                                    150 	.globl _User_Time
                                    151 	.globl _End_Time
                                    152 	.globl _Begin_Time
                                    153 	.globl _Arr_2_Glob
                                    154 	.globl _Arr_1_Glob
                                    155 	.globl _Ch_2_Glob
                                    156 	.globl _Ch_1_Glob
                                    157 	.globl _Bool_Glob
                                    158 	.globl _Int_Glob
                                    159 	.globl _Next_Ptr_Glob
                                    160 	.globl _Ptr_Glob
                                    161 	.globl _Proc_1
                                    162 	.globl _Proc_2
                                    163 	.globl _Proc_3
                                    164 	.globl _Proc_4
                                    165 	.globl _Proc_5
                                    166 ;--------------------------------------------------------
                                    167 ; special function registers
                                    168 ;--------------------------------------------------------
                                    169 	.area RSEG    (ABS,DATA)
      000000                        170 	.org 0x0000
                           000080   171 _P0	=	0x0080
                           000081   172 _SP	=	0x0081
                           000082   173 _DPL	=	0x0082
                           000083   174 _DPH	=	0x0083
                           000087   175 _PCON	=	0x0087
                           000088   176 _TCON	=	0x0088
                           000089   177 _TMOD	=	0x0089
                           00008A   178 _TL0	=	0x008a
                           00008B   179 _TL1	=	0x008b
                           00008C   180 _TH0	=	0x008c
                           00008D   181 _TH1	=	0x008d
                           000090   182 _P1	=	0x0090
                           000098   183 _SCON	=	0x0098
                           000099   184 _SBUF	=	0x0099
                           0000A0   185 _P2	=	0x00a0
                           0000A8   186 _IE	=	0x00a8
                           0000B0   187 _P3	=	0x00b0
                           0000B8   188 _IP	=	0x00b8
                           0000C8   189 _T2CON	=	0x00c8
                           0000C9   190 _T2MOD	=	0x00c9
                           0000CA   191 _RCAP2L	=	0x00ca
                           0000CB   192 _RCAP2H	=	0x00cb
                           0000CC   193 _TL2	=	0x00cc
                           0000CD   194 _TH2	=	0x00cd
                           0000D0   195 _PSW	=	0x00d0
                           0000E0   196 _ACC	=	0x00e0
                           0000E0   197 _A	=	0x00e0
                           0000F0   198 _B	=	0x00f0
                                    199 ;--------------------------------------------------------
                                    200 ; special function bits
                                    201 ;--------------------------------------------------------
                                    202 	.area RSEG    (ABS,DATA)
      000000                        203 	.org 0x0000
                           000080   204 _P0_0	=	0x0080
                           000081   205 _P0_1	=	0x0081
                           000082   206 _P0_2	=	0x0082
                           000083   207 _P0_3	=	0x0083
                           000084   208 _P0_4	=	0x0084
                           000085   209 _P0_5	=	0x0085
                           000086   210 _P0_6	=	0x0086
                           000087   211 _P0_7	=	0x0087
                           000088   212 _IT0	=	0x0088
                           000089   213 _IE0	=	0x0089
                           00008A   214 _IT1	=	0x008a
                           00008B   215 _IE1	=	0x008b
                           00008C   216 _TR0	=	0x008c
                           00008D   217 _TF0	=	0x008d
                           00008E   218 _TR1	=	0x008e
                           00008F   219 _TF1	=	0x008f
                           000090   220 _P1_0	=	0x0090
                           000091   221 _P1_1	=	0x0091
                           000092   222 _P1_2	=	0x0092
                           000093   223 _P1_3	=	0x0093
                           000094   224 _P1_4	=	0x0094
                           000095   225 _P1_5	=	0x0095
                           000096   226 _P1_6	=	0x0096
                           000097   227 _P1_7	=	0x0097
                           000090   228 _T2	=	0x0090
                           000091   229 _T2EX	=	0x0091
                           000098   230 _RI	=	0x0098
                           000099   231 _TI	=	0x0099
                           00009A   232 _RB8	=	0x009a
                           00009B   233 _TB8	=	0x009b
                           00009C   234 _REN	=	0x009c
                           00009D   235 _SM2	=	0x009d
                           00009E   236 _SM1	=	0x009e
                           00009F   237 _SM0	=	0x009f
                           0000A0   238 _P2_0	=	0x00a0
                           0000A1   239 _P2_1	=	0x00a1
                           0000A2   240 _P2_2	=	0x00a2
                           0000A3   241 _P2_3	=	0x00a3
                           0000A4   242 _P2_4	=	0x00a4
                           0000A5   243 _P2_5	=	0x00a5
                           0000A6   244 _P2_6	=	0x00a6
                           0000A7   245 _P2_7	=	0x00a7
                           0000A8   246 _EX0	=	0x00a8
                           0000A9   247 _ET0	=	0x00a9
                           0000AA   248 _EX1	=	0x00aa
                           0000AB   249 _ET1	=	0x00ab
                           0000AC   250 _ES	=	0x00ac
                           0000AD   251 _ET2	=	0x00ad
                           0000AF   252 _EA	=	0x00af
                           0000B0   253 _P3_0	=	0x00b0
                           0000B1   254 _P3_1	=	0x00b1
                           0000B2   255 _P3_2	=	0x00b2
                           0000B3   256 _P3_3	=	0x00b3
                           0000B4   257 _P3_4	=	0x00b4
                           0000B5   258 _P3_5	=	0x00b5
                           0000B6   259 _P3_6	=	0x00b6
                           0000B7   260 _P3_7	=	0x00b7
                           0000B0   261 _RXD	=	0x00b0
                           0000B1   262 _TXD	=	0x00b1
                           0000B2   263 _INT0	=	0x00b2
                           0000B3   264 _INT1	=	0x00b3
                           0000B4   265 _T0	=	0x00b4
                           0000B5   266 _T1	=	0x00b5
                           0000B6   267 _WR	=	0x00b6
                           0000B7   268 _RD	=	0x00b7
                           0000B8   269 _PX0	=	0x00b8
                           0000B9   270 _PT0	=	0x00b9
                           0000BA   271 _PX1	=	0x00ba
                           0000BB   272 _PT1	=	0x00bb
                           0000BC   273 _PS	=	0x00bc
                           0000BD   274 _PT2	=	0x00bd
                           0000C8   275 _T2CON_0	=	0x00c8
                           0000C9   276 _T2CON_1	=	0x00c9
                           0000CA   277 _T2CON_2	=	0x00ca
                           0000CB   278 _T2CON_3	=	0x00cb
                           0000CC   279 _T2CON_4	=	0x00cc
                           0000CD   280 _T2CON_5	=	0x00cd
                           0000CE   281 _T2CON_6	=	0x00ce
                           0000CF   282 _T2CON_7	=	0x00cf
                           0000C8   283 _CP_RL2	=	0x00c8
                           0000C9   284 _C_T2	=	0x00c9
                           0000CA   285 _TR2	=	0x00ca
                           0000CB   286 _EXEN2	=	0x00cb
                           0000CC   287 _TCLK	=	0x00cc
                           0000CD   288 _RCLK	=	0x00cd
                           0000CE   289 _EXF2	=	0x00ce
                           0000CF   290 _TF2	=	0x00cf
                           0000D0   291 _P	=	0x00d0
                           0000D1   292 _FL	=	0x00d1
                           0000D2   293 _OV	=	0x00d2
                           0000D3   294 _RS0	=	0x00d3
                           0000D4   295 _RS1	=	0x00d4
                           0000D5   296 _F0	=	0x00d5
                           0000D6   297 _AC	=	0x00d6
                           0000D7   298 _CY	=	0x00d7
                                    299 ;--------------------------------------------------------
                                    300 ; overlayable register banks
                                    301 ;--------------------------------------------------------
                                    302 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        303 	.ds 8
                                    304 ;--------------------------------------------------------
                                    305 ; internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area DSEG    (DATA)
      000010                        308 _Proc_1_sloc0_1_0:
      000010                        309 	.ds 3
      000013                        310 _Proc_1_sloc1_1_0:
      000013                        311 	.ds 3
      000016                        312 _Proc_1_sloc2_1_0:
      000016                        313 	.ds 3
                                    314 ;--------------------------------------------------------
                                    315 ; overlayable items in internal ram 
                                    316 ;--------------------------------------------------------
                                    317 ;--------------------------------------------------------
                                    318 ; Stack segment in internal ram 
                                    319 ;--------------------------------------------------------
                                    320 	.area	SSEG
      000042                        321 __start__stack:
      000042                        322 	.ds	1
                                    323 
                                    324 ;--------------------------------------------------------
                                    325 ; indirectly addressable internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area ISEG    (DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; absolute internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area IABS    (ABS,DATA)
                                    332 	.area IABS    (ABS,DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; bit data
                                    335 ;--------------------------------------------------------
                                    336 	.area BSEG    (BIT)
                                    337 ;--------------------------------------------------------
                                    338 ; paged external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area PSEG    (PAG,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XSEG    (XDATA)
      008000                        345 _Ptr_Glob::
      008000                        346 	.ds 3
      008003                        347 _Next_Ptr_Glob::
      008003                        348 	.ds 3
      008006                        349 _Int_Glob::
      008006                        350 	.ds 2
      008008                        351 _Bool_Glob::
      008008                        352 	.ds 2
      00800A                        353 _Ch_1_Glob::
      00800A                        354 	.ds 1
      00800B                        355 _Ch_2_Glob::
      00800B                        356 	.ds 1
      00800C                        357 _Arr_1_Glob::
      00800C                        358 	.ds 100
      008070                        359 _Arr_2_Glob::
      008070                        360 	.ds 5000
      0093F8                        361 _Begin_Time::
      0093F8                        362 	.ds 4
      0093FC                        363 _End_Time::
      0093FC                        364 	.ds 4
      009400                        365 _User_Time::
      009400                        366 	.ds 4
      009404                        367 _Microseconds::
      009404                        368 	.ds 4
      009408                        369 _Dhrystones_Per_Second::
      009408                        370 	.ds 4
      00940C                        371 _malloc_1::
      00940C                        372 	.ds 38
      009432                        373 _malloc_2::
      009432                        374 	.ds 38
      009458                        375 _main_Int_1_Loc_65536_54:
      009458                        376 	.ds 2
      00945A                        377 _main_Int_2_Loc_65536_54:
      00945A                        378 	.ds 2
      00945C                        379 _main_Int_3_Loc_65536_54:
      00945C                        380 	.ds 2
      00945E                        381 _main_Enum_Loc_65536_54:
      00945E                        382 	.ds 1
      00945F                        383 _main_Str_1_Loc_65536_54:
      00945F                        384 	.ds 31
      00947E                        385 _main_Str_2_Loc_65536_54:
      00947E                        386 	.ds 31
      00949D                        387 _Proc_1_Ptr_Val_Par_65536_66:
      00949D                        388 	.ds 3
      0094A0                        389 _Proc_2_Int_Par_Ref_65536_69:
      0094A0                        390 	.ds 3
      0094A3                        391 _Proc_2_Enum_Loc_65536_70:
      0094A3                        392 	.ds 1
      0094A4                        393 _Proc_3_Ptr_Ref_Par_65536_72:
      0094A4                        394 	.ds 3
                                    395 ;--------------------------------------------------------
                                    396 ; absolute external ram data
                                    397 ;--------------------------------------------------------
                                    398 	.area XABS    (ABS,XDATA)
                                    399 ;--------------------------------------------------------
                                    400 ; external initialized ram data
                                    401 ;--------------------------------------------------------
                                    402 	.area XISEG   (XDATA)
      009527                        403 _Reg::
      009527                        404 	.ds 2
                                    405 	.area HOME    (CODE)
                                    406 	.area GSINIT0 (CODE)
                                    407 	.area GSINIT1 (CODE)
                                    408 	.area GSINIT2 (CODE)
                                    409 	.area GSINIT3 (CODE)
                                    410 	.area GSINIT4 (CODE)
                                    411 	.area GSINIT5 (CODE)
                                    412 	.area GSINIT  (CODE)
                                    413 	.area GSFINAL (CODE)
                                    414 	.area CSEG    (CODE)
                                    415 ;--------------------------------------------------------
                                    416 ; interrupt vector 
                                    417 ;--------------------------------------------------------
                                    418 	.area HOME    (CODE)
      002000                        419 __interrupt_vect:
      002000 02 20 11         [24]  420 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  421 	reti
      002004                        422 	.ds	7
      00200B 02 34 7A         [24]  423 	ljmp	_clockinc
                                    424 ;--------------------------------------------------------
                                    425 ; global & static initialisations
                                    426 ;--------------------------------------------------------
                                    427 	.area HOME    (CODE)
                                    428 	.area GSINIT  (CODE)
                                    429 	.area GSFINAL (CODE)
                                    430 	.area GSINIT  (CODE)
                                    431 	.globl __sdcc_gsinit_startup
                                    432 	.globl __sdcc_program_startup
                                    433 	.globl __start__stack
                                    434 	.globl __mcs51_genXINIT
                                    435 	.globl __mcs51_genXRAMCLEAR
                                    436 	.globl __mcs51_genRAMCLEAR
                                    437 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  438 	ljmp	__sdcc_program_startup
                                    439 ;--------------------------------------------------------
                                    440 ; Home
                                    441 ;--------------------------------------------------------
                                    442 	.area HOME    (CODE)
                                    443 	.area HOME    (CODE)
      00200E                        444 __sdcc_program_startup:
      00200E 02 20 6D         [24]  445 	ljmp	_main
                                    446 ;	return from main will return to caller
                                    447 ;--------------------------------------------------------
                                    448 ; code
                                    449 ;--------------------------------------------------------
                                    450 	.area CSEG    (CODE)
                                    451 ;------------------------------------------------------------
                                    452 ;Allocation info for local variables in function 'main'
                                    453 ;------------------------------------------------------------
                                    454 ;Int_1_Loc                 Allocated with name '_main_Int_1_Loc_65536_54'
                                    455 ;Int_2_Loc                 Allocated with name '_main_Int_2_Loc_65536_54'
                                    456 ;Int_3_Loc                 Allocated with name '_main_Int_3_Loc_65536_54'
                                    457 ;Ch_Index                  Allocated with name '_main_Ch_Index_65536_54'
                                    458 ;Enum_Loc                  Allocated with name '_main_Enum_Loc_65536_54'
                                    459 ;Str_1_Loc                 Allocated with name '_main_Str_1_Loc_65536_54'
                                    460 ;Str_2_Loc                 Allocated with name '_main_Str_2_Loc_65536_54'
                                    461 ;Run_Index                 Allocated with name '_main_Run_Index_65536_54'
                                    462 ;Number_Of_Runs            Allocated with name '_main_Number_Of_Runs_65536_54'
                                    463 ;n                         Allocated with name '_main_n_131072_57'
                                    464 ;------------------------------------------------------------
                                    465 ;	dhry_1.c:84: void main (void)
                                    466 ;	-----------------------------------------
                                    467 ;	 function main
                                    468 ;	-----------------------------------------
      00206D                        469 _main:
                           000007   470 	ar7 = 0x07
                           000006   471 	ar6 = 0x06
                           000005   472 	ar5 = 0x05
                           000004   473 	ar4 = 0x04
                           000003   474 	ar3 = 0x03
                           000002   475 	ar2 = 0x02
                           000001   476 	ar1 = 0x01
                           000000   477 	ar0 = 0x00
                                    478 ;	dhry_1.c:102: init();
                                    479 ;	genCall
      00206D 12 34 6A         [24]  480 	lcall	_init
                                    481 ;	dhry_1.c:104: Next_Ptr_Glob = /*(Rec_Pointer) malloc (sizeof (Rec_Type))*/ &malloc_1;
                                    482 ;	genAssign
      002070 90 80 03         [24]  483 	mov	dptr,#_Next_Ptr_Glob
      002073 74 0C            [12]  484 	mov	a,#_malloc_1
      002075 F0               [24]  485 	movx	@dptr,a
      002076 74 94            [12]  486 	mov	a,#(_malloc_1 >> 8)
      002078 A3               [24]  487 	inc	dptr
      002079 F0               [24]  488 	movx	@dptr,a
                                    489 ;	Peephole 181	changed mov to clr
      00207A E4               [12]  490 	clr	a
      00207B A3               [24]  491 	inc	dptr
      00207C F0               [24]  492 	movx	@dptr,a
                                    493 ;	dhry_1.c:105: Ptr_Glob = /*(Rec_Pointer) malloc (sizeof (Rec_Type))*/ &malloc_2;
                                    494 ;	genAssign
      00207D 90 80 00         [24]  495 	mov	dptr,#_Ptr_Glob
      002080 74 32            [12]  496 	mov	a,#_malloc_2
      002082 F0               [24]  497 	movx	@dptr,a
      002083 74 94            [12]  498 	mov	a,#(_malloc_2 >> 8)
      002085 A3               [24]  499 	inc	dptr
      002086 F0               [24]  500 	movx	@dptr,a
                                    501 ;	Peephole 181	changed mov to clr
      002087 E4               [12]  502 	clr	a
      002088 A3               [24]  503 	inc	dptr
      002089 F0               [24]  504 	movx	@dptr,a
                                    505 ;	dhry_1.c:107: Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
                                    506 ;	genPointerSet
                                    507 ;	genFarPointerSet
      00208A 90 94 32         [24]  508 	mov	dptr,#_malloc_2
      00208D 74 0C            [12]  509 	mov	a,#_malloc_1
      00208F F0               [24]  510 	movx	@dptr,a
      002090 74 94            [12]  511 	mov	a,#(_malloc_1 >> 8)
      002092 A3               [24]  512 	inc	dptr
      002093 F0               [24]  513 	movx	@dptr,a
                                    514 ;	Peephole 181	changed mov to clr
      002094 E4               [12]  515 	clr	a
      002095 A3               [24]  516 	inc	dptr
      002096 F0               [24]  517 	movx	@dptr,a
                                    518 ;	dhry_1.c:108: Ptr_Glob->Discr                       = Ident_1;
                                    519 ;	genAssign
      002097 90 80 00         [24]  520 	mov	dptr,#_Ptr_Glob
      00209A E0               [24]  521 	movx	a,@dptr
      00209B FD               [12]  522 	mov	r5,a
      00209C A3               [24]  523 	inc	dptr
      00209D E0               [24]  524 	movx	a,@dptr
      00209E FE               [12]  525 	mov	r6,a
      00209F A3               [24]  526 	inc	dptr
      0020A0 E0               [24]  527 	movx	a,@dptr
      0020A1 FF               [12]  528 	mov	r7,a
                                    529 ;	genPlus
                                    530 ;	genPlusIncr
      0020A2 74 03            [12]  531 	mov	a,#0x03
      0020A4 2D               [12]  532 	add	a,r5
      0020A5 FD               [12]  533 	mov	r5,a
                                    534 ;	Peephole 181	changed mov to clr
      0020A6 E4               [12]  535 	clr	a
      0020A7 3E               [12]  536 	addc	a,r6
      0020A8 FE               [12]  537 	mov	r6,a
                                    538 ;	genPointerSet
                                    539 ;	genGenPointerSet
      0020A9 8D 82            [24]  540 	mov	dpl,r5
      0020AB 8E 83            [24]  541 	mov	dph,r6
      0020AD 8F F0            [24]  542 	mov	b,r7
                                    543 ;	Peephole 181	changed mov to clr
      0020AF E4               [12]  544 	clr	a
      0020B0 12 37 4F         [24]  545 	lcall	__gptrput
                                    546 ;	dhry_1.c:109: Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
                                    547 ;	genAssign
      0020B3 90 80 00         [24]  548 	mov	dptr,#_Ptr_Glob
      0020B6 E0               [24]  549 	movx	a,@dptr
      0020B7 FD               [12]  550 	mov	r5,a
      0020B8 A3               [24]  551 	inc	dptr
      0020B9 E0               [24]  552 	movx	a,@dptr
      0020BA FE               [12]  553 	mov	r6,a
      0020BB A3               [24]  554 	inc	dptr
      0020BC E0               [24]  555 	movx	a,@dptr
      0020BD FF               [12]  556 	mov	r7,a
                                    557 ;	genPlus
                                    558 ;	genPlusIncr
      0020BE 74 04            [12]  559 	mov	a,#0x04
      0020C0 2D               [12]  560 	add	a,r5
      0020C1 FD               [12]  561 	mov	r5,a
                                    562 ;	Peephole 181	changed mov to clr
      0020C2 E4               [12]  563 	clr	a
      0020C3 3E               [12]  564 	addc	a,r6
      0020C4 FE               [12]  565 	mov	r6,a
                                    566 ;	genPointerSet
                                    567 ;	genGenPointerSet
      0020C5 8D 82            [24]  568 	mov	dpl,r5
      0020C7 8E 83            [24]  569 	mov	dph,r6
      0020C9 8F F0            [24]  570 	mov	b,r7
      0020CB 74 02            [12]  571 	mov	a,#0x02
      0020CD 12 37 4F         [24]  572 	lcall	__gptrput
                                    573 ;	dhry_1.c:110: Ptr_Glob->variant.var_1.Int_Comp      = 40;
                                    574 ;	genAssign
      0020D0 90 80 00         [24]  575 	mov	dptr,#_Ptr_Glob
      0020D3 E0               [24]  576 	movx	a,@dptr
      0020D4 FD               [12]  577 	mov	r5,a
      0020D5 A3               [24]  578 	inc	dptr
      0020D6 E0               [24]  579 	movx	a,@dptr
      0020D7 FE               [12]  580 	mov	r6,a
      0020D8 A3               [24]  581 	inc	dptr
      0020D9 E0               [24]  582 	movx	a,@dptr
      0020DA FF               [12]  583 	mov	r7,a
                                    584 ;	genPlus
                                    585 ;	genPlusIncr
      0020DB 74 05            [12]  586 	mov	a,#0x05
      0020DD 2D               [12]  587 	add	a,r5
      0020DE FD               [12]  588 	mov	r5,a
                                    589 ;	Peephole 181	changed mov to clr
      0020DF E4               [12]  590 	clr	a
      0020E0 3E               [12]  591 	addc	a,r6
      0020E1 FE               [12]  592 	mov	r6,a
                                    593 ;	genPointerSet
                                    594 ;	genGenPointerSet
      0020E2 8D 82            [24]  595 	mov	dpl,r5
      0020E4 8E 83            [24]  596 	mov	dph,r6
      0020E6 8F F0            [24]  597 	mov	b,r7
      0020E8 74 28            [12]  598 	mov	a,#0x28
      0020EA 12 37 4F         [24]  599 	lcall	__gptrput
      0020ED A3               [24]  600 	inc	dptr
                                    601 ;	Peephole 181	changed mov to clr
      0020EE E4               [12]  602 	clr	a
      0020EF 12 37 4F         [24]  603 	lcall	__gptrput
                                    604 ;	dhry_1.c:111: strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
                                    605 ;	genAssign
      0020F2 90 80 00         [24]  606 	mov	dptr,#_Ptr_Glob
      0020F5 E0               [24]  607 	movx	a,@dptr
      0020F6 FD               [12]  608 	mov	r5,a
      0020F7 A3               [24]  609 	inc	dptr
      0020F8 E0               [24]  610 	movx	a,@dptr
      0020F9 FE               [12]  611 	mov	r6,a
      0020FA A3               [24]  612 	inc	dptr
      0020FB E0               [24]  613 	movx	a,@dptr
      0020FC FF               [12]  614 	mov	r7,a
                                    615 ;	genPlus
                                    616 ;	genPlusIncr
      0020FD 74 07            [12]  617 	mov	a,#0x07
      0020FF 2D               [12]  618 	add	a,r5
      002100 FD               [12]  619 	mov	r5,a
                                    620 ;	Peephole 181	changed mov to clr
      002101 E4               [12]  621 	clr	a
      002102 3E               [12]  622 	addc	a,r6
      002103 FE               [12]  623 	mov	r6,a
                                    624 ;	dhry_1.c:112: "DHRYSTONE PROGRAM, SOME STRING");
                                    625 ;	genCast
      002104 90 94 CE         [24]  626 	mov	dptr,#_strcpy_PARM_2
      002107 74 F7            [12]  627 	mov	a,#___str_0
      002109 F0               [24]  628 	movx	@dptr,a
      00210A 74 44            [12]  629 	mov	a,#(___str_0 >> 8)
      00210C A3               [24]  630 	inc	dptr
      00210D F0               [24]  631 	movx	@dptr,a
      00210E 74 80            [12]  632 	mov	a,#0x80
      002110 A3               [24]  633 	inc	dptr
      002111 F0               [24]  634 	movx	@dptr,a
                                    635 ;	genCall
      002112 8D 82            [24]  636 	mov	dpl,r5
      002114 8E 83            [24]  637 	mov	dph,r6
      002116 8F F0            [24]  638 	mov	b,r7
      002118 12 34 E4         [24]  639 	lcall	_strcpy
                                    640 ;	dhry_1.c:113: strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
                                    641 ;	genCast
      00211B 90 94 CE         [24]  642 	mov	dptr,#_strcpy_PARM_2
      00211E 74 16            [12]  643 	mov	a,#___str_1
      002120 F0               [24]  644 	movx	@dptr,a
      002121 74 45            [12]  645 	mov	a,#(___str_1 >> 8)
      002123 A3               [24]  646 	inc	dptr
      002124 F0               [24]  647 	movx	@dptr,a
      002125 74 80            [12]  648 	mov	a,#0x80
      002127 A3               [24]  649 	inc	dptr
      002128 F0               [24]  650 	movx	@dptr,a
                                    651 ;	genCall
                                    652 ;	Peephole 182.a	used 16 bit load of DPTR
      002129 90 94 5F         [24]  653 	mov	dptr,#_main_Str_1_Loc_65536_54
      00212C 75 F0 00         [24]  654 	mov	b,#0x00
      00212F 12 34 E4         [24]  655 	lcall	_strcpy
                                    656 ;	dhry_1.c:115: Arr_2_Glob [8][7] = 10;
                                    657 ;	genPointerSet
                                    658 ;	genFarPointerSet
      002132 90 83 9E         [24]  659 	mov	dptr,#(_Arr_2_Glob + 0x032e)
      002135 74 0A            [12]  660 	mov	a,#0x0a
      002137 F0               [24]  661 	movx	@dptr,a
                                    662 ;	Peephole 181	changed mov to clr
      002138 E4               [12]  663 	clr	a
      002139 A3               [24]  664 	inc	dptr
      00213A F0               [24]  665 	movx	@dptr,a
                                    666 ;	dhry_1.c:121: printf ("\r\n");
                                    667 ;	genIpush
      00213B 74 35            [12]  668 	mov	a,#___str_2
      00213D C0 E0            [24]  669 	push	acc
      00213F 74 45            [12]  670 	mov	a,#(___str_2 >> 8)
      002141 C0 E0            [24]  671 	push	acc
      002143 74 80            [12]  672 	mov	a,#0x80
      002145 C0 E0            [24]  673 	push	acc
                                    674 ;	genCall
      002147 12 39 AF         [24]  675 	lcall	_printf
      00214A 15 81            [12]  676 	dec	sp
      00214C 15 81            [12]  677 	dec	sp
      00214E 15 81            [12]  678 	dec	sp
                                    679 ;	dhry_1.c:122: printf ("Dhrystone Benchmark, Version 2.1 (Language: C)\r\n");
                                    680 ;	genIpush
      002150 74 38            [12]  681 	mov	a,#___str_3
      002152 C0 E0            [24]  682 	push	acc
      002154 74 45            [12]  683 	mov	a,#(___str_3 >> 8)
      002156 C0 E0            [24]  684 	push	acc
      002158 74 80            [12]  685 	mov	a,#0x80
      00215A C0 E0            [24]  686 	push	acc
                                    687 ;	genCall
      00215C 12 39 AF         [24]  688 	lcall	_printf
      00215F 15 81            [12]  689 	dec	sp
      002161 15 81            [12]  690 	dec	sp
      002163 15 81            [12]  691 	dec	sp
                                    692 ;	dhry_1.c:123: printf ("\r\n");
                                    693 ;	genIpush
      002165 74 35            [12]  694 	mov	a,#___str_2
      002167 C0 E0            [24]  695 	push	acc
      002169 74 45            [12]  696 	mov	a,#(___str_2 >> 8)
      00216B C0 E0            [24]  697 	push	acc
      00216D 74 80            [12]  698 	mov	a,#0x80
      00216F C0 E0            [24]  699 	push	acc
                                    700 ;	genCall
      002171 12 39 AF         [24]  701 	lcall	_printf
      002174 15 81            [12]  702 	dec	sp
      002176 15 81            [12]  703 	dec	sp
      002178 15 81            [12]  704 	dec	sp
                                    705 ;	dhry_1.c:124: if (Reg)
                                    706 ;	genIfx
      00217A 90 95 27         [24]  707 	mov	dptr,#_Reg
      00217D E0               [24]  708 	movx	a,@dptr
      00217E F5 F0            [12]  709 	mov	b,a
      002180 A3               [24]  710 	inc	dptr
      002181 E0               [24]  711 	movx	a,@dptr
      002182 45 F0            [12]  712 	orl	a,b
                                    713 ;	genIfxJump
                                    714 ;	Peephole 108.c	removed ljmp by inverse jump logic
      002184 60 2C            [24]  715 	jz	00102$
                                    716 ;	Peephole 500	removed redundant label 00161$
                                    717 ;	dhry_1.c:126: printf ("Program compiled with 'register' attribute\r\n");
                                    718 ;	genIpush
      002186 74 69            [12]  719 	mov	a,#___str_4
      002188 C0 E0            [24]  720 	push	acc
      00218A 74 45            [12]  721 	mov	a,#(___str_4 >> 8)
      00218C C0 E0            [24]  722 	push	acc
      00218E 74 80            [12]  723 	mov	a,#0x80
      002190 C0 E0            [24]  724 	push	acc
                                    725 ;	genCall
      002192 12 39 AF         [24]  726 	lcall	_printf
      002195 15 81            [12]  727 	dec	sp
      002197 15 81            [12]  728 	dec	sp
      002199 15 81            [12]  729 	dec	sp
                                    730 ;	dhry_1.c:127: printf ("\r\n");
                                    731 ;	genIpush
      00219B 74 35            [12]  732 	mov	a,#___str_2
      00219D C0 E0            [24]  733 	push	acc
      00219F 74 45            [12]  734 	mov	a,#(___str_2 >> 8)
      0021A1 C0 E0            [24]  735 	push	acc
      0021A3 74 80            [12]  736 	mov	a,#0x80
      0021A5 C0 E0            [24]  737 	push	acc
                                    738 ;	genCall
      0021A7 12 39 AF         [24]  739 	lcall	_printf
      0021AA 15 81            [12]  740 	dec	sp
      0021AC 15 81            [12]  741 	dec	sp
      0021AE 15 81            [12]  742 	dec	sp
                                    743 ;	Peephole 112.b	changed ljmp to sjmp
      0021B0 80 2A            [24]  744 	sjmp	00103$
      0021B2                        745 00102$:
                                    746 ;	dhry_1.c:131: printf ("Program compiled without 'register' attribute\r\n");
                                    747 ;	genIpush
      0021B2 74 96            [12]  748 	mov	a,#___str_5
      0021B4 C0 E0            [24]  749 	push	acc
      0021B6 74 45            [12]  750 	mov	a,#(___str_5 >> 8)
      0021B8 C0 E0            [24]  751 	push	acc
      0021BA 74 80            [12]  752 	mov	a,#0x80
      0021BC C0 E0            [24]  753 	push	acc
                                    754 ;	genCall
      0021BE 12 39 AF         [24]  755 	lcall	_printf
      0021C1 15 81            [12]  756 	dec	sp
      0021C3 15 81            [12]  757 	dec	sp
      0021C5 15 81            [12]  758 	dec	sp
                                    759 ;	dhry_1.c:132: printf ("\r\n");
                                    760 ;	genIpush
      0021C7 74 35            [12]  761 	mov	a,#___str_2
      0021C9 C0 E0            [24]  762 	push	acc
      0021CB 74 45            [12]  763 	mov	a,#(___str_2 >> 8)
      0021CD C0 E0            [24]  764 	push	acc
      0021CF 74 80            [12]  765 	mov	a,#0x80
      0021D1 C0 E0            [24]  766 	push	acc
                                    767 ;	genCall
      0021D3 12 39 AF         [24]  768 	lcall	_printf
      0021D6 15 81            [12]  769 	dec	sp
      0021D8 15 81            [12]  770 	dec	sp
      0021DA 15 81            [12]  771 	dec	sp
      0021DC                        772 00103$:
                                    773 ;	dhry_1.c:134: printf ("Please give the number of runs through the benchmark: ");
                                    774 ;	genIpush
      0021DC 74 C6            [12]  775 	mov	a,#___str_6
      0021DE C0 E0            [24]  776 	push	acc
      0021E0 74 45            [12]  777 	mov	a,#(___str_6 >> 8)
      0021E2 C0 E0            [24]  778 	push	acc
      0021E4 74 80            [12]  779 	mov	a,#0x80
      0021E6 C0 E0            [24]  780 	push	acc
                                    781 ;	genCall
      0021E8 12 39 AF         [24]  782 	lcall	_printf
      0021EB 15 81            [12]  783 	dec	sp
      0021ED 15 81            [12]  784 	dec	sp
      0021EF 15 81            [12]  785 	dec	sp
                                    786 ;	dhry_1.c:140: printf ("\r\n");
                                    787 ;	genIpush
      0021F1 74 35            [12]  788 	mov	a,#___str_2
      0021F3 C0 E0            [24]  789 	push	acc
      0021F5 74 45            [12]  790 	mov	a,#(___str_2 >> 8)
      0021F7 C0 E0            [24]  791 	push	acc
      0021F9 74 80            [12]  792 	mov	a,#0x80
      0021FB C0 E0            [24]  793 	push	acc
                                    794 ;	genCall
      0021FD 12 39 AF         [24]  795 	lcall	_printf
      002200 15 81            [12]  796 	dec	sp
      002202 15 81            [12]  797 	dec	sp
      002204 15 81            [12]  798 	dec	sp
                                    799 ;	dhry_1.c:142: printf ("Execution starts, %d runs through Dhrystone\r\n", Number_Of_Runs);
                                    800 ;	genIpush
      002206 74 20            [12]  801 	mov	a,#0x20
      002208 C0 E0            [24]  802 	push	acc
      00220A 74 4E            [12]  803 	mov	a,#0x4e
      00220C C0 E0            [24]  804 	push	acc
                                    805 ;	genIpush
      00220E 74 FD            [12]  806 	mov	a,#___str_7
      002210 C0 E0            [24]  807 	push	acc
      002212 74 45            [12]  808 	mov	a,#(___str_7 >> 8)
      002214 C0 E0            [24]  809 	push	acc
      002216 74 80            [12]  810 	mov	a,#0x80
      002218 C0 E0            [24]  811 	push	acc
                                    812 ;	genCall
      00221A 12 39 AF         [24]  813 	lcall	_printf
      00221D E5 81            [12]  814 	mov	a,sp
      00221F 24 FB            [12]  815 	add	a,#0xfb
      002221 F5 81            [12]  816 	mov	sp,a
                                    817 ;	dhry_1.c:156: Begin_Time = clock();
                                    818 ;	genCall
      002223 12 34 B3         [24]  819 	lcall	_clock
      002226 AC 82            [24]  820 	mov	r4,dpl
      002228 AD 83            [24]  821 	mov	r5,dph
      00222A AE F0            [24]  822 	mov	r6,b
      00222C FF               [12]  823 	mov	r7,a
                                    824 ;	genAssign
      00222D 90 93 F8         [24]  825 	mov	dptr,#_Begin_Time
      002230 EC               [12]  826 	mov	a,r4
      002231 F0               [24]  827 	movx	@dptr,a
      002232 ED               [12]  828 	mov	a,r5
      002233 A3               [24]  829 	inc	dptr
      002234 F0               [24]  830 	movx	@dptr,a
      002235 EE               [12]  831 	mov	a,r6
      002236 A3               [24]  832 	inc	dptr
      002237 F0               [24]  833 	movx	@dptr,a
      002238 EF               [12]  834 	mov	a,r7
      002239 A3               [24]  835 	inc	dptr
      00223A F0               [24]  836 	movx	@dptr,a
                                    837 ;	dhry_1.c:159: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
                                    838 ;	genAssign
      00223B 7E 01            [12]  839 	mov	r6,#0x01
      00223D 7F 00            [12]  840 	mov	r7,#0x00
      00223F                        841 00118$:
                                    842 ;	genCmpGt
                                    843 ;	genCmp
      00223F C3               [12]  844 	clr	c
      002240 74 20            [12]  845 	mov	a,#0x20
      002242 9E               [12]  846 	subb	a,r6
                                    847 ;	Peephole 159	avoided xrl during execution
      002243 74 CE            [12]  848 	mov	a,#(0x4e ^ 0x80)
      002245 8F F0            [24]  849 	mov	b,r7
      002247 63 F0 80         [24]  850 	xrl	b,#0x80
      00224A 95 F0            [12]  851 	subb	a,b
                                    852 ;	genIfxJump
      00224C 50 03            [24]  853 	jnc	00162$
      00224E 02 24 B7         [24]  854 	ljmp	00110$
      002251                        855 00162$:
                                    856 ;	dhry_1.c:162: Proc_5();
                                    857 ;	genCall
      002251 C0 07            [24]  858 	push	ar7
      002253 C0 06            [24]  859 	push	ar6
      002255 12 30 3C         [24]  860 	lcall	_Proc_5
                                    861 ;	Peephole 300	pop ar6 removed
                                    862 ;	Peephole 300	pop ar7 removed
                                    863 ;	dhry_1.c:163: Proc_4();
                                    864 ;	genCall
                                    865 ;	Peephole	push ar7 removed
                                    866 ;	Peephole	push ar6 removed
      002258 12 30 1E         [24]  867 	lcall	_Proc_4
                                    868 ;	Peephole 300	pop ar6 removed
                                    869 ;	Peephole 300	pop ar7 removed
                                    870 ;	dhry_1.c:165: Int_1_Loc = 2;
                                    871 ;	genAssign
      00225B 90 94 58         [24]  872 	mov	dptr,#_main_Int_1_Loc_65536_54
      00225E 74 02            [12]  873 	mov	a,#0x02
      002260 F0               [24]  874 	movx	@dptr,a
                                    875 ;	Peephole 181	changed mov to clr
      002261 E4               [12]  876 	clr	a
      002262 A3               [24]  877 	inc	dptr
      002263 F0               [24]  878 	movx	@dptr,a
                                    879 ;	dhry_1.c:166: Int_2_Loc = 3;
                                    880 ;	genAssign
      002264 90 94 5A         [24]  881 	mov	dptr,#_main_Int_2_Loc_65536_54
      002267 74 03            [12]  882 	mov	a,#0x03
      002269 F0               [24]  883 	movx	@dptr,a
                                    884 ;	Peephole 181	changed mov to clr
      00226A E4               [12]  885 	clr	a
      00226B A3               [24]  886 	inc	dptr
      00226C F0               [24]  887 	movx	@dptr,a
                                    888 ;	dhry_1.c:167: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
                                    889 ;	genCast
      00226D 90 94 CE         [24]  890 	mov	dptr,#_strcpy_PARM_2
      002270 74 2B            [12]  891 	mov	a,#___str_8
      002272 F0               [24]  892 	movx	@dptr,a
      002273 74 46            [12]  893 	mov	a,#(___str_8 >> 8)
      002275 A3               [24]  894 	inc	dptr
      002276 F0               [24]  895 	movx	@dptr,a
      002277 74 80            [12]  896 	mov	a,#0x80
      002279 A3               [24]  897 	inc	dptr
      00227A F0               [24]  898 	movx	@dptr,a
                                    899 ;	genCall
                                    900 ;	Peephole 182.a	used 16 bit load of DPTR
      00227B 90 94 7E         [24]  901 	mov	dptr,#_main_Str_2_Loc_65536_54
      00227E 75 F0 00         [24]  902 	mov	b,#0x00
                                    903 ;	Peephole	push ar7 removed
                                    904 ;	Peephole	push ar6 removed
      002281 12 34 E4         [24]  905 	lcall	_strcpy
                                    906 ;	Peephole 300	pop ar6 removed
                                    907 ;	Peephole 300	pop ar7 removed
                                    908 ;	dhry_1.c:168: Enum_Loc = Ident_2;
                                    909 ;	genAssign
      002284 90 94 5E         [24]  910 	mov	dptr,#_main_Enum_Loc_65536_54
      002287 74 01            [12]  911 	mov	a,#0x01
      002289 F0               [24]  912 	movx	@dptr,a
                                    913 ;	dhry_1.c:169: Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
                                    914 ;	genCast
      00228A 90 94 BE         [24]  915 	mov	dptr,#_Func_2_PARM_2
      00228D 74 7E            [12]  916 	mov	a,#_main_Str_2_Loc_65536_54
      00228F F0               [24]  917 	movx	@dptr,a
      002290 74 94            [12]  918 	mov	a,#(_main_Str_2_Loc_65536_54 >> 8)
      002292 A3               [24]  919 	inc	dptr
      002293 F0               [24]  920 	movx	@dptr,a
                                    921 ;	Peephole 181	changed mov to clr
      002294 E4               [12]  922 	clr	a
      002295 A3               [24]  923 	inc	dptr
      002296 F0               [24]  924 	movx	@dptr,a
                                    925 ;	genCall
                                    926 ;	Peephole 182.a	used 16 bit load of DPTR
      002297 90 94 5F         [24]  927 	mov	dptr,#_main_Str_1_Loc_65536_54
                                    928 ;	genFromRTrack replaced	mov	b,#0x00
      00229A F5 F0            [12]  929 	mov	b,a
                                    930 ;	Peephole	push ar7 removed
                                    931 ;	Peephole	push ar6 removed
      00229C 12 33 2C         [24]  932 	lcall	_Func_2
      00229F AC 82            [24]  933 	mov	r4,dpl
      0022A1 AD 83            [24]  934 	mov	r5,dph
      0022A3 D0 06            [24]  935 	pop	ar6
      0022A5 D0 07            [24]  936 	pop	ar7
                                    937 ;	genNot
      0022A7 EC               [12]  938 	mov	a,r4
      0022A8 4D               [12]  939 	orl	a,r5
      0022A9 B4 01 00         [24]  940 	cjne	a,#0x01,00163$
      0022AC                        941 00163$:
      0022AC E4               [12]  942 	clr	a
      0022AD 33               [12]  943 	rlc	a
                                    944 ;	genCast
      0022AE FD               [12]  945 	mov	r5,a
      0022AF 90 80 08         [24]  946 	mov	dptr,#_Bool_Glob
                                    947 ;	Peephole 100	removed redundant mov
      0022B2 F0               [24]  948 	movx	@dptr,a
      0022B3 ED               [12]  949 	mov	a,r5
      0022B4 33               [12]  950 	rlc	a
      0022B5 95 E0            [12]  951 	subb	a,acc
      0022B7 A3               [24]  952 	inc	dptr
      0022B8 F0               [24]  953 	movx	@dptr,a
                                    954 ;	dhry_1.c:171: while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
                                    955 ;	genAssign
      0022B9 90 94 58         [24]  956 	mov	dptr,#_main_Int_1_Loc_65536_54
      0022BC E0               [24]  957 	movx	a,@dptr
      0022BD FC               [12]  958 	mov	r4,a
      0022BE A3               [24]  959 	inc	dptr
      0022BF E0               [24]  960 	movx	a,@dptr
      0022C0 FD               [12]  961 	mov	r5,a
      0022C1                        962 00104$:
                                    963 ;	genCmpLt
                                    964 ;	genCmp
      0022C1 C3               [12]  965 	clr	c
      0022C2 EC               [12]  966 	mov	a,r4
      0022C3 94 03            [12]  967 	subb	a,#0x03
      0022C5 ED               [12]  968 	mov	a,r5
      0022C6 64 80            [12]  969 	xrl	a,#0x80
      0022C8 94 80            [12]  970 	subb	a,#0x80
                                    971 ;	genIfxJump
                                    972 ;	Peephole 108.a	removed ljmp by inverse jump logic
      0022CA 50 67            [24]  973 	jnc	00131$
                                    974 ;	Peephole 500	removed redundant label 00164$
                                    975 ;	dhry_1.c:173: Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
                                    976 ;	genAssign
      0022CC 90 94 DD         [24]  977 	mov	dptr,#__mulint_PARM_2
      0022CF EC               [12]  978 	mov	a,r4
      0022D0 F0               [24]  979 	movx	@dptr,a
      0022D1 ED               [12]  980 	mov	a,r5
      0022D2 A3               [24]  981 	inc	dptr
      0022D3 F0               [24]  982 	movx	@dptr,a
                                    983 ;	genCall
                                    984 ;	Peephole 182.b	used 16 bit load of dptr
      0022D4 90 00 05         [24]  985 	mov	dptr,#0x0005
      0022D7 C0 07            [24]  986 	push	ar7
      0022D9 C0 06            [24]  987 	push	ar6
      0022DB C0 05            [24]  988 	push	ar5
      0022DD C0 04            [24]  989 	push	ar4
      0022DF 12 37 6A         [24]  990 	lcall	__mulint
      0022E2 E5 82            [12]  991 	mov	a,dpl
      0022E4 85 83 F0         [24]  992 	mov	b,dph
      0022E7 D0 04            [24]  993 	pop	ar4
      0022E9 D0 05            [24]  994 	pop	ar5
                                    995 ;	Peephole 300	pop ar6 removed
                                    996 ;	Peephole 300	pop ar7 removed
                                    997 ;	genMinus
                                    998 ;	genMinusDec
      0022EB 24 FD            [12]  999 	add	a,#0xfd
      0022ED FA               [12] 1000 	mov	r2,a
      0022EE E5 F0            [12] 1001 	mov	a,b
      0022F0 34 FF            [12] 1002 	addc	a,#0xff
      0022F2 FB               [12] 1003 	mov	r3,a
                                   1004 ;	genAssign
      0022F3 90 94 5C         [24] 1005 	mov	dptr,#_main_Int_3_Loc_65536_54
      0022F6 EA               [12] 1006 	mov	a,r2
      0022F7 F0               [24] 1007 	movx	@dptr,a
      0022F8 EB               [12] 1008 	mov	a,r3
      0022F9 A3               [24] 1009 	inc	dptr
      0022FA F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	dhry_1.c:175: Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
                                   1012 ;	genAssign
      0022FB 90 94 AB         [24] 1013 	mov	dptr,#_Proc_7_PARM_2
      0022FE 74 03            [12] 1014 	mov	a,#0x03
      002300 F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	Peephole 181	changed mov to clr
      002301 E4               [12] 1017 	clr	a
      002302 A3               [24] 1018 	inc	dptr
      002303 F0               [24] 1019 	movx	@dptr,a
                                   1020 ;	genAssign
      002304 90 94 AD         [24] 1021 	mov	dptr,#_Proc_7_PARM_3
      002307 74 5C            [12] 1022 	mov	a,#_main_Int_3_Loc_65536_54
      002309 F0               [24] 1023 	movx	@dptr,a
      00230A 74 94            [12] 1024 	mov	a,#(_main_Int_3_Loc_65536_54 >> 8)
      00230C A3               [24] 1025 	inc	dptr
      00230D F0               [24] 1026 	movx	@dptr,a
                                   1027 ;	Peephole 181	changed mov to clr
      00230E E4               [12] 1028 	clr	a
      00230F A3               [24] 1029 	inc	dptr
      002310 F0               [24] 1030 	movx	@dptr,a
                                   1031 ;	genCall
      002311 8C 82            [24] 1032 	mov	dpl,r4
      002313 8D 83            [24] 1033 	mov	dph,r5
                                   1034 ;	Peephole	push ar7 removed
                                   1035 ;	Peephole	push ar6 removed
      002315 C0 05            [24] 1036 	push	ar5
      002317 C0 04            [24] 1037 	push	ar4
      002319 12 30 F4         [24] 1038 	lcall	_Proc_7
      00231C D0 04            [24] 1039 	pop	ar4
      00231E D0 05            [24] 1040 	pop	ar5
      002320 D0 06            [24] 1041 	pop	ar6
      002322 D0 07            [24] 1042 	pop	ar7
                                   1043 ;	dhry_1.c:177: Int_1_Loc += 1;
                                   1044 ;	genPlus
                                   1045 ;	genPlusIncr
      002324 0C               [12] 1046 	inc	r4
      002325 BC 00 01         [24] 1047 	cjne	r4,#0x00,00165$
      002328 0D               [12] 1048 	inc	r5
      002329                       1049 00165$:
                                   1050 ;	genAssign
      002329 90 94 58         [24] 1051 	mov	dptr,#_main_Int_1_Loc_65536_54
      00232C EC               [12] 1052 	mov	a,r4
      00232D F0               [24] 1053 	movx	@dptr,a
      00232E ED               [12] 1054 	mov	a,r5
      00232F A3               [24] 1055 	inc	dptr
      002330 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	Peephole 112.b	changed ljmp to sjmp
      002331 80 8E            [24] 1058 	sjmp	00104$
      002333                       1059 00131$:
                                   1060 ;	genAssign
      002333 90 94 58         [24] 1061 	mov	dptr,#_main_Int_1_Loc_65536_54
      002336 EC               [12] 1062 	mov	a,r4
      002337 F0               [24] 1063 	movx	@dptr,a
      002338 ED               [12] 1064 	mov	a,r5
      002339 A3               [24] 1065 	inc	dptr
      00233A F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	dhry_1.c:180: Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
                                   1068 ;	genAssign
      00233B 90 94 5C         [24] 1069 	mov	dptr,#_main_Int_3_Loc_65536_54
      00233E E0               [24] 1070 	movx	a,@dptr
      00233F FA               [12] 1071 	mov	r2,a
      002340 A3               [24] 1072 	inc	dptr
      002341 E0               [24] 1073 	movx	a,@dptr
      002342 FB               [12] 1074 	mov	r3,a
                                   1075 ;	genAssign
      002343 90 94 B2         [24] 1076 	mov	dptr,#_Proc_8_PARM_2
      002346 74 70            [12] 1077 	mov	a,#_Arr_2_Glob
      002348 F0               [24] 1078 	movx	@dptr,a
      002349 74 80            [12] 1079 	mov	a,#(_Arr_2_Glob >> 8)
      00234B A3               [24] 1080 	inc	dptr
      00234C F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	Peephole 181	changed mov to clr
      00234D E4               [12] 1083 	clr	a
      00234E A3               [24] 1084 	inc	dptr
      00234F F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	genAssign
      002350 90 94 B5         [24] 1087 	mov	dptr,#_Proc_8_PARM_3
      002353 EC               [12] 1088 	mov	a,r4
      002354 F0               [24] 1089 	movx	@dptr,a
      002355 ED               [12] 1090 	mov	a,r5
      002356 A3               [24] 1091 	inc	dptr
      002357 F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	genAssign
      002358 90 94 B7         [24] 1094 	mov	dptr,#_Proc_8_PARM_4
      00235B EA               [12] 1095 	mov	a,r2
      00235C F0               [24] 1096 	movx	@dptr,a
      00235D EB               [12] 1097 	mov	a,r3
      00235E A3               [24] 1098 	inc	dptr
      00235F F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	genCall
                                   1101 ;	Peephole 182.a	used 16 bit load of DPTR
      002360 90 80 0C         [24] 1102 	mov	dptr,#_Arr_1_Glob
      002363 75 F0 00         [24] 1103 	mov	b,#0x00
      002366 C0 07            [24] 1104 	push	ar7
      002368 C0 06            [24] 1105 	push	ar6
      00236A 12 31 36         [24] 1106 	lcall	_Proc_8
                                   1107 ;	Peephole 300	pop ar6 removed
                                   1108 ;	Peephole 300	pop ar7 removed
                                   1109 ;	dhry_1.c:182: Proc_1 (Ptr_Glob);
                                   1110 ;	genAssign
      00236D 90 80 00         [24] 1111 	mov	dptr,#_Ptr_Glob
      002370 E0               [24] 1112 	movx	a,@dptr
      002371 FB               [12] 1113 	mov	r3,a
      002372 A3               [24] 1114 	inc	dptr
      002373 E0               [24] 1115 	movx	a,@dptr
      002374 FC               [12] 1116 	mov	r4,a
      002375 A3               [24] 1117 	inc	dptr
      002376 E0               [24] 1118 	movx	a,@dptr
      002377 FD               [12] 1119 	mov	r5,a
                                   1120 ;	genCall
      002378 8B 82            [24] 1121 	mov	dpl,r3
      00237A 8C 83            [24] 1122 	mov	dph,r4
      00237C 8D F0            [24] 1123 	mov	b,r5
                                   1124 ;	Peephole	push ar7 removed
                                   1125 ;	Peephole	push ar6 removed
      00237E 12 2D 07         [24] 1126 	lcall	_Proc_1
      002381 D0 06            [24] 1127 	pop	ar6
      002383 D0 07            [24] 1128 	pop	ar7
                                   1129 ;	dhry_1.c:183: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
                                   1130 ;	genAssign
      002385 8E 04            [24] 1131 	mov	ar4,r6
      002387 8F 05            [24] 1132 	mov	ar5,r7
                                   1133 ;	genAssign
      002389 7B 41            [12] 1134 	mov	r3,#0x41
      00238B                       1135 00115$:
                                   1136 ;	genAssign
      00238B 90 80 0B         [24] 1137 	mov	dptr,#_Ch_2_Glob
      00238E E0               [24] 1138 	movx	a,@dptr
                                   1139 ;	genCmpGt
                                   1140 ;	genCmp
                                   1141 ;	Peephole 301	mov r2,a removed
      00238F C3               [12] 1142 	clr	c
                                   1143 ;	Peephole 106	removed redundant mov
      002390 9B               [12] 1144 	subb	a,r3
                                   1145 ;	genIfxJump
                                   1146 ;	Peephole 112.b	changed ljmp to sjmp
                                   1147 ;	Peephole 160.a	removed sjmp by inverse jump logic
      002391 40 7B            [24] 1148 	jc	00109$
                                   1149 ;	Peephole 500	removed redundant label 00166$
                                   1150 ;	dhry_1.c:186: if (Enum_Loc == Func_1 (Ch_Index, 'C'))
                                   1151 ;	genAssign
      002393 90 94 BC         [24] 1152 	mov	dptr,#_Func_1_PARM_2
      002396 74 43            [12] 1153 	mov	a,#0x43
      002398 F0               [24] 1154 	movx	@dptr,a
                                   1155 ;	genCall
      002399 8B 82            [24] 1156 	mov	dpl,r3
      00239B C0 07            [24] 1157 	push	ar7
      00239D C0 06            [24] 1158 	push	ar6
      00239F C0 05            [24] 1159 	push	ar5
      0023A1 C0 04            [24] 1160 	push	ar4
      0023A3 C0 03            [24] 1161 	push	ar3
      0023A5 12 33 0C         [24] 1162 	lcall	_Func_1
      0023A8 AA 82            [24] 1163 	mov	r2,dpl
      0023AA D0 03            [24] 1164 	pop	ar3
      0023AC D0 04            [24] 1165 	pop	ar4
      0023AE D0 05            [24] 1166 	pop	ar5
      0023B0 D0 06            [24] 1167 	pop	ar6
      0023B2 D0 07            [24] 1168 	pop	ar7
                                   1169 ;	genAssign
      0023B4 90 94 5E         [24] 1170 	mov	dptr,#_main_Enum_Loc_65536_54
      0023B7 E0               [24] 1171 	movx	a,@dptr
                                   1172 ;	genCmpEq
                                   1173 ;	gencjneshort
      0023B8 F9               [12] 1174 	mov	r1,a
                                   1175 ;	Peephole 105.a	removed redundant mov
                                   1176 ;	Peephole 112.b	changed ljmp to sjmp
                                   1177 ;	Peephole 198.b	optimized misc jump sequence
      0023B9 B5 02 4E         [24] 1178 	cjne	a,ar2,00116$
                                   1179 ;	Peephole 200.b	removed redundant sjmp
                                   1180 ;	Peephole 500	removed redundant label 00167$
                                   1181 ;	Peephole 500	removed redundant label 00168$
                                   1182 ;	dhry_1.c:189: Proc_6 (Ident_1, &Enum_Loc);
                                   1183 ;	genCast
      0023BC 90 94 A7         [24] 1184 	mov	dptr,#_Proc_6_PARM_2
      0023BF 74 5E            [12] 1185 	mov	a,#_main_Enum_Loc_65536_54
      0023C1 F0               [24] 1186 	movx	@dptr,a
      0023C2 74 94            [12] 1187 	mov	a,#(_main_Enum_Loc_65536_54 >> 8)
      0023C4 A3               [24] 1188 	inc	dptr
      0023C5 F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	Peephole 181	changed mov to clr
      0023C6 E4               [12] 1191 	clr	a
      0023C7 A3               [24] 1192 	inc	dptr
      0023C8 F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	genCall
      0023C9 75 82 00         [24] 1195 	mov	dpl,#0x00
      0023CC C0 07            [24] 1196 	push	ar7
      0023CE C0 06            [24] 1197 	push	ar6
      0023D0 C0 05            [24] 1198 	push	ar5
      0023D2 C0 04            [24] 1199 	push	ar4
      0023D4 C0 03            [24] 1200 	push	ar3
      0023D6 12 30 4A         [24] 1201 	lcall	_Proc_6
                                   1202 ;	Peephole 300	pop ar3 removed
                                   1203 ;	Peephole 300	pop ar4 removed
                                   1204 ;	Peephole 300	pop ar5 removed
                                   1205 ;	Peephole 300	pop ar6 removed
                                   1206 ;	Peephole 300	pop ar7 removed
                                   1207 ;	dhry_1.c:190: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
                                   1208 ;	genCast
      0023D9 90 94 CE         [24] 1209 	mov	dptr,#_strcpy_PARM_2
      0023DC 74 4A            [12] 1210 	mov	a,#___str_9
      0023DE F0               [24] 1211 	movx	@dptr,a
      0023DF 74 46            [12] 1212 	mov	a,#(___str_9 >> 8)
      0023E1 A3               [24] 1213 	inc	dptr
      0023E2 F0               [24] 1214 	movx	@dptr,a
      0023E3 74 80            [12] 1215 	mov	a,#0x80
      0023E5 A3               [24] 1216 	inc	dptr
      0023E6 F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	genCall
                                   1219 ;	Peephole 182.a	used 16 bit load of DPTR
      0023E7 90 94 7E         [24] 1220 	mov	dptr,#_main_Str_2_Loc_65536_54
      0023EA 75 F0 00         [24] 1221 	mov	b,#0x00
                                   1222 ;	Peephole	push ar7 removed
                                   1223 ;	Peephole	push ar6 removed
                                   1224 ;	Peephole	push ar5 removed
                                   1225 ;	Peephole	push ar4 removed
                                   1226 ;	Peephole	push ar3 removed
      0023ED 12 34 E4         [24] 1227 	lcall	_strcpy
      0023F0 D0 03            [24] 1228 	pop	ar3
      0023F2 D0 04            [24] 1229 	pop	ar4
      0023F4 D0 05            [24] 1230 	pop	ar5
      0023F6 D0 06            [24] 1231 	pop	ar6
      0023F8 D0 07            [24] 1232 	pop	ar7
                                   1233 ;	dhry_1.c:191: Int_2_Loc = Run_Index;
                                   1234 ;	genAssign
      0023FA 90 94 5A         [24] 1235 	mov	dptr,#_main_Int_2_Loc_65536_54
      0023FD EC               [12] 1236 	mov	a,r4
      0023FE F0               [24] 1237 	movx	@dptr,a
      0023FF ED               [12] 1238 	mov	a,r5
      002400 A3               [24] 1239 	inc	dptr
      002401 F0               [24] 1240 	movx	@dptr,a
                                   1241 ;	dhry_1.c:192: Int_Glob = Run_Index;
                                   1242 ;	genAssign
      002402 90 80 06         [24] 1243 	mov	dptr,#_Int_Glob
      002405 EC               [12] 1244 	mov	a,r4
      002406 F0               [24] 1245 	movx	@dptr,a
      002407 ED               [12] 1246 	mov	a,r5
      002408 A3               [24] 1247 	inc	dptr
      002409 F0               [24] 1248 	movx	@dptr,a
      00240A                       1249 00116$:
                                   1250 ;	dhry_1.c:183: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
                                   1251 ;	genPlus
                                   1252 ;	genPlusIncr
      00240A 0B               [12] 1253 	inc	r3
      00240B 02 23 8B         [24] 1254 	ljmp	00115$
      00240E                       1255 00109$:
                                   1256 ;	dhry_1.c:196: Int_2_Loc = Int_2_Loc * Int_1_Loc;
                                   1257 ;	genAssign
      00240E 90 94 58         [24] 1258 	mov	dptr,#_main_Int_1_Loc_65536_54
      002411 E0               [24] 1259 	movx	a,@dptr
      002412 FC               [12] 1260 	mov	r4,a
      002413 A3               [24] 1261 	inc	dptr
      002414 E0               [24] 1262 	movx	a,@dptr
      002415 FD               [12] 1263 	mov	r5,a
                                   1264 ;	genAssign
      002416 90 94 5A         [24] 1265 	mov	dptr,#_main_Int_2_Loc_65536_54
      002419 E0               [24] 1266 	movx	a,@dptr
      00241A FA               [12] 1267 	mov	r2,a
      00241B A3               [24] 1268 	inc	dptr
      00241C E0               [24] 1269 	movx	a,@dptr
      00241D FB               [12] 1270 	mov	r3,a
                                   1271 ;	genAssign
      00241E 90 94 DD         [24] 1272 	mov	dptr,#__mulint_PARM_2
      002421 EC               [12] 1273 	mov	a,r4
      002422 F0               [24] 1274 	movx	@dptr,a
      002423 ED               [12] 1275 	mov	a,r5
      002424 A3               [24] 1276 	inc	dptr
      002425 F0               [24] 1277 	movx	@dptr,a
                                   1278 ;	genCall
      002426 8A 82            [24] 1279 	mov	dpl,r2
      002428 8B 83            [24] 1280 	mov	dph,r3
      00242A C0 07            [24] 1281 	push	ar7
      00242C C0 06            [24] 1282 	push	ar6
      00242E 12 37 6A         [24] 1283 	lcall	__mulint
      002431 E5 82            [12] 1284 	mov	a,dpl
      002433 85 83 F0         [24] 1285 	mov	b,dph
                                   1286 ;	Peephole 300	pop ar6 removed
                                   1287 ;	Peephole 300	pop ar7 removed
                                   1288 ;	genAssign
      002436 90 94 5A         [24] 1289 	mov	dptr,#_main_Int_2_Loc_65536_54
      002439 F0               [24] 1290 	movx	@dptr,a
      00243A E5 F0            [12] 1291 	mov	a,b
      00243C A3               [24] 1292 	inc	dptr
      00243D F0               [24] 1293 	movx	@dptr,a
                                   1294 ;	dhry_1.c:197: Int_1_Loc = Int_2_Loc / Int_3_Loc;
                                   1295 ;	genAssign
      00243E 90 94 5C         [24] 1296 	mov	dptr,#_main_Int_3_Loc_65536_54
      002441 E0               [24] 1297 	movx	a,@dptr
      002442 FC               [12] 1298 	mov	r4,a
      002443 A3               [24] 1299 	inc	dptr
      002444 E0               [24] 1300 	movx	a,@dptr
      002445 FD               [12] 1301 	mov	r5,a
                                   1302 ;	genAssign
      002446 90 94 5A         [24] 1303 	mov	dptr,#_main_Int_2_Loc_65536_54
      002449 E0               [24] 1304 	movx	a,@dptr
      00244A FA               [12] 1305 	mov	r2,a
      00244B A3               [24] 1306 	inc	dptr
      00244C E0               [24] 1307 	movx	a,@dptr
      00244D FB               [12] 1308 	mov	r3,a
                                   1309 ;	genAssign
      00244E 90 94 E5         [24] 1310 	mov	dptr,#__divsint_PARM_2
      002451 EC               [12] 1311 	mov	a,r4
      002452 F0               [24] 1312 	movx	@dptr,a
      002453 ED               [12] 1313 	mov	a,r5
      002454 A3               [24] 1314 	inc	dptr
      002455 F0               [24] 1315 	movx	@dptr,a
                                   1316 ;	genCall
      002456 8A 82            [24] 1317 	mov	dpl,r2
      002458 8B 83            [24] 1318 	mov	dph,r3
                                   1319 ;	Peephole	push ar7 removed
                                   1320 ;	Peephole	push ar6 removed
      00245A C0 05            [24] 1321 	push	ar5
      00245C C0 04            [24] 1322 	push	ar4
      00245E C0 03            [24] 1323 	push	ar3
      002460 C0 02            [24] 1324 	push	ar2
      002462 12 38 13         [24] 1325 	lcall	__divsint
      002465 A8 82            [24] 1326 	mov	r0,dpl
      002467 A9 83            [24] 1327 	mov	r1,dph
      002469 D0 02            [24] 1328 	pop	ar2
      00246B D0 03            [24] 1329 	pop	ar3
      00246D D0 04            [24] 1330 	pop	ar4
      00246F D0 05            [24] 1331 	pop	ar5
                                   1332 ;	Peephole 300	pop ar6 removed
                                   1333 ;	Peephole 300	pop ar7 removed
                                   1334 ;	genAssign
      002471 90 94 58         [24] 1335 	mov	dptr,#_main_Int_1_Loc_65536_54
      002474 E8               [12] 1336 	mov	a,r0
      002475 F0               [24] 1337 	movx	@dptr,a
      002476 E9               [12] 1338 	mov	a,r1
      002477 A3               [24] 1339 	inc	dptr
      002478 F0               [24] 1340 	movx	@dptr,a
                                   1341 ;	dhry_1.c:198: Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
                                   1342 ;	genMinus
      002479 90 94 DD         [24] 1343 	mov	dptr,#__mulint_PARM_2
      00247C EA               [12] 1344 	mov	a,r2
      00247D C3               [12] 1345 	clr	c
      00247E 9C               [12] 1346 	subb	a,r4
      00247F F0               [24] 1347 	movx	@dptr,a
      002480 EB               [12] 1348 	mov	a,r3
      002481 9D               [12] 1349 	subb	a,r5
      002482 A3               [24] 1350 	inc	dptr
      002483 F0               [24] 1351 	movx	@dptr,a
                                   1352 ;	genCall
                                   1353 ;	Peephole 182.b	used 16 bit load of dptr
      002484 90 00 07         [24] 1354 	mov	dptr,#0x0007
                                   1355 ;	Peephole	push ar7 removed
                                   1356 ;	Peephole	push ar6 removed
      002487 C0 01            [24] 1357 	push	ar1
      002489 C0 00            [24] 1358 	push	ar0
      00248B 12 37 6A         [24] 1359 	lcall	__mulint
      00248E E5 82            [12] 1360 	mov	a,dpl
      002490 85 83 F0         [24] 1361 	mov	b,dph
      002493 D0 00            [24] 1362 	pop	ar0
      002495 D0 01            [24] 1363 	pop	ar1
                                   1364 ;	Peephole 300	pop ar6 removed
                                   1365 ;	Peephole 300	pop ar7 removed
                                   1366 ;	genMinus
      002497 90 94 5A         [24] 1367 	mov	dptr,#_main_Int_2_Loc_65536_54
      00249A C3               [12] 1368 	clr	c
      00249B 98               [12] 1369 	subb	a,r0
      00249C F0               [24] 1370 	movx	@dptr,a
      00249D E5 F0            [12] 1371 	mov	a,b
      00249F 99               [12] 1372 	subb	a,r1
      0024A0 A3               [24] 1373 	inc	dptr
      0024A1 F0               [24] 1374 	movx	@dptr,a
                                   1375 ;	dhry_1.c:200: Proc_2 (&Int_1_Loc);
                                   1376 ;	genCall
                                   1377 ;	Peephole 182.a	used 16 bit load of DPTR
      0024A2 90 94 58         [24] 1378 	mov	dptr,#_main_Int_1_Loc_65536_54
      0024A5 75 F0 00         [24] 1379 	mov	b,#0x00
                                   1380 ;	Peephole	push ar7 removed
                                   1381 ;	Peephole	push ar6 removed
      0024A8 12 2F 29         [24] 1382 	lcall	_Proc_2
      0024AB D0 06            [24] 1383 	pop	ar6
      0024AD D0 07            [24] 1384 	pop	ar7
                                   1385 ;	dhry_1.c:159: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
                                   1386 ;	genPlus
                                   1387 ;	genPlusIncr
      0024AF 0E               [12] 1388 	inc	r6
      0024B0 BE 00 01         [24] 1389 	cjne	r6,#0x00,00169$
      0024B3 0F               [12] 1390 	inc	r7
      0024B4                       1391 00169$:
      0024B4 02 22 3F         [24] 1392 	ljmp	00118$
      0024B7                       1393 00110$:
                                   1394 ;	dhry_1.c:217: End_Time = clock();
                                   1395 ;	genCall
      0024B7 12 34 B3         [24] 1396 	lcall	_clock
      0024BA AC 82            [24] 1397 	mov	r4,dpl
      0024BC AD 83            [24] 1398 	mov	r5,dph
      0024BE AE F0            [24] 1399 	mov	r6,b
      0024C0 FF               [12] 1400 	mov	r7,a
                                   1401 ;	genAssign
      0024C1 90 93 FC         [24] 1402 	mov	dptr,#_End_Time
      0024C4 EC               [12] 1403 	mov	a,r4
      0024C5 F0               [24] 1404 	movx	@dptr,a
      0024C6 ED               [12] 1405 	mov	a,r5
      0024C7 A3               [24] 1406 	inc	dptr
      0024C8 F0               [24] 1407 	movx	@dptr,a
      0024C9 EE               [12] 1408 	mov	a,r6
      0024CA A3               [24] 1409 	inc	dptr
      0024CB F0               [24] 1410 	movx	@dptr,a
      0024CC EF               [12] 1411 	mov	a,r7
      0024CD A3               [24] 1412 	inc	dptr
      0024CE F0               [24] 1413 	movx	@dptr,a
                                   1414 ;	dhry_1.c:220: printf ("Execution ends\r\n");
                                   1415 ;	genIpush
      0024CF 74 69            [12] 1416 	mov	a,#___str_10
      0024D1 C0 E0            [24] 1417 	push	acc
      0024D3 74 46            [12] 1418 	mov	a,#(___str_10 >> 8)
      0024D5 C0 E0            [24] 1419 	push	acc
      0024D7 74 80            [12] 1420 	mov	a,#0x80
      0024D9 C0 E0            [24] 1421 	push	acc
                                   1422 ;	genCall
      0024DB 12 39 AF         [24] 1423 	lcall	_printf
      0024DE 15 81            [12] 1424 	dec	sp
      0024E0 15 81            [12] 1425 	dec	sp
      0024E2 15 81            [12] 1426 	dec	sp
                                   1427 ;	dhry_1.c:221: printf ("\r\n");
                                   1428 ;	genIpush
      0024E4 74 35            [12] 1429 	mov	a,#___str_2
      0024E6 C0 E0            [24] 1430 	push	acc
      0024E8 74 45            [12] 1431 	mov	a,#(___str_2 >> 8)
      0024EA C0 E0            [24] 1432 	push	acc
      0024EC 74 80            [12] 1433 	mov	a,#0x80
      0024EE C0 E0            [24] 1434 	push	acc
                                   1435 ;	genCall
      0024F0 12 39 AF         [24] 1436 	lcall	_printf
      0024F3 15 81            [12] 1437 	dec	sp
      0024F5 15 81            [12] 1438 	dec	sp
      0024F7 15 81            [12] 1439 	dec	sp
                                   1440 ;	dhry_1.c:222: printf ("Final values of the variables used in the benchmark:\r\n");
                                   1441 ;	genIpush
      0024F9 74 7A            [12] 1442 	mov	a,#___str_11
      0024FB C0 E0            [24] 1443 	push	acc
      0024FD 74 46            [12] 1444 	mov	a,#(___str_11 >> 8)
      0024FF C0 E0            [24] 1445 	push	acc
      002501 74 80            [12] 1446 	mov	a,#0x80
      002503 C0 E0            [24] 1447 	push	acc
                                   1448 ;	genCall
      002505 12 39 AF         [24] 1449 	lcall	_printf
      002508 15 81            [12] 1450 	dec	sp
      00250A 15 81            [12] 1451 	dec	sp
      00250C 15 81            [12] 1452 	dec	sp
                                   1453 ;	dhry_1.c:223: printf ("\r\n");
                                   1454 ;	genIpush
      00250E 74 35            [12] 1455 	mov	a,#___str_2
      002510 C0 E0            [24] 1456 	push	acc
      002512 74 45            [12] 1457 	mov	a,#(___str_2 >> 8)
      002514 C0 E0            [24] 1458 	push	acc
      002516 74 80            [12] 1459 	mov	a,#0x80
      002518 C0 E0            [24] 1460 	push	acc
                                   1461 ;	genCall
      00251A 12 39 AF         [24] 1462 	lcall	_printf
      00251D 15 81            [12] 1463 	dec	sp
      00251F 15 81            [12] 1464 	dec	sp
      002521 15 81            [12] 1465 	dec	sp
                                   1466 ;	dhry_1.c:224: printf ("Int_Glob:            %d\r\n", Int_Glob);
                                   1467 ;	genIpush
      002523 90 80 06         [24] 1468 	mov	dptr,#_Int_Glob
      002526 E0               [24] 1469 	movx	a,@dptr
      002527 C0 E0            [24] 1470 	push	acc
      002529 A3               [24] 1471 	inc	dptr
      00252A E0               [24] 1472 	movx	a,@dptr
      00252B C0 E0            [24] 1473 	push	acc
                                   1474 ;	genIpush
      00252D 74 B1            [12] 1475 	mov	a,#___str_12
      00252F C0 E0            [24] 1476 	push	acc
      002531 74 46            [12] 1477 	mov	a,#(___str_12 >> 8)
      002533 C0 E0            [24] 1478 	push	acc
      002535 74 80            [12] 1479 	mov	a,#0x80
      002537 C0 E0            [24] 1480 	push	acc
                                   1481 ;	genCall
      002539 12 39 AF         [24] 1482 	lcall	_printf
      00253C E5 81            [12] 1483 	mov	a,sp
      00253E 24 FB            [12] 1484 	add	a,#0xfb
      002540 F5 81            [12] 1485 	mov	sp,a
                                   1486 ;	dhry_1.c:225: printf ("        should be:   %d\r\n", 5);
                                   1487 ;	genIpush
      002542 74 05            [12] 1488 	mov	a,#0x05
      002544 C0 E0            [24] 1489 	push	acc
                                   1490 ;	Peephole 181	changed mov to clr
      002546 E4               [12] 1491 	clr	a
      002547 C0 E0            [24] 1492 	push	acc
                                   1493 ;	genIpush
      002549 74 CB            [12] 1494 	mov	a,#___str_13
      00254B C0 E0            [24] 1495 	push	acc
      00254D 74 46            [12] 1496 	mov	a,#(___str_13 >> 8)
      00254F C0 E0            [24] 1497 	push	acc
      002551 74 80            [12] 1498 	mov	a,#0x80
      002553 C0 E0            [24] 1499 	push	acc
                                   1500 ;	genCall
      002555 12 39 AF         [24] 1501 	lcall	_printf
      002558 E5 81            [12] 1502 	mov	a,sp
      00255A 24 FB            [12] 1503 	add	a,#0xfb
      00255C F5 81            [12] 1504 	mov	sp,a
                                   1505 ;	dhry_1.c:226: printf ("Bool_Glob:           %d\r\n", Bool_Glob);
                                   1506 ;	genIpush
      00255E 90 80 08         [24] 1507 	mov	dptr,#_Bool_Glob
      002561 E0               [24] 1508 	movx	a,@dptr
      002562 C0 E0            [24] 1509 	push	acc
      002564 A3               [24] 1510 	inc	dptr
      002565 E0               [24] 1511 	movx	a,@dptr
      002566 C0 E0            [24] 1512 	push	acc
                                   1513 ;	genIpush
      002568 74 E5            [12] 1514 	mov	a,#___str_14
      00256A C0 E0            [24] 1515 	push	acc
      00256C 74 46            [12] 1516 	mov	a,#(___str_14 >> 8)
      00256E C0 E0            [24] 1517 	push	acc
      002570 74 80            [12] 1518 	mov	a,#0x80
      002572 C0 E0            [24] 1519 	push	acc
                                   1520 ;	genCall
      002574 12 39 AF         [24] 1521 	lcall	_printf
      002577 E5 81            [12] 1522 	mov	a,sp
      002579 24 FB            [12] 1523 	add	a,#0xfb
      00257B F5 81            [12] 1524 	mov	sp,a
                                   1525 ;	dhry_1.c:227: printf ("        should be:   %d\r\n", 1);
                                   1526 ;	genIpush
      00257D 74 01            [12] 1527 	mov	a,#0x01
      00257F C0 E0            [24] 1528 	push	acc
                                   1529 ;	Peephole 181	changed mov to clr
      002581 E4               [12] 1530 	clr	a
      002582 C0 E0            [24] 1531 	push	acc
                                   1532 ;	genIpush
      002584 74 CB            [12] 1533 	mov	a,#___str_13
      002586 C0 E0            [24] 1534 	push	acc
      002588 74 46            [12] 1535 	mov	a,#(___str_13 >> 8)
      00258A C0 E0            [24] 1536 	push	acc
      00258C 74 80            [12] 1537 	mov	a,#0x80
      00258E C0 E0            [24] 1538 	push	acc
                                   1539 ;	genCall
      002590 12 39 AF         [24] 1540 	lcall	_printf
      002593 E5 81            [12] 1541 	mov	a,sp
      002595 24 FB            [12] 1542 	add	a,#0xfb
      002597 F5 81            [12] 1543 	mov	sp,a
                                   1544 ;	dhry_1.c:228: printf ("Ch_1_Glob:           %c\r\n", Ch_1_Glob);
                                   1545 ;	genAssign
      002599 90 80 0A         [24] 1546 	mov	dptr,#_Ch_1_Glob
      00259C E0               [24] 1547 	movx	a,@dptr
      00259D FF               [12] 1548 	mov	r7,a
                                   1549 ;	genCast
      00259E 7E 00            [12] 1550 	mov	r6,#0x00
                                   1551 ;	genIpush
      0025A0 C0 07            [24] 1552 	push	ar7
      0025A2 C0 06            [24] 1553 	push	ar6
                                   1554 ;	genIpush
      0025A4 74 FF            [12] 1555 	mov	a,#___str_15
      0025A6 C0 E0            [24] 1556 	push	acc
      0025A8 74 46            [12] 1557 	mov	a,#(___str_15 >> 8)
      0025AA C0 E0            [24] 1558 	push	acc
      0025AC 74 80            [12] 1559 	mov	a,#0x80
      0025AE C0 E0            [24] 1560 	push	acc
                                   1561 ;	genCall
      0025B0 12 39 AF         [24] 1562 	lcall	_printf
      0025B3 E5 81            [12] 1563 	mov	a,sp
      0025B5 24 FB            [12] 1564 	add	a,#0xfb
      0025B7 F5 81            [12] 1565 	mov	sp,a
                                   1566 ;	dhry_1.c:229: printf ("        should be:   %c\r\n", 'A');
                                   1567 ;	genIpush
      0025B9 74 41            [12] 1568 	mov	a,#0x41
      0025BB C0 E0            [24] 1569 	push	acc
                                   1570 ;	Peephole 181	changed mov to clr
      0025BD E4               [12] 1571 	clr	a
      0025BE C0 E0            [24] 1572 	push	acc
                                   1573 ;	genIpush
      0025C0 74 19            [12] 1574 	mov	a,#___str_16
      0025C2 C0 E0            [24] 1575 	push	acc
      0025C4 74 47            [12] 1576 	mov	a,#(___str_16 >> 8)
      0025C6 C0 E0            [24] 1577 	push	acc
      0025C8 74 80            [12] 1578 	mov	a,#0x80
      0025CA C0 E0            [24] 1579 	push	acc
                                   1580 ;	genCall
      0025CC 12 39 AF         [24] 1581 	lcall	_printf
      0025CF E5 81            [12] 1582 	mov	a,sp
      0025D1 24 FB            [12] 1583 	add	a,#0xfb
      0025D3 F5 81            [12] 1584 	mov	sp,a
                                   1585 ;	dhry_1.c:230: printf ("Ch_2_Glob:           %c\r\n", Ch_2_Glob);
                                   1586 ;	genAssign
      0025D5 90 80 0B         [24] 1587 	mov	dptr,#_Ch_2_Glob
      0025D8 E0               [24] 1588 	movx	a,@dptr
      0025D9 FF               [12] 1589 	mov	r7,a
                                   1590 ;	genCast
      0025DA 7E 00            [12] 1591 	mov	r6,#0x00
                                   1592 ;	genIpush
      0025DC C0 07            [24] 1593 	push	ar7
      0025DE C0 06            [24] 1594 	push	ar6
                                   1595 ;	genIpush
      0025E0 74 33            [12] 1596 	mov	a,#___str_17
      0025E2 C0 E0            [24] 1597 	push	acc
      0025E4 74 47            [12] 1598 	mov	a,#(___str_17 >> 8)
      0025E6 C0 E0            [24] 1599 	push	acc
      0025E8 74 80            [12] 1600 	mov	a,#0x80
      0025EA C0 E0            [24] 1601 	push	acc
                                   1602 ;	genCall
      0025EC 12 39 AF         [24] 1603 	lcall	_printf
      0025EF E5 81            [12] 1604 	mov	a,sp
      0025F1 24 FB            [12] 1605 	add	a,#0xfb
      0025F3 F5 81            [12] 1606 	mov	sp,a
                                   1607 ;	dhry_1.c:231: printf ("        should be:   %c\r\n", 'B');
                                   1608 ;	genIpush
      0025F5 74 42            [12] 1609 	mov	a,#0x42
      0025F7 C0 E0            [24] 1610 	push	acc
                                   1611 ;	Peephole 181	changed mov to clr
      0025F9 E4               [12] 1612 	clr	a
      0025FA C0 E0            [24] 1613 	push	acc
                                   1614 ;	genIpush
      0025FC 74 19            [12] 1615 	mov	a,#___str_16
      0025FE C0 E0            [24] 1616 	push	acc
      002600 74 47            [12] 1617 	mov	a,#(___str_16 >> 8)
      002602 C0 E0            [24] 1618 	push	acc
      002604 74 80            [12] 1619 	mov	a,#0x80
      002606 C0 E0            [24] 1620 	push	acc
                                   1621 ;	genCall
      002608 12 39 AF         [24] 1622 	lcall	_printf
      00260B E5 81            [12] 1623 	mov	a,sp
      00260D 24 FB            [12] 1624 	add	a,#0xfb
      00260F F5 81            [12] 1625 	mov	sp,a
                                   1626 ;	dhry_1.c:232: printf ("Arr_1_Glob[8]:       %d\r\n", Arr_1_Glob[8]);
                                   1627 ;	genPointerGet
                                   1628 ;	genFarPointerGet
      002611 90 80 1C         [24] 1629 	mov	dptr,#(_Arr_1_Glob + 0x0010)
      002614 E0               [24] 1630 	movx	a,@dptr
      002615 FE               [12] 1631 	mov	r6,a
      002616 A3               [24] 1632 	inc	dptr
      002617 E0               [24] 1633 	movx	a,@dptr
      002618 FF               [12] 1634 	mov	r7,a
                                   1635 ;	genIpush
      002619 C0 06            [24] 1636 	push	ar6
      00261B C0 07            [24] 1637 	push	ar7
                                   1638 ;	genIpush
      00261D 74 4D            [12] 1639 	mov	a,#___str_18
      00261F C0 E0            [24] 1640 	push	acc
      002621 74 47            [12] 1641 	mov	a,#(___str_18 >> 8)
      002623 C0 E0            [24] 1642 	push	acc
      002625 74 80            [12] 1643 	mov	a,#0x80
      002627 C0 E0            [24] 1644 	push	acc
                                   1645 ;	genCall
      002629 12 39 AF         [24] 1646 	lcall	_printf
      00262C E5 81            [12] 1647 	mov	a,sp
      00262E 24 FB            [12] 1648 	add	a,#0xfb
      002630 F5 81            [12] 1649 	mov	sp,a
                                   1650 ;	dhry_1.c:233: printf ("        should be:   %d\r\n", 7);
                                   1651 ;	genIpush
      002632 74 07            [12] 1652 	mov	a,#0x07
      002634 C0 E0            [24] 1653 	push	acc
                                   1654 ;	Peephole 181	changed mov to clr
      002636 E4               [12] 1655 	clr	a
      002637 C0 E0            [24] 1656 	push	acc
                                   1657 ;	genIpush
      002639 74 CB            [12] 1658 	mov	a,#___str_13
      00263B C0 E0            [24] 1659 	push	acc
      00263D 74 46            [12] 1660 	mov	a,#(___str_13 >> 8)
      00263F C0 E0            [24] 1661 	push	acc
      002641 74 80            [12] 1662 	mov	a,#0x80
      002643 C0 E0            [24] 1663 	push	acc
                                   1664 ;	genCall
      002645 12 39 AF         [24] 1665 	lcall	_printf
      002648 E5 81            [12] 1666 	mov	a,sp
      00264A 24 FB            [12] 1667 	add	a,#0xfb
      00264C F5 81            [12] 1668 	mov	sp,a
                                   1669 ;	dhry_1.c:234: printf ("Arr_2_Glob[8][7]:    %d\r\n", Arr_2_Glob[8][7]);
                                   1670 ;	genPointerGet
                                   1671 ;	genFarPointerGet
      00264E 90 83 9E         [24] 1672 	mov	dptr,#(_Arr_2_Glob + 0x032e)
      002651 E0               [24] 1673 	movx	a,@dptr
      002652 FE               [12] 1674 	mov	r6,a
      002653 A3               [24] 1675 	inc	dptr
      002654 E0               [24] 1676 	movx	a,@dptr
      002655 FF               [12] 1677 	mov	r7,a
                                   1678 ;	genIpush
      002656 C0 06            [24] 1679 	push	ar6
      002658 C0 07            [24] 1680 	push	ar7
                                   1681 ;	genIpush
      00265A 74 67            [12] 1682 	mov	a,#___str_19
      00265C C0 E0            [24] 1683 	push	acc
      00265E 74 47            [12] 1684 	mov	a,#(___str_19 >> 8)
      002660 C0 E0            [24] 1685 	push	acc
      002662 74 80            [12] 1686 	mov	a,#0x80
      002664 C0 E0            [24] 1687 	push	acc
                                   1688 ;	genCall
      002666 12 39 AF         [24] 1689 	lcall	_printf
      002669 E5 81            [12] 1690 	mov	a,sp
      00266B 24 FB            [12] 1691 	add	a,#0xfb
      00266D F5 81            [12] 1692 	mov	sp,a
                                   1693 ;	dhry_1.c:235: printf ("        should be:   Number_Of_Runs + 10\r\n");
                                   1694 ;	genIpush
      00266F 74 81            [12] 1695 	mov	a,#___str_20
      002671 C0 E0            [24] 1696 	push	acc
      002673 74 47            [12] 1697 	mov	a,#(___str_20 >> 8)
      002675 C0 E0            [24] 1698 	push	acc
      002677 74 80            [12] 1699 	mov	a,#0x80
      002679 C0 E0            [24] 1700 	push	acc
                                   1701 ;	genCall
      00267B 12 39 AF         [24] 1702 	lcall	_printf
      00267E 15 81            [12] 1703 	dec	sp
      002680 15 81            [12] 1704 	dec	sp
      002682 15 81            [12] 1705 	dec	sp
                                   1706 ;	dhry_1.c:236: printf ("Ptr_Glob->\r\n");
                                   1707 ;	genIpush
      002684 74 AC            [12] 1708 	mov	a,#___str_21
      002686 C0 E0            [24] 1709 	push	acc
      002688 74 47            [12] 1710 	mov	a,#(___str_21 >> 8)
      00268A C0 E0            [24] 1711 	push	acc
      00268C 74 80            [12] 1712 	mov	a,#0x80
      00268E C0 E0            [24] 1713 	push	acc
                                   1714 ;	genCall
      002690 12 39 AF         [24] 1715 	lcall	_printf
      002693 15 81            [12] 1716 	dec	sp
      002695 15 81            [12] 1717 	dec	sp
      002697 15 81            [12] 1718 	dec	sp
                                   1719 ;	dhry_1.c:237: printf ("  Ptr_Comp:          %d\r\n", (int) Ptr_Glob->Ptr_Comp);
                                   1720 ;	genAssign
      002699 90 80 00         [24] 1721 	mov	dptr,#_Ptr_Glob
      00269C E0               [24] 1722 	movx	a,@dptr
      00269D FD               [12] 1723 	mov	r5,a
      00269E A3               [24] 1724 	inc	dptr
      00269F E0               [24] 1725 	movx	a,@dptr
      0026A0 FE               [12] 1726 	mov	r6,a
      0026A1 A3               [24] 1727 	inc	dptr
      0026A2 E0               [24] 1728 	movx	a,@dptr
      0026A3 FF               [12] 1729 	mov	r7,a
                                   1730 ;	genPointerGet
                                   1731 ;	genGenPointerGet
      0026A4 8D 82            [24] 1732 	mov	dpl,r5
      0026A6 8E 83            [24] 1733 	mov	dph,r6
      0026A8 8F F0            [24] 1734 	mov	b,r7
      0026AA 12 44 94         [24] 1735 	lcall	__gptrget
      0026AD FD               [12] 1736 	mov	r5,a
      0026AE A3               [24] 1737 	inc	dptr
      0026AF 12 44 94         [24] 1738 	lcall	__gptrget
      0026B2 FE               [12] 1739 	mov	r6,a
                                   1740 ;	genIpush
      0026B3 C0 05            [24] 1741 	push	ar5
      0026B5 C0 06            [24] 1742 	push	ar6
                                   1743 ;	genIpush
      0026B7 74 B9            [12] 1744 	mov	a,#___str_22
      0026B9 C0 E0            [24] 1745 	push	acc
      0026BB 74 47            [12] 1746 	mov	a,#(___str_22 >> 8)
      0026BD C0 E0            [24] 1747 	push	acc
      0026BF 74 80            [12] 1748 	mov	a,#0x80
      0026C1 C0 E0            [24] 1749 	push	acc
                                   1750 ;	genCall
      0026C3 12 39 AF         [24] 1751 	lcall	_printf
      0026C6 E5 81            [12] 1752 	mov	a,sp
      0026C8 24 FB            [12] 1753 	add	a,#0xfb
      0026CA F5 81            [12] 1754 	mov	sp,a
                                   1755 ;	dhry_1.c:238: printf ("        should be:   (implementation-dependent)\r\n");
                                   1756 ;	genIpush
      0026CC 74 D3            [12] 1757 	mov	a,#___str_23
      0026CE C0 E0            [24] 1758 	push	acc
      0026D0 74 47            [12] 1759 	mov	a,#(___str_23 >> 8)
      0026D2 C0 E0            [24] 1760 	push	acc
      0026D4 74 80            [12] 1761 	mov	a,#0x80
      0026D6 C0 E0            [24] 1762 	push	acc
                                   1763 ;	genCall
      0026D8 12 39 AF         [24] 1764 	lcall	_printf
      0026DB 15 81            [12] 1765 	dec	sp
      0026DD 15 81            [12] 1766 	dec	sp
      0026DF 15 81            [12] 1767 	dec	sp
                                   1768 ;	dhry_1.c:239: printf ("  Discr:             %d\r\n", Ptr_Glob->Discr);
                                   1769 ;	genAssign
      0026E1 90 80 00         [24] 1770 	mov	dptr,#_Ptr_Glob
      0026E4 E0               [24] 1771 	movx	a,@dptr
      0026E5 FD               [12] 1772 	mov	r5,a
      0026E6 A3               [24] 1773 	inc	dptr
      0026E7 E0               [24] 1774 	movx	a,@dptr
      0026E8 FE               [12] 1775 	mov	r6,a
      0026E9 A3               [24] 1776 	inc	dptr
      0026EA E0               [24] 1777 	movx	a,@dptr
      0026EB FF               [12] 1778 	mov	r7,a
                                   1779 ;	genPlus
                                   1780 ;	genPlusIncr
      0026EC 74 03            [12] 1781 	mov	a,#0x03
      0026EE 2D               [12] 1782 	add	a,r5
      0026EF FD               [12] 1783 	mov	r5,a
                                   1784 ;	Peephole 181	changed mov to clr
      0026F0 E4               [12] 1785 	clr	a
      0026F1 3E               [12] 1786 	addc	a,r6
      0026F2 FE               [12] 1787 	mov	r6,a
                                   1788 ;	genPointerGet
                                   1789 ;	genGenPointerGet
      0026F3 8D 82            [24] 1790 	mov	dpl,r5
      0026F5 8E 83            [24] 1791 	mov	dph,r6
      0026F7 8F F0            [24] 1792 	mov	b,r7
      0026F9 12 44 94         [24] 1793 	lcall	__gptrget
      0026FC FD               [12] 1794 	mov	r5,a
                                   1795 ;	genCast
      0026FD 7F 00            [12] 1796 	mov	r7,#0x00
                                   1797 ;	genIpush
      0026FF C0 05            [24] 1798 	push	ar5
      002701 C0 07            [24] 1799 	push	ar7
                                   1800 ;	genIpush
      002703 74 05            [12] 1801 	mov	a,#___str_24
      002705 C0 E0            [24] 1802 	push	acc
      002707 74 48            [12] 1803 	mov	a,#(___str_24 >> 8)
      002709 C0 E0            [24] 1804 	push	acc
      00270B 74 80            [12] 1805 	mov	a,#0x80
      00270D C0 E0            [24] 1806 	push	acc
                                   1807 ;	genCall
      00270F 12 39 AF         [24] 1808 	lcall	_printf
      002712 E5 81            [12] 1809 	mov	a,sp
      002714 24 FB            [12] 1810 	add	a,#0xfb
      002716 F5 81            [12] 1811 	mov	sp,a
                                   1812 ;	dhry_1.c:240: printf ("        should be:   %d\r\n", 0);
                                   1813 ;	genIpush
                                   1814 ;	Peephole 181	changed mov to clr
      002718 E4               [12] 1815 	clr	a
      002719 C0 E0            [24] 1816 	push	acc
      00271B C0 E0            [24] 1817 	push	acc
                                   1818 ;	genIpush
      00271D 74 CB            [12] 1819 	mov	a,#___str_13
      00271F C0 E0            [24] 1820 	push	acc
      002721 74 46            [12] 1821 	mov	a,#(___str_13 >> 8)
      002723 C0 E0            [24] 1822 	push	acc
      002725 74 80            [12] 1823 	mov	a,#0x80
      002727 C0 E0            [24] 1824 	push	acc
                                   1825 ;	genCall
      002729 12 39 AF         [24] 1826 	lcall	_printf
      00272C E5 81            [12] 1827 	mov	a,sp
      00272E 24 FB            [12] 1828 	add	a,#0xfb
      002730 F5 81            [12] 1829 	mov	sp,a
                                   1830 ;	dhry_1.c:241: printf ("  Enum_Comp:         %d\r\n", Ptr_Glob->variant.var_1.Enum_Comp);
                                   1831 ;	genAssign
      002732 90 80 00         [24] 1832 	mov	dptr,#_Ptr_Glob
      002735 E0               [24] 1833 	movx	a,@dptr
      002736 FD               [12] 1834 	mov	r5,a
      002737 A3               [24] 1835 	inc	dptr
      002738 E0               [24] 1836 	movx	a,@dptr
      002739 FE               [12] 1837 	mov	r6,a
      00273A A3               [24] 1838 	inc	dptr
      00273B E0               [24] 1839 	movx	a,@dptr
      00273C FF               [12] 1840 	mov	r7,a
                                   1841 ;	genPlus
                                   1842 ;	genPlusIncr
      00273D 74 04            [12] 1843 	mov	a,#0x04
      00273F 2D               [12] 1844 	add	a,r5
      002740 FD               [12] 1845 	mov	r5,a
                                   1846 ;	Peephole 181	changed mov to clr
      002741 E4               [12] 1847 	clr	a
      002742 3E               [12] 1848 	addc	a,r6
      002743 FE               [12] 1849 	mov	r6,a
                                   1850 ;	genPointerGet
                                   1851 ;	genGenPointerGet
      002744 8D 82            [24] 1852 	mov	dpl,r5
      002746 8E 83            [24] 1853 	mov	dph,r6
      002748 8F F0            [24] 1854 	mov	b,r7
      00274A 12 44 94         [24] 1855 	lcall	__gptrget
      00274D FD               [12] 1856 	mov	r5,a
                                   1857 ;	genCast
      00274E 7F 00            [12] 1858 	mov	r7,#0x00
                                   1859 ;	genIpush
      002750 C0 05            [24] 1860 	push	ar5
      002752 C0 07            [24] 1861 	push	ar7
                                   1862 ;	genIpush
      002754 74 1F            [12] 1863 	mov	a,#___str_25
      002756 C0 E0            [24] 1864 	push	acc
      002758 74 48            [12] 1865 	mov	a,#(___str_25 >> 8)
      00275A C0 E0            [24] 1866 	push	acc
      00275C 74 80            [12] 1867 	mov	a,#0x80
      00275E C0 E0            [24] 1868 	push	acc
                                   1869 ;	genCall
      002760 12 39 AF         [24] 1870 	lcall	_printf
      002763 E5 81            [12] 1871 	mov	a,sp
      002765 24 FB            [12] 1872 	add	a,#0xfb
      002767 F5 81            [12] 1873 	mov	sp,a
                                   1874 ;	dhry_1.c:242: printf ("        should be:   %d\r\n", 2);
                                   1875 ;	genIpush
      002769 74 02            [12] 1876 	mov	a,#0x02
      00276B C0 E0            [24] 1877 	push	acc
                                   1878 ;	Peephole 181	changed mov to clr
      00276D E4               [12] 1879 	clr	a
      00276E C0 E0            [24] 1880 	push	acc
                                   1881 ;	genIpush
      002770 74 CB            [12] 1882 	mov	a,#___str_13
      002772 C0 E0            [24] 1883 	push	acc
      002774 74 46            [12] 1884 	mov	a,#(___str_13 >> 8)
      002776 C0 E0            [24] 1885 	push	acc
      002778 74 80            [12] 1886 	mov	a,#0x80
      00277A C0 E0            [24] 1887 	push	acc
                                   1888 ;	genCall
      00277C 12 39 AF         [24] 1889 	lcall	_printf
      00277F E5 81            [12] 1890 	mov	a,sp
      002781 24 FB            [12] 1891 	add	a,#0xfb
      002783 F5 81            [12] 1892 	mov	sp,a
                                   1893 ;	dhry_1.c:243: printf ("  Int_Comp:          %d\r\n", Ptr_Glob->variant.var_1.Int_Comp);
                                   1894 ;	genAssign
      002785 90 80 00         [24] 1895 	mov	dptr,#_Ptr_Glob
      002788 E0               [24] 1896 	movx	a,@dptr
      002789 FD               [12] 1897 	mov	r5,a
      00278A A3               [24] 1898 	inc	dptr
      00278B E0               [24] 1899 	movx	a,@dptr
      00278C FE               [12] 1900 	mov	r6,a
      00278D A3               [24] 1901 	inc	dptr
      00278E E0               [24] 1902 	movx	a,@dptr
      00278F FF               [12] 1903 	mov	r7,a
                                   1904 ;	genPlus
                                   1905 ;	genPlusIncr
      002790 74 05            [12] 1906 	mov	a,#0x05
      002792 2D               [12] 1907 	add	a,r5
      002793 FD               [12] 1908 	mov	r5,a
                                   1909 ;	Peephole 181	changed mov to clr
      002794 E4               [12] 1910 	clr	a
      002795 3E               [12] 1911 	addc	a,r6
      002796 FE               [12] 1912 	mov	r6,a
                                   1913 ;	genPointerGet
                                   1914 ;	genGenPointerGet
      002797 8D 82            [24] 1915 	mov	dpl,r5
      002799 8E 83            [24] 1916 	mov	dph,r6
      00279B 8F F0            [24] 1917 	mov	b,r7
      00279D 12 44 94         [24] 1918 	lcall	__gptrget
      0027A0 FD               [12] 1919 	mov	r5,a
      0027A1 A3               [24] 1920 	inc	dptr
      0027A2 12 44 94         [24] 1921 	lcall	__gptrget
      0027A5 FE               [12] 1922 	mov	r6,a
                                   1923 ;	genIpush
      0027A6 C0 05            [24] 1924 	push	ar5
      0027A8 C0 06            [24] 1925 	push	ar6
                                   1926 ;	genIpush
      0027AA 74 39            [12] 1927 	mov	a,#___str_26
      0027AC C0 E0            [24] 1928 	push	acc
      0027AE 74 48            [12] 1929 	mov	a,#(___str_26 >> 8)
      0027B0 C0 E0            [24] 1930 	push	acc
      0027B2 74 80            [12] 1931 	mov	a,#0x80
      0027B4 C0 E0            [24] 1932 	push	acc
                                   1933 ;	genCall
      0027B6 12 39 AF         [24] 1934 	lcall	_printf
      0027B9 E5 81            [12] 1935 	mov	a,sp
      0027BB 24 FB            [12] 1936 	add	a,#0xfb
      0027BD F5 81            [12] 1937 	mov	sp,a
                                   1938 ;	dhry_1.c:244: printf ("        should be:   %d\r\n", 17);
                                   1939 ;	genIpush
      0027BF 74 11            [12] 1940 	mov	a,#0x11
      0027C1 C0 E0            [24] 1941 	push	acc
                                   1942 ;	Peephole 181	changed mov to clr
      0027C3 E4               [12] 1943 	clr	a
      0027C4 C0 E0            [24] 1944 	push	acc
                                   1945 ;	genIpush
      0027C6 74 CB            [12] 1946 	mov	a,#___str_13
      0027C8 C0 E0            [24] 1947 	push	acc
      0027CA 74 46            [12] 1948 	mov	a,#(___str_13 >> 8)
      0027CC C0 E0            [24] 1949 	push	acc
      0027CE 74 80            [12] 1950 	mov	a,#0x80
      0027D0 C0 E0            [24] 1951 	push	acc
                                   1952 ;	genCall
      0027D2 12 39 AF         [24] 1953 	lcall	_printf
      0027D5 E5 81            [12] 1954 	mov	a,sp
      0027D7 24 FB            [12] 1955 	add	a,#0xfb
      0027D9 F5 81            [12] 1956 	mov	sp,a
                                   1957 ;	dhry_1.c:245: printf ("  Str_Comp:          %s\r\n", Ptr_Glob->variant.var_1.Str_Comp);
                                   1958 ;	genAssign
      0027DB 90 80 00         [24] 1959 	mov	dptr,#_Ptr_Glob
      0027DE E0               [24] 1960 	movx	a,@dptr
      0027DF FD               [12] 1961 	mov	r5,a
      0027E0 A3               [24] 1962 	inc	dptr
      0027E1 E0               [24] 1963 	movx	a,@dptr
      0027E2 FE               [12] 1964 	mov	r6,a
      0027E3 A3               [24] 1965 	inc	dptr
      0027E4 E0               [24] 1966 	movx	a,@dptr
      0027E5 FF               [12] 1967 	mov	r7,a
                                   1968 ;	genPlus
                                   1969 ;	genPlusIncr
      0027E6 74 07            [12] 1970 	mov	a,#0x07
      0027E8 2D               [12] 1971 	add	a,r5
      0027E9 FD               [12] 1972 	mov	r5,a
                                   1973 ;	Peephole 181	changed mov to clr
      0027EA E4               [12] 1974 	clr	a
      0027EB 3E               [12] 1975 	addc	a,r6
      0027EC FE               [12] 1976 	mov	r6,a
                                   1977 ;	genIpush
      0027ED C0 05            [24] 1978 	push	ar5
      0027EF C0 06            [24] 1979 	push	ar6
      0027F1 C0 07            [24] 1980 	push	ar7
                                   1981 ;	genIpush
      0027F3 74 53            [12] 1982 	mov	a,#___str_27
      0027F5 C0 E0            [24] 1983 	push	acc
      0027F7 74 48            [12] 1984 	mov	a,#(___str_27 >> 8)
      0027F9 C0 E0            [24] 1985 	push	acc
      0027FB 74 80            [12] 1986 	mov	a,#0x80
      0027FD C0 E0            [24] 1987 	push	acc
                                   1988 ;	genCall
      0027FF 12 39 AF         [24] 1989 	lcall	_printf
      002802 E5 81            [12] 1990 	mov	a,sp
      002804 24 FA            [12] 1991 	add	a,#0xfa
      002806 F5 81            [12] 1992 	mov	sp,a
                                   1993 ;	dhry_1.c:246: printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\r\n");
                                   1994 ;	genIpush
      002808 74 6D            [12] 1995 	mov	a,#___str_28
      00280A C0 E0            [24] 1996 	push	acc
      00280C 74 48            [12] 1997 	mov	a,#(___str_28 >> 8)
      00280E C0 E0            [24] 1998 	push	acc
      002810 74 80            [12] 1999 	mov	a,#0x80
      002812 C0 E0            [24] 2000 	push	acc
                                   2001 ;	genCall
      002814 12 39 AF         [24] 2002 	lcall	_printf
      002817 15 81            [12] 2003 	dec	sp
      002819 15 81            [12] 2004 	dec	sp
      00281B 15 81            [12] 2005 	dec	sp
                                   2006 ;	dhry_1.c:247: printf ("Next_Ptr_Glob->\r\n");
                                   2007 ;	genIpush
      00281D 74 A3            [12] 2008 	mov	a,#___str_29
      00281F C0 E0            [24] 2009 	push	acc
      002821 74 48            [12] 2010 	mov	a,#(___str_29 >> 8)
      002823 C0 E0            [24] 2011 	push	acc
      002825 74 80            [12] 2012 	mov	a,#0x80
      002827 C0 E0            [24] 2013 	push	acc
                                   2014 ;	genCall
      002829 12 39 AF         [24] 2015 	lcall	_printf
      00282C 15 81            [12] 2016 	dec	sp
      00282E 15 81            [12] 2017 	dec	sp
      002830 15 81            [12] 2018 	dec	sp
                                   2019 ;	dhry_1.c:248: printf ("  Ptr_Comp:          %d\r\n", (int) Next_Ptr_Glob->Ptr_Comp);
                                   2020 ;	genAssign
      002832 90 80 03         [24] 2021 	mov	dptr,#_Next_Ptr_Glob
      002835 E0               [24] 2022 	movx	a,@dptr
      002836 FD               [12] 2023 	mov	r5,a
      002837 A3               [24] 2024 	inc	dptr
      002838 E0               [24] 2025 	movx	a,@dptr
      002839 FE               [12] 2026 	mov	r6,a
      00283A A3               [24] 2027 	inc	dptr
      00283B E0               [24] 2028 	movx	a,@dptr
      00283C FF               [12] 2029 	mov	r7,a
                                   2030 ;	genPointerGet
                                   2031 ;	genGenPointerGet
      00283D 8D 82            [24] 2032 	mov	dpl,r5
      00283F 8E 83            [24] 2033 	mov	dph,r6
      002841 8F F0            [24] 2034 	mov	b,r7
      002843 12 44 94         [24] 2035 	lcall	__gptrget
      002846 FD               [12] 2036 	mov	r5,a
      002847 A3               [24] 2037 	inc	dptr
      002848 12 44 94         [24] 2038 	lcall	__gptrget
      00284B FE               [12] 2039 	mov	r6,a
                                   2040 ;	genIpush
      00284C C0 05            [24] 2041 	push	ar5
      00284E C0 06            [24] 2042 	push	ar6
                                   2043 ;	genIpush
      002850 74 B9            [12] 2044 	mov	a,#___str_22
      002852 C0 E0            [24] 2045 	push	acc
      002854 74 47            [12] 2046 	mov	a,#(___str_22 >> 8)
      002856 C0 E0            [24] 2047 	push	acc
      002858 74 80            [12] 2048 	mov	a,#0x80
      00285A C0 E0            [24] 2049 	push	acc
                                   2050 ;	genCall
      00285C 12 39 AF         [24] 2051 	lcall	_printf
      00285F E5 81            [12] 2052 	mov	a,sp
      002861 24 FB            [12] 2053 	add	a,#0xfb
      002863 F5 81            [12] 2054 	mov	sp,a
                                   2055 ;	dhry_1.c:249: printf ("        should be:   (implementation-dependent), same as above\r\n");
                                   2056 ;	genIpush
      002865 74 B5            [12] 2057 	mov	a,#___str_30
      002867 C0 E0            [24] 2058 	push	acc
      002869 74 48            [12] 2059 	mov	a,#(___str_30 >> 8)
      00286B C0 E0            [24] 2060 	push	acc
      00286D 74 80            [12] 2061 	mov	a,#0x80
      00286F C0 E0            [24] 2062 	push	acc
                                   2063 ;	genCall
      002871 12 39 AF         [24] 2064 	lcall	_printf
      002874 15 81            [12] 2065 	dec	sp
      002876 15 81            [12] 2066 	dec	sp
      002878 15 81            [12] 2067 	dec	sp
                                   2068 ;	dhry_1.c:250: printf ("  Discr:             %d\r\n", Next_Ptr_Glob->Discr);
                                   2069 ;	genAssign
      00287A 90 80 03         [24] 2070 	mov	dptr,#_Next_Ptr_Glob
      00287D E0               [24] 2071 	movx	a,@dptr
      00287E FD               [12] 2072 	mov	r5,a
      00287F A3               [24] 2073 	inc	dptr
      002880 E0               [24] 2074 	movx	a,@dptr
      002881 FE               [12] 2075 	mov	r6,a
      002882 A3               [24] 2076 	inc	dptr
      002883 E0               [24] 2077 	movx	a,@dptr
      002884 FF               [12] 2078 	mov	r7,a
                                   2079 ;	genPlus
                                   2080 ;	genPlusIncr
      002885 74 03            [12] 2081 	mov	a,#0x03
      002887 2D               [12] 2082 	add	a,r5
      002888 FD               [12] 2083 	mov	r5,a
                                   2084 ;	Peephole 181	changed mov to clr
      002889 E4               [12] 2085 	clr	a
      00288A 3E               [12] 2086 	addc	a,r6
      00288B FE               [12] 2087 	mov	r6,a
                                   2088 ;	genPointerGet
                                   2089 ;	genGenPointerGet
      00288C 8D 82            [24] 2090 	mov	dpl,r5
      00288E 8E 83            [24] 2091 	mov	dph,r6
      002890 8F F0            [24] 2092 	mov	b,r7
      002892 12 44 94         [24] 2093 	lcall	__gptrget
      002895 FD               [12] 2094 	mov	r5,a
                                   2095 ;	genCast
      002896 7F 00            [12] 2096 	mov	r7,#0x00
                                   2097 ;	genIpush
      002898 C0 05            [24] 2098 	push	ar5
      00289A C0 07            [24] 2099 	push	ar7
                                   2100 ;	genIpush
      00289C 74 05            [12] 2101 	mov	a,#___str_24
      00289E C0 E0            [24] 2102 	push	acc
      0028A0 74 48            [12] 2103 	mov	a,#(___str_24 >> 8)
      0028A2 C0 E0            [24] 2104 	push	acc
      0028A4 74 80            [12] 2105 	mov	a,#0x80
      0028A6 C0 E0            [24] 2106 	push	acc
                                   2107 ;	genCall
      0028A8 12 39 AF         [24] 2108 	lcall	_printf
      0028AB E5 81            [12] 2109 	mov	a,sp
      0028AD 24 FB            [12] 2110 	add	a,#0xfb
      0028AF F5 81            [12] 2111 	mov	sp,a
                                   2112 ;	dhry_1.c:251: printf ("        should be:   %d\r\n", 0);
                                   2113 ;	genIpush
                                   2114 ;	Peephole 181	changed mov to clr
      0028B1 E4               [12] 2115 	clr	a
      0028B2 C0 E0            [24] 2116 	push	acc
      0028B4 C0 E0            [24] 2117 	push	acc
                                   2118 ;	genIpush
      0028B6 74 CB            [12] 2119 	mov	a,#___str_13
      0028B8 C0 E0            [24] 2120 	push	acc
      0028BA 74 46            [12] 2121 	mov	a,#(___str_13 >> 8)
      0028BC C0 E0            [24] 2122 	push	acc
      0028BE 74 80            [12] 2123 	mov	a,#0x80
      0028C0 C0 E0            [24] 2124 	push	acc
                                   2125 ;	genCall
      0028C2 12 39 AF         [24] 2126 	lcall	_printf
      0028C5 E5 81            [12] 2127 	mov	a,sp
      0028C7 24 FB            [12] 2128 	add	a,#0xfb
      0028C9 F5 81            [12] 2129 	mov	sp,a
                                   2130 ;	dhry_1.c:252: printf ("  Enum_Comp:         %d\r\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
                                   2131 ;	genAssign
      0028CB 90 80 03         [24] 2132 	mov	dptr,#_Next_Ptr_Glob
      0028CE E0               [24] 2133 	movx	a,@dptr
      0028CF FD               [12] 2134 	mov	r5,a
      0028D0 A3               [24] 2135 	inc	dptr
      0028D1 E0               [24] 2136 	movx	a,@dptr
      0028D2 FE               [12] 2137 	mov	r6,a
      0028D3 A3               [24] 2138 	inc	dptr
      0028D4 E0               [24] 2139 	movx	a,@dptr
      0028D5 FF               [12] 2140 	mov	r7,a
                                   2141 ;	genPlus
                                   2142 ;	genPlusIncr
      0028D6 74 04            [12] 2143 	mov	a,#0x04
      0028D8 2D               [12] 2144 	add	a,r5
      0028D9 FD               [12] 2145 	mov	r5,a
                                   2146 ;	Peephole 181	changed mov to clr
      0028DA E4               [12] 2147 	clr	a
      0028DB 3E               [12] 2148 	addc	a,r6
      0028DC FE               [12] 2149 	mov	r6,a
                                   2150 ;	genPointerGet
                                   2151 ;	genGenPointerGet
      0028DD 8D 82            [24] 2152 	mov	dpl,r5
      0028DF 8E 83            [24] 2153 	mov	dph,r6
      0028E1 8F F0            [24] 2154 	mov	b,r7
      0028E3 12 44 94         [24] 2155 	lcall	__gptrget
      0028E6 FD               [12] 2156 	mov	r5,a
                                   2157 ;	genCast
      0028E7 7F 00            [12] 2158 	mov	r7,#0x00
                                   2159 ;	genIpush
      0028E9 C0 05            [24] 2160 	push	ar5
      0028EB C0 07            [24] 2161 	push	ar7
                                   2162 ;	genIpush
      0028ED 74 1F            [12] 2163 	mov	a,#___str_25
      0028EF C0 E0            [24] 2164 	push	acc
      0028F1 74 48            [12] 2165 	mov	a,#(___str_25 >> 8)
      0028F3 C0 E0            [24] 2166 	push	acc
      0028F5 74 80            [12] 2167 	mov	a,#0x80
      0028F7 C0 E0            [24] 2168 	push	acc
                                   2169 ;	genCall
      0028F9 12 39 AF         [24] 2170 	lcall	_printf
      0028FC E5 81            [12] 2171 	mov	a,sp
      0028FE 24 FB            [12] 2172 	add	a,#0xfb
      002900 F5 81            [12] 2173 	mov	sp,a
                                   2174 ;	dhry_1.c:253: printf ("        should be:   %d\r\n", 1);
                                   2175 ;	genIpush
      002902 74 01            [12] 2176 	mov	a,#0x01
      002904 C0 E0            [24] 2177 	push	acc
                                   2178 ;	Peephole 181	changed mov to clr
      002906 E4               [12] 2179 	clr	a
      002907 C0 E0            [24] 2180 	push	acc
                                   2181 ;	genIpush
      002909 74 CB            [12] 2182 	mov	a,#___str_13
      00290B C0 E0            [24] 2183 	push	acc
      00290D 74 46            [12] 2184 	mov	a,#(___str_13 >> 8)
      00290F C0 E0            [24] 2185 	push	acc
      002911 74 80            [12] 2186 	mov	a,#0x80
      002913 C0 E0            [24] 2187 	push	acc
                                   2188 ;	genCall
      002915 12 39 AF         [24] 2189 	lcall	_printf
      002918 E5 81            [12] 2190 	mov	a,sp
      00291A 24 FB            [12] 2191 	add	a,#0xfb
      00291C F5 81            [12] 2192 	mov	sp,a
                                   2193 ;	dhry_1.c:254: printf ("  Int_Comp:          %d\r\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
                                   2194 ;	genAssign
      00291E 90 80 03         [24] 2195 	mov	dptr,#_Next_Ptr_Glob
      002921 E0               [24] 2196 	movx	a,@dptr
      002922 FD               [12] 2197 	mov	r5,a
      002923 A3               [24] 2198 	inc	dptr
      002924 E0               [24] 2199 	movx	a,@dptr
      002925 FE               [12] 2200 	mov	r6,a
      002926 A3               [24] 2201 	inc	dptr
      002927 E0               [24] 2202 	movx	a,@dptr
      002928 FF               [12] 2203 	mov	r7,a
                                   2204 ;	genPlus
                                   2205 ;	genPlusIncr
      002929 74 05            [12] 2206 	mov	a,#0x05
      00292B 2D               [12] 2207 	add	a,r5
      00292C FD               [12] 2208 	mov	r5,a
                                   2209 ;	Peephole 181	changed mov to clr
      00292D E4               [12] 2210 	clr	a
      00292E 3E               [12] 2211 	addc	a,r6
      00292F FE               [12] 2212 	mov	r6,a
                                   2213 ;	genPointerGet
                                   2214 ;	genGenPointerGet
      002930 8D 82            [24] 2215 	mov	dpl,r5
      002932 8E 83            [24] 2216 	mov	dph,r6
      002934 8F F0            [24] 2217 	mov	b,r7
      002936 12 44 94         [24] 2218 	lcall	__gptrget
      002939 FD               [12] 2219 	mov	r5,a
      00293A A3               [24] 2220 	inc	dptr
      00293B 12 44 94         [24] 2221 	lcall	__gptrget
      00293E FE               [12] 2222 	mov	r6,a
                                   2223 ;	genIpush
      00293F C0 05            [24] 2224 	push	ar5
      002941 C0 06            [24] 2225 	push	ar6
                                   2226 ;	genIpush
      002943 74 39            [12] 2227 	mov	a,#___str_26
      002945 C0 E0            [24] 2228 	push	acc
      002947 74 48            [12] 2229 	mov	a,#(___str_26 >> 8)
      002949 C0 E0            [24] 2230 	push	acc
      00294B 74 80            [12] 2231 	mov	a,#0x80
      00294D C0 E0            [24] 2232 	push	acc
                                   2233 ;	genCall
      00294F 12 39 AF         [24] 2234 	lcall	_printf
      002952 E5 81            [12] 2235 	mov	a,sp
      002954 24 FB            [12] 2236 	add	a,#0xfb
      002956 F5 81            [12] 2237 	mov	sp,a
                                   2238 ;	dhry_1.c:255: printf ("        should be:   %d\r\n", 18);
                                   2239 ;	genIpush
      002958 74 12            [12] 2240 	mov	a,#0x12
      00295A C0 E0            [24] 2241 	push	acc
                                   2242 ;	Peephole 181	changed mov to clr
      00295C E4               [12] 2243 	clr	a
      00295D C0 E0            [24] 2244 	push	acc
                                   2245 ;	genIpush
      00295F 74 CB            [12] 2246 	mov	a,#___str_13
      002961 C0 E0            [24] 2247 	push	acc
      002963 74 46            [12] 2248 	mov	a,#(___str_13 >> 8)
      002965 C0 E0            [24] 2249 	push	acc
      002967 74 80            [12] 2250 	mov	a,#0x80
      002969 C0 E0            [24] 2251 	push	acc
                                   2252 ;	genCall
      00296B 12 39 AF         [24] 2253 	lcall	_printf
      00296E E5 81            [12] 2254 	mov	a,sp
      002970 24 FB            [12] 2255 	add	a,#0xfb
      002972 F5 81            [12] 2256 	mov	sp,a
                                   2257 ;	dhry_1.c:257: Next_Ptr_Glob->variant.var_1.Str_Comp);
                                   2258 ;	genAssign
      002974 90 80 03         [24] 2259 	mov	dptr,#_Next_Ptr_Glob
      002977 E0               [24] 2260 	movx	a,@dptr
      002978 FD               [12] 2261 	mov	r5,a
      002979 A3               [24] 2262 	inc	dptr
      00297A E0               [24] 2263 	movx	a,@dptr
      00297B FE               [12] 2264 	mov	r6,a
      00297C A3               [24] 2265 	inc	dptr
      00297D E0               [24] 2266 	movx	a,@dptr
      00297E FF               [12] 2267 	mov	r7,a
                                   2268 ;	genPlus
                                   2269 ;	genPlusIncr
      00297F 74 07            [12] 2270 	mov	a,#0x07
      002981 2D               [12] 2271 	add	a,r5
      002982 FD               [12] 2272 	mov	r5,a
                                   2273 ;	Peephole 181	changed mov to clr
      002983 E4               [12] 2274 	clr	a
      002984 3E               [12] 2275 	addc	a,r6
      002985 FE               [12] 2276 	mov	r6,a
                                   2277 ;	dhry_1.c:256: printf ("  Str_Comp:          %s\r\n",
                                   2278 ;	genIpush
      002986 C0 05            [24] 2279 	push	ar5
      002988 C0 06            [24] 2280 	push	ar6
      00298A C0 07            [24] 2281 	push	ar7
                                   2282 ;	genIpush
      00298C 74 53            [12] 2283 	mov	a,#___str_27
      00298E C0 E0            [24] 2284 	push	acc
      002990 74 48            [12] 2285 	mov	a,#(___str_27 >> 8)
      002992 C0 E0            [24] 2286 	push	acc
      002994 74 80            [12] 2287 	mov	a,#0x80
      002996 C0 E0            [24] 2288 	push	acc
                                   2289 ;	genCall
      002998 12 39 AF         [24] 2290 	lcall	_printf
      00299B E5 81            [12] 2291 	mov	a,sp
      00299D 24 FA            [12] 2292 	add	a,#0xfa
      00299F F5 81            [12] 2293 	mov	sp,a
                                   2294 ;	dhry_1.c:258: printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\r\n");
                                   2295 ;	genIpush
      0029A1 74 6D            [12] 2296 	mov	a,#___str_28
      0029A3 C0 E0            [24] 2297 	push	acc
      0029A5 74 48            [12] 2298 	mov	a,#(___str_28 >> 8)
      0029A7 C0 E0            [24] 2299 	push	acc
      0029A9 74 80            [12] 2300 	mov	a,#0x80
      0029AB C0 E0            [24] 2301 	push	acc
                                   2302 ;	genCall
      0029AD 12 39 AF         [24] 2303 	lcall	_printf
      0029B0 15 81            [12] 2304 	dec	sp
      0029B2 15 81            [12] 2305 	dec	sp
      0029B4 15 81            [12] 2306 	dec	sp
                                   2307 ;	dhry_1.c:259: printf ("Int_1_Loc:           %d\r\n", Int_1_Loc);
                                   2308 ;	genIpush
      0029B6 90 94 58         [24] 2309 	mov	dptr,#_main_Int_1_Loc_65536_54
      0029B9 E0               [24] 2310 	movx	a,@dptr
      0029BA C0 E0            [24] 2311 	push	acc
      0029BC A3               [24] 2312 	inc	dptr
      0029BD E0               [24] 2313 	movx	a,@dptr
      0029BE C0 E0            [24] 2314 	push	acc
                                   2315 ;	genIpush
      0029C0 74 F6            [12] 2316 	mov	a,#___str_31
      0029C2 C0 E0            [24] 2317 	push	acc
      0029C4 74 48            [12] 2318 	mov	a,#(___str_31 >> 8)
      0029C6 C0 E0            [24] 2319 	push	acc
      0029C8 74 80            [12] 2320 	mov	a,#0x80
      0029CA C0 E0            [24] 2321 	push	acc
                                   2322 ;	genCall
      0029CC 12 39 AF         [24] 2323 	lcall	_printf
      0029CF E5 81            [12] 2324 	mov	a,sp
      0029D1 24 FB            [12] 2325 	add	a,#0xfb
      0029D3 F5 81            [12] 2326 	mov	sp,a
                                   2327 ;	dhry_1.c:260: printf ("        should be:   %d\r\n", 5);
                                   2328 ;	genIpush
      0029D5 74 05            [12] 2329 	mov	a,#0x05
      0029D7 C0 E0            [24] 2330 	push	acc
                                   2331 ;	Peephole 181	changed mov to clr
      0029D9 E4               [12] 2332 	clr	a
      0029DA C0 E0            [24] 2333 	push	acc
                                   2334 ;	genIpush
      0029DC 74 CB            [12] 2335 	mov	a,#___str_13
      0029DE C0 E0            [24] 2336 	push	acc
      0029E0 74 46            [12] 2337 	mov	a,#(___str_13 >> 8)
      0029E2 C0 E0            [24] 2338 	push	acc
      0029E4 74 80            [12] 2339 	mov	a,#0x80
      0029E6 C0 E0            [24] 2340 	push	acc
                                   2341 ;	genCall
      0029E8 12 39 AF         [24] 2342 	lcall	_printf
      0029EB E5 81            [12] 2343 	mov	a,sp
      0029ED 24 FB            [12] 2344 	add	a,#0xfb
      0029EF F5 81            [12] 2345 	mov	sp,a
                                   2346 ;	dhry_1.c:261: printf ("Int_2_Loc:           %d\r\n", Int_2_Loc);
                                   2347 ;	genIpush
      0029F1 90 94 5A         [24] 2348 	mov	dptr,#_main_Int_2_Loc_65536_54
      0029F4 E0               [24] 2349 	movx	a,@dptr
      0029F5 C0 E0            [24] 2350 	push	acc
      0029F7 A3               [24] 2351 	inc	dptr
      0029F8 E0               [24] 2352 	movx	a,@dptr
      0029F9 C0 E0            [24] 2353 	push	acc
                                   2354 ;	genIpush
      0029FB 74 10            [12] 2355 	mov	a,#___str_32
      0029FD C0 E0            [24] 2356 	push	acc
      0029FF 74 49            [12] 2357 	mov	a,#(___str_32 >> 8)
      002A01 C0 E0            [24] 2358 	push	acc
      002A03 74 80            [12] 2359 	mov	a,#0x80
      002A05 C0 E0            [24] 2360 	push	acc
                                   2361 ;	genCall
      002A07 12 39 AF         [24] 2362 	lcall	_printf
      002A0A E5 81            [12] 2363 	mov	a,sp
      002A0C 24 FB            [12] 2364 	add	a,#0xfb
      002A0E F5 81            [12] 2365 	mov	sp,a
                                   2366 ;	dhry_1.c:262: printf ("        should be:   %d\r\n", 13);
                                   2367 ;	genIpush
      002A10 74 0D            [12] 2368 	mov	a,#0x0d
      002A12 C0 E0            [24] 2369 	push	acc
                                   2370 ;	Peephole 181	changed mov to clr
      002A14 E4               [12] 2371 	clr	a
      002A15 C0 E0            [24] 2372 	push	acc
                                   2373 ;	genIpush
      002A17 74 CB            [12] 2374 	mov	a,#___str_13
      002A19 C0 E0            [24] 2375 	push	acc
      002A1B 74 46            [12] 2376 	mov	a,#(___str_13 >> 8)
      002A1D C0 E0            [24] 2377 	push	acc
      002A1F 74 80            [12] 2378 	mov	a,#0x80
      002A21 C0 E0            [24] 2379 	push	acc
                                   2380 ;	genCall
      002A23 12 39 AF         [24] 2381 	lcall	_printf
      002A26 E5 81            [12] 2382 	mov	a,sp
      002A28 24 FB            [12] 2383 	add	a,#0xfb
      002A2A F5 81            [12] 2384 	mov	sp,a
                                   2385 ;	dhry_1.c:263: printf ("Int_3_Loc:           %d\r\n", Int_3_Loc);
                                   2386 ;	genIpush
      002A2C 90 94 5C         [24] 2387 	mov	dptr,#_main_Int_3_Loc_65536_54
      002A2F E0               [24] 2388 	movx	a,@dptr
      002A30 C0 E0            [24] 2389 	push	acc
      002A32 A3               [24] 2390 	inc	dptr
      002A33 E0               [24] 2391 	movx	a,@dptr
      002A34 C0 E0            [24] 2392 	push	acc
                                   2393 ;	genIpush
      002A36 74 2A            [12] 2394 	mov	a,#___str_33
      002A38 C0 E0            [24] 2395 	push	acc
      002A3A 74 49            [12] 2396 	mov	a,#(___str_33 >> 8)
      002A3C C0 E0            [24] 2397 	push	acc
      002A3E 74 80            [12] 2398 	mov	a,#0x80
      002A40 C0 E0            [24] 2399 	push	acc
                                   2400 ;	genCall
      002A42 12 39 AF         [24] 2401 	lcall	_printf
      002A45 E5 81            [12] 2402 	mov	a,sp
      002A47 24 FB            [12] 2403 	add	a,#0xfb
      002A49 F5 81            [12] 2404 	mov	sp,a
                                   2405 ;	dhry_1.c:264: printf ("        should be:   %d\r\n", 7);
                                   2406 ;	genIpush
      002A4B 74 07            [12] 2407 	mov	a,#0x07
      002A4D C0 E0            [24] 2408 	push	acc
                                   2409 ;	Peephole 181	changed mov to clr
      002A4F E4               [12] 2410 	clr	a
      002A50 C0 E0            [24] 2411 	push	acc
                                   2412 ;	genIpush
      002A52 74 CB            [12] 2413 	mov	a,#___str_13
      002A54 C0 E0            [24] 2414 	push	acc
      002A56 74 46            [12] 2415 	mov	a,#(___str_13 >> 8)
      002A58 C0 E0            [24] 2416 	push	acc
      002A5A 74 80            [12] 2417 	mov	a,#0x80
      002A5C C0 E0            [24] 2418 	push	acc
                                   2419 ;	genCall
      002A5E 12 39 AF         [24] 2420 	lcall	_printf
      002A61 E5 81            [12] 2421 	mov	a,sp
      002A63 24 FB            [12] 2422 	add	a,#0xfb
      002A65 F5 81            [12] 2423 	mov	sp,a
                                   2424 ;	dhry_1.c:265: printf ("Enum_Loc:            %d\r\n", Enum_Loc);
                                   2425 ;	genAssign
      002A67 90 94 5E         [24] 2426 	mov	dptr,#_main_Enum_Loc_65536_54
      002A6A E0               [24] 2427 	movx	a,@dptr
      002A6B FF               [12] 2428 	mov	r7,a
                                   2429 ;	genCast
      002A6C 7E 00            [12] 2430 	mov	r6,#0x00
                                   2431 ;	genIpush
      002A6E C0 07            [24] 2432 	push	ar7
      002A70 C0 06            [24] 2433 	push	ar6
                                   2434 ;	genIpush
      002A72 74 44            [12] 2435 	mov	a,#___str_34
      002A74 C0 E0            [24] 2436 	push	acc
      002A76 74 49            [12] 2437 	mov	a,#(___str_34 >> 8)
      002A78 C0 E0            [24] 2438 	push	acc
      002A7A 74 80            [12] 2439 	mov	a,#0x80
      002A7C C0 E0            [24] 2440 	push	acc
                                   2441 ;	genCall
      002A7E 12 39 AF         [24] 2442 	lcall	_printf
      002A81 E5 81            [12] 2443 	mov	a,sp
      002A83 24 FB            [12] 2444 	add	a,#0xfb
      002A85 F5 81            [12] 2445 	mov	sp,a
                                   2446 ;	dhry_1.c:266: printf ("        should be:   %d\r\n", 1);
                                   2447 ;	genIpush
      002A87 74 01            [12] 2448 	mov	a,#0x01
      002A89 C0 E0            [24] 2449 	push	acc
                                   2450 ;	Peephole 181	changed mov to clr
      002A8B E4               [12] 2451 	clr	a
      002A8C C0 E0            [24] 2452 	push	acc
                                   2453 ;	genIpush
      002A8E 74 CB            [12] 2454 	mov	a,#___str_13
      002A90 C0 E0            [24] 2455 	push	acc
      002A92 74 46            [12] 2456 	mov	a,#(___str_13 >> 8)
      002A94 C0 E0            [24] 2457 	push	acc
      002A96 74 80            [12] 2458 	mov	a,#0x80
      002A98 C0 E0            [24] 2459 	push	acc
                                   2460 ;	genCall
      002A9A 12 39 AF         [24] 2461 	lcall	_printf
      002A9D E5 81            [12] 2462 	mov	a,sp
      002A9F 24 FB            [12] 2463 	add	a,#0xfb
      002AA1 F5 81            [12] 2464 	mov	sp,a
                                   2465 ;	dhry_1.c:267: printf ("Str_1_Loc:           %s\r\n", Str_1_Loc);
                                   2466 ;	genIpush
      002AA3 74 5F            [12] 2467 	mov	a,#_main_Str_1_Loc_65536_54
      002AA5 C0 E0            [24] 2468 	push	acc
      002AA7 74 94            [12] 2469 	mov	a,#(_main_Str_1_Loc_65536_54 >> 8)
      002AA9 C0 E0            [24] 2470 	push	acc
                                   2471 ;	Peephole 181	changed mov to clr
      002AAB E4               [12] 2472 	clr	a
      002AAC C0 E0            [24] 2473 	push	acc
                                   2474 ;	genIpush
      002AAE 74 5E            [12] 2475 	mov	a,#___str_35
      002AB0 C0 E0            [24] 2476 	push	acc
      002AB2 74 49            [12] 2477 	mov	a,#(___str_35 >> 8)
      002AB4 C0 E0            [24] 2478 	push	acc
      002AB6 74 80            [12] 2479 	mov	a,#0x80
      002AB8 C0 E0            [24] 2480 	push	acc
                                   2481 ;	genCall
      002ABA 12 39 AF         [24] 2482 	lcall	_printf
      002ABD E5 81            [12] 2483 	mov	a,sp
      002ABF 24 FA            [12] 2484 	add	a,#0xfa
      002AC1 F5 81            [12] 2485 	mov	sp,a
                                   2486 ;	dhry_1.c:268: printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\r\n");
                                   2487 ;	genIpush
      002AC3 74 78            [12] 2488 	mov	a,#___str_36
      002AC5 C0 E0            [24] 2489 	push	acc
      002AC7 74 49            [12] 2490 	mov	a,#(___str_36 >> 8)
      002AC9 C0 E0            [24] 2491 	push	acc
      002ACB 74 80            [12] 2492 	mov	a,#0x80
      002ACD C0 E0            [24] 2493 	push	acc
                                   2494 ;	genCall
      002ACF 12 39 AF         [24] 2495 	lcall	_printf
      002AD2 15 81            [12] 2496 	dec	sp
      002AD4 15 81            [12] 2497 	dec	sp
      002AD6 15 81            [12] 2498 	dec	sp
                                   2499 ;	dhry_1.c:269: printf ("Str_2_Loc:           %s\r\n", Str_2_Loc);
                                   2500 ;	genIpush
      002AD8 74 7E            [12] 2501 	mov	a,#_main_Str_2_Loc_65536_54
      002ADA C0 E0            [24] 2502 	push	acc
      002ADC 74 94            [12] 2503 	mov	a,#(_main_Str_2_Loc_65536_54 >> 8)
      002ADE C0 E0            [24] 2504 	push	acc
                                   2505 ;	Peephole 181	changed mov to clr
      002AE0 E4               [12] 2506 	clr	a
      002AE1 C0 E0            [24] 2507 	push	acc
                                   2508 ;	genIpush
      002AE3 74 AE            [12] 2509 	mov	a,#___str_37
      002AE5 C0 E0            [24] 2510 	push	acc
      002AE7 74 49            [12] 2511 	mov	a,#(___str_37 >> 8)
      002AE9 C0 E0            [24] 2512 	push	acc
      002AEB 74 80            [12] 2513 	mov	a,#0x80
      002AED C0 E0            [24] 2514 	push	acc
                                   2515 ;	genCall
      002AEF 12 39 AF         [24] 2516 	lcall	_printf
      002AF2 E5 81            [12] 2517 	mov	a,sp
      002AF4 24 FA            [12] 2518 	add	a,#0xfa
      002AF6 F5 81            [12] 2519 	mov	sp,a
                                   2520 ;	dhry_1.c:270: printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\r\n");
                                   2521 ;	genIpush
      002AF8 74 C8            [12] 2522 	mov	a,#___str_38
      002AFA C0 E0            [24] 2523 	push	acc
      002AFC 74 49            [12] 2524 	mov	a,#(___str_38 >> 8)
      002AFE C0 E0            [24] 2525 	push	acc
      002B00 74 80            [12] 2526 	mov	a,#0x80
      002B02 C0 E0            [24] 2527 	push	acc
                                   2528 ;	genCall
      002B04 12 39 AF         [24] 2529 	lcall	_printf
      002B07 15 81            [12] 2530 	dec	sp
      002B09 15 81            [12] 2531 	dec	sp
      002B0B 15 81            [12] 2532 	dec	sp
                                   2533 ;	dhry_1.c:271: printf ("\r\n");
                                   2534 ;	genIpush
      002B0D 74 35            [12] 2535 	mov	a,#___str_2
      002B0F C0 E0            [24] 2536 	push	acc
      002B11 74 45            [12] 2537 	mov	a,#(___str_2 >> 8)
      002B13 C0 E0            [24] 2538 	push	acc
      002B15 74 80            [12] 2539 	mov	a,#0x80
      002B17 C0 E0            [24] 2540 	push	acc
                                   2541 ;	genCall
      002B19 12 39 AF         [24] 2542 	lcall	_printf
      002B1C 15 81            [12] 2543 	dec	sp
      002B1E 15 81            [12] 2544 	dec	sp
      002B20 15 81            [12] 2545 	dec	sp
                                   2546 ;	dhry_1.c:273: User_Time = End_Time - Begin_Time;
                                   2547 ;	genAssign
      002B22 90 93 F8         [24] 2548 	mov	dptr,#_Begin_Time
      002B25 E0               [24] 2549 	movx	a,@dptr
      002B26 FC               [12] 2550 	mov	r4,a
      002B27 A3               [24] 2551 	inc	dptr
      002B28 E0               [24] 2552 	movx	a,@dptr
      002B29 FD               [12] 2553 	mov	r5,a
      002B2A A3               [24] 2554 	inc	dptr
      002B2B E0               [24] 2555 	movx	a,@dptr
      002B2C FE               [12] 2556 	mov	r6,a
      002B2D A3               [24] 2557 	inc	dptr
      002B2E E0               [24] 2558 	movx	a,@dptr
      002B2F FF               [12] 2559 	mov	r7,a
                                   2560 ;	genAssign
      002B30 90 93 FC         [24] 2561 	mov	dptr,#_End_Time
      002B33 E0               [24] 2562 	movx	a,@dptr
      002B34 F8               [12] 2563 	mov	r0,a
      002B35 A3               [24] 2564 	inc	dptr
      002B36 E0               [24] 2565 	movx	a,@dptr
      002B37 F9               [12] 2566 	mov	r1,a
      002B38 A3               [24] 2567 	inc	dptr
      002B39 E0               [24] 2568 	movx	a,@dptr
      002B3A FA               [12] 2569 	mov	r2,a
      002B3B A3               [24] 2570 	inc	dptr
      002B3C E0               [24] 2571 	movx	a,@dptr
      002B3D FB               [12] 2572 	mov	r3,a
                                   2573 ;	genMinus
      002B3E E8               [12] 2574 	mov	a,r0
      002B3F C3               [12] 2575 	clr	c
      002B40 9C               [12] 2576 	subb	a,r4
      002B41 FC               [12] 2577 	mov	r4,a
      002B42 E9               [12] 2578 	mov	a,r1
      002B43 9D               [12] 2579 	subb	a,r5
      002B44 FD               [12] 2580 	mov	r5,a
      002B45 EA               [12] 2581 	mov	a,r2
      002B46 9E               [12] 2582 	subb	a,r6
      002B47 FE               [12] 2583 	mov	r6,a
      002B48 EB               [12] 2584 	mov	a,r3
      002B49 9F               [12] 2585 	subb	a,r7
      002B4A FF               [12] 2586 	mov	r7,a
                                   2587 ;	genAssign
      002B4B 90 94 00         [24] 2588 	mov	dptr,#_User_Time
      002B4E EC               [12] 2589 	mov	a,r4
      002B4F F0               [24] 2590 	movx	@dptr,a
      002B50 ED               [12] 2591 	mov	a,r5
      002B51 A3               [24] 2592 	inc	dptr
      002B52 F0               [24] 2593 	movx	@dptr,a
      002B53 EE               [12] 2594 	mov	a,r6
      002B54 A3               [24] 2595 	inc	dptr
      002B55 F0               [24] 2596 	movx	@dptr,a
      002B56 EF               [12] 2597 	mov	a,r7
      002B57 A3               [24] 2598 	inc	dptr
      002B58 F0               [24] 2599 	movx	@dptr,a
                                   2600 ;	dhry_1.c:275: if (User_Time < Too_Small_Time)
                                   2601 ;	genCmpLt
                                   2602 ;	genCmp
      002B59 C3               [12] 2603 	clr	c
      002B5A EC               [12] 2604 	mov	a,r4
      002B5B 94 D0            [12] 2605 	subb	a,#0xd0
      002B5D ED               [12] 2606 	mov	a,r5
      002B5E 94 07            [12] 2607 	subb	a,#0x07
      002B60 EE               [12] 2608 	mov	a,r6
      002B61 94 00            [12] 2609 	subb	a,#0x00
      002B63 EF               [12] 2610 	mov	a,r7
      002B64 64 80            [12] 2611 	xrl	a,#0x80
      002B66 94 80            [12] 2612 	subb	a,#0x80
                                   2613 ;	genIfxJump
                                   2614 ;	Peephole 108.a	removed ljmp by inverse jump logic
      002B68 50 42            [24] 2615 	jnc	00112$
                                   2616 ;	Peephole 500	removed redundant label 00170$
                                   2617 ;	dhry_1.c:277: printf ("Measured time too small to obtain meaningful results\r\n");
                                   2618 ;	genIpush
      002B6A 74 FE            [12] 2619 	mov	a,#___str_39
      002B6C C0 E0            [24] 2620 	push	acc
      002B6E 74 49            [12] 2621 	mov	a,#(___str_39 >> 8)
      002B70 C0 E0            [24] 2622 	push	acc
      002B72 74 80            [12] 2623 	mov	a,#0x80
      002B74 C0 E0            [24] 2624 	push	acc
                                   2625 ;	genCall
      002B76 12 39 AF         [24] 2626 	lcall	_printf
      002B79 15 81            [12] 2627 	dec	sp
      002B7B 15 81            [12] 2628 	dec	sp
      002B7D 15 81            [12] 2629 	dec	sp
                                   2630 ;	dhry_1.c:278: printf ("Please increase number of runs\r\n");
                                   2631 ;	genIpush
      002B7F 74 35            [12] 2632 	mov	a,#___str_40
      002B81 C0 E0            [24] 2633 	push	acc
      002B83 74 4A            [12] 2634 	mov	a,#(___str_40 >> 8)
      002B85 C0 E0            [24] 2635 	push	acc
      002B87 74 80            [12] 2636 	mov	a,#0x80
      002B89 C0 E0            [24] 2637 	push	acc
                                   2638 ;	genCall
      002B8B 12 39 AF         [24] 2639 	lcall	_printf
      002B8E 15 81            [12] 2640 	dec	sp
      002B90 15 81            [12] 2641 	dec	sp
      002B92 15 81            [12] 2642 	dec	sp
                                   2643 ;	dhry_1.c:279: printf ("\r\n");
                                   2644 ;	genIpush
      002B94 74 35            [12] 2645 	mov	a,#___str_2
      002B96 C0 E0            [24] 2646 	push	acc
      002B98 74 45            [12] 2647 	mov	a,#(___str_2 >> 8)
      002B9A C0 E0            [24] 2648 	push	acc
      002B9C 74 80            [12] 2649 	mov	a,#0x80
      002B9E C0 E0            [24] 2650 	push	acc
                                   2651 ;	genCall
      002BA0 12 39 AF         [24] 2652 	lcall	_printf
      002BA3 15 81            [12] 2653 	dec	sp
      002BA5 15 81            [12] 2654 	dec	sp
      002BA7 15 81            [12] 2655 	dec	sp
      002BA9 02 2D 03         [24] 2656 	ljmp	00113$
      002BAC                       2657 00112$:
                                   2658 ;	dhry_1.c:288: Microseconds = (float) User_Time * Mic_secs_Per_Second 
                                   2659 ;	genCall
      002BAC 8C 82            [24] 2660 	mov	dpl,r4
      002BAE 8D 83            [24] 2661 	mov	dph,r5
      002BB0 8E F0            [24] 2662 	mov	b,r6
      002BB2 EF               [12] 2663 	mov	a,r7
      002BB3 12 36 B5         [24] 2664 	lcall	___slong2fs
      002BB6 AC 82            [24] 2665 	mov	r4,dpl
      002BB8 AD 83            [24] 2666 	mov	r5,dph
      002BBA AE F0            [24] 2667 	mov	r6,b
      002BBC FF               [12] 2668 	mov	r7,a
                                   2669 ;	genIpush
      002BBD C0 07            [24] 2670 	push	ar7
      002BBF C0 06            [24] 2671 	push	ar6
      002BC1 C0 05            [24] 2672 	push	ar5
      002BC3 C0 04            [24] 2673 	push	ar4
      002BC5 C0 04            [24] 2674 	push	ar4
      002BC7 C0 05            [24] 2675 	push	ar5
      002BC9 C0 06            [24] 2676 	push	ar6
      002BCB C0 07            [24] 2677 	push	ar7
                                   2678 ;	dhry_1.c:289: / ((float) HZ * ((float) Number_Of_Runs));
                                   2679 ;	genCall
                                   2680 ;	Peephole 182.b	used 16 bit load of dptr
      002BCD 90 24 00         [24] 2681 	mov	dptr,#0x2400
      002BD0 75 F0 74         [24] 2682 	mov	b,#0x74
      002BD3 74 49            [12] 2683 	mov	a,#0x49
      002BD5 12 35 3D         [24] 2684 	lcall	___fsmul
      002BD8 A8 82            [24] 2685 	mov	r0,dpl
      002BDA A9 83            [24] 2686 	mov	r1,dph
      002BDC AA F0            [24] 2687 	mov	r2,b
      002BDE FB               [12] 2688 	mov	r3,a
      002BDF E5 81            [12] 2689 	mov	a,sp
      002BE1 24 FC            [12] 2690 	add	a,#0xfc
      002BE3 F5 81            [12] 2691 	mov	sp,a
                                   2692 ;	Peephole 300	pop ar4 removed
                                   2693 ;	Peephole 300	pop ar5 removed
                                   2694 ;	Peephole 300	pop ar6 removed
                                   2695 ;	Peephole 300	pop ar7 removed
                                   2696 ;	genIpush
                                   2697 ;	Peephole	push ar7 removed
                                   2698 ;	Peephole	push ar6 removed
                                   2699 ;	Peephole	push ar5 removed
                                   2700 ;	Peephole	push ar4 removed
      002BE5 74 80            [12] 2701 	mov	a,#0x80
      002BE7 C0 E0            [24] 2702 	push	acc
      002BE9 74 96            [12] 2703 	mov	a,#0x96
      002BEB C0 E0            [24] 2704 	push	acc
      002BED 74 98            [12] 2705 	mov	a,#0x98
      002BEF C0 E0            [24] 2706 	push	acc
      002BF1 74 4B            [12] 2707 	mov	a,#0x4b
      002BF3 C0 E0            [24] 2708 	push	acc
                                   2709 ;	genCall
      002BF5 88 82            [24] 2710 	mov	dpl,r0
      002BF7 89 83            [24] 2711 	mov	dph,r1
      002BF9 8A F0            [24] 2712 	mov	b,r2
      002BFB EB               [12] 2713 	mov	a,r3
      002BFC 12 43 D1         [24] 2714 	lcall	___fsdiv
      002BFF A8 82            [24] 2715 	mov	r0,dpl
      002C01 A9 83            [24] 2716 	mov	r1,dph
      002C03 AA F0            [24] 2717 	mov	r2,b
      002C05 FB               [12] 2718 	mov	r3,a
      002C06 E5 81            [12] 2719 	mov	a,sp
      002C08 24 FC            [12] 2720 	add	a,#0xfc
      002C0A F5 81            [12] 2721 	mov	sp,a
      002C0C D0 04            [24] 2722 	pop	ar4
      002C0E D0 05            [24] 2723 	pop	ar5
      002C10 D0 06            [24] 2724 	pop	ar6
      002C12 D0 07            [24] 2725 	pop	ar7
                                   2726 ;	genAssign
      002C14 90 94 04         [24] 2727 	mov	dptr,#_Microseconds
      002C17 E8               [12] 2728 	mov	a,r0
      002C18 F0               [24] 2729 	movx	@dptr,a
      002C19 E9               [12] 2730 	mov	a,r1
      002C1A A3               [24] 2731 	inc	dptr
      002C1B F0               [24] 2732 	movx	@dptr,a
      002C1C EA               [12] 2733 	mov	a,r2
      002C1D A3               [24] 2734 	inc	dptr
      002C1E F0               [24] 2735 	movx	@dptr,a
      002C1F EB               [12] 2736 	mov	a,r3
      002C20 A3               [24] 2737 	inc	dptr
      002C21 F0               [24] 2738 	movx	@dptr,a
                                   2739 ;	dhry_1.c:291: / (float) User_Time;
                                   2740 ;	genIpush
      002C22 C0 04            [24] 2741 	push	ar4
      002C24 C0 05            [24] 2742 	push	ar5
      002C26 C0 06            [24] 2743 	push	ar6
      002C28 C0 07            [24] 2744 	push	ar7
                                   2745 ;	genCall
                                   2746 ;	Peephole 182.b	used 16 bit load of dptr
      002C2A 90 96 80         [24] 2747 	mov	dptr,#0x9680
      002C2D 75 F0 98         [24] 2748 	mov	b,#0x98
      002C30 74 4B            [12] 2749 	mov	a,#0x4b
      002C32 12 43 D1         [24] 2750 	lcall	___fsdiv
      002C35 AC 82            [24] 2751 	mov	r4,dpl
      002C37 AD 83            [24] 2752 	mov	r5,dph
      002C39 AE F0            [24] 2753 	mov	r6,b
      002C3B FF               [12] 2754 	mov	r7,a
      002C3C E5 81            [12] 2755 	mov	a,sp
      002C3E 24 FC            [12] 2756 	add	a,#0xfc
      002C40 F5 81            [12] 2757 	mov	sp,a
                                   2758 ;	genAssign
      002C42 90 94 08         [24] 2759 	mov	dptr,#_Dhrystones_Per_Second
      002C45 EC               [12] 2760 	mov	a,r4
      002C46 F0               [24] 2761 	movx	@dptr,a
      002C47 ED               [12] 2762 	mov	a,r5
      002C48 A3               [24] 2763 	inc	dptr
      002C49 F0               [24] 2764 	movx	@dptr,a
      002C4A EE               [12] 2765 	mov	a,r6
      002C4B A3               [24] 2766 	inc	dptr
      002C4C F0               [24] 2767 	movx	@dptr,a
      002C4D EF               [12] 2768 	mov	a,r7
      002C4E A3               [24] 2769 	inc	dptr
      002C4F F0               [24] 2770 	movx	@dptr,a
                                   2771 ;	dhry_1.c:293: printf ("Microseconds for one run through Dhrystone: ");
                                   2772 ;	genIpush
      002C50 74 56            [12] 2773 	mov	a,#___str_41
      002C52 C0 E0            [24] 2774 	push	acc
      002C54 74 4A            [12] 2775 	mov	a,#(___str_41 >> 8)
      002C56 C0 E0            [24] 2776 	push	acc
      002C58 74 80            [12] 2777 	mov	a,#0x80
      002C5A C0 E0            [24] 2778 	push	acc
                                   2779 ;	genCall
      002C5C 12 39 AF         [24] 2780 	lcall	_printf
      002C5F 15 81            [12] 2781 	dec	sp
      002C61 15 81            [12] 2782 	dec	sp
      002C63 15 81            [12] 2783 	dec	sp
                                   2784 ;	dhry_1.c:295: printf ("%ld \r\n", (long int)Microseconds);
                                   2785 ;	genAssign
      002C65 90 94 04         [24] 2786 	mov	dptr,#_Microseconds
      002C68 E0               [24] 2787 	movx	a,@dptr
      002C69 FC               [12] 2788 	mov	r4,a
      002C6A A3               [24] 2789 	inc	dptr
      002C6B E0               [24] 2790 	movx	a,@dptr
      002C6C FD               [12] 2791 	mov	r5,a
      002C6D A3               [24] 2792 	inc	dptr
      002C6E E0               [24] 2793 	movx	a,@dptr
      002C6F FE               [12] 2794 	mov	r6,a
      002C70 A3               [24] 2795 	inc	dptr
      002C71 E0               [24] 2796 	movx	a,@dptr
                                   2797 ;	genCall
                                   2798 ;	Peephole 301	mov r7,a removed
      002C72 8C 82            [24] 2799 	mov	dpl,r4
      002C74 8D 83            [24] 2800 	mov	dph,r5
      002C76 8E F0            [24] 2801 	mov	b,r6
                                   2802 ;	Peephole 191	removed redundant mov
      002C78 12 36 E2         [24] 2803 	lcall	___fs2slong
      002C7B AC 82            [24] 2804 	mov	r4,dpl
      002C7D AD 83            [24] 2805 	mov	r5,dph
      002C7F AE F0            [24] 2806 	mov	r6,b
      002C81 FF               [12] 2807 	mov	r7,a
                                   2808 ;	genIpush
      002C82 C0 04            [24] 2809 	push	ar4
      002C84 C0 05            [24] 2810 	push	ar5
      002C86 C0 06            [24] 2811 	push	ar6
      002C88 C0 07            [24] 2812 	push	ar7
                                   2813 ;	genIpush
      002C8A 74 83            [12] 2814 	mov	a,#___str_42
      002C8C C0 E0            [24] 2815 	push	acc
      002C8E 74 4A            [12] 2816 	mov	a,#(___str_42 >> 8)
      002C90 C0 E0            [24] 2817 	push	acc
      002C92 74 80            [12] 2818 	mov	a,#0x80
      002C94 C0 E0            [24] 2819 	push	acc
                                   2820 ;	genCall
      002C96 12 39 AF         [24] 2821 	lcall	_printf
      002C99 E5 81            [12] 2822 	mov	a,sp
      002C9B 24 F9            [12] 2823 	add	a,#0xf9
      002C9D F5 81            [12] 2824 	mov	sp,a
                                   2825 ;	dhry_1.c:296: printf ("Dhrystones per Second:                      ");
                                   2826 ;	genIpush
      002C9F 74 8A            [12] 2827 	mov	a,#___str_43
      002CA1 C0 E0            [24] 2828 	push	acc
      002CA3 74 4A            [12] 2829 	mov	a,#(___str_43 >> 8)
      002CA5 C0 E0            [24] 2830 	push	acc
      002CA7 74 80            [12] 2831 	mov	a,#0x80
      002CA9 C0 E0            [24] 2832 	push	acc
                                   2833 ;	genCall
      002CAB 12 39 AF         [24] 2834 	lcall	_printf
      002CAE 15 81            [12] 2835 	dec	sp
      002CB0 15 81            [12] 2836 	dec	sp
      002CB2 15 81            [12] 2837 	dec	sp
                                   2838 ;	dhry_1.c:298: printf ("%ld \r\n", (long int)Dhrystones_Per_Second);
                                   2839 ;	genAssign
      002CB4 90 94 08         [24] 2840 	mov	dptr,#_Dhrystones_Per_Second
      002CB7 E0               [24] 2841 	movx	a,@dptr
      002CB8 FC               [12] 2842 	mov	r4,a
      002CB9 A3               [24] 2843 	inc	dptr
      002CBA E0               [24] 2844 	movx	a,@dptr
      002CBB FD               [12] 2845 	mov	r5,a
      002CBC A3               [24] 2846 	inc	dptr
      002CBD E0               [24] 2847 	movx	a,@dptr
      002CBE FE               [12] 2848 	mov	r6,a
      002CBF A3               [24] 2849 	inc	dptr
      002CC0 E0               [24] 2850 	movx	a,@dptr
                                   2851 ;	genCall
                                   2852 ;	Peephole 301	mov r7,a removed
      002CC1 8C 82            [24] 2853 	mov	dpl,r4
      002CC3 8D 83            [24] 2854 	mov	dph,r5
      002CC5 8E F0            [24] 2855 	mov	b,r6
                                   2856 ;	Peephole 191	removed redundant mov
      002CC7 12 36 E2         [24] 2857 	lcall	___fs2slong
      002CCA AC 82            [24] 2858 	mov	r4,dpl
      002CCC AD 83            [24] 2859 	mov	r5,dph
      002CCE AE F0            [24] 2860 	mov	r6,b
      002CD0 FF               [12] 2861 	mov	r7,a
                                   2862 ;	genIpush
      002CD1 C0 04            [24] 2863 	push	ar4
      002CD3 C0 05            [24] 2864 	push	ar5
      002CD5 C0 06            [24] 2865 	push	ar6
      002CD7 C0 07            [24] 2866 	push	ar7
                                   2867 ;	genIpush
      002CD9 74 83            [12] 2868 	mov	a,#___str_42
      002CDB C0 E0            [24] 2869 	push	acc
      002CDD 74 4A            [12] 2870 	mov	a,#(___str_42 >> 8)
      002CDF C0 E0            [24] 2871 	push	acc
      002CE1 74 80            [12] 2872 	mov	a,#0x80
      002CE3 C0 E0            [24] 2873 	push	acc
                                   2874 ;	genCall
      002CE5 12 39 AF         [24] 2875 	lcall	_printf
      002CE8 E5 81            [12] 2876 	mov	a,sp
      002CEA 24 F9            [12] 2877 	add	a,#0xf9
      002CEC F5 81            [12] 2878 	mov	sp,a
                                   2879 ;	dhry_1.c:299: printf ("\r\n");
                                   2880 ;	genIpush
      002CEE 74 35            [12] 2881 	mov	a,#___str_2
      002CF0 C0 E0            [24] 2882 	push	acc
      002CF2 74 45            [12] 2883 	mov	a,#(___str_2 >> 8)
      002CF4 C0 E0            [24] 2884 	push	acc
      002CF6 74 80            [12] 2885 	mov	a,#0x80
      002CF8 C0 E0            [24] 2886 	push	acc
                                   2887 ;	genCall
      002CFA 12 39 AF         [24] 2888 	lcall	_printf
      002CFD 15 81            [12] 2889 	dec	sp
      002CFF 15 81            [12] 2890 	dec	sp
      002D01 15 81            [12] 2891 	dec	sp
      002D03                       2892 00113$:
                                   2893 ;	dhry_1.c:302: PCON |= 2;
                                   2894 ;	genOr
      002D03 43 87 02         [24] 2895 	orl	_PCON,#0x02
                                   2896 ;	Peephole 500	removed redundant label 00120$
                                   2897 ;	dhry_1.c:303: }
      002D06 22               [24] 2898 	ret
                                   2899 ;------------------------------------------------------------
                                   2900 ;Allocation info for local variables in function 'Proc_1'
                                   2901 ;------------------------------------------------------------
                                   2902 ;sloc0                     Allocated with name '_Proc_1_sloc0_1_0'
                                   2903 ;sloc1                     Allocated with name '_Proc_1_sloc1_1_0'
                                   2904 ;sloc2                     Allocated with name '_Proc_1_sloc2_1_0'
                                   2905 ;Ptr_Val_Par               Allocated with name '_Proc_1_Ptr_Val_Par_65536_66'
                                   2906 ;Next_Record               Allocated with name '_Proc_1_Next_Record_65536_67'
                                   2907 ;------------------------------------------------------------
                                   2908 ;	dhry_1.c:306: void Proc_1 (REG Rec_Pointer Ptr_Val_Par)
                                   2909 ;	-----------------------------------------
                                   2910 ;	 function Proc_1
                                   2911 ;	-----------------------------------------
      002D07                       2912 _Proc_1:
                                   2913 ;	genReceive
      002D07 AF F0            [24] 2914 	mov	r7,b
      002D09 AE 83            [24] 2915 	mov	r6,dph
      002D0B E5 82            [12] 2916 	mov	a,dpl
      002D0D 90 94 9D         [24] 2917 	mov	dptr,#_Proc_1_Ptr_Val_Par_65536_66
      002D10 F0               [24] 2918 	movx	@dptr,a
      002D11 EE               [12] 2919 	mov	a,r6
      002D12 A3               [24] 2920 	inc	dptr
      002D13 F0               [24] 2921 	movx	@dptr,a
      002D14 EF               [12] 2922 	mov	a,r7
      002D15 A3               [24] 2923 	inc	dptr
      002D16 F0               [24] 2924 	movx	@dptr,a
                                   2925 ;	dhry_1.c:312: REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
                                   2926 ;	genAssign
      002D17 90 94 9D         [24] 2927 	mov	dptr,#_Proc_1_Ptr_Val_Par_65536_66
      002D1A E0               [24] 2928 	movx	a,@dptr
      002D1B F5 10            [12] 2929 	mov	_Proc_1_sloc0_1_0,a
      002D1D A3               [24] 2930 	inc	dptr
      002D1E E0               [24] 2931 	movx	a,@dptr
      002D1F F5 11            [12] 2932 	mov	(_Proc_1_sloc0_1_0 + 1),a
      002D21 A3               [24] 2933 	inc	dptr
      002D22 E0               [24] 2934 	movx	a,@dptr
      002D23 F5 12            [12] 2935 	mov	(_Proc_1_sloc0_1_0 + 2),a
                                   2936 ;	genPointerGet
                                   2937 ;	genGenPointerGet
      002D25 85 10 82         [24] 2938 	mov	dpl,_Proc_1_sloc0_1_0
      002D28 85 11 83         [24] 2939 	mov	dph,(_Proc_1_sloc0_1_0 + 1)
      002D2B 85 12 F0         [24] 2940 	mov	b,(_Proc_1_sloc0_1_0 + 2)
      002D2E 12 44 94         [24] 2941 	lcall	__gptrget
      002D31 FA               [12] 2942 	mov	r2,a
      002D32 A3               [24] 2943 	inc	dptr
      002D33 12 44 94         [24] 2944 	lcall	__gptrget
      002D36 FB               [12] 2945 	mov	r3,a
      002D37 A3               [24] 2946 	inc	dptr
      002D38 12 44 94         [24] 2947 	lcall	__gptrget
      002D3B FC               [12] 2948 	mov	r4,a
                                   2949 ;	dhry_1.c:317: structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
                                   2950 ;	genAssign
      002D3C 8A 00            [24] 2951 	mov	ar0,r2
      002D3E 8B 01            [24] 2952 	mov	ar1,r3
      002D40 8C 07            [24] 2953 	mov	ar7,r4
                                   2954 ;	genCast
      002D42 88 13            [24] 2955 	mov	_Proc_1_sloc1_1_0,r0
      002D44 89 14            [24] 2956 	mov	(_Proc_1_sloc1_1_0 + 1),r1
      002D46 8F 15            [24] 2957 	mov	(_Proc_1_sloc1_1_0 + 2),r7
                                   2958 ;	genAssign
      002D48 90 80 00         [24] 2959 	mov	dptr,#_Ptr_Glob
      002D4B E0               [24] 2960 	movx	a,@dptr
      002D4C FD               [12] 2961 	mov	r5,a
      002D4D A3               [24] 2962 	inc	dptr
      002D4E E0               [24] 2963 	movx	a,@dptr
      002D4F FE               [12] 2964 	mov	r6,a
      002D50 A3               [24] 2965 	inc	dptr
      002D51 E0               [24] 2966 	movx	a,@dptr
      002D52 FF               [12] 2967 	mov	r7,a
                                   2968 ;	genCast
      002D53 90 94 D4         [24] 2969 	mov	dptr,#___memcpy_PARM_2
      002D56 ED               [12] 2970 	mov	a,r5
      002D57 F0               [24] 2971 	movx	@dptr,a
      002D58 EE               [12] 2972 	mov	a,r6
      002D59 A3               [24] 2973 	inc	dptr
      002D5A F0               [24] 2974 	movx	@dptr,a
      002D5B EF               [12] 2975 	mov	a,r7
      002D5C A3               [24] 2976 	inc	dptr
      002D5D F0               [24] 2977 	movx	@dptr,a
                                   2978 ;	genAssign
      002D5E 90 94 D7         [24] 2979 	mov	dptr,#___memcpy_PARM_3
      002D61 74 26            [12] 2980 	mov	a,#0x26
      002D63 F0               [24] 2981 	movx	@dptr,a
                                   2982 ;	Peephole 181	changed mov to clr
      002D64 E4               [12] 2983 	clr	a
      002D65 A3               [24] 2984 	inc	dptr
      002D66 F0               [24] 2985 	movx	@dptr,a
                                   2986 ;	genCall
      002D67 85 13 82         [24] 2987 	mov	dpl,_Proc_1_sloc1_1_0
      002D6A 85 14 83         [24] 2988 	mov	dph,(_Proc_1_sloc1_1_0 + 1)
      002D6D 85 15 F0         [24] 2989 	mov	b,(_Proc_1_sloc1_1_0 + 2)
      002D70 C0 04            [24] 2990 	push	ar4
      002D72 C0 03            [24] 2991 	push	ar3
      002D74 C0 02            [24] 2992 	push	ar2
      002D76 12 36 0E         [24] 2993 	lcall	___memcpy
      002D79 D0 02            [24] 2994 	pop	ar2
      002D7B D0 03            [24] 2995 	pop	ar3
      002D7D D0 04            [24] 2996 	pop	ar4
                                   2997 ;	dhry_1.c:318: Ptr_Val_Par->variant.var_1.Int_Comp = 5;
                                   2998 ;	genPlus
                                   2999 ;	genPlusIncr
      002D7F 74 04            [12] 3000 	mov	a,#0x04
      002D81 25 10            [12] 3001 	add	a,_Proc_1_sloc0_1_0
      002D83 F5 13            [12] 3002 	mov	_Proc_1_sloc1_1_0,a
                                   3003 ;	Peephole 181	changed mov to clr
      002D85 E4               [12] 3004 	clr	a
      002D86 35 11            [12] 3005 	addc	a,(_Proc_1_sloc0_1_0 + 1)
      002D88 F5 14            [12] 3006 	mov	(_Proc_1_sloc1_1_0 + 1),a
      002D8A 85 12 15         [24] 3007 	mov	(_Proc_1_sloc1_1_0 + 2),(_Proc_1_sloc0_1_0 + 2)
                                   3008 ;	genPlus
                                   3009 ;	genPlusIncr
      002D8D 74 05            [12] 3010 	mov	a,#0x05
      002D8F 25 10            [12] 3011 	add	a,_Proc_1_sloc0_1_0
      002D91 F5 16            [12] 3012 	mov	_Proc_1_sloc2_1_0,a
                                   3013 ;	Peephole 181	changed mov to clr
      002D93 E4               [12] 3014 	clr	a
      002D94 35 11            [12] 3015 	addc	a,(_Proc_1_sloc0_1_0 + 1)
      002D96 F5 17            [12] 3016 	mov	(_Proc_1_sloc2_1_0 + 1),a
      002D98 85 12 18         [24] 3017 	mov	(_Proc_1_sloc2_1_0 + 2),(_Proc_1_sloc0_1_0 + 2)
                                   3018 ;	genPointerSet
                                   3019 ;	genGenPointerSet
      002D9B 85 16 82         [24] 3020 	mov	dpl,_Proc_1_sloc2_1_0
      002D9E 85 17 83         [24] 3021 	mov	dph,(_Proc_1_sloc2_1_0 + 1)
      002DA1 85 18 F0         [24] 3022 	mov	b,(_Proc_1_sloc2_1_0 + 2)
      002DA4 74 05            [12] 3023 	mov	a,#0x05
      002DA6 12 37 4F         [24] 3024 	lcall	__gptrput
      002DA9 A3               [24] 3025 	inc	dptr
                                   3026 ;	Peephole 181	changed mov to clr
      002DAA E4               [12] 3027 	clr	a
      002DAB 12 37 4F         [24] 3028 	lcall	__gptrput
                                   3029 ;	dhry_1.c:319: Next_Record->variant.var_1.Int_Comp 
                                   3030 ;	genPlus
                                   3031 ;	genPlusIncr
      002DAE 74 04            [12] 3032 	mov	a,#0x04
      002DB0 2A               [12] 3033 	add	a,r2
      002DB1 FD               [12] 3034 	mov	r5,a
                                   3035 ;	Peephole 181	changed mov to clr
      002DB2 E4               [12] 3036 	clr	a
      002DB3 3B               [12] 3037 	addc	a,r3
      002DB4 FE               [12] 3038 	mov	r6,a
      002DB5 8C 07            [24] 3039 	mov	ar7,r4
                                   3040 ;	genPlus
                                   3041 ;	genPlusIncr
      002DB7 0D               [12] 3042 	inc	r5
      002DB8 BD 00 01         [24] 3043 	cjne	r5,#0x00,00110$
      002DBB 0E               [12] 3044 	inc	r6
      002DBC                       3045 00110$:
                                   3046 ;	dhry_1.c:320: = Ptr_Val_Par->variant.var_1.Int_Comp;
                                   3047 ;	genPointerGet
                                   3048 ;	genGenPointerGet
      002DBC 85 16 82         [24] 3049 	mov	dpl,_Proc_1_sloc2_1_0
      002DBF 85 17 83         [24] 3050 	mov	dph,(_Proc_1_sloc2_1_0 + 1)
      002DC2 85 18 F0         [24] 3051 	mov	b,(_Proc_1_sloc2_1_0 + 2)
      002DC5 12 44 94         [24] 3052 	lcall	__gptrget
      002DC8 F8               [12] 3053 	mov	r0,a
      002DC9 A3               [24] 3054 	inc	dptr
      002DCA 12 44 94         [24] 3055 	lcall	__gptrget
      002DCD F9               [12] 3056 	mov	r1,a
                                   3057 ;	genPointerSet
                                   3058 ;	genGenPointerSet
      002DCE 8D 82            [24] 3059 	mov	dpl,r5
      002DD0 8E 83            [24] 3060 	mov	dph,r6
      002DD2 8F F0            [24] 3061 	mov	b,r7
      002DD4 E8               [12] 3062 	mov	a,r0
      002DD5 12 37 4F         [24] 3063 	lcall	__gptrput
      002DD8 A3               [24] 3064 	inc	dptr
      002DD9 E9               [12] 3065 	mov	a,r1
      002DDA 12 37 4F         [24] 3066 	lcall	__gptrput
                                   3067 ;	dhry_1.c:321: Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
                                   3068 ;	genPointerGet
                                   3069 ;	genGenPointerGet
      002DDD 85 10 82         [24] 3070 	mov	dpl,_Proc_1_sloc0_1_0
      002DE0 85 11 83         [24] 3071 	mov	dph,(_Proc_1_sloc0_1_0 + 1)
      002DE3 85 12 F0         [24] 3072 	mov	b,(_Proc_1_sloc0_1_0 + 2)
      002DE6 12 44 94         [24] 3073 	lcall	__gptrget
      002DE9 FD               [12] 3074 	mov	r5,a
      002DEA A3               [24] 3075 	inc	dptr
      002DEB 12 44 94         [24] 3076 	lcall	__gptrget
      002DEE FE               [12] 3077 	mov	r6,a
      002DEF A3               [24] 3078 	inc	dptr
      002DF0 12 44 94         [24] 3079 	lcall	__gptrget
      002DF3 FF               [12] 3080 	mov	r7,a
                                   3081 ;	genPointerSet
                                   3082 ;	genGenPointerSet
      002DF4 8A 82            [24] 3083 	mov	dpl,r2
      002DF6 8B 83            [24] 3084 	mov	dph,r3
      002DF8 8C F0            [24] 3085 	mov	b,r4
      002DFA ED               [12] 3086 	mov	a,r5
      002DFB 12 37 4F         [24] 3087 	lcall	__gptrput
      002DFE A3               [24] 3088 	inc	dptr
      002DFF EE               [12] 3089 	mov	a,r6
      002E00 12 37 4F         [24] 3090 	lcall	__gptrput
      002E03 A3               [24] 3091 	inc	dptr
      002E04 EF               [12] 3092 	mov	a,r7
      002E05 12 37 4F         [24] 3093 	lcall	__gptrput
                                   3094 ;	dhry_1.c:322: Proc_3 (&Next_Record->Ptr_Comp);
                                   3095 ;	genCall
      002E08 8A 82            [24] 3096 	mov	dpl,r2
      002E0A 8B 83            [24] 3097 	mov	dph,r3
      002E0C 8C F0            [24] 3098 	mov	b,r4
      002E0E C0 04            [24] 3099 	push	ar4
      002E10 C0 03            [24] 3100 	push	ar3
      002E12 C0 02            [24] 3101 	push	ar2
      002E14 12 2F 91         [24] 3102 	lcall	_Proc_3
      002E17 D0 02            [24] 3103 	pop	ar2
      002E19 D0 03            [24] 3104 	pop	ar3
      002E1B D0 04            [24] 3105 	pop	ar4
                                   3106 ;	dhry_1.c:325: if (Next_Record->Discr == Ident_1)
                                   3107 ;	genPlus
                                   3108 ;	genPlusIncr
      002E1D 74 03            [12] 3109 	mov	a,#0x03
      002E1F 2A               [12] 3110 	add	a,r2
      002E20 FD               [12] 3111 	mov	r5,a
                                   3112 ;	Peephole 181	changed mov to clr
      002E21 E4               [12] 3113 	clr	a
      002E22 3B               [12] 3114 	addc	a,r3
      002E23 FE               [12] 3115 	mov	r6,a
      002E24 8C 07            [24] 3116 	mov	ar7,r4
                                   3117 ;	genPointerGet
                                   3118 ;	genGenPointerGet
      002E26 8D 82            [24] 3119 	mov	dpl,r5
      002E28 8E 83            [24] 3120 	mov	dph,r6
      002E2A 8F F0            [24] 3121 	mov	b,r7
      002E2C 12 44 94         [24] 3122 	lcall	__gptrget
                                   3123 ;	genIfxJump
      002E2F 60 03            [24] 3124 	jz	00111$
      002E31 02 2E EF         [24] 3125 	ljmp	00102$
      002E34                       3126 00111$:
                                   3127 ;	dhry_1.c:328: Next_Record->variant.var_1.Int_Comp = 6;
                                   3128 ;	genPlus
                                   3129 ;	genPlusIncr
      002E34 74 04            [12] 3130 	mov	a,#0x04
      002E36 2A               [12] 3131 	add	a,r2
      002E37 F5 16            [12] 3132 	mov	_Proc_1_sloc2_1_0,a
                                   3133 ;	Peephole 181	changed mov to clr
      002E39 E4               [12] 3134 	clr	a
      002E3A 3B               [12] 3135 	addc	a,r3
      002E3B F5 17            [12] 3136 	mov	(_Proc_1_sloc2_1_0 + 1),a
      002E3D 8C 18            [24] 3137 	mov	(_Proc_1_sloc2_1_0 + 2),r4
                                   3138 ;	genPlus
                                   3139 ;	genPlusIncr
      002E3F 74 01            [12] 3140 	mov	a,#0x01
      002E41 25 16            [12] 3141 	add	a,_Proc_1_sloc2_1_0
      002E43 F8               [12] 3142 	mov	r0,a
                                   3143 ;	Peephole 181	changed mov to clr
      002E44 E4               [12] 3144 	clr	a
      002E45 35 17            [12] 3145 	addc	a,(_Proc_1_sloc2_1_0 + 1)
      002E47 F9               [12] 3146 	mov	r1,a
      002E48 AF 18            [24] 3147 	mov	r7,(_Proc_1_sloc2_1_0 + 2)
                                   3148 ;	genPointerSet
                                   3149 ;	genGenPointerSet
      002E4A 88 82            [24] 3150 	mov	dpl,r0
      002E4C 89 83            [24] 3151 	mov	dph,r1
      002E4E 8F F0            [24] 3152 	mov	b,r7
      002E50 74 06            [12] 3153 	mov	a,#0x06
      002E52 12 37 4F         [24] 3154 	lcall	__gptrput
      002E55 A3               [24] 3155 	inc	dptr
                                   3156 ;	Peephole 181	changed mov to clr
      002E56 E4               [12] 3157 	clr	a
      002E57 12 37 4F         [24] 3158 	lcall	__gptrput
                                   3159 ;	dhry_1.c:329: Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
                                   3160 ;	genPointerGet
                                   3161 ;	genGenPointerGet
      002E5A 85 13 82         [24] 3162 	mov	dpl,_Proc_1_sloc1_1_0
      002E5D 85 14 83         [24] 3163 	mov	dph,(_Proc_1_sloc1_1_0 + 1)
      002E60 85 15 F0         [24] 3164 	mov	b,(_Proc_1_sloc1_1_0 + 2)
      002E63 12 44 94         [24] 3165 	lcall	__gptrget
      002E66 FF               [12] 3166 	mov	r7,a
                                   3167 ;	dhry_1.c:330: &Next_Record->variant.var_1.Enum_Comp);
                                   3168 ;	genAssign
      002E67 90 94 A7         [24] 3169 	mov	dptr,#_Proc_6_PARM_2
      002E6A E5 16            [12] 3170 	mov	a,_Proc_1_sloc2_1_0
      002E6C F0               [24] 3171 	movx	@dptr,a
      002E6D E5 17            [12] 3172 	mov	a,(_Proc_1_sloc2_1_0 + 1)
      002E6F A3               [24] 3173 	inc	dptr
      002E70 F0               [24] 3174 	movx	@dptr,a
      002E71 E5 18            [12] 3175 	mov	a,(_Proc_1_sloc2_1_0 + 2)
      002E73 A3               [24] 3176 	inc	dptr
      002E74 F0               [24] 3177 	movx	@dptr,a
                                   3178 ;	genCall
      002E75 8F 82            [24] 3179 	mov	dpl,r7
      002E77 C0 04            [24] 3180 	push	ar4
      002E79 C0 03            [24] 3181 	push	ar3
      002E7B C0 02            [24] 3182 	push	ar2
      002E7D 12 30 4A         [24] 3183 	lcall	_Proc_6
      002E80 D0 02            [24] 3184 	pop	ar2
      002E82 D0 03            [24] 3185 	pop	ar3
      002E84 D0 04            [24] 3186 	pop	ar4
                                   3187 ;	dhry_1.c:331: Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
                                   3188 ;	genAssign
      002E86 90 80 00         [24] 3189 	mov	dptr,#_Ptr_Glob
      002E89 E0               [24] 3190 	movx	a,@dptr
      002E8A FD               [12] 3191 	mov	r5,a
      002E8B A3               [24] 3192 	inc	dptr
      002E8C E0               [24] 3193 	movx	a,@dptr
      002E8D FE               [12] 3194 	mov	r6,a
      002E8E A3               [24] 3195 	inc	dptr
      002E8F E0               [24] 3196 	movx	a,@dptr
      002E90 FF               [12] 3197 	mov	r7,a
                                   3198 ;	genPointerGet
                                   3199 ;	genGenPointerGet
      002E91 8D 82            [24] 3200 	mov	dpl,r5
      002E93 8E 83            [24] 3201 	mov	dph,r6
      002E95 8F F0            [24] 3202 	mov	b,r7
      002E97 12 44 94         [24] 3203 	lcall	__gptrget
      002E9A FD               [12] 3204 	mov	r5,a
      002E9B A3               [24] 3205 	inc	dptr
      002E9C 12 44 94         [24] 3206 	lcall	__gptrget
      002E9F FE               [12] 3207 	mov	r6,a
      002EA0 A3               [24] 3208 	inc	dptr
      002EA1 12 44 94         [24] 3209 	lcall	__gptrget
      002EA4 FF               [12] 3210 	mov	r7,a
                                   3211 ;	genPointerSet
                                   3212 ;	genGenPointerSet
      002EA5 8A 82            [24] 3213 	mov	dpl,r2
      002EA7 8B 83            [24] 3214 	mov	dph,r3
      002EA9 8C F0            [24] 3215 	mov	b,r4
      002EAB ED               [12] 3216 	mov	a,r5
      002EAC 12 37 4F         [24] 3217 	lcall	__gptrput
      002EAF A3               [24] 3218 	inc	dptr
      002EB0 EE               [12] 3219 	mov	a,r6
      002EB1 12 37 4F         [24] 3220 	lcall	__gptrput
      002EB4 A3               [24] 3221 	inc	dptr
      002EB5 EF               [12] 3222 	mov	a,r7
      002EB6 12 37 4F         [24] 3223 	lcall	__gptrput
                                   3224 ;	dhry_1.c:332: Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
                                   3225 ;	genPlus
                                   3226 ;	genPlusIncr
      002EB9 74 04            [12] 3227 	mov	a,#0x04
      002EBB 2A               [12] 3228 	add	a,r2
      002EBC FA               [12] 3229 	mov	r2,a
                                   3230 ;	Peephole 181	changed mov to clr
      002EBD E4               [12] 3231 	clr	a
      002EBE 3B               [12] 3232 	addc	a,r3
      002EBF FB               [12] 3233 	mov	r3,a
                                   3234 ;	genPlus
                                   3235 ;	genPlusIncr
      002EC0 0A               [12] 3236 	inc	r2
      002EC1 BA 00 01         [24] 3237 	cjne	r2,#0x00,00112$
      002EC4 0B               [12] 3238 	inc	r3
      002EC5                       3239 00112$:
                                   3240 ;	genPointerGet
                                   3241 ;	genGenPointerGet
      002EC5 8A 82            [24] 3242 	mov	dpl,r2
      002EC7 8B 83            [24] 3243 	mov	dph,r3
      002EC9 8C F0            [24] 3244 	mov	b,r4
      002ECB 12 44 94         [24] 3245 	lcall	__gptrget
      002ECE FE               [12] 3246 	mov	r6,a
      002ECF A3               [24] 3247 	inc	dptr
      002ED0 12 44 94         [24] 3248 	lcall	__gptrget
      002ED3 FF               [12] 3249 	mov	r7,a
                                   3250 ;	dhry_1.c:333: &Next_Record->variant.var_1.Int_Comp);
                                   3251 ;	genAssign
      002ED4 90 94 AB         [24] 3252 	mov	dptr,#_Proc_7_PARM_2
      002ED7 74 0A            [12] 3253 	mov	a,#0x0a
      002ED9 F0               [24] 3254 	movx	@dptr,a
                                   3255 ;	Peephole 181	changed mov to clr
      002EDA E4               [12] 3256 	clr	a
      002EDB A3               [24] 3257 	inc	dptr
      002EDC F0               [24] 3258 	movx	@dptr,a
                                   3259 ;	genAssign
      002EDD 90 94 AD         [24] 3260 	mov	dptr,#_Proc_7_PARM_3
      002EE0 EA               [12] 3261 	mov	a,r2
      002EE1 F0               [24] 3262 	movx	@dptr,a
      002EE2 EB               [12] 3263 	mov	a,r3
      002EE3 A3               [24] 3264 	inc	dptr
      002EE4 F0               [24] 3265 	movx	@dptr,a
      002EE5 EC               [12] 3266 	mov	a,r4
      002EE6 A3               [24] 3267 	inc	dptr
      002EE7 F0               [24] 3268 	movx	@dptr,a
                                   3269 ;	genCall
      002EE8 8E 82            [24] 3270 	mov	dpl,r6
      002EEA 8F 83            [24] 3271 	mov	dph,r7
                                   3272 ;	Peephole 112.b	changed ljmp to sjmp
                                   3273 ;	Peephole 251.b	replaced sjmp 00104$ to ret with ret
                                   3274 ;	Peephole 400.a	replaced lcall/ret with ljmp
      002EEC 02 30 F4         [24] 3275 	ljmp	_Proc_7
      002EEF                       3276 00102$:
                                   3277 ;	dhry_1.c:336: structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
                                   3278 ;	genAssign
      002EEF AD 10            [24] 3279 	mov	r5,_Proc_1_sloc0_1_0
      002EF1 AE 11            [24] 3280 	mov	r6,(_Proc_1_sloc0_1_0 + 1)
      002EF3 AF 12            [24] 3281 	mov	r7,(_Proc_1_sloc0_1_0 + 2)
                                   3282 ;	genCast
                                   3283 ;	genPointerGet
                                   3284 ;	genGenPointerGet
      002EF5 85 10 82         [24] 3285 	mov	dpl,_Proc_1_sloc0_1_0
      002EF8 85 11 83         [24] 3286 	mov	dph,(_Proc_1_sloc0_1_0 + 1)
      002EFB 85 12 F0         [24] 3287 	mov	b,(_Proc_1_sloc0_1_0 + 2)
      002EFE 12 44 94         [24] 3288 	lcall	__gptrget
      002F01 FA               [12] 3289 	mov	r2,a
      002F02 A3               [24] 3290 	inc	dptr
      002F03 12 44 94         [24] 3291 	lcall	__gptrget
      002F06 FB               [12] 3292 	mov	r3,a
      002F07 A3               [24] 3293 	inc	dptr
      002F08 12 44 94         [24] 3294 	lcall	__gptrget
      002F0B FC               [12] 3295 	mov	r4,a
                                   3296 ;	genCast
      002F0C 90 94 D4         [24] 3297 	mov	dptr,#___memcpy_PARM_2
      002F0F EA               [12] 3298 	mov	a,r2
      002F10 F0               [24] 3299 	movx	@dptr,a
      002F11 EB               [12] 3300 	mov	a,r3
      002F12 A3               [24] 3301 	inc	dptr
      002F13 F0               [24] 3302 	movx	@dptr,a
      002F14 EC               [12] 3303 	mov	a,r4
      002F15 A3               [24] 3304 	inc	dptr
      002F16 F0               [24] 3305 	movx	@dptr,a
                                   3306 ;	genAssign
      002F17 90 94 D7         [24] 3307 	mov	dptr,#___memcpy_PARM_3
      002F1A 74 26            [12] 3308 	mov	a,#0x26
      002F1C F0               [24] 3309 	movx	@dptr,a
                                   3310 ;	Peephole 181	changed mov to clr
      002F1D E4               [12] 3311 	clr	a
      002F1E A3               [24] 3312 	inc	dptr
      002F1F F0               [24] 3313 	movx	@dptr,a
                                   3314 ;	genCall
      002F20 8D 82            [24] 3315 	mov	dpl,r5
      002F22 8E 83            [24] 3316 	mov	dph,r6
      002F24 8F F0            [24] 3317 	mov	b,r7
                                   3318 ;	dhry_1.c:337: } /* Proc_1 */
                                   3319 ;	Peephole 400.b	replaced lcall/ret with ljmp
      002F26 02 36 0E         [24] 3320 	ljmp	___memcpy
                                   3321 ;
                                   3322 ;------------------------------------------------------------
                                   3323 ;Allocation info for local variables in function 'Proc_2'
                                   3324 ;------------------------------------------------------------
                                   3325 ;Int_Par_Ref               Allocated with name '_Proc_2_Int_Par_Ref_65536_69'
                                   3326 ;Int_Loc                   Allocated with name '_Proc_2_Int_Loc_65536_70'
                                   3327 ;Enum_Loc                  Allocated with name '_Proc_2_Enum_Loc_65536_70'
                                   3328 ;------------------------------------------------------------
                                   3329 ;	dhry_1.c:340: void Proc_2 (One_Fifty *Int_Par_Ref)
                                   3330 ;	-----------------------------------------
                                   3331 ;	 function Proc_2
                                   3332 ;	-----------------------------------------
      002F29                       3333 _Proc_2:
                                   3334 ;	genReceive
      002F29 AF F0            [24] 3335 	mov	r7,b
      002F2B AE 83            [24] 3336 	mov	r6,dph
      002F2D E5 82            [12] 3337 	mov	a,dpl
      002F2F 90 94 A0         [24] 3338 	mov	dptr,#_Proc_2_Int_Par_Ref_65536_69
      002F32 F0               [24] 3339 	movx	@dptr,a
      002F33 EE               [12] 3340 	mov	a,r6
      002F34 A3               [24] 3341 	inc	dptr
      002F35 F0               [24] 3342 	movx	@dptr,a
      002F36 EF               [12] 3343 	mov	a,r7
      002F37 A3               [24] 3344 	inc	dptr
      002F38 F0               [24] 3345 	movx	@dptr,a
                                   3346 ;	dhry_1.c:349: Int_Loc = *Int_Par_Ref + 10;
                                   3347 ;	genAssign
      002F39 90 94 A0         [24] 3348 	mov	dptr,#_Proc_2_Int_Par_Ref_65536_69
      002F3C E0               [24] 3349 	movx	a,@dptr
      002F3D FD               [12] 3350 	mov	r5,a
      002F3E A3               [24] 3351 	inc	dptr
      002F3F E0               [24] 3352 	movx	a,@dptr
      002F40 FE               [12] 3353 	mov	r6,a
      002F41 A3               [24] 3354 	inc	dptr
      002F42 E0               [24] 3355 	movx	a,@dptr
      002F43 FF               [12] 3356 	mov	r7,a
                                   3357 ;	genPointerGet
                                   3358 ;	genGenPointerGet
      002F44 8D 82            [24] 3359 	mov	dpl,r5
      002F46 8E 83            [24] 3360 	mov	dph,r6
      002F48 8F F0            [24] 3361 	mov	b,r7
      002F4A 12 44 94         [24] 3362 	lcall	__gptrget
      002F4D FB               [12] 3363 	mov	r3,a
      002F4E A3               [24] 3364 	inc	dptr
      002F4F 12 44 94         [24] 3365 	lcall	__gptrget
      002F52 FC               [12] 3366 	mov	r4,a
                                   3367 ;	genPlus
                                   3368 ;	genPlusIncr
      002F53 74 0A            [12] 3369 	mov	a,#0x0a
      002F55 2B               [12] 3370 	add	a,r3
      002F56 FB               [12] 3371 	mov	r3,a
                                   3372 ;	Peephole 181	changed mov to clr
      002F57 E4               [12] 3373 	clr	a
      002F58 3C               [12] 3374 	addc	a,r4
      002F59 FC               [12] 3375 	mov	r4,a
                                   3376 ;	dhry_1.c:350: do /* executed once */
      002F5A                       3377 00103$:
                                   3378 ;	dhry_1.c:351: if (Ch_1_Glob == 'A')
                                   3379 ;	genAssign
      002F5A 90 80 0A         [24] 3380 	mov	dptr,#_Ch_1_Glob
      002F5D E0               [24] 3381 	movx	a,@dptr
      002F5E FA               [12] 3382 	mov	r2,a
                                   3383 ;	genCmpEq
                                   3384 ;	gencjneshort
                                   3385 ;	Peephole 112.b	changed ljmp to sjmp
                                   3386 ;	Peephole 198.b	optimized misc jump sequence
      002F5F BA 41 28         [24] 3387 	cjne	r2,#0x41,00104$
                                   3388 ;	Peephole 200.b	removed redundant sjmp
                                   3389 ;	Peephole 500	removed redundant label 00117$
                                   3390 ;	Peephole 500	removed redundant label 00118$
                                   3391 ;	dhry_1.c:354: Int_Loc -= 1;
                                   3392 ;	genMinus
                                   3393 ;	genMinusDec
      002F62 1B               [12] 3394 	dec	r3
      002F63 BB FF 01         [24] 3395 	cjne	r3,#0xff,00119$
      002F66 1C               [12] 3396 	dec	r4
      002F67                       3397 00119$:
                                   3398 ;	dhry_1.c:355: *Int_Par_Ref = Int_Loc - Int_Glob;
                                   3399 ;	genAssign
      002F67 90 80 06         [24] 3400 	mov	dptr,#_Int_Glob
      002F6A E0               [24] 3401 	movx	a,@dptr
      002F6B F9               [12] 3402 	mov	r1,a
      002F6C A3               [24] 3403 	inc	dptr
      002F6D E0               [24] 3404 	movx	a,@dptr
      002F6E FA               [12] 3405 	mov	r2,a
                                   3406 ;	genMinus
      002F6F EB               [12] 3407 	mov	a,r3
      002F70 C3               [12] 3408 	clr	c
      002F71 99               [12] 3409 	subb	a,r1
      002F72 F9               [12] 3410 	mov	r1,a
      002F73 EC               [12] 3411 	mov	a,r4
      002F74 9A               [12] 3412 	subb	a,r2
      002F75 FA               [12] 3413 	mov	r2,a
                                   3414 ;	genPointerSet
                                   3415 ;	genGenPointerSet
      002F76 8D 82            [24] 3416 	mov	dpl,r5
      002F78 8E 83            [24] 3417 	mov	dph,r6
      002F7A 8F F0            [24] 3418 	mov	b,r7
      002F7C E9               [12] 3419 	mov	a,r1
      002F7D 12 37 4F         [24] 3420 	lcall	__gptrput
      002F80 A3               [24] 3421 	inc	dptr
      002F81 EA               [12] 3422 	mov	a,r2
      002F82 12 37 4F         [24] 3423 	lcall	__gptrput
                                   3424 ;	dhry_1.c:356: Enum_Loc = Ident_1;
                                   3425 ;	genAssign
      002F85 90 94 A3         [24] 3426 	mov	dptr,#_Proc_2_Enum_Loc_65536_70
                                   3427 ;	Peephole 181	changed mov to clr
      002F88 E4               [12] 3428 	clr	a
      002F89 F0               [24] 3429 	movx	@dptr,a
      002F8A                       3430 00104$:
                                   3431 ;	dhry_1.c:358: while (Enum_Loc != Ident_1); /* true */
                                   3432 ;	genIfx
      002F8A 90 94 A3         [24] 3433 	mov	dptr,#_Proc_2_Enum_Loc_65536_70
      002F8D E0               [24] 3434 	movx	a,@dptr
                                   3435 ;	genIfxJump
                                   3436 ;	Peephole 108.b	removed ljmp by inverse jump logic
      002F8E 70 CA            [24] 3437 	jnz	00103$
                                   3438 ;	Peephole 500	removed redundant label 00120$
                                   3439 ;	Peephole 500	removed redundant label 00106$
                                   3440 ;	dhry_1.c:359: } /* Proc_2 */
      002F90 22               [24] 3441 	ret
                                   3442 ;------------------------------------------------------------
                                   3443 ;Allocation info for local variables in function 'Proc_3'
                                   3444 ;------------------------------------------------------------
                                   3445 ;Ptr_Ref_Par               Allocated with name '_Proc_3_Ptr_Ref_Par_65536_72'
                                   3446 ;------------------------------------------------------------
                                   3447 ;	dhry_1.c:362: void Proc_3 (Rec_Pointer *Ptr_Ref_Par)
                                   3448 ;	-----------------------------------------
                                   3449 ;	 function Proc_3
                                   3450 ;	-----------------------------------------
      002F91                       3451 _Proc_3:
                                   3452 ;	genReceive
      002F91 AF F0            [24] 3453 	mov	r7,b
      002F93 AE 83            [24] 3454 	mov	r6,dph
      002F95 E5 82            [12] 3455 	mov	a,dpl
      002F97 90 94 A4         [24] 3456 	mov	dptr,#_Proc_3_Ptr_Ref_Par_65536_72
      002F9A F0               [24] 3457 	movx	@dptr,a
      002F9B EE               [12] 3458 	mov	a,r6
      002F9C A3               [24] 3459 	inc	dptr
      002F9D F0               [24] 3460 	movx	@dptr,a
      002F9E EF               [12] 3461 	mov	a,r7
      002F9F A3               [24] 3462 	inc	dptr
      002FA0 F0               [24] 3463 	movx	@dptr,a
                                   3464 ;	dhry_1.c:368: if (Ptr_Glob != Null)
                                   3465 ;	genAssign
      002FA1 90 80 00         [24] 3466 	mov	dptr,#_Ptr_Glob
      002FA4 E0               [24] 3467 	movx	a,@dptr
      002FA5 FD               [12] 3468 	mov	r5,a
      002FA6 A3               [24] 3469 	inc	dptr
      002FA7 E0               [24] 3470 	movx	a,@dptr
      002FA8 FE               [12] 3471 	mov	r6,a
      002FA9 A3               [24] 3472 	inc	dptr
      002FAA E0               [24] 3473 	movx	a,@dptr
      002FAB FF               [12] 3474 	mov	r7,a
                                   3475 ;	genIfx
      002FAC 90 80 00         [24] 3476 	mov	dptr,#_Ptr_Glob
      002FAF E0               [24] 3477 	movx	a,@dptr
      002FB0 F5 F0            [12] 3478 	mov	b,a
      002FB2 A3               [24] 3479 	inc	dptr
      002FB3 E0               [24] 3480 	movx	a,@dptr
      002FB4 45 F0            [12] 3481 	orl	a,b
                                   3482 ;	genIfxJump
                                   3483 ;	Peephole 108.c	removed ljmp by inverse jump logic
      002FB6 60 33            [24] 3484 	jz	00102$
                                   3485 ;	Peephole 500	removed redundant label 00109$
                                   3486 ;	dhry_1.c:370: *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
                                   3487 ;	genAssign
      002FB8 90 94 A4         [24] 3488 	mov	dptr,#_Proc_3_Ptr_Ref_Par_65536_72
      002FBB E0               [24] 3489 	movx	a,@dptr
      002FBC FA               [12] 3490 	mov	r2,a
      002FBD A3               [24] 3491 	inc	dptr
      002FBE E0               [24] 3492 	movx	a,@dptr
      002FBF FB               [12] 3493 	mov	r3,a
      002FC0 A3               [24] 3494 	inc	dptr
      002FC1 E0               [24] 3495 	movx	a,@dptr
      002FC2 FC               [12] 3496 	mov	r4,a
                                   3497 ;	genPointerGet
                                   3498 ;	genGenPointerGet
      002FC3 8D 82            [24] 3499 	mov	dpl,r5
      002FC5 8E 83            [24] 3500 	mov	dph,r6
      002FC7 8F F0            [24] 3501 	mov	b,r7
      002FC9 12 44 94         [24] 3502 	lcall	__gptrget
      002FCC FD               [12] 3503 	mov	r5,a
      002FCD A3               [24] 3504 	inc	dptr
      002FCE 12 44 94         [24] 3505 	lcall	__gptrget
      002FD1 FE               [12] 3506 	mov	r6,a
      002FD2 A3               [24] 3507 	inc	dptr
      002FD3 12 44 94         [24] 3508 	lcall	__gptrget
      002FD6 FF               [12] 3509 	mov	r7,a
                                   3510 ;	genPointerSet
                                   3511 ;	genGenPointerSet
      002FD7 8A 82            [24] 3512 	mov	dpl,r2
      002FD9 8B 83            [24] 3513 	mov	dph,r3
      002FDB 8C F0            [24] 3514 	mov	b,r4
      002FDD ED               [12] 3515 	mov	a,r5
      002FDE 12 37 4F         [24] 3516 	lcall	__gptrput
      002FE1 A3               [24] 3517 	inc	dptr
      002FE2 EE               [12] 3518 	mov	a,r6
      002FE3 12 37 4F         [24] 3519 	lcall	__gptrput
      002FE6 A3               [24] 3520 	inc	dptr
      002FE7 EF               [12] 3521 	mov	a,r7
      002FE8 12 37 4F         [24] 3522 	lcall	__gptrput
      002FEB                       3523 00102$:
                                   3524 ;	dhry_1.c:371: Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
                                   3525 ;	genAssign
      002FEB 90 80 06         [24] 3526 	mov	dptr,#_Int_Glob
      002FEE E0               [24] 3527 	movx	a,@dptr
      002FEF FE               [12] 3528 	mov	r6,a
      002FF0 A3               [24] 3529 	inc	dptr
      002FF1 E0               [24] 3530 	movx	a,@dptr
      002FF2 FF               [12] 3531 	mov	r7,a
                                   3532 ;	genAssign
      002FF3 90 80 00         [24] 3533 	mov	dptr,#_Ptr_Glob
      002FF6 E0               [24] 3534 	movx	a,@dptr
      002FF7 FB               [12] 3535 	mov	r3,a
      002FF8 A3               [24] 3536 	inc	dptr
      002FF9 E0               [24] 3537 	movx	a,@dptr
      002FFA FC               [12] 3538 	mov	r4,a
      002FFB A3               [24] 3539 	inc	dptr
      002FFC E0               [24] 3540 	movx	a,@dptr
      002FFD FD               [12] 3541 	mov	r5,a
                                   3542 ;	genPlus
                                   3543 ;	genPlusIncr
      002FFE 74 05            [12] 3544 	mov	a,#0x05
      003000 2B               [12] 3545 	add	a,r3
      003001 FB               [12] 3546 	mov	r3,a
                                   3547 ;	Peephole 181	changed mov to clr
      003002 E4               [12] 3548 	clr	a
      003003 3C               [12] 3549 	addc	a,r4
      003004 FC               [12] 3550 	mov	r4,a
                                   3551 ;	genAssign
      003005 90 94 AB         [24] 3552 	mov	dptr,#_Proc_7_PARM_2
      003008 EE               [12] 3553 	mov	a,r6
      003009 F0               [24] 3554 	movx	@dptr,a
      00300A EF               [12] 3555 	mov	a,r7
      00300B A3               [24] 3556 	inc	dptr
      00300C F0               [24] 3557 	movx	@dptr,a
                                   3558 ;	genAssign
      00300D 90 94 AD         [24] 3559 	mov	dptr,#_Proc_7_PARM_3
      003010 EB               [12] 3560 	mov	a,r3
      003011 F0               [24] 3561 	movx	@dptr,a
      003012 EC               [12] 3562 	mov	a,r4
      003013 A3               [24] 3563 	inc	dptr
      003014 F0               [24] 3564 	movx	@dptr,a
      003015 ED               [12] 3565 	mov	a,r5
      003016 A3               [24] 3566 	inc	dptr
      003017 F0               [24] 3567 	movx	@dptr,a
                                   3568 ;	genCall
                                   3569 ;	Peephole 182.b	used 16 bit load of dptr
      003018 90 00 0A         [24] 3570 	mov	dptr,#0x000a
                                   3571 ;	dhry_1.c:372: } /* Proc_3 */
                                   3572 ;	Peephole 400.b	replaced lcall/ret with ljmp
      00301B 02 30 F4         [24] 3573 	ljmp	_Proc_7
                                   3574 ;
                                   3575 ;------------------------------------------------------------
                                   3576 ;Allocation info for local variables in function 'Proc_4'
                                   3577 ;------------------------------------------------------------
                                   3578 ;Bool_Loc                  Allocated with name '_Proc_4_Bool_Loc_65536_75'
                                   3579 ;------------------------------------------------------------
                                   3580 ;	dhry_1.c:375: void Proc_4 (void) /* without parameters */
                                   3581 ;	-----------------------------------------
                                   3582 ;	 function Proc_4
                                   3583 ;	-----------------------------------------
      00301E                       3584 _Proc_4:
                                   3585 ;	dhry_1.c:380: Bool_Loc = Ch_1_Glob == 'A';
                                   3586 ;	genAssign
      00301E 90 80 0A         [24] 3587 	mov	dptr,#_Ch_1_Glob
      003021 E0               [24] 3588 	movx	a,@dptr
      003022 FF               [12] 3589 	mov	r7,a
                                   3590 ;	genCmpEq
                                   3591 ;	gencjne
                                   3592 ;	gencjneshort
                                   3593 ;	Peephole 181	changed mov to clr
                                   3594 ;	Peephole 241.d	optimized compare
      003023 E4               [12] 3595 	clr	a
      003024 BF 41 01         [24] 3596 	cjne	r7,#0x41,00103$
      003027 04               [12] 3597 	inc	a
      003028                       3598 00103$:
                                   3599 ;	Peephole 500	removed redundant label 00104$
      003028 FF               [12] 3600 	mov	r7,a
                                   3601 ;	genCast
      003029 7E 00            [12] 3602 	mov	r6,#0x00
                                   3603 ;	dhry_1.c:381: Bool_Glob = Bool_Loc | Bool_Glob;
                                   3604 ;	genOr
      00302B 90 80 08         [24] 3605 	mov	dptr,#_Bool_Glob
      00302E E0               [24] 3606 	movx	a,@dptr
      00302F 4F               [12] 3607 	orl	a,r7
      003030 F0               [24] 3608 	movx	@dptr,a
      003031 A3               [24] 3609 	inc	dptr
      003032 E0               [24] 3610 	movx	a,@dptr
      003033 4E               [12] 3611 	orl	a,r6
      003034 F0               [24] 3612 	movx	@dptr,a
                                   3613 ;	dhry_1.c:382: Ch_2_Glob = 'B';
                                   3614 ;	genAssign
      003035 90 80 0B         [24] 3615 	mov	dptr,#_Ch_2_Glob
      003038 74 42            [12] 3616 	mov	a,#0x42
      00303A F0               [24] 3617 	movx	@dptr,a
                                   3618 ;	Peephole 500	removed redundant label 00101$
                                   3619 ;	dhry_1.c:383: } /* Proc_4 */
      00303B 22               [24] 3620 	ret
                                   3621 ;------------------------------------------------------------
                                   3622 ;Allocation info for local variables in function 'Proc_5'
                                   3623 ;------------------------------------------------------------
                                   3624 ;	dhry_1.c:386: void Proc_5 (void) /* without parameters */
                                   3625 ;	-----------------------------------------
                                   3626 ;	 function Proc_5
                                   3627 ;	-----------------------------------------
      00303C                       3628 _Proc_5:
                                   3629 ;	dhry_1.c:390: Ch_1_Glob = 'A';
                                   3630 ;	genAssign
      00303C 90 80 0A         [24] 3631 	mov	dptr,#_Ch_1_Glob
      00303F 74 41            [12] 3632 	mov	a,#0x41
      003041 F0               [24] 3633 	movx	@dptr,a
                                   3634 ;	dhry_1.c:391: Bool_Glob = false;
                                   3635 ;	genAssign
      003042 90 80 08         [24] 3636 	mov	dptr,#_Bool_Glob
                                   3637 ;	Peephole 181	changed mov to clr
      003045 E4               [12] 3638 	clr	a
      003046 F0               [24] 3639 	movx	@dptr,a
                                   3640 ;	genFromRTrack acc==0x00
      003047 A3               [24] 3641 	inc	dptr
      003048 F0               [24] 3642 	movx	@dptr,a
                                   3643 ;	Peephole 500	removed redundant label 00101$
                                   3644 ;	dhry_1.c:392: } /* Proc_5 */
      003049 22               [24] 3645 	ret
                                   3646 	.area CSEG    (CODE)
                                   3647 	.area CONST   (CODE)
                                   3648 	.area CONST   (CODE)
      0044F7                       3649 ___str_0:
      0044F7 44 48 52 59 53 54 4F  3650 	.ascii "DHRYSTONE PROGRAM, SOME STRING"
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 53 4F
             4D 45 20 53 54 52 49
             4E 47
      004515 00                    3651 	.db 0x00
                                   3652 	.area CSEG    (CODE)
                                   3653 	.area CONST   (CODE)
      004516                       3654 ___str_1:
      004516 44 48 52 59 53 54 4F  3655 	.ascii "DHRYSTONE PROGRAM, 1'ST STRING"
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 31 27
             53 54 20 53 54 52 49
             4E 47
      004534 00                    3656 	.db 0x00
                                   3657 	.area CSEG    (CODE)
                                   3658 	.area CONST   (CODE)
      004535                       3659 ___str_2:
      004535 0D                    3660 	.db 0x0d
      004536 0A                    3661 	.db 0x0a
      004537 00                    3662 	.db 0x00
                                   3663 	.area CSEG    (CODE)
                                   3664 	.area CONST   (CODE)
      004538                       3665 ___str_3:
      004538 44 68 72 79 73 74 6F  3666 	.ascii "Dhrystone Benchmark, Version 2.1 (Language: C)"
             6E 65 20 42 65 6E 63
             68 6D 61 72 6B 2C 20
             56 65 72 73 69 6F 6E
             20 32 2E 31 20 28 4C
             61 6E 67 75 61 67 65
             3A 20 43 29
      004566 0D                    3667 	.db 0x0d
      004567 0A                    3668 	.db 0x0a
      004568 00                    3669 	.db 0x00
                                   3670 	.area CSEG    (CODE)
                                   3671 	.area CONST   (CODE)
      004569                       3672 ___str_4:
      004569 50 72 6F 67 72 61 6D  3673 	.ascii "Program compiled with 'register' attribute"
             20 63 6F 6D 70 69 6C
             65 64 20 77 69 74 68
             20 27 72 65 67 69 73
             74 65 72 27 20 61 74
             74 72 69 62 75 74 65
      004593 0D                    3674 	.db 0x0d
      004594 0A                    3675 	.db 0x0a
      004595 00                    3676 	.db 0x00
                                   3677 	.area CSEG    (CODE)
                                   3678 	.area CONST   (CODE)
      004596                       3679 ___str_5:
      004596 50 72 6F 67 72 61 6D  3680 	.ascii "Program compiled without 'register' attribute"
             20 63 6F 6D 70 69 6C
             65 64 20 77 69 74 68
             6F 75 74 20 27 72 65
             67 69 73 74 65 72 27
             20 61 74 74 72 69 62
             75 74 65
      0045C3 0D                    3681 	.db 0x0d
      0045C4 0A                    3682 	.db 0x0a
      0045C5 00                    3683 	.db 0x00
                                   3684 	.area CSEG    (CODE)
                                   3685 	.area CONST   (CODE)
      0045C6                       3686 ___str_6:
      0045C6 50 6C 65 61 73 65 20  3687 	.ascii "Please give the number of runs through the benchmark: "
             67 69 76 65 20 74 68
             65 20 6E 75 6D 62 65
             72 20 6F 66 20 72 75
             6E 73 20 74 68 72 6F
             75 67 68 20 74 68 65
             20 62 65 6E 63 68 6D
             61 72 6B 3A 20
      0045FC 00                    3688 	.db 0x00
                                   3689 	.area CSEG    (CODE)
                                   3690 	.area CONST   (CODE)
      0045FD                       3691 ___str_7:
      0045FD 45 78 65 63 75 74 69  3692 	.ascii "Execution starts, %d runs through Dhrystone"
             6F 6E 20 73 74 61 72
             74 73 2C 20 25 64 20
             72 75 6E 73 20 74 68
             72 6F 75 67 68 20 44
             68 72 79 73 74 6F 6E
             65
      004628 0D                    3693 	.db 0x0d
      004629 0A                    3694 	.db 0x0a
      00462A 00                    3695 	.db 0x00
                                   3696 	.area CSEG    (CODE)
                                   3697 	.area CONST   (CODE)
      00462B                       3698 ___str_8:
      00462B 44 48 52 59 53 54 4F  3699 	.ascii "DHRYSTONE PROGRAM, 2'ND STRING"
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 32 27
             4E 44 20 53 54 52 49
             4E 47
      004649 00                    3700 	.db 0x00
                                   3701 	.area CSEG    (CODE)
                                   3702 	.area CONST   (CODE)
      00464A                       3703 ___str_9:
      00464A 44 48 52 59 53 54 4F  3704 	.ascii "DHRYSTONE PROGRAM, 3'RD STRING"
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 33 27
             52 44 20 53 54 52 49
             4E 47
      004668 00                    3705 	.db 0x00
                                   3706 	.area CSEG    (CODE)
                                   3707 	.area CONST   (CODE)
      004669                       3708 ___str_10:
      004669 45 78 65 63 75 74 69  3709 	.ascii "Execution ends"
             6F 6E 20 65 6E 64 73
      004677 0D                    3710 	.db 0x0d
      004678 0A                    3711 	.db 0x0a
      004679 00                    3712 	.db 0x00
                                   3713 	.area CSEG    (CODE)
                                   3714 	.area CONST   (CODE)
      00467A                       3715 ___str_11:
      00467A 46 69 6E 61 6C 20 76  3716 	.ascii "Final values of the variables used in the benchmark:"
             61 6C 75 65 73 20 6F
             66 20 74 68 65 20 76
             61 72 69 61 62 6C 65
             73 20 75 73 65 64 20
             69 6E 20 74 68 65 20
             62 65 6E 63 68 6D 61
             72 6B 3A
      0046AE 0D                    3717 	.db 0x0d
      0046AF 0A                    3718 	.db 0x0a
      0046B0 00                    3719 	.db 0x00
                                   3720 	.area CSEG    (CODE)
                                   3721 	.area CONST   (CODE)
      0046B1                       3722 ___str_12:
      0046B1 49 6E 74 5F 47 6C 6F  3723 	.ascii "Int_Glob:            %d"
             62 3A 20 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      0046C8 0D                    3724 	.db 0x0d
      0046C9 0A                    3725 	.db 0x0a
      0046CA 00                    3726 	.db 0x00
                                   3727 	.area CSEG    (CODE)
                                   3728 	.area CONST   (CODE)
      0046CB                       3729 ___str_13:
      0046CB 20 20 20 20 20 20 20  3730 	.ascii "        should be:   %d"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             25 64
      0046E2 0D                    3731 	.db 0x0d
      0046E3 0A                    3732 	.db 0x0a
      0046E4 00                    3733 	.db 0x00
                                   3734 	.area CSEG    (CODE)
                                   3735 	.area CONST   (CODE)
      0046E5                       3736 ___str_14:
      0046E5 42 6F 6F 6C 5F 47 6C  3737 	.ascii "Bool_Glob:           %d"
             6F 62 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      0046FC 0D                    3738 	.db 0x0d
      0046FD 0A                    3739 	.db 0x0a
      0046FE 00                    3740 	.db 0x00
                                   3741 	.area CSEG    (CODE)
                                   3742 	.area CONST   (CODE)
      0046FF                       3743 ___str_15:
      0046FF 43 68 5F 31 5F 47 6C  3744 	.ascii "Ch_1_Glob:           %c"
             6F 62 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 63
      004716 0D                    3745 	.db 0x0d
      004717 0A                    3746 	.db 0x0a
      004718 00                    3747 	.db 0x00
                                   3748 	.area CSEG    (CODE)
                                   3749 	.area CONST   (CODE)
      004719                       3750 ___str_16:
      004719 20 20 20 20 20 20 20  3751 	.ascii "        should be:   %c"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             25 63
      004730 0D                    3752 	.db 0x0d
      004731 0A                    3753 	.db 0x0a
      004732 00                    3754 	.db 0x00
                                   3755 	.area CSEG    (CODE)
                                   3756 	.area CONST   (CODE)
      004733                       3757 ___str_17:
      004733 43 68 5F 32 5F 47 6C  3758 	.ascii "Ch_2_Glob:           %c"
             6F 62 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 63
      00474A 0D                    3759 	.db 0x0d
      00474B 0A                    3760 	.db 0x0a
      00474C 00                    3761 	.db 0x00
                                   3762 	.area CSEG    (CODE)
                                   3763 	.area CONST   (CODE)
      00474D                       3764 ___str_18:
      00474D 41 72 72 5F 31 5F 47  3765 	.ascii "Arr_1_Glob[8]:       %d"
             6C 6F 62 5B 38 5D 3A
             20 20 20 20 20 20 20
             25 64
      004764 0D                    3766 	.db 0x0d
      004765 0A                    3767 	.db 0x0a
      004766 00                    3768 	.db 0x00
                                   3769 	.area CSEG    (CODE)
                                   3770 	.area CONST   (CODE)
      004767                       3771 ___str_19:
      004767 41 72 72 5F 32 5F 47  3772 	.ascii "Arr_2_Glob[8][7]:    %d"
             6C 6F 62 5B 38 5D 5B
             37 5D 3A 20 20 20 20
             25 64
      00477E 0D                    3773 	.db 0x0d
      00477F 0A                    3774 	.db 0x0a
      004780 00                    3775 	.db 0x00
                                   3776 	.area CSEG    (CODE)
                                   3777 	.area CONST   (CODE)
      004781                       3778 ___str_20:
      004781 20 20 20 20 20 20 20  3779 	.ascii "        should be:   Number_Of_Runs + 10"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             4E 75 6D 62 65 72 5F
             4F 66 5F 52 75 6E 73
             20 2B 20 31 30
      0047A9 0D                    3780 	.db 0x0d
      0047AA 0A                    3781 	.db 0x0a
      0047AB 00                    3782 	.db 0x00
                                   3783 	.area CSEG    (CODE)
                                   3784 	.area CONST   (CODE)
      0047AC                       3785 ___str_21:
      0047AC 50 74 72 5F 47 6C 6F  3786 	.ascii "Ptr_Glob->"
             62 2D 3E
      0047B6 0D                    3787 	.db 0x0d
      0047B7 0A                    3788 	.db 0x0a
      0047B8 00                    3789 	.db 0x00
                                   3790 	.area CSEG    (CODE)
                                   3791 	.area CONST   (CODE)
      0047B9                       3792 ___str_22:
      0047B9 20 20 50 74 72 5F 43  3793 	.ascii "  Ptr_Comp:          %d"
             6F 6D 70 3A 20 20 20
             20 20 20 20 20 20 20
             25 64
      0047D0 0D                    3794 	.db 0x0d
      0047D1 0A                    3795 	.db 0x0a
      0047D2 00                    3796 	.db 0x00
                                   3797 	.area CSEG    (CODE)
                                   3798 	.area CONST   (CODE)
      0047D3                       3799 ___str_23:
      0047D3 20 20 20 20 20 20 20  3800 	.ascii "        should be:   (implementation-dependent)"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             28 69 6D 70 6C 65 6D
             65 6E 74 61 74 69 6F
             6E 2D 64 65 70 65 6E
             64 65 6E 74 29
      004802 0D                    3801 	.db 0x0d
      004803 0A                    3802 	.db 0x0a
      004804 00                    3803 	.db 0x00
                                   3804 	.area CSEG    (CODE)
                                   3805 	.area CONST   (CODE)
      004805                       3806 ___str_24:
      004805 20 20 44 69 73 63 72  3807 	.ascii "  Discr:             %d"
             3A 20 20 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      00481C 0D                    3808 	.db 0x0d
      00481D 0A                    3809 	.db 0x0a
      00481E 00                    3810 	.db 0x00
                                   3811 	.area CSEG    (CODE)
                                   3812 	.area CONST   (CODE)
      00481F                       3813 ___str_25:
      00481F 20 20 45 6E 75 6D 5F  3814 	.ascii "  Enum_Comp:         %d"
             43 6F 6D 70 3A 20 20
             20 20 20 20 20 20 20
             25 64
      004836 0D                    3815 	.db 0x0d
      004837 0A                    3816 	.db 0x0a
      004838 00                    3817 	.db 0x00
                                   3818 	.area CSEG    (CODE)
                                   3819 	.area CONST   (CODE)
      004839                       3820 ___str_26:
      004839 20 20 49 6E 74 5F 43  3821 	.ascii "  Int_Comp:          %d"
             6F 6D 70 3A 20 20 20
             20 20 20 20 20 20 20
             25 64
      004850 0D                    3822 	.db 0x0d
      004851 0A                    3823 	.db 0x0a
      004852 00                    3824 	.db 0x00
                                   3825 	.area CSEG    (CODE)
                                   3826 	.area CONST   (CODE)
      004853                       3827 ___str_27:
      004853 20 20 53 74 72 5F 43  3828 	.ascii "  Str_Comp:          %s"
             6F 6D 70 3A 20 20 20
             20 20 20 20 20 20 20
             25 73
      00486A 0D                    3829 	.db 0x0d
      00486B 0A                    3830 	.db 0x0a
      00486C 00                    3831 	.db 0x00
                                   3832 	.area CSEG    (CODE)
                                   3833 	.area CONST   (CODE)
      00486D                       3834 ___str_28:
      00486D 20 20 20 20 20 20 20  3835 	.ascii "        should be:   DHRYSTONE PROGRAM, SOME STRING"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             44 48 52 59 53 54 4F
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 53 4F
             4D 45 20 53 54 52 49
             4E 47
      0048A0 0D                    3836 	.db 0x0d
      0048A1 0A                    3837 	.db 0x0a
      0048A2 00                    3838 	.db 0x00
                                   3839 	.area CSEG    (CODE)
                                   3840 	.area CONST   (CODE)
      0048A3                       3841 ___str_29:
      0048A3 4E 65 78 74 5F 50 74  3842 	.ascii "Next_Ptr_Glob->"
             72 5F 47 6C 6F 62 2D
             3E
      0048B2 0D                    3843 	.db 0x0d
      0048B3 0A                    3844 	.db 0x0a
      0048B4 00                    3845 	.db 0x00
                                   3846 	.area CSEG    (CODE)
                                   3847 	.area CONST   (CODE)
      0048B5                       3848 ___str_30:
      0048B5 20 20 20 20 20 20 20  3849 	.ascii "        should be:   (implementation-dependent), same as abo"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             28 69 6D 70 6C 65 6D
             65 6E 74 61 74 69 6F
             6E 2D 64 65 70 65 6E
             64 65 6E 74 29 2C 20
             73 61 6D 65 20 61 73
             20 61 62 6F
      0048F1 76 65                 3850 	.ascii "ve"
      0048F3 0D                    3851 	.db 0x0d
      0048F4 0A                    3852 	.db 0x0a
      0048F5 00                    3853 	.db 0x00
                                   3854 	.area CSEG    (CODE)
                                   3855 	.area CONST   (CODE)
      0048F6                       3856 ___str_31:
      0048F6 49 6E 74 5F 31 5F 4C  3857 	.ascii "Int_1_Loc:           %d"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      00490D 0D                    3858 	.db 0x0d
      00490E 0A                    3859 	.db 0x0a
      00490F 00                    3860 	.db 0x00
                                   3861 	.area CSEG    (CODE)
                                   3862 	.area CONST   (CODE)
      004910                       3863 ___str_32:
      004910 49 6E 74 5F 32 5F 4C  3864 	.ascii "Int_2_Loc:           %d"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      004927 0D                    3865 	.db 0x0d
      004928 0A                    3866 	.db 0x0a
      004929 00                    3867 	.db 0x00
                                   3868 	.area CSEG    (CODE)
                                   3869 	.area CONST   (CODE)
      00492A                       3870 ___str_33:
      00492A 49 6E 74 5F 33 5F 4C  3871 	.ascii "Int_3_Loc:           %d"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      004941 0D                    3872 	.db 0x0d
      004942 0A                    3873 	.db 0x0a
      004943 00                    3874 	.db 0x00
                                   3875 	.area CSEG    (CODE)
                                   3876 	.area CONST   (CODE)
      004944                       3877 ___str_34:
      004944 45 6E 75 6D 5F 4C 6F  3878 	.ascii "Enum_Loc:            %d"
             63 3A 20 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      00495B 0D                    3879 	.db 0x0d
      00495C 0A                    3880 	.db 0x0a
      00495D 00                    3881 	.db 0x00
                                   3882 	.area CSEG    (CODE)
                                   3883 	.area CONST   (CODE)
      00495E                       3884 ___str_35:
      00495E 53 74 72 5F 31 5F 4C  3885 	.ascii "Str_1_Loc:           %s"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 73
      004975 0D                    3886 	.db 0x0d
      004976 0A                    3887 	.db 0x0a
      004977 00                    3888 	.db 0x00
                                   3889 	.area CSEG    (CODE)
                                   3890 	.area CONST   (CODE)
      004978                       3891 ___str_36:
      004978 20 20 20 20 20 20 20  3892 	.ascii "        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             44 48 52 59 53 54 4F
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 31 27
             53 54 20 53 54 52 49
             4E 47
      0049AB 0D                    3893 	.db 0x0d
      0049AC 0A                    3894 	.db 0x0a
      0049AD 00                    3895 	.db 0x00
                                   3896 	.area CSEG    (CODE)
                                   3897 	.area CONST   (CODE)
      0049AE                       3898 ___str_37:
      0049AE 53 74 72 5F 32 5F 4C  3899 	.ascii "Str_2_Loc:           %s"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 73
      0049C5 0D                    3900 	.db 0x0d
      0049C6 0A                    3901 	.db 0x0a
      0049C7 00                    3902 	.db 0x00
                                   3903 	.area CSEG    (CODE)
                                   3904 	.area CONST   (CODE)
      0049C8                       3905 ___str_38:
      0049C8 20 20 20 20 20 20 20  3906 	.ascii "        should be:   DHRYSTONE PROGRAM, 2'ND STRING"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             44 48 52 59 53 54 4F
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 32 27
             4E 44 20 53 54 52 49
             4E 47
      0049FB 0D                    3907 	.db 0x0d
      0049FC 0A                    3908 	.db 0x0a
      0049FD 00                    3909 	.db 0x00
                                   3910 	.area CSEG    (CODE)
                                   3911 	.area CONST   (CODE)
      0049FE                       3912 ___str_39:
      0049FE 4D 65 61 73 75 72 65  3913 	.ascii "Measured time too small to obtain meaningful results"
             64 20 74 69 6D 65 20
             74 6F 6F 20 73 6D 61
             6C 6C 20 74 6F 20 6F
             62 74 61 69 6E 20 6D
             65 61 6E 69 6E 67 66
             75 6C 20 72 65 73 75
             6C 74 73
      004A32 0D                    3914 	.db 0x0d
      004A33 0A                    3915 	.db 0x0a
      004A34 00                    3916 	.db 0x00
                                   3917 	.area CSEG    (CODE)
                                   3918 	.area CONST   (CODE)
      004A35                       3919 ___str_40:
      004A35 50 6C 65 61 73 65 20  3920 	.ascii "Please increase number of runs"
             69 6E 63 72 65 61 73
             65 20 6E 75 6D 62 65
             72 20 6F 66 20 72 75
             6E 73
      004A53 0D                    3921 	.db 0x0d
      004A54 0A                    3922 	.db 0x0a
      004A55 00                    3923 	.db 0x00
                                   3924 	.area CSEG    (CODE)
                                   3925 	.area CONST   (CODE)
      004A56                       3926 ___str_41:
      004A56 4D 69 63 72 6F 73 65  3927 	.ascii "Microseconds for one run through Dhrystone: "
             63 6F 6E 64 73 20 66
             6F 72 20 6F 6E 65 20
             72 75 6E 20 74 68 72
             6F 75 67 68 20 44 68
             72 79 73 74 6F 6E 65
             3A 20
      004A82 00                    3928 	.db 0x00
                                   3929 	.area CSEG    (CODE)
                                   3930 	.area CONST   (CODE)
      004A83                       3931 ___str_42:
      004A83 25 6C 64 20           3932 	.ascii "%ld "
      004A87 0D                    3933 	.db 0x0d
      004A88 0A                    3934 	.db 0x0a
      004A89 00                    3935 	.db 0x00
                                   3936 	.area CSEG    (CODE)
                                   3937 	.area CONST   (CODE)
      004A8A                       3938 ___str_43:
      004A8A 44 68 72 79 73 74 6F  3939 	.ascii "Dhrystones per Second:                      "
             6E 65 73 20 70 65 72
             20 53 65 63 6F 6E 64
             3A 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004AB6 00                    3940 	.db 0x00
                                   3941 	.area CSEG    (CODE)
                                   3942 	.area XINIT   (CODE)
      004AC2                       3943 __xinit__Reg:
      004AC2 01 00                 3944 	.byte #0x01, #0x00	;  1
                                   3945 	.area CABS    (ABS,CODE)
