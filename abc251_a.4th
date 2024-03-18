4 CONSTANT MAX-SIZE

CREATE DATA MAX-SIZE CHARS ALLOT
DATA MAX-SIZE CHARS ERASE

: INPUT-STRING ( a-addr -- n )
    DUP                                 \ a-addr a-addr
    MAX-SIZE CHARS BLANK
    MAX-SIZE stdin READ-LINE       \ u flag ior
    DROP DROP
;

: MAIN
    DATA INPUT-STRING DUP
    6 SWAP / 0 DO
        DUP DATA SWAP TYPE
    LOOP
    DROP CR
;

MAIN
BYE
