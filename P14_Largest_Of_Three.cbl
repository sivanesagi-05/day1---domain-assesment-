       IDENTIFICATION DIVISION.
       PROGRAM-ID. LARGEST3.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1    PIC 9(4).
       01 NUM2    PIC 9(4).
       01 NUM3    PIC 9(4).
       01 BIG     PIC 9(4).

       PROCEDURE DIVISION.
           DISPLAY "ENTER FIRST NUMBER: ".
           ACCEPT NUM1.

           DISPLAY "ENTER SECOND NUMBER: ".
           ACCEPT NUM2.

           DISPLAY "ENTER THIRD NUMBER: ".
           ACCEPT NUM3.

           IF NUM1 >= NUM2 AND NUM1 >= NUM3
               MOVE NUM1 TO BIG
           ELSE
               IF NUM2 >= NUM1 AND NUM2 >= NUM3
                   MOVE NUM2 TO BIG
               ELSE
                   MOVE NUM3 TO BIG
               END-IF
           END-IF.

           DISPLAY "LARGEST NUMBER = " BIG.

           STOP RUN.
