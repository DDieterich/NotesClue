
--
--  Create CLUE.CARD_TYPES_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."CARD_TYPES_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.CARD_TYPES_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."CARD_TYPES_ACT" ("ID", "USER_ID", "USERS_NK1", "NAME", "SORT_ORD", 
	 CONSTRAINT "CARD_TYPES_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "CARD_TYPES_ACT_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "CLUE"."USERS_ACT" ("ID") DISABLE) AS 
  select
       CTYPE.id
      ,CTYPE.user_id
      ,USR.name
      ,CTYPE.name
      ,CTYPE.sort_ord
 from             card_types CTYPE
       inner join users_act USR on USR.id = CTYPE.user_id;

--  Comments

--DBMS_METADATA:CLUE.CARD_TYPES_ACT

   COMMENT ON COLUMN "CLUE"."CARD_TYPES_ACT"."ID" IS 'Surrogate Primary Key for these card_types';
   COMMENT ON COLUMN "CLUE"."CARD_TYPES_ACT"."USER_ID" IS 'User for this Card Type';
   COMMENT ON COLUMN "CLUE"."CARD_TYPES_ACT"."USERS_NK1" IS 'USERS Natural Key 1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."CARD_TYPES_ACT"."NAME" IS 'Card Type Name';
   COMMENT ON COLUMN "CLUE"."CARD_TYPES_ACT"."SORT_ORD" IS 'Sort Order for Card Types';
   COMMENT ON TABLE "CLUE"."CARD_TYPES_ACT"  IS 'Players for each User''s Game';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.CARD_TYPES_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."CARD_TYPES_ACT" FOR "CLUE"."CARD_TYPES_ACT";


set define on
