//abc053_a.4th
####################################
####################################
####################################
####################################
####################################
####################################
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

: MAIN
    INPUT-NUMBER 1200 < IF
        ." ABC" ELSE
        ." ARC" THEN
;

MAIN
BYE

####################################
