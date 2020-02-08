DIM words(50) AS STRING
GOSUB wordlist

RANDOMIZE TIMER
GOSUB randomnum

word$ = words(randword)
mask$ = "_ _ _ _ _"
chances = 0
GOSUB init
GOSUB gallows

main:
INPUT "Guess a letter (Must be capital)"; guess$
correct = 0
IF MID$(word$, 1, 1) = guess$ THEN
    MID$(mask$, 1, 1) = MID$(word$, 1, 1)
    correct = 1
    letter = letter + 1
END IF
IF MID$(word$, 2, 1) = guess$ THEN
    MID$(mask$, 3, 1) = MID$(word$, 2, 1)
    correct = 1
    letter = letter + 1
END IF
IF MID$(word$, 3, 1) = guess$ THEN
    MID$(mask$, 5, 1) = MID$(word$, 3, 1)
    correct = 1
    letter = letter + 1
END IF
IF MID$(word$, 4, 1) = guess$ THEN
    MID$(mask$, 7, 1) = MID$(word$, 4, 1)
    correct = 1
    letter = letter + 1
END IF
IF MID$(word$, 5, 1) = guess$ THEN
    MID$(mask$, 9, 1) = MID$(word$, 5, 1)
    correct = 1
    letter = letter + 1

END IF
IF correct = 0 THEN
    GOSUB addhangman

END IF
GOSUB gallows
GOSUB winlose
GOTO main
END

randomnum:

randword = INT(RND * 100)
IF randword > 22 THEN
    GOTO randomnum
END IF
RETURN


wordlist:
words(0) = "FEVER"
words(1) = "HEART"
words(2) = "CLOCK"
words(3) = "BRAIN"
words(4) = "WOMAN"
words(5) = "BOOKS"
words(6) = "WORDS"
words(7) = "BORED"
words(8) = "BOARD"
words(9) = "BOXES"
words(10) = "BOWEL"
words(11) = "LAKES"
words(12) = "DINER"
words(13) = "WALLS"
words(14) = "SWORD"
words(15) = "PANTS"
words(16) = "SHIRT"
words(17) = "HANDS"
words(18) = "EAGLE"
words(19) = "PAPER"
words(20) = "TACOS"
words(21) = "MYTHS"
words(22) = "CRYPT"









RETURN




gallows:
CLS
PRINT line01$
PRINT line02$
PRINT line03$
PRINT line04$
PRINT line05$
PRINT line06$
PRINT line07$
PRINT line08$
PRINT line09$
PRINT line10$
PRINT line11$
PRINT line12$
PRINT line13$
PRINT line14$
PRINT line15$
PRINT line16$
PRINT line17$
PRINT line18$
PRINT line19$; mask$
PRINT line20$

RETURN

addhangman:
chances = chances + 1
IF chances = 1 THEN
    line01$ = "     ___________________"
    line02$ = "     ³  /        ³"
    line03$ = "     ³/          ³ "
END IF
IF chances = 2 THEN
    line03$ = "     ³/         _³_"
    line04$ = "     ³        / X X \"
    line05$ = "     ³       ³  ___  ³"
    line06$ = "     ³        \_U___/"

END IF
IF chances = 3 THEN
    line07$ = "     ³           ³"
    line08$ = "     ³           ³ "
    line09$ = "     ³           ³   "
    line10$ = "     ³           ³     "
    line11$ = "     ³           ³"
END IF
IF chances = 4 THEN
    line07$ = "     ³           ³"
    line08$ = "     ³          /³ "
    line09$ = "     ³        /  ³   "
    line10$ = "     ³      /    ³     "
    line11$ = "     ³           ³"
END IF

IF chances = 5 THEN
    line07$ = "     ³           ³"
    line08$ = "     ³          /³\"
    line09$ = "     ³        /  ³  \"
    line10$ = "     ³      /    ³    \"
    line11$ = "     ³           ³"
END IF

IF chances = 6 THEN
    line12$ = "     ³          /  "
    line13$ = "     ³        /      "
    line14$ = "     ³      /          "
END IF

IF chances = 7 THEN
    line12$ = "     ³          / \"
    line13$ = "     ³        /     \"
    line14$ = "     ³      /         \"
END IF




RETURN




init:

line01$ = "     ___________________"
line02$ = "     ³  /         "
line03$ = "     ³/            "
line04$ = "     ³               "
line05$ = "     ³                "
line06$ = "     ³               "
line07$ = "     ³            "
line08$ = "     ³             "
line09$ = "     ³               "
line10$ = "     ³                 "
line11$ = "     ³            "
line12$ = "     ³             "
line13$ = "     ³               "
line14$ = "     ³                 "
line15$ = "     ³"
line16$ = " "
line17$ = " "
line18$ = " "
line19$ = "     "
line20$ = " "

RETURN


winlose:
IF letter = 5 THEN
    PRINT "You WIN!"

    END
END IF
IF chances > 6 THEN
    PRINT "You LOSE! The word was "; word$

    END
END IF
RETURN

