#!/bin/bash

fileonly(){
wd=`pwd`
list=`ls -l "$wd" | grep -E "^-"|awk '{print $9}'`
#echo "$list"
count=0
for i in `echo "$list"`
do
#	echo "$i"
#	echo "$count"
	let count=count+1
done

echo "Total no. of files in "$wd" is "$count""
}

fileonly
