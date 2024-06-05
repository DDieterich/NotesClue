
--
--  Create CLUE.CARDS_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."CARDS_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.CARDS_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."CARDS_ACT" ("ID", "GAME_ID", "GAMES_NK1", "GAMES_NK2", "NAME", "CTYPE_ID", "CARD_TYPES_NK1", "CARD_TYPES_NK2", 
	 CONSTRAINT "CARDS_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "CARDS_ACT_FK1" FOREIGN KEY ("GAME_ID")
	  REFERENCES "CLUE"."GAMES_ACT" ("ID") DISABLE, 
	 CONSTRAINT "CARDS_ACT_FK3" FOREIGN KEY ("CTYPE_ID")
	  REFERENCES "CLUE"."CARD_TYPES_ACT" ("ID") DISABLE) AS 
  select
       CRD.id
      ,CRD.game_id
      ,GAM.users_nk1
      ,GAM.name
      ,CRD.name
      ,CRD.ctype_id
      ,CTYPE.users_nk1
      ,CTYPE.name
 from             cards CRD
       inner join games_act GAM on GAM.id = CRD.game_id
       inner join card_types_act CTYPE on CTYPE.id = CRD.ctype_id;

--  Comments

--DBMS_METADATA:CLUE.CARDS_ACT

   COMMENT ON COLUMN "CLUE"."CARDS_ACT"."ID" IS 'Surrogate Primary Key for these cards';
   COMMENT ON COLUMN "CLUE"."CARDS_ACT"."GAME_ID" IS 'User''s Game for this Card';
   COMMENT ON COLUMN "CLUE"."CARDS_ACT"."GAMES_NK1" IS 'GAMES Natural Key 1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."CARDS_ACT"."GAMES_NK2" IS 'GAMES Natural Key 2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."CARDS_ACT"."NAME" IS 'Card Name';
   COMMENT ON COLUMN "CLUE"."CARDS_ACT"."CTYPE_ID" IS 'Card Type';
   COMMENT ON COLUMN "CLUE"."CARDS_ACT"."CARD_TYPES_NK1" IS 'CARD_TYPES Natural Key 1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."CARDS_ACT"."CARD_TYPES_NK2" IS 'CARD_TYPES Natural Key 2: Card Type Name';
   COMMENT ON TABLE "CLUE"."CARDS_ACT"  IS 'Cards for each User''s Game';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.CARDS_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."CARDS_ACT" FOR "CLUE"."CARDS_ACT";


set define on
