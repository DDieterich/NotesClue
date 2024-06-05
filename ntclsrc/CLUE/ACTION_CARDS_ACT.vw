
--
--  Create CLUE.ACTION_CARDS_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."ACTION_CARDS_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.ACTION_CARDS_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."ACTION_CARDS_ACT" ("ID", "ACTION_ID", "ACTIONS_NK1", "ACTIONS_NK2", "ACTIONS_NK3", "ACTIONS_NK4", "CARD_ID", "CARDS_NK1", "CARDS_NK2", "CARDS_NK3", 
	 CONSTRAINT "ACTION_CARDS_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "ACTION_CARDS_ACT_FK1" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "CLUE"."ACTIONS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "ACTION_CARDS_ACT_FK2" FOREIGN KEY ("CARD_ID")
	  REFERENCES "CLUE"."CARDS_ACT" ("ID") DISABLE) AS 
  select
       ACTC.id
      ,ACTC.action_id
      ,ACT.players_nk1
      ,ACT.players_nk2
      ,ACT.players_nk3
      ,ACT.seq
      ,ACTC.card_id
      ,CRD.games_nk1
      ,CRD.games_nk2
      ,CRD.name
 from             action_cards ACTC
       inner join actions_a ACT on ACT.id = ACTC.action_id
       inner join cards_act CRD on CRD.id = ACTC.card_id;

--  Comments

--DBMS_METADATA:CLUE.ACTION_CARDS_ACT

   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."ID" IS 'Surrogate Primary Key for these action_cards';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."ACTION_ID" IS 'Action for this Card';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."ACTIONS_NK1" IS 'ACTIONS Natural Key 1: PLAYERS NK1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."ACTIONS_NK2" IS 'ACTIONS Natural Key 2: PLAYERS NK2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."ACTIONS_NK3" IS 'ACTIONS Natural Key 3: PLAYERS NK3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."ACTIONS_NK4" IS 'ACTIONS Natural Key 4: Sequence Number for this Action';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."CARD_ID" IS 'Card for this Action';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."CARDS_NK1" IS 'CARDS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."CARDS_NK2" IS 'CARDS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."ACTION_CARDS_ACT"."CARDS_NK3" IS 'CARDS Natural Key 3: Card Name';
   COMMENT ON TABLE "CLUE"."ACTION_CARDS_ACT"  IS 'Player''s Card Suggestions for each User''s Game';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.ACTION_CARDS_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."ACTION_CARDS_ACT" FOR "CLUE"."ACTION_CARDS_ACT";


set define on
