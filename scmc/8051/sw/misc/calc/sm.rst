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
      002090                        105 _state_init:
                           000007   106 	ar7 = 0x07
                           000006   107 	ar6 = 0x06
                           000005   108 	ar5 = 0x05
                           000004   109 	ar4 = 0x04
                           000003   110 	ar3 = 0x03
                           000002   111 	ar2 = 0x02
                           000001   112 	ar1 = 0x01
                           000000   113 	ar0 = 0x00
      002090 C0 08            [24]  114 	push	_bp
      002092 85 81 08         [24]  115 	mov	_bp,sp
                                    116 ;	sm.c:4: state->current = Initial;
      002095 AD 82            [24]  117 	mov	r5,dpl
      002097 AE 83            [24]  118 	mov	r6,dph
      002099 AF F0            [24]  119 	mov	r7,b
      00209B E5 08            [12]  120 	mov	a,_bp
      00209D 24 FC            [12]  121 	add	a,#0xfc
      00209F F8               [12]  122 	mov	r0,a
      0020A0 E6               [12]  123 	mov	a,@r0
      0020A1 12 6B 56         [24]  124 	lcall	__gptrput
      0020A4 A3               [24]  125 	inc	dptr
      0020A5 08               [12]  126 	inc	r0
      0020A6 E6               [12]  127 	mov	a,@r0
      0020A7 12 6B 56         [24]  128 	lcall	__gptrput
                                    129 ;	sm.c:5: state->final = Final;
      0020AA 74 02            [12]  130 	mov	a,#0x02
      0020AC 2D               [12]  131 	add	a,r5
      0020AD FA               [12]  132 	mov	r2,a
      0020AE E4               [12]  133 	clr	a
      0020AF 3E               [12]  134 	addc	a,r6
      0020B0 FB               [12]  135 	mov	r3,a
      0020B1 8F 04            [24]  136 	mov	ar4,r7
      0020B3 8A 82            [24]  137 	mov	dpl,r2
      0020B5 8B 83            [24]  138 	mov	dph,r3
      0020B7 8C F0            [24]  139 	mov	b,r4
      0020B9 E5 08            [12]  140 	mov	a,_bp
      0020BB 24 FA            [12]  141 	add	a,#0xfa
      0020BD F8               [12]  142 	mov	r0,a
      0020BE E6               [12]  143 	mov	a,@r0
      0020BF 12 6B 56         [24]  144 	lcall	__gptrput
      0020C2 A3               [24]  145 	inc	dptr
      0020C3 08               [12]  146 	inc	r0
      0020C4 E6               [12]  147 	mov	a,@r0
      0020C5 12 6B 56         [24]  148 	lcall	__gptrput
                                    149 ;	sm.c:6: state->spurious = Spurious;
      0020C8 74 04            [12]  150 	mov	a,#0x04
      0020CA 2D               [12]  151 	add	a,r5
      0020CB FA               [12]  152 	mov	r2,a
      0020CC E4               [12]  153 	clr	a
      0020CD 3E               [12]  154 	addc	a,r6
      0020CE FB               [12]  155 	mov	r3,a
      0020CF 8F 04            [24]  156 	mov	ar4,r7
      0020D1 8A 82            [24]  157 	mov	dpl,r2
      0020D3 8B 83            [24]  158 	mov	dph,r3
      0020D5 8C F0            [24]  159 	mov	b,r4
      0020D7 E5 08            [12]  160 	mov	a,_bp
      0020D9 24 F8            [12]  161 	add	a,#0xf8
      0020DB F8               [12]  162 	mov	r0,a
      0020DC E6               [12]  163 	mov	a,@r0
      0020DD 12 6B 56         [24]  164 	lcall	__gptrput
      0020E0 A3               [24]  165 	inc	dptr
      0020E1 08               [12]  166 	inc	r0
      0020E2 E6               [12]  167 	mov	a,@r0
      0020E3 12 6B 56         [24]  168 	lcall	__gptrput
                                    169 ;	sm.c:7: state->deltas = Deltas;
      0020E6 74 06            [12]  170 	mov	a,#0x06
      0020E8 2D               [12]  171 	add	a,r5
      0020E9 FA               [12]  172 	mov	r2,a
      0020EA E4               [12]  173 	clr	a
      0020EB 3E               [12]  174 	addc	a,r6
      0020EC FB               [12]  175 	mov	r3,a
      0020ED 8F 04            [24]  176 	mov	ar4,r7
      0020EF 8A 82            [24]  177 	mov	dpl,r2
      0020F1 8B 83            [24]  178 	mov	dph,r3
      0020F3 8C F0            [24]  179 	mov	b,r4
      0020F5 E5 08            [12]  180 	mov	a,_bp
      0020F7 24 F5            [12]  181 	add	a,#0xf5
      0020F9 F8               [12]  182 	mov	r0,a
      0020FA E6               [12]  183 	mov	a,@r0
      0020FB 12 6B 56         [24]  184 	lcall	__gptrput
      0020FE A3               [24]  185 	inc	dptr
      0020FF 08               [12]  186 	inc	r0
      002100 E6               [12]  187 	mov	a,@r0
      002101 12 6B 56         [24]  188 	lcall	__gptrput
      002104 A3               [24]  189 	inc	dptr
      002105 08               [12]  190 	inc	r0
      002106 E6               [12]  191 	mov	a,@r0
      002107 12 6B 56         [24]  192 	lcall	__gptrput
                                    193 ;	sm.c:8: state->ctx = Context;
      00210A 74 09            [12]  194 	mov	a,#0x09
      00210C 2D               [12]  195 	add	a,r5
      00210D FD               [12]  196 	mov	r5,a
      00210E E4               [12]  197 	clr	a
      00210F 3E               [12]  198 	addc	a,r6
      002110 FE               [12]  199 	mov	r6,a
      002111 8D 82            [24]  200 	mov	dpl,r5
      002113 8E 83            [24]  201 	mov	dph,r6
      002115 8F F0            [24]  202 	mov	b,r7
      002117 E5 08            [12]  203 	mov	a,_bp
      002119 24 F2            [12]  204 	add	a,#0xf2
      00211B F8               [12]  205 	mov	r0,a
      00211C E6               [12]  206 	mov	a,@r0
      00211D 12 6B 56         [24]  207 	lcall	__gptrput
      002120 A3               [24]  208 	inc	dptr
      002121 08               [12]  209 	inc	r0
      002122 E6               [12]  210 	mov	a,@r0
      002123 12 6B 56         [24]  211 	lcall	__gptrput
      002126 A3               [24]  212 	inc	dptr
      002127 08               [12]  213 	inc	r0
      002128 E6               [12]  214 	mov	a,@r0
      002129 12 6B 56         [24]  215 	lcall	__gptrput
                                    216 ;	sm.c:10: return;
                                    217 ;	sm.c:11: }
      00212C D0 08            [24]  218 	pop	_bp
      00212E 22               [24]  219 	ret
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
      00212F                        230 _state_reset:
      00212F C0 08            [24]  231 	push	_bp
      002131 85 81 08         [24]  232 	mov	_bp,sp
                                    233 ;	sm.c:14: state->current = current;
      002134 E5 08            [12]  234 	mov	a,_bp
      002136 24 FC            [12]  235 	add	a,#0xfc
      002138 F8               [12]  236 	mov	r0,a
      002139 E6               [12]  237 	mov	a,@r0
      00213A 12 6B 56         [24]  238 	lcall	__gptrput
      00213D A3               [24]  239 	inc	dptr
      00213E 08               [12]  240 	inc	r0
      00213F E6               [12]  241 	mov	a,@r0
      002140 12 6B 56         [24]  242 	lcall	__gptrput
                                    243 ;	sm.c:16: return;
                                    244 ;	sm.c:17: }
      002143 D0 08            [24]  245 	pop	_bp
      002145 22               [24]  246 	ret
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
      002146                        269 _state_exec:
      002146 C0 08            [24]  270 	push	_bp
      002148 85 81 08         [24]  271 	mov	_bp,sp
      00214B C0 82            [24]  272 	push	dpl
      00214D C0 83            [24]  273 	push	dph
      00214F C0 F0            [24]  274 	push	b
      002151 E5 81            [12]  275 	mov	a,sp
      002153 24 1B            [12]  276 	add	a,#0x1b
      002155 F5 81            [12]  277 	mov	sp,a
                                    278 ;	sm.c:20: int ret = UNDEF;
      002157 E5 08            [12]  279 	mov	a,_bp
      002159 24 1D            [12]  280 	add	a,#0x1d
      00215B F8               [12]  281 	mov	r0,a
      00215C 76 00            [12]  282 	mov	@r0,#0x00
      00215E 08               [12]  283 	inc	r0
      00215F 76 80            [12]  284 	mov	@r0,#0x80
                                    285 ;	sm.c:23: if (state->current == state->final) {
      002161 A8 08            [24]  286 	mov	r0,_bp
      002163 08               [12]  287 	inc	r0
      002164 86 82            [24]  288 	mov	dpl,@r0
      002166 08               [12]  289 	inc	r0
      002167 86 83            [24]  290 	mov	dph,@r0
      002169 08               [12]  291 	inc	r0
      00216A 86 F0            [24]  292 	mov	b,@r0
      00216C 12 6F D1         [24]  293 	lcall	__gptrget
      00216F FA               [12]  294 	mov	r2,a
      002170 A3               [24]  295 	inc	dptr
      002171 12 6F D1         [24]  296 	lcall	__gptrget
      002174 FC               [12]  297 	mov	r4,a
      002175 A8 08            [24]  298 	mov	r0,_bp
      002177 08               [12]  299 	inc	r0
      002178 E5 08            [12]  300 	mov	a,_bp
      00217A 24 04            [12]  301 	add	a,#0x04
      00217C F9               [12]  302 	mov	r1,a
      00217D 74 02            [12]  303 	mov	a,#0x02
      00217F 26               [12]  304 	add	a,@r0
      002180 F7               [12]  305 	mov	@r1,a
      002181 E4               [12]  306 	clr	a
      002182 08               [12]  307 	inc	r0
      002183 36               [12]  308 	addc	a,@r0
      002184 09               [12]  309 	inc	r1
      002185 F7               [12]  310 	mov	@r1,a
      002186 08               [12]  311 	inc	r0
      002187 09               [12]  312 	inc	r1
      002188 E6               [12]  313 	mov	a,@r0
      002189 F7               [12]  314 	mov	@r1,a
      00218A E5 08            [12]  315 	mov	a,_bp
      00218C 24 04            [12]  316 	add	a,#0x04
      00218E F8               [12]  317 	mov	r0,a
      00218F 86 82            [24]  318 	mov	dpl,@r0
      002191 08               [12]  319 	inc	r0
      002192 86 83            [24]  320 	mov	dph,@r0
      002194 08               [12]  321 	inc	r0
      002195 86 F0            [24]  322 	mov	b,@r0
      002197 12 6F D1         [24]  323 	lcall	__gptrget
      00219A FB               [12]  324 	mov	r3,a
      00219B A3               [24]  325 	inc	dptr
      00219C 12 6F D1         [24]  326 	lcall	__gptrget
      00219F FF               [12]  327 	mov	r7,a
      0021A0 EA               [12]  328 	mov	a,r2
      0021A1 B5 03 10         [24]  329 	cjne	a,ar3,00102$
      0021A4 EC               [12]  330 	mov	a,r4
      0021A5 B5 07 0C         [24]  331 	cjne	a,ar7,00102$
                                    332 ;	sm.c:24: ret = 0;
      0021A8 E5 08            [12]  333 	mov	a,_bp
      0021AA 24 1D            [12]  334 	add	a,#0x1d
      0021AC F8               [12]  335 	mov	r0,a
      0021AD E4               [12]  336 	clr	a
      0021AE F6               [12]  337 	mov	@r0,a
      0021AF 08               [12]  338 	inc	r0
      0021B0 F6               [12]  339 	mov	@r0,a
                                    340 ;	sm.c:25: goto error;
      0021B1 02 26 70         [24]  341 	ljmp	00130$
      0021B4                        342 00102$:
                                    343 ;	sm.c:28: if ((state->current == UNDEF) || (state->current == state->spurious)) {
      0021B4 BA 00 05         [24]  344 	cjne	r2,#0x00,00190$
      0021B7 BC 80 02         [24]  345 	cjne	r4,#0x80,00190$
      0021BA 80 33            [24]  346 	sjmp	00103$
      0021BC                        347 00190$:
      0021BC A8 08            [24]  348 	mov	r0,_bp
      0021BE 08               [12]  349 	inc	r0
      0021BF E5 08            [12]  350 	mov	a,_bp
      0021C1 24 07            [12]  351 	add	a,#0x07
      0021C3 F9               [12]  352 	mov	r1,a
      0021C4 74 04            [12]  353 	mov	a,#0x04
      0021C6 26               [12]  354 	add	a,@r0
      0021C7 F7               [12]  355 	mov	@r1,a
      0021C8 E4               [12]  356 	clr	a
      0021C9 08               [12]  357 	inc	r0
      0021CA 36               [12]  358 	addc	a,@r0
      0021CB 09               [12]  359 	inc	r1
      0021CC F7               [12]  360 	mov	@r1,a
      0021CD 08               [12]  361 	inc	r0
      0021CE 09               [12]  362 	inc	r1
      0021CF E6               [12]  363 	mov	a,@r0
      0021D0 F7               [12]  364 	mov	@r1,a
      0021D1 E5 08            [12]  365 	mov	a,_bp
      0021D3 24 07            [12]  366 	add	a,#0x07
      0021D5 F8               [12]  367 	mov	r0,a
      0021D6 86 82            [24]  368 	mov	dpl,@r0
      0021D8 08               [12]  369 	inc	r0
      0021D9 86 83            [24]  370 	mov	dph,@r0
      0021DB 08               [12]  371 	inc	r0
      0021DC 86 F0            [24]  372 	mov	b,@r0
      0021DE 12 6F D1         [24]  373 	lcall	__gptrget
      0021E1 FB               [12]  374 	mov	r3,a
      0021E2 A3               [24]  375 	inc	dptr
      0021E3 12 6F D1         [24]  376 	lcall	__gptrget
      0021E6 FF               [12]  377 	mov	r7,a
      0021E7 EA               [12]  378 	mov	a,r2
      0021E8 B5 03 11         [24]  379 	cjne	a,ar3,00104$
      0021EB EC               [12]  380 	mov	a,r4
      0021EC B5 07 0D         [24]  381 	cjne	a,ar7,00104$
      0021EF                        382 00103$:
                                    383 ;	sm.c:29: ret = state->current;
      0021EF E5 08            [12]  384 	mov	a,_bp
      0021F1 24 1D            [12]  385 	add	a,#0x1d
      0021F3 F8               [12]  386 	mov	r0,a
      0021F4 A6 02            [24]  387 	mov	@r0,ar2
      0021F6 08               [12]  388 	inc	r0
      0021F7 A6 04            [24]  389 	mov	@r0,ar4
                                    390 ;	sm.c:30: goto error;
      0021F9 02 26 70         [24]  391 	ljmp	00130$
      0021FC                        392 00104$:
                                    393 ;	sm.c:33: for (j = 0; (state->deltas[j].current != UNDEF) || (state->deltas[j].next != UNDEF); j++)
      0021FC E5 08            [12]  394 	mov	a,_bp
      0021FE 24 0D            [12]  395 	add	a,#0x0d
      002200 F8               [12]  396 	mov	r0,a
      002201 E4               [12]  397 	clr	a
      002202 F6               [12]  398 	mov	@r0,a
      002203 08               [12]  399 	inc	r0
      002204 F6               [12]  400 	mov	@r0,a
      002205 A8 08            [24]  401 	mov	r0,_bp
      002207 08               [12]  402 	inc	r0
      002208 E5 08            [12]  403 	mov	a,_bp
      00220A 24 1A            [12]  404 	add	a,#0x1a
      00220C F9               [12]  405 	mov	r1,a
      00220D 74 09            [12]  406 	mov	a,#0x09
      00220F 26               [12]  407 	add	a,@r0
      002210 F7               [12]  408 	mov	@r1,a
      002211 E4               [12]  409 	clr	a
      002212 08               [12]  410 	inc	r0
      002213 36               [12]  411 	addc	a,@r0
      002214 09               [12]  412 	inc	r1
      002215 F7               [12]  413 	mov	@r1,a
      002216 08               [12]  414 	inc	r0
      002217 09               [12]  415 	inc	r1
      002218 E6               [12]  416 	mov	a,@r0
      002219 F7               [12]  417 	mov	@r1,a
      00221A A8 08            [24]  418 	mov	r0,_bp
      00221C 08               [12]  419 	inc	r0
      00221D E5 08            [12]  420 	mov	a,_bp
      00221F 24 0A            [12]  421 	add	a,#0x0a
      002221 F9               [12]  422 	mov	r1,a
      002222 74 06            [12]  423 	mov	a,#0x06
      002224 26               [12]  424 	add	a,@r0
      002225 F7               [12]  425 	mov	@r1,a
      002226 E4               [12]  426 	clr	a
      002227 08               [12]  427 	inc	r0
      002228 36               [12]  428 	addc	a,@r0
      002229 09               [12]  429 	inc	r1
      00222A F7               [12]  430 	mov	@r1,a
      00222B 08               [12]  431 	inc	r0
      00222C 09               [12]  432 	inc	r1
      00222D E6               [12]  433 	mov	a,@r0
      00222E F7               [12]  434 	mov	@r1,a
      00222F E4               [12]  435 	clr	a
      002230 FA               [12]  436 	mov	r2,a
      002231 FF               [12]  437 	mov	r7,a
      002232 E5 08            [12]  438 	mov	a,_bp
      002234 24 0F            [12]  439 	add	a,#0x0f
      002236 F8               [12]  440 	mov	r0,a
      002237 E4               [12]  441 	clr	a
      002238 F6               [12]  442 	mov	@r0,a
      002239 08               [12]  443 	inc	r0
      00223A F6               [12]  444 	mov	@r0,a
      00223B E5 08            [12]  445 	mov	a,_bp
      00223D 24 11            [12]  446 	add	a,#0x11
      00223F F8               [12]  447 	mov	r0,a
      002240 E4               [12]  448 	clr	a
      002241 F6               [12]  449 	mov	@r0,a
      002242 08               [12]  450 	inc	r0
      002243 F6               [12]  451 	mov	@r0,a
      002244 E5 08            [12]  452 	mov	a,_bp
      002246 24 13            [12]  453 	add	a,#0x13
      002248 F8               [12]  454 	mov	r0,a
      002249 E4               [12]  455 	clr	a
      00224A F6               [12]  456 	mov	@r0,a
      00224B 08               [12]  457 	inc	r0
      00224C F6               [12]  458 	mov	@r0,a
      00224D                        459 00133$:
      00224D E5 08            [12]  460 	mov	a,_bp
      00224F 24 0A            [12]  461 	add	a,#0x0a
      002251 F8               [12]  462 	mov	r0,a
      002252 86 82            [24]  463 	mov	dpl,@r0
      002254 08               [12]  464 	inc	r0
      002255 86 83            [24]  465 	mov	dph,@r0
      002257 08               [12]  466 	inc	r0
      002258 86 F0            [24]  467 	mov	b,@r0
      00225A E5 08            [12]  468 	mov	a,_bp
      00225C 24 15            [12]  469 	add	a,#0x15
      00225E F9               [12]  470 	mov	r1,a
      00225F 12 6F D1         [24]  471 	lcall	__gptrget
      002262 F7               [12]  472 	mov	@r1,a
      002263 A3               [24]  473 	inc	dptr
      002264 12 6F D1         [24]  474 	lcall	__gptrget
      002267 09               [12]  475 	inc	r1
      002268 F7               [12]  476 	mov	@r1,a
      002269 A3               [24]  477 	inc	dptr
      00226A 12 6F D1         [24]  478 	lcall	__gptrget
      00226D 09               [12]  479 	inc	r1
      00226E F7               [12]  480 	mov	@r1,a
      00226F E5 08            [12]  481 	mov	a,_bp
      002271 24 15            [12]  482 	add	a,#0x15
      002273 F8               [12]  483 	mov	r0,a
      002274 E5 08            [12]  484 	mov	a,_bp
      002276 24 13            [12]  485 	add	a,#0x13
      002278 F9               [12]  486 	mov	r1,a
      002279 E7               [12]  487 	mov	a,@r1
      00227A 26               [12]  488 	add	a,@r0
      00227B FC               [12]  489 	mov	r4,a
      00227C 09               [12]  490 	inc	r1
      00227D E7               [12]  491 	mov	a,@r1
      00227E 08               [12]  492 	inc	r0
      00227F 36               [12]  493 	addc	a,@r0
      002280 FD               [12]  494 	mov	r5,a
      002281 08               [12]  495 	inc	r0
      002282 86 06            [24]  496 	mov	ar6,@r0
      002284 8C 82            [24]  497 	mov	dpl,r4
      002286 8D 83            [24]  498 	mov	dph,r5
      002288 8E F0            [24]  499 	mov	b,r6
      00228A 12 6F D1         [24]  500 	lcall	__gptrget
      00228D FC               [12]  501 	mov	r4,a
      00228E A3               [24]  502 	inc	dptr
      00228F 12 6F D1         [24]  503 	lcall	__gptrget
      002292 FD               [12]  504 	mov	r5,a
      002293 BC 00 37         [24]  505 	cjne	r4,#0x00,00132$
      002296 BD 80 34         [24]  506 	cjne	r5,#0x80,00132$
      002299 E5 08            [12]  507 	mov	a,_bp
      00229B 24 15            [12]  508 	add	a,#0x15
      00229D F8               [12]  509 	mov	r0,a
      00229E E5 08            [12]  510 	mov	a,_bp
      0022A0 24 13            [12]  511 	add	a,#0x13
      0022A2 F9               [12]  512 	mov	r1,a
      0022A3 E7               [12]  513 	mov	a,@r1
      0022A4 26               [12]  514 	add	a,@r0
      0022A5 FC               [12]  515 	mov	r4,a
      0022A6 09               [12]  516 	inc	r1
      0022A7 E7               [12]  517 	mov	a,@r1
      0022A8 08               [12]  518 	inc	r0
      0022A9 36               [12]  519 	addc	a,@r0
      0022AA FD               [12]  520 	mov	r5,a
      0022AB 08               [12]  521 	inc	r0
      0022AC 86 06            [24]  522 	mov	ar6,@r0
      0022AE 74 04            [12]  523 	mov	a,#0x04
      0022B0 2C               [12]  524 	add	a,r4
      0022B1 FC               [12]  525 	mov	r4,a
      0022B2 E4               [12]  526 	clr	a
      0022B3 3D               [12]  527 	addc	a,r5
      0022B4 FD               [12]  528 	mov	r5,a
      0022B5 8C 82            [24]  529 	mov	dpl,r4
      0022B7 8D 83            [24]  530 	mov	dph,r5
      0022B9 8E F0            [24]  531 	mov	b,r6
      0022BB 12 6F D1         [24]  532 	lcall	__gptrget
      0022BE FC               [12]  533 	mov	r4,a
      0022BF A3               [24]  534 	inc	dptr
      0022C0 12 6F D1         [24]  535 	lcall	__gptrget
      0022C3 FD               [12]  536 	mov	r5,a
      0022C4 BC 00 06         [24]  537 	cjne	r4,#0x00,00195$
      0022C7 BD 80 03         [24]  538 	cjne	r5,#0x80,00195$
      0022CA 02 25 1B         [24]  539 	ljmp	00119$
      0022CD                        540 00195$:
      0022CD                        541 00132$:
                                    542 ;	sm.c:35: ((state->deltas[j].current == state->current) || (state->deltas[j].current == ANY)) &&
      0022CD E5 08            [12]  543 	mov	a,_bp
      0022CF 24 0A            [12]  544 	add	a,#0x0a
      0022D1 F8               [12]  545 	mov	r0,a
      0022D2 86 82            [24]  546 	mov	dpl,@r0
      0022D4 08               [12]  547 	inc	r0
      0022D5 86 83            [24]  548 	mov	dph,@r0
      0022D7 08               [12]  549 	inc	r0
      0022D8 86 F0            [24]  550 	mov	b,@r0
      0022DA 12 6F D1         [24]  551 	lcall	__gptrget
      0022DD FC               [12]  552 	mov	r4,a
      0022DE A3               [24]  553 	inc	dptr
      0022DF 12 6F D1         [24]  554 	lcall	__gptrget
      0022E2 FD               [12]  555 	mov	r5,a
      0022E3 A3               [24]  556 	inc	dptr
      0022E4 12 6F D1         [24]  557 	lcall	__gptrget
      0022E7 FE               [12]  558 	mov	r6,a
      0022E8 E5 08            [12]  559 	mov	a,_bp
      0022EA 24 0F            [12]  560 	add	a,#0x0f
      0022EC F8               [12]  561 	mov	r0,a
      0022ED E6               [12]  562 	mov	a,@r0
      0022EE 2C               [12]  563 	add	a,r4
      0022EF FC               [12]  564 	mov	r4,a
      0022F0 08               [12]  565 	inc	r0
      0022F1 E6               [12]  566 	mov	a,@r0
      0022F2 3D               [12]  567 	addc	a,r5
      0022F3 FD               [12]  568 	mov	r5,a
      0022F4 8C 82            [24]  569 	mov	dpl,r4
      0022F6 8D 83            [24]  570 	mov	dph,r5
      0022F8 8E F0            [24]  571 	mov	b,r6
      0022FA 12 6F D1         [24]  572 	lcall	__gptrget
      0022FD FC               [12]  573 	mov	r4,a
      0022FE A3               [24]  574 	inc	dptr
      0022FF 12 6F D1         [24]  575 	lcall	__gptrget
      002302 FB               [12]  576 	mov	r3,a
      002303 A8 08            [24]  577 	mov	r0,_bp
      002305 08               [12]  578 	inc	r0
      002306 86 82            [24]  579 	mov	dpl,@r0
      002308 08               [12]  580 	inc	r0
      002309 86 83            [24]  581 	mov	dph,@r0
      00230B 08               [12]  582 	inc	r0
      00230C 86 F0            [24]  583 	mov	b,@r0
      00230E 12 6F D1         [24]  584 	lcall	__gptrget
      002311 FD               [12]  585 	mov	r5,a
      002312 A3               [24]  586 	inc	dptr
      002313 12 6F D1         [24]  587 	lcall	__gptrget
      002316 FE               [12]  588 	mov	r6,a
      002317 EC               [12]  589 	mov	a,r4
      002318 B5 05 06         [24]  590 	cjne	a,ar5,00196$
      00231B EB               [12]  591 	mov	a,r3
      00231C B5 06 02         [24]  592 	cjne	a,ar6,00196$
      00231F 80 0B            [24]  593 	sjmp	00117$
      002321                        594 00196$:
      002321 BC FF 05         [24]  595 	cjne	r4,#0xff,00197$
      002324 BB 7F 02         [24]  596 	cjne	r3,#0x7f,00197$
      002327 80 03            [24]  597 	sjmp	00198$
      002329                        598 00197$:
      002329 02 24 E2         [24]  599 	ljmp	00118$
      00232C                        600 00198$:
      00232C                        601 00117$:
                                    602 ;	sm.c:36: ((state->deltas[j].event == event) || (state->deltas[j].event == ANY))
      00232C E5 08            [12]  603 	mov	a,_bp
      00232E 24 0A            [12]  604 	add	a,#0x0a
      002330 F8               [12]  605 	mov	r0,a
      002331 86 82            [24]  606 	mov	dpl,@r0
      002333 08               [12]  607 	inc	r0
      002334 86 83            [24]  608 	mov	dph,@r0
      002336 08               [12]  609 	inc	r0
      002337 86 F0            [24]  610 	mov	b,@r0
      002339 12 6F D1         [24]  611 	lcall	__gptrget
      00233C FC               [12]  612 	mov	r4,a
      00233D A3               [24]  613 	inc	dptr
      00233E 12 6F D1         [24]  614 	lcall	__gptrget
      002341 FD               [12]  615 	mov	r5,a
      002342 A3               [24]  616 	inc	dptr
      002343 12 6F D1         [24]  617 	lcall	__gptrget
      002346 FE               [12]  618 	mov	r6,a
      002347 E5 08            [12]  619 	mov	a,_bp
      002349 24 11            [12]  620 	add	a,#0x11
      00234B F8               [12]  621 	mov	r0,a
      00234C E6               [12]  622 	mov	a,@r0
      00234D 2C               [12]  623 	add	a,r4
      00234E FC               [12]  624 	mov	r4,a
      00234F 08               [12]  625 	inc	r0
      002350 E6               [12]  626 	mov	a,@r0
      002351 3D               [12]  627 	addc	a,r5
      002352 FD               [12]  628 	mov	r5,a
      002353 74 02            [12]  629 	mov	a,#0x02
      002355 2C               [12]  630 	add	a,r4
      002356 FC               [12]  631 	mov	r4,a
      002357 E4               [12]  632 	clr	a
      002358 3D               [12]  633 	addc	a,r5
      002359 FD               [12]  634 	mov	r5,a
      00235A 8C 82            [24]  635 	mov	dpl,r4
      00235C 8D 83            [24]  636 	mov	dph,r5
      00235E 8E F0            [24]  637 	mov	b,r6
      002360 12 6F D1         [24]  638 	lcall	__gptrget
      002363 FE               [12]  639 	mov	r6,a
      002364 A3               [24]  640 	inc	dptr
      002365 12 6F D1         [24]  641 	lcall	__gptrget
      002368 FD               [12]  642 	mov	r5,a
      002369 E5 08            [12]  643 	mov	a,_bp
      00236B 24 FC            [12]  644 	add	a,#0xfc
      00236D F8               [12]  645 	mov	r0,a
      00236E E6               [12]  646 	mov	a,@r0
      00236F B5 06 07         [24]  647 	cjne	a,ar6,00199$
      002372 08               [12]  648 	inc	r0
      002373 E6               [12]  649 	mov	a,@r0
      002374 B5 05 02         [24]  650 	cjne	a,ar5,00199$
      002377 80 0B            [24]  651 	sjmp	00113$
      002379                        652 00199$:
      002379 BE FF 05         [24]  653 	cjne	r6,#0xff,00200$
      00237C BD 7F 02         [24]  654 	cjne	r5,#0x7f,00200$
      00237F 80 03            [24]  655 	sjmp	00201$
      002381                        656 00200$:
      002381 02 24 E2         [24]  657 	ljmp	00118$
      002384                        658 00201$:
      002384                        659 00113$:
                                    660 ;	sm.c:38: if (state->deltas[j].predicate)
      002384 E5 08            [12]  661 	mov	a,_bp
      002386 24 0A            [12]  662 	add	a,#0x0a
      002388 F8               [12]  663 	mov	r0,a
      002389 86 82            [24]  664 	mov	dpl,@r0
      00238B 08               [12]  665 	inc	r0
      00238C 86 83            [24]  666 	mov	dph,@r0
      00238E 08               [12]  667 	inc	r0
      00238F 86 F0            [24]  668 	mov	b,@r0
      002391 12 6F D1         [24]  669 	lcall	__gptrget
      002394 FC               [12]  670 	mov	r4,a
      002395 A3               [24]  671 	inc	dptr
      002396 12 6F D1         [24]  672 	lcall	__gptrget
      002399 FD               [12]  673 	mov	r5,a
      00239A A3               [24]  674 	inc	dptr
      00239B 12 6F D1         [24]  675 	lcall	__gptrget
      00239E FE               [12]  676 	mov	r6,a
      00239F E5 08            [12]  677 	mov	a,_bp
      0023A1 24 11            [12]  678 	add	a,#0x11
      0023A3 F8               [12]  679 	mov	r0,a
      0023A4 E5 08            [12]  680 	mov	a,_bp
      0023A6 24 15            [12]  681 	add	a,#0x15
      0023A8 F9               [12]  682 	mov	r1,a
      0023A9 E6               [12]  683 	mov	a,@r0
      0023AA 2C               [12]  684 	add	a,r4
      0023AB F7               [12]  685 	mov	@r1,a
      0023AC 08               [12]  686 	inc	r0
      0023AD E6               [12]  687 	mov	a,@r0
      0023AE 3D               [12]  688 	addc	a,r5
      0023AF 09               [12]  689 	inc	r1
      0023B0 F7               [12]  690 	mov	@r1,a
      0023B1 09               [12]  691 	inc	r1
      0023B2 A7 06            [24]  692 	mov	@r1,ar6
      0023B4 E5 08            [12]  693 	mov	a,_bp
      0023B6 24 15            [12]  694 	add	a,#0x15
      0023B8 F8               [12]  695 	mov	r0,a
      0023B9 74 06            [12]  696 	mov	a,#0x06
      0023BB 26               [12]  697 	add	a,@r0
      0023BC FC               [12]  698 	mov	r4,a
      0023BD E4               [12]  699 	clr	a
      0023BE 08               [12]  700 	inc	r0
      0023BF 36               [12]  701 	addc	a,@r0
      0023C0 FD               [12]  702 	mov	r5,a
      0023C1 08               [12]  703 	inc	r0
      0023C2 86 06            [24]  704 	mov	ar6,@r0
      0023C4 8C 82            [24]  705 	mov	dpl,r4
      0023C6 8D 83            [24]  706 	mov	dph,r5
      0023C8 8E F0            [24]  707 	mov	b,r6
      0023CA 12 6F D1         [24]  708 	lcall	__gptrget
      0023CD FC               [12]  709 	mov	r4,a
      0023CE A3               [24]  710 	inc	dptr
      0023CF 12 6F D1         [24]  711 	lcall	__gptrget
      0023D2 FD               [12]  712 	mov	r5,a
      0023D3 4C               [12]  713 	orl	a,r4
      0023D4 60 60            [24]  714 	jz	00109$
                                    715 ;	sm.c:39: if (!state->deltas[j].predicate(state->ctx, &(state->deltas[j]))) continue;
      0023D6 C0 02            [24]  716 	push	ar2
      0023D8 C0 07            [24]  717 	push	ar7
      0023DA E5 08            [12]  718 	mov	a,_bp
      0023DC 24 1A            [12]  719 	add	a,#0x1a
      0023DE F8               [12]  720 	mov	r0,a
      0023DF 86 82            [24]  721 	mov	dpl,@r0
      0023E1 08               [12]  722 	inc	r0
      0023E2 86 83            [24]  723 	mov	dph,@r0
      0023E4 08               [12]  724 	inc	r0
      0023E5 86 F0            [24]  725 	mov	b,@r0
      0023E7 12 6F D1         [24]  726 	lcall	__gptrget
      0023EA FA               [12]  727 	mov	r2,a
      0023EB A3               [24]  728 	inc	dptr
      0023EC 12 6F D1         [24]  729 	lcall	__gptrget
      0023EF FE               [12]  730 	mov	r6,a
      0023F0 A3               [24]  731 	inc	dptr
      0023F1 12 6F D1         [24]  732 	lcall	__gptrget
      0023F4 FF               [12]  733 	mov	r7,a
      0023F5 C0 05            [24]  734 	push	ar5
      0023F7 C0 04            [24]  735 	push	ar4
      0023F9 C0 02            [24]  736 	push	ar2
      0023FB E5 08            [12]  737 	mov	a,_bp
      0023FD 24 15            [12]  738 	add	a,#0x15
      0023FF F8               [12]  739 	mov	r0,a
      002400 E6               [12]  740 	mov	a,@r0
      002401 C0 E0            [24]  741 	push	acc
      002403 08               [12]  742 	inc	r0
      002404 E6               [12]  743 	mov	a,@r0
      002405 C0 E0            [24]  744 	push	acc
      002407 08               [12]  745 	inc	r0
      002408 E6               [12]  746 	mov	a,@r0
      002409 C0 E0            [24]  747 	push	acc
      00240B 12 24 10         [24]  748 	lcall	00203$
      00240E 80 0B            [24]  749 	sjmp	00204$
      002410                        750 00203$:
      002410 C0 04            [24]  751 	push	ar4
      002412 C0 05            [24]  752 	push	ar5
      002414 8A 82            [24]  753 	mov	dpl,r2
      002416 8E 83            [24]  754 	mov	dph,r6
      002418 8F F0            [24]  755 	mov	b,r7
      00241A 22               [24]  756 	ret
      00241B                        757 00204$:
      00241B AE 82            [24]  758 	mov	r6,dpl
      00241D AF 83            [24]  759 	mov	r7,dph
      00241F 15 81            [12]  760 	dec	sp
      002421 15 81            [12]  761 	dec	sp
      002423 15 81            [12]  762 	dec	sp
      002425 D0 02            [24]  763 	pop	ar2
      002427 D0 04            [24]  764 	pop	ar4
      002429 D0 05            [24]  765 	pop	ar5
      00242B EE               [12]  766 	mov	a,r6
      00242C 4F               [12]  767 	orl	a,r7
      00242D D0 07            [24]  768 	pop	ar7
      00242F D0 02            [24]  769 	pop	ar2
      002431 70 03            [24]  770 	jnz	00205$
      002433 02 24 E2         [24]  771 	ljmp	00118$
      002436                        772 00205$:
      002436                        773 00109$:
                                    774 ;	sm.c:40: if (state->deltas[j].callback)
      002436 E5 08            [12]  775 	mov	a,_bp
      002438 24 0A            [12]  776 	add	a,#0x0a
      00243A F8               [12]  777 	mov	r0,a
      00243B 86 82            [24]  778 	mov	dpl,@r0
      00243D 08               [12]  779 	inc	r0
      00243E 86 83            [24]  780 	mov	dph,@r0
      002440 08               [12]  781 	inc	r0
      002441 86 F0            [24]  782 	mov	b,@r0
      002443 12 6F D1         [24]  783 	lcall	__gptrget
      002446 FC               [12]  784 	mov	r4,a
      002447 A3               [24]  785 	inc	dptr
      002448 12 6F D1         [24]  786 	lcall	__gptrget
      00244B FD               [12]  787 	mov	r5,a
      00244C A3               [24]  788 	inc	dptr
      00244D 12 6F D1         [24]  789 	lcall	__gptrget
      002450 FE               [12]  790 	mov	r6,a
      002451 E5 08            [12]  791 	mov	a,_bp
      002453 24 11            [12]  792 	add	a,#0x11
      002455 F8               [12]  793 	mov	r0,a
      002456 E6               [12]  794 	mov	a,@r0
      002457 2C               [12]  795 	add	a,r4
      002458 FF               [12]  796 	mov	r7,a
      002459 08               [12]  797 	inc	r0
      00245A E6               [12]  798 	mov	a,@r0
      00245B 3D               [12]  799 	addc	a,r5
      00245C FB               [12]  800 	mov	r3,a
      00245D 8E 02            [24]  801 	mov	ar2,r6
      00245F 74 08            [12]  802 	mov	a,#0x08
      002461 2F               [12]  803 	add	a,r7
      002462 FC               [12]  804 	mov	r4,a
      002463 E4               [12]  805 	clr	a
      002464 3B               [12]  806 	addc	a,r3
      002465 FD               [12]  807 	mov	r5,a
      002466 8A 06            [24]  808 	mov	ar6,r2
      002468 8C 82            [24]  809 	mov	dpl,r4
      00246A 8D 83            [24]  810 	mov	dph,r5
      00246C 8E F0            [24]  811 	mov	b,r6
      00246E E5 08            [12]  812 	mov	a,_bp
      002470 24 18            [12]  813 	add	a,#0x18
      002472 F8               [12]  814 	mov	r0,a
      002473 12 6F D1         [24]  815 	lcall	__gptrget
      002476 F6               [12]  816 	mov	@r0,a
      002477 A3               [24]  817 	inc	dptr
      002478 12 6F D1         [24]  818 	lcall	__gptrget
      00247B 08               [12]  819 	inc	r0
      00247C F6               [12]  820 	mov	@r0,a
      00247D E5 08            [12]  821 	mov	a,_bp
      00247F 24 18            [12]  822 	add	a,#0x18
      002481 F8               [12]  823 	mov	r0,a
      002482 E6               [12]  824 	mov	a,@r0
      002483 08               [12]  825 	inc	r0
      002484 46               [12]  826 	orl	a,@r0
      002485 60 4F            [24]  827 	jz	00111$
                                    828 ;	sm.c:41: ret = state->deltas[j].callback(state->ctx, &(state->deltas[j]));
      002487 E5 08            [12]  829 	mov	a,_bp
      002489 24 1A            [12]  830 	add	a,#0x1a
      00248B F8               [12]  831 	mov	r0,a
      00248C 86 82            [24]  832 	mov	dpl,@r0
      00248E 08               [12]  833 	inc	r0
      00248F 86 83            [24]  834 	mov	dph,@r0
      002491 08               [12]  835 	inc	r0
      002492 86 F0            [24]  836 	mov	b,@r0
      002494 12 6F D1         [24]  837 	lcall	__gptrget
      002497 FC               [12]  838 	mov	r4,a
      002498 A3               [24]  839 	inc	dptr
      002499 12 6F D1         [24]  840 	lcall	__gptrget
      00249C FD               [12]  841 	mov	r5,a
      00249D A3               [24]  842 	inc	dptr
      00249E 12 6F D1         [24]  843 	lcall	__gptrget
      0024A1 FE               [12]  844 	mov	r6,a
      0024A2 C0 07            [24]  845 	push	ar7
      0024A4 C0 03            [24]  846 	push	ar3
      0024A6 C0 02            [24]  847 	push	ar2
      0024A8 12 24 AD         [24]  848 	lcall	00207$
      0024AB 80 13            [24]  849 	sjmp	00208$
      0024AD                        850 00207$:
      0024AD E5 08            [12]  851 	mov	a,_bp
      0024AF 24 18            [12]  852 	add	a,#0x18
      0024B1 F8               [12]  853 	mov	r0,a
      0024B2 E6               [12]  854 	mov	a,@r0
      0024B3 C0 E0            [24]  855 	push	acc
      0024B5 08               [12]  856 	inc	r0
      0024B6 E6               [12]  857 	mov	a,@r0
      0024B7 C0 E0            [24]  858 	push	acc
      0024B9 8C 82            [24]  859 	mov	dpl,r4
      0024BB 8D 83            [24]  860 	mov	dph,r5
      0024BD 8E F0            [24]  861 	mov	b,r6
      0024BF 22               [24]  862 	ret
      0024C0                        863 00208$:
      0024C0 AD 82            [24]  864 	mov	r5,dpl
      0024C2 AE 83            [24]  865 	mov	r6,dph
      0024C4 15 81            [12]  866 	dec	sp
      0024C6 15 81            [12]  867 	dec	sp
      0024C8 15 81            [12]  868 	dec	sp
      0024CA E5 08            [12]  869 	mov	a,_bp
      0024CC 24 1D            [12]  870 	add	a,#0x1d
      0024CE F8               [12]  871 	mov	r0,a
      0024CF A6 05            [24]  872 	mov	@r0,ar5
      0024D1 08               [12]  873 	inc	r0
      0024D2 A6 06            [24]  874 	mov	@r0,ar6
      0024D4 80 45            [24]  875 	sjmp	00119$
      0024D6                        876 00111$:
                                    877 ;	sm.c:42: else ret = 1;
      0024D6 E5 08            [12]  878 	mov	a,_bp
      0024D8 24 1D            [12]  879 	add	a,#0x1d
      0024DA F8               [12]  880 	mov	r0,a
      0024DB 76 01            [12]  881 	mov	@r0,#0x01
      0024DD 08               [12]  882 	inc	r0
      0024DE 76 00            [12]  883 	mov	@r0,#0x00
                                    884 ;	sm.c:43: break;
      0024E0 80 39            [24]  885 	sjmp	00119$
      0024E2                        886 00118$:
                                    887 ;	sm.c:33: for (j = 0; (state->deltas[j].current != UNDEF) || (state->deltas[j].next != UNDEF); j++)
      0024E2 E5 08            [12]  888 	mov	a,_bp
      0024E4 24 0F            [12]  889 	add	a,#0x0f
      0024E6 F8               [12]  890 	mov	r0,a
      0024E7 74 0A            [12]  891 	mov	a,#0x0a
      0024E9 26               [12]  892 	add	a,@r0
      0024EA F6               [12]  893 	mov	@r0,a
      0024EB E4               [12]  894 	clr	a
      0024EC 08               [12]  895 	inc	r0
      0024ED 36               [12]  896 	addc	a,@r0
      0024EE F6               [12]  897 	mov	@r0,a
      0024EF E5 08            [12]  898 	mov	a,_bp
      0024F1 24 11            [12]  899 	add	a,#0x11
      0024F3 F8               [12]  900 	mov	r0,a
      0024F4 74 0A            [12]  901 	mov	a,#0x0a
      0024F6 26               [12]  902 	add	a,@r0
      0024F7 F6               [12]  903 	mov	@r0,a
      0024F8 E4               [12]  904 	clr	a
      0024F9 08               [12]  905 	inc	r0
      0024FA 36               [12]  906 	addc	a,@r0
      0024FB F6               [12]  907 	mov	@r0,a
      0024FC E5 08            [12]  908 	mov	a,_bp
      0024FE 24 13            [12]  909 	add	a,#0x13
      002500 F8               [12]  910 	mov	r0,a
      002501 74 0A            [12]  911 	mov	a,#0x0a
      002503 26               [12]  912 	add	a,@r0
      002504 F6               [12]  913 	mov	@r0,a
      002505 E4               [12]  914 	clr	a
      002506 08               [12]  915 	inc	r0
      002507 36               [12]  916 	addc	a,@r0
      002508 F6               [12]  917 	mov	@r0,a
      002509 0A               [12]  918 	inc	r2
      00250A BA 00 01         [24]  919 	cjne	r2,#0x00,00209$
      00250D 0F               [12]  920 	inc	r7
      00250E                        921 00209$:
      00250E E5 08            [12]  922 	mov	a,_bp
      002510 24 0D            [12]  923 	add	a,#0x0d
      002512 F8               [12]  924 	mov	r0,a
      002513 A6 02            [24]  925 	mov	@r0,ar2
      002515 08               [12]  926 	inc	r0
      002516 A6 07            [24]  927 	mov	@r0,ar7
      002518 02 22 4D         [24]  928 	ljmp	00133$
      00251B                        929 00119$:
                                    930 ;	sm.c:46: if (ret == UNDEF) {
      00251B E5 08            [12]  931 	mov	a,_bp
      00251D 24 1D            [12]  932 	add	a,#0x1d
      00251F F8               [12]  933 	mov	r0,a
      002520 B6 00 1C         [24]  934 	cjne	@r0,#0x00,00121$
      002523 08               [12]  935 	inc	r0
      002524 B6 80 18         [24]  936 	cjne	@r0,#0x80,00121$
                                    937 ;	sm.c:47: state->current = UNDEF;
      002527 A8 08            [24]  938 	mov	r0,_bp
      002529 08               [12]  939 	inc	r0
      00252A 86 82            [24]  940 	mov	dpl,@r0
      00252C 08               [12]  941 	inc	r0
      00252D 86 83            [24]  942 	mov	dph,@r0
      00252F 08               [12]  943 	inc	r0
      002530 86 F0            [24]  944 	mov	b,@r0
      002532 E4               [12]  945 	clr	a
      002533 12 6B 56         [24]  946 	lcall	__gptrput
      002536 A3               [24]  947 	inc	dptr
      002537 74 80            [12]  948 	mov	a,#0x80
      002539 12 6B 56         [24]  949 	lcall	__gptrput
                                    950 ;	sm.c:48: goto error;
      00253C 02 26 70         [24]  951 	ljmp	00130$
      00253F                        952 00121$:
                                    953 ;	sm.c:51: if ((ret < 0) || (ret == state->spurious)) {
      00253F E5 08            [12]  954 	mov	a,_bp
      002541 24 1D            [12]  955 	add	a,#0x1d
      002543 F8               [12]  956 	mov	r0,a
      002544 08               [12]  957 	inc	r0
      002545 E6               [12]  958 	mov	a,@r0
      002546 20 E7 28         [24]  959 	jb	acc.7,00122$
      002549 E5 08            [12]  960 	mov	a,_bp
      00254B 24 07            [12]  961 	add	a,#0x07
      00254D F8               [12]  962 	mov	r0,a
      00254E 86 82            [24]  963 	mov	dpl,@r0
      002550 08               [12]  964 	inc	r0
      002551 86 83            [24]  965 	mov	dph,@r0
      002553 08               [12]  966 	inc	r0
      002554 86 F0            [24]  967 	mov	b,@r0
      002556 12 6F D1         [24]  968 	lcall	__gptrget
      002559 FE               [12]  969 	mov	r6,a
      00255A A3               [24]  970 	inc	dptr
      00255B 12 6F D1         [24]  971 	lcall	__gptrget
      00255E FF               [12]  972 	mov	r7,a
      00255F E5 08            [12]  973 	mov	a,_bp
      002561 24 1D            [12]  974 	add	a,#0x1d
      002563 F8               [12]  975 	mov	r0,a
      002564 E6               [12]  976 	mov	a,@r0
      002565 B5 06 07         [24]  977 	cjne	a,ar6,00213$
      002568 08               [12]  978 	inc	r0
      002569 E6               [12]  979 	mov	a,@r0
      00256A B5 07 02         [24]  980 	cjne	a,ar7,00213$
      00256D 80 02            [24]  981 	sjmp	00214$
      00256F                        982 00213$:
      00256F 80 37            [24]  983 	sjmp	00123$
      002571                        984 00214$:
      002571                        985 00122$:
                                    986 ;	sm.c:52: ret = state->current = state->spurious;
      002571 E5 08            [12]  987 	mov	a,_bp
      002573 24 07            [12]  988 	add	a,#0x07
      002575 F8               [12]  989 	mov	r0,a
      002576 86 82            [24]  990 	mov	dpl,@r0
      002578 08               [12]  991 	inc	r0
      002579 86 83            [24]  992 	mov	dph,@r0
      00257B 08               [12]  993 	inc	r0
      00257C 86 F0            [24]  994 	mov	b,@r0
      00257E 12 6F D1         [24]  995 	lcall	__gptrget
      002581 FF               [12]  996 	mov	r7,a
      002582 A3               [24]  997 	inc	dptr
      002583 12 6F D1         [24]  998 	lcall	__gptrget
      002586 FE               [12]  999 	mov	r6,a
      002587 A8 08            [24] 1000 	mov	r0,_bp
      002589 08               [12] 1001 	inc	r0
      00258A 86 82            [24] 1002 	mov	dpl,@r0
      00258C 08               [12] 1003 	inc	r0
      00258D 86 83            [24] 1004 	mov	dph,@r0
      00258F 08               [12] 1005 	inc	r0
      002590 86 F0            [24] 1006 	mov	b,@r0
      002592 EF               [12] 1007 	mov	a,r7
      002593 12 6B 56         [24] 1008 	lcall	__gptrput
      002596 A3               [24] 1009 	inc	dptr
      002597 EE               [12] 1010 	mov	a,r6
      002598 12 6B 56         [24] 1011 	lcall	__gptrput
      00259B E5 08            [12] 1012 	mov	a,_bp
      00259D 24 1D            [12] 1013 	add	a,#0x1d
      00259F F8               [12] 1014 	mov	r0,a
      0025A0 A6 07            [24] 1015 	mov	@r0,ar7
      0025A2 08               [12] 1016 	inc	r0
      0025A3 A6 06            [24] 1017 	mov	@r0,ar6
                                   1018 ;	sm.c:53: goto error;
      0025A5 02 26 70         [24] 1019 	ljmp	00130$
      0025A8                       1020 00123$:
                                   1021 ;	sm.c:56: if ((ret > 0) && (state->deltas[j].next != ANY)) state->current = state->deltas[j].next;
      0025A8 E5 08            [12] 1022 	mov	a,_bp
      0025AA 24 1D            [12] 1023 	add	a,#0x1d
      0025AC F8               [12] 1024 	mov	r0,a
      0025AD C3               [12] 1025 	clr	c
      0025AE E4               [12] 1026 	clr	a
      0025AF 96               [12] 1027 	subb	a,@r0
      0025B0 74 80            [12] 1028 	mov	a,#(0x00 ^ 0x80)
      0025B2 08               [12] 1029 	inc	r0
      0025B3 86 F0            [24] 1030 	mov	b,@r0
      0025B5 63 F0 80         [24] 1031 	xrl	b,#0x80
      0025B8 95 F0            [12] 1032 	subb	a,b
      0025BA 50 79            [24] 1033 	jnc	00126$
      0025BC E5 08            [12] 1034 	mov	a,_bp
      0025BE 24 0A            [12] 1035 	add	a,#0x0a
      0025C0 F8               [12] 1036 	mov	r0,a
      0025C1 86 82            [24] 1037 	mov	dpl,@r0
      0025C3 08               [12] 1038 	inc	r0
      0025C4 86 83            [24] 1039 	mov	dph,@r0
      0025C6 08               [12] 1040 	inc	r0
      0025C7 86 F0            [24] 1041 	mov	b,@r0
      0025C9 12 6F D1         [24] 1042 	lcall	__gptrget
      0025CC FD               [12] 1043 	mov	r5,a
      0025CD A3               [24] 1044 	inc	dptr
      0025CE 12 6F D1         [24] 1045 	lcall	__gptrget
      0025D1 FE               [12] 1046 	mov	r6,a
      0025D2 A3               [24] 1047 	inc	dptr
      0025D3 12 6F D1         [24] 1048 	lcall	__gptrget
      0025D6 FF               [12] 1049 	mov	r7,a
      0025D7 C0 07            [24] 1050 	push	ar7
      0025D9 C0 06            [24] 1051 	push	ar6
      0025DB C0 05            [24] 1052 	push	ar5
      0025DD E5 08            [12] 1053 	mov	a,_bp
      0025DF 24 0D            [12] 1054 	add	a,#0x0d
      0025E1 F8               [12] 1055 	mov	r0,a
      0025E2 E6               [12] 1056 	mov	a,@r0
      0025E3 C0 E0            [24] 1057 	push	acc
      0025E5 08               [12] 1058 	inc	r0
      0025E6 E6               [12] 1059 	mov	a,@r0
      0025E7 C0 E0            [24] 1060 	push	acc
      0025E9 90 00 0A         [24] 1061 	mov	dptr,#0x000a
      0025EC 12 6B 71         [24] 1062 	lcall	__mulint
      0025EF AB 82            [24] 1063 	mov	r3,dpl
      0025F1 AC 83            [24] 1064 	mov	r4,dph
      0025F3 15 81            [12] 1065 	dec	sp
      0025F5 15 81            [12] 1066 	dec	sp
      0025F7 D0 05            [24] 1067 	pop	ar5
      0025F9 D0 06            [24] 1068 	pop	ar6
      0025FB D0 07            [24] 1069 	pop	ar7
      0025FD EB               [12] 1070 	mov	a,r3
      0025FE 2D               [12] 1071 	add	a,r5
      0025FF FD               [12] 1072 	mov	r5,a
      002600 EC               [12] 1073 	mov	a,r4
      002601 3E               [12] 1074 	addc	a,r6
      002602 FE               [12] 1075 	mov	r6,a
      002603 74 04            [12] 1076 	mov	a,#0x04
      002605 2D               [12] 1077 	add	a,r5
      002606 FD               [12] 1078 	mov	r5,a
      002607 E4               [12] 1079 	clr	a
      002608 3E               [12] 1080 	addc	a,r6
      002609 FE               [12] 1081 	mov	r6,a
      00260A 8D 82            [24] 1082 	mov	dpl,r5
      00260C 8E 83            [24] 1083 	mov	dph,r6
      00260E 8F F0            [24] 1084 	mov	b,r7
      002610 12 6F D1         [24] 1085 	lcall	__gptrget
      002613 FF               [12] 1086 	mov	r7,a
      002614 A3               [24] 1087 	inc	dptr
      002615 12 6F D1         [24] 1088 	lcall	__gptrget
      002618 FE               [12] 1089 	mov	r6,a
      002619 BF FF 05         [24] 1090 	cjne	r7,#0xff,00216$
      00261C BE 7F 02         [24] 1091 	cjne	r6,#0x7f,00216$
      00261F 80 14            [24] 1092 	sjmp	00126$
      002621                       1093 00216$:
      002621 A8 08            [24] 1094 	mov	r0,_bp
      002623 08               [12] 1095 	inc	r0
      002624 86 82            [24] 1096 	mov	dpl,@r0
      002626 08               [12] 1097 	inc	r0
      002627 86 83            [24] 1098 	mov	dph,@r0
      002629 08               [12] 1099 	inc	r0
      00262A 86 F0            [24] 1100 	mov	b,@r0
      00262C EF               [12] 1101 	mov	a,r7
      00262D 12 6B 56         [24] 1102 	lcall	__gptrput
      002630 A3               [24] 1103 	inc	dptr
      002631 EE               [12] 1104 	mov	a,r6
      002632 12 6B 56         [24] 1105 	lcall	__gptrput
      002635                       1106 00126$:
                                   1107 ;	sm.c:58: if (state->current == state->final) {
      002635 A8 08            [24] 1108 	mov	r0,_bp
      002637 08               [12] 1109 	inc	r0
      002638 86 82            [24] 1110 	mov	dpl,@r0
      00263A 08               [12] 1111 	inc	r0
      00263B 86 83            [24] 1112 	mov	dph,@r0
      00263D 08               [12] 1113 	inc	r0
      00263E 86 F0            [24] 1114 	mov	b,@r0
      002640 12 6F D1         [24] 1115 	lcall	__gptrget
      002643 FE               [12] 1116 	mov	r6,a
      002644 A3               [24] 1117 	inc	dptr
      002645 12 6F D1         [24] 1118 	lcall	__gptrget
      002648 FF               [12] 1119 	mov	r7,a
      002649 E5 08            [12] 1120 	mov	a,_bp
      00264B 24 04            [12] 1121 	add	a,#0x04
      00264D F8               [12] 1122 	mov	r0,a
      00264E 86 82            [24] 1123 	mov	dpl,@r0
      002650 08               [12] 1124 	inc	r0
      002651 86 83            [24] 1125 	mov	dph,@r0
      002653 08               [12] 1126 	inc	r0
      002654 86 F0            [24] 1127 	mov	b,@r0
      002656 12 6F D1         [24] 1128 	lcall	__gptrget
      002659 FC               [12] 1129 	mov	r4,a
      00265A A3               [24] 1130 	inc	dptr
      00265B 12 6F D1         [24] 1131 	lcall	__gptrget
      00265E FD               [12] 1132 	mov	r5,a
      00265F EE               [12] 1133 	mov	a,r6
      002660 B5 04 0D         [24] 1134 	cjne	a,ar4,00130$
      002663 EF               [12] 1135 	mov	a,r7
      002664 B5 05 09         [24] 1136 	cjne	a,ar5,00130$
                                   1137 ;	sm.c:59: ret = 0;
      002667 E5 08            [12] 1138 	mov	a,_bp
      002669 24 1D            [12] 1139 	add	a,#0x1d
      00266B F8               [12] 1140 	mov	r0,a
      00266C E4               [12] 1141 	clr	a
      00266D F6               [12] 1142 	mov	@r0,a
      00266E 08               [12] 1143 	inc	r0
      00266F F6               [12] 1144 	mov	@r0,a
                                   1145 ;	sm.c:63: error:
      002670                       1146 00130$:
                                   1147 ;	sm.c:64: return ret;
      002670 E5 08            [12] 1148 	mov	a,_bp
      002672 24 1D            [12] 1149 	add	a,#0x1d
      002674 F8               [12] 1150 	mov	r0,a
      002675 86 82            [24] 1151 	mov	dpl,@r0
      002677 08               [12] 1152 	inc	r0
      002678 86 83            [24] 1153 	mov	dph,@r0
                                   1154 ;	sm.c:65: }
      00267A 85 08 81         [24] 1155 	mov	sp,_bp
      00267D D0 08            [24] 1156 	pop	_bp
      00267F 22               [24] 1157 	ret
                                   1158 	.area CSEG    (CODE)
                                   1159 	.area CONST   (CODE)
                                   1160 	.area XINIT   (CODE)
                                   1161 	.area CABS    (ABS,CODE)
