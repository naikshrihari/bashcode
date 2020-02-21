#!/bin/bash

list=`ps aux | awk '{print $1}'|grep -Ev "USER"|sort |uniq -c`
display=`echo "$list" | awk '{print $1," processes used by ",$2," user."}'`
echo "$display"
count=0
for i in `echo "$list" | awk '{print $1}'`
do
	count=`expr "$count" + "$i"`
done
echo "total number of processes : "$count""
