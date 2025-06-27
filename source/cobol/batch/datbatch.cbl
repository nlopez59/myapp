       ID DIVISION.
       PROGRAM-ID. DATBATCH.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-PARM-LEN     PIC S9(4) COMP.
       01  WS-PARM-VALUE   PIC X(1).

      * setup Mysub pgm as as a dynamic call
       01 SUBPGM  PIC X(8) VALUE 'DATSUB'.

       COPY DATVARS.

       LINKAGE SECTION.
       01  LK-PARM.
           05 LK-PARM-LEN  PIC S9(4)  COMP.
           05 LK-PARM-TEXT PIC X(1)   Value '0'.

       PROCEDURE DIVISION USING LK-PARM.
           Move LK-PARM-LEN   TO WS-PARM-LEN
           Move LK-PARM-TEXT  TO WS-PARM-VALUE
           Display 'DATBATCH: Input PARM=' WS-PARM-VALUE.

           Move WS-PARM-VALUE to WS-Rule.
           Display 'Calling ' SUBPGM ' With Input RULE=' WS-Rule.

           CALL SUBPGM USING WS-PARAMETERS.

           Display 'Values returned from DATSUB'.
           Display 'WS-MSG1:   ' WS-MSG1.
           Display 'WS-RESULT: ' WS-RESULT.

           STOP RUN.













      * Ref Notes:
      * Shared copybooks are defined in:
      *  zBuilder conf/build/dbb-build.yaml start task      sourceDirs:
      *  zBuilder conf/build/Cobol.yaml           dependencySearchPath:
      *  vsCode IBM Open Editor zapp.yaml for each repo propertyGroups:
      *  NOTE: when chg's build options use Full Upload OpenEd opt
      *COPY datshare.
      *     DISPLAY shared-f1.
