#!/bin/bash

read -p "Enter User Name :" uname
#homedir=`grep -E "^$uname:" /etc/passwd|cut -d: -f6`
#du -sh "$homedir"/*
du -sh `grep -E "^$uname:" /etc/passwd|cut -d: -f6`/*
