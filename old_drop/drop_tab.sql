
select '=== CLUE drop_tab ===' as SCRIPT_NAME from dual;

-- Script File "drop_tab"
--    Drop Tables

   -- Application: Clue Notes For Oracle
   -- Generated by DTGen (http://dmstex.com/services/dtgen)
   -- December  16, 2013  11:32:36 AM

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
   dbms_output.put_line('----------------------------------------');
   dbms_output.put_line('Dropping Table pcard_actions');
end;
/
drop table pcard_actions
/
drop sequence pcard_actions_seq
/

begin
   dbms_output.put_line('----------------------------------------');
   dbms_output.put_line('Dropping Table action_cards');
end;
/
drop table action_cards
/
drop sequence action_cards_seq
/

begin
   dbms_output.put_line('----------------------------------------');
   dbms_output.put_line('Dropping Table actions');
end;
/
drop table actions
/
drop sequence actions_seq
/

begin
   dbms_output.put_line('----------------------------------------');
   dbms_output.put_line('Dropping Table cards');
end;
/
drop table cards
/
drop sequence cards_seq
/

begin
   dbms_output.put_line('----------------------------------------');
   dbms_output.put_line('Dropping Table players');
end;
/
drop table players
/
drop sequence players_seq
/

begin
   dbms_output.put_line('----------------------------------------');
   dbms_output.put_line('Dropping Table games');
end;
/
drop table games
/
drop sequence games_seq
/

begin
   dbms_output.put_line('----------------------------------------');
   dbms_output.put_line('Dropping Table card_types');
end;
/
drop table card_types
/
drop sequence card_types_seq
/

begin
   dbms_output.put_line('----------------------------------------');
   dbms_output.put_line('Dropping Table users');
end;
/
drop table users
/
drop sequence users_seq
/

