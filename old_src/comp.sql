
prompt
prompt === Compile Stored Program Units ===

set define off


--
-- Package Specs
--
prompt
prompt clue.pks
@@clue.pks
/
show errors PACKAGE clue


--
-- Package Bodies
--
prompt
prompt clue.pkb
@@clue.pkb
/
show errors PACKAGE BODY clue


prompt
set define on

