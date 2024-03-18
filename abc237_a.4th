: INPUT-NUMBER ( -- n )
    PAD 25 BLANK PAD 25 stdin READ-LINE DROP DROP DROP PAD
    >R 0. R> 26                                  
    OVER C@ [CHAR] - = IF
        1- SWAP 1+ SWAP >NUMBER DROP >R D>S NEGATE ELSE
        >NUMBER DROP >R D>S THEN
    BL WORD R> NIP COUNT DROP DROP
;

: MAIN
    INPUT-NUMBER
    2147483648 DUP NEGATE SWAP WITHIN IF
        ." Yes" ELSE
        ." No" THEN
    CR
;


MAIN
BYE
