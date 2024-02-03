//abc173_a payment.4th
##############################
##############################
##############################
: INPUT-NUMBER ( -- n )
    PAD 6 BLANK PAD 6 stdin READ-LINE DROP DROP PAD SWAP s>number? DROP D>S
;

: OUTPUT-INTEGER ( n -- )
    DUP ABS 0 <# #S ROT SIGN #> TYPE
;

: MAIN
    INPUT-NUMBER
    1000 MOD
    DUP 0= IF
        DROP ." 0" ELSE
        1000 SWAP - OUTPUT-INTEGER THEN
;

MAIN
BYE
##############################
