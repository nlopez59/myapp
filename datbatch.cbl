       ID DIVISION.
       PROGRAM-ID. BATCH.
      * hn test
      * Use Pub GITHUB project's DEVELOP branch
      * References STATIC MOD DEMOSUB in zdev.main.load for IAC Demos
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WK-AREA1.
          05  FILLER       PIC X(80).
          05  num1         PIC 9(3) value zeros.
          05  num2         PIC 9(3) value is 005.
      *
      *
       PROCEDURE DIVISION.
           DISPLAY 'BATCH DEMO f-a1'.

      * do something ...
           PERFORM VARYING num1 FROM 0 BY 1 UNTIL num1 > num2
                IF num1 > 1  THEN
                    perform dump_num1
                END-IF
           END-PERFORM.
           STOP RUN.
      *==========  v2
       dump_num1.
           display 'Tracing num1=' num1.
