
--
--  Create CLUE.ACCUSATION view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."ACCUSATION"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.ACCUSATION

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."ACCUSATION" ("ID", "PLAYER_ID", "SEQ", "RESOLVED", 
	 CONSTRAINT "ACCUSATION_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "ACCUSATION_FK1" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE) AS 
  select
       id
      ,player_id
      ,seq
      ,resolved
       from  actions
       where actions_sub_type = 'accusation';

--  Comments

--DBMS_METADATA:CLUE.ACCUSATION

   COMMENT ON COLUMN "CLUE"."ACCUSATION"."ID" IS 'Surrogate Primary Key for these actions';
   COMMENT ON COLUMN "CLUE"."ACCUSATION"."PLAYER_ID" IS 'Player that took this Action';
   COMMENT ON COLUMN "CLUE"."ACCUSATION"."SEQ" IS 'Sequence Number for this Action';
   COMMENT ON COLUMN "CLUE"."ACCUSATION"."RESOLVED" IS 'Resolved Status for this Action';
   COMMENT ON TABLE "CLUE"."ACCUSATION"  IS 'Accusation Action';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.ACCUSATION

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."ACCUSATION" FOR "CLUE"."ACCUSATION";


set define on
