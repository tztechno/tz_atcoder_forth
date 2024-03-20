//abc166_a.4th
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

: MAIN
    INPUT-CHAR INPUT-CHAR INPUT-CHAR
    INPUT-CHAR DROP                     \ CR
    [CHAR] ABC= IF
        ." ARC" ELSE
        ." ABC" THEN
;

MAIN
BYE
####################################
: INPUT-CHAR ( -- c )
    stdin key-file
;

: MAIN
    INPUT-CHAR INPUT-CHAR INPUT-CHAR
    INPUT-CHAR DROP                     \ CR
    DROP SWAP DROP [CHAR] B = IF
        ." ARC" ELSE
        ." ABC" THEN
;

MAIN
BYE

####################################
