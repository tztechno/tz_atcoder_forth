# tz_atcoder_forth

.4th

### latest

---
```

```
---
```

```
---
```

```
---
```

```
---
```

```
---
```
: INPUT-CHAR ( -- c )
    KEY
;

: OUTPUT-ANSWER ( c -- )
    CASE
        [CHAR] A OF ." T" ENDOF
        [CHAR] T OF ." A" ENDOF
        [CHAR] C OF ." G" ENDOF
        [CHAR] G OF ." C" ENDOF
    ENDCASE
;

: MAIN
    INPUT-CHAR
    OUTPUT-ANSWER
;

MAIN
BYE
```
---
```
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
```
---
