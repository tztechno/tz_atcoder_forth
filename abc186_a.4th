abc186_a.4th
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
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
        bl scan bl skip ( number1 start-addr1 length1 -- start-addr2 length2 )
    loop
    2drop
;

: ex-read-number ( -- number )
    1 ex-read-numbers
;

: main
    2 ex-read-numbers ( b c )
    / ( b c -- quotient )
	  ex-read-line ( quotient -- quotient start-addr length )
    rot dec. ( quotient )
;

main
############################################
[python]
n,w=map(int,input().split())
print(n//w)
############################################
