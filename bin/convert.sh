#!/bin/bash

path=$1

file_list=`cd $path && find . -type f`

BASEDIR=$(dirname $0)

echo "apiVersion: v1"
echo "data:"

while IFS='\n' read -r line || [[ -n "$line" ]]; do
    fn="${line:2:${#line}-1}"
    $BASEDIR/print.sh $path $fn
done <<< "$file_list "

echo "metadata:"
echo "  name:"
echo "  namespace:"
