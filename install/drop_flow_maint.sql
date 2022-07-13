
select '=== CLUE drop_flow_maint ===' as SCRIPT_NAME from dual;

-- Script File "drop_flow_maint"
--    APEX flow file to drop APEX Data Maintenance Forms

   -- Application: Clue Notes For Oracle
   -- Generated by DTGen (http://dmstex.com/services/dtgen)
   -- December  16, 2013  11:32:45 AM

   --
   --
   -- � Duane.Dieterich@DMSTEX.com 2013
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


begin
   util_flow.init('APP');
end;
/


begin
   dbms_output.put_line('  ...application processes');
   --application/shared_components/logic/application_processes
end;
/

begin
   util_flow.show_block(632);

   dbms_output.put_line('  ...Remove page ' || (1000 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1000 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(633);

   dbms_output.put_line('  ...Remove page ' || (1001 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1001 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(634);

   dbms_output.put_line('  ...Remove page ' || (1002 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1002 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(635);

   dbms_output.put_line('  ...Remove page ' || (1003 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1003 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(636);

   dbms_output.put_line('  ...Remove page ' || (1011 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1011 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(637);

   dbms_output.put_line('  ...Remove page ' || (1012 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1012 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(638);

   dbms_output.put_line('  ...Remove page ' || (1013 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1013 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(639);

   dbms_output.put_line('  ...Remove page ' || (1014 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1014 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(640);

   dbms_output.put_line('  ...Remove page ' || (1015 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1015 + util_flow.page_os));

end;
/


begin
   util_flow.show_block(641);

   dbms_output.put_line('  ...Remove page ' || (1200 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1200 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(642);

   dbms_output.put_line('  ...Remove page ' || (1201 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1201 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(643);

   dbms_output.put_line('  ...Remove page ' || (1202 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1202 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(644);

   dbms_output.put_line('  ...Remove page ' || (1203 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1203 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(645);

   dbms_output.put_line('  ...Remove page ' || (1211 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1211 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(646);

   dbms_output.put_line('  ...Remove page ' || (1212 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1212 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(647);

   dbms_output.put_line('  ...Remove page ' || (1213 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1213 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(648);

   dbms_output.put_line('  ...Remove page ' || (1214 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1214 + util_flow.page_os));

end;
/

begin
   util_flow.show_block(649);

   dbms_output.put_line('  ...Remove page ' || (1215 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1215 + util_flow.page_os));

end;
/


begin
   util_flow.show_block(650);

   dbms_output.put_line('  ...Remove page ' || (1400 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1400 + util_flow.page_os));

end;
/


begin
   util_flow.show_block(651);

   dbms_output.put_line('  ...Remove page ' || (1600 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1600 + util_flow.page_os));

end;
/


begin
   util_flow.show_block(652);

   dbms_output.put_line('  ...Remove page ' || (1800 + util_flow.page_os));
   wwv_flow_api.remove_page
      (p_flow_id=>wwv_flow.g_flow_id, p_page_id=> (1800 + util_flow.page_os));

end;
/


begin
   util_flow.fin;
end;
/

