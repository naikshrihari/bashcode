#!/bin/bash

#f1=`cat /root/asgm/dummy.txt | awk '{print $1}'|grep -Ev "^total"`
#echo "$f1"
count=0
for i in `cat /root/asgm/dummy.txt | awk '{print $1}'|grep -Ev "^total"`
do
	count=`expr "$count" + "$i"`
done
echo "$count"
