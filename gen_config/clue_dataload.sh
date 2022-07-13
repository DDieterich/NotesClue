#!/bin/bash

# If all of the following conditions are met, then quote characters
# on the command line are preserved:
#   - exactly two quote characters
#   - no special characters between the two quote characters,
#        where special is one of: &<>()@^|
#   - there are one or more whitespace characters between the
#        two quote characters
#   - the string between the two quote characters is the name
#        of an executable file.

UNAME="dtgen@XE3"
PWORD="dtgen"
echo "Creating dataload from ${UNAME}"
echo "Press Enter to Continue"
read junk

sqlplus ${UNAME}/${PWORD} @dtgen_dataload.sql CLUE
