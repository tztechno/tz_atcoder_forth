//abc086_a.forth
################################
################################
################################
################################
################################
################################
: RETRIEVE-NUMBER ( c-addr1 -- n c-add2 )
    >R
    0.                                  \ 0.
    R>                                  \ 0. c-addr
    6                                   \ 0. c-addr u

    >NUMBER                             \ dn c-add u
    DROP                                \ dn c-addr
    >R                                  \ dn
    D>S                                 \ n

    BL WORD
    R>

    NIP
    COUNT DROP
;


: INPUT-2-DATA ( -- n n )
    PAD 12 BLANK
    PAD 12 stdin READ-LINE     \ u flag ior
    DROP DROP DROP

    PAD
    2
    0
    DO
        RETRIEVE-NUMBER
    LOOP
    DROP
;

: IS-EVEN ( n -- flag )
    2 MOD 0=
;

     
: MAIN
    INPUT-2-DATA
    IS-EVEN IF
        DROP ." Even" EXIT THEN
    IS-EVEN IF
        ." Even" ELSE
        ." Odd" THEN
;

MAIN
BYE
################################
