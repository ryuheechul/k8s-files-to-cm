#!/bin/bash

path=$1
relative_filename=$2
full_path=$path/$relative_filename

converted_filename=`echo $relative_filename | sed -e "s/\//../g"`

echo "  $converted_filename: |-"

while IFS='' read -r line || [[ -n "$line" ]]; do
    #echo "Text read from file: $line"
    echo "    $line"
done < "$full_path"
