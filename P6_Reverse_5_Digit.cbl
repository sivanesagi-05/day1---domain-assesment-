       IDENTIFICATION DIVISION.
       PROGRAM-ID. REVERSE5.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM        PIC 9(5).
       01 TEMP       PIC 9(5).
       01 REM        PIC 9.
       01 REV        PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "ENTER A 5 DIGIT NUMBER: ".
           ACCEPT NUM.

           MOVE NUM TO TEMP.

           PERFORM UNTIL TEMP = 0
               DIVIDE TEMP BY 10
                   GIVING TEMP
                   REMAINDER REM
               COMPUTE REV = (REV * 10) + REM
           END-PERFORM.

           DISPLAY "REVERSED NUMBER = " REV.

           STOP RUN.
