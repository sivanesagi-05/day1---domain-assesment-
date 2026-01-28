       IDENTIFICATION DIVISION.
       PROGRAM-ID. MINBALANCE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BALANCE        PIC 9(5).
       01 MIN-BAL        PIC 9(4) VALUE 1000.

       PROCEDURE DIVISION.
           DISPLAY "ENTER ACCOUNT BALANCE: ".
           ACCEPT BALANCE.

           IF BALANCE >= MIN-BAL
               DISPLAY "Minimum balance maintained"
           ELSE
               DISPLAY "Minimum balance not maintained"
           END-IF.

           STOP RUN.
