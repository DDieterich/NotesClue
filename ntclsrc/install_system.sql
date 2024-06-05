
--
--  SYSTEM Installation Script
--
--  Must be run as SYSTEM
--

spool install_system.log

set blockterminator off
set sqlblanklines on

----------------------------------------
-- GRANT Install

@dbi.sql "SYSTEM/CLUE_usr.grnt" "" ""
@dbi.sql "SYSTEM/DMSTEX_usr.grnt" "" ""

----------------------------------------
set sqlblanklines off
set blockterminator on

spool off

