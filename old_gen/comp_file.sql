
-- SPOOL script to create PL/SQL component script from PROGRAMS
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


set define '&'
set feedback off
set linesize 4000
set pagesize 0
set serveroutput on format wrapped
set trimspool on
set verify off
spool comp.sql

prompt
prompt prompt
prompt prompt === Compile Stored Program Units ===
prompt
prompt set define off
prompt

begin
   dbms_output.put_line('');
   dbms_output.put_line('--');
   dbms_output.put_line('-- Package Specs');
   dbms_output.put_line('--');
   for buff in (
      select * from programs_act
       where APPLICATIONS_NK1 = '&1.'
        and  type = 'PACKAGE'
	    order by name )
   loop
      dbms_output.put_line('prompt');
      dbms_output.put_line('prompt '||buff.name||'.pks');
      dbms_output.put_line('@@'||buff.name||'.pks');
      dbms_output.put_line('/');
      dbms_output.put_line('show errors PACKAGE '||buff.name);
      dbms_output.put_line('');
   end loop;
   dbms_output.put_line('');
   dbms_output.put_line('--');
   dbms_output.put_line('-- Package Bodies');
   dbms_output.put_line('--');
   for buff in (
      select * from programs_act
       where APPLICATIONS_NK1 = '&1.'
        and  type = 'PACKAGE'
	    order by name )
   loop
      dbms_output.put_line('prompt');
      dbms_output.put_line('prompt '||buff.name||'.pkb');
      dbms_output.put_line('@@'||buff.name||'.pkb');
      dbms_output.put_line('/');
      dbms_output.put_line('show errors PACKAGE BODY '||buff.name);
      dbms_output.put_line('');
   end loop;
end;
/

prompt
prompt prompt
prompt set define on
prompt

spool off
set verify on
set pagesize 20
set linesize 80
set feedback on
