
--
-- Schema/API/APEX Un-Installation Script
-- (Must be run as the "system" or "sys as sysdba" user)
--
   --
   -- © Duane.Dieterich@DMSTEX.com 2013
   --
   -- All Rights Reserved
   --
   -- No part of this software may be reproduced, copied, modified or adapted,
   -- without the prior written consent of the author, unless otherwise
   -- indicated for stand-alone materials.
   --
   -- You may quote extracts from this software with attribution to
   -- Duane.Dieterich@DMSTEX.com
   --
   -- For any other mode of sharing, please contact Duane.Dieterich@DMSTEX.com.
   --
   -- Commercial use and distribution of this software is not allowed without
   -- express and prior written consent of the author.
   --
   -- THE SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
   -- INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
   -- AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
   -- THE COPYRIGHT HOLDER OR DMSTEX BUSINESS SOLUTIONS LLC, ITS MEMBERS,
   -- MANAGERS, OR EMPLOYEES BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
   -- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
   -- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
   -- PROFITS; CORRUPTION OF DATA, OR BUSINESS INTERRUPTION) HOWEVER CAUSED
   -- AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
   -- OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
   -- THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
   -- DAMAGE.
   --
   --

set trimspool on
set serveroutput on format wrapped
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
spool uninstall

-- Initialize Variables
@vars

-- Configure SQL*Plus
WHENEVER SQLERROR CONTINUE
WHENEVER OSERROR CONTINUE
set verify on
set trimspool on
set serveroutput on format wrapped
set define on

prompt
prompt This will remove the following from the database:
prompt
prompt   -) APEX Workspace &APEX_WS.
prompt   -) Application User &APEX_NAME.
prompt   -) Schema Owner &OWNERNAME.
prompt   -) Application Roles for &APP_ABBR.
prompt
prompt Press ENTER to continue
accept junk

-- Drop APEX Workspace
set feedback off
@create_util_flow
@drop_flow_maint
@drop_flow_lov
@drop_uidef
@drop_apex_ws &APEX_WS.
set feedback on

-- Drop Application User
@drop_user &APEX_NAME.

-- Drop Schema Owner
@drop_owner &OWNERNAME.

-- Drop Application Roles
@drop_app_role &APP_ABBR.

spool off

prompt Enter "exit" to quit
