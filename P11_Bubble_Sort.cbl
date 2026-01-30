       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUBBLESORT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ARR.
          05 A   PIC 9(3) OCCURS 5 TIMES.
       01 I      PIC 9.
       01 J      PIC 9.
       01 TEMP   PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "ENTER 5 NUMBERS:".

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               ACCEPT A(I)
           END-PERFORM.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 4
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > 5 - I
                   IF A(J) > A(J + 1)
                       MOVE A(J) TO TEMP
                       MOVE A(J + 1) TO A(J)
                       MOVE TEMP TO A(J + 1)
                   END-IF
               END-PERFORM
           END-PERFORM.

           DISPLAY "SORTED ARRAY:".
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY A(I)
           END-PERFORM.

           STOP RUN.
