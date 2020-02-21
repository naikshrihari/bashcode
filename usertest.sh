#!/bin/bash

read -p "Enter username: " uname

u=`grep -Ew "^$uname" /etc/passwd |awk -F: '{print $1}'`

if [ -z "$u" ]
then
	echo "This user does not exists"
	echo "Creating new user"
	read -p "Enter UID : " uuid
	read -p "Enter shell: " ushell
	read -p "Enter home dir: " uhd
	read -p "Enter secondary gruop: " usgrp
	
	if [ "$uuid" -lt 1000 ]
	then
		echo "UID should be >1000"
	else
		grpname=`grep -Ew "^$usgrp" /etc/group | awk -F: '{print $1}'`
#		echo "$grpname"
		if [ -z "$grpname" ]
		then
			groupadd "$usgrp"
		fi
		useradd -u "$uuid" -G "$usgrp" -s "$ushell" -d "$uhd" "$uname"
#		echo "new user created"
		
		id "$uname"
	fi
else
	cat /etc/passwd | grep -Ew "^$uname"| awk -F: '{print "UID: "$3,"shell: "$7,"homeDir: "$6}'
fi
