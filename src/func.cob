*******> Sample for running COBOL code with fn
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FN_COB.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
           FD SYSIN.
           01 LN PIC X(80).
               88 EOF VALUE HIGH-VALUES.
       WORKING-STORAGE SECTION.
       01 WS-STDIN GLOBAL PIC X(255).
       01 W-IDX PIC 9(2) VALUE ZERO.     
       PROCEDURE DIVISION.
           ACCEPT WS-STDIN.
           UNSTRING WS-STDIN DELIMITED ALL SPACE
           INTO WS-STDIN COUNT W-IDX
           IF W-IDX > 0 THEN
               DISPLAY "Hello, " WS-STDIN(1:W-IDX) "!"
             ELSE
               DISPLAY "Hello, World!"
           END-IF
       STOP RUN.
