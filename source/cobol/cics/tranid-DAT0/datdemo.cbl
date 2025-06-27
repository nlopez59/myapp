       ID DIVISION.
       PROGRAM-ID. DATDEMO.
      * A simple cics pgm with map and sub
      * Tran ='DAT0' in LIB  ZDEV.MAIN.CICSLOAD Not RPL'd
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *
       COPY DATVARS.
       COPY DATMAPM.
      *
       PROCEDURE DIVISION.
           MOVE 'DATDEMO: CICS TRAN DAT0 Started ' to WS-MSG1.
           DISPLAY 'DATDEMO v4 ' WS-MSG1.
      *
           Move 1 to WS-Rule.
           Display 'Calling DATSUB With Input RULE=' WS-Rule.
           CALL 'DATSUB' USING WS-PARAMETERS.

           Move 'DATSUB Result='  TO HIO.
           Move WS-RESULT         TO HIO(18:4).
      *
           EXEC CICS SEND MAP ('DATMLIS')
                     MAPSET('DATMAPM')
                     FROM(DATMLISO)
           END-EXEC.
      *
           STOP RUN.
