
--
--  Create CLUE.SUGGESTION_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."SUGGESTION_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.SUGGESTION_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."SUGGESTION_ACT" ("ID", "PLAYER_ID", "PLAYERS_NK1", "PLAYERS_NK2", "PLAYERS_NK3", "SEQ", "RESOLVED", "RES_ACTION_ID", "RES_ID_PATH", "RES_NK_PATH", "RES_ACTIONS_NK1", "RES_ACTIONS_NK2", "RES_ACTIONS_NK3", "RES_ACTIONS_NK4", "REV_PLAYER_ID", "REV_PLAYERS_NK1", "REV_PLAYERS_NK2", "REV_PLAYERS_NK3", 
	 CONSTRAINT "SUGGESTION_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "SUGGESTION_ACT_FK1" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "SUGGESTION_ACT_FK4" FOREIGN KEY ("RES_ACTION_ID")
	  REFERENCES "CLUE"."ACTIONS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "SUGGESTION_ACT_FK5" FOREIGN KEY ("REV_PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE) AS 
  select
       id
      ,player_id
      ,players_nk1
      ,players_nk2
      ,players_nk3
      ,seq
      ,resolved
      ,res_action_id
      ,res_id_path
      ,res_nk_path
      ,res_actions_nk1
      ,res_actions_nk2
      ,res_actions_nk3
      ,res_actions_nk4
      ,rev_player_id
      ,rev_players_nk1
      ,rev_players_nk2
      ,rev_players_nk3
       from  actions_act
       where actions_sub_type = 'suggestion';

--  Comments

--DBMS_METADATA:CLUE.SUGGESTION_ACT

   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."ID" IS 'Surrogate Primary Key for these actions';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."PLAYER_ID" IS 'Player that took this Action';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."PLAYERS_NK1" IS 'PLAYERS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."PLAYERS_NK2" IS 'PLAYERS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."PLAYERS_NK3" IS 'PLAYERS Natural Key 3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."SEQ" IS 'Sequence Number for this Action';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."RESOLVED" IS 'Resolved Status for this Action';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."RES_ACTION_ID" IS '(suggestion Sub-type) The current Action when this Suggestion was resolved';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."RES_ID_PATH" IS '(suggestion Sub-type) Path of ancestor IDs hierarchy for this record';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."RES_NK_PATH" IS '(suggestion Sub-type) Path of ancestor Natural Keys hierarchy for this record';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."RES_ACTIONS_NK1" IS '(suggestion Sub-type) ACTIONS Natural Key 1: PLAYERS NK1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."RES_ACTIONS_NK2" IS '(suggestion Sub-type) ACTIONS Natural Key 2: PLAYERS NK2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."RES_ACTIONS_NK3" IS '(suggestion Sub-type) ACTIONS Natural Key 3: PLAYERS NK3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."RES_ACTIONS_NK4" IS '(suggestion Sub-type) ACTIONS Natural Key 4: Sequence Number for this Action';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."REV_PLAYER_ID" IS '(suggestion Sub-type) Player that reveled a card for this Suggestion';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."REV_PLAYERS_NK1" IS '(suggestion Sub-type) PLAYERS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."REV_PLAYERS_NK2" IS '(suggestion Sub-type) PLAYERS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."SUGGESTION_ACT"."REV_PLAYERS_NK3" IS '(suggestion Sub-type) PLAYERS Natural Key 3: Player''s Name';
   COMMENT ON TABLE "CLUE"."SUGGESTION_ACT"  IS 'Suggestion Action';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.SUGGESTION_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."SUGGESTION_ACT" FOR "CLUE"."SUGGESTION_ACT";


set define on
