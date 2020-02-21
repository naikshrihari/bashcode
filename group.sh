#!/bin/bash -x

read -p "Enter user name: " uname

usrid=`id -u "$uname"`
echo "UID for $uname is $usrid"

### fetch Groupname primary 

pg=`id "$uname" | awk '{print $2}'|cut -d"(" -f2|cut -d")" -f1`
echo "Primary group for $uname: $pg"

### fetch groups of the input 
gg=`id "$uname" | awk '{print $3}' | cut -d= -f2 | sed 's/,/\n/g' | cut -d"(" -f2 | cut -d")" -f1`

echo "All the groups of $uname:"
echo "$gg"

##print secondary groups only
sg=`echo $gg |grep -Ev "$pg"`
echo "Secondary groups for $uname:"
echo "$sg"
