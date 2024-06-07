OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "CLUE"."PLAYERS_ACT"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (ID                             FLOAT EXTERNAL
   ,GAME_ID                        FLOAT EXTERNAL
   ,GAMES_NK1                      CHAR(320)
   ,GAMES_NK2                      CHAR(320)
   ,NAME                           CHAR(15)
   ,SEQ                            FLOAT EXTERNAL
   ,TOTAL_CARDS                    FLOAT EXTERNAL
   )
