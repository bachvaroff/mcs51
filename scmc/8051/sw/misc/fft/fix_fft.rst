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
      0020AE                        152 _fix_fft:
                           000007   153 	ar7 = 0x07
                           000006   154 	ar6 = 0x06
                           000005   155 	ar5 = 0x05
                           000004   156 	ar4 = 0x04
                           000003   157 	ar3 = 0x03
                           000002   158 	ar2 = 0x02
                           000001   159 	ar1 = 0x01
                           000000   160 	ar0 = 0x00
      0020AE C0 10            [24]  161 	push	_bp
      0020B0 85 81 10         [24]  162 	mov	_bp,sp
      0020B3 C0 82            [24]  163 	push	dpl
      0020B5 C0 83            [24]  164 	push	dph
      0020B7 C0 F0            [24]  165 	push	b
      0020B9 E5 81            [12]  166 	mov	a,sp
      0020BB 24 34            [12]  167 	add	a,#0x34
      0020BD F5 81            [12]  168 	mov	sp,a
                                    169 ;	fix_fft.c:173: n = 1 << m;
      0020BF E5 10            [12]  170 	mov	a,_bp
      0020C1 24 F9            [12]  171 	add	a,#0xf9
      0020C3 F8               [12]  172 	mov	r0,a
      0020C4 86 04            [24]  173 	mov	ar4,@r0
      0020C6 8C F0            [24]  174 	mov	b,r4
      0020C8 05 F0            [12]  175 	inc	b
      0020CA 7C 01            [12]  176 	mov	r4,#0x01
      0020CC 7B 00            [12]  177 	mov	r3,#0x00
      0020CE 80 06            [24]  178 	sjmp	00265$
      0020D0                        179 00264$:
      0020D0 EC               [12]  180 	mov	a,r4
      0020D1 2C               [12]  181 	add	a,r4
      0020D2 FC               [12]  182 	mov	r4,a
      0020D3 EB               [12]  183 	mov	a,r3
      0020D4 33               [12]  184 	rlc	a
      0020D5 FB               [12]  185 	mov	r3,a
      0020D6                        186 00265$:
      0020D6 D5 F0 F7         [24]  187 	djnz	b,00264$
      0020D9 E5 10            [12]  188 	mov	a,_bp
      0020DB 24 22            [12]  189 	add	a,#0x22
      0020DD F8               [12]  190 	mov	r0,a
      0020DE A6 04            [24]  191 	mov	@r0,ar4
      0020E0 08               [12]  192 	inc	r0
      0020E1 A6 03            [24]  193 	mov	@r0,ar3
                                    194 ;	fix_fft.c:176: if (n > N_WAVE) return -1;
      0020E3 E5 10            [12]  195 	mov	a,_bp
      0020E5 24 22            [12]  196 	add	a,#0x22
      0020E7 F8               [12]  197 	mov	r0,a
      0020E8 86 02            [24]  198 	mov	ar2,@r0
      0020EA 08               [12]  199 	inc	r0
      0020EB 86 04            [24]  200 	mov	ar4,@r0
      0020ED C3               [12]  201 	clr	c
      0020EE E4               [12]  202 	clr	a
      0020EF 9A               [12]  203 	subb	a,r2
      0020F0 74 84            [12]  204 	mov	a,#(0x04 ^ 0x80)
      0020F2 8C F0            [24]  205 	mov	b,r4
      0020F4 63 F0 80         [24]  206 	xrl	b,#0x80
      0020F7 95 F0            [12]  207 	subb	a,b
      0020F9 50 06            [24]  208 	jnc	00102$
      0020FB 90 FF FF         [24]  209 	mov	dptr,#0xffff
      0020FE 02 2A 5B         [24]  210 	ljmp	00149$
      002101                        211 00102$:
                                    212 ;	fix_fft.c:178: mr = 0;
      002101 E5 10            [12]  213 	mov	a,_bp
      002103 24 18            [12]  214 	add	a,#0x18
      002105 F8               [12]  215 	mov	r0,a
      002106 E4               [12]  216 	clr	a
      002107 F6               [12]  217 	mov	@r0,a
      002108 08               [12]  218 	inc	r0
      002109 F6               [12]  219 	mov	@r0,a
                                    220 ;	fix_fft.c:179: nn = n - 1;
      00210A 1A               [12]  221 	dec	r2
      00210B BA FF 01         [24]  222 	cjne	r2,#0xff,00267$
      00210E 1C               [12]  223 	dec	r4
      00210F                        224 00267$:
                                    225 ;	fix_fft.c:183: for (m = 1; m <= nn; m++) {
      00210F 7D 01            [12]  226 	mov	r5,#0x01
      002111 7E 00            [12]  227 	mov	r6,#0x00
      002113                        228 00139$:
      002113 C3               [12]  229 	clr	c
      002114 EA               [12]  230 	mov	a,r2
      002115 9D               [12]  231 	subb	a,r5
      002116 EC               [12]  232 	mov	a,r4
      002117 64 80            [12]  233 	xrl	a,#0x80
      002119 8E F0            [24]  234 	mov	b,r6
      00211B 63 F0 80         [24]  235 	xrl	b,#0x80
      00211E 95 F0            [12]  236 	subb	a,b
      002120 50 03            [24]  237 	jnc	00268$
      002122 02 23 55         [24]  238 	ljmp	00109$
      002125                        239 00268$:
                                    240 ;	fix_fft.c:184: l = n;
      002125 E5 10            [12]  241 	mov	a,_bp
      002127 24 22            [12]  242 	add	a,#0x22
      002129 F8               [12]  243 	mov	r0,a
      00212A E5 10            [12]  244 	mov	a,_bp
      00212C 24 04            [12]  245 	add	a,#0x04
      00212E F9               [12]  246 	mov	r1,a
      00212F E6               [12]  247 	mov	a,@r0
      002130 F7               [12]  248 	mov	@r1,a
      002131 08               [12]  249 	inc	r0
      002132 09               [12]  250 	inc	r1
      002133 E6               [12]  251 	mov	a,@r0
      002134 F7               [12]  252 	mov	@r1,a
                                    253 ;	fix_fft.c:186: do l >>= 1;
      002135                        254 00103$:
      002135 C0 05            [24]  255 	push	ar5
      002137 C0 06            [24]  256 	push	ar6
      002139 E5 10            [12]  257 	mov	a,_bp
      00213B 24 04            [12]  258 	add	a,#0x04
      00213D F8               [12]  259 	mov	r0,a
      00213E 08               [12]  260 	inc	r0
      00213F E6               [12]  261 	mov	a,@r0
      002140 18               [12]  262 	dec	r0
      002141 A2 E7            [12]  263 	mov	c,acc.7
      002143 13               [12]  264 	rrc	a
      002144 C6               [12]  265 	xch	a,@r0
      002145 13               [12]  266 	rrc	a
      002146 C6               [12]  267 	xch	a,@r0
      002147 08               [12]  268 	inc	r0
      002148 F6               [12]  269 	mov	@r0,a
                                    270 ;	fix_fft.c:187: while ((mr + l) > nn);
      002149 E5 10            [12]  271 	mov	a,_bp
      00214B 24 18            [12]  272 	add	a,#0x18
      00214D F8               [12]  273 	mov	r0,a
      00214E E5 10            [12]  274 	mov	a,_bp
      002150 24 04            [12]  275 	add	a,#0x04
      002152 F9               [12]  276 	mov	r1,a
      002153 E7               [12]  277 	mov	a,@r1
      002154 26               [12]  278 	add	a,@r0
      002155 FD               [12]  279 	mov	r5,a
      002156 09               [12]  280 	inc	r1
      002157 E7               [12]  281 	mov	a,@r1
      002158 08               [12]  282 	inc	r0
      002159 36               [12]  283 	addc	a,@r0
      00215A FE               [12]  284 	mov	r6,a
      00215B C3               [12]  285 	clr	c
      00215C EA               [12]  286 	mov	a,r2
      00215D 9D               [12]  287 	subb	a,r5
      00215E EC               [12]  288 	mov	a,r4
      00215F 64 80            [12]  289 	xrl	a,#0x80
      002161 8E F0            [24]  290 	mov	b,r6
      002163 63 F0 80         [24]  291 	xrl	b,#0x80
      002166 95 F0            [12]  292 	subb	a,b
      002168 D0 06            [24]  293 	pop	ar6
      00216A D0 05            [24]  294 	pop	ar5
      00216C 40 C7            [24]  295 	jc	00103$
                                    296 ;	fix_fft.c:189: mr = (mr & (l - 1)) + l;
      00216E C0 02            [24]  297 	push	ar2
      002170 C0 04            [24]  298 	push	ar4
      002172 E5 10            [12]  299 	mov	a,_bp
      002174 24 04            [12]  300 	add	a,#0x04
      002176 F8               [12]  301 	mov	r0,a
      002177 86 02            [24]  302 	mov	ar2,@r0
      002179 08               [12]  303 	inc	r0
      00217A 86 04            [24]  304 	mov	ar4,@r0
      00217C 1A               [12]  305 	dec	r2
      00217D BA FF 01         [24]  306 	cjne	r2,#0xff,00270$
      002180 1C               [12]  307 	dec	r4
      002181                        308 00270$:
      002181 E5 10            [12]  309 	mov	a,_bp
      002183 24 18            [12]  310 	add	a,#0x18
      002185 F8               [12]  311 	mov	r0,a
      002186 86 03            [24]  312 	mov	ar3,@r0
      002188 08               [12]  313 	inc	r0
      002189 86 07            [24]  314 	mov	ar7,@r0
      00218B EB               [12]  315 	mov	a,r3
      00218C 52 02            [12]  316 	anl	ar2,a
      00218E EF               [12]  317 	mov	a,r7
      00218F 52 04            [12]  318 	anl	ar4,a
      002191 E5 10            [12]  319 	mov	a,_bp
      002193 24 04            [12]  320 	add	a,#0x04
      002195 F8               [12]  321 	mov	r0,a
      002196 E6               [12]  322 	mov	a,@r0
      002197 2A               [12]  323 	add	a,r2
      002198 FA               [12]  324 	mov	r2,a
      002199 08               [12]  325 	inc	r0
      00219A E6               [12]  326 	mov	a,@r0
      00219B 3C               [12]  327 	addc	a,r4
      00219C FC               [12]  328 	mov	r4,a
      00219D E5 10            [12]  329 	mov	a,_bp
      00219F 24 18            [12]  330 	add	a,#0x18
      0021A1 F8               [12]  331 	mov	r0,a
      0021A2 A6 02            [24]  332 	mov	@r0,ar2
      0021A4 08               [12]  333 	inc	r0
      0021A5 A6 04            [24]  334 	mov	@r0,ar4
                                    335 ;	fix_fft.c:190: if (mr <= m) continue;
      0021A7 E5 10            [12]  336 	mov	a,_bp
      0021A9 24 18            [12]  337 	add	a,#0x18
      0021AB F8               [12]  338 	mov	r0,a
      0021AC C3               [12]  339 	clr	c
      0021AD ED               [12]  340 	mov	a,r5
      0021AE 96               [12]  341 	subb	a,@r0
      0021AF EE               [12]  342 	mov	a,r6
      0021B0 64 80            [12]  343 	xrl	a,#0x80
      0021B2 08               [12]  344 	inc	r0
      0021B3 86 F0            [24]  345 	mov	b,@r0
      0021B5 63 F0 80         [24]  346 	xrl	b,#0x80
      0021B8 95 F0            [12]  347 	subb	a,b
      0021BA D0 04            [24]  348 	pop	ar4
      0021BC D0 02            [24]  349 	pop	ar2
      0021BE 40 03            [24]  350 	jc	00271$
      0021C0 02 23 4D         [24]  351 	ljmp	00108$
      0021C3                        352 00271$:
                                    353 ;	fix_fft.c:192: tr = fr[m];
      0021C3 C0 02            [24]  354 	push	ar2
      0021C5 C0 04            [24]  355 	push	ar4
      0021C7 E5 10            [12]  356 	mov	a,_bp
      0021C9 24 04            [12]  357 	add	a,#0x04
      0021CB F8               [12]  358 	mov	r0,a
      0021CC ED               [12]  359 	mov	a,r5
      0021CD 2D               [12]  360 	add	a,r5
      0021CE F6               [12]  361 	mov	@r0,a
      0021CF EE               [12]  362 	mov	a,r6
      0021D0 33               [12]  363 	rlc	a
      0021D1 08               [12]  364 	inc	r0
      0021D2 F6               [12]  365 	mov	@r0,a
      0021D3 A8 10            [24]  366 	mov	r0,_bp
      0021D5 08               [12]  367 	inc	r0
      0021D6 E5 10            [12]  368 	mov	a,_bp
      0021D8 24 04            [12]  369 	add	a,#0x04
      0021DA F9               [12]  370 	mov	r1,a
      0021DB E7               [12]  371 	mov	a,@r1
      0021DC 26               [12]  372 	add	a,@r0
      0021DD C0 E0            [24]  373 	push	acc
      0021DF 09               [12]  374 	inc	r1
      0021E0 E7               [12]  375 	mov	a,@r1
      0021E1 08               [12]  376 	inc	r0
      0021E2 36               [12]  377 	addc	a,@r0
      0021E3 C0 E0            [24]  378 	push	acc
      0021E5 08               [12]  379 	inc	r0
      0021E6 E6               [12]  380 	mov	a,@r0
      0021E7 C0 E0            [24]  381 	push	acc
      0021E9 E5 10            [12]  382 	mov	a,_bp
      0021EB 24 08            [12]  383 	add	a,#0x08
      0021ED F8               [12]  384 	mov	r0,a
      0021EE D0 E0            [24]  385 	pop	acc
      0021F0 F6               [12]  386 	mov	@r0,a
      0021F1 18               [12]  387 	dec	r0
      0021F2 D0 E0            [24]  388 	pop	acc
      0021F4 F6               [12]  389 	mov	@r0,a
      0021F5 18               [12]  390 	dec	r0
      0021F6 D0 E0            [24]  391 	pop	acc
      0021F8 F6               [12]  392 	mov	@r0,a
      0021F9 E5 10            [12]  393 	mov	a,_bp
      0021FB 24 06            [12]  394 	add	a,#0x06
      0021FD F8               [12]  395 	mov	r0,a
      0021FE 86 82            [24]  396 	mov	dpl,@r0
      002200 08               [12]  397 	inc	r0
      002201 86 83            [24]  398 	mov	dph,@r0
      002203 08               [12]  399 	inc	r0
      002204 86 F0            [24]  400 	mov	b,@r0
      002206 E5 10            [12]  401 	mov	a,_bp
      002208 24 09            [12]  402 	add	a,#0x09
      00220A F9               [12]  403 	mov	r1,a
      00220B 12 31 7D         [24]  404 	lcall	__gptrget
      00220E F7               [12]  405 	mov	@r1,a
      00220F A3               [24]  406 	inc	dptr
      002210 12 31 7D         [24]  407 	lcall	__gptrget
      002213 09               [12]  408 	inc	r1
      002214 F7               [12]  409 	mov	@r1,a
                                    410 ;	fix_fft.c:193: fr[m] = fr[mr];
      002215 E5 10            [12]  411 	mov	a,_bp
      002217 24 18            [12]  412 	add	a,#0x18
      002219 F8               [12]  413 	mov	r0,a
      00221A E5 10            [12]  414 	mov	a,_bp
      00221C 24 0B            [12]  415 	add	a,#0x0b
      00221E F9               [12]  416 	mov	r1,a
      00221F E6               [12]  417 	mov	a,@r0
      002220 26               [12]  418 	add	a,@r0
      002221 F7               [12]  419 	mov	@r1,a
      002222 08               [12]  420 	inc	r0
      002223 E6               [12]  421 	mov	a,@r0
      002224 33               [12]  422 	rlc	a
      002225 09               [12]  423 	inc	r1
      002226 F7               [12]  424 	mov	@r1,a
      002227 A8 10            [24]  425 	mov	r0,_bp
      002229 08               [12]  426 	inc	r0
      00222A E5 10            [12]  427 	mov	a,_bp
      00222C 24 0B            [12]  428 	add	a,#0x0b
      00222E F9               [12]  429 	mov	r1,a
      00222F E7               [12]  430 	mov	a,@r1
      002230 26               [12]  431 	add	a,@r0
      002231 C0 E0            [24]  432 	push	acc
      002233 09               [12]  433 	inc	r1
      002234 E7               [12]  434 	mov	a,@r1
      002235 08               [12]  435 	inc	r0
      002236 36               [12]  436 	addc	a,@r0
      002237 C0 E0            [24]  437 	push	acc
      002239 08               [12]  438 	inc	r0
      00223A E6               [12]  439 	mov	a,@r0
      00223B C0 E0            [24]  440 	push	acc
      00223D E5 10            [12]  441 	mov	a,_bp
      00223F 24 0F            [12]  442 	add	a,#0x0f
      002241 F8               [12]  443 	mov	r0,a
      002242 D0 E0            [24]  444 	pop	acc
      002244 F6               [12]  445 	mov	@r0,a
      002245 18               [12]  446 	dec	r0
      002246 D0 E0            [24]  447 	pop	acc
      002248 F6               [12]  448 	mov	@r0,a
      002249 18               [12]  449 	dec	r0
      00224A D0 E0            [24]  450 	pop	acc
      00224C F6               [12]  451 	mov	@r0,a
      00224D E5 10            [12]  452 	mov	a,_bp
      00224F 24 0D            [12]  453 	add	a,#0x0d
      002251 F8               [12]  454 	mov	r0,a
      002252 86 82            [24]  455 	mov	dpl,@r0
      002254 08               [12]  456 	inc	r0
      002255 86 83            [24]  457 	mov	dph,@r0
      002257 08               [12]  458 	inc	r0
      002258 86 F0            [24]  459 	mov	b,@r0
      00225A 12 31 7D         [24]  460 	lcall	__gptrget
      00225D FA               [12]  461 	mov	r2,a
      00225E A3               [24]  462 	inc	dptr
      00225F 12 31 7D         [24]  463 	lcall	__gptrget
      002262 FF               [12]  464 	mov	r7,a
      002263 E5 10            [12]  465 	mov	a,_bp
      002265 24 06            [12]  466 	add	a,#0x06
      002267 F8               [12]  467 	mov	r0,a
      002268 86 82            [24]  468 	mov	dpl,@r0
      00226A 08               [12]  469 	inc	r0
      00226B 86 83            [24]  470 	mov	dph,@r0
      00226D 08               [12]  471 	inc	r0
      00226E 86 F0            [24]  472 	mov	b,@r0
      002270 EA               [12]  473 	mov	a,r2
      002271 12 2F B2         [24]  474 	lcall	__gptrput
      002274 A3               [24]  475 	inc	dptr
      002275 EF               [12]  476 	mov	a,r7
      002276 12 2F B2         [24]  477 	lcall	__gptrput
                                    478 ;	fix_fft.c:194: fr[mr] = tr;
      002279 E5 10            [12]  479 	mov	a,_bp
      00227B 24 0D            [12]  480 	add	a,#0x0d
      00227D F8               [12]  481 	mov	r0,a
      00227E 86 82            [24]  482 	mov	dpl,@r0
      002280 08               [12]  483 	inc	r0
      002281 86 83            [24]  484 	mov	dph,@r0
      002283 08               [12]  485 	inc	r0
      002284 86 F0            [24]  486 	mov	b,@r0
      002286 E5 10            [12]  487 	mov	a,_bp
      002288 24 09            [12]  488 	add	a,#0x09
      00228A F9               [12]  489 	mov	r1,a
      00228B E7               [12]  490 	mov	a,@r1
      00228C 12 2F B2         [24]  491 	lcall	__gptrput
      00228F A3               [24]  492 	inc	dptr
      002290 09               [12]  493 	inc	r1
      002291 E7               [12]  494 	mov	a,@r1
      002292 12 2F B2         [24]  495 	lcall	__gptrput
                                    496 ;	fix_fft.c:195: ti = fi[m];
      002295 E5 10            [12]  497 	mov	a,_bp
      002297 24 FB            [12]  498 	add	a,#0xfb
      002299 F8               [12]  499 	mov	r0,a
      00229A E5 10            [12]  500 	mov	a,_bp
      00229C 24 04            [12]  501 	add	a,#0x04
      00229E F9               [12]  502 	mov	r1,a
      00229F E7               [12]  503 	mov	a,@r1
      0022A0 26               [12]  504 	add	a,@r0
      0022A1 C0 E0            [24]  505 	push	acc
      0022A3 09               [12]  506 	inc	r1
      0022A4 E7               [12]  507 	mov	a,@r1
      0022A5 08               [12]  508 	inc	r0
      0022A6 36               [12]  509 	addc	a,@r0
      0022A7 C0 E0            [24]  510 	push	acc
      0022A9 08               [12]  511 	inc	r0
      0022AA E6               [12]  512 	mov	a,@r0
      0022AB C0 E0            [24]  513 	push	acc
      0022AD E5 10            [12]  514 	mov	a,_bp
      0022AF 24 0F            [12]  515 	add	a,#0x0f
      0022B1 F8               [12]  516 	mov	r0,a
      0022B2 D0 E0            [24]  517 	pop	acc
      0022B4 F6               [12]  518 	mov	@r0,a
      0022B5 18               [12]  519 	dec	r0
      0022B6 D0 E0            [24]  520 	pop	acc
      0022B8 F6               [12]  521 	mov	@r0,a
      0022B9 18               [12]  522 	dec	r0
      0022BA D0 E0            [24]  523 	pop	acc
      0022BC F6               [12]  524 	mov	@r0,a
      0022BD E5 10            [12]  525 	mov	a,_bp
      0022BF 24 0D            [12]  526 	add	a,#0x0d
      0022C1 F8               [12]  527 	mov	r0,a
      0022C2 86 82            [24]  528 	mov	dpl,@r0
      0022C4 08               [12]  529 	inc	r0
      0022C5 86 83            [24]  530 	mov	dph,@r0
      0022C7 08               [12]  531 	inc	r0
      0022C8 86 F0            [24]  532 	mov	b,@r0
      0022CA E5 10            [12]  533 	mov	a,_bp
      0022CC 24 09            [12]  534 	add	a,#0x09
      0022CE F9               [12]  535 	mov	r1,a
      0022CF 12 31 7D         [24]  536 	lcall	__gptrget
      0022D2 F7               [12]  537 	mov	@r1,a
      0022D3 A3               [24]  538 	inc	dptr
      0022D4 12 31 7D         [24]  539 	lcall	__gptrget
      0022D7 09               [12]  540 	inc	r1
      0022D8 F7               [12]  541 	mov	@r1,a
                                    542 ;	fix_fft.c:196: fi[m] = fi[mr];
      0022D9 E5 10            [12]  543 	mov	a,_bp
      0022DB 24 FB            [12]  544 	add	a,#0xfb
      0022DD F8               [12]  545 	mov	r0,a
      0022DE E5 10            [12]  546 	mov	a,_bp
      0022E0 24 0B            [12]  547 	add	a,#0x0b
      0022E2 F9               [12]  548 	mov	r1,a
      0022E3 E7               [12]  549 	mov	a,@r1
      0022E4 26               [12]  550 	add	a,@r0
      0022E5 C0 E0            [24]  551 	push	acc
      0022E7 09               [12]  552 	inc	r1
      0022E8 E7               [12]  553 	mov	a,@r1
      0022E9 08               [12]  554 	inc	r0
      0022EA 36               [12]  555 	addc	a,@r0
      0022EB C0 E0            [24]  556 	push	acc
      0022ED 08               [12]  557 	inc	r0
      0022EE E6               [12]  558 	mov	a,@r0
      0022EF C0 E0            [24]  559 	push	acc
      0022F1 E5 10            [12]  560 	mov	a,_bp
      0022F3 24 08            [12]  561 	add	a,#0x08
      0022F5 F8               [12]  562 	mov	r0,a
      0022F6 D0 E0            [24]  563 	pop	acc
      0022F8 F6               [12]  564 	mov	@r0,a
      0022F9 18               [12]  565 	dec	r0
      0022FA D0 E0            [24]  566 	pop	acc
      0022FC F6               [12]  567 	mov	@r0,a
      0022FD 18               [12]  568 	dec	r0
      0022FE D0 E0            [24]  569 	pop	acc
      002300 F6               [12]  570 	mov	@r0,a
      002301 E5 10            [12]  571 	mov	a,_bp
      002303 24 06            [12]  572 	add	a,#0x06
      002305 F8               [12]  573 	mov	r0,a
      002306 86 82            [24]  574 	mov	dpl,@r0
      002308 08               [12]  575 	inc	r0
      002309 86 83            [24]  576 	mov	dph,@r0
      00230B 08               [12]  577 	inc	r0
      00230C 86 F0            [24]  578 	mov	b,@r0
      00230E 12 31 7D         [24]  579 	lcall	__gptrget
      002311 FA               [12]  580 	mov	r2,a
      002312 A3               [24]  581 	inc	dptr
      002313 12 31 7D         [24]  582 	lcall	__gptrget
      002316 FF               [12]  583 	mov	r7,a
      002317 E5 10            [12]  584 	mov	a,_bp
      002319 24 0D            [12]  585 	add	a,#0x0d
      00231B F8               [12]  586 	mov	r0,a
      00231C 86 82            [24]  587 	mov	dpl,@r0
      00231E 08               [12]  588 	inc	r0
      00231F 86 83            [24]  589 	mov	dph,@r0
      002321 08               [12]  590 	inc	r0
      002322 86 F0            [24]  591 	mov	b,@r0
      002324 EA               [12]  592 	mov	a,r2
      002325 12 2F B2         [24]  593 	lcall	__gptrput
      002328 A3               [24]  594 	inc	dptr
      002329 EF               [12]  595 	mov	a,r7
      00232A 12 2F B2         [24]  596 	lcall	__gptrput
                                    597 ;	fix_fft.c:197: fi[mr] = ti;
      00232D E5 10            [12]  598 	mov	a,_bp
      00232F 24 06            [12]  599 	add	a,#0x06
      002331 F8               [12]  600 	mov	r0,a
      002332 86 82            [24]  601 	mov	dpl,@r0
      002334 08               [12]  602 	inc	r0
      002335 86 83            [24]  603 	mov	dph,@r0
      002337 08               [12]  604 	inc	r0
      002338 86 F0            [24]  605 	mov	b,@r0
      00233A E5 10            [12]  606 	mov	a,_bp
      00233C 24 09            [12]  607 	add	a,#0x09
      00233E F9               [12]  608 	mov	r1,a
      00233F E7               [12]  609 	mov	a,@r1
      002340 12 2F B2         [24]  610 	lcall	__gptrput
      002343 A3               [24]  611 	inc	dptr
      002344 09               [12]  612 	inc	r1
      002345 E7               [12]  613 	mov	a,@r1
      002346 12 2F B2         [24]  614 	lcall	__gptrput
                                    615 ;	fix_fft.c:274: return scale;
      002349 D0 04            [24]  616 	pop	ar4
      00234B D0 02            [24]  617 	pop	ar2
                                    618 ;	fix_fft.c:197: fi[mr] = ti;
      00234D                        619 00108$:
                                    620 ;	fix_fft.c:183: for (m = 1; m <= nn; m++) {
      00234D 0D               [12]  621 	inc	r5
      00234E BD 00 01         [24]  622 	cjne	r5,#0x00,00272$
      002351 0E               [12]  623 	inc	r6
      002352                        624 00272$:
      002352 02 21 13         [24]  625 	ljmp	00139$
      002355                        626 00109$:
                                    627 ;	fix_fft.c:200: l = 1;
      002355 E5 10            [12]  628 	mov	a,_bp
      002357 24 1C            [12]  629 	add	a,#0x1c
      002359 F8               [12]  630 	mov	r0,a
      00235A 76 01            [12]  631 	mov	@r0,#0x01
      00235C 08               [12]  632 	inc	r0
      00235D 76 00            [12]  633 	mov	@r0,#0x00
                                    634 ;	fix_fft.c:202: while (l < n) {
      00235F E5 10            [12]  635 	mov	a,_bp
      002361 24 24            [12]  636 	add	a,#0x24
      002363 F8               [12]  637 	mov	r0,a
      002364 E4               [12]  638 	clr	a
      002365 F6               [12]  639 	mov	@r0,a
      002366 08               [12]  640 	inc	r0
      002367 F6               [12]  641 	mov	@r0,a
      002368 E5 10            [12]  642 	mov	a,_bp
      00236A 24 1E            [12]  643 	add	a,#0x1e
      00236C F8               [12]  644 	mov	r0,a
      00236D 76 09            [12]  645 	mov	@r0,#0x09
      00236F 08               [12]  646 	inc	r0
      002370 76 00            [12]  647 	mov	@r0,#0x00
      002372                        648 00131$:
      002372 E5 10            [12]  649 	mov	a,_bp
      002374 24 1C            [12]  650 	add	a,#0x1c
      002376 F8               [12]  651 	mov	r0,a
      002377 E5 10            [12]  652 	mov	a,_bp
      002379 24 22            [12]  653 	add	a,#0x22
      00237B F9               [12]  654 	mov	r1,a
      00237C C3               [12]  655 	clr	c
      00237D E6               [12]  656 	mov	a,@r0
      00237E 97               [12]  657 	subb	a,@r1
      00237F 08               [12]  658 	inc	r0
      002380 E6               [12]  659 	mov	a,@r0
      002381 64 80            [12]  660 	xrl	a,#0x80
      002383 09               [12]  661 	inc	r1
      002384 87 F0            [24]  662 	mov	b,@r1
      002386 63 F0 80         [24]  663 	xrl	b,#0x80
      002389 95 F0            [12]  664 	subb	a,b
      00238B 40 03            [24]  665 	jc	00273$
      00238D 02 2A 51         [24]  666 	ljmp	00133$
      002390                        667 00273$:
                                    668 ;	fix_fft.c:203: if (inverse) {
      002390 E5 10            [12]  669 	mov	a,_bp
      002392 24 F7            [12]  670 	add	a,#0xf7
      002394 F8               [12]  671 	mov	r0,a
      002395 E6               [12]  672 	mov	a,@r0
      002396 08               [12]  673 	inc	r0
      002397 46               [12]  674 	orl	a,@r0
      002398 70 03            [24]  675 	jnz	00274$
      00239A 02 24 A7         [24]  676 	ljmp	00121$
      00239D                        677 00274$:
                                    678 ;	fix_fft.c:205: shift = 0;
      00239D E5 10            [12]  679 	mov	a,_bp
      00239F 24 26            [12]  680 	add	a,#0x26
      0023A1 F8               [12]  681 	mov	r0,a
      0023A2 E4               [12]  682 	clr	a
      0023A3 F6               [12]  683 	mov	@r0,a
      0023A4 08               [12]  684 	inc	r0
      0023A5 F6               [12]  685 	mov	@r0,a
                                    686 ;	fix_fft.c:207: for (i = 0; i < n; i++) {
      0023A6 7A 00            [12]  687 	mov	r2,#0x00
      0023A8 7B 00            [12]  688 	mov	r3,#0x00
      0023AA                        689 00141$:
      0023AA E5 10            [12]  690 	mov	a,_bp
      0023AC 24 22            [12]  691 	add	a,#0x22
      0023AE F8               [12]  692 	mov	r0,a
      0023AF C3               [12]  693 	clr	c
      0023B0 EA               [12]  694 	mov	a,r2
      0023B1 96               [12]  695 	subb	a,@r0
      0023B2 EB               [12]  696 	mov	a,r3
      0023B3 64 80            [12]  697 	xrl	a,#0x80
      0023B5 08               [12]  698 	inc	r0
      0023B6 86 F0            [24]  699 	mov	b,@r0
      0023B8 63 F0 80         [24]  700 	xrl	b,#0x80
      0023BB 95 F0            [12]  701 	subb	a,b
      0023BD 40 03            [24]  702 	jc	00275$
      0023BF 02 24 90         [24]  703 	ljmp	00117$
      0023C2                        704 00275$:
                                    705 ;	fix_fft.c:208: j = fr[i];
      0023C2 EA               [12]  706 	mov	a,r2
      0023C3 2A               [12]  707 	add	a,r2
      0023C4 FC               [12]  708 	mov	r4,a
      0023C5 EB               [12]  709 	mov	a,r3
      0023C6 33               [12]  710 	rlc	a
      0023C7 FD               [12]  711 	mov	r5,a
      0023C8 A8 10            [24]  712 	mov	r0,_bp
      0023CA 08               [12]  713 	inc	r0
      0023CB EC               [12]  714 	mov	a,r4
      0023CC 26               [12]  715 	add	a,@r0
      0023CD FC               [12]  716 	mov	r4,a
      0023CE ED               [12]  717 	mov	a,r5
      0023CF 08               [12]  718 	inc	r0
      0023D0 36               [12]  719 	addc	a,@r0
      0023D1 FD               [12]  720 	mov	r5,a
      0023D2 08               [12]  721 	inc	r0
      0023D3 86 07            [24]  722 	mov	ar7,@r0
      0023D5 8C 82            [24]  723 	mov	dpl,r4
      0023D7 8D 83            [24]  724 	mov	dph,r5
      0023D9 8F F0            [24]  725 	mov	b,r7
      0023DB E5 10            [12]  726 	mov	a,_bp
      0023DD 24 0D            [12]  727 	add	a,#0x0d
      0023DF F8               [12]  728 	mov	r0,a
      0023E0 12 31 7D         [24]  729 	lcall	__gptrget
      0023E3 F6               [12]  730 	mov	@r0,a
      0023E4 A3               [24]  731 	inc	dptr
      0023E5 12 31 7D         [24]  732 	lcall	__gptrget
      0023E8 08               [12]  733 	inc	r0
      0023E9 F6               [12]  734 	mov	@r0,a
                                    735 ;	fix_fft.c:209: if (j < 0) j = -j;
      0023EA E5 10            [12]  736 	mov	a,_bp
      0023EC 24 0D            [12]  737 	add	a,#0x0d
      0023EE F8               [12]  738 	mov	r0,a
      0023EF 86 06            [24]  739 	mov	ar6,@r0
      0023F1 08               [12]  740 	inc	r0
      0023F2 E6               [12]  741 	mov	a,@r0
      0023F3 30 E7 0D         [24]  742 	jnb	acc.7,00111$
      0023F6 E5 10            [12]  743 	mov	a,_bp
      0023F8 24 0D            [12]  744 	add	a,#0x0d
      0023FA F8               [12]  745 	mov	r0,a
      0023FB C3               [12]  746 	clr	c
      0023FC E4               [12]  747 	clr	a
      0023FD 96               [12]  748 	subb	a,@r0
      0023FE F6               [12]  749 	mov	@r0,a
      0023FF 08               [12]  750 	inc	r0
      002400 E4               [12]  751 	clr	a
      002401 96               [12]  752 	subb	a,@r0
      002402 F6               [12]  753 	mov	@r0,a
      002403                        754 00111$:
                                    755 ;	fix_fft.c:211: m = fi[i];
      002403 EA               [12]  756 	mov	a,r2
      002404 2A               [12]  757 	add	a,r2
      002405 FE               [12]  758 	mov	r6,a
      002406 EB               [12]  759 	mov	a,r3
      002407 33               [12]  760 	rlc	a
      002408 FF               [12]  761 	mov	r7,a
      002409 E5 10            [12]  762 	mov	a,_bp
      00240B 24 FB            [12]  763 	add	a,#0xfb
      00240D F8               [12]  764 	mov	r0,a
      00240E EE               [12]  765 	mov	a,r6
      00240F 26               [12]  766 	add	a,@r0
      002410 FE               [12]  767 	mov	r6,a
      002411 EF               [12]  768 	mov	a,r7
      002412 08               [12]  769 	inc	r0
      002413 36               [12]  770 	addc	a,@r0
      002414 FD               [12]  771 	mov	r5,a
      002415 08               [12]  772 	inc	r0
      002416 86 07            [24]  773 	mov	ar7,@r0
      002418 8E 82            [24]  774 	mov	dpl,r6
      00241A 8D 83            [24]  775 	mov	dph,r5
      00241C 8F F0            [24]  776 	mov	b,r7
      00241E 12 31 7D         [24]  777 	lcall	__gptrget
      002421 FC               [12]  778 	mov	r4,a
      002422 A3               [24]  779 	inc	dptr
      002423 12 31 7D         [24]  780 	lcall	__gptrget
      002426 FD               [12]  781 	mov	r5,a
      002427 E5 10            [12]  782 	mov	a,_bp
      002429 24 F9            [12]  783 	add	a,#0xf9
      00242B F8               [12]  784 	mov	r0,a
      00242C A6 04            [24]  785 	mov	@r0,ar4
      00242E 08               [12]  786 	inc	r0
      00242F A6 05            [24]  787 	mov	@r0,ar5
                                    788 ;	fix_fft.c:212: if (m < 0) m = -m;
      002431 8C 06            [24]  789 	mov	ar6,r4
      002433 8D 07            [24]  790 	mov	ar7,r5
      002435 EF               [12]  791 	mov	a,r7
      002436 30 E7 11         [24]  792 	jnb	acc.7,00113$
      002439 C3               [12]  793 	clr	c
      00243A E4               [12]  794 	clr	a
      00243B 9C               [12]  795 	subb	a,r4
      00243C FE               [12]  796 	mov	r6,a
      00243D E4               [12]  797 	clr	a
      00243E 9D               [12]  798 	subb	a,r5
      00243F FF               [12]  799 	mov	r7,a
      002440 E5 10            [12]  800 	mov	a,_bp
      002442 24 F9            [12]  801 	add	a,#0xf9
      002444 F8               [12]  802 	mov	r0,a
      002445 A6 06            [24]  803 	mov	@r0,ar6
      002447 08               [12]  804 	inc	r0
      002448 A6 07            [24]  805 	mov	@r0,ar7
      00244A                        806 00113$:
                                    807 ;	fix_fft.c:214: if ((j > 16383) || (m > 16383)) {
      00244A E5 10            [12]  808 	mov	a,_bp
      00244C 24 0D            [12]  809 	add	a,#0x0d
      00244E F8               [12]  810 	mov	r0,a
      00244F 86 06            [24]  811 	mov	ar6,@r0
      002451 08               [12]  812 	inc	r0
      002452 86 07            [24]  813 	mov	ar7,@r0
      002454 C3               [12]  814 	clr	c
      002455 74 FF            [12]  815 	mov	a,#0xff
      002457 9E               [12]  816 	subb	a,r6
      002458 74 BF            [12]  817 	mov	a,#(0x3f ^ 0x80)
      00245A 8F F0            [24]  818 	mov	b,r7
      00245C 63 F0 80         [24]  819 	xrl	b,#0x80
      00245F 95 F0            [12]  820 	subb	a,b
      002461 40 19            [24]  821 	jc	00114$
      002463 E5 10            [12]  822 	mov	a,_bp
      002465 24 F9            [12]  823 	add	a,#0xf9
      002467 F8               [12]  824 	mov	r0,a
      002468 86 06            [24]  825 	mov	ar6,@r0
      00246A 08               [12]  826 	inc	r0
      00246B 86 07            [24]  827 	mov	ar7,@r0
      00246D C3               [12]  828 	clr	c
      00246E 74 FF            [12]  829 	mov	a,#0xff
      002470 9E               [12]  830 	subb	a,r6
      002471 74 BF            [12]  831 	mov	a,#(0x3f ^ 0x80)
      002473 8F F0            [24]  832 	mov	b,r7
      002475 63 F0 80         [24]  833 	xrl	b,#0x80
      002478 95 F0            [12]  834 	subb	a,b
      00247A 50 0C            [24]  835 	jnc	00142$
      00247C                        836 00114$:
                                    837 ;	fix_fft.c:215: shift = 1;
      00247C E5 10            [12]  838 	mov	a,_bp
      00247E 24 26            [12]  839 	add	a,#0x26
      002480 F8               [12]  840 	mov	r0,a
      002481 76 01            [12]  841 	mov	@r0,#0x01
      002483 08               [12]  842 	inc	r0
      002484 76 00            [12]  843 	mov	@r0,#0x00
                                    844 ;	fix_fft.c:216: break;
      002486 80 08            [24]  845 	sjmp	00117$
      002488                        846 00142$:
                                    847 ;	fix_fft.c:207: for (i = 0; i < n; i++) {
      002488 0A               [12]  848 	inc	r2
      002489 BA 00 01         [24]  849 	cjne	r2,#0x00,00280$
      00248C 0B               [12]  850 	inc	r3
      00248D                        851 00280$:
      00248D 02 23 AA         [24]  852 	ljmp	00141$
      002490                        853 00117$:
                                    854 ;	fix_fft.c:220: if (shift) scale++;
      002490 E5 10            [12]  855 	mov	a,_bp
      002492 24 26            [12]  856 	add	a,#0x26
      002494 F8               [12]  857 	mov	r0,a
      002495 E6               [12]  858 	mov	a,@r0
      002496 08               [12]  859 	inc	r0
      002497 46               [12]  860 	orl	a,@r0
      002498 60 17            [24]  861 	jz	00122$
      00249A E5 10            [12]  862 	mov	a,_bp
      00249C 24 24            [12]  863 	add	a,#0x24
      00249E F8               [12]  864 	mov	r0,a
      00249F 06               [12]  865 	inc	@r0
      0024A0 B6 00 02         [24]  866 	cjne	@r0,#0x00,00282$
      0024A3 08               [12]  867 	inc	r0
      0024A4 06               [12]  868 	inc	@r0
      0024A5                        869 00282$:
      0024A5 80 0A            [24]  870 	sjmp	00122$
      0024A7                        871 00121$:
                                    872 ;	fix_fft.c:228: shift = 1;
      0024A7 E5 10            [12]  873 	mov	a,_bp
      0024A9 24 26            [12]  874 	add	a,#0x26
      0024AB F8               [12]  875 	mov	r0,a
      0024AC 76 01            [12]  876 	mov	@r0,#0x01
      0024AE 08               [12]  877 	inc	r0
      0024AF 76 00            [12]  878 	mov	@r0,#0x00
      0024B1                        879 00122$:
                                    880 ;	fix_fft.c:236: istep = l << 1;
      0024B1 E5 10            [12]  881 	mov	a,_bp
      0024B3 24 1C            [12]  882 	add	a,#0x1c
      0024B5 F8               [12]  883 	mov	r0,a
      0024B6 E5 10            [12]  884 	mov	a,_bp
      0024B8 24 20            [12]  885 	add	a,#0x20
      0024BA F9               [12]  886 	mov	r1,a
      0024BB E6               [12]  887 	mov	a,@r0
      0024BC 26               [12]  888 	add	a,@r0
      0024BD F7               [12]  889 	mov	@r1,a
      0024BE 08               [12]  890 	inc	r0
      0024BF E6               [12]  891 	mov	a,@r0
      0024C0 33               [12]  892 	rlc	a
      0024C1 09               [12]  893 	inc	r1
      0024C2 F7               [12]  894 	mov	@r1,a
                                    895 ;	fix_fft.c:237: for (m = 0; m < l; m++) {
      0024C3 7A 00            [12]  896 	mov	r2,#0x00
      0024C5 7B 00            [12]  897 	mov	r3,#0x00
      0024C7                        898 00147$:
      0024C7 E5 10            [12]  899 	mov	a,_bp
      0024C9 24 1C            [12]  900 	add	a,#0x1c
      0024CB F8               [12]  901 	mov	r0,a
      0024CC C3               [12]  902 	clr	c
      0024CD EA               [12]  903 	mov	a,r2
      0024CE 96               [12]  904 	subb	a,@r0
      0024CF EB               [12]  905 	mov	a,r3
      0024D0 64 80            [12]  906 	xrl	a,#0x80
      0024D2 08               [12]  907 	inc	r0
      0024D3 86 F0            [24]  908 	mov	b,@r0
      0024D5 63 F0 80         [24]  909 	xrl	b,#0x80
      0024D8 95 F0            [12]  910 	subb	a,b
      0024DA 40 03            [24]  911 	jc	00283$
      0024DC 02 2A 33         [24]  912 	ljmp	00130$
      0024DF                        913 00283$:
                                    914 ;	fix_fft.c:238: j = m << k;
      0024DF E5 10            [12]  915 	mov	a,_bp
      0024E1 24 1E            [12]  916 	add	a,#0x1e
      0024E3 F8               [12]  917 	mov	r0,a
      0024E4 86 F0            [24]  918 	mov	b,@r0
      0024E6 05 F0            [12]  919 	inc	b
      0024E8 AE 02            [24]  920 	mov	r6,ar2
      0024EA AF 03            [24]  921 	mov	r7,ar3
      0024EC 80 06            [24]  922 	sjmp	00285$
      0024EE                        923 00284$:
      0024EE EE               [12]  924 	mov	a,r6
      0024EF 2E               [12]  925 	add	a,r6
      0024F0 FE               [12]  926 	mov	r6,a
      0024F1 EF               [12]  927 	mov	a,r7
      0024F2 33               [12]  928 	rlc	a
      0024F3 FF               [12]  929 	mov	r7,a
      0024F4                        930 00285$:
      0024F4 D5 F0 F7         [24]  931 	djnz	b,00284$
      0024F7 8E 05            [24]  932 	mov	ar5,r6
      0024F9 8F 04            [24]  933 	mov	ar4,r7
                                    934 ;	fix_fft.c:241: wr =  Sinewave[j + N_WAVE / 4];
      0024FB 8D 06            [24]  935 	mov	ar6,r5
      0024FD 8C 07            [24]  936 	mov	ar7,r4
      0024FF 74 01            [12]  937 	mov	a,#0x01
      002501 2F               [12]  938 	add	a,r7
      002502 FF               [12]  939 	mov	r7,a
      002503 EE               [12]  940 	mov	a,r6
      002504 2E               [12]  941 	add	a,r6
      002505 FE               [12]  942 	mov	r6,a
      002506 EF               [12]  943 	mov	a,r7
      002507 33               [12]  944 	rlc	a
      002508 FF               [12]  945 	mov	r7,a
      002509 EE               [12]  946 	mov	a,r6
      00250A 24 82            [12]  947 	add	a,#_Sinewave
      00250C F5 82            [12]  948 	mov	dpl,a
      00250E EF               [12]  949 	mov	a,r7
      00250F 34 4D            [12]  950 	addc	a,#(_Sinewave >> 8)
      002511 F5 83            [12]  951 	mov	dph,a
      002513 E5 10            [12]  952 	mov	a,_bp
      002515 24 30            [12]  953 	add	a,#0x30
      002517 F8               [12]  954 	mov	r0,a
      002518 E0               [24]  955 	movx	a,@dptr
      002519 F6               [12]  956 	mov	@r0,a
      00251A A3               [24]  957 	inc	dptr
      00251B E0               [24]  958 	movx	a,@dptr
      00251C 08               [12]  959 	inc	r0
      00251D F6               [12]  960 	mov	@r0,a
                                    961 ;	fix_fft.c:242: wi = -Sinewave[j];
      00251E ED               [12]  962 	mov	a,r5
      00251F 2D               [12]  963 	add	a,r5
      002520 FE               [12]  964 	mov	r6,a
      002521 EC               [12]  965 	mov	a,r4
      002522 33               [12]  966 	rlc	a
      002523 FF               [12]  967 	mov	r7,a
      002524 EE               [12]  968 	mov	a,r6
      002525 24 82            [12]  969 	add	a,#_Sinewave
      002527 F5 82            [12]  970 	mov	dpl,a
      002529 EF               [12]  971 	mov	a,r7
      00252A 34 4D            [12]  972 	addc	a,#(_Sinewave >> 8)
      00252C F5 83            [12]  973 	mov	dph,a
      00252E E0               [24]  974 	movx	a,@dptr
      00252F FE               [12]  975 	mov	r6,a
      002530 A3               [24]  976 	inc	dptr
      002531 E0               [24]  977 	movx	a,@dptr
      002532 FF               [12]  978 	mov	r7,a
      002533 C3               [12]  979 	clr	c
      002534 E4               [12]  980 	clr	a
      002535 9E               [12]  981 	subb	a,r6
      002536 FE               [12]  982 	mov	r6,a
      002537 E4               [12]  983 	clr	a
      002538 9F               [12]  984 	subb	a,r7
      002539 FF               [12]  985 	mov	r7,a
      00253A E5 10            [12]  986 	mov	a,_bp
      00253C 24 32            [12]  987 	add	a,#0x32
      00253E F8               [12]  988 	mov	r0,a
      00253F A6 06            [24]  989 	mov	@r0,ar6
      002541 08               [12]  990 	inc	r0
      002542 A6 07            [24]  991 	mov	@r0,ar7
                                    992 ;	fix_fft.c:243: if (inverse) wi = -wi;
      002544 E5 10            [12]  993 	mov	a,_bp
      002546 24 F7            [12]  994 	add	a,#0xf7
      002548 F8               [12]  995 	mov	r0,a
      002549 E6               [12]  996 	mov	a,@r0
      00254A 08               [12]  997 	inc	r0
      00254B 46               [12]  998 	orl	a,@r0
      00254C 60 0D            [24]  999 	jz	00124$
      00254E E5 10            [12] 1000 	mov	a,_bp
      002550 24 32            [12] 1001 	add	a,#0x32
      002552 F8               [12] 1002 	mov	r0,a
      002553 C3               [12] 1003 	clr	c
      002554 E4               [12] 1004 	clr	a
      002555 96               [12] 1005 	subb	a,@r0
      002556 F6               [12] 1006 	mov	@r0,a
      002557 08               [12] 1007 	inc	r0
      002558 E4               [12] 1008 	clr	a
      002559 96               [12] 1009 	subb	a,@r0
      00255A F6               [12] 1010 	mov	@r0,a
      00255B                       1011 00124$:
                                   1012 ;	fix_fft.c:245: if (shift) {
      00255B E5 10            [12] 1013 	mov	a,_bp
      00255D 24 26            [12] 1014 	add	a,#0x26
      00255F F8               [12] 1015 	mov	r0,a
      002560 E6               [12] 1016 	mov	a,@r0
      002561 08               [12] 1017 	inc	r0
      002562 46               [12] 1018 	orl	a,@r0
      002563 60 20            [24] 1019 	jz	00126$
                                   1020 ;	fix_fft.c:246: wr >>= 1;
      002565 E5 10            [12] 1021 	mov	a,_bp
      002567 24 30            [12] 1022 	add	a,#0x30
      002569 F8               [12] 1023 	mov	r0,a
      00256A 08               [12] 1024 	inc	r0
      00256B E6               [12] 1025 	mov	a,@r0
      00256C 18               [12] 1026 	dec	r0
      00256D A2 E7            [12] 1027 	mov	c,acc.7
      00256F 13               [12] 1028 	rrc	a
      002570 C6               [12] 1029 	xch	a,@r0
      002571 13               [12] 1030 	rrc	a
      002572 C6               [12] 1031 	xch	a,@r0
      002573 08               [12] 1032 	inc	r0
      002574 F6               [12] 1033 	mov	@r0,a
                                   1034 ;	fix_fft.c:247: wi >>= 1;
      002575 E5 10            [12] 1035 	mov	a,_bp
      002577 24 32            [12] 1036 	add	a,#0x32
      002579 F8               [12] 1037 	mov	r0,a
      00257A 08               [12] 1038 	inc	r0
      00257B E6               [12] 1039 	mov	a,@r0
      00257C 18               [12] 1040 	dec	r0
      00257D A2 E7            [12] 1041 	mov	c,acc.7
      00257F 13               [12] 1042 	rrc	a
      002580 C6               [12] 1043 	xch	a,@r0
      002581 13               [12] 1044 	rrc	a
      002582 C6               [12] 1045 	xch	a,@r0
      002583 08               [12] 1046 	inc	r0
      002584 F6               [12] 1047 	mov	@r0,a
      002585                       1048 00126$:
                                   1049 ;	fix_fft.c:250: for (i = m; i < n; i += istep) {
      002585 E5 10            [12] 1050 	mov	a,_bp
      002587 24 1A            [12] 1051 	add	a,#0x1a
      002589 F8               [12] 1052 	mov	r0,a
      00258A A6 02            [24] 1053 	mov	@r0,ar2
      00258C 08               [12] 1054 	inc	r0
      00258D A6 03            [24] 1055 	mov	@r0,ar3
      00258F                       1056 00144$:
      00258F E5 10            [12] 1057 	mov	a,_bp
      002591 24 1A            [12] 1058 	add	a,#0x1a
      002593 F8               [12] 1059 	mov	r0,a
      002594 E5 10            [12] 1060 	mov	a,_bp
      002596 24 22            [12] 1061 	add	a,#0x22
      002598 F9               [12] 1062 	mov	r1,a
      002599 C3               [12] 1063 	clr	c
      00259A E6               [12] 1064 	mov	a,@r0
      00259B 97               [12] 1065 	subb	a,@r1
      00259C 08               [12] 1066 	inc	r0
      00259D E6               [12] 1067 	mov	a,@r0
      00259E 64 80            [12] 1068 	xrl	a,#0x80
      0025A0 09               [12] 1069 	inc	r1
      0025A1 87 F0            [24] 1070 	mov	b,@r1
      0025A3 63 F0 80         [24] 1071 	xrl	b,#0x80
      0025A6 95 F0            [12] 1072 	subb	a,b
      0025A8 40 03            [24] 1073 	jc	00288$
      0025AA 02 2A 2B         [24] 1074 	ljmp	00148$
      0025AD                       1075 00288$:
                                   1076 ;	fix_fft.c:251: j = i + l;
      0025AD C0 02            [24] 1077 	push	ar2
      0025AF C0 03            [24] 1078 	push	ar3
      0025B1 E5 10            [12] 1079 	mov	a,_bp
      0025B3 24 1A            [12] 1080 	add	a,#0x1a
      0025B5 F8               [12] 1081 	mov	r0,a
      0025B6 E5 10            [12] 1082 	mov	a,_bp
      0025B8 24 1C            [12] 1083 	add	a,#0x1c
      0025BA F9               [12] 1084 	mov	r1,a
      0025BB E7               [12] 1085 	mov	a,@r1
      0025BC 26               [12] 1086 	add	a,@r0
      0025BD C0 E0            [24] 1087 	push	acc
      0025BF 09               [12] 1088 	inc	r1
      0025C0 E7               [12] 1089 	mov	a,@r1
      0025C1 08               [12] 1090 	inc	r0
      0025C2 36               [12] 1091 	addc	a,@r0
      0025C3 C0 E0            [24] 1092 	push	acc
      0025C5 E5 10            [12] 1093 	mov	a,_bp
      0025C7 24 0E            [12] 1094 	add	a,#0x0e
      0025C9 F8               [12] 1095 	mov	r0,a
      0025CA D0 E0            [24] 1096 	pop	acc
      0025CC F6               [12] 1097 	mov	@r0,a
      0025CD 18               [12] 1098 	dec	r0
      0025CE D0 E0            [24] 1099 	pop	acc
      0025D0 F6               [12] 1100 	mov	@r0,a
                                   1101 ;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
      0025D1 E5 10            [12] 1102 	mov	a,_bp
      0025D3 24 0D            [12] 1103 	add	a,#0x0d
      0025D5 F8               [12] 1104 	mov	r0,a
      0025D6 E5 10            [12] 1105 	mov	a,_bp
      0025D8 24 09            [12] 1106 	add	a,#0x09
      0025DA F9               [12] 1107 	mov	r1,a
      0025DB E6               [12] 1108 	mov	a,@r0
      0025DC 26               [12] 1109 	add	a,@r0
      0025DD F7               [12] 1110 	mov	@r1,a
      0025DE 08               [12] 1111 	inc	r0
      0025DF E6               [12] 1112 	mov	a,@r0
      0025E0 33               [12] 1113 	rlc	a
      0025E1 09               [12] 1114 	inc	r1
      0025E2 F7               [12] 1115 	mov	@r1,a
      0025E3 A8 10            [24] 1116 	mov	r0,_bp
      0025E5 08               [12] 1117 	inc	r0
      0025E6 E5 10            [12] 1118 	mov	a,_bp
      0025E8 24 09            [12] 1119 	add	a,#0x09
      0025EA F9               [12] 1120 	mov	r1,a
      0025EB E7               [12] 1121 	mov	a,@r1
      0025EC 26               [12] 1122 	add	a,@r0
      0025ED FC               [12] 1123 	mov	r4,a
      0025EE 09               [12] 1124 	inc	r1
      0025EF E7               [12] 1125 	mov	a,@r1
      0025F0 08               [12] 1126 	inc	r0
      0025F1 36               [12] 1127 	addc	a,@r0
      0025F2 FD               [12] 1128 	mov	r5,a
      0025F3 08               [12] 1129 	inc	r0
      0025F4 86 07            [24] 1130 	mov	ar7,@r0
      0025F6 8C 82            [24] 1131 	mov	dpl,r4
      0025F8 8D 83            [24] 1132 	mov	dph,r5
      0025FA 8F F0            [24] 1133 	mov	b,r7
      0025FC E5 10            [12] 1134 	mov	a,_bp
      0025FE 24 34            [12] 1135 	add	a,#0x34
      002600 F8               [12] 1136 	mov	r0,a
      002601 12 31 7D         [24] 1137 	lcall	__gptrget
      002604 F6               [12] 1138 	mov	@r0,a
      002605 A3               [24] 1139 	inc	dptr
      002606 12 31 7D         [24] 1140 	lcall	__gptrget
      002609 08               [12] 1141 	inc	r0
      00260A F6               [12] 1142 	mov	@r0,a
      00260B E5 10            [12] 1143 	mov	a,_bp
      00260D 24 34            [12] 1144 	add	a,#0x34
      00260F F8               [12] 1145 	mov	r0,a
      002610 86 07            [24] 1146 	mov	ar7,@r0
      002612 08               [12] 1147 	inc	r0
      002613 86 06            [24] 1148 	mov	ar6,@r0
                                   1149 ;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
      002615 E5 10            [12] 1150 	mov	a,_bp
      002617 24 30            [12] 1151 	add	a,#0x30
      002619 F8               [12] 1152 	mov	r0,a
      00261A E5 10            [12] 1153 	mov	a,_bp
      00261C 24 10            [12] 1154 	add	a,#0x10
      00261E F9               [12] 1155 	mov	r1,a
      00261F E6               [12] 1156 	mov	a,@r0
      002620 F7               [12] 1157 	mov	@r1,a
      002621 08               [12] 1158 	inc	r0
      002622 09               [12] 1159 	inc	r1
      002623 E6               [12] 1160 	mov	a,@r0
      002624 F7               [12] 1161 	mov	@r1,a
      002625 E6               [12] 1162 	mov	a,@r0
      002626 33               [12] 1163 	rlc	a
      002627 95 E0            [12] 1164 	subb	a,acc
      002629 09               [12] 1165 	inc	r1
      00262A F7               [12] 1166 	mov	@r1,a
      00262B 09               [12] 1167 	inc	r1
      00262C F7               [12] 1168 	mov	@r1,a
      00262D 8F 02            [24] 1169 	mov	ar2,r7
      00262F EE               [12] 1170 	mov	a,r6
      002630 FB               [12] 1171 	mov	r3,a
      002631 33               [12] 1172 	rlc	a
      002632 95 E0            [12] 1173 	subb	a,acc
      002634 FE               [12] 1174 	mov	r6,a
      002635 FF               [12] 1175 	mov	r7,a
      002636 C0 03            [24] 1176 	push	ar3
      002638 C0 02            [24] 1177 	push	ar2
      00263A C0 02            [24] 1178 	push	ar2
      00263C C0 03            [24] 1179 	push	ar3
      00263E C0 06            [24] 1180 	push	ar6
      002640 C0 07            [24] 1181 	push	ar7
      002642 E5 10            [12] 1182 	mov	a,_bp
      002644 24 10            [12] 1183 	add	a,#0x10
      002646 F8               [12] 1184 	mov	r0,a
      002647 86 82            [24] 1185 	mov	dpl,@r0
      002649 08               [12] 1186 	inc	r0
      00264A 86 83            [24] 1187 	mov	dph,@r0
      00264C 08               [12] 1188 	inc	r0
      00264D 86 F0            [24] 1189 	mov	b,@r0
      00264F 08               [12] 1190 	inc	r0
      002650 E6               [12] 1191 	mov	a,@r0
      002651 12 31 99         [24] 1192 	lcall	__mullong
      002654 AD 83            [24] 1193 	mov	r5,dph
      002656 AE F0            [24] 1194 	mov	r6,b
      002658 FF               [12] 1195 	mov	r7,a
      002659 E5 81            [12] 1196 	mov	a,sp
      00265B 24 FC            [12] 1197 	add	a,#0xfc
      00265D F5 81            [12] 1198 	mov	sp,a
      00265F D0 02            [24] 1199 	pop	ar2
      002661 D0 03            [24] 1200 	pop	ar3
      002663 8D 04            [24] 1201 	mov	ar4,r5
      002665 EE               [12] 1202 	mov	a,r6
      002666 A2 E7            [12] 1203 	mov	c,acc.7
      002668 CC               [12] 1204 	xch	a,r4
      002669 33               [12] 1205 	rlc	a
      00266A CC               [12] 1206 	xch	a,r4
      00266B 33               [12] 1207 	rlc	a
      00266C A2 E7            [12] 1208 	mov	c,acc.7
      00266E CC               [12] 1209 	xch	a,r4
      00266F 33               [12] 1210 	rlc	a
      002670 CC               [12] 1211 	xch	a,r4
      002671 33               [12] 1212 	rlc	a
      002672 CC               [12] 1213 	xch	a,r4
      002673 54 03            [12] 1214 	anl	a,#0x03
      002675 FD               [12] 1215 	mov	r5,a
      002676 EF               [12] 1216 	mov	a,r7
      002677 2F               [12] 1217 	add	a,r7
      002678 25 E0            [12] 1218 	add	a,acc
      00267A 4D               [12] 1219 	orl	a,r5
      00267B FD               [12] 1220 	mov	r5,a
      00267C EF               [12] 1221 	mov	a,r7
      00267D 23               [12] 1222 	rl	a
      00267E 23               [12] 1223 	rl	a
      00267F 54 03            [12] 1224 	anl	a,#0x03
      002681 30 E1 02         [24] 1225 	jnb	acc.1,00289$
      002684 44 FC            [12] 1226 	orl	a,#0xfc
      002686                       1227 00289$:
      002686 FE               [12] 1228 	mov	r6,a
      002687 33               [12] 1229 	rlc	a
      002688 95 E0            [12] 1230 	subb	a,acc
      00268A FF               [12] 1231 	mov	r7,a
                                   1232 ;	fix_fft.c:157: b = c & 0x01;
      00268B 8C 02            [24] 1233 	mov	ar2,r4
      00268D 8D 03            [24] 1234 	mov	ar3,r5
      00268F 53 02 01         [24] 1235 	anl	ar2,#0x01
      002692 7B 00            [12] 1236 	mov	r3,#0x00
                                   1237 ;	fix_fft.c:159: a = (c >> 1) + b;
      002694 EF               [12] 1238 	mov	a,r7
      002695 A2 E7            [12] 1239 	mov	c,acc.7
      002697 13               [12] 1240 	rrc	a
      002698 EE               [12] 1241 	mov	a,r6
      002699 13               [12] 1242 	rrc	a
      00269A ED               [12] 1243 	mov	a,r5
      00269B 13               [12] 1244 	rrc	a
      00269C FD               [12] 1245 	mov	r5,a
      00269D EC               [12] 1246 	mov	a,r4
      00269E 13               [12] 1247 	rrc	a
      00269F FC               [12] 1248 	mov	r4,a
      0026A0 E5 10            [12] 1249 	mov	a,_bp
      0026A2 24 36            [12] 1250 	add	a,#0x36
      0026A4 F8               [12] 1251 	mov	r0,a
      0026A5 EA               [12] 1252 	mov	a,r2
      0026A6 2C               [12] 1253 	add	a,r4
      0026A7 F6               [12] 1254 	mov	@r0,a
      0026A8 EB               [12] 1255 	mov	a,r3
      0026A9 3D               [12] 1256 	addc	a,r5
      0026AA 08               [12] 1257 	inc	r0
      0026AB F6               [12] 1258 	mov	@r0,a
                                   1259 ;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
      0026AC E5 10            [12] 1260 	mov	a,_bp
      0026AE 24 FB            [12] 1261 	add	a,#0xfb
      0026B0 F8               [12] 1262 	mov	r0,a
      0026B1 E5 10            [12] 1263 	mov	a,_bp
      0026B3 24 09            [12] 1264 	add	a,#0x09
      0026B5 F9               [12] 1265 	mov	r1,a
      0026B6 E7               [12] 1266 	mov	a,@r1
      0026B7 26               [12] 1267 	add	a,@r0
      0026B8 FD               [12] 1268 	mov	r5,a
      0026B9 09               [12] 1269 	inc	r1
      0026BA E7               [12] 1270 	mov	a,@r1
      0026BB 08               [12] 1271 	inc	r0
      0026BC 36               [12] 1272 	addc	a,@r0
      0026BD FE               [12] 1273 	mov	r6,a
      0026BE 08               [12] 1274 	inc	r0
      0026BF 86 07            [24] 1275 	mov	ar7,@r0
      0026C1 8D 82            [24] 1276 	mov	dpl,r5
      0026C3 8E 83            [24] 1277 	mov	dph,r6
      0026C5 8F F0            [24] 1278 	mov	b,r7
      0026C7 E5 10            [12] 1279 	mov	a,_bp
      0026C9 24 34            [12] 1280 	add	a,#0x34
      0026CB F8               [12] 1281 	mov	r0,a
      0026CC 12 31 7D         [24] 1282 	lcall	__gptrget
      0026CF F6               [12] 1283 	mov	@r0,a
      0026D0 A3               [24] 1284 	inc	dptr
      0026D1 12 31 7D         [24] 1285 	lcall	__gptrget
      0026D4 08               [12] 1286 	inc	r0
      0026D5 F6               [12] 1287 	mov	@r0,a
      0026D6 E5 10            [12] 1288 	mov	a,_bp
      0026D8 24 34            [12] 1289 	add	a,#0x34
      0026DA F8               [12] 1290 	mov	r0,a
      0026DB 86 04            [24] 1291 	mov	ar4,@r0
      0026DD 08               [12] 1292 	inc	r0
      0026DE 86 07            [24] 1293 	mov	ar7,@r0
                                   1294 ;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
      0026E0 E5 10            [12] 1295 	mov	a,_bp
      0026E2 24 32            [12] 1296 	add	a,#0x32
      0026E4 F8               [12] 1297 	mov	r0,a
      0026E5 E5 10            [12] 1298 	mov	a,_bp
      0026E7 24 14            [12] 1299 	add	a,#0x14
      0026E9 F9               [12] 1300 	mov	r1,a
      0026EA E6               [12] 1301 	mov	a,@r0
      0026EB F7               [12] 1302 	mov	@r1,a
      0026EC 08               [12] 1303 	inc	r0
      0026ED 09               [12] 1304 	inc	r1
      0026EE E6               [12] 1305 	mov	a,@r0
      0026EF F7               [12] 1306 	mov	@r1,a
      0026F0 E6               [12] 1307 	mov	a,@r0
      0026F1 33               [12] 1308 	rlc	a
      0026F2 95 E0            [12] 1309 	subb	a,acc
      0026F4 09               [12] 1310 	inc	r1
      0026F5 F7               [12] 1311 	mov	@r1,a
      0026F6 09               [12] 1312 	inc	r1
      0026F7 F7               [12] 1313 	mov	@r1,a
      0026F8 EF               [12] 1314 	mov	a,r7
      0026F9 FD               [12] 1315 	mov	r5,a
      0026FA 33               [12] 1316 	rlc	a
      0026FB 95 E0            [12] 1317 	subb	a,acc
      0026FD FE               [12] 1318 	mov	r6,a
      0026FE FF               [12] 1319 	mov	r7,a
      0026FF C0 03            [24] 1320 	push	ar3
      002701 C0 02            [24] 1321 	push	ar2
      002703 C0 04            [24] 1322 	push	ar4
      002705 C0 05            [24] 1323 	push	ar5
      002707 C0 06            [24] 1324 	push	ar6
      002709 C0 07            [24] 1325 	push	ar7
      00270B E5 10            [12] 1326 	mov	a,_bp
      00270D 24 14            [12] 1327 	add	a,#0x14
      00270F F8               [12] 1328 	mov	r0,a
      002710 86 82            [24] 1329 	mov	dpl,@r0
      002712 08               [12] 1330 	inc	r0
      002713 86 83            [24] 1331 	mov	dph,@r0
      002715 08               [12] 1332 	inc	r0
      002716 86 F0            [24] 1333 	mov	b,@r0
      002718 08               [12] 1334 	inc	r0
      002719 E6               [12] 1335 	mov	a,@r0
      00271A 12 31 99         [24] 1336 	lcall	__mullong
      00271D AD 83            [24] 1337 	mov	r5,dph
      00271F AE F0            [24] 1338 	mov	r6,b
      002721 FF               [12] 1339 	mov	r7,a
      002722 E5 81            [12] 1340 	mov	a,sp
      002724 24 FC            [12] 1341 	add	a,#0xfc
      002726 F5 81            [12] 1342 	mov	sp,a
      002728 D0 02            [24] 1343 	pop	ar2
      00272A D0 03            [24] 1344 	pop	ar3
      00272C 8D 04            [24] 1345 	mov	ar4,r5
      00272E EE               [12] 1346 	mov	a,r6
      00272F A2 E7            [12] 1347 	mov	c,acc.7
      002731 CC               [12] 1348 	xch	a,r4
      002732 33               [12] 1349 	rlc	a
      002733 CC               [12] 1350 	xch	a,r4
      002734 33               [12] 1351 	rlc	a
      002735 A2 E7            [12] 1352 	mov	c,acc.7
      002737 CC               [12] 1353 	xch	a,r4
      002738 33               [12] 1354 	rlc	a
      002739 CC               [12] 1355 	xch	a,r4
      00273A 33               [12] 1356 	rlc	a
      00273B CC               [12] 1357 	xch	a,r4
      00273C 54 03            [12] 1358 	anl	a,#0x03
      00273E FD               [12] 1359 	mov	r5,a
      00273F EF               [12] 1360 	mov	a,r7
      002740 2F               [12] 1361 	add	a,r7
      002741 25 E0            [12] 1362 	add	a,acc
      002743 4D               [12] 1363 	orl	a,r5
      002744 FD               [12] 1364 	mov	r5,a
      002745 EF               [12] 1365 	mov	a,r7
      002746 23               [12] 1366 	rl	a
      002747 23               [12] 1367 	rl	a
      002748 54 03            [12] 1368 	anl	a,#0x03
      00274A 30 E1 02         [24] 1369 	jnb	acc.1,00290$
      00274D 44 FC            [12] 1370 	orl	a,#0xfc
      00274F                       1371 00290$:
      00274F FE               [12] 1372 	mov	r6,a
      002750 33               [12] 1373 	rlc	a
      002751 95 E0            [12] 1374 	subb	a,acc
      002753 FF               [12] 1375 	mov	r7,a
                                   1376 ;	fix_fft.c:157: b = c & 0x01;
      002754 8C 02            [24] 1377 	mov	ar2,r4
      002756 8D 03            [24] 1378 	mov	ar3,r5
      002758 53 02 01         [24] 1379 	anl	ar2,#0x01
      00275B 7B 00            [12] 1380 	mov	r3,#0x00
                                   1381 ;	fix_fft.c:159: a = (c >> 1) + b;
      00275D EF               [12] 1382 	mov	a,r7
      00275E A2 E7            [12] 1383 	mov	c,acc.7
      002760 13               [12] 1384 	rrc	a
      002761 EE               [12] 1385 	mov	a,r6
      002762 13               [12] 1386 	rrc	a
      002763 ED               [12] 1387 	mov	a,r5
      002764 13               [12] 1388 	rrc	a
      002765 FD               [12] 1389 	mov	r5,a
      002766 EC               [12] 1390 	mov	a,r4
      002767 13               [12] 1391 	rrc	a
      002768 2A               [12] 1392 	add	a,r2
      002769 FA               [12] 1393 	mov	r2,a
      00276A EB               [12] 1394 	mov	a,r3
      00276B 3D               [12] 1395 	addc	a,r5
      00276C FB               [12] 1396 	mov	r3,a
                                   1397 ;	fix_fft.c:253: tr = FIX_MPY(wr, fr[j]) - FIX_MPY(wi, fi[j]);
      00276D E5 10            [12] 1398 	mov	a,_bp
      00276F 24 36            [12] 1399 	add	a,#0x36
      002771 F8               [12] 1400 	mov	r0,a
      002772 E6               [12] 1401 	mov	a,@r0
      002773 C3               [12] 1402 	clr	c
      002774 9A               [12] 1403 	subb	a,r2
      002775 FA               [12] 1404 	mov	r2,a
      002776 08               [12] 1405 	inc	r0
      002777 E6               [12] 1406 	mov	a,@r0
      002778 9B               [12] 1407 	subb	a,r3
      002779 FB               [12] 1408 	mov	r3,a
      00277A E5 10            [12] 1409 	mov	a,_bp
      00277C 24 2C            [12] 1410 	add	a,#0x2c
      00277E F8               [12] 1411 	mov	r0,a
      00277F A6 02            [24] 1412 	mov	@r0,ar2
      002781 08               [12] 1413 	inc	r0
      002782 A6 03            [24] 1414 	mov	@r0,ar3
                                   1415 ;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
      002784 E5 10            [12] 1416 	mov	a,_bp
      002786 24 34            [12] 1417 	add	a,#0x34
      002788 F8               [12] 1418 	mov	r0,a
      002789 86 04            [24] 1419 	mov	ar4,@r0
      00278B 08               [12] 1420 	inc	r0
      00278C E6               [12] 1421 	mov	a,@r0
      00278D FD               [12] 1422 	mov	r5,a
      00278E 33               [12] 1423 	rlc	a
      00278F 95 E0            [12] 1424 	subb	a,acc
      002791 FE               [12] 1425 	mov	r6,a
      002792 FF               [12] 1426 	mov	r7,a
      002793 C0 03            [24] 1427 	push	ar3
      002795 C0 02            [24] 1428 	push	ar2
      002797 C0 04            [24] 1429 	push	ar4
      002799 C0 05            [24] 1430 	push	ar5
      00279B C0 06            [24] 1431 	push	ar6
      00279D C0 07            [24] 1432 	push	ar7
      00279F E5 10            [12] 1433 	mov	a,_bp
      0027A1 24 10            [12] 1434 	add	a,#0x10
      0027A3 F8               [12] 1435 	mov	r0,a
      0027A4 86 82            [24] 1436 	mov	dpl,@r0
      0027A6 08               [12] 1437 	inc	r0
      0027A7 86 83            [24] 1438 	mov	dph,@r0
      0027A9 08               [12] 1439 	inc	r0
      0027AA 86 F0            [24] 1440 	mov	b,@r0
      0027AC 08               [12] 1441 	inc	r0
      0027AD E6               [12] 1442 	mov	a,@r0
      0027AE 12 31 99         [24] 1443 	lcall	__mullong
      0027B1 AD 83            [24] 1444 	mov	r5,dph
      0027B3 AE F0            [24] 1445 	mov	r6,b
      0027B5 FF               [12] 1446 	mov	r7,a
      0027B6 E5 81            [12] 1447 	mov	a,sp
      0027B8 24 FC            [12] 1448 	add	a,#0xfc
      0027BA F5 81            [12] 1449 	mov	sp,a
      0027BC D0 02            [24] 1450 	pop	ar2
      0027BE D0 03            [24] 1451 	pop	ar3
      0027C0 8D 04            [24] 1452 	mov	ar4,r5
      0027C2 EE               [12] 1453 	mov	a,r6
      0027C3 A2 E7            [12] 1454 	mov	c,acc.7
      0027C5 CC               [12] 1455 	xch	a,r4
      0027C6 33               [12] 1456 	rlc	a
      0027C7 CC               [12] 1457 	xch	a,r4
      0027C8 33               [12] 1458 	rlc	a
      0027C9 A2 E7            [12] 1459 	mov	c,acc.7
      0027CB CC               [12] 1460 	xch	a,r4
      0027CC 33               [12] 1461 	rlc	a
      0027CD CC               [12] 1462 	xch	a,r4
      0027CE 33               [12] 1463 	rlc	a
      0027CF CC               [12] 1464 	xch	a,r4
      0027D0 54 03            [12] 1465 	anl	a,#0x03
      0027D2 FD               [12] 1466 	mov	r5,a
      0027D3 EF               [12] 1467 	mov	a,r7
      0027D4 2F               [12] 1468 	add	a,r7
      0027D5 25 E0            [12] 1469 	add	a,acc
      0027D7 4D               [12] 1470 	orl	a,r5
      0027D8 FD               [12] 1471 	mov	r5,a
      0027D9 EF               [12] 1472 	mov	a,r7
      0027DA 23               [12] 1473 	rl	a
      0027DB 23               [12] 1474 	rl	a
      0027DC 54 03            [12] 1475 	anl	a,#0x03
      0027DE 30 E1 02         [24] 1476 	jnb	acc.1,00291$
      0027E1 44 FC            [12] 1477 	orl	a,#0xfc
      0027E3                       1478 00291$:
      0027E3 FE               [12] 1479 	mov	r6,a
      0027E4 33               [12] 1480 	rlc	a
      0027E5 95 E0            [12] 1481 	subb	a,acc
      0027E7 FF               [12] 1482 	mov	r7,a
                                   1483 ;	fix_fft.c:157: b = c & 0x01;
      0027E8 8C 02            [24] 1484 	mov	ar2,r4
      0027EA 8D 03            [24] 1485 	mov	ar3,r5
      0027EC 53 02 01         [24] 1486 	anl	ar2,#0x01
      0027EF 7B 00            [12] 1487 	mov	r3,#0x00
                                   1488 ;	fix_fft.c:159: a = (c >> 1) + b;
      0027F1 EF               [12] 1489 	mov	a,r7
      0027F2 A2 E7            [12] 1490 	mov	c,acc.7
      0027F4 13               [12] 1491 	rrc	a
      0027F5 EE               [12] 1492 	mov	a,r6
      0027F6 13               [12] 1493 	rrc	a
      0027F7 ED               [12] 1494 	mov	a,r5
      0027F8 13               [12] 1495 	rrc	a
      0027F9 FD               [12] 1496 	mov	r5,a
      0027FA EC               [12] 1497 	mov	a,r4
      0027FB 13               [12] 1498 	rrc	a
      0027FC FC               [12] 1499 	mov	r4,a
      0027FD E5 10            [12] 1500 	mov	a,_bp
      0027FF 24 34            [12] 1501 	add	a,#0x34
      002801 F8               [12] 1502 	mov	r0,a
      002802 EA               [12] 1503 	mov	a,r2
      002803 2C               [12] 1504 	add	a,r4
      002804 F6               [12] 1505 	mov	@r0,a
      002805 EB               [12] 1506 	mov	a,r3
      002806 3D               [12] 1507 	addc	a,r5
      002807 08               [12] 1508 	inc	r0
      002808 F6               [12] 1509 	mov	@r0,a
                                   1510 ;	fix_fft.c:155: int32_t c = ((int32_t)a * (int32_t)b) >> 14;
      002809 E5 10            [12] 1511 	mov	a,_bp
      00280B 24 34            [12] 1512 	add	a,#0x34
      00280D F8               [12] 1513 	mov	r0,a
      00280E 86 04            [24] 1514 	mov	ar4,@r0
      002810 08               [12] 1515 	inc	r0
      002811 E6               [12] 1516 	mov	a,@r0
      002812 FD               [12] 1517 	mov	r5,a
      002813 33               [12] 1518 	rlc	a
      002814 95 E0            [12] 1519 	subb	a,acc
      002816 FE               [12] 1520 	mov	r6,a
      002817 FF               [12] 1521 	mov	r7,a
      002818 C0 03            [24] 1522 	push	ar3
      00281A C0 02            [24] 1523 	push	ar2
      00281C C0 04            [24] 1524 	push	ar4
      00281E C0 05            [24] 1525 	push	ar5
      002820 C0 06            [24] 1526 	push	ar6
      002822 C0 07            [24] 1527 	push	ar7
      002824 E5 10            [12] 1528 	mov	a,_bp
      002826 24 14            [12] 1529 	add	a,#0x14
      002828 F8               [12] 1530 	mov	r0,a
      002829 86 82            [24] 1531 	mov	dpl,@r0
      00282B 08               [12] 1532 	inc	r0
      00282C 86 83            [24] 1533 	mov	dph,@r0
      00282E 08               [12] 1534 	inc	r0
      00282F 86 F0            [24] 1535 	mov	b,@r0
      002831 08               [12] 1536 	inc	r0
      002832 E6               [12] 1537 	mov	a,@r0
      002833 12 31 99         [24] 1538 	lcall	__mullong
      002836 AD 83            [24] 1539 	mov	r5,dph
      002838 AE F0            [24] 1540 	mov	r6,b
      00283A FF               [12] 1541 	mov	r7,a
      00283B E5 81            [12] 1542 	mov	a,sp
      00283D 24 FC            [12] 1543 	add	a,#0xfc
      00283F F5 81            [12] 1544 	mov	sp,a
      002841 D0 02            [24] 1545 	pop	ar2
      002843 D0 03            [24] 1546 	pop	ar3
      002845 8D 04            [24] 1547 	mov	ar4,r5
      002847 EE               [12] 1548 	mov	a,r6
      002848 A2 E7            [12] 1549 	mov	c,acc.7
      00284A CC               [12] 1550 	xch	a,r4
      00284B 33               [12] 1551 	rlc	a
      00284C CC               [12] 1552 	xch	a,r4
      00284D 33               [12] 1553 	rlc	a
      00284E A2 E7            [12] 1554 	mov	c,acc.7
      002850 CC               [12] 1555 	xch	a,r4
      002851 33               [12] 1556 	rlc	a
      002852 CC               [12] 1557 	xch	a,r4
      002853 33               [12] 1558 	rlc	a
      002854 CC               [12] 1559 	xch	a,r4
      002855 54 03            [12] 1560 	anl	a,#0x03
      002857 FD               [12] 1561 	mov	r5,a
      002858 EF               [12] 1562 	mov	a,r7
      002859 2F               [12] 1563 	add	a,r7
      00285A 25 E0            [12] 1564 	add	a,acc
      00285C 4D               [12] 1565 	orl	a,r5
      00285D FD               [12] 1566 	mov	r5,a
      00285E EF               [12] 1567 	mov	a,r7
      00285F 23               [12] 1568 	rl	a
      002860 23               [12] 1569 	rl	a
      002861 54 03            [12] 1570 	anl	a,#0x03
      002863 30 E1 02         [24] 1571 	jnb	acc.1,00292$
      002866 44 FC            [12] 1572 	orl	a,#0xfc
      002868                       1573 00292$:
      002868 FE               [12] 1574 	mov	r6,a
      002869 33               [12] 1575 	rlc	a
      00286A 95 E0            [12] 1576 	subb	a,acc
      00286C FF               [12] 1577 	mov	r7,a
                                   1578 ;	fix_fft.c:157: b = c & 0x01;
      00286D 8C 02            [24] 1579 	mov	ar2,r4
      00286F 8D 03            [24] 1580 	mov	ar3,r5
      002871 53 02 01         [24] 1581 	anl	ar2,#0x01
      002874 7B 00            [12] 1582 	mov	r3,#0x00
                                   1583 ;	fix_fft.c:159: a = (c >> 1) + b;
      002876 EF               [12] 1584 	mov	a,r7
      002877 A2 E7            [12] 1585 	mov	c,acc.7
      002879 13               [12] 1586 	rrc	a
      00287A EE               [12] 1587 	mov	a,r6
      00287B 13               [12] 1588 	rrc	a
      00287C ED               [12] 1589 	mov	a,r5
      00287D 13               [12] 1590 	rrc	a
      00287E FD               [12] 1591 	mov	r5,a
      00287F EC               [12] 1592 	mov	a,r4
      002880 13               [12] 1593 	rrc	a
      002881 2A               [12] 1594 	add	a,r2
      002882 FA               [12] 1595 	mov	r2,a
      002883 EB               [12] 1596 	mov	a,r3
      002884 3D               [12] 1597 	addc	a,r5
      002885 FB               [12] 1598 	mov	r3,a
                                   1599 ;	fix_fft.c:254: ti = FIX_MPY(wr, fi[j]) + FIX_MPY(wi, fr[j]);
      002886 E5 10            [12] 1600 	mov	a,_bp
      002888 24 34            [12] 1601 	add	a,#0x34
      00288A F8               [12] 1602 	mov	r0,a
      00288B EA               [12] 1603 	mov	a,r2
      00288C 26               [12] 1604 	add	a,@r0
      00288D FA               [12] 1605 	mov	r2,a
      00288E EB               [12] 1606 	mov	a,r3
      00288F 08               [12] 1607 	inc	r0
      002890 36               [12] 1608 	addc	a,@r0
      002891 FB               [12] 1609 	mov	r3,a
      002892 E5 10            [12] 1610 	mov	a,_bp
      002894 24 2E            [12] 1611 	add	a,#0x2e
      002896 F8               [12] 1612 	mov	r0,a
      002897 A6 02            [24] 1613 	mov	@r0,ar2
      002899 08               [12] 1614 	inc	r0
      00289A A6 03            [24] 1615 	mov	@r0,ar3
                                   1616 ;	fix_fft.c:255: qr = fr[i];
      00289C E5 10            [12] 1617 	mov	a,_bp
      00289E 24 1A            [12] 1618 	add	a,#0x1a
      0028A0 F8               [12] 1619 	mov	r0,a
      0028A1 E6               [12] 1620 	mov	a,@r0
      0028A2 26               [12] 1621 	add	a,@r0
      0028A3 FE               [12] 1622 	mov	r6,a
      0028A4 08               [12] 1623 	inc	r0
      0028A5 E6               [12] 1624 	mov	a,@r0
      0028A6 33               [12] 1625 	rlc	a
      0028A7 FF               [12] 1626 	mov	r7,a
      0028A8 A8 10            [24] 1627 	mov	r0,_bp
      0028AA 08               [12] 1628 	inc	r0
      0028AB EE               [12] 1629 	mov	a,r6
      0028AC 26               [12] 1630 	add	a,@r0
      0028AD FB               [12] 1631 	mov	r3,a
      0028AE EF               [12] 1632 	mov	a,r7
      0028AF 08               [12] 1633 	inc	r0
      0028B0 36               [12] 1634 	addc	a,@r0
      0028B1 FC               [12] 1635 	mov	r4,a
      0028B2 08               [12] 1636 	inc	r0
      0028B3 86 05            [24] 1637 	mov	ar5,@r0
      0028B5 8B 82            [24] 1638 	mov	dpl,r3
      0028B7 8C 83            [24] 1639 	mov	dph,r4
      0028B9 8D F0            [24] 1640 	mov	b,r5
      0028BB E5 10            [12] 1641 	mov	a,_bp
      0028BD 24 28            [12] 1642 	add	a,#0x28
      0028BF F8               [12] 1643 	mov	r0,a
      0028C0 12 31 7D         [24] 1644 	lcall	__gptrget
      0028C3 F6               [12] 1645 	mov	@r0,a
      0028C4 A3               [24] 1646 	inc	dptr
      0028C5 12 31 7D         [24] 1647 	lcall	__gptrget
      0028C8 08               [12] 1648 	inc	r0
      0028C9 F6               [12] 1649 	mov	@r0,a
                                   1650 ;	fix_fft.c:256: qi = fi[i];
      0028CA E5 10            [12] 1651 	mov	a,_bp
      0028CC 24 FB            [12] 1652 	add	a,#0xfb
      0028CE F8               [12] 1653 	mov	r0,a
      0028CF EE               [12] 1654 	mov	a,r6
      0028D0 26               [12] 1655 	add	a,@r0
      0028D1 FE               [12] 1656 	mov	r6,a
      0028D2 EF               [12] 1657 	mov	a,r7
      0028D3 08               [12] 1658 	inc	r0
      0028D4 36               [12] 1659 	addc	a,@r0
      0028D5 FF               [12] 1660 	mov	r7,a
      0028D6 08               [12] 1661 	inc	r0
      0028D7 86 05            [24] 1662 	mov	ar5,@r0
      0028D9 8E 82            [24] 1663 	mov	dpl,r6
      0028DB 8F 83            [24] 1664 	mov	dph,r7
      0028DD 8D F0            [24] 1665 	mov	b,r5
      0028DF E5 10            [12] 1666 	mov	a,_bp
      0028E1 24 2A            [12] 1667 	add	a,#0x2a
      0028E3 F8               [12] 1668 	mov	r0,a
      0028E4 12 31 7D         [24] 1669 	lcall	__gptrget
      0028E7 F6               [12] 1670 	mov	@r0,a
      0028E8 A3               [24] 1671 	inc	dptr
      0028E9 12 31 7D         [24] 1672 	lcall	__gptrget
      0028EC 08               [12] 1673 	inc	r0
      0028ED F6               [12] 1674 	mov	@r0,a
                                   1675 ;	fix_fft.c:258: if (shift) {
      0028EE D0 03            [24] 1676 	pop	ar3
      0028F0 D0 02            [24] 1677 	pop	ar2
      0028F2 E5 10            [12] 1678 	mov	a,_bp
      0028F4 24 26            [12] 1679 	add	a,#0x26
      0028F6 F8               [12] 1680 	mov	r0,a
      0028F7 E6               [12] 1681 	mov	a,@r0
      0028F8 08               [12] 1682 	inc	r0
      0028F9 46               [12] 1683 	orl	a,@r0
      0028FA 60 20            [24] 1684 	jz	00128$
                                   1685 ;	fix_fft.c:259: qr >>= 1;
      0028FC E5 10            [12] 1686 	mov	a,_bp
      0028FE 24 28            [12] 1687 	add	a,#0x28
      002900 F8               [12] 1688 	mov	r0,a
      002901 08               [12] 1689 	inc	r0
      002902 E6               [12] 1690 	mov	a,@r0
      002903 18               [12] 1691 	dec	r0
      002904 A2 E7            [12] 1692 	mov	c,acc.7
      002906 13               [12] 1693 	rrc	a
      002907 C6               [12] 1694 	xch	a,@r0
      002908 13               [12] 1695 	rrc	a
      002909 C6               [12] 1696 	xch	a,@r0
      00290A 08               [12] 1697 	inc	r0
      00290B F6               [12] 1698 	mov	@r0,a
                                   1699 ;	fix_fft.c:260: qi >>= 1;
      00290C E5 10            [12] 1700 	mov	a,_bp
      00290E 24 2A            [12] 1701 	add	a,#0x2a
      002910 F8               [12] 1702 	mov	r0,a
      002911 08               [12] 1703 	inc	r0
      002912 E6               [12] 1704 	mov	a,@r0
      002913 18               [12] 1705 	dec	r0
      002914 A2 E7            [12] 1706 	mov	c,acc.7
      002916 13               [12] 1707 	rrc	a
      002917 C6               [12] 1708 	xch	a,@r0
      002918 13               [12] 1709 	rrc	a
      002919 C6               [12] 1710 	xch	a,@r0
      00291A 08               [12] 1711 	inc	r0
      00291B F6               [12] 1712 	mov	@r0,a
      00291C                       1713 00128$:
                                   1714 ;	fix_fft.c:263: fr[j] = qr - tr;
      00291C C0 02            [24] 1715 	push	ar2
      00291E C0 03            [24] 1716 	push	ar3
      002920 E5 10            [12] 1717 	mov	a,_bp
      002922 24 0D            [12] 1718 	add	a,#0x0d
      002924 F8               [12] 1719 	mov	r0,a
      002925 E6               [12] 1720 	mov	a,@r0
      002926 26               [12] 1721 	add	a,@r0
      002927 FE               [12] 1722 	mov	r6,a
      002928 08               [12] 1723 	inc	r0
      002929 E6               [12] 1724 	mov	a,@r0
      00292A 33               [12] 1725 	rlc	a
      00292B FF               [12] 1726 	mov	r7,a
      00292C A8 10            [24] 1727 	mov	r0,_bp
      00292E 08               [12] 1728 	inc	r0
      00292F E5 10            [12] 1729 	mov	a,_bp
      002931 24 14            [12] 1730 	add	a,#0x14
      002933 F9               [12] 1731 	mov	r1,a
      002934 EE               [12] 1732 	mov	a,r6
      002935 26               [12] 1733 	add	a,@r0
      002936 F7               [12] 1734 	mov	@r1,a
      002937 EF               [12] 1735 	mov	a,r7
      002938 08               [12] 1736 	inc	r0
      002939 36               [12] 1737 	addc	a,@r0
      00293A 09               [12] 1738 	inc	r1
      00293B F7               [12] 1739 	mov	@r1,a
      00293C 08               [12] 1740 	inc	r0
      00293D 09               [12] 1741 	inc	r1
      00293E E6               [12] 1742 	mov	a,@r0
      00293F F7               [12] 1743 	mov	@r1,a
      002940 E5 10            [12] 1744 	mov	a,_bp
      002942 24 28            [12] 1745 	add	a,#0x28
      002944 F8               [12] 1746 	mov	r0,a
      002945 E5 10            [12] 1747 	mov	a,_bp
      002947 24 2C            [12] 1748 	add	a,#0x2c
      002949 F9               [12] 1749 	mov	r1,a
      00294A E6               [12] 1750 	mov	a,@r0
      00294B C3               [12] 1751 	clr	c
      00294C 97               [12] 1752 	subb	a,@r1
      00294D FA               [12] 1753 	mov	r2,a
      00294E 08               [12] 1754 	inc	r0
      00294F E6               [12] 1755 	mov	a,@r0
      002950 09               [12] 1756 	inc	r1
      002951 97               [12] 1757 	subb	a,@r1
      002952 FD               [12] 1758 	mov	r5,a
      002953 E5 10            [12] 1759 	mov	a,_bp
      002955 24 14            [12] 1760 	add	a,#0x14
      002957 F8               [12] 1761 	mov	r0,a
      002958 86 82            [24] 1762 	mov	dpl,@r0
      00295A 08               [12] 1763 	inc	r0
      00295B 86 83            [24] 1764 	mov	dph,@r0
      00295D 08               [12] 1765 	inc	r0
      00295E 86 F0            [24] 1766 	mov	b,@r0
      002960 EA               [12] 1767 	mov	a,r2
      002961 12 2F B2         [24] 1768 	lcall	__gptrput
      002964 A3               [24] 1769 	inc	dptr
      002965 ED               [12] 1770 	mov	a,r5
      002966 12 2F B2         [24] 1771 	lcall	__gptrput
                                   1772 ;	fix_fft.c:264: fi[j] = qi - ti;
      002969 E5 10            [12] 1773 	mov	a,_bp
      00296B 24 FB            [12] 1774 	add	a,#0xfb
      00296D F8               [12] 1775 	mov	r0,a
      00296E EE               [12] 1776 	mov	a,r6
      00296F 26               [12] 1777 	add	a,@r0
      002970 FE               [12] 1778 	mov	r6,a
      002971 EF               [12] 1779 	mov	a,r7
      002972 08               [12] 1780 	inc	r0
      002973 36               [12] 1781 	addc	a,@r0
      002974 FF               [12] 1782 	mov	r7,a
      002975 08               [12] 1783 	inc	r0
      002976 86 05            [24] 1784 	mov	ar5,@r0
      002978 E5 10            [12] 1785 	mov	a,_bp
      00297A 24 2A            [12] 1786 	add	a,#0x2a
      00297C F8               [12] 1787 	mov	r0,a
      00297D E5 10            [12] 1788 	mov	a,_bp
      00297F 24 2E            [12] 1789 	add	a,#0x2e
      002981 F9               [12] 1790 	mov	r1,a
      002982 E6               [12] 1791 	mov	a,@r0
      002983 C3               [12] 1792 	clr	c
      002984 97               [12] 1793 	subb	a,@r1
      002985 FB               [12] 1794 	mov	r3,a
      002986 08               [12] 1795 	inc	r0
      002987 E6               [12] 1796 	mov	a,@r0
      002988 09               [12] 1797 	inc	r1
      002989 97               [12] 1798 	subb	a,@r1
      00298A FC               [12] 1799 	mov	r4,a
      00298B 8E 82            [24] 1800 	mov	dpl,r6
      00298D 8F 83            [24] 1801 	mov	dph,r7
      00298F 8D F0            [24] 1802 	mov	b,r5
      002991 EB               [12] 1803 	mov	a,r3
      002992 12 2F B2         [24] 1804 	lcall	__gptrput
      002995 A3               [24] 1805 	inc	dptr
      002996 EC               [12] 1806 	mov	a,r4
      002997 12 2F B2         [24] 1807 	lcall	__gptrput
                                   1808 ;	fix_fft.c:265: fr[i] = qr + tr;
      00299A E5 10            [12] 1809 	mov	a,_bp
      00299C 24 1A            [12] 1810 	add	a,#0x1a
      00299E F8               [12] 1811 	mov	r0,a
      00299F E6               [12] 1812 	mov	a,@r0
      0029A0 26               [12] 1813 	add	a,@r0
      0029A1 FE               [12] 1814 	mov	r6,a
      0029A2 08               [12] 1815 	inc	r0
      0029A3 E6               [12] 1816 	mov	a,@r0
      0029A4 33               [12] 1817 	rlc	a
      0029A5 FF               [12] 1818 	mov	r7,a
      0029A6 A8 10            [24] 1819 	mov	r0,_bp
      0029A8 08               [12] 1820 	inc	r0
      0029A9 E5 10            [12] 1821 	mov	a,_bp
      0029AB 24 14            [12] 1822 	add	a,#0x14
      0029AD F9               [12] 1823 	mov	r1,a
      0029AE EE               [12] 1824 	mov	a,r6
      0029AF 26               [12] 1825 	add	a,@r0
      0029B0 F7               [12] 1826 	mov	@r1,a
      0029B1 EF               [12] 1827 	mov	a,r7
      0029B2 08               [12] 1828 	inc	r0
      0029B3 36               [12] 1829 	addc	a,@r0
      0029B4 09               [12] 1830 	inc	r1
      0029B5 F7               [12] 1831 	mov	@r1,a
      0029B6 08               [12] 1832 	inc	r0
      0029B7 09               [12] 1833 	inc	r1
      0029B8 E6               [12] 1834 	mov	a,@r0
      0029B9 F7               [12] 1835 	mov	@r1,a
      0029BA E5 10            [12] 1836 	mov	a,_bp
      0029BC 24 28            [12] 1837 	add	a,#0x28
      0029BE F8               [12] 1838 	mov	r0,a
      0029BF E5 10            [12] 1839 	mov	a,_bp
      0029C1 24 2C            [12] 1840 	add	a,#0x2c
      0029C3 F9               [12] 1841 	mov	r1,a
      0029C4 E7               [12] 1842 	mov	a,@r1
      0029C5 26               [12] 1843 	add	a,@r0
      0029C6 FA               [12] 1844 	mov	r2,a
      0029C7 09               [12] 1845 	inc	r1
      0029C8 E7               [12] 1846 	mov	a,@r1
      0029C9 08               [12] 1847 	inc	r0
      0029CA 36               [12] 1848 	addc	a,@r0
      0029CB FD               [12] 1849 	mov	r5,a
      0029CC E5 10            [12] 1850 	mov	a,_bp
      0029CE 24 14            [12] 1851 	add	a,#0x14
      0029D0 F8               [12] 1852 	mov	r0,a
      0029D1 86 82            [24] 1853 	mov	dpl,@r0
      0029D3 08               [12] 1854 	inc	r0
      0029D4 86 83            [24] 1855 	mov	dph,@r0
      0029D6 08               [12] 1856 	inc	r0
      0029D7 86 F0            [24] 1857 	mov	b,@r0
      0029D9 EA               [12] 1858 	mov	a,r2
      0029DA 12 2F B2         [24] 1859 	lcall	__gptrput
      0029DD A3               [24] 1860 	inc	dptr
      0029DE ED               [12] 1861 	mov	a,r5
      0029DF 12 2F B2         [24] 1862 	lcall	__gptrput
                                   1863 ;	fix_fft.c:266: fi[i] = qi + ti;
      0029E2 E5 10            [12] 1864 	mov	a,_bp
      0029E4 24 FB            [12] 1865 	add	a,#0xfb
      0029E6 F8               [12] 1866 	mov	r0,a
      0029E7 EE               [12] 1867 	mov	a,r6
      0029E8 26               [12] 1868 	add	a,@r0
      0029E9 FE               [12] 1869 	mov	r6,a
      0029EA EF               [12] 1870 	mov	a,r7
      0029EB 08               [12] 1871 	inc	r0
      0029EC 36               [12] 1872 	addc	a,@r0
      0029ED FF               [12] 1873 	mov	r7,a
      0029EE 08               [12] 1874 	inc	r0
      0029EF 86 05            [24] 1875 	mov	ar5,@r0
      0029F1 E5 10            [12] 1876 	mov	a,_bp
      0029F3 24 2A            [12] 1877 	add	a,#0x2a
      0029F5 F8               [12] 1878 	mov	r0,a
      0029F6 E5 10            [12] 1879 	mov	a,_bp
      0029F8 24 2E            [12] 1880 	add	a,#0x2e
      0029FA F9               [12] 1881 	mov	r1,a
      0029FB E7               [12] 1882 	mov	a,@r1
      0029FC 26               [12] 1883 	add	a,@r0
      0029FD FB               [12] 1884 	mov	r3,a
      0029FE 09               [12] 1885 	inc	r1
      0029FF E7               [12] 1886 	mov	a,@r1
      002A00 08               [12] 1887 	inc	r0
      002A01 36               [12] 1888 	addc	a,@r0
      002A02 FC               [12] 1889 	mov	r4,a
      002A03 8E 82            [24] 1890 	mov	dpl,r6
      002A05 8F 83            [24] 1891 	mov	dph,r7
      002A07 8D F0            [24] 1892 	mov	b,r5
      002A09 EB               [12] 1893 	mov	a,r3
      002A0A 12 2F B2         [24] 1894 	lcall	__gptrput
      002A0D A3               [24] 1895 	inc	dptr
      002A0E EC               [12] 1896 	mov	a,r4
      002A0F 12 2F B2         [24] 1897 	lcall	__gptrput
                                   1898 ;	fix_fft.c:250: for (i = m; i < n; i += istep) {
      002A12 E5 10            [12] 1899 	mov	a,_bp
      002A14 24 1A            [12] 1900 	add	a,#0x1a
      002A16 F8               [12] 1901 	mov	r0,a
      002A17 E5 10            [12] 1902 	mov	a,_bp
      002A19 24 20            [12] 1903 	add	a,#0x20
      002A1B F9               [12] 1904 	mov	r1,a
      002A1C E7               [12] 1905 	mov	a,@r1
      002A1D 26               [12] 1906 	add	a,@r0
      002A1E F6               [12] 1907 	mov	@r0,a
      002A1F 09               [12] 1908 	inc	r1
      002A20 E7               [12] 1909 	mov	a,@r1
      002A21 08               [12] 1910 	inc	r0
      002A22 36               [12] 1911 	addc	a,@r0
      002A23 F6               [12] 1912 	mov	@r0,a
      002A24 D0 03            [24] 1913 	pop	ar3
      002A26 D0 02            [24] 1914 	pop	ar2
      002A28 02 25 8F         [24] 1915 	ljmp	00144$
      002A2B                       1916 00148$:
                                   1917 ;	fix_fft.c:237: for (m = 0; m < l; m++) {
      002A2B 0A               [12] 1918 	inc	r2
      002A2C BA 00 01         [24] 1919 	cjne	r2,#0x00,00294$
      002A2F 0B               [12] 1920 	inc	r3
      002A30                       1921 00294$:
      002A30 02 24 C7         [24] 1922 	ljmp	00147$
      002A33                       1923 00130$:
                                   1924 ;	fix_fft.c:270: k--;
      002A33 E5 10            [12] 1925 	mov	a,_bp
      002A35 24 1E            [12] 1926 	add	a,#0x1e
      002A37 F8               [12] 1927 	mov	r0,a
      002A38 16               [12] 1928 	dec	@r0
      002A39 B6 FF 02         [24] 1929 	cjne	@r0,#0xff,00295$
      002A3C 08               [12] 1930 	inc	r0
      002A3D 16               [12] 1931 	dec	@r0
      002A3E                       1932 00295$:
                                   1933 ;	fix_fft.c:271: l = istep;
      002A3E E5 10            [12] 1934 	mov	a,_bp
      002A40 24 20            [12] 1935 	add	a,#0x20
      002A42 F8               [12] 1936 	mov	r0,a
      002A43 E5 10            [12] 1937 	mov	a,_bp
      002A45 24 1C            [12] 1938 	add	a,#0x1c
      002A47 F9               [12] 1939 	mov	r1,a
      002A48 E6               [12] 1940 	mov	a,@r0
      002A49 F7               [12] 1941 	mov	@r1,a
      002A4A 08               [12] 1942 	inc	r0
      002A4B 09               [12] 1943 	inc	r1
      002A4C E6               [12] 1944 	mov	a,@r0
      002A4D F7               [12] 1945 	mov	@r1,a
      002A4E 02 23 72         [24] 1946 	ljmp	00131$
      002A51                       1947 00133$:
                                   1948 ;	fix_fft.c:274: return scale;
      002A51 E5 10            [12] 1949 	mov	a,_bp
      002A53 24 24            [12] 1950 	add	a,#0x24
      002A55 F8               [12] 1951 	mov	r0,a
      002A56 86 82            [24] 1952 	mov	dpl,@r0
      002A58 08               [12] 1953 	inc	r0
      002A59 86 83            [24] 1954 	mov	dph,@r0
      002A5B                       1955 00149$:
                                   1956 ;	fix_fft.c:275: }
      002A5B 85 10 81         [24] 1957 	mov	sp,_bp
      002A5E D0 10            [24] 1958 	pop	_bp
      002A60 22               [24] 1959 	ret
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
      002A61                       1978 _fix_fftr:
      002A61 C0 10            [24] 1979 	push	_bp
      002A63 85 81 10         [24] 1980 	mov	_bp,sp
      002A66 C0 82            [24] 1981 	push	dpl
      002A68 C0 83            [24] 1982 	push	dph
      002A6A C0 F0            [24] 1983 	push	b
      002A6C E5 81            [12] 1984 	mov	a,sp
      002A6E 24 0C            [12] 1985 	add	a,#0x0c
      002A70 F5 81            [12] 1986 	mov	sp,a
                                   1987 ;	fix_fft.c:292: int16_t i, N = 1 << (m - 1), scale = 0;
      002A72 E5 10            [12] 1988 	mov	a,_bp
      002A74 24 FC            [12] 1989 	add	a,#0xfc
      002A76 F8               [12] 1990 	mov	r0,a
      002A77 86 04            [24] 1991 	mov	ar4,@r0
      002A79 1C               [12] 1992 	dec	r4
      002A7A 8C F0            [24] 1993 	mov	b,r4
      002A7C 05 F0            [12] 1994 	inc	b
      002A7E 7C 01            [12] 1995 	mov	r4,#0x01
      002A80 7B 00            [12] 1996 	mov	r3,#0x00
      002A82 80 06            [24] 1997 	sjmp	00128$
      002A84                       1998 00127$:
      002A84 EC               [12] 1999 	mov	a,r4
      002A85 2C               [12] 2000 	add	a,r4
      002A86 FC               [12] 2001 	mov	r4,a
      002A87 EB               [12] 2002 	mov	a,r3
      002A88 33               [12] 2003 	rlc	a
      002A89 FB               [12] 2004 	mov	r3,a
      002A8A                       2005 00128$:
      002A8A D5 F0 F7         [24] 2006 	djnz	b,00127$
      002A8D E5 10            [12] 2007 	mov	a,_bp
      002A8F 24 0E            [12] 2008 	add	a,#0x0e
      002A91 F8               [12] 2009 	mov	r0,a
      002A92 A6 04            [24] 2010 	mov	@r0,ar4
      002A94 08               [12] 2011 	inc	r0
      002A95 A6 03            [24] 2012 	mov	@r0,ar3
                                   2013 ;	fix_fft.c:293: int16_t tt, *fr = f, *fi = f + N;
      002A97 E4               [12] 2014 	clr	a
      002A98 FA               [12] 2015 	mov	r2,a
      002A99 FC               [12] 2016 	mov	r4,a
      002A9A E5 10            [12] 2017 	mov	a,_bp
      002A9C 24 0E            [12] 2018 	add	a,#0x0e
      002A9E F8               [12] 2019 	mov	r0,a
      002A9F E6               [12] 2020 	mov	a,@r0
      002AA0 26               [12] 2021 	add	a,@r0
      002AA1 FB               [12] 2022 	mov	r3,a
      002AA2 08               [12] 2023 	inc	r0
      002AA3 E6               [12] 2024 	mov	a,@r0
      002AA4 33               [12] 2025 	rlc	a
      002AA5 FF               [12] 2026 	mov	r7,a
      002AA6 A8 10            [24] 2027 	mov	r0,_bp
      002AA8 08               [12] 2028 	inc	r0
      002AA9 EB               [12] 2029 	mov	a,r3
      002AAA 26               [12] 2030 	add	a,@r0
      002AAB FB               [12] 2031 	mov	r3,a
      002AAC EF               [12] 2032 	mov	a,r7
      002AAD 08               [12] 2033 	inc	r0
      002AAE 36               [12] 2034 	addc	a,@r0
      002AAF FF               [12] 2035 	mov	r7,a
      002AB0 08               [12] 2036 	inc	r0
      002AB1 86 06            [24] 2037 	mov	ar6,@r0
      002AB3 E5 10            [12] 2038 	mov	a,_bp
      002AB5 24 09            [12] 2039 	add	a,#0x09
      002AB7 F8               [12] 2040 	mov	r0,a
      002AB8 A6 03            [24] 2041 	mov	@r0,ar3
      002ABA 08               [12] 2042 	inc	r0
      002ABB A6 07            [24] 2043 	mov	@r0,ar7
      002ABD 08               [12] 2044 	inc	r0
      002ABE A6 06            [24] 2045 	mov	@r0,ar6
                                   2046 ;	fix_fft.c:295: if (inverse)
      002AC0 E5 10            [12] 2047 	mov	a,_bp
      002AC2 24 FA            [12] 2048 	add	a,#0xfa
      002AC4 F8               [12] 2049 	mov	r0,a
      002AC5 E6               [12] 2050 	mov	a,@r0
      002AC6 08               [12] 2051 	inc	r0
      002AC7 46               [12] 2052 	orl	a,@r0
      002AC8 60 4B            [24] 2053 	jz	00102$
                                   2054 ;	fix_fft.c:296: scale = fix_fft(fi, fr, m - 1, inverse);
      002ACA E5 10            [12] 2055 	mov	a,_bp
      002ACC 24 FC            [12] 2056 	add	a,#0xfc
      002ACE F8               [12] 2057 	mov	r0,a
      002ACF 86 03            [24] 2058 	mov	ar3,@r0
      002AD1 08               [12] 2059 	inc	r0
      002AD2 86 07            [24] 2060 	mov	ar7,@r0
      002AD4 1B               [12] 2061 	dec	r3
      002AD5 BB FF 01         [24] 2062 	cjne	r3,#0xff,00130$
      002AD8 1F               [12] 2063 	dec	r7
      002AD9                       2064 00130$:
      002AD9 E5 10            [12] 2065 	mov	a,_bp
      002ADB 24 FA            [12] 2066 	add	a,#0xfa
      002ADD F8               [12] 2067 	mov	r0,a
      002ADE E6               [12] 2068 	mov	a,@r0
      002ADF C0 E0            [24] 2069 	push	acc
      002AE1 08               [12] 2070 	inc	r0
      002AE2 E6               [12] 2071 	mov	a,@r0
      002AE3 C0 E0            [24] 2072 	push	acc
      002AE5 C0 03            [24] 2073 	push	ar3
      002AE7 C0 07            [24] 2074 	push	ar7
      002AE9 A8 10            [24] 2075 	mov	r0,_bp
      002AEB 08               [12] 2076 	inc	r0
      002AEC E6               [12] 2077 	mov	a,@r0
      002AED C0 E0            [24] 2078 	push	acc
      002AEF 08               [12] 2079 	inc	r0
      002AF0 E6               [12] 2080 	mov	a,@r0
      002AF1 C0 E0            [24] 2081 	push	acc
      002AF3 08               [12] 2082 	inc	r0
      002AF4 E6               [12] 2083 	mov	a,@r0
      002AF5 C0 E0            [24] 2084 	push	acc
      002AF7 E5 10            [12] 2085 	mov	a,_bp
      002AF9 24 09            [12] 2086 	add	a,#0x09
      002AFB F8               [12] 2087 	mov	r0,a
      002AFC 86 82            [24] 2088 	mov	dpl,@r0
      002AFE 08               [12] 2089 	inc	r0
      002AFF 86 83            [24] 2090 	mov	dph,@r0
      002B01 08               [12] 2091 	inc	r0
      002B02 86 F0            [24] 2092 	mov	b,@r0
      002B04 12 20 AE         [24] 2093 	lcall	_fix_fft
      002B07 AE 82            [24] 2094 	mov	r6,dpl
      002B09 AF 83            [24] 2095 	mov	r7,dph
      002B0B E5 81            [12] 2096 	mov	a,sp
      002B0D 24 F9            [12] 2097 	add	a,#0xf9
      002B0F F5 81            [12] 2098 	mov	sp,a
      002B11 8E 02            [24] 2099 	mov	ar2,r6
      002B13 8F 04            [24] 2100 	mov	ar4,r7
      002B15                       2101 00102$:
                                   2102 ;	fix_fft.c:298: for (i = 1; i < N; i += 2) {
      002B15 E5 10            [12] 2103 	mov	a,_bp
      002B17 24 0C            [12] 2104 	add	a,#0x0c
      002B19 F8               [12] 2105 	mov	r0,a
      002B1A 76 01            [12] 2106 	mov	@r0,#0x01
      002B1C 08               [12] 2107 	inc	r0
      002B1D 76 00            [12] 2108 	mov	@r0,#0x00
      002B1F                       2109 00107$:
      002B1F E5 10            [12] 2110 	mov	a,_bp
      002B21 24 0C            [12] 2111 	add	a,#0x0c
      002B23 F8               [12] 2112 	mov	r0,a
      002B24 E5 10            [12] 2113 	mov	a,_bp
      002B26 24 0E            [12] 2114 	add	a,#0x0e
      002B28 F9               [12] 2115 	mov	r1,a
      002B29 C3               [12] 2116 	clr	c
      002B2A E6               [12] 2117 	mov	a,@r0
      002B2B 97               [12] 2118 	subb	a,@r1
      002B2C 08               [12] 2119 	inc	r0
      002B2D E6               [12] 2120 	mov	a,@r0
      002B2E 64 80            [12] 2121 	xrl	a,#0x80
      002B30 09               [12] 2122 	inc	r1
      002B31 87 F0            [24] 2123 	mov	b,@r1
      002B33 63 F0 80         [24] 2124 	xrl	b,#0x80
      002B36 95 F0            [12] 2125 	subb	a,b
      002B38 40 03            [24] 2126 	jc	00131$
      002B3A 02 2C 03         [24] 2127 	ljmp	00103$
      002B3D                       2128 00131$:
                                   2129 ;	fix_fft.c:299: tt = f[N + i - 1];
      002B3D C0 02            [24] 2130 	push	ar2
      002B3F C0 04            [24] 2131 	push	ar4
      002B41 E5 10            [12] 2132 	mov	a,_bp
      002B43 24 0E            [12] 2133 	add	a,#0x0e
      002B45 F8               [12] 2134 	mov	r0,a
      002B46 E5 10            [12] 2135 	mov	a,_bp
      002B48 24 0C            [12] 2136 	add	a,#0x0c
      002B4A F9               [12] 2137 	mov	r1,a
      002B4B E7               [12] 2138 	mov	a,@r1
      002B4C 26               [12] 2139 	add	a,@r0
      002B4D FB               [12] 2140 	mov	r3,a
      002B4E 09               [12] 2141 	inc	r1
      002B4F E7               [12] 2142 	mov	a,@r1
      002B50 08               [12] 2143 	inc	r0
      002B51 36               [12] 2144 	addc	a,@r0
      002B52 FD               [12] 2145 	mov	r5,a
      002B53 1B               [12] 2146 	dec	r3
      002B54 BB FF 01         [24] 2147 	cjne	r3,#0xff,00132$
      002B57 1D               [12] 2148 	dec	r5
      002B58                       2149 00132$:
      002B58 EB               [12] 2150 	mov	a,r3
      002B59 2B               [12] 2151 	add	a,r3
      002B5A FB               [12] 2152 	mov	r3,a
      002B5B ED               [12] 2153 	mov	a,r5
      002B5C 33               [12] 2154 	rlc	a
      002B5D FD               [12] 2155 	mov	r5,a
      002B5E A8 10            [24] 2156 	mov	r0,_bp
      002B60 08               [12] 2157 	inc	r0
      002B61 EB               [12] 2158 	mov	a,r3
      002B62 26               [12] 2159 	add	a,@r0
      002B63 FB               [12] 2160 	mov	r3,a
      002B64 ED               [12] 2161 	mov	a,r5
      002B65 08               [12] 2162 	inc	r0
      002B66 36               [12] 2163 	addc	a,@r0
      002B67 FC               [12] 2164 	mov	r4,a
      002B68 08               [12] 2165 	inc	r0
      002B69 86 05            [24] 2166 	mov	ar5,@r0
      002B6B 8B 82            [24] 2167 	mov	dpl,r3
      002B6D 8C 83            [24] 2168 	mov	dph,r4
      002B6F 8D F0            [24] 2169 	mov	b,r5
      002B71 E5 10            [12] 2170 	mov	a,_bp
      002B73 24 07            [12] 2171 	add	a,#0x07
      002B75 F8               [12] 2172 	mov	r0,a
      002B76 12 31 7D         [24] 2173 	lcall	__gptrget
      002B79 F6               [12] 2174 	mov	@r0,a
      002B7A A3               [24] 2175 	inc	dptr
      002B7B 12 31 7D         [24] 2176 	lcall	__gptrget
      002B7E 08               [12] 2177 	inc	r0
      002B7F F6               [12] 2178 	mov	@r0,a
                                   2179 ;	fix_fft.c:300: f[N + i - 1] = f[i];
      002B80 E5 10            [12] 2180 	mov	a,_bp
      002B82 24 0C            [12] 2181 	add	a,#0x0c
      002B84 F8               [12] 2182 	mov	r0,a
      002B85 E6               [12] 2183 	mov	a,@r0
      002B86 26               [12] 2184 	add	a,@r0
      002B87 FA               [12] 2185 	mov	r2,a
      002B88 08               [12] 2186 	inc	r0
      002B89 E6               [12] 2187 	mov	a,@r0
      002B8A 33               [12] 2188 	rlc	a
      002B8B FF               [12] 2189 	mov	r7,a
      002B8C A8 10            [24] 2190 	mov	r0,_bp
      002B8E 08               [12] 2191 	inc	r0
      002B8F E5 10            [12] 2192 	mov	a,_bp
      002B91 24 04            [12] 2193 	add	a,#0x04
      002B93 F9               [12] 2194 	mov	r1,a
      002B94 EA               [12] 2195 	mov	a,r2
      002B95 26               [12] 2196 	add	a,@r0
      002B96 F7               [12] 2197 	mov	@r1,a
      002B97 EF               [12] 2198 	mov	a,r7
      002B98 08               [12] 2199 	inc	r0
      002B99 36               [12] 2200 	addc	a,@r0
      002B9A 09               [12] 2201 	inc	r1
      002B9B F7               [12] 2202 	mov	@r1,a
      002B9C 08               [12] 2203 	inc	r0
      002B9D 09               [12] 2204 	inc	r1
      002B9E E6               [12] 2205 	mov	a,@r0
      002B9F F7               [12] 2206 	mov	@r1,a
      002BA0 E5 10            [12] 2207 	mov	a,_bp
      002BA2 24 04            [12] 2208 	add	a,#0x04
      002BA4 F8               [12] 2209 	mov	r0,a
      002BA5 86 82            [24] 2210 	mov	dpl,@r0
      002BA7 08               [12] 2211 	inc	r0
      002BA8 86 83            [24] 2212 	mov	dph,@r0
      002BAA 08               [12] 2213 	inc	r0
      002BAB 86 F0            [24] 2214 	mov	b,@r0
      002BAD 12 31 7D         [24] 2215 	lcall	__gptrget
      002BB0 FE               [12] 2216 	mov	r6,a
      002BB1 A3               [24] 2217 	inc	dptr
      002BB2 12 31 7D         [24] 2218 	lcall	__gptrget
      002BB5 FF               [12] 2219 	mov	r7,a
      002BB6 8B 82            [24] 2220 	mov	dpl,r3
      002BB8 8C 83            [24] 2221 	mov	dph,r4
      002BBA 8D F0            [24] 2222 	mov	b,r5
      002BBC EE               [12] 2223 	mov	a,r6
      002BBD 12 2F B2         [24] 2224 	lcall	__gptrput
      002BC0 A3               [24] 2225 	inc	dptr
      002BC1 EF               [12] 2226 	mov	a,r7
      002BC2 12 2F B2         [24] 2227 	lcall	__gptrput
                                   2228 ;	fix_fft.c:301: f[i] = tt;
      002BC5 E5 10            [12] 2229 	mov	a,_bp
      002BC7 24 04            [12] 2230 	add	a,#0x04
      002BC9 F8               [12] 2231 	mov	r0,a
      002BCA 86 82            [24] 2232 	mov	dpl,@r0
      002BCC 08               [12] 2233 	inc	r0
      002BCD 86 83            [24] 2234 	mov	dph,@r0
      002BCF 08               [12] 2235 	inc	r0
      002BD0 86 F0            [24] 2236 	mov	b,@r0
      002BD2 E5 10            [12] 2237 	mov	a,_bp
      002BD4 24 07            [12] 2238 	add	a,#0x07
      002BD6 F9               [12] 2239 	mov	r1,a
      002BD7 E7               [12] 2240 	mov	a,@r1
      002BD8 12 2F B2         [24] 2241 	lcall	__gptrput
      002BDB A3               [24] 2242 	inc	dptr
      002BDC 09               [12] 2243 	inc	r1
      002BDD E7               [12] 2244 	mov	a,@r1
      002BDE 12 2F B2         [24] 2245 	lcall	__gptrput
                                   2246 ;	fix_fft.c:298: for (i = 1; i < N; i += 2) {
      002BE1 E5 10            [12] 2247 	mov	a,_bp
      002BE3 24 0C            [12] 2248 	add	a,#0x0c
      002BE5 F8               [12] 2249 	mov	r0,a
      002BE6 86 06            [24] 2250 	mov	ar6,@r0
      002BE8 08               [12] 2251 	inc	r0
      002BE9 86 07            [24] 2252 	mov	ar7,@r0
      002BEB 74 02            [12] 2253 	mov	a,#0x02
      002BED 2E               [12] 2254 	add	a,r6
      002BEE FE               [12] 2255 	mov	r6,a
      002BEF E4               [12] 2256 	clr	a
      002BF0 3F               [12] 2257 	addc	a,r7
      002BF1 FF               [12] 2258 	mov	r7,a
      002BF2 E5 10            [12] 2259 	mov	a,_bp
      002BF4 24 0C            [12] 2260 	add	a,#0x0c
      002BF6 F8               [12] 2261 	mov	r0,a
      002BF7 A6 06            [24] 2262 	mov	@r0,ar6
      002BF9 08               [12] 2263 	inc	r0
      002BFA A6 07            [24] 2264 	mov	@r0,ar7
      002BFC D0 04            [24] 2265 	pop	ar4
      002BFE D0 02            [24] 2266 	pop	ar2
      002C00 02 2B 1F         [24] 2267 	ljmp	00107$
      002C03                       2268 00103$:
                                   2269 ;	fix_fft.c:304: if (!inverse)
      002C03 E5 10            [12] 2270 	mov	a,_bp
      002C05 24 FA            [12] 2271 	add	a,#0xfa
      002C07 F8               [12] 2272 	mov	r0,a
      002C08 E6               [12] 2273 	mov	a,@r0
      002C09 08               [12] 2274 	inc	r0
      002C0A 46               [12] 2275 	orl	a,@r0
      002C0B 70 4B            [24] 2276 	jnz	00105$
                                   2277 ;	fix_fft.c:305: scale = fix_fft(fi, fr, m - 1, inverse);
      002C0D E5 10            [12] 2278 	mov	a,_bp
      002C0F 24 FC            [12] 2279 	add	a,#0xfc
      002C11 F8               [12] 2280 	mov	r0,a
      002C12 86 06            [24] 2281 	mov	ar6,@r0
      002C14 08               [12] 2282 	inc	r0
      002C15 86 07            [24] 2283 	mov	ar7,@r0
      002C17 1E               [12] 2284 	dec	r6
      002C18 BE FF 01         [24] 2285 	cjne	r6,#0xff,00134$
      002C1B 1F               [12] 2286 	dec	r7
      002C1C                       2287 00134$:
      002C1C E5 10            [12] 2288 	mov	a,_bp
      002C1E 24 FA            [12] 2289 	add	a,#0xfa
      002C20 F8               [12] 2290 	mov	r0,a
      002C21 E6               [12] 2291 	mov	a,@r0
      002C22 C0 E0            [24] 2292 	push	acc
      002C24 08               [12] 2293 	inc	r0
      002C25 E6               [12] 2294 	mov	a,@r0
      002C26 C0 E0            [24] 2295 	push	acc
      002C28 C0 06            [24] 2296 	push	ar6
      002C2A C0 07            [24] 2297 	push	ar7
      002C2C A8 10            [24] 2298 	mov	r0,_bp
      002C2E 08               [12] 2299 	inc	r0
      002C2F E6               [12] 2300 	mov	a,@r0
      002C30 C0 E0            [24] 2301 	push	acc
      002C32 08               [12] 2302 	inc	r0
      002C33 E6               [12] 2303 	mov	a,@r0
      002C34 C0 E0            [24] 2304 	push	acc
      002C36 08               [12] 2305 	inc	r0
      002C37 E6               [12] 2306 	mov	a,@r0
      002C38 C0 E0            [24] 2307 	push	acc
      002C3A E5 10            [12] 2308 	mov	a,_bp
      002C3C 24 09            [12] 2309 	add	a,#0x09
      002C3E F8               [12] 2310 	mov	r0,a
      002C3F 86 82            [24] 2311 	mov	dpl,@r0
      002C41 08               [12] 2312 	inc	r0
      002C42 86 83            [24] 2313 	mov	dph,@r0
      002C44 08               [12] 2314 	inc	r0
      002C45 86 F0            [24] 2315 	mov	b,@r0
      002C47 12 20 AE         [24] 2316 	lcall	_fix_fft
      002C4A AE 82            [24] 2317 	mov	r6,dpl
      002C4C AF 83            [24] 2318 	mov	r7,dph
      002C4E E5 81            [12] 2319 	mov	a,sp
      002C50 24 F9            [12] 2320 	add	a,#0xf9
      002C52 F5 81            [12] 2321 	mov	sp,a
      002C54 8E 02            [24] 2322 	mov	ar2,r6
      002C56 8F 04            [24] 2323 	mov	ar4,r7
      002C58                       2324 00105$:
                                   2325 ;	fix_fft.c:307: return scale;
      002C58 8A 82            [24] 2326 	mov	dpl,r2
      002C5A 8C 83            [24] 2327 	mov	dph,r4
                                   2328 ;	fix_fft.c:308: }
      002C5C 85 10 81         [24] 2329 	mov	sp,_bp
      002C5F D0 10            [24] 2330 	pop	_bp
      002C61 22               [24] 2331 	ret
                                   2332 	.area CSEG    (CODE)
                                   2333 	.area CONST   (CODE)
                                   2334 	.area XINIT   (CODE)
      004864                       2335 __xinit__Sinewave:
      004864 00 00                 2336 	.byte #0x00, #0x00	;  0
      004866 C9 00                 2337 	.byte #0xc9, #0x00	;  201
      004868 92 01                 2338 	.byte #0x92, #0x01	;  402
      00486A 5B 02                 2339 	.byte #0x5b, #0x02	;  603
      00486C 24 03                 2340 	.byte #0x24, #0x03	;  804
      00486E ED 03                 2341 	.byte #0xed, #0x03	;  1005
      004870 B6 04                 2342 	.byte #0xb6, #0x04	;  1206
      004872 7E 05                 2343 	.byte #0x7e, #0x05	;  1406
      004874 47 06                 2344 	.byte #0x47, #0x06	;  1607
      004876 10 07                 2345 	.byte #0x10, #0x07	;  1808
      004878 D9 07                 2346 	.byte #0xd9, #0x07	;  2009
      00487A A1 08                 2347 	.byte #0xa1, #0x08	;  2209
      00487C 6A 09                 2348 	.byte #0x6a, #0x09	;  2410
      00487E 32 0A                 2349 	.byte #0x32, #0x0a	;  2610
      004880 FB 0A                 2350 	.byte #0xfb, #0x0a	;  2811
      004882 C3 0B                 2351 	.byte #0xc3, #0x0b	;  3011
      004884 8B 0C                 2352 	.byte #0x8b, #0x0c	;  3211
      004886 53 0D                 2353 	.byte #0x53, #0x0d	;  3411
      004888 1B 0E                 2354 	.byte #0x1b, #0x0e	;  3611
      00488A E3 0E                 2355 	.byte #0xe3, #0x0e	;  3811
      00488C AB 0F                 2356 	.byte #0xab, #0x0f	;  4011
      00488E 72 10                 2357 	.byte #0x72, #0x10	;  4210
      004890 39 11                 2358 	.byte #0x39, #0x11	;  4409
      004892 00 12                 2359 	.byte #0x00, #0x12	;  4608
      004894 C7 12                 2360 	.byte #0xc7, #0x12	;  4807
      004896 8E 13                 2361 	.byte #0x8e, #0x13	;  5006
      004898 55 14                 2362 	.byte #0x55, #0x14	;  5205
      00489A 1B 15                 2363 	.byte #0x1b, #0x15	;  5403
      00489C E1 15                 2364 	.byte #0xe1, #0x15	;  5601
      00489E A7 16                 2365 	.byte #0xa7, #0x16	;  5799
      0048A0 6D 17                 2366 	.byte #0x6d, #0x17	;  5997
      0048A2 33 18                 2367 	.byte #0x33, #0x18	;  6195
      0048A4 F8 18                 2368 	.byte #0xf8, #0x18	;  6392
      0048A6 BD 19                 2369 	.byte #0xbd, #0x19	;  6589
      0048A8 82 1A                 2370 	.byte #0x82, #0x1a	;  6786
      0048AA 46 1B                 2371 	.byte #0x46, #0x1b	;  6982
      0048AC 0B 1C                 2372 	.byte #0x0b, #0x1c	;  7179
      0048AE CF 1C                 2373 	.byte #0xcf, #0x1c	;  7375
      0048B0 93 1D                 2374 	.byte #0x93, #0x1d	;  7571
      0048B2 56 1E                 2375 	.byte #0x56, #0x1e	;  7766
      0048B4 19 1F                 2376 	.byte #0x19, #0x1f	;  7961
      0048B6 DC 1F                 2377 	.byte #0xdc, #0x1f	;  8156
      0048B8 9F 20                 2378 	.byte #0x9f, #0x20	;  8351
      0048BA 61 21                 2379 	.byte #0x61, #0x21	;  8545
      0048BC 23 22                 2380 	.byte #0x23, #0x22	;  8739
      0048BE E4 22                 2381 	.byte #0xe4, #0x22	;  8932
      0048C0 A6 23                 2382 	.byte #0xa6, #0x23	;  9126
      0048C2 67 24                 2383 	.byte #0x67, #0x24	;  9319
      0048C4 27 25                 2384 	.byte #0x27, #0x25	;  9511
      0048C6 E7 25                 2385 	.byte #0xe7, #0x25	;  9703
      0048C8 A7 26                 2386 	.byte #0xa7, #0x26	;  9895
      0048CA 67 27                 2387 	.byte #0x67, #0x27	;  10087
      0048CC 26 28                 2388 	.byte #0x26, #0x28	;  10278
      0048CE E5 28                 2389 	.byte #0xe5, #0x28	;  10469
      0048D0 A3 29                 2390 	.byte #0xa3, #0x29	;  10659
      0048D2 61 2A                 2391 	.byte #0x61, #0x2a	;  10849
      0048D4 1E 2B                 2392 	.byte #0x1e, #0x2b	;  11038
      0048D6 DB 2B                 2393 	.byte #0xdb, #0x2b	;  11227
      0048D8 98 2C                 2394 	.byte #0x98, #0x2c	;  11416
      0048DA 54 2D                 2395 	.byte #0x54, #0x2d	;  11604
      0048DC 10 2E                 2396 	.byte #0x10, #0x2e	;  11792
      0048DE CC 2E                 2397 	.byte #0xcc, #0x2e	;  11980
      0048E0 86 2F                 2398 	.byte #0x86, #0x2f	;  12166
      0048E2 41 30                 2399 	.byte #0x41, #0x30	;  12353
      0048E4 FB 30                 2400 	.byte #0xfb, #0x30	;  12539
      0048E6 B4 31                 2401 	.byte #0xb4, #0x31	;  12724
      0048E8 6D 32                 2402 	.byte #0x6d, #0x32	;  12909
      0048EA 26 33                 2403 	.byte #0x26, #0x33	;  13094
      0048EC DE 33                 2404 	.byte #0xde, #0x33	;  13278
      0048EE 96 34                 2405 	.byte #0x96, #0x34	;  13462
      0048F0 4D 35                 2406 	.byte #0x4d, #0x35	;  13645
      0048F2 03 36                 2407 	.byte #0x03, #0x36	;  13827
      0048F4 B9 36                 2408 	.byte #0xb9, #0x36	;  14009
      0048F6 6F 37                 2409 	.byte #0x6f, #0x37	;  14191
      0048F8 24 38                 2410 	.byte #0x24, #0x38	;  14372
      0048FA D8 38                 2411 	.byte #0xd8, #0x38	;  14552
      0048FC 8C 39                 2412 	.byte #0x8c, #0x39	;  14732
      0048FE 3F 3A                 2413 	.byte #0x3f, #0x3a	;  14911
      004900 F2 3A                 2414 	.byte #0xf2, #0x3a	;  15090
      004902 A4 3B                 2415 	.byte #0xa4, #0x3b	;  15268
      004904 56 3C                 2416 	.byte #0x56, #0x3c	;  15446
      004906 07 3D                 2417 	.byte #0x07, #0x3d	;  15623
      004908 B7 3D                 2418 	.byte #0xb7, #0x3d	;  15799
      00490A 67 3E                 2419 	.byte #0x67, #0x3e	;  15975
      00490C 16 3F                 2420 	.byte #0x16, #0x3f	;  16150
      00490E C5 3F                 2421 	.byte #0xc5, #0x3f	;  16325
      004910 73 40                 2422 	.byte #0x73, #0x40	;  16499
      004912 20 41                 2423 	.byte #0x20, #0x41	;  16672
      004914 CD 41                 2424 	.byte #0xcd, #0x41	;  16845
      004916 79 42                 2425 	.byte #0x79, #0x42	;  17017
      004918 25 43                 2426 	.byte #0x25, #0x43	;  17189
      00491A D0 43                 2427 	.byte #0xd0, #0x43	;  17360
      00491C 7A 44                 2428 	.byte #0x7a, #0x44	;  17530
      00491E 23 45                 2429 	.byte #0x23, #0x45	;  17699
      004920 CC 45                 2430 	.byte #0xcc, #0x45	;  17868
      004922 74 46                 2431 	.byte #0x74, #0x46	;  18036
      004924 1C 47                 2432 	.byte #0x1c, #0x47	;  18204
      004926 C3 47                 2433 	.byte #0xc3, #0x47	;  18371
      004928 69 48                 2434 	.byte #0x69, #0x48	;  18537
      00492A 0E 49                 2435 	.byte #0x0e, #0x49	;  18702
      00492C B3 49                 2436 	.byte #0xb3, #0x49	;  18867
      00492E 57 4A                 2437 	.byte #0x57, #0x4a	;  19031
      004930 FA 4A                 2438 	.byte #0xfa, #0x4a	;  19194
      004932 9D 4B                 2439 	.byte #0x9d, #0x4b	;  19357
      004934 3F 4C                 2440 	.byte #0x3f, #0x4c	;  19519
      004936 E0 4C                 2441 	.byte #0xe0, #0x4c	;  19680
      004938 80 4D                 2442 	.byte #0x80, #0x4d	;  19840
      00493A 20 4E                 2443 	.byte #0x20, #0x4e	;  20000
      00493C BF 4E                 2444 	.byte #0xbf, #0x4e	;  20159
      00493E 5D 4F                 2445 	.byte #0x5d, #0x4f	;  20317
      004940 FA 4F                 2446 	.byte #0xfa, #0x4f	;  20474
      004942 97 50                 2447 	.byte #0x97, #0x50	;  20631
      004944 33 51                 2448 	.byte #0x33, #0x51	;  20787
      004946 CE 51                 2449 	.byte #0xce, #0x51	;  20942
      004948 68 52                 2450 	.byte #0x68, #0x52	;  21096
      00494A 01 53                 2451 	.byte #0x01, #0x53	;  21249
      00494C 9A 53                 2452 	.byte #0x9a, #0x53	;  21402
      00494E 32 54                 2453 	.byte #0x32, #0x54	;  21554
      004950 C9 54                 2454 	.byte #0xc9, #0x54	;  21705
      004952 5F 55                 2455 	.byte #0x5f, #0x55	;  21855
      004954 F4 55                 2456 	.byte #0xf4, #0x55	;  22004
      004956 89 56                 2457 	.byte #0x89, #0x56	;  22153
      004958 1D 57                 2458 	.byte #0x1d, #0x57	;  22301
      00495A B0 57                 2459 	.byte #0xb0, #0x57	;  22448
      00495C 42 58                 2460 	.byte #0x42, #0x58	;  22594
      00495E D3 58                 2461 	.byte #0xd3, #0x58	;  22739
      004960 63 59                 2462 	.byte #0x63, #0x59	;  22883
      004962 F3 59                 2463 	.byte #0xf3, #0x59	;  23027
      004964 81 5A                 2464 	.byte #0x81, #0x5a	;  23169
      004966 0F 5B                 2465 	.byte #0x0f, #0x5b	;  23311
      004968 9C 5B                 2466 	.byte #0x9c, #0x5b	;  23452
      00496A 28 5C                 2467 	.byte #0x28, #0x5c	;  23592
      00496C B3 5C                 2468 	.byte #0xb3, #0x5c	;  23731
      00496E 3D 5D                 2469 	.byte #0x3d, #0x5d	;  23869
      004970 C6 5D                 2470 	.byte #0xc6, #0x5d	;  24006
      004972 4F 5E                 2471 	.byte #0x4f, #0x5e	;  24143
      004974 D6 5E                 2472 	.byte #0xd6, #0x5e	;  24278
      004976 5D 5F                 2473 	.byte #0x5d, #0x5f	;  24413
      004978 E2 5F                 2474 	.byte #0xe2, #0x5f	;  24546
      00497A 67 60                 2475 	.byte #0x67, #0x60	;  24679
      00497C EB 60                 2476 	.byte #0xeb, #0x60	;  24811
      00497E 6E 61                 2477 	.byte #0x6e, #0x61	;  24942
      004980 F0 61                 2478 	.byte #0xf0, #0x61	;  25072
      004982 71 62                 2479 	.byte #0x71, #0x62	;  25201
      004984 F1 62                 2480 	.byte #0xf1, #0x62	;  25329
      004986 70 63                 2481 	.byte #0x70, #0x63	;  25456
      004988 EE 63                 2482 	.byte #0xee, #0x63	;  25582
      00498A 6B 64                 2483 	.byte #0x6b, #0x64	;  25707
      00498C E7 64                 2484 	.byte #0xe7, #0x64	;  25831
      00498E 62 65                 2485 	.byte #0x62, #0x65	;  25954
      004990 DD 65                 2486 	.byte #0xdd, #0x65	;  26077
      004992 56 66                 2487 	.byte #0x56, #0x66	;  26198
      004994 CE 66                 2488 	.byte #0xce, #0x66	;  26318
      004996 45 67                 2489 	.byte #0x45, #0x67	;  26437
      004998 BC 67                 2490 	.byte #0xbc, #0x67	;  26556
      00499A 31 68                 2491 	.byte #0x31, #0x68	;  26673
      00499C A5 68                 2492 	.byte #0xa5, #0x68	;  26789
      00499E 19 69                 2493 	.byte #0x19, #0x69	;  26905
      0049A0 8B 69                 2494 	.byte #0x8b, #0x69	;  27019
      0049A2 FC 69                 2495 	.byte #0xfc, #0x69	;  27132
      0049A4 6C 6A                 2496 	.byte #0x6c, #0x6a	;  27244
      0049A6 DB 6A                 2497 	.byte #0xdb, #0x6a	;  27355
      0049A8 4A 6B                 2498 	.byte #0x4a, #0x6b	;  27466
      0049AA B7 6B                 2499 	.byte #0xb7, #0x6b	;  27575
      0049AC 23 6C                 2500 	.byte #0x23, #0x6c	;  27683
      0049AE 8E 6C                 2501 	.byte #0x8e, #0x6c	;  27790
      0049B0 F8 6C                 2502 	.byte #0xf8, #0x6c	;  27896
      0049B2 61 6D                 2503 	.byte #0x61, #0x6d	;  28001
      0049B4 C9 6D                 2504 	.byte #0xc9, #0x6d	;  28105
      0049B6 30 6E                 2505 	.byte #0x30, #0x6e	;  28208
      0049B8 95 6E                 2506 	.byte #0x95, #0x6e	;  28309
      0049BA FA 6E                 2507 	.byte #0xfa, #0x6e	;  28410
      0049BC 5E 6F                 2508 	.byte #0x5e, #0x6f	;  28510
      0049BE C0 6F                 2509 	.byte #0xc0, #0x6f	;  28608
      0049C0 22 70                 2510 	.byte #0x22, #0x70	;  28706
      0049C2 82 70                 2511 	.byte #0x82, #0x70	;  28802
      0049C4 E1 70                 2512 	.byte #0xe1, #0x70	;  28897
      0049C6 40 71                 2513 	.byte #0x40, #0x71	;  28992
      0049C8 9D 71                 2514 	.byte #0x9d, #0x71	;  29085
      0049CA F9 71                 2515 	.byte #0xf9, #0x71	;  29177
      0049CC 54 72                 2516 	.byte #0x54, #0x72	;  29268
      0049CE AE 72                 2517 	.byte #0xae, #0x72	;  29358
      0049D0 06 73                 2518 	.byte #0x06, #0x73	;  29446
      0049D2 5E 73                 2519 	.byte #0x5e, #0x73	;  29534
      0049D4 B5 73                 2520 	.byte #0xb5, #0x73	;  29621
      0049D6 0A 74                 2521 	.byte #0x0a, #0x74	;  29706
      0049D8 5E 74                 2522 	.byte #0x5e, #0x74	;  29790
      0049DA B1 74                 2523 	.byte #0xb1, #0x74	;  29873
      0049DC 03 75                 2524 	.byte #0x03, #0x75	;  29955
      0049DE 54 75                 2525 	.byte #0x54, #0x75	;  30036
      0049E0 A4 75                 2526 	.byte #0xa4, #0x75	;  30116
      0049E2 F3 75                 2527 	.byte #0xf3, #0x75	;  30195
      0049E4 40 76                 2528 	.byte #0x40, #0x76	;  30272
      0049E6 8D 76                 2529 	.byte #0x8d, #0x76	;  30349
      0049E8 D8 76                 2530 	.byte #0xd8, #0x76	;  30424
      0049EA 22 77                 2531 	.byte #0x22, #0x77	;  30498
      0049EC 6B 77                 2532 	.byte #0x6b, #0x77	;  30571
      0049EE B3 77                 2533 	.byte #0xb3, #0x77	;  30643
      0049F0 F9 77                 2534 	.byte #0xf9, #0x77	;  30713
      0049F2 3F 78                 2535 	.byte #0x3f, #0x78	;  30783
      0049F4 83 78                 2536 	.byte #0x83, #0x78	;  30851
      0049F6 C6 78                 2537 	.byte #0xc6, #0x78	;  30918
      0049F8 08 79                 2538 	.byte #0x08, #0x79	;  30984
      0049FA 49 79                 2539 	.byte #0x49, #0x79	;  31049
      0049FC 89 79                 2540 	.byte #0x89, #0x79	;  31113
      0049FE C7 79                 2541 	.byte #0xc7, #0x79	;  31175
      004A00 04 7A                 2542 	.byte #0x04, #0x7a	;  31236
      004A02 41 7A                 2543 	.byte #0x41, #0x7a	;  31297
      004A04 7C 7A                 2544 	.byte #0x7c, #0x7a	;  31356
      004A06 B5 7A                 2545 	.byte #0xb5, #0x7a	;  31413
      004A08 EE 7A                 2546 	.byte #0xee, #0x7a	;  31470
      004A0A 25 7B                 2547 	.byte #0x25, #0x7b	;  31525
      004A0C 5C 7B                 2548 	.byte #0x5c, #0x7b	;  31580
      004A0E 91 7B                 2549 	.byte #0x91, #0x7b	;  31633
      004A10 C4 7B                 2550 	.byte #0xc4, #0x7b	;  31684
      004A12 F7 7B                 2551 	.byte #0xf7, #0x7b	;  31735
      004A14 29 7C                 2552 	.byte #0x29, #0x7c	;  31785
      004A16 59 7C                 2553 	.byte #0x59, #0x7c	;  31833
      004A18 88 7C                 2554 	.byte #0x88, #0x7c	;  31880
      004A1A B6 7C                 2555 	.byte #0xb6, #0x7c	;  31926
      004A1C E2 7C                 2556 	.byte #0xe2, #0x7c	;  31970
      004A1E 0E 7D                 2557 	.byte #0x0e, #0x7d	;  32014
      004A20 38 7D                 2558 	.byte #0x38, #0x7d	;  32056
      004A22 61 7D                 2559 	.byte #0x61, #0x7d	;  32097
      004A24 89 7D                 2560 	.byte #0x89, #0x7d	;  32137
      004A26 B0 7D                 2561 	.byte #0xb0, #0x7d	;  32176
      004A28 D5 7D                 2562 	.byte #0xd5, #0x7d	;  32213
      004A2A F9 7D                 2563 	.byte #0xf9, #0x7d	;  32249
      004A2C 1C 7E                 2564 	.byte #0x1c, #0x7e	;  32284
      004A2E 3E 7E                 2565 	.byte #0x3e, #0x7e	;  32318
      004A30 5E 7E                 2566 	.byte #0x5e, #0x7e	;  32350
      004A32 7E 7E                 2567 	.byte #0x7e, #0x7e	;  32382
      004A34 9C 7E                 2568 	.byte #0x9c, #0x7e	;  32412
      004A36 B9 7E                 2569 	.byte #0xb9, #0x7e	;  32441
      004A38 D4 7E                 2570 	.byte #0xd4, #0x7e	;  32468
      004A3A EF 7E                 2571 	.byte #0xef, #0x7e	;  32495
      004A3C 08 7F                 2572 	.byte #0x08, #0x7f	;  32520
      004A3E 20 7F                 2573 	.byte #0x20, #0x7f	;  32544
      004A40 37 7F                 2574 	.byte #0x37, #0x7f	;  32567
      004A42 4C 7F                 2575 	.byte #0x4c, #0x7f	;  32588
      004A44 61 7F                 2576 	.byte #0x61, #0x7f	;  32609
      004A46 74 7F                 2577 	.byte #0x74, #0x7f	;  32628
      004A48 86 7F                 2578 	.byte #0x86, #0x7f	;  32646
      004A4A 96 7F                 2579 	.byte #0x96, #0x7f	;  32662
      004A4C A6 7F                 2580 	.byte #0xa6, #0x7f	;  32678
      004A4E B4 7F                 2581 	.byte #0xb4, #0x7f	;  32692
      004A50 C1 7F                 2582 	.byte #0xc1, #0x7f	;  32705
      004A52 CD 7F                 2583 	.byte #0xcd, #0x7f	;  32717
      004A54 D7 7F                 2584 	.byte #0xd7, #0x7f	;  32727
      004A56 E0 7F                 2585 	.byte #0xe0, #0x7f	;  32736
      004A58 E8 7F                 2586 	.byte #0xe8, #0x7f	;  32744
      004A5A EF 7F                 2587 	.byte #0xef, #0x7f	;  32751
      004A5C F5 7F                 2588 	.byte #0xf5, #0x7f	;  32757
      004A5E F9 7F                 2589 	.byte #0xf9, #0x7f	;  32761
      004A60 FC 7F                 2590 	.byte #0xfc, #0x7f	;  32764
      004A62 FE 7F                 2591 	.byte #0xfe, #0x7f	;  32766
      004A64 FF 7F                 2592 	.byte #0xff, #0x7f	;  32767
      004A66 FE 7F                 2593 	.byte #0xfe, #0x7f	;  32766
      004A68 FC 7F                 2594 	.byte #0xfc, #0x7f	;  32764
      004A6A F9 7F                 2595 	.byte #0xf9, #0x7f	;  32761
      004A6C F5 7F                 2596 	.byte #0xf5, #0x7f	;  32757
      004A6E EF 7F                 2597 	.byte #0xef, #0x7f	;  32751
      004A70 E8 7F                 2598 	.byte #0xe8, #0x7f	;  32744
      004A72 E0 7F                 2599 	.byte #0xe0, #0x7f	;  32736
      004A74 D7 7F                 2600 	.byte #0xd7, #0x7f	;  32727
      004A76 CD 7F                 2601 	.byte #0xcd, #0x7f	;  32717
      004A78 C1 7F                 2602 	.byte #0xc1, #0x7f	;  32705
      004A7A B4 7F                 2603 	.byte #0xb4, #0x7f	;  32692
      004A7C A6 7F                 2604 	.byte #0xa6, #0x7f	;  32678
      004A7E 96 7F                 2605 	.byte #0x96, #0x7f	;  32662
      004A80 86 7F                 2606 	.byte #0x86, #0x7f	;  32646
      004A82 74 7F                 2607 	.byte #0x74, #0x7f	;  32628
      004A84 61 7F                 2608 	.byte #0x61, #0x7f	;  32609
      004A86 4C 7F                 2609 	.byte #0x4c, #0x7f	;  32588
      004A88 37 7F                 2610 	.byte #0x37, #0x7f	;  32567
      004A8A 20 7F                 2611 	.byte #0x20, #0x7f	;  32544
      004A8C 08 7F                 2612 	.byte #0x08, #0x7f	;  32520
      004A8E EF 7E                 2613 	.byte #0xef, #0x7e	;  32495
      004A90 D4 7E                 2614 	.byte #0xd4, #0x7e	;  32468
      004A92 B9 7E                 2615 	.byte #0xb9, #0x7e	;  32441
      004A94 9C 7E                 2616 	.byte #0x9c, #0x7e	;  32412
      004A96 7E 7E                 2617 	.byte #0x7e, #0x7e	;  32382
      004A98 5E 7E                 2618 	.byte #0x5e, #0x7e	;  32350
      004A9A 3E 7E                 2619 	.byte #0x3e, #0x7e	;  32318
      004A9C 1C 7E                 2620 	.byte #0x1c, #0x7e	;  32284
      004A9E F9 7D                 2621 	.byte #0xf9, #0x7d	;  32249
      004AA0 D5 7D                 2622 	.byte #0xd5, #0x7d	;  32213
      004AA2 B0 7D                 2623 	.byte #0xb0, #0x7d	;  32176
      004AA4 89 7D                 2624 	.byte #0x89, #0x7d	;  32137
      004AA6 61 7D                 2625 	.byte #0x61, #0x7d	;  32097
      004AA8 38 7D                 2626 	.byte #0x38, #0x7d	;  32056
      004AAA 0E 7D                 2627 	.byte #0x0e, #0x7d	;  32014
      004AAC E2 7C                 2628 	.byte #0xe2, #0x7c	;  31970
      004AAE B6 7C                 2629 	.byte #0xb6, #0x7c	;  31926
      004AB0 88 7C                 2630 	.byte #0x88, #0x7c	;  31880
      004AB2 59 7C                 2631 	.byte #0x59, #0x7c	;  31833
      004AB4 29 7C                 2632 	.byte #0x29, #0x7c	;  31785
      004AB6 F7 7B                 2633 	.byte #0xf7, #0x7b	;  31735
      004AB8 C4 7B                 2634 	.byte #0xc4, #0x7b	;  31684
      004ABA 91 7B                 2635 	.byte #0x91, #0x7b	;  31633
      004ABC 5C 7B                 2636 	.byte #0x5c, #0x7b	;  31580
      004ABE 25 7B                 2637 	.byte #0x25, #0x7b	;  31525
      004AC0 EE 7A                 2638 	.byte #0xee, #0x7a	;  31470
      004AC2 B5 7A                 2639 	.byte #0xb5, #0x7a	;  31413
      004AC4 7C 7A                 2640 	.byte #0x7c, #0x7a	;  31356
      004AC6 41 7A                 2641 	.byte #0x41, #0x7a	;  31297
      004AC8 04 7A                 2642 	.byte #0x04, #0x7a	;  31236
      004ACA C7 79                 2643 	.byte #0xc7, #0x79	;  31175
      004ACC 89 79                 2644 	.byte #0x89, #0x79	;  31113
      004ACE 49 79                 2645 	.byte #0x49, #0x79	;  31049
      004AD0 08 79                 2646 	.byte #0x08, #0x79	;  30984
      004AD2 C6 78                 2647 	.byte #0xc6, #0x78	;  30918
      004AD4 83 78                 2648 	.byte #0x83, #0x78	;  30851
      004AD6 3F 78                 2649 	.byte #0x3f, #0x78	;  30783
      004AD8 F9 77                 2650 	.byte #0xf9, #0x77	;  30713
      004ADA B3 77                 2651 	.byte #0xb3, #0x77	;  30643
      004ADC 6B 77                 2652 	.byte #0x6b, #0x77	;  30571
      004ADE 22 77                 2653 	.byte #0x22, #0x77	;  30498
      004AE0 D8 76                 2654 	.byte #0xd8, #0x76	;  30424
      004AE2 8D 76                 2655 	.byte #0x8d, #0x76	;  30349
      004AE4 40 76                 2656 	.byte #0x40, #0x76	;  30272
      004AE6 F3 75                 2657 	.byte #0xf3, #0x75	;  30195
      004AE8 A4 75                 2658 	.byte #0xa4, #0x75	;  30116
      004AEA 54 75                 2659 	.byte #0x54, #0x75	;  30036
      004AEC 03 75                 2660 	.byte #0x03, #0x75	;  29955
      004AEE B1 74                 2661 	.byte #0xb1, #0x74	;  29873
      004AF0 5E 74                 2662 	.byte #0x5e, #0x74	;  29790
      004AF2 0A 74                 2663 	.byte #0x0a, #0x74	;  29706
      004AF4 B5 73                 2664 	.byte #0xb5, #0x73	;  29621
      004AF6 5E 73                 2665 	.byte #0x5e, #0x73	;  29534
      004AF8 06 73                 2666 	.byte #0x06, #0x73	;  29446
      004AFA AE 72                 2667 	.byte #0xae, #0x72	;  29358
      004AFC 54 72                 2668 	.byte #0x54, #0x72	;  29268
      004AFE F9 71                 2669 	.byte #0xf9, #0x71	;  29177
      004B00 9D 71                 2670 	.byte #0x9d, #0x71	;  29085
      004B02 40 71                 2671 	.byte #0x40, #0x71	;  28992
      004B04 E1 70                 2672 	.byte #0xe1, #0x70	;  28897
      004B06 82 70                 2673 	.byte #0x82, #0x70	;  28802
      004B08 22 70                 2674 	.byte #0x22, #0x70	;  28706
      004B0A C0 6F                 2675 	.byte #0xc0, #0x6f	;  28608
      004B0C 5E 6F                 2676 	.byte #0x5e, #0x6f	;  28510
      004B0E FA 6E                 2677 	.byte #0xfa, #0x6e	;  28410
      004B10 95 6E                 2678 	.byte #0x95, #0x6e	;  28309
      004B12 30 6E                 2679 	.byte #0x30, #0x6e	;  28208
      004B14 C9 6D                 2680 	.byte #0xc9, #0x6d	;  28105
      004B16 61 6D                 2681 	.byte #0x61, #0x6d	;  28001
      004B18 F8 6C                 2682 	.byte #0xf8, #0x6c	;  27896
      004B1A 8E 6C                 2683 	.byte #0x8e, #0x6c	;  27790
      004B1C 23 6C                 2684 	.byte #0x23, #0x6c	;  27683
      004B1E B7 6B                 2685 	.byte #0xb7, #0x6b	;  27575
      004B20 4A 6B                 2686 	.byte #0x4a, #0x6b	;  27466
      004B22 DB 6A                 2687 	.byte #0xdb, #0x6a	;  27355
      004B24 6C 6A                 2688 	.byte #0x6c, #0x6a	;  27244
      004B26 FC 69                 2689 	.byte #0xfc, #0x69	;  27132
      004B28 8B 69                 2690 	.byte #0x8b, #0x69	;  27019
      004B2A 19 69                 2691 	.byte #0x19, #0x69	;  26905
      004B2C A5 68                 2692 	.byte #0xa5, #0x68	;  26789
      004B2E 31 68                 2693 	.byte #0x31, #0x68	;  26673
      004B30 BC 67                 2694 	.byte #0xbc, #0x67	;  26556
      004B32 45 67                 2695 	.byte #0x45, #0x67	;  26437
      004B34 CE 66                 2696 	.byte #0xce, #0x66	;  26318
      004B36 56 66                 2697 	.byte #0x56, #0x66	;  26198
      004B38 DD 65                 2698 	.byte #0xdd, #0x65	;  26077
      004B3A 62 65                 2699 	.byte #0x62, #0x65	;  25954
      004B3C E7 64                 2700 	.byte #0xe7, #0x64	;  25831
      004B3E 6B 64                 2701 	.byte #0x6b, #0x64	;  25707
      004B40 EE 63                 2702 	.byte #0xee, #0x63	;  25582
      004B42 70 63                 2703 	.byte #0x70, #0x63	;  25456
      004B44 F1 62                 2704 	.byte #0xf1, #0x62	;  25329
      004B46 71 62                 2705 	.byte #0x71, #0x62	;  25201
      004B48 F0 61                 2706 	.byte #0xf0, #0x61	;  25072
      004B4A 6E 61                 2707 	.byte #0x6e, #0x61	;  24942
      004B4C EB 60                 2708 	.byte #0xeb, #0x60	;  24811
      004B4E 67 60                 2709 	.byte #0x67, #0x60	;  24679
      004B50 E2 5F                 2710 	.byte #0xe2, #0x5f	;  24546
      004B52 5D 5F                 2711 	.byte #0x5d, #0x5f	;  24413
      004B54 D6 5E                 2712 	.byte #0xd6, #0x5e	;  24278
      004B56 4F 5E                 2713 	.byte #0x4f, #0x5e	;  24143
      004B58 C6 5D                 2714 	.byte #0xc6, #0x5d	;  24006
      004B5A 3D 5D                 2715 	.byte #0x3d, #0x5d	;  23869
      004B5C B3 5C                 2716 	.byte #0xb3, #0x5c	;  23731
      004B5E 28 5C                 2717 	.byte #0x28, #0x5c	;  23592
      004B60 9C 5B                 2718 	.byte #0x9c, #0x5b	;  23452
      004B62 0F 5B                 2719 	.byte #0x0f, #0x5b	;  23311
      004B64 81 5A                 2720 	.byte #0x81, #0x5a	;  23169
      004B66 F3 59                 2721 	.byte #0xf3, #0x59	;  23027
      004B68 63 59                 2722 	.byte #0x63, #0x59	;  22883
      004B6A D3 58                 2723 	.byte #0xd3, #0x58	;  22739
      004B6C 42 58                 2724 	.byte #0x42, #0x58	;  22594
      004B6E B0 57                 2725 	.byte #0xb0, #0x57	;  22448
      004B70 1D 57                 2726 	.byte #0x1d, #0x57	;  22301
      004B72 89 56                 2727 	.byte #0x89, #0x56	;  22153
      004B74 F4 55                 2728 	.byte #0xf4, #0x55	;  22004
      004B76 5F 55                 2729 	.byte #0x5f, #0x55	;  21855
      004B78 C9 54                 2730 	.byte #0xc9, #0x54	;  21705
      004B7A 32 54                 2731 	.byte #0x32, #0x54	;  21554
      004B7C 9A 53                 2732 	.byte #0x9a, #0x53	;  21402
      004B7E 01 53                 2733 	.byte #0x01, #0x53	;  21249
      004B80 68 52                 2734 	.byte #0x68, #0x52	;  21096
      004B82 CE 51                 2735 	.byte #0xce, #0x51	;  20942
      004B84 33 51                 2736 	.byte #0x33, #0x51	;  20787
      004B86 97 50                 2737 	.byte #0x97, #0x50	;  20631
      004B88 FA 4F                 2738 	.byte #0xfa, #0x4f	;  20474
      004B8A 5D 4F                 2739 	.byte #0x5d, #0x4f	;  20317
      004B8C BF 4E                 2740 	.byte #0xbf, #0x4e	;  20159
      004B8E 20 4E                 2741 	.byte #0x20, #0x4e	;  20000
      004B90 80 4D                 2742 	.byte #0x80, #0x4d	;  19840
      004B92 E0 4C                 2743 	.byte #0xe0, #0x4c	;  19680
      004B94 3F 4C                 2744 	.byte #0x3f, #0x4c	;  19519
      004B96 9D 4B                 2745 	.byte #0x9d, #0x4b	;  19357
      004B98 FA 4A                 2746 	.byte #0xfa, #0x4a	;  19194
      004B9A 57 4A                 2747 	.byte #0x57, #0x4a	;  19031
      004B9C B3 49                 2748 	.byte #0xb3, #0x49	;  18867
      004B9E 0E 49                 2749 	.byte #0x0e, #0x49	;  18702
      004BA0 69 48                 2750 	.byte #0x69, #0x48	;  18537
      004BA2 C3 47                 2751 	.byte #0xc3, #0x47	;  18371
      004BA4 1C 47                 2752 	.byte #0x1c, #0x47	;  18204
      004BA6 74 46                 2753 	.byte #0x74, #0x46	;  18036
      004BA8 CC 45                 2754 	.byte #0xcc, #0x45	;  17868
      004BAA 23 45                 2755 	.byte #0x23, #0x45	;  17699
      004BAC 7A 44                 2756 	.byte #0x7a, #0x44	;  17530
      004BAE D0 43                 2757 	.byte #0xd0, #0x43	;  17360
      004BB0 25 43                 2758 	.byte #0x25, #0x43	;  17189
      004BB2 79 42                 2759 	.byte #0x79, #0x42	;  17017
      004BB4 CD 41                 2760 	.byte #0xcd, #0x41	;  16845
      004BB6 20 41                 2761 	.byte #0x20, #0x41	;  16672
      004BB8 73 40                 2762 	.byte #0x73, #0x40	;  16499
      004BBA C5 3F                 2763 	.byte #0xc5, #0x3f	;  16325
      004BBC 16 3F                 2764 	.byte #0x16, #0x3f	;  16150
      004BBE 67 3E                 2765 	.byte #0x67, #0x3e	;  15975
      004BC0 B7 3D                 2766 	.byte #0xb7, #0x3d	;  15799
      004BC2 07 3D                 2767 	.byte #0x07, #0x3d	;  15623
      004BC4 56 3C                 2768 	.byte #0x56, #0x3c	;  15446
      004BC6 A4 3B                 2769 	.byte #0xa4, #0x3b	;  15268
      004BC8 F2 3A                 2770 	.byte #0xf2, #0x3a	;  15090
      004BCA 3F 3A                 2771 	.byte #0x3f, #0x3a	;  14911
      004BCC 8C 39                 2772 	.byte #0x8c, #0x39	;  14732
      004BCE D8 38                 2773 	.byte #0xd8, #0x38	;  14552
      004BD0 24 38                 2774 	.byte #0x24, #0x38	;  14372
      004BD2 6F 37                 2775 	.byte #0x6f, #0x37	;  14191
      004BD4 B9 36                 2776 	.byte #0xb9, #0x36	;  14009
      004BD6 03 36                 2777 	.byte #0x03, #0x36	;  13827
      004BD8 4D 35                 2778 	.byte #0x4d, #0x35	;  13645
      004BDA 96 34                 2779 	.byte #0x96, #0x34	;  13462
      004BDC DE 33                 2780 	.byte #0xde, #0x33	;  13278
      004BDE 26 33                 2781 	.byte #0x26, #0x33	;  13094
      004BE0 6D 32                 2782 	.byte #0x6d, #0x32	;  12909
      004BE2 B4 31                 2783 	.byte #0xb4, #0x31	;  12724
      004BE4 FB 30                 2784 	.byte #0xfb, #0x30	;  12539
      004BE6 41 30                 2785 	.byte #0x41, #0x30	;  12353
      004BE8 86 2F                 2786 	.byte #0x86, #0x2f	;  12166
      004BEA CC 2E                 2787 	.byte #0xcc, #0x2e	;  11980
      004BEC 10 2E                 2788 	.byte #0x10, #0x2e	;  11792
      004BEE 54 2D                 2789 	.byte #0x54, #0x2d	;  11604
      004BF0 98 2C                 2790 	.byte #0x98, #0x2c	;  11416
      004BF2 DB 2B                 2791 	.byte #0xdb, #0x2b	;  11227
      004BF4 1E 2B                 2792 	.byte #0x1e, #0x2b	;  11038
      004BF6 61 2A                 2793 	.byte #0x61, #0x2a	;  10849
      004BF8 A3 29                 2794 	.byte #0xa3, #0x29	;  10659
      004BFA E5 28                 2795 	.byte #0xe5, #0x28	;  10469
      004BFC 26 28                 2796 	.byte #0x26, #0x28	;  10278
      004BFE 67 27                 2797 	.byte #0x67, #0x27	;  10087
      004C00 A7 26                 2798 	.byte #0xa7, #0x26	;  9895
      004C02 E7 25                 2799 	.byte #0xe7, #0x25	;  9703
      004C04 27 25                 2800 	.byte #0x27, #0x25	;  9511
      004C06 67 24                 2801 	.byte #0x67, #0x24	;  9319
      004C08 A6 23                 2802 	.byte #0xa6, #0x23	;  9126
      004C0A E4 22                 2803 	.byte #0xe4, #0x22	;  8932
      004C0C 23 22                 2804 	.byte #0x23, #0x22	;  8739
      004C0E 61 21                 2805 	.byte #0x61, #0x21	;  8545
      004C10 9F 20                 2806 	.byte #0x9f, #0x20	;  8351
      004C12 DC 1F                 2807 	.byte #0xdc, #0x1f	;  8156
      004C14 19 1F                 2808 	.byte #0x19, #0x1f	;  7961
      004C16 56 1E                 2809 	.byte #0x56, #0x1e	;  7766
      004C18 93 1D                 2810 	.byte #0x93, #0x1d	;  7571
      004C1A CF 1C                 2811 	.byte #0xcf, #0x1c	;  7375
      004C1C 0B 1C                 2812 	.byte #0x0b, #0x1c	;  7179
      004C1E 46 1B                 2813 	.byte #0x46, #0x1b	;  6982
      004C20 82 1A                 2814 	.byte #0x82, #0x1a	;  6786
      004C22 BD 19                 2815 	.byte #0xbd, #0x19	;  6589
      004C24 F8 18                 2816 	.byte #0xf8, #0x18	;  6392
      004C26 33 18                 2817 	.byte #0x33, #0x18	;  6195
      004C28 6D 17                 2818 	.byte #0x6d, #0x17	;  5997
      004C2A A7 16                 2819 	.byte #0xa7, #0x16	;  5799
      004C2C E1 15                 2820 	.byte #0xe1, #0x15	;  5601
      004C2E 1B 15                 2821 	.byte #0x1b, #0x15	;  5403
      004C30 55 14                 2822 	.byte #0x55, #0x14	;  5205
      004C32 8E 13                 2823 	.byte #0x8e, #0x13	;  5006
      004C34 C7 12                 2824 	.byte #0xc7, #0x12	;  4807
      004C36 00 12                 2825 	.byte #0x00, #0x12	;  4608
      004C38 39 11                 2826 	.byte #0x39, #0x11	;  4409
      004C3A 72 10                 2827 	.byte #0x72, #0x10	;  4210
      004C3C AB 0F                 2828 	.byte #0xab, #0x0f	;  4011
      004C3E E3 0E                 2829 	.byte #0xe3, #0x0e	;  3811
      004C40 1B 0E                 2830 	.byte #0x1b, #0x0e	;  3611
      004C42 53 0D                 2831 	.byte #0x53, #0x0d	;  3411
      004C44 8B 0C                 2832 	.byte #0x8b, #0x0c	;  3211
      004C46 C3 0B                 2833 	.byte #0xc3, #0x0b	;  3011
      004C48 FB 0A                 2834 	.byte #0xfb, #0x0a	;  2811
      004C4A 32 0A                 2835 	.byte #0x32, #0x0a	;  2610
      004C4C 6A 09                 2836 	.byte #0x6a, #0x09	;  2410
      004C4E A1 08                 2837 	.byte #0xa1, #0x08	;  2209
      004C50 D9 07                 2838 	.byte #0xd9, #0x07	;  2009
      004C52 10 07                 2839 	.byte #0x10, #0x07	;  1808
      004C54 47 06                 2840 	.byte #0x47, #0x06	;  1607
      004C56 7E 05                 2841 	.byte #0x7e, #0x05	;  1406
      004C58 B6 04                 2842 	.byte #0xb6, #0x04	;  1206
      004C5A ED 03                 2843 	.byte #0xed, #0x03	;  1005
      004C5C 24 03                 2844 	.byte #0x24, #0x03	;  804
      004C5E 5B 02                 2845 	.byte #0x5b, #0x02	;  603
      004C60 92 01                 2846 	.byte #0x92, #0x01	;  402
      004C62 C9 00                 2847 	.byte #0xc9, #0x00	;  201
      004C64 00 00                 2848 	.byte #0x00, #0x00	;  0
      004C66 37 FF                 2849 	.byte #0x37, #0xff	; -201
      004C68 6E FE                 2850 	.byte #0x6e, #0xfe	; -402
      004C6A A5 FD                 2851 	.byte #0xa5, #0xfd	; -603
      004C6C DC FC                 2852 	.byte #0xdc, #0xfc	; -804
      004C6E 13 FC                 2853 	.byte #0x13, #0xfc	; -1005
      004C70 4A FB                 2854 	.byte #0x4a, #0xfb	; -1206
      004C72 82 FA                 2855 	.byte #0x82, #0xfa	; -1406
      004C74 B9 F9                 2856 	.byte #0xb9, #0xf9	; -1607
      004C76 F0 F8                 2857 	.byte #0xf0, #0xf8	; -1808
      004C78 27 F8                 2858 	.byte #0x27, #0xf8	; -2009
      004C7A 5F F7                 2859 	.byte #0x5f, #0xf7	; -2209
      004C7C 96 F6                 2860 	.byte #0x96, #0xf6	; -2410
      004C7E CE F5                 2861 	.byte #0xce, #0xf5	; -2610
      004C80 05 F5                 2862 	.byte #0x05, #0xf5	; -2811
      004C82 3D F4                 2863 	.byte #0x3d, #0xf4	; -3011
      004C84 75 F3                 2864 	.byte #0x75, #0xf3	; -3211
      004C86 AD F2                 2865 	.byte #0xad, #0xf2	; -3411
      004C88 E5 F1                 2866 	.byte #0xe5, #0xf1	; -3611
      004C8A 1D F1                 2867 	.byte #0x1d, #0xf1	; -3811
      004C8C 55 F0                 2868 	.byte #0x55, #0xf0	; -4011
      004C8E 8E EF                 2869 	.byte #0x8e, #0xef	; -4210
      004C90 C7 EE                 2870 	.byte #0xc7, #0xee	; -4409
      004C92 00 EE                 2871 	.byte #0x00, #0xee	; -4608
      004C94 39 ED                 2872 	.byte #0x39, #0xed	; -4807
      004C96 72 EC                 2873 	.byte #0x72, #0xec	; -5006
      004C98 AB EB                 2874 	.byte #0xab, #0xeb	; -5205
      004C9A E5 EA                 2875 	.byte #0xe5, #0xea	; -5403
      004C9C 1F EA                 2876 	.byte #0x1f, #0xea	; -5601
      004C9E 59 E9                 2877 	.byte #0x59, #0xe9	; -5799
      004CA0 93 E8                 2878 	.byte #0x93, #0xe8	; -5997
      004CA2 CD E7                 2879 	.byte #0xcd, #0xe7	; -6195
      004CA4 08 E7                 2880 	.byte #0x08, #0xe7	; -6392
      004CA6 43 E6                 2881 	.byte #0x43, #0xe6	; -6589
      004CA8 7E E5                 2882 	.byte #0x7e, #0xe5	; -6786
      004CAA BA E4                 2883 	.byte #0xba, #0xe4	; -6982
      004CAC F5 E3                 2884 	.byte #0xf5, #0xe3	; -7179
      004CAE 31 E3                 2885 	.byte #0x31, #0xe3	; -7375
      004CB0 6D E2                 2886 	.byte #0x6d, #0xe2	; -7571
      004CB2 AA E1                 2887 	.byte #0xaa, #0xe1	; -7766
      004CB4 E7 E0                 2888 	.byte #0xe7, #0xe0	; -7961
      004CB6 24 E0                 2889 	.byte #0x24, #0xe0	; -8156
      004CB8 61 DF                 2890 	.byte #0x61, #0xdf	; -8351
      004CBA 9F DE                 2891 	.byte #0x9f, #0xde	; -8545
      004CBC DD DD                 2892 	.byte #0xdd, #0xdd	; -8739
      004CBE 1C DD                 2893 	.byte #0x1c, #0xdd	; -8932
      004CC0 5A DC                 2894 	.byte #0x5a, #0xdc	; -9126
      004CC2 99 DB                 2895 	.byte #0x99, #0xdb	; -9319
      004CC4 D9 DA                 2896 	.byte #0xd9, #0xda	; -9511
      004CC6 19 DA                 2897 	.byte #0x19, #0xda	; -9703
      004CC8 59 D9                 2898 	.byte #0x59, #0xd9	; -9895
      004CCA 99 D8                 2899 	.byte #0x99, #0xd8	; -10087
      004CCC DA D7                 2900 	.byte #0xda, #0xd7	; -10278
      004CCE 1B D7                 2901 	.byte #0x1b, #0xd7	; -10469
      004CD0 5D D6                 2902 	.byte #0x5d, #0xd6	; -10659
      004CD2 9F D5                 2903 	.byte #0x9f, #0xd5	; -10849
      004CD4 E2 D4                 2904 	.byte #0xe2, #0xd4	; -11038
      004CD6 25 D4                 2905 	.byte #0x25, #0xd4	; -11227
      004CD8 68 D3                 2906 	.byte #0x68, #0xd3	; -11416
      004CDA AC D2                 2907 	.byte #0xac, #0xd2	; -11604
      004CDC F0 D1                 2908 	.byte #0xf0, #0xd1	; -11792
      004CDE 34 D1                 2909 	.byte #0x34, #0xd1	; -11980
      004CE0 7A D0                 2910 	.byte #0x7a, #0xd0	; -12166
      004CE2 BF CF                 2911 	.byte #0xbf, #0xcf	; -12353
      004CE4 05 CF                 2912 	.byte #0x05, #0xcf	; -12539
      004CE6 4C CE                 2913 	.byte #0x4c, #0xce	; -12724
      004CE8 93 CD                 2914 	.byte #0x93, #0xcd	; -12909
      004CEA DA CC                 2915 	.byte #0xda, #0xcc	; -13094
      004CEC 22 CC                 2916 	.byte #0x22, #0xcc	; -13278
      004CEE 6A CB                 2917 	.byte #0x6a, #0xcb	; -13462
      004CF0 B3 CA                 2918 	.byte #0xb3, #0xca	; -13645
      004CF2 FD C9                 2919 	.byte #0xfd, #0xc9	; -13827
      004CF4 47 C9                 2920 	.byte #0x47, #0xc9	; -14009
      004CF6 91 C8                 2921 	.byte #0x91, #0xc8	; -14191
      004CF8 DC C7                 2922 	.byte #0xdc, #0xc7	; -14372
      004CFA 28 C7                 2923 	.byte #0x28, #0xc7	; -14552
      004CFC 74 C6                 2924 	.byte #0x74, #0xc6	; -14732
      004CFE C1 C5                 2925 	.byte #0xc1, #0xc5	; -14911
      004D00 0E C5                 2926 	.byte #0x0e, #0xc5	; -15090
      004D02 5C C4                 2927 	.byte #0x5c, #0xc4	; -15268
      004D04 AA C3                 2928 	.byte #0xaa, #0xc3	; -15446
      004D06 F9 C2                 2929 	.byte #0xf9, #0xc2	; -15623
      004D08 49 C2                 2930 	.byte #0x49, #0xc2	; -15799
      004D0A 99 C1                 2931 	.byte #0x99, #0xc1	; -15975
      004D0C EA C0                 2932 	.byte #0xea, #0xc0	; -16150
      004D0E 3B C0                 2933 	.byte #0x3b, #0xc0	; -16325
      004D10 8D BF                 2934 	.byte #0x8d, #0xbf	; -16499
      004D12 E0 BE                 2935 	.byte #0xe0, #0xbe	; -16672
      004D14 33 BE                 2936 	.byte #0x33, #0xbe	; -16845
      004D16 87 BD                 2937 	.byte #0x87, #0xbd	; -17017
      004D18 DB BC                 2938 	.byte #0xdb, #0xbc	; -17189
      004D1A 30 BC                 2939 	.byte #0x30, #0xbc	; -17360
      004D1C 86 BB                 2940 	.byte #0x86, #0xbb	; -17530
      004D1E DD BA                 2941 	.byte #0xdd, #0xba	; -17699
      004D20 34 BA                 2942 	.byte #0x34, #0xba	; -17868
      004D22 8C B9                 2943 	.byte #0x8c, #0xb9	; -18036
      004D24 E4 B8                 2944 	.byte #0xe4, #0xb8	; -18204
      004D26 3D B8                 2945 	.byte #0x3d, #0xb8	; -18371
      004D28 97 B7                 2946 	.byte #0x97, #0xb7	; -18537
      004D2A F2 B6                 2947 	.byte #0xf2, #0xb6	; -18702
      004D2C 4D B6                 2948 	.byte #0x4d, #0xb6	; -18867
      004D2E A9 B5                 2949 	.byte #0xa9, #0xb5	; -19031
      004D30 06 B5                 2950 	.byte #0x06, #0xb5	; -19194
      004D32 63 B4                 2951 	.byte #0x63, #0xb4	; -19357
      004D34 C1 B3                 2952 	.byte #0xc1, #0xb3	; -19519
      004D36 20 B3                 2953 	.byte #0x20, #0xb3	; -19680
      004D38 80 B2                 2954 	.byte #0x80, #0xb2	; -19840
      004D3A E0 B1                 2955 	.byte #0xe0, #0xb1	; -20000
      004D3C 41 B1                 2956 	.byte #0x41, #0xb1	; -20159
      004D3E A3 B0                 2957 	.byte #0xa3, #0xb0	; -20317
      004D40 06 B0                 2958 	.byte #0x06, #0xb0	; -20474
      004D42 69 AF                 2959 	.byte #0x69, #0xaf	; -20631
      004D44 CD AE                 2960 	.byte #0xcd, #0xae	; -20787
      004D46 32 AE                 2961 	.byte #0x32, #0xae	; -20942
      004D48 98 AD                 2962 	.byte #0x98, #0xad	; -21096
      004D4A FF AC                 2963 	.byte #0xff, #0xac	; -21249
      004D4C 66 AC                 2964 	.byte #0x66, #0xac	; -21402
      004D4E CE AB                 2965 	.byte #0xce, #0xab	; -21554
      004D50 37 AB                 2966 	.byte #0x37, #0xab	; -21705
      004D52 A1 AA                 2967 	.byte #0xa1, #0xaa	; -21855
      004D54 0C AA                 2968 	.byte #0x0c, #0xaa	; -22004
      004D56 77 A9                 2969 	.byte #0x77, #0xa9	; -22153
      004D58 E3 A8                 2970 	.byte #0xe3, #0xa8	; -22301
      004D5A 50 A8                 2971 	.byte #0x50, #0xa8	; -22448
      004D5C BE A7                 2972 	.byte #0xbe, #0xa7	; -22594
      004D5E 2D A7                 2973 	.byte #0x2d, #0xa7	; -22739
      004D60 9D A6                 2974 	.byte #0x9d, #0xa6	; -22883
      004D62 0D A6                 2975 	.byte #0x0d, #0xa6	; -23027
      004D64 7F A5                 2976 	.byte #0x7f, #0xa5	; -23169
      004D66 F1 A4                 2977 	.byte #0xf1, #0xa4	; -23311
      004D68 64 A4                 2978 	.byte #0x64, #0xa4	; -23452
      004D6A D8 A3                 2979 	.byte #0xd8, #0xa3	; -23592
      004D6C 4D A3                 2980 	.byte #0x4d, #0xa3	; -23731
      004D6E C3 A2                 2981 	.byte #0xc3, #0xa2	; -23869
      004D70 3A A2                 2982 	.byte #0x3a, #0xa2	; -24006
      004D72 B1 A1                 2983 	.byte #0xb1, #0xa1	; -24143
      004D74 2A A1                 2984 	.byte #0x2a, #0xa1	; -24278
      004D76 A3 A0                 2985 	.byte #0xa3, #0xa0	; -24413
      004D78 1E A0                 2986 	.byte #0x1e, #0xa0	; -24546
      004D7A 99 9F                 2987 	.byte #0x99, #0x9f	; -24679
      004D7C 15 9F                 2988 	.byte #0x15, #0x9f	; -24811
      004D7E 92 9E                 2989 	.byte #0x92, #0x9e	; -24942
      004D80 10 9E                 2990 	.byte #0x10, #0x9e	; -25072
      004D82 8F 9D                 2991 	.byte #0x8f, #0x9d	; -25201
      004D84 0F 9D                 2992 	.byte #0x0f, #0x9d	; -25329
      004D86 90 9C                 2993 	.byte #0x90, #0x9c	; -25456
      004D88 12 9C                 2994 	.byte #0x12, #0x9c	; -25582
      004D8A 95 9B                 2995 	.byte #0x95, #0x9b	; -25707
      004D8C 19 9B                 2996 	.byte #0x19, #0x9b	; -25831
      004D8E 9E 9A                 2997 	.byte #0x9e, #0x9a	; -25954
      004D90 23 9A                 2998 	.byte #0x23, #0x9a	; -26077
      004D92 AA 99                 2999 	.byte #0xaa, #0x99	; -26198
      004D94 32 99                 3000 	.byte #0x32, #0x99	; -26318
      004D96 BB 98                 3001 	.byte #0xbb, #0x98	; -26437
      004D98 44 98                 3002 	.byte #0x44, #0x98	; -26556
      004D9A CF 97                 3003 	.byte #0xcf, #0x97	; -26673
      004D9C 5B 97                 3004 	.byte #0x5b, #0x97	; -26789
      004D9E E7 96                 3005 	.byte #0xe7, #0x96	; -26905
      004DA0 75 96                 3006 	.byte #0x75, #0x96	; -27019
      004DA2 04 96                 3007 	.byte #0x04, #0x96	; -27132
      004DA4 94 95                 3008 	.byte #0x94, #0x95	; -27244
      004DA6 25 95                 3009 	.byte #0x25, #0x95	; -27355
      004DA8 B6 94                 3010 	.byte #0xb6, #0x94	; -27466
      004DAA 49 94                 3011 	.byte #0x49, #0x94	; -27575
      004DAC DD 93                 3012 	.byte #0xdd, #0x93	; -27683
      004DAE 72 93                 3013 	.byte #0x72, #0x93	; -27790
      004DB0 08 93                 3014 	.byte #0x08, #0x93	; -27896
      004DB2 9F 92                 3015 	.byte #0x9f, #0x92	; -28001
      004DB4 37 92                 3016 	.byte #0x37, #0x92	; -28105
      004DB6 D0 91                 3017 	.byte #0xd0, #0x91	; -28208
      004DB8 6B 91                 3018 	.byte #0x6b, #0x91	; -28309
      004DBA 06 91                 3019 	.byte #0x06, #0x91	; -28410
      004DBC A2 90                 3020 	.byte #0xa2, #0x90	; -28510
      004DBE 40 90                 3021 	.byte #0x40, #0x90	; -28608
      004DC0 DE 8F                 3022 	.byte #0xde, #0x8f	; -28706
      004DC2 7E 8F                 3023 	.byte #0x7e, #0x8f	; -28802
      004DC4 1F 8F                 3024 	.byte #0x1f, #0x8f	; -28897
      004DC6 C0 8E                 3025 	.byte #0xc0, #0x8e	; -28992
      004DC8 63 8E                 3026 	.byte #0x63, #0x8e	; -29085
      004DCA 07 8E                 3027 	.byte #0x07, #0x8e	; -29177
      004DCC AC 8D                 3028 	.byte #0xac, #0x8d	; -29268
      004DCE 52 8D                 3029 	.byte #0x52, #0x8d	; -29358
      004DD0 FA 8C                 3030 	.byte #0xfa, #0x8c	; -29446
      004DD2 A2 8C                 3031 	.byte #0xa2, #0x8c	; -29534
      004DD4 4B 8C                 3032 	.byte #0x4b, #0x8c	; -29621
      004DD6 F6 8B                 3033 	.byte #0xf6, #0x8b	; -29706
      004DD8 A2 8B                 3034 	.byte #0xa2, #0x8b	; -29790
      004DDA 4F 8B                 3035 	.byte #0x4f, #0x8b	; -29873
      004DDC FD 8A                 3036 	.byte #0xfd, #0x8a	; -29955
      004DDE AC 8A                 3037 	.byte #0xac, #0x8a	; -30036
      004DE0 5C 8A                 3038 	.byte #0x5c, #0x8a	; -30116
      004DE2 0D 8A                 3039 	.byte #0x0d, #0x8a	; -30195
      004DE4 C0 89                 3040 	.byte #0xc0, #0x89	; -30272
      004DE6 73 89                 3041 	.byte #0x73, #0x89	; -30349
      004DE8 28 89                 3042 	.byte #0x28, #0x89	; -30424
      004DEA DE 88                 3043 	.byte #0xde, #0x88	; -30498
      004DEC 95 88                 3044 	.byte #0x95, #0x88	; -30571
      004DEE 4D 88                 3045 	.byte #0x4d, #0x88	; -30643
      004DF0 07 88                 3046 	.byte #0x07, #0x88	; -30713
      004DF2 C1 87                 3047 	.byte #0xc1, #0x87	; -30783
      004DF4 7D 87                 3048 	.byte #0x7d, #0x87	; -30851
      004DF6 3A 87                 3049 	.byte #0x3a, #0x87	; -30918
      004DF8 F8 86                 3050 	.byte #0xf8, #0x86	; -30984
      004DFA B7 86                 3051 	.byte #0xb7, #0x86	; -31049
      004DFC 77 86                 3052 	.byte #0x77, #0x86	; -31113
      004DFE 39 86                 3053 	.byte #0x39, #0x86	; -31175
      004E00 FC 85                 3054 	.byte #0xfc, #0x85	; -31236
      004E02 BF 85                 3055 	.byte #0xbf, #0x85	; -31297
      004E04 84 85                 3056 	.byte #0x84, #0x85	; -31356
      004E06 4B 85                 3057 	.byte #0x4b, #0x85	; -31413
      004E08 12 85                 3058 	.byte #0x12, #0x85	; -31470
      004E0A DB 84                 3059 	.byte #0xdb, #0x84	; -31525
      004E0C A4 84                 3060 	.byte #0xa4, #0x84	; -31580
      004E0E 6F 84                 3061 	.byte #0x6f, #0x84	; -31633
      004E10 3C 84                 3062 	.byte #0x3c, #0x84	; -31684
      004E12 09 84                 3063 	.byte #0x09, #0x84	; -31735
      004E14 D7 83                 3064 	.byte #0xd7, #0x83	; -31785
      004E16 A7 83                 3065 	.byte #0xa7, #0x83	; -31833
      004E18 78 83                 3066 	.byte #0x78, #0x83	; -31880
      004E1A 4A 83                 3067 	.byte #0x4a, #0x83	; -31926
      004E1C 1E 83                 3068 	.byte #0x1e, #0x83	; -31970
      004E1E F2 82                 3069 	.byte #0xf2, #0x82	; -32014
      004E20 C8 82                 3070 	.byte #0xc8, #0x82	; -32056
      004E22 9F 82                 3071 	.byte #0x9f, #0x82	; -32097
      004E24 77 82                 3072 	.byte #0x77, #0x82	; -32137
      004E26 50 82                 3073 	.byte #0x50, #0x82	; -32176
      004E28 2B 82                 3074 	.byte #0x2b, #0x82	; -32213
      004E2A 07 82                 3075 	.byte #0x07, #0x82	; -32249
      004E2C E4 81                 3076 	.byte #0xe4, #0x81	; -32284
      004E2E C2 81                 3077 	.byte #0xc2, #0x81	; -32318
      004E30 A2 81                 3078 	.byte #0xa2, #0x81	; -32350
      004E32 82 81                 3079 	.byte #0x82, #0x81	; -32382
      004E34 64 81                 3080 	.byte #0x64, #0x81	; -32412
      004E36 47 81                 3081 	.byte #0x47, #0x81	; -32441
      004E38 2C 81                 3082 	.byte #0x2c, #0x81	; -32468
      004E3A 11 81                 3083 	.byte #0x11, #0x81	; -32495
      004E3C F8 80                 3084 	.byte #0xf8, #0x80	; -32520
      004E3E E0 80                 3085 	.byte #0xe0, #0x80	; -32544
      004E40 C9 80                 3086 	.byte #0xc9, #0x80	; -32567
      004E42 B4 80                 3087 	.byte #0xb4, #0x80	; -32588
      004E44 9F 80                 3088 	.byte #0x9f, #0x80	; -32609
      004E46 8C 80                 3089 	.byte #0x8c, #0x80	; -32628
      004E48 7A 80                 3090 	.byte #0x7a, #0x80	; -32646
      004E4A 6A 80                 3091 	.byte #0x6a, #0x80	; -32662
      004E4C 5A 80                 3092 	.byte #0x5a, #0x80	; -32678
      004E4E 4C 80                 3093 	.byte #0x4c, #0x80	; -32692
      004E50 3F 80                 3094 	.byte #0x3f, #0x80	; -32705
      004E52 33 80                 3095 	.byte #0x33, #0x80	; -32717
      004E54 29 80                 3096 	.byte #0x29, #0x80	; -32727
      004E56 20 80                 3097 	.byte #0x20, #0x80	; -32736
      004E58 18 80                 3098 	.byte #0x18, #0x80	; -32744
      004E5A 11 80                 3099 	.byte #0x11, #0x80	; -32751
      004E5C 0B 80                 3100 	.byte #0x0b, #0x80	; -32757
      004E5E 07 80                 3101 	.byte #0x07, #0x80	; -32761
      004E60 04 80                 3102 	.byte #0x04, #0x80	; -32764
      004E62 02 80                 3103 	.byte #0x02, #0x80	; -32766
                                   3104 	.area CABS    (ABS,CODE)
