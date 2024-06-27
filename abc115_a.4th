abc115_a.4th
##########################################
: MAIN
    ex-read-number ( a )
    DUP 22 = IF
        DROP ." Christmas Eve Eve Eve"
    ELSE DUP 23 = IF
        DROP ." Christmas Eve Eve"
    ELSE DUP 24 = IF
        DROP ." Christmas Eve"
    ELSE 25 = IF
        ." Christmas"
    ELSE
        ." ERROR"
    THEN THEN THEN THEN
    CR
;
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
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

    
: MAIN
    ex-read-number ( a )
    DUP 22 = IF
        DROP ." Christmas Eve Eve Eve"
    ELSE DUP 23 = IF
        DROP ." Christmas Eve Eve"
    ELSE DUP 24 = IF
        DROP ." Christmas Eve"
    ELSE 25 = IF
        ." Christmas"
    ELSE
        ." ERROR"
    THEN THEN THEN THEN
    CR
;
MAIN
bye


##########################################
[python]
D=int(input())
L=["Christmas Eve Eve Eve","Christmas Eve Eve","Christmas Eve","Christmas"]
print(L[D-22])
##########################################
