
select '=== CLUE drop_fk ===' as SCRIPT_NAME from dual;

-- Script File "drop_fk"
--    Drop Foreign Keys

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



alter table pcard_actions drop constraint pcard_actions_fk1
/
alter table pcard_actions drop constraint pcard_actions_fk3
/
alter table pcard_actions drop constraint pcard_actions_fk4
/


alter table action_cards drop constraint action_cards_fk1
/
alter table action_cards drop constraint action_cards_fk2
/


alter table actions drop constraint actions_fk1
/
alter table actions drop constraint actions_fk4
/
alter table actions drop constraint actions_fk5
/


alter table cards drop constraint cards_fk1
/
alter table cards drop constraint cards_fk3
/


alter table players drop constraint players_fk1
/


alter table games drop constraint games_fk1
/


alter table card_types drop constraint card_types_fk1
/





