                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stack
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _stack_init
                                     12 	.globl _stack_push
                                     13 	.globl _stack_pop
                                     14 	.globl _stack_peek
                                     15 	.globl _stack_iter_peek
                                     16 ;--------------------------------------------------------
                                     17 ; special function registers
                                     18 ;--------------------------------------------------------
                                     19 	.area RSEG    (ABS,DATA)
      000000                         20 	.org 0x0000
                                     21 ;--------------------------------------------------------
                                     22 ; special function bits
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; overlayable register banks
                                     28 ;--------------------------------------------------------
                                     29 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         30 	.ds 8
                                     31 ;--------------------------------------------------------
                                     32 ; internal ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DSEG    (DATA)
                                     35 ;--------------------------------------------------------
                                     36 ; overlayable items in internal ram 
                                     37 ;--------------------------------------------------------
                                     38 ;--------------------------------------------------------
                                     39 ; indirectly addressable internal ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area ISEG    (DATA)
                                     42 ;--------------------------------------------------------
                                     43 ; absolute internal ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area IABS    (ABS,DATA)
                                     46 	.area IABS    (ABS,DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; bit data
                                     49 ;--------------------------------------------------------
                                     50 	.area BSEG    (BIT)
                                     51 ;--------------------------------------------------------
                                     52 ; paged external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area PSEG    (PAG,XDATA)
                                     55 ;--------------------------------------------------------
                                     56 ; external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area XSEG    (XDATA)
                                     59 ;--------------------------------------------------------
                                     60 ; absolute external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area XABS    (ABS,XDATA)
                                     63 ;--------------------------------------------------------
                                     64 ; external initialized ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XISEG   (XDATA)
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
                                     94 ;Allocation info for local variables in function 'stack_init'
                                     95 ;------------------------------------------------------------
                                     96 ;s                         Allocated to registers r5 r6 r7 
                                     97 ;------------------------------------------------------------
                                     98 ;	stack.c:4: void stack_init(stack_t *s) __reentrant {
                                     99 ;	-----------------------------------------
                                    100 ;	 function stack_init
                                    101 ;	-----------------------------------------
      002678                        102 _stack_init:
                           000007   103 	ar7 = 0x07
                           000006   104 	ar6 = 0x06
                           000005   105 	ar5 = 0x05
                           000004   106 	ar4 = 0x04
                           000003   107 	ar3 = 0x03
                           000002   108 	ar2 = 0x02
                           000001   109 	ar1 = 0x01
                           000000   110 	ar0 = 0x00
      002678 AD 82            [24]  111 	mov	r5,dpl
      00267A AE 83            [24]  112 	mov	r6,dph
      00267C AF F0            [24]  113 	mov	r7,b
                                    114 ;	stack.c:5: s->N = SIZE;
      00267E 8D 02            [24]  115 	mov	ar2,r5
      002680 74 20            [12]  116 	mov	a,#0x20
      002682 2E               [12]  117 	add	a,r6
      002683 FB               [12]  118 	mov	r3,a
      002684 8F 04            [24]  119 	mov	ar4,r7
      002686 8A 82            [24]  120 	mov	dpl,r2
      002688 8B 83            [24]  121 	mov	dph,r3
      00268A 8C F0            [24]  122 	mov	b,r4
      00268C E4               [12]  123 	clr	a
      00268D 12 42 9A         [24]  124 	lcall	__gptrput
      002690 A3               [24]  125 	inc	dptr
      002691 74 08            [12]  126 	mov	a,#0x08
      002693 12 42 9A         [24]  127 	lcall	__gptrput
                                    128 ;	stack.c:6: s->p = -1l;
      002696 74 02            [12]  129 	mov	a,#0x02
      002698 2D               [12]  130 	add	a,r5
      002699 FD               [12]  131 	mov	r5,a
      00269A 74 20            [12]  132 	mov	a,#0x20
      00269C 3E               [12]  133 	addc	a,r6
      00269D FE               [12]  134 	mov	r6,a
      00269E 8D 82            [24]  135 	mov	dpl,r5
      0026A0 8E 83            [24]  136 	mov	dph,r6
      0026A2 8F F0            [24]  137 	mov	b,r7
      0026A4 74 FF            [12]  138 	mov	a,#0xff
      0026A6 12 42 9A         [24]  139 	lcall	__gptrput
      0026A9 A3               [24]  140 	inc	dptr
                                    141 ;	stack.c:8: return;
                                    142 ;	stack.c:9: }
      0026AA 02 42 9A         [24]  143 	ljmp	__gptrput
                                    144 ;------------------------------------------------------------
                                    145 ;Allocation info for local variables in function 'stack_push'
                                    146 ;------------------------------------------------------------
                                    147 ;val                       Allocated to stack - _bp -6
                                    148 ;s                         Allocated to stack - _bp +1
                                    149 ;sloc0                     Allocated to stack - _bp +4
                                    150 ;------------------------------------------------------------
                                    151 ;	stack.c:11: int stack_push(stack_t *s, long val) __reentrant {
                                    152 ;	-----------------------------------------
                                    153 ;	 function stack_push
                                    154 ;	-----------------------------------------
      0026AD                        155 _stack_push:
      0026AD C0 08            [24]  156 	push	_bp
      0026AF 85 81 08         [24]  157 	mov	_bp,sp
      0026B2 C0 82            [24]  158 	push	dpl
      0026B4 C0 83            [24]  159 	push	dph
      0026B6 C0 F0            [24]  160 	push	b
      0026B8 05 81            [12]  161 	inc	sp
      0026BA 05 81            [12]  162 	inc	sp
                                    163 ;	stack.c:12: if (s->p == (s->N - 1)) return 0;
      0026BC A8 08            [24]  164 	mov	r0,_bp
      0026BE 08               [12]  165 	inc	r0
      0026BF 74 02            [12]  166 	mov	a,#0x02
      0026C1 26               [12]  167 	add	a,@r0
      0026C2 FA               [12]  168 	mov	r2,a
      0026C3 74 20            [12]  169 	mov	a,#0x20
      0026C5 08               [12]  170 	inc	r0
      0026C6 36               [12]  171 	addc	a,@r0
      0026C7 FB               [12]  172 	mov	r3,a
      0026C8 08               [12]  173 	inc	r0
      0026C9 86 04            [24]  174 	mov	ar4,@r0
      0026CB 8A 82            [24]  175 	mov	dpl,r2
      0026CD 8B 83            [24]  176 	mov	dph,r3
      0026CF 8C F0            [24]  177 	mov	b,r4
      0026D1 E5 08            [12]  178 	mov	a,_bp
      0026D3 24 04            [12]  179 	add	a,#0x04
      0026D5 F8               [12]  180 	mov	r0,a
      0026D6 12 47 15         [24]  181 	lcall	__gptrget
      0026D9 F6               [12]  182 	mov	@r0,a
      0026DA A3               [24]  183 	inc	dptr
      0026DB 12 47 15         [24]  184 	lcall	__gptrget
      0026DE 08               [12]  185 	inc	r0
      0026DF F6               [12]  186 	mov	@r0,a
      0026E0 A8 08            [24]  187 	mov	r0,_bp
      0026E2 08               [12]  188 	inc	r0
      0026E3 86 05            [24]  189 	mov	ar5,@r0
      0026E5 74 20            [12]  190 	mov	a,#0x20
      0026E7 08               [12]  191 	inc	r0
      0026E8 26               [12]  192 	add	a,@r0
      0026E9 FE               [12]  193 	mov	r6,a
      0026EA 08               [12]  194 	inc	r0
      0026EB 86 07            [24]  195 	mov	ar7,@r0
      0026ED 8D 82            [24]  196 	mov	dpl,r5
      0026EF 8E 83            [24]  197 	mov	dph,r6
      0026F1 8F F0            [24]  198 	mov	b,r7
      0026F3 12 47 15         [24]  199 	lcall	__gptrget
      0026F6 FD               [12]  200 	mov	r5,a
      0026F7 A3               [24]  201 	inc	dptr
      0026F8 12 47 15         [24]  202 	lcall	__gptrget
      0026FB FE               [12]  203 	mov	r6,a
      0026FC 1D               [12]  204 	dec	r5
      0026FD BD FF 01         [24]  205 	cjne	r5,#0xff,00109$
      002700 1E               [12]  206 	dec	r6
      002701                        207 00109$:
      002701 E5 08            [12]  208 	mov	a,_bp
      002703 24 04            [12]  209 	add	a,#0x04
      002705 F8               [12]  210 	mov	r0,a
      002706 E6               [12]  211 	mov	a,@r0
      002707 B5 05 07         [24]  212 	cjne	a,ar5,00110$
      00270A 08               [12]  213 	inc	r0
      00270B E6               [12]  214 	mov	a,@r0
      00270C B5 06 02         [24]  215 	cjne	a,ar6,00110$
      00270F 80 02            [24]  216 	sjmp	00111$
      002711                        217 00110$:
      002711 80 05            [24]  218 	sjmp	00102$
      002713                        219 00111$:
      002713 90 00 00         [24]  220 	mov	dptr,#0x0000
      002716 80 59            [24]  221 	sjmp	00103$
      002718                        222 00102$:
                                    223 ;	stack.c:13: s->p++;
      002718 E5 08            [12]  224 	mov	a,_bp
      00271A 24 04            [12]  225 	add	a,#0x04
      00271C F8               [12]  226 	mov	r0,a
      00271D 74 01            [12]  227 	mov	a,#0x01
      00271F 26               [12]  228 	add	a,@r0
      002720 FE               [12]  229 	mov	r6,a
      002721 E4               [12]  230 	clr	a
      002722 08               [12]  231 	inc	r0
      002723 36               [12]  232 	addc	a,@r0
      002724 FF               [12]  233 	mov	r7,a
      002725 8A 82            [24]  234 	mov	dpl,r2
      002727 8B 83            [24]  235 	mov	dph,r3
      002729 8C F0            [24]  236 	mov	b,r4
      00272B EE               [12]  237 	mov	a,r6
      00272C 12 42 9A         [24]  238 	lcall	__gptrput
      00272F A3               [24]  239 	inc	dptr
      002730 EF               [12]  240 	mov	a,r7
      002731 12 42 9A         [24]  241 	lcall	__gptrput
                                    242 ;	stack.c:14: s->data[s->p] = val;
      002734 EE               [12]  243 	mov	a,r6
      002735 2E               [12]  244 	add	a,r6
      002736 FE               [12]  245 	mov	r6,a
      002737 EF               [12]  246 	mov	a,r7
      002738 33               [12]  247 	rlc	a
      002739 FF               [12]  248 	mov	r7,a
      00273A EE               [12]  249 	mov	a,r6
      00273B 2E               [12]  250 	add	a,r6
      00273C FE               [12]  251 	mov	r6,a
      00273D EF               [12]  252 	mov	a,r7
      00273E 33               [12]  253 	rlc	a
      00273F FF               [12]  254 	mov	r7,a
      002740 A8 08            [24]  255 	mov	r0,_bp
      002742 08               [12]  256 	inc	r0
      002743 EE               [12]  257 	mov	a,r6
      002744 26               [12]  258 	add	a,@r0
      002745 FE               [12]  259 	mov	r6,a
      002746 EF               [12]  260 	mov	a,r7
      002747 08               [12]  261 	inc	r0
      002748 36               [12]  262 	addc	a,@r0
      002749 FF               [12]  263 	mov	r7,a
      00274A 08               [12]  264 	inc	r0
      00274B 86 05            [24]  265 	mov	ar5,@r0
      00274D 8E 82            [24]  266 	mov	dpl,r6
      00274F 8F 83            [24]  267 	mov	dph,r7
      002751 8D F0            [24]  268 	mov	b,r5
      002753 E5 08            [12]  269 	mov	a,_bp
      002755 24 FA            [12]  270 	add	a,#0xfa
      002757 F8               [12]  271 	mov	r0,a
      002758 E6               [12]  272 	mov	a,@r0
      002759 12 42 9A         [24]  273 	lcall	__gptrput
      00275C A3               [24]  274 	inc	dptr
      00275D 08               [12]  275 	inc	r0
      00275E E6               [12]  276 	mov	a,@r0
      00275F 12 42 9A         [24]  277 	lcall	__gptrput
      002762 A3               [24]  278 	inc	dptr
      002763 08               [12]  279 	inc	r0
      002764 E6               [12]  280 	mov	a,@r0
      002765 12 42 9A         [24]  281 	lcall	__gptrput
      002768 A3               [24]  282 	inc	dptr
      002769 08               [12]  283 	inc	r0
      00276A E6               [12]  284 	mov	a,@r0
      00276B 12 42 9A         [24]  285 	lcall	__gptrput
                                    286 ;	stack.c:15: return 1;
      00276E 90 00 01         [24]  287 	mov	dptr,#0x0001
      002771                        288 00103$:
                                    289 ;	stack.c:16: }
      002771 85 08 81         [24]  290 	mov	sp,_bp
      002774 D0 08            [24]  291 	pop	_bp
      002776 22               [24]  292 	ret
                                    293 ;------------------------------------------------------------
                                    294 ;Allocation info for local variables in function 'stack_pop'
                                    295 ;------------------------------------------------------------
                                    296 ;val                       Allocated to stack - _bp -5
                                    297 ;s                         Allocated to registers r5 r3 r4 
                                    298 ;sloc0                     Allocated to stack - _bp +4
                                    299 ;sloc1                     Allocated to stack - _bp +1
                                    300 ;sloc2                     Allocated to stack - _bp +4
                                    301 ;------------------------------------------------------------
                                    302 ;	stack.c:18: int stack_pop(stack_t *s, long *val) __reentrant {
                                    303 ;	-----------------------------------------
                                    304 ;	 function stack_pop
                                    305 ;	-----------------------------------------
      002777                        306 _stack_pop:
      002777 C0 08            [24]  307 	push	_bp
      002779 E5 81            [12]  308 	mov	a,sp
      00277B F5 08            [12]  309 	mov	_bp,a
      00277D 24 06            [12]  310 	add	a,#0x06
      00277F F5 81            [12]  311 	mov	sp,a
      002781 AD 82            [24]  312 	mov	r5,dpl
      002783 AB 83            [24]  313 	mov	r3,dph
      002785 AC F0            [24]  314 	mov	r4,b
                                    315 ;	stack.c:19: if (s->p < 0) return 0;
      002787 E5 08            [12]  316 	mov	a,_bp
      002789 24 04            [12]  317 	add	a,#0x04
      00278B F8               [12]  318 	mov	r0,a
      00278C 74 02            [12]  319 	mov	a,#0x02
      00278E 2D               [12]  320 	add	a,r5
      00278F F6               [12]  321 	mov	@r0,a
      002790 74 20            [12]  322 	mov	a,#0x20
      002792 3B               [12]  323 	addc	a,r3
      002793 08               [12]  324 	inc	r0
      002794 F6               [12]  325 	mov	@r0,a
      002795 08               [12]  326 	inc	r0
      002796 A6 04            [24]  327 	mov	@r0,ar4
      002798 E5 08            [12]  328 	mov	a,_bp
      00279A 24 04            [12]  329 	add	a,#0x04
      00279C F8               [12]  330 	mov	r0,a
      00279D 86 82            [24]  331 	mov	dpl,@r0
      00279F 08               [12]  332 	inc	r0
      0027A0 86 83            [24]  333 	mov	dph,@r0
      0027A2 08               [12]  334 	inc	r0
      0027A3 86 F0            [24]  335 	mov	b,@r0
      0027A5 12 47 15         [24]  336 	lcall	__gptrget
      0027A8 FF               [12]  337 	mov	r7,a
      0027A9 A3               [24]  338 	inc	dptr
      0027AA 12 47 15         [24]  339 	lcall	__gptrget
      0027AD FE               [12]  340 	mov	r6,a
      0027AE 30 E7 06         [24]  341 	jnb	acc.7,00102$
      0027B1 90 00 00         [24]  342 	mov	dptr,#0x0000
      0027B4 02 28 48         [24]  343 	ljmp	00103$
      0027B7                        344 00102$:
                                    345 ;	stack.c:20: *val = s->data[s->p];
      0027B7 E5 08            [12]  346 	mov	a,_bp
      0027B9 24 FB            [12]  347 	add	a,#0xfb
      0027BB F8               [12]  348 	mov	r0,a
      0027BC A9 08            [24]  349 	mov	r1,_bp
      0027BE 09               [12]  350 	inc	r1
      0027BF E6               [12]  351 	mov	a,@r0
      0027C0 F7               [12]  352 	mov	@r1,a
      0027C1 08               [12]  353 	inc	r0
      0027C2 09               [12]  354 	inc	r1
      0027C3 E6               [12]  355 	mov	a,@r0
      0027C4 F7               [12]  356 	mov	@r1,a
      0027C5 08               [12]  357 	inc	r0
      0027C6 09               [12]  358 	inc	r1
      0027C7 E6               [12]  359 	mov	a,@r0
      0027C8 F7               [12]  360 	mov	@r1,a
      0027C9 EF               [12]  361 	mov	a,r7
      0027CA 2F               [12]  362 	add	a,r7
      0027CB FF               [12]  363 	mov	r7,a
      0027CC EE               [12]  364 	mov	a,r6
      0027CD 33               [12]  365 	rlc	a
      0027CE FE               [12]  366 	mov	r6,a
      0027CF EF               [12]  367 	mov	a,r7
      0027D0 2F               [12]  368 	add	a,r7
      0027D1 FF               [12]  369 	mov	r7,a
      0027D2 EE               [12]  370 	mov	a,r6
      0027D3 33               [12]  371 	rlc	a
      0027D4 FE               [12]  372 	mov	r6,a
      0027D5 EF               [12]  373 	mov	a,r7
      0027D6 2D               [12]  374 	add	a,r5
      0027D7 FD               [12]  375 	mov	r5,a
      0027D8 EE               [12]  376 	mov	a,r6
      0027D9 3B               [12]  377 	addc	a,r3
      0027DA FE               [12]  378 	mov	r6,a
      0027DB 8C 07            [24]  379 	mov	ar7,r4
      0027DD 8D 82            [24]  380 	mov	dpl,r5
      0027DF 8E 83            [24]  381 	mov	dph,r6
      0027E1 8F F0            [24]  382 	mov	b,r7
      0027E3 12 47 15         [24]  383 	lcall	__gptrget
      0027E6 FD               [12]  384 	mov	r5,a
      0027E7 A3               [24]  385 	inc	dptr
      0027E8 12 47 15         [24]  386 	lcall	__gptrget
      0027EB FE               [12]  387 	mov	r6,a
      0027EC A3               [24]  388 	inc	dptr
      0027ED 12 47 15         [24]  389 	lcall	__gptrget
      0027F0 FC               [12]  390 	mov	r4,a
      0027F1 A3               [24]  391 	inc	dptr
      0027F2 12 47 15         [24]  392 	lcall	__gptrget
      0027F5 FF               [12]  393 	mov	r7,a
      0027F6 A8 08            [24]  394 	mov	r0,_bp
      0027F8 08               [12]  395 	inc	r0
      0027F9 86 82            [24]  396 	mov	dpl,@r0
      0027FB 08               [12]  397 	inc	r0
      0027FC 86 83            [24]  398 	mov	dph,@r0
      0027FE 08               [12]  399 	inc	r0
      0027FF 86 F0            [24]  400 	mov	b,@r0
      002801 ED               [12]  401 	mov	a,r5
      002802 12 42 9A         [24]  402 	lcall	__gptrput
      002805 A3               [24]  403 	inc	dptr
      002806 EE               [12]  404 	mov	a,r6
      002807 12 42 9A         [24]  405 	lcall	__gptrput
      00280A A3               [24]  406 	inc	dptr
      00280B EC               [12]  407 	mov	a,r4
      00280C 12 42 9A         [24]  408 	lcall	__gptrput
      00280F A3               [24]  409 	inc	dptr
      002810 EF               [12]  410 	mov	a,r7
      002811 12 42 9A         [24]  411 	lcall	__gptrput
                                    412 ;	stack.c:21: s->p--;
      002814 E5 08            [12]  413 	mov	a,_bp
      002816 24 04            [12]  414 	add	a,#0x04
      002818 F8               [12]  415 	mov	r0,a
      002819 86 82            [24]  416 	mov	dpl,@r0
      00281B 08               [12]  417 	inc	r0
      00281C 86 83            [24]  418 	mov	dph,@r0
      00281E 08               [12]  419 	inc	r0
      00281F 86 F0            [24]  420 	mov	b,@r0
      002821 12 47 15         [24]  421 	lcall	__gptrget
      002824 FE               [12]  422 	mov	r6,a
      002825 A3               [24]  423 	inc	dptr
      002826 12 47 15         [24]  424 	lcall	__gptrget
      002829 FF               [12]  425 	mov	r7,a
      00282A 1E               [12]  426 	dec	r6
      00282B BE FF 01         [24]  427 	cjne	r6,#0xff,00110$
      00282E 1F               [12]  428 	dec	r7
      00282F                        429 00110$:
      00282F E5 08            [12]  430 	mov	a,_bp
      002831 24 04            [12]  431 	add	a,#0x04
      002833 F8               [12]  432 	mov	r0,a
      002834 86 82            [24]  433 	mov	dpl,@r0
      002836 08               [12]  434 	inc	r0
      002837 86 83            [24]  435 	mov	dph,@r0
      002839 08               [12]  436 	inc	r0
      00283A 86 F0            [24]  437 	mov	b,@r0
      00283C EE               [12]  438 	mov	a,r6
      00283D 12 42 9A         [24]  439 	lcall	__gptrput
      002840 A3               [24]  440 	inc	dptr
      002841 EF               [12]  441 	mov	a,r7
      002842 12 42 9A         [24]  442 	lcall	__gptrput
                                    443 ;	stack.c:22: return 1;
      002845 90 00 01         [24]  444 	mov	dptr,#0x0001
      002848                        445 00103$:
                                    446 ;	stack.c:23: }
      002848 85 08 81         [24]  447 	mov	sp,_bp
      00284B D0 08            [24]  448 	pop	_bp
      00284D 22               [24]  449 	ret
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'stack_peek'
                                    452 ;------------------------------------------------------------
                                    453 ;val                       Allocated to stack - _bp -5
                                    454 ;s                         Allocated to registers r7 r6 r5 
                                    455 ;sloc0                     Allocated to stack - _bp +1
                                    456 ;------------------------------------------------------------
                                    457 ;	stack.c:25: int stack_peek(stack_t *s, long *val) __reentrant {
                                    458 ;	-----------------------------------------
                                    459 ;	 function stack_peek
                                    460 ;	-----------------------------------------
      00284E                        461 _stack_peek:
      00284E C0 08            [24]  462 	push	_bp
      002850 85 81 08         [24]  463 	mov	_bp,sp
      002853 05 81            [12]  464 	inc	sp
      002855 05 81            [12]  465 	inc	sp
      002857 05 81            [12]  466 	inc	sp
      002859 AF 82            [24]  467 	mov	r7,dpl
      00285B AE 83            [24]  468 	mov	r6,dph
      00285D AD F0            [24]  469 	mov	r5,b
                                    470 ;	stack.c:26: if (s->p < 0) return 0;
      00285F 74 02            [12]  471 	mov	a,#0x02
      002861 2F               [12]  472 	add	a,r7
      002862 FB               [12]  473 	mov	r3,a
      002863 74 20            [12]  474 	mov	a,#0x20
      002865 3E               [12]  475 	addc	a,r6
      002866 FA               [12]  476 	mov	r2,a
      002867 8D 04            [24]  477 	mov	ar4,r5
      002869 8B 82            [24]  478 	mov	dpl,r3
      00286B 8A 83            [24]  479 	mov	dph,r2
      00286D 8C F0            [24]  480 	mov	b,r4
      00286F 12 47 15         [24]  481 	lcall	__gptrget
      002872 FB               [12]  482 	mov	r3,a
      002873 A3               [24]  483 	inc	dptr
      002874 12 47 15         [24]  484 	lcall	__gptrget
      002877 FC               [12]  485 	mov	r4,a
      002878 30 E7 05         [24]  486 	jnb	acc.7,00102$
      00287B 90 00 00         [24]  487 	mov	dptr,#0x0000
      00287E 80 5E            [24]  488 	sjmp	00103$
      002880                        489 00102$:
                                    490 ;	stack.c:27: *val = s->data[s->p];
      002880 E5 08            [12]  491 	mov	a,_bp
      002882 24 FB            [12]  492 	add	a,#0xfb
      002884 F8               [12]  493 	mov	r0,a
      002885 A9 08            [24]  494 	mov	r1,_bp
      002887 09               [12]  495 	inc	r1
      002888 E6               [12]  496 	mov	a,@r0
      002889 F7               [12]  497 	mov	@r1,a
      00288A 08               [12]  498 	inc	r0
      00288B 09               [12]  499 	inc	r1
      00288C E6               [12]  500 	mov	a,@r0
      00288D F7               [12]  501 	mov	@r1,a
      00288E 08               [12]  502 	inc	r0
      00288F 09               [12]  503 	inc	r1
      002890 E6               [12]  504 	mov	a,@r0
      002891 F7               [12]  505 	mov	@r1,a
      002892 EB               [12]  506 	mov	a,r3
      002893 2B               [12]  507 	add	a,r3
      002894 FB               [12]  508 	mov	r3,a
      002895 EC               [12]  509 	mov	a,r4
      002896 33               [12]  510 	rlc	a
      002897 FC               [12]  511 	mov	r4,a
      002898 EB               [12]  512 	mov	a,r3
      002899 2B               [12]  513 	add	a,r3
      00289A FB               [12]  514 	mov	r3,a
      00289B EC               [12]  515 	mov	a,r4
      00289C 33               [12]  516 	rlc	a
      00289D FC               [12]  517 	mov	r4,a
      00289E EB               [12]  518 	mov	a,r3
      00289F 2F               [12]  519 	add	a,r7
      0028A0 FB               [12]  520 	mov	r3,a
      0028A1 EC               [12]  521 	mov	a,r4
      0028A2 3E               [12]  522 	addc	a,r6
      0028A3 FC               [12]  523 	mov	r4,a
      0028A4 8B 82            [24]  524 	mov	dpl,r3
      0028A6 8C 83            [24]  525 	mov	dph,r4
      0028A8 8D F0            [24]  526 	mov	b,r5
      0028AA 12 47 15         [24]  527 	lcall	__gptrget
      0028AD FB               [12]  528 	mov	r3,a
      0028AE A3               [24]  529 	inc	dptr
      0028AF 12 47 15         [24]  530 	lcall	__gptrget
      0028B2 FC               [12]  531 	mov	r4,a
      0028B3 A3               [24]  532 	inc	dptr
      0028B4 12 47 15         [24]  533 	lcall	__gptrget
      0028B7 FD               [12]  534 	mov	r5,a
      0028B8 A3               [24]  535 	inc	dptr
      0028B9 12 47 15         [24]  536 	lcall	__gptrget
      0028BC FF               [12]  537 	mov	r7,a
      0028BD A8 08            [24]  538 	mov	r0,_bp
      0028BF 08               [12]  539 	inc	r0
      0028C0 86 82            [24]  540 	mov	dpl,@r0
      0028C2 08               [12]  541 	inc	r0
      0028C3 86 83            [24]  542 	mov	dph,@r0
      0028C5 08               [12]  543 	inc	r0
      0028C6 86 F0            [24]  544 	mov	b,@r0
      0028C8 EB               [12]  545 	mov	a,r3
      0028C9 12 42 9A         [24]  546 	lcall	__gptrput
      0028CC A3               [24]  547 	inc	dptr
      0028CD EC               [12]  548 	mov	a,r4
      0028CE 12 42 9A         [24]  549 	lcall	__gptrput
      0028D1 A3               [24]  550 	inc	dptr
      0028D2 ED               [12]  551 	mov	a,r5
      0028D3 12 42 9A         [24]  552 	lcall	__gptrput
      0028D6 A3               [24]  553 	inc	dptr
      0028D7 EF               [12]  554 	mov	a,r7
      0028D8 12 42 9A         [24]  555 	lcall	__gptrput
                                    556 ;	stack.c:28: return 1;
      0028DB 90 00 01         [24]  557 	mov	dptr,#0x0001
      0028DE                        558 00103$:
                                    559 ;	stack.c:29: }
      0028DE 85 08 81         [24]  560 	mov	sp,_bp
      0028E1 D0 08            [24]  561 	pop	_bp
      0028E3 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'stack_iter_peek'
                                    565 ;------------------------------------------------------------
                                    566 ;iter                      Allocated to stack - _bp -4
                                    567 ;_ctx                      Allocated to stack - _bp -7
                                    568 ;s                         Allocated to stack - _bp +1
                                    569 ;j                         Allocated to registers 
                                    570 ;r                         Allocated to registers r2 r7 
                                    571 ;------------------------------------------------------------
                                    572 ;	stack.c:31: int stack_iter_peek(stack_t *s, stack_iter_t iter, void *_ctx) __reentrant {
                                    573 ;	-----------------------------------------
                                    574 ;	 function stack_iter_peek
                                    575 ;	-----------------------------------------
      0028E4                        576 _stack_iter_peek:
      0028E4 C0 08            [24]  577 	push	_bp
      0028E6 85 81 08         [24]  578 	mov	_bp,sp
      0028E9 C0 82            [24]  579 	push	dpl
      0028EB C0 83            [24]  580 	push	dph
      0028ED C0 F0            [24]  581 	push	b
                                    582 ;	stack.c:34: if (s->p < 0) return 0;
      0028EF A8 08            [24]  583 	mov	r0,_bp
      0028F1 08               [12]  584 	inc	r0
      0028F2 74 02            [12]  585 	mov	a,#0x02
      0028F4 26               [12]  586 	add	a,@r0
      0028F5 FB               [12]  587 	mov	r3,a
      0028F6 74 20            [12]  588 	mov	a,#0x20
      0028F8 08               [12]  589 	inc	r0
      0028F9 36               [12]  590 	addc	a,@r0
      0028FA FA               [12]  591 	mov	r2,a
      0028FB 08               [12]  592 	inc	r0
      0028FC 86 04            [24]  593 	mov	ar4,@r0
      0028FE 8B 82            [24]  594 	mov	dpl,r3
      002900 8A 83            [24]  595 	mov	dph,r2
      002902 8C F0            [24]  596 	mov	b,r4
      002904 12 47 15         [24]  597 	lcall	__gptrget
      002907 FB               [12]  598 	mov	r3,a
      002908 A3               [24]  599 	inc	dptr
      002909 12 47 15         [24]  600 	lcall	__gptrget
      00290C FC               [12]  601 	mov	r4,a
      00290D 30 E7 06         [24]  602 	jnb	acc.7,00102$
      002910 90 00 00         [24]  603 	mov	dptr,#0x0000
      002913 02 29 B2         [24]  604 	ljmp	00109$
      002916                        605 00102$:
                                    606 ;	stack.c:36: for (j = s->p, r = 0; j >= 0; j--) {
      002916 7A 00            [12]  607 	mov	r2,#0x00
      002918 7F 00            [12]  608 	mov	r7,#0x00
      00291A                        609 00107$:
      00291A EC               [12]  610 	mov	a,r4
      00291B 30 E7 03         [24]  611 	jnb	acc.7,00129$
      00291E 02 29 AE         [24]  612 	ljmp	00105$
      002921                        613 00129$:
                                    614 ;	stack.c:37: r = iter(_ctx, s->data[j]);
      002921 EB               [12]  615 	mov	a,r3
      002922 2B               [12]  616 	add	a,r3
      002923 FD               [12]  617 	mov	r5,a
      002924 EC               [12]  618 	mov	a,r4
      002925 33               [12]  619 	rlc	a
      002926 FE               [12]  620 	mov	r6,a
      002927 ED               [12]  621 	mov	a,r5
      002928 2D               [12]  622 	add	a,r5
      002929 FD               [12]  623 	mov	r5,a
      00292A EE               [12]  624 	mov	a,r6
      00292B 33               [12]  625 	rlc	a
      00292C FE               [12]  626 	mov	r6,a
      00292D C0 03            [24]  627 	push	ar3
      00292F C0 04            [24]  628 	push	ar4
      002931 A8 08            [24]  629 	mov	r0,_bp
      002933 08               [12]  630 	inc	r0
      002934 ED               [12]  631 	mov	a,r5
      002935 26               [12]  632 	add	a,@r0
      002936 FD               [12]  633 	mov	r5,a
      002937 EE               [12]  634 	mov	a,r6
      002938 08               [12]  635 	inc	r0
      002939 36               [12]  636 	addc	a,@r0
      00293A FC               [12]  637 	mov	r4,a
      00293B 08               [12]  638 	inc	r0
      00293C 86 06            [24]  639 	mov	ar6,@r0
      00293E 8D 82            [24]  640 	mov	dpl,r5
      002940 8C 83            [24]  641 	mov	dph,r4
      002942 8E F0            [24]  642 	mov	b,r6
      002944 12 47 15         [24]  643 	lcall	__gptrget
      002947 FD               [12]  644 	mov	r5,a
      002948 A3               [24]  645 	inc	dptr
      002949 12 47 15         [24]  646 	lcall	__gptrget
      00294C FC               [12]  647 	mov	r4,a
      00294D A3               [24]  648 	inc	dptr
      00294E 12 47 15         [24]  649 	lcall	__gptrget
      002951 FE               [12]  650 	mov	r6,a
      002952 A3               [24]  651 	inc	dptr
      002953 12 47 15         [24]  652 	lcall	__gptrget
      002956 FB               [12]  653 	mov	r3,a
      002957 C0 04            [24]  654 	push	ar4
      002959 C0 03            [24]  655 	push	ar3
      00295B C0 05            [24]  656 	push	ar5
      00295D C0 04            [24]  657 	push	ar4
      00295F C0 06            [24]  658 	push	ar6
      002961 C0 03            [24]  659 	push	ar3
      002963 12 29 68         [24]  660 	lcall	00130$
      002966 80 1A            [24]  661 	sjmp	00131$
      002968                        662 00130$:
      002968 E5 08            [12]  663 	mov	a,_bp
      00296A 24 FC            [12]  664 	add	a,#0xfc
      00296C F8               [12]  665 	mov	r0,a
      00296D E6               [12]  666 	mov	a,@r0
      00296E C0 E0            [24]  667 	push	acc
      002970 08               [12]  668 	inc	r0
      002971 E6               [12]  669 	mov	a,@r0
      002972 C0 E0            [24]  670 	push	acc
      002974 E5 08            [12]  671 	mov	a,_bp
      002976 24 F9            [12]  672 	add	a,#0xf9
      002978 F8               [12]  673 	mov	r0,a
      002979 86 82            [24]  674 	mov	dpl,@r0
      00297B 08               [12]  675 	inc	r0
      00297C 86 83            [24]  676 	mov	dph,@r0
      00297E 08               [12]  677 	inc	r0
      00297F 86 F0            [24]  678 	mov	b,@r0
      002981 22               [24]  679 	ret
      002982                        680 00131$:
      002982 AD 82            [24]  681 	mov	r5,dpl
      002984 AE 83            [24]  682 	mov	r6,dph
      002986 E5 81            [12]  683 	mov	a,sp
      002988 24 FC            [12]  684 	add	a,#0xfc
      00298A F5 81            [12]  685 	mov	sp,a
      00298C D0 03            [24]  686 	pop	ar3
      00298E D0 04            [24]  687 	pop	ar4
      002990 8D 02            [24]  688 	mov	ar2,r5
      002992 8E 07            [24]  689 	mov	ar7,r6
                                    690 ;	stack.c:38: if (r <= 0) break;
      002994 C3               [12]  691 	clr	c
      002995 E4               [12]  692 	clr	a
      002996 9A               [12]  693 	subb	a,r2
      002997 74 80            [12]  694 	mov	a,#(0x00 ^ 0x80)
      002999 8F F0            [24]  695 	mov	b,r7
      00299B 63 F0 80         [24]  696 	xrl	b,#0x80
      00299E 95 F0            [12]  697 	subb	a,b
      0029A0 D0 04            [24]  698 	pop	ar4
      0029A2 D0 03            [24]  699 	pop	ar3
      0029A4 50 08            [24]  700 	jnc	00105$
                                    701 ;	stack.c:36: for (j = s->p, r = 0; j >= 0; j--) {
      0029A6 1B               [12]  702 	dec	r3
      0029A7 BB FF 01         [24]  703 	cjne	r3,#0xff,00133$
      0029AA 1C               [12]  704 	dec	r4
      0029AB                        705 00133$:
      0029AB 02 29 1A         [24]  706 	ljmp	00107$
      0029AE                        707 00105$:
                                    708 ;	stack.c:41: return r;
      0029AE 8A 82            [24]  709 	mov	dpl,r2
      0029B0 8F 83            [24]  710 	mov	dph,r7
      0029B2                        711 00109$:
                                    712 ;	stack.c:42: }
      0029B2 85 08 81         [24]  713 	mov	sp,_bp
      0029B5 D0 08            [24]  714 	pop	_bp
      0029B7 22               [24]  715 	ret
                                    716 	.area CSEG    (CODE)
                                    717 	.area CONST   (CODE)
                                    718 	.area XINIT   (CODE)
                                    719 	.area CABS    (ABS,CODE)
