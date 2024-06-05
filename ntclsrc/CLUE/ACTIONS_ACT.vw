
--
--  Create CLUE.ACTIONS_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."ACTIONS_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.ACTIONS_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."ACTIONS_ACT" ("ID", "ACTIONS_SUB_TYPE", "PLAYER_ID", "PLAYERS_NK1", "PLAYERS_NK2", "PLAYERS_NK3", "SEQ", "RESOLVED", "RES_ACTION_ID", "RES_ID_PATH", "RES_NK_PATH", "RES_ACTIONS_NK1", "RES_ACTIONS_NK2", "RES_ACTIONS_NK3", "RES_ACTIONS_NK4", "REV_PLAYER_ID", "REV_PLAYERS_NK1", "REV_PLAYERS_NK2", "REV_PLAYERS_NK3", 
	 CONSTRAINT "ACTIONS_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "ACTIONS_ACT_FK1" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "ACTIONS_ACT_FK4" FOREIGN KEY ("RES_ACTION_ID")
	  REFERENCES "CLUE"."ACTIONS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "ACTIONS_ACT_FK5" FOREIGN KEY ("REV_PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE) AS 
  select
       ACT.id
      ,ACT.actions_sub_type
      ,ACT.player_id
      ,PLY.games_nk1
      ,PLY.games_nk2
      ,PLY.name
      ,ACT.seq
      ,ACT.resolved
      ,ACT.res_action_id
      ,actions_tab.get_res_id_path(res_ACT.id)
      ,actions_tab.get_res_nk_path(res_ACT.id)
      ,res_ACT.players_nk1
      ,res_ACT.players_nk2
      ,res_ACT.players_nk3
      ,res_ACT.seq
      ,ACT.rev_player_id
      ,rev_PLY.games_nk1
      ,rev_PLY.games_nk2
      ,rev_PLY.name
 from             actions ACT
       inner join players_act PLY on PLY.id = ACT.player_id
  left outer join actions_a res_ACT on res_ACT.id = ACT.res_action_id
  left outer join players_act rev_PLY on rev_PLY.id = ACT.rev_player_id;

--  Comments

--DBMS_METADATA:CLUE.ACTIONS_ACT

   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."ID" IS 'Surrogate Primary Key for these actions';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."ACTIONS_SUB_TYPE" IS 'Sub-type for these actions';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."PLAYER_ID" IS 'Player that took this Action';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."PLAYERS_NK1" IS 'PLAYERS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."PLAYERS_NK2" IS 'PLAYERS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."PLAYERS_NK3" IS 'PLAYERS Natural Key 3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."SEQ" IS 'Sequence Number for this Action';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."RESOLVED" IS 'Resolved Status for this Action';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."RES_ACTION_ID" IS '(suggestion Sub-type) The current Action when this Suggestion was resolved';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."RES_ID_PATH" IS '(suggestion Sub-type) Path of ancestor IDs hierarchy for this record';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."RES_NK_PATH" IS '(suggestion Sub-type) Path of ancestor Natural Keys hierarchy for this record';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."RES_ACTIONS_NK1" IS '(suggestion Sub-type) ACTIONS Natural Key 1: PLAYERS NK1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."RES_ACTIONS_NK2" IS '(suggestion Sub-type) ACTIONS Natural Key 2: PLAYERS NK2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."RES_ACTIONS_NK3" IS '(suggestion Sub-type) ACTIONS Natural Key 3: PLAYERS NK3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."RES_ACTIONS_NK4" IS '(suggestion Sub-type) ACTIONS Natural Key 4: Sequence Number for this Action';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."REV_PLAYER_ID" IS '(suggestion Sub-type) Player that reveled a card for this Suggestion';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."REV_PLAYERS_NK1" IS '(suggestion Sub-type) PLAYERS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."REV_PLAYERS_NK2" IS '(suggestion Sub-type) PLAYERS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."ACTIONS_ACT"."REV_PLAYERS_NK3" IS '(suggestion Sub-type) PLAYERS Natural Key 3: Player''s Name';
   COMMENT ON TABLE "CLUE"."ACTIONS_ACT"  IS 'Player''s Suggestions for each User''s Game';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.ACTIONS_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."ACTIONS_ACT" FOR "CLUE"."ACTIONS_ACT";


set define on
