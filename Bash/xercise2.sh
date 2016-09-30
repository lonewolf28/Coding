#!/bin/bash

#COMLINE=( $@ )

#if [ ${#COMLINE[@]} -ne 2 ]; then
	#echo "You have to supply two command args"
	#exit 1
#fi


#USERNAME=$1
#PASSWORD=$2

#echo "Username: $USERNAME"
#echo "Password: $PASSWORD"


#echo "Let play a game"

#while true; do
	#echo "Guess a number b/w 1 and 5"
	#read ANS
	#if [ "$ANS" -eq 3 ]; then
		#echo "You have guess it right"
		#break
	#else
		#echo "you are wrong try again"
	#fi
#done

#echo "Please eneter a number b/w 1 and 3"
#read NUM 

#if [ "$NUM" -eq 1 ] 2> /dev/null; then
	#echo "The number you have entered is one"
#elif [ "$NUM" -eq 2 ] 2> /dev/null || [ "$NUM" -eq 3 ] 2> /dev/null; then
	#echo "You have enter either 2 or 3"
#else
	#echo "It could be something else"
#fi

#FILES=$(find . -maxdepth 1 -name "*.sh")

#COUNT=0
#for i in $FILES; do
	#if [ "$COUNT" -eq 3 ]; then
		#break
	#fi
	#echo "Processing $i"
	#cat "$i"
	#COUNT=$((COUNT + 1))
#done

#

echo "Enter a NUmber b/w 1 and 10"
read ANS
COUNT=0

while [ "$COUNT" -lt "$ANS" ]; do
	echo "Be Happy and Confident, Hare Krishna: $COUNT"
	COUNT=$((COUNT + 1))
done


		











