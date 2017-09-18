#!/bin/bash

name=$1
path=$2

file_list=`cd $path && find . -type f`

BASEDIR=$(dirname $0)

echo "      volumes:"
echo "      - name: $name"
echo "        projected:"
echo "          defaultMode: 420"
echo "          sources:"
echo "          - configMap:"
echo "              name: $name"
echo "              items:"

while IFS='\n' read -r line || [[ -n "$line" ]]; do
    fn="${line:2:${#line}-1}"
    $BASEDIR/print-volume.sh $fn
done <<< "$file_list "
