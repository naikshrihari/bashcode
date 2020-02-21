#!/bin/bash

awk -F:  ' $3>999 {print $1}' /etc/passwd > /root/norm_home.txt


while read line
do
	homedir=`awk -F: '{print $6}' /etc/passwd| grep $line`
	#awk -v var="$line" -F: '$1==var '
	echo "$line:"
	du -sh "$homedir"
	echo ""
done < /root/norm_home.txt
