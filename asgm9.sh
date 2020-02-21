#!/bin/bash

read -p "Enter file or directory path: " fname

num=`ls -ld "$fname" 2> /dev/null | awk '{print $1}'|grep -E ^d`
if [ -z "$num" ]
then
	num2=`ls -ld "fname" 2> /dev/null | awk '{print $1}'|grep -E ^-`
	if [ -n "$num2"  ]
	then
		echo "It's a File"
	fi
else
	echo "It's a Directory"

fi
