#!/bin/bash

echo "How many time you want to display howdy ?"
read NUM

count=1

while [ "$count" -le "$NUM" ]; do
	echo "Howdy!!!! =====> $count"
	count=$[ $count + 1 ]
done
