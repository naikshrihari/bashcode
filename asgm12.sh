#!/bin/bash
files=`ls -l /etc | grep -E ^- | awk '{print $9}'|grep "\."|cut -d. -f2|sort|uniq -c|sed 's/^ *//g'|sed 's/ /:/g'`
#echo "$files"
#echo "$count"
for i in `echo "$files"`
do
	count=`echo "$i"|awk -F: '{print $1}'`
	name=`echo "$i"|awk -F: '{print $2}'`
	echo ""$count" ."$name" files"
done

