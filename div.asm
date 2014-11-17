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
        jz  FIM
        jn  FIM
        jmp ENQUANTO
    FIM:
        hlt
.ENDCODE

.DATA
   grupo:   db  #1
   divisor: db  #0
   resto:   db  #0
   num:     db  #10 ;Num a ser testado 
.ENDDATA
