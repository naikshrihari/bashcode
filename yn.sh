#!/bin/bash

read -p "Enter character: " c

#if [ -z "$c" ]
#then
#	echo "Empty"
#else
	if [ "$c" == "y" -o "$c" == "Y" ]
	then
		echo "YES"
	elif [ "$c" == "n" -o "$c" == "N" ]
	then
		echo "NO"
#	else
#		echo "Invalid input"
	fi
#fi
