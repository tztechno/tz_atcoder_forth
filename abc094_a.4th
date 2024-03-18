: RETRIEVE-NUMBER ( c-addr1 -- n c-add2 )
    >R
    0.                                  \ 0.
    R>                                  \ 0. c-addr
    4                                   \ 0. c-addr u

    >NUMBER                             \ dn c-add u
    DROP                                \ dn c-addr
    >R                                  \ dn
    D>S                                 \ n

    BL WORD
    R>

    NIP
    COUNT DROP
;


: INPUT-3-DATA ( -- n n n )
    PAD 12 BLANK
    PAD 12 stdin READ-LINE     \ u flag ior
    DROP DROP DROP

    PAD
    3
    0
    DO
        RETRIEVE-NUMBER
    LOOP
    DROP
;


: MAIN
    INPUT-3-DATA
    >R
    SWAP R> SWAP - DUP 0< IF
        DROP DROP ." NO" ELSE
        < IF
            ." NO" ELSE
            ." YES" THEN THEN
;

MAIN
BYE
