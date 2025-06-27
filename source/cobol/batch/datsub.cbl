       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATSUB.
       DATA DIVISION.
       LINKAGE SECTION.

       COPY DATVARS.

       PROCEDURE DIVISION USING WS-PARAMETERS.
          Mainline.
           Move 'Running DATSUB  ' to WS-msg1.
      *
           If WS-Rule  = 0 then perform Missing-Parm-Error.
           If WS-Rule  = 1 then perform Rule-22.
           If WS-Rule  = 2 then perform Rule-23.
           If WS-Rule  > 2 then perform None-Supported-Rule.

           EXIT PROGRAM.
      *
          Rule-22.
           Display 'Running Rule-22'.
           Move 22 to WS-RESULT.
           Exit Paragraph.

      *
          Rule-23.
           Display 'Running Rule-23'.
      *     Move 23 to WS-RESULT.
            Move 29 to WS-RESULT.
           Exit Paragraph.

      *
          None-Supported-Rule.
           Display 'ERROR-999: Rule ' WS-Rule ' is not supported'.
           Move 999 to WS-RESULT.
           Exit Paragraph.
      *
          Missing-Parm-Error.
           Display 'ERROR-999: No rule passed in PARM'.
           Move 999 to WS-RESULT.
           Exit Paragraph.