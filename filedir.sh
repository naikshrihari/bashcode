#!/bin/bash

read -p "Enter filename: " fname
flag=`ls -dl "$fname" | grep -o "^d"`
flag2=`ls -dl "$fname" | grep -o "^-"`

#echo "$flag"
#echo "$flag2"

if  [ "$flag" == "d" ]
then
	echo "This is directory"
elif [ "$flag2" == "-" ]
then
	echo "This is a file"
else
	echo "Invalid filename"
fi

