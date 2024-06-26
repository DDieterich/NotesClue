
--
--  Prepare for View Install
--

prompt
prompt Create Temp Publicly Updateable Table
create table TEMP_PUBLICLY_UPDATEABLE_TABLE (c1 number);
grant all on TEMP_PUBLICLY_UPDATEABLE_TABLE to PUBLIC with grant option;
create public synonym TEMP_PUBLICLY_UPDATEABLE_TABLE for TEMP_PUBLICLY_UPDATEABLE_TABLE;

prompt
prompt Check for Prerequisite INSTALL_TYPEs
declare
   procedure do_it (in_itype varchar2) is
      cursor c_main is
         select * from ODBCAPTURE_INSTALLATION_LOGS
          where install_type = in_itype;
      b_main   c_main%ROWTYPE;
   begin
      open c_main;
      fetch c_main into b_main;
      if c_main%NOTFOUND
      then
         dbms_output.put_line('WARNING: Prerequisite INSTALL_TYPE "' || in_itype ||
                              '" not found in ODBCAPTURE_INSTALLATION_LOGS table.');
      end if;
      close c_main;
   end;
begin
   do_it('ntclsrc');
end;
/

