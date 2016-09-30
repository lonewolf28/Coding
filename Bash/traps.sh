#!/bin/bash

trap 'echo "Please press Q/q to exit"' SIGINT SIGTERM SIGTSTP

while [ "$INPUT" != "Q" ] && [ "$INPUT" != "q" ]; do
	echo "Please enter your choice: "
	echo "1) enter 1"
	echo "2) enter 2"
	echo "3) enter 3"
	read INPUT
done
	
