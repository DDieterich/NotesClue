
--
--  Create CLUE.USERS_ACT view
--
--  NOTE: Foreign keys are in a difference script
--        Triggers are in a difference script
--

set define off


--
--  Need to avoid errors granting permisions on a view that has errors
--  Found this technique on Ask Tom
--  https://asktom.oracle.com/pls/apex/f?p=100:11:0::::P11_QUESTION_ID:43253832697675#2653213300346351987
create view "CLUE"."USERS_ACT"
  as   select * from TEMP_PUBLICLY_UPDATEABLE_TABLE;

--  Grants



--DBMS_METADATA:CLUE.USERS_ACT

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CLUE"."USERS_ACT" ("ID", "NAME", 
	 CONSTRAINT "USERS_ACT_PK" PRIMARY KEY ("ID") DISABLE) AS 
  select
       USR.id
      ,USR.name
 from             users USR;

--  Comments

--DBMS_METADATA:CLUE.USERS_ACT

   COMMENT ON COLUMN "CLUE"."USERS_ACT"."ID" IS 'Surrogate Primary Key for these users';
   COMMENT ON COLUMN "CLUE"."USERS_ACT"."NAME" IS 'Clue Notes User Name';
   COMMENT ON TABLE "CLUE"."USERS_ACT"  IS 'Registered Users';


--  Grants


--  Synonyms

--DBMS_METADATA:DMSTEX.USERS_ACT

  CREATE OR REPLACE EDITIONABLE SYNONYM "DMSTEX"."USERS_ACT" FOR "CLUE"."USERS_ACT";


set define on
