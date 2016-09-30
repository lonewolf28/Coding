#!/bin/bash

#echo "User: $USER"

#echo "Home: $HOME"

#echo "Histctrl: $HISTCONTROL"

#echo "TERM: $TERM"

#SOS=$(date "+%r")


#echo "The script started at $SOS"
#sleep 5


#EOS=$(date "+%r")
#echo "The script ended at $EOS"


#FILES=$(find . -maxdepth 1 -type f -name "*.txt")

#for FILE in $FILES; do
	#echo "The following file $FILE is set to deletion"
	#rm -f "$FILE" 2> /dev/null
	#if [ $? -ne 0 ]; then
		#echo "The file $FILE cannot be deleted"
	#fi
#done

	

#if [ $? -eq 0 ]; then
	#echo "Following $FILES files deleted successfully"
#else
	#echo "deletion failed with the following error code: $?"
	#exit 1
#fi


#ADD=$(expr 5 + 5)
#MUL=$(expr 4 + 6 \* 3)
#GRP=$(expr \( 4 + 6 \) \* 3)

#echo "ADD: $ADD"
#echo "MUL: $MUL"
#echo "GRP: $GRP"

#TODAYSDATE=$(date "+%x")
#USERFILES=$(find . -type f -user raj)

#TODAY=$TODAYSDATE
#UFILES=$USERFILES

#echo "Today: $TODAY"
#echo "UFILES: $UFILES"

#echo "Enter Name: "
#read NAME 
#echo "Last name: "
#read LNAME
#echo "Age"
#read AGE


#echo "$NAME $LNAME in 10 years you will be $(expr $AGE + 10)"


SLIST=("ser1" "ser2" "ser3" "ser4")
COUNT=0

for s in ${SLIST[@]}; do
	echo "processing the server: $s"
	COUNT=$(expr $COUNT + 1)
done

echo "$COUNT"












