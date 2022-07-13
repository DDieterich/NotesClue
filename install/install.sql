
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

-- Create New Schema Owner, Application User, and APEX Workspace
@create_owner &OWNERNAME. &OWNERPASS. &USRTSPACE.
@create_app_role &APP_ABBR.
@create_user &APEX_NAME. &APEX_PASS.
@grant_app_role &APP_ABBR. &APEX_NAME.
@create_apex_ws &APEX_WS. &APEX_NAME. &APEX_PASS. &OWNERNAME.

-- Create Schema Owner Objects
--
connect &OWNERNAME./&OWNERPASS.&TNS_ALIAS.
set serveroutput on format wrapped
@grant_role_option &APP_ABBR._APP &APEX_NAME.
@create_clus
@create_tab
@create_fk
@create_util
@create_dom
@create_cons
@create_ttrig
@create_view
@create_aa
@create_st
@create_grnt
@comp
@static_data

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
