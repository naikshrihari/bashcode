#!/bin/bash
for i in `cat /etc/passwd | grep -Ev /sbin/nologin|cut -d: -f1`
do
	echo "$i"
	du -sh `grep -E "^$i:" /etc/passwd | cut -d: -f6`/*		
done 

