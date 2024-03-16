//abc093_a.4th
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
####################################
: INPUT-CHAR ( -- c )
    stdin key-file
;

: INCLUDE-A ( c c c -- flag )
    [CHAR] a = IF
        DROP DROP TRUE EXIT THEN
    [CHAR] a = IF
        DROP TRUE EXIT THEN
    [CHAR] a = 
;

: INCLUDE-B ( c c c -- flag )
    [CHAR] b = IF
        DROP DROP TRUE EXIT THEN
    [CHAR] b = IF
        DROP TRUE EXIT THEN
    [CHAR] b = 
;

: INCLUDE-C ( c c c -- flag )
    [CHAR] c = IF
        DROP DROP TRUE EXIT THEN
    [CHAR] c = IF
        DROP TRUE EXIT THEN
    [CHAR] c = 
;

: 3DUP ( x1 x2 x3 -- x1 x2 x3 x1 x2 x3 )
    2 PICK 2 PICK 2 PICK
;

: 3DROP ( x1 x2 x3 -- )
    DROP DROP DROP
;

: NOT ( x -- flag )
    0=
;

: INCLUDE-ABC ( c c c -- flag )
    3DUP INCLUDE-A NOT IF
        3DROP FALSE EXIT THEN
    3DUP INCLUDE-B NOT IF
        3DROP FALSE EXIT THEN
    INCLUDE-C
;


: MAIN
    INPUT-CHAR INPUT-CHAR INPUT-CHAR
    INPUT-CHAR DROP                     \ CR
    INCLUDE-ABC IF
        ." Yes" ELSE
        ." No" THEN
;

MAIN
BYE

####################################
