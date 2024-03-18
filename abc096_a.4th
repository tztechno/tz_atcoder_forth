: RETRIEVE-NUMBER ( c-addr1 -- n c-add2 )
    >R
    0.                                  \ 0.
    R>                                  \ 0. c-addr
    3                                   \ 0. c-addr u

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
    PAD 6 BLANK
    PAD 6 stdin READ-LINE     \ u flag ior
    DROP DROP DROP

    PAD
    2
    0
    DO
        RETRIEVE-NUMBER
    LOOP
    DROP
;

: OUTPUT-INTEGER ( n -- )
    DUP ABS 0 <# #S ROT SIGN #> TYPE
;

: NOT ( x -- flag )
    0=
;

: LE ( n n -- flag )
    \ <=
    > NOT
;


: MAIN
    INPUT-2-DATA
    2DUP LE IF
        DROP OUTPUT-INTEGER ELSE
        DROP 1- OUTPUT-INTEGER THEN
;

MAIN
BYE
