       IDENTIFICATION DIVISION.
       PROGRAM-ID. PALINDROME.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM        PIC 9(5).
       01 TEMP       PIC 9(5).
       01 REM        PIC 9.
       01 REV        PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "ENTER A NUMBER: ".
           ACCEPT NUM.

           MOVE NUM TO TEMP.
           MOVE 0 TO REV.

           PERFORM UNTIL TEMP = 0
               DIVIDE TEMP BY 10
                   GIVING TEMP
                   REMAINDER REM
               COMPUTE REV = (REV * 10) + REM
           END-PERFORM.

           IF REV = NUM
               DISPLAY "The number is a PALINDROME"
           ELSE
               DISPLAY "The number is NOT a PALINDROME"
           END-IF.

           STOP RUN.
