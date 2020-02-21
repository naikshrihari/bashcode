#!/bin/bash

uname=`awk -F: '{print $1}' /etc/passwd`
for i in `echo "$uname"`
do
	uuid=`id -u "$i"`
	if [ "$uuid" -eq 0 ]
	then 
		echo "$i" >>/root/ruser.txt
	elif [ "$uuid" -gt 999 ]
	then
		echo "$i" >>/root/nuser.txt
	else
		echo "$i" >>/root/suser.txt
	fi
done
