
--
--  Create CLUE.GAMES_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."GAMES_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.GAMES_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."GAMES_ACT" ("ID", "USER_ID", "USERS_NK1", "NAME", "LAST_ACT_NUM", "COMPLETED", "HIDE_UNDO", "HIDE_ACCUSE", "HIDE_MISSING", "HIDE_MY_SUGG", "HIDE_PCARDS", "HIDE_SUGG_HIST", 
	 CONSTRAINT "GAMES_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "GAMES_ACT_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "CLUE"."USERS_ACT" ("ID") DISABLE) AS 
  select
       GAM.id
      ,GAM.user_id
      ,USR.name
      ,GAM.name
      ,GAM.last_act_num
      ,GAM.completed
      ,GAM.hide_undo
      ,GAM.hide_accuse
      ,GAM.hide_missing
      ,GAM.hide_my_sugg
      ,GAM.hide_pcards
      ,GAM.hide_sugg_hist
 from             games GAM
       inner join users_act USR on USR.id = GAM.user_id;

--  Comments

--DBMS_METADATA:CLUE.GAMES_ACT

   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."ID" IS 'Surrogate Primary Key for these games';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."USER_ID" IS 'User for this Game';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."USERS_NK1" IS 'USERS Natural Key 1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."NAME" IS 'User''s Game Name';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."LAST_ACT_NUM" IS 'Number of Last Actions to Display in User''s Game';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."COMPLETED" IS 'Flag indicating the Game is complete';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."HIDE_UNDO" IS 'Flag indicating to hide the Accusations Report in Users'' Game';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."HIDE_ACCUSE" IS 'Flag indicating to hide the Accusations Report in Users'' Game';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."HIDE_MISSING" IS 'Flag indicating to hide the Missing Cards Report in Users'' Game';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."HIDE_MY_SUGG" IS 'Flag indicating to hide the My Suggestions Report in Users'' Game';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."HIDE_PCARDS" IS 'Flag indicating to hide the Player Cards Report in Users'' Game';
   COMMENT ON COLUMN "CLUE"."GAMES_ACT"."HIDE_SUGG_HIST" IS 'Flag indicating to hide the Suggestion History Report in Users'' Game';
   COMMENT ON TABLE "CLUE"."GAMES_ACT"  IS 'Individual User''s Games';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.GAMES_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."GAMES_ACT" FOR "CLUE"."GAMES_ACT";


set define on
