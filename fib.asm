.CODE
    INIT:
        jsr SEQFIBONACCI
        SEQFIBONACCI:
            lda n
            LOOP:
                jz  FIM
                add #-1
                sta n
                jmp INIT
.ENDCODE

.DATA
    n:      db  #2      ;Seq FIB
    n1:     db  #0
    n2:     db  #1
    nxt:    db  #0
    p:      db  #vet
    vet:    db  #0, #1, #0, #0, #0, #0, #0, #0
.ENDDATA
