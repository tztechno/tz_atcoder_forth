//practiceA.4th
##################################

##################################
##################################
##################################
##################################
##################################
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
    ex-read-number ( a )
    2 ex-read-numbers ( a -- a b c )
    + + ( a b c -- sum )
	  ex-read-line ( sum -- sum start-addr length )
    rot dec. type cr ( sum )
;

main
##################################
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
    \ a + b + c
    ex-read-number ( number-a )
    2 ex-read-numbers ( number-a -- number-a number-b number-c )
    + + ( number-a number-b number-c -- sum )
    \ s
	ex-read-line ( sum -- sum start-addr length )
    \ output
    rot dec. type cr ( sum start-addr length -- )
;

main
bye

##################################
