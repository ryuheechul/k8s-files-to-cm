#!/bin/bash

name=$1
path=$2

BASEDIR=$(dirname $0)

$BASEDIR/generate-configmap.sh $name $path > .output/$name-configmap.yaml
$BASEDIR/generate-volumes.sh $name $path > .output/$name-volumes.yaml

echo "# check the result by"
echo "ls .output"
