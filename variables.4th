//abc170_a variables.4th
#####################################
#####################################
#####################################
#####################################
#####################################
: INPUT-CHAR ( -- c )
    stdin key-file
;

: MAIN
    INPUT-CHAR [CHAR] 0 = IF
        ." 1" EXIT THEN
    INPUT-CHAR DROP                     \ Space
    INPUT-CHAR [CHAR] 0 = IF
        ." 2" EXIT THEN
    INPUT-CHAR DROP                     \ Space
    INPUT-CHAR [CHAR] 0 = IF
        ." 3" EXIT THEN
    INPUT-CHAR DROP                     \ Space
    INPUT-CHAR [CHAR] 0 = IF
        ." 4" ELSE
        ." 5" THEN
;

MAIN
BYE

#####################################
