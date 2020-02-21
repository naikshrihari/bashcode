#!/bin/bash

read -p "Strong 1: " str1
read -p "String 2: " str2

if [ "$str1" == "$str2" ]
then
	echo "Both strings are equal"
else
	echo "Strings are not equal"
fi
