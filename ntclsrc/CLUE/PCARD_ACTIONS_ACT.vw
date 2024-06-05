
--
--  Create CLUE.PCARD_ACTIONS_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."PCARD_ACTIONS_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.PCARD_ACTIONS_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."PCARD_ACTIONS_ACT" ("ID", "CARD_ID", "CARDS_NK1", "CARDS_NK2", "CARDS_NK3", "DISPOSITION", "PLAYER_ID", "PLAYERS_NK1", "PLAYERS_NK2", "PLAYERS_NK3", "ACTION_ID", "ACTIONS_NK1", "ACTIONS_NK2", "ACTIONS_NK3", "ACTIONS_NK4", 
	 CONSTRAINT "PCARD_ACTIONS_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "PCARD_ACTIONS_ACT_FK1" FOREIGN KEY ("CARD_ID")
	  REFERENCES "CLUE"."CARDS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "PCARD_ACTIONS_ACT_FK3" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "PCARD_ACTIONS_ACT_FK4" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "CLUE"."ACTIONS_ACT" ("ID") DISABLE) AS 
  select
       PCA.id
      ,PCA.card_id
      ,CRD.games_nk1
      ,CRD.games_nk2
      ,CRD.name
      ,PCA.disposition
      ,PCA.player_id
      ,PLY.games_nk1
      ,PLY.games_nk2
      ,PLY.name
      ,PCA.action_id
      ,ACT.players_nk1
      ,ACT.players_nk2
      ,ACT.players_nk3
      ,ACT.seq
 from             pcard_actions PCA
       inner join cards_act CRD on CRD.id = PCA.card_id
       inner join players_act PLY on PLY.id = PCA.player_id
       inner join actions_a ACT on ACT.id = PCA.action_id;

--  Comments

--DBMS_METADATA:CLUE.PCARD_ACTIONS_ACT

   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."ID" IS 'Surrogate Primary Key for these pcard_actions';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."CARD_ID" IS 'Card for this Player';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."CARDS_NK1" IS 'CARDS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."CARDS_NK2" IS 'CARDS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."CARDS_NK3" IS 'CARDS Natural Key 3: Card Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."DISPOSITION" IS 'Disposition of this Player''s Card';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."PLAYER_ID" IS 'Player for this Card';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."PLAYERS_NK1" IS 'PLAYERS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."PLAYERS_NK2" IS 'PLAYERS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."PLAYERS_NK3" IS 'PLAYERS Natural Key 3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."ACTION_ID" IS 'The current Action when this Player''s Card was dispositioned';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."ACTIONS_NK1" IS 'ACTIONS Natural Key 1: PLAYERS NK1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."ACTIONS_NK2" IS 'ACTIONS Natural Key 2: PLAYERS NK2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."ACTIONS_NK3" IS 'ACTIONS Natural Key 3: PLAYERS NK3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."PCARD_ACTIONS_ACT"."ACTIONS_NK4" IS 'ACTIONS Natural Key 4: Sequence Number for this Action';
   COMMENT ON TABLE "CLUE"."PCARD_ACTIONS_ACT"  IS 'Player''s Cards for each User''s Game';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.PCARD_ACTIONS_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."PCARD_ACTIONS_ACT" FOR "CLUE"."PCARD_ACTIONS_ACT";


set define on
