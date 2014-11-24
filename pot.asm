.CODE
    lda exp
    INIT:
        jz  FIM
        jsr MULT_SUM
        sta res
        lda exp
        add #-1
        sta exp
        jmp INIT
    MULT_SUM:
        lda n
        sta aux
        lda aux
        LOOP:
            jz FIMLOOP
            lda res
            add n
            sta res
            lda aux
            add #-1
            sta aux
            jmp LOOP
            FIMLOOP
                lda res
                rts
    FIM:
        hlt
.ENDCODE

.DATA
   num:     db  #2      ;Num
   exp:     db  #10     ;Expoente
   aux:     db  #0
   res:     db  #0      ;Resultado
.ENDDATA
