abc070_b.4th
##############################
##############################
##############################
##############################
##############################
##############################
##############################
##############################
[RE unkown error RE]
Main.fs:29: Undefined word
  >>>b<<< d max a c min - 0 max t !
----------------------------------------------
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

: min ( a b -- c )
  2dup < if drop else nip then ;

: max ( a b -- c )
  2dup > if nip else drop then ;

: main
  4 ex-read-numbers ( a b c d )
  b d max a c min - 0 max t !
  t @ dec.
;

main
##############################
