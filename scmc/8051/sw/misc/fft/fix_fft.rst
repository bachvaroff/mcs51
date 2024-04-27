                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module fix_fft
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _fix_fft
                                     12 	.globl _Sinewave
                                     13 	.globl _fix_fftr
                                     14 ;--------------------------------------------------------
                                     15 ; special function registers
                                     16 ;--------------------------------------------------------
                                     17 	.area RSEG    (ABS,DATA)
      000000                         18 	.org 0x0000
                                     19 ;--------------------------------------------------------
                                     20 ; special function bits
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; overlayable register banks
                                     26 ;--------------------------------------------------------
                                     27 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         28 	.ds 8
                                     29 ;--------------------------------------------------------
                                     30 ; internal ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DSEG    (DATA)
                                     33 ;--------------------------------------------------------
                                     34 ; overlayable items in internal ram 
                                     35 ;--------------------------------------------------------
                                     36 ;--------------------------------------------------------
                                     37 ; indirectly addressable internal ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area ISEG    (DATA)
                                     40 ;--------------------------------------------------------
                                     41 ; absolute internal ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area IABS    (ABS,DATA)
                                     44 	.area IABS    (ABS,DATA)
                                     45 ;--------------------------------------------------------
                                     46 ; bit data
                                     47 ;--------------------------------------------------------
                                     48 	.area BSEG    (BIT)
                                     49 ;--------------------------------------------------------
                                     50 ; paged external ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area PSEG    (PAG,XDATA)
                                     53 ;--------------------------------------------------------
                                     54 ; external ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area XSEG    (XDATA)
                                     57 ;--------------------------------------------------------
                                     58 ; absolute external ram data
                                     59 ;--------------------------------------------------------
                                     60 	.area XABS    (ABS,XDATA)
                                     61 ;--------------------------------------------------------
                                     62 ; external initialized ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area XISEG   (XDATA)
      004D82                         65 _Sinewave::
      004D82                         66 	.ds 1536
                                     67 	.area HOME    (CODE)
                                     68 	.area GSINIT0 (CODE)
                                     69 	.area GSINIT1 (CODE)
                                     70 	.area GSINIT2 (CODE)
                                     71 	.area GSINIT3 (CODE)
                                     72 	.area GSINIT4 (CODE)
                                     73 	.area GSINIT5 (CODE)
                                     74 	.area GSINIT  (CODE)
                                     75 	.area GSFINAL (CODE)
                                     76 	.area CSEG    (CODE)
                                     77 ;--------------------------------------------------------
                                     78 ; global & static initialisations
                                     79 ;--------------------------------------------------------
                                     80 	.area HOME    (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; Home
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area HOME    (CODE)
                                     89 ;--------------------------------------------------------
                                     90 ; code
                                     91 ;--------------------------------------------------------
                                     92 	.area CSEG    (CODE)
                                     93 ;------------------------------------------------------------
                                     94 ;Allocation info for local variables in function 'fix_fft'
                                     95 ;------------------------------------------------------------
                                     96 ;fi                        Allocated to stack - _bp -5
                                     97 ;m                         Allocated to stack - _bp -7
                                     98 ;inverse                   Allocated to stack - _bp -9
                                     99 ;fr                        Allocated to stack - _bp +1
                                    100 ;mr                        Allocated to stack - _bp +24
                                    101 ;nn                        Allocated to registers r2 r4 
                                    102 ;i                         Allocated to stack - _bp +26
                                    103 ;j                         Allocated to registers r5 r4 
                                    104 ;l                         Allocated to stack - _bp +28
                                    105 ;k                         Allocated to stack - _bp +30
                                    106 ;istep                     Allocated to stack - _bp +32
                                    107 ;n                         Allocated to stack - _bp +34
                                    108 ;scale                     Allocated to stack - _bp +36
                                    109 ;shift                     Allocated to stack - _bp +38
                                    110 ;qr                        Allocated to stack - _bp +40
                                    111 ;qi                        Allocated to stack - _bp +42
                                    112 ;tr                        Allocated to stack - _bp +44
                                    113 ;ti                        Allocated to stack - _bp +46
                                    114 ;wr                        Allocated to stack - _bp +48
                                    115 ;wi                        Allocated to stack - _bp +50
                                    116 ;__4587520013              Allocated to registers 
                                    117 ;__4587520009              Allocated to registers 
                                    118 ;__4587520005              Allocated to registers 
                                    119 ;__4587520001              Allocated to registers 
                                    120 ;__4587520002              Allocated to registers 
                                    121 ;__4587520003              Allocated to stack - _bp +52
                                    122 ;a                         Allocated to stack - _bp +54
                                    123 ;b                         Allocated to registers r2 r3 
                                    124 ;c                         Allocated to registers r4 r5 r6 r7 
                                    125 ;__4587520006              Allocated to registers 
                                    126 ;__4587520007              Allocated to stack - _bp +52
                                    127 ;a                         Allocated to registers r2 r3 
                                    128 ;b                         Allocated to registers r2 r3 
                                    129 ;c                         Allocated to registers r4 r5 r6 r7 
                                    130 ;__4587520010              Allocated to registers 
                                    131 ;__4587520011              Allocated to registers 
                                    132 ;a                         Allocated to stack - _bp +52
                                    133 ;b                         Allocated to registers r2 r3 
                                    134 ;c                         Allocated to registers r4 r5 r6 r7 
                                    135 ;__4587520014              Allocated to registers 
                                    136 ;__4587520015              Allocated to registers 
                                    137 ;a                         Allocated to registers r2 r3 
                                    138 ;b                         Allocated to registers r2 r3 
                                    139 ;c                         Allocated to registers r4 r5 r6 r7 
                                    140 ;sloc0                     Allocated to stack - _bp +4
                                    141 ;sloc1                     Allocated to stack - _bp +6
                                    142 ;sloc2                     Allocated to stack - _bp +9
                                    143 ;sloc3                     Allocated to stack - _bp +11
                                    144 ;sloc4                     Allocated to stack - _bp +13
                                    145 ;sloc5                     Allocated to stack - _bp +16
                                    146 ;sloc6                     Allocated to stack - _bp +20
                                    147 ;------------------------------------------------------------
                                    148 ;	fix_fft.c:169: int16_t fix_fft(int16_t *fr, int16_t *fi, int16_t m, int16_t inverse) {
                                    149 ;	-----------------------------------------
                                    150 ;	 function fix_fft
                                    151 ;	-----------------------------------------
      00206E                        152 _fix_fft:
                           000007   153 	ar7 = 0x07
                           000006   154 	ar6 = 0x06
                           000005   155 	ar5 = 0x05
                           000004   156 	ar4 = 0x04
                           000003   157 	ar3 = 0x03
                           000002   158 	ar2 = 0x02
                           000001   159 	ar1 = 0x01
                           000000   160 	ar0 = 0x00
      00206E C0 10            [24]  161 	push	_bp
      002070 85 81 10         [24]  162 	mov	_bp,sp
      002073 C0 82            [24]  163 	push	dpl
      002075 C0 83            [24]  164 	push	dph
      002077 C0 F0            [24]  165 	push	b
      002079 E5 81            [12]  166 	mov	a,sp
      00207B 24 34            [12]  167 	add	a,#0x34
      00207D F5 81            [12]  168 	mov	sp,a
                                    169 ;	fix_fft.c:173: n = 1 << m;
      00207F E5 10            [12]  170 	mov	a,_bp
      002081 24 F9            [12]  171 	add	a,#0xf9
      002083 F8               [12]  172 	mov	r0,a
      002084 86 04            [24]  173 	mov	ar4,@r0
      002086 8C F0            [24]  174 	mov	b,r4
      002088 05 F0            [12]  175 	inc	b
      00208A 7C 01            [12]  176 	mov	r4,#0x01
      00208C 7B 00            [12]  177 	mov	r3,#0x00
      00208E 80 06            [24]  178 	sjmp	00265$
      002090                        179 00264$:
      002090 EC               [12]  180 	mov	a,r4
      002091 2C               [12]  181 	add	a,r4
      002092 FC               [12]  182 	mov	r4,a
      002093 EB               [12]  183 	mov	a,r3
      002094 33               [12]  184 	rlc	a
      002095 FB               [12]  185 	mov	r3,a
      002096                        186 00265$:
      002096 D5 F0 F7         [24]  187 	djnz	b,00264$
      002099 E5 10            [12]  188 	mov	a,_bp
      00209B 24 22            [12]  189 	add	a,#0x22
      00209D F8               [12]  190 	mov	r0,a
      00209E A6 04            [24]  191 	mov	@r0,ar4
      0020A0 08               [12]  192 	inc	r0
      0020A1 A6 03            [24]  193 	mov	@r0,ar3
                                    194 ;	fix_fft.c:176: if (n > N_WAVE) return -1;
      0020A3 E5 10            [12]  195 	mov	a,_bp
      0020A5 24 22            [12]  196 	add	a,#0x22
      0020A7 F8               [12]  197 	mov	r0,a
      0020A8 86 02            [24]  198 	mov	ar2,@r0
      0020AA 08               [12]  199 	inc	r0
      0020AB 86 04            [24]  200 	mov	ar4,@r0
      0020AD C3               [12]  201 	clr	c
      0020AE E4               [12]  202 	clr	a
      0020AF 9A               [12]  203 	subb	a,r2
      0020B0 74 84            [12]  204 	mov	a,#(0x04 ^ 0x80)
      0020B2 8C F0            [24]  205 	mov	b,r4
      0020B4 63 F0 80         [24]  206 	xrl	b,#0x80
      0020B7 95 F0            [12]  207 	subb	a,b
      0020B9 50 06            [24]  208 	jnc	00102$
      0020BB 90 FF FF         [24]  209 	mov	dptr,#0xffff
      0020BE 02 2A 1B         [24]  210 	ljmp	00149$
      0020C1                        211 00102$:
                                    212 ;	fix_fft.c:178: mr = 0;
      0020C1 E5 10            [12]  213 	mov	a,_bp
      0020C3 24 18            [12]  214 	add	a,#0x18
      0020C5 F8               [12]  215 	mov	r0,a
      0020C6 E4               [12]  216 	clr	a
      0020C7 F6               [12]  217 	mov	@r0,a
      0020C8 08               [12]  218 	inc	r0
      0020C9 F6               [12]  219 	mov	@r0,a
                                    220 ;	fix_fft.c:179: nn = n - 1;
      0020CA 1A               [12]  221 	dec	r2
      0020CB BA FF 01         [24]  222 	cjne	r2,#0xff,00267$
      0020CE 1C               [12]  223 	dec	r4
      0020CF                        224 00267$:
                                    225 ;	fix_fft.c:183: for (m = 1; m <= nn; m++) {
      0020CF 7D 01            [12]  226 	mov	r5,#0x01
      0020D1 7E 00            [12]  227 	mov	r6,#0x00
      0020D3                        228 00139$:
      0020D3 C3               [12]  229 	clr	c
      0020D4 EA               [12]  230 	mov	a,r2
      0020D5 9D               [12]  231 	subb	a,r5
      0020D6 EC               [12]  232 	mov	a,r4
      0020D7 64 80            [12]  233 	xrl	a,#0x80
      0020D9 8E F0            [24]  234 	mov	b,r6
      0020DB 63 F0 80         [24]  235 	xrl	b,#0x80
      0020DE 95 F0            [12]  236 	subb	a,b
      0020E0 50 03            [24]  237 	jnc	00268$
      0020E2 02 23 15         [24]  238 	ljmp	00109$
      0020E5                        239 00268$:
                                    240 ;	fix_fft.c:184: l = n;
      0020E5 E5 10            [12]  241 	mov	a,_bp
      0020E7 24 22            [12]  242 	add	a,#0x22
      0020E9 F8               [12]  243 	mov	r0,a
      0020EA E5 10            [12]  244 	mov	a,_bp
      0020EC 24 04            [12]  245 	add	a,#0x04
      0020EE F9               [12]  246 	mov	r1,a
      0020EF E6               [12]  247 	mov	a,@r0
      0020F0 F7               [12]  248 	mov	@r1,a
      0020F1 08               [12]  249 	inc	r0
      0020F2 09               [12]  250 	inc	r1
      0020F3 E6               [12]  251 	mov	a,@r0
      0020F4 F7               [12]  252 	mov	@r1,a
                                    253 ;	fix_fft.c:186: do l >>= 1;
      0020F5                        254 00103$:
      0020F5 C0 05            [24]  255 	push	ar5
      0020F7 C0 06            [24]  256 	push	ar6
      0020F9 E5 10            [12]  257 	mov	a,_bp
      0020FB 24 04            [12]  258 	add	a,#0x04
      0020FD F8               [12]  259 	mov	r0,a
      0020FE 08               [12]  260 	inc	r0
      0020FF E6               [12]  261 	mov	a,@r0
      002100 18               [12]  262 	dec	r0
      002101 A2 E7            [12]  263 	mov	c,acc.7
      002103 13               [12]  264 	rrc	a
      002104 C6               [12]  265 	xch	a,@r0
      002105 13               [12]  266 	rrc	a
      002106 C6               [12]  267 	xch	a,@r0
      002107 08               [12]  268 	inc	r0
      002108 F6               [12]  269 	mov	@r0,a
                                    270 ;	fix_fft.c:187: while ((mr + l) > nn);
      002109 E5 10            [12]  271 	mov	a,_bp
      00210B 24 18            [12]  272 	add	a,#0x18
      00210D F8               [12]  273 	mov	r0,a
      00210E E5 10            [12]  274 	mov	a,_bp
      002110 24 04            [12]  275 	add	a,#0x04
      002112 F9               [12]  276 	mov	r1,a
      002113 E7               [12]  277 	mov	a,@r1
      002114 26               [12]  278 	add	a,@r0
      002115 FD               [12]  279 	mov	r5,a
      002116 09               [12]  280 	inc	r1
      002117 E7               [12]  281 	mov	a,@r1
      002118 08               [12]  282 	inc	r0
      002119 36               [12]  283 	addc	a,@r0
      00211A FE               [12]  284 	mov	r6,a
      00211B C3               [12]  285 	clr	c
      00211C EA               [12]  286 	mov	a,r2
      00211D 9D               [12]  287 	subb	a,r5
      00211E EC               [12]  288 	mov	a,r4
      00211F 64 80            [12]  289 	xrl	a,#0x80
      002121 8E F0            [24]  290 	mov	b,r6
      002123 63 F0 80         [24]  291 	xrl	b,#0x80
      002126 95 F0            [12]  292 	subb	a,b
      002128 D0 06            [24]  293 	pop	ar6
      00212A D0 05            [24]  294 	pop	ar5
      00212C 40 C7            [24]  295 	jc	00103$
                                    296 ;	fix_fft.c:189: mr = (mr & (l - 1)) + l;
      00212E C0 02            [24]  297 	push	ar2
      002130 C0 04            [24]  298 	push	ar4
      002132 E5 10            [12]  299 	mov	a,_bp
      002134 24 04            [12]  300 	add	a,#0x04
      002136 F8               [12]  301 	mov	r0,a
      002137 86 02            [24]  302 	mov	ar2,@r0
      002139 08               [12]  303 	inc	r0
      00213A 86 04            [24]  304 	mov	ar4,@r0
      00213C 1A               [12]  305 	dec	r2
      00213D BA FF 01         [24]  306 	cjne	r2,#0xff,00270$
      002140 1C               [12]  307 	dec	r4
      002141                        308 00270$:
      002141 E5 10            [12]  309 	mov	a,_bp
      002143 24 18            [12]  310 	add	a,#0x18
      002145 F8               [12]  311 	mov	r0,a
      002146 86 03            [24]  312 	mov	ar3,@r0
      002148 08               [12]  313 	inc	r0
      002149 86 07            [24]  314 	mov	ar7,@r0
      00214B EB               [12]  315 	mov	a,r3
      00214C 52 02            [12]  316 	anl	ar2,a
      00214E EF               [12]  317 	mov	a,r7
      00214F 52 04            [12]  318 	anl	ar4,a
      002151 E5 10            [12]  319 	mov	a,_bp
      002153 24 04            [12]  320 	add	a,#0x04
      002155 F8               [12]  321 	mov	r0,a
      002156 E6               [12]  322 	mov	a,@r0
      002157 2A               [12]  323 	add	a,r2
      002158 FA               [12]  324 	mov	r2,a
      002159 08               [12]  325 	inc	r0
      00215A E6               [12]  326 	mov	a,@r0
      00215B 3C               [12]  327 	addc	a,r4
      00215C FC               [12]  328 	mov	r4,a
      00215D E5 10            [12]  329 	mov	a,_bp
      00215F 24 18            [12]  330 	add	a,#0x18
      002161 F8               [12]  331 	mov	r0,a
      002162 A6 02            [24]  332 	mov	@r0,ar2
      002164 08               [12]  333 	inc	r0
      002165 A6 04            [24]  334 	mov	@r0,ar4
                                    335 ;	fix_fft.c:190: if (mr <= m) continue;
      002167 E5 10            [12]  336 	mov	a,_bp
      002169 24 18            [12]  337 	add	a,#0x18
      00216B F8               [12]  338 	mov	r0,a
      00216C C3               [12]  339 	clr	c
      00216D ED               [12]  340 	mov	a,r5
      00216E 96               [12]  341 	subb	a,@r0
      00216F EE               [12]  342 	mov	a,r6
      002170 64 80            [12]  343 	xrl	a,#0x80
      002172 08               [12]  344 	inc	r0
      002173 86 F0            [24]  345 	mov	b,@r0
      002175 63 F0 80         [24]  346 	xrl	b,#0x80
      002178 95 F0            [12]  347 	subb	a,b
      00217A D0 04            [24]  348 	pop	ar4
      00217C D0 02            [24]  349 	pop	ar2
      00217E 40 03            [24]  350 	jc	00271$
      002180 02 23 0D         [24]  351 	ljmp	00108$
      002183                        352 00271$:
                                    353 ;	fix_fft.c:192: tr = fr[m];
      002183 C0 02            [24]  354 	push	ar2
      002185 C0 04            [24]  355 	push	ar4
      002187 E5 10            [12]  356 	mov	a,_bp
      002189 24 04            [12]  357 	add	a,#0x04
      00218B F8               [12]  358 	mov	r0,a
      00218C ED               [12]  359 	mov	a,r5
      00218D 2D               [12]  360 	add	a,r5
      00218E F6               [12]  361 	mov	@r0,a
      00218F EE               [12]  362 	mov	a,r6
      002190 33               [12]  363 	rlc	a
      002191 08               [12]  364 	inc	r0
      002192 F6               [12]  365 	mov	@r0,a
      002193 A8 10            [24]  366 	mov	r0,_bp
      002195 08               [12]  367 	inc	r0
      002196 E5 10            [12]  368 	mov	a,_bp
      002198 24 04            [12]  369 	add	a,#0x04
      00219A F9               [12]  370 	mov	r1,a
      00219B E7               [12]  371 	mov	a,@r1
      00219C 26               [12]  372 	add	a,@r0
      00219D C0 E0            [24]  373 	push	acc
      00219F 09               [12]  374 	inc	r1
      0021A0 E7               [12]  375 	mov	a,@r1
      0021A1 08               [12]  376 	inc	r0
      0021A2 36               [12]  377 	addc	a,@r0
      0021A3 C0 E0            [24]  378 	push	acc
      0021A5 08               [12]  379 	inc	r0
      0021A6 E6               [12]  380 	mov	a,@r0
      0021A7 C0 E0            [24]  381 	push	acc
      0021A9 E5 10            [12]  382 	mov	a,_bp
      0021AB 24 08            [12]  383 	add	a,#0x08
      0021AD F8               [12]  384 	mov	r0,a
      0021AE D0 E0            [24]  385 	pop	acc
      0021B0 F6               [12]  386 	mov	@r0,a
      0021B1 18               [12]  387 	dec	r0
      0021B2 D0 E0            [24]  388 	pop	acc
      0021B4 F6               [12]  389 	mov	@r0,a
      0021B5 18               [12]  390 	dec	r0
      0021B6 D0 E0            [24]  391 	pop	acc
      0021B8 F6               [12]  392 	mov	@r0,a
      0021B9 E5 10            [12]  393 	mov	a,_bp
      0021BB 24 06            [12]  394 	add	a,#0x06
      0021BD F8               [12]  395 	mov	r0,a
      0021BE 86 82            [24]  396 	mov	dpl,@r0
      0021C0 08               [12]  397 	inc	r0
      0021C1 86 83            [24]  398 	mov	dph,@r0
      0021C3 08               [12]  399 	inc	r0
      0021C4 86 F0            [24]  400 	mov	b,@r0
      0021C6 E5 10            [12]  401 	mov	a,_bp
      0021C8 24 09            [12]  402 	add	a,#0x09
      0021CA F9               [12]  403 	mov	r1,a
      0021CB 12 31 3D         [24]  404 	lcall	__gptrget
      0021CE F7               [12]  405 	mov	@r1,a
      0021CF A3               [24]  406 	inc	dptr
      0021D0 12 31 3D         [24]  407 	lcall	__gptrget
      0021D3 09               [12]  408 	inc	r1
      0021D4 F7               [12]  409 	mov	@r1,a
                                    410 ;	fix_fft.c:193: fr[m] = fr[mr];
      0021D5 E5 10            [12]  411 	mov	a,_bp
      0021D7 24 18            [12]  412 	add	a,#0x18
      0021D9 F8               [12]  413 	mov	r0,a
      0021DA E5 10            [12]  414 	mov	a,_bp
      0021DC 24 0B            [12]  415 	add	a,#0x0b
      0021DE F9               [12]  416 	mov	r1,a
      0021DF E6               [12]  417 	mov	a,@r0
      0021E0 26               [12]  418 	add	a,@r0
      0021E1 F7               [12]  419 	mov	@r1,a
      0021E2 08               [12]  420 	inc	r0
      0021E3 E6               [12]  421 	mov	a,@r0
      0021E4 33               [12]  422 	rlc	a
      0021E5 09               [12]  423 	inc	r1
      0021E6 F7               [12]  424 	mov	@r1,a
      0021E7 A8 10            [24]  425 	mov	r0,_bp
      0021E9 08               [12]  426 	inc	r0
      0021EA E5 10            [12]  427 	mov	a,_bp
      0021EC 24 0B            [12]  428 	add	a,#0x0b
      0021EE F9               [12]  429 	mov	r1,a
      0021EF E7               [12]  430 	mov	a,@r1
      0021F0 26               [12]  431 	add	a,@r0
      0021F1 C0 E0            [24]  432 	push	acc
      0021F3 09               [12]  433 	inc	r1
      0021F4 E7               [12]  434 	mov	a,@r1
      0021F5 08               [12]  435 	inc	r0
      0021F6 36               [12]  436 	addc	a,@r0
      0021F7 C0 E0            [24]  437 	push	acc
      0021F9 08               [12]  438 	inc	r0
      0021FA E6               [12]  439 	mov	a,@r0
      0021FB C0 E0            [24]  440 	push	acc
      0021FD E5 10            [12]  441 	mov	a,_bp
      0021FF 24 0F            [12]  442 	add	a,#0x0f
      002201 F8               [12]  443 	mov	r0,a
      002202 D0 E0            [24]  444 	pop	acc
      002204 F6               [12]  445 	mov	@r0,a
      002205 18               [12]  446 	dec	r0
      002206 D0 E0            [24]  447 	pop	acc
      002208 F6               [12]  448 	mov	@r0,a
      002209 18               [12]  449 	dec	r0
      00220A D0 E0            [24]  450 	pop	acc
      00220C F6               [12]  451 	mov	@r0,a
      00220D E5 10            [12]  452 	mov	a,_bp
      00220F 24 0D            [12]  453 	add	a,#0x0d
      002211 F8               [12]  454 	mov	r0,a
      002212 86 82            [24]  455 	mov	dpl,@r0
      002214 08               [12]  456 	inc	r0
      002215 86 83            [24]  457 	mov	dph,@r0
      002217 08               [12]  458 	inc	r0
      002218 86 F0            [24]  459 	mov	b,@r0
      00221A 12 31 3D         [24]  460 	lcall	__gptrget
      00221D FA               [12]  461 	mov	r2,a
      00221E A3               [24]  462 	inc	dptr
      00221F 12 31 3D         [24]  463 	lcall	__gptrget
      002222 FF               [12]  464 	mov	r7,a
      002223 E5 10            [12]  465 	mov	a,_bp
      002225 24 06            [12]  466 	add	a,#0x06
      002227 F8               [12]  467 	mov	r0,a
      002228 86 82            [24]  468 	mov	dpl,@r0
      00222A 08               [12]  469 	inc	r0
      00222B 86 83            [24]  470 	mov	dph,@r0
      00222D 08               [12]  471 	inc	r0
      00222E 86 F0            [24]  472 	mov	b,@r0
      002230 EA               [12]  473 	mov	a,r2
      002231 12 2F 72         [24]  474 	lcall	__gptrput
      002234 A3               [24]  475 	inc	dptr
      002235 EF               [12]  476 	mov	a,r7
      002236 12 2F 72         [24]  477 	lcall	__gptrput
                                    478 ;	fix_fft.c:194: fr[mr] = tr;
      002239 E5 10            [12]  479 	mov	a,_bp
      00223B 24 0D            [12]  480 	add	a,#0x0d
      00223D F8               [12]  481 	mov	r0,a
      00223E 86 82            [24]  482 	mov	dpl,@r0
      002240 08               [12]  483 	inc	r0
      002241 86 83            [24]  484 	mov	dph,@r0
      002243 08               [12]  485 	inc	r0
      002244 86 F0            [24]  486 	mov	b,@r0
      002246 E5 10            [12]  487 	mov	a,_bp
      002248 24 09            [12]  488 	add	a,#0x09
      00224A F9               [12]  489 	mov	r1,a
      00224B E7               [12]  490 	mov	a,@r1
      00224C 12 2F 72         [24]  491 	lcall	__gptrput
      00224F A3               [24]  492 	inc	dptr
      002250 09               [12]  493 	inc	r1
      002251 E7               [12]  494 	mov	a,@r1
      002252 12 2F 72         [24]  495 	lcall	__gptrput
                                    496 ;	fix_fft.c:195: ti = fi[m];
      002255 E5 10            [12]  497 	mov	a,_bp
      002257 24 FB            [12]  498 	add	a,#0xfb
      002259 F8               [12]  499 	mov	r0,a
      00225A E5 10            [12]  500 	mov	a,_bp
      00225C 24 04            [12]  501 	add	a,#0x04
      00225E F9               [12]  502 	mov	r1,a
      00225F E7               [12]  503 	mov	a,@r1
      002260 26               [12]  504 	add	a,@r0
      002261 C0 E0            [24]  505 	push	acc
      002263 09               [12]  506 	inc	r1
      002264 E7               [12]  507 	mov	a,@r1
      002265 08               [12]  508 	inc	r0
      002266 36               [12]  509 	addc	a,@r0
      002267 C0 E0            [24]  510 	push	acc
      002269 08               [12]  511 	inc	r0
      00226A E6               [12]  512 	mov	a,@r0
      00226B C0 E0            [24]  513 	push	acc
      00226D E5 10            [12]  514 	mov	a,_bp
      00226F 24 0F            [12]  515 	add	a,#0x0f
      002271 F8               [12]  516 	mov	r0,a
      002272 D0 E0            [24]  517 	pop	acc
      002274 F6               [12]  518 	mov	@r0,a
      002275 18               [12]  519 	dec	r0
      002276 D0 E0            [24]  520 	pop	acc
      002278 F6               [12]  521 	mov	@r0,a
      002279 18               [12]  522 	dec	r0
      00227A D0 E0            [24]  523 	pop	acc
      00227C F6               [12]  524 	mov	@r0,a
      00227D E5 10            [12]  525 	mov	a,_bp
      00227F 24 0D            [12]  526 	add	a,#0x0d
      002281 F8               [12]  527 	mov	r0,a
      002282 86 82            [24]  528 	mov	dpl,@r0
      002284 08               [12]  529 	inc	r0
      002285 86 83            [24]  530 	mov	dph,@r0
      002287 08               [12]  531 	inc	r0
      002288 86 F0            [24]  532 	mov	b,@r0
      00228A E5 10            [12]  533 	mov	a,_bp
      00228C 24 09            [12]  534 	add	a,#0x09
      00228E F9               [12]  535 	mov	r1,a
      00228F 12 31 3D         [24]  536 	lcall	__gptrget
      002292 F7               [12]  537 	mov	@r1,a
      002293 A3               [24]  538 	inc	dptr
      002294 12 31 3D         [24]  539 	lcall	__gptrget
      002297 09               [12]  540 	inc	r1
      002298 F7               [12]  541 	mov	@r1,a
                                    542 ;	fix_fft.c:196: fi[m] = fi[mr];
      002299 E5 10            [12]  543 	mov	a,_bp
      00229B 24 FB            [12]  544 	add	a,#0xfb
      00229D F8               [12]  545 	mov	r0,a
      00229E E5 10            [12]  546 	mov	a,_bp
      0022A0 24 0B            [12]  547 	add	a,#0x0b
      0022A2 F9               [12]  548 	mov	r1,a
      0022A3 E7               [12]  549 	mov	a,@r1
      0022A4 26               [12]  550 	add	a,@r0
      0022A5 C0 E0            [24]  551 	push	acc
      0022A7 09               [12]  552 	inc	r1
      0022A8 E7               [12]  553 	mov	a,@r1
      0022A9 08               [12]  554 	inc	r0
      0022AA 36               [12]  555 	addc	a,@r0
      0022AB C0 E0            [24]  556 	push	acc
      0022AD 08               [12]  557 	inc	r0
      0022AE E6               [12]  558 	mov	a,@r0
      0022AF C0 E0            [24]  559 	push	acc
      0022B1 E5 10            [12]  560 	mov	a,_bp
      0022B3 24 08            [12]  561 	add	a,#0x08
      0022B5 F8               [12]  562 	mov	r0,a
      0022B6 D0 E0            [24]  563 	pop	acc
      0022B8 F6               [12]  564 	mov	@r0,a
      0022B9 18               [12]  565 	dec	r0
      0022BA D0 E0            [24]  566 	pop	acc
      0022BC F6               [12]  567 	mov	@r0,a
      0022BD 18               [12]  568 	dec	r0
      0022BE D0 E0            [24]  569 	pop	acc
      0022C0 F6               [12]  570 	mov	@r0,a
      0022C1 E5 10            [12]  571 	mov	a,_bp
      0022C3 24 06            [12]  572 	add	a,#0x06
      0022C5 F8               [12]  573 	mov	r0,a
      0022C6 86 82            [24]  574 	mov	dpl,@r0
      0022C8 08               [12]  575 	inc	r0
      0022C9 86 83            [24]  576 	mov	dph,@r0
      0022CB 08               [12]  577 	inc	r0
      0022CC 86 F0            [24]  578 	mov	b,@r0
      0022CE 12 31 3D         [24]  579 	lcall	__gptrget
      0022D1 FA               [12]  580 	mov	r2,a
      0022D2 A3               [24]  581 	inc	dptr
      0022D3 12 31 3D         [24]  582 	lcall	__gptrget
      0022D6 FF               [12]  583 	mov	r7,a
      0022D7 E5 10            [12]  584 	mov	a,_bp
      0022D9 24 0D            [12]  585 	add	a,#0x0d
      0022DB F8               [12]  586 	mov	r0,a
      0022DC 86 82            [24]  587 	mov	dpl,@r0
      0022DE 08               [12]  588 	inc	r0
      0022DF 86 83            [24]  589 	mov	dph,@r0
      0022E1 08               [12]  590 	inc	r0
      0022E2 86 F0            [24]  591 	mov	b,@r0
      0022E4 EA               [12]  592 	mov	a,r2
      0022E5 12 2F 72         [24]  593 	lcall	__gptrput
      0022E8 A3               [24]  594 	inc	dptr
      0022E9 EF               [12]  595 	mov	a,r7
      0022EA 12 2F 72         [24]  596 	lcall	__gptrput
                                    597 ;	fix_fft.c:197: fi[mr] = ti;
      0022ED E5 10            [12]  598 	mov	a,_bp
      0022EF 24 06            [12]  599 	add	a,#0x06
      0022F1 F8               [12]  600 	mov	r0,a
      0022F2 86 82            [24]  601 	mov	dpl,@r0
      0022F4 08               [12]  602 	inc	r0
      0022F5 86 83            [24]  603 	mov	dph,@r0
      0022F7 08               [12]  604 	inc	r0
      0022F8 86 F0            [24]  605 	mov	b,@r0
      0022FA E5 10            [12]  606 	mov	a,_bp
      0022FC 24 09            [12]  607 	add	a,#0x09
      0022FE F9               [12]  608 	mov	r1,a
      0022FF E7               [12]  609 	mov	a,@r1
      002300 12 2F 72         [24]  610 	lcall	__gptrput
      002303 A3               [24]  611 	inc	dptr
      002304 09               [12]  612 	inc	r1
      002305 E7               [12]  613 	mov	a,@r1
      002306 12 2F 72         [24]  614 	lcall	__gptrput
                                    615 ;	fix_fft.c:274: return scale;
      002309 D0 04            [24]  616 	pop	ar4
      00230B D0 02            [24]  617 	pop	ar2
                                    618 ;	fix_fft.c:197: fi[mr] = ti;
      00230D                        619 00108$:
                                    620 ;	fix_fft.c:183: for (m = 1; m <= nn; m++) {
      00230D 0D               [12]  621 	inc	r5
      00230E BD 00 01         [24]  622 	cjne	r5,#0x00,00272$
      002311 0E               [12]  623 	inc	r6
      002312                        624 00272$:
      002312 02 20 D3         [24]  625 	ljmp	00139$
      002315                        626 00109$:
                                    627 ;	fix_fft.c:200: l = 1;
      002315 E5 10            [12]  628 	mov	a,_bp
      002317 24 1C            [12]  629 	add	a,#0x1c
      002319 F8               [12]  630 	mov	r0,a
      00231A 76 01            [12]  631 	mov	@r0,#0x01
      00231C 08               [12]  632 	inc	r0
      00231D 76 00            [12]  633 	mov	@r0,#0x00
                                    634 ;	fix_fft.c:202: while (l < n) {
      00231F E5 10            [12]  635 	mov	a,_bp
      002321 24 24            [12]  636 	add	a,#0x24
      002323 F8               [12]  637 	mov	r0,a
      002324 E4               [12]  638 	clr	a
      002325 F6               [12]  639 	mov	@r0,a
      002326 08               [12]  640 	inc	r0
      002327 F6               [12]  641 	mov	@r0,a
      002328 E5 10            [12]  642 	mov	a,_bp
      00232A 24 1E            [12]  643 	add	a,#0x1e
      00232C F8               [12]  644 	mov	r0,a
      00232D 76 09            [12]  645 	mov	@r0,#0x09
      00232F 08               [12]  646 	inc	r0
      002330 76 00            [12]  647 	mov	@r0,#0x00
      002332                        648 00131$:
      002332 E5 10            [12]  649 	mov	a,_bp
      002334 24 1C            [12]  650 	add	a,#0x1c
      002336 F8               [12]  651 	mov	r0,a
      002337 E5 10            [12]  652 	mov	a,_bp
      002339 24 22            [12]  653 	add	a,#0x22
      00233B F9               [12]  654 	mov	r1,a
      00233C C3               [12]  655 	clr	c
      00233D E6               [12]  656 	mov	a,@r0
      00233E 97               [12]  657 	subb	a,@r1
      00233F 08               [12]  658 	inc	r0
      002340 E6               [12]  659 	mov	a,@r0
      002341 64 80            [12]  660 	xrl	a,#0x80
      002343 09               [12]  661 	inc	r1
      002344 87 F0            [24]  662 	mov	b,@r1
      002346 63 F0 80         [24]  663 	xrl	b,#0x80
      002349 95 F0            [12]  664 	subb	a,b
      00234B 40 03            [24]  665 	jc	00273$
      00234D 02 2A 11         [24]  666 	ljmp	00133$
      002350                        667 00273$:
                                    668 ;	fix_fft.c:203: if (inverse) {
      002350 E5 10            [12]  669 	mov	a,_bp
      002352 24 F7            [12]  670 	add	a,#0xf7
      002354 F8               [12]  671 	mov	r0,a
      002355 E6               [12]  672 	mov	a,@r0
      002356 08               [12]  673 	inc	r0
      002357 46               [12]  674 	orl	a,@r0
      002358 70 03            [24]  675 	jnz	00274$
      00235A 02 24 67         [24]  676 	ljmp	00121$
      00235D                        677 00274$:
                                    678 ;	fix_fft.c:205: shift = 0;
      00235D E5 10            [12]  679 	mov	a,_bp
      00235F 24 26            [12]  680 	add	a,#0x26
      002361 F8               [12]  681 	mov	r0,a
      002362 E4               [12]  682 	clr	a
      002363 F6               [12]  683 	mov	@r0,a
      002364 08               [12]  684 	inc	r0
      002365 F6               [12]  685 	mov	@r0,a
                                    686 ;	fix_fft.c:207: for (i = 0; i < n; i++) {
      002366 7A 00            [12]  687 	mov	r2,#0x00
      002368 7B 00            [12]  688 	mov	r3,#0x00
      00236A                        689 00141$:
      00236A E5 10            [12]  690 	mov	a,_bp
      00236C 24 22            [12]  691 	add	a,#0x22
      00236E F8               [12]  692 	mov	r0,a
      00236F C3               [12]  693 	clr	c
      002370 EA               [12]  694 	mov	a,r2
      002371 96               [12]  695 	subb	a,@r0
      002372 EB               [12]  696 	mov	a,r3
      002373 64 80            [12]  697 	xrl	a,#0x80
      002375 08               [12]  698 	inc	r0
      002376 86 F0            [24]  699 	mov	b,@r0
      002378 63 F0 80         [24]  700 	xrl	b,#0x80
      00237B 95 F0            [12]  701 	subb	a,b
      00237D 40 03            [24]  702 	jc	00275$
      00237F 02 24 50         [24]  703 	ljmp	00117$
      002382                        704 00275$:
                                    705 ;	fix_fft.c:208: j = fr[i];
      002382 EA               [12]  706 	mov	a,r2
      002383 2A               [12]  707 	add	a,r2
      002384 FC               [12]  708 	mov	r4,a
      002385 EB               [12]  709 	mov	a,r3
      002386 33               [12]  710 	rlc	a
      002387 FD               [12]  711 	mov	r5,a
      002388 A8 10            [24]  712 	mov	r0,_bp
      00238A 08               [12]  713 	inc	r0
      00238B EC               [12]  714 	mov	a,r4
      00238C 26               [12]  715 	add	a,@r0
      00238D FC               [12]  716 	mov	r4,a
      00238E ED               [12]  717 	mov	a,r5
      00238F 08               [12]  718 	inc	r0
      002390 36               [12]  719 	addc	a,@r0
      002391 FD               [12]  720 	mov	r5,a
      002392 08               [12]  721 	inc	r0
      002393 86 07            [24]  722 	mov	ar7,@r0
      002395 8C 82            [24]  723 	mov	dpl,r4
      002397 8D 83            [24]  724 	mov	dph,r5
      002399 8F F0            [24]  725 	mov	b,r7
      00239B E5 10            [12]  726 	mov	a,_bp
      00239D 24 0D            [12]  727 	add	a,#0x0d
      00239F F8               [12]  728 	mov	r0,a
      0023A0 12 31 3D         [24]  729 	lcall	__gptrget
      0023A3 F6               [12]  730 	mov	@r0,a
      0023A4 A3               [24]  731 	inc	dptr
      0023A5 12 31 3D         [24]  732 	lcall	__gptrget
      0023A8 08               [12]  733 	inc	r0
      0023A9 F6               [12]  734 	mov	@r0,a
                                    735 ;	fix_fft.c:209: if (j < 0) j = -j;
      0023AA E5 10            [12]  736 	mov	a,_bp
      0023AC 24 0D            [12]  737 	add	a,#0x0d
      0023AE F8               [12]  738 	mov	r0,a
      0023AF 86 06            [24]  739 	mov	ar6,@r0
      0023B1 08               [12]  740 	inc	r0
      0023B2 E6               [12]  741 	mov	a,@r0
      0023B3 30 E7 0D         [24]  742 	jnb	acc.7,00111$
      0023B6 E5 10            [12]  743 	mov	a,_bp
      0023B8 24 0D            [12]  744 	add	a,#0x0d
      0023BA F8               [12]  745 	mov	r0,a
      0023BB C3               [12]  746 	clr	c
      0023BC E4               [12]  747 	clr	a
      0023BD 96               [12]  748 	subb	a,@r0
      0023BE F6               [12]  749 	mov	@r0,a
      0023BF 08               [12]  750 	inc	r0
      0023C0 E4               [12]  751 	clr	a
      0023C1 96               [12]  752 	subb	a,@r0
      0023C2 F6               [12]  753 	mov	@r0,a
      0023C3                        754 00111$:
                                    755 ;	fix_fft.c:211: m = fi[i];
      0023C3 EA               [12]  756 	mov	a,r2
      0023C4 2A               [12]  757 	add	a,r2
      0023C5 FE               [12]  758 	mov	r6,a
      0023C6 EB               [12]  759 	mov	a,r3
      0023C7 33               [12]  760 	rlc	a
      0023C8 FF               [12]  761 	mov	r7,a
      0023C9 E5 10            [12]  762 	mov	a,_bp
      0023CB 24 FB            [12]  763 	add	a,#0xfb
      0023CD F8               [12]  764 	mov	r0,a
      0023CE EE               [12]  765 	mov	a,r6
      0023CF 26               [12]  766 	add	a,@r0
      0023D0 FE               [12]  767 	mov	r6,a
      0023D1 EF               [12]  768 	mov	a,r7
      0023D2 08               [12]  769 	inc	r0
      0023D3 36               [12]  770 	addc	a,@r0
      0023D4 FD               [12]  771 	mov	r5,a
      0023D5 08               [12]  772 	inc	r0
      0023D6 86 07            [24]  773 	mov	ar7,@r0
      0023D8 8E 82            [24]  774 	mov	dpl,r6
      0023DA 8D 83            [24]  775 	mov	dph,r5
      0023DC 8F F0            [24]  776 	mov	b,r7
      0023DE 12 31 3D         [24]  777 	lcall	__gptrget
      0023E1 FC               [12]  778 	mov	r4,a
      0023E2 A3               [24]  779 	inc	dptr
      0023E3 12 31 3D         [24]  780 	lcall	__gptrget
      0023E6 FD               [12]  781 	mov	r5,a
      0023E7 E5 10            [12]  782 	mov	a,_bp
      0023E9 24 F9            [12]  783 	add	a,#0xf9
      0023EB F8               [12]  784 	mov	r0,a
      0023EC A6 04            [24]  785 	mov	@r0,ar4
      0023EE 08               [12]  786 	inc	r0
      0023EF A6 05            [24]  787 	mov	@r0,ar5
                                    788 ;	fix_fft.c:212: if (m < 0) m = -m;
      0023F1 8C 06            [24]  789 	mov	ar6,r4
      0023F3 8D 07            [24]  790 	mov	ar7,r5
      0023F5 EF               [12]  791 	mov	a,r7
      0023F6 30 E7 11         [24]  792 	jnb	acc.7,00113$
      0023F9 C3               [12]  793 	clr	c
      0023FA E4               [12]  794 	clr	a
      0023FB 9C               [12]  795 	subb	a,r4
      0023FC FE               [12]  796 	mov	r6,a
      0023FD E4               [12]  797 	clr	a
      0023FE 9D               [12]  798 	subb	a,r5
      0023FF FF               [12]  799 	mov	r7,a
      002400 E5 10            [12]  800 	mov	a,_bp
      002402 24 F9            [12]  801 	add	a,#0xf9
      002404 F8               [12]  802 	mov	r0,a
      002405 A6 06            [24]  803 	mov	@r0,ar6
      002407 08               [12]  804 	inc	r0
      002408 A6 07            [24]  805 	mov	@r0,ar7
      00240A                        806 00113$:
                                    807 ;	fix_fft.c:214: if ((j > 16383) || (m > 16383)) {
      00240A E5 10            [12]  808 	mov	a,_bp
      00240C 24 0D            [12]  809 	add	a,#0x0d
      00240E F8               [12]  810 	mov	r0,a
      00240F 86 06            [24]  811 	mov	ar6,@r0
      002411 08               [12]  812 	inc	r0
      002412 86 07            [24]  813 	mov	ar7,@r0
      002414 C3               [12]  814 	clr	c
      002415 74 FF            [12]  815 	mov	a,#0xff
      002417 9E               [12]  816 	subb	a,r6
      002418 74 BF            [12]  817 	mov	a,#(0x3f ^ 0x80)
      00241A 8F F0            [24]  818 	mov	b,r7
      00241C 63 F0 80         [24]  819 	xrl	b,#0x80
      00241F 95 F0            [12]  820 	subb	a,b
      002421 40 19            [24]  821 	jc	00114$
      002423 E5 10            [12]  822 	mov	a,_bp
      002425 24 F9            [12]  823 	add	a,#0xf9
      002427 F8               [12]  824 	mov	r0,a
      002428 86 06            [24]  825 	mov	ar6,@r0
      00242A 08               [12]  826 	inc	r0
      00242B 86 07            [24]  827 	mov	ar7,@r0
      00242D C3               [12]  828 	clr	c
      00242E 74 FF            [12]  829 	mov	a,#0xff
      002430 9E               [12]  830 	subb	a,r6
      002431 74 BF            [12]  831 	mov	a,#(0x3f ^ 0x80)
      002433 8F F0            [24]  832 	mov	b,r7
      002435 63 F0 80         [24]  833 	xrl	b,#0x80
      002438 95 F0            [12]  834 	subb	a,b
      00243A 50 0C            [24]  835 	jnc	00142$
      00243C                        836 00114$:
                                    837 ;	fix_fft.c:215: shift = 1;
      00243C E5 10            [12]  838 	mov	a,_bp
      00243E 24 26            [12]  839 	add	a,#0x26
      002440 F8               [12]  840 	mov	r0,a
      002441 76 01            [12]  841 	mov	@r0,#0x01
      002443 08               [12]  842 	inc	r0
      002444 76 00            [12]  843 	mov	@r0,#0x00
                                    844 ;	fix_fft.c:216: break;
      002446 80 08            [24]  845 	sjmp	00117$
      002448                        846 00142$:
                                    847 ;	fix_fft.c:207: for (i = 0; i < n; i++) {
      002448 0A               [12]  848 	inc	r2
      002449 BA 00 01         [24]  849 	cjne	r2,#0x00,00280$
      00244C 0B               [12]  850 	inc	r3
      00244D                        851 00280$:
      00244D 02 23 6A         [24]  852 	ljmp	00141$
      002450                        853 00117$:
                                    854 ;	fix_fft.c:220: if (shift) scale++;
      002450 E5 10            [12]  855 	mov	a,_bp
      002452 24 26            [12]  856 	add	a,#0x26
      002454 F8               [12]  857 	mov	r0,a
      002455 E6               [12]  858 	mov	a,@r0
      002456 08               [12]  859 	inc	r0
      002457 46               [12]  860 	orl	a,@r0
      002458 60 17            [24]  861 	jz	00122$
      00245A E5 10            [12]  862 	mov	a,_bp
      00245C 24 24            [12]  863 	add	a,#0x24
      00245E F8               [12]  864 	mov	r0,a
      00245F 06               [12]  865 	inc	@r0
      002460 B6 00 02         [24]  866 	cjne	@r0,#0x00,00282$
      002463 08               [12]  867 	inc	r0
      002464 06               [12]  868 	inc	@r0
      002465                        869 00282$:
      002465 80 0A            [24]  870 	sjmp	00122$
      002467                        871 00121$:
                                    872 ;	fix_fft.c:228: shift = 1;
      002467 E5 10            [12]  873 	mov	a,_bp
      002469 24 26            [12]  874 	add	a,#0x26
      00246B F8               [12]  875 	mov	r0,a
      00246C 76 01            [12]  876 	mov	@r0,#0x01
      00246E 08               [12]  877 	inc	r0
      00246F 76 00            [12]  878 	mov	@r0,#0x00
      002471                        879 00122$:
                                    880 ;	fix_fft.c:236: istep = l << 1;
      002471 E5 10            [12]  881 	mov	a,_bp
      002473 24 1C            [12]  882 	add	a,#0x1c
      002475 F8               [12]  883 	mov	r0,a
      002476 E5 10            [12]  884 	mov	a,_bp
      002478 24 20            [12]  885 	add	a,#0x20
      00247A F9               [12]  886 	mov	r1,a
      00247B E6               [12]  887 	mov	a,@r0
      00247C 26               [12]  888 	add	a,@r0
      00247D F7               [12]  889 	mov	@r1,a
      00247E 08               [12]  890 	inc	r0
      00247F E6               [12]  891 	mov	a,@r0
      002480 33               [12]  892 	rlc	a
      002481 09               [12]  893 	inc	r1
      002482 F7               [12]  894 	mov	@r1,a
                                    895 ;	fix_fft.c:237: for (m = 0; m < l; m++) {
      002483 7A 00            [12]  896 	mov	r2,#0x00
      002485 7B 00            [12]  897 	mov	r3,#0x00
      002487                        898 00147$:
      002487 E5 10            [12]  899 	mov	a,_bp
      002489 24 1C            [12]  900 	add	a,#0x1c
      00248B F8               [12]  901 	mov	r0,a
      00248C C3               [12]  902 	clr	c
      00248D EA               [12]  903 	mov	a,r2
      00248E 96               [12]  904 	subb	a,@r0
      00248F EB               [12]  905 	mov	a,r3
      002490 64 80            [12]  906 	xrl	a,#0x80
      002492 08               [12]  907 	inc	r0
      002493 86 F0            [24]  908 	mov	b,@r0
      002495 63 F0 80         [24]  909 	xrl	b,#0x80
      002498 95 F0            [12]  910 	subb	a,b
      00249A 40 03            [24]  911 	jc	00283$
      00249C 02 29 F3         [24]  912 	ljmp	00130$
      00249F                        913 00283$:
                                    914 ;	fix_fft.c:238: j = m << k;
      00249F E5 10            [12]  915 	mov	a,_bp
      0024A1 24 1E            [12]  916 	add	a,#0x1e
      0024A3 F8               [12]  917 	mov	r0,a
      0024A4 86 F0            [24]  918 	mov	b,@r0
      0024A6 05 F0            [12]  919 	inc	b
      0024A8 AE 02            [24]  920 	mov	r6,ar2
      0024AA AF 03            [24]  921 	mov	r7,ar3
      0024AC 80 06            [24]  922 	sjmp	00285$
      0024AE                        923 00284$:
      0024AE EE               [12]  924 	mov	a,r6
      0024AF 2E               [12]  925 	add	a,r6
      0024B0 FE               [12]  926 	mov	r6,a
      0024B1 EF               [12]  927 	mov	a,r7
      0024B2 33               [12]  928 	rlc	a
      0024B3 FF               [12]  929 	mov	r7,a
      0024B4                        930 00285$:
      0024B4 D5 F0 F7         [24]  931 	djnz	b,00284$
      0024B7 8E 05            [24]  932 	mov	ar5,r6
      0024B9 8F 04            [24]  933 	mov	ar4,r7
                                    934 ;	fix_fft.c:241: wr =  Sinewave[j + N_WAVE / 4];
      0024BB 8D 06            [24]  935 	mov	ar6,r5
      0024BD 8C 07            [24]  936 	mov	ar7,r4
      0024BF 74 01            [12]  937 	mov	a,#0x01
      0024C1 2F               [12]  938 	add	a,r7
      0024C2 FF               [12]  939 	mov	r7,a
      0024C3 EE               [12]  940 	mov	a,r6
      0024C4 2E               [12]  941 	add	a,r6
      0024C5 FE               [12]  942 	mov	r6,a
      0024C6 EF               [12]  943 	mov	a,r7
      0024C7 33               [12]  944 	rlc	a
      0024C8 FF               [12]  945 	mov	r7,a
      0024C9 EE               [12]  946 	mov	a,r6
      0024CA 24 82            [12]  947 	add	a,#_Sinewave
      0024CC F5 82            [12]  948 	mov	dpl,a
      0024CE EF               [12]  949 	mov	a,r7
      0024CF 34 4D            [12]  950 	addc	a,#(_Sinewave >> 8)
      0024D1 F5 83            [12]  951 	mov	dph,a
      0024D3 E5 10            [12]  952 	mov	a,_bp
      0024D5 24 30            [12]  953 	add	a,#0x30
      0024D7 F8               [12]  954 	mov	r0,a
      0024D8 E0               [24]  955 	movx	a,@dptr
      0024D9 F6               [12]  956 	mov	@r0,a
      0024DA A3               [24]  957 	inc	dptr
      0024DB E0               [24]  958 	movx	a,@dptr
      0024DC 08               [12]  959 	inc	r0
      0024DD F6               [12]  960 	mov	@r0,a
                                    961 ;	fix_fft.c:242: wi = -Sinewave[j];
      0024DE ED               [12]  962 	mov	a,r5
      0024DF 2D               [12]  963 	add	a,r5
      0024E0 FE               [12]  964 	mov	r6,a
      0024E1 EC               [12]  965 	mov	a,r4
      0024E2 33               [12]  966 	rlc	a
      0024E3 FF               [12]  967 	mov	r7,a
      0024E4 EE               [12]  968 	mov	a,r6
      0024E5 24 82            [12]  969 	add	a,#_Sinewave
      0024E7 F5 82            [12]  970 	mov	dpl,a
      0024E9 EF               [12]  971 	mov	a,r7
      0024EA 34 4D            [12]  972 	addc	a,#(_Sinewave >> 8)
      0024EC F5 83            [12]  973 	mov	dph,a
      0024EE E0               [24]  974 	movx	a,@dptr
      0024EF FE               [12]  975 	mov	r6,a
      0024F0 A3               [24]  976 	inc	dptr
      0024F1 E0               [24]  977 	movx	a,@dptr
      0024F2 FF               [12]  978 	mov	r7,a
      0024F3 C3               [12]  979 	clr	c
      0024F4 E4               [12]  980 	clr	a
      0024F5 9E               [12]  981 	subb	a,r6
      0024F6 FE               [12]  982 	mov	r6,a
      0024F7 E4               [12]  983 	clr	a
      0024F8 9F               [12]  984 	subb	a,r7
      0024F9 FF               [12]  985 	mov	r7,a
      0024FA E5 10            [12]  986 	mov	a,_bp
      0024FC 24 32            [12]  987 	add	a,#0x32
      0024FE F8               [12]  988 	mov	r0,a
      0024FF A6 06            [24]  989 	mov	@r0,ar6
      002501 08               [12]  990 	inc	r0
      002502 A6 07            [24]  991 	mov	@r0,ar7
                                    992 ;	fix_fft.c:243: if (inverse) wi = -wi;
      002504 E5 10            [12]  993 	mov	a,_bp
      002506 24 F7            [12]  994 	add	a,#0xf7
      002508 F8               [12]  995 	mov	r0,a
      002509 E6               [12]  996 	mov	a,@r0
      00250A 08               [12]  997 	inc	r0
      00250B 46               [12]  998 	orl	a,@r0
      00250C 60 0D            [24]  999 	jz	00124$
      00250E E5 10            [12] 1000 	mov	a,_bp
      002510 24 32            [12] 1001 	add	a,#0x32
      002512 F8               [12] 1002 	mov	r0,a
      002513 C3               [12] 1003 	clr	c
      002514 E4               [12] 1004 	clr	a
      002515 96               [12] 1005 	subb	a,@r0
      002516 F6               [12] 1006 	mov	@r0,a
      002517 08               [12] 1007 	inc	r0
      002518 E4               [12] 1008 	clr	a
      002519 96               [12] 1009 	subb	a,@r0
      00251A F6               [12] 1010 	mov	@r0,a
      00251B                       1011 00124$:
                                   1012 ;	fix_fft.c:245: if (shift) {
      00251B E5 10            [12] 1013 	mov	a,_bp
      00251D 24 26            [12] 1014 	add	a,#0x26
      00251F F8               [12] 1015 	mov	r0,a
      002520 E6               [12] 1016 	mov	a,@r0
      002521 08               [12] 1017 	inc	r0
      002522 46               [12] 1018 	orl	a,@r0
      002523 60 20            [24] 1019 	jz	00126$
                                   1020 ;	fix_fft.c:246: wr >>= 1;
      002525 E5 10            [12] 1021 	mov	a,_bp
      002527 24 30            [12] 1022 	add	a,#0x30
      002529 F8               [12] 1023 	mov	r0,a
      00252A 08               [12] 1024 	inc	r0
      00252B E6               [12] 1025 	mov	a,@r0
      00252C 18               [12] 1026 	dec	r0
      00252D A2 E7            [12] 1027 	mov	c,acc.7
      00252F 13               [12] 1028 	rrc	a
      002530 C6               [12] 1029 	xch	a,@r0
      002531 13               [12] 1030 	rrc	a
      002532 C6               [12] 1031 	xch	a,@r0
      002533 08               [12] 1032 	inc	r0
      002534 F6               [12] 1033 	mov	@r0,a
                                   1034 ;	fix_fft.c:247: wi >>= 1;
      002535 E5 10            [12] 1035 	mov	a,_bp
      002537 24 32            [12] 1036 	add	a,#0x32
      002539 F8               [12] 1037 	mov	r0,a
      00253A 08               [12] 1038 	inc	r0
      00253B E6               [12] 1039 	mov	a,@r0
      00253C 18               [12] 1040 	dec	r0
      00253D A2 E7            [12] 1041 	mov	c,acc.7
      00253F 13               [12] 1042 	rrc	a
      002540 C6               [12] 1043 	xch	a,@r0
      002541 13               [12] 1044 	rrc	a
      002542 C6               [12] 1045 	xch	a,@r0
      002543 08               [12] 1046 	inc	r0
      002544 F6               [12] 1047 	mov	@r0,a
      002545                       1048 00126$:
                                   1049 ;	fix_fft.c:250: for (i = m; i < n; i += istep) {
      002545 E5 10            [12] 1050 	mov	a,_bp
      002547 24 1A            [12] 1051 	add	a,#0x1a
      002549 F8               [12] 1052 	mov	r0,a
      00254A A6 02            [24] 1053 	mov	@r0,ar2
      00254C 08               [12] 1054 	inc	r0
      00254D A6 03            [24] 1055 	mov	@r0,ar3
      00254F                       1056 00144$:
      00254F E5 10            [12] 1057 	mov	a,_bp
      002551 24 1A            [12] 1058 	add	a,#0x1a
      002553 F8               [12] 1059 	mov	r0,a
      002554 E5 10            [12] 1060 	mov	a,_bp
      002556 24 22            [12] 1061 	add	a,#0x22
      002558 F9               [12] 1062 	mov	r1,a
      002559 C3               [12] 1063 	clr	c
      00255A E6               [12] 1064 	mov	a,@r0
      00255B 97               [12] 1065 	subb	a,@r1
      00255C 08               [12] 1066 	inc	r0
      00255D E6               [12] 1067 	mov	a,@r0
      00255E 64 80            [12] 1068 	xrl	a,#0x80
      002560 09               [12] 1069 	inc	r1
      002561 87 F0            [24] 1070 	mov	b,@r1
      002563 63 F0 80         [24] 1071 	xrl	b,#0x80
      002566 95 F0            [12] 1072 	subb	a,b
      002568 40 03            [24] 1073 	jc	00288$
      00256A 02 29 EB         [24] 1074 	ljmp	00148$
      00256D                       1075 00288$:
                                   1076 ;	fix_fft.c:251: j = i + l;
      00256D C0 02            [24] 1077 	push	ar2
      00256F C0 03            [24] 1078 	push	ar3
      002571 E5 10            [12] 1079 	mov	a,_bp
      002573 24 1A            [12] 1080 	add	a,#0x1a
      002575 F8               [12] 1081 	mov	r0,a
      002576 E5 10            [12] 1082 	mov	a,_bp
      002578 24 1C            [12] 1083 	add	a,#0x1c
      00257A F9               [12] 1084 	mov	r1,a
      00257B E7               [12] 1085 	mov	a,@r1
      00257C 26               [12] 1086 	add	a,@r0
      00257D C0 E0            [24] 1087 	push	acc
      00257F 09               [12] 1088 	inc	r1
      002580 E7               [12] 1089 	mov	a,@r1
      002581 08               [12] 1090 	inc	r0
      002582 36               [12] 1091 	addc	a,@r0
      002583 C0 E0            [24] 1092 	push	acc
      002585 E5 10            [12] 1093 	mov	a,_bp
      002587 24 0E            [12] 1094 	add	a,#0x0e
      002589 F8               [12] 1095 	mov	r0,a
      00258A D0 E0            [24] 1096 	pop	acc
      00258C F6               [12] 1097 	mov	@r0,a
      00258D 18               [12] 1098 	dec	r0
      00258E D0 E0            [24] 1099 	pop	acc
      002590 F6               [12] 1100 	mov	@r0,a
                                   1101 ;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
      002591 E5 10            [12] 1102 	mov	a,_bp
      002593 24 0D            [12] 1103 	add	a,#0x0d
      002595 F8               [12] 1104 	mov	r0,a
      002596 E5 10            [12] 1105 	mov	a,_bp
      002598 24 09            [12] 1106 	add	a,#0x09
      00259A F9               [12] 1107 	mov	r1,a
      00259B E6               [12] 1108 	mov	a,@r0
      00259C 26               [12] 1109 	add	a,@r0
      00259D F7               [12] 1110 	mov	@r1,a
      00259E 08               [12] 1111 	inc	r0
      00259F E6               [12] 1112 	mov	a,@r0
      0025A0 33               [12] 1113 	rlc	a
      0025A1 09               [12] 1114 	inc	r1
      0025A2 F7               [12] 1115 	mov	@r1,a
      0025A3 A8 10            [24] 1116 	mov	r0,_bp
      0025A5 08               [12] 1117 	inc	r0
      0025A6 E5 10            [12] 1118 	mov	a,_bp
      0025A8 24 09            [12] 1119 	add	a,#0x09
      0025AA F9               [12] 1120 	mov	r1,a
      0025AB E7               [12] 1121 	mov	a,@r1
      0025AC 26               [12] 1122 	add	a,@r0
      0025AD FC               [12] 1123 	mov	r4,a
      0025AE 09               [12] 1124 	inc	r1
      0025AF E7               [12] 1125 	mov	a,@r1
      0025B0 08               [12] 1126 	inc	r0
      0025B1 36               [12] 1127 	addc	a,@r0
      0025B2 FD               [12] 1128 	mov	r5,a
      0025B3 08               [12] 1129 	inc	r0
      0025B4 86 07            [24] 1130 	mov	ar7,@r0
      0025B6 8C 82            [24] 1131 	mov	dpl,r4
      0025B8 8D 83            [24] 1132 	mov	dph,r5
      0025BA 8F F0            [24] 1133 	mov	b,r7
      0025BC E5 10            [12] 1134 	mov	a,_bp
      0025BE 24 34            [12] 1135 	add	a,#0x34
      0025C0 F8               [12] 1136 	mov	r0,a
      0025C1 12 31 3D         [24] 1137 	lcall	__gptrget
      0025C4 F6               [12] 1138 	mov	@r0,a
      0025C5 A3               [24] 1139 	inc	dptr
      0025C6 12 31 3D         [24] 1140 	lcall	__gptrget
      0025C9 08               [12] 1141 	inc	r0
      0025CA F6               [12] 1142 	mov	@r0,a
      0025CB E5 10            [12] 1143 	mov	a,_bp
      0025CD 24 34            [12] 1144 	add	a,#0x34
      0025CF F8               [12] 1145 	mov	r0,a
      0025D0 86 07            [24] 1146 	mov	ar7,@r0
      0025D2 08               [12] 1147 	inc	r0
      0025D3 86 06            [24] 1148 	mov	ar6,@r0
                                   1149 ;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
      0025D5 E5 10            [12] 1150 	mov	a,_bp
      0025D7 24 30            [12] 1151 	add	a,#0x30
      0025D9 F8               [12] 1152 	mov	r0,a
      0025DA E5 10            [12] 1153 	mov	a,_bp
      0025DC 24 10            [12] 1154 	add	a,#0x10
      0025DE F9               [12] 1155 	mov	r1,a
      0025DF E6               [12] 1156 	mov	a,@r0
      0025E0 F7               [12] 1157 	mov	@r1,a
      0025E1 08               [12] 1158 	inc	r0
      0025E2 09               [12] 1159 	inc	r1
      0025E3 E6               [12] 1160 	mov	a,@r0
      0025E4 F7               [12] 1161 	mov	@r1,a
      0025E5 E6               [12] 1162 	mov	a,@r0
      0025E6 33               [12] 1163 	rlc	a
      0025E7 95 E0            [12] 1164 	subb	a,acc
      0025E9 09               [12] 1165 	inc	r1
      0025EA F7               [12] 1166 	mov	@r1,a
      0025EB 09               [12] 1167 	inc	r1
      0025EC F7               [12] 1168 	mov	@r1,a
      0025ED 8F 02            [24] 1169 	mov	ar2,r7
      0025EF EE               [12] 1170 	mov	a,r6
      0025F0 FB               [12] 1171 	mov	r3,a
      0025F1 33               [12] 1172 	rlc	a
      0025F2 95 E0            [12] 1173 	subb	a,acc
      0025F4 FE               [12] 1174 	mov	r6,a
      0025F5 FF               [12] 1175 	mov	r7,a
      0025F6 C0 03            [24] 1176 	push	ar3
      0025F8 C0 02            [24] 1177 	push	ar2
      0025FA C0 02            [24] 1178 	push	ar2
      0025FC C0 03            [24] 1179 	push	ar3
      0025FE C0 06            [24] 1180 	push	ar6
      002600 C0 07            [24] 1181 	push	ar7
      002602 E5 10            [12] 1182 	mov	a,_bp
      002604 24 10            [12] 1183 	add	a,#0x10
      002606 F8               [12] 1184 	mov	r0,a
      002607 86 82            [24] 1185 	mov	dpl,@r0
      002609 08               [12] 1186 	inc	r0
      00260A 86 83            [24] 1187 	mov	dph,@r0
      00260C 08               [12] 1188 	inc	r0
      00260D 86 F0            [24] 1189 	mov	b,@r0
      00260F 08               [12] 1190 	inc	r0
      002610 E6               [12] 1191 	mov	a,@r0
      002611 12 31 59         [24] 1192 	lcall	__mullong
      002614 AD 83            [24] 1193 	mov	r5,dph
      002616 AE F0            [24] 1194 	mov	r6,b
      002618 FF               [12] 1195 	mov	r7,a
      002619 E5 81            [12] 1196 	mov	a,sp
      00261B 24 FC            [12] 1197 	add	a,#0xfc
      00261D F5 81            [12] 1198 	mov	sp,a
      00261F D0 02            [24] 1199 	pop	ar2
      002621 D0 03            [24] 1200 	pop	ar3
      002623 8D 04            [24] 1201 	mov	ar4,r5
      002625 EE               [12] 1202 	mov	a,r6
      002626 A2 E7            [12] 1203 	mov	c,acc.7
      002628 CC               [12] 1204 	xch	a,r4
      002629 33               [12] 1205 	rlc	a
      00262A CC               [12] 1206 	xch	a,r4
      00262B 33               [12] 1207 	rlc	a
      00262C A2 E7            [12] 1208 	mov	c,acc.7
      00262E CC               [12] 1209 	xch	a,r4
      00262F 33               [12] 1210 	rlc	a
      002630 CC               [12] 1211 	xch	a,r4
      002631 33               [12] 1212 	rlc	a
      002632 CC               [12] 1213 	xch	a,r4
      002633 54 03            [12] 1214 	anl	a,#0x03
      002635 FD               [12] 1215 	mov	r5,a
      002636 EF               [12] 1216 	mov	a,r7
      002637 2F               [12] 1217 	add	a,r7
      002638 25 E0            [12] 1218 	add	a,acc
      00263A 4D               [12] 1219 	orl	a,r5
      00263B FD               [12] 1220 	mov	r5,a
      00263C EF               [12] 1221 	mov	a,r7
      00263D 23               [12] 1222 	rl	a
      00263E 23               [12] 1223 	rl	a
      00263F 54 03            [12] 1224 	anl	a,#0x03
      002641 30 E1 02         [24] 1225 	jnb	acc.1,00289$
      002644 44 FC            [12] 1226 	orl	a,#0xfc
      002646                       1227 00289$:
      002646 FE               [12] 1228 	mov	r6,a
      002647 33               [12] 1229 	rlc	a
      002648 95 E0            [12] 1230 	subb	a,acc
      00264A FF               [12] 1231 	mov	r7,a
                                   1232 ;	fix_fft.c:157: b = c & 0x01;
      00264B 8C 02            [24] 1233 	mov	ar2,r4
      00264D 8D 03            [24] 1234 	mov	ar3,r5
      00264F 53 02 01         [24] 1235 	anl	ar2,#0x01
      002652 7B 00            [12] 1236 	mov	r3,#0x00
                                   1237 ;	fix_fft.c:159: a = (c >> 1) + b;
      002654 EF               [12] 1238 	mov	a,r7
      002655 A2 E7            [12] 1239 	mov	c,acc.7
      002657 13               [12] 1240 	rrc	a
      002658 EE               [12] 1241 	mov	a,r6
      002659 13               [12] 1242 	rrc	a
      00265A ED               [12] 1243 	mov	a,r5
      00265B 13               [12] 1244 	rrc	a
      00265C FD               [12] 1245 	mov	r5,a
      00265D EC               [12] 1246 	mov	a,r4
      00265E 13               [12] 1247 	rrc	a
      00265F FC               [12] 1248 	mov	r4,a
      002660 E5 10            [12] 1249 	mov	a,_bp
      002662 24 36            [12] 1250 	add	a,#0x36
      002664 F8               [12] 1251 	mov	r0,a
      002665 EA               [12] 1252 	mov	a,r2
      002666 2C               [12] 1253 	add	a,r4
      002667 F6               [12] 1254 	mov	@r0,a
      002668 EB               [12] 1255 	mov	a,r3
      002669 3D               [12] 1256 	addc	a,r5
      00266A 08               [12] 1257 	inc	r0
      00266B F6               [12] 1258 	mov	@r0,a
                                   1259 ;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
      00266C E5 10            [12] 1260 	mov	a,_bp
      00266E 24 FB            [12] 1261 	add	a,#0xfb
      002670 F8               [12] 1262 	mov	r0,a
      002671 E5 10            [12] 1263 	mov	a,_bp
      002673 24 09            [12] 1264 	add	a,#0x09
      002675 F9               [12] 1265 	mov	r1,a
      002676 E7               [12] 1266 	mov	a,@r1
      002677 26               [12] 1267 	add	a,@r0
      002678 FD               [12] 1268 	mov	r5,a
      002679 09               [12] 1269 	inc	r1
      00267A E7               [12] 1270 	mov	a,@r1
      00267B 08               [12] 1271 	inc	r0
      00267C 36               [12] 1272 	addc	a,@r0
      00267D FE               [12] 1273 	mov	r6,a
      00267E 08               [12] 1274 	inc	r0
      00267F 86 07            [24] 1275 	mov	ar7,@r0
      002681 8D 82            [24] 1276 	mov	dpl,r5
      002683 8E 83            [24] 1277 	mov	dph,r6
      002685 8F F0            [24] 1278 	mov	b,r7
      002687 E5 10            [12] 1279 	mov	a,_bp
      002689 24 34            [12] 1280 	add	a,#0x34
      00268B F8               [12] 1281 	mov	r0,a
      00268C 12 31 3D         [24] 1282 	lcall	__gptrget
      00268F F6               [12] 1283 	mov	@r0,a
      002690 A3               [24] 1284 	inc	dptr
      002691 12 31 3D         [24] 1285 	lcall	__gptrget
      002694 08               [12] 1286 	inc	r0
      002695 F6               [12] 1287 	mov	@r0,a
      002696 E5 10            [12] 1288 	mov	a,_bp
      002698 24 34            [12] 1289 	add	a,#0x34
      00269A F8               [12] 1290 	mov	r0,a
      00269B 86 04            [24] 1291 	mov	ar4,@r0
      00269D 08               [12] 1292 	inc	r0
      00269E 86 07            [24] 1293 	mov	ar7,@r0
                                   1294 ;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
      0026A0 E5 10            [12] 1295 	mov	a,_bp
      0026A2 24 32            [12] 1296 	add	a,#0x32
      0026A4 F8               [12] 1297 	mov	r0,a
      0026A5 E5 10            [12] 1298 	mov	a,_bp
      0026A7 24 14            [12] 1299 	add	a,#0x14
      0026A9 F9               [12] 1300 	mov	r1,a
      0026AA E6               [12] 1301 	mov	a,@r0
      0026AB F7               [12] 1302 	mov	@r1,a
      0026AC 08               [12] 1303 	inc	r0
      0026AD 09               [12] 1304 	inc	r1
      0026AE E6               [12] 1305 	mov	a,@r0
      0026AF F7               [12] 1306 	mov	@r1,a
      0026B0 E6               [12] 1307 	mov	a,@r0
      0026B1 33               [12] 1308 	rlc	a
      0026B2 95 E0            [12] 1309 	subb	a,acc
      0026B4 09               [12] 1310 	inc	r1
      0026B5 F7               [12] 1311 	mov	@r1,a
      0026B6 09               [12] 1312 	inc	r1
      0026B7 F7               [12] 1313 	mov	@r1,a
      0026B8 EF               [12] 1314 	mov	a,r7
      0026B9 FD               [12] 1315 	mov	r5,a
      0026BA 33               [12] 1316 	rlc	a
      0026BB 95 E0            [12] 1317 	subb	a,acc
      0026BD FE               [12] 1318 	mov	r6,a
      0026BE FF               [12] 1319 	mov	r7,a
      0026BF C0 03            [24] 1320 	push	ar3
      0026C1 C0 02            [24] 1321 	push	ar2
      0026C3 C0 04            [24] 1322 	push	ar4
      0026C5 C0 05            [24] 1323 	push	ar5
      0026C7 C0 06            [24] 1324 	push	ar6
      0026C9 C0 07            [24] 1325 	push	ar7
      0026CB E5 10            [12] 1326 	mov	a,_bp
      0026CD 24 14            [12] 1327 	add	a,#0x14
      0026CF F8               [12] 1328 	mov	r0,a
      0026D0 86 82            [24] 1329 	mov	dpl,@r0
      0026D2 08               [12] 1330 	inc	r0
      0026D3 86 83            [24] 1331 	mov	dph,@r0
      0026D5 08               [12] 1332 	inc	r0
      0026D6 86 F0            [24] 1333 	mov	b,@r0
      0026D8 08               [12] 1334 	inc	r0
      0026D9 E6               [12] 1335 	mov	a,@r0
      0026DA 12 31 59         [24] 1336 	lcall	__mullong
      0026DD AD 83            [24] 1337 	mov	r5,dph
      0026DF AE F0            [24] 1338 	mov	r6,b
      0026E1 FF               [12] 1339 	mov	r7,a
      0026E2 E5 81            [12] 1340 	mov	a,sp
      0026E4 24 FC            [12] 1341 	add	a,#0xfc
      0026E6 F5 81            [12] 1342 	mov	sp,a
      0026E8 D0 02            [24] 1343 	pop	ar2
      0026EA D0 03            [24] 1344 	pop	ar3
      0026EC 8D 04            [24] 1345 	mov	ar4,r5
      0026EE EE               [12] 1346 	mov	a,r6
      0026EF A2 E7            [12] 1347 	mov	c,acc.7
      0026F1 CC               [12] 1348 	xch	a,r4
      0026F2 33               [12] 1349 	rlc	a
      0026F3 CC               [12] 1350 	xch	a,r4
      0026F4 33               [12] 1351 	rlc	a
      0026F5 A2 E7            [12] 1352 	mov	c,acc.7
      0026F7 CC               [12] 1353 	xch	a,r4
      0026F8 33               [12] 1354 	rlc	a
      0026F9 CC               [12] 1355 	xch	a,r4
      0026FA 33               [12] 1356 	rlc	a
      0026FB CC               [12] 1357 	xch	a,r4
      0026FC 54 03            [12] 1358 	anl	a,#0x03
      0026FE FD               [12] 1359 	mov	r5,a
      0026FF EF               [12] 1360 	mov	a,r7
      002700 2F               [12] 1361 	add	a,r7
      002701 25 E0            [12] 1362 	add	a,acc
      002703 4D               [12] 1363 	orl	a,r5
      002704 FD               [12] 1364 	mov	r5,a
      002705 EF               [12] 1365 	mov	a,r7
      002706 23               [12] 1366 	rl	a
      002707 23               [12] 1367 	rl	a
      002708 54 03            [12] 1368 	anl	a,#0x03
      00270A 30 E1 02         [24] 1369 	jnb	acc.1,00290$
      00270D 44 FC            [12] 1370 	orl	a,#0xfc
      00270F                       1371 00290$:
      00270F FE               [12] 1372 	mov	r6,a
      002710 33               [12] 1373 	rlc	a
      002711 95 E0            [12] 1374 	subb	a,acc
      002713 FF               [12] 1375 	mov	r7,a
                                   1376 ;	fix_fft.c:157: b = c & 0x01;
      002714 8C 02            [24] 1377 	mov	ar2,r4
      002716 8D 03            [24] 1378 	mov	ar3,r5
      002718 53 02 01         [24] 1379 	anl	ar2,#0x01
      00271B 7B 00            [12] 1380 	mov	r3,#0x00
                                   1381 ;	fix_fft.c:159: a = (c >> 1) + b;
      00271D EF               [12] 1382 	mov	a,r7
      00271E A2 E7            [12] 1383 	mov	c,acc.7
      002720 13               [12] 1384 	rrc	a
      002721 EE               [12] 1385 	mov	a,r6
      002722 13               [12] 1386 	rrc	a
      002723 ED               [12] 1387 	mov	a,r5
      002724 13               [12] 1388 	rrc	a
      002725 FD               [12] 1389 	mov	r5,a
      002726 EC               [12] 1390 	mov	a,r4
      002727 13               [12] 1391 	rrc	a
      002728 2A               [12] 1392 	add	a,r2
      002729 FA               [12] 1393 	mov	r2,a
      00272A EB               [12] 1394 	mov	a,r3
      00272B 3D               [12] 1395 	addc	a,r5
      00272C FB               [12] 1396 	mov	r3,a
                                   1397 ;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
      00272D E5 10            [12] 1398 	mov	a,_bp
      00272F 24 36            [12] 1399 	add	a,#0x36
      002731 F8               [12] 1400 	mov	r0,a
      002732 E6               [12] 1401 	mov	a,@r0
      002733 C3               [12] 1402 	clr	c
      002734 9A               [12] 1403 	subb	a,r2
      002735 FA               [12] 1404 	mov	r2,a
      002736 08               [12] 1405 	inc	r0
      002737 E6               [12] 1406 	mov	a,@r0
      002738 9B               [12] 1407 	subb	a,r3
      002739 FB               [12] 1408 	mov	r3,a
      00273A E5 10            [12] 1409 	mov	a,_bp
      00273C 24 2C            [12] 1410 	add	a,#0x2c
      00273E F8               [12] 1411 	mov	r0,a
      00273F A6 02            [24] 1412 	mov	@r0,ar2
      002741 08               [12] 1413 	inc	r0
      002742 A6 03            [24] 1414 	mov	@r0,ar3
                                   1415 ;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
      002744 E5 10            [12] 1416 	mov	a,_bp
      002746 24 34            [12] 1417 	add	a,#0x34
      002748 F8               [12] 1418 	mov	r0,a
      002749 86 04            [24] 1419 	mov	ar4,@r0
      00274B 08               [12] 1420 	inc	r0
      00274C E6               [12] 1421 	mov	a,@r0
      00274D FD               [12] 1422 	mov	r5,a
      00274E 33               [12] 1423 	rlc	a
      00274F 95 E0            [12] 1424 	subb	a,acc
      002751 FE               [12] 1425 	mov	r6,a
      002752 FF               [12] 1426 	mov	r7,a
      002753 C0 03            [24] 1427 	push	ar3
      002755 C0 02            [24] 1428 	push	ar2
      002757 C0 04            [24] 1429 	push	ar4
      002759 C0 05            [24] 1430 	push	ar5
      00275B C0 06            [24] 1431 	push	ar6
      00275D C0 07            [24] 1432 	push	ar7
      00275F E5 10            [12] 1433 	mov	a,_bp
      002761 24 10            [12] 1434 	add	a,#0x10
      002763 F8               [12] 1435 	mov	r0,a
      002764 86 82            [24] 1436 	mov	dpl,@r0
      002766 08               [12] 1437 	inc	r0
      002767 86 83            [24] 1438 	mov	dph,@r0
      002769 08               [12] 1439 	inc	r0
      00276A 86 F0            [24] 1440 	mov	b,@r0
      00276C 08               [12] 1441 	inc	r0
      00276D E6               [12] 1442 	mov	a,@r0
      00276E 12 31 59         [24] 1443 	lcall	__mullong
      002771 AD 83            [24] 1444 	mov	r5,dph
      002773 AE F0            [24] 1445 	mov	r6,b
      002775 FF               [12] 1446 	mov	r7,a
      002776 E5 81            [12] 1447 	mov	a,sp
      002778 24 FC            [12] 1448 	add	a,#0xfc
      00277A F5 81            [12] 1449 	mov	sp,a
      00277C D0 02            [24] 1450 	pop	ar2
      00277E D0 03            [24] 1451 	pop	ar3
      002780 8D 04            [24] 1452 	mov	ar4,r5
      002782 EE               [12] 1453 	mov	a,r6
      002783 A2 E7            [12] 1454 	mov	c,acc.7
      002785 CC               [12] 1455 	xch	a,r4
      002786 33               [12] 1456 	rlc	a
      002787 CC               [12] 1457 	xch	a,r4
      002788 33               [12] 1458 	rlc	a
      002789 A2 E7            [12] 1459 	mov	c,acc.7
      00278B CC               [12] 1460 	xch	a,r4
      00278C 33               [12] 1461 	rlc	a
      00278D CC               [12] 1462 	xch	a,r4
      00278E 33               [12] 1463 	rlc	a
      00278F CC               [12] 1464 	xch	a,r4
      002790 54 03            [12] 1465 	anl	a,#0x03
      002792 FD               [12] 1466 	mov	r5,a
      002793 EF               [12] 1467 	mov	a,r7
      002794 2F               [12] 1468 	add	a,r7
      002795 25 E0            [12] 1469 	add	a,acc
      002797 4D               [12] 1470 	orl	a,r5
      002798 FD               [12] 1471 	mov	r5,a
      002799 EF               [12] 1472 	mov	a,r7
      00279A 23               [12] 1473 	rl	a
      00279B 23               [12] 1474 	rl	a
      00279C 54 03            [12] 1475 	anl	a,#0x03
      00279E 30 E1 02         [24] 1476 	jnb	acc.1,00291$
      0027A1 44 FC            [12] 1477 	orl	a,#0xfc
      0027A3                       1478 00291$:
      0027A3 FE               [12] 1479 	mov	r6,a
      0027A4 33               [12] 1480 	rlc	a
      0027A5 95 E0            [12] 1481 	subb	a,acc
      0027A7 FF               [12] 1482 	mov	r7,a
                                   1483 ;	fix_fft.c:157: b = c & 0x01;
      0027A8 8C 02            [24] 1484 	mov	ar2,r4
      0027AA 8D 03            [24] 1485 	mov	ar3,r5
      0027AC 53 02 01         [24] 1486 	anl	ar2,#0x01
      0027AF 7B 00            [12] 1487 	mov	r3,#0x00
                                   1488 ;	fix_fft.c:159: a = (c >> 1) + b;
      0027B1 EF               [12] 1489 	mov	a,r7
      0027B2 A2 E7            [12] 1490 	mov	c,acc.7
      0027B4 13               [12] 1491 	rrc	a
      0027B5 EE               [12] 1492 	mov	a,r6
      0027B6 13               [12] 1493 	rrc	a
      0027B7 ED               [12] 1494 	mov	a,r5
      0027B8 13               [12] 1495 	rrc	a
      0027B9 FD               [12] 1496 	mov	r5,a
      0027BA EC               [12] 1497 	mov	a,r4
      0027BB 13               [12] 1498 	rrc	a
      0027BC FC               [12] 1499 	mov	r4,a
      0027BD E5 10            [12] 1500 	mov	a,_bp
      0027BF 24 34            [12] 1501 	add	a,#0x34
      0027C1 F8               [12] 1502 	mov	r0,a
      0027C2 EA               [12] 1503 	mov	a,r2
      0027C3 2C               [12] 1504 	add	a,r4
      0027C4 F6               [12] 1505 	mov	@r0,a
      0027C5 EB               [12] 1506 	mov	a,r3
      0027C6 3D               [12] 1507 	addc	a,r5
      0027C7 08               [12] 1508 	inc	r0
      0027C8 F6               [12] 1509 	mov	@r0,a
                                   1510 ;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
      0027C9 E5 10            [12] 1511 	mov	a,_bp
      0027CB 24 34            [12] 1512 	add	a,#0x34
      0027CD F8               [12] 1513 	mov	r0,a
      0027CE 86 04            [24] 1514 	mov	ar4,@r0
      0027D0 08               [12] 1515 	inc	r0
      0027D1 E6               [12] 1516 	mov	a,@r0
      0027D2 FD               [12] 1517 	mov	r5,a
      0027D3 33               [12] 1518 	rlc	a
      0027D4 95 E0            [12] 1519 	subb	a,acc
      0027D6 FE               [12] 1520 	mov	r6,a
      0027D7 FF               [12] 1521 	mov	r7,a
      0027D8 C0 03            [24] 1522 	push	ar3
      0027DA C0 02            [24] 1523 	push	ar2
      0027DC C0 04            [24] 1524 	push	ar4
      0027DE C0 05            [24] 1525 	push	ar5
      0027E0 C0 06            [24] 1526 	push	ar6
      0027E2 C0 07            [24] 1527 	push	ar7
      0027E4 E5 10            [12] 1528 	mov	a,_bp
      0027E6 24 14            [12] 1529 	add	a,#0x14
      0027E8 F8               [12] 1530 	mov	r0,a
      0027E9 86 82            [24] 1531 	mov	dpl,@r0
      0027EB 08               [12] 1532 	inc	r0
      0027EC 86 83            [24] 1533 	mov	dph,@r0
      0027EE 08               [12] 1534 	inc	r0
      0027EF 86 F0            [24] 1535 	mov	b,@r0
      0027F1 08               [12] 1536 	inc	r0
      0027F2 E6               [12] 1537 	mov	a,@r0
      0027F3 12 31 59         [24] 1538 	lcall	__mullong
      0027F6 AD 83            [24] 1539 	mov	r5,dph
      0027F8 AE F0            [24] 1540 	mov	r6,b
      0027FA FF               [12] 1541 	mov	r7,a
      0027FB E5 81            [12] 1542 	mov	a,sp
      0027FD 24 FC            [12] 1543 	add	a,#0xfc
      0027FF F5 81            [12] 1544 	mov	sp,a
      002801 D0 02            [24] 1545 	pop	ar2
      002803 D0 03            [24] 1546 	pop	ar3
      002805 8D 04            [24] 1547 	mov	ar4,r5
      002807 EE               [12] 1548 	mov	a,r6
      002808 A2 E7            [12] 1549 	mov	c,acc.7
      00280A CC               [12] 1550 	xch	a,r4
      00280B 33               [12] 1551 	rlc	a
      00280C CC               [12] 1552 	xch	a,r4
      00280D 33               [12] 1553 	rlc	a
      00280E A2 E7            [12] 1554 	mov	c,acc.7
      002810 CC               [12] 1555 	xch	a,r4
      002811 33               [12] 1556 	rlc	a
      002812 CC               [12] 1557 	xch	a,r4
      002813 33               [12] 1558 	rlc	a
      002814 CC               [12] 1559 	xch	a,r4
      002815 54 03            [12] 1560 	anl	a,#0x03
      002817 FD               [12] 1561 	mov	r5,a
      002818 EF               [12] 1562 	mov	a,r7
      002819 2F               [12] 1563 	add	a,r7
      00281A 25 E0            [12] 1564 	add	a,acc
      00281C 4D               [12] 1565 	orl	a,r5
      00281D FD               [12] 1566 	mov	r5,a
      00281E EF               [12] 1567 	mov	a,r7
      00281F 23               [12] 1568 	rl	a
      002820 23               [12] 1569 	rl	a
      002821 54 03            [12] 1570 	anl	a,#0x03
      002823 30 E1 02         [24] 1571 	jnb	acc.1,00292$
      002826 44 FC            [12] 1572 	orl	a,#0xfc
      002828                       1573 00292$:
      002828 FE               [12] 1574 	mov	r6,a
      002829 33               [12] 1575 	rlc	a
      00282A 95 E0            [12] 1576 	subb	a,acc
      00282C FF               [12] 1577 	mov	r7,a
                                   1578 ;	fix_fft.c:157: b = c & 0x01;
      00282D 8C 02            [24] 1579 	mov	ar2,r4
      00282F 8D 03            [24] 1580 	mov	ar3,r5
      002831 53 02 01         [24] 1581 	anl	ar2,#0x01
      002834 7B 00            [12] 1582 	mov	r3,#0x00
                                   1583 ;	fix_fft.c:159: a = (c >> 1) + b;
      002836 EF               [12] 1584 	mov	a,r7
      002837 A2 E7            [12] 1585 	mov	c,acc.7
      002839 13               [12] 1586 	rrc	a
      00283A EE               [12] 1587 	mov	a,r6
      00283B 13               [12] 1588 	rrc	a
      00283C ED               [12] 1589 	mov	a,r5
      00283D 13               [12] 1590 	rrc	a
      00283E FD               [12] 1591 	mov	r5,a
      00283F EC               [12] 1592 	mov	a,r4
      002840 13               [12] 1593 	rrc	a
      002841 2A               [12] 1594 	add	a,r2
      002842 FA               [12] 1595 	mov	r2,a
      002843 EB               [12] 1596 	mov	a,r3
      002844 3D               [12] 1597 	addc	a,r5
      002845 FB               [12] 1598 	mov	r3,a
                                   1599 ;	fix_fft.c:254: ti = FIX_MPY(wr, fi[j]) + FIX_MPY(wi, fr[j]);
      002846 E5 10            [12] 1600 	mov	a,_bp
      002848 24 34            [12] 1601 	add	a,#0x34
      00284A F8               [12] 1602 	mov	r0,a
      00284B EA               [12] 1603 	mov	a,r2
      00284C 26               [12] 1604 	add	a,@r0
      00284D FA               [12] 1605 	mov	r2,a
      00284E EB               [12] 1606 	mov	a,r3
      00284F 08               [12] 1607 	inc	r0
      002850 36               [12] 1608 	addc	a,@r0
      002851 FB               [12] 1609 	mov	r3,a
      002852 E5 10            [12] 1610 	mov	a,_bp
      002854 24 2E            [12] 1611 	add	a,#0x2e
      002856 F8               [12] 1612 	mov	r0,a
      002857 A6 02            [24] 1613 	mov	@r0,ar2
      002859 08               [12] 1614 	inc	r0
      00285A A6 03            [24] 1615 	mov	@r0,ar3
                                   1616 ;	fix_fft.c:255: qr = fr[i];
      00285C E5 10            [12] 1617 	mov	a,_bp
      00285E 24 1A            [12] 1618 	add	a,#0x1a
      002860 F8               [12] 1619 	mov	r0,a
      002861 E6               [12] 1620 	mov	a,@r0
      002862 26               [12] 1621 	add	a,@r0
      002863 FE               [12] 1622 	mov	r6,a
      002864 08               [12] 1623 	inc	r0
      002865 E6               [12] 1624 	mov	a,@r0
      002866 33               [12] 1625 	rlc	a
      002867 FF               [12] 1626 	mov	r7,a
      002868 A8 10            [24] 1627 	mov	r0,_bp
      00286A 08               [12] 1628 	inc	r0
      00286B EE               [12] 1629 	mov	a,r6
      00286C 26               [12] 1630 	add	a,@r0
      00286D FB               [12] 1631 	mov	r3,a
      00286E EF               [12] 1632 	mov	a,r7
      00286F 08               [12] 1633 	inc	r0
      002870 36               [12] 1634 	addc	a,@r0
      002871 FC               [12] 1635 	mov	r4,a
      002872 08               [12] 1636 	inc	r0
      002873 86 05            [24] 1637 	mov	ar5,@r0
      002875 8B 82            [24] 1638 	mov	dpl,r3
      002877 8C 83            [24] 1639 	mov	dph,r4
      002879 8D F0            [24] 1640 	mov	b,r5
      00287B E5 10            [12] 1641 	mov	a,_bp
      00287D 24 28            [12] 1642 	add	a,#0x28
      00287F F8               [12] 1643 	mov	r0,a
      002880 12 31 3D         [24] 1644 	lcall	__gptrget
      002883 F6               [12] 1645 	mov	@r0,a
      002884 A3               [24] 1646 	inc	dptr
      002885 12 31 3D         [24] 1647 	lcall	__gptrget
      002888 08               [12] 1648 	inc	r0
      002889 F6               [12] 1649 	mov	@r0,a
                                   1650 ;	fix_fft.c:256: qi = fi[i];
      00288A E5 10            [12] 1651 	mov	a,_bp
      00288C 24 FB            [12] 1652 	add	a,#0xfb
      00288E F8               [12] 1653 	mov	r0,a
      00288F EE               [12] 1654 	mov	a,r6
      002890 26               [12] 1655 	add	a,@r0
      002891 FE               [12] 1656 	mov	r6,a
      002892 EF               [12] 1657 	mov	a,r7
      002893 08               [12] 1658 	inc	r0
      002894 36               [12] 1659 	addc	a,@r0
      002895 FF               [12] 1660 	mov	r7,a
      002896 08               [12] 1661 	inc	r0
      002897 86 05            [24] 1662 	mov	ar5,@r0
      002899 8E 82            [24] 1663 	mov	dpl,r6
      00289B 8F 83            [24] 1664 	mov	dph,r7
      00289D 8D F0            [24] 1665 	mov	b,r5
      00289F E5 10            [12] 1666 	mov	a,_bp
      0028A1 24 2A            [12] 1667 	add	a,#0x2a
      0028A3 F8               [12] 1668 	mov	r0,a
      0028A4 12 31 3D         [24] 1669 	lcall	__gptrget
      0028A7 F6               [12] 1670 	mov	@r0,a
      0028A8 A3               [24] 1671 	inc	dptr
      0028A9 12 31 3D         [24] 1672 	lcall	__gptrget
      0028AC 08               [12] 1673 	inc	r0
      0028AD F6               [12] 1674 	mov	@r0,a
                                   1675 ;	fix_fft.c:258: if (shift) {
      0028AE D0 03            [24] 1676 	pop	ar3
      0028B0 D0 02            [24] 1677 	pop	ar2
      0028B2 E5 10            [12] 1678 	mov	a,_bp
      0028B4 24 26            [12] 1679 	add	a,#0x26
      0028B6 F8               [12] 1680 	mov	r0,a
      0028B7 E6               [12] 1681 	mov	a,@r0
      0028B8 08               [12] 1682 	inc	r0
      0028B9 46               [12] 1683 	orl	a,@r0
      0028BA 60 20            [24] 1684 	jz	00128$
                                   1685 ;	fix_fft.c:259: qr >>= 1;
      0028BC E5 10            [12] 1686 	mov	a,_bp
      0028BE 24 28            [12] 1687 	add	a,#0x28
      0028C0 F8               [12] 1688 	mov	r0,a
      0028C1 08               [12] 1689 	inc	r0
      0028C2 E6               [12] 1690 	mov	a,@r0
      0028C3 18               [12] 1691 	dec	r0
      0028C4 A2 E7            [12] 1692 	mov	c,acc.7
      0028C6 13               [12] 1693 	rrc	a
      0028C7 C6               [12] 1694 	xch	a,@r0
      0028C8 13               [12] 1695 	rrc	a
      0028C9 C6               [12] 1696 	xch	a,@r0
      0028CA 08               [12] 1697 	inc	r0
      0028CB F6               [12] 1698 	mov	@r0,a
                                   1699 ;	fix_fft.c:260: qi >>= 1;
      0028CC E5 10            [12] 1700 	mov	a,_bp
      0028CE 24 2A            [12] 1701 	add	a,#0x2a
      0028D0 F8               [12] 1702 	mov	r0,a
      0028D1 08               [12] 1703 	inc	r0
      0028D2 E6               [12] 1704 	mov	a,@r0
      0028D3 18               [12] 1705 	dec	r0
      0028D4 A2 E7            [12] 1706 	mov	c,acc.7
      0028D6 13               [12] 1707 	rrc	a
      0028D7 C6               [12] 1708 	xch	a,@r0
      0028D8 13               [12] 1709 	rrc	a
      0028D9 C6               [12] 1710 	xch	a,@r0
      0028DA 08               [12] 1711 	inc	r0
      0028DB F6               [12] 1712 	mov	@r0,a
      0028DC                       1713 00128$:
                                   1714 ;	fix_fft.c:263: fr[j] = qr - tr;
      0028DC C0 02            [24] 1715 	push	ar2
      0028DE C0 03            [24] 1716 	push	ar3
      0028E0 E5 10            [12] 1717 	mov	a,_bp
      0028E2 24 0D            [12] 1718 	add	a,#0x0d
      0028E4 F8               [12] 1719 	mov	r0,a
      0028E5 E6               [12] 1720 	mov	a,@r0
      0028E6 26               [12] 1721 	add	a,@r0
      0028E7 FE               [12] 1722 	mov	r6,a
      0028E8 08               [12] 1723 	inc	r0
      0028E9 E6               [12] 1724 	mov	a,@r0
      0028EA 33               [12] 1725 	rlc	a
      0028EB FF               [12] 1726 	mov	r7,a
      0028EC A8 10            [24] 1727 	mov	r0,_bp
      0028EE 08               [12] 1728 	inc	r0
      0028EF E5 10            [12] 1729 	mov	a,_bp
      0028F1 24 14            [12] 1730 	add	a,#0x14
      0028F3 F9               [12] 1731 	mov	r1,a
      0028F4 EE               [12] 1732 	mov	a,r6
      0028F5 26               [12] 1733 	add	a,@r0
      0028F6 F7               [12] 1734 	mov	@r1,a
      0028F7 EF               [12] 1735 	mov	a,r7
      0028F8 08               [12] 1736 	inc	r0
      0028F9 36               [12] 1737 	addc	a,@r0
      0028FA 09               [12] 1738 	inc	r1
      0028FB F7               [12] 1739 	mov	@r1,a
      0028FC 08               [12] 1740 	inc	r0
      0028FD 09               [12] 1741 	inc	r1
      0028FE E6               [12] 1742 	mov	a,@r0
      0028FF F7               [12] 1743 	mov	@r1,a
      002900 E5 10            [12] 1744 	mov	a,_bp
      002902 24 28            [12] 1745 	add	a,#0x28
      002904 F8               [12] 1746 	mov	r0,a
      002905 E5 10            [12] 1747 	mov	a,_bp
      002907 24 2C            [12] 1748 	add	a,#0x2c
      002909 F9               [12] 1749 	mov	r1,a
      00290A E6               [12] 1750 	mov	a,@r0
      00290B C3               [12] 1751 	clr	c
      00290C 97               [12] 1752 	subb	a,@r1
      00290D FA               [12] 1753 	mov	r2,a
      00290E 08               [12] 1754 	inc	r0
      00290F E6               [12] 1755 	mov	a,@r0
      002910 09               [12] 1756 	inc	r1
      002911 97               [12] 1757 	subb	a,@r1
      002912 FD               [12] 1758 	mov	r5,a
      002913 E5 10            [12] 1759 	mov	a,_bp
      002915 24 14            [12] 1760 	add	a,#0x14
      002917 F8               [12] 1761 	mov	r0,a
      002918 86 82            [24] 1762 	mov	dpl,@r0
      00291A 08               [12] 1763 	inc	r0
      00291B 86 83            [24] 1764 	mov	dph,@r0
      00291D 08               [12] 1765 	inc	r0
      00291E 86 F0            [24] 1766 	mov	b,@r0
      002920 EA               [12] 1767 	mov	a,r2
      002921 12 2F 72         [24] 1768 	lcall	__gptrput
      002924 A3               [24] 1769 	inc	dptr
      002925 ED               [12] 1770 	mov	a,r5
      002926 12 2F 72         [24] 1771 	lcall	__gptrput
                                   1772 ;	fix_fft.c:264: fi[j] = qi - ti;
      002929 E5 10            [12] 1773 	mov	a,_bp
      00292B 24 FB            [12] 1774 	add	a,#0xfb
      00292D F8               [12] 1775 	mov	r0,a
      00292E EE               [12] 1776 	mov	a,r6
      00292F 26               [12] 1777 	add	a,@r0
      002930 FE               [12] 1778 	mov	r6,a
      002931 EF               [12] 1779 	mov	a,r7
      002932 08               [12] 1780 	inc	r0
      002933 36               [12] 1781 	addc	a,@r0
      002934 FF               [12] 1782 	mov	r7,a
      002935 08               [12] 1783 	inc	r0
      002936 86 05            [24] 1784 	mov	ar5,@r0
      002938 E5 10            [12] 1785 	mov	a,_bp
      00293A 24 2A            [12] 1786 	add	a,#0x2a
      00293C F8               [12] 1787 	mov	r0,a
      00293D E5 10            [12] 1788 	mov	a,_bp
      00293F 24 2E            [12] 1789 	add	a,#0x2e
      002941 F9               [12] 1790 	mov	r1,a
      002942 E6               [12] 1791 	mov	a,@r0
      002943 C3               [12] 1792 	clr	c
      002944 97               [12] 1793 	subb	a,@r1
      002945 FB               [12] 1794 	mov	r3,a
      002946 08               [12] 1795 	inc	r0
      002947 E6               [12] 1796 	mov	a,@r0
      002948 09               [12] 1797 	inc	r1
      002949 97               [12] 1798 	subb	a,@r1
      00294A FC               [12] 1799 	mov	r4,a
      00294B 8E 82            [24] 1800 	mov	dpl,r6
      00294D 8F 83            [24] 1801 	mov	dph,r7
      00294F 8D F0            [24] 1802 	mov	b,r5
      002951 EB               [12] 1803 	mov	a,r3
      002952 12 2F 72         [24] 1804 	lcall	__gptrput
      002955 A3               [24] 1805 	inc	dptr
      002956 EC               [12] 1806 	mov	a,r4
      002957 12 2F 72         [24] 1807 	lcall	__gptrput
                                   1808 ;	fix_fft.c:265: fr[i] = qr + tr;
      00295A E5 10            [12] 1809 	mov	a,_bp
      00295C 24 1A            [12] 1810 	add	a,#0x1a
      00295E F8               [12] 1811 	mov	r0,a
      00295F E6               [12] 1812 	mov	a,@r0
      002960 26               [12] 1813 	add	a,@r0
      002961 FE               [12] 1814 	mov	r6,a
      002962 08               [12] 1815 	inc	r0
      002963 E6               [12] 1816 	mov	a,@r0
      002964 33               [12] 1817 	rlc	a
      002965 FF               [12] 1818 	mov	r7,a
      002966 A8 10            [24] 1819 	mov	r0,_bp
      002968 08               [12] 1820 	inc	r0
      002969 E5 10            [12] 1821 	mov	a,_bp
      00296B 24 14            [12] 1822 	add	a,#0x14
      00296D F9               [12] 1823 	mov	r1,a
      00296E EE               [12] 1824 	mov	a,r6
      00296F 26               [12] 1825 	add	a,@r0
      002970 F7               [12] 1826 	mov	@r1,a
      002971 EF               [12] 1827 	mov	a,r7
      002972 08               [12] 1828 	inc	r0
      002973 36               [12] 1829 	addc	a,@r0
      002974 09               [12] 1830 	inc	r1
      002975 F7               [12] 1831 	mov	@r1,a
      002976 08               [12] 1832 	inc	r0
      002977 09               [12] 1833 	inc	r1
      002978 E6               [12] 1834 	mov	a,@r0
      002979 F7               [12] 1835 	mov	@r1,a
      00297A E5 10            [12] 1836 	mov	a,_bp
      00297C 24 28            [12] 1837 	add	a,#0x28
      00297E F8               [12] 1838 	mov	r0,a
      00297F E5 10            [12] 1839 	mov	a,_bp
      002981 24 2C            [12] 1840 	add	a,#0x2c
      002983 F9               [12] 1841 	mov	r1,a
      002984 E7               [12] 1842 	mov	a,@r1
      002985 26               [12] 1843 	add	a,@r0
      002986 FA               [12] 1844 	mov	r2,a
      002987 09               [12] 1845 	inc	r1
      002988 E7               [12] 1846 	mov	a,@r1
      002989 08               [12] 1847 	inc	r0
      00298A 36               [12] 1848 	addc	a,@r0
      00298B FD               [12] 1849 	mov	r5,a
      00298C E5 10            [12] 1850 	mov	a,_bp
      00298E 24 14            [12] 1851 	add	a,#0x14
      002990 F8               [12] 1852 	mov	r0,a
      002991 86 82            [24] 1853 	mov	dpl,@r0
      002993 08               [12] 1854 	inc	r0
      002994 86 83            [24] 1855 	mov	dph,@r0
      002996 08               [12] 1856 	inc	r0
      002997 86 F0            [24] 1857 	mov	b,@r0
      002999 EA               [12] 1858 	mov	a,r2
      00299A 12 2F 72         [24] 1859 	lcall	__gptrput
      00299D A3               [24] 1860 	inc	dptr
      00299E ED               [12] 1861 	mov	a,r5
      00299F 12 2F 72         [24] 1862 	lcall	__gptrput
                                   1863 ;	fix_fft.c:266: fi[i] = qi + ti;
      0029A2 E5 10            [12] 1864 	mov	a,_bp
      0029A4 24 FB            [12] 1865 	add	a,#0xfb
      0029A6 F8               [12] 1866 	mov	r0,a
      0029A7 EE               [12] 1867 	mov	a,r6
      0029A8 26               [12] 1868 	add	a,@r0
      0029A9 FE               [12] 1869 	mov	r6,a
      0029AA EF               [12] 1870 	mov	a,r7
      0029AB 08               [12] 1871 	inc	r0
      0029AC 36               [12] 1872 	addc	a,@r0
      0029AD FF               [12] 1873 	mov	r7,a
      0029AE 08               [12] 1874 	inc	r0
      0029AF 86 05            [24] 1875 	mov	ar5,@r0
      0029B1 E5 10            [12] 1876 	mov	a,_bp
      0029B3 24 2A            [12] 1877 	add	a,#0x2a
      0029B5 F8               [12] 1878 	mov	r0,a
      0029B6 E5 10            [12] 1879 	mov	a,_bp
      0029B8 24 2E            [12] 1880 	add	a,#0x2e
      0029BA F9               [12] 1881 	mov	r1,a
      0029BB E7               [12] 1882 	mov	a,@r1
      0029BC 26               [12] 1883 	add	a,@r0
      0029BD FB               [12] 1884 	mov	r3,a
      0029BE 09               [12] 1885 	inc	r1
      0029BF E7               [12] 1886 	mov	a,@r1
      0029C0 08               [12] 1887 	inc	r0
      0029C1 36               [12] 1888 	addc	a,@r0
      0029C2 FC               [12] 1889 	mov	r4,a
      0029C3 8E 82            [24] 1890 	mov	dpl,r6
      0029C5 8F 83            [24] 1891 	mov	dph,r7
      0029C7 8D F0            [24] 1892 	mov	b,r5
      0029C9 EB               [12] 1893 	mov	a,r3
      0029CA 12 2F 72         [24] 1894 	lcall	__gptrput
      0029CD A3               [24] 1895 	inc	dptr
      0029CE EC               [12] 1896 	mov	a,r4
      0029CF 12 2F 72         [24] 1897 	lcall	__gptrput
                                   1898 ;	fix_fft.c:250: for (i = m; i < n; i += istep) {
      0029D2 E5 10            [12] 1899 	mov	a,_bp
      0029D4 24 1A            [12] 1900 	add	a,#0x1a
      0029D6 F8               [12] 1901 	mov	r0,a
      0029D7 E5 10            [12] 1902 	mov	a,_bp
      0029D9 24 20            [12] 1903 	add	a,#0x20
      0029DB F9               [12] 1904 	mov	r1,a
      0029DC E7               [12] 1905 	mov	a,@r1
      0029DD 26               [12] 1906 	add	a,@r0
      0029DE F6               [12] 1907 	mov	@r0,a
      0029DF 09               [12] 1908 	inc	r1
      0029E0 E7               [12] 1909 	mov	a,@r1
      0029E1 08               [12] 1910 	inc	r0
      0029E2 36               [12] 1911 	addc	a,@r0
      0029E3 F6               [12] 1912 	mov	@r0,a
      0029E4 D0 03            [24] 1913 	pop	ar3
      0029E6 D0 02            [24] 1914 	pop	ar2
      0029E8 02 25 4F         [24] 1915 	ljmp	00144$
      0029EB                       1916 00148$:
                                   1917 ;	fix_fft.c:237: for (m = 0; m < l; m++) {
      0029EB 0A               [12] 1918 	inc	r2
      0029EC BA 00 01         [24] 1919 	cjne	r2,#0x00,00294$
      0029EF 0B               [12] 1920 	inc	r3
      0029F0                       1921 00294$:
      0029F0 02 24 87         [24] 1922 	ljmp	00147$
      0029F3                       1923 00130$:
                                   1924 ;	fix_fft.c:270: k--;
      0029F3 E5 10            [12] 1925 	mov	a,_bp
      0029F5 24 1E            [12] 1926 	add	a,#0x1e
      0029F7 F8               [12] 1927 	mov	r0,a
      0029F8 16               [12] 1928 	dec	@r0
      0029F9 B6 FF 02         [24] 1929 	cjne	@r0,#0xff,00295$
      0029FC 08               [12] 1930 	inc	r0
      0029FD 16               [12] 1931 	dec	@r0
      0029FE                       1932 00295$:
                                   1933 ;	fix_fft.c:271: l = istep;
      0029FE E5 10            [12] 1934 	mov	a,_bp
      002A00 24 20            [12] 1935 	add	a,#0x20
      002A02 F8               [12] 1936 	mov	r0,a
      002A03 E5 10            [12] 1937 	mov	a,_bp
      002A05 24 1C            [12] 1938 	add	a,#0x1c
      002A07 F9               [12] 1939 	mov	r1,a
      002A08 E6               [12] 1940 	mov	a,@r0
      002A09 F7               [12] 1941 	mov	@r1,a
      002A0A 08               [12] 1942 	inc	r0
      002A0B 09               [12] 1943 	inc	r1
      002A0C E6               [12] 1944 	mov	a,@r0
      002A0D F7               [12] 1945 	mov	@r1,a
      002A0E 02 23 32         [24] 1946 	ljmp	00131$
      002A11                       1947 00133$:
                                   1948 ;	fix_fft.c:274: return scale;
      002A11 E5 10            [12] 1949 	mov	a,_bp
      002A13 24 24            [12] 1950 	add	a,#0x24
      002A15 F8               [12] 1951 	mov	r0,a
      002A16 86 82            [24] 1952 	mov	dpl,@r0
      002A18 08               [12] 1953 	inc	r0
      002A19 86 83            [24] 1954 	mov	dph,@r0
      002A1B                       1955 00149$:
                                   1956 ;	fix_fft.c:275: }
      002A1B 85 10 81         [24] 1957 	mov	sp,_bp
      002A1E D0 10            [24] 1958 	pop	_bp
      002A20 22               [24] 1959 	ret
                                   1960 ;------------------------------------------------------------
                                   1961 ;Allocation info for local variables in function 'fix_fftr'
                                   1962 ;------------------------------------------------------------
                                   1963 ;m                         Allocated to stack - _bp -4
                                   1964 ;inverse                   Allocated to stack - _bp -6
                                   1965 ;f                         Allocated to stack - _bp +1
                                   1966 ;i                         Allocated to stack - _bp +12
                                   1967 ;N                         Allocated to stack - _bp +14
                                   1968 ;scale                     Allocated to registers r2 r4 
                                   1969 ;tt                        Allocated to stack - _bp +7
                                   1970 ;fr                        Allocated to registers 
                                   1971 ;fi                        Allocated to stack - _bp +9
                                   1972 ;sloc0                     Allocated to stack - _bp +4
                                   1973 ;------------------------------------------------------------
                                   1974 ;	fix_fft.c:291: int16_t fix_fftr(int16_t *f, int16_t m, int16_t inverse) {
                                   1975 ;	-----------------------------------------
                                   1976 ;	 function fix_fftr
                                   1977 ;	-----------------------------------------
      002A21                       1978 _fix_fftr:
      002A21 C0 10            [24] 1979 	push	_bp
      002A23 85 81 10         [24] 1980 	mov	_bp,sp
      002A26 C0 82            [24] 1981 	push	dpl
      002A28 C0 83            [24] 1982 	push	dph
      002A2A C0 F0            [24] 1983 	push	b
      002A2C E5 81            [12] 1984 	mov	a,sp
      002A2E 24 0C            [12] 1985 	add	a,#0x0c
      002A30 F5 81            [12] 1986 	mov	sp,a
                                   1987 ;	fix_fft.c:292: int16_t i, N = 1 << (m - 1), scale = 0;
      002A32 E5 10            [12] 1988 	mov	a,_bp
      002A34 24 FC            [12] 1989 	add	a,#0xfc
      002A36 F8               [12] 1990 	mov	r0,a
      002A37 86 04            [24] 1991 	mov	ar4,@r0
      002A39 1C               [12] 1992 	dec	r4
      002A3A 8C F0            [24] 1993 	mov	b,r4
      002A3C 05 F0            [12] 1994 	inc	b
      002A3E 7C 01            [12] 1995 	mov	r4,#0x01
      002A40 7B 00            [12] 1996 	mov	r3,#0x00
      002A42 80 06            [24] 1997 	sjmp	00128$
      002A44                       1998 00127$:
      002A44 EC               [12] 1999 	mov	a,r4
      002A45 2C               [12] 2000 	add	a,r4
      002A46 FC               [12] 2001 	mov	r4,a
      002A47 EB               [12] 2002 	mov	a,r3
      002A48 33               [12] 2003 	rlc	a
      002A49 FB               [12] 2004 	mov	r3,a
      002A4A                       2005 00128$:
      002A4A D5 F0 F7         [24] 2006 	djnz	b,00127$
      002A4D E5 10            [12] 2007 	mov	a,_bp
      002A4F 24 0E            [12] 2008 	add	a,#0x0e
      002A51 F8               [12] 2009 	mov	r0,a
      002A52 A6 04            [24] 2010 	mov	@r0,ar4
      002A54 08               [12] 2011 	inc	r0
      002A55 A6 03            [24] 2012 	mov	@r0,ar3
                                   2013 ;	fix_fft.c:293: int16_t tt, *fr = f, *fi = f + N;
      002A57 E4               [12] 2014 	clr	a
      002A58 FA               [12] 2015 	mov	r2,a
      002A59 FC               [12] 2016 	mov	r4,a
      002A5A E5 10            [12] 2017 	mov	a,_bp
      002A5C 24 0E            [12] 2018 	add	a,#0x0e
      002A5E F8               [12] 2019 	mov	r0,a
      002A5F E6               [12] 2020 	mov	a,@r0
      002A60 26               [12] 2021 	add	a,@r0
      002A61 FB               [12] 2022 	mov	r3,a
      002A62 08               [12] 2023 	inc	r0
      002A63 E6               [12] 2024 	mov	a,@r0
      002A64 33               [12] 2025 	rlc	a
      002A65 FF               [12] 2026 	mov	r7,a
      002A66 A8 10            [24] 2027 	mov	r0,_bp
      002A68 08               [12] 2028 	inc	r0
      002A69 EB               [12] 2029 	mov	a,r3
      002A6A 26               [12] 2030 	add	a,@r0
      002A6B FB               [12] 2031 	mov	r3,a
      002A6C EF               [12] 2032 	mov	a,r7
      002A6D 08               [12] 2033 	inc	r0
      002A6E 36               [12] 2034 	addc	a,@r0
      002A6F FF               [12] 2035 	mov	r7,a
      002A70 08               [12] 2036 	inc	r0
      002A71 86 06            [24] 2037 	mov	ar6,@r0
      002A73 E5 10            [12] 2038 	mov	a,_bp
      002A75 24 09            [12] 2039 	add	a,#0x09
      002A77 F8               [12] 2040 	mov	r0,a
      002A78 A6 03            [24] 2041 	mov	@r0,ar3
      002A7A 08               [12] 2042 	inc	r0
      002A7B A6 07            [24] 2043 	mov	@r0,ar7
      002A7D 08               [12] 2044 	inc	r0
      002A7E A6 06            [24] 2045 	mov	@r0,ar6
                                   2046 ;	fix_fft.c:295: if (inverse)
      002A80 E5 10            [12] 2047 	mov	a,_bp
      002A82 24 FA            [12] 2048 	add	a,#0xfa
      002A84 F8               [12] 2049 	mov	r0,a
      002A85 E6               [12] 2050 	mov	a,@r0
      002A86 08               [12] 2051 	inc	r0
      002A87 46               [12] 2052 	orl	a,@r0
      002A88 60 4B            [24] 2053 	jz	00102$
                                   2054 ;	fix_fft.c:296: scale = fix_fft(fi, fr, m - 1, inverse);
      002A8A E5 10            [12] 2055 	mov	a,_bp
      002A8C 24 FC            [12] 2056 	add	a,#0xfc
      002A8E F8               [12] 2057 	mov	r0,a
      002A8F 86 03            [24] 2058 	mov	ar3,@r0
      002A91 08               [12] 2059 	inc	r0
      002A92 86 07            [24] 2060 	mov	ar7,@r0
      002A94 1B               [12] 2061 	dec	r3
      002A95 BB FF 01         [24] 2062 	cjne	r3,#0xff,00130$
      002A98 1F               [12] 2063 	dec	r7
      002A99                       2064 00130$:
      002A99 E5 10            [12] 2065 	mov	a,_bp
      002A9B 24 FA            [12] 2066 	add	a,#0xfa
      002A9D F8               [12] 2067 	mov	r0,a
      002A9E E6               [12] 2068 	mov	a,@r0
      002A9F C0 E0            [24] 2069 	push	acc
      002AA1 08               [12] 2070 	inc	r0
      002AA2 E6               [12] 2071 	mov	a,@r0
      002AA3 C0 E0            [24] 2072 	push	acc
      002AA5 C0 03            [24] 2073 	push	ar3
      002AA7 C0 07            [24] 2074 	push	ar7
      002AA9 A8 10            [24] 2075 	mov	r0,_bp
      002AAB 08               [12] 2076 	inc	r0
      002AAC E6               [12] 2077 	mov	a,@r0
      002AAD C0 E0            [24] 2078 	push	acc
      002AAF 08               [12] 2079 	inc	r0
      002AB0 E6               [12] 2080 	mov	a,@r0
      002AB1 C0 E0            [24] 2081 	push	acc
      002AB3 08               [12] 2082 	inc	r0
      002AB4 E6               [12] 2083 	mov	a,@r0
      002AB5 C0 E0            [24] 2084 	push	acc
      002AB7 E5 10            [12] 2085 	mov	a,_bp
      002AB9 24 09            [12] 2086 	add	a,#0x09
      002ABB F8               [12] 2087 	mov	r0,a
      002ABC 86 82            [24] 2088 	mov	dpl,@r0
      002ABE 08               [12] 2089 	inc	r0
      002ABF 86 83            [24] 2090 	mov	dph,@r0
      002AC1 08               [12] 2091 	inc	r0
      002AC2 86 F0            [24] 2092 	mov	b,@r0
      002AC4 12 20 6E         [24] 2093 	lcall	_fix_fft
      002AC7 AE 82            [24] 2094 	mov	r6,dpl
      002AC9 AF 83            [24] 2095 	mov	r7,dph
      002ACB E5 81            [12] 2096 	mov	a,sp
      002ACD 24 F9            [12] 2097 	add	a,#0xf9
      002ACF F5 81            [12] 2098 	mov	sp,a
      002AD1 8E 02            [24] 2099 	mov	ar2,r6
      002AD3 8F 04            [24] 2100 	mov	ar4,r7
      002AD5                       2101 00102$:
                                   2102 ;	fix_fft.c:298: for (i = 1; i < N; i += 2) {
      002AD5 E5 10            [12] 2103 	mov	a,_bp
      002AD7 24 0C            [12] 2104 	add	a,#0x0c
      002AD9 F8               [12] 2105 	mov	r0,a
      002ADA 76 01            [12] 2106 	mov	@r0,#0x01
      002ADC 08               [12] 2107 	inc	r0
      002ADD 76 00            [12] 2108 	mov	@r0,#0x00
      002ADF                       2109 00107$:
      002ADF E5 10            [12] 2110 	mov	a,_bp
      002AE1 24 0C            [12] 2111 	add	a,#0x0c
      002AE3 F8               [12] 2112 	mov	r0,a
      002AE4 E5 10            [12] 2113 	mov	a,_bp
      002AE6 24 0E            [12] 2114 	add	a,#0x0e
      002AE8 F9               [12] 2115 	mov	r1,a
      002AE9 C3               [12] 2116 	clr	c
      002AEA E6               [12] 2117 	mov	a,@r0
      002AEB 97               [12] 2118 	subb	a,@r1
      002AEC 08               [12] 2119 	inc	r0
      002AED E6               [12] 2120 	mov	a,@r0
      002AEE 64 80            [12] 2121 	xrl	a,#0x80
      002AF0 09               [12] 2122 	inc	r1
      002AF1 87 F0            [24] 2123 	mov	b,@r1
      002AF3 63 F0 80         [24] 2124 	xrl	b,#0x80
      002AF6 95 F0            [12] 2125 	subb	a,b
      002AF8 40 03            [24] 2126 	jc	00131$
      002AFA 02 2B C3         [24] 2127 	ljmp	00103$
      002AFD                       2128 00131$:
                                   2129 ;	fix_fft.c:299: tt = f[N + i - 1];
      002AFD C0 02            [24] 2130 	push	ar2
      002AFF C0 04            [24] 2131 	push	ar4
      002B01 E5 10            [12] 2132 	mov	a,_bp
      002B03 24 0E            [12] 2133 	add	a,#0x0e
      002B05 F8               [12] 2134 	mov	r0,a
      002B06 E5 10            [12] 2135 	mov	a,_bp
      002B08 24 0C            [12] 2136 	add	a,#0x0c
      002B0A F9               [12] 2137 	mov	r1,a
      002B0B E7               [12] 2138 	mov	a,@r1
      002B0C 26               [12] 2139 	add	a,@r0
      002B0D FB               [12] 2140 	mov	r3,a
      002B0E 09               [12] 2141 	inc	r1
      002B0F E7               [12] 2142 	mov	a,@r1
      002B10 08               [12] 2143 	inc	r0
      002B11 36               [12] 2144 	addc	a,@r0
      002B12 FD               [12] 2145 	mov	r5,a
      002B13 1B               [12] 2146 	dec	r3
      002B14 BB FF 01         [24] 2147 	cjne	r3,#0xff,00132$
      002B17 1D               [12] 2148 	dec	r5
      002B18                       2149 00132$:
      002B18 EB               [12] 2150 	mov	a,r3
      002B19 2B               [12] 2151 	add	a,r3
      002B1A FB               [12] 2152 	mov	r3,a
      002B1B ED               [12] 2153 	mov	a,r5
      002B1C 33               [12] 2154 	rlc	a
      002B1D FD               [12] 2155 	mov	r5,a
      002B1E A8 10            [24] 2156 	mov	r0,_bp
      002B20 08               [12] 2157 	inc	r0
      002B21 EB               [12] 2158 	mov	a,r3
      002B22 26               [12] 2159 	add	a,@r0
      002B23 FB               [12] 2160 	mov	r3,a
      002B24 ED               [12] 2161 	mov	a,r5
      002B25 08               [12] 2162 	inc	r0
      002B26 36               [12] 2163 	addc	a,@r0
      002B27 FC               [12] 2164 	mov	r4,a
      002B28 08               [12] 2165 	inc	r0
      002B29 86 05            [24] 2166 	mov	ar5,@r0
      002B2B 8B 82            [24] 2167 	mov	dpl,r3
      002B2D 8C 83            [24] 2168 	mov	dph,r4
      002B2F 8D F0            [24] 2169 	mov	b,r5
      002B31 E5 10            [12] 2170 	mov	a,_bp
      002B33 24 07            [12] 2171 	add	a,#0x07
      002B35 F8               [12] 2172 	mov	r0,a
      002B36 12 31 3D         [24] 2173 	lcall	__gptrget
      002B39 F6               [12] 2174 	mov	@r0,a
      002B3A A3               [24] 2175 	inc	dptr
      002B3B 12 31 3D         [24] 2176 	lcall	__gptrget
      002B3E 08               [12] 2177 	inc	r0
      002B3F F6               [12] 2178 	mov	@r0,a
                                   2179 ;	fix_fft.c:300: f[N + i - 1] = f[i];
      002B40 E5 10            [12] 2180 	mov	a,_bp
      002B42 24 0C            [12] 2181 	add	a,#0x0c
      002B44 F8               [12] 2182 	mov	r0,a
      002B45 E6               [12] 2183 	mov	a,@r0
      002B46 26               [12] 2184 	add	a,@r0
      002B47 FA               [12] 2185 	mov	r2,a
      002B48 08               [12] 2186 	inc	r0
      002B49 E6               [12] 2187 	mov	a,@r0
      002B4A 33               [12] 2188 	rlc	a
      002B4B FF               [12] 2189 	mov	r7,a
      002B4C A8 10            [24] 2190 	mov	r0,_bp
      002B4E 08               [12] 2191 	inc	r0
      002B4F E5 10            [12] 2192 	mov	a,_bp
      002B51 24 04            [12] 2193 	add	a,#0x04
      002B53 F9               [12] 2194 	mov	r1,a
      002B54 EA               [12] 2195 	mov	a,r2
      002B55 26               [12] 2196 	add	a,@r0
      002B56 F7               [12] 2197 	mov	@r1,a
      002B57 EF               [12] 2198 	mov	a,r7
      002B58 08               [12] 2199 	inc	r0
      002B59 36               [12] 2200 	addc	a,@r0
      002B5A 09               [12] 2201 	inc	r1
      002B5B F7               [12] 2202 	mov	@r1,a
      002B5C 08               [12] 2203 	inc	r0
      002B5D 09               [12] 2204 	inc	r1
      002B5E E6               [12] 2205 	mov	a,@r0
      002B5F F7               [12] 2206 	mov	@r1,a
      002B60 E5 10            [12] 2207 	mov	a,_bp
      002B62 24 04            [12] 2208 	add	a,#0x04
      002B64 F8               [12] 2209 	mov	r0,a
      002B65 86 82            [24] 2210 	mov	dpl,@r0
      002B67 08               [12] 2211 	inc	r0
      002B68 86 83            [24] 2212 	mov	dph,@r0
      002B6A 08               [12] 2213 	inc	r0
      002B6B 86 F0            [24] 2214 	mov	b,@r0
      002B6D 12 31 3D         [24] 2215 	lcall	__gptrget
      002B70 FE               [12] 2216 	mov	r6,a
      002B71 A3               [24] 2217 	inc	dptr
      002B72 12 31 3D         [24] 2218 	lcall	__gptrget
      002B75 FF               [12] 2219 	mov	r7,a
      002B76 8B 82            [24] 2220 	mov	dpl,r3
      002B78 8C 83            [24] 2221 	mov	dph,r4
      002B7A 8D F0            [24] 2222 	mov	b,r5
      002B7C EE               [12] 2223 	mov	a,r6
      002B7D 12 2F 72         [24] 2224 	lcall	__gptrput
      002B80 A3               [24] 2225 	inc	dptr
      002B81 EF               [12] 2226 	mov	a,r7
      002B82 12 2F 72         [24] 2227 	lcall	__gptrput
                                   2228 ;	fix_fft.c:301: f[i] = tt;
      002B85 E5 10            [12] 2229 	mov	a,_bp
      002B87 24 04            [12] 2230 	add	a,#0x04
      002B89 F8               [12] 2231 	mov	r0,a
      002B8A 86 82            [24] 2232 	mov	dpl,@r0
      002B8C 08               [12] 2233 	inc	r0
      002B8D 86 83            [24] 2234 	mov	dph,@r0
      002B8F 08               [12] 2235 	inc	r0
      002B90 86 F0            [24] 2236 	mov	b,@r0
      002B92 E5 10            [12] 2237 	mov	a,_bp
      002B94 24 07            [12] 2238 	add	a,#0x07
      002B96 F9               [12] 2239 	mov	r1,a
      002B97 E7               [12] 2240 	mov	a,@r1
      002B98 12 2F 72         [24] 2241 	lcall	__gptrput
      002B9B A3               [24] 2242 	inc	dptr
      002B9C 09               [12] 2243 	inc	r1
      002B9D E7               [12] 2244 	mov	a,@r1
      002B9E 12 2F 72         [24] 2245 	lcall	__gptrput
                                   2246 ;	fix_fft.c:298: for (i = 1; i < N; i += 2) {
      002BA1 E5 10            [12] 2247 	mov	a,_bp
      002BA3 24 0C            [12] 2248 	add	a,#0x0c
      002BA5 F8               [12] 2249 	mov	r0,a
      002BA6 86 06            [24] 2250 	mov	ar6,@r0
      002BA8 08               [12] 2251 	inc	r0
      002BA9 86 07            [24] 2252 	mov	ar7,@r0
      002BAB 74 02            [12] 2253 	mov	a,#0x02
      002BAD 2E               [12] 2254 	add	a,r6
      002BAE FE               [12] 2255 	mov	r6,a
      002BAF E4               [12] 2256 	clr	a
      002BB0 3F               [12] 2257 	addc	a,r7
      002BB1 FF               [12] 2258 	mov	r7,a
      002BB2 E5 10            [12] 2259 	mov	a,_bp
      002BB4 24 0C            [12] 2260 	add	a,#0x0c
      002BB6 F8               [12] 2261 	mov	r0,a
      002BB7 A6 06            [24] 2262 	mov	@r0,ar6
      002BB9 08               [12] 2263 	inc	r0
      002BBA A6 07            [24] 2264 	mov	@r0,ar7
      002BBC D0 04            [24] 2265 	pop	ar4
      002BBE D0 02            [24] 2266 	pop	ar2
      002BC0 02 2A DF         [24] 2267 	ljmp	00107$
      002BC3                       2268 00103$:
                                   2269 ;	fix_fft.c:304: if (!inverse)
      002BC3 E5 10            [12] 2270 	mov	a,_bp
      002BC5 24 FA            [12] 2271 	add	a,#0xfa
      002BC7 F8               [12] 2272 	mov	r0,a
      002BC8 E6               [12] 2273 	mov	a,@r0
      002BC9 08               [12] 2274 	inc	r0
      002BCA 46               [12] 2275 	orl	a,@r0
      002BCB 70 4B            [24] 2276 	jnz	00105$
                                   2277 ;	fix_fft.c:305: scale = fix_fft(fi, fr, m - 1, inverse);
      002BCD E5 10            [12] 2278 	mov	a,_bp
      002BCF 24 FC            [12] 2279 	add	a,#0xfc
      002BD1 F8               [12] 2280 	mov	r0,a
      002BD2 86 06            [24] 2281 	mov	ar6,@r0
      002BD4 08               [12] 2282 	inc	r0
      002BD5 86 07            [24] 2283 	mov	ar7,@r0
      002BD7 1E               [12] 2284 	dec	r6
      002BD8 BE FF 01         [24] 2285 	cjne	r6,#0xff,00134$
      002BDB 1F               [12] 2286 	dec	r7
      002BDC                       2287 00134$:
      002BDC E5 10            [12] 2288 	mov	a,_bp
      002BDE 24 FA            [12] 2289 	add	a,#0xfa
      002BE0 F8               [12] 2290 	mov	r0,a
      002BE1 E6               [12] 2291 	mov	a,@r0
      002BE2 C0 E0            [24] 2292 	push	acc
      002BE4 08               [12] 2293 	inc	r0
      002BE5 E6               [12] 2294 	mov	a,@r0
      002BE6 C0 E0            [24] 2295 	push	acc
      002BE8 C0 06            [24] 2296 	push	ar6
      002BEA C0 07            [24] 2297 	push	ar7
      002BEC A8 10            [24] 2298 	mov	r0,_bp
      002BEE 08               [12] 2299 	inc	r0
      002BEF E6               [12] 2300 	mov	a,@r0
      002BF0 C0 E0            [24] 2301 	push	acc
      002BF2 08               [12] 2302 	inc	r0
      002BF3 E6               [12] 2303 	mov	a,@r0
      002BF4 C0 E0            [24] 2304 	push	acc
      002BF6 08               [12] 2305 	inc	r0
      002BF7 E6               [12] 2306 	mov	a,@r0
      002BF8 C0 E0            [24] 2307 	push	acc
      002BFA E5 10            [12] 2308 	mov	a,_bp
      002BFC 24 09            [12] 2309 	add	a,#0x09
      002BFE F8               [12] 2310 	mov	r0,a
      002BFF 86 82            [24] 2311 	mov	dpl,@r0
      002C01 08               [12] 2312 	inc	r0
      002C02 86 83            [24] 2313 	mov	dph,@r0
      002C04 08               [12] 2314 	inc	r0
      002C05 86 F0            [24] 2315 	mov	b,@r0
      002C07 12 20 6E         [24] 2316 	lcall	_fix_fft
      002C0A AE 82            [24] 2317 	mov	r6,dpl
      002C0C AF 83            [24] 2318 	mov	r7,dph
      002C0E E5 81            [12] 2319 	mov	a,sp
      002C10 24 F9            [12] 2320 	add	a,#0xf9
      002C12 F5 81            [12] 2321 	mov	sp,a
      002C14 8E 02            [24] 2322 	mov	ar2,r6
      002C16 8F 04            [24] 2323 	mov	ar4,r7
      002C18                       2324 00105$:
                                   2325 ;	fix_fft.c:307: return scale;
      002C18 8A 82            [24] 2326 	mov	dpl,r2
      002C1A 8C 83            [24] 2327 	mov	dph,r4
                                   2328 ;	fix_fft.c:308: }
      002C1C 85 10 81         [24] 2329 	mov	sp,_bp
      002C1F D0 10            [24] 2330 	pop	_bp
      002C21 22               [24] 2331 	ret
                                   2332 	.area CSEG    (CODE)
                                   2333 	.area CONST   (CODE)
                                   2334 	.area XINIT   (CODE)
      004875                       2335 __xinit__Sinewave:
      004875 00 00                 2336 	.byte #0x00, #0x00	;  0
      004877 C9 00                 2337 	.byte #0xc9, #0x00	;  201
      004879 92 01                 2338 	.byte #0x92, #0x01	;  402
      00487B 5B 02                 2339 	.byte #0x5b, #0x02	;  603
      00487D 24 03                 2340 	.byte #0x24, #0x03	;  804
      00487F ED 03                 2341 	.byte #0xed, #0x03	;  1005
      004881 B6 04                 2342 	.byte #0xb6, #0x04	;  1206
      004883 7E 05                 2343 	.byte #0x7e, #0x05	;  1406
      004885 47 06                 2344 	.byte #0x47, #0x06	;  1607
      004887 10 07                 2345 	.byte #0x10, #0x07	;  1808
      004889 D9 07                 2346 	.byte #0xd9, #0x07	;  2009
      00488B A1 08                 2347 	.byte #0xa1, #0x08	;  2209
      00488D 6A 09                 2348 	.byte #0x6a, #0x09	;  2410
      00488F 32 0A                 2349 	.byte #0x32, #0x0a	;  2610
      004891 FB 0A                 2350 	.byte #0xfb, #0x0a	;  2811
      004893 C3 0B                 2351 	.byte #0xc3, #0x0b	;  3011
      004895 8B 0C                 2352 	.byte #0x8b, #0x0c	;  3211
      004897 53 0D                 2353 	.byte #0x53, #0x0d	;  3411
      004899 1B 0E                 2354 	.byte #0x1b, #0x0e	;  3611
      00489B E3 0E                 2355 	.byte #0xe3, #0x0e	;  3811
      00489D AB 0F                 2356 	.byte #0xab, #0x0f	;  4011
      00489F 72 10                 2357 	.byte #0x72, #0x10	;  4210
      0048A1 39 11                 2358 	.byte #0x39, #0x11	;  4409
      0048A3 00 12                 2359 	.byte #0x00, #0x12	;  4608
      0048A5 C7 12                 2360 	.byte #0xc7, #0x12	;  4807
      0048A7 8E 13                 2361 	.byte #0x8e, #0x13	;  5006
      0048A9 55 14                 2362 	.byte #0x55, #0x14	;  5205
      0048AB 1B 15                 2363 	.byte #0x1b, #0x15	;  5403
      0048AD E1 15                 2364 	.byte #0xe1, #0x15	;  5601
      0048AF A7 16                 2365 	.byte #0xa7, #0x16	;  5799
      0048B1 6D 17                 2366 	.byte #0x6d, #0x17	;  5997
      0048B3 33 18                 2367 	.byte #0x33, #0x18	;  6195
      0048B5 F8 18                 2368 	.byte #0xf8, #0x18	;  6392
      0048B7 BD 19                 2369 	.byte #0xbd, #0x19	;  6589
      0048B9 82 1A                 2370 	.byte #0x82, #0x1a	;  6786
      0048BB 46 1B                 2371 	.byte #0x46, #0x1b	;  6982
      0048BD 0B 1C                 2372 	.byte #0x0b, #0x1c	;  7179
      0048BF CF 1C                 2373 	.byte #0xcf, #0x1c	;  7375
      0048C1 93 1D                 2374 	.byte #0x93, #0x1d	;  7571
      0048C3 56 1E                 2375 	.byte #0x56, #0x1e	;  7766
      0048C5 19 1F                 2376 	.byte #0x19, #0x1f	;  7961
      0048C7 DC 1F                 2377 	.byte #0xdc, #0x1f	;  8156
      0048C9 9F 20                 2378 	.byte #0x9f, #0x20	;  8351
      0048CB 61 21                 2379 	.byte #0x61, #0x21	;  8545
      0048CD 23 22                 2380 	.byte #0x23, #0x22	;  8739
      0048CF E4 22                 2381 	.byte #0xe4, #0x22	;  8932
      0048D1 A6 23                 2382 	.byte #0xa6, #0x23	;  9126
      0048D3 67 24                 2383 	.byte #0x67, #0x24	;  9319
      0048D5 27 25                 2384 	.byte #0x27, #0x25	;  9511
      0048D7 E7 25                 2385 	.byte #0xe7, #0x25	;  9703
      0048D9 A7 26                 2386 	.byte #0xa7, #0x26	;  9895
      0048DB 67 27                 2387 	.byte #0x67, #0x27	;  10087
      0048DD 26 28                 2388 	.byte #0x26, #0x28	;  10278
      0048DF E5 28                 2389 	.byte #0xe5, #0x28	;  10469
      0048E1 A3 29                 2390 	.byte #0xa3, #0x29	;  10659
      0048E3 61 2A                 2391 	.byte #0x61, #0x2a	;  10849
      0048E5 1E 2B                 2392 	.byte #0x1e, #0x2b	;  11038
      0048E7 DB 2B                 2393 	.byte #0xdb, #0x2b	;  11227
      0048E9 98 2C                 2394 	.byte #0x98, #0x2c	;  11416
      0048EB 54 2D                 2395 	.byte #0x54, #0x2d	;  11604
      0048ED 10 2E                 2396 	.byte #0x10, #0x2e	;  11792
      0048EF CC 2E                 2397 	.byte #0xcc, #0x2e	;  11980
      0048F1 86 2F                 2398 	.byte #0x86, #0x2f	;  12166
      0048F3 41 30                 2399 	.byte #0x41, #0x30	;  12353
      0048F5 FB 30                 2400 	.byte #0xfb, #0x30	;  12539
      0048F7 B4 31                 2401 	.byte #0xb4, #0x31	;  12724
      0048F9 6D 32                 2402 	.byte #0x6d, #0x32	;  12909
      0048FB 26 33                 2403 	.byte #0x26, #0x33	;  13094
      0048FD DE 33                 2404 	.byte #0xde, #0x33	;  13278
      0048FF 96 34                 2405 	.byte #0x96, #0x34	;  13462
      004901 4D 35                 2406 	.byte #0x4d, #0x35	;  13645
      004903 03 36                 2407 	.byte #0x03, #0x36	;  13827
      004905 B9 36                 2408 	.byte #0xb9, #0x36	;  14009
      004907 6F 37                 2409 	.byte #0x6f, #0x37	;  14191
      004909 24 38                 2410 	.byte #0x24, #0x38	;  14372
      00490B D8 38                 2411 	.byte #0xd8, #0x38	;  14552
      00490D 8C 39                 2412 	.byte #0x8c, #0x39	;  14732
      00490F 3F 3A                 2413 	.byte #0x3f, #0x3a	;  14911
      004911 F2 3A                 2414 	.byte #0xf2, #0x3a	;  15090
      004913 A4 3B                 2415 	.byte #0xa4, #0x3b	;  15268
      004915 56 3C                 2416 	.byte #0x56, #0x3c	;  15446
      004917 07 3D                 2417 	.byte #0x07, #0x3d	;  15623
      004919 B7 3D                 2418 	.byte #0xb7, #0x3d	;  15799
      00491B 67 3E                 2419 	.byte #0x67, #0x3e	;  15975
      00491D 16 3F                 2420 	.byte #0x16, #0x3f	;  16150
      00491F C5 3F                 2421 	.byte #0xc5, #0x3f	;  16325
      004921 73 40                 2422 	.byte #0x73, #0x40	;  16499
      004923 20 41                 2423 	.byte #0x20, #0x41	;  16672
      004925 CD 41                 2424 	.byte #0xcd, #0x41	;  16845
      004927 79 42                 2425 	.byte #0x79, #0x42	;  17017
      004929 25 43                 2426 	.byte #0x25, #0x43	;  17189
      00492B D0 43                 2427 	.byte #0xd0, #0x43	;  17360
      00492D 7A 44                 2428 	.byte #0x7a, #0x44	;  17530
      00492F 23 45                 2429 	.byte #0x23, #0x45	;  17699
      004931 CC 45                 2430 	.byte #0xcc, #0x45	;  17868
      004933 74 46                 2431 	.byte #0x74, #0x46	;  18036
      004935 1C 47                 2432 	.byte #0x1c, #0x47	;  18204
      004937 C3 47                 2433 	.byte #0xc3, #0x47	;  18371
      004939 69 48                 2434 	.byte #0x69, #0x48	;  18537
      00493B 0E 49                 2435 	.byte #0x0e, #0x49	;  18702
      00493D B3 49                 2436 	.byte #0xb3, #0x49	;  18867
      00493F 57 4A                 2437 	.byte #0x57, #0x4a	;  19031
      004941 FA 4A                 2438 	.byte #0xfa, #0x4a	;  19194
      004943 9D 4B                 2439 	.byte #0x9d, #0x4b	;  19357
      004945 3F 4C                 2440 	.byte #0x3f, #0x4c	;  19519
      004947 E0 4C                 2441 	.byte #0xe0, #0x4c	;  19680
      004949 80 4D                 2442 	.byte #0x80, #0x4d	;  19840
      00494B 20 4E                 2443 	.byte #0x20, #0x4e	;  20000
      00494D BF 4E                 2444 	.byte #0xbf, #0x4e	;  20159
      00494F 5D 4F                 2445 	.byte #0x5d, #0x4f	;  20317
      004951 FA 4F                 2446 	.byte #0xfa, #0x4f	;  20474
      004953 97 50                 2447 	.byte #0x97, #0x50	;  20631
      004955 33 51                 2448 	.byte #0x33, #0x51	;  20787
      004957 CE 51                 2449 	.byte #0xce, #0x51	;  20942
      004959 68 52                 2450 	.byte #0x68, #0x52	;  21096
      00495B 01 53                 2451 	.byte #0x01, #0x53	;  21249
      00495D 9A 53                 2452 	.byte #0x9a, #0x53	;  21402
      00495F 32 54                 2453 	.byte #0x32, #0x54	;  21554
      004961 C9 54                 2454 	.byte #0xc9, #0x54	;  21705
      004963 5F 55                 2455 	.byte #0x5f, #0x55	;  21855
      004965 F4 55                 2456 	.byte #0xf4, #0x55	;  22004
      004967 89 56                 2457 	.byte #0x89, #0x56	;  22153
      004969 1D 57                 2458 	.byte #0x1d, #0x57	;  22301
      00496B B0 57                 2459 	.byte #0xb0, #0x57	;  22448
      00496D 42 58                 2460 	.byte #0x42, #0x58	;  22594
      00496F D3 58                 2461 	.byte #0xd3, #0x58	;  22739
      004971 63 59                 2462 	.byte #0x63, #0x59	;  22883
      004973 F3 59                 2463 	.byte #0xf3, #0x59	;  23027
      004975 81 5A                 2464 	.byte #0x81, #0x5a	;  23169
      004977 0F 5B                 2465 	.byte #0x0f, #0x5b	;  23311
      004979 9C 5B                 2466 	.byte #0x9c, #0x5b	;  23452
      00497B 28 5C                 2467 	.byte #0x28, #0x5c	;  23592
      00497D B3 5C                 2468 	.byte #0xb3, #0x5c	;  23731
      00497F 3D 5D                 2469 	.byte #0x3d, #0x5d	;  23869
      004981 C6 5D                 2470 	.byte #0xc6, #0x5d	;  24006
      004983 4F 5E                 2471 	.byte #0x4f, #0x5e	;  24143
      004985 D6 5E                 2472 	.byte #0xd6, #0x5e	;  24278
      004987 5D 5F                 2473 	.byte #0x5d, #0x5f	;  24413
      004989 E2 5F                 2474 	.byte #0xe2, #0x5f	;  24546
      00498B 67 60                 2475 	.byte #0x67, #0x60	;  24679
      00498D EB 60                 2476 	.byte #0xeb, #0x60	;  24811
      00498F 6E 61                 2477 	.byte #0x6e, #0x61	;  24942
      004991 F0 61                 2478 	.byte #0xf0, #0x61	;  25072
      004993 71 62                 2479 	.byte #0x71, #0x62	;  25201
      004995 F1 62                 2480 	.byte #0xf1, #0x62	;  25329
      004997 70 63                 2481 	.byte #0x70, #0x63	;  25456
      004999 EE 63                 2482 	.byte #0xee, #0x63	;  25582
      00499B 6B 64                 2483 	.byte #0x6b, #0x64	;  25707
      00499D E7 64                 2484 	.byte #0xe7, #0x64	;  25831
      00499F 62 65                 2485 	.byte #0x62, #0x65	;  25954
      0049A1 DD 65                 2486 	.byte #0xdd, #0x65	;  26077
      0049A3 56 66                 2487 	.byte #0x56, #0x66	;  26198
      0049A5 CE 66                 2488 	.byte #0xce, #0x66	;  26318
      0049A7 45 67                 2489 	.byte #0x45, #0x67	;  26437
      0049A9 BC 67                 2490 	.byte #0xbc, #0x67	;  26556
      0049AB 31 68                 2491 	.byte #0x31, #0x68	;  26673
      0049AD A5 68                 2492 	.byte #0xa5, #0x68	;  26789
      0049AF 19 69                 2493 	.byte #0x19, #0x69	;  26905
      0049B1 8B 69                 2494 	.byte #0x8b, #0x69	;  27019
      0049B3 FC 69                 2495 	.byte #0xfc, #0x69	;  27132
      0049B5 6C 6A                 2496 	.byte #0x6c, #0x6a	;  27244
      0049B7 DB 6A                 2497 	.byte #0xdb, #0x6a	;  27355
      0049B9 4A 6B                 2498 	.byte #0x4a, #0x6b	;  27466
      0049BB B7 6B                 2499 	.byte #0xb7, #0x6b	;  27575
      0049BD 23 6C                 2500 	.byte #0x23, #0x6c	;  27683
      0049BF 8E 6C                 2501 	.byte #0x8e, #0x6c	;  27790
      0049C1 F8 6C                 2502 	.byte #0xf8, #0x6c	;  27896
      0049C3 61 6D                 2503 	.byte #0x61, #0x6d	;  28001
      0049C5 C9 6D                 2504 	.byte #0xc9, #0x6d	;  28105
      0049C7 30 6E                 2505 	.byte #0x30, #0x6e	;  28208
      0049C9 95 6E                 2506 	.byte #0x95, #0x6e	;  28309
      0049CB FA 6E                 2507 	.byte #0xfa, #0x6e	;  28410
      0049CD 5E 6F                 2508 	.byte #0x5e, #0x6f	;  28510
      0049CF C0 6F                 2509 	.byte #0xc0, #0x6f	;  28608
      0049D1 22 70                 2510 	.byte #0x22, #0x70	;  28706
      0049D3 82 70                 2511 	.byte #0x82, #0x70	;  28802
      0049D5 E1 70                 2512 	.byte #0xe1, #0x70	;  28897
      0049D7 40 71                 2513 	.byte #0x40, #0x71	;  28992
      0049D9 9D 71                 2514 	.byte #0x9d, #0x71	;  29085
      0049DB F9 71                 2515 	.byte #0xf9, #0x71	;  29177
      0049DD 54 72                 2516 	.byte #0x54, #0x72	;  29268
      0049DF AE 72                 2517 	.byte #0xae, #0x72	;  29358
      0049E1 06 73                 2518 	.byte #0x06, #0x73	;  29446
      0049E3 5E 73                 2519 	.byte #0x5e, #0x73	;  29534
      0049E5 B5 73                 2520 	.byte #0xb5, #0x73	;  29621
      0049E7 0A 74                 2521 	.byte #0x0a, #0x74	;  29706
      0049E9 5E 74                 2522 	.byte #0x5e, #0x74	;  29790
      0049EB B1 74                 2523 	.byte #0xb1, #0x74	;  29873
      0049ED 03 75                 2524 	.byte #0x03, #0x75	;  29955
      0049EF 54 75                 2525 	.byte #0x54, #0x75	;  30036
      0049F1 A4 75                 2526 	.byte #0xa4, #0x75	;  30116
      0049F3 F3 75                 2527 	.byte #0xf3, #0x75	;  30195
      0049F5 40 76                 2528 	.byte #0x40, #0x76	;  30272
      0049F7 8D 76                 2529 	.byte #0x8d, #0x76	;  30349
      0049F9 D8 76                 2530 	.byte #0xd8, #0x76	;  30424
      0049FB 22 77                 2531 	.byte #0x22, #0x77	;  30498
      0049FD 6B 77                 2532 	.byte #0x6b, #0x77	;  30571
      0049FF B3 77                 2533 	.byte #0xb3, #0x77	;  30643
      004A01 F9 77                 2534 	.byte #0xf9, #0x77	;  30713
      004A03 3F 78                 2535 	.byte #0x3f, #0x78	;  30783
      004A05 83 78                 2536 	.byte #0x83, #0x78	;  30851
      004A07 C6 78                 2537 	.byte #0xc6, #0x78	;  30918
      004A09 08 79                 2538 	.byte #0x08, #0x79	;  30984
      004A0B 49 79                 2539 	.byte #0x49, #0x79	;  31049
      004A0D 89 79                 2540 	.byte #0x89, #0x79	;  31113
      004A0F C7 79                 2541 	.byte #0xc7, #0x79	;  31175
      004A11 04 7A                 2542 	.byte #0x04, #0x7a	;  31236
      004A13 41 7A                 2543 	.byte #0x41, #0x7a	;  31297
      004A15 7C 7A                 2544 	.byte #0x7c, #0x7a	;  31356
      004A17 B5 7A                 2545 	.byte #0xb5, #0x7a	;  31413
      004A19 EE 7A                 2546 	.byte #0xee, #0x7a	;  31470
      004A1B 25 7B                 2547 	.byte #0x25, #0x7b	;  31525
      004A1D 5C 7B                 2548 	.byte #0x5c, #0x7b	;  31580
      004A1F 91 7B                 2549 	.byte #0x91, #0x7b	;  31633
      004A21 C4 7B                 2550 	.byte #0xc4, #0x7b	;  31684
      004A23 F7 7B                 2551 	.byte #0xf7, #0x7b	;  31735
      004A25 29 7C                 2552 	.byte #0x29, #0x7c	;  31785
      004A27 59 7C                 2553 	.byte #0x59, #0x7c	;  31833
      004A29 88 7C                 2554 	.byte #0x88, #0x7c	;  31880
      004A2B B6 7C                 2555 	.byte #0xb6, #0x7c	;  31926
      004A2D E2 7C                 2556 	.byte #0xe2, #0x7c	;  31970
      004A2F 0E 7D                 2557 	.byte #0x0e, #0x7d	;  32014
      004A31 38 7D                 2558 	.byte #0x38, #0x7d	;  32056
      004A33 61 7D                 2559 	.byte #0x61, #0x7d	;  32097
      004A35 89 7D                 2560 	.byte #0x89, #0x7d	;  32137
      004A37 B0 7D                 2561 	.byte #0xb0, #0x7d	;  32176
      004A39 D5 7D                 2562 	.byte #0xd5, #0x7d	;  32213
      004A3B F9 7D                 2563 	.byte #0xf9, #0x7d	;  32249
      004A3D 1C 7E                 2564 	.byte #0x1c, #0x7e	;  32284
      004A3F 3E 7E                 2565 	.byte #0x3e, #0x7e	;  32318
      004A41 5E 7E                 2566 	.byte #0x5e, #0x7e	;  32350
      004A43 7E 7E                 2567 	.byte #0x7e, #0x7e	;  32382
      004A45 9C 7E                 2568 	.byte #0x9c, #0x7e	;  32412
      004A47 B9 7E                 2569 	.byte #0xb9, #0x7e	;  32441
      004A49 D4 7E                 2570 	.byte #0xd4, #0x7e	;  32468
      004A4B EF 7E                 2571 	.byte #0xef, #0x7e	;  32495
      004A4D 08 7F                 2572 	.byte #0x08, #0x7f	;  32520
      004A4F 20 7F                 2573 	.byte #0x20, #0x7f	;  32544
      004A51 37 7F                 2574 	.byte #0x37, #0x7f	;  32567
      004A53 4C 7F                 2575 	.byte #0x4c, #0x7f	;  32588
      004A55 61 7F                 2576 	.byte #0x61, #0x7f	;  32609
      004A57 74 7F                 2577 	.byte #0x74, #0x7f	;  32628
      004A59 86 7F                 2578 	.byte #0x86, #0x7f	;  32646
      004A5B 96 7F                 2579 	.byte #0x96, #0x7f	;  32662
      004A5D A6 7F                 2580 	.byte #0xa6, #0x7f	;  32678
      004A5F B4 7F                 2581 	.byte #0xb4, #0x7f	;  32692
      004A61 C1 7F                 2582 	.byte #0xc1, #0x7f	;  32705
      004A63 CD 7F                 2583 	.byte #0xcd, #0x7f	;  32717
      004A65 D7 7F                 2584 	.byte #0xd7, #0x7f	;  32727
      004A67 E0 7F                 2585 	.byte #0xe0, #0x7f	;  32736
      004A69 E8 7F                 2586 	.byte #0xe8, #0x7f	;  32744
      004A6B EF 7F                 2587 	.byte #0xef, #0x7f	;  32751
      004A6D F5 7F                 2588 	.byte #0xf5, #0x7f	;  32757
      004A6F F9 7F                 2589 	.byte #0xf9, #0x7f	;  32761
      004A71 FC 7F                 2590 	.byte #0xfc, #0x7f	;  32764
      004A73 FE 7F                 2591 	.byte #0xfe, #0x7f	;  32766
      004A75 FF 7F                 2592 	.byte #0xff, #0x7f	;  32767
      004A77 FE 7F                 2593 	.byte #0xfe, #0x7f	;  32766
      004A79 FC 7F                 2594 	.byte #0xfc, #0x7f	;  32764
      004A7B F9 7F                 2595 	.byte #0xf9, #0x7f	;  32761
      004A7D F5 7F                 2596 	.byte #0xf5, #0x7f	;  32757
      004A7F EF 7F                 2597 	.byte #0xef, #0x7f	;  32751
      004A81 E8 7F                 2598 	.byte #0xe8, #0x7f	;  32744
      004A83 E0 7F                 2599 	.byte #0xe0, #0x7f	;  32736
      004A85 D7 7F                 2600 	.byte #0xd7, #0x7f	;  32727
      004A87 CD 7F                 2601 	.byte #0xcd, #0x7f	;  32717
      004A89 C1 7F                 2602 	.byte #0xc1, #0x7f	;  32705
      004A8B B4 7F                 2603 	.byte #0xb4, #0x7f	;  32692
      004A8D A6 7F                 2604 	.byte #0xa6, #0x7f	;  32678
      004A8F 96 7F                 2605 	.byte #0x96, #0x7f	;  32662
      004A91 86 7F                 2606 	.byte #0x86, #0x7f	;  32646
      004A93 74 7F                 2607 	.byte #0x74, #0x7f	;  32628
      004A95 61 7F                 2608 	.byte #0x61, #0x7f	;  32609
      004A97 4C 7F                 2609 	.byte #0x4c, #0x7f	;  32588
      004A99 37 7F                 2610 	.byte #0x37, #0x7f	;  32567
      004A9B 20 7F                 2611 	.byte #0x20, #0x7f	;  32544
      004A9D 08 7F                 2612 	.byte #0x08, #0x7f	;  32520
      004A9F EF 7E                 2613 	.byte #0xef, #0x7e	;  32495
      004AA1 D4 7E                 2614 	.byte #0xd4, #0x7e	;  32468
      004AA3 B9 7E                 2615 	.byte #0xb9, #0x7e	;  32441
      004AA5 9C 7E                 2616 	.byte #0x9c, #0x7e	;  32412
      004AA7 7E 7E                 2617 	.byte #0x7e, #0x7e	;  32382
      004AA9 5E 7E                 2618 	.byte #0x5e, #0x7e	;  32350
      004AAB 3E 7E                 2619 	.byte #0x3e, #0x7e	;  32318
      004AAD 1C 7E                 2620 	.byte #0x1c, #0x7e	;  32284
      004AAF F9 7D                 2621 	.byte #0xf9, #0x7d	;  32249
      004AB1 D5 7D                 2622 	.byte #0xd5, #0x7d	;  32213
      004AB3 B0 7D                 2623 	.byte #0xb0, #0x7d	;  32176
      004AB5 89 7D                 2624 	.byte #0x89, #0x7d	;  32137
      004AB7 61 7D                 2625 	.byte #0x61, #0x7d	;  32097
      004AB9 38 7D                 2626 	.byte #0x38, #0x7d	;  32056
      004ABB 0E 7D                 2627 	.byte #0x0e, #0x7d	;  32014
      004ABD E2 7C                 2628 	.byte #0xe2, #0x7c	;  31970
      004ABF B6 7C                 2629 	.byte #0xb6, #0x7c	;  31926
      004AC1 88 7C                 2630 	.byte #0x88, #0x7c	;  31880
      004AC3 59 7C                 2631 	.byte #0x59, #0x7c	;  31833
      004AC5 29 7C                 2632 	.byte #0x29, #0x7c	;  31785
      004AC7 F7 7B                 2633 	.byte #0xf7, #0x7b	;  31735
      004AC9 C4 7B                 2634 	.byte #0xc4, #0x7b	;  31684
      004ACB 91 7B                 2635 	.byte #0x91, #0x7b	;  31633
      004ACD 5C 7B                 2636 	.byte #0x5c, #0x7b	;  31580
      004ACF 25 7B                 2637 	.byte #0x25, #0x7b	;  31525
      004AD1 EE 7A                 2638 	.byte #0xee, #0x7a	;  31470
      004AD3 B5 7A                 2639 	.byte #0xb5, #0x7a	;  31413
      004AD5 7C 7A                 2640 	.byte #0x7c, #0x7a	;  31356
      004AD7 41 7A                 2641 	.byte #0x41, #0x7a	;  31297
      004AD9 04 7A                 2642 	.byte #0x04, #0x7a	;  31236
      004ADB C7 79                 2643 	.byte #0xc7, #0x79	;  31175
      004ADD 89 79                 2644 	.byte #0x89, #0x79	;  31113
      004ADF 49 79                 2645 	.byte #0x49, #0x79	;  31049
      004AE1 08 79                 2646 	.byte #0x08, #0x79	;  30984
      004AE3 C6 78                 2647 	.byte #0xc6, #0x78	;  30918
      004AE5 83 78                 2648 	.byte #0x83, #0x78	;  30851
      004AE7 3F 78                 2649 	.byte #0x3f, #0x78	;  30783
      004AE9 F9 77                 2650 	.byte #0xf9, #0x77	;  30713
      004AEB B3 77                 2651 	.byte #0xb3, #0x77	;  30643
      004AED 6B 77                 2652 	.byte #0x6b, #0x77	;  30571
      004AEF 22 77                 2653 	.byte #0x22, #0x77	;  30498
      004AF1 D8 76                 2654 	.byte #0xd8, #0x76	;  30424
      004AF3 8D 76                 2655 	.byte #0x8d, #0x76	;  30349
      004AF5 40 76                 2656 	.byte #0x40, #0x76	;  30272
      004AF7 F3 75                 2657 	.byte #0xf3, #0x75	;  30195
      004AF9 A4 75                 2658 	.byte #0xa4, #0x75	;  30116
      004AFB 54 75                 2659 	.byte #0x54, #0x75	;  30036
      004AFD 03 75                 2660 	.byte #0x03, #0x75	;  29955
      004AFF B1 74                 2661 	.byte #0xb1, #0x74	;  29873
      004B01 5E 74                 2662 	.byte #0x5e, #0x74	;  29790
      004B03 0A 74                 2663 	.byte #0x0a, #0x74	;  29706
      004B05 B5 73                 2664 	.byte #0xb5, #0x73	;  29621
      004B07 5E 73                 2665 	.byte #0x5e, #0x73	;  29534
      004B09 06 73                 2666 	.byte #0x06, #0x73	;  29446
      004B0B AE 72                 2667 	.byte #0xae, #0x72	;  29358
      004B0D 54 72                 2668 	.byte #0x54, #0x72	;  29268
      004B0F F9 71                 2669 	.byte #0xf9, #0x71	;  29177
      004B11 9D 71                 2670 	.byte #0x9d, #0x71	;  29085
      004B13 40 71                 2671 	.byte #0x40, #0x71	;  28992
      004B15 E1 70                 2672 	.byte #0xe1, #0x70	;  28897
      004B17 82 70                 2673 	.byte #0x82, #0x70	;  28802
      004B19 22 70                 2674 	.byte #0x22, #0x70	;  28706
      004B1B C0 6F                 2675 	.byte #0xc0, #0x6f	;  28608
      004B1D 5E 6F                 2676 	.byte #0x5e, #0x6f	;  28510
      004B1F FA 6E                 2677 	.byte #0xfa, #0x6e	;  28410
      004B21 95 6E                 2678 	.byte #0x95, #0x6e	;  28309
      004B23 30 6E                 2679 	.byte #0x30, #0x6e	;  28208
      004B25 C9 6D                 2680 	.byte #0xc9, #0x6d	;  28105
      004B27 61 6D                 2681 	.byte #0x61, #0x6d	;  28001
      004B29 F8 6C                 2682 	.byte #0xf8, #0x6c	;  27896
      004B2B 8E 6C                 2683 	.byte #0x8e, #0x6c	;  27790
      004B2D 23 6C                 2684 	.byte #0x23, #0x6c	;  27683
      004B2F B7 6B                 2685 	.byte #0xb7, #0x6b	;  27575
      004B31 4A 6B                 2686 	.byte #0x4a, #0x6b	;  27466
      004B33 DB 6A                 2687 	.byte #0xdb, #0x6a	;  27355
      004B35 6C 6A                 2688 	.byte #0x6c, #0x6a	;  27244
      004B37 FC 69                 2689 	.byte #0xfc, #0x69	;  27132
      004B39 8B 69                 2690 	.byte #0x8b, #0x69	;  27019
      004B3B 19 69                 2691 	.byte #0x19, #0x69	;  26905
      004B3D A5 68                 2692 	.byte #0xa5, #0x68	;  26789
      004B3F 31 68                 2693 	.byte #0x31, #0x68	;  26673
      004B41 BC 67                 2694 	.byte #0xbc, #0x67	;  26556
      004B43 45 67                 2695 	.byte #0x45, #0x67	;  26437
      004B45 CE 66                 2696 	.byte #0xce, #0x66	;  26318
      004B47 56 66                 2697 	.byte #0x56, #0x66	;  26198
      004B49 DD 65                 2698 	.byte #0xdd, #0x65	;  26077
      004B4B 62 65                 2699 	.byte #0x62, #0x65	;  25954
      004B4D E7 64                 2700 	.byte #0xe7, #0x64	;  25831
      004B4F 6B 64                 2701 	.byte #0x6b, #0x64	;  25707
      004B51 EE 63                 2702 	.byte #0xee, #0x63	;  25582
      004B53 70 63                 2703 	.byte #0x70, #0x63	;  25456
      004B55 F1 62                 2704 	.byte #0xf1, #0x62	;  25329
      004B57 71 62                 2705 	.byte #0x71, #0x62	;  25201
      004B59 F0 61                 2706 	.byte #0xf0, #0x61	;  25072
      004B5B 6E 61                 2707 	.byte #0x6e, #0x61	;  24942
      004B5D EB 60                 2708 	.byte #0xeb, #0x60	;  24811
      004B5F 67 60                 2709 	.byte #0x67, #0x60	;  24679
      004B61 E2 5F                 2710 	.byte #0xe2, #0x5f	;  24546
      004B63 5D 5F                 2711 	.byte #0x5d, #0x5f	;  24413
      004B65 D6 5E                 2712 	.byte #0xd6, #0x5e	;  24278
      004B67 4F 5E                 2713 	.byte #0x4f, #0x5e	;  24143
      004B69 C6 5D                 2714 	.byte #0xc6, #0x5d	;  24006
      004B6B 3D 5D                 2715 	.byte #0x3d, #0x5d	;  23869
      004B6D B3 5C                 2716 	.byte #0xb3, #0x5c	;  23731
      004B6F 28 5C                 2717 	.byte #0x28, #0x5c	;  23592
      004B71 9C 5B                 2718 	.byte #0x9c, #0x5b	;  23452
      004B73 0F 5B                 2719 	.byte #0x0f, #0x5b	;  23311
      004B75 81 5A                 2720 	.byte #0x81, #0x5a	;  23169
      004B77 F3 59                 2721 	.byte #0xf3, #0x59	;  23027
      004B79 63 59                 2722 	.byte #0x63, #0x59	;  22883
      004B7B D3 58                 2723 	.byte #0xd3, #0x58	;  22739
      004B7D 42 58                 2724 	.byte #0x42, #0x58	;  22594
      004B7F B0 57                 2725 	.byte #0xb0, #0x57	;  22448
      004B81 1D 57                 2726 	.byte #0x1d, #0x57	;  22301
      004B83 89 56                 2727 	.byte #0x89, #0x56	;  22153
      004B85 F4 55                 2728 	.byte #0xf4, #0x55	;  22004
      004B87 5F 55                 2729 	.byte #0x5f, #0x55	;  21855
      004B89 C9 54                 2730 	.byte #0xc9, #0x54	;  21705
      004B8B 32 54                 2731 	.byte #0x32, #0x54	;  21554
      004B8D 9A 53                 2732 	.byte #0x9a, #0x53	;  21402
      004B8F 01 53                 2733 	.byte #0x01, #0x53	;  21249
      004B91 68 52                 2734 	.byte #0x68, #0x52	;  21096
      004B93 CE 51                 2735 	.byte #0xce, #0x51	;  20942
      004B95 33 51                 2736 	.byte #0x33, #0x51	;  20787
      004B97 97 50                 2737 	.byte #0x97, #0x50	;  20631
      004B99 FA 4F                 2738 	.byte #0xfa, #0x4f	;  20474
      004B9B 5D 4F                 2739 	.byte #0x5d, #0x4f	;  20317
      004B9D BF 4E                 2740 	.byte #0xbf, #0x4e	;  20159
      004B9F 20 4E                 2741 	.byte #0x20, #0x4e	;  20000
      004BA1 80 4D                 2742 	.byte #0x80, #0x4d	;  19840
      004BA3 E0 4C                 2743 	.byte #0xe0, #0x4c	;  19680
      004BA5 3F 4C                 2744 	.byte #0x3f, #0x4c	;  19519
      004BA7 9D 4B                 2745 	.byte #0x9d, #0x4b	;  19357
      004BA9 FA 4A                 2746 	.byte #0xfa, #0x4a	;  19194
      004BAB 57 4A                 2747 	.byte #0x57, #0x4a	;  19031
      004BAD B3 49                 2748 	.byte #0xb3, #0x49	;  18867
      004BAF 0E 49                 2749 	.byte #0x0e, #0x49	;  18702
      004BB1 69 48                 2750 	.byte #0x69, #0x48	;  18537
      004BB3 C3 47                 2751 	.byte #0xc3, #0x47	;  18371
      004BB5 1C 47                 2752 	.byte #0x1c, #0x47	;  18204
      004BB7 74 46                 2753 	.byte #0x74, #0x46	;  18036
      004BB9 CC 45                 2754 	.byte #0xcc, #0x45	;  17868
      004BBB 23 45                 2755 	.byte #0x23, #0x45	;  17699
      004BBD 7A 44                 2756 	.byte #0x7a, #0x44	;  17530
      004BBF D0 43                 2757 	.byte #0xd0, #0x43	;  17360
      004BC1 25 43                 2758 	.byte #0x25, #0x43	;  17189
      004BC3 79 42                 2759 	.byte #0x79, #0x42	;  17017
      004BC5 CD 41                 2760 	.byte #0xcd, #0x41	;  16845
      004BC7 20 41                 2761 	.byte #0x20, #0x41	;  16672
      004BC9 73 40                 2762 	.byte #0x73, #0x40	;  16499
      004BCB C5 3F                 2763 	.byte #0xc5, #0x3f	;  16325
      004BCD 16 3F                 2764 	.byte #0x16, #0x3f	;  16150
      004BCF 67 3E                 2765 	.byte #0x67, #0x3e	;  15975
      004BD1 B7 3D                 2766 	.byte #0xb7, #0x3d	;  15799
      004BD3 07 3D                 2767 	.byte #0x07, #0x3d	;  15623
      004BD5 56 3C                 2768 	.byte #0x56, #0x3c	;  15446
      004BD7 A4 3B                 2769 	.byte #0xa4, #0x3b	;  15268
      004BD9 F2 3A                 2770 	.byte #0xf2, #0x3a	;  15090
      004BDB 3F 3A                 2771 	.byte #0x3f, #0x3a	;  14911
      004BDD 8C 39                 2772 	.byte #0x8c, #0x39	;  14732
      004BDF D8 38                 2773 	.byte #0xd8, #0x38	;  14552
      004BE1 24 38                 2774 	.byte #0x24, #0x38	;  14372
      004BE3 6F 37                 2775 	.byte #0x6f, #0x37	;  14191
      004BE5 B9 36                 2776 	.byte #0xb9, #0x36	;  14009
      004BE7 03 36                 2777 	.byte #0x03, #0x36	;  13827
      004BE9 4D 35                 2778 	.byte #0x4d, #0x35	;  13645
      004BEB 96 34                 2779 	.byte #0x96, #0x34	;  13462
      004BED DE 33                 2780 	.byte #0xde, #0x33	;  13278
      004BEF 26 33                 2781 	.byte #0x26, #0x33	;  13094
      004BF1 6D 32                 2782 	.byte #0x6d, #0x32	;  12909
      004BF3 B4 31                 2783 	.byte #0xb4, #0x31	;  12724
      004BF5 FB 30                 2784 	.byte #0xfb, #0x30	;  12539
      004BF7 41 30                 2785 	.byte #0x41, #0x30	;  12353
      004BF9 86 2F                 2786 	.byte #0x86, #0x2f	;  12166
      004BFB CC 2E                 2787 	.byte #0xcc, #0x2e	;  11980
      004BFD 10 2E                 2788 	.byte #0x10, #0x2e	;  11792
      004BFF 54 2D                 2789 	.byte #0x54, #0x2d	;  11604
      004C01 98 2C                 2790 	.byte #0x98, #0x2c	;  11416
      004C03 DB 2B                 2791 	.byte #0xdb, #0x2b	;  11227
      004C05 1E 2B                 2792 	.byte #0x1e, #0x2b	;  11038
      004C07 61 2A                 2793 	.byte #0x61, #0x2a	;  10849
      004C09 A3 29                 2794 	.byte #0xa3, #0x29	;  10659
      004C0B E5 28                 2795 	.byte #0xe5, #0x28	;  10469
      004C0D 26 28                 2796 	.byte #0x26, #0x28	;  10278
      004C0F 67 27                 2797 	.byte #0x67, #0x27	;  10087
      004C11 A7 26                 2798 	.byte #0xa7, #0x26	;  9895
      004C13 E7 25                 2799 	.byte #0xe7, #0x25	;  9703
      004C15 27 25                 2800 	.byte #0x27, #0x25	;  9511
      004C17 67 24                 2801 	.byte #0x67, #0x24	;  9319
      004C19 A6 23                 2802 	.byte #0xa6, #0x23	;  9126
      004C1B E4 22                 2803 	.byte #0xe4, #0x22	;  8932
      004C1D 23 22                 2804 	.byte #0x23, #0x22	;  8739
      004C1F 61 21                 2805 	.byte #0x61, #0x21	;  8545
      004C21 9F 20                 2806 	.byte #0x9f, #0x20	;  8351
      004C23 DC 1F                 2807 	.byte #0xdc, #0x1f	;  8156
      004C25 19 1F                 2808 	.byte #0x19, #0x1f	;  7961
      004C27 56 1E                 2809 	.byte #0x56, #0x1e	;  7766
      004C29 93 1D                 2810 	.byte #0x93, #0x1d	;  7571
      004C2B CF 1C                 2811 	.byte #0xcf, #0x1c	;  7375
      004C2D 0B 1C                 2812 	.byte #0x0b, #0x1c	;  7179
      004C2F 46 1B                 2813 	.byte #0x46, #0x1b	;  6982
      004C31 82 1A                 2814 	.byte #0x82, #0x1a	;  6786
      004C33 BD 19                 2815 	.byte #0xbd, #0x19	;  6589
      004C35 F8 18                 2816 	.byte #0xf8, #0x18	;  6392
      004C37 33 18                 2817 	.byte #0x33, #0x18	;  6195
      004C39 6D 17                 2818 	.byte #0x6d, #0x17	;  5997
      004C3B A7 16                 2819 	.byte #0xa7, #0x16	;  5799
      004C3D E1 15                 2820 	.byte #0xe1, #0x15	;  5601
      004C3F 1B 15                 2821 	.byte #0x1b, #0x15	;  5403
      004C41 55 14                 2822 	.byte #0x55, #0x14	;  5205
      004C43 8E 13                 2823 	.byte #0x8e, #0x13	;  5006
      004C45 C7 12                 2824 	.byte #0xc7, #0x12	;  4807
      004C47 00 12                 2825 	.byte #0x00, #0x12	;  4608
      004C49 39 11                 2826 	.byte #0x39, #0x11	;  4409
      004C4B 72 10                 2827 	.byte #0x72, #0x10	;  4210
      004C4D AB 0F                 2828 	.byte #0xab, #0x0f	;  4011
      004C4F E3 0E                 2829 	.byte #0xe3, #0x0e	;  3811
      004C51 1B 0E                 2830 	.byte #0x1b, #0x0e	;  3611
      004C53 53 0D                 2831 	.byte #0x53, #0x0d	;  3411
      004C55 8B 0C                 2832 	.byte #0x8b, #0x0c	;  3211
      004C57 C3 0B                 2833 	.byte #0xc3, #0x0b	;  3011
      004C59 FB 0A                 2834 	.byte #0xfb, #0x0a	;  2811
      004C5B 32 0A                 2835 	.byte #0x32, #0x0a	;  2610
      004C5D 6A 09                 2836 	.byte #0x6a, #0x09	;  2410
      004C5F A1 08                 2837 	.byte #0xa1, #0x08	;  2209
      004C61 D9 07                 2838 	.byte #0xd9, #0x07	;  2009
      004C63 10 07                 2839 	.byte #0x10, #0x07	;  1808
      004C65 47 06                 2840 	.byte #0x47, #0x06	;  1607
      004C67 7E 05                 2841 	.byte #0x7e, #0x05	;  1406
      004C69 B6 04                 2842 	.byte #0xb6, #0x04	;  1206
      004C6B ED 03                 2843 	.byte #0xed, #0x03	;  1005
      004C6D 24 03                 2844 	.byte #0x24, #0x03	;  804
      004C6F 5B 02                 2845 	.byte #0x5b, #0x02	;  603
      004C71 92 01                 2846 	.byte #0x92, #0x01	;  402
      004C73 C9 00                 2847 	.byte #0xc9, #0x00	;  201
      004C75 00 00                 2848 	.byte #0x00, #0x00	;  0
      004C77 37 FF                 2849 	.byte #0x37, #0xff	; -201
      004C79 6E FE                 2850 	.byte #0x6e, #0xfe	; -402
      004C7B A5 FD                 2851 	.byte #0xa5, #0xfd	; -603
      004C7D DC FC                 2852 	.byte #0xdc, #0xfc	; -804
      004C7F 13 FC                 2853 	.byte #0x13, #0xfc	; -1005
      004C81 4A FB                 2854 	.byte #0x4a, #0xfb	; -1206
      004C83 82 FA                 2855 	.byte #0x82, #0xfa	; -1406
      004C85 B9 F9                 2856 	.byte #0xb9, #0xf9	; -1607
      004C87 F0 F8                 2857 	.byte #0xf0, #0xf8	; -1808
      004C89 27 F8                 2858 	.byte #0x27, #0xf8	; -2009
      004C8B 5F F7                 2859 	.byte #0x5f, #0xf7	; -2209
      004C8D 96 F6                 2860 	.byte #0x96, #0xf6	; -2410
      004C8F CE F5                 2861 	.byte #0xce, #0xf5	; -2610
      004C91 05 F5                 2862 	.byte #0x05, #0xf5	; -2811
      004C93 3D F4                 2863 	.byte #0x3d, #0xf4	; -3011
      004C95 75 F3                 2864 	.byte #0x75, #0xf3	; -3211
      004C97 AD F2                 2865 	.byte #0xad, #0xf2	; -3411
      004C99 E5 F1                 2866 	.byte #0xe5, #0xf1	; -3611
      004C9B 1D F1                 2867 	.byte #0x1d, #0xf1	; -3811
      004C9D 55 F0                 2868 	.byte #0x55, #0xf0	; -4011
      004C9F 8E EF                 2869 	.byte #0x8e, #0xef	; -4210
      004CA1 C7 EE                 2870 	.byte #0xc7, #0xee	; -4409
      004CA3 00 EE                 2871 	.byte #0x00, #0xee	; -4608
      004CA5 39 ED                 2872 	.byte #0x39, #0xed	; -4807
      004CA7 72 EC                 2873 	.byte #0x72, #0xec	; -5006
      004CA9 AB EB                 2874 	.byte #0xab, #0xeb	; -5205
      004CAB E5 EA                 2875 	.byte #0xe5, #0xea	; -5403
      004CAD 1F EA                 2876 	.byte #0x1f, #0xea	; -5601
      004CAF 59 E9                 2877 	.byte #0x59, #0xe9	; -5799
      004CB1 93 E8                 2878 	.byte #0x93, #0xe8	; -5997
      004CB3 CD E7                 2879 	.byte #0xcd, #0xe7	; -6195
      004CB5 08 E7                 2880 	.byte #0x08, #0xe7	; -6392
      004CB7 43 E6                 2881 	.byte #0x43, #0xe6	; -6589
      004CB9 7E E5                 2882 	.byte #0x7e, #0xe5	; -6786
      004CBB BA E4                 2883 	.byte #0xba, #0xe4	; -6982
      004CBD F5 E3                 2884 	.byte #0xf5, #0xe3	; -7179
      004CBF 31 E3                 2885 	.byte #0x31, #0xe3	; -7375
      004CC1 6D E2                 2886 	.byte #0x6d, #0xe2	; -7571
      004CC3 AA E1                 2887 	.byte #0xaa, #0xe1	; -7766
      004CC5 E7 E0                 2888 	.byte #0xe7, #0xe0	; -7961
      004CC7 24 E0                 2889 	.byte #0x24, #0xe0	; -8156
      004CC9 61 DF                 2890 	.byte #0x61, #0xdf	; -8351
      004CCB 9F DE                 2891 	.byte #0x9f, #0xde	; -8545
      004CCD DD DD                 2892 	.byte #0xdd, #0xdd	; -8739
      004CCF 1C DD                 2893 	.byte #0x1c, #0xdd	; -8932
      004CD1 5A DC                 2894 	.byte #0x5a, #0xdc	; -9126
      004CD3 99 DB                 2895 	.byte #0x99, #0xdb	; -9319
      004CD5 D9 DA                 2896 	.byte #0xd9, #0xda	; -9511
      004CD7 19 DA                 2897 	.byte #0x19, #0xda	; -9703
      004CD9 59 D9                 2898 	.byte #0x59, #0xd9	; -9895
      004CDB 99 D8                 2899 	.byte #0x99, #0xd8	; -10087
      004CDD DA D7                 2900 	.byte #0xda, #0xd7	; -10278
      004CDF 1B D7                 2901 	.byte #0x1b, #0xd7	; -10469
      004CE1 5D D6                 2902 	.byte #0x5d, #0xd6	; -10659
      004CE3 9F D5                 2903 	.byte #0x9f, #0xd5	; -10849
      004CE5 E2 D4                 2904 	.byte #0xe2, #0xd4	; -11038
      004CE7 25 D4                 2905 	.byte #0x25, #0xd4	; -11227
      004CE9 68 D3                 2906 	.byte #0x68, #0xd3	; -11416
      004CEB AC D2                 2907 	.byte #0xac, #0xd2	; -11604
      004CED F0 D1                 2908 	.byte #0xf0, #0xd1	; -11792
      004CEF 34 D1                 2909 	.byte #0x34, #0xd1	; -11980
      004CF1 7A D0                 2910 	.byte #0x7a, #0xd0	; -12166
      004CF3 BF CF                 2911 	.byte #0xbf, #0xcf	; -12353
      004CF5 05 CF                 2912 	.byte #0x05, #0xcf	; -12539
      004CF7 4C CE                 2913 	.byte #0x4c, #0xce	; -12724
      004CF9 93 CD                 2914 	.byte #0x93, #0xcd	; -12909
      004CFB DA CC                 2915 	.byte #0xda, #0xcc	; -13094
      004CFD 22 CC                 2916 	.byte #0x22, #0xcc	; -13278
      004CFF 6A CB                 2917 	.byte #0x6a, #0xcb	; -13462
      004D01 B3 CA                 2918 	.byte #0xb3, #0xca	; -13645
      004D03 FD C9                 2919 	.byte #0xfd, #0xc9	; -13827
      004D05 47 C9                 2920 	.byte #0x47, #0xc9	; -14009
      004D07 91 C8                 2921 	.byte #0x91, #0xc8	; -14191
      004D09 DC C7                 2922 	.byte #0xdc, #0xc7	; -14372
      004D0B 28 C7                 2923 	.byte #0x28, #0xc7	; -14552
      004D0D 74 C6                 2924 	.byte #0x74, #0xc6	; -14732
      004D0F C1 C5                 2925 	.byte #0xc1, #0xc5	; -14911
      004D11 0E C5                 2926 	.byte #0x0e, #0xc5	; -15090
      004D13 5C C4                 2927 	.byte #0x5c, #0xc4	; -15268
      004D15 AA C3                 2928 	.byte #0xaa, #0xc3	; -15446
      004D17 F9 C2                 2929 	.byte #0xf9, #0xc2	; -15623
      004D19 49 C2                 2930 	.byte #0x49, #0xc2	; -15799
      004D1B 99 C1                 2931 	.byte #0x99, #0xc1	; -15975
      004D1D EA C0                 2932 	.byte #0xea, #0xc0	; -16150
      004D1F 3B C0                 2933 	.byte #0x3b, #0xc0	; -16325
      004D21 8D BF                 2934 	.byte #0x8d, #0xbf	; -16499
      004D23 E0 BE                 2935 	.byte #0xe0, #0xbe	; -16672
      004D25 33 BE                 2936 	.byte #0x33, #0xbe	; -16845
      004D27 87 BD                 2937 	.byte #0x87, #0xbd	; -17017
      004D29 DB BC                 2938 	.byte #0xdb, #0xbc	; -17189
      004D2B 30 BC                 2939 	.byte #0x30, #0xbc	; -17360
      004D2D 86 BB                 2940 	.byte #0x86, #0xbb	; -17530
      004D2F DD BA                 2941 	.byte #0xdd, #0xba	; -17699
      004D31 34 BA                 2942 	.byte #0x34, #0xba	; -17868
      004D33 8C B9                 2943 	.byte #0x8c, #0xb9	; -18036
      004D35 E4 B8                 2944 	.byte #0xe4, #0xb8	; -18204
      004D37 3D B8                 2945 	.byte #0x3d, #0xb8	; -18371
      004D39 97 B7                 2946 	.byte #0x97, #0xb7	; -18537
      004D3B F2 B6                 2947 	.byte #0xf2, #0xb6	; -18702
      004D3D 4D B6                 2948 	.byte #0x4d, #0xb6	; -18867
      004D3F A9 B5                 2949 	.byte #0xa9, #0xb5	; -19031
      004D41 06 B5                 2950 	.byte #0x06, #0xb5	; -19194
      004D43 63 B4                 2951 	.byte #0x63, #0xb4	; -19357
      004D45 C1 B3                 2952 	.byte #0xc1, #0xb3	; -19519
      004D47 20 B3                 2953 	.byte #0x20, #0xb3	; -19680
      004D49 80 B2                 2954 	.byte #0x80, #0xb2	; -19840
      004D4B E0 B1                 2955 	.byte #0xe0, #0xb1	; -20000
      004D4D 41 B1                 2956 	.byte #0x41, #0xb1	; -20159
      004D4F A3 B0                 2957 	.byte #0xa3, #0xb0	; -20317
      004D51 06 B0                 2958 	.byte #0x06, #0xb0	; -20474
      004D53 69 AF                 2959 	.byte #0x69, #0xaf	; -20631
      004D55 CD AE                 2960 	.byte #0xcd, #0xae	; -20787
      004D57 32 AE                 2961 	.byte #0x32, #0xae	; -20942
      004D59 98 AD                 2962 	.byte #0x98, #0xad	; -21096
      004D5B FF AC                 2963 	.byte #0xff, #0xac	; -21249
      004D5D 66 AC                 2964 	.byte #0x66, #0xac	; -21402
      004D5F CE AB                 2965 	.byte #0xce, #0xab	; -21554
      004D61 37 AB                 2966 	.byte #0x37, #0xab	; -21705
      004D63 A1 AA                 2967 	.byte #0xa1, #0xaa	; -21855
      004D65 0C AA                 2968 	.byte #0x0c, #0xaa	; -22004
      004D67 77 A9                 2969 	.byte #0x77, #0xa9	; -22153
      004D69 E3 A8                 2970 	.byte #0xe3, #0xa8	; -22301
      004D6B 50 A8                 2971 	.byte #0x50, #0xa8	; -22448
      004D6D BE A7                 2972 	.byte #0xbe, #0xa7	; -22594
      004D6F 2D A7                 2973 	.byte #0x2d, #0xa7	; -22739
      004D71 9D A6                 2974 	.byte #0x9d, #0xa6	; -22883
      004D73 0D A6                 2975 	.byte #0x0d, #0xa6	; -23027
      004D75 7F A5                 2976 	.byte #0x7f, #0xa5	; -23169
      004D77 F1 A4                 2977 	.byte #0xf1, #0xa4	; -23311
      004D79 64 A4                 2978 	.byte #0x64, #0xa4	; -23452
      004D7B D8 A3                 2979 	.byte #0xd8, #0xa3	; -23592
      004D7D 4D A3                 2980 	.byte #0x4d, #0xa3	; -23731
      004D7F C3 A2                 2981 	.byte #0xc3, #0xa2	; -23869
      004D81 3A A2                 2982 	.byte #0x3a, #0xa2	; -24006
      004D83 B1 A1                 2983 	.byte #0xb1, #0xa1	; -24143
      004D85 2A A1                 2984 	.byte #0x2a, #0xa1	; -24278
      004D87 A3 A0                 2985 	.byte #0xa3, #0xa0	; -24413
      004D89 1E A0                 2986 	.byte #0x1e, #0xa0	; -24546
      004D8B 99 9F                 2987 	.byte #0x99, #0x9f	; -24679
      004D8D 15 9F                 2988 	.byte #0x15, #0x9f	; -24811
      004D8F 92 9E                 2989 	.byte #0x92, #0x9e	; -24942
      004D91 10 9E                 2990 	.byte #0x10, #0x9e	; -25072
      004D93 8F 9D                 2991 	.byte #0x8f, #0x9d	; -25201
      004D95 0F 9D                 2992 	.byte #0x0f, #0x9d	; -25329
      004D97 90 9C                 2993 	.byte #0x90, #0x9c	; -25456
      004D99 12 9C                 2994 	.byte #0x12, #0x9c	; -25582
      004D9B 95 9B                 2995 	.byte #0x95, #0x9b	; -25707
      004D9D 19 9B                 2996 	.byte #0x19, #0x9b	; -25831
      004D9F 9E 9A                 2997 	.byte #0x9e, #0x9a	; -25954
      004DA1 23 9A                 2998 	.byte #0x23, #0x9a	; -26077
      004DA3 AA 99                 2999 	.byte #0xaa, #0x99	; -26198
      004DA5 32 99                 3000 	.byte #0x32, #0x99	; -26318
      004DA7 BB 98                 3001 	.byte #0xbb, #0x98	; -26437
      004DA9 44 98                 3002 	.byte #0x44, #0x98	; -26556
      004DAB CF 97                 3003 	.byte #0xcf, #0x97	; -26673
      004DAD 5B 97                 3004 	.byte #0x5b, #0x97	; -26789
      004DAF E7 96                 3005 	.byte #0xe7, #0x96	; -26905
      004DB1 75 96                 3006 	.byte #0x75, #0x96	; -27019
      004DB3 04 96                 3007 	.byte #0x04, #0x96	; -27132
      004DB5 94 95                 3008 	.byte #0x94, #0x95	; -27244
      004DB7 25 95                 3009 	.byte #0x25, #0x95	; -27355
      004DB9 B6 94                 3010 	.byte #0xb6, #0x94	; -27466
      004DBB 49 94                 3011 	.byte #0x49, #0x94	; -27575
      004DBD DD 93                 3012 	.byte #0xdd, #0x93	; -27683
      004DBF 72 93                 3013 	.byte #0x72, #0x93	; -27790
      004DC1 08 93                 3014 	.byte #0x08, #0x93	; -27896
      004DC3 9F 92                 3015 	.byte #0x9f, #0x92	; -28001
      004DC5 37 92                 3016 	.byte #0x37, #0x92	; -28105
      004DC7 D0 91                 3017 	.byte #0xd0, #0x91	; -28208
      004DC9 6B 91                 3018 	.byte #0x6b, #0x91	; -28309
      004DCB 06 91                 3019 	.byte #0x06, #0x91	; -28410
      004DCD A2 90                 3020 	.byte #0xa2, #0x90	; -28510
      004DCF 40 90                 3021 	.byte #0x40, #0x90	; -28608
      004DD1 DE 8F                 3022 	.byte #0xde, #0x8f	; -28706
      004DD3 7E 8F                 3023 	.byte #0x7e, #0x8f	; -28802
      004DD5 1F 8F                 3024 	.byte #0x1f, #0x8f	; -28897
      004DD7 C0 8E                 3025 	.byte #0xc0, #0x8e	; -28992
      004DD9 63 8E                 3026 	.byte #0x63, #0x8e	; -29085
      004DDB 07 8E                 3027 	.byte #0x07, #0x8e	; -29177
      004DDD AC 8D                 3028 	.byte #0xac, #0x8d	; -29268
      004DDF 52 8D                 3029 	.byte #0x52, #0x8d	; -29358
      004DE1 FA 8C                 3030 	.byte #0xfa, #0x8c	; -29446
      004DE3 A2 8C                 3031 	.byte #0xa2, #0x8c	; -29534
      004DE5 4B 8C                 3032 	.byte #0x4b, #0x8c	; -29621
      004DE7 F6 8B                 3033 	.byte #0xf6, #0x8b	; -29706
      004DE9 A2 8B                 3034 	.byte #0xa2, #0x8b	; -29790
      004DEB 4F 8B                 3035 	.byte #0x4f, #0x8b	; -29873
      004DED FD 8A                 3036 	.byte #0xfd, #0x8a	; -29955
      004DEF AC 8A                 3037 	.byte #0xac, #0x8a	; -30036
      004DF1 5C 8A                 3038 	.byte #0x5c, #0x8a	; -30116
      004DF3 0D 8A                 3039 	.byte #0x0d, #0x8a	; -30195
      004DF5 C0 89                 3040 	.byte #0xc0, #0x89	; -30272
      004DF7 73 89                 3041 	.byte #0x73, #0x89	; -30349
      004DF9 28 89                 3042 	.byte #0x28, #0x89	; -30424
      004DFB DE 88                 3043 	.byte #0xde, #0x88	; -30498
      004DFD 95 88                 3044 	.byte #0x95, #0x88	; -30571
      004DFF 4D 88                 3045 	.byte #0x4d, #0x88	; -30643
      004E01 07 88                 3046 	.byte #0x07, #0x88	; -30713
      004E03 C1 87                 3047 	.byte #0xc1, #0x87	; -30783
      004E05 7D 87                 3048 	.byte #0x7d, #0x87	; -30851
      004E07 3A 87                 3049 	.byte #0x3a, #0x87	; -30918
      004E09 F8 86                 3050 	.byte #0xf8, #0x86	; -30984
      004E0B B7 86                 3051 	.byte #0xb7, #0x86	; -31049
      004E0D 77 86                 3052 	.byte #0x77, #0x86	; -31113
      004E0F 39 86                 3053 	.byte #0x39, #0x86	; -31175
      004E11 FC 85                 3054 	.byte #0xfc, #0x85	; -31236
      004E13 BF 85                 3055 	.byte #0xbf, #0x85	; -31297
      004E15 84 85                 3056 	.byte #0x84, #0x85	; -31356
      004E17 4B 85                 3057 	.byte #0x4b, #0x85	; -31413
      004E19 12 85                 3058 	.byte #0x12, #0x85	; -31470
      004E1B DB 84                 3059 	.byte #0xdb, #0x84	; -31525
      004E1D A4 84                 3060 	.byte #0xa4, #0x84	; -31580
      004E1F 6F 84                 3061 	.byte #0x6f, #0x84	; -31633
      004E21 3C 84                 3062 	.byte #0x3c, #0x84	; -31684
      004E23 09 84                 3063 	.byte #0x09, #0x84	; -31735
      004E25 D7 83                 3064 	.byte #0xd7, #0x83	; -31785
      004E27 A7 83                 3065 	.byte #0xa7, #0x83	; -31833
      004E29 78 83                 3066 	.byte #0x78, #0x83	; -31880
      004E2B 4A 83                 3067 	.byte #0x4a, #0x83	; -31926
      004E2D 1E 83                 3068 	.byte #0x1e, #0x83	; -31970
      004E2F F2 82                 3069 	.byte #0xf2, #0x82	; -32014
      004E31 C8 82                 3070 	.byte #0xc8, #0x82	; -32056
      004E33 9F 82                 3071 	.byte #0x9f, #0x82	; -32097
      004E35 77 82                 3072 	.byte #0x77, #0x82	; -32137
      004E37 50 82                 3073 	.byte #0x50, #0x82	; -32176
      004E39 2B 82                 3074 	.byte #0x2b, #0x82	; -32213
      004E3B 07 82                 3075 	.byte #0x07, #0x82	; -32249
      004E3D E4 81                 3076 	.byte #0xe4, #0x81	; -32284
      004E3F C2 81                 3077 	.byte #0xc2, #0x81	; -32318
      004E41 A2 81                 3078 	.byte #0xa2, #0x81	; -32350
      004E43 82 81                 3079 	.byte #0x82, #0x81	; -32382
      004E45 64 81                 3080 	.byte #0x64, #0x81	; -32412
      004E47 47 81                 3081 	.byte #0x47, #0x81	; -32441
      004E49 2C 81                 3082 	.byte #0x2c, #0x81	; -32468
      004E4B 11 81                 3083 	.byte #0x11, #0x81	; -32495
      004E4D F8 80                 3084 	.byte #0xf8, #0x80	; -32520
      004E4F E0 80                 3085 	.byte #0xe0, #0x80	; -32544
      004E51 C9 80                 3086 	.byte #0xc9, #0x80	; -32567
      004E53 B4 80                 3087 	.byte #0xb4, #0x80	; -32588
      004E55 9F 80                 3088 	.byte #0x9f, #0x80	; -32609
      004E57 8C 80                 3089 	.byte #0x8c, #0x80	; -32628
      004E59 7A 80                 3090 	.byte #0x7a, #0x80	; -32646
      004E5B 6A 80                 3091 	.byte #0x6a, #0x80	; -32662
      004E5D 5A 80                 3092 	.byte #0x5a, #0x80	; -32678
      004E5F 4C 80                 3093 	.byte #0x4c, #0x80	; -32692
      004E61 3F 80                 3094 	.byte #0x3f, #0x80	; -32705
      004E63 33 80                 3095 	.byte #0x33, #0x80	; -32717
      004E65 29 80                 3096 	.byte #0x29, #0x80	; -32727
      004E67 20 80                 3097 	.byte #0x20, #0x80	; -32736
      004E69 18 80                 3098 	.byte #0x18, #0x80	; -32744
      004E6B 11 80                 3099 	.byte #0x11, #0x80	; -32751
      004E6D 0B 80                 3100 	.byte #0x0b, #0x80	; -32757
      004E6F 07 80                 3101 	.byte #0x07, #0x80	; -32761
      004E71 04 80                 3102 	.byte #0x04, #0x80	; -32764
      004E73 02 80                 3103 	.byte #0x02, #0x80	; -32766
                                   3104 	.area CABS    (ABS,CODE)
