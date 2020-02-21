#!/bin/bash
read -p "Enter username: " uname

echo "using direct commands"
id -u "$uname" 
id -nG "$uname"
du -sh /home/"$uname"

echo "Using awk"
id "$uname"  |awk -F= '{print $2}'|awk -F"(" '{print "UID: ", $1}'
id "$uname" |awk -F" " '{print $3}'|sed 's/,/\/n/g'| awk -F")" '{print $1,$2}' | awk -F"(" '{print $2, $4}'
du -sh /home/"$uname" | cut -f1
