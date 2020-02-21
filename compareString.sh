#!/bin/bash

read -p "String 1:" str1
read -p "String 2:" str2

if [ "$str1" == "$str2" ]
then
	echo "both are same"
else
	echo "str1 and str2 are different"
fi
