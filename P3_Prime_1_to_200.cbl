       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIME200.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM        PIC 9(3).
       01 I          PIC 9(3).
       01 DIV-COUNT  PIC 9(3).
       01 REM        PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Prime numbers from 1 to 200:".

           PERFORM VARYING NUM FROM 2 BY 1 UNTIL NUM > 200
               MOVE 0 TO DIV-COUNT

               PERFORM VARYING I FROM 1 BY 1 UNTIL I > NUM
                   DIVIDE NUM BY I
                       GIVING REM
                       REMAINDER REM
                   IF REM = 0
                       ADD 1 TO DIV-COUNT
                   END-IF
               END-PERFORM

               IF DIV-COUNT = 2
                   DISPLAY NUM
               END-IF
           END-PERFORM

           STOP RUN.
