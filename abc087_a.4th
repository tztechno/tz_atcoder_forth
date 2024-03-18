: INPUT-NUMBER ( -- n )
    PAD 6 BLANK
    PAD 6 stdin READ-LINE               \ u flag ior
    DROP DROP                           \ u
    PAD                                 \ u pad
    SWAP                                \ pad u
    s>number?                           \ d f
    DROP                                \ d
    D>S                                 \ n
;

: OUTPUT-INTEGER ( n -- )
    DUP ABS 0 <# #S ROT SIGN #> TYPE
;

: MAIN
    INPUT-NUMBER INPUT-NUMBER INPUT-NUMBER
    SWAP ROT SWAP - SWAP MOD
    OUTPUT-INTEGER
;

MAIN
BYE
