
--
-- SPOOL script to create PL/SQL component script from APPLICATIONS
--
-- &1. is the DTGEN application abbreviation
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


spool vars.sql
set define '&'
set feedback off
set linesize 4000
set pagesize 0
set serveroutput on format wrapped
set trimspool on
set verify off

declare
   abuff  applications%ROWTYPE;
begin
   select * into abuff from applications where abbr = '&1.';
   dbms_output.put_line('');
   dbms_output.put_line('--');
   dbms_output.put_line('-- Variable Declarations');
   dbms_output.put_line('-- (Use @@vars like an INCLUDE file)');
   dbms_output.put_line('--');
   dbms_output.put_line('');
   dbms_output.put_line('define TNS_ALIAS = ""  -- TNS Alias Name for Remote DB (must include @ sign)');
   dbms_output.put_line('define USRTSPACE = users  -- Default Tablespace');
   dbms_output.put_line('define OWNERNAME = ' || upper(abuff.db_schema)    || '  -- New Schema Owner Name');
   dbms_output.put_line('define OWNERPASS = ' || lower(abuff.db_schema)    || '  -- New Schema Owner Password');
   dbms_output.put_line('define APP_ABBR  = ' ||       abuff.abbr          || '  -- Application Abbreviation');
   dbms_output.put_line('define APEX_WS   = ' || upper(abuff.apex_ws_name) || '  -- APEX Workspace Name');
   dbms_output.put_line('define APEX_NAME = ' || upper(abuff.apex_schema)  || '  -- APEX Parsing Schema Name');
   dbms_output.put_line('define APEX_PASS = ' || lower(abuff.apex_schema)  || '  -- APEX Parsing Schema Password');
   dbms_output.put_line('');
end;
/

spool off
set verify on
set pagesize 20
set linesize 80
set feedback on
