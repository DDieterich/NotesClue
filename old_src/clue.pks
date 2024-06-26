create or replace
 package clue as 

   -- Package CLUE
   -- Main Application Logic

   -- Application: Clue Notes For Oracle
   -- December  10, 2013  06:28:05 PM

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

   subtype card_aa_ind is pls_integer;
   type card_aa_type is
      table of cards.name%TYPE
      index by card_aa_ind;

   user_name  users.name%TYPE;
   game_name  games.name%TYPE;
   -- Require by pooled database connection architectures like APEX
   procedure set
         (name_in  in  varchar2
         ,val_in   in  varchar2);
   function get
         (name_in  in  varchar2)
      return varchar2;
   function act_seq
      return number;
   function get_acards
         (act_id_in  in  actions.id%TYPE
         ,show_type  in  varchar2 default null)
      return varchar2;
   function get_missing
         (ctype_id_in  in  cards.ctype_id%TYPE)
      return varchar2;
   function get_pdisp_hdr
      return varchar2;
   function get_pdisp_list
         (card_id_in  in  cards.id%TYPE)
      return varchar2;

   procedure init_user
         (uname_in  in  users.name%TYPE);
   procedure init_game
         (gname_in  in  games.name%TYPE
         ,gcopy_in  in  games.name%TYPE  default null);
   procedure add_rev
         (pname_in    in  players.name%TYPE
         ,card_aa_in  in  card_aa_type);
   procedure add_sugg
         (pname_in      in  players.name%TYPE
         ,rev_pname_in  in  players.name%TYPE  default null
         ,rev_caind_in  in  card_aa_ind
         ,card_aa_in    in  card_aa_type);
   procedure add_acc
         (pname_in    in  players.name%TYPE
         ,card_aa_in  in  card_aa_type);
   procedure undo_action;
   function check_game
      return varchar2;

   procedure delete_game;
   procedure delete_user;

end clue;