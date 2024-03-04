//abc168_a.4th
################################
################################
################################
################################
: INPUT-NUMBER ( -- n )
    PAD 4 BLANK PAD 4 stdin READ-LINE DROP DROP PAD SWAP s>number? DROP D>S
;

: OUTPUT-ANSWER ( n -- )
    CASE
        0 OF ." pon" ENDOF
        1 OF ." pon" ENDOF
        2 OF ." hon" ENDOF
        3 OF ." bon" ENDOF
        4 OF ." hon" ENDOF
        5 OF ." hon" ENDOF
        6 OF ." pon" ENDOF
        7 OF ." hon" ENDOF
        8 OF ." pon" ENDOF
        9 OF ." hon" ENDOF
    ENDCASE
;

: MAIN
    INPUT-NUMBER
    10 MOD
    OUTPUT-ANSWER
;

MAIN
BYE
################################
