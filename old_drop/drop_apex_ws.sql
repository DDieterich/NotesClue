
--
-- Drop APEX Workspace Script
-- (Must be run as the "system" or "sys as sysdba" user)
--
-- &1.   -- Workspace Name
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
set serveroutput on format wrapped

-- This removes the workspace, UI defaults, users, and applications/flows
-- This leaves the database schema/users and tablespaces in the database.
begin
   apex_instance_admin.remove_workspace
      (p_workspace         => '&1.'
      ,p_drop_users        => 'N'
      ,p_drop_tablespaces  => 'N' );
end;
/
