       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      COB01001.
       AUTHOR.          MARCELO LABORAO.
       ENVIRONMENT      DIVISION.
       CONFIGURATION    SECTION.
       SPECIAL-NAMES.   DECIMAL-POINT  IS COMMA.
       INPUT-OUTPUT     SECTION.
       FILE-CONTROL.
       DATA             DIVISION.

       FILE             SECTION.
       WORKING-STORAGE  SECTION.

       01  WS.
           03  WS-FLAG-GIT         PIC X(001).
           03  WS-FLAG-GITHUB      PIC X(001).
           03  WS-TESTE-GIT        PIC 9(001).
           03  WS-TESTE-GITHUB     PIC 9(001).
           03  WS-IND              PIC 9(002).

       PROCEDURE        DIVISION.

       R0001-PROCEDURE.
       
           MOVE    SPACES TO WS-FLAG-GIT
           MOVE    SPACES TO WS-FLAG-GITHUB
           MOVE    1      TO WS-TESTE-GIT
           MOVE    0      TO WS-TESTE-GITHUB

           PERFORM R0002-LOOP THRU R0002-LOOP-FIM UNTIL WS-IND > 9
           
           PERFORM R999-FINAL-PROG.
       
       R0001-FIM.    
       
       R0002-LOOP.
           ADD 1 TO WS-IND
           DISPLAY "IND=" WS-IND.
       R0002-LOOP-FIM.

       R9999-FINAL.
           EXIT      PROGRAM.
           STOP      RUN.
