; PAULMON2, a user-friendly 8051 monitor, by Paul Stoffregen
; Please email comments, suggestions, bugs to paul@pjrc.com
;
; Version 2.1
;	Some code size improvements, contributed by Alexander B. Alexandrov
;	Download can now start from main menu prompt
;
; Version 2.1ab
;	Extensive mods by Atanas Bachvaroff <bachvaroff@gmail.com>
;
; See LICENSE

;---------------------------------------------------------;
;							  ;
;	    PAULMON2's default configuration		  ;
;							  ;
;---------------------------------------------------------;

;---------------------------------------------------------;
; These two parameters control where PAULMON2 will be assembled,
; and where it will attempt to LJMP at the interrupt vector locations.
.equ	base, 0x0000		; location for PAULMON2
.equ	vector, 0x2000		; location to LJMP interrupt vectors
;---------------------------------------------------------;

;---------------------------------------------------------;
; These three parameters tell PAULMON2 where the user's memory is
; installed. "bmem" and "emem" define the space that will be searched
; for program headers, user installed commands, start-up programs, etc.
; "bmem" and "emem" should be use so they exclude memory areas where
; perphreal devices may be mapped, as reading memory from an io chip
; may reconfigure it unexpectedly.
.equ	pgm, 0x2000		; default location for the user program
.equ	bmem, 0x1000		; where is the beginning of memory to search
.equ	emem, 0xdfff		; end of the memory to search
;---------------------------------------------------------;

;---------------------------------------------------------;
.equ	psw_init, 0		; value for psw (which reg bank to use)
.equ	p2_init, 0xff		; boot time default page is at 0xff00
.equ	sp_init, 0x17		; location of the stack
.equ	sp_reset, 0x07		; stack on reset
.equ	mctrl_reset, 11111111b	; memory controller (P1) on reset
.equ	mctrl_shadow, 11111110b	; memory controller (P1) in shadow mode
.equ	dnld_parm, 0x08		; block of 16 bytes for download
; |00|01|02|03|04|05|06|07|08|09|0a|0b|0c|0d|0e|0f|
;			 \__ sp_reset
; |10|11|12|13|14|15|16|17|
;			 \__ sp_init
;
; |r0|r1|r2|r3|r4|r5|r6|r7|  .  .  .  dnld  .  .  |
; |  .  .  .  dnld  .  .  |
;---------------------------------------------------------;

;---------------------------------------------------------;
; bc = 65536 - (OSC / 32) / baud
;---------------------------------------------------------;
; 0xfffa @ 57600bps @ 11.059MHz
;.equ	bc, 0xfffa
; 0xfff7 @ 38400bps @ 11.059MHz
;.equ	bc, 0xfff7
; 0xffee @ 19200bps @ 11.059MHz
;.equ	bc, 0xffee
; 0xffdc @ 9600bps @ 11.059MHz
;.equ	bc, 0xffdc
; 0xfff7 @ 57600bps @ 16.5888MHz
.equ	bc, 0xfff7
; 0xffee @ 28800bps @ 16.5888MHz
;.equ	bc, 0xffee
; 0xffe5 @ 19200bps @ 16.5888MHz
;.equ	bc, 0xffe5
; 0xffca @ 9600bps @ 16.5888MHz
;.equ	bc, 0xffca
;---------------------------------------------------------;

;---------------------------------------------------------;
; Key command definitions
.equ	help_key, '?'		; help screen
.equ	dir_key, 'M'		; directory
.equ	run_key, 'R'		; run program
.equ	dnld_key, 'D'		; download
.equ	upld_key, 'U'		; upload
.equ	nloc_key, 'N'		; new memory location
.equ	jump_key, 'J'		; jump to memory location
.equ	dump_key, 'H'		; hex dump memory
.equ	intm_key, 'I'		; hex dump internal memory
.equ	edit_key, 'E'		; edit memory
.equ	clrm_key, 'C'		; clear memory
.equ	crc16_key, 'W'		; calculate crc16
.equ	baud_key, 'B'		; reset baudrate
.equ	eio77_key, '<'		; enable IO space 0xe000-0xffff
.equ	dio77_key, '>'		; disable IO space 0xe000-0xffff
;---------------------------------------------------------;

;---------------------------------------------------------;
; Common ASCII codes
.equ	LF, '\n'
.equ	CR, '\r'
.equ	ESC, 27
.equ	SPACE, ' '
;---------------------------------------------------------;

;---------------------------------------------------------;
;							  ;
;		     Interrupt Vectors			  ;
;							  ;
;---------------------------------------------------------;

; spare the flash by filling the space between vectors
; with "mov r7, a" / 0xff in binary

;------ RESET --------------------------------------------;
.org	base
	ljmp	reset
;------ RESET --------------------------------------------;

;------ IE0_VECTOR ---------------------------------------;
.org	base + 3
	ljmp	vector + 3
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
;------ IE0_VECTOR ---------------------------------------;

;------ TF0_VECTOR ---------------------------------------;
.org	base + 11
	ljmp	vector + 11
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
;------ TF0_VECTOR ---------------------------------------;

;------ IE1_VECTOR ---------------------------------------;
.org	base + 19
	ljmp	vector + 19
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
;------ IE1_VECTOR ---------------------------------------;

;------ TF1_VECTOR ---------------------------------------;
.org	base + 27
	ljmp	vector + 27
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
;------ TF1_VECTOR ---------------------------------------;

;------ SI0_VECTOR ---------------------------------------;
.org	base + 35
	ljmp	vector + 35
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
;------ SI0_VECTOR ---------------------------------------;

;------ TF2_VECTOR --- EX2_VECTOR ------------------------;
.org	base + 43
	ljmp	vector + 43
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
;------ TF2_VECTOR --- EX2_VECTOR ------------------------;

;---------------------------------------------------------;
;							  ;
;	The jump table for user programs to call	  ;
;	      subroutines within PAULMON		  ;
;	   Update paulmon21.equ accordingly		  ;
;							  ;
;---------------------------------------------------------;

.org	base + 51
	ljmp	setbaud		; JMP_TABLE 0x0033
	ljmp	cin		; JMP_TABLE 0x0036
	ljmp	cinpoll		; JMP_TABLE 0x0039
	ljmp	cout		; JMP_TABLE 0x003c
	
	ljmp	phex		; JMP_TABLE 0x003f
	ljmp	phex1		; JMP_TABLE 0x0042
	ljmp	phex16		; JMP_TABLE 0x0045
	ljmp	pcstr		; JMP_TABLE 0x0048
	ljmp	pcb7str		; JMP_TABLE 0x004b
	ljmp	pint8u		; JMP_TABLE 0x004e
	ljmp	pint8		; JMP_TABLE 0x0051
	ljmp	pint16u		; JMP_TABLE 0x0054
	ljmp	crlf		; JMP_TABLE 0x0057
	
	ljmp	ghex		; JMP_TABLE 0x005a
	ljmp	ghex16		; JMP_TABLE 0x005d
	
	ljmp	asc2hex		; JMP_TABLE 0x0060
	ljmp	upper		; JMP_TABLE 0x0063
	ljmp	lenstr		; JMP_TABLE 0x0066
	
	ljmp	init_crc16	; JMP_TABLE 0x0069
	ljmp	update_crc16	; JMP_TABLE 0x006c
	ljmp	finish_crc16	; JMP_TABLE 0x006f
	
	ljmp	find		; JMP_TABLE 0x0072

;---------------------------------------------------------;
;							  ;
;	       Subroutines for serial I/O		  ;
;							  ;
;---------------------------------------------------------;

cin:
	jnb	ri, cin
	mov	a, sbuf
	clr	ri
	ret

cinpoll:
	setb	c
	jnb	ri, cinpoll1
	mov	a, sbuf
	clr	ri
	clr	c
cinpoll1:
	ret

cout:
	jnb	ti, cout
	clr	ti
	mov	sbuf, a
	ret

sspace:
	push	acc
	mov	a, #SPACE
	acall	cout
	pop	acc
	ret

dash:
	push	acc
	mov	a, #'-'
	acall	cout
	pop	acc
	ret

crlf:
	push	acc
	mov	a, #CR
	acall	cout
	mov	a, #LF
	acall	cout
	pop	acc
	ret

cout_sp:
	acall	cout
	ajmp	sspace

dash_sp:
	acall	dash
	ajmp	sspace

dspace:
	acall	sspace
	ajmp	sspace

dcrlf:
	acall	crlf
	ajmp	crlf

pcstr:
	push	acc
pcstr1:
	movx	a, @dptr
	inc	dptr
	jz	pcstr2
	acall	cout
	sjmp	pcstr1
pcstr2:
	pop	acc
	ret

pcb7str:
	push	acc
pcb7str1:
	movx	a, @dptr
	inc	dptr
	jz	pcb7str3
	jb	acc.7, pcb7str2
	acall	cout
	sjmp	pcb7str1
pcb7str2:
	anl	a, #0x7f
	acall	cout
pcb7str3:
	pop	acc
	ret

;---------------------------------------------------------;

; get 2 digit hex number from serial port
; c = set if ESC pressed, clear otherwise
; psw.5 = set if return w/ no input, clear otherwise

ghex:
ghex8:
	clr	psw.5
ghex8c:
	acall	cin	; get first digit
	acall	upper
	cjne	a, #ESC, ghex8f
ghex8d:
	setb	c
	clr	a
	ret
ghex8f:
	cjne	a, #CR, ghex8h
	setb	psw.5
	clr	c
	clr	a
	ret
ghex8h:
	mov	r2, a
	acall	asc2hex
	jc	ghex8c
	xch	a, r2		; r2 will hold hex value of 1st digit
	acall	cout
ghex8j:
	acall	cin	; get second digit
	acall	upper
	cjne	a, #ESC, ghex8k
	sjmp	ghex8d
ghex8k:
	cjne	a, #CR, ghex8m
	mov	a, r2
	clr	c
	ret
ghex8m:
	cjne	a, #8, ghex8p
ghex8n:
	acall	cout
	sjmp	ghex8c
ghex8p:
	cjne	a, #21, ghex8q
	sjmp	ghex8n
ghex8q:
	mov	r3, a
	acall	asc2hex
	jc	ghex8j
	xch	a, r3
	acall	cout
	mov	a, r2
	swap	a
	orl	a, r3
	clr	c
	ret

;---------------------------------------------------------;

; carry set if esc pressed
; psw.5 set if return pressed w/ no input

ghex16:
	mov	r2, #0		; start out with 0
	mov	r3, #0
	mov	r4, #4		; number of digits left
	clr	psw.5

ghex16c:
	acall	cin
	acall	upper
	cjne	a, #ESC, ghex16d
	setb	c		; handle esc key
	clr	a
	mov	dph, a
	mov	dpl, a
	ret
ghex16d:
	cjne	a, #8, ghex16f
	sjmp	ghex16k
ghex16f:
	cjne	a, #127, ghex16g	; handle backspace
ghex16k:
	cjne	r4, #4, ghex16e		; have they entered anything yet?
	sjmp	ghex16c
ghex16e:
	acall	cout
	acall	ghex16y
	inc	r4
	sjmp	ghex16c
ghex16g:
	cjne	a, #CR, ghex16i		; return key
	mov	dph, r3
	mov	dpl, r2
	cjne	r4, #4, ghex16h
	clr	a
	mov	dph, a
	mov	dpl, a
	setb	psw.5
ghex16h:
	clr	c
	ret
ghex16i:
	mov	r5, a			; keep copy of original keystroke
	acall	asc2hex
	jc	ghex16c
	xch	a, r5
	lcall	cout
	mov	a, r5
	push	acc
	acall	ghex16x
	pop	acc
	add	a, r2
	mov	r2, a
	clr	a
	addc	a, r3
	mov	r3, a
	djnz	r4, ghex16c
	clr	c
	mov	dpl, r2
	mov	dph, r3
	ret

ghex16x:
	; multiply r3-r2 by 16 (shift left by 4)
	mov	a, r3
	swap	a
	anl	a, #11110000b
	mov	r3, a
	mov	a, r2
	swap	a
	anl	a, #00001111b
	orl	a, r3
	mov	r3, a
	mov	a, r2
	swap	a
	anl	a, #11110000b
	mov	r2, a
	ret

ghex16y:
	; divide r3-r2 by 16 (shift right by 4)
	mov	a, r2
	swap	a
	anl	a, #00001111b
	mov	r2, a
	mov	a, r3
	swap	a
	anl	a, #11110000b
	orl	a, r2
	mov	r2, a
	mov	a, r3
	swap	a
	anl	a, #00001111b
	mov	r3, a
	ret

asc2hex:
	; carry set if invalid input
	add	a, #208
	jnc	hex_not
	add	a, #246
	jc	hex_maybe
	add	a, #10
	clr	c
	ret
hex_maybe:
	add	a, #249
	jnc	hex_not
	add	a, #250
	jc	hex_not
	add	a, #16
	clr	c
	ret
hex_not:
	setb	c
	ret

;---------------------------------------------------------;

; Highly code efficient resursive call phex contributed
; by Alexander B. Alexandrov <abalex@cbr.spb.ru>

phex:
phex8:
	acall	phex_b
phex_b:
	swap	a		; SWAP A will be twice => A unchanged
phex1:
	push	acc
	anl	a, #15
	add	a, #0x90	; acc is 0x9X, where X is hex digit
	da	a		; if A to F, C=1 and lower four bits are 0..5
	addc	a, #0x40
	da	a
	acall	cout
	pop	acc
	ret

;---------------------------------------------------------;

phex16:
	push	acc
	mov	a, dph
	acall	phex
	mov	a, dpl
	acall	phex
	pop	acc
	ret

;---------------------------------------------------------;

; converts the ascii code in Acc to uppercase, if it is lowercase
; Code efficient (saves 6 byes) upper contributed
; by Alexander B. Alexandrov <abalex@cbr.spb.ru>

upper:
	cjne	a, #97, upper2
upper2:
	jc	upper4		; end if acc < 97
	cjne	a, #123, upper3
upper3:
	jnc	upper4		; end if acc >= 123
	add	a, #224		; convert to uppercase
upper4:
	ret

;---------------------------------------------------------;

lenstr:
	mov	r0, #0		; returns length of a string in r0
	push	acc
lenstr1:
	movx	a, @dptr
	jz	lenstr2
	inc	r0
	inc	dptr
	sjmp	lenstr1
lenstr2:
	pop	acc
	ret

;---------------------------------------------------------;

menu:
; first we print out the prompt, which isn't as simple
; as it may seem, since external code can add to the
; prompt, so we've got to find and execute all of 'em.
	mov	dptr, #prompt1	; give 'em the first part of prompt
	acall	pcstr
	mov	a, r7
	acall	phex
	mov	a, r6
	acall	phex
	mov	dptr, #prompt2
	acall	pcstr
	
; now we're finally past the prompt, so let's get some input
	acall	cin		; get the input, finally
	cjne	a, #':', menu0
	acall	dnld_now
	sjmp	menu
menu0:
	acall	upper
	
; push return address onto stack so we can just jump to the program
	mov	b, #(menu & 0xff)	; we push the return address now,
	push	b		; to save code later...
	mov	b, #(menu >> 8)	; if bogus input, just ret for
	push	b		; another prompt.
	
; first we'll look through memory for a program header that says
; it's a user installed command which matches what the user pressed
	
; user installed commands need to avoid changing R6/R7, which holds
; the memory pointer. The stack pointer can't be changed obviously.
; all the other general purpose registers should be available for
; user commands to alter as they wish.
	
menux:
	mov	b, a		; now search for external commands...
	mov	dptr, #bmem
menux1:
	lcall	find
	jnc	menuxend	; searched all the commands?
	mov	dpl, #4
	movx	a, @dptr
	cjne	a, #254, menux2	; only FE is an ext command
	inc	dpl
	movx	a, @dptr
	cjne	a, b, menux2	; only run if they want it
	acall	sspace
	mov	dpl, #32
	acall	pcstr		; print command name
	acall	crlf
	mov	dpl, #64
	clr	a
	jmp	@a+dptr		; take a leap of faith and jump to it!
menux2:
	inc	dph
	mov	a, dph
	cjne	a, #((emem + 1) >> 8) & 0xff, menux1
menuxend:
	mov	a, b
	
; since we didn't find a user installed command, use the builtin ones
menui1:
	cjne	a, #help_key, menui2
	mov	dptr, #help_cmd2
	acall	pcstr
	ajmp	help
	
menui2:
	cjne	a, #dir_key, menui3
	mov	dptr, #dir_cmd
	acall	pcstr
	ajmp	dir
	
menui3:
	cjne	a, #run_key, menui4
	mov	dptr, #run_cmd
	acall	pcstr
	ajmp	run
	
menui4:
	cjne	a, #dnld_key, menui5
	mov	dptr, #dnld_cmd
	acall	pcstr
	ajmp	dnld
	
menui5:
	cjne	a, #upld_key, menui6
	mov	dptr, #upld_cmd
	acall	pcstr
	ajmp	upld
	
menui6:
	cjne	a, #nloc_key, menui7
	mov	dptr, #nloc_cmd
	acall	pcstr
	ajmp	nloc
	
menui7:
	cjne	a, #jump_key, menui8
	mov	dptr, #jump_cmd
	acall	pcstr
	ajmp	jump
	
menui8:
	cjne	a, #dump_key, menui9
	mov	dptr, #dump_cmd
	acall	pcstr
	ajmp	dump
	
menui9:
	cjne	a, #edit_key, menui10
	mov	dptr, #edit_cmd
	acall	pcstr
	ajmp	edit
	
menui10:
	cjne	a, #clrm_key, menui11
	mov	dptr, #clrm_cmd
	acall	pcstr
	ajmp	clrm
	
menui11:
	cjne	a, #intm_key, menui12
	mov	dptr, #intm_cmd
	acall	pcstr
	ljmp	intm
	
menui12:
	cjne	a, #eio77_key, menui13
	mov	dptr, #eio77_cmd
	acall	pcstr
	ljmp	eio77
	
menui13:
	cjne	a, #dio77_key, menui14
	mov	dptr, #dio77_cmd
	acall	pcstr
	ljmp	dio77
	
menui14:
	cjne	a, #crc16_key, menui15
	mov	dptr, #crc16_cmd
	acall	pcstr
	ljmp	calc_crc16
	
menui15:
	cjne	a, #baud_key, menuiend
	mov	dptr, #baud_cmd
	acall	pcstr
	ljmp	reset_baud
	
menuiend:
	ajmp	crlf

;---------------------------------------------------------;

r6r7todptr:
	mov	dpl, r6
	mov	dph, r7
	ret

dptrtor6r7:
	mov	r6, dpl
	mov	r7, dph
	ret

;---------------------------------------------------------;

; dnlds1 = "Begin sending Intel HEX format file <ESC> to abort"
; dnlds2 = "Download aborted"
; dnlds3 = "Download completed"

; 16 byte parameter table: (eight 16 bit values)
;  *   0 = lines received
;  *   1 = bytes received
;  *   2 = bytes written
;  *   3 = bytes unable to write
;  *   4 = incorrect checksums
;  *   5 = unexpected begin of line
;  *   6 = unexpected hex digits (while waiting for bol)
;  *   7 = unexpected non-hex digits (in middle of a line)

dnld:
	mov	dptr, #dnlds1	; "begin sending file <ESC> to abort"
	acall	pcstr
	acall	dnld_init
	
dnld1:
; look for begining of line marker ':'
	acall	cin
	cjne	a, #ESC, dnld2	; Test for escape
	sjmp	dnld_esc
	
dnld2:
	cjne	a, #':', dnld2b
	sjmp	dnld2d
dnld2b:
; check to see if it's a hex digit, error if it is
	acall	asc2hex
	jc	dnld1
	mov	r1, #6
	acall	dnld_inc
	sjmp	dnld1
	
dnld_now:
; entry point for main menu detecting ':' character
	mov	a, #':'
	acall	cout
	acall	dnld_init
	
dnld2d:
	mov	r1, #0
	acall	dnld_inc
	
dnld3:
; begin taking in the line of data
;	mov	a, #'.'
;	acall	cout
	mov	r4, #0		; r4 will count up checksum
	acall	dnld_ghex
	mov	r0, a		; R0 = # of data bytes
;	mov	a, #'.'
;	acall	cout
	acall	dnld_ghex
	mov	dph, a		; High byte of load address
	acall	dnld_ghex
	mov	dpl, a		; Low byte of load address
	acall	dnld_ghex	; Record type
	cjne	a, #1, dnld4	; End record?
	sjmp	dnld_end
dnld4:
	jnz	dnld_unknown	; is it a unknown record type???
dnld5:
	mov	a, r0
	jz	dnld_get_cksum
	acall	dnld_ghex	; Get data byte
	mov	r2, a
	mov	r1, #1
	acall	dnld_inc	; count total data bytes received
	mov	a, r2
	movx	@dptr, a
	mov	r1, #2
	acall	dnld_inc
	inc	dptr
	djnz	r0, dnld5
dnld_get_cksum:
	acall	dnld_ghex	; get checksum
	mov	a, r4
	jz	dnld1		; should always add to zero
dnld_sumerr:
	mov	r1, #4
	acall	dnld_inc	; all we can do it count # of cksum errors
	sjmp	dnld1
	
dnld_unknown:
; handle unknown line type
	mov	a, r0
	jz	dnld_get_cksum	; skip data if size is zero
dnld_ukn2:
	acall	dnld_ghex	; consume all of unknown data
	djnz	r0, dnld_ukn2
	sjmp	dnld_get_cksum
	
dnld_end:
; handles the proper end-of-download marker
	mov	a, r0
	jz	dnld_end_3	; should usually be zero
dnld_end_2:
	acall	dnld_ghex	; consume all of useless data
	djnz	r0, dnld_ukn2
dnld_end_3:
	acall	dnld_ghex	; get the last checksum
	mov	a, r4
	jnz	dnld_sumerr
	acall	dnld_dly
	mov	dptr, #dnlds3	; "download went ok..."
	acall	pcstr
; consume any cr or lf character that may have been
; on the end of the last line
	jnb	ri, dnld_sum
	acall	cin
	sjmp	dnld_sum
	
dnld_esc:
; handle esc received in the download stream
	acall	dnld_dly
	mov	dptr, #dnlds2	; "download aborted."
	acall	pcstr
	sjmp	dnld_sum

; a short delay since most terminal emulation programs
; won't be ready to receive anything immediately after
; they've transmitted a file... even on a fast Pentium(tm)
; machine with 16550 uarts!
	
dnld_dly:
	mov	r0, #0
dnlddly2:
	mov	r1, #0
	djnz	r1, *		; roughly 128k cycles, appox 0.1 sec
	djnz	r0, dnlddly2
	ret
	
; increment parameter specified by R1
; note, values in Acc and R1 are destroyed
	
dnld_inc:
	mov	a, r1
	anl	a, #00000111b	; just in case
	rl	a
	add	a, #dnld_parm
	mov	r1, a		; now r1 points to lsb
	inc	@r1
	mov	a, @r1
	jnz	dnldin2
	inc	r1
	inc	@r1
dnldin2:
	ret
	
; get parameter, and inc to next one (@r1)
; carry clear if parameter is zero.
; 16 bit value returned in dptr
	
dnld_gp:
	setb	c
	mov	dpl, @r1
	inc	r1
	mov	dph, @r1
	inc	r1
	mov	a, dpl
	jnz	dnldgp2
	mov	a, dph
	jnz	dnldgp2
	clr	c
dnldgp2:
	ret
	
; a special version of ghex just for the download. Does not
; look for carriage return or backspace. Handles ESC key by
; poping the return address (I know, nasty, but it saves many
; bytes of code in this 4k ROM) and then jumps to the esc
; key handling.	This ghex doesn't echo characters, and if it
; sees ':', it pops the return and jumps to an error handler
; for ':' in the middle of a line. Non-hex digits also jump
; to error handlers, depending on which digit.
	
dnld_ghex:
dnldgh1:
	acall	cin
	acall	upper
	cjne	a, #ESC, dnldgh3
dnldgh2:
	pop	acc
	pop	acc
	sjmp	dnld_esc
dnldgh3:
	cjne	a, #':', dnldgh5
dnldgh4:
	mov	r1, #5		; handle unexpected beginning of line
	acall	dnld_inc
	pop	acc
	pop	acc
	ajmp	dnld3		; and now we're on a new line!
dnldgh5:
	acall	asc2hex
	jnc	dnldgh6
	mov	r1, #7
	acall	dnld_inc
	sjmp	dnldgh1
dnldgh6:
	mov	r2, a		; keep first digit in r2
dnldgh7:
	acall	cin
	acall	upper
	cjne	a, #ESC, dnldgh8
	sjmp	dnldgh2
dnldgh8:
	cjne	a, #':', dnldgh9
	sjmp	dnldgh4
dnldgh9:
	acall	asc2hex
	jnc	dnldghA
	mov	r1, #7
	acall	dnld_inc
	sjmp	dnldgh7
dnldghA:
	xch	a, r2
	swap	a
	orl	a, r2
	mov	r2, a
	add	a, r4		; add into checksum
	mov	r4, a
	mov	a, r2		; return value in acc
	ret
	
; print out download summary
; dnlds4 = "Summary:"
; dnlds5 = " lines received"
; dnlds6a = " bytes received"
; dnlds6b = " bytes written"
	
dnld_sum:
	mov	a, r6
	push	acc
	mov	a, r7
	push	acc
	mov	dptr, #dnlds4
	acall	pcstr
	mov	r1, #dnld_parm
	mov	r6, #dnlds5 & 0xff
	mov	r7, #dnlds5 >> 8
	acall	dnld_i0
	mov	r6, #dnlds6a & 0xff
	mov	r7, #dnlds6a >> 8
	acall	dnld_i0
	mov	r6, #dnlds6b & 0xff
	mov	r7, #dnlds6b >> 8
	acall	dnld_i0
	
; now print out error summary
; dnlds7 = "Errors:"
; dnlds8 = " bytes unable to write"
; dnlds9 = " incorrect checksums"
; dnlds10 = " unexpected begin of line"
; dnlds11 = " unexpected hex digits"
; dnlds12 = " unexpected non-hex digits"
; dnlds13 = "No errors detected"
	
dnld_err:
	mov	r2, #5
dnlder2:
	acall	dnld_gp
	jc	dnlder3		; any errors?
	djnz	r2, dnlder2
; no errors, so we print the nice message
	mov	dptr, #dnlds13
	acall	pcstr
	sjmp	dlnd_sum_done
	
dnlder3:
; there were errors, so now we print 'em
	mov	dptr, #dnlds7
	acall	pcstr
; but let's not be nasty... only print if necessary
	mov	r1, #(dnld_parm + 6)
	mov	r6, #dnlds8 & 0xff
	mov	r7, #dnlds8 >> 8
	acall	dnld_item
	mov	r6, #dnlds9 & 0xff
	mov	r7, #dnlds9 >> 8
	acall	dnld_item
	mov	r6, #dnlds10 & 0xff
	mov	r7, #dnlds10 >> 8
	acall	dnld_item
	mov	r6, #dnlds11 & 0xff
	mov	r7, #dnlds11 >> 8
	acall	dnld_item
	mov	r6, #dnlds12 & 0xff
	mov	r7, #dnlds12 >> 8
	acall	dnld_item
dlnd_sum_done:
	pop	acc
	mov	r7, a
	pop	acc
	mov	r6, a
	ajmp	crlf
	
dnld_item:
	acall	dnld_gp		; error conditions
	jnc	dnld_i3
dnld_i2:
	acall	sspace
	lcall	pint16u
	acall	r6r7todptr
	acall	pcstr
dnld_i3:
	ret
	
dnld_i0:
	acall	dnld_gp		; non-error conditions
	sjmp	dnld_i2
	
dnld_init:
; init all dnld parms to zero.
	mov	r0, #dnld_parm
dnld0:
	mov	@r0, #0
	inc	r0
	cjne	r0, #dnld_parm + 16, dnld0
	ret

;---------------------------------------------------------;

jump:
	mov	dptr, #prompt8
	acall	pcstr
	acall	r6r7todptr
	acall	phex16
	mov	dptr, #prompt4
	acall	pcstr
	acall	ghex16
	jb	psw.5, jump3
	jnc	jump2
	ajmp	abort2
jump2:
	acall	dptrtor6r7
jump3:
	acall	crlf
	mov	dptr, #runs1
	acall	pcstr
	acall	r6r7todptr
jump_doit:
	clr	a
	mov	psw, a
	mov	sp, #sp_reset
	mov	b, a
	mov	r0, #0xff
clrintram:
	mov	@r0, a
	djnz	r0, clrintram
	jmp	@a+dptr

;---------------------------------------------------------;

dump:
	mov	r2, #16		; number of lines to print
	acall	dcrlf
dump1:
	acall	r6r7todptr
	acall	phex16		; tell 'em the memory location
	mov	a, #':'
	acall	cout_sp
	mov	r3, #16		; r3 counts # of bytes to print
	acall	r6r7todptr
dump2:
	movx	a, @dptr
	inc	dptr
	acall	phex		; print each byte in hex
	acall	sspace
	djnz	r3, dump2
	acall	dspace		; print a couple extra space
	mov	r3, #16
	acall	r6r7todptr
dump3:
	movx	a, @dptr
	inc	dptr
	anl	a, #01111111b	; avoid unprintable characters
	cjne	a, #127, dump3b
	clr	a		; avoid 127/255 (delete/rubout) char
dump3b:
	add	a, #224
	jc	dump4
	clr	a		; avoid control characters
dump4:
	add	a, #32
	acall	cout
	djnz	r3, dump3
	acall	crlf
	acall	dptrtor6r7
	acall	cinpoll
	jc	dump4b
	cjne	a, #ESC, dump4b
	ajmp	crlf
dump4b:
	djnz	r2, dump1	; loop back up to print next line
	ajmp	crlf

;---------------------------------------------------------;

; edit external ram

edit:
	mov	dptr, #edits1
	acall	pcstr
	acall	r6r7todptr
edit1:
	acall	phex16
	mov	a, #':'
	acall	cout_sp
	mov	a, #'('
	acall	cout
	acall	dptrtor6r7
	movx	a, @dptr
	acall	phex
	mov	dptr, #prompt10
	acall	pcstr
	acall	ghex
	jb	psw.5, edit2
	jc	edit2
	acall	r6r7todptr
	movx	@dptr, a
	acall	crlf
	acall	r6r7todptr
	inc	dptr
	acall	dptrtor6r7
	ajmp	edit1
edit2:
	mov	dptr, #edits2
	ajmp	pcstr

;---------------------------------------------------------;

dir:
	mov	dptr, #prompt9
	acall	pcstr
	mov	r0, #21
dir0a:
	acall	sspace
	djnz	r0, dir0a
	mov	dptr, #prompt9b
	acall	pcstr
	mov	dph, #(bmem >> 8)
dir1:
	lcall	find		; find the next program in memory
	jc	dir2
dir_end:
	ajmp	crlf		; we're done if no more found
dir2:
	acall	dspace
	mov	dpl, #32	; print its name
	acall	pcstr
	mov	dpl, #32	; how long is the name
	acall	lenstr
	mov	a, #33
	clr	c
	subb	a, r0
	mov	r0, a
	mov	a, #SPACE	; print the right # of spaces
dir3:
	acall	cout
	djnz	r0, dir3
	mov	dpl, #0
	acall	phex16		; print the memory location
	mov	r0, #6
	mov	a, #SPACE
dir4:
	acall	cout
	djnz	r0, dir4
	mov	dpl, #4		; now figure out what type it is
	movx	a, @dptr
	mov	r2, dph		; save this, we're inside a search
dir5:
	cjne	a, #254, dir5b
	mov	dptr, #type1	; it's an external command
	sjmp	dir7
dir5b:
	cjne	a, #253, dir5c
dir5bb:
	mov	dptr, #type4	; it's a startup routine
	sjmp	dir7
dir5c:
	cjne	a, #35, dir5d
	mov	dptr, #type2	; it's an ordinary program
	sjmp	dir7
dir5d:
	cjne	a, #249, dir5e
	sjmp	dir5bb
dir5e:
dir6:
	mov	dptr, #type5	; who knows what the hell it is
dir7:
	acall	pcstr		; print out the type
	mov	dph, r2		; go back and find the next one
	acall	crlf
	mov	a, #(emem >> 8)
	cjne	a, dph, dir8	; did we just print the last one?
	ajmp	dir_end
dir8:
	inc	dph
	mov	a, dph
	cjne	a, #((emem + 1) >> 8) & 0xff, dir1
	ajmp	dir_end

; type1=Ext Command
; type4=Startup
; type2=Program
; type5=???

;---------------------------------------------------------;

run:
	acall	dcrlf
	mov	r2, #255	; first print the menu, count items
	mov	dptr, #bmem
	dec	dph
run2:
	inc	dph
	mov	a, dph
	cjne	a, #((emem + 1) >> 8) & 0xff, run2b
	sjmp	run3
run2b:
	lcall	find
	jnc	run3		; have we found 'em all??
	mov	dpl, #4
	movx	a, @dptr
	orl	a, #00000011b
	cpl	a
	jz	run2		; this one doesn't run... find next
	acall	dspace
	inc	r2
	mov	a, #'A'		; print the key to press
	add	a, r2
	acall	cout_sp
	acall	dash_sp
	mov	dpl, #32
	acall	pcstr		; and the command name
	acall	crlf
	ajmp	run2		; and continue doing this
run3:
	cjne	r2, #255, run4	; are there any to run??
	mov	dptr, #prompt5
	ajmp	pcstr
run4:
	mov	dptr, #prompt3	; ask the big question!
	acall	pcstr
	mov	a, #'A'
	acall	cout
	acall	dash
	mov	a, #'A'		; such user friendliness...
	add	a, r2		; even tell 'em the choices
	acall	cout
	mov	dptr, #prompt4
	acall	pcstr
	acall	cin
	cjne	a, #ESC, run4aa	; they they hit <ESC>
	ajmp	crlf
run4aa:
	mov	r3, a
	mov	a, #31
	clr	c
	subb	a, r2
	mov	a, r3
	jc	run4a
	acall	upper
run4a:
	acall	cout
	mov	r3, a
	acall	crlf
; check to see if it's under 32, if so convert to uppercase
	mov	a, r3
	add	a, #(256 - 'A')
	jnc	run4		; if they typed less than 'A'
	mov	r3, a		; R3 has the number they typed
	mov	a, r2		; A=R2 has the maximum number
	clr	c
	subb	a, r3
	jc	run4		; if they typed over the max
	inc	r3
	mov	dptr, #bmem
	dec	dph
run5:
	inc	dph
	mov	a, dph
	cjne	a, #((emem + 1) >> 8) & 0xff, run5b
	sjmp	run8
run5b:
	lcall	find
	jnc	run8		; Shouldn't ever do this jump!
	mov	dpl, #4
	movx	a, @dptr
	orl	a, #00000011b
	cpl	a
	jz	run5		; this one doesn't run... find next
	djnz	r3, run5	; count til we find the one they want
	acall	crlf
	mov	dpl, #64
	ajmp	jump_doit
run8:
	ret

;---------------------------------------------------------;

help:
	mov	dptr, #help1txt
	acall	pcstr
	
	mov	r4, #help_key
	mov	dptr, #help_cmd
	acall	help2
	
	mov	r4, #dir_key
	mov	dptr, #dir_cmd
	acall	help2
	
	mov	r4, #run_key
	mov	dptr, #run_cmd
	acall	help2
	
	mov	r4, #dnld_key
	mov	dptr, #dnld_cmd
	acall	help2
	
	mov	r4, #upld_key
	mov	dptr, #upld_cmd
	acall	help2
	
	mov	r4, #nloc_key
	mov	dptr, #nloc_cmd
	acall	help2
	
	mov	r4, #jump_key
	mov	dptr, #jump_cmd
	acall	help2
	
	mov	r4, #dump_key
	mov	dptr, #dump_cmd
	acall	help2
	
	mov	r4, #intm_key
	mov	dptr, #intm_cmd
	acall	help2
	
	mov	r4, #edit_key
	mov	dptr, #edit_cmd
	acall	help2
	
	mov	r4, #clrm_key
	mov	dptr, #clrm_cmd
	acall	help2
	
	mov	r4, #baud_key
	mov	dptr, #baud_cmd
	acall	help2
	
	mov	r4, #crc16_key
	mov	dptr, #crc16_cmd
	acall	help2
	
	mov	r4, #eio77_key
	mov	dptr, #eio77_cmd
	acall	help2
	
	mov	r4, #dio77_key
	mov	dptr, #dio77_cmd
	acall	help2
	
	mov	dptr, #help2txt
	acall	pcstr
	mov	dptr, #bmem
help3:
	lcall	find
	jnc	help4
	mov	dpl, #4
	movx	a, @dptr
	cjne	a, #254, help3a	; only FE is an ext command
	acall	dspace
	inc	dpl
	movx	a, @dptr
	acall	cout_sp
	acall	dash_sp
	mov	dpl, #32
	acall	pcstr
	acall	crlf
help3a:
	inc	dph
	mov	a, dph
	cjne	a, #((emem + 1) >> 8) & 0xff, help3
help4:
	ajmp	crlf
help2:
; print 11 standard lines
	acall	dspace		; given key in R4 and name in dptr
	mov	a, r4
	acall	cout_sp
	acall	dash_sp
	acall	pcstr
	ajmp	crlf

;---------------------------------------------------------;

upld:
	acall	get_mem
; assume we've got the beginning address in r3/r2
; and the final address in r5/r4 (r4=lsb)...
; print out what we'll be doing
	mov	dptr, #uplds3
	acall	pcstr
	mov	a, r3
	acall	phex
	mov	a, r2
	acall	phex
	mov	 dptr, #uplds4
	acall	pcstr
	mov	a, r5
	acall	phex
	mov	a, r4
	acall	phex
	acall	crlf
; need to adjust end location by 1...
	mov	dph, r5
	mov	dpl, r4
	inc	dptr
	mov	r4, dpl
	mov	r5, dph
	mov	dptr, #prompt7
	acall	pcstr
	acall	cin
	cjne	a, #ESC, upld2e
	ajmp	abort_it
upld2e:
	acall	dcrlf
	mov	dpl, r2
	mov	dph, r3
upld3:
	mov	a, r4		; how many more bytes to output??
	clr	c
	subb	a, dpl
	mov	r2, a
	mov	a, r5
	subb	a, dph
	jnz	upld4		; if >256 left, then do next 16
	mov	a, r2
	jz	upld7		; if we're all done
	anl	a, #11110000b
	jnz	upld4		; if >= 16 left, then do next 16
	sjmp	upld5		; otherwise just finish it off
upld4:
	mov	r2, #16
upld5:
	mov	a, #':'		; begin the line
	acall	cout
	mov	a, r2
	acall	phex		; output # of data bytes
	acall	phex16		; output memory location
	mov	a, dph
	add	a, dpl
	add	a, r2
	mov	r3, a		; r3 will become checksum
	clr	a
	acall	phex		; output 00 code for data
upld6:
	movx	a, @dptr
	acall	phex		; output each byte
	add	a, r3
	mov	r3, a
	inc	dptr
	djnz	r2, upld6	; do however many bytes we need
	mov	a, r3
	cpl	a
	inc	a
	acall	phex		; and finally the checksum
	acall	crlf
	acall	cinpoll
	jc	upld3
	cjne	a, #ESC, upld3
	sjmp	abort_it
upld7:
	mov	a, #':'
	acall	cout
	clr	a
	acall	phex
	acall	phex
	acall	phex
	inc	a
	acall	phex
	mov	a, #255
	acall	phex
upld8:
	ajmp	dcrlf

;---------------------------------------------------------;

; this thing gets the begin and end locations for
; a few commands. If an esc or enter w/ no input,
; it pops it's own return and returns to the menu
; (nasty programming, but we need tight code for 4k rom)

get_mem:
	acall	dcrlf
	mov	dptr, #beg_str
	acall	pcstr
	acall	ghex16
	jc	pop_it
	jb	psw.5, pop_it
	push	dph
	push	dpl
	acall	crlf
	mov	dptr, #end_str
	acall	pcstr
	acall	ghex16
	mov	r5, dph
	mov	r4, dpl
	pop	acc
	mov	r2, a
	pop	acc
	mov	r3, a
	jc	pop_it
	jb	psw.5, pop_it
	ajmp	crlf
pop_it:
	pop	acc
	pop	acc
abort_it:
	acall	crlf
abort2:
	mov	dptr, #abort
	ajmp	pcstr

;---------------------------------------------------------;

nloc:
	mov	dptr, #prompt6
	acall	pcstr
	acall	ghex16
	jc	abort2
	jb	psw.5, abort2
	acall	dptrtor6r7
	ajmp	dcrlf

;---------------------------------------------------------;

clrm:
	acall	get_mem
	mov	dptr, #sure
	acall	pcstr
	acall	cin
	acall	cout
	acall	upper
	cjne	a, #'Y', abort_it
	acall	dcrlf
clrm2:
; now we actually do it
	mov	dph, r3
	mov	dpl, r2
clrm3:
	clr	a
	movx	@dptr, a
	mov	a, r5
	cjne	a, dph, clrm4
	mov	a, r4
	cjne	a, dpl, clrm4
	ret
clrm4:
	inc	dptr
	sjmp	clrm3

;---------------------------------------------------------;

reset_baud:
	acall	dcrlf
	mov	dptr, #baudprompt
	acall	pcstr
	acall	ghex16
	jc	bailout
	jb	psw.5, bailout
	push	dpl
	push	dph
	acall	crlf
	mov	dptr, #sure
	acall	pcstr
	acall	cin
	acall	cout
	acall	upper
	cjne	a, #'Y', bailout_pop
	acall	dcrlf
	pop	b
	pop	acc
	lcall	setbaud
	ret
bailout_pop:
	pop	acc
	pop	acc
bailout:
	acall	crlf
	mov	dptr, #abort
	ajmp	pcstr

;---------------------------------------------------------;

.equ	initial, 0xffff
.equ	final, 0x0000
.equ	poly, 0x1021

calc_crc16:
	acall	get_mem
	acall	crlf
	acall	r6r7todptr
	push	dpl
	push	dph
	mov	dpl, r2
	mov	dph, r3
	mov	r6, #(initial & 0xff)
	mov	r7, #(initial >> 8)
	lcall	init_crc16
	mov	r6, #(poly & 0xff)
	mov	r7, #(poly >> 8)
calc_loop:
	movx	a, @dptr
	lcall	update_crc16
	mov	a, r5
	cjne	a, dph, calc_skip
	mov	a, r4
	cjne	a, dpl, calc_skip
	mov	r6, #(final & 0xff)
	mov	r7, #(final >> 8)
	lcall	finish_crc16
	mov	dpl, r2
	mov	dph, r3
	lcall	phex16
	pop	dph
	pop	dpl
	lcall	dptrtor6r7
	ljmp	dcrlf
calc_skip:
	inc	dptr
	sjmp	calc_loop

init_crc16:
	push	acc
	mov	a, r6
	mov	r2, a
	mov	a, r7
	mov	r3, a
	pop	acc
	ret

finish_crc16:
	push	acc
	mov	a, r2
	xrl	a, r6
	mov	r2, a
	mov	a, r3
	xrl	a, r7
	mov	r3, a
	pop	acc
	ret

update_crc16:
	push	b
	mov	b, a
	mov	a, #0x80
loop:
	mov	r0, a
	mov	a, b
	anl	a, r0
	jz	skip0
	mov	a, #1
skip0:
	mov	r1, a
	mov	a, r3
	rl	a
	anl	a, #1
	xrl	a, r1
	mov	r1, a
	mov     a, r2
	add     a, r2
	mov     r2, a
	mov     a, r3
	rlc     a
	mov     r3, a
	mov	a, r1
	jz	skip1
	mov	a, r2
	xrl	a, r6
	mov	r2, a
	mov	a, r3
	xrl	a, r7
	mov	r3, a
skip1:
	mov	a, r0
	clr	c
	rrc	a
	jnz	loop
	pop	b
	ret

;---------------------------------------------------------;

intm:
	lcall	crlf
	mov	r0, #0
intm2:
	lcall	crlf
	mov	a, r0
	lcall	phex
	mov	a, #':'
	lcall	cout
intm3:
	lcall	sspace
	mov	a, @r0
	lcall	phex
	inc	r0
	cjne	r0, #0, intm4
	ljmp	dcrlf
intm4:
	mov	a, r0
	anl	a, #00001111b
	jnz	intm3
	sjmp	intm2

;---------------------------------------------------------;

eio77:
	clr	p1.7
	ljmp	crlf

;---------------------------------------------------------;

dio77:
	setb	p1.7
	ljmp	crlf

;---------------------------------------------------------;

; finds the next header in the external memory.
; Input DPTR=point to start search (only MSB used)
; Output DPTR=location of next module
; C=set if a header found, C=clear if no more headers

find:
	mov	dpl, #0
	movx	a, @dptr
	cjne	a, #0xa5, find3
	inc	dptr
	movx	a, @dptr
	cjne	a, #0xe5, find3
	inc	dptr
	movx	a, @dptr
	cjne	a, #0xe0, find3
	inc	dptr
	movx	a, @dptr
	cjne	a, #0xa5, find3
	mov	dpl, #0		; found one here!
	setb	c
	ret
find3:
	mov	a, #(emem >> 8)
	cjne	a, dph, find4	; did we just check the end
	clr	c
	ret
find4:
	inc	dph		; keep on searching
	sjmp	find

;---------------------------------------------------------;

; copy from c [lssrc:hssrc, lesrc:hesrc) to x [ldst:hdst, ...)
; r2:r3 lssrc:hssrc
; r4:r5 lesrc:hesrc
; r6:r7 ldst:hdst

cpycx:
	mov	dpl, r2
	mov	dph, r3
	clr	a
	movc	a, @a+dptr
	inc	dptr
	mov	r2, dpl
	mov	r3, dph
	mov	dpl, r6
	mov	dph, r7
	movx	@dptr, a
	inc	dptr
	mov	r6, dpl
	mov	r7, dph
	mov	a, r2
	mov	b, r4
	cjne	a, b, cpycx
	mov	a, r3
	mov	b, r5
	cjne	a, b, cpycx
	ret

;---------------------------------------------------------;

; copy from x [lssrc:hssrc, lesrc:hesrc) to x [ldst:hdst, ...)
; r2:r3 lssrc:hssrc
; r4:r5 lesrc:hesrc
; r6:r7 ldst:hdst

cpyxx:
	mov	dpl, r2
	mov	dph, r3
	movx	a, @dptr
	inc	dptr
	mov	r2, dpl
	mov	r3, dph
	mov	dpl, r6
	mov	dph, r7
	movx	@dptr, a
	inc	dptr
	mov	r6, dpl
	mov	r7, dph
	mov	a, r2
	mov	b, r4
	cjne	a, b, cpyxx
	mov	a, r3
	mov	b, r5
	cjne	a, b, cpyxx
	ret

;---------------------------------------------------------;

	;-------- switch_shadow helper subroutine --------
	switch_shadow:
		mov	p1, #mctrl_shadow
		mov	r7, a
		mov	r7, a
		mov	r7, a
		mov	r7, a
		ret
	switch_shadow_end:
	;-------- switch_shadow helper subroutine --------

; initialize the hardware on reset
; copy flash to memory

reset:
	clr	a
	mov	ie, a
	mov	ip, a
	mov	p1, #mctrl_reset
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	r7, a
	mov	p2, #p2_init
	mov	psw, #psw_init
	mov	sp, #sp_init
	mov	r2, #0x00	; lssrc
	mov	r3, #0x00	; hssrc
	mov	r4, #0x00	; lesrc
	mov	r5, #0x20	; hesrc
	mov	r6, #0x00	; ldst
	mov	r7, #0x00	; hdst
	lcall	cpycx
	mov	r2, #(switch_shadow & 0xff)	; lssrc
	mov	r3, #(switch_shadow >> 8)	; hssrc
	mov	r4, #(switch_shadow_end & 0xff)	; lesrc
	mov	r5, #(switch_shadow_end >> 8)	; hesrc
	mov	r6, #(pgm & 0xff)	; ldst
	mov	r7, #(pgm >> 8)		; hdst
	lcall	cpycx
	lcall	pgm		; switch_shadow
; initialize the serial port
	mov	a, #(bc & 0xff)	; lsb
	mov	b, #(bc >> 8)	; msb
	lcall	setbaud
; run any user initialization programs in external memory
	mov	b, #249
	lcall	stcode
; run the start-up programs in external memory
	mov	b, #253
	lcall	stcode
	lcall	crlf
	lcall	crlf
	lcall	crlf
	lcall	crlf
	mov	dptr, #logon
	lcall	pcstr
	lcall	dir
	mov	r6, #(pgm & 0xff)
	mov	r7, #(pgm >> 8)
	ljmp	menu

stcode:
	mov	dptr, #bmem	 ; search for startup routines
stcode2:
	lcall	find
	jnc	stcode5
	mov	dpl, #4
	movx	a, @dptr
	cjne	a, b, stcode4	; only startup code if matches B
	push	b
	push	dph
	mov	a, #(stcode3 & 0xff)
	push	acc
	mov	a, #(stcode3 >> 8)
	push	acc
	mov	dpl, #64
	clr	a
	jmp	@a+dptr		; jump to the startup code
stcode3:
	pop	dph		; hopefully it'll return to here
	pop	b
stcode4:
	inc	dph
	mov	a, dph
	cjne	a, #((emem + 1) >> 8) & 0xff, stcode2
stcode5:
	ret			; now we've executed all of 'em

;---------------------------------------------------------;

setbaud:
	clr	tr2
	mov	tl2, a
	mov	th2, b
	mov	rcap2l, a
	mov	rcap2h, b
	mov	t2con, #00110000b
	mov	scon, #01010010b
	setb	tr2
	ret

;---------------------------------------------------------;

; prints the unsigned 8 bit value in Acc in base 10

pint8u:
	push	b
	push	acc
	sjmp	pint8b

;---------------------------------------------------------;

; prints the signed 8 bit value in Acc in base 10

pint8:
	push	b
	push	acc
	jnb	acc.7, pint8b
	mov	a, #'-'
	lcall	cout
	pop	acc
	push	acc
	cpl	a
	add	a, #1
pint8b:
	mov	b, #100
	div	ab
	setb	f0
	jz	pint8c
	clr	f0
	add	a, #'0'
	lcall	cout
pint8c:
	mov	a, b
	mov	b, #10
	div	ab
	jnb	f0, pint8d
	jz	pint8e
pint8d:
	add	a, #'0'
	lcall	cout
pint8e:
	mov	a, b
	add	a, #'0'
	lcall	cout
	pop	acc
	pop	b
	ret

;---------------------------------------------------------;

; print 16 bit unsigned integer in DPTR, using base 10.
; warning, destroys r2, r3, r4, r5, psw.5

pint16u:
	push	acc
	mov	a, r0
	push	acc
	clr	psw.5
	mov	r2, dpl
	mov	r3, dph
pint16a:
	mov	r4, #16		; 10^4
	mov	r5, #39
	acall	pint16x
	jz	pint16b
	add	a, #'0'
	lcall	cout
	setb	psw.5
pint16b:
	mov	r4, #232	; 10^3
	mov	r5, #3
	acall	pint16x
	jnz	pint16c
	jnb	psw.5, pint16d
pint16c:
	add	a, #'0'
	lcall	cout
	setb	psw.5
pint16d:
	mov	r4, #100	; 10^2
	mov	r5, #0
	acall	pint16x
	jnz	pint16e
	jnb	psw.5, pint16f
pint16e:
	add	a, #'0'
	lcall	cout
	setb	psw.5
pint16f:
	mov	a, r2		; 10^1
	mov	r3, b
	mov	b, #10
	div	ab
	jnz	pint16g
	jnb	psw.5, pint16h
pint16g:
	add	a, #'0'
	lcall	cout
pint16h:
	mov	a, b		; 10^0
	mov	b, r3
	add	a, #'0'
	lcall	cout
	pop	acc
	mov	r0, a
	pop	acc
	ret

;---------------------------------------------------------;

; ok, it's a cpu hog and a nasty way to divide, but this code
; requires only 21 bytes! Divides r2-r3 by r4-r5 and leaves
; quotient in r2-r3 and returns remainder in acc. If Intel
; had made a proper divide, then this would be much easier.

pint16x:
	mov	r0, #0
pint16y:
	inc	r0
	clr	c
	mov	a, r2
	subb	a, r4
	mov	r2, a
	mov	a, r3
	subb	a, r5
	mov	r3, a
	jnc	pint16y
	dec	r0
	mov	a, r2
	add	a, r4
	mov	r2, a
	mov	a, r3
	addc	a, r5
	mov	r3, a
	mov	a, r0
	ret

;---------------------------------------------------------;
;							  ;
;	 Strings					  ;
;							  ;
;---------------------------------------------------------;

logon:
	.db	"PAULMON2 v2.1ab VERSTR\r\n\r\n", 0
abort:
	.db	"  Command aborted\r\n\r\n", 0
prompt1:
	.db	"Location:", 0
prompt2:
	.db	" > ", 0
prompt3:
	.db	"Select program to run (", 0
prompt4:
	.db	") or ESC to abort: ", 0
prompt5:
	.db	"No program headers found in memory, use JUMP instead\r\n\r\n", 0
prompt6:
	.db	"\r\n\r\nNew location: ", 0
prompt7:
	.db	"Press any key...", 0
prompt8:
	.db	"\r\n\r\nJump to memory location (", 0
prompt9:
	.db	"\r\n\r\nProgram Name", 0
prompt9b:
	.db	"Location      Type\r\n", 0
prompt10:
	.db	") New value: ", 0
beg_str:
	.db	"First location: ", 0
end_str:
	.db	"Last location: ", 0
sure:
	.db	"Are you sure? ", 0
edits1:
	.db	"\r\n\r\nEditing external RAM, ESC to abort\r\n", 0
edits2:
	.db	"  Editing complete, this location unchanged\r\n\r\n", 0
dnlds1:
	.db	"\r\n\r\nBegin transfer of Intel hex file, ESC to abort\r\n\r\n", 0
dnlds2:
	.db	"\r\nDownload aborted\r\n\r\n", 0
dnlds3:
	.db	"\r\nDownload completed\r\n\r\n", 0
dnlds4:
	.db	"Summary:\r\n", 0
dnlds5:
	.db	"  lines received\r\n", 0
dnlds6a:
	.db	"  bytes received\r\n", 0
dnlds6b:
	.db	"  bytes written\r\n", 0
dnlds7:
	.db	"Errors:\r\n", 0
dnlds8:
	.db	"  bytes unable to write\r\n", 0
dnlds9:
	.db	"  bad checksums\r\n", 0
dnlds10:
	.db	"  unexpected begin of line\r\n", 0
dnlds11:
	.db	"  unexpected hex digits\r\n", 0
dnlds12:
	.db	"  unexpected non hex digits\r\n", 0
dnlds13:
	.db	"No errors detected\r\n\r\n", 0
runs1:
	.db	"\r\nRunning program...\r\n\r\n", 0
uplds3:
	.db	"\r\nSending Intel hex file from ", 0
uplds4:
	.db	" to ", 0
help1txt:
	.db	"\r\n\r\nStandard commands:\r\n", 0
help2txt:
	.db	"\r\nUser installed commands:\r\n", 0
type1:
	.db	"External command", 0
type2:
	.db	"Program", 0
type4:
	.db	"Startup code", 0
type5:
	.db	"???", 0
help_cmd2:
	.db	"Help", 0
help_cmd:
	.db	"This help list", 0
dir_cmd:
	.db	"List programs", 0
run_cmd:
	.db	"Run program", 0
dnld_cmd:
	.db	"Download", 0
upld_cmd:
	.db	"Upload", 0
nloc_cmd:
	.db	"New location", 0
jump_cmd:
	.db	"Jump to memory location", 0
dump_cmd:
	.db	"Hex dump external memory", 0
intm_cmd:
	.db	"Hex dump internal memory", 0
edit_cmd:
	.db	"Edit external memory", 0
clrm_cmd:
	.db	"Clear external memory", 0
crc16_cmd:
	.db	"Calculate CRC16", 0
eio77_cmd:
	.db	"Enable nCSIO77", 0
dio77_cmd:
	.db	"Disable nCSIO77", 0
baud_cmd:
	.db	"Reset baud rate", 0
baudprompt:
	.db	"Enter new baud const: ", 0
