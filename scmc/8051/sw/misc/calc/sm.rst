                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module sm
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _state_init
                                     12 	.globl _state_reset
                                     13 	.globl _state_exec
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
                                     65 	.area HOME    (CODE)
                                     66 	.area GSINIT0 (CODE)
                                     67 	.area GSINIT1 (CODE)
                                     68 	.area GSINIT2 (CODE)
                                     69 	.area GSINIT3 (CODE)
                                     70 	.area GSINIT4 (CODE)
                                     71 	.area GSINIT5 (CODE)
                                     72 	.area GSINIT  (CODE)
                                     73 	.area GSFINAL (CODE)
                                     74 	.area CSEG    (CODE)
                                     75 ;--------------------------------------------------------
                                     76 ; global & static initialisations
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME    (CODE)
                                     79 	.area GSINIT  (CODE)
                                     80 	.area GSFINAL (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 ;--------------------------------------------------------
                                     83 ; Home
                                     84 ;--------------------------------------------------------
                                     85 	.area HOME    (CODE)
                                     86 	.area HOME    (CODE)
                                     87 ;--------------------------------------------------------
                                     88 ; code
                                     89 ;--------------------------------------------------------
                                     90 	.area CSEG    (CODE)
                                     91 ;------------------------------------------------------------
                                     92 ;Allocation info for local variables in function 'state_init'
                                     93 ;------------------------------------------------------------
                                     94 ;Initial                   Allocated to stack - _bp -4
                                     95 ;Final                     Allocated to stack - _bp -6
                                     96 ;Spurious                  Allocated to stack - _bp -8
                                     97 ;Deltas                    Allocated to stack - _bp -11
                                     98 ;Context                   Allocated to stack - _bp -14
                                     99 ;state                     Allocated to registers r5 r6 r7 
                                    100 ;------------------------------------------------------------
                                    101 ;	sm.c:3: void state_init(state_t *state, int Initial, int Final, int Spurious, delta_t *Deltas, void *Context) __reentrant {
                                    102 ;	-----------------------------------------
                                    103 ;	 function state_init
                                    104 ;	-----------------------------------------
      0020D0                        105 _state_init:
                           000007   106 	ar7 = 0x07
                           000006   107 	ar6 = 0x06
                           000005   108 	ar5 = 0x05
                           000004   109 	ar4 = 0x04
                           000003   110 	ar3 = 0x03
                           000002   111 	ar2 = 0x02
                           000001   112 	ar1 = 0x01
                           000000   113 	ar0 = 0x00
      0020D0 C0 08            [24]  114 	push	_bp
      0020D2 85 81 08         [24]  115 	mov	_bp,sp
                                    116 ;	sm.c:4: state->current = Initial;
      0020D5 AD 82            [24]  117 	mov	r5,dpl
      0020D7 AE 83            [24]  118 	mov	r6,dph
      0020D9 AF F0            [24]  119 	mov	r7,b
      0020DB E5 08            [12]  120 	mov	a,_bp
      0020DD 24 FC            [12]  121 	add	a,#0xfc
      0020DF F8               [12]  122 	mov	r0,a
      0020E0 E6               [12]  123 	mov	a,@r0
      0020E1 12 5E E9         [24]  124 	lcall	__gptrput
      0020E4 A3               [24]  125 	inc	dptr
      0020E5 08               [12]  126 	inc	r0
      0020E6 E6               [12]  127 	mov	a,@r0
      0020E7 12 5E E9         [24]  128 	lcall	__gptrput
                                    129 ;	sm.c:5: state->final = Final;
      0020EA 74 02            [12]  130 	mov	a,#0x02
      0020EC 2D               [12]  131 	add	a,r5
      0020ED FA               [12]  132 	mov	r2,a
      0020EE E4               [12]  133 	clr	a
      0020EF 3E               [12]  134 	addc	a,r6
      0020F0 FB               [12]  135 	mov	r3,a
      0020F1 8F 04            [24]  136 	mov	ar4,r7
      0020F3 8A 82            [24]  137 	mov	dpl,r2
      0020F5 8B 83            [24]  138 	mov	dph,r3
      0020F7 8C F0            [24]  139 	mov	b,r4
      0020F9 E5 08            [12]  140 	mov	a,_bp
      0020FB 24 FA            [12]  141 	add	a,#0xfa
      0020FD F8               [12]  142 	mov	r0,a
      0020FE E6               [12]  143 	mov	a,@r0
      0020FF 12 5E E9         [24]  144 	lcall	__gptrput
      002102 A3               [24]  145 	inc	dptr
      002103 08               [12]  146 	inc	r0
      002104 E6               [12]  147 	mov	a,@r0
      002105 12 5E E9         [24]  148 	lcall	__gptrput
                                    149 ;	sm.c:6: state->spurious = Spurious;
      002108 74 04            [12]  150 	mov	a,#0x04
      00210A 2D               [12]  151 	add	a,r5
      00210B FA               [12]  152 	mov	r2,a
      00210C E4               [12]  153 	clr	a
      00210D 3E               [12]  154 	addc	a,r6
      00210E FB               [12]  155 	mov	r3,a
      00210F 8F 04            [24]  156 	mov	ar4,r7
      002111 8A 82            [24]  157 	mov	dpl,r2
      002113 8B 83            [24]  158 	mov	dph,r3
      002115 8C F0            [24]  159 	mov	b,r4
      002117 E5 08            [12]  160 	mov	a,_bp
      002119 24 F8            [12]  161 	add	a,#0xf8
      00211B F8               [12]  162 	mov	r0,a
      00211C E6               [12]  163 	mov	a,@r0
      00211D 12 5E E9         [24]  164 	lcall	__gptrput
      002120 A3               [24]  165 	inc	dptr
      002121 08               [12]  166 	inc	r0
      002122 E6               [12]  167 	mov	a,@r0
      002123 12 5E E9         [24]  168 	lcall	__gptrput
                                    169 ;	sm.c:7: state->deltas = Deltas;
      002126 74 06            [12]  170 	mov	a,#0x06
      002128 2D               [12]  171 	add	a,r5
      002129 FA               [12]  172 	mov	r2,a
      00212A E4               [12]  173 	clr	a
      00212B 3E               [12]  174 	addc	a,r6
      00212C FB               [12]  175 	mov	r3,a
      00212D 8F 04            [24]  176 	mov	ar4,r7
      00212F 8A 82            [24]  177 	mov	dpl,r2
      002131 8B 83            [24]  178 	mov	dph,r3
      002133 8C F0            [24]  179 	mov	b,r4
      002135 E5 08            [12]  180 	mov	a,_bp
      002137 24 F5            [12]  181 	add	a,#0xf5
      002139 F8               [12]  182 	mov	r0,a
      00213A E6               [12]  183 	mov	a,@r0
      00213B 12 5E E9         [24]  184 	lcall	__gptrput
      00213E A3               [24]  185 	inc	dptr
      00213F 08               [12]  186 	inc	r0
      002140 E6               [12]  187 	mov	a,@r0
      002141 12 5E E9         [24]  188 	lcall	__gptrput
      002144 A3               [24]  189 	inc	dptr
      002145 08               [12]  190 	inc	r0
      002146 E6               [12]  191 	mov	a,@r0
      002147 12 5E E9         [24]  192 	lcall	__gptrput
                                    193 ;	sm.c:8: state->ctx = Context;
      00214A 74 09            [12]  194 	mov	a,#0x09
      00214C 2D               [12]  195 	add	a,r5
      00214D FD               [12]  196 	mov	r5,a
      00214E E4               [12]  197 	clr	a
      00214F 3E               [12]  198 	addc	a,r6
      002150 FE               [12]  199 	mov	r6,a
      002151 8D 82            [24]  200 	mov	dpl,r5
      002153 8E 83            [24]  201 	mov	dph,r6
      002155 8F F0            [24]  202 	mov	b,r7
      002157 E5 08            [12]  203 	mov	a,_bp
      002159 24 F2            [12]  204 	add	a,#0xf2
      00215B F8               [12]  205 	mov	r0,a
      00215C E6               [12]  206 	mov	a,@r0
      00215D 12 5E E9         [24]  207 	lcall	__gptrput
      002160 A3               [24]  208 	inc	dptr
      002161 08               [12]  209 	inc	r0
      002162 E6               [12]  210 	mov	a,@r0
      002163 12 5E E9         [24]  211 	lcall	__gptrput
      002166 A3               [24]  212 	inc	dptr
      002167 08               [12]  213 	inc	r0
      002168 E6               [12]  214 	mov	a,@r0
      002169 12 5E E9         [24]  215 	lcall	__gptrput
                                    216 ;	sm.c:10: return;
                                    217 ;	sm.c:11: }
      00216C D0 08            [24]  218 	pop	_bp
      00216E 22               [24]  219 	ret
                                    220 ;------------------------------------------------------------
                                    221 ;Allocation info for local variables in function 'state_reset'
                                    222 ;------------------------------------------------------------
                                    223 ;current                   Allocated to stack - _bp -4
                                    224 ;state                     Allocated to registers r5 r6 r7 
                                    225 ;------------------------------------------------------------
                                    226 ;	sm.c:13: void state_reset(state_t *state, int current) __reentrant {
                                    227 ;	-----------------------------------------
                                    228 ;	 function state_reset
                                    229 ;	-----------------------------------------
      00216F                        230 _state_reset:
      00216F C0 08            [24]  231 	push	_bp
      002171 85 81 08         [24]  232 	mov	_bp,sp
                                    233 ;	sm.c:14: state->current = current;
      002174 E5 08            [12]  234 	mov	a,_bp
      002176 24 FC            [12]  235 	add	a,#0xfc
      002178 F8               [12]  236 	mov	r0,a
      002179 E6               [12]  237 	mov	a,@r0
      00217A 12 5E E9         [24]  238 	lcall	__gptrput
      00217D A3               [24]  239 	inc	dptr
      00217E 08               [12]  240 	inc	r0
      00217F E6               [12]  241 	mov	a,@r0
      002180 12 5E E9         [24]  242 	lcall	__gptrput
                                    243 ;	sm.c:16: return;
                                    244 ;	sm.c:17: }
      002183 D0 08            [24]  245 	pop	_bp
      002185 22               [24]  246 	ret
                                    247 ;------------------------------------------------------------
                                    248 ;Allocation info for local variables in function 'state_exec'
                                    249 ;------------------------------------------------------------
                                    250 ;event                     Allocated to stack - _bp -4
                                    251 ;state                     Allocated to stack - _bp +1
                                    252 ;ret                       Allocated to stack - _bp +29
                                    253 ;j                         Allocated to stack - _bp +13
                                    254 ;sloc0                     Allocated to stack - _bp +4
                                    255 ;sloc1                     Allocated to stack - _bp +7
                                    256 ;sloc2                     Allocated to stack - _bp +10
                                    257 ;sloc3                     Allocated to stack - _bp +13
                                    258 ;sloc4                     Allocated to stack - _bp +15
                                    259 ;sloc5                     Allocated to stack - _bp +17
                                    260 ;sloc6                     Allocated to stack - _bp +19
                                    261 ;sloc7                     Allocated to stack - _bp +21
                                    262 ;sloc8                     Allocated to stack - _bp +24
                                    263 ;sloc9                     Allocated to stack - _bp +26
                                    264 ;------------------------------------------------------------
                                    265 ;	sm.c:19: int state_exec(state_t *state, int event) __reentrant {
                                    266 ;	-----------------------------------------
                                    267 ;	 function state_exec
                                    268 ;	-----------------------------------------
      002186                        269 _state_exec:
      002186 C0 08            [24]  270 	push	_bp
      002188 85 81 08         [24]  271 	mov	_bp,sp
      00218B C0 82            [24]  272 	push	dpl
      00218D C0 83            [24]  273 	push	dph
      00218F C0 F0            [24]  274 	push	b
      002191 E5 81            [12]  275 	mov	a,sp
      002193 24 1B            [12]  276 	add	a,#0x1b
      002195 F5 81            [12]  277 	mov	sp,a
                                    278 ;	sm.c:20: int ret = UNDEF;
      002197 E5 08            [12]  279 	mov	a,_bp
      002199 24 1D            [12]  280 	add	a,#0x1d
      00219B F8               [12]  281 	mov	r0,a
      00219C 76 00            [12]  282 	mov	@r0,#0x00
      00219E 08               [12]  283 	inc	r0
      00219F 76 80            [12]  284 	mov	@r0,#0x80
                                    285 ;	sm.c:23: if (state->current == state->final) {
      0021A1 A8 08            [24]  286 	mov	r0,_bp
      0021A3 08               [12]  287 	inc	r0
      0021A4 86 82            [24]  288 	mov	dpl,@r0
      0021A6 08               [12]  289 	inc	r0
      0021A7 86 83            [24]  290 	mov	dph,@r0
      0021A9 08               [12]  291 	inc	r0
      0021AA 86 F0            [24]  292 	mov	b,@r0
      0021AC 12 66 39         [24]  293 	lcall	__gptrget
      0021AF FA               [12]  294 	mov	r2,a
      0021B0 A3               [24]  295 	inc	dptr
      0021B1 12 66 39         [24]  296 	lcall	__gptrget
      0021B4 FC               [12]  297 	mov	r4,a
      0021B5 A8 08            [24]  298 	mov	r0,_bp
      0021B7 08               [12]  299 	inc	r0
      0021B8 E5 08            [12]  300 	mov	a,_bp
      0021BA 24 04            [12]  301 	add	a,#0x04
      0021BC F9               [12]  302 	mov	r1,a
      0021BD 74 02            [12]  303 	mov	a,#0x02
      0021BF 26               [12]  304 	add	a,@r0
      0021C0 F7               [12]  305 	mov	@r1,a
      0021C1 E4               [12]  306 	clr	a
      0021C2 08               [12]  307 	inc	r0
      0021C3 36               [12]  308 	addc	a,@r0
      0021C4 09               [12]  309 	inc	r1
      0021C5 F7               [12]  310 	mov	@r1,a
      0021C6 08               [12]  311 	inc	r0
      0021C7 09               [12]  312 	inc	r1
      0021C8 E6               [12]  313 	mov	a,@r0
      0021C9 F7               [12]  314 	mov	@r1,a
      0021CA E5 08            [12]  315 	mov	a,_bp
      0021CC 24 04            [12]  316 	add	a,#0x04
      0021CE F8               [12]  317 	mov	r0,a
      0021CF 86 82            [24]  318 	mov	dpl,@r0
      0021D1 08               [12]  319 	inc	r0
      0021D2 86 83            [24]  320 	mov	dph,@r0
      0021D4 08               [12]  321 	inc	r0
      0021D5 86 F0            [24]  322 	mov	b,@r0
      0021D7 12 66 39         [24]  323 	lcall	__gptrget
      0021DA FB               [12]  324 	mov	r3,a
      0021DB A3               [24]  325 	inc	dptr
      0021DC 12 66 39         [24]  326 	lcall	__gptrget
      0021DF FF               [12]  327 	mov	r7,a
      0021E0 EA               [12]  328 	mov	a,r2
      0021E1 B5 03 10         [24]  329 	cjne	a,ar3,00102$
      0021E4 EC               [12]  330 	mov	a,r4
      0021E5 B5 07 0C         [24]  331 	cjne	a,ar7,00102$
                                    332 ;	sm.c:24: ret = 0;
      0021E8 E5 08            [12]  333 	mov	a,_bp
      0021EA 24 1D            [12]  334 	add	a,#0x1d
      0021EC F8               [12]  335 	mov	r0,a
      0021ED E4               [12]  336 	clr	a
      0021EE F6               [12]  337 	mov	@r0,a
      0021EF 08               [12]  338 	inc	r0
      0021F0 F6               [12]  339 	mov	@r0,a
                                    340 ;	sm.c:25: goto error;
      0021F1 02 26 B0         [24]  341 	ljmp	00130$
      0021F4                        342 00102$:
                                    343 ;	sm.c:28: if ((state->current == UNDEF) || (state->current == state->spurious)) {
      0021F4 BA 00 05         [24]  344 	cjne	r2,#0x00,00190$
      0021F7 BC 80 02         [24]  345 	cjne	r4,#0x80,00190$
      0021FA 80 33            [24]  346 	sjmp	00103$
      0021FC                        347 00190$:
      0021FC A8 08            [24]  348 	mov	r0,_bp
      0021FE 08               [12]  349 	inc	r0
      0021FF E5 08            [12]  350 	mov	a,_bp
      002201 24 07            [12]  351 	add	a,#0x07
      002203 F9               [12]  352 	mov	r1,a
      002204 74 04            [12]  353 	mov	a,#0x04
      002206 26               [12]  354 	add	a,@r0
      002207 F7               [12]  355 	mov	@r1,a
      002208 E4               [12]  356 	clr	a
      002209 08               [12]  357 	inc	r0
      00220A 36               [12]  358 	addc	a,@r0
      00220B 09               [12]  359 	inc	r1
      00220C F7               [12]  360 	mov	@r1,a
      00220D 08               [12]  361 	inc	r0
      00220E 09               [12]  362 	inc	r1
      00220F E6               [12]  363 	mov	a,@r0
      002210 F7               [12]  364 	mov	@r1,a
      002211 E5 08            [12]  365 	mov	a,_bp
      002213 24 07            [12]  366 	add	a,#0x07
      002215 F8               [12]  367 	mov	r0,a
      002216 86 82            [24]  368 	mov	dpl,@r0
      002218 08               [12]  369 	inc	r0
      002219 86 83            [24]  370 	mov	dph,@r0
      00221B 08               [12]  371 	inc	r0
      00221C 86 F0            [24]  372 	mov	b,@r0
      00221E 12 66 39         [24]  373 	lcall	__gptrget
      002221 FB               [12]  374 	mov	r3,a
      002222 A3               [24]  375 	inc	dptr
      002223 12 66 39         [24]  376 	lcall	__gptrget
      002226 FF               [12]  377 	mov	r7,a
      002227 EA               [12]  378 	mov	a,r2
      002228 B5 03 11         [24]  379 	cjne	a,ar3,00104$
      00222B EC               [12]  380 	mov	a,r4
      00222C B5 07 0D         [24]  381 	cjne	a,ar7,00104$
      00222F                        382 00103$:
                                    383 ;	sm.c:29: ret = state->current;
      00222F E5 08            [12]  384 	mov	a,_bp
      002231 24 1D            [12]  385 	add	a,#0x1d
      002233 F8               [12]  386 	mov	r0,a
      002234 A6 02            [24]  387 	mov	@r0,ar2
      002236 08               [12]  388 	inc	r0
      002237 A6 04            [24]  389 	mov	@r0,ar4
                                    390 ;	sm.c:30: goto error;
      002239 02 26 B0         [24]  391 	ljmp	00130$
      00223C                        392 00104$:
                                    393 ;	sm.c:33: for (j = 0; (state->deltas[j].current != UNDEF) || (state->deltas[j].next != UNDEF); j++)
      00223C E5 08            [12]  394 	mov	a,_bp
      00223E 24 0D            [12]  395 	add	a,#0x0d
      002240 F8               [12]  396 	mov	r0,a
      002241 E4               [12]  397 	clr	a
      002242 F6               [12]  398 	mov	@r0,a
      002243 08               [12]  399 	inc	r0
      002244 F6               [12]  400 	mov	@r0,a
      002245 A8 08            [24]  401 	mov	r0,_bp
      002247 08               [12]  402 	inc	r0
      002248 E5 08            [12]  403 	mov	a,_bp
      00224A 24 1A            [12]  404 	add	a,#0x1a
      00224C F9               [12]  405 	mov	r1,a
      00224D 74 09            [12]  406 	mov	a,#0x09
      00224F 26               [12]  407 	add	a,@r0
      002250 F7               [12]  408 	mov	@r1,a
      002251 E4               [12]  409 	clr	a
      002252 08               [12]  410 	inc	r0
      002253 36               [12]  411 	addc	a,@r0
      002254 09               [12]  412 	inc	r1
      002255 F7               [12]  413 	mov	@r1,a
      002256 08               [12]  414 	inc	r0
      002257 09               [12]  415 	inc	r1
      002258 E6               [12]  416 	mov	a,@r0
      002259 F7               [12]  417 	mov	@r1,a
      00225A A8 08            [24]  418 	mov	r0,_bp
      00225C 08               [12]  419 	inc	r0
      00225D E5 08            [12]  420 	mov	a,_bp
      00225F 24 0A            [12]  421 	add	a,#0x0a
      002261 F9               [12]  422 	mov	r1,a
      002262 74 06            [12]  423 	mov	a,#0x06
      002264 26               [12]  424 	add	a,@r0
      002265 F7               [12]  425 	mov	@r1,a
      002266 E4               [12]  426 	clr	a
      002267 08               [12]  427 	inc	r0
      002268 36               [12]  428 	addc	a,@r0
      002269 09               [12]  429 	inc	r1
      00226A F7               [12]  430 	mov	@r1,a
      00226B 08               [12]  431 	inc	r0
      00226C 09               [12]  432 	inc	r1
      00226D E6               [12]  433 	mov	a,@r0
      00226E F7               [12]  434 	mov	@r1,a
      00226F E4               [12]  435 	clr	a
      002270 FA               [12]  436 	mov	r2,a
      002271 FF               [12]  437 	mov	r7,a
      002272 E5 08            [12]  438 	mov	a,_bp
      002274 24 0F            [12]  439 	add	a,#0x0f
      002276 F8               [12]  440 	mov	r0,a
      002277 E4               [12]  441 	clr	a
      002278 F6               [12]  442 	mov	@r0,a
      002279 08               [12]  443 	inc	r0
      00227A F6               [12]  444 	mov	@r0,a
      00227B E5 08            [12]  445 	mov	a,_bp
      00227D 24 11            [12]  446 	add	a,#0x11
      00227F F8               [12]  447 	mov	r0,a
      002280 E4               [12]  448 	clr	a
      002281 F6               [12]  449 	mov	@r0,a
      002282 08               [12]  450 	inc	r0
      002283 F6               [12]  451 	mov	@r0,a
      002284 E5 08            [12]  452 	mov	a,_bp
      002286 24 13            [12]  453 	add	a,#0x13
      002288 F8               [12]  454 	mov	r0,a
      002289 E4               [12]  455 	clr	a
      00228A F6               [12]  456 	mov	@r0,a
      00228B 08               [12]  457 	inc	r0
      00228C F6               [12]  458 	mov	@r0,a
      00228D                        459 00133$:
      00228D E5 08            [12]  460 	mov	a,_bp
      00228F 24 0A            [12]  461 	add	a,#0x0a
      002291 F8               [12]  462 	mov	r0,a
      002292 86 82            [24]  463 	mov	dpl,@r0
      002294 08               [12]  464 	inc	r0
      002295 86 83            [24]  465 	mov	dph,@r0
      002297 08               [12]  466 	inc	r0
      002298 86 F0            [24]  467 	mov	b,@r0
      00229A E5 08            [12]  468 	mov	a,_bp
      00229C 24 15            [12]  469 	add	a,#0x15
      00229E F9               [12]  470 	mov	r1,a
      00229F 12 66 39         [24]  471 	lcall	__gptrget
      0022A2 F7               [12]  472 	mov	@r1,a
      0022A3 A3               [24]  473 	inc	dptr
      0022A4 12 66 39         [24]  474 	lcall	__gptrget
      0022A7 09               [12]  475 	inc	r1
      0022A8 F7               [12]  476 	mov	@r1,a
      0022A9 A3               [24]  477 	inc	dptr
      0022AA 12 66 39         [24]  478 	lcall	__gptrget
      0022AD 09               [12]  479 	inc	r1
      0022AE F7               [12]  480 	mov	@r1,a
      0022AF E5 08            [12]  481 	mov	a,_bp
      0022B1 24 15            [12]  482 	add	a,#0x15
      0022B3 F8               [12]  483 	mov	r0,a
      0022B4 E5 08            [12]  484 	mov	a,_bp
      0022B6 24 13            [12]  485 	add	a,#0x13
      0022B8 F9               [12]  486 	mov	r1,a
      0022B9 E7               [12]  487 	mov	a,@r1
      0022BA 26               [12]  488 	add	a,@r0
      0022BB FC               [12]  489 	mov	r4,a
      0022BC 09               [12]  490 	inc	r1
      0022BD E7               [12]  491 	mov	a,@r1
      0022BE 08               [12]  492 	inc	r0
      0022BF 36               [12]  493 	addc	a,@r0
      0022C0 FD               [12]  494 	mov	r5,a
      0022C1 08               [12]  495 	inc	r0
      0022C2 86 06            [24]  496 	mov	ar6,@r0
      0022C4 8C 82            [24]  497 	mov	dpl,r4
      0022C6 8D 83            [24]  498 	mov	dph,r5
      0022C8 8E F0            [24]  499 	mov	b,r6
      0022CA 12 66 39         [24]  500 	lcall	__gptrget
      0022CD FC               [12]  501 	mov	r4,a
      0022CE A3               [24]  502 	inc	dptr
      0022CF 12 66 39         [24]  503 	lcall	__gptrget
      0022D2 FD               [12]  504 	mov	r5,a
      0022D3 BC 00 37         [24]  505 	cjne	r4,#0x00,00132$
      0022D6 BD 80 34         [24]  506 	cjne	r5,#0x80,00132$
      0022D9 E5 08            [12]  507 	mov	a,_bp
      0022DB 24 15            [12]  508 	add	a,#0x15
      0022DD F8               [12]  509 	mov	r0,a
      0022DE E5 08            [12]  510 	mov	a,_bp
      0022E0 24 13            [12]  511 	add	a,#0x13
      0022E2 F9               [12]  512 	mov	r1,a
      0022E3 E7               [12]  513 	mov	a,@r1
      0022E4 26               [12]  514 	add	a,@r0
      0022E5 FC               [12]  515 	mov	r4,a
      0022E6 09               [12]  516 	inc	r1
      0022E7 E7               [12]  517 	mov	a,@r1
      0022E8 08               [12]  518 	inc	r0
      0022E9 36               [12]  519 	addc	a,@r0
      0022EA FD               [12]  520 	mov	r5,a
      0022EB 08               [12]  521 	inc	r0
      0022EC 86 06            [24]  522 	mov	ar6,@r0
      0022EE 74 04            [12]  523 	mov	a,#0x04
      0022F0 2C               [12]  524 	add	a,r4
      0022F1 FC               [12]  525 	mov	r4,a
      0022F2 E4               [12]  526 	clr	a
      0022F3 3D               [12]  527 	addc	a,r5
      0022F4 FD               [12]  528 	mov	r5,a
      0022F5 8C 82            [24]  529 	mov	dpl,r4
      0022F7 8D 83            [24]  530 	mov	dph,r5
      0022F9 8E F0            [24]  531 	mov	b,r6
      0022FB 12 66 39         [24]  532 	lcall	__gptrget
      0022FE FC               [12]  533 	mov	r4,a
      0022FF A3               [24]  534 	inc	dptr
      002300 12 66 39         [24]  535 	lcall	__gptrget
      002303 FD               [12]  536 	mov	r5,a
      002304 BC 00 06         [24]  537 	cjne	r4,#0x00,00195$
      002307 BD 80 03         [24]  538 	cjne	r5,#0x80,00195$
      00230A 02 25 5B         [24]  539 	ljmp	00119$
      00230D                        540 00195$:
      00230D                        541 00132$:
                                    542 ;	sm.c:35: ((state->deltas[j].current == state->current) || (state->deltas[j].current == ANY)) &&
      00230D E5 08            [12]  543 	mov	a,_bp
      00230F 24 0A            [12]  544 	add	a,#0x0a
      002311 F8               [12]  545 	mov	r0,a
      002312 86 82            [24]  546 	mov	dpl,@r0
      002314 08               [12]  547 	inc	r0
      002315 86 83            [24]  548 	mov	dph,@r0
      002317 08               [12]  549 	inc	r0
      002318 86 F0            [24]  550 	mov	b,@r0
      00231A 12 66 39         [24]  551 	lcall	__gptrget
      00231D FC               [12]  552 	mov	r4,a
      00231E A3               [24]  553 	inc	dptr
      00231F 12 66 39         [24]  554 	lcall	__gptrget
      002322 FD               [12]  555 	mov	r5,a
      002323 A3               [24]  556 	inc	dptr
      002324 12 66 39         [24]  557 	lcall	__gptrget
      002327 FE               [12]  558 	mov	r6,a
      002328 E5 08            [12]  559 	mov	a,_bp
      00232A 24 0F            [12]  560 	add	a,#0x0f
      00232C F8               [12]  561 	mov	r0,a
      00232D E6               [12]  562 	mov	a,@r0
      00232E 2C               [12]  563 	add	a,r4
      00232F FC               [12]  564 	mov	r4,a
      002330 08               [12]  565 	inc	r0
      002331 E6               [12]  566 	mov	a,@r0
      002332 3D               [12]  567 	addc	a,r5
      002333 FD               [12]  568 	mov	r5,a
      002334 8C 82            [24]  569 	mov	dpl,r4
      002336 8D 83            [24]  570 	mov	dph,r5
      002338 8E F0            [24]  571 	mov	b,r6
      00233A 12 66 39         [24]  572 	lcall	__gptrget
      00233D FC               [12]  573 	mov	r4,a
      00233E A3               [24]  574 	inc	dptr
      00233F 12 66 39         [24]  575 	lcall	__gptrget
      002342 FB               [12]  576 	mov	r3,a
      002343 A8 08            [24]  577 	mov	r0,_bp
      002345 08               [12]  578 	inc	r0
      002346 86 82            [24]  579 	mov	dpl,@r0
      002348 08               [12]  580 	inc	r0
      002349 86 83            [24]  581 	mov	dph,@r0
      00234B 08               [12]  582 	inc	r0
      00234C 86 F0            [24]  583 	mov	b,@r0
      00234E 12 66 39         [24]  584 	lcall	__gptrget
      002351 FD               [12]  585 	mov	r5,a
      002352 A3               [24]  586 	inc	dptr
      002353 12 66 39         [24]  587 	lcall	__gptrget
      002356 FE               [12]  588 	mov	r6,a
      002357 EC               [12]  589 	mov	a,r4
      002358 B5 05 06         [24]  590 	cjne	a,ar5,00196$
      00235B EB               [12]  591 	mov	a,r3
      00235C B5 06 02         [24]  592 	cjne	a,ar6,00196$
      00235F 80 0B            [24]  593 	sjmp	00117$
      002361                        594 00196$:
      002361 BC FF 05         [24]  595 	cjne	r4,#0xff,00197$
      002364 BB 7F 02         [24]  596 	cjne	r3,#0x7f,00197$
      002367 80 03            [24]  597 	sjmp	00198$
      002369                        598 00197$:
      002369 02 25 22         [24]  599 	ljmp	00118$
      00236C                        600 00198$:
      00236C                        601 00117$:
                                    602 ;	sm.c:36: ((state->deltas[j].event == event) || (state->deltas[j].event == ANY))
      00236C E5 08            [12]  603 	mov	a,_bp
      00236E 24 0A            [12]  604 	add	a,#0x0a
      002370 F8               [12]  605 	mov	r0,a
      002371 86 82            [24]  606 	mov	dpl,@r0
      002373 08               [12]  607 	inc	r0
      002374 86 83            [24]  608 	mov	dph,@r0
      002376 08               [12]  609 	inc	r0
      002377 86 F0            [24]  610 	mov	b,@r0
      002379 12 66 39         [24]  611 	lcall	__gptrget
      00237C FC               [12]  612 	mov	r4,a
      00237D A3               [24]  613 	inc	dptr
      00237E 12 66 39         [24]  614 	lcall	__gptrget
      002381 FD               [12]  615 	mov	r5,a
      002382 A3               [24]  616 	inc	dptr
      002383 12 66 39         [24]  617 	lcall	__gptrget
      002386 FE               [12]  618 	mov	r6,a
      002387 E5 08            [12]  619 	mov	a,_bp
      002389 24 11            [12]  620 	add	a,#0x11
      00238B F8               [12]  621 	mov	r0,a
      00238C E6               [12]  622 	mov	a,@r0
      00238D 2C               [12]  623 	add	a,r4
      00238E FC               [12]  624 	mov	r4,a
      00238F 08               [12]  625 	inc	r0
      002390 E6               [12]  626 	mov	a,@r0
      002391 3D               [12]  627 	addc	a,r5
      002392 FD               [12]  628 	mov	r5,a
      002393 74 02            [12]  629 	mov	a,#0x02
      002395 2C               [12]  630 	add	a,r4
      002396 FC               [12]  631 	mov	r4,a
      002397 E4               [12]  632 	clr	a
      002398 3D               [12]  633 	addc	a,r5
      002399 FD               [12]  634 	mov	r5,a
      00239A 8C 82            [24]  635 	mov	dpl,r4
      00239C 8D 83            [24]  636 	mov	dph,r5
      00239E 8E F0            [24]  637 	mov	b,r6
      0023A0 12 66 39         [24]  638 	lcall	__gptrget
      0023A3 FE               [12]  639 	mov	r6,a
      0023A4 A3               [24]  640 	inc	dptr
      0023A5 12 66 39         [24]  641 	lcall	__gptrget
      0023A8 FD               [12]  642 	mov	r5,a
      0023A9 E5 08            [12]  643 	mov	a,_bp
      0023AB 24 FC            [12]  644 	add	a,#0xfc
      0023AD F8               [12]  645 	mov	r0,a
      0023AE E6               [12]  646 	mov	a,@r0
      0023AF B5 06 07         [24]  647 	cjne	a,ar6,00199$
      0023B2 08               [12]  648 	inc	r0
      0023B3 E6               [12]  649 	mov	a,@r0
      0023B4 B5 05 02         [24]  650 	cjne	a,ar5,00199$
      0023B7 80 0B            [24]  651 	sjmp	00113$
      0023B9                        652 00199$:
      0023B9 BE FF 05         [24]  653 	cjne	r6,#0xff,00200$
      0023BC BD 7F 02         [24]  654 	cjne	r5,#0x7f,00200$
      0023BF 80 03            [24]  655 	sjmp	00201$
      0023C1                        656 00200$:
      0023C1 02 25 22         [24]  657 	ljmp	00118$
      0023C4                        658 00201$:
      0023C4                        659 00113$:
                                    660 ;	sm.c:38: if (state->deltas[j].predicate)
      0023C4 E5 08            [12]  661 	mov	a,_bp
      0023C6 24 0A            [12]  662 	add	a,#0x0a
      0023C8 F8               [12]  663 	mov	r0,a
      0023C9 86 82            [24]  664 	mov	dpl,@r0
      0023CB 08               [12]  665 	inc	r0
      0023CC 86 83            [24]  666 	mov	dph,@r0
      0023CE 08               [12]  667 	inc	r0
      0023CF 86 F0            [24]  668 	mov	b,@r0
      0023D1 12 66 39         [24]  669 	lcall	__gptrget
      0023D4 FC               [12]  670 	mov	r4,a
      0023D5 A3               [24]  671 	inc	dptr
      0023D6 12 66 39         [24]  672 	lcall	__gptrget
      0023D9 FD               [12]  673 	mov	r5,a
      0023DA A3               [24]  674 	inc	dptr
      0023DB 12 66 39         [24]  675 	lcall	__gptrget
      0023DE FE               [12]  676 	mov	r6,a
      0023DF E5 08            [12]  677 	mov	a,_bp
      0023E1 24 11            [12]  678 	add	a,#0x11
      0023E3 F8               [12]  679 	mov	r0,a
      0023E4 E5 08            [12]  680 	mov	a,_bp
      0023E6 24 15            [12]  681 	add	a,#0x15
      0023E8 F9               [12]  682 	mov	r1,a
      0023E9 E6               [12]  683 	mov	a,@r0
      0023EA 2C               [12]  684 	add	a,r4
      0023EB F7               [12]  685 	mov	@r1,a
      0023EC 08               [12]  686 	inc	r0
      0023ED E6               [12]  687 	mov	a,@r0
      0023EE 3D               [12]  688 	addc	a,r5
      0023EF 09               [12]  689 	inc	r1
      0023F0 F7               [12]  690 	mov	@r1,a
      0023F1 09               [12]  691 	inc	r1
      0023F2 A7 06            [24]  692 	mov	@r1,ar6
      0023F4 E5 08            [12]  693 	mov	a,_bp
      0023F6 24 15            [12]  694 	add	a,#0x15
      0023F8 F8               [12]  695 	mov	r0,a
      0023F9 74 06            [12]  696 	mov	a,#0x06
      0023FB 26               [12]  697 	add	a,@r0
      0023FC FC               [12]  698 	mov	r4,a
      0023FD E4               [12]  699 	clr	a
      0023FE 08               [12]  700 	inc	r0
      0023FF 36               [12]  701 	addc	a,@r0
      002400 FD               [12]  702 	mov	r5,a
      002401 08               [12]  703 	inc	r0
      002402 86 06            [24]  704 	mov	ar6,@r0
      002404 8C 82            [24]  705 	mov	dpl,r4
      002406 8D 83            [24]  706 	mov	dph,r5
      002408 8E F0            [24]  707 	mov	b,r6
      00240A 12 66 39         [24]  708 	lcall	__gptrget
      00240D FC               [12]  709 	mov	r4,a
      00240E A3               [24]  710 	inc	dptr
      00240F 12 66 39         [24]  711 	lcall	__gptrget
      002412 FD               [12]  712 	mov	r5,a
      002413 4C               [12]  713 	orl	a,r4
      002414 60 60            [24]  714 	jz	00109$
                                    715 ;	sm.c:39: if (!state->deltas[j].predicate(state->ctx, &(state->deltas[j]))) continue;
      002416 C0 02            [24]  716 	push	ar2
      002418 C0 07            [24]  717 	push	ar7
      00241A E5 08            [12]  718 	mov	a,_bp
      00241C 24 1A            [12]  719 	add	a,#0x1a
      00241E F8               [12]  720 	mov	r0,a
      00241F 86 82            [24]  721 	mov	dpl,@r0
      002421 08               [12]  722 	inc	r0
      002422 86 83            [24]  723 	mov	dph,@r0
      002424 08               [12]  724 	inc	r0
      002425 86 F0            [24]  725 	mov	b,@r0
      002427 12 66 39         [24]  726 	lcall	__gptrget
      00242A FA               [12]  727 	mov	r2,a
      00242B A3               [24]  728 	inc	dptr
      00242C 12 66 39         [24]  729 	lcall	__gptrget
      00242F FE               [12]  730 	mov	r6,a
      002430 A3               [24]  731 	inc	dptr
      002431 12 66 39         [24]  732 	lcall	__gptrget
      002434 FF               [12]  733 	mov	r7,a
      002435 C0 05            [24]  734 	push	ar5
      002437 C0 04            [24]  735 	push	ar4
      002439 C0 02            [24]  736 	push	ar2
      00243B E5 08            [12]  737 	mov	a,_bp
      00243D 24 15            [12]  738 	add	a,#0x15
      00243F F8               [12]  739 	mov	r0,a
      002440 E6               [12]  740 	mov	a,@r0
      002441 C0 E0            [24]  741 	push	acc
      002443 08               [12]  742 	inc	r0
      002444 E6               [12]  743 	mov	a,@r0
      002445 C0 E0            [24]  744 	push	acc
      002447 08               [12]  745 	inc	r0
      002448 E6               [12]  746 	mov	a,@r0
      002449 C0 E0            [24]  747 	push	acc
      00244B 12 24 50         [24]  748 	lcall	00203$
      00244E 80 0B            [24]  749 	sjmp	00204$
      002450                        750 00203$:
      002450 C0 04            [24]  751 	push	ar4
      002452 C0 05            [24]  752 	push	ar5
      002454 8A 82            [24]  753 	mov	dpl,r2
      002456 8E 83            [24]  754 	mov	dph,r6
      002458 8F F0            [24]  755 	mov	b,r7
      00245A 22               [24]  756 	ret
      00245B                        757 00204$:
      00245B AE 82            [24]  758 	mov	r6,dpl
      00245D AF 83            [24]  759 	mov	r7,dph
      00245F 15 81            [12]  760 	dec	sp
      002461 15 81            [12]  761 	dec	sp
      002463 15 81            [12]  762 	dec	sp
      002465 D0 02            [24]  763 	pop	ar2
      002467 D0 04            [24]  764 	pop	ar4
      002469 D0 05            [24]  765 	pop	ar5
      00246B EE               [12]  766 	mov	a,r6
      00246C 4F               [12]  767 	orl	a,r7
      00246D D0 07            [24]  768 	pop	ar7
      00246F D0 02            [24]  769 	pop	ar2
      002471 70 03            [24]  770 	jnz	00205$
      002473 02 25 22         [24]  771 	ljmp	00118$
      002476                        772 00205$:
      002476                        773 00109$:
                                    774 ;	sm.c:40: if (state->deltas[j].callback)
      002476 E5 08            [12]  775 	mov	a,_bp
      002478 24 0A            [12]  776 	add	a,#0x0a
      00247A F8               [12]  777 	mov	r0,a
      00247B 86 82            [24]  778 	mov	dpl,@r0
      00247D 08               [12]  779 	inc	r0
      00247E 86 83            [24]  780 	mov	dph,@r0
      002480 08               [12]  781 	inc	r0
      002481 86 F0            [24]  782 	mov	b,@r0
      002483 12 66 39         [24]  783 	lcall	__gptrget
      002486 FC               [12]  784 	mov	r4,a
      002487 A3               [24]  785 	inc	dptr
      002488 12 66 39         [24]  786 	lcall	__gptrget
      00248B FD               [12]  787 	mov	r5,a
      00248C A3               [24]  788 	inc	dptr
      00248D 12 66 39         [24]  789 	lcall	__gptrget
      002490 FE               [12]  790 	mov	r6,a
      002491 E5 08            [12]  791 	mov	a,_bp
      002493 24 11            [12]  792 	add	a,#0x11
      002495 F8               [12]  793 	mov	r0,a
      002496 E6               [12]  794 	mov	a,@r0
      002497 2C               [12]  795 	add	a,r4
      002498 FF               [12]  796 	mov	r7,a
      002499 08               [12]  797 	inc	r0
      00249A E6               [12]  798 	mov	a,@r0
      00249B 3D               [12]  799 	addc	a,r5
      00249C FB               [12]  800 	mov	r3,a
      00249D 8E 02            [24]  801 	mov	ar2,r6
      00249F 74 08            [12]  802 	mov	a,#0x08
      0024A1 2F               [12]  803 	add	a,r7
      0024A2 FC               [12]  804 	mov	r4,a
      0024A3 E4               [12]  805 	clr	a
      0024A4 3B               [12]  806 	addc	a,r3
      0024A5 FD               [12]  807 	mov	r5,a
      0024A6 8A 06            [24]  808 	mov	ar6,r2
      0024A8 8C 82            [24]  809 	mov	dpl,r4
      0024AA 8D 83            [24]  810 	mov	dph,r5
      0024AC 8E F0            [24]  811 	mov	b,r6
      0024AE E5 08            [12]  812 	mov	a,_bp
      0024B0 24 18            [12]  813 	add	a,#0x18
      0024B2 F8               [12]  814 	mov	r0,a
      0024B3 12 66 39         [24]  815 	lcall	__gptrget
      0024B6 F6               [12]  816 	mov	@r0,a
      0024B7 A3               [24]  817 	inc	dptr
      0024B8 12 66 39         [24]  818 	lcall	__gptrget
      0024BB 08               [12]  819 	inc	r0
      0024BC F6               [12]  820 	mov	@r0,a
      0024BD E5 08            [12]  821 	mov	a,_bp
      0024BF 24 18            [12]  822 	add	a,#0x18
      0024C1 F8               [12]  823 	mov	r0,a
      0024C2 E6               [12]  824 	mov	a,@r0
      0024C3 08               [12]  825 	inc	r0
      0024C4 46               [12]  826 	orl	a,@r0
      0024C5 60 4F            [24]  827 	jz	00111$
                                    828 ;	sm.c:41: ret = state->deltas[j].callback(state->ctx, &(state->deltas[j]));
      0024C7 E5 08            [12]  829 	mov	a,_bp
      0024C9 24 1A            [12]  830 	add	a,#0x1a
      0024CB F8               [12]  831 	mov	r0,a
      0024CC 86 82            [24]  832 	mov	dpl,@r0
      0024CE 08               [12]  833 	inc	r0
      0024CF 86 83            [24]  834 	mov	dph,@r0
      0024D1 08               [12]  835 	inc	r0
      0024D2 86 F0            [24]  836 	mov	b,@r0
      0024D4 12 66 39         [24]  837 	lcall	__gptrget
      0024D7 FC               [12]  838 	mov	r4,a
      0024D8 A3               [24]  839 	inc	dptr
      0024D9 12 66 39         [24]  840 	lcall	__gptrget
      0024DC FD               [12]  841 	mov	r5,a
      0024DD A3               [24]  842 	inc	dptr
      0024DE 12 66 39         [24]  843 	lcall	__gptrget
      0024E1 FE               [12]  844 	mov	r6,a
      0024E2 C0 07            [24]  845 	push	ar7
      0024E4 C0 03            [24]  846 	push	ar3
      0024E6 C0 02            [24]  847 	push	ar2
      0024E8 12 24 ED         [24]  848 	lcall	00207$
      0024EB 80 13            [24]  849 	sjmp	00208$
      0024ED                        850 00207$:
      0024ED E5 08            [12]  851 	mov	a,_bp
      0024EF 24 18            [12]  852 	add	a,#0x18
      0024F1 F8               [12]  853 	mov	r0,a
      0024F2 E6               [12]  854 	mov	a,@r0
      0024F3 C0 E0            [24]  855 	push	acc
      0024F5 08               [12]  856 	inc	r0
      0024F6 E6               [12]  857 	mov	a,@r0
      0024F7 C0 E0            [24]  858 	push	acc
      0024F9 8C 82            [24]  859 	mov	dpl,r4
      0024FB 8D 83            [24]  860 	mov	dph,r5
      0024FD 8E F0            [24]  861 	mov	b,r6
      0024FF 22               [24]  862 	ret
      002500                        863 00208$:
      002500 AD 82            [24]  864 	mov	r5,dpl
      002502 AE 83            [24]  865 	mov	r6,dph
      002504 15 81            [12]  866 	dec	sp
      002506 15 81            [12]  867 	dec	sp
      002508 15 81            [12]  868 	dec	sp
      00250A E5 08            [12]  869 	mov	a,_bp
      00250C 24 1D            [12]  870 	add	a,#0x1d
      00250E F8               [12]  871 	mov	r0,a
      00250F A6 05            [24]  872 	mov	@r0,ar5
      002511 08               [12]  873 	inc	r0
      002512 A6 06            [24]  874 	mov	@r0,ar6
      002514 80 45            [24]  875 	sjmp	00119$
      002516                        876 00111$:
                                    877 ;	sm.c:42: else ret = 1;
      002516 E5 08            [12]  878 	mov	a,_bp
      002518 24 1D            [12]  879 	add	a,#0x1d
      00251A F8               [12]  880 	mov	r0,a
      00251B 76 01            [12]  881 	mov	@r0,#0x01
      00251D 08               [12]  882 	inc	r0
      00251E 76 00            [12]  883 	mov	@r0,#0x00
                                    884 ;	sm.c:43: break;
      002520 80 39            [24]  885 	sjmp	00119$
      002522                        886 00118$:
                                    887 ;	sm.c:33: for (j = 0; (state->deltas[j].current != UNDEF) || (state->deltas[j].next != UNDEF); j++)
      002522 E5 08            [12]  888 	mov	a,_bp
      002524 24 0F            [12]  889 	add	a,#0x0f
      002526 F8               [12]  890 	mov	r0,a
      002527 74 0A            [12]  891 	mov	a,#0x0a
      002529 26               [12]  892 	add	a,@r0
      00252A F6               [12]  893 	mov	@r0,a
      00252B E4               [12]  894 	clr	a
      00252C 08               [12]  895 	inc	r0
      00252D 36               [12]  896 	addc	a,@r0
      00252E F6               [12]  897 	mov	@r0,a
      00252F E5 08            [12]  898 	mov	a,_bp
      002531 24 11            [12]  899 	add	a,#0x11
      002533 F8               [12]  900 	mov	r0,a
      002534 74 0A            [12]  901 	mov	a,#0x0a
      002536 26               [12]  902 	add	a,@r0
      002537 F6               [12]  903 	mov	@r0,a
      002538 E4               [12]  904 	clr	a
      002539 08               [12]  905 	inc	r0
      00253A 36               [12]  906 	addc	a,@r0
      00253B F6               [12]  907 	mov	@r0,a
      00253C E5 08            [12]  908 	mov	a,_bp
      00253E 24 13            [12]  909 	add	a,#0x13
      002540 F8               [12]  910 	mov	r0,a
      002541 74 0A            [12]  911 	mov	a,#0x0a
      002543 26               [12]  912 	add	a,@r0
      002544 F6               [12]  913 	mov	@r0,a
      002545 E4               [12]  914 	clr	a
      002546 08               [12]  915 	inc	r0
      002547 36               [12]  916 	addc	a,@r0
      002548 F6               [12]  917 	mov	@r0,a
      002549 0A               [12]  918 	inc	r2
      00254A BA 00 01         [24]  919 	cjne	r2,#0x00,00209$
      00254D 0F               [12]  920 	inc	r7
      00254E                        921 00209$:
      00254E E5 08            [12]  922 	mov	a,_bp
      002550 24 0D            [12]  923 	add	a,#0x0d
      002552 F8               [12]  924 	mov	r0,a
      002553 A6 02            [24]  925 	mov	@r0,ar2
      002555 08               [12]  926 	inc	r0
      002556 A6 07            [24]  927 	mov	@r0,ar7
      002558 02 22 8D         [24]  928 	ljmp	00133$
      00255B                        929 00119$:
                                    930 ;	sm.c:46: if (ret == UNDEF) {
      00255B E5 08            [12]  931 	mov	a,_bp
      00255D 24 1D            [12]  932 	add	a,#0x1d
      00255F F8               [12]  933 	mov	r0,a
      002560 B6 00 1C         [24]  934 	cjne	@r0,#0x00,00121$
      002563 08               [12]  935 	inc	r0
      002564 B6 80 18         [24]  936 	cjne	@r0,#0x80,00121$
                                    937 ;	sm.c:47: state->current = UNDEF;
      002567 A8 08            [24]  938 	mov	r0,_bp
      002569 08               [12]  939 	inc	r0
      00256A 86 82            [24]  940 	mov	dpl,@r0
      00256C 08               [12]  941 	inc	r0
      00256D 86 83            [24]  942 	mov	dph,@r0
      00256F 08               [12]  943 	inc	r0
      002570 86 F0            [24]  944 	mov	b,@r0
      002572 E4               [12]  945 	clr	a
      002573 12 5E E9         [24]  946 	lcall	__gptrput
      002576 A3               [24]  947 	inc	dptr
      002577 74 80            [12]  948 	mov	a,#0x80
      002579 12 5E E9         [24]  949 	lcall	__gptrput
                                    950 ;	sm.c:48: goto error;
      00257C 02 26 B0         [24]  951 	ljmp	00130$
      00257F                        952 00121$:
                                    953 ;	sm.c:51: if ((ret < 0) || (ret == state->spurious)) {
      00257F E5 08            [12]  954 	mov	a,_bp
      002581 24 1D            [12]  955 	add	a,#0x1d
      002583 F8               [12]  956 	mov	r0,a
      002584 08               [12]  957 	inc	r0
      002585 E6               [12]  958 	mov	a,@r0
      002586 20 E7 28         [24]  959 	jb	acc.7,00122$
      002589 E5 08            [12]  960 	mov	a,_bp
      00258B 24 07            [12]  961 	add	a,#0x07
      00258D F8               [12]  962 	mov	r0,a
      00258E 86 82            [24]  963 	mov	dpl,@r0
      002590 08               [12]  964 	inc	r0
      002591 86 83            [24]  965 	mov	dph,@r0
      002593 08               [12]  966 	inc	r0
      002594 86 F0            [24]  967 	mov	b,@r0
      002596 12 66 39         [24]  968 	lcall	__gptrget
      002599 FE               [12]  969 	mov	r6,a
      00259A A3               [24]  970 	inc	dptr
      00259B 12 66 39         [24]  971 	lcall	__gptrget
      00259E FF               [12]  972 	mov	r7,a
      00259F E5 08            [12]  973 	mov	a,_bp
      0025A1 24 1D            [12]  974 	add	a,#0x1d
      0025A3 F8               [12]  975 	mov	r0,a
      0025A4 E6               [12]  976 	mov	a,@r0
      0025A5 B5 06 07         [24]  977 	cjne	a,ar6,00213$
      0025A8 08               [12]  978 	inc	r0
      0025A9 E6               [12]  979 	mov	a,@r0
      0025AA B5 07 02         [24]  980 	cjne	a,ar7,00213$
      0025AD 80 02            [24]  981 	sjmp	00214$
      0025AF                        982 00213$:
      0025AF 80 37            [24]  983 	sjmp	00123$
      0025B1                        984 00214$:
      0025B1                        985 00122$:
                                    986 ;	sm.c:52: ret = state->current = state->spurious;
      0025B1 E5 08            [12]  987 	mov	a,_bp
      0025B3 24 07            [12]  988 	add	a,#0x07
      0025B5 F8               [12]  989 	mov	r0,a
      0025B6 86 82            [24]  990 	mov	dpl,@r0
      0025B8 08               [12]  991 	inc	r0
      0025B9 86 83            [24]  992 	mov	dph,@r0
      0025BB 08               [12]  993 	inc	r0
      0025BC 86 F0            [24]  994 	mov	b,@r0
      0025BE 12 66 39         [24]  995 	lcall	__gptrget
      0025C1 FF               [12]  996 	mov	r7,a
      0025C2 A3               [24]  997 	inc	dptr
      0025C3 12 66 39         [24]  998 	lcall	__gptrget
      0025C6 FE               [12]  999 	mov	r6,a
      0025C7 A8 08            [24] 1000 	mov	r0,_bp
      0025C9 08               [12] 1001 	inc	r0
      0025CA 86 82            [24] 1002 	mov	dpl,@r0
      0025CC 08               [12] 1003 	inc	r0
      0025CD 86 83            [24] 1004 	mov	dph,@r0
      0025CF 08               [12] 1005 	inc	r0
      0025D0 86 F0            [24] 1006 	mov	b,@r0
      0025D2 EF               [12] 1007 	mov	a,r7
      0025D3 12 5E E9         [24] 1008 	lcall	__gptrput
      0025D6 A3               [24] 1009 	inc	dptr
      0025D7 EE               [12] 1010 	mov	a,r6
      0025D8 12 5E E9         [24] 1011 	lcall	__gptrput
      0025DB E5 08            [12] 1012 	mov	a,_bp
      0025DD 24 1D            [12] 1013 	add	a,#0x1d
      0025DF F8               [12] 1014 	mov	r0,a
      0025E0 A6 07            [24] 1015 	mov	@r0,ar7
      0025E2 08               [12] 1016 	inc	r0
      0025E3 A6 06            [24] 1017 	mov	@r0,ar6
                                   1018 ;	sm.c:53: goto error;
      0025E5 02 26 B0         [24] 1019 	ljmp	00130$
      0025E8                       1020 00123$:
                                   1021 ;	sm.c:56: if ((ret > 0) && (state->deltas[j].next != ANY)) state->current = state->deltas[j].next;
      0025E8 E5 08            [12] 1022 	mov	a,_bp
      0025EA 24 1D            [12] 1023 	add	a,#0x1d
      0025EC F8               [12] 1024 	mov	r0,a
      0025ED C3               [12] 1025 	clr	c
      0025EE E4               [12] 1026 	clr	a
      0025EF 96               [12] 1027 	subb	a,@r0
      0025F0 74 80            [12] 1028 	mov	a,#(0x00 ^ 0x80)
      0025F2 08               [12] 1029 	inc	r0
      0025F3 86 F0            [24] 1030 	mov	b,@r0
      0025F5 63 F0 80         [24] 1031 	xrl	b,#0x80
      0025F8 95 F0            [12] 1032 	subb	a,b
      0025FA 50 79            [24] 1033 	jnc	00126$
      0025FC E5 08            [12] 1034 	mov	a,_bp
      0025FE 24 0A            [12] 1035 	add	a,#0x0a
      002600 F8               [12] 1036 	mov	r0,a
      002601 86 82            [24] 1037 	mov	dpl,@r0
      002603 08               [12] 1038 	inc	r0
      002604 86 83            [24] 1039 	mov	dph,@r0
      002606 08               [12] 1040 	inc	r0
      002607 86 F0            [24] 1041 	mov	b,@r0
      002609 12 66 39         [24] 1042 	lcall	__gptrget
      00260C FD               [12] 1043 	mov	r5,a
      00260D A3               [24] 1044 	inc	dptr
      00260E 12 66 39         [24] 1045 	lcall	__gptrget
      002611 FE               [12] 1046 	mov	r6,a
      002612 A3               [24] 1047 	inc	dptr
      002613 12 66 39         [24] 1048 	lcall	__gptrget
      002616 FF               [12] 1049 	mov	r7,a
      002617 C0 07            [24] 1050 	push	ar7
      002619 C0 06            [24] 1051 	push	ar6
      00261B C0 05            [24] 1052 	push	ar5
      00261D E5 08            [12] 1053 	mov	a,_bp
      00261F 24 0D            [12] 1054 	add	a,#0x0d
      002621 F8               [12] 1055 	mov	r0,a
      002622 E6               [12] 1056 	mov	a,@r0
      002623 C0 E0            [24] 1057 	push	acc
      002625 08               [12] 1058 	inc	r0
      002626 E6               [12] 1059 	mov	a,@r0
      002627 C0 E0            [24] 1060 	push	acc
      002629 90 00 0A         [24] 1061 	mov	dptr,#0x000a
      00262C 12 61 D9         [24] 1062 	lcall	__mulint
      00262F AB 82            [24] 1063 	mov	r3,dpl
      002631 AC 83            [24] 1064 	mov	r4,dph
      002633 15 81            [12] 1065 	dec	sp
      002635 15 81            [12] 1066 	dec	sp
      002637 D0 05            [24] 1067 	pop	ar5
      002639 D0 06            [24] 1068 	pop	ar6
      00263B D0 07            [24] 1069 	pop	ar7
      00263D EB               [12] 1070 	mov	a,r3
      00263E 2D               [12] 1071 	add	a,r5
      00263F FD               [12] 1072 	mov	r5,a
      002640 EC               [12] 1073 	mov	a,r4
      002641 3E               [12] 1074 	addc	a,r6
      002642 FE               [12] 1075 	mov	r6,a
      002643 74 04            [12] 1076 	mov	a,#0x04
      002645 2D               [12] 1077 	add	a,r5
      002646 FD               [12] 1078 	mov	r5,a
      002647 E4               [12] 1079 	clr	a
      002648 3E               [12] 1080 	addc	a,r6
      002649 FE               [12] 1081 	mov	r6,a
      00264A 8D 82            [24] 1082 	mov	dpl,r5
      00264C 8E 83            [24] 1083 	mov	dph,r6
      00264E 8F F0            [24] 1084 	mov	b,r7
      002650 12 66 39         [24] 1085 	lcall	__gptrget
      002653 FF               [12] 1086 	mov	r7,a
      002654 A3               [24] 1087 	inc	dptr
      002655 12 66 39         [24] 1088 	lcall	__gptrget
      002658 FE               [12] 1089 	mov	r6,a
      002659 BF FF 05         [24] 1090 	cjne	r7,#0xff,00216$
      00265C BE 7F 02         [24] 1091 	cjne	r6,#0x7f,00216$
      00265F 80 14            [24] 1092 	sjmp	00126$
      002661                       1093 00216$:
      002661 A8 08            [24] 1094 	mov	r0,_bp
      002663 08               [12] 1095 	inc	r0
      002664 86 82            [24] 1096 	mov	dpl,@r0
      002666 08               [12] 1097 	inc	r0
      002667 86 83            [24] 1098 	mov	dph,@r0
      002669 08               [12] 1099 	inc	r0
      00266A 86 F0            [24] 1100 	mov	b,@r0
      00266C EF               [12] 1101 	mov	a,r7
      00266D 12 5E E9         [24] 1102 	lcall	__gptrput
      002670 A3               [24] 1103 	inc	dptr
      002671 EE               [12] 1104 	mov	a,r6
      002672 12 5E E9         [24] 1105 	lcall	__gptrput
      002675                       1106 00126$:
                                   1107 ;	sm.c:58: if (state->current == state->final) {
      002675 A8 08            [24] 1108 	mov	r0,_bp
      002677 08               [12] 1109 	inc	r0
      002678 86 82            [24] 1110 	mov	dpl,@r0
      00267A 08               [12] 1111 	inc	r0
      00267B 86 83            [24] 1112 	mov	dph,@r0
      00267D 08               [12] 1113 	inc	r0
      00267E 86 F0            [24] 1114 	mov	b,@r0
      002680 12 66 39         [24] 1115 	lcall	__gptrget
      002683 FE               [12] 1116 	mov	r6,a
      002684 A3               [24] 1117 	inc	dptr
      002685 12 66 39         [24] 1118 	lcall	__gptrget
      002688 FF               [12] 1119 	mov	r7,a
      002689 E5 08            [12] 1120 	mov	a,_bp
      00268B 24 04            [12] 1121 	add	a,#0x04
      00268D F8               [12] 1122 	mov	r0,a
      00268E 86 82            [24] 1123 	mov	dpl,@r0
      002690 08               [12] 1124 	inc	r0
      002691 86 83            [24] 1125 	mov	dph,@r0
      002693 08               [12] 1126 	inc	r0
      002694 86 F0            [24] 1127 	mov	b,@r0
      002696 12 66 39         [24] 1128 	lcall	__gptrget
      002699 FC               [12] 1129 	mov	r4,a
      00269A A3               [24] 1130 	inc	dptr
      00269B 12 66 39         [24] 1131 	lcall	__gptrget
      00269E FD               [12] 1132 	mov	r5,a
      00269F EE               [12] 1133 	mov	a,r6
      0026A0 B5 04 0D         [24] 1134 	cjne	a,ar4,00130$
      0026A3 EF               [12] 1135 	mov	a,r7
      0026A4 B5 05 09         [24] 1136 	cjne	a,ar5,00130$
                                   1137 ;	sm.c:59: ret = 0;
      0026A7 E5 08            [12] 1138 	mov	a,_bp
      0026A9 24 1D            [12] 1139 	add	a,#0x1d
      0026AB F8               [12] 1140 	mov	r0,a
      0026AC E4               [12] 1141 	clr	a
      0026AD F6               [12] 1142 	mov	@r0,a
      0026AE 08               [12] 1143 	inc	r0
      0026AF F6               [12] 1144 	mov	@r0,a
                                   1145 ;	sm.c:63: error:
      0026B0                       1146 00130$:
                                   1147 ;	sm.c:64: return ret;
      0026B0 E5 08            [12] 1148 	mov	a,_bp
      0026B2 24 1D            [12] 1149 	add	a,#0x1d
      0026B4 F8               [12] 1150 	mov	r0,a
      0026B5 86 82            [24] 1151 	mov	dpl,@r0
      0026B7 08               [12] 1152 	inc	r0
      0026B8 86 83            [24] 1153 	mov	dph,@r0
                                   1154 ;	sm.c:65: }
      0026BA 85 08 81         [24] 1155 	mov	sp,_bp
      0026BD D0 08            [24] 1156 	pop	_bp
      0026BF 22               [24] 1157 	ret
                                   1158 	.area CSEG    (CODE)
                                   1159 	.area CONST   (CODE)
                                   1160 	.area XINIT   (CODE)
                                   1161 	.area CABS    (ABS,CODE)
