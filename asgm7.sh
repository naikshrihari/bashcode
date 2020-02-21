#!/bin/bash

read -p "Enter 1st Num: " one
read -p "Enter 2nd Num: " two
if [ "$one" -lt "$two" ]
then
	echo "Swapping variables to get positive result"
	echo `expr "$two" - "$one"`
else
	echo `expr "$one" - "$two"`
fi
