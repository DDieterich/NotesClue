
--
--  SYS Installation Script
--
--  Must be run as SYS
--

spool install_sys.log

set blockterminator off
set sqlblanklines on

----------------------------------------
-- ROLE Install

@dbi.sql "SYS/CLUE_adm.rol" "" ""
@dbi.sql "SYS/CLUE_app.rol" "" ""

----------------------------------------
-- USER Install

@dbi.sql "SYS/CLUE.usr" "" ""
@dbi.sql "SYS/DMSTEX.usr" "" ""

----------------------------------------
set sqlblanklines off
set blockterminator on

spool off

