@echo off

REM If all of the following conditions are met, then quote characters
REM on the command line are preserved:
REM   - exactly two quote characters
REM   - no special characters between the two quote characters,
REM        where special is one of: &<>()@^|
REM   - there are one or more whitespace characters between the
REM        two quote characters
REM   - the string between the two quote characters is the name
REM        of an executable file.

set UNAME=dtgen@XE3
set PWORD=dtgen
echo Creating dataload from %UNAME%
pause

sqlplus %UNAME%/%PWORD% @dtgen_dataload.sql CLUE
