#!/bin/bash

echo "Enter a file name to be read: "
read FILE
count=0

#opening a file descriptor to read/write
exec 5<>$FILE

while read -r LINE; do
	echo "This is line No: $count ===> $LINE"
	count=$[ $count + 1]
done <&5

echo "#This file was read on: `date`" >&5

#closing the file desc
exec 5>&-
