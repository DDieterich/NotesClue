OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "CLUE"."CARD_TYPES"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (ID                             FLOAT EXTERNAL
   ,USER_ID                        FLOAT EXTERNAL
   ,NAME                           CHAR(15)
   ,SORT_ORD                       FLOAT EXTERNAL
   )
