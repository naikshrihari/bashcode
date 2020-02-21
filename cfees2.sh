#!/bin/bash

c=$1

fees(){

cname=`grep -Ew "^$c" /root/courses.txt | awk -F: '{print $1}'`

if [ -z "$cname" ]
then
	echo "Invalid course name"
else
#	grep -Ew "^$c" /root/courses.txt | awk -F: '{print $1," course fee is "$2}'

	awk -v var="$cname" -F: '$1==var {print $1," course fee is "$2}' /root/courses.txt
fi

}

fees $1
