#!/bin/bash

read -p "Enter X: " x
read -p "Enter Y: " y

if [ -z "$x" -o -z "$y" ]
then
	echo "Empty"
else
	if [ "$x" -gt "$y" ]
	then
        	echo "X is greater than Y"
	elif [ "$x" -lt "$y" ]
	then
	        echo "X is less than Y"
	else
	        echo "X is equal to Y"
	fi

fi
