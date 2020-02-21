#!/bin/bash

awk -F: '$3>999 {print $1}' /etc/passwd > /root/norm_home.txt

while read line
do
	homedir=`awk -v var="$line" -F: '$1==var {print $6}' /etc/passwd`
	echo "$line"

	du -sh "$homedir"
	echo "    "
done < /root/norm_home.txt

#for i in `cat /root/norm_home.txt`
#do
#done
