.CODE
INIT:
	lda exp
	jz  FIM,R
	jsr MULT_SUM,R
	sta res
	lda exp
	add #-1
      sta exp
	jmp INIT
		MULT_SUM:
            lda #0
            sta resAux
		lda n
		sta aux
		LOOP2:
			jz FIMLOOP2,R
			add #-1
			sta aux
			lda resAux
			add res
			sta resAux
			lda aux
			jmp LOOP2,R
		FIMLOOP2:
			lda resAux
			rts
	FIM:
		hlt
.ENDCODE

.DATA
	n:		db	#3
	exp:		db	#3
	res:	db	#1      ;respota

	aux:	db	#0      
	resAux:	db	#0
.ENDDATA
