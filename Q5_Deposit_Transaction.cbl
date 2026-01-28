       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEPOSIT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BALANCE        PIC 9(6).
       01 DEPOSIT-AMT    PIC 9(6).
       01 NEW-BALANCE    PIC 9(7).

       PROCEDURE DIVISION.
           DISPLAY "ENTER CURRENT BALANCE: ".
           ACCEPT BALANCE.

           DISPLAY "ENTER DEPOSIT AMOUNT: ".
           ACCEPT DEPOSIT-AMT.

           IF DEPOSIT-AMT > 0
               COMPUTE NEW-BALANCE = BALANCE + DEPOSIT-AMT
               DISPLAY "Updated Balance = " NEW-BALANCE
           ELSE
               DISPLAY "Invalid deposit amount"
           END-IF.

           STOP RUN.
