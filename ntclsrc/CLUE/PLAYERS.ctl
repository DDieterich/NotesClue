OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "CLUE"."PLAYERS"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (ID                             FLOAT EXTERNAL
   ,GAME_ID                        FLOAT EXTERNAL
   ,NAME                           CHAR(15)
   ,SEQ                            FLOAT EXTERNAL
   ,TOTAL_CARDS                    FLOAT EXTERNAL
   )
