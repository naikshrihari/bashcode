#!/bin/bash

fileonly(){
count=0
ls -l "$1" 2> /dev/null| cat > /root/filelist
while read line
do	
	#echo "$line"
	file=`echo "$line" | grep -E ^-`
	if [ -n "$file" ]
	then
		let count=count+1
	fi
done < /root/filelist

echo "$count"

}

fileonly `pwd`
