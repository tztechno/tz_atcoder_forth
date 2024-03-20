//abc166_a.4th
####################################
####################################
####################################
####################################
####################################
####################################
####################################
(2文字目までで読み取り打ち切り、ひっくり返して、後ろの文字削除)

: INPUT-CHAR ( -- c )
    stdin key-file
;

: MAIN
    INPUT-CHAR INPUT-CHAR     \ CR
    SWAP DROP [CHAR] R = IF
        ." ABC" ELSE
        ." ARC" THEN
;

MAIN
BYE
####################################
[CHAR]は一文字しか保有できない？

: INPUT-CHAR ( -- c )
    stdin key-file
;

: MAIN
    INPUT-CHAR INPUT-CHAR INPUT-CHAR
    INPUT-CHAR DROP                     \ CR
    DROP SWAP DROP [CHAR] R = IF
        ." ABC" ELSE
        ." ARC" THEN
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
