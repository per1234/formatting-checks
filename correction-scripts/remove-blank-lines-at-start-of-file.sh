#!/bin/bash

# Remove blank lines from the start of files recursively

blankLineFound=true
while [[ $blankLineFound == true ]]; do
  if find . -path './.git' -prune -or -path './avr/travis-ci' -prune -or -path './avr/cores/MCUdude_corefiles' -prune -or -path './avr/bootloaders' -prune -or -type f -print0 | xargs -0 -L1 bash -c 'head -1 "$0" | grep --binary-files=without-match --regexp="^$"; if [[ "$?" == "0" ]]; then sed "1{/^[[:space:]]*$/d}" "$0" > "${0}.fixed"; mv --force "${0}.fixed" "$0"; false; else true; fi'; then
    # No files start with a blank line so the process is done
    blankLineFound=false
  fi
done

# Pause so that the output may be examined before script window is exited
read -rsp $'\n\nFinished removing blank lines from the start of files. Press any key to continue...\n' -n 1
