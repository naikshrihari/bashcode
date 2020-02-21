#!/bin/bash

read -p "Enter user name : " uname
uinfo=`grep -E ^"$uname": /etc/passwd`
#echo "$uinfo"

showuser(){
        echo "$1"|awk -F: '{print "UID:",$3,",SHELL:",$7,",Home Directory:",$6}'
}

addnewuser(){
	adduser -u "$1" -s "$2" -d "$3" -G "$4" "$5"	
} 


if [ -n "$uinfo" ]
then
	#uidd=`echo "$uinfo"|cut -d: -f3`
	#shelld=`echo "$uinfo"|cut -d: -f7`
	#homedird=`echo "$uinfo"|cut -d: -f6`
	#echo "UID: "$uidd" , SHELL : "$shelld" , Home Directory : "$homedird""
	#echo "$uinfo"|awk -F: '{print "UID:",$3,",SHELL:",$7,",Home Directory:",$6}'
	showuser $uinfo
else
	read -p "Enter uid : " uuid
	read -p "Enter SHELL : " ushell
	read -p "Enter home directory : " uhm
	read -p "Enter secondary group : " ugrp
	g=`cat /etc/group| grep -E ^"$ugrp"`
	if [ -z "$g" ]
	then
		groupadd "$ugrp"
	fi
		addnewuser $uuid $ushell $uhm $ugrp $uname
fi	
