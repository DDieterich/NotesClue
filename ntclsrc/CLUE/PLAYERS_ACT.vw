
--
--  Create CLUE.PLAYERS_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."PLAYERS_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.PLAYERS_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."PLAYERS_ACT" ("ID", "GAME_ID", "GAMES_NK1", "GAMES_NK2", "NAME", "SEQ", "TOTAL_CARDS", 
	 CONSTRAINT "PLAYERS_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "PLAYERS_ACT_FK1" FOREIGN KEY ("GAME_ID")
	  REFERENCES "CLUE"."GAMES_ACT" ("ID") DISABLE) AS 
  select
       PLY.id
      ,PLY.game_id
      ,GAM.users_nk1
      ,GAM.name
      ,PLY.name
      ,PLY.seq
      ,PLY.total_cards
 from             players PLY
       inner join games_act GAM on GAM.id = PLY.game_id;

--  Comments

--DBMS_METADATA:CLUE.PLAYERS_ACT

   COMMENT ON COLUMN "CLUE"."PLAYERS_ACT"."ID" IS 'Surrogate Primary Key for these players';
   COMMENT ON COLUMN "CLUE"."PLAYERS_ACT"."GAME_ID" IS 'User''s Game for this Player';
   COMMENT ON COLUMN "CLUE"."PLAYERS_ACT"."GAMES_NK1" IS 'GAMES Natural Key 1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."PLAYERS_ACT"."GAMES_NK2" IS 'GAMES Natural Key 2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."PLAYERS_ACT"."NAME" IS 'Player''s Name';
   COMMENT ON COLUMN "CLUE"."PLAYERS_ACT"."SEQ" IS 'Player''s Sequence from User in Game';
   COMMENT ON COLUMN "CLUE"."PLAYERS_ACT"."TOTAL_CARDS" IS 'Total Cards Held by Player';
   COMMENT ON TABLE "CLUE"."PLAYERS_ACT"  IS 'Players for each User''s Game';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.PLAYERS_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."PLAYERS_ACT" FOR "CLUE"."PLAYERS_ACT";


set define on
