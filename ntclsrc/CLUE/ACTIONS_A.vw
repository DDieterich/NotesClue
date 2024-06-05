
--
--  Create CLUE.ACTIONS_A view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."ACTIONS_A"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.ACTIONS_A

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."ACTIONS_A" ("ID", "PLAYER_ID", "PLAYERS_NK1", "PLAYERS_NK2", "PLAYERS_NK3", "SEQ", 
	 CONSTRAINT "ACTIONS_A_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "ACTIONS_A_FK1" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE) AS 
  select
       ACT.id
      ,ACT.player_id
      ,PLY.games_nk1
      ,PLY.games_nk2
      ,PLY.name
      ,ACT.seq
 from             actions ACT
       inner join players_act PLY on PLY.id = ACT.player_id;

--  Comments

--DBMS_METADATA:CLUE.ACTIONS_A

   COMMENT ON COLUMN "CLUE"."ACTIONS_A"."ID" IS 'Surrogate Primary Key for these actions';
   COMMENT ON COLUMN "CLUE"."ACTIONS_A"."PLAYER_ID" IS 'Player that took this Action';
   COMMENT ON COLUMN "CLUE"."ACTIONS_A"."PLAYERS_NK1" IS 'PLAYERS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_A"."PLAYERS_NK2" IS 'PLAYERS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_A"."PLAYERS_NK3" IS 'PLAYERS Natural Key 3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_A"."SEQ" IS 'Sequence Number for this Action';
   COMMENT ON TABLE "CLUE"."ACTIONS_A"  IS 'Natural Keys for Player''s Suggestions for each User''s Game';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.ACTIONS_A

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."ACTIONS_A" FOR "CLUE"."ACTIONS_A";


set define on
