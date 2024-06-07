
--  SPOOL script to create all script files for an application
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
set termout off

@@select_file &1. drop_util_flow
@@select_file &1. drop_uidef
@@select_file &1. drop_flow_lov
@@select_file &1. drop_flow_maint

@@select_file &1. drop_grnt
@@select_file &1. drop_st
@@select_file &1. drop_aa
@@select_file &1. drop_view
@@select_file &1. drop_ttrig
@@select_file &1. drop_cons
@@select_file &1. drop_dom
@@select_file &1. drop_util
@@select_file &1. drop_fk
@@select_file &1. drop_tab
@@select_file &1. drop_clus
@@select_file &1. drop_usyn

@@select_file &1. create_usyn
@@select_file &1. create_clus
@@select_file &1. create_tab
@@select_file &1. create_fk
@@select_file &1. create_util
@@select_file &1. create_dom
@@select_file &1. create_cons
@@select_file &1. create_ttrig
@@select_file &1. create_view
@@select_file &1. create_aa
@@select_file &1. create_st
@@select_file &1. create_grnt

@@comp_file &1.
@@vars_file &1.

@@select_file &1. create_util_flow
@@select_file &1. create_uidef
@@select_file &1. create_flow_lov
@@select_file &1. create_flow_maint

set termout on
