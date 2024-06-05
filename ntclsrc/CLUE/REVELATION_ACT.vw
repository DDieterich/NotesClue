
--
--  Create CLUE.REVELATION_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."REVELATION_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.REVELATION_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."REVELATION_ACT" ("ID", "PLAYER_ID", "PLAYERS_NK1", "PLAYERS_NK2", "PLAYERS_NK3", "SEQ", "RESOLVED", 
	 CONSTRAINT "REVELATION_ACT_PK" PRIMARY KEY ("ID") DISABLE, 
	 CONSTRAINT "REVELATION_ACT_FK1" FOREIGN KEY ("PLAYER_ID")
	  REFERENCES "CLUE"."PLAYERS_ACT" ("ID") DISABLE) AS 
  select
       id
      ,player_id
      ,players_nk1
      ,players_nk2
      ,players_nk3
      ,seq
      ,resolved
       from  actions_act
       where actions_sub_type = 'revelation';

--  Comments

--DBMS_METADATA:CLUE.REVELATION_ACT

   COMMENT ON COLUMN "CLUE"."REVELATION_ACT"."ID" IS 'Surrogate Primary Key for these actions';
   COMMENT ON COLUMN "CLUE"."REVELATION_ACT"."PLAYER_ID" IS 'Player that took this Action';
   COMMENT ON COLUMN "CLUE"."REVELATION_ACT"."PLAYERS_NK1" IS 'PLAYERS Natural Key 1: GAMES NK1: USERS NK1: Clue Notes User Name';
   COMMENT ON COLUMN "CLUE"."REVELATION_ACT"."PLAYERS_NK2" IS 'PLAYERS Natural Key 2: GAMES NK2: User''s Game Name';
   COMMENT ON COLUMN "CLUE"."REVELATION_ACT"."PLAYERS_NK3" IS 'PLAYERS Natural Key 3: Player''s Name';
   COMMENT ON COLUMN "CLUE"."REVELATION_ACT"."SEQ" IS 'Sequence Number for this Action';
   COMMENT ON COLUMN "CLUE"."REVELATION_ACT"."RESOLVED" IS 'Resolved Status for this Action';
   COMMENT ON TABLE "CLUE"."REVELATION_ACT"  IS 'Revelation Action';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.REVELATION_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."REVELATION_ACT" FOR "CLUE"."REVELATION_ACT";


set define on
