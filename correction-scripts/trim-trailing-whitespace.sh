#!/bin/bash

# Trim trailing whitespace from all files recursively
find . -path "./.git" -prune -or -type f -exec sed -i 's/[ \t]*$//' '{}' +

# Pause so that the output may be examined before script window is exited
read -rsp $'\n\nFinished trimming trailing whitespace. Press any key to continue...\n' -n 1
