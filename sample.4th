from tanson
###################################################
###################################################
###################################################
###################################################
###################################################
###################################################
###################################################
//abc306_a
52 CONSTANT MAX-SIZE

CREATE DATA MAX-SIZE CHARS ALLOT
DATA MAX-SIZE CHARS ERASE

: INPUT-NUMBER ( -- n )
    PAD 3 BLANK PAD 3 stdin READ-LINE DROP DROP PAD SWAP s>number? DROP D>S
;

: INPUT-STRING ( a-addr -- n )
    DUP                                 \ a-addr a-addr
    MAX-SIZE CHARS BLANK
    MAX-SIZE stdin READ-LINE       \ u flag ior
    DROP DROP
;

: MAIN
    INPUT-NUMBER DROP
    DATA INPUT-STRING
    0 DO
        DATA I CHARS + C@ EMIT
        DATA I CHARS + C@ EMIT
    LOOP
    CR  
;

MAIN
BYE

###################################################
//abc305_a
: INPUT-NUMBER ( -- n )
    PAD 4 BLANK PAD 4 stdin READ-LINE DROP DROP PAD SWAP s>number? DROP D>S
;

: ROUND-OFF ( r -- r )
    FDUP FDUP FLOOR F- 0.5e F< IF
        FLOOR ELSE
        FLOOR 1.0e F+ THEN
;

: OUTPUT-INTEGER ( n -- )
    DUP ABS 0 <# #S ROT SIGN #> TYPE
;

: MAIN
    INPUT-NUMBER S>D D>F
    5 S>D D>F
    F/ ROUND-OFF F>D D>S 5 *
    OUTPUT-INTEGER
    CR
;

MAIN
BYE

###################################################
