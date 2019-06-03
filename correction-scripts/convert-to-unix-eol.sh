#!/bin/bash

# find all files under the current directory that have non-Unix EOL and convert them to Unix EOL
find . -path './.git' -prune -or -type f -exec grep --files-with-matches --binary-files=without-match --regexp=$'\r$' '{}' \; -exec echo 'Non-Unix EOL detected.' \; -exec dos2unix --keep-bom '{}' \; -exec false '{}' +
# Pause so that the output may be examined before script window is exited
read -rsp $'\n\nFinished converting files to Unix EOL. Press any key to continue...\n' -n 1
