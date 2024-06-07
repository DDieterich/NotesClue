
--
-- Clue Notes Database Installation Script
-- (Must be run as the "sys as sysdba" user)
--

spool install

-- Configure SQL*Plus
--
set define '&'
set trimspool on
set feedback off
set serveroutput on format wrapped
set verify off

-- Initialize Variables
@vars
define TNS_ALIAS = "@XE3"  -- TNS Alias Name for Remote DB (must include @ sign)

-- Create Application User Objects
--
connect &APEX_NAME./&APEX_PASS.&TNS_ALIAS.
set serveroutput on format wrapped
@create_usyn

-- Create APEX Application
begin
   wwv_flow_application_install.set_workspace_id
     (apex_util.find_security_group_id('&APEX_WS.'));
end;
/
@f104
-- APEX Import changes some SQL*Plus Settings
set trimspool on
set feedback off
set serveroutput on format wrapped
set verify off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
---------------------------------------------

set define '^'
@create_util_flow
@create_uidef
@create_flow_lov
@create_flow_maint

set define '&'
set feedback on
set verify on
WHENEVER SQLERROR CONTINUE

spool off
