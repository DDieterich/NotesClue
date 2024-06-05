OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "CLUE"."CARDS"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (ID                             FLOAT EXTERNAL
   ,GAME_ID                        FLOAT EXTERNAL
   ,NAME                           CHAR(15)
   ,CTYPE_ID                       FLOAT EXTERNAL
   )
