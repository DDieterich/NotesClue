OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "CLUE"."CARDS_ACT"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (ID                             FLOAT EXTERNAL
   ,GAME_ID                        FLOAT EXTERNAL
   ,GAMES_NK1                      CHAR(320)
   ,GAMES_NK2                      CHAR(320)
   ,NAME                           CHAR(15)
   ,CTYPE_ID                       FLOAT EXTERNAL
   ,CARD_TYPES_NK1                 CHAR(320)
   ,CARD_TYPES_NK2                 CHAR(15)
   )
