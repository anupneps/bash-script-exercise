#!/bin/bash
if [[ $# -lt 2 ]]; then
        echo "Enter the directory as first argument followed by Component name"
        exit 1
fi
path=$1
for component in "${@:2}"; do
        count=$(grep -r -o "$component" $path | wc -l)
        echo "$component : $count"
done
