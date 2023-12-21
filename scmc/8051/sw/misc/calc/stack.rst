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
                                     15 	.globl _stack_peek2
                                     16 	.globl _stack_iter_peek
                                     17 ;--------------------------------------------------------
                                     18 ; special function registers
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; special function bits
                                     24 ;--------------------------------------------------------
                                     25 	.area RSEG    (ABS,DATA)
      000000                         26 	.org 0x0000
                                     27 ;--------------------------------------------------------
                                     28 ; overlayable register banks
                                     29 ;--------------------------------------------------------
                                     30 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         31 	.ds 8
                                     32 ;--------------------------------------------------------
                                     33 ; internal ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DSEG    (DATA)
                                     36 ;--------------------------------------------------------
                                     37 ; overlayable items in internal ram 
                                     38 ;--------------------------------------------------------
                                     39 ;--------------------------------------------------------
                                     40 ; indirectly addressable internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area ISEG    (DATA)
                                     43 ;--------------------------------------------------------
                                     44 ; absolute internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area IABS    (ABS,DATA)
                                     47 	.area IABS    (ABS,DATA)
                                     48 ;--------------------------------------------------------
                                     49 ; bit data
                                     50 ;--------------------------------------------------------
                                     51 	.area BSEG    (BIT)
                                     52 ;--------------------------------------------------------
                                     53 ; paged external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area PSEG    (PAG,XDATA)
                                     56 ;--------------------------------------------------------
                                     57 ; external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area XSEG    (XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; absolute external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XABS    (ABS,XDATA)
                                     64 ;--------------------------------------------------------
                                     65 ; external initialized ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area XISEG   (XDATA)
                                     68 	.area HOME    (CODE)
                                     69 	.area GSINIT0 (CODE)
                                     70 	.area GSINIT1 (CODE)
                                     71 	.area GSINIT2 (CODE)
                                     72 	.area GSINIT3 (CODE)
                                     73 	.area GSINIT4 (CODE)
                                     74 	.area GSINIT5 (CODE)
                                     75 	.area GSINIT  (CODE)
                                     76 	.area GSFINAL (CODE)
                                     77 	.area CSEG    (CODE)
                                     78 ;--------------------------------------------------------
                                     79 ; global & static initialisations
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME    (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 	.area GSFINAL (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 ;--------------------------------------------------------
                                     86 ; Home
                                     87 ;--------------------------------------------------------
                                     88 	.area HOME    (CODE)
                                     89 	.area HOME    (CODE)
                                     90 ;--------------------------------------------------------
                                     91 ; code
                                     92 ;--------------------------------------------------------
                                     93 	.area CSEG    (CODE)
                                     94 ;------------------------------------------------------------
                                     95 ;Allocation info for local variables in function 'stack_init'
                                     96 ;------------------------------------------------------------
                                     97 ;s                         Allocated to registers r5 r6 r7 
                                     98 ;------------------------------------------------------------
                                     99 ;	stack.c:4: void stack_init(stack_t *s) __reentrant {
                                    100 ;	-----------------------------------------
                                    101 ;	 function stack_init
                                    102 ;	-----------------------------------------
      002680                        103 _stack_init:
                           000007   104 	ar7 = 0x07
                           000006   105 	ar6 = 0x06
                           000005   106 	ar5 = 0x05
                           000004   107 	ar4 = 0x04
                           000003   108 	ar3 = 0x03
                           000002   109 	ar2 = 0x02
                           000001   110 	ar1 = 0x01
                           000000   111 	ar0 = 0x00
                                    112 ;	stack.c:5: s->spin = 0;
      002680 AD 82            [24]  113 	mov	r5,dpl
      002682 AE 83            [24]  114 	mov	r6,dph
      002684 AF F0            [24]  115 	mov	r7,b
      002686 E4               [12]  116 	clr	a
      002687 12 6B A0         [24]  117 	lcall	__gptrput
                                    118 ;	stack.c:6: s->N = SIZE;
      00268A 04               [12]  119 	inc	a
      00268B 2D               [12]  120 	add	a,r5
      00268C FA               [12]  121 	mov	r2,a
      00268D 74 20            [12]  122 	mov	a,#0x20
      00268F 3E               [12]  123 	addc	a,r6
      002690 FB               [12]  124 	mov	r3,a
      002691 8F 04            [24]  125 	mov	ar4,r7
      002693 8A 82            [24]  126 	mov	dpl,r2
      002695 8B 83            [24]  127 	mov	dph,r3
      002697 8C F0            [24]  128 	mov	b,r4
      002699 E4               [12]  129 	clr	a
      00269A 12 6B A0         [24]  130 	lcall	__gptrput
      00269D A3               [24]  131 	inc	dptr
      00269E 74 08            [12]  132 	mov	a,#0x08
      0026A0 12 6B A0         [24]  133 	lcall	__gptrput
                                    134 ;	stack.c:7: s->p = -1;
      0026A3 74 03            [12]  135 	mov	a,#0x03
      0026A5 2D               [12]  136 	add	a,r5
      0026A6 FD               [12]  137 	mov	r5,a
      0026A7 74 20            [12]  138 	mov	a,#0x20
      0026A9 3E               [12]  139 	addc	a,r6
      0026AA FE               [12]  140 	mov	r6,a
      0026AB 8D 82            [24]  141 	mov	dpl,r5
      0026AD 8E 83            [24]  142 	mov	dph,r6
      0026AF 8F F0            [24]  143 	mov	b,r7
      0026B1 74 FF            [12]  144 	mov	a,#0xff
      0026B3 12 6B A0         [24]  145 	lcall	__gptrput
      0026B6 A3               [24]  146 	inc	dptr
                                    147 ;	stack.c:9: return;
                                    148 ;	stack.c:10: }
      0026B7 02 6B A0         [24]  149 	ljmp	__gptrput
                                    150 ;------------------------------------------------------------
                                    151 ;Allocation info for local variables in function 'stack_push'
                                    152 ;------------------------------------------------------------
                                    153 ;val                       Allocated to stack - _bp -6
                                    154 ;s                         Allocated to stack - _bp +1
                                    155 ;sloc0                     Allocated to stack - _bp +4
                                    156 ;------------------------------------------------------------
                                    157 ;	stack.c:12: int stack_push(stack_t *s, long val) __reentrant {
                                    158 ;	-----------------------------------------
                                    159 ;	 function stack_push
                                    160 ;	-----------------------------------------
      0026BA                        161 _stack_push:
      0026BA C0 08            [24]  162 	push	_bp
      0026BC 85 81 08         [24]  163 	mov	_bp,sp
      0026BF C0 82            [24]  164 	push	dpl
      0026C1 C0 83            [24]  165 	push	dph
      0026C3 C0 F0            [24]  166 	push	b
      0026C5 05 81            [12]  167 	inc	sp
      0026C7 05 81            [12]  168 	inc	sp
                                    169 ;	stack.c:13: if (s->p == (s->N - 1)) return 0;
      0026C9 A8 08            [24]  170 	mov	r0,_bp
      0026CB 08               [12]  171 	inc	r0
      0026CC 74 03            [12]  172 	mov	a,#0x03
      0026CE 26               [12]  173 	add	a,@r0
      0026CF FA               [12]  174 	mov	r2,a
      0026D0 74 20            [12]  175 	mov	a,#0x20
      0026D2 08               [12]  176 	inc	r0
      0026D3 36               [12]  177 	addc	a,@r0
      0026D4 FB               [12]  178 	mov	r3,a
      0026D5 08               [12]  179 	inc	r0
      0026D6 86 04            [24]  180 	mov	ar4,@r0
      0026D8 8A 82            [24]  181 	mov	dpl,r2
      0026DA 8B 83            [24]  182 	mov	dph,r3
      0026DC 8C F0            [24]  183 	mov	b,r4
      0026DE E5 08            [12]  184 	mov	a,_bp
      0026E0 24 04            [12]  185 	add	a,#0x04
      0026E2 F8               [12]  186 	mov	r0,a
      0026E3 12 70 1B         [24]  187 	lcall	__gptrget
      0026E6 F6               [12]  188 	mov	@r0,a
      0026E7 A3               [24]  189 	inc	dptr
      0026E8 12 70 1B         [24]  190 	lcall	__gptrget
      0026EB 08               [12]  191 	inc	r0
      0026EC F6               [12]  192 	mov	@r0,a
      0026ED A8 08            [24]  193 	mov	r0,_bp
      0026EF 08               [12]  194 	inc	r0
      0026F0 74 01            [12]  195 	mov	a,#0x01
      0026F2 26               [12]  196 	add	a,@r0
      0026F3 FD               [12]  197 	mov	r5,a
      0026F4 74 20            [12]  198 	mov	a,#0x20
      0026F6 08               [12]  199 	inc	r0
      0026F7 36               [12]  200 	addc	a,@r0
      0026F8 FE               [12]  201 	mov	r6,a
      0026F9 08               [12]  202 	inc	r0
      0026FA 86 07            [24]  203 	mov	ar7,@r0
      0026FC 8D 82            [24]  204 	mov	dpl,r5
      0026FE 8E 83            [24]  205 	mov	dph,r6
      002700 8F F0            [24]  206 	mov	b,r7
      002702 12 70 1B         [24]  207 	lcall	__gptrget
      002705 FD               [12]  208 	mov	r5,a
      002706 A3               [24]  209 	inc	dptr
      002707 12 70 1B         [24]  210 	lcall	__gptrget
      00270A FE               [12]  211 	mov	r6,a
      00270B 1D               [12]  212 	dec	r5
      00270C BD FF 01         [24]  213 	cjne	r5,#0xff,00109$
      00270F 1E               [12]  214 	dec	r6
      002710                        215 00109$:
      002710 E5 08            [12]  216 	mov	a,_bp
      002712 24 04            [12]  217 	add	a,#0x04
      002714 F8               [12]  218 	mov	r0,a
      002715 E6               [12]  219 	mov	a,@r0
      002716 B5 05 07         [24]  220 	cjne	a,ar5,00110$
      002719 08               [12]  221 	inc	r0
      00271A E6               [12]  222 	mov	a,@r0
      00271B B5 06 02         [24]  223 	cjne	a,ar6,00110$
      00271E 80 02            [24]  224 	sjmp	00111$
      002720                        225 00110$:
      002720 80 06            [24]  226 	sjmp	00102$
      002722                        227 00111$:
      002722 90 00 00         [24]  228 	mov	dptr,#0x0000
      002725 02 27 AE         [24]  229 	ljmp	00103$
      002728                        230 00102$:
                                    231 ;	stack.c:14: s->spin = 1;
      002728 A8 08            [24]  232 	mov	r0,_bp
      00272A 08               [12]  233 	inc	r0
      00272B 86 82            [24]  234 	mov	dpl,@r0
      00272D 08               [12]  235 	inc	r0
      00272E 86 83            [24]  236 	mov	dph,@r0
      002730 08               [12]  237 	inc	r0
      002731 86 F0            [24]  238 	mov	b,@r0
      002733 74 01            [12]  239 	mov	a,#0x01
      002735 12 6B A0         [24]  240 	lcall	__gptrput
                                    241 ;	stack.c:15: s->p++;
      002738 8A 82            [24]  242 	mov	dpl,r2
      00273A 8B 83            [24]  243 	mov	dph,r3
      00273C 8C F0            [24]  244 	mov	b,r4
      00273E 12 70 1B         [24]  245 	lcall	__gptrget
      002741 FE               [12]  246 	mov	r6,a
      002742 A3               [24]  247 	inc	dptr
      002743 12 70 1B         [24]  248 	lcall	__gptrget
      002746 FF               [12]  249 	mov	r7,a
      002747 0E               [12]  250 	inc	r6
      002748 BE 00 01         [24]  251 	cjne	r6,#0x00,00112$
      00274B 0F               [12]  252 	inc	r7
      00274C                        253 00112$:
      00274C 8A 82            [24]  254 	mov	dpl,r2
      00274E 8B 83            [24]  255 	mov	dph,r3
      002750 8C F0            [24]  256 	mov	b,r4
      002752 EE               [12]  257 	mov	a,r6
      002753 12 6B A0         [24]  258 	lcall	__gptrput
      002756 A3               [24]  259 	inc	dptr
      002757 EF               [12]  260 	mov	a,r7
      002758 12 6B A0         [24]  261 	lcall	__gptrput
                                    262 ;	stack.c:16: s->data[s->p] = val;
      00275B A8 08            [24]  263 	mov	r0,_bp
      00275D 08               [12]  264 	inc	r0
      00275E 74 01            [12]  265 	mov	a,#0x01
      002760 26               [12]  266 	add	a,@r0
      002761 FB               [12]  267 	mov	r3,a
      002762 E4               [12]  268 	clr	a
      002763 08               [12]  269 	inc	r0
      002764 36               [12]  270 	addc	a,@r0
      002765 FC               [12]  271 	mov	r4,a
      002766 08               [12]  272 	inc	r0
      002767 86 05            [24]  273 	mov	ar5,@r0
      002769 EE               [12]  274 	mov	a,r6
      00276A 2E               [12]  275 	add	a,r6
      00276B FE               [12]  276 	mov	r6,a
      00276C EF               [12]  277 	mov	a,r7
      00276D 33               [12]  278 	rlc	a
      00276E FF               [12]  279 	mov	r7,a
      00276F EE               [12]  280 	mov	a,r6
      002770 2E               [12]  281 	add	a,r6
      002771 FE               [12]  282 	mov	r6,a
      002772 EF               [12]  283 	mov	a,r7
      002773 33               [12]  284 	rlc	a
      002774 FF               [12]  285 	mov	r7,a
      002775 EE               [12]  286 	mov	a,r6
      002776 2B               [12]  287 	add	a,r3
      002777 FB               [12]  288 	mov	r3,a
      002778 EF               [12]  289 	mov	a,r7
      002779 3C               [12]  290 	addc	a,r4
      00277A FC               [12]  291 	mov	r4,a
      00277B 8B 82            [24]  292 	mov	dpl,r3
      00277D 8C 83            [24]  293 	mov	dph,r4
      00277F 8D F0            [24]  294 	mov	b,r5
      002781 E5 08            [12]  295 	mov	a,_bp
      002783 24 FA            [12]  296 	add	a,#0xfa
      002785 F8               [12]  297 	mov	r0,a
      002786 E6               [12]  298 	mov	a,@r0
      002787 12 6B A0         [24]  299 	lcall	__gptrput
      00278A A3               [24]  300 	inc	dptr
      00278B 08               [12]  301 	inc	r0
      00278C E6               [12]  302 	mov	a,@r0
      00278D 12 6B A0         [24]  303 	lcall	__gptrput
      002790 A3               [24]  304 	inc	dptr
      002791 08               [12]  305 	inc	r0
      002792 E6               [12]  306 	mov	a,@r0
      002793 12 6B A0         [24]  307 	lcall	__gptrput
      002796 A3               [24]  308 	inc	dptr
      002797 08               [12]  309 	inc	r0
      002798 E6               [12]  310 	mov	a,@r0
      002799 12 6B A0         [24]  311 	lcall	__gptrput
                                    312 ;	stack.c:17: s->spin = 0;
      00279C A8 08            [24]  313 	mov	r0,_bp
      00279E 08               [12]  314 	inc	r0
      00279F 86 82            [24]  315 	mov	dpl,@r0
      0027A1 08               [12]  316 	inc	r0
      0027A2 86 83            [24]  317 	mov	dph,@r0
      0027A4 08               [12]  318 	inc	r0
      0027A5 86 F0            [24]  319 	mov	b,@r0
      0027A7 E4               [12]  320 	clr	a
      0027A8 12 6B A0         [24]  321 	lcall	__gptrput
                                    322 ;	stack.c:18: return 1;
      0027AB 90 00 01         [24]  323 	mov	dptr,#0x0001
      0027AE                        324 00103$:
                                    325 ;	stack.c:19: }
      0027AE 85 08 81         [24]  326 	mov	sp,_bp
      0027B1 D0 08            [24]  327 	pop	_bp
      0027B3 22               [24]  328 	ret
                                    329 ;------------------------------------------------------------
                                    330 ;Allocation info for local variables in function 'stack_pop'
                                    331 ;------------------------------------------------------------
                                    332 ;val                       Allocated to stack - _bp -5
                                    333 ;s                         Allocated to stack - _bp +1
                                    334 ;sloc0                     Allocated to stack - _bp +4
                                    335 ;sloc1                     Allocated to stack - _bp +7
                                    336 ;sloc2                     Allocated to stack - _bp +7
                                    337 ;------------------------------------------------------------
                                    338 ;	stack.c:21: int stack_pop(stack_t *s, long *val) __reentrant {
                                    339 ;	-----------------------------------------
                                    340 ;	 function stack_pop
                                    341 ;	-----------------------------------------
      0027B4                        342 _stack_pop:
      0027B4 C0 08            [24]  343 	push	_bp
      0027B6 85 81 08         [24]  344 	mov	_bp,sp
      0027B9 C0 82            [24]  345 	push	dpl
      0027BB C0 83            [24]  346 	push	dph
      0027BD C0 F0            [24]  347 	push	b
      0027BF E5 81            [12]  348 	mov	a,sp
      0027C1 24 06            [12]  349 	add	a,#0x06
      0027C3 F5 81            [12]  350 	mov	sp,a
                                    351 ;	stack.c:22: if (s->p < 0) return 0;
      0027C5 A8 08            [24]  352 	mov	r0,_bp
      0027C7 08               [12]  353 	inc	r0
      0027C8 E5 08            [12]  354 	mov	a,_bp
      0027CA 24 07            [12]  355 	add	a,#0x07
      0027CC F9               [12]  356 	mov	r1,a
      0027CD 74 03            [12]  357 	mov	a,#0x03
      0027CF 26               [12]  358 	add	a,@r0
      0027D0 F7               [12]  359 	mov	@r1,a
      0027D1 74 20            [12]  360 	mov	a,#0x20
      0027D3 08               [12]  361 	inc	r0
      0027D4 36               [12]  362 	addc	a,@r0
      0027D5 09               [12]  363 	inc	r1
      0027D6 F7               [12]  364 	mov	@r1,a
      0027D7 08               [12]  365 	inc	r0
      0027D8 09               [12]  366 	inc	r1
      0027D9 E6               [12]  367 	mov	a,@r0
      0027DA F7               [12]  368 	mov	@r1,a
      0027DB E5 08            [12]  369 	mov	a,_bp
      0027DD 24 07            [12]  370 	add	a,#0x07
      0027DF F8               [12]  371 	mov	r0,a
      0027E0 86 82            [24]  372 	mov	dpl,@r0
      0027E2 08               [12]  373 	inc	r0
      0027E3 86 83            [24]  374 	mov	dph,@r0
      0027E5 08               [12]  375 	inc	r0
      0027E6 86 F0            [24]  376 	mov	b,@r0
      0027E8 12 70 1B         [24]  377 	lcall	__gptrget
      0027EB FE               [12]  378 	mov	r6,a
      0027EC A3               [24]  379 	inc	dptr
      0027ED 12 70 1B         [24]  380 	lcall	__gptrget
      0027F0 FF               [12]  381 	mov	r7,a
      0027F1 30 E7 06         [24]  382 	jnb	acc.7,00102$
      0027F4 90 00 00         [24]  383 	mov	dptr,#0x0000
      0027F7 02 28 D2         [24]  384 	ljmp	00103$
      0027FA                        385 00102$:
                                    386 ;	stack.c:23: s->spin = 1;
      0027FA A8 08            [24]  387 	mov	r0,_bp
      0027FC 08               [12]  388 	inc	r0
      0027FD 86 82            [24]  389 	mov	dpl,@r0
      0027FF 08               [12]  390 	inc	r0
      002800 86 83            [24]  391 	mov	dph,@r0
      002802 08               [12]  392 	inc	r0
      002803 86 F0            [24]  393 	mov	b,@r0
      002805 74 01            [12]  394 	mov	a,#0x01
      002807 12 6B A0         [24]  395 	lcall	__gptrput
                                    396 ;	stack.c:24: *val = s->data[s->p];
      00280A E5 08            [12]  397 	mov	a,_bp
      00280C 24 FB            [12]  398 	add	a,#0xfb
      00280E F8               [12]  399 	mov	r0,a
      00280F E5 08            [12]  400 	mov	a,_bp
      002811 24 04            [12]  401 	add	a,#0x04
      002813 F9               [12]  402 	mov	r1,a
      002814 E6               [12]  403 	mov	a,@r0
      002815 F7               [12]  404 	mov	@r1,a
      002816 08               [12]  405 	inc	r0
      002817 09               [12]  406 	inc	r1
      002818 E6               [12]  407 	mov	a,@r0
      002819 F7               [12]  408 	mov	@r1,a
      00281A 08               [12]  409 	inc	r0
      00281B 09               [12]  410 	inc	r1
      00281C E6               [12]  411 	mov	a,@r0
      00281D F7               [12]  412 	mov	@r1,a
      00281E A8 08            [24]  413 	mov	r0,_bp
      002820 08               [12]  414 	inc	r0
      002821 74 01            [12]  415 	mov	a,#0x01
      002823 26               [12]  416 	add	a,@r0
      002824 FD               [12]  417 	mov	r5,a
      002825 E4               [12]  418 	clr	a
      002826 08               [12]  419 	inc	r0
      002827 36               [12]  420 	addc	a,@r0
      002828 FC               [12]  421 	mov	r4,a
      002829 08               [12]  422 	inc	r0
      00282A 86 03            [24]  423 	mov	ar3,@r0
      00282C E5 08            [12]  424 	mov	a,_bp
      00282E 24 07            [12]  425 	add	a,#0x07
      002830 F8               [12]  426 	mov	r0,a
      002831 86 82            [24]  427 	mov	dpl,@r0
      002833 08               [12]  428 	inc	r0
      002834 86 83            [24]  429 	mov	dph,@r0
      002836 08               [12]  430 	inc	r0
      002837 86 F0            [24]  431 	mov	b,@r0
      002839 12 70 1B         [24]  432 	lcall	__gptrget
      00283C FF               [12]  433 	mov	r7,a
      00283D A3               [24]  434 	inc	dptr
      00283E 12 70 1B         [24]  435 	lcall	__gptrget
      002841 FE               [12]  436 	mov	r6,a
      002842 EF               [12]  437 	mov	a,r7
      002843 2F               [12]  438 	add	a,r7
      002844 FF               [12]  439 	mov	r7,a
      002845 EE               [12]  440 	mov	a,r6
      002846 33               [12]  441 	rlc	a
      002847 FE               [12]  442 	mov	r6,a
      002848 EF               [12]  443 	mov	a,r7
      002849 2F               [12]  444 	add	a,r7
      00284A FF               [12]  445 	mov	r7,a
      00284B EE               [12]  446 	mov	a,r6
      00284C 33               [12]  447 	rlc	a
      00284D FE               [12]  448 	mov	r6,a
      00284E EF               [12]  449 	mov	a,r7
      00284F 2D               [12]  450 	add	a,r5
      002850 FD               [12]  451 	mov	r5,a
      002851 EE               [12]  452 	mov	a,r6
      002852 3C               [12]  453 	addc	a,r4
      002853 FE               [12]  454 	mov	r6,a
      002854 8B 07            [24]  455 	mov	ar7,r3
      002856 8D 82            [24]  456 	mov	dpl,r5
      002858 8E 83            [24]  457 	mov	dph,r6
      00285A 8F F0            [24]  458 	mov	b,r7
      00285C 12 70 1B         [24]  459 	lcall	__gptrget
      00285F FD               [12]  460 	mov	r5,a
      002860 A3               [24]  461 	inc	dptr
      002861 12 70 1B         [24]  462 	lcall	__gptrget
      002864 FE               [12]  463 	mov	r6,a
      002865 A3               [24]  464 	inc	dptr
      002866 12 70 1B         [24]  465 	lcall	__gptrget
      002869 FC               [12]  466 	mov	r4,a
      00286A A3               [24]  467 	inc	dptr
      00286B 12 70 1B         [24]  468 	lcall	__gptrget
      00286E FF               [12]  469 	mov	r7,a
      00286F E5 08            [12]  470 	mov	a,_bp
      002871 24 04            [12]  471 	add	a,#0x04
      002873 F8               [12]  472 	mov	r0,a
      002874 86 82            [24]  473 	mov	dpl,@r0
      002876 08               [12]  474 	inc	r0
      002877 86 83            [24]  475 	mov	dph,@r0
      002879 08               [12]  476 	inc	r0
      00287A 86 F0            [24]  477 	mov	b,@r0
      00287C ED               [12]  478 	mov	a,r5
      00287D 12 6B A0         [24]  479 	lcall	__gptrput
      002880 A3               [24]  480 	inc	dptr
      002881 EE               [12]  481 	mov	a,r6
      002882 12 6B A0         [24]  482 	lcall	__gptrput
      002885 A3               [24]  483 	inc	dptr
      002886 EC               [12]  484 	mov	a,r4
      002887 12 6B A0         [24]  485 	lcall	__gptrput
      00288A A3               [24]  486 	inc	dptr
      00288B EF               [12]  487 	mov	a,r7
      00288C 12 6B A0         [24]  488 	lcall	__gptrput
                                    489 ;	stack.c:25: s->p--;
      00288F E5 08            [12]  490 	mov	a,_bp
      002891 24 07            [12]  491 	add	a,#0x07
      002893 F8               [12]  492 	mov	r0,a
      002894 86 82            [24]  493 	mov	dpl,@r0
      002896 08               [12]  494 	inc	r0
      002897 86 83            [24]  495 	mov	dph,@r0
      002899 08               [12]  496 	inc	r0
      00289A 86 F0            [24]  497 	mov	b,@r0
      00289C 12 70 1B         [24]  498 	lcall	__gptrget
      00289F FE               [12]  499 	mov	r6,a
      0028A0 A3               [24]  500 	inc	dptr
      0028A1 12 70 1B         [24]  501 	lcall	__gptrget
      0028A4 FF               [12]  502 	mov	r7,a
      0028A5 1E               [12]  503 	dec	r6
      0028A6 BE FF 01         [24]  504 	cjne	r6,#0xff,00110$
      0028A9 1F               [12]  505 	dec	r7
      0028AA                        506 00110$:
      0028AA E5 08            [12]  507 	mov	a,_bp
      0028AC 24 07            [12]  508 	add	a,#0x07
      0028AE F8               [12]  509 	mov	r0,a
      0028AF 86 82            [24]  510 	mov	dpl,@r0
      0028B1 08               [12]  511 	inc	r0
      0028B2 86 83            [24]  512 	mov	dph,@r0
      0028B4 08               [12]  513 	inc	r0
      0028B5 86 F0            [24]  514 	mov	b,@r0
      0028B7 EE               [12]  515 	mov	a,r6
      0028B8 12 6B A0         [24]  516 	lcall	__gptrput
      0028BB A3               [24]  517 	inc	dptr
      0028BC EF               [12]  518 	mov	a,r7
      0028BD 12 6B A0         [24]  519 	lcall	__gptrput
                                    520 ;	stack.c:26: s->spin = 0;
      0028C0 A8 08            [24]  521 	mov	r0,_bp
      0028C2 08               [12]  522 	inc	r0
      0028C3 86 82            [24]  523 	mov	dpl,@r0
      0028C5 08               [12]  524 	inc	r0
      0028C6 86 83            [24]  525 	mov	dph,@r0
      0028C8 08               [12]  526 	inc	r0
      0028C9 86 F0            [24]  527 	mov	b,@r0
      0028CB E4               [12]  528 	clr	a
      0028CC 12 6B A0         [24]  529 	lcall	__gptrput
                                    530 ;	stack.c:27: return 1;
      0028CF 90 00 01         [24]  531 	mov	dptr,#0x0001
      0028D2                        532 00103$:
                                    533 ;	stack.c:28: }
      0028D2 85 08 81         [24]  534 	mov	sp,_bp
      0028D5 D0 08            [24]  535 	pop	_bp
      0028D7 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'stack_peek'
                                    539 ;------------------------------------------------------------
                                    540 ;val                       Allocated to stack - _bp -5
                                    541 ;s                         Allocated to registers r5 r6 r7 
                                    542 ;sloc0                     Allocated to stack - _bp +1
                                    543 ;------------------------------------------------------------
                                    544 ;	stack.c:30: int stack_peek(stack_t *s, long *val) __reentrant {
                                    545 ;	-----------------------------------------
                                    546 ;	 function stack_peek
                                    547 ;	-----------------------------------------
      0028D8                        548 _stack_peek:
      0028D8 C0 08            [24]  549 	push	_bp
      0028DA 85 81 08         [24]  550 	mov	_bp,sp
      0028DD 05 81            [12]  551 	inc	sp
      0028DF 05 81            [12]  552 	inc	sp
      0028E1 05 81            [12]  553 	inc	sp
      0028E3 AD 82            [24]  554 	mov	r5,dpl
      0028E5 AE 83            [24]  555 	mov	r6,dph
      0028E7 AF F0            [24]  556 	mov	r7,b
                                    557 ;	stack.c:31: if (s->p < 0) return 0;
      0028E9 74 03            [12]  558 	mov	a,#0x03
      0028EB 2D               [12]  559 	add	a,r5
      0028EC FB               [12]  560 	mov	r3,a
      0028ED 74 20            [12]  561 	mov	a,#0x20
      0028EF 3E               [12]  562 	addc	a,r6
      0028F0 FA               [12]  563 	mov	r2,a
      0028F1 8F 04            [24]  564 	mov	ar4,r7
      0028F3 8B 82            [24]  565 	mov	dpl,r3
      0028F5 8A 83            [24]  566 	mov	dph,r2
      0028F7 8C F0            [24]  567 	mov	b,r4
      0028F9 12 70 1B         [24]  568 	lcall	__gptrget
      0028FC FB               [12]  569 	mov	r3,a
      0028FD A3               [24]  570 	inc	dptr
      0028FE 12 70 1B         [24]  571 	lcall	__gptrget
      002901 FC               [12]  572 	mov	r4,a
      002902 30 E7 05         [24]  573 	jnb	acc.7,00102$
      002905 90 00 00         [24]  574 	mov	dptr,#0x0000
      002908 80 63            [24]  575 	sjmp	00103$
      00290A                        576 00102$:
                                    577 ;	stack.c:32: *val = s->data[s->p];
      00290A E5 08            [12]  578 	mov	a,_bp
      00290C 24 FB            [12]  579 	add	a,#0xfb
      00290E F8               [12]  580 	mov	r0,a
      00290F A9 08            [24]  581 	mov	r1,_bp
      002911 09               [12]  582 	inc	r1
      002912 E6               [12]  583 	mov	a,@r0
      002913 F7               [12]  584 	mov	@r1,a
      002914 08               [12]  585 	inc	r0
      002915 09               [12]  586 	inc	r1
      002916 E6               [12]  587 	mov	a,@r0
      002917 F7               [12]  588 	mov	@r1,a
      002918 08               [12]  589 	inc	r0
      002919 09               [12]  590 	inc	r1
      00291A E6               [12]  591 	mov	a,@r0
      00291B F7               [12]  592 	mov	@r1,a
      00291C 0D               [12]  593 	inc	r5
      00291D BD 00 01         [24]  594 	cjne	r5,#0x00,00110$
      002920 0E               [12]  595 	inc	r6
      002921                        596 00110$:
      002921 EB               [12]  597 	mov	a,r3
      002922 2B               [12]  598 	add	a,r3
      002923 FB               [12]  599 	mov	r3,a
      002924 EC               [12]  600 	mov	a,r4
      002925 33               [12]  601 	rlc	a
      002926 FC               [12]  602 	mov	r4,a
      002927 EB               [12]  603 	mov	a,r3
      002928 2B               [12]  604 	add	a,r3
      002929 FB               [12]  605 	mov	r3,a
      00292A EC               [12]  606 	mov	a,r4
      00292B 33               [12]  607 	rlc	a
      00292C FC               [12]  608 	mov	r4,a
      00292D EB               [12]  609 	mov	a,r3
      00292E 2D               [12]  610 	add	a,r5
      00292F FD               [12]  611 	mov	r5,a
      002930 EC               [12]  612 	mov	a,r4
      002931 3E               [12]  613 	addc	a,r6
      002932 FE               [12]  614 	mov	r6,a
      002933 8D 82            [24]  615 	mov	dpl,r5
      002935 8E 83            [24]  616 	mov	dph,r6
      002937 8F F0            [24]  617 	mov	b,r7
      002939 12 70 1B         [24]  618 	lcall	__gptrget
      00293C FD               [12]  619 	mov	r5,a
      00293D A3               [24]  620 	inc	dptr
      00293E 12 70 1B         [24]  621 	lcall	__gptrget
      002941 FE               [12]  622 	mov	r6,a
      002942 A3               [24]  623 	inc	dptr
      002943 12 70 1B         [24]  624 	lcall	__gptrget
      002946 FF               [12]  625 	mov	r7,a
      002947 A3               [24]  626 	inc	dptr
      002948 12 70 1B         [24]  627 	lcall	__gptrget
      00294B FC               [12]  628 	mov	r4,a
      00294C A8 08            [24]  629 	mov	r0,_bp
      00294E 08               [12]  630 	inc	r0
      00294F 86 82            [24]  631 	mov	dpl,@r0
      002951 08               [12]  632 	inc	r0
      002952 86 83            [24]  633 	mov	dph,@r0
      002954 08               [12]  634 	inc	r0
      002955 86 F0            [24]  635 	mov	b,@r0
      002957 ED               [12]  636 	mov	a,r5
      002958 12 6B A0         [24]  637 	lcall	__gptrput
      00295B A3               [24]  638 	inc	dptr
      00295C EE               [12]  639 	mov	a,r6
      00295D 12 6B A0         [24]  640 	lcall	__gptrput
      002960 A3               [24]  641 	inc	dptr
      002961 EF               [12]  642 	mov	a,r7
      002962 12 6B A0         [24]  643 	lcall	__gptrput
      002965 A3               [24]  644 	inc	dptr
      002966 EC               [12]  645 	mov	a,r4
      002967 12 6B A0         [24]  646 	lcall	__gptrput
                                    647 ;	stack.c:33: return 1;
      00296A 90 00 01         [24]  648 	mov	dptr,#0x0001
      00296D                        649 00103$:
                                    650 ;	stack.c:34: }
      00296D 85 08 81         [24]  651 	mov	sp,_bp
      002970 D0 08            [24]  652 	pop	_bp
      002972 22               [24]  653 	ret
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'stack_peek2'
                                    656 ;------------------------------------------------------------
                                    657 ;vals                      Allocated to stack - _bp -5
                                    658 ;s                         Allocated to stack - _bp +1
                                    659 ;nvals                     Allocated to registers r5 r4 
                                    660 ;sloc0                     Allocated to stack - _bp +4
                                    661 ;sloc1                     Allocated to stack - _bp +7
                                    662 ;sloc2                     Allocated to stack - _bp +12
                                    663 ;sloc3                     Allocated to stack - _bp +10
                                    664 ;------------------------------------------------------------
                                    665 ;	stack.c:36: int stack_peek2(stack_t *s, long *vals) __reentrant {
                                    666 ;	-----------------------------------------
                                    667 ;	 function stack_peek2
                                    668 ;	-----------------------------------------
      002973                        669 _stack_peek2:
      002973 C0 08            [24]  670 	push	_bp
      002975 85 81 08         [24]  671 	mov	_bp,sp
      002978 C0 82            [24]  672 	push	dpl
      00297A C0 83            [24]  673 	push	dph
      00297C C0 F0            [24]  674 	push	b
      00297E E5 81            [12]  675 	mov	a,sp
      002980 24 09            [12]  676 	add	a,#0x09
      002982 F5 81            [12]  677 	mov	sp,a
                                    678 ;	stack.c:39: nvals = 0;
                                    679 ;	stack.c:40: vals[0] = vals[1] = 0l;
      002984 E4               [12]  680 	clr	a
      002985 FD               [12]  681 	mov	r5,a
      002986 FC               [12]  682 	mov	r4,a
      002987 E5 08            [12]  683 	mov	a,_bp
      002989 24 FB            [12]  684 	add	a,#0xfb
      00298B F8               [12]  685 	mov	r0,a
      00298C E5 08            [12]  686 	mov	a,_bp
      00298E 24 0A            [12]  687 	add	a,#0x0a
      002990 F9               [12]  688 	mov	r1,a
      002991 E6               [12]  689 	mov	a,@r0
      002992 F7               [12]  690 	mov	@r1,a
      002993 08               [12]  691 	inc	r0
      002994 09               [12]  692 	inc	r1
      002995 E6               [12]  693 	mov	a,@r0
      002996 F7               [12]  694 	mov	@r1,a
      002997 08               [12]  695 	inc	r0
      002998 09               [12]  696 	inc	r1
      002999 E6               [12]  697 	mov	a,@r0
      00299A F7               [12]  698 	mov	@r1,a
      00299B E5 08            [12]  699 	mov	a,_bp
      00299D 24 0A            [12]  700 	add	a,#0x0a
      00299F F8               [12]  701 	mov	r0,a
      0029A0 E5 08            [12]  702 	mov	a,_bp
      0029A2 24 04            [12]  703 	add	a,#0x04
      0029A4 F9               [12]  704 	mov	r1,a
      0029A5 74 04            [12]  705 	mov	a,#0x04
      0029A7 26               [12]  706 	add	a,@r0
      0029A8 F7               [12]  707 	mov	@r1,a
      0029A9 E4               [12]  708 	clr	a
      0029AA 08               [12]  709 	inc	r0
      0029AB 36               [12]  710 	addc	a,@r0
      0029AC 09               [12]  711 	inc	r1
      0029AD F7               [12]  712 	mov	@r1,a
      0029AE 08               [12]  713 	inc	r0
      0029AF 09               [12]  714 	inc	r1
      0029B0 E6               [12]  715 	mov	a,@r0
      0029B1 F7               [12]  716 	mov	@r1,a
      0029B2 E5 08            [12]  717 	mov	a,_bp
      0029B4 24 04            [12]  718 	add	a,#0x04
      0029B6 F8               [12]  719 	mov	r0,a
      0029B7 86 82            [24]  720 	mov	dpl,@r0
      0029B9 08               [12]  721 	inc	r0
      0029BA 86 83            [24]  722 	mov	dph,@r0
      0029BC 08               [12]  723 	inc	r0
      0029BD 86 F0            [24]  724 	mov	b,@r0
      0029BF E4               [12]  725 	clr	a
      0029C0 12 6B A0         [24]  726 	lcall	__gptrput
      0029C3 A3               [24]  727 	inc	dptr
      0029C4 12 6B A0         [24]  728 	lcall	__gptrput
      0029C7 A3               [24]  729 	inc	dptr
      0029C8 12 6B A0         [24]  730 	lcall	__gptrput
      0029CB A3               [24]  731 	inc	dptr
      0029CC 12 6B A0         [24]  732 	lcall	__gptrput
      0029CF E5 08            [12]  733 	mov	a,_bp
      0029D1 24 0A            [12]  734 	add	a,#0x0a
      0029D3 F8               [12]  735 	mov	r0,a
      0029D4 86 82            [24]  736 	mov	dpl,@r0
      0029D6 08               [12]  737 	inc	r0
      0029D7 86 83            [24]  738 	mov	dph,@r0
      0029D9 08               [12]  739 	inc	r0
      0029DA 86 F0            [24]  740 	mov	b,@r0
      0029DC E4               [12]  741 	clr	a
      0029DD 12 6B A0         [24]  742 	lcall	__gptrput
      0029E0 A3               [24]  743 	inc	dptr
      0029E1 12 6B A0         [24]  744 	lcall	__gptrput
      0029E4 A3               [24]  745 	inc	dptr
      0029E5 12 6B A0         [24]  746 	lcall	__gptrput
      0029E8 A3               [24]  747 	inc	dptr
      0029E9 12 6B A0         [24]  748 	lcall	__gptrput
                                    749 ;	stack.c:42: if (s->spin) goto out; /* if called from ISR */
      0029EC A8 08            [24]  750 	mov	r0,_bp
      0029EE 08               [12]  751 	inc	r0
      0029EF 86 82            [24]  752 	mov	dpl,@r0
      0029F1 08               [12]  753 	inc	r0
      0029F2 86 83            [24]  754 	mov	dph,@r0
      0029F4 08               [12]  755 	inc	r0
      0029F5 86 F0            [24]  756 	mov	b,@r0
      0029F7 12 70 1B         [24]  757 	lcall	__gptrget
      0029FA 60 03            [24]  758 	jz	00122$
      0029FC 02 2B 24         [24]  759 	ljmp	00107$
      0029FF                        760 00122$:
                                    761 ;	stack.c:44: if (s->p < 0) goto out;
      0029FF A8 08            [24]  762 	mov	r0,_bp
      002A01 08               [12]  763 	inc	r0
      002A02 E5 08            [12]  764 	mov	a,_bp
      002A04 24 07            [12]  765 	add	a,#0x07
      002A06 F9               [12]  766 	mov	r1,a
      002A07 74 03            [12]  767 	mov	a,#0x03
      002A09 26               [12]  768 	add	a,@r0
      002A0A F7               [12]  769 	mov	@r1,a
      002A0B 74 20            [12]  770 	mov	a,#0x20
      002A0D 08               [12]  771 	inc	r0
      002A0E 36               [12]  772 	addc	a,@r0
      002A0F 09               [12]  773 	inc	r1
      002A10 F7               [12]  774 	mov	@r1,a
      002A11 08               [12]  775 	inc	r0
      002A12 09               [12]  776 	inc	r1
      002A13 E6               [12]  777 	mov	a,@r0
      002A14 F7               [12]  778 	mov	@r1,a
      002A15 E5 08            [12]  779 	mov	a,_bp
      002A17 24 07            [12]  780 	add	a,#0x07
      002A19 F8               [12]  781 	mov	r0,a
      002A1A 86 82            [24]  782 	mov	dpl,@r0
      002A1C 08               [12]  783 	inc	r0
      002A1D 86 83            [24]  784 	mov	dph,@r0
      002A1F 08               [12]  785 	inc	r0
      002A20 86 F0            [24]  786 	mov	b,@r0
      002A22 12 70 1B         [24]  787 	lcall	__gptrget
      002A25 FE               [12]  788 	mov	r6,a
      002A26 A3               [24]  789 	inc	dptr
      002A27 12 70 1B         [24]  790 	lcall	__gptrget
      002A2A FF               [12]  791 	mov	r7,a
      002A2B 30 E7 03         [24]  792 	jnb	acc.7,00123$
      002A2E 02 2B 24         [24]  793 	ljmp	00107$
      002A31                        794 00123$:
                                    795 ;	stack.c:45: vals[1] = s->data[s->p];
      002A31 A8 08            [24]  796 	mov	r0,_bp
      002A33 08               [12]  797 	inc	r0
      002A34 74 01            [12]  798 	mov	a,#0x01
      002A36 26               [12]  799 	add	a,@r0
      002A37 FA               [12]  800 	mov	r2,a
      002A38 E4               [12]  801 	clr	a
      002A39 08               [12]  802 	inc	r0
      002A3A 36               [12]  803 	addc	a,@r0
      002A3B FB               [12]  804 	mov	r3,a
      002A3C 08               [12]  805 	inc	r0
      002A3D 86 04            [24]  806 	mov	ar4,@r0
      002A3F EE               [12]  807 	mov	a,r6
      002A40 2E               [12]  808 	add	a,r6
      002A41 FE               [12]  809 	mov	r6,a
      002A42 EF               [12]  810 	mov	a,r7
      002A43 33               [12]  811 	rlc	a
      002A44 FF               [12]  812 	mov	r7,a
      002A45 EE               [12]  813 	mov	a,r6
      002A46 2E               [12]  814 	add	a,r6
      002A47 FE               [12]  815 	mov	r6,a
      002A48 EF               [12]  816 	mov	a,r7
      002A49 33               [12]  817 	rlc	a
      002A4A FF               [12]  818 	mov	r7,a
      002A4B EE               [12]  819 	mov	a,r6
      002A4C 2A               [12]  820 	add	a,r2
      002A4D FA               [12]  821 	mov	r2,a
      002A4E EF               [12]  822 	mov	a,r7
      002A4F 3B               [12]  823 	addc	a,r3
      002A50 FB               [12]  824 	mov	r3,a
      002A51 8A 82            [24]  825 	mov	dpl,r2
      002A53 8B 83            [24]  826 	mov	dph,r3
      002A55 8C F0            [24]  827 	mov	b,r4
      002A57 12 70 1B         [24]  828 	lcall	__gptrget
      002A5A FA               [12]  829 	mov	r2,a
      002A5B A3               [24]  830 	inc	dptr
      002A5C 12 70 1B         [24]  831 	lcall	__gptrget
      002A5F FB               [12]  832 	mov	r3,a
      002A60 A3               [24]  833 	inc	dptr
      002A61 12 70 1B         [24]  834 	lcall	__gptrget
      002A64 FC               [12]  835 	mov	r4,a
      002A65 A3               [24]  836 	inc	dptr
      002A66 12 70 1B         [24]  837 	lcall	__gptrget
      002A69 FF               [12]  838 	mov	r7,a
      002A6A E5 08            [12]  839 	mov	a,_bp
      002A6C 24 04            [12]  840 	add	a,#0x04
      002A6E F8               [12]  841 	mov	r0,a
      002A6F 86 82            [24]  842 	mov	dpl,@r0
      002A71 08               [12]  843 	inc	r0
      002A72 86 83            [24]  844 	mov	dph,@r0
      002A74 08               [12]  845 	inc	r0
      002A75 86 F0            [24]  846 	mov	b,@r0
      002A77 EA               [12]  847 	mov	a,r2
      002A78 12 6B A0         [24]  848 	lcall	__gptrput
      002A7B A3               [24]  849 	inc	dptr
      002A7C EB               [12]  850 	mov	a,r3
      002A7D 12 6B A0         [24]  851 	lcall	__gptrput
      002A80 A3               [24]  852 	inc	dptr
      002A81 EC               [12]  853 	mov	a,r4
      002A82 12 6B A0         [24]  854 	lcall	__gptrput
      002A85 A3               [24]  855 	inc	dptr
      002A86 EF               [12]  856 	mov	a,r7
      002A87 12 6B A0         [24]  857 	lcall	__gptrput
                                    858 ;	stack.c:46: nvals++;
      002A8A 7D 01            [12]  859 	mov	r5,#0x01
      002A8C 7C 00            [12]  860 	mov	r4,#0x00
                                    861 ;	stack.c:48: if ((s->p - 1) < 0) goto out;
      002A8E E5 08            [12]  862 	mov	a,_bp
      002A90 24 07            [12]  863 	add	a,#0x07
      002A92 F8               [12]  864 	mov	r0,a
      002A93 86 82            [24]  865 	mov	dpl,@r0
      002A95 08               [12]  866 	inc	r0
      002A96 86 83            [24]  867 	mov	dph,@r0
      002A98 08               [12]  868 	inc	r0
      002A99 86 F0            [24]  869 	mov	b,@r0
      002A9B 12 70 1B         [24]  870 	lcall	__gptrget
      002A9E FB               [12]  871 	mov	r3,a
      002A9F A3               [24]  872 	inc	dptr
      002AA0 12 70 1B         [24]  873 	lcall	__gptrget
      002AA3 FA               [12]  874 	mov	r2,a
      002AA4 EB               [12]  875 	mov	a,r3
      002AA5 24 FF            [12]  876 	add	a,#0xff
      002AA7 FE               [12]  877 	mov	r6,a
      002AA8 EA               [12]  878 	mov	a,r2
      002AA9 34 FF            [12]  879 	addc	a,#0xff
      002AAB FF               [12]  880 	mov	r7,a
      002AAC 20 E7 75         [24]  881 	jb	acc.7,00107$
                                    882 ;	stack.c:49: vals[0] = s->data[s->p - 1];
      002AAF A8 08            [24]  883 	mov	r0,_bp
      002AB1 08               [12]  884 	inc	r0
      002AB2 E5 08            [12]  885 	mov	a,_bp
      002AB4 24 07            [12]  886 	add	a,#0x07
      002AB6 F9               [12]  887 	mov	r1,a
      002AB7 74 01            [12]  888 	mov	a,#0x01
      002AB9 26               [12]  889 	add	a,@r0
      002ABA F7               [12]  890 	mov	@r1,a
      002ABB E4               [12]  891 	clr	a
      002ABC 08               [12]  892 	inc	r0
      002ABD 36               [12]  893 	addc	a,@r0
      002ABE 09               [12]  894 	inc	r1
      002ABF F7               [12]  895 	mov	@r1,a
      002AC0 08               [12]  896 	inc	r0
      002AC1 09               [12]  897 	inc	r1
      002AC2 E6               [12]  898 	mov	a,@r0
      002AC3 F7               [12]  899 	mov	@r1,a
      002AC4 EB               [12]  900 	mov	a,r3
      002AC5 24 FF            [12]  901 	add	a,#0xff
      002AC7 FE               [12]  902 	mov	r6,a
      002AC8 EA               [12]  903 	mov	a,r2
      002AC9 34 FF            [12]  904 	addc	a,#0xff
      002ACB FF               [12]  905 	mov	r7,a
      002ACC EE               [12]  906 	mov	a,r6
      002ACD 2E               [12]  907 	add	a,r6
      002ACE FE               [12]  908 	mov	r6,a
      002ACF EF               [12]  909 	mov	a,r7
      002AD0 33               [12]  910 	rlc	a
      002AD1 FF               [12]  911 	mov	r7,a
      002AD2 EE               [12]  912 	mov	a,r6
      002AD3 2E               [12]  913 	add	a,r6
      002AD4 FE               [12]  914 	mov	r6,a
      002AD5 EF               [12]  915 	mov	a,r7
      002AD6 33               [12]  916 	rlc	a
      002AD7 FF               [12]  917 	mov	r7,a
      002AD8 E5 08            [12]  918 	mov	a,_bp
      002ADA 24 07            [12]  919 	add	a,#0x07
      002ADC F8               [12]  920 	mov	r0,a
      002ADD EE               [12]  921 	mov	a,r6
      002ADE 26               [12]  922 	add	a,@r0
      002ADF FE               [12]  923 	mov	r6,a
      002AE0 EF               [12]  924 	mov	a,r7
      002AE1 08               [12]  925 	inc	r0
      002AE2 36               [12]  926 	addc	a,@r0
      002AE3 FD               [12]  927 	mov	r5,a
      002AE4 08               [12]  928 	inc	r0
      002AE5 86 07            [24]  929 	mov	ar7,@r0
      002AE7 8E 82            [24]  930 	mov	dpl,r6
      002AE9 8D 83            [24]  931 	mov	dph,r5
      002AEB 8F F0            [24]  932 	mov	b,r7
      002AED 12 70 1B         [24]  933 	lcall	__gptrget
      002AF0 FE               [12]  934 	mov	r6,a
      002AF1 A3               [24]  935 	inc	dptr
      002AF2 12 70 1B         [24]  936 	lcall	__gptrget
      002AF5 FD               [12]  937 	mov	r5,a
      002AF6 A3               [24]  938 	inc	dptr
      002AF7 12 70 1B         [24]  939 	lcall	__gptrget
      002AFA FC               [12]  940 	mov	r4,a
      002AFB A3               [24]  941 	inc	dptr
      002AFC 12 70 1B         [24]  942 	lcall	__gptrget
      002AFF FF               [12]  943 	mov	r7,a
      002B00 E5 08            [12]  944 	mov	a,_bp
      002B02 24 0A            [12]  945 	add	a,#0x0a
      002B04 F8               [12]  946 	mov	r0,a
      002B05 86 82            [24]  947 	mov	dpl,@r0
      002B07 08               [12]  948 	inc	r0
      002B08 86 83            [24]  949 	mov	dph,@r0
      002B0A 08               [12]  950 	inc	r0
      002B0B 86 F0            [24]  951 	mov	b,@r0
      002B0D EE               [12]  952 	mov	a,r6
      002B0E 12 6B A0         [24]  953 	lcall	__gptrput
      002B11 A3               [24]  954 	inc	dptr
      002B12 ED               [12]  955 	mov	a,r5
      002B13 12 6B A0         [24]  956 	lcall	__gptrput
      002B16 A3               [24]  957 	inc	dptr
      002B17 EC               [12]  958 	mov	a,r4
      002B18 12 6B A0         [24]  959 	lcall	__gptrput
      002B1B A3               [24]  960 	inc	dptr
      002B1C EF               [12]  961 	mov	a,r7
      002B1D 12 6B A0         [24]  962 	lcall	__gptrput
                                    963 ;	stack.c:50: nvals++;
      002B20 7D 02            [12]  964 	mov	r5,#0x02
      002B22 7C 00            [12]  965 	mov	r4,#0x00
                                    966 ;	stack.c:52: out:
      002B24                        967 00107$:
                                    968 ;	stack.c:53: return nvals;
      002B24 8D 82            [24]  969 	mov	dpl,r5
      002B26 8C 83            [24]  970 	mov	dph,r4
                                    971 ;	stack.c:54: }
      002B28 85 08 81         [24]  972 	mov	sp,_bp
      002B2B D0 08            [24]  973 	pop	_bp
      002B2D 22               [24]  974 	ret
                                    975 ;------------------------------------------------------------
                                    976 ;Allocation info for local variables in function 'stack_iter_peek'
                                    977 ;------------------------------------------------------------
                                    978 ;iter                      Allocated to stack - _bp -4
                                    979 ;_ctx                      Allocated to stack - _bp -7
                                    980 ;s                         Allocated to stack - _bp +1
                                    981 ;j                         Allocated to registers 
                                    982 ;r                         Allocated to registers r2 r7 
                                    983 ;sloc0                     Allocated to stack - _bp +4
                                    984 ;------------------------------------------------------------
                                    985 ;	stack.c:56: int stack_iter_peek(stack_t *s, stack_iter_t iter, void *_ctx) __reentrant {
                                    986 ;	-----------------------------------------
                                    987 ;	 function stack_iter_peek
                                    988 ;	-----------------------------------------
      002B2E                        989 _stack_iter_peek:
      002B2E C0 08            [24]  990 	push	_bp
      002B30 85 81 08         [24]  991 	mov	_bp,sp
      002B33 C0 82            [24]  992 	push	dpl
      002B35 C0 83            [24]  993 	push	dph
      002B37 C0 F0            [24]  994 	push	b
      002B39 05 81            [12]  995 	inc	sp
      002B3B 05 81            [12]  996 	inc	sp
      002B3D 05 81            [12]  997 	inc	sp
                                    998 ;	stack.c:59: if (s->p < 0) return 0;
      002B3F A8 08            [24]  999 	mov	r0,_bp
      002B41 08               [12] 1000 	inc	r0
      002B42 74 03            [12] 1001 	mov	a,#0x03
      002B44 26               [12] 1002 	add	a,@r0
      002B45 FB               [12] 1003 	mov	r3,a
      002B46 74 20            [12] 1004 	mov	a,#0x20
      002B48 08               [12] 1005 	inc	r0
      002B49 36               [12] 1006 	addc	a,@r0
      002B4A FA               [12] 1007 	mov	r2,a
      002B4B 08               [12] 1008 	inc	r0
      002B4C 86 04            [24] 1009 	mov	ar4,@r0
      002B4E 8B 82            [24] 1010 	mov	dpl,r3
      002B50 8A 83            [24] 1011 	mov	dph,r2
      002B52 8C F0            [24] 1012 	mov	b,r4
      002B54 12 70 1B         [24] 1013 	lcall	__gptrget
      002B57 FB               [12] 1014 	mov	r3,a
      002B58 A3               [24] 1015 	inc	dptr
      002B59 12 70 1B         [24] 1016 	lcall	__gptrget
      002B5C FC               [12] 1017 	mov	r4,a
      002B5D 30 E7 06         [24] 1018 	jnb	acc.7,00102$
      002B60 90 00 00         [24] 1019 	mov	dptr,#0x0000
      002B63 02 2C 19         [24] 1020 	ljmp	00109$
      002B66                       1021 00102$:
                                   1022 ;	stack.c:61: for (j = s->p, r = 0; j >= 0; j--) {
      002B66 7A 00            [12] 1023 	mov	r2,#0x00
      002B68 7F 00            [12] 1024 	mov	r7,#0x00
      002B6A A8 08            [24] 1025 	mov	r0,_bp
      002B6C 08               [12] 1026 	inc	r0
      002B6D E5 08            [12] 1027 	mov	a,_bp
      002B6F 24 04            [12] 1028 	add	a,#0x04
      002B71 F9               [12] 1029 	mov	r1,a
      002B72 74 01            [12] 1030 	mov	a,#0x01
      002B74 26               [12] 1031 	add	a,@r0
      002B75 F7               [12] 1032 	mov	@r1,a
      002B76 E4               [12] 1033 	clr	a
      002B77 08               [12] 1034 	inc	r0
      002B78 36               [12] 1035 	addc	a,@r0
      002B79 09               [12] 1036 	inc	r1
      002B7A F7               [12] 1037 	mov	@r1,a
      002B7B 08               [12] 1038 	inc	r0
      002B7C 09               [12] 1039 	inc	r1
      002B7D E6               [12] 1040 	mov	a,@r0
      002B7E F7               [12] 1041 	mov	@r1,a
      002B7F                       1042 00107$:
      002B7F EC               [12] 1043 	mov	a,r4
      002B80 30 E7 03         [24] 1044 	jnb	acc.7,00129$
      002B83 02 2C 15         [24] 1045 	ljmp	00105$
      002B86                       1046 00129$:
                                   1047 ;	stack.c:62: r = iter(_ctx, s->data[j]);
      002B86 EB               [12] 1048 	mov	a,r3
      002B87 2B               [12] 1049 	add	a,r3
      002B88 FD               [12] 1050 	mov	r5,a
      002B89 EC               [12] 1051 	mov	a,r4
      002B8A 33               [12] 1052 	rlc	a
      002B8B FE               [12] 1053 	mov	r6,a
      002B8C ED               [12] 1054 	mov	a,r5
      002B8D 2D               [12] 1055 	add	a,r5
      002B8E FD               [12] 1056 	mov	r5,a
      002B8F EE               [12] 1057 	mov	a,r6
      002B90 33               [12] 1058 	rlc	a
      002B91 FE               [12] 1059 	mov	r6,a
      002B92 C0 03            [24] 1060 	push	ar3
      002B94 C0 04            [24] 1061 	push	ar4
      002B96 E5 08            [12] 1062 	mov	a,_bp
      002B98 24 04            [12] 1063 	add	a,#0x04
      002B9A F8               [12] 1064 	mov	r0,a
      002B9B ED               [12] 1065 	mov	a,r5
      002B9C 26               [12] 1066 	add	a,@r0
      002B9D FD               [12] 1067 	mov	r5,a
      002B9E EE               [12] 1068 	mov	a,r6
      002B9F 08               [12] 1069 	inc	r0
      002BA0 36               [12] 1070 	addc	a,@r0
      002BA1 FC               [12] 1071 	mov	r4,a
      002BA2 08               [12] 1072 	inc	r0
      002BA3 86 06            [24] 1073 	mov	ar6,@r0
      002BA5 8D 82            [24] 1074 	mov	dpl,r5
      002BA7 8C 83            [24] 1075 	mov	dph,r4
      002BA9 8E F0            [24] 1076 	mov	b,r6
      002BAB 12 70 1B         [24] 1077 	lcall	__gptrget
      002BAE FD               [12] 1078 	mov	r5,a
      002BAF A3               [24] 1079 	inc	dptr
      002BB0 12 70 1B         [24] 1080 	lcall	__gptrget
      002BB3 FC               [12] 1081 	mov	r4,a
      002BB4 A3               [24] 1082 	inc	dptr
      002BB5 12 70 1B         [24] 1083 	lcall	__gptrget
      002BB8 FE               [12] 1084 	mov	r6,a
      002BB9 A3               [24] 1085 	inc	dptr
      002BBA 12 70 1B         [24] 1086 	lcall	__gptrget
      002BBD FB               [12] 1087 	mov	r3,a
      002BBE C0 04            [24] 1088 	push	ar4
      002BC0 C0 03            [24] 1089 	push	ar3
      002BC2 C0 05            [24] 1090 	push	ar5
      002BC4 C0 04            [24] 1091 	push	ar4
      002BC6 C0 06            [24] 1092 	push	ar6
      002BC8 C0 03            [24] 1093 	push	ar3
      002BCA 12 2B CF         [24] 1094 	lcall	00130$
      002BCD 80 1A            [24] 1095 	sjmp	00131$
      002BCF                       1096 00130$:
      002BCF E5 08            [12] 1097 	mov	a,_bp
      002BD1 24 FC            [12] 1098 	add	a,#0xfc
      002BD3 F8               [12] 1099 	mov	r0,a
      002BD4 E6               [12] 1100 	mov	a,@r0
      002BD5 C0 E0            [24] 1101 	push	acc
      002BD7 08               [12] 1102 	inc	r0
      002BD8 E6               [12] 1103 	mov	a,@r0
      002BD9 C0 E0            [24] 1104 	push	acc
      002BDB E5 08            [12] 1105 	mov	a,_bp
      002BDD 24 F9            [12] 1106 	add	a,#0xf9
      002BDF F8               [12] 1107 	mov	r0,a
      002BE0 86 82            [24] 1108 	mov	dpl,@r0
      002BE2 08               [12] 1109 	inc	r0
      002BE3 86 83            [24] 1110 	mov	dph,@r0
      002BE5 08               [12] 1111 	inc	r0
      002BE6 86 F0            [24] 1112 	mov	b,@r0
      002BE8 22               [24] 1113 	ret
      002BE9                       1114 00131$:
      002BE9 AD 82            [24] 1115 	mov	r5,dpl
      002BEB AE 83            [24] 1116 	mov	r6,dph
      002BED E5 81            [12] 1117 	mov	a,sp
      002BEF 24 FC            [12] 1118 	add	a,#0xfc
      002BF1 F5 81            [12] 1119 	mov	sp,a
      002BF3 D0 03            [24] 1120 	pop	ar3
      002BF5 D0 04            [24] 1121 	pop	ar4
      002BF7 8D 02            [24] 1122 	mov	ar2,r5
      002BF9 8E 07            [24] 1123 	mov	ar7,r6
                                   1124 ;	stack.c:63: if (r <= 0) break;
      002BFB C3               [12] 1125 	clr	c
      002BFC E4               [12] 1126 	clr	a
      002BFD 9A               [12] 1127 	subb	a,r2
      002BFE 74 80            [12] 1128 	mov	a,#(0x00 ^ 0x80)
      002C00 8F F0            [24] 1129 	mov	b,r7
      002C02 63 F0 80         [24] 1130 	xrl	b,#0x80
      002C05 95 F0            [12] 1131 	subb	a,b
      002C07 D0 04            [24] 1132 	pop	ar4
      002C09 D0 03            [24] 1133 	pop	ar3
      002C0B 50 08            [24] 1134 	jnc	00105$
                                   1135 ;	stack.c:61: for (j = s->p, r = 0; j >= 0; j--) {
      002C0D 1B               [12] 1136 	dec	r3
      002C0E BB FF 01         [24] 1137 	cjne	r3,#0xff,00133$
      002C11 1C               [12] 1138 	dec	r4
      002C12                       1139 00133$:
      002C12 02 2B 7F         [24] 1140 	ljmp	00107$
      002C15                       1141 00105$:
                                   1142 ;	stack.c:66: return r;
      002C15 8A 82            [24] 1143 	mov	dpl,r2
      002C17 8F 83            [24] 1144 	mov	dph,r7
      002C19                       1145 00109$:
                                   1146 ;	stack.c:67: }
      002C19 85 08 81         [24] 1147 	mov	sp,_bp
      002C1C D0 08            [24] 1148 	pop	_bp
      002C1E 22               [24] 1149 	ret
                                   1150 	.area CSEG    (CODE)
                                   1151 	.area CONST   (CODE)
                                   1152 	.area XINIT   (CODE)
                                   1153 	.area CABS    (ABS,CODE)
