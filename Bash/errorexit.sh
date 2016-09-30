#!/bin/bash

DIR="$1"

cd "$DIR" 2> /dev/null

if [ "$?" == 0 ] && [ "$#" == 1 ]; then
	ls -l
else
	echo "change dir failed"
	exit 101
fi

