#!/bin/bash

#users=`ps -aux | awk '{print $1}' | grep -Ev ^USER |sort |uniq -c| sed 's/^ *//g'| sed 's/ /:/g'`
users=`ps -aux | awk '{print $1}' | grep -Ev ^USER |sort |uniq -c`
#echo $users
totalcount=0
for i in `echo "$users"`
do
	name=`echo $i | awk '{print $2}'`
	count=`echo $i | awk '{print $1}'`
	echo ""$name" created "$count" process"
	totalcount=`expr "$totalcount" + "$count"`
done
echo "Total process created : "$totalcount""


