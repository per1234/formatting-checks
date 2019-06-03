#!/bin/bash

find . -path './.git' -prune -or -type f -print0 | xargs --null --max-lines=1 bash -c 'grep --quiet --files-with-matches --binary-files=without-match $'"'"'\xEF\xBB\xBF'"'"' "$0"; if [[ "$?" == "0" ]]; then echo "UTF-8 BOM found in $0."; tail -c +4 "$0" > "${0}.tmp"; mv --force "${0}.tmp" "$0"; sleep 0.1s; fi'
# Pause so that the output may be examined before script window is exited
read -rsp $'\n\nFinished converting file encoding from UTF-8 BOM to UTF-8. Press any key to continue...\n' -n 1
