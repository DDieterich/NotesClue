
--
--  Create CLUE.SUGGESTION view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."SUGGESTION"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.SUGGESTION

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."SUGGESTION" ("ID", "PLAYER_ID", "SEQ", "RESOLVED", "RES_ACTION_ID", "REV_PLAYER_ID", 
	 CONSTRAINT "SUGGESTION_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "SUGGESTION_FK1" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "SUGGESTION_FK4" FOREIGN KEY ("RES_ACTION_ID")
	  REFERENCES "CLUE"."ACTIONS_ACT" ("ID") DISABLE, 
	 CONSTRAINT "SUGGESTION_FK5" FOREIGN KEY ("REV_PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE) AS 
  select
       id
      ,player_id
      ,seq
      ,resolved
      ,res_action_id
      ,rev_player_id
       from  actions
       where actions_sub_type = 'suggestion';

--  Comments

--DBMS_METADATA:CLUE.SUGGESTION

   COMMENT ON COLUMN "CLUE"."SUGGESTION"."ID" IS 'Surrogate Primary Key for these actions';
   COMMENT ON COLUMN "CLUE"."SUGGESTION"."PLAYER_ID" IS 'Player that took this Action';
   COMMENT ON COLUMN "CLUE"."SUGGESTION"."SEQ" IS 'Sequence Number for this Action';
   COMMENT ON COLUMN "CLUE"."SUGGESTION"."RESOLVED" IS 'Resolved Status for this Action';
   COMMENT ON COLUMN "CLUE"."SUGGESTION"."RES_ACTION_ID" IS '(suggestion Sub-type) The current Action when this Suggestion was resolved';
   COMMENT ON COLUMN "CLUE"."SUGGESTION"."REV_PLAYER_ID" IS '(suggestion Sub-type) Player that reveled a card for this Suggestion';
   COMMENT ON TABLE "CLUE"."SUGGESTION"  IS 'Suggestion Action';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.SUGGESTION

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."SUGGESTION" FOR "CLUE"."SUGGESTION";


set define on
