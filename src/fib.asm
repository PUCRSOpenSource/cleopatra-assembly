.CODE
INIT:	
	lda #0
	sta n1
	lda #1
	sta n2
	lda p
	add #2
	sta p
	lda n
	add #-2
	sta n
	LOOP:
		jz	FIM
		jsr SEQFIBONACCI
		lda	p
		add	#1
		sta p
		lda n
		add	#-1
		sta	n
		jmp LOOP
			SEQFIBONACCI:
				lda n1
				add n2
				sta nxt
				sta p,I
				lda n2
				sta n1
				lda nxt
				sta n2
				rts     
FIM:
	hlt
                     
.ENDCODE

.DATA
    n:      db  #10      ;Seq FIB
    n1:     db  #0		 ;fib-2
    n2:     db  #0		 ;fib-1
    nxt:    db  #0		 ;n1 + n2
    p:      db  #idx
    idx:    db  #0, #1, #0, #0, #0, #0, #0
.ENDDATA
