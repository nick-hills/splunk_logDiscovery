#!/bin/bash
find /  -type f -name "*.log" 2>/dev/null -print0 | while IFS= read -r -d $'\0' line; do
        echo $(date +%Y%m%dT%H%M%S%Z) " hostName="$(hostname) " foundPath=\""$line"\" os=\""$(uname)"\""
done
