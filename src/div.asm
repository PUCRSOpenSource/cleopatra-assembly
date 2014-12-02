.CODE
    lda grupo
    add #5
    not
    add #1
    sta divisor
    lda num
    sta resto
    ENQUANTO:
        lda resto
        add divisor
        jz  DIVIDE 
        jn  SOBRA
        sta resto
        jmp ENQUANTO
    SOBRA:
        lda #0
        sta resp
        jmp FIM
    DIVIDE:
        lda #1
        sta resp        
    FIM:
        hlt
.ENDCODE

.DATA
   num:     db  #12 ;Num a ser testado 
   resp:    db  #01
   grupo:   db  #1
   divisor: db  #0
   resto:   db  #0
.ENDDATA
