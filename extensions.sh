#!/bin/bash

read -p "Enter the dir to search: " dirname

var=`ls -l "$dirname" |grep -E "^-"|awk '{print $9}' | grep -E "\."|awk -F. '{print $2}'|sed 's/^.*\.//g'|sort|uniq -c`

echo "$var" |awk '{print $1, "."$2, "files" }'

echo "$var"|awk '{print $1}'|wc -l
