#!/bin/sh
filedir=$1
searchstr=$2


if [ $# != 2 ]
then
    echo "It must have 2 arguments"
    exit 1
fi 

if [ ! -d $filedir ]
then
    echo "The directory not found"
    exit 1
fi
X=$(grep -r -c  $searchstr $filedir | wc -l)
Y=$(grep -r $searchstr $filedir | wc -l)
echo "The number of files are $X and the number of matching lines are $Y"

