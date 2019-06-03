#!/bin/bash

# Remove extra blank lines from the end of all files recursively
find . -path './.git' -prune -or -path './avr/travis-ci' -prune -or -path './avr/cores/MCUdude_corefiles' -prune -or -path './avr/bootloaders' -prune -or -type f -print0 | xargs -0 -L1 bash -c 'tail -1 "$0" | grep --binary-files=without-match --regexp="^$"; if [[ "$?" == "0" ]]; then awk "/^$/ {nlstack=nlstack \"\n\"; next;} {printf \"%s\",nlstack; nlstack=\"\"; print;}" "$0" > "$0.fixed"; mv --force "$0.fixed" "$0"; echo fixing: "$0"; fi'

# Pause so that the output may be examined before script window is exited
read -rsp $'\n\nFinished removing extra blank lines from the end of files. Press any key to continue...\n' -n 1
