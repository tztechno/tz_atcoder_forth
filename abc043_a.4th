//abc043_a.4th
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
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
    DUP 1+ * 2 /
    OUTPUT-INTEGER CR  
;

MAIN
BYE

####################################
: INPUT-NUMBER ( -- n )
    PAD 5 BLANK
    PAD 5 stdin READ-LINE               \ u flag ior
    DROP DROP                           \ u
    PAD                                 \ u pad
    SWAP                                \ pad u
    s>number?                           \ d f
    DROP                                \ d
    D>S                                 \ n
;

: CALC ( x -- result )
    DUP 1 + * 2 /
;

: MAIN
    INPUT-NUMBER
    CALC
    . CR
;

MAIN
BYE
####################################
