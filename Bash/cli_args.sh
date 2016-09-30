#!/bin/bash

#echo "The number of args for this this : $#"

#MYFILES=$(find . -type f -name "*")

#if [ $# -eq 4 ]; then
#	echo "The number of args is : $#"
#	for i in "$@"; do
#		echo "ARGS ==> $i"
#	done
#else 
#	echo "It failed"

#fi


echo "ENter a number b/w 1 and 3:"
read -n 2 MYVAR

if [ "$MYVAR" -eq 1 ] 2>/dev/null || [ "$MYVAR" -eq 2 ] 2>/dev/null || [ "$MYVAR" -eq 3 ] 2>/dev/null; then
	echo "It's either 1/2/3"
else 
	echo "Something else"
fi

#This file was read on: Mon Aug 15 13:09:40 EDT 2016
#This file was read on: Mon Aug 15 13:10:49 EDT 2016
