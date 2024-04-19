#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
key 49 =
: solve ( flag -- ) if ." ABC" else ." chokudai" then ;
solve
cr
#######################################
: INPUT-NUMBER ( -- n )
    PAD 2 BLANK
    PAD 2 stdin READ-LINE               \ u flag ior
    DROP DROP                           \ u
    PAD                                 \ u pad
    SWAP                                \ pad u
    s>number?                           \ d f
    DROP                                \ d
    D>S                                 \ n
;

: MAIN
    INPUT-NUMBER
    1 = IF
        ." ABC" ELSE
        ." chokudai" THEN
    CR
;

MAIN
BYE
#######################################
