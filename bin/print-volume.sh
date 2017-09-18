#!/bin/bash

relative_filename=$1
converted_filename=`echo $relative_filename | sed -e "s/\//../g"`

echo "              - key: $converted_filename"
echo "                path: $relative_filename"
