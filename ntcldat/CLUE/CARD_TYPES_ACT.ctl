OPTIONS (SKIP=1)
LOAD DATA
APPEND INTO TABLE "CLUE"."CARD_TYPES_ACT"
FIELDS CSV WITH EMBEDDED
TRAILING NULLCOLS
   (ID                             FLOAT EXTERNAL
   ,USER_ID                        FLOAT EXTERNAL
   ,USERS_NK1                      CHAR(320)
   ,NAME                           CHAR(15)
   ,SORT_ORD                       FLOAT EXTERNAL
   )
