abc105_a.4th
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
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


: INPUT-2-DATA ( -- n n )
    PAD 8 BLANK
    PAD 8 stdin READ-LINE     \ u flag ior
    DROP DROP DROP

    PAD
    2
    0
    DO
        RETRIEVE-NUMBER
    LOOP
    DROP
;

: MAIN
    INPUT-2-DATA
    MOD 0= IF
        ." 0" ELSE
        ." 1" THEN
;

MAIN
BYE
#######################################
: ex-read-line ( -- start-addr length )
    pad 84 0 fill
    pad 84 stdin read-line throw drop ( -- length )
    pad swap
;

: ex-read-numbers ( number-count -- number1 number2 .. )
    { number-count }
    ex-read-line bl skip ( -- start-addr1 length1 )
    number-count 0 u+do
        2dup s>number? 2drop -rot ( start-addr1 length1 -- number1 start-addr1 length1 )
        bl scan bl skip ( number1 start-addr1 length1 -- start-add2 length2 )
    loop
    2drop
;

: ex-read-number ( number1 )
    1 ex-read-numbers
;


: main
    2 ex-read-numbers ( n k )
    mod 0= if ." 0" else ." 1" then
;

main
#######################################
