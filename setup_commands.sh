#!/bin/bash

cd "$(dirname $0)"

find . -mindepth 2 -name '*.sh' | while IFS= read -r file; do
    newname=$(echo $file | awk -F'[./]' '{print $((NF-1))}')
    cp "$file" "/usr/bin/${newname}"
done
