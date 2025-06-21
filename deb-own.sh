#!/bin/bash

filearr=($(echo "$@" | xargs realpath | uniq))

for file in ${filearr[@]}; do
    if [ ! -e $file ]; then
        echo "$file: file does not exist"
        continue
    fi
    abspath=$(realpath $file)
    owner=$(dpkg -S $abspath 2>/dev/null | cut -d: -f1)
    if [ -n "$owner" ]; then 
        echo "The package that owns $file is: $owner"
    else
        echo "There is no package that owns $file"
    fi
done
