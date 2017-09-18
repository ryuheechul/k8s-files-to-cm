#!/bin/bash

name=$1
path=$2

file_list=`cd $path && find . -type f`

BASEDIR=$(dirname $0)

echo "apiVersion: v1"
echo "kind: ConfigMap"
echo "data:"

while IFS='\n' read -r line || [[ -n "$line" ]]; do
    fn="${line:2:${#line}-1}"
    $BASEDIR/print-configmap.sh $path $fn
done <<< "$file_list "

echo "metadata:"
echo "  name: $name"
echo "  namespace:"
