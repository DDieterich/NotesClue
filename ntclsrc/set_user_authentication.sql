
--
-- Set "ntclsrc" USER AUTHENTICATION
--
-- Command Line Parameters:
--   1 - Password Key
--

define PASSKEY="&1."

alter user "CLUE" identified by "28&PASSKEY.";alter user "DMSTEX" identified by "28&PASSKEY.";
