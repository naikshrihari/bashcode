#!/bin/bash
a=5
b=7
c=9

if [ $a -gt $b -a $a -gt $c ]
then
	echo "A is the largest integer"
elif [ $b -gt $a -a $b -gt $c ]
then
	echo "b is the largest integer"
else
	echo "c is the largest integer"
fi
