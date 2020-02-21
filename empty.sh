#!/bin/bash

read -p "String 1: " str1
read -p "String 2: " str2

if [ -z "$str1" ]
then
	echo "Empty String"
else
	echo "You entered: "$str1" ."
fi

if [ -n "$str2" ]
then
	echo "You entered: "$str2" ."
else
	echo "none"
fi
