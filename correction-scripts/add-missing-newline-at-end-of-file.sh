#!/bin/bash

# Find all files that don't end in a newline and add newline to the end of those files
find . -path './.git' -prune -or -type f -print0 | xargs -0 -L1 bash -c 'if test "$(grep --files-with-matches --binary-files=without-match --max-count=1 --regexp='.*' "$0")" && test "$(tail -c 1 "$0")"; then echo "No new line at end of $0."; echo >> "$0"; false; fi'
# Pause so that the output may be examined before script window is exited
read -rsp $'\n\nFinished adding missing newlines to end of files. Press any key to continue...\n' -n 1
