#!/bin/bash
users=`ps -aux | awk '{print $1}' | grep -Ev ^USER |sort |uniq -c| sed 's/^ *//g'| sed 's/ /:/g'`
#echo "$users"
totalcount=0
#for i in `echo "$users"`#
while read i
do
        name=`echo "$i" | awk -F: '{print $2}'`
        count=`echo "$i" | awk -F: '{print $1}'`
        echo ""$name" created "$count" process"
        totalcount=`expr "$totalcount" + "$count"`
done>`echo "$users"`

echo "Total process created : "$totalcount""

