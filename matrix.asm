.CODE
	lda	size
	JZ	FIM
	sta	aux
	lda	aux
INIT:
	jz	FIM,R
	lda	m
	add	mov
	sta	value
	jsr	MULT_SUM,R
	lda	mov
	add	#1
	add	size
	sta	mov
	lda	aux
	add	#-1
	sta	aux
	JMP	INIT,r
		MULT_SUM:
			lda	#0
			sta	multAux
			lda	value,I
			sta	val
			LOOP:
				jz	RETURN,R
				add	#-1
				sta	value
				lda	multAux	
				add	res
				sta	multAux
				lda	value
				jmp	LOOP,R
			RETURN:
				lda multAux
				sta res
				rts
FIM:
	hlt
.ENDCODE

.DATA

	res:	db	#1
	size:	db	#5    	
	m:	db	a, b, c, d, e
	a:	db	#1, #6, #7, #8, #9
	b:	db	#10, #2, #11, #12, #13
	c:	db	#14, #8, #3, #16, #17
	d:	db	#18, #19, #20, #4, #21
	e:	db	#22, #23, #24, #25, #5
	aux:	db	#0
	mov:	db	#0
	value:	db	#0
	multAux:db	#0
	val:	db	#0

.ENDDATA
