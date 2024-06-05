OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "CLUE"."GAMES"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (ID                             FLOAT EXTERNAL
   ,USER_ID                        FLOAT EXTERNAL
   ,NAME                           CHAR(320)
   ,LAST_ACT_NUM                   FLOAT EXTERNAL
   ,COMPLETED                      CHAR(1)
   ,HIDE_UNDO                      CHAR(1)
   ,HIDE_ACCUSE                    CHAR(1)
   ,HIDE_MISSING                   CHAR(1)
   ,HIDE_MY_SUGG                   CHAR(1)
   ,HIDE_PCARDS                    CHAR(1)
   ,HIDE_SUGG_HIST                 CHAR(1)
   )
