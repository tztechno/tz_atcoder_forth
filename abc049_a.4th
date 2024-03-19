//abc049_a.4th
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

: IS-VOWEL ( c -- flag )
    CASE
        [CHAR] a OF TRUE ENDOF
        [CHAR] e OF TRUE ENDOF
        [CHAR] i OF TRUE ENDOF
        [CHAR] o OF TRUE ENDOF
        [CHAR] u OF TRUE ENDOF
        FALSE SWAP ENDCASE
;

: MAIN
    INPUT-CHAR IS-VOWEL IF
        ." vowel" ELSE
        ." consonant" THEN
     CR
;

MAIN
BYE
####################################
