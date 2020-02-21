#!/bin/bash

users=`ps -aux |awk '{print $1}'|grep -Ev ^USER`
#echo "$users"
for i in `echo "$users"`
do	
	count=0
	for j in `echo "$users"`
	do
		if [ "$i" == "$j" ]
		then
			count=`expr "$count" + 1`
		fi
	done
	echo ""$count" process created by "$i""
	users=`echo "$users"| grep -Ev ^"$i"$`
done
