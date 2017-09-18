#!/bin/bash

path=$1
relative_filename=$2
full_path=$path/$relative_filename

echo "  $relative_filename: |-"

while IFS='' read -r line || [[ -n "$line" ]]; do
    #echo "Text read from file: $line"
    echo "    $line"
done < "$full_path"
