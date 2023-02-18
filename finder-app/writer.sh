#!/bin/sh
writefile=$1
writestr=$2
filedir=$(dirname "$writefile")

if [ $# != 2 ]
then
    echo "It must have two arguments"
    exit 1
fi 

mkdir -p $filedir
touch $writefile

if [ ! -f $writefile ]
then 
    echo "The $writefile can't be created"
    exit 1
fi

echo $writestr > $writefile




