#!/bin/bash

read -p "Enter user name: " uname
homed=`grep -Ew "^$uname" /etc/passwd | awk -F: '{print $6}'`

#du -sh "$homed"/*

echo "Using ls"
ls -plsh "$homed" |awk '{print $1,$10}'
