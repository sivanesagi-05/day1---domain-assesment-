       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLEINT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PRINCIPAL    PIC 9(6).
       01 RATE         PIC 9(2)V9(2).
       01 YEARS        PIC 9(2).
       01 SI           PIC 9(7)V9(2).

       PROCEDURE DIVISION.
           DISPLAY "ENTER PRINCIPAL AMOUNT: ".
           ACCEPT PRINCIPAL.

           DISPLAY "ENTER RATE OF INTEREST: ".
           ACCEPT RATE.

           DISPLAY "ENTER TIME (YEARS): ".
           ACCEPT YEARS.

           COMPUTE SI = (PRINCIPAL * RATE * YEARS) / 100.

           DISPLAY "SIMPLE INTEREST = " SI.

           STOP RUN.
