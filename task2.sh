#!/bin/bash

userlist=`grep -Ev "/sbin/nologin" /etc/passwd| awk -F: '{print $1}'`


for i in `echo "$userlist"`
do
	echo "$i  ----------------------------------------------------------"
	homed=`grep -Ew "$i" /etc/passwd| awk -F: '{print $6}'`
	du -sh "$homed"/*
done
