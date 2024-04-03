################################################
: INPUT-NUMBER ( -- n )
    PAD 4 BLANK
    PAD 4 stdin READ-LINE               \ u flag ior
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
    INPUT-NUMBER
    3 /                           \\\\\\\\\\\\\\\\ 
    OUTPUT-INTEGER CR  
;

MAIN
BYE
################################################
