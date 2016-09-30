#!/bin/bash

#This is a shell script to demonstrate IFS

echo "Enter the file Name to be read: "
read FILE

IFS="|"

exec 5<$FILE

while read -r AGE SEX DOB; do
	echo "$AGE: $SEX: $DOB"
done <&5

exec 5>&-

