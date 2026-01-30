       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVCHECK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM   PIC 9(4).

       PROCEDURE DIVISION.
           DISPLAY "Numbers divisible by 2, 3 and 17 (1 to 1000):".

           PERFORM VARYING NUM FROM 1 BY 1 UNTIL NUM > 1000
               IF NUM / 2 * 2 = NUM
                  AND NUM / 3 * 3 = NUM
                  AND NUM / 17 * 17 = NUM
                   DISPLAY NUM
               END-IF
           END-PERFORM.

           STOP RUN.
